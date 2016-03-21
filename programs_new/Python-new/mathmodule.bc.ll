; ModuleID = 'irs-onlybc/mathmodule.bc'
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
  %0 = bitcast %struct._object** %m to i8*, !dbg !1086
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1086
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !371, metadata !1087), !dbg !1088
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @mathmodule, i32 1013), !dbg !1089
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !1090, !tbaa !1091
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !1095, !tbaa !1091
  %cmp = icmp eq %struct._object* %1, null, !dbg !1097
  br i1 %cmp, label %if.then, label %if.end, !dbg !1098

if.then:                                          ; preds = %entry
  br label %finally, !dbg !1099

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1100, !tbaa !1091
  %call1 = call %struct._object* @PyFloat_FromDouble(double 0x400921FB54442D18), !dbg !1101
  %call2 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), %struct._object* %call1), !dbg !1102
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !1103, !tbaa !1091
  %call3 = call %struct._object* @PyFloat_FromDouble(double 0x4005BF0A8B145769), !dbg !1104
  %call4 = call i32 @PyModule_AddObject(%struct._object* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._object* %call3), !dbg !1105
  br label %finally, !dbg !1105

finally:                                          ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %m, align 8, !dbg !1106, !tbaa !1091
  %5 = bitcast %struct._object** %m to i8*, !dbg !1107
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !1107
  ret %struct._object* %4, !dbg !1108
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_acos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !374, metadata !1087), !dbg !1109
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !375, metadata !1087), !dbg !1110
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1111, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @acos, i32 0), !dbg !1112
  ret %struct._object* %call, !dbg !1113
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_acosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !407, metadata !1087), !dbg !1114
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !408, metadata !1087), !dbg !1115
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1116, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @acosh, i32 0), !dbg !1117
  ret %struct._object* %call, !dbg !1118
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_asin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !411, metadata !1087), !dbg !1119
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !412, metadata !1087), !dbg !1120
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1121, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @asin, i32 0), !dbg !1122
  ret %struct._object* %call, !dbg !1123
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_asinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !415, metadata !1087), !dbg !1124
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !416, metadata !1087), !dbg !1125
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1126, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @asinh, i32 0), !dbg !1127
  ret %struct._object* %call, !dbg !1128
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !419, metadata !1087), !dbg !1129
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !420, metadata !1087), !dbg !1130
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1131, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @atan, i32 0), !dbg !1132
  ret %struct._object* %call, !dbg !1133
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atan2(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !423, metadata !1087), !dbg !1134
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !424, metadata !1087), !dbg !1135
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1136, !tbaa !1091
  %call = call %struct._object* @math_2(%struct._object* %0, double (double, double)* @m_atan2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)), !dbg !1137
  ret %struct._object* %call, !dbg !1138
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_atanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !446, metadata !1087), !dbg !1139
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !447, metadata !1087), !dbg !1140
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1141, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @atanh, i32 0), !dbg !1142
  ret %struct._object* %call, !dbg !1143
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_ceil(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !450, metadata !1087), !dbg !1144
  store %struct._object* %number, %struct._object** %number.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %number.addr, metadata !451, metadata !1087), !dbg !1145
  %0 = bitcast %struct._object** %method to i8*, !dbg !1146
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1146
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !452, metadata !1087), !dbg !1147
  %1 = bitcast %struct._object** %result to i8*, !dbg !1146
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1146
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !453, metadata !1087), !dbg !1148
  %2 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !1149, !tbaa !1091
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %2, %struct._Py_Identifier* @math_ceil.PyId___ceil__), !dbg !1150
  store %struct._object* %call, %struct._object** %method, align 8, !dbg !1151, !tbaa !1091
  %3 = load %struct._object*, %struct._object** %method, align 8, !dbg !1152, !tbaa !1091
  %cmp = icmp eq %struct._object* %3, null, !dbg !1154
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1155

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1156
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1156
  br i1 %tobool, label %if.then.2, label %if.end, !dbg !1159

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1160
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1160

if.end:                                           ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !1161, !tbaa !1091
  %call3 = call %struct._object* @math_1_to_int(%struct._object* %4, double (double)* @ceil, i32 0), !dbg !1162
  store %struct._object* %call3, %struct._object** %retval, !dbg !1163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1163

if.end.4:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %method, align 8, !dbg !1164, !tbaa !1091
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %5, i8* null), !dbg !1165
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !1166, !tbaa !1091
  br label %do.body, !dbg !1167

do.body:                                          ; preds = %if.end.4
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1168
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1168
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !454, metadata !1087), !dbg !1170
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !1171, !tbaa !1091
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1170, !tbaa !1091
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1172, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1174
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1175, !tbaa !1176
  %dec = add i64 %9, -1, !dbg !1175
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1175, !tbaa !1176
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1179
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1180

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !1181

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1183, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1185
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1185, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1187
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1187, !tbaa !1188
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1192, !tbaa !1091
  call void %12(%struct._object* %13), !dbg !1193
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1194
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1194
  br label %do.cond, !dbg !1196

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1197

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !1199, !tbaa !1091
  store %struct._object* %15, %struct._object** %retval, !dbg !1200
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1200

cleanup:                                          ; preds = %do.end, %if.end, %if.then.2
  %16 = bitcast %struct._object** %result to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1201
  %17 = bitcast %struct._object** %method to i8*, !dbg !1201
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1201
  %18 = load %struct._object*, %struct._object** %retval, !dbg !1201
  ret %struct._object* %18, !dbg !1201
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_copysign(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !463, metadata !1087), !dbg !1202
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !464, metadata !1087), !dbg !1203
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1204, !tbaa !1091
  %call = call %struct._object* @math_2(%struct._object* %0, double (double, double)* @copysign, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1205
  ret %struct._object* %call, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_cos(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !467, metadata !1087), !dbg !1207
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !468, metadata !1087), !dbg !1208
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1209, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @cos, i32 0), !dbg !1210
  ret %struct._object* %call, !dbg !1211
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_cosh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !471, metadata !1087), !dbg !1212
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !472, metadata !1087), !dbg !1213
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1214, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @cosh, i32 1), !dbg !1215
  ret %struct._object* %call, !dbg !1216
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_degrees(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !475, metadata !1087), !dbg !1217
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !476, metadata !1087), !dbg !1218
  %0 = bitcast double* %x to i8*, !dbg !1219
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1219
  call void @llvm.dbg.declare(metadata double* %x, metadata !477, metadata !1087), !dbg !1220
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1221, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !1222
  store double %call, double* %x, align 8, !dbg !1220, !tbaa !1223
  %2 = load double, double* %x, align 8, !dbg !1225, !tbaa !1223
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !1227
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1228

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1229
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1229
  br i1 %tobool, label %if.then, label %if.end, !dbg !1231

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1232

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !1233, !tbaa !1223
  %mul = fmul double %3, 0x404CA5DC1A63C1F8, !dbg !1234
  %call2 = call %struct._object* @PyFloat_FromDouble(double %mul), !dbg !1235
  store %struct._object* %call2, %struct._object** %retval, !dbg !1236
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1236

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast double* %x to i8*, !dbg !1237
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !1237
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1237
  ret %struct._object* %5, !dbg !1237
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_erf(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !480, metadata !1087), !dbg !1238
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !481, metadata !1087), !dbg !1239
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1240, !tbaa !1091
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_erf), !dbg !1241
  ret %struct._object* %call, !dbg !1242
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_erfc(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !524, metadata !1087), !dbg !1243
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !525, metadata !1087), !dbg !1244
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1245, !tbaa !1091
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_erfc), !dbg !1246
  ret %struct._object* %call, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_exp(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !533, metadata !1087), !dbg !1248
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !534, metadata !1087), !dbg !1249
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1250, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @exp, i32 1), !dbg !1251
  ret %struct._object* %call, !dbg !1252
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_expm1(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !537, metadata !1087), !dbg !1253
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !538, metadata !1087), !dbg !1254
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1255, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @expm1, i32 1), !dbg !1256
  ret %struct._object* %call, !dbg !1257
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_fabs(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !541, metadata !1087), !dbg !1258
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !542, metadata !1087), !dbg !1259
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1260, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @fabs, i32 0), !dbg !1261
  ret %struct._object* %call, !dbg !1262
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !545, metadata !1087), !dbg !1263
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !546, metadata !1087), !dbg !1264
  %0 = bitcast i64* %x to i8*, !dbg !1265
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1265
  call void @llvm.dbg.declare(metadata i64* %x, metadata !547, metadata !1087), !dbg !1266
  %1 = bitcast %struct._object** %result to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !548, metadata !1087), !dbg !1268
  %2 = bitcast %struct._object** %odd_part to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct._object** %odd_part, metadata !549, metadata !1087), !dbg !1269
  %3 = bitcast %struct._object** %two_valuation to i8*, !dbg !1267
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct._object** %two_valuation, metadata !550, metadata !1087), !dbg !1270
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1271, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1272
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1272, !tbaa !1186
  %cmp = icmp eq %struct._typeobject* %5, @PyFloat_Type, !dbg !1273
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1274

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1275, !tbaa !1091
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1277
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1277, !tbaa !1186
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFloat_Type), !dbg !1278
  %tobool = icmp ne i32 %call, 0, !dbg !1278
  br i1 %tobool, label %if.then, label %if.else.27, !dbg !1279

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = bitcast %struct._object** %lx to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1280
  call void @llvm.dbg.declare(metadata %struct._object** %lx, metadata !551, metadata !1087), !dbg !1281
  %9 = bitcast double* %dx to i8*, !dbg !1282
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1282
  call void @llvm.dbg.declare(metadata double* %dx, metadata !554, metadata !1087), !dbg !1283
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1284, !tbaa !1091
  %11 = bitcast %struct._object* %10 to %struct.PyFloatObject*, !dbg !1285
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %11, i32 0, i32 1, !dbg !1286
  %12 = load double, double* %ob_fval, align 8, !dbg !1286, !tbaa !1287
  store double %12, double* %dx, align 8, !dbg !1283, !tbaa !1223
  br i1 false, label %cond.true, label %cond.false, !dbg !1289

cond.true:                                        ; preds = %if.then
  %13 = load double, double* %dx, align 8, !dbg !1291, !tbaa !1223
  %conv = fptrunc double %13 to float, !dbg !1291
  %call2 = call i32 @__finitef(float %conv) #2, !dbg !1293
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1293
  br i1 %tobool3, label %land.lhs.true, label %if.then.14, !dbg !1294

cond.false:                                       ; preds = %if.then
  br i1 true, label %cond.true.4, label %cond.false.7, !dbg !1295

cond.true.4:                                      ; preds = %cond.false
  %14 = load double, double* %dx, align 8, !dbg !1297, !tbaa !1223
  %call5 = call i32 @__finite(double %14) #2, !dbg !1299
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1299
  br i1 %tobool6, label %land.lhs.true, label %if.then.14, !dbg !1300

cond.false.7:                                     ; preds = %cond.false
  %15 = load double, double* %dx, align 8, !dbg !1301, !tbaa !1223
  %conv8 = fpext double %15 to x86_fp80, !dbg !1301
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #2, !dbg !1303
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1303
  br i1 %tobool10, label %land.lhs.true, label %if.then.14, !dbg !1289

land.lhs.true:                                    ; preds = %cond.false.7, %cond.true.4, %cond.true
  %16 = load double, double* %dx, align 8, !dbg !1304, !tbaa !1223
  %17 = load double, double* %dx, align 8, !dbg !1308, !tbaa !1223
  %call11 = call double @floor(double %17) #2, !dbg !1309
  %cmp12 = fcmp oeq double %16, %call11, !dbg !1310
  br i1 %cmp12, label %if.end, label %if.then.14, !dbg !1311

if.then.14:                                       ; preds = %land.lhs.true, %cond.false.7, %cond.true.4, %cond.true
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1312, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.48, i32 0, i32 0)), !dbg !1314
  store %struct._object* null, %struct._object** %retval, !dbg !1315
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1315

if.end:                                           ; preds = %land.lhs.true
  %19 = load double, double* %dx, align 8, !dbg !1316, !tbaa !1223
  %call15 = call %struct._object* @PyLong_FromDouble(double %19), !dbg !1317
  store %struct._object* %call15, %struct._object** %lx, align 8, !dbg !1318, !tbaa !1091
  %20 = load %struct._object*, %struct._object** %lx, align 8, !dbg !1319, !tbaa !1091
  %cmp16 = icmp eq %struct._object* %20, null, !dbg !1321
  br i1 %cmp16, label %if.then.18, label %if.end.19, !dbg !1322

if.then.18:                                       ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1323
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1323

if.end.19:                                        ; preds = %if.end
  %21 = load %struct._object*, %struct._object** %lx, align 8, !dbg !1324, !tbaa !1091
  %call20 = call i64 @PyLong_AsLong(%struct._object* %21), !dbg !1325
  store i64 %call20, i64* %x, align 8, !dbg !1326, !tbaa !1327
  br label %do.body, !dbg !1328

do.body:                                          ; preds = %if.end.19
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1329
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !1329
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !555, metadata !1087), !dbg !1331
  %23 = load %struct._object*, %struct._object** %lx, align 8, !dbg !1332, !tbaa !1091
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !1331, !tbaa !1091
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1333, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !1335
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1176
  %dec = add i64 %25, -1, !dbg !1336
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1176
  %cmp21 = icmp ne i64 %dec, 0, !dbg !1337
  br i1 %cmp21, label %if.then.23, label %if.else, !dbg !1338

if.then.23:                                       ; preds = %do.body
  br label %if.end.25, !dbg !1339

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1341, !tbaa !1091
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !1343
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !1343, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !1344
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1344, !tbaa !1188
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1345, !tbaa !1091
  call void %28(%struct._object* %29), !dbg !1346
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1347
  br label %do.cond, !dbg !1349

do.cond:                                          ; preds = %if.end.25
  br label %do.end, !dbg !1350

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !1352
  br label %cleanup, !dbg !1352

cleanup:                                          ; preds = %do.end, %if.then.18, %if.then.14
  %31 = bitcast double* %dx to i8*, !dbg !1353
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1353
  %32 = bitcast %struct._object** %lx to i8*, !dbg !1353
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1353
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.97 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.29, !dbg !1354

if.else.27:                                       ; preds = %lor.lhs.false
  %33 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1355, !tbaa !1091
  %call28 = call i64 @PyLong_AsLong(%struct._object* %33), !dbg !1356
  store i64 %call28, i64* %x, align 8, !dbg !1357, !tbaa !1327
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %cleanup.cont
  %34 = load i64, i64* %x, align 8, !dbg !1358, !tbaa !1327
  %cmp30 = icmp eq i64 %34, -1, !dbg !1360
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.36, !dbg !1361

land.lhs.true.32:                                 ; preds = %if.end.29
  %call33 = call %struct._object* @PyErr_Occurred(), !dbg !1362
  %tobool34 = icmp ne %struct._object* %call33, null, !dbg !1362
  br i1 %tobool34, label %if.then.35, label %if.end.36, !dbg !1364

if.then.35:                                       ; preds = %land.lhs.true.32
  store %struct._object* null, %struct._object** %retval, !dbg !1365
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1365

if.end.36:                                        ; preds = %land.lhs.true.32, %if.end.29
  %35 = load i64, i64* %x, align 8, !dbg !1366, !tbaa !1327
  %cmp37 = icmp slt i64 %35, 0, !dbg !1368
  br i1 %cmp37, label %if.then.39, label %if.end.40, !dbg !1369

if.then.39:                                       ; preds = %if.end.36
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1370, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.49, i32 0, i32 0)), !dbg !1372
  store %struct._object* null, %struct._object** %retval, !dbg !1373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1373

if.end.40:                                        ; preds = %if.end.36
  %37 = load i64, i64* %x, align 8, !dbg !1374, !tbaa !1327
  %cmp41 = icmp slt i64 %37, 21, !dbg !1376
  br i1 %cmp41, label %if.then.43, label %if.end.45, !dbg !1377

if.then.43:                                       ; preds = %if.end.40
  %38 = load i64, i64* %x, align 8, !dbg !1378, !tbaa !1327
  %arrayidx = getelementptr [21 x i64], [21 x i64]* @SmallFactorials, i32 0, i64 %38, !dbg !1379
  %39 = load i64, i64* %arrayidx, align 8, !dbg !1379, !tbaa !1327
  %call44 = call %struct._object* @PyLong_FromUnsignedLong(i64 %39), !dbg !1380
  store %struct._object* %call44, %struct._object** %retval, !dbg !1381
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1381

if.end.45:                                        ; preds = %if.end.40
  %40 = load i64, i64* %x, align 8, !dbg !1382, !tbaa !1327
  %call46 = call %struct._object* @factorial_odd_part(i64 %40), !dbg !1383
  store %struct._object* %call46, %struct._object** %odd_part, align 8, !dbg !1384, !tbaa !1091
  %41 = load %struct._object*, %struct._object** %odd_part, align 8, !dbg !1385, !tbaa !1091
  %cmp47 = icmp eq %struct._object* %41, null, !dbg !1387
  br i1 %cmp47, label %if.then.49, label %if.end.50, !dbg !1388

if.then.49:                                       ; preds = %if.end.45
  store %struct._object* null, %struct._object** %retval, !dbg !1389
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1389

if.end.50:                                        ; preds = %if.end.45
  %42 = load i64, i64* %x, align 8, !dbg !1390, !tbaa !1327
  %43 = load i64, i64* %x, align 8, !dbg !1391, !tbaa !1327
  %call51 = call i64 @count_set_bits(i64 %43), !dbg !1392
  %sub = sub i64 %42, %call51, !dbg !1393
  %call52 = call %struct._object* @PyLong_FromLong(i64 %sub), !dbg !1394
  store %struct._object* %call52, %struct._object** %two_valuation, align 8, !dbg !1395, !tbaa !1091
  %44 = load %struct._object*, %struct._object** %two_valuation, align 8, !dbg !1396, !tbaa !1091
  %cmp53 = icmp eq %struct._object* %44, null, !dbg !1397
  br i1 %cmp53, label %if.then.55, label %if.end.69, !dbg !1398

if.then.55:                                       ; preds = %if.end.50
  br label %do.body.56, !dbg !1399

do.body.56:                                       ; preds = %if.then.55
  %45 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1400
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !1400
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp57, metadata !557, metadata !1087), !dbg !1402
  %46 = load %struct._object*, %struct._object** %odd_part, align 8, !dbg !1403, !tbaa !1091
  store %struct._object* %46, %struct._object** %_py_decref_tmp57, align 8, !dbg !1402, !tbaa !1091
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1404, !tbaa !1091
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1406
  %48 = load i64, i64* %ob_refcnt58, align 8, !dbg !1407, !tbaa !1176
  %dec59 = add i64 %48, -1, !dbg !1407
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !1407, !tbaa !1176
  %cmp60 = icmp ne i64 %dec59, 0, !dbg !1408
  br i1 %cmp60, label %if.then.62, label %if.else.63, !dbg !1409

if.then.62:                                       ; preds = %do.body.56
  br label %if.end.66, !dbg !1410

if.else.63:                                       ; preds = %do.body.56
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1412, !tbaa !1091
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !1414
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !1414, !tbaa !1186
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !1415
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !1415, !tbaa !1188
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8, !dbg !1416, !tbaa !1091
  call void %51(%struct._object* %52), !dbg !1417
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %53 = bitcast %struct._object** %_py_decref_tmp57 to i8*, !dbg !1418
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1418
  br label %do.cond.67, !dbg !1420

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !1421

do.end.68:                                        ; preds = %do.cond.67
  store %struct._object* null, %struct._object** %retval, !dbg !1423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1423

if.end.69:                                        ; preds = %if.end.50
  %54 = load %struct._object*, %struct._object** %odd_part, align 8, !dbg !1424, !tbaa !1091
  %55 = load %struct._object*, %struct._object** %two_valuation, align 8, !dbg !1425, !tbaa !1091
  %call70 = call %struct._object* @PyNumber_Lshift(%struct._object* %54, %struct._object* %55), !dbg !1426
  store %struct._object* %call70, %struct._object** %result, align 8, !dbg !1427, !tbaa !1091
  br label %do.body.71, !dbg !1428

do.body.71:                                       ; preds = %if.end.69
  %56 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !1429
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !1429
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp72, metadata !561, metadata !1087), !dbg !1431
  %57 = load %struct._object*, %struct._object** %two_valuation, align 8, !dbg !1432, !tbaa !1091
  store %struct._object* %57, %struct._object** %_py_decref_tmp72, align 8, !dbg !1431, !tbaa !1091
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !1433, !tbaa !1091
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !1435
  %59 = load i64, i64* %ob_refcnt73, align 8, !dbg !1436, !tbaa !1176
  %dec74 = add i64 %59, -1, !dbg !1436
  store i64 %dec74, i64* %ob_refcnt73, align 8, !dbg !1436, !tbaa !1176
  %cmp75 = icmp ne i64 %dec74, 0, !dbg !1437
  br i1 %cmp75, label %if.then.77, label %if.else.78, !dbg !1438

if.then.77:                                       ; preds = %do.body.71
  br label %if.end.81, !dbg !1439

if.else.78:                                       ; preds = %do.body.71
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !1441, !tbaa !1091
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !1443
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8, !dbg !1443, !tbaa !1186
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !1444
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8, !dbg !1444, !tbaa !1188
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !1445, !tbaa !1091
  call void %62(%struct._object* %63), !dbg !1446
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  %64 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !1447
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !1447
  br label %do.cond.82, !dbg !1449

do.cond.82:                                       ; preds = %if.end.81
  br label %do.end.83, !dbg !1450

do.end.83:                                        ; preds = %do.cond.82
  br label %do.body.84, !dbg !1452

do.body.84:                                       ; preds = %do.end.83
  %65 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !1453
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !1453
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !563, metadata !1087), !dbg !1455
  %66 = load %struct._object*, %struct._object** %odd_part, align 8, !dbg !1456, !tbaa !1091
  store %struct._object* %66, %struct._object** %_py_decref_tmp85, align 8, !dbg !1455, !tbaa !1091
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1457, !tbaa !1091
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !1459
  %68 = load i64, i64* %ob_refcnt86, align 8, !dbg !1460, !tbaa !1176
  %dec87 = add i64 %68, -1, !dbg !1460
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !1460, !tbaa !1176
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !1461
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !1462

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94, !dbg !1463

if.else.91:                                       ; preds = %do.body.84
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1465, !tbaa !1091
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !1467
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !1467, !tbaa !1186
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !1468
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !1468, !tbaa !1188
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !1469, !tbaa !1091
  call void %71(%struct._object* %72), !dbg !1470
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %73 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !1471
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !1471
  br label %do.cond.95, !dbg !1472

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !1473

do.end.96:                                        ; preds = %do.cond.95
  %74 = load %struct._object*, %struct._object** %result, align 8, !dbg !1475, !tbaa !1091
  store %struct._object* %74, %struct._object** %retval, !dbg !1476
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97, !dbg !1476

cleanup.97:                                       ; preds = %do.end.96, %do.end.68, %if.then.49, %if.then.43, %if.then.39, %if.then.35, %cleanup
  %75 = bitcast %struct._object** %two_valuation to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !1477
  %76 = bitcast %struct._object** %odd_part to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !1477
  %77 = bitcast %struct._object** %result to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !1477
  %78 = bitcast i64* %x to i8*, !dbg !1477
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !1477
  %79 = load %struct._object*, %struct._object** %retval, !dbg !1477
  ret %struct._object* %79, !dbg !1477
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_floor(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %method = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !631, metadata !1087), !dbg !1478
  store %struct._object* %number, %struct._object** %number.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %number.addr, metadata !632, metadata !1087), !dbg !1479
  %0 = bitcast %struct._object** %method to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._object** %method, metadata !633, metadata !1087), !dbg !1481
  %1 = bitcast %struct._object** %result to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !634, metadata !1087), !dbg !1482
  %2 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !1483, !tbaa !1091
  %call = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %2, %struct._Py_Identifier* @math_floor.PyId___floor__), !dbg !1484
  store %struct._object* %call, %struct._object** %method, align 8, !dbg !1485, !tbaa !1091
  %3 = load %struct._object*, %struct._object** %method, align 8, !dbg !1486, !tbaa !1091
  %cmp = icmp eq %struct._object* %3, null, !dbg !1488
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1489

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1490
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1490
  br i1 %tobool, label %if.then.2, label %if.end, !dbg !1493

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1494
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1494

if.end:                                           ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !1495, !tbaa !1091
  %call3 = call %struct._object* @math_1_to_int(%struct._object* %4, double (double)* @floor, i32 0), !dbg !1496
  store %struct._object* %call3, %struct._object** %retval, !dbg !1497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1497

if.end.4:                                         ; preds = %entry
  %5 = load %struct._object*, %struct._object** %method, align 8, !dbg !1498, !tbaa !1091
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %5, i8* null), !dbg !1499
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !1500, !tbaa !1091
  br label %do.body, !dbg !1501

do.body:                                          ; preds = %if.end.4
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1502
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1502
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !635, metadata !1087), !dbg !1504
  %7 = load %struct._object*, %struct._object** %method, align 8, !dbg !1505, !tbaa !1091
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1504, !tbaa !1091
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1506, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1508
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1509, !tbaa !1176
  %dec = add i64 %9, -1, !dbg !1509
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1509, !tbaa !1176
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1510
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1511

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !1512

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1514, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1516
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1516, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1517
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1517, !tbaa !1188
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1518, !tbaa !1091
  call void %12(%struct._object* %13), !dbg !1519
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1520
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1520
  br label %do.cond, !dbg !1522

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !1523

do.end:                                           ; preds = %do.cond
  %15 = load %struct._object*, %struct._object** %result, align 8, !dbg !1525, !tbaa !1091
  store %struct._object* %15, %struct._object** %retval, !dbg !1526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1526

cleanup:                                          ; preds = %do.end, %if.end, %if.then.2
  %16 = bitcast %struct._object** %result to i8*, !dbg !1527
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !1527
  %17 = bitcast %struct._object** %method to i8*, !dbg !1527
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !1527
  %18 = load %struct._object*, %struct._object** %retval, !dbg !1527
  ret %struct._object* %18, !dbg !1527
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !639, metadata !1087), !dbg !1528
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !640, metadata !1087), !dbg !1529
  %0 = bitcast %struct._object** %ox to i8*, !dbg !1530
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1530
  call void @llvm.dbg.declare(metadata %struct._object** %ox, metadata !641, metadata !1087), !dbg !1531
  %1 = bitcast %struct._object** %oy to i8*, !dbg !1530
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1530
  call void @llvm.dbg.declare(metadata %struct._object** %oy, metadata !642, metadata !1087), !dbg !1532
  %2 = bitcast double* %r to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1533
  call void @llvm.dbg.declare(metadata double* %r, metadata !643, metadata !1087), !dbg !1534
  %3 = bitcast double* %x to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1533
  call void @llvm.dbg.declare(metadata double* %x, metadata !644, metadata !1087), !dbg !1535
  %4 = bitcast double* %y to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1533
  call void @llvm.dbg.declare(metadata double* %y, metadata !645, metadata !1087), !dbg !1536
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1537, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy), !dbg !1539
  %tobool = icmp ne i32 %call, 0, !dbg !1539
  br i1 %tobool, label %if.end, label %if.then, !dbg !1540

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1541

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %ox, align 8, !dbg !1542, !tbaa !1091
  %call1 = call double @PyFloat_AsDouble(%struct._object* %6), !dbg !1543
  store double %call1, double* %x, align 8, !dbg !1544, !tbaa !1223
  %7 = load %struct._object*, %struct._object** %oy, align 8, !dbg !1545, !tbaa !1091
  %call2 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !1546
  store double %call2, double* %y, align 8, !dbg !1547, !tbaa !1223
  %8 = load double, double* %x, align 8, !dbg !1548, !tbaa !1223
  %cmp = fcmp oeq double %8, -1.000000e+00, !dbg !1550
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !1551

lor.lhs.false:                                    ; preds = %if.end
  %9 = load double, double* %y, align 8, !dbg !1552, !tbaa !1223
  %cmp3 = fcmp oeq double %9, -1.000000e+00, !dbg !1554
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !1555

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !1556
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !1556
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !1559

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1560
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1560

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false, !dbg !1561

cond.true:                                        ; preds = %if.end.7
  %10 = load double, double* %y, align 8, !dbg !1563, !tbaa !1223
  %conv = fptrunc double %10 to float, !dbg !1563
  %call8 = call i32 @__isinff(float %conv) #2, !dbg !1565
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1565
  br i1 %tobool9, label %land.lhs.true.17, label %if.end.32, !dbg !1566

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13, !dbg !1567

cond.true.10:                                     ; preds = %cond.false
  %11 = load double, double* %y, align 8, !dbg !1569, !tbaa !1223
  %call11 = call i32 @__isinf(double %11) #2, !dbg !1571
  %tobool12 = icmp ne i32 %call11, 0, !dbg !1571
  br i1 %tobool12, label %land.lhs.true.17, label %if.end.32, !dbg !1572

cond.false.13:                                    ; preds = %cond.false
  %12 = load double, double* %y, align 8, !dbg !1573, !tbaa !1223
  %conv14 = fpext double %12 to x86_fp80, !dbg !1573
  %call15 = call i32 @__isinfl(x86_fp80 %conv14) #2, !dbg !1575
  %tobool16 = icmp ne i32 %call15, 0, !dbg !1575
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.32, !dbg !1561

land.lhs.true.17:                                 ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.18, label %cond.false.22, !dbg !1576

cond.true.18:                                     ; preds = %land.lhs.true.17
  %13 = load double, double* %x, align 8, !dbg !1580, !tbaa !1223
  %conv19 = fptrunc double %13 to float, !dbg !1580
  %call20 = call i32 @__finitef(float %conv19) #2, !dbg !1582
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1582
  br i1 %tobool21, label %if.then.30, label %if.end.32, !dbg !1583

cond.false.22:                                    ; preds = %land.lhs.true.17
  br i1 true, label %cond.true.23, label %cond.false.26, !dbg !1584

cond.true.23:                                     ; preds = %cond.false.22
  %14 = load double, double* %x, align 8, !dbg !1586, !tbaa !1223
  %call24 = call i32 @__finite(double %14) #2, !dbg !1588
  %tobool25 = icmp ne i32 %call24, 0, !dbg !1588
  br i1 %tobool25, label %if.then.30, label %if.end.32, !dbg !1589

cond.false.26:                                    ; preds = %cond.false.22
  %15 = load double, double* %x, align 8, !dbg !1590, !tbaa !1223
  %conv27 = fpext double %15 to x86_fp80, !dbg !1590
  %call28 = call i32 @__finitel(x86_fp80 %conv27) #2, !dbg !1592
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1592
  br i1 %tobool29, label %if.then.30, label %if.end.32, !dbg !1593

if.then.30:                                       ; preds = %cond.false.26, %cond.true.23, %cond.true.18
  %16 = load double, double* %x, align 8, !dbg !1594, !tbaa !1223
  %call31 = call %struct._object* @PyFloat_FromDouble(double %16), !dbg !1595
  store %struct._object* %call31, %struct._object** %retval, !dbg !1596
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1596

if.end.32:                                        ; preds = %cond.false.26, %cond.true.23, %cond.true.18, %cond.false.13, %cond.true.10, %cond.true
  %call33 = call i32* @__errno_location() #2, !dbg !1597
  store i32 0, i32* %call33, align 4, !dbg !1598, !tbaa !1599
  %17 = load double, double* %x, align 8, !dbg !1600, !tbaa !1223
  %18 = load double, double* %y, align 8, !dbg !1601, !tbaa !1223
  %call34 = call double @fmod(double %17, double %18) #1, !dbg !1602
  store double %call34, double* %r, align 8, !dbg !1603, !tbaa !1223
  br i1 false, label %cond.true.35, label %cond.false.39, !dbg !1604

cond.true.35:                                     ; preds = %if.end.32
  %19 = load double, double* %r, align 8, !dbg !1605, !tbaa !1223
  %conv36 = fptrunc double %19 to float, !dbg !1605
  %call37 = call i32 @__isnanf(float %conv36) #2, !dbg !1608
  %tobool38 = icmp ne i32 %call37, 0, !dbg !1608
  br i1 %tobool38, label %if.then.47, label %if.end.77, !dbg !1609

cond.false.39:                                    ; preds = %if.end.32
  br i1 true, label %cond.true.40, label %cond.false.43, !dbg !1610

cond.true.40:                                     ; preds = %cond.false.39
  %20 = load double, double* %r, align 8, !dbg !1612, !tbaa !1223
  %call41 = call i32 @__isnan(double %20) #2, !dbg !1614
  %tobool42 = icmp ne i32 %call41, 0, !dbg !1614
  br i1 %tobool42, label %if.then.47, label %if.end.77, !dbg !1615

cond.false.43:                                    ; preds = %cond.false.39
  %21 = load double, double* %r, align 8, !dbg !1616, !tbaa !1223
  %conv44 = fpext double %21 to x86_fp80, !dbg !1616
  %call45 = call i32 @__isnanl(x86_fp80 %conv44) #2, !dbg !1618
  %tobool46 = icmp ne i32 %call45, 0, !dbg !1618
  br i1 %tobool46, label %if.then.47, label %if.end.77, !dbg !1604

if.then.47:                                       ; preds = %cond.false.43, %cond.true.40, %cond.true.35
  br i1 false, label %cond.true.48, label %cond.false.52, !dbg !1619

cond.true.48:                                     ; preds = %if.then.47
  %22 = load double, double* %x, align 8, !dbg !1622, !tbaa !1223
  %conv49 = fptrunc double %22 to float, !dbg !1622
  %call50 = call i32 @__isnanf(float %conv49) #2, !dbg !1624
  %tobool51 = icmp ne i32 %call50, 0, !dbg !1624
  br i1 %tobool51, label %if.else, label %land.lhs.true.60, !dbg !1625

cond.false.52:                                    ; preds = %if.then.47
  br i1 true, label %cond.true.53, label %cond.false.56, !dbg !1626

cond.true.53:                                     ; preds = %cond.false.52
  %23 = load double, double* %x, align 8, !dbg !1628, !tbaa !1223
  %call54 = call i32 @__isnan(double %23) #2, !dbg !1630
  %tobool55 = icmp ne i32 %call54, 0, !dbg !1630
  br i1 %tobool55, label %if.else, label %land.lhs.true.60, !dbg !1631

cond.false.56:                                    ; preds = %cond.false.52
  %24 = load double, double* %x, align 8, !dbg !1632, !tbaa !1223
  %conv57 = fpext double %24 to x86_fp80, !dbg !1632
  %call58 = call i32 @__isnanl(x86_fp80 %conv57) #2, !dbg !1634
  %tobool59 = icmp ne i32 %call58, 0, !dbg !1634
  br i1 %tobool59, label %if.else, label %land.lhs.true.60, !dbg !1619

land.lhs.true.60:                                 ; preds = %cond.false.56, %cond.true.53, %cond.true.48
  br i1 false, label %cond.true.61, label %cond.false.65, !dbg !1635

cond.true.61:                                     ; preds = %land.lhs.true.60
  %25 = load double, double* %y, align 8, !dbg !1639, !tbaa !1223
  %conv62 = fptrunc double %25 to float, !dbg !1639
  %call63 = call i32 @__isnanf(float %conv62) #2, !dbg !1641
  %tobool64 = icmp ne i32 %call63, 0, !dbg !1641
  br i1 %tobool64, label %if.else, label %if.then.73, !dbg !1642

cond.false.65:                                    ; preds = %land.lhs.true.60
  br i1 true, label %cond.true.66, label %cond.false.69, !dbg !1643

cond.true.66:                                     ; preds = %cond.false.65
  %26 = load double, double* %y, align 8, !dbg !1645, !tbaa !1223
  %call67 = call i32 @__isnan(double %26) #2, !dbg !1647
  %tobool68 = icmp ne i32 %call67, 0, !dbg !1647
  br i1 %tobool68, label %if.else, label %if.then.73, !dbg !1648

cond.false.69:                                    ; preds = %cond.false.65
  %27 = load double, double* %y, align 8, !dbg !1649, !tbaa !1223
  %conv70 = fpext double %27 to x86_fp80, !dbg !1649
  %call71 = call i32 @__isnanl(x86_fp80 %conv70) #2, !dbg !1651
  %tobool72 = icmp ne i32 %call71, 0, !dbg !1651
  br i1 %tobool72, label %if.else, label %if.then.73, !dbg !1652

if.then.73:                                       ; preds = %cond.false.69, %cond.true.66, %cond.true.61
  %call74 = call i32* @__errno_location() #2, !dbg !1653
  store i32 33, i32* %call74, align 4, !dbg !1654, !tbaa !1599
  br label %if.end.76, !dbg !1655

if.else:                                          ; preds = %cond.false.69, %cond.true.66, %cond.true.61, %cond.false.56, %cond.true.53, %cond.true.48
  %call75 = call i32* @__errno_location() #2, !dbg !1656
  store i32 0, i32* %call75, align 4, !dbg !1657, !tbaa !1599
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.73
  br label %if.end.77, !dbg !1658

if.end.77:                                        ; preds = %if.end.76, %cond.false.43, %cond.true.40, %cond.true.35
  %call78 = call i32* @__errno_location() #2, !dbg !1659
  %28 = load i32, i32* %call78, align 4, !dbg !1661, !tbaa !1599
  %tobool79 = icmp ne i32 %28, 0, !dbg !1662
  br i1 %tobool79, label %land.lhs.true.80, label %if.else.84, !dbg !1663

land.lhs.true.80:                                 ; preds = %if.end.77
  %29 = load double, double* %r, align 8, !dbg !1664, !tbaa !1223
  %call81 = call i32 @is_error(double %29), !dbg !1666
  %tobool82 = icmp ne i32 %call81, 0, !dbg !1666
  br i1 %tobool82, label %if.then.83, label %if.else.84, !dbg !1667

if.then.83:                                       ; preds = %land.lhs.true.80
  store %struct._object* null, %struct._object** %retval, !dbg !1668
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1668

if.else.84:                                       ; preds = %land.lhs.true.80, %if.end.77
  %30 = load double, double* %r, align 8, !dbg !1669, !tbaa !1223
  %call85 = call %struct._object* @PyFloat_FromDouble(double %30), !dbg !1670
  store %struct._object* %call85, %struct._object** %retval, !dbg !1671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1671

cleanup:                                          ; preds = %if.else.84, %if.then.83, %if.then.30, %if.then.6, %if.then
  %31 = bitcast double* %y to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1672
  %32 = bitcast double* %x to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !1672
  %33 = bitcast double* %r to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1672
  %34 = bitcast %struct._object** %oy to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1672
  %35 = bitcast %struct._object** %ox to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !1672
  %36 = load %struct._object*, %struct._object** %retval, !dbg !1672
  ret %struct._object* %36, !dbg !1672
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_frexp(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !648, metadata !1087), !dbg !1673
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !649, metadata !1087), !dbg !1674
  %0 = bitcast i32* %i to i8*, !dbg !1675
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1675
  call void @llvm.dbg.declare(metadata i32* %i, metadata !650, metadata !1087), !dbg !1676
  %1 = bitcast double* %x to i8*, !dbg !1677
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1677
  call void @llvm.dbg.declare(metadata double* %x, metadata !651, metadata !1087), !dbg !1678
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !1679, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %2), !dbg !1680
  store double %call, double* %x, align 8, !dbg !1678, !tbaa !1223
  %3 = load double, double* %x, align 8, !dbg !1681, !tbaa !1223
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !1683
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1684

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !1685
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1685
  br i1 %tobool, label %if.then, label %if.end, !dbg !1687

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !1688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1688

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !1689

cond.true:                                        ; preds = %if.end
  %4 = load double, double* %x, align 8, !dbg !1691, !tbaa !1223
  %conv = fptrunc double %4 to float, !dbg !1691
  %call2 = call i32 @__isnanf(float %conv) #2, !dbg !1693
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1693
  br i1 %tobool3, label %if.then.25, label %lor.lhs.false, !dbg !1694

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7, !dbg !1695

cond.true.4:                                      ; preds = %cond.false
  %5 = load double, double* %x, align 8, !dbg !1697, !tbaa !1223
  %call5 = call i32 @__isnan(double %5) #2, !dbg !1699
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1699
  br i1 %tobool6, label %if.then.25, label %lor.lhs.false, !dbg !1700

cond.false.7:                                     ; preds = %cond.false
  %6 = load double, double* %x, align 8, !dbg !1701, !tbaa !1223
  %conv8 = fpext double %6 to x86_fp80, !dbg !1701
  %call9 = call i32 @__isnanl(x86_fp80 %conv8) #2, !dbg !1703
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1703
  br i1 %tobool10, label %if.then.25, label %lor.lhs.false, !dbg !1689

lor.lhs.false:                                    ; preds = %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.11, label %cond.false.15, !dbg !1704

cond.true.11:                                     ; preds = %lor.lhs.false
  %7 = load double, double* %x, align 8, !dbg !1708, !tbaa !1223
  %conv12 = fptrunc double %7 to float, !dbg !1708
  %call13 = call i32 @__isinff(float %conv12) #2, !dbg !1710
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1710
  br i1 %tobool14, label %if.then.25, label %lor.lhs.false.23, !dbg !1711

cond.false.15:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.16, label %cond.false.19, !dbg !1712

cond.true.16:                                     ; preds = %cond.false.15
  %8 = load double, double* %x, align 8, !dbg !1714, !tbaa !1223
  %call17 = call i32 @__isinf(double %8) #2, !dbg !1716
  %tobool18 = icmp ne i32 %call17, 0, !dbg !1716
  br i1 %tobool18, label %if.then.25, label %lor.lhs.false.23, !dbg !1717

cond.false.19:                                    ; preds = %cond.false.15
  %9 = load double, double* %x, align 8, !dbg !1718, !tbaa !1223
  %conv20 = fpext double %9 to x86_fp80, !dbg !1718
  %call21 = call i32 @__isinfl(x86_fp80 %conv20) #2, !dbg !1720
  %tobool22 = icmp ne i32 %call21, 0, !dbg !1720
  br i1 %tobool22, label %if.then.25, label %lor.lhs.false.23, !dbg !1721

lor.lhs.false.23:                                 ; preds = %cond.false.19, %cond.true.16, %cond.true.11
  %10 = load double, double* %x, align 8, !dbg !1722, !tbaa !1223
  %tobool24 = fcmp une double %10, 0.000000e+00, !dbg !1722
  br i1 %tobool24, label %if.else, label %if.then.25, !dbg !1726

if.then.25:                                       ; preds = %lor.lhs.false.23, %cond.false.19, %cond.true.16, %cond.true.11, %cond.false.7, %cond.true.4, %cond.true
  store i32 0, i32* %i, align 4, !dbg !1727, !tbaa !1599
  br label %if.end.27, !dbg !1729

if.else:                                          ; preds = %lor.lhs.false.23
  %11 = load double, double* %x, align 8, !dbg !1730, !tbaa !1223
  %call26 = call double @frexp(double %11, i32* %i) #1, !dbg !1732
  store double %call26, double* %x, align 8, !dbg !1733, !tbaa !1223
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  %12 = load double, double* %x, align 8, !dbg !1734, !tbaa !1223
  %13 = load i32, i32* %i, align 4, !dbg !1735, !tbaa !1599
  %call28 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), double %12, i32 %13), !dbg !1736
  store %struct._object* %call28, %struct._object** %retval, !dbg !1737
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1737

cleanup:                                          ; preds = %if.end.27, %if.then
  %14 = bitcast double* %x to i8*, !dbg !1738
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1738
  %15 = bitcast i32* %i to i8*, !dbg !1738
  call void @llvm.lifetime.end(i64 4, i8* %15) #1, !dbg !1738
  %16 = load %struct._object*, %struct._object** %retval, !dbg !1738
  ret %struct._object* %16, !dbg !1738
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp149 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !654, metadata !1087), !dbg !1739
  store %struct._object* %seq, %struct._object** %seq.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %seq.addr, metadata !655, metadata !1087), !dbg !1740
  %0 = bitcast %struct._object** %item to i8*, !dbg !1741
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !656, metadata !1087), !dbg !1742
  %1 = bitcast %struct._object** %iter to i8*, !dbg !1741
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct._object** %iter, metadata !657, metadata !1087), !dbg !1743
  %2 = bitcast %struct._object** %sum to i8*, !dbg !1741
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1741
  call void @llvm.dbg.declare(metadata %struct._object** %sum, metadata !658, metadata !1087), !dbg !1744
  store %struct._object* null, %struct._object** %sum, align 8, !dbg !1744, !tbaa !1091
  %3 = bitcast i64* %i to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1745
  call void @llvm.dbg.declare(metadata i64* %i, metadata !659, metadata !1087), !dbg !1746
  %4 = bitcast i64* %j to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1745
  call void @llvm.dbg.declare(metadata i64* %j, metadata !660, metadata !1087), !dbg !1747
  %5 = bitcast i64* %n to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1745
  call void @llvm.dbg.declare(metadata i64* %n, metadata !661, metadata !1087), !dbg !1748
  store i64 0, i64* %n, align 8, !dbg !1748, !tbaa !1327
  %6 = bitcast i64* %m to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1745
  call void @llvm.dbg.declare(metadata i64* %m, metadata !662, metadata !1087), !dbg !1749
  store i64 32, i64* %m, align 8, !dbg !1749, !tbaa !1327
  %7 = bitcast double* %x to i8*, !dbg !1750
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1750
  call void @llvm.dbg.declare(metadata double* %x, metadata !663, metadata !1087), !dbg !1751
  %8 = bitcast double* %y to i8*, !dbg !1750
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !1750
  call void @llvm.dbg.declare(metadata double* %y, metadata !664, metadata !1087), !dbg !1752
  %9 = bitcast double* %t to i8*, !dbg !1750
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !1750
  call void @llvm.dbg.declare(metadata double* %t, metadata !665, metadata !1087), !dbg !1753
  %10 = bitcast [32 x double]* %ps to i8*, !dbg !1750
  call void @llvm.lifetime.start(i64 256, i8* %10) #1, !dbg !1750
  call void @llvm.dbg.declare(metadata [32 x double]* %ps, metadata !666, metadata !1087), !dbg !1754
  %11 = bitcast double** %p to i8*, !dbg !1750
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1750
  call void @llvm.dbg.declare(metadata double** %p, metadata !670, metadata !1087), !dbg !1755
  %arraydecay = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0, !dbg !1756
  store double* %arraydecay, double** %p, align 8, !dbg !1755, !tbaa !1091
  %12 = bitcast double* %xsave to i8*, !dbg !1757
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !1757
  call void @llvm.dbg.declare(metadata double* %xsave, metadata !671, metadata !1087), !dbg !1758
  %13 = bitcast double* %special_sum to i8*, !dbg !1757
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !1757
  call void @llvm.dbg.declare(metadata double* %special_sum, metadata !672, metadata !1087), !dbg !1759
  store double 0.000000e+00, double* %special_sum, align 8, !dbg !1759, !tbaa !1223
  %14 = bitcast double* %inf_sum to i8*, !dbg !1757
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1757
  call void @llvm.dbg.declare(metadata double* %inf_sum, metadata !673, metadata !1087), !dbg !1760
  store double 0.000000e+00, double* %inf_sum, align 8, !dbg !1760, !tbaa !1223
  %15 = bitcast double* %hi to i8*, !dbg !1761
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !1761
  call void @llvm.dbg.declare(metadata double* %hi, metadata !674, metadata !1087), !dbg !1762
  %16 = bitcast double* %yr to i8*, !dbg !1761
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1761
  call void @llvm.dbg.declare(metadata double* %yr, metadata !676, metadata !1087), !dbg !1763
  %17 = bitcast double* %lo to i8*, !dbg !1761
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !1761
  call void @llvm.dbg.declare(metadata double* %lo, metadata !677, metadata !1087), !dbg !1764
  %18 = load %struct._object*, %struct._object** %seq.addr, align 8, !dbg !1765, !tbaa !1091
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %18), !dbg !1766
  store %struct._object* %call, %struct._object** %iter, align 8, !dbg !1767, !tbaa !1091
  %19 = load %struct._object*, %struct._object** %iter, align 8, !dbg !1768, !tbaa !1091
  %cmp = icmp eq %struct._object* %19, null, !dbg !1770
  br i1 %cmp, label %if.then, label %if.end, !dbg !1771

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1772
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1772

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !1773

for.cond:                                         ; preds = %if.end.83, %if.end
  %20 = load %struct._object*, %struct._object** %iter, align 8, !dbg !1774, !tbaa !1091
  %call1 = call %struct._object* @PyIter_Next(%struct._object* %20), !dbg !1775
  store %struct._object* %call1, %struct._object** %item, align 8, !dbg !1776, !tbaa !1091
  %21 = load %struct._object*, %struct._object** %item, align 8, !dbg !1777, !tbaa !1091
  %cmp2 = icmp eq %struct._object* %21, null, !dbg !1779
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !1780

if.then.3:                                        ; preds = %for.cond
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !1781
  %tobool = icmp ne %struct._object* %call4, null, !dbg !1781
  br i1 %tobool, label %if.then.5, label %if.end.6, !dbg !1784

if.then.5:                                        ; preds = %if.then.3
  br label %_fsum_error, !dbg !1785

if.end.6:                                         ; preds = %if.then.3
  br label %for.end.84, !dbg !1786

if.end.7:                                         ; preds = %for.cond
  %22 = load %struct._object*, %struct._object** %item, align 8, !dbg !1787, !tbaa !1091
  %call8 = call double @PyFloat_AsDouble(%struct._object* %22), !dbg !1788
  store double %call8, double* %x, align 8, !dbg !1789, !tbaa !1223
  br label %do.body, !dbg !1790

do.body:                                          ; preds = %if.end.7
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1791
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !1791
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !678, metadata !1087), !dbg !1793
  %24 = load %struct._object*, %struct._object** %item, align 8, !dbg !1794, !tbaa !1091
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8, !dbg !1793, !tbaa !1091
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1795, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !1797
  %26 = load i64, i64* %ob_refcnt, align 8, !dbg !1798, !tbaa !1176
  %dec = add i64 %26, -1, !dbg !1798
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1798, !tbaa !1176
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1799
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1800

if.then.10:                                       ; preds = %do.body
  br label %if.end.11, !dbg !1801

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1803, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1805
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1805, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !1806
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1806, !tbaa !1188
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1807, !tbaa !1091
  call void %29(%struct._object* %30), !dbg !1808
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1809
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1809
  br label %do.cond, !dbg !1811

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1812

do.end:                                           ; preds = %do.cond
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !1814
  %tobool13 = icmp ne %struct._object* %call12, null, !dbg !1814
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !1816

if.then.14:                                       ; preds = %do.end
  br label %_fsum_error, !dbg !1817

if.end.15:                                        ; preds = %do.end
  %32 = load double, double* %x, align 8, !dbg !1818, !tbaa !1223
  store double %32, double* %xsave, align 8, !dbg !1819, !tbaa !1223
  store i64 0, i64* %j, align 8, !dbg !1820, !tbaa !1327
  store i64 0, i64* %i, align 8, !dbg !1822, !tbaa !1327
  br label %for.cond.16, !dbg !1823

for.cond.16:                                      ; preds = %for.inc, %if.end.15
  %33 = load i64, i64* %j, align 8, !dbg !1824, !tbaa !1327
  %34 = load i64, i64* %n, align 8, !dbg !1828, !tbaa !1327
  %cmp17 = icmp slt i64 %33, %34, !dbg !1829
  br i1 %cmp17, label %for.body, label %for.end, !dbg !1830

for.body:                                         ; preds = %for.cond.16
  %35 = load i64, i64* %j, align 8, !dbg !1831, !tbaa !1327
  %36 = load double*, double** %p, align 8, !dbg !1833, !tbaa !1091
  %arrayidx = getelementptr double, double* %36, i64 %35, !dbg !1833
  %37 = load double, double* %arrayidx, align 8, !dbg !1833, !tbaa !1223
  store double %37, double* %y, align 8, !dbg !1834, !tbaa !1223
  %38 = load double, double* %x, align 8, !dbg !1835, !tbaa !1223
  %call18 = call double @fabs(double %38) #2, !dbg !1837
  %39 = load double, double* %y, align 8, !dbg !1838, !tbaa !1223
  %call19 = call double @fabs(double %39) #2, !dbg !1839
  %cmp20 = fcmp olt double %call18, %call19, !dbg !1840
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !1841

if.then.21:                                       ; preds = %for.body
  %40 = load double, double* %x, align 8, !dbg !1842, !tbaa !1223
  store double %40, double* %t, align 8, !dbg !1844, !tbaa !1223
  %41 = load double, double* %y, align 8, !dbg !1845, !tbaa !1223
  store double %41, double* %x, align 8, !dbg !1846, !tbaa !1223
  %42 = load double, double* %t, align 8, !dbg !1847, !tbaa !1223
  store double %42, double* %y, align 8, !dbg !1848, !tbaa !1223
  br label %if.end.22, !dbg !1849

if.end.22:                                        ; preds = %if.then.21, %for.body
  %43 = load double, double* %x, align 8, !dbg !1850, !tbaa !1223
  %44 = load double, double* %y, align 8, !dbg !1851, !tbaa !1223
  %add = fadd double %43, %44, !dbg !1852
  store volatile double %add, double* %hi, align 8, !dbg !1853, !tbaa !1223
  %45 = load volatile double, double* %hi, align 8, !dbg !1854, !tbaa !1223
  %46 = load double, double* %x, align 8, !dbg !1855, !tbaa !1223
  %sub = fsub double %45, %46, !dbg !1856
  store volatile double %sub, double* %yr, align 8, !dbg !1857, !tbaa !1223
  %47 = load double, double* %y, align 8, !dbg !1858, !tbaa !1223
  %48 = load volatile double, double* %yr, align 8, !dbg !1859, !tbaa !1223
  %sub23 = fsub double %47, %48, !dbg !1860
  store volatile double %sub23, double* %lo, align 8, !dbg !1861, !tbaa !1223
  %49 = load volatile double, double* %lo, align 8, !dbg !1862, !tbaa !1223
  %cmp24 = fcmp une double %49, 0.000000e+00, !dbg !1864
  br i1 %cmp24, label %if.then.25, label %if.end.27, !dbg !1865

if.then.25:                                       ; preds = %if.end.22
  %50 = load volatile double, double* %lo, align 8, !dbg !1866, !tbaa !1223
  %51 = load i64, i64* %i, align 8, !dbg !1867, !tbaa !1327
  %inc = add i64 %51, 1, !dbg !1867
  store i64 %inc, i64* %i, align 8, !dbg !1867, !tbaa !1327
  %52 = load double*, double** %p, align 8, !dbg !1868, !tbaa !1091
  %arrayidx26 = getelementptr double, double* %52, i64 %51, !dbg !1868
  store double %50, double* %arrayidx26, align 8, !dbg !1869, !tbaa !1223
  br label %if.end.27, !dbg !1868

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %53 = load volatile double, double* %hi, align 8, !dbg !1870, !tbaa !1223
  store double %53, double* %x, align 8, !dbg !1871, !tbaa !1223
  br label %for.inc, !dbg !1872

for.inc:                                          ; preds = %if.end.27
  %54 = load i64, i64* %j, align 8, !dbg !1873, !tbaa !1327
  %inc28 = add i64 %54, 1, !dbg !1873
  store i64 %inc28, i64* %j, align 8, !dbg !1873, !tbaa !1327
  br label %for.cond.16, !dbg !1874

for.end:                                          ; preds = %for.cond.16
  %55 = load i64, i64* %i, align 8, !dbg !1875, !tbaa !1327
  store i64 %55, i64* %n, align 8, !dbg !1876, !tbaa !1327
  %56 = load double, double* %x, align 8, !dbg !1877, !tbaa !1223
  %cmp29 = fcmp une double %56, 0.000000e+00, !dbg !1879
  br i1 %cmp29, label %if.then.30, label %if.end.83, !dbg !1880

if.then.30:                                       ; preds = %for.end
  br i1 false, label %cond.true, label %cond.false, !dbg !1881

cond.true:                                        ; preds = %if.then.30
  %57 = load double, double* %x, align 8, !dbg !1883, !tbaa !1223
  %conv = fptrunc double %57 to float, !dbg !1883
  %call31 = call i32 @__finitef(float %conv) #2, !dbg !1886
  %tobool32 = icmp ne i32 %call31, 0, !dbg !1886
  br i1 %tobool32, label %if.else.71, label %if.then.40, !dbg !1887

cond.false:                                       ; preds = %if.then.30
  br i1 true, label %cond.true.33, label %cond.false.36, !dbg !1888

cond.true.33:                                     ; preds = %cond.false
  %58 = load double, double* %x, align 8, !dbg !1890, !tbaa !1223
  %call34 = call i32 @__finite(double %58) #2, !dbg !1892
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1892
  br i1 %tobool35, label %if.else.71, label %if.then.40, !dbg !1893

cond.false.36:                                    ; preds = %cond.false
  %59 = load double, double* %x, align 8, !dbg !1894, !tbaa !1223
  %conv37 = fpext double %59 to x86_fp80, !dbg !1894
  %call38 = call i32 @__finitel(x86_fp80 %conv37) #2, !dbg !1896
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1896
  br i1 %tobool39, label %if.else.71, label %if.then.40, !dbg !1881

if.then.40:                                       ; preds = %cond.false.36, %cond.true.33, %cond.true
  br i1 false, label %cond.true.41, label %cond.false.45, !dbg !1897

cond.true.41:                                     ; preds = %if.then.40
  %60 = load double, double* %xsave, align 8, !dbg !1899, !tbaa !1223
  %conv42 = fptrunc double %60 to float, !dbg !1899
  %call43 = call i32 @__finitef(float %conv42) #2, !dbg !1902
  %tobool44 = icmp ne i32 %call43, 0, !dbg !1902
  br i1 %tobool44, label %if.then.53, label %if.end.54, !dbg !1903

cond.false.45:                                    ; preds = %if.then.40
  br i1 true, label %cond.true.46, label %cond.false.49, !dbg !1904

cond.true.46:                                     ; preds = %cond.false.45
  %61 = load double, double* %xsave, align 8, !dbg !1906, !tbaa !1223
  %call47 = call i32 @__finite(double %61) #2, !dbg !1908
  %tobool48 = icmp ne i32 %call47, 0, !dbg !1908
  br i1 %tobool48, label %if.then.53, label %if.end.54, !dbg !1909

cond.false.49:                                    ; preds = %cond.false.45
  %62 = load double, double* %xsave, align 8, !dbg !1910, !tbaa !1223
  %conv50 = fpext double %62 to x86_fp80, !dbg !1910
  %call51 = call i32 @__finitel(x86_fp80 %conv50) #2, !dbg !1912
  %tobool52 = icmp ne i32 %call51, 0, !dbg !1912
  br i1 %tobool52, label %if.then.53, label %if.end.54, !dbg !1897

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %63 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1913, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.52, i32 0, i32 0)), !dbg !1915
  br label %_fsum_error, !dbg !1916

if.end.54:                                        ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  br i1 false, label %cond.true.55, label %cond.false.59, !dbg !1917

cond.true.55:                                     ; preds = %if.end.54
  %64 = load double, double* %xsave, align 8, !dbg !1918, !tbaa !1223
  %conv56 = fptrunc double %64 to float, !dbg !1918
  %call57 = call i32 @__isinff(float %conv56) #2, !dbg !1921
  %tobool58 = icmp ne i32 %call57, 0, !dbg !1921
  br i1 %tobool58, label %if.then.67, label %if.end.69, !dbg !1922

cond.false.59:                                    ; preds = %if.end.54
  br i1 true, label %cond.true.60, label %cond.false.63, !dbg !1923

cond.true.60:                                     ; preds = %cond.false.59
  %65 = load double, double* %xsave, align 8, !dbg !1924, !tbaa !1223
  %call61 = call i32 @__isinf(double %65) #2, !dbg !1926
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1926
  br i1 %tobool62, label %if.then.67, label %if.end.69, !dbg !1927

cond.false.63:                                    ; preds = %cond.false.59
  %66 = load double, double* %xsave, align 8, !dbg !1928, !tbaa !1223
  %conv64 = fpext double %66 to x86_fp80, !dbg !1928
  %call65 = call i32 @__isinfl(x86_fp80 %conv64) #2, !dbg !1930
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1930
  br i1 %tobool66, label %if.then.67, label %if.end.69, !dbg !1917

if.then.67:                                       ; preds = %cond.false.63, %cond.true.60, %cond.true.55
  %67 = load double, double* %xsave, align 8, !dbg !1931, !tbaa !1223
  %68 = load double, double* %inf_sum, align 8, !dbg !1932, !tbaa !1223
  %add68 = fadd double %68, %67, !dbg !1932
  store double %add68, double* %inf_sum, align 8, !dbg !1932, !tbaa !1223
  br label %if.end.69, !dbg !1933

if.end.69:                                        ; preds = %if.then.67, %cond.false.63, %cond.true.60, %cond.true.55
  %69 = load double, double* %xsave, align 8, !dbg !1934, !tbaa !1223
  %70 = load double, double* %special_sum, align 8, !dbg !1935, !tbaa !1223
  %add70 = fadd double %70, %69, !dbg !1935
  store double %add70, double* %special_sum, align 8, !dbg !1935, !tbaa !1223
  store i64 0, i64* %n, align 8, !dbg !1936, !tbaa !1327
  br label %if.end.82, !dbg !1937

if.else.71:                                       ; preds = %cond.false.36, %cond.true.33, %cond.true
  %71 = load i64, i64* %n, align 8, !dbg !1938, !tbaa !1327
  %72 = load i64, i64* %m, align 8, !dbg !1940, !tbaa !1327
  %cmp72 = icmp sge i64 %71, %72, !dbg !1941
  br i1 %cmp72, label %land.lhs.true, label %if.else.78, !dbg !1942

land.lhs.true:                                    ; preds = %if.else.71
  %73 = load i64, i64* %n, align 8, !dbg !1943, !tbaa !1327
  %arraydecay74 = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0, !dbg !1945
  %call75 = call i32 @_fsum_realloc(double** %p, i64 %73, double* %arraydecay74, i64* %m), !dbg !1946
  %tobool76 = icmp ne i32 %call75, 0, !dbg !1946
  br i1 %tobool76, label %if.then.77, label %if.else.78, !dbg !1947

if.then.77:                                       ; preds = %land.lhs.true
  br label %_fsum_error, !dbg !1948

if.else.78:                                       ; preds = %land.lhs.true, %if.else.71
  %74 = load double, double* %x, align 8, !dbg !1949, !tbaa !1223
  %75 = load i64, i64* %n, align 8, !dbg !1950, !tbaa !1327
  %inc79 = add i64 %75, 1, !dbg !1950
  store i64 %inc79, i64* %n, align 8, !dbg !1950, !tbaa !1327
  %76 = load double*, double** %p, align 8, !dbg !1951, !tbaa !1091
  %arrayidx80 = getelementptr double, double* %76, i64 %75, !dbg !1951
  store double %74, double* %arrayidx80, align 8, !dbg !1952, !tbaa !1223
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.69
  br label %if.end.83, !dbg !1953

if.end.83:                                        ; preds = %if.end.82, %for.end
  br label %for.cond, !dbg !1954

for.end.84:                                       ; preds = %if.end.6
  %77 = load double, double* %special_sum, align 8, !dbg !1955, !tbaa !1223
  %cmp85 = fcmp une double %77, 0.000000e+00, !dbg !1957
  br i1 %cmp85, label %if.then.87, label %if.end.104, !dbg !1958

if.then.87:                                       ; preds = %for.end.84
  br i1 false, label %cond.true.88, label %cond.false.92, !dbg !1959

cond.true.88:                                     ; preds = %if.then.87
  %78 = load double, double* %inf_sum, align 8, !dbg !1961, !tbaa !1223
  %conv89 = fptrunc double %78 to float, !dbg !1961
  %call90 = call i32 @__isnanf(float %conv89) #2, !dbg !1964
  %tobool91 = icmp ne i32 %call90, 0, !dbg !1964
  br i1 %tobool91, label %if.then.100, label %if.else.101, !dbg !1965

cond.false.92:                                    ; preds = %if.then.87
  br i1 true, label %cond.true.93, label %cond.false.96, !dbg !1966

cond.true.93:                                     ; preds = %cond.false.92
  %79 = load double, double* %inf_sum, align 8, !dbg !1968, !tbaa !1223
  %call94 = call i32 @__isnan(double %79) #2, !dbg !1970
  %tobool95 = icmp ne i32 %call94, 0, !dbg !1970
  br i1 %tobool95, label %if.then.100, label %if.else.101, !dbg !1971

cond.false.96:                                    ; preds = %cond.false.92
  %80 = load double, double* %inf_sum, align 8, !dbg !1972, !tbaa !1223
  %conv97 = fpext double %80 to x86_fp80, !dbg !1972
  %call98 = call i32 @__isnanl(x86_fp80 %conv97) #2, !dbg !1974
  %tobool99 = icmp ne i32 %call98, 0, !dbg !1974
  br i1 %tobool99, label %if.then.100, label %if.else.101, !dbg !1959

if.then.100:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88
  %81 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1975, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %81, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0)), !dbg !1976
  br label %if.end.103, !dbg !1976

if.else.101:                                      ; preds = %cond.false.96, %cond.true.93, %cond.true.88
  %82 = load double, double* %special_sum, align 8, !dbg !1977, !tbaa !1223
  %call102 = call %struct._object* @PyFloat_FromDouble(double %82), !dbg !1978
  store %struct._object* %call102, %struct._object** %sum, align 8, !dbg !1979, !tbaa !1091
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.101, %if.then.100
  br label %_fsum_error, !dbg !1980

if.end.104:                                       ; preds = %for.end.84
  store volatile double 0.000000e+00, double* %hi, align 8, !dbg !1981, !tbaa !1223
  %83 = load i64, i64* %n, align 8, !dbg !1982, !tbaa !1327
  %cmp105 = icmp sgt i64 %83, 0, !dbg !1984
  br i1 %cmp105, label %if.then.107, label %if.end.146, !dbg !1985

if.then.107:                                      ; preds = %if.end.104
  %84 = load i64, i64* %n, align 8, !dbg !1986, !tbaa !1327
  %dec108 = add i64 %84, -1, !dbg !1986
  store i64 %dec108, i64* %n, align 8, !dbg !1986, !tbaa !1327
  %85 = load double*, double** %p, align 8, !dbg !1988, !tbaa !1091
  %arrayidx109 = getelementptr double, double* %85, i64 %dec108, !dbg !1988
  %86 = load double, double* %arrayidx109, align 8, !dbg !1988, !tbaa !1223
  store volatile double %86, double* %hi, align 8, !dbg !1989, !tbaa !1223
  br label %while.cond, !dbg !1990

while.cond:                                       ; preds = %if.end.120, %if.then.107
  %87 = load i64, i64* %n, align 8, !dbg !1991, !tbaa !1327
  %cmp110 = icmp sgt i64 %87, 0, !dbg !1994
  br i1 %cmp110, label %while.body, label %while.end, !dbg !1990

while.body:                                       ; preds = %while.cond
  %88 = load volatile double, double* %hi, align 8, !dbg !1995, !tbaa !1223
  store double %88, double* %x, align 8, !dbg !1997, !tbaa !1223
  %89 = load i64, i64* %n, align 8, !dbg !1998, !tbaa !1327
  %dec112 = add i64 %89, -1, !dbg !1998
  store i64 %dec112, i64* %n, align 8, !dbg !1998, !tbaa !1327
  %90 = load double*, double** %p, align 8, !dbg !1999, !tbaa !1091
  %arrayidx113 = getelementptr double, double* %90, i64 %dec112, !dbg !1999
  %91 = load double, double* %arrayidx113, align 8, !dbg !1999, !tbaa !1223
  store double %91, double* %y, align 8, !dbg !2000, !tbaa !1223
  %92 = load double, double* %x, align 8, !dbg !2001, !tbaa !1223
  %93 = load double, double* %y, align 8, !dbg !2002, !tbaa !1223
  %add114 = fadd double %92, %93, !dbg !2003
  store volatile double %add114, double* %hi, align 8, !dbg !2004, !tbaa !1223
  %94 = load volatile double, double* %hi, align 8, !dbg !2005, !tbaa !1223
  %95 = load double, double* %x, align 8, !dbg !2006, !tbaa !1223
  %sub115 = fsub double %94, %95, !dbg !2007
  store volatile double %sub115, double* %yr, align 8, !dbg !2008, !tbaa !1223
  %96 = load double, double* %y, align 8, !dbg !2009, !tbaa !1223
  %97 = load volatile double, double* %yr, align 8, !dbg !2010, !tbaa !1223
  %sub116 = fsub double %96, %97, !dbg !2011
  store volatile double %sub116, double* %lo, align 8, !dbg !2012, !tbaa !1223
  %98 = load volatile double, double* %lo, align 8, !dbg !2013, !tbaa !1223
  %cmp117 = fcmp une double %98, 0.000000e+00, !dbg !2015
  br i1 %cmp117, label %if.then.119, label %if.end.120, !dbg !2016

if.then.119:                                      ; preds = %while.body
  br label %while.end, !dbg !2017

if.end.120:                                       ; preds = %while.body
  br label %while.cond, !dbg !1990

while.end:                                        ; preds = %if.then.119, %while.cond
  %99 = load i64, i64* %n, align 8, !dbg !2018, !tbaa !1327
  %cmp121 = icmp sgt i64 %99, 0, !dbg !2020
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.145, !dbg !2021

land.lhs.true.123:                                ; preds = %while.end
  %100 = load volatile double, double* %lo, align 8, !dbg !2022, !tbaa !1223
  %cmp124 = fcmp olt double %100, 0.000000e+00, !dbg !2024
  br i1 %cmp124, label %land.lhs.true.126, label %lor.lhs.false, !dbg !2025

land.lhs.true.126:                                ; preds = %land.lhs.true.123
  %101 = load i64, i64* %n, align 8, !dbg !2026, !tbaa !1327
  %sub127 = sub i64 %101, 1, !dbg !2028
  %102 = load double*, double** %p, align 8, !dbg !2029, !tbaa !1091
  %arrayidx128 = getelementptr double, double* %102, i64 %sub127, !dbg !2029
  %103 = load double, double* %arrayidx128, align 8, !dbg !2029, !tbaa !1223
  %cmp129 = fcmp olt double %103, 0.000000e+00, !dbg !2030
  br i1 %cmp129, label %if.then.138, label %lor.lhs.false, !dbg !2031

lor.lhs.false:                                    ; preds = %land.lhs.true.126, %land.lhs.true.123
  %104 = load volatile double, double* %lo, align 8, !dbg !2032, !tbaa !1223
  %cmp131 = fcmp ogt double %104, 0.000000e+00, !dbg !2033
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.145, !dbg !2034

land.lhs.true.133:                                ; preds = %lor.lhs.false
  %105 = load i64, i64* %n, align 8, !dbg !2035, !tbaa !1327
  %sub134 = sub i64 %105, 1, !dbg !2036
  %106 = load double*, double** %p, align 8, !dbg !2037, !tbaa !1091
  %arrayidx135 = getelementptr double, double* %106, i64 %sub134, !dbg !2037
  %107 = load double, double* %arrayidx135, align 8, !dbg !2037, !tbaa !1223
  %cmp136 = fcmp ogt double %107, 0.000000e+00, !dbg !2038
  br i1 %cmp136, label %if.then.138, label %if.end.145, !dbg !2039

if.then.138:                                      ; preds = %land.lhs.true.133, %land.lhs.true.126
  %108 = load volatile double, double* %lo, align 8, !dbg !2040, !tbaa !1223
  %mul = fmul double %108, 2.000000e+00, !dbg !2042
  store double %mul, double* %y, align 8, !dbg !2043, !tbaa !1223
  %109 = load volatile double, double* %hi, align 8, !dbg !2044, !tbaa !1223
  %110 = load double, double* %y, align 8, !dbg !2045, !tbaa !1223
  %add139 = fadd double %109, %110, !dbg !2046
  store double %add139, double* %x, align 8, !dbg !2047, !tbaa !1223
  %111 = load double, double* %x, align 8, !dbg !2048, !tbaa !1223
  %112 = load volatile double, double* %hi, align 8, !dbg !2049, !tbaa !1223
  %sub140 = fsub double %111, %112, !dbg !2050
  store volatile double %sub140, double* %yr, align 8, !dbg !2051, !tbaa !1223
  %113 = load double, double* %y, align 8, !dbg !2052, !tbaa !1223
  %114 = load volatile double, double* %yr, align 8, !dbg !2054, !tbaa !1223
  %cmp141 = fcmp oeq double %113, %114, !dbg !2055
  br i1 %cmp141, label %if.then.143, label %if.end.144, !dbg !2056

if.then.143:                                      ; preds = %if.then.138
  %115 = load double, double* %x, align 8, !dbg !2057, !tbaa !1223
  store volatile double %115, double* %hi, align 8, !dbg !2058, !tbaa !1223
  br label %if.end.144, !dbg !2059

if.end.144:                                       ; preds = %if.then.143, %if.then.138
  br label %if.end.145, !dbg !2060

if.end.145:                                       ; preds = %if.end.144, %land.lhs.true.133, %lor.lhs.false, %while.end
  br label %if.end.146, !dbg !2061

if.end.146:                                       ; preds = %if.end.145, %if.end.104
  %116 = load volatile double, double* %hi, align 8, !dbg !2062, !tbaa !1223
  %call147 = call %struct._object* @PyFloat_FromDouble(double %116), !dbg !2063
  store %struct._object* %call147, %struct._object** %sum, align 8, !dbg !2064, !tbaa !1091
  br label %_fsum_error, !dbg !2065

_fsum_error:                                      ; preds = %if.end.146, %if.end.103, %if.then.77, %if.then.53, %if.then.14, %if.then.5
  br label %do.body.148, !dbg !2066

do.body.148:                                      ; preds = %_fsum_error
  %117 = bitcast %struct._object** %_py_decref_tmp149 to i8*, !dbg !2067
  call void @llvm.lifetime.start(i64 8, i8* %117) #1, !dbg !2067
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp149, metadata !683, metadata !1087), !dbg !2069
  %118 = load %struct._object*, %struct._object** %iter, align 8, !dbg !2070, !tbaa !1091
  store %struct._object* %118, %struct._object** %_py_decref_tmp149, align 8, !dbg !2069, !tbaa !1091
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8, !dbg !2071, !tbaa !1091
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0, !dbg !2073
  %120 = load i64, i64* %ob_refcnt150, align 8, !dbg !2074, !tbaa !1176
  %dec151 = add i64 %120, -1, !dbg !2074
  store i64 %dec151, i64* %ob_refcnt150, align 8, !dbg !2074, !tbaa !1176
  %cmp152 = icmp ne i64 %dec151, 0, !dbg !2075
  br i1 %cmp152, label %if.then.154, label %if.else.155, !dbg !2076

if.then.154:                                      ; preds = %do.body.148
  br label %if.end.158, !dbg !2077

if.else.155:                                      ; preds = %do.body.148
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8, !dbg !2079, !tbaa !1091
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1, !dbg !2081
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8, !dbg !2081, !tbaa !1186
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4, !dbg !2082
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8, !dbg !2082, !tbaa !1188
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp149, align 8, !dbg !2083, !tbaa !1091
  call void %123(%struct._object* %124), !dbg !2084
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  %125 = bitcast %struct._object** %_py_decref_tmp149 to i8*, !dbg !2085
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !2085
  br label %do.cond.159, !dbg !2087

do.cond.159:                                      ; preds = %if.end.158
  br label %do.end.160, !dbg !2088

do.end.160:                                       ; preds = %do.cond.159
  %126 = load double*, double** %p, align 8, !dbg !2090, !tbaa !1091
  %arraydecay161 = getelementptr inbounds [32 x double], [32 x double]* %ps, i32 0, i32 0, !dbg !2092
  %cmp162 = icmp ne double* %126, %arraydecay161, !dbg !2093
  br i1 %cmp162, label %if.then.164, label %if.end.165, !dbg !2094

if.then.164:                                      ; preds = %do.end.160
  %127 = load double*, double** %p, align 8, !dbg !2095, !tbaa !1091
  %128 = bitcast double* %127 to i8*, !dbg !2095
  call void @PyMem_Free(i8* %128), !dbg !2096
  br label %if.end.165, !dbg !2096

if.end.165:                                       ; preds = %if.then.164, %do.end.160
  %129 = load %struct._object*, %struct._object** %sum, align 8, !dbg !2097, !tbaa !1091
  store %struct._object* %129, %struct._object** %retval, !dbg !2098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2098

cleanup:                                          ; preds = %if.end.165, %if.then
  %130 = bitcast double* %lo to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !2099
  %131 = bitcast double* %yr to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !2099
  %132 = bitcast double* %hi to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !2099
  %133 = bitcast double* %inf_sum to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %133) #1, !dbg !2099
  %134 = bitcast double* %special_sum to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %134) #1, !dbg !2099
  %135 = bitcast double* %xsave to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %135) #1, !dbg !2099
  %136 = bitcast double** %p to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %136) #1, !dbg !2099
  %137 = bitcast [32 x double]* %ps to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 256, i8* %137) #1, !dbg !2099
  %138 = bitcast double* %t to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %138) #1, !dbg !2099
  %139 = bitcast double* %y to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %139) #1, !dbg !2099
  %140 = bitcast double* %x to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %140) #1, !dbg !2099
  %141 = bitcast i64* %m to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %141) #1, !dbg !2099
  %142 = bitcast i64* %n to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %142) #1, !dbg !2099
  %143 = bitcast i64* %j to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %143) #1, !dbg !2099
  %144 = bitcast i64* %i to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %144) #1, !dbg !2099
  %145 = bitcast %struct._object** %sum to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %145) #1, !dbg !2099
  %146 = bitcast %struct._object** %iter to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %146) #1, !dbg !2099
  %147 = bitcast %struct._object** %item to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %147) #1, !dbg !2099
  %148 = load %struct._object*, %struct._object** %retval, !dbg !2099
  ret %struct._object* %148, !dbg !2099
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_gamma(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !701, metadata !1087), !dbg !2100
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !702, metadata !1087), !dbg !2101
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2102, !tbaa !1091
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_tgamma), !dbg !2103
  ret %struct._object* %call, !dbg !2104
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !730, metadata !1087), !dbg !2105
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !731, metadata !1087), !dbg !2106
  %0 = bitcast %struct._object** %ox to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct._object** %ox, metadata !732, metadata !1087), !dbg !2108
  %1 = bitcast %struct._object** %oy to i8*, !dbg !2107
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2107
  call void @llvm.dbg.declare(metadata %struct._object** %oy, metadata !733, metadata !1087), !dbg !2109
  %2 = bitcast double* %r to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2110
  call void @llvm.dbg.declare(metadata double* %r, metadata !734, metadata !1087), !dbg !2111
  %3 = bitcast double* %x to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2110
  call void @llvm.dbg.declare(metadata double* %x, metadata !735, metadata !1087), !dbg !2112
  %4 = bitcast double* %y to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2110
  call void @llvm.dbg.declare(metadata double* %y, metadata !736, metadata !1087), !dbg !2113
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2114, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy), !dbg !2116
  %tobool = icmp ne i32 %call, 0, !dbg !2116
  br i1 %tobool, label %if.end, label %if.then, !dbg !2117

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2118

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %ox, align 8, !dbg !2119, !tbaa !1091
  %call1 = call double @PyFloat_AsDouble(%struct._object* %6), !dbg !2120
  store double %call1, double* %x, align 8, !dbg !2121, !tbaa !1223
  %7 = load %struct._object*, %struct._object** %oy, align 8, !dbg !2122, !tbaa !1091
  %call2 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !2123
  store double %call2, double* %y, align 8, !dbg !2124, !tbaa !1223
  %8 = load double, double* %x, align 8, !dbg !2125, !tbaa !1223
  %cmp = fcmp oeq double %8, -1.000000e+00, !dbg !2127
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2128

lor.lhs.false:                                    ; preds = %if.end
  %9 = load double, double* %y, align 8, !dbg !2129, !tbaa !1223
  %cmp3 = fcmp oeq double %9, -1.000000e+00, !dbg !2131
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !2132

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !2133
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !2133
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !2136

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2137
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2137

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false, !dbg !2138

cond.true:                                        ; preds = %if.end.7
  %10 = load double, double* %x, align 8, !dbg !2139, !tbaa !1223
  %conv = fptrunc double %10 to float, !dbg !2139
  %call8 = call i32 @__isinff(float %conv) #2, !dbg !2142
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2142
  br i1 %tobool9, label %if.then.17, label %if.end.20, !dbg !2143

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13, !dbg !2144

cond.true.10:                                     ; preds = %cond.false
  %11 = load double, double* %x, align 8, !dbg !2146, !tbaa !1223
  %call11 = call i32 @__isinf(double %11) #2, !dbg !2148
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2148
  br i1 %tobool12, label %if.then.17, label %if.end.20, !dbg !2149

cond.false.13:                                    ; preds = %cond.false
  %12 = load double, double* %x, align 8, !dbg !2150, !tbaa !1223
  %conv14 = fpext double %12 to x86_fp80, !dbg !2150
  %call15 = call i32 @__isinfl(x86_fp80 %conv14) #2, !dbg !2152
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2152
  br i1 %tobool16, label %if.then.17, label %if.end.20, !dbg !2138

if.then.17:                                       ; preds = %cond.false.13, %cond.true.10, %cond.true
  %13 = load double, double* %x, align 8, !dbg !2153, !tbaa !1223
  %call18 = call double @fabs(double %13) #2, !dbg !2154
  %call19 = call %struct._object* @PyFloat_FromDouble(double %call18), !dbg !2155
  store %struct._object* %call19, %struct._object** %retval, !dbg !2156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2156

if.end.20:                                        ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.21, label %cond.false.25, !dbg !2157

cond.true.21:                                     ; preds = %if.end.20
  %14 = load double, double* %y, align 8, !dbg !2158, !tbaa !1223
  %conv22 = fptrunc double %14 to float, !dbg !2158
  %call23 = call i32 @__isinff(float %conv22) #2, !dbg !2161
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2161
  br i1 %tobool24, label %if.then.33, label %if.end.36, !dbg !2162

cond.false.25:                                    ; preds = %if.end.20
  br i1 true, label %cond.true.26, label %cond.false.29, !dbg !2163

cond.true.26:                                     ; preds = %cond.false.25
  %15 = load double, double* %y, align 8, !dbg !2164, !tbaa !1223
  %call27 = call i32 @__isinf(double %15) #2, !dbg !2166
  %tobool28 = icmp ne i32 %call27, 0, !dbg !2166
  br i1 %tobool28, label %if.then.33, label %if.end.36, !dbg !2167

cond.false.29:                                    ; preds = %cond.false.25
  %16 = load double, double* %y, align 8, !dbg !2168, !tbaa !1223
  %conv30 = fpext double %16 to x86_fp80, !dbg !2168
  %call31 = call i32 @__isinfl(x86_fp80 %conv30) #2, !dbg !2170
  %tobool32 = icmp ne i32 %call31, 0, !dbg !2170
  br i1 %tobool32, label %if.then.33, label %if.end.36, !dbg !2157

if.then.33:                                       ; preds = %cond.false.29, %cond.true.26, %cond.true.21
  %17 = load double, double* %y, align 8, !dbg !2171, !tbaa !1223
  %call34 = call double @fabs(double %17) #2, !dbg !2172
  %call35 = call %struct._object* @PyFloat_FromDouble(double %call34), !dbg !2173
  store %struct._object* %call35, %struct._object** %retval, !dbg !2174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2174

if.end.36:                                        ; preds = %cond.false.29, %cond.true.26, %cond.true.21
  %call37 = call i32* @__errno_location() #2, !dbg !2175
  store i32 0, i32* %call37, align 4, !dbg !2176, !tbaa !1599
  %18 = load double, double* %x, align 8, !dbg !2177, !tbaa !1223
  %19 = load double, double* %y, align 8, !dbg !2178, !tbaa !1223
  %call38 = call double @hypot(double %18, double %19) #1, !dbg !2179
  store double %call38, double* %r, align 8, !dbg !2180, !tbaa !1223
  br i1 false, label %cond.true.39, label %cond.false.43, !dbg !2181

cond.true.39:                                     ; preds = %if.end.36
  %20 = load double, double* %r, align 8, !dbg !2182, !tbaa !1223
  %conv40 = fptrunc double %20 to float, !dbg !2182
  %call41 = call i32 @__isnanf(float %conv40) #2, !dbg !2185
  %tobool42 = icmp ne i32 %call41, 0, !dbg !2185
  br i1 %tobool42, label %if.then.51, label %if.else.81, !dbg !2186

cond.false.43:                                    ; preds = %if.end.36
  br i1 true, label %cond.true.44, label %cond.false.47, !dbg !2187

cond.true.44:                                     ; preds = %cond.false.43
  %21 = load double, double* %r, align 8, !dbg !2188, !tbaa !1223
  %call45 = call i32 @__isnan(double %21) #2, !dbg !2190
  %tobool46 = icmp ne i32 %call45, 0, !dbg !2190
  br i1 %tobool46, label %if.then.51, label %if.else.81, !dbg !2191

cond.false.47:                                    ; preds = %cond.false.43
  %22 = load double, double* %r, align 8, !dbg !2192, !tbaa !1223
  %conv48 = fpext double %22 to x86_fp80, !dbg !2192
  %call49 = call i32 @__isnanl(x86_fp80 %conv48) #2, !dbg !2194
  %tobool50 = icmp ne i32 %call49, 0, !dbg !2194
  br i1 %tobool50, label %if.then.51, label %if.else.81, !dbg !2181

if.then.51:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.52, label %cond.false.56, !dbg !2195

cond.true.52:                                     ; preds = %if.then.51
  %23 = load double, double* %x, align 8, !dbg !2198, !tbaa !1223
  %conv53 = fptrunc double %23 to float, !dbg !2198
  %call54 = call i32 @__isnanf(float %conv53) #2, !dbg !2200
  %tobool55 = icmp ne i32 %call54, 0, !dbg !2200
  br i1 %tobool55, label %if.else, label %land.lhs.true.64, !dbg !2201

cond.false.56:                                    ; preds = %if.then.51
  br i1 true, label %cond.true.57, label %cond.false.60, !dbg !2202

cond.true.57:                                     ; preds = %cond.false.56
  %24 = load double, double* %x, align 8, !dbg !2204, !tbaa !1223
  %call58 = call i32 @__isnan(double %24) #2, !dbg !2206
  %tobool59 = icmp ne i32 %call58, 0, !dbg !2206
  br i1 %tobool59, label %if.else, label %land.lhs.true.64, !dbg !2207

cond.false.60:                                    ; preds = %cond.false.56
  %25 = load double, double* %x, align 8, !dbg !2208, !tbaa !1223
  %conv61 = fpext double %25 to x86_fp80, !dbg !2208
  %call62 = call i32 @__isnanl(x86_fp80 %conv61) #2, !dbg !2210
  %tobool63 = icmp ne i32 %call62, 0, !dbg !2210
  br i1 %tobool63, label %if.else, label %land.lhs.true.64, !dbg !2195

land.lhs.true.64:                                 ; preds = %cond.false.60, %cond.true.57, %cond.true.52
  br i1 false, label %cond.true.65, label %cond.false.69, !dbg !2211

cond.true.65:                                     ; preds = %land.lhs.true.64
  %26 = load double, double* %y, align 8, !dbg !2215, !tbaa !1223
  %conv66 = fptrunc double %26 to float, !dbg !2215
  %call67 = call i32 @__isnanf(float %conv66) #2, !dbg !2217
  %tobool68 = icmp ne i32 %call67, 0, !dbg !2217
  br i1 %tobool68, label %if.else, label %if.then.77, !dbg !2218

cond.false.69:                                    ; preds = %land.lhs.true.64
  br i1 true, label %cond.true.70, label %cond.false.73, !dbg !2219

cond.true.70:                                     ; preds = %cond.false.69
  %27 = load double, double* %y, align 8, !dbg !2221, !tbaa !1223
  %call71 = call i32 @__isnan(double %27) #2, !dbg !2223
  %tobool72 = icmp ne i32 %call71, 0, !dbg !2223
  br i1 %tobool72, label %if.else, label %if.then.77, !dbg !2224

cond.false.73:                                    ; preds = %cond.false.69
  %28 = load double, double* %y, align 8, !dbg !2225, !tbaa !1223
  %conv74 = fpext double %28 to x86_fp80, !dbg !2225
  %call75 = call i32 @__isnanl(x86_fp80 %conv74) #2, !dbg !2227
  %tobool76 = icmp ne i32 %call75, 0, !dbg !2227
  br i1 %tobool76, label %if.else, label %if.then.77, !dbg !2228

if.then.77:                                       ; preds = %cond.false.73, %cond.true.70, %cond.true.65
  %call78 = call i32* @__errno_location() #2, !dbg !2229
  store i32 33, i32* %call78, align 4, !dbg !2230, !tbaa !1599
  br label %if.end.80, !dbg !2231

if.else:                                          ; preds = %cond.false.73, %cond.true.70, %cond.true.65, %cond.false.60, %cond.true.57, %cond.true.52
  %call79 = call i32* @__errno_location() #2, !dbg !2232
  store i32 0, i32* %call79, align 4, !dbg !2233, !tbaa !1599
  br label %if.end.80

if.end.80:                                        ; preds = %if.else, %if.then.77
  br label %if.end.126, !dbg !2234

if.else.81:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.82, label %cond.false.86, !dbg !2235

cond.true.82:                                     ; preds = %if.else.81
  %29 = load double, double* %r, align 8, !dbg !2236, !tbaa !1223
  %conv83 = fptrunc double %29 to float, !dbg !2236
  %call84 = call i32 @__isinff(float %conv83) #2, !dbg !2239
  %tobool85 = icmp ne i32 %call84, 0, !dbg !2239
  br i1 %tobool85, label %if.then.94, label %if.end.125, !dbg !2240

cond.false.86:                                    ; preds = %if.else.81
  br i1 true, label %cond.true.87, label %cond.false.90, !dbg !2241

cond.true.87:                                     ; preds = %cond.false.86
  %30 = load double, double* %r, align 8, !dbg !2243, !tbaa !1223
  %call88 = call i32 @__isinf(double %30) #2, !dbg !2245
  %tobool89 = icmp ne i32 %call88, 0, !dbg !2245
  br i1 %tobool89, label %if.then.94, label %if.end.125, !dbg !2246

cond.false.90:                                    ; preds = %cond.false.86
  %31 = load double, double* %r, align 8, !dbg !2247, !tbaa !1223
  %conv91 = fpext double %31 to x86_fp80, !dbg !2247
  %call92 = call i32 @__isinfl(x86_fp80 %conv91) #2, !dbg !2249
  %tobool93 = icmp ne i32 %call92, 0, !dbg !2249
  br i1 %tobool93, label %if.then.94, label %if.end.125, !dbg !2235

if.then.94:                                       ; preds = %cond.false.90, %cond.true.87, %cond.true.82
  br i1 false, label %cond.true.95, label %cond.false.99, !dbg !2250

cond.true.95:                                     ; preds = %if.then.94
  %32 = load double, double* %x, align 8, !dbg !2253, !tbaa !1223
  %conv96 = fptrunc double %32 to float, !dbg !2253
  %call97 = call i32 @__finitef(float %conv96) #2, !dbg !2255
  %tobool98 = icmp ne i32 %call97, 0, !dbg !2255
  br i1 %tobool98, label %land.lhs.true.107, label %if.else.122, !dbg !2256

cond.false.99:                                    ; preds = %if.then.94
  br i1 true, label %cond.true.100, label %cond.false.103, !dbg !2257

cond.true.100:                                    ; preds = %cond.false.99
  %33 = load double, double* %x, align 8, !dbg !2259, !tbaa !1223
  %call101 = call i32 @__finite(double %33) #2, !dbg !2261
  %tobool102 = icmp ne i32 %call101, 0, !dbg !2261
  br i1 %tobool102, label %land.lhs.true.107, label %if.else.122, !dbg !2262

cond.false.103:                                   ; preds = %cond.false.99
  %34 = load double, double* %x, align 8, !dbg !2263, !tbaa !1223
  %conv104 = fpext double %34 to x86_fp80, !dbg !2263
  %call105 = call i32 @__finitel(x86_fp80 %conv104) #2, !dbg !2265
  %tobool106 = icmp ne i32 %call105, 0, !dbg !2265
  br i1 %tobool106, label %land.lhs.true.107, label %if.else.122, !dbg !2250

land.lhs.true.107:                                ; preds = %cond.false.103, %cond.true.100, %cond.true.95
  br i1 false, label %cond.true.108, label %cond.false.112, !dbg !2266

cond.true.108:                                    ; preds = %land.lhs.true.107
  %35 = load double, double* %y, align 8, !dbg !2270, !tbaa !1223
  %conv109 = fptrunc double %35 to float, !dbg !2270
  %call110 = call i32 @__finitef(float %conv109) #2, !dbg !2272
  %tobool111 = icmp ne i32 %call110, 0, !dbg !2272
  br i1 %tobool111, label %if.then.120, label %if.else.122, !dbg !2273

cond.false.112:                                   ; preds = %land.lhs.true.107
  br i1 true, label %cond.true.113, label %cond.false.116, !dbg !2274

cond.true.113:                                    ; preds = %cond.false.112
  %36 = load double, double* %y, align 8, !dbg !2276, !tbaa !1223
  %call114 = call i32 @__finite(double %36) #2, !dbg !2278
  %tobool115 = icmp ne i32 %call114, 0, !dbg !2278
  br i1 %tobool115, label %if.then.120, label %if.else.122, !dbg !2279

cond.false.116:                                   ; preds = %cond.false.112
  %37 = load double, double* %y, align 8, !dbg !2280, !tbaa !1223
  %conv117 = fpext double %37 to x86_fp80, !dbg !2280
  %call118 = call i32 @__finitel(x86_fp80 %conv117) #2, !dbg !2282
  %tobool119 = icmp ne i32 %call118, 0, !dbg !2282
  br i1 %tobool119, label %if.then.120, label %if.else.122, !dbg !2283

if.then.120:                                      ; preds = %cond.false.116, %cond.true.113, %cond.true.108
  %call121 = call i32* @__errno_location() #2, !dbg !2284
  store i32 34, i32* %call121, align 4, !dbg !2285, !tbaa !1599
  br label %if.end.124, !dbg !2286

if.else.122:                                      ; preds = %cond.false.116, %cond.true.113, %cond.true.108, %cond.false.103, %cond.true.100, %cond.true.95
  %call123 = call i32* @__errno_location() #2, !dbg !2287
  store i32 0, i32* %call123, align 4, !dbg !2288, !tbaa !1599
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.122, %if.then.120
  br label %if.end.125, !dbg !2289

if.end.125:                                       ; preds = %if.end.124, %cond.false.90, %cond.true.87, %cond.true.82
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.end.80
  %call127 = call i32* @__errno_location() #2, !dbg !2290
  %38 = load i32, i32* %call127, align 4, !dbg !2292, !tbaa !1599
  %tobool128 = icmp ne i32 %38, 0, !dbg !2293
  br i1 %tobool128, label %land.lhs.true.129, label %if.else.133, !dbg !2294

land.lhs.true.129:                                ; preds = %if.end.126
  %39 = load double, double* %r, align 8, !dbg !2295, !tbaa !1223
  %call130 = call i32 @is_error(double %39), !dbg !2297
  %tobool131 = icmp ne i32 %call130, 0, !dbg !2297
  br i1 %tobool131, label %if.then.132, label %if.else.133, !dbg !2298

if.then.132:                                      ; preds = %land.lhs.true.129
  store %struct._object* null, %struct._object** %retval, !dbg !2299
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2299

if.else.133:                                      ; preds = %land.lhs.true.129, %if.end.126
  %40 = load double, double* %r, align 8, !dbg !2300, !tbaa !1223
  %call134 = call %struct._object* @PyFloat_FromDouble(double %40), !dbg !2301
  store %struct._object* %call134, %struct._object** %retval, !dbg !2302
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2302

cleanup:                                          ; preds = %if.else.133, %if.then.132, %if.then.33, %if.then.17, %if.then.6, %if.then
  %41 = bitcast double* %y to i8*, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2303
  %42 = bitcast double* %x to i8*, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2303
  %43 = bitcast double* %r to i8*, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2303
  %44 = bitcast %struct._object** %oy to i8*, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2303
  %45 = bitcast %struct._object** %ox to i8*, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2303
  %46 = load %struct._object*, %struct._object** %retval, !dbg !2303
  ret %struct._object* %46, !dbg !2303
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isfinite(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !739, metadata !1087), !dbg !2304
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !740, metadata !1087), !dbg !2305
  %0 = bitcast double* %x to i8*, !dbg !2306
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2306
  call void @llvm.dbg.declare(metadata double* %x, metadata !741, metadata !1087), !dbg !2307
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2308, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2309
  store double %call, double* %x, align 8, !dbg !2307, !tbaa !1223
  %2 = load double, double* %x, align 8, !dbg !2310, !tbaa !1223
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !2312
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2313

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2314
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2314
  br i1 %tobool, label %if.then, label %if.end, !dbg !2316

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2317
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2317

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !2318, !tbaa !1223
  %call2 = call i32 @__finite(double %3) #2, !dbg !2319
  %conv = sext i32 %call2 to i64, !dbg !2320
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2321
  store %struct._object* %call3, %struct._object** %retval, !dbg !2322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2322

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast double* %x to i8*, !dbg !2323
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !2323
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2323
  ret %struct._object* %5, !dbg !2323
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isinf(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !744, metadata !1087), !dbg !2324
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !745, metadata !1087), !dbg !2325
  %0 = bitcast double* %x to i8*, !dbg !2326
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2326
  call void @llvm.dbg.declare(metadata double* %x, metadata !746, metadata !1087), !dbg !2327
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2328, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2329
  store double %call, double* %x, align 8, !dbg !2327, !tbaa !1223
  %2 = load double, double* %x, align 8, !dbg !2330, !tbaa !1223
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !2332
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2333

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2334
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2334
  br i1 %tobool, label %if.then, label %if.end, !dbg !2336

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2337

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !2338, !tbaa !1223
  %call2 = call i32 @__isinf(double %3) #2, !dbg !2339
  %conv = sext i32 %call2 to i64, !dbg !2340
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2341
  store %struct._object* %call3, %struct._object** %retval, !dbg !2342
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2342

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast double* %x to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !2343
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2343
  ret %struct._object* %5, !dbg !2343
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_isnan(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !749, metadata !1087), !dbg !2344
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !750, metadata !1087), !dbg !2345
  %0 = bitcast double* %x to i8*, !dbg !2346
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2346
  call void @llvm.dbg.declare(metadata double* %x, metadata !751, metadata !1087), !dbg !2347
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2348, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !2349
  store double %call, double* %x, align 8, !dbg !2347, !tbaa !1223
  %2 = load double, double* %x, align 8, !dbg !2350, !tbaa !1223
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !2352
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2353

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2354
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2354
  br i1 %tobool, label %if.then, label %if.end, !dbg !2356

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2357
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2357

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !2358, !tbaa !1223
  %call2 = call i32 @__isnan(double %3) #2, !dbg !2359
  %conv = sext i32 %call2 to i64, !dbg !2360
  %call3 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2361
  store %struct._object* %call3, %struct._object** %retval, !dbg !2362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2362

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast double* %x to i8*, !dbg !2363
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !2363
  %5 = load %struct._object*, %struct._object** %retval, !dbg !2363
  ret %struct._object* %5, !dbg !2363
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !754, metadata !1087), !dbg !2364
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !755, metadata !1087), !dbg !2365
  %0 = bitcast double* %x to i8*, !dbg !2366
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2366
  call void @llvm.dbg.declare(metadata double* %x, metadata !756, metadata !1087), !dbg !2367
  %1 = bitcast double* %r to i8*, !dbg !2366
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2366
  call void @llvm.dbg.declare(metadata double* %r, metadata !757, metadata !1087), !dbg !2368
  %2 = bitcast %struct._object** %oexp to i8*, !dbg !2369
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2369
  call void @llvm.dbg.declare(metadata %struct._object** %oexp, metadata !758, metadata !1087), !dbg !2370
  %3 = bitcast i64* %exp to i8*, !dbg !2371
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2371
  call void @llvm.dbg.declare(metadata i64* %exp, metadata !759, metadata !1087), !dbg !2372
  %4 = bitcast i32* %overflow to i8*, !dbg !2373
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2373
  call void @llvm.dbg.declare(metadata i32* %overflow, metadata !760, metadata !1087), !dbg !2374
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2375, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), double* %x, %struct._object** %oexp), !dbg !2377
  %tobool = icmp ne i32 %call, 0, !dbg !2377
  br i1 %tobool, label %if.end, label %if.then, !dbg !2378

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2379
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2379

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %oexp, align 8, !dbg !2380, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !2382
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2382, !tbaa !1186
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 19, !dbg !2383
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2383, !tbaa !2384
  %and = and i64 %8, 16777216, !dbg !2385
  %cmp = icmp ne i64 %and, 0, !dbg !2386
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !2387

if.then.1:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %oexp, align 8, !dbg !2388, !tbaa !1091
  %call2 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %9, i32* %overflow), !dbg !2390
  store i64 %call2, i64* %exp, align 8, !dbg !2391, !tbaa !1327
  %10 = load i64, i64* %exp, align 8, !dbg !2392, !tbaa !1327
  %cmp3 = icmp eq i64 %10, -1, !dbg !2394
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !2395

land.lhs.true:                                    ; preds = %if.then.1
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !2396
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !2396
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !2398

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2399
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2399

if.end.7:                                         ; preds = %land.lhs.true, %if.then.1
  %11 = load i32, i32* %overflow, align 4, !dbg !2400, !tbaa !1599
  %tobool8 = icmp ne i32 %11, 0, !dbg !2400
  br i1 %tobool8, label %if.then.9, label %if.end.11, !dbg !2402

if.then.9:                                        ; preds = %if.end.7
  %12 = load i32, i32* %overflow, align 4, !dbg !2403, !tbaa !1599
  %cmp10 = icmp slt i32 %12, 0, !dbg !2404
  %cond = select i1 %cmp10, i64 -9223372036854775808, i64 9223372036854775807, !dbg !2403
  store i64 %cond, i64* %exp, align 8, !dbg !2405, !tbaa !1327
  br label %if.end.11, !dbg !2406

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  br label %if.end.12, !dbg !2407

if.else:                                          ; preds = %if.end
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2408, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.56, i32 0, i32 0)), !dbg !2410
  store %struct._object* null, %struct._object** %retval, !dbg !2411
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2411

if.end.12:                                        ; preds = %if.end.11
  %14 = load double, double* %x, align 8, !dbg !2412, !tbaa !1223
  %cmp13 = fcmp oeq double %14, 0.000000e+00, !dbg !2414
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false, !dbg !2415

lor.lhs.false:                                    ; preds = %if.end.12
  br i1 false, label %cond.true, label %cond.false, !dbg !2416

cond.true:                                        ; preds = %lor.lhs.false
  %15 = load double, double* %x, align 8, !dbg !2418, !tbaa !1223
  %conv = fptrunc double %15 to float, !dbg !2418
  %call14 = call i32 @__finitef(float %conv) #2, !dbg !2420
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2420
  br i1 %tobool15, label %if.else.25, label %if.then.23, !dbg !2421

cond.false:                                       ; preds = %lor.lhs.false
  br i1 true, label %cond.true.16, label %cond.false.19, !dbg !2422

cond.true.16:                                     ; preds = %cond.false
  %16 = load double, double* %x, align 8, !dbg !2424, !tbaa !1223
  %call17 = call i32 @__finite(double %16) #2, !dbg !2426
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2426
  br i1 %tobool18, label %if.else.25, label %if.then.23, !dbg !2427

cond.false.19:                                    ; preds = %cond.false
  %17 = load double, double* %x, align 8, !dbg !2428, !tbaa !1223
  %conv20 = fpext double %17 to x86_fp80, !dbg !2428
  %call21 = call i32 @__finitel(x86_fp80 %conv20) #2, !dbg !2430
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2430
  br i1 %tobool22, label %if.else.25, label %if.then.23, !dbg !2431

if.then.23:                                       ; preds = %cond.false.19, %cond.true.16, %cond.true, %if.end.12
  %18 = load double, double* %x, align 8, !dbg !2432, !tbaa !1223
  store double %18, double* %r, align 8, !dbg !2434, !tbaa !1223
  %call24 = call i32* @__errno_location() #2, !dbg !2435
  store i32 0, i32* %call24, align 4, !dbg !2436, !tbaa !1599
  br label %if.end.58, !dbg !2437

if.else.25:                                       ; preds = %cond.false.19, %cond.true.16, %cond.true
  %19 = load i64, i64* %exp, align 8, !dbg !2438, !tbaa !1327
  %cmp26 = icmp sgt i64 %19, 2147483647, !dbg !2440
  br i1 %cmp26, label %if.then.28, label %if.else.31, !dbg !2441

if.then.28:                                       ; preds = %if.else.25
  %20 = load double, double* %x, align 8, !dbg !2442, !tbaa !1223
  %call29 = call double @copysign(double 0x7FF0000000000000, double %20) #2, !dbg !2444
  store double %call29, double* %r, align 8, !dbg !2445, !tbaa !1223
  %call30 = call i32* @__errno_location() #2, !dbg !2446
  store i32 34, i32* %call30, align 4, !dbg !2447, !tbaa !1599
  br label %if.end.57, !dbg !2448

if.else.31:                                       ; preds = %if.else.25
  %21 = load i64, i64* %exp, align 8, !dbg !2449, !tbaa !1327
  %cmp32 = icmp slt i64 %21, -2147483648, !dbg !2451
  br i1 %cmp32, label %if.then.34, label %if.else.37, !dbg !2452

if.then.34:                                       ; preds = %if.else.31
  %22 = load double, double* %x, align 8, !dbg !2453, !tbaa !1223
  %call35 = call double @copysign(double 0.000000e+00, double %22) #2, !dbg !2455
  store double %call35, double* %r, align 8, !dbg !2456, !tbaa !1223
  %call36 = call i32* @__errno_location() #2, !dbg !2457
  store i32 0, i32* %call36, align 4, !dbg !2458, !tbaa !1599
  br label %if.end.56, !dbg !2459

if.else.37:                                       ; preds = %if.else.31
  %call38 = call i32* @__errno_location() #2, !dbg !2460
  store i32 0, i32* %call38, align 4, !dbg !2462, !tbaa !1599
  %23 = load double, double* %x, align 8, !dbg !2463, !tbaa !1223
  %24 = load i64, i64* %exp, align 8, !dbg !2464, !tbaa !1327
  %conv39 = trunc i64 %24 to i32, !dbg !2465
  %call40 = call double @ldexp(double %23, i32 %conv39) #1, !dbg !2466
  store double %call40, double* %r, align 8, !dbg !2467, !tbaa !1223
  br i1 false, label %cond.true.41, label %cond.false.45, !dbg !2468

cond.true.41:                                     ; preds = %if.else.37
  %25 = load double, double* %r, align 8, !dbg !2469, !tbaa !1223
  %conv42 = fptrunc double %25 to float, !dbg !2469
  %call43 = call i32 @__isinff(float %conv42) #2, !dbg !2472
  %tobool44 = icmp ne i32 %call43, 0, !dbg !2472
  br i1 %tobool44, label %if.then.53, label %if.end.55, !dbg !2473

cond.false.45:                                    ; preds = %if.else.37
  br i1 true, label %cond.true.46, label %cond.false.49, !dbg !2474

cond.true.46:                                     ; preds = %cond.false.45
  %26 = load double, double* %r, align 8, !dbg !2476, !tbaa !1223
  %call47 = call i32 @__isinf(double %26) #2, !dbg !2478
  %tobool48 = icmp ne i32 %call47, 0, !dbg !2478
  br i1 %tobool48, label %if.then.53, label %if.end.55, !dbg !2479

cond.false.49:                                    ; preds = %cond.false.45
  %27 = load double, double* %r, align 8, !dbg !2480, !tbaa !1223
  %conv50 = fpext double %27 to x86_fp80, !dbg !2480
  %call51 = call i32 @__isinfl(x86_fp80 %conv50) #2, !dbg !2482
  %tobool52 = icmp ne i32 %call51, 0, !dbg !2482
  br i1 %tobool52, label %if.then.53, label %if.end.55, !dbg !2468

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %call54 = call i32* @__errno_location() #2, !dbg !2483
  store i32 34, i32* %call54, align 4, !dbg !2484, !tbaa !1599
  br label %if.end.55, !dbg !2485

if.end.55:                                        ; preds = %if.then.53, %cond.false.49, %cond.true.46, %cond.true.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.34
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.28
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.23
  %call59 = call i32* @__errno_location() #2, !dbg !2486
  %28 = load i32, i32* %call59, align 4, !dbg !2488, !tbaa !1599
  %tobool60 = icmp ne i32 %28, 0, !dbg !2489
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.65, !dbg !2490

land.lhs.true.61:                                 ; preds = %if.end.58
  %29 = load double, double* %r, align 8, !dbg !2491, !tbaa !1223
  %call62 = call i32 @is_error(double %29), !dbg !2493
  %tobool63 = icmp ne i32 %call62, 0, !dbg !2493
  br i1 %tobool63, label %if.then.64, label %if.end.65, !dbg !2494

if.then.64:                                       ; preds = %land.lhs.true.61
  store %struct._object* null, %struct._object** %retval, !dbg !2495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2495

if.end.65:                                        ; preds = %land.lhs.true.61, %if.end.58
  %30 = load double, double* %r, align 8, !dbg !2496, !tbaa !1223
  %call66 = call %struct._object* @PyFloat_FromDouble(double %30), !dbg !2497
  store %struct._object* %call66, %struct._object** %retval, !dbg !2498
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2498

cleanup:                                          ; preds = %if.end.65, %if.then.64, %if.else, %if.then.6, %if.then
  %31 = bitcast i32* %overflow to i8*, !dbg !2499
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !2499
  %32 = bitcast i64* %exp to i8*, !dbg !2499
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2499
  %33 = bitcast %struct._object** %oexp to i8*, !dbg !2499
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !2499
  %34 = bitcast double* %r to i8*, !dbg !2499
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2499
  %35 = bitcast double* %x to i8*, !dbg !2499
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2499
  %36 = load %struct._object*, %struct._object** %retval, !dbg !2499
  ret %struct._object* %36, !dbg !2499
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_lgamma(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !763, metadata !1087), !dbg !2500
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !764, metadata !1087), !dbg !2501
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2502, !tbaa !1091
  %call = call %struct._object* @math_1a(%struct._object* %0, double (double)* @m_lgamma), !dbg !2503
  ret %struct._object* %call, !dbg !2504
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !772, metadata !1087), !dbg !2505
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !773, metadata !1087), !dbg !2506
  %0 = bitcast %struct._object** %arg to i8*, !dbg !2507
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2507
  call void @llvm.dbg.declare(metadata %struct._object** %arg, metadata !774, metadata !1087), !dbg !2508
  %1 = bitcast %struct._object** %base to i8*, !dbg !2509
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2509
  call void @llvm.dbg.declare(metadata %struct._object** %base, metadata !775, metadata !1087), !dbg !2510
  store %struct._object* null, %struct._object** %base, align 8, !dbg !2510, !tbaa !1091
  %2 = bitcast %struct._object** %num to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct._object** %num, metadata !776, metadata !1087), !dbg !2512
  %3 = bitcast %struct._object** %den to i8*, !dbg !2511
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct._object** %den, metadata !777, metadata !1087), !dbg !2513
  %4 = bitcast %struct._object** %ans to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2514
  call void @llvm.dbg.declare(metadata %struct._object** %ans, metadata !778, metadata !1087), !dbg !2515
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2516, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i64 1, i64 2, %struct._object** %arg, %struct._object** %base), !dbg !2518
  %tobool = icmp ne i32 %call, 0, !dbg !2518
  br i1 %tobool, label %if.end, label %if.then, !dbg !2519

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2520
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2520

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %arg, align 8, !dbg !2521, !tbaa !1091
  %call1 = call %struct._object* @loghelper(%struct._object* %6, double (double)* @m_log, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)), !dbg !2522
  store %struct._object* %call1, %struct._object** %num, align 8, !dbg !2523, !tbaa !1091
  %7 = load %struct._object*, %struct._object** %num, align 8, !dbg !2524, !tbaa !1091
  %cmp = icmp eq %struct._object* %7, null, !dbg !2526
  br i1 %cmp, label %if.then.3, label %lor.lhs.false, !dbg !2527

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %base, align 8, !dbg !2528, !tbaa !1091
  %cmp2 = icmp eq %struct._object* %8, null, !dbg !2530
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !2531

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %9 = load %struct._object*, %struct._object** %num, align 8, !dbg !2532, !tbaa !1091
  store %struct._object* %9, %struct._object** %retval, !dbg !2533
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2533

if.end.4:                                         ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %base, align 8, !dbg !2534, !tbaa !1091
  %call5 = call %struct._object* @loghelper(%struct._object* %10, double (double)* @m_log, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)), !dbg !2535
  store %struct._object* %call5, %struct._object** %den, align 8, !dbg !2536, !tbaa !1091
  %11 = load %struct._object*, %struct._object** %den, align 8, !dbg !2537, !tbaa !1091
  %cmp6 = icmp eq %struct._object* %11, null, !dbg !2538
  br i1 %cmp6, label %if.then.7, label %if.end.11, !dbg !2539

if.then.7:                                        ; preds = %if.end.4
  br label %do.body, !dbg !2540

do.body:                                          ; preds = %if.then.7
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2541
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !2541
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !779, metadata !1087), !dbg !2543
  %13 = load %struct._object*, %struct._object** %num, align 8, !dbg !2544, !tbaa !1091
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !2543, !tbaa !1091
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2545, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !2547
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !2548, !tbaa !1176
  %dec = add i64 %15, -1, !dbg !2548
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2548, !tbaa !1176
  %cmp8 = icmp ne i64 %dec, 0, !dbg !2549
  br i1 %cmp8, label %if.then.9, label %if.else, !dbg !2550

if.then.9:                                        ; preds = %do.body
  br label %if.end.10, !dbg !2551

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2553, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2555
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2555, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !2556
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2556, !tbaa !1188
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2557, !tbaa !1091
  call void %18(%struct._object* %19), !dbg !2558
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2559
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2559
  br label %do.cond, !dbg !2561

do.cond:                                          ; preds = %if.end.10
  br label %do.end, !dbg !2562

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !2564
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2564

if.end.11:                                        ; preds = %if.end.4
  %21 = load %struct._object*, %struct._object** %num, align 8, !dbg !2565, !tbaa !1091
  %22 = load %struct._object*, %struct._object** %den, align 8, !dbg !2566, !tbaa !1091
  %call12 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %21, %struct._object* %22), !dbg !2567
  store %struct._object* %call12, %struct._object** %ans, align 8, !dbg !2568, !tbaa !1091
  br label %do.body.13, !dbg !2569

do.body.13:                                       ; preds = %if.end.11
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2570
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !2570
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !783, metadata !1087), !dbg !2572
  %24 = load %struct._object*, %struct._object** %num, align 8, !dbg !2573, !tbaa !1091
  store %struct._object* %24, %struct._object** %_py_decref_tmp14, align 8, !dbg !2572, !tbaa !1091
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2574, !tbaa !1091
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2576
  %26 = load i64, i64* %ob_refcnt15, align 8, !dbg !2577, !tbaa !1176
  %dec16 = add i64 %26, -1, !dbg !2577
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2577, !tbaa !1176
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2578
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2579

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !2580

if.else.19:                                       ; preds = %do.body.13
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2582, !tbaa !1091
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !2584
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2584, !tbaa !1186
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !2585
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2585, !tbaa !1188
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2586, !tbaa !1091
  call void %29(%struct._object* %30), !dbg !2587
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %31 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2588
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2588
  br label %do.cond.23, !dbg !2590

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2591

do.end.24:                                        ; preds = %do.cond.23
  br label %do.body.25, !dbg !2593

do.body.25:                                       ; preds = %do.end.24
  %32 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2594
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !2594
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !785, metadata !1087), !dbg !2596
  %33 = load %struct._object*, %struct._object** %den, align 8, !dbg !2597, !tbaa !1091
  store %struct._object* %33, %struct._object** %_py_decref_tmp26, align 8, !dbg !2596, !tbaa !1091
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2598, !tbaa !1091
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !2600
  %35 = load i64, i64* %ob_refcnt27, align 8, !dbg !2601, !tbaa !1176
  %dec28 = add i64 %35, -1, !dbg !2601
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2601, !tbaa !1176
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !2602
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !2603

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !2604

if.else.31:                                       ; preds = %do.body.25
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2606, !tbaa !1091
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !2608
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2608, !tbaa !1186
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !2609
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !2609, !tbaa !1188
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2610, !tbaa !1091
  call void %38(%struct._object* %39), !dbg !2611
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %40 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2612
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2612
  br label %do.cond.35, !dbg !2613

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2614

do.end.36:                                        ; preds = %do.cond.35
  %41 = load %struct._object*, %struct._object** %ans, align 8, !dbg !2616, !tbaa !1091
  store %struct._object* %41, %struct._object** %retval, !dbg !2617
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2617

cleanup:                                          ; preds = %do.end.36, %do.end, %if.then.3, %if.then
  %42 = bitcast %struct._object** %ans to i8*, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2618
  %43 = bitcast %struct._object** %den to i8*, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2618
  %44 = bitcast %struct._object** %num to i8*, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !2618
  %45 = bitcast %struct._object** %base to i8*, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !2618
  %46 = bitcast %struct._object** %arg to i8*, !dbg !2618
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !2618
  %47 = load %struct._object*, %struct._object** %retval, !dbg !2618
  ret %struct._object* %47, !dbg !2618
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log1p(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !804, metadata !1087), !dbg !2619
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !805, metadata !1087), !dbg !2620
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2621, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @_Py_log1p, i32 0), !dbg !2622
  ret %struct._object* %call, !dbg !2623
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log10(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !808, metadata !1087), !dbg !2624
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !809, metadata !1087), !dbg !2625
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2626, !tbaa !1091
  %call = call %struct._object* @loghelper(%struct._object* %0, double (double)* @m_log10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)), !dbg !2627
  ret %struct._object* %call, !dbg !2628
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_log2(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !815, metadata !1087), !dbg !2629
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !816, metadata !1087), !dbg !2630
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2631, !tbaa !1091
  %call = call %struct._object* @loghelper(%struct._object* %0, double (double)* @m_log2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0)), !dbg !2632
  ret %struct._object* %call, !dbg !2633
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_modf(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %y = alloca double, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !822, metadata !1087), !dbg !2634
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !823, metadata !1087), !dbg !2635
  %0 = bitcast double* %y to i8*, !dbg !2636
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %y, metadata !824, metadata !1087), !dbg !2637
  %1 = bitcast double* %x to i8*, !dbg !2636
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2636
  call void @llvm.dbg.declare(metadata double* %x, metadata !825, metadata !1087), !dbg !2638
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !2639, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %2), !dbg !2640
  store double %call, double* %x, align 8, !dbg !2638, !tbaa !1223
  %3 = load double, double* %x, align 8, !dbg !2641, !tbaa !1223
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !2643
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2644

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2645
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2645
  br i1 %tobool, label %if.then, label %if.end, !dbg !2647

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2648
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2648

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !2649

cond.true:                                        ; preds = %if.end
  %4 = load double, double* %x, align 8, !dbg !2650, !tbaa !1223
  %conv = fptrunc double %4 to float, !dbg !2650
  %call2 = call i32 @__finitef(float %conv) #2, !dbg !2653
  %tobool3 = icmp ne i32 %call2, 0, !dbg !2653
  br i1 %tobool3, label %if.end.43, label %if.then.11, !dbg !2654

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7, !dbg !2655

cond.true.4:                                      ; preds = %cond.false
  %5 = load double, double* %x, align 8, !dbg !2657, !tbaa !1223
  %call5 = call i32 @__finite(double %5) #2, !dbg !2659
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2659
  br i1 %tobool6, label %if.end.43, label %if.then.11, !dbg !2660

cond.false.7:                                     ; preds = %cond.false
  %6 = load double, double* %x, align 8, !dbg !2661, !tbaa !1223
  %conv8 = fpext double %6 to x86_fp80, !dbg !2661
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #2, !dbg !2663
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2663
  br i1 %tobool10, label %if.end.43, label %if.then.11, !dbg !2649

if.then.11:                                       ; preds = %cond.false.7, %cond.true.4, %cond.true
  br i1 false, label %cond.true.12, label %cond.false.16, !dbg !2664

cond.true.12:                                     ; preds = %if.then.11
  %7 = load double, double* %x, align 8, !dbg !2666, !tbaa !1223
  %conv13 = fptrunc double %7 to float, !dbg !2666
  %call14 = call i32 @__isinff(float %conv13) #2, !dbg !2669
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2669
  br i1 %tobool15, label %if.then.24, label %if.else, !dbg !2670

cond.false.16:                                    ; preds = %if.then.11
  br i1 true, label %cond.true.17, label %cond.false.20, !dbg !2671

cond.true.17:                                     ; preds = %cond.false.16
  %8 = load double, double* %x, align 8, !dbg !2673, !tbaa !1223
  %call18 = call i32 @__isinf(double %8) #2, !dbg !2675
  %tobool19 = icmp ne i32 %call18, 0, !dbg !2675
  br i1 %tobool19, label %if.then.24, label %if.else, !dbg !2676

cond.false.20:                                    ; preds = %cond.false.16
  %9 = load double, double* %x, align 8, !dbg !2677, !tbaa !1223
  %conv21 = fpext double %9 to x86_fp80, !dbg !2677
  %call22 = call i32 @__isinfl(x86_fp80 %conv21) #2, !dbg !2679
  %tobool23 = icmp ne i32 %call22, 0, !dbg !2679
  br i1 %tobool23, label %if.then.24, label %if.else, !dbg !2664

if.then.24:                                       ; preds = %cond.false.20, %cond.true.17, %cond.true.12
  %10 = load double, double* %x, align 8, !dbg !2680, !tbaa !1223
  %call25 = call double @copysign(double 0.000000e+00, double %10) #2, !dbg !2681
  %11 = load double, double* %x, align 8, !dbg !2682, !tbaa !1223
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %call25, double %11), !dbg !2683
  store %struct._object* %call26, %struct._object** %retval, !dbg !2684
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2684

if.else:                                          ; preds = %cond.false.20, %cond.true.17, %cond.true.12
  br i1 false, label %cond.true.27, label %cond.false.31, !dbg !2685

cond.true.27:                                     ; preds = %if.else
  %12 = load double, double* %x, align 8, !dbg !2686, !tbaa !1223
  %conv28 = fptrunc double %12 to float, !dbg !2686
  %call29 = call i32 @__isnanf(float %conv28) #2, !dbg !2689
  %tobool30 = icmp ne i32 %call29, 0, !dbg !2689
  br i1 %tobool30, label %if.then.39, label %if.end.41, !dbg !2690

cond.false.31:                                    ; preds = %if.else
  br i1 true, label %cond.true.32, label %cond.false.35, !dbg !2691

cond.true.32:                                     ; preds = %cond.false.31
  %13 = load double, double* %x, align 8, !dbg !2693, !tbaa !1223
  %call33 = call i32 @__isnan(double %13) #2, !dbg !2695
  %tobool34 = icmp ne i32 %call33, 0, !dbg !2695
  br i1 %tobool34, label %if.then.39, label %if.end.41, !dbg !2696

cond.false.35:                                    ; preds = %cond.false.31
  %14 = load double, double* %x, align 8, !dbg !2697, !tbaa !1223
  %conv36 = fpext double %14 to x86_fp80, !dbg !2697
  %call37 = call i32 @__isnanl(x86_fp80 %conv36) #2, !dbg !2699
  %tobool38 = icmp ne i32 %call37, 0, !dbg !2699
  br i1 %tobool38, label %if.then.39, label %if.end.41, !dbg !2685

if.then.39:                                       ; preds = %cond.false.35, %cond.true.32, %cond.true.27
  %15 = load double, double* %x, align 8, !dbg !2700, !tbaa !1223
  %16 = load double, double* %x, align 8, !dbg !2701, !tbaa !1223
  %call40 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %15, double %16), !dbg !2702
  store %struct._object* %call40, %struct._object** %retval, !dbg !2703
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2703

if.end.41:                                        ; preds = %cond.false.35, %cond.true.32, %cond.true.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43, !dbg !2704

if.end.43:                                        ; preds = %if.end.42, %cond.false.7, %cond.true.4, %cond.true
  %call44 = call i32* @__errno_location() #2, !dbg !2705
  store i32 0, i32* %call44, align 4, !dbg !2706, !tbaa !1599
  %17 = load double, double* %x, align 8, !dbg !2707, !tbaa !1223
  %call45 = call double @modf(double %17, double* %y) #1, !dbg !2708
  store double %call45, double* %x, align 8, !dbg !2709, !tbaa !1223
  %18 = load double, double* %x, align 8, !dbg !2710, !tbaa !1223
  %19 = load double, double* %y, align 8, !dbg !2711, !tbaa !1223
  %call46 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), double %18, double %19), !dbg !2712
  store %struct._object* %call46, %struct._object** %retval, !dbg !2713
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2713

cleanup:                                          ; preds = %if.end.43, %if.then.39, %if.then.24, %if.then
  %20 = bitcast double* %x to i8*, !dbg !2714
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2714
  %21 = bitcast double* %y to i8*, !dbg !2714
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2714
  %22 = load %struct._object*, %struct._object** %retval, !dbg !2714
  ret %struct._object* %22, !dbg !2714
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !828, metadata !1087), !dbg !2715
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !829, metadata !1087), !dbg !2716
  %0 = bitcast %struct._object** %ox to i8*, !dbg !2717
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct._object** %ox, metadata !830, metadata !1087), !dbg !2718
  %1 = bitcast %struct._object** %oy to i8*, !dbg !2717
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2717
  call void @llvm.dbg.declare(metadata %struct._object** %oy, metadata !831, metadata !1087), !dbg !2719
  %2 = bitcast double* %r to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2720
  call void @llvm.dbg.declare(metadata double* %r, metadata !832, metadata !1087), !dbg !2721
  %3 = bitcast double* %x to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2720
  call void @llvm.dbg.declare(metadata double* %x, metadata !833, metadata !1087), !dbg !2722
  %4 = bitcast double* %y to i8*, !dbg !2720
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2720
  call void @llvm.dbg.declare(metadata double* %y, metadata !834, metadata !1087), !dbg !2723
  %5 = bitcast i32* %odd_y to i8*, !dbg !2724
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2724
  call void @llvm.dbg.declare(metadata i32* %odd_y, metadata !835, metadata !1087), !dbg !2725
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2726, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i64 2, i64 2, %struct._object** %ox, %struct._object** %oy), !dbg !2728
  %tobool = icmp ne i32 %call, 0, !dbg !2728
  br i1 %tobool, label %if.end, label %if.then, !dbg !2729

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2730
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2730

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %ox, align 8, !dbg !2731, !tbaa !1091
  %call1 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !2732
  store double %call1, double* %x, align 8, !dbg !2733, !tbaa !1223
  %8 = load %struct._object*, %struct._object** %oy, align 8, !dbg !2734, !tbaa !1091
  %call2 = call double @PyFloat_AsDouble(%struct._object* %8), !dbg !2735
  store double %call2, double* %y, align 8, !dbg !2736, !tbaa !1223
  %9 = load double, double* %x, align 8, !dbg !2737, !tbaa !1223
  %cmp = fcmp oeq double %9, -1.000000e+00, !dbg !2739
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !2740

lor.lhs.false:                                    ; preds = %if.end
  %10 = load double, double* %y, align 8, !dbg !2741, !tbaa !1223
  %cmp3 = fcmp oeq double %10, -1.000000e+00, !dbg !2743
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !2744

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !2745
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !2745
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !2748

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !2749
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2749

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  store double 0.000000e+00, double* %r, align 8, !dbg !2750, !tbaa !1223
  br i1 false, label %cond.true, label %cond.false, !dbg !2751

cond.true:                                        ; preds = %if.end.7
  %11 = load double, double* %x, align 8, !dbg !2753, !tbaa !1223
  %conv = fptrunc double %11 to float, !dbg !2753
  %call8 = call i32 @__finitef(float %conv) #2, !dbg !2755
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2755
  br i1 %tobool9, label %lor.lhs.false.17, label %if.then.30, !dbg !2756

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.10, label %cond.false.13, !dbg !2757

cond.true.10:                                     ; preds = %cond.false
  %12 = load double, double* %x, align 8, !dbg !2759, !tbaa !1223
  %call11 = call i32 @__finite(double %12) #2, !dbg !2761
  %tobool12 = icmp ne i32 %call11, 0, !dbg !2761
  br i1 %tobool12, label %lor.lhs.false.17, label %if.then.30, !dbg !2762

cond.false.13:                                    ; preds = %cond.false
  %13 = load double, double* %x, align 8, !dbg !2763, !tbaa !1223
  %conv14 = fpext double %13 to x86_fp80, !dbg !2763
  %call15 = call i32 @__finitel(x86_fp80 %conv14) #2, !dbg !2765
  %tobool16 = icmp ne i32 %call15, 0, !dbg !2765
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.30, !dbg !2751

lor.lhs.false.17:                                 ; preds = %cond.false.13, %cond.true.10, %cond.true
  br i1 false, label %cond.true.18, label %cond.false.22, !dbg !2766

cond.true.18:                                     ; preds = %lor.lhs.false.17
  %14 = load double, double* %y, align 8, !dbg !2770, !tbaa !1223
  %conv19 = fptrunc double %14 to float, !dbg !2770
  %call20 = call i32 @__finitef(float %conv19) #2, !dbg !2772
  %tobool21 = icmp ne i32 %call20, 0, !dbg !2772
  br i1 %tobool21, label %if.else.167, label %if.then.30, !dbg !2773

cond.false.22:                                    ; preds = %lor.lhs.false.17
  br i1 true, label %cond.true.23, label %cond.false.26, !dbg !2774

cond.true.23:                                     ; preds = %cond.false.22
  %15 = load double, double* %y, align 8, !dbg !2776, !tbaa !1223
  %call24 = call i32 @__finite(double %15) #2, !dbg !2778
  %tobool25 = icmp ne i32 %call24, 0, !dbg !2778
  br i1 %tobool25, label %if.else.167, label %if.then.30, !dbg !2779

cond.false.26:                                    ; preds = %cond.false.22
  %16 = load double, double* %y, align 8, !dbg !2780, !tbaa !1223
  %conv27 = fpext double %16 to x86_fp80, !dbg !2780
  %call28 = call i32 @__finitel(x86_fp80 %conv27) #2, !dbg !2782
  %tobool29 = icmp ne i32 %call28, 0, !dbg !2782
  br i1 %tobool29, label %if.else.167, label %if.then.30, !dbg !2783

if.then.30:                                       ; preds = %cond.false.26, %cond.true.23, %cond.true.18, %cond.false.13, %cond.true.10, %cond.true
  %call31 = call i32* @__errno_location() #2, !dbg !2784
  store i32 0, i32* %call31, align 4, !dbg !2786, !tbaa !1599
  br i1 false, label %cond.true.32, label %cond.false.36, !dbg !2787

cond.true.32:                                     ; preds = %if.then.30
  %17 = load double, double* %x, align 8, !dbg !2788, !tbaa !1223
  %conv33 = fptrunc double %17 to float, !dbg !2788
  %call34 = call i32 @__isnanf(float %conv33) #2, !dbg !2791
  %tobool35 = icmp ne i32 %call34, 0, !dbg !2791
  br i1 %tobool35, label %if.then.44, label %if.else, !dbg !2792

cond.false.36:                                    ; preds = %if.then.30
  br i1 true, label %cond.true.37, label %cond.false.40, !dbg !2793

cond.true.37:                                     ; preds = %cond.false.36
  %18 = load double, double* %x, align 8, !dbg !2795, !tbaa !1223
  %call38 = call i32 @__isnan(double %18) #2, !dbg !2797
  %tobool39 = icmp ne i32 %call38, 0, !dbg !2797
  br i1 %tobool39, label %if.then.44, label %if.else, !dbg !2798

cond.false.40:                                    ; preds = %cond.false.36
  %19 = load double, double* %x, align 8, !dbg !2799, !tbaa !1223
  %conv41 = fpext double %19 to x86_fp80, !dbg !2799
  %call42 = call i32 @__isnanl(x86_fp80 %conv41) #2, !dbg !2801
  %tobool43 = icmp ne i32 %call42, 0, !dbg !2801
  br i1 %tobool43, label %if.then.44, label %if.else, !dbg !2787

if.then.44:                                       ; preds = %cond.false.40, %cond.true.37, %cond.true.32
  %20 = load double, double* %y, align 8, !dbg !2802, !tbaa !1223
  %cmp45 = fcmp oeq double %20, 0.000000e+00, !dbg !2803
  br i1 %cmp45, label %cond.true.47, label %cond.false.48, !dbg !2802

cond.true.47:                                     ; preds = %if.then.44
  br label %cond.end, !dbg !2804

cond.false.48:                                    ; preds = %if.then.44
  %21 = load double, double* %x, align 8, !dbg !2805, !tbaa !1223
  br label %cond.end, !dbg !2802

cond.end:                                         ; preds = %cond.false.48, %cond.true.47
  %cond = phi double [ 1.000000e+00, %cond.true.47 ], [ %21, %cond.false.48 ], !dbg !2802
  store double %cond, double* %r, align 8, !dbg !2807, !tbaa !1223
  br label %if.end.166, !dbg !2809

if.else:                                          ; preds = %cond.false.40, %cond.true.37, %cond.true.32
  br i1 false, label %cond.true.49, label %cond.false.53, !dbg !2810

cond.true.49:                                     ; preds = %if.else
  %22 = load double, double* %y, align 8, !dbg !2811, !tbaa !1223
  %conv50 = fptrunc double %22 to float, !dbg !2811
  %call51 = call i32 @__isnanf(float %conv50) #2, !dbg !2814
  %tobool52 = icmp ne i32 %call51, 0, !dbg !2814
  br i1 %tobool52, label %if.then.61, label %if.else.68, !dbg !2815

cond.false.53:                                    ; preds = %if.else
  br i1 true, label %cond.true.54, label %cond.false.57, !dbg !2816

cond.true.54:                                     ; preds = %cond.false.53
  %23 = load double, double* %y, align 8, !dbg !2817, !tbaa !1223
  %call55 = call i32 @__isnan(double %23) #2, !dbg !2819
  %tobool56 = icmp ne i32 %call55, 0, !dbg !2819
  br i1 %tobool56, label %if.then.61, label %if.else.68, !dbg !2820

cond.false.57:                                    ; preds = %cond.false.53
  %24 = load double, double* %y, align 8, !dbg !2821, !tbaa !1223
  %conv58 = fpext double %24 to x86_fp80, !dbg !2821
  %call59 = call i32 @__isnanl(x86_fp80 %conv58) #2, !dbg !2823
  %tobool60 = icmp ne i32 %call59, 0, !dbg !2823
  br i1 %tobool60, label %if.then.61, label %if.else.68, !dbg !2810

if.then.61:                                       ; preds = %cond.false.57, %cond.true.54, %cond.true.49
  %25 = load double, double* %x, align 8, !dbg !2824, !tbaa !1223
  %cmp62 = fcmp oeq double %25, 1.000000e+00, !dbg !2825
  br i1 %cmp62, label %cond.true.64, label %cond.false.65, !dbg !2824

cond.true.64:                                     ; preds = %if.then.61
  br label %cond.end.66, !dbg !2826

cond.false.65:                                    ; preds = %if.then.61
  %26 = load double, double* %y, align 8, !dbg !2827, !tbaa !1223
  br label %cond.end.66, !dbg !2824

cond.end.66:                                      ; preds = %cond.false.65, %cond.true.64
  %cond67 = phi double [ 1.000000e+00, %cond.true.64 ], [ %26, %cond.false.65 ], !dbg !2824
  store double %cond67, double* %r, align 8, !dbg !2829, !tbaa !1223
  br label %if.end.165, !dbg !2831

if.else.68:                                       ; preds = %cond.false.57, %cond.true.54, %cond.true.49
  br i1 false, label %cond.true.69, label %cond.false.73, !dbg !2832

cond.true.69:                                     ; preds = %if.else.68
  %27 = load double, double* %x, align 8, !dbg !2833, !tbaa !1223
  %conv70 = fptrunc double %27 to float, !dbg !2833
  %call71 = call i32 @__isinff(float %conv70) #2, !dbg !2836
  %tobool72 = icmp ne i32 %call71, 0, !dbg !2836
  br i1 %tobool72, label %if.then.81, label %if.else.120, !dbg !2837

cond.false.73:                                    ; preds = %if.else.68
  br i1 true, label %cond.true.74, label %cond.false.77, !dbg !2838

cond.true.74:                                     ; preds = %cond.false.73
  %28 = load double, double* %x, align 8, !dbg !2839, !tbaa !1223
  %call75 = call i32 @__isinf(double %28) #2, !dbg !2841
  %tobool76 = icmp ne i32 %call75, 0, !dbg !2841
  br i1 %tobool76, label %if.then.81, label %if.else.120, !dbg !2842

cond.false.77:                                    ; preds = %cond.false.73
  %29 = load double, double* %x, align 8, !dbg !2843, !tbaa !1223
  %conv78 = fpext double %29 to x86_fp80, !dbg !2843
  %call79 = call i32 @__isinfl(x86_fp80 %conv78) #2, !dbg !2845
  %tobool80 = icmp ne i32 %call79, 0, !dbg !2845
  br i1 %tobool80, label %if.then.81, label %if.else.120, !dbg !2832

if.then.81:                                       ; preds = %cond.false.77, %cond.true.74, %cond.true.69
  br i1 false, label %cond.true.82, label %cond.false.86, !dbg !2846

cond.true.82:                                     ; preds = %if.then.81
  %30 = load double, double* %y, align 8, !dbg !2848, !tbaa !1223
  %conv83 = fptrunc double %30 to float, !dbg !2848
  %call84 = call i32 @__finitef(float %conv83) #2, !dbg !2850
  %tobool85 = icmp ne i32 %call84, 0, !dbg !2850
  br i1 %tobool85, label %land.rhs, label %land.end, !dbg !2851

cond.false.86:                                    ; preds = %if.then.81
  br i1 true, label %cond.true.87, label %cond.false.90, !dbg !2852

cond.true.87:                                     ; preds = %cond.false.86
  %31 = load double, double* %y, align 8, !dbg !2854, !tbaa !1223
  %call88 = call i32 @__finite(double %31) #2, !dbg !2856
  %tobool89 = icmp ne i32 %call88, 0, !dbg !2856
  br i1 %tobool89, label %land.rhs, label %land.end, !dbg !2857

cond.false.90:                                    ; preds = %cond.false.86
  %32 = load double, double* %y, align 8, !dbg !2858, !tbaa !1223
  %conv91 = fpext double %32 to x86_fp80, !dbg !2858
  %call92 = call i32 @__finitel(x86_fp80 %conv91) #2, !dbg !2860
  %tobool93 = icmp ne i32 %call92, 0, !dbg !2860
  br i1 %tobool93, label %land.rhs, label %land.end, !dbg !2846

land.rhs:                                         ; preds = %cond.false.90, %cond.true.87, %cond.true.82
  %33 = load double, double* %y, align 8, !dbg !2861, !tbaa !1223
  %call94 = call double @fabs(double %33) #2, !dbg !2865
  %call95 = call double @fmod(double %call94, double 2.000000e+00) #1, !dbg !2866
  %cmp96 = fcmp oeq double %call95, 1.000000e+00, !dbg !2867
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false.90, %cond.true.87, %cond.true.82
  %34 = phi i1 [ false, %cond.false.90 ], [ false, %cond.true.87 ], [ false, %cond.true.82 ], [ %cmp96, %land.rhs ]
  %land.ext = zext i1 %34 to i32, !dbg !2868
  store i32 %land.ext, i32* %odd_y, align 4, !dbg !2872, !tbaa !1599
  %35 = load double, double* %y, align 8, !dbg !2873, !tbaa !1223
  %cmp98 = fcmp ogt double %35, 0.000000e+00, !dbg !2875
  br i1 %cmp98, label %if.then.100, label %if.else.107, !dbg !2876

if.then.100:                                      ; preds = %land.end
  %36 = load i32, i32* %odd_y, align 4, !dbg !2877, !tbaa !1599
  %tobool101 = icmp ne i32 %36, 0, !dbg !2877
  br i1 %tobool101, label %cond.true.102, label %cond.false.103, !dbg !2877

cond.true.102:                                    ; preds = %if.then.100
  %37 = load double, double* %x, align 8, !dbg !2878, !tbaa !1223
  br label %cond.end.105, !dbg !2877

cond.false.103:                                   ; preds = %if.then.100
  %38 = load double, double* %x, align 8, !dbg !2880, !tbaa !1223
  %call104 = call double @fabs(double %38) #2, !dbg !2882
  br label %cond.end.105, !dbg !2877

cond.end.105:                                     ; preds = %cond.false.103, %cond.true.102
  %cond106 = phi double [ %37, %cond.true.102 ], [ %call104, %cond.false.103 ], !dbg !2877
  store double %cond106, double* %r, align 8, !dbg !2883, !tbaa !1223
  br label %if.end.119, !dbg !2886

if.else.107:                                      ; preds = %land.end
  %39 = load double, double* %y, align 8, !dbg !2887, !tbaa !1223
  %cmp108 = fcmp oeq double %39, 0.000000e+00, !dbg !2889
  br i1 %cmp108, label %if.then.110, label %if.else.111, !dbg !2890

if.then.110:                                      ; preds = %if.else.107
  store double 1.000000e+00, double* %r, align 8, !dbg !2891, !tbaa !1223
  br label %if.end.118, !dbg !2892

if.else.111:                                      ; preds = %if.else.107
  %40 = load i32, i32* %odd_y, align 4, !dbg !2893, !tbaa !1599
  %tobool112 = icmp ne i32 %40, 0, !dbg !2893
  br i1 %tobool112, label %cond.true.113, label %cond.false.115, !dbg !2893

cond.true.113:                                    ; preds = %if.else.111
  %41 = load double, double* %x, align 8, !dbg !2894, !tbaa !1223
  %call114 = call double @copysign(double 0.000000e+00, double %41) #2, !dbg !2896
  br label %cond.end.116, !dbg !2893

cond.false.115:                                   ; preds = %if.else.111
  br label %cond.end.116, !dbg !2897

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.113
  %cond117 = phi double [ %call114, %cond.true.113 ], [ 0.000000e+00, %cond.false.115 ], !dbg !2893
  store double %cond117, double* %r, align 8, !dbg !2899, !tbaa !1223
  br label %if.end.118

if.end.118:                                       ; preds = %cond.end.116, %if.then.110
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end.105
  br label %if.end.164, !dbg !2902

if.else.120:                                      ; preds = %cond.false.77, %cond.true.74, %cond.true.69
  br i1 false, label %cond.true.121, label %cond.false.125, !dbg !2903

cond.true.121:                                    ; preds = %if.else.120
  %42 = load double, double* %y, align 8, !dbg !2904, !tbaa !1223
  %conv122 = fptrunc double %42 to float, !dbg !2904
  %call123 = call i32 @__isinff(float %conv122) #2, !dbg !2907
  %tobool124 = icmp ne i32 %call123, 0, !dbg !2907
  br i1 %tobool124, label %if.then.133, label %if.end.163, !dbg !2908

cond.false.125:                                   ; preds = %if.else.120
  br i1 true, label %cond.true.126, label %cond.false.129, !dbg !2909

cond.true.126:                                    ; preds = %cond.false.125
  %43 = load double, double* %y, align 8, !dbg !2911, !tbaa !1223
  %call127 = call i32 @__isinf(double %43) #2, !dbg !2913
  %tobool128 = icmp ne i32 %call127, 0, !dbg !2913
  br i1 %tobool128, label %if.then.133, label %if.end.163, !dbg !2914

cond.false.129:                                   ; preds = %cond.false.125
  %44 = load double, double* %y, align 8, !dbg !2915, !tbaa !1223
  %conv130 = fpext double %44 to x86_fp80, !dbg !2915
  %call131 = call i32 @__isinfl(x86_fp80 %conv130) #2, !dbg !2917
  %tobool132 = icmp ne i32 %call131, 0, !dbg !2917
  br i1 %tobool132, label %if.then.133, label %if.end.163, !dbg !2903

if.then.133:                                      ; preds = %cond.false.129, %cond.true.126, %cond.true.121
  %45 = load double, double* %x, align 8, !dbg !2918, !tbaa !1223
  %call134 = call double @fabs(double %45) #2, !dbg !2921
  %cmp135 = fcmp oeq double %call134, 1.000000e+00, !dbg !2922
  br i1 %cmp135, label %if.then.137, label %if.else.138, !dbg !2923

if.then.137:                                      ; preds = %if.then.133
  store double 1.000000e+00, double* %r, align 8, !dbg !2924, !tbaa !1223
  br label %if.end.162, !dbg !2925

if.else.138:                                      ; preds = %if.then.133
  %46 = load double, double* %y, align 8, !dbg !2926, !tbaa !1223
  %cmp139 = fcmp ogt double %46, 0.000000e+00, !dbg !2928
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.146, !dbg !2929

land.lhs.true.141:                                ; preds = %if.else.138
  %47 = load double, double* %x, align 8, !dbg !2930, !tbaa !1223
  %call142 = call double @fabs(double %47) #2, !dbg !2932
  %cmp143 = fcmp ogt double %call142, 1.000000e+00, !dbg !2933
  br i1 %cmp143, label %if.then.145, label %if.else.146, !dbg !2934

if.then.145:                                      ; preds = %land.lhs.true.141
  %48 = load double, double* %y, align 8, !dbg !2935, !tbaa !1223
  store double %48, double* %r, align 8, !dbg !2936, !tbaa !1223
  br label %if.end.161, !dbg !2937

if.else.146:                                      ; preds = %land.lhs.true.141, %if.else.138
  %49 = load double, double* %y, align 8, !dbg !2938, !tbaa !1223
  %cmp147 = fcmp olt double %49, 0.000000e+00, !dbg !2940
  br i1 %cmp147, label %land.lhs.true.149, label %if.else.159, !dbg !2941

land.lhs.true.149:                                ; preds = %if.else.146
  %50 = load double, double* %x, align 8, !dbg !2942, !tbaa !1223
  %call150 = call double @fabs(double %50) #2, !dbg !2944
  %cmp151 = fcmp olt double %call150, 1.000000e+00, !dbg !2945
  br i1 %cmp151, label %if.then.153, label %if.else.159, !dbg !2946

if.then.153:                                      ; preds = %land.lhs.true.149
  %51 = load double, double* %y, align 8, !dbg !2947, !tbaa !1223
  %sub = fsub double -0.000000e+00, %51, !dbg !2949
  store double %sub, double* %r, align 8, !dbg !2950, !tbaa !1223
  %52 = load double, double* %x, align 8, !dbg !2951, !tbaa !1223
  %cmp154 = fcmp oeq double %52, 0.000000e+00, !dbg !2953
  br i1 %cmp154, label %if.then.156, label %if.end.158, !dbg !2954

if.then.156:                                      ; preds = %if.then.153
  %call157 = call i32* @__errno_location() #2, !dbg !2955
  store i32 33, i32* %call157, align 4, !dbg !2956, !tbaa !1599
  br label %if.end.158, !dbg !2957

if.end.158:                                       ; preds = %if.then.156, %if.then.153
  br label %if.end.160, !dbg !2958

if.else.159:                                      ; preds = %land.lhs.true.149, %if.else.146
  store double 0.000000e+00, double* %r, align 8, !dbg !2959, !tbaa !1223
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.159, %if.end.158
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.145
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.137
  br label %if.end.163, !dbg !2960

if.end.163:                                       ; preds = %if.end.162, %cond.false.129, %cond.true.126, %cond.true.121
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.119
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %cond.end.66
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %cond.end
  br label %if.end.221, !dbg !2961

if.else.167:                                      ; preds = %cond.false.26, %cond.true.23, %cond.true.18
  %call168 = call i32* @__errno_location() #2, !dbg !2962
  store i32 0, i32* %call168, align 4, !dbg !2964, !tbaa !1599
  %53 = load double, double* %x, align 8, !dbg !2965, !tbaa !1223
  %54 = load double, double* %y, align 8, !dbg !2966, !tbaa !1223
  %call169 = call double @pow(double %53, double %54) #1, !dbg !2967
  store double %call169, double* %r, align 8, !dbg !2968, !tbaa !1223
  br i1 false, label %cond.true.170, label %cond.false.174, !dbg !2969

cond.true.170:                                    ; preds = %if.else.167
  %55 = load double, double* %r, align 8, !dbg !2970, !tbaa !1223
  %conv171 = fptrunc double %55 to float, !dbg !2970
  %call172 = call i32 @__finitef(float %conv171) #2, !dbg !2973
  %tobool173 = icmp ne i32 %call172, 0, !dbg !2973
  br i1 %tobool173, label %if.end.220, label %if.then.182, !dbg !2974

cond.false.174:                                   ; preds = %if.else.167
  br i1 true, label %cond.true.175, label %cond.false.178, !dbg !2975

cond.true.175:                                    ; preds = %cond.false.174
  %56 = load double, double* %r, align 8, !dbg !2977, !tbaa !1223
  %call176 = call i32 @__finite(double %56) #2, !dbg !2979
  %tobool177 = icmp ne i32 %call176, 0, !dbg !2979
  br i1 %tobool177, label %if.end.220, label %if.then.182, !dbg !2980

cond.false.178:                                   ; preds = %cond.false.174
  %57 = load double, double* %r, align 8, !dbg !2981, !tbaa !1223
  %conv179 = fpext double %57 to x86_fp80, !dbg !2981
  %call180 = call i32 @__finitel(x86_fp80 %conv179) #2, !dbg !2983
  %tobool181 = icmp ne i32 %call180, 0, !dbg !2983
  br i1 %tobool181, label %if.end.220, label %if.then.182, !dbg !2969

if.then.182:                                      ; preds = %cond.false.178, %cond.true.175, %cond.true.170
  br i1 false, label %cond.true.183, label %cond.false.187, !dbg !2984

cond.true.183:                                    ; preds = %if.then.182
  %58 = load double, double* %r, align 8, !dbg !2986, !tbaa !1223
  %conv184 = fptrunc double %58 to float, !dbg !2986
  %call185 = call i32 @__isnanf(float %conv184) #2, !dbg !2989
  %tobool186 = icmp ne i32 %call185, 0, !dbg !2989
  br i1 %tobool186, label %if.then.195, label %if.else.197, !dbg !2990

cond.false.187:                                   ; preds = %if.then.182
  br i1 true, label %cond.true.188, label %cond.false.191, !dbg !2991

cond.true.188:                                    ; preds = %cond.false.187
  %59 = load double, double* %r, align 8, !dbg !2993, !tbaa !1223
  %call189 = call i32 @__isnan(double %59) #2, !dbg !2995
  %tobool190 = icmp ne i32 %call189, 0, !dbg !2995
  br i1 %tobool190, label %if.then.195, label %if.else.197, !dbg !2996

cond.false.191:                                   ; preds = %cond.false.187
  %60 = load double, double* %r, align 8, !dbg !2997, !tbaa !1223
  %conv192 = fpext double %60 to x86_fp80, !dbg !2997
  %call193 = call i32 @__isnanl(x86_fp80 %conv192) #2, !dbg !2999
  %tobool194 = icmp ne i32 %call193, 0, !dbg !2999
  br i1 %tobool194, label %if.then.195, label %if.else.197, !dbg !2984

if.then.195:                                      ; preds = %cond.false.191, %cond.true.188, %cond.true.183
  %call196 = call i32* @__errno_location() #2, !dbg !3000
  store i32 33, i32* %call196, align 4, !dbg !3002, !tbaa !1599
  br label %if.end.219, !dbg !3003

if.else.197:                                      ; preds = %cond.false.191, %cond.true.188, %cond.true.183
  br i1 false, label %cond.true.198, label %cond.false.202, !dbg !3004

cond.true.198:                                    ; preds = %if.else.197
  %61 = load double, double* %r, align 8, !dbg !3005, !tbaa !1223
  %conv199 = fptrunc double %61 to float, !dbg !3005
  %call200 = call i32 @__isinff(float %conv199) #2, !dbg !3008
  %tobool201 = icmp ne i32 %call200, 0, !dbg !3008
  br i1 %tobool201, label %if.then.210, label %if.end.218, !dbg !3009

cond.false.202:                                   ; preds = %if.else.197
  br i1 true, label %cond.true.203, label %cond.false.206, !dbg !3010

cond.true.203:                                    ; preds = %cond.false.202
  %62 = load double, double* %r, align 8, !dbg !3012, !tbaa !1223
  %call204 = call i32 @__isinf(double %62) #2, !dbg !3014
  %tobool205 = icmp ne i32 %call204, 0, !dbg !3014
  br i1 %tobool205, label %if.then.210, label %if.end.218, !dbg !3015

cond.false.206:                                   ; preds = %cond.false.202
  %63 = load double, double* %r, align 8, !dbg !3016, !tbaa !1223
  %conv207 = fpext double %63 to x86_fp80, !dbg !3016
  %call208 = call i32 @__isinfl(x86_fp80 %conv207) #2, !dbg !3018
  %tobool209 = icmp ne i32 %call208, 0, !dbg !3018
  br i1 %tobool209, label %if.then.210, label %if.end.218, !dbg !3004

if.then.210:                                      ; preds = %cond.false.206, %cond.true.203, %cond.true.198
  %64 = load double, double* %x, align 8, !dbg !3019, !tbaa !1223
  %cmp211 = fcmp oeq double %64, 0.000000e+00, !dbg !3022
  br i1 %cmp211, label %if.then.213, label %if.else.215, !dbg !3023

if.then.213:                                      ; preds = %if.then.210
  %call214 = call i32* @__errno_location() #2, !dbg !3024
  store i32 33, i32* %call214, align 4, !dbg !3025, !tbaa !1599
  br label %if.end.217, !dbg !3026

if.else.215:                                      ; preds = %if.then.210
  %call216 = call i32* @__errno_location() #2, !dbg !3027
  store i32 34, i32* %call216, align 4, !dbg !3028, !tbaa !1599
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.215, %if.then.213
  br label %if.end.218, !dbg !3029

if.end.218:                                       ; preds = %if.end.217, %cond.false.206, %cond.true.203, %cond.true.198
  br label %if.end.219

if.end.219:                                       ; preds = %if.end.218, %if.then.195
  br label %if.end.220, !dbg !3030

if.end.220:                                       ; preds = %if.end.219, %cond.false.178, %cond.true.175, %cond.true.170
  br label %if.end.221

if.end.221:                                       ; preds = %if.end.220, %if.end.166
  %call222 = call i32* @__errno_location() #2, !dbg !3031
  %65 = load i32, i32* %call222, align 4, !dbg !3033, !tbaa !1599
  %tobool223 = icmp ne i32 %65, 0, !dbg !3034
  br i1 %tobool223, label %land.lhs.true.224, label %if.else.228, !dbg !3035

land.lhs.true.224:                                ; preds = %if.end.221
  %66 = load double, double* %r, align 8, !dbg !3036, !tbaa !1223
  %call225 = call i32 @is_error(double %66), !dbg !3038
  %tobool226 = icmp ne i32 %call225, 0, !dbg !3038
  br i1 %tobool226, label %if.then.227, label %if.else.228, !dbg !3039

if.then.227:                                      ; preds = %land.lhs.true.224
  store %struct._object* null, %struct._object** %retval, !dbg !3040
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3040

if.else.228:                                      ; preds = %land.lhs.true.224, %if.end.221
  %67 = load double, double* %r, align 8, !dbg !3041, !tbaa !1223
  %call229 = call %struct._object* @PyFloat_FromDouble(double %67), !dbg !3042
  store %struct._object* %call229, %struct._object** %retval, !dbg !3043
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3043

cleanup:                                          ; preds = %if.else.228, %if.then.227, %if.then.6, %if.then
  %68 = bitcast i32* %odd_y to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 4, i8* %68) #1, !dbg !3044
  %69 = bitcast double* %y to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !3044
  %70 = bitcast double* %x to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !3044
  %71 = bitcast double* %r to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !3044
  %72 = bitcast %struct._object** %oy to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !3044
  %73 = bitcast %struct._object** %ox to i8*, !dbg !3044
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !3044
  %74 = load %struct._object*, %struct._object** %retval, !dbg !3044
  ret %struct._object* %74, !dbg !3044
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_radians(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !838, metadata !1087), !dbg !3045
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !839, metadata !1087), !dbg !3046
  %0 = bitcast double* %x to i8*, !dbg !3047
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3047
  call void @llvm.dbg.declare(metadata double* %x, metadata !840, metadata !1087), !dbg !3048
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3049, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !3050
  store double %call, double* %x, align 8, !dbg !3048, !tbaa !1223
  %2 = load double, double* %x, align 8, !dbg !3051, !tbaa !1223
  %cmp = fcmp oeq double %2, -1.000000e+00, !dbg !3053
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3054

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !3055
  %tobool = icmp ne %struct._object* %call1, null, !dbg !3055
  br i1 %tobool, label %if.then, label %if.end, !dbg !3057

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3058
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3058

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load double, double* %x, align 8, !dbg !3059, !tbaa !1223
  %mul = fmul double %3, 0x3F91DF46A2529D39, !dbg !3060
  %call2 = call %struct._object* @PyFloat_FromDouble(double %mul), !dbg !3061
  store %struct._object* %call2, %struct._object** %retval, !dbg !3062
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3062

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast double* %x to i8*, !dbg !3063
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !3063
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3063
  ret %struct._object* %5, !dbg !3063
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sin(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !843, metadata !1087), !dbg !3064
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !844, metadata !1087), !dbg !3065
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3066, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sin, i32 0), !dbg !3067
  ret %struct._object* %call, !dbg !3068
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sinh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !847, metadata !1087), !dbg !3069
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !848, metadata !1087), !dbg !3070
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3071, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sinh, i32 1), !dbg !3072
  ret %struct._object* %call, !dbg !3073
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_sqrt(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !851, metadata !1087), !dbg !3074
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !852, metadata !1087), !dbg !3075
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3076, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @sqrt, i32 0), !dbg !3077
  ret %struct._object* %call, !dbg !3078
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_tan(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !855, metadata !1087), !dbg !3079
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !856, metadata !1087), !dbg !3080
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3081, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @tan, i32 0), !dbg !3082
  ret %struct._object* %call, !dbg !3083
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_tanh(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !859, metadata !1087), !dbg !3084
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !860, metadata !1087), !dbg !3085
  %0 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3086, !tbaa !1091
  %call = call %struct._object* @math_1(%struct._object* %0, double (double)* @tanh, i32 0), !dbg !3087
  ret %struct._object* %call, !dbg !3088
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_trunc(%struct._object* %self, %struct._object* %number) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %number.addr = alloca %struct._object*, align 8
  %trunc = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !863, metadata !1087), !dbg !3089
  store %struct._object* %number, %struct._object** %number.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %number.addr, metadata !864, metadata !1087), !dbg !3090
  %0 = bitcast %struct._object** %trunc to i8*, !dbg !3091
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3091
  call void @llvm.dbg.declare(metadata %struct._object** %trunc, metadata !865, metadata !1087), !dbg !3092
  %1 = bitcast %struct._object** %result to i8*, !dbg !3091
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3091
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !866, metadata !1087), !dbg !3093
  %2 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !3094, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3096
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3096, !tbaa !1186
  %tp_dict = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 31, !dbg !3097
  %4 = load %struct._object*, %struct._object** %tp_dict, align 8, !dbg !3097, !tbaa !3098
  %cmp = icmp eq %struct._object* %4, null, !dbg !3099
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !3100

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !3101, !tbaa !1091
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3104
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3104, !tbaa !1186
  %call = call i32 @PyType_Ready(%struct._typeobject* %6), !dbg !3105
  %cmp2 = icmp slt i32 %call, 0, !dbg !3106
  br i1 %cmp2, label %if.then.3, label %if.end, !dbg !3107

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !3108
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3108

if.end:                                           ; preds = %if.then
  br label %if.end.4, !dbg !3109

if.end.4:                                         ; preds = %if.end, %entry
  %7 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !3110, !tbaa !1091
  %call5 = call %struct._object* @_PyObject_LookupSpecial(%struct._object* %7, %struct._Py_Identifier* @math_trunc.PyId___trunc__), !dbg !3111
  store %struct._object* %call5, %struct._object** %trunc, align 8, !dbg !3112, !tbaa !1091
  %8 = load %struct._object*, %struct._object** %trunc, align 8, !dbg !3113, !tbaa !1091
  %cmp6 = icmp eq %struct._object* %8, null, !dbg !3115
  br i1 %cmp6, label %if.then.7, label %if.end.13, !dbg !3116

if.then.7:                                        ; preds = %if.end.4
  %call8 = call %struct._object* @PyErr_Occurred(), !dbg !3117
  %tobool = icmp ne %struct._object* %call8, null, !dbg !3117
  br i1 %tobool, label %if.end.12, label %if.then.9, !dbg !3120

if.then.9:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3121, !tbaa !1091
  %10 = load %struct._object*, %struct._object** %number.addr, align 8, !dbg !3122, !tbaa !1091
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3123
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !3123, !tbaa !1186
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 1, !dbg !3124
  %12 = load i8*, i8** %tp_name, align 8, !dbg !3124, !tbaa !3125
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.59, i32 0, i32 0), i8* %12), !dbg !3126
  br label %if.end.12, !dbg !3126

if.end.12:                                        ; preds = %if.then.9, %if.then.7
  store %struct._object* null, %struct._object** %retval, !dbg !3127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3127

if.end.13:                                        ; preds = %if.end.4
  %13 = load %struct._object*, %struct._object** %trunc, align 8, !dbg !3128, !tbaa !1091
  %call14 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %13, i8* null), !dbg !3129
  store %struct._object* %call14, %struct._object** %result, align 8, !dbg !3130, !tbaa !1091
  br label %do.body, !dbg !3131

do.body:                                          ; preds = %if.end.13
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3132
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !3132
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !867, metadata !1087), !dbg !3134
  %15 = load %struct._object*, %struct._object** %trunc, align 8, !dbg !3135, !tbaa !1091
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !3134, !tbaa !1091
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3136, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !3138
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !3139, !tbaa !1176
  %dec = add i64 %17, -1, !dbg !3139
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3139, !tbaa !1176
  %cmp15 = icmp ne i64 %dec, 0, !dbg !3140
  br i1 %cmp15, label %if.then.16, label %if.else, !dbg !3141

if.then.16:                                       ; preds = %do.body
  br label %if.end.18, !dbg !3142

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3144, !tbaa !1091
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !3146
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8, !dbg !3146, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !3147
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3147, !tbaa !1188
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3148, !tbaa !1091
  call void %20(%struct._object* %21), !dbg !3149
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3150
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3150
  br label %do.cond, !dbg !3152

do.cond:                                          ; preds = %if.end.18
  br label %do.end, !dbg !3153

do.end:                                           ; preds = %do.cond
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !3155, !tbaa !1091
  store %struct._object* %23, %struct._object** %retval, !dbg !3156
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3156

cleanup:                                          ; preds = %do.end, %if.end.12, %if.then.3
  %24 = bitcast %struct._object** %result to i8*, !dbg !3157
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3157
  %25 = bitcast %struct._object** %trunc to i8*, !dbg !3157
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3157
  %26 = load %struct._object*, %struct._object** %retval, !dbg !3157
  ret %struct._object* %26, !dbg !3157
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1(%struct._object* %arg, double (double)* %func, i32 %can_overflow) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %can_overflow.addr = alloca i32, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !383, metadata !1087), !dbg !3158
  store double (double)* %func, double (double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double)** %func.addr, metadata !384, metadata !1087), !dbg !3159
  store i32 %can_overflow, i32* %can_overflow.addr, align 4, !tbaa !1599
  call void @llvm.dbg.declare(metadata i32* %can_overflow.addr, metadata !385, metadata !1087), !dbg !3160
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3161, !tbaa !1091
  %1 = load double (double)*, double (double)** %func.addr, align 8, !dbg !3162, !tbaa !1091
  %2 = load i32, i32* %can_overflow.addr, align 4, !dbg !3163, !tbaa !1599
  %call = call %struct._object* @math_1_to_whatever(%struct._object* %0, double (double)* %1, %struct._object* (double)* @PyFloat_FromDouble, i32 %2), !dbg !3164
  ret %struct._object* %call, !dbg !3165
}

; Function Attrs: nounwind
declare double @acos(double) #4

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !393, metadata !1087), !dbg !3166
  store double (double)* %func, double (double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double)** %func.addr, metadata !394, metadata !1087), !dbg !3167
  store %struct._object* (double)* %from_double_func, %struct._object* (double)** %from_double_func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object* (double)** %from_double_func.addr, metadata !395, metadata !1087), !dbg !3168
  store i32 %can_overflow, i32* %can_overflow.addr, align 4, !tbaa !1599
  call void @llvm.dbg.declare(metadata i32* %can_overflow.addr, metadata !396, metadata !1087), !dbg !3169
  %0 = bitcast double* %x to i8*, !dbg !3170
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3170
  call void @llvm.dbg.declare(metadata double* %x, metadata !397, metadata !1087), !dbg !3171
  %1 = bitcast double* %r to i8*, !dbg !3170
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3170
  call void @llvm.dbg.declare(metadata double* %r, metadata !398, metadata !1087), !dbg !3172
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3173, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %2), !dbg !3174
  store double %call, double* %x, align 8, !dbg !3175, !tbaa !1223
  %3 = load double, double* %x, align 8, !dbg !3176, !tbaa !1223
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !3178
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3179

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !3180
  %tobool = icmp ne %struct._object* %call1, null, !dbg !3180
  br i1 %tobool, label %if.then, label %if.end, !dbg !3182

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3183
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3183

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32* @__errno_location() #2, !dbg !3184
  store i32 0, i32* %call2, align 4, !dbg !3185, !tbaa !1599
  %4 = load double (double)*, double (double)** %func.addr, align 8, !dbg !3186, !tbaa !1091
  %5 = load double, double* %x, align 8, !dbg !3187, !tbaa !1223
  %call3 = call double %4(double %5), !dbg !3188
  store double %call3, double* %r, align 8, !dbg !3189, !tbaa !1223
  br i1 false, label %cond.true, label %cond.false, !dbg !3190

cond.true:                                        ; preds = %if.end
  %6 = load double, double* %r, align 8, !dbg !3192, !tbaa !1223
  %conv = fptrunc double %6 to float, !dbg !3192
  %call4 = call i32 @__isnanf(float %conv) #2, !dbg !3194
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3194
  br i1 %tobool5, label %land.lhs.true.13, label %if.end.27, !dbg !3195

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.6, label %cond.false.9, !dbg !3196

cond.true.6:                                      ; preds = %cond.false
  %7 = load double, double* %r, align 8, !dbg !3198, !tbaa !1223
  %call7 = call i32 @__isnan(double %7) #2, !dbg !3200
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3200
  br i1 %tobool8, label %land.lhs.true.13, label %if.end.27, !dbg !3201

cond.false.9:                                     ; preds = %cond.false
  %8 = load double, double* %r, align 8, !dbg !3202, !tbaa !1223
  %conv10 = fpext double %8 to x86_fp80, !dbg !3202
  %call11 = call i32 @__isnanl(x86_fp80 %conv10) #2, !dbg !3204
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3204
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.27, !dbg !3190

land.lhs.true.13:                                 ; preds = %cond.false.9, %cond.true.6, %cond.true
  br i1 false, label %cond.true.14, label %cond.false.18, !dbg !3205

cond.true.14:                                     ; preds = %land.lhs.true.13
  %9 = load double, double* %x, align 8, !dbg !3209, !tbaa !1223
  %conv15 = fptrunc double %9 to float, !dbg !3209
  %call16 = call i32 @__isnanf(float %conv15) #2, !dbg !3211
  %tobool17 = icmp ne i32 %call16, 0, !dbg !3211
  br i1 %tobool17, label %if.end.27, label %if.then.26, !dbg !3212

cond.false.18:                                    ; preds = %land.lhs.true.13
  br i1 true, label %cond.true.19, label %cond.false.22, !dbg !3213

cond.true.19:                                     ; preds = %cond.false.18
  %10 = load double, double* %x, align 8, !dbg !3215, !tbaa !1223
  %call20 = call i32 @__isnan(double %10) #2, !dbg !3217
  %tobool21 = icmp ne i32 %call20, 0, !dbg !3217
  br i1 %tobool21, label %if.end.27, label %if.then.26, !dbg !3218

cond.false.22:                                    ; preds = %cond.false.18
  %11 = load double, double* %x, align 8, !dbg !3219, !tbaa !1223
  %conv23 = fpext double %11 to x86_fp80, !dbg !3219
  %call24 = call i32 @__isnanl(x86_fp80 %conv23) #2, !dbg !3221
  %tobool25 = icmp ne i32 %call24, 0, !dbg !3221
  br i1 %tobool25, label %if.end.27, label %if.then.26, !dbg !3222

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true.14
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3223, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0)), !dbg !3225
  store %struct._object* null, %struct._object** %retval, !dbg !3226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3226

if.end.27:                                        ; preds = %cond.false.22, %cond.true.19, %cond.true.14, %cond.false.9, %cond.true.6, %cond.true
  br i1 false, label %cond.true.28, label %cond.false.32, !dbg !3227

cond.true.28:                                     ; preds = %if.end.27
  %13 = load double, double* %r, align 8, !dbg !3229, !tbaa !1223
  %conv29 = fptrunc double %13 to float, !dbg !3229
  %call30 = call i32 @__isinff(float %conv29) #2, !dbg !3231
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3231
  br i1 %tobool31, label %land.lhs.true.40, label %if.end.57, !dbg !3232

cond.false.32:                                    ; preds = %if.end.27
  br i1 true, label %cond.true.33, label %cond.false.36, !dbg !3233

cond.true.33:                                     ; preds = %cond.false.32
  %14 = load double, double* %r, align 8, !dbg !3235, !tbaa !1223
  %call34 = call i32 @__isinf(double %14) #2, !dbg !3237
  %tobool35 = icmp ne i32 %call34, 0, !dbg !3237
  br i1 %tobool35, label %land.lhs.true.40, label %if.end.57, !dbg !3238

cond.false.36:                                    ; preds = %cond.false.32
  %15 = load double, double* %r, align 8, !dbg !3239, !tbaa !1223
  %conv37 = fpext double %15 to x86_fp80, !dbg !3239
  %call38 = call i32 @__isinfl(x86_fp80 %conv37) #2, !dbg !3241
  %tobool39 = icmp ne i32 %call38, 0, !dbg !3241
  br i1 %tobool39, label %land.lhs.true.40, label %if.end.57, !dbg !3227

land.lhs.true.40:                                 ; preds = %cond.false.36, %cond.true.33, %cond.true.28
  br i1 false, label %cond.true.41, label %cond.false.45, !dbg !3242

cond.true.41:                                     ; preds = %land.lhs.true.40
  %16 = load double, double* %x, align 8, !dbg !3243, !tbaa !1223
  %conv42 = fptrunc double %16 to float, !dbg !3243
  %call43 = call i32 @__finitef(float %conv42) #2, !dbg !3245
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3245
  br i1 %tobool44, label %if.then.53, label %if.end.57, !dbg !3246

cond.false.45:                                    ; preds = %land.lhs.true.40
  br i1 true, label %cond.true.46, label %cond.false.49, !dbg !3247

cond.true.46:                                     ; preds = %cond.false.45
  %17 = load double, double* %x, align 8, !dbg !3248, !tbaa !1223
  %call47 = call i32 @__finite(double %17) #2, !dbg !3250
  %tobool48 = icmp ne i32 %call47, 0, !dbg !3250
  br i1 %tobool48, label %if.then.53, label %if.end.57, !dbg !3251

cond.false.49:                                    ; preds = %cond.false.45
  %18 = load double, double* %x, align 8, !dbg !3252, !tbaa !1223
  %conv50 = fpext double %18 to x86_fp80, !dbg !3252
  %call51 = call i32 @__finitel(x86_fp80 %conv50) #2, !dbg !3254
  %tobool52 = icmp ne i32 %call51, 0, !dbg !3254
  br i1 %tobool52, label %if.then.53, label %if.end.57, !dbg !3255

if.then.53:                                       ; preds = %cond.false.49, %cond.true.46, %cond.true.41
  %19 = load i32, i32* %can_overflow.addr, align 4, !dbg !3256, !tbaa !1599
  %tobool54 = icmp ne i32 %19, 0, !dbg !3256
  br i1 %tobool54, label %if.then.55, label %if.else, !dbg !3259

if.then.55:                                       ; preds = %if.then.53
  %20 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3260, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0)), !dbg !3261
  br label %if.end.56, !dbg !3261

if.else:                                          ; preds = %if.then.53
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3262, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0)), !dbg !3263
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.55
  store %struct._object* null, %struct._object** %retval, !dbg !3264
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3264

if.end.57:                                        ; preds = %cond.false.49, %cond.true.46, %cond.true.41, %cond.false.36, %cond.true.33, %cond.true.28
  br i1 false, label %cond.true.58, label %cond.false.62, !dbg !3265

cond.true.58:                                     ; preds = %if.end.57
  %22 = load double, double* %r, align 8, !dbg !3267, !tbaa !1223
  %conv59 = fptrunc double %22 to float, !dbg !3267
  %call60 = call i32 @__finitef(float %conv59) #2, !dbg !3269
  %tobool61 = icmp ne i32 %call60, 0, !dbg !3269
  br i1 %tobool61, label %land.lhs.true.70, label %if.end.77, !dbg !3270

cond.false.62:                                    ; preds = %if.end.57
  br i1 true, label %cond.true.63, label %cond.false.66, !dbg !3271

cond.true.63:                                     ; preds = %cond.false.62
  %23 = load double, double* %r, align 8, !dbg !3273, !tbaa !1223
  %call64 = call i32 @__finite(double %23) #2, !dbg !3275
  %tobool65 = icmp ne i32 %call64, 0, !dbg !3275
  br i1 %tobool65, label %land.lhs.true.70, label %if.end.77, !dbg !3276

cond.false.66:                                    ; preds = %cond.false.62
  %24 = load double, double* %r, align 8, !dbg !3277, !tbaa !1223
  %conv67 = fpext double %24 to x86_fp80, !dbg !3277
  %call68 = call i32 @__finitel(x86_fp80 %conv67) #2, !dbg !3279
  %tobool69 = icmp ne i32 %call68, 0, !dbg !3279
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.77, !dbg !3265

land.lhs.true.70:                                 ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  %call71 = call i32* @__errno_location() #2, !dbg !3280
  %25 = load i32, i32* %call71, align 4, !dbg !3284, !tbaa !1599
  %tobool72 = icmp ne i32 %25, 0, !dbg !3285
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.77, !dbg !3286

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %26 = load double, double* %r, align 8, !dbg !3287, !tbaa !1223
  %call74 = call i32 @is_error(double %26), !dbg !3289
  %tobool75 = icmp ne i32 %call74, 0, !dbg !3289
  br i1 %tobool75, label %if.then.76, label %if.end.77, !dbg !3290

if.then.76:                                       ; preds = %land.lhs.true.73
  store %struct._object* null, %struct._object** %retval, !dbg !3291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3291

if.end.77:                                        ; preds = %land.lhs.true.73, %land.lhs.true.70, %cond.false.66, %cond.true.63, %cond.true.58
  %27 = load %struct._object* (double)*, %struct._object* (double)** %from_double_func.addr, align 8, !dbg !3292, !tbaa !1091
  %28 = load double, double* %r, align 8, !dbg !3293, !tbaa !1223
  %call78 = call %struct._object* %27(double %28), !dbg !3294
  store %struct._object* %call78, %struct._object** %retval, !dbg !3295
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3295

cleanup:                                          ; preds = %if.end.77, %if.then.76, %if.end.56, %if.then.26, %if.then
  %29 = bitcast double* %r to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !3296
  %30 = bitcast double* %x to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !3296
  %31 = load %struct._object*, %struct._object** %retval, !dbg !3296
  ret %struct._object* %31, !dbg !3296
}

declare double @PyFloat_AsDouble(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #5

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #5

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #5

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #5

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #5

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #5

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #5

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #5

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #5

; Function Attrs: nounwind uwtable
define internal i32 @is_error(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %result = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !403, metadata !1087), !dbg !3297
  %0 = bitcast i32* %result to i8*, !dbg !3298
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3298
  call void @llvm.dbg.declare(metadata i32* %result, metadata !404, metadata !1087), !dbg !3299
  store i32 1, i32* %result, align 4, !dbg !3299, !tbaa !1599
  %call = call i32* @__errno_location() #2, !dbg !3300
  %1 = load i32, i32* %call, align 4, !dbg !3302, !tbaa !1599
  %cmp = icmp eq i32 %1, 33, !dbg !3303
  br i1 %cmp, label %if.then, label %if.else, !dbg !3304

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3305, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0)), !dbg !3306
  br label %if.end.11, !dbg !3306

if.else:                                          ; preds = %entry
  %call1 = call i32* @__errno_location() #2, !dbg !3307
  %3 = load i32, i32* %call1, align 4, !dbg !3309, !tbaa !1599
  %cmp2 = icmp eq i32 %3, 34, !dbg !3310
  br i1 %cmp2, label %if.then.3, label %if.else.8, !dbg !3311

if.then.3:                                        ; preds = %if.else
  %4 = load double, double* %x.addr, align 8, !dbg !3312, !tbaa !1223
  %call4 = call double @fabs(double %4) #2, !dbg !3315
  %cmp5 = fcmp olt double %call4, 1.000000e+00, !dbg !3316
  br i1 %cmp5, label %if.then.6, label %if.else.7, !dbg !3317

if.then.6:                                        ; preds = %if.then.3
  store i32 0, i32* %result, align 4, !dbg !3318, !tbaa !1599
  br label %if.end, !dbg !3319

if.else.7:                                        ; preds = %if.then.3
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3320, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0)), !dbg !3321
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  br label %if.end.10, !dbg !3322

if.else.8:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3323, !tbaa !1091
  %call9 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %6), !dbg !3324
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.end
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %7 = load i32, i32* %result, align 4, !dbg !3325, !tbaa !1599
  %8 = bitcast i32* %result to i8*, !dbg !3326
  call void @llvm.lifetime.end(i64 4, i8* %8) #1, !dbg !3326
  ret i32 %7, !dbg !3327
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind
declare double @acosh(double) #4

; Function Attrs: nounwind
declare double @asin(double) #4

; Function Attrs: nounwind
declare double @asinh(double) #4

; Function Attrs: nounwind
declare double @atan(double) #4

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !432, metadata !1087), !dbg !3328
  store double (double, double)* %func, double (double, double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double, double)** %func.addr, metadata !433, metadata !1087), !dbg !3329
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !434, metadata !1087), !dbg !3330
  %0 = bitcast %struct._object** %ox to i8*, !dbg !3331
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3331
  call void @llvm.dbg.declare(metadata %struct._object** %ox, metadata !435, metadata !1087), !dbg !3332
  %1 = bitcast %struct._object** %oy to i8*, !dbg !3331
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3331
  call void @llvm.dbg.declare(metadata %struct._object** %oy, metadata !436, metadata !1087), !dbg !3333
  %2 = bitcast double* %x to i8*, !dbg !3334
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3334
  call void @llvm.dbg.declare(metadata double* %x, metadata !437, metadata !1087), !dbg !3335
  %3 = bitcast double* %y to i8*, !dbg !3334
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3334
  call void @llvm.dbg.declare(metadata double* %y, metadata !438, metadata !1087), !dbg !3336
  %4 = bitcast double* %r to i8*, !dbg !3334
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3334
  call void @llvm.dbg.declare(metadata double* %r, metadata !439, metadata !1087), !dbg !3337
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3338, !tbaa !1091
  %6 = load i8*, i8** %funcname.addr, align 8, !dbg !3340, !tbaa !1091
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* %6, i64 2, i64 2, %struct._object** %ox, %struct._object** %oy), !dbg !3341
  %tobool = icmp ne i32 %call, 0, !dbg !3341
  br i1 %tobool, label %if.end, label %if.then, !dbg !3342

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3343
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3343

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %ox, align 8, !dbg !3344, !tbaa !1091
  %call1 = call double @PyFloat_AsDouble(%struct._object* %7), !dbg !3345
  store double %call1, double* %x, align 8, !dbg !3346, !tbaa !1223
  %8 = load %struct._object*, %struct._object** %oy, align 8, !dbg !3347, !tbaa !1091
  %call2 = call double @PyFloat_AsDouble(%struct._object* %8), !dbg !3348
  store double %call2, double* %y, align 8, !dbg !3349, !tbaa !1223
  %9 = load double, double* %x, align 8, !dbg !3350, !tbaa !1223
  %cmp = fcmp oeq double %9, -1.000000e+00, !dbg !3352
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3353

lor.lhs.false:                                    ; preds = %if.end
  %10 = load double, double* %y, align 8, !dbg !3354, !tbaa !1223
  %cmp3 = fcmp oeq double %10, -1.000000e+00, !dbg !3356
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !3357

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !3358
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !3358
  br i1 %tobool5, label %if.then.6, label %if.end.7, !dbg !3361

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3362
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3362

if.end.7:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call8 = call i32* @__errno_location() #2, !dbg !3363
  store i32 0, i32* %call8, align 4, !dbg !3364, !tbaa !1599
  %11 = load double (double, double)*, double (double, double)** %func.addr, align 8, !dbg !3365, !tbaa !1091
  %12 = load double, double* %x, align 8, !dbg !3366, !tbaa !1223
  %13 = load double, double* %y, align 8, !dbg !3367, !tbaa !1223
  %call9 = call double %11(double %12, double %13), !dbg !3368
  store double %call9, double* %r, align 8, !dbg !3369, !tbaa !1223
  br i1 false, label %cond.true, label %cond.false, !dbg !3370

cond.true:                                        ; preds = %if.end.7
  %14 = load double, double* %r, align 8, !dbg !3371, !tbaa !1223
  %conv = fptrunc double %14 to float, !dbg !3371
  %call10 = call i32 @__isnanf(float %conv) #2, !dbg !3374
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3374
  br i1 %tobool11, label %if.then.19, label %if.else.49, !dbg !3375

cond.false:                                       ; preds = %if.end.7
  br i1 true, label %cond.true.12, label %cond.false.15, !dbg !3376

cond.true.12:                                     ; preds = %cond.false
  %15 = load double, double* %r, align 8, !dbg !3378, !tbaa !1223
  %call13 = call i32 @__isnan(double %15) #2, !dbg !3380
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3380
  br i1 %tobool14, label %if.then.19, label %if.else.49, !dbg !3381

cond.false.15:                                    ; preds = %cond.false
  %16 = load double, double* %r, align 8, !dbg !3382, !tbaa !1223
  %conv16 = fpext double %16 to x86_fp80, !dbg !3382
  %call17 = call i32 @__isnanl(x86_fp80 %conv16) #2, !dbg !3384
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3384
  br i1 %tobool18, label %if.then.19, label %if.else.49, !dbg !3370

if.then.19:                                       ; preds = %cond.false.15, %cond.true.12, %cond.true
  br i1 false, label %cond.true.20, label %cond.false.24, !dbg !3385

cond.true.20:                                     ; preds = %if.then.19
  %17 = load double, double* %x, align 8, !dbg !3388, !tbaa !1223
  %conv21 = fptrunc double %17 to float, !dbg !3388
  %call22 = call i32 @__isnanf(float %conv21) #2, !dbg !3390
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3390
  br i1 %tobool23, label %if.else, label %land.lhs.true.32, !dbg !3391

cond.false.24:                                    ; preds = %if.then.19
  br i1 true, label %cond.true.25, label %cond.false.28, !dbg !3392

cond.true.25:                                     ; preds = %cond.false.24
  %18 = load double, double* %x, align 8, !dbg !3394, !tbaa !1223
  %call26 = call i32 @__isnan(double %18) #2, !dbg !3396
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3396
  br i1 %tobool27, label %if.else, label %land.lhs.true.32, !dbg !3397

cond.false.28:                                    ; preds = %cond.false.24
  %19 = load double, double* %x, align 8, !dbg !3398, !tbaa !1223
  %conv29 = fpext double %19 to x86_fp80, !dbg !3398
  %call30 = call i32 @__isnanl(x86_fp80 %conv29) #2, !dbg !3400
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3400
  br i1 %tobool31, label %if.else, label %land.lhs.true.32, !dbg !3385

land.lhs.true.32:                                 ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.33, label %cond.false.37, !dbg !3401

cond.true.33:                                     ; preds = %land.lhs.true.32
  %20 = load double, double* %y, align 8, !dbg !3405, !tbaa !1223
  %conv34 = fptrunc double %20 to float, !dbg !3405
  %call35 = call i32 @__isnanf(float %conv34) #2, !dbg !3407
  %tobool36 = icmp ne i32 %call35, 0, !dbg !3407
  br i1 %tobool36, label %if.else, label %if.then.45, !dbg !3408

cond.false.37:                                    ; preds = %land.lhs.true.32
  br i1 true, label %cond.true.38, label %cond.false.41, !dbg !3409

cond.true.38:                                     ; preds = %cond.false.37
  %21 = load double, double* %y, align 8, !dbg !3411, !tbaa !1223
  %call39 = call i32 @__isnan(double %21) #2, !dbg !3413
  %tobool40 = icmp ne i32 %call39, 0, !dbg !3413
  br i1 %tobool40, label %if.else, label %if.then.45, !dbg !3414

cond.false.41:                                    ; preds = %cond.false.37
  %22 = load double, double* %y, align 8, !dbg !3415, !tbaa !1223
  %conv42 = fpext double %22 to x86_fp80, !dbg !3415
  %call43 = call i32 @__isnanl(x86_fp80 %conv42) #2, !dbg !3417
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3417
  br i1 %tobool44, label %if.else, label %if.then.45, !dbg !3418

if.then.45:                                       ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %call46 = call i32* @__errno_location() #2, !dbg !3419
  store i32 33, i32* %call46, align 4, !dbg !3420, !tbaa !1599
  br label %if.end.48, !dbg !3421

if.else:                                          ; preds = %cond.false.41, %cond.true.38, %cond.true.33, %cond.false.28, %cond.true.25, %cond.true.20
  %call47 = call i32* @__errno_location() #2, !dbg !3422
  store i32 0, i32* %call47, align 4, !dbg !3423, !tbaa !1599
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.45
  br label %if.end.94, !dbg !3424

if.else.49:                                       ; preds = %cond.false.15, %cond.true.12, %cond.true
  br i1 false, label %cond.true.50, label %cond.false.54, !dbg !3425

cond.true.50:                                     ; preds = %if.else.49
  %23 = load double, double* %r, align 8, !dbg !3426, !tbaa !1223
  %conv51 = fptrunc double %23 to float, !dbg !3426
  %call52 = call i32 @__isinff(float %conv51) #2, !dbg !3429
  %tobool53 = icmp ne i32 %call52, 0, !dbg !3429
  br i1 %tobool53, label %if.then.62, label %if.end.93, !dbg !3430

cond.false.54:                                    ; preds = %if.else.49
  br i1 true, label %cond.true.55, label %cond.false.58, !dbg !3431

cond.true.55:                                     ; preds = %cond.false.54
  %24 = load double, double* %r, align 8, !dbg !3433, !tbaa !1223
  %call56 = call i32 @__isinf(double %24) #2, !dbg !3435
  %tobool57 = icmp ne i32 %call56, 0, !dbg !3435
  br i1 %tobool57, label %if.then.62, label %if.end.93, !dbg !3436

cond.false.58:                                    ; preds = %cond.false.54
  %25 = load double, double* %r, align 8, !dbg !3437, !tbaa !1223
  %conv59 = fpext double %25 to x86_fp80, !dbg !3437
  %call60 = call i32 @__isinfl(x86_fp80 %conv59) #2, !dbg !3439
  %tobool61 = icmp ne i32 %call60, 0, !dbg !3439
  br i1 %tobool61, label %if.then.62, label %if.end.93, !dbg !3425

if.then.62:                                       ; preds = %cond.false.58, %cond.true.55, %cond.true.50
  br i1 false, label %cond.true.63, label %cond.false.67, !dbg !3440

cond.true.63:                                     ; preds = %if.then.62
  %26 = load double, double* %x, align 8, !dbg !3443, !tbaa !1223
  %conv64 = fptrunc double %26 to float, !dbg !3443
  %call65 = call i32 @__finitef(float %conv64) #2, !dbg !3445
  %tobool66 = icmp ne i32 %call65, 0, !dbg !3445
  br i1 %tobool66, label %land.lhs.true.75, label %if.else.90, !dbg !3446

cond.false.67:                                    ; preds = %if.then.62
  br i1 true, label %cond.true.68, label %cond.false.71, !dbg !3447

cond.true.68:                                     ; preds = %cond.false.67
  %27 = load double, double* %x, align 8, !dbg !3449, !tbaa !1223
  %call69 = call i32 @__finite(double %27) #2, !dbg !3451
  %tobool70 = icmp ne i32 %call69, 0, !dbg !3451
  br i1 %tobool70, label %land.lhs.true.75, label %if.else.90, !dbg !3452

cond.false.71:                                    ; preds = %cond.false.67
  %28 = load double, double* %x, align 8, !dbg !3453, !tbaa !1223
  %conv72 = fpext double %28 to x86_fp80, !dbg !3453
  %call73 = call i32 @__finitel(x86_fp80 %conv72) #2, !dbg !3455
  %tobool74 = icmp ne i32 %call73, 0, !dbg !3455
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.90, !dbg !3440

land.lhs.true.75:                                 ; preds = %cond.false.71, %cond.true.68, %cond.true.63
  br i1 false, label %cond.true.76, label %cond.false.80, !dbg !3456

cond.true.76:                                     ; preds = %land.lhs.true.75
  %29 = load double, double* %y, align 8, !dbg !3460, !tbaa !1223
  %conv77 = fptrunc double %29 to float, !dbg !3460
  %call78 = call i32 @__finitef(float %conv77) #2, !dbg !3462
  %tobool79 = icmp ne i32 %call78, 0, !dbg !3462
  br i1 %tobool79, label %if.then.88, label %if.else.90, !dbg !3463

cond.false.80:                                    ; preds = %land.lhs.true.75
  br i1 true, label %cond.true.81, label %cond.false.84, !dbg !3464

cond.true.81:                                     ; preds = %cond.false.80
  %30 = load double, double* %y, align 8, !dbg !3466, !tbaa !1223
  %call82 = call i32 @__finite(double %30) #2, !dbg !3468
  %tobool83 = icmp ne i32 %call82, 0, !dbg !3468
  br i1 %tobool83, label %if.then.88, label %if.else.90, !dbg !3469

cond.false.84:                                    ; preds = %cond.false.80
  %31 = load double, double* %y, align 8, !dbg !3470, !tbaa !1223
  %conv85 = fpext double %31 to x86_fp80, !dbg !3470
  %call86 = call i32 @__finitel(x86_fp80 %conv85) #2, !dbg !3472
  %tobool87 = icmp ne i32 %call86, 0, !dbg !3472
  br i1 %tobool87, label %if.then.88, label %if.else.90, !dbg !3473

if.then.88:                                       ; preds = %cond.false.84, %cond.true.81, %cond.true.76
  %call89 = call i32* @__errno_location() #2, !dbg !3474
  store i32 34, i32* %call89, align 4, !dbg !3475, !tbaa !1599
  br label %if.end.92, !dbg !3476

if.else.90:                                       ; preds = %cond.false.84, %cond.true.81, %cond.true.76, %cond.false.71, %cond.true.68, %cond.true.63
  %call91 = call i32* @__errno_location() #2, !dbg !3477
  store i32 0, i32* %call91, align 4, !dbg !3478, !tbaa !1599
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.88
  br label %if.end.93, !dbg !3479

if.end.93:                                        ; preds = %if.end.92, %cond.false.58, %cond.true.55, %cond.true.50
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.end.48
  %call95 = call i32* @__errno_location() #2, !dbg !3480
  %32 = load i32, i32* %call95, align 4, !dbg !3482, !tbaa !1599
  %tobool96 = icmp ne i32 %32, 0, !dbg !3483
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.101, !dbg !3484

land.lhs.true.97:                                 ; preds = %if.end.94
  %33 = load double, double* %r, align 8, !dbg !3485, !tbaa !1223
  %call98 = call i32 @is_error(double %33), !dbg !3487
  %tobool99 = icmp ne i32 %call98, 0, !dbg !3487
  br i1 %tobool99, label %if.then.100, label %if.else.101, !dbg !3488

if.then.100:                                      ; preds = %land.lhs.true.97
  store %struct._object* null, %struct._object** %retval, !dbg !3489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3489

if.else.101:                                      ; preds = %land.lhs.true.97, %if.end.94
  %34 = load double, double* %r, align 8, !dbg !3490, !tbaa !1223
  %call102 = call %struct._object* @PyFloat_FromDouble(double %34), !dbg !3491
  store %struct._object* %call102, %struct._object** %retval, !dbg !3492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3492

cleanup:                                          ; preds = %if.else.101, %if.then.100, %if.then.6, %if.then
  %35 = bitcast double* %r to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3493
  %36 = bitcast double* %y to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3493
  %37 = bitcast double* %x to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3493
  %38 = bitcast %struct._object** %oy to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !3493
  %39 = bitcast %struct._object** %ox to i8*, !dbg !3493
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !3493
  %40 = load %struct._object*, %struct._object** %retval, !dbg !3493
  ret %struct._object* %40, !dbg !3493
}

; Function Attrs: nounwind uwtable
define internal double @m_atan2(double %y, double %x) #0 {
entry:
  %retval = alloca double, align 8
  %y.addr = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %y, double* %y.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %y.addr, metadata !442, metadata !1087), !dbg !3494
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !443, metadata !1087), !dbg !3495
  br i1 false, label %cond.true, label %cond.false, !dbg !3496

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !dbg !3498, !tbaa !1223
  %conv = fptrunc double %0 to float, !dbg !3498
  %call = call i32 @__isnanf(float %conv) #2, !dbg !3500
  %tobool = icmp ne i32 %call, 0, !dbg !3500
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3501

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !3502

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8, !dbg !3504, !tbaa !1223
  %call2 = call i32 @__isnan(double %1) #2, !dbg !3506
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3506
  br i1 %tobool3, label %if.then, label %lor.lhs.false, !dbg !3507

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !3508, !tbaa !1223
  %conv5 = fpext double %2 to x86_fp80, !dbg !3508
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #2, !dbg !3510
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3510
  br i1 %tobool7, label %if.then, label %lor.lhs.false, !dbg !3496

lor.lhs.false:                                    ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12, !dbg !3511

cond.true.8:                                      ; preds = %lor.lhs.false
  %3 = load double, double* %y.addr, align 8, !dbg !3515, !tbaa !1223
  %conv9 = fptrunc double %3 to float, !dbg !3515
  %call10 = call i32 @__isnanf(float %conv9) #2, !dbg !3517
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3517
  br i1 %tobool11, label %if.then, label %if.end, !dbg !3518

cond.false.12:                                    ; preds = %lor.lhs.false
  br i1 true, label %cond.true.13, label %cond.false.16, !dbg !3519

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %y.addr, align 8, !dbg !3521, !tbaa !1223
  %call14 = call i32 @__isnan(double %4) #2, !dbg !3523
  %tobool15 = icmp ne i32 %call14, 0, !dbg !3523
  br i1 %tobool15, label %if.then, label %if.end, !dbg !3524

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %y.addr, align 8, !dbg !3525, !tbaa !1223
  %conv17 = fpext double %5 to x86_fp80, !dbg !3525
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #2, !dbg !3527
  %tobool19 = icmp ne i32 %call18, 0, !dbg !3527
  br i1 %tobool19, label %if.then, label %if.end, !dbg !3528

if.then:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8, %cond.false.4, %cond.true.1, %cond.true
  store double 0x7FF8000000000000, double* %retval, !dbg !3529
  br label %return, !dbg !3529

if.end:                                           ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  br i1 false, label %cond.true.20, label %cond.false.24, !dbg !3530

cond.true.20:                                     ; preds = %if.end
  %6 = load double, double* %y.addr, align 8, !dbg !3531, !tbaa !1223
  %conv21 = fptrunc double %6 to float, !dbg !3531
  %call22 = call i32 @__isinff(float %conv21) #2, !dbg !3534
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3534
  br i1 %tobool23, label %if.then.32, label %if.end.53, !dbg !3535

cond.false.24:                                    ; preds = %if.end
  br i1 true, label %cond.true.25, label %cond.false.28, !dbg !3536

cond.true.25:                                     ; preds = %cond.false.24
  %7 = load double, double* %y.addr, align 8, !dbg !3538, !tbaa !1223
  %call26 = call i32 @__isinf(double %7) #2, !dbg !3540
  %tobool27 = icmp ne i32 %call26, 0, !dbg !3540
  br i1 %tobool27, label %if.then.32, label %if.end.53, !dbg !3541

cond.false.28:                                    ; preds = %cond.false.24
  %8 = load double, double* %y.addr, align 8, !dbg !3542, !tbaa !1223
  %conv29 = fpext double %8 to x86_fp80, !dbg !3542
  %call30 = call i32 @__isinfl(x86_fp80 %conv29) #2, !dbg !3544
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3544
  br i1 %tobool31, label %if.then.32, label %if.end.53, !dbg !3530

if.then.32:                                       ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.33, label %cond.false.37, !dbg !3545

cond.true.33:                                     ; preds = %if.then.32
  %9 = load double, double* %x.addr, align 8, !dbg !3547, !tbaa !1223
  %conv34 = fptrunc double %9 to float, !dbg !3547
  %call35 = call i32 @__isinff(float %conv34) #2, !dbg !3550
  %tobool36 = icmp ne i32 %call35, 0, !dbg !3550
  br i1 %tobool36, label %if.then.45, label %if.end.51, !dbg !3551

cond.false.37:                                    ; preds = %if.then.32
  br i1 true, label %cond.true.38, label %cond.false.41, !dbg !3552

cond.true.38:                                     ; preds = %cond.false.37
  %10 = load double, double* %x.addr, align 8, !dbg !3554, !tbaa !1223
  %call39 = call i32 @__isinf(double %10) #2, !dbg !3556
  %tobool40 = icmp ne i32 %call39, 0, !dbg !3556
  br i1 %tobool40, label %if.then.45, label %if.end.51, !dbg !3557

cond.false.41:                                    ; preds = %cond.false.37
  %11 = load double, double* %x.addr, align 8, !dbg !3558, !tbaa !1223
  %conv42 = fpext double %11 to x86_fp80, !dbg !3558
  %call43 = call i32 @__isinfl(x86_fp80 %conv42) #2, !dbg !3560
  %tobool44 = icmp ne i32 %call43, 0, !dbg !3560
  br i1 %tobool44, label %if.then.45, label %if.end.51, !dbg !3545

if.then.45:                                       ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %12 = load double, double* %x.addr, align 8, !dbg !3561, !tbaa !1223
  %call46 = call double @copysign(double 1.000000e+00, double %12) #2, !dbg !3564
  %cmp = fcmp oeq double %call46, 1.000000e+00, !dbg !3565
  br i1 %cmp, label %if.then.48, label %if.else, !dbg !3566

if.then.48:                                       ; preds = %if.then.45
  %13 = load double, double* %y.addr, align 8, !dbg !3567, !tbaa !1223
  %call49 = call double @copysign(double 0x3FE921FB54442D18, double %13) #2, !dbg !3568
  store double %call49, double* %retval, !dbg !3569
  br label %return, !dbg !3569

if.else:                                          ; preds = %if.then.45
  %14 = load double, double* %y.addr, align 8, !dbg !3570, !tbaa !1223
  %call50 = call double @copysign(double 0x4002D97C7F3321D2, double %14) #2, !dbg !3571
  store double %call50, double* %retval, !dbg !3572
  br label %return, !dbg !3572

if.end.51:                                        ; preds = %cond.false.41, %cond.true.38, %cond.true.33
  %15 = load double, double* %y.addr, align 8, !dbg !3573, !tbaa !1223
  %call52 = call double @copysign(double 0x3FF921FB54442D18, double %15) #2, !dbg !3574
  store double %call52, double* %retval, !dbg !3575
  br label %return, !dbg !3575

if.end.53:                                        ; preds = %cond.false.28, %cond.true.25, %cond.true.20
  br i1 false, label %cond.true.54, label %cond.false.58, !dbg !3576

cond.true.54:                                     ; preds = %if.end.53
  %16 = load double, double* %x.addr, align 8, !dbg !3578, !tbaa !1223
  %conv55 = fptrunc double %16 to float, !dbg !3578
  %call56 = call i32 @__isinff(float %conv55) #2, !dbg !3580
  %tobool57 = icmp ne i32 %call56, 0, !dbg !3580
  br i1 %tobool57, label %if.then.69, label %lor.lhs.false.66, !dbg !3581

cond.false.58:                                    ; preds = %if.end.53
  br i1 true, label %cond.true.59, label %cond.false.62, !dbg !3582

cond.true.59:                                     ; preds = %cond.false.58
  %17 = load double, double* %x.addr, align 8, !dbg !3584, !tbaa !1223
  %call60 = call i32 @__isinf(double %17) #2, !dbg !3586
  %tobool61 = icmp ne i32 %call60, 0, !dbg !3586
  br i1 %tobool61, label %if.then.69, label %lor.lhs.false.66, !dbg !3587

cond.false.62:                                    ; preds = %cond.false.58
  %18 = load double, double* %x.addr, align 8, !dbg !3588, !tbaa !1223
  %conv63 = fpext double %18 to x86_fp80, !dbg !3588
  %call64 = call i32 @__isinfl(x86_fp80 %conv63) #2, !dbg !3590
  %tobool65 = icmp ne i32 %call64, 0, !dbg !3590
  br i1 %tobool65, label %if.then.69, label %lor.lhs.false.66, !dbg !3576

lor.lhs.false.66:                                 ; preds = %cond.false.62, %cond.true.59, %cond.true.54
  %19 = load double, double* %y.addr, align 8, !dbg !3591, !tbaa !1223
  %cmp67 = fcmp oeq double %19, 0.000000e+00, !dbg !3595
  br i1 %cmp67, label %if.then.69, label %if.end.77, !dbg !3596

if.then.69:                                       ; preds = %lor.lhs.false.66, %cond.false.62, %cond.true.59, %cond.true.54
  %20 = load double, double* %x.addr, align 8, !dbg !3597, !tbaa !1223
  %call70 = call double @copysign(double 1.000000e+00, double %20) #2, !dbg !3600
  %cmp71 = fcmp oeq double %call70, 1.000000e+00, !dbg !3601
  br i1 %cmp71, label %if.then.73, label %if.else.75, !dbg !3602

if.then.73:                                       ; preds = %if.then.69
  %21 = load double, double* %y.addr, align 8, !dbg !3603, !tbaa !1223
  %call74 = call double @copysign(double 0.000000e+00, double %21) #2, !dbg !3604
  store double %call74, double* %retval, !dbg !3605
  br label %return, !dbg !3605

if.else.75:                                       ; preds = %if.then.69
  %22 = load double, double* %y.addr, align 8, !dbg !3606, !tbaa !1223
  %call76 = call double @copysign(double 0x400921FB54442D18, double %22) #2, !dbg !3607
  store double %call76, double* %retval, !dbg !3608
  br label %return, !dbg !3608

if.end.77:                                        ; preds = %lor.lhs.false.66
  %23 = load double, double* %y.addr, align 8, !dbg !3609, !tbaa !1223
  %24 = load double, double* %x.addr, align 8, !dbg !3610, !tbaa !1223
  %call78 = call double @atan2(double %23, double %24) #1, !dbg !3611
  store double %call78, double* %retval, !dbg !3612
  br label %return, !dbg !3612

return:                                           ; preds = %if.end.77, %if.else.75, %if.then.73, %if.end.51, %if.else, %if.then.48, %if.then
  %25 = load double, double* %retval, !dbg !3613
  ret double %25, !dbg !3613
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #5

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind
declare double @atanh(double) #4

declare %struct._object* @_PyObject_LookupSpecial(%struct._object*, %struct._Py_Identifier*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1_to_int(%struct._object* %arg, double (double)* %func, i32 %can_overflow) #0 {
entry:
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %can_overflow.addr = alloca i32, align 4
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !458, metadata !1087), !dbg !3614
  store double (double)* %func, double (double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double)** %func.addr, metadata !459, metadata !1087), !dbg !3615
  store i32 %can_overflow, i32* %can_overflow.addr, align 4, !tbaa !1599
  call void @llvm.dbg.declare(metadata i32* %can_overflow.addr, metadata !460, metadata !1087), !dbg !3616
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3617, !tbaa !1091
  %1 = load double (double)*, double (double)** %func.addr, align 8, !dbg !3618, !tbaa !1091
  %2 = load i32, i32* %can_overflow.addr, align 4, !dbg !3619, !tbaa !1599
  %call = call %struct._object* @math_1_to_whatever(%struct._object* %0, double (double)* %1, %struct._object* (double)* @PyLong_FromDouble, i32 %2), !dbg !3620
  ret %struct._object* %call, !dbg !3621
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare %struct._object* @PyLong_FromDouble(double) #3

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @cosh(double) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @math_1a(%struct._object* %arg, double (double)* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %func.addr = alloca double (double)*, align 8
  %x = alloca double, align 8
  %r = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !486, metadata !1087), !dbg !3622
  store double (double)* %func, double (double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double)** %func.addr, metadata !487, metadata !1087), !dbg !3623
  %0 = bitcast double* %x to i8*, !dbg !3624
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3624
  call void @llvm.dbg.declare(metadata double* %x, metadata !488, metadata !1087), !dbg !3625
  %1 = bitcast double* %r to i8*, !dbg !3624
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3624
  call void @llvm.dbg.declare(metadata double* %r, metadata !489, metadata !1087), !dbg !3626
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !3627, !tbaa !1091
  %call = call double @PyFloat_AsDouble(%struct._object* %2), !dbg !3628
  store double %call, double* %x, align 8, !dbg !3629, !tbaa !1223
  %3 = load double, double* %x, align 8, !dbg !3630, !tbaa !1223
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !3632
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3633

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !3634
  %tobool = icmp ne %struct._object* %call1, null, !dbg !3634
  br i1 %tobool, label %if.then, label %if.end, !dbg !3636

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3637
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3637

if.end:                                           ; preds = %land.lhs.true, %entry
  %call2 = call i32* @__errno_location() #2, !dbg !3638
  store i32 0, i32* %call2, align 4, !dbg !3639, !tbaa !1599
  %4 = load double (double)*, double (double)** %func.addr, align 8, !dbg !3640, !tbaa !1091
  %5 = load double, double* %x, align 8, !dbg !3641, !tbaa !1223
  %call3 = call double %4(double %5), !dbg !3642
  store double %call3, double* %r, align 8, !dbg !3643, !tbaa !1223
  %call4 = call i32* @__errno_location() #2, !dbg !3644
  %6 = load i32, i32* %call4, align 4, !dbg !3646, !tbaa !1599
  %tobool5 = icmp ne i32 %6, 0, !dbg !3647
  br i1 %tobool5, label %land.lhs.true.6, label %if.end.10, !dbg !3648

land.lhs.true.6:                                  ; preds = %if.end
  %7 = load double, double* %r, align 8, !dbg !3649, !tbaa !1223
  %call7 = call i32 @is_error(double %7), !dbg !3651
  %tobool8 = icmp ne i32 %call7, 0, !dbg !3651
  br i1 %tobool8, label %if.then.9, label %if.end.10, !dbg !3652

if.then.9:                                        ; preds = %land.lhs.true.6
  store %struct._object* null, %struct._object** %retval, !dbg !3653
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3653

if.end.10:                                        ; preds = %land.lhs.true.6, %if.end
  %8 = load double, double* %r, align 8, !dbg !3654, !tbaa !1223
  %call11 = call %struct._object* @PyFloat_FromDouble(double %8), !dbg !3655
  store %struct._object* %call11, %struct._object** %retval, !dbg !3656
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3656

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %9 = bitcast double* %r to i8*, !dbg !3657
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3657
  %10 = bitcast double* %x to i8*, !dbg !3657
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !3657
  %11 = load %struct._object*, %struct._object** %retval, !dbg !3657
  ret %struct._object* %11, !dbg !3657
}

; Function Attrs: nounwind uwtable
define internal double @m_erf(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %cf = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !492, metadata !1087), !dbg !3658
  %0 = bitcast double* %absx to i8*, !dbg !3659
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3659
  call void @llvm.dbg.declare(metadata double* %absx, metadata !493, metadata !1087), !dbg !3660
  %1 = bitcast double* %cf to i8*, !dbg !3659
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3659
  call void @llvm.dbg.declare(metadata double* %cf, metadata !494, metadata !1087), !dbg !3661
  br i1 false, label %cond.true, label %cond.false, !dbg !3662

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !3663, !tbaa !1223
  %conv = fptrunc double %2 to float, !dbg !3663
  %call = call i32 @__isnanf(float %conv) #2, !dbg !3666
  %tobool = icmp ne i32 %call, 0, !dbg !3666
  br i1 %tobool, label %if.then, label %if.end, !dbg !3667

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !3668

cond.true.1:                                      ; preds = %cond.false
  %3 = load double, double* %x.addr, align 8, !dbg !3670, !tbaa !1223
  %call2 = call i32 @__isnan(double %3) #2, !dbg !3672
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3672
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3673

cond.false.4:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8, !dbg !3674, !tbaa !1223
  %conv5 = fpext double %4 to x86_fp80, !dbg !3674
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #2, !dbg !3676
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3676
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3662

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8, !dbg !3677, !tbaa !1223
  store double %5, double* %retval, !dbg !3678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3678

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %6 = load double, double* %x.addr, align 8, !dbg !3679, !tbaa !1223
  %call8 = call double @fabs(double %6) #2, !dbg !3680
  store double %call8, double* %absx, align 8, !dbg !3681, !tbaa !1223
  %7 = load double, double* %absx, align 8, !dbg !3682, !tbaa !1223
  %cmp = fcmp olt double %7, 1.500000e+00, !dbg !3684
  br i1 %cmp, label %if.then.10, label %if.else, !dbg !3685

if.then.10:                                       ; preds = %if.end
  %8 = load double, double* %x.addr, align 8, !dbg !3686, !tbaa !1223
  %call11 = call double @m_erf_series(double %8), !dbg !3687
  store double %call11, double* %retval, !dbg !3688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3688

if.else:                                          ; preds = %if.end
  %9 = load double, double* %absx, align 8, !dbg !3689, !tbaa !1223
  %call12 = call double @m_erfc_contfrac(double %9), !dbg !3691
  store double %call12, double* %cf, align 8, !dbg !3692, !tbaa !1223
  %10 = load double, double* %x.addr, align 8, !dbg !3693, !tbaa !1223
  %cmp13 = fcmp ogt double %10, 0.000000e+00, !dbg !3694
  br i1 %cmp13, label %cond.true.15, label %cond.false.16, !dbg !3693

cond.true.15:                                     ; preds = %if.else
  %11 = load double, double* %cf, align 8, !dbg !3695, !tbaa !1223
  %sub = fsub double 1.000000e+00, %11, !dbg !3697
  br label %cond.end, !dbg !3693

cond.false.16:                                    ; preds = %if.else
  %12 = load double, double* %cf, align 8, !dbg !3698, !tbaa !1223
  %sub17 = fsub double %12, 1.000000e+00, !dbg !3700
  br label %cond.end, !dbg !3693

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ %sub, %cond.true.15 ], [ %sub17, %cond.false.16 ], !dbg !3693
  store double %cond, double* %retval, !dbg !3701
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3704

cleanup:                                          ; preds = %cond.end, %if.then.10, %if.then
  %13 = bitcast double* %cf to i8*, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3705
  %14 = bitcast double* %absx to i8*, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3705
  %15 = load double, double* %retval, !dbg !3705
  ret double %15, !dbg !3705
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
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !497, metadata !1087), !dbg !3706
  %0 = bitcast double* %x2 to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3707
  call void @llvm.dbg.declare(metadata double* %x2, metadata !498, metadata !1087), !dbg !3708
  %1 = bitcast double* %acc to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3707
  call void @llvm.dbg.declare(metadata double* %acc, metadata !499, metadata !1087), !dbg !3709
  %2 = bitcast double* %fk to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3707
  call void @llvm.dbg.declare(metadata double* %fk, metadata !500, metadata !1087), !dbg !3710
  %3 = bitcast double* %result to i8*, !dbg !3707
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3707
  call void @llvm.dbg.declare(metadata double* %result, metadata !501, metadata !1087), !dbg !3711
  %4 = bitcast i32* %i to i8*, !dbg !3712
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3712
  call void @llvm.dbg.declare(metadata i32* %i, metadata !502, metadata !1087), !dbg !3713
  %5 = bitcast i32* %saved_errno to i8*, !dbg !3712
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !3712
  call void @llvm.dbg.declare(metadata i32* %saved_errno, metadata !503, metadata !1087), !dbg !3714
  %6 = load double, double* %x.addr, align 8, !dbg !3715, !tbaa !1223
  %7 = load double, double* %x.addr, align 8, !dbg !3716, !tbaa !1223
  %mul = fmul double %6, %7, !dbg !3717
  store double %mul, double* %x2, align 8, !dbg !3718, !tbaa !1223
  store double 0.000000e+00, double* %acc, align 8, !dbg !3719, !tbaa !1223
  store double 2.550000e+01, double* %fk, align 8, !dbg !3720, !tbaa !1223
  store i32 0, i32* %i, align 4, !dbg !3721, !tbaa !1599
  br label %for.cond, !dbg !3723

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !3724, !tbaa !1599
  %cmp = icmp slt i32 %8, 25, !dbg !3728
  br i1 %cmp, label %for.body, label %for.end, !dbg !3729

for.body:                                         ; preds = %for.cond
  %9 = load double, double* %x2, align 8, !dbg !3730, !tbaa !1223
  %10 = load double, double* %acc, align 8, !dbg !3732, !tbaa !1223
  %mul1 = fmul double %9, %10, !dbg !3733
  %11 = load double, double* %fk, align 8, !dbg !3734, !tbaa !1223
  %div = fdiv double %mul1, %11, !dbg !3735
  %add = fadd double 2.000000e+00, %div, !dbg !3736
  store double %add, double* %acc, align 8, !dbg !3737, !tbaa !1223
  %12 = load double, double* %fk, align 8, !dbg !3738, !tbaa !1223
  %sub = fsub double %12, 1.000000e+00, !dbg !3738
  store double %sub, double* %fk, align 8, !dbg !3738, !tbaa !1223
  br label %for.inc, !dbg !3739

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !3740, !tbaa !1599
  %inc = add i32 %13, 1, !dbg !3740
  store i32 %inc, i32* %i, align 4, !dbg !3740, !tbaa !1599
  br label %for.cond, !dbg !3741

for.end:                                          ; preds = %for.cond
  %call = call i32* @__errno_location() #2, !dbg !3742
  %14 = load i32, i32* %call, align 4, !dbg !3743, !tbaa !1599
  store i32 %14, i32* %saved_errno, align 4, !dbg !3744, !tbaa !1599
  %15 = load double, double* %acc, align 8, !dbg !3745, !tbaa !1223
  %16 = load double, double* %x.addr, align 8, !dbg !3746, !tbaa !1223
  %mul2 = fmul double %15, %16, !dbg !3747
  %17 = load double, double* %x2, align 8, !dbg !3748, !tbaa !1223
  %sub3 = fsub double -0.000000e+00, %17, !dbg !3749
  %call4 = call double @exp(double %sub3) #1, !dbg !3750
  %mul5 = fmul double %mul2, %call4, !dbg !3751
  %div6 = fdiv double %mul5, 0x3FFC5BF891B4EF6B, !dbg !3752
  store double %div6, double* %result, align 8, !dbg !3753, !tbaa !1223
  %18 = load i32, i32* %saved_errno, align 4, !dbg !3754, !tbaa !1599
  %call7 = call i32* @__errno_location() #2, !dbg !3755
  store i32 %18, i32* %call7, align 4, !dbg !3756, !tbaa !1599
  %19 = load double, double* %result, align 8, !dbg !3757, !tbaa !1223
  %20 = bitcast i32* %saved_errno to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !3758
  %21 = bitcast i32* %i to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !3758
  %22 = bitcast double* %result to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3758
  %23 = bitcast double* %fk to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3758
  %24 = bitcast double* %acc to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3758
  %25 = bitcast double* %x2 to i8*, !dbg !3758
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3758
  ret double %19, !dbg !3759
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
  %cleanup.dest.slot = alloca i32
  %temp = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !506, metadata !1087), !dbg !3760
  %0 = bitcast double* %x2 to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %x2, metadata !507, metadata !1087), !dbg !3762
  %1 = bitcast double* %a to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %a, metadata !508, metadata !1087), !dbg !3763
  %2 = bitcast double* %da to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %da, metadata !509, metadata !1087), !dbg !3764
  %3 = bitcast double* %p to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %p, metadata !510, metadata !1087), !dbg !3765
  %4 = bitcast double* %p_last to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %p_last, metadata !511, metadata !1087), !dbg !3766
  %5 = bitcast double* %q to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %q, metadata !512, metadata !1087), !dbg !3767
  %6 = bitcast double* %q_last to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %q_last, metadata !513, metadata !1087), !dbg !3768
  %7 = bitcast double* %b to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %b, metadata !514, metadata !1087), !dbg !3769
  %8 = bitcast double* %result to i8*, !dbg !3761
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3761
  call void @llvm.dbg.declare(metadata double* %result, metadata !515, metadata !1087), !dbg !3770
  %9 = bitcast i32* %i to i8*, !dbg !3771
  call void @llvm.lifetime.start(i64 4, i8* %9) #1, !dbg !3771
  call void @llvm.dbg.declare(metadata i32* %i, metadata !516, metadata !1087), !dbg !3772
  %10 = bitcast i32* %saved_errno to i8*, !dbg !3771
  call void @llvm.lifetime.start(i64 4, i8* %10) #1, !dbg !3771
  call void @llvm.dbg.declare(metadata i32* %saved_errno, metadata !517, metadata !1087), !dbg !3773
  %11 = load double, double* %x.addr, align 8, !dbg !3774, !tbaa !1223
  %cmp = fcmp oge double %11, 3.000000e+01, !dbg !3776
  br i1 %cmp, label %if.then, label %if.end, !dbg !3777

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval, !dbg !3778
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3778

if.end:                                           ; preds = %entry
  %12 = load double, double* %x.addr, align 8, !dbg !3779, !tbaa !1223
  %13 = load double, double* %x.addr, align 8, !dbg !3780, !tbaa !1223
  %mul = fmul double %12, %13, !dbg !3781
  store double %mul, double* %x2, align 8, !dbg !3782, !tbaa !1223
  store double 0.000000e+00, double* %a, align 8, !dbg !3783, !tbaa !1223
  store double 5.000000e-01, double* %da, align 8, !dbg !3784, !tbaa !1223
  store double 1.000000e+00, double* %p, align 8, !dbg !3785, !tbaa !1223
  store double 0.000000e+00, double* %p_last, align 8, !dbg !3786, !tbaa !1223
  %14 = load double, double* %da, align 8, !dbg !3787, !tbaa !1223
  %15 = load double, double* %x2, align 8, !dbg !3788, !tbaa !1223
  %add = fadd double %14, %15, !dbg !3789
  store double %add, double* %q, align 8, !dbg !3790, !tbaa !1223
  store double 1.000000e+00, double* %q_last, align 8, !dbg !3791, !tbaa !1223
  store i32 0, i32* %i, align 4, !dbg !3792, !tbaa !1599
  br label %for.cond, !dbg !3793

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !3794, !tbaa !1599
  %cmp1 = icmp slt i32 %16, 50, !dbg !3797
  br i1 %cmp1, label %for.body, label %for.end, !dbg !3798

for.body:                                         ; preds = %for.cond
  %17 = bitcast double* %temp to i8*, !dbg !3799
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !3799
  call void @llvm.dbg.declare(metadata double* %temp, metadata !518, metadata !1087), !dbg !3800
  %18 = load double, double* %da, align 8, !dbg !3801, !tbaa !1223
  %19 = load double, double* %a, align 8, !dbg !3802, !tbaa !1223
  %add2 = fadd double %19, %18, !dbg !3802
  store double %add2, double* %a, align 8, !dbg !3802, !tbaa !1223
  %20 = load double, double* %da, align 8, !dbg !3803, !tbaa !1223
  %add3 = fadd double %20, 2.000000e+00, !dbg !3803
  store double %add3, double* %da, align 8, !dbg !3803, !tbaa !1223
  %21 = load double, double* %da, align 8, !dbg !3804, !tbaa !1223
  %22 = load double, double* %x2, align 8, !dbg !3805, !tbaa !1223
  %add4 = fadd double %21, %22, !dbg !3806
  store double %add4, double* %b, align 8, !dbg !3807, !tbaa !1223
  %23 = load double, double* %p, align 8, !dbg !3808, !tbaa !1223
  store double %23, double* %temp, align 8, !dbg !3809, !tbaa !1223
  %24 = load double, double* %b, align 8, !dbg !3810, !tbaa !1223
  %25 = load double, double* %p, align 8, !dbg !3811, !tbaa !1223
  %mul5 = fmul double %24, %25, !dbg !3812
  %26 = load double, double* %a, align 8, !dbg !3813, !tbaa !1223
  %27 = load double, double* %p_last, align 8, !dbg !3814, !tbaa !1223
  %mul6 = fmul double %26, %27, !dbg !3815
  %sub = fsub double %mul5, %mul6, !dbg !3816
  store double %sub, double* %p, align 8, !dbg !3817, !tbaa !1223
  %28 = load double, double* %temp, align 8, !dbg !3818, !tbaa !1223
  store double %28, double* %p_last, align 8, !dbg !3819, !tbaa !1223
  %29 = load double, double* %q, align 8, !dbg !3820, !tbaa !1223
  store double %29, double* %temp, align 8, !dbg !3821, !tbaa !1223
  %30 = load double, double* %b, align 8, !dbg !3822, !tbaa !1223
  %31 = load double, double* %q, align 8, !dbg !3823, !tbaa !1223
  %mul7 = fmul double %30, %31, !dbg !3824
  %32 = load double, double* %a, align 8, !dbg !3825, !tbaa !1223
  %33 = load double, double* %q_last, align 8, !dbg !3826, !tbaa !1223
  %mul8 = fmul double %32, %33, !dbg !3827
  %sub9 = fsub double %mul7, %mul8, !dbg !3828
  store double %sub9, double* %q, align 8, !dbg !3829, !tbaa !1223
  %34 = load double, double* %temp, align 8, !dbg !3830, !tbaa !1223
  store double %34, double* %q_last, align 8, !dbg !3831, !tbaa !1223
  %35 = bitcast double* %temp to i8*, !dbg !3832
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3832
  br label %for.inc, !dbg !3833

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !3834, !tbaa !1599
  %inc = add i32 %36, 1, !dbg !3834
  store i32 %inc, i32* %i, align 4, !dbg !3834, !tbaa !1599
  br label %for.cond, !dbg !3835

for.end:                                          ; preds = %for.cond
  %call = call i32* @__errno_location() #2, !dbg !3836
  %37 = load i32, i32* %call, align 4, !dbg !3837, !tbaa !1599
  store i32 %37, i32* %saved_errno, align 4, !dbg !3838, !tbaa !1599
  %38 = load double, double* %p, align 8, !dbg !3839, !tbaa !1223
  %39 = load double, double* %q, align 8, !dbg !3840, !tbaa !1223
  %div = fdiv double %38, %39, !dbg !3841
  %40 = load double, double* %x.addr, align 8, !dbg !3842, !tbaa !1223
  %mul10 = fmul double %div, %40, !dbg !3843
  %41 = load double, double* %x2, align 8, !dbg !3844, !tbaa !1223
  %sub11 = fsub double -0.000000e+00, %41, !dbg !3845
  %call12 = call double @exp(double %sub11) #1, !dbg !3846
  %mul13 = fmul double %mul10, %call12, !dbg !3847
  %div14 = fdiv double %mul13, 0x3FFC5BF891B4EF6B, !dbg !3848
  store double %div14, double* %result, align 8, !dbg !3849, !tbaa !1223
  %42 = load i32, i32* %saved_errno, align 4, !dbg !3850, !tbaa !1599
  %call15 = call i32* @__errno_location() #2, !dbg !3851
  store i32 %42, i32* %call15, align 4, !dbg !3852, !tbaa !1599
  %43 = load double, double* %result, align 8, !dbg !3853, !tbaa !1223
  store double %43, double* %retval, !dbg !3854
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3854

cleanup:                                          ; preds = %for.end, %if.then
  %44 = bitcast i32* %saved_errno to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 4, i8* %44) #1, !dbg !3855
  %45 = bitcast i32* %i to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 4, i8* %45) #1, !dbg !3855
  %46 = bitcast double* %result to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3855
  %47 = bitcast double* %b to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3855
  %48 = bitcast double* %q_last to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !3855
  %49 = bitcast double* %q to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !3855
  %50 = bitcast double* %p_last to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !3855
  %51 = bitcast double* %p to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !3855
  %52 = bitcast double* %da to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !3855
  %53 = bitcast double* %a to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !3855
  %54 = bitcast double* %x2 to i8*, !dbg !3855
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !3855
  %55 = load double, double* %retval, !dbg !3855
  ret double %55, !dbg !3855
}

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind uwtable
define internal double @m_erfc(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %absx = alloca double, align 8
  %cf = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !528, metadata !1087), !dbg !3856
  %0 = bitcast double* %absx to i8*, !dbg !3857
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3857
  call void @llvm.dbg.declare(metadata double* %absx, metadata !529, metadata !1087), !dbg !3858
  %1 = bitcast double* %cf to i8*, !dbg !3857
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3857
  call void @llvm.dbg.declare(metadata double* %cf, metadata !530, metadata !1087), !dbg !3859
  br i1 false, label %cond.true, label %cond.false, !dbg !3860

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !3861, !tbaa !1223
  %conv = fptrunc double %2 to float, !dbg !3861
  %call = call i32 @__isnanf(float %conv) #2, !dbg !3864
  %tobool = icmp ne i32 %call, 0, !dbg !3864
  br i1 %tobool, label %if.then, label %if.end, !dbg !3865

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !3866

cond.true.1:                                      ; preds = %cond.false
  %3 = load double, double* %x.addr, align 8, !dbg !3868, !tbaa !1223
  %call2 = call i32 @__isnan(double %3) #2, !dbg !3870
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3870
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3871

cond.false.4:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8, !dbg !3872, !tbaa !1223
  %conv5 = fpext double %4 to x86_fp80, !dbg !3872
  %call6 = call i32 @__isnanl(x86_fp80 %conv5) #2, !dbg !3874
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3874
  br i1 %tobool7, label %if.then, label %if.end, !dbg !3860

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %5 = load double, double* %x.addr, align 8, !dbg !3875, !tbaa !1223
  store double %5, double* %retval, !dbg !3876
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3876

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %6 = load double, double* %x.addr, align 8, !dbg !3877, !tbaa !1223
  %call8 = call double @fabs(double %6) #2, !dbg !3878
  store double %call8, double* %absx, align 8, !dbg !3879, !tbaa !1223
  %7 = load double, double* %absx, align 8, !dbg !3880, !tbaa !1223
  %cmp = fcmp olt double %7, 1.500000e+00, !dbg !3882
  br i1 %cmp, label %if.then.10, label %if.else, !dbg !3883

if.then.10:                                       ; preds = %if.end
  %8 = load double, double* %x.addr, align 8, !dbg !3884, !tbaa !1223
  %call11 = call double @m_erf_series(double %8), !dbg !3885
  %sub = fsub double 1.000000e+00, %call11, !dbg !3886
  store double %sub, double* %retval, !dbg !3887
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3887

if.else:                                          ; preds = %if.end
  %9 = load double, double* %absx, align 8, !dbg !3888, !tbaa !1223
  %call12 = call double @m_erfc_contfrac(double %9), !dbg !3890
  store double %call12, double* %cf, align 8, !dbg !3891, !tbaa !1223
  %10 = load double, double* %x.addr, align 8, !dbg !3892, !tbaa !1223
  %cmp13 = fcmp ogt double %10, 0.000000e+00, !dbg !3893
  br i1 %cmp13, label %cond.true.15, label %cond.false.16, !dbg !3892

cond.true.15:                                     ; preds = %if.else
  %11 = load double, double* %cf, align 8, !dbg !3894, !tbaa !1223
  br label %cond.end, !dbg !3892

cond.false.16:                                    ; preds = %if.else
  %12 = load double, double* %cf, align 8, !dbg !3896, !tbaa !1223
  %sub17 = fsub double 2.000000e+00, %12, !dbg !3898
  br label %cond.end, !dbg !3892

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond = phi double [ %11, %cond.true.15 ], [ %sub17, %cond.false.16 ], !dbg !3892
  store double %cond, double* %retval, !dbg !3899
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3902

cleanup:                                          ; preds = %cond.end, %if.then.10, %if.then
  %13 = bitcast double* %cf to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3903
  %14 = bitcast double* %absx to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3903
  %15 = load double, double* %retval, !dbg !3903
  ret double %15, !dbg !3903
}

; Function Attrs: nounwind
declare double @expm1(double) #4

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !569, metadata !1087), !dbg !3904
  %0 = bitcast i64* %i to i8*, !dbg !3905
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3905
  call void @llvm.dbg.declare(metadata i64* %i, metadata !570, metadata !1087), !dbg !3906
  %1 = bitcast i64* %v to i8*, !dbg !3907
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3907
  call void @llvm.dbg.declare(metadata i64* %v, metadata !571, metadata !1087), !dbg !3908
  %2 = bitcast i64* %lower to i8*, !dbg !3907
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3907
  call void @llvm.dbg.declare(metadata i64* %lower, metadata !572, metadata !1087), !dbg !3909
  %3 = bitcast i64* %upper to i8*, !dbg !3907
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3907
  call void @llvm.dbg.declare(metadata i64* %upper, metadata !573, metadata !1087), !dbg !3910
  %4 = bitcast %struct._object** %partial to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3911
  call void @llvm.dbg.declare(metadata %struct._object** %partial, metadata !574, metadata !1087), !dbg !3912
  %5 = bitcast %struct._object** %tmp to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3911
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !575, metadata !1087), !dbg !3913
  %6 = bitcast %struct._object** %inner to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3911
  call void @llvm.dbg.declare(metadata %struct._object** %inner, metadata !576, metadata !1087), !dbg !3914
  %7 = bitcast %struct._object** %outer to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !3911
  call void @llvm.dbg.declare(metadata %struct._object** %outer, metadata !577, metadata !1087), !dbg !3915
  %call = call %struct._object* @PyLong_FromLong(i64 1), !dbg !3916
  store %struct._object* %call, %struct._object** %inner, align 8, !dbg !3917, !tbaa !1091
  %8 = load %struct._object*, %struct._object** %inner, align 8, !dbg !3918, !tbaa !1091
  %cmp = icmp eq %struct._object* %8, null, !dbg !3920
  br i1 %cmp, label %if.then, label %if.end, !dbg !3921

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3922

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %inner, align 8, !dbg !3923, !tbaa !1091
  store %struct._object* %9, %struct._object** %outer, align 8, !dbg !3924, !tbaa !1091
  %10 = load %struct._object*, %struct._object** %outer, align 8, !dbg !3925, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !3926
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !3927, !tbaa !1176
  %inc = add i64 %11, 1, !dbg !3927
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3927, !tbaa !1176
  store i64 3, i64* %upper, align 8, !dbg !3928, !tbaa !1327
  %12 = load i64, i64* %n.addr, align 8, !dbg !3929, !tbaa !1327
  %call3 = call i64 @bit_length(i64 %12), !dbg !3930
  %sub = sub i64 %call3, 2, !dbg !3931
  store i64 %sub, i64* %i, align 8, !dbg !3932, !tbaa !1327
  br label %for.cond, !dbg !3933

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8, !dbg !3934, !tbaa !1327
  %cmp4 = icmp sge i64 %13, 0, !dbg !3937
  br i1 %cmp4, label %for.body, label %for.end, !dbg !3938

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %n.addr, align 8, !dbg !3939, !tbaa !1327
  %15 = load i64, i64* %i, align 8, !dbg !3940, !tbaa !1327
  %shr = lshr i64 %14, %15, !dbg !3941
  store i64 %shr, i64* %v, align 8, !dbg !3942, !tbaa !1327
  %16 = load i64, i64* %v, align 8, !dbg !3943, !tbaa !1327
  %cmp5 = icmp ule i64 %16, 2, !dbg !3945
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3946

if.then.6:                                        ; preds = %for.body
  br label %for.inc, !dbg !3947

if.end.7:                                         ; preds = %for.body
  %17 = load i64, i64* %upper, align 8, !dbg !3948, !tbaa !1327
  store i64 %17, i64* %lower, align 8, !dbg !3949, !tbaa !1327
  %18 = load i64, i64* %v, align 8, !dbg !3950, !tbaa !1327
  %add = add i64 %18, 1, !dbg !3951
  %or = or i64 %add, 1, !dbg !3952
  store i64 %or, i64* %upper, align 8, !dbg !3953, !tbaa !1327
  %19 = load i64, i64* %lower, align 8, !dbg !3954, !tbaa !1327
  %20 = load i64, i64* %upper, align 8, !dbg !3955, !tbaa !1327
  %21 = load i64, i64* %upper, align 8, !dbg !3956, !tbaa !1327
  %sub8 = sub i64 %21, 2, !dbg !3957
  %call9 = call i64 @bit_length(i64 %sub8), !dbg !3958
  %call10 = call %struct._object* @factorial_partial_product(i64 %19, i64 %20, i64 %call9), !dbg !3959
  store %struct._object* %call10, %struct._object** %partial, align 8, !dbg !3960, !tbaa !1091
  %22 = load %struct._object*, %struct._object** %partial, align 8, !dbg !3961, !tbaa !1091
  %cmp11 = icmp eq %struct._object* %22, null, !dbg !3963
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3964

if.then.12:                                       ; preds = %if.end.7
  br label %error, !dbg !3965

if.end.13:                                        ; preds = %if.end.7
  %23 = load %struct._object*, %struct._object** %inner, align 8, !dbg !3966, !tbaa !1091
  %24 = load %struct._object*, %struct._object** %partial, align 8, !dbg !3967, !tbaa !1091
  %call14 = call %struct._object* @PyNumber_Multiply(%struct._object* %23, %struct._object* %24), !dbg !3968
  store %struct._object* %call14, %struct._object** %tmp, align 8, !dbg !3969, !tbaa !1091
  br label %do.body, !dbg !3970

do.body:                                          ; preds = %if.end.13
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3971
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !3971
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !578, metadata !1087), !dbg !3973
  %26 = load %struct._object*, %struct._object** %partial, align 8, !dbg !3974, !tbaa !1091
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8, !dbg !3973, !tbaa !1091
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3975, !tbaa !1091
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3977
  %28 = load i64, i64* %ob_refcnt16, align 8, !dbg !3978, !tbaa !1176
  %dec = add i64 %28, -1, !dbg !3978
  store i64 %dec, i64* %ob_refcnt16, align 8, !dbg !3978, !tbaa !1176
  %cmp17 = icmp ne i64 %dec, 0, !dbg !3979
  br i1 %cmp17, label %if.then.18, label %if.else, !dbg !3980

if.then.18:                                       ; preds = %do.body
  br label %if.end.19, !dbg !3981

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3983, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3985
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3985, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !3986
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3986, !tbaa !1188
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3987, !tbaa !1091
  call void %31(%struct._object* %32), !dbg !3988
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  %33 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3989
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3989
  br label %do.cond, !dbg !3991

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !3992

do.end:                                           ; preds = %do.cond
  %34 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !3994, !tbaa !1091
  %cmp20 = icmp eq %struct._object* %34, null, !dbg !3996
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !3997

if.then.21:                                       ; preds = %do.end
  br label %error, !dbg !3998

if.end.22:                                        ; preds = %do.end
  br label %do.body.23, !dbg !3999

do.body.23:                                       ; preds = %if.end.22
  %35 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !4000
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !4000
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp25, metadata !583, metadata !1087), !dbg !4002
  %36 = load %struct._object*, %struct._object** %inner, align 8, !dbg !4003, !tbaa !1091
  store %struct._object* %36, %struct._object** %_py_decref_tmp25, align 8, !dbg !4002, !tbaa !1091
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4004, !tbaa !1091
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !4006
  %38 = load i64, i64* %ob_refcnt26, align 8, !dbg !4007, !tbaa !1176
  %dec27 = add i64 %38, -1, !dbg !4007
  store i64 %dec27, i64* %ob_refcnt26, align 8, !dbg !4007, !tbaa !1176
  %cmp28 = icmp ne i64 %dec27, 0, !dbg !4008
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !4009

if.then.29:                                       ; preds = %do.body.23
  br label %if.end.33, !dbg !4010

if.else.30:                                       ; preds = %do.body.23
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4012, !tbaa !1091
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !4014
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8, !dbg !4014, !tbaa !1186
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !4015
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8, !dbg !4015, !tbaa !1188
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8, !dbg !4016, !tbaa !1091
  call void %41(%struct._object* %42), !dbg !4017
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  %43 = bitcast %struct._object** %_py_decref_tmp25 to i8*, !dbg !4018
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !4018
  br label %do.cond.34, !dbg !4019

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !4020

do.end.35:                                        ; preds = %do.cond.34
  %44 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4022, !tbaa !1091
  store %struct._object* %44, %struct._object** %inner, align 8, !dbg !4023, !tbaa !1091
  %45 = load %struct._object*, %struct._object** %outer, align 8, !dbg !4024, !tbaa !1091
  %46 = load %struct._object*, %struct._object** %inner, align 8, !dbg !4025, !tbaa !1091
  %call36 = call %struct._object* @PyNumber_Multiply(%struct._object* %45, %struct._object* %46), !dbg !4026
  store %struct._object* %call36, %struct._object** %tmp, align 8, !dbg !4027, !tbaa !1091
  %47 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4028, !tbaa !1091
  %cmp37 = icmp eq %struct._object* %47, null, !dbg !4030
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !4031

if.then.38:                                       ; preds = %do.end.35
  br label %error, !dbg !4032

if.end.39:                                        ; preds = %do.end.35
  br label %do.body.40, !dbg !4033

do.body.40:                                       ; preds = %if.end.39
  %48 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !4034
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !4034
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !585, metadata !1087), !dbg !4036
  %49 = load %struct._object*, %struct._object** %outer, align 8, !dbg !4037, !tbaa !1091
  store %struct._object* %49, %struct._object** %_py_decref_tmp42, align 8, !dbg !4036, !tbaa !1091
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !4038, !tbaa !1091
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !4040
  %51 = load i64, i64* %ob_refcnt43, align 8, !dbg !4041, !tbaa !1176
  %dec44 = add i64 %51, -1, !dbg !4041
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !4041, !tbaa !1176
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !4042
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !4043

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50, !dbg !4044

if.else.47:                                       ; preds = %do.body.40
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !4046, !tbaa !1091
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !4048
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !4048, !tbaa !1186
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !4049
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !4049, !tbaa !1188
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !4050, !tbaa !1091
  call void %54(%struct._object* %55), !dbg !4051
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %56 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !4052
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !4052
  br label %do.cond.51, !dbg !4053

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !4054

do.end.52:                                        ; preds = %do.cond.51
  %57 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !4056, !tbaa !1091
  store %struct._object* %57, %struct._object** %outer, align 8, !dbg !4057, !tbaa !1091
  br label %for.inc, !dbg !4058

for.inc:                                          ; preds = %do.end.52, %if.then.6
  %58 = load i64, i64* %i, align 8, !dbg !4059, !tbaa !1327
  %dec53 = add i64 %58, -1, !dbg !4059
  store i64 %dec53, i64* %i, align 8, !dbg !4059, !tbaa !1327
  br label %for.cond, !dbg !4060

for.end:                                          ; preds = %for.cond
  br label %do.body.54, !dbg !4061

do.body.54:                                       ; preds = %for.end
  %59 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4062
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !4062
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !587, metadata !1087), !dbg !4064
  %60 = load %struct._object*, %struct._object** %inner, align 8, !dbg !4065, !tbaa !1091
  store %struct._object* %60, %struct._object** %_py_decref_tmp56, align 8, !dbg !4064, !tbaa !1091
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4066, !tbaa !1091
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !4068
  %62 = load i64, i64* %ob_refcnt57, align 8, !dbg !4069, !tbaa !1176
  %dec58 = add i64 %62, -1, !dbg !4069
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !4069, !tbaa !1176
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !4070
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !4071

if.then.60:                                       ; preds = %do.body.54
  br label %if.end.64, !dbg !4072

if.else.61:                                       ; preds = %do.body.54
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4074, !tbaa !1091
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !4076
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !4076, !tbaa !1186
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !4077
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !4077, !tbaa !1188
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !4078, !tbaa !1091
  call void %65(%struct._object* %66), !dbg !4079
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %67 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !4080
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !4080
  br label %do.cond.65, !dbg !4082

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !4083

do.end.66:                                        ; preds = %do.cond.65
  %68 = load %struct._object*, %struct._object** %outer, align 8, !dbg !4085, !tbaa !1091
  store %struct._object* %68, %struct._object** %retval, !dbg !4086
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4086

error:                                            ; preds = %if.then.38, %if.then.21, %if.then.12
  br label %do.body.67, !dbg !4087

do.body.67:                                       ; preds = %error
  %69 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !4088
  call void @llvm.lifetime.start(i64 8, i8* %69) #1, !dbg !4088
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp69, metadata !589, metadata !1087), !dbg !4090
  %70 = load %struct._object*, %struct._object** %outer, align 8, !dbg !4091, !tbaa !1091
  store %struct._object* %70, %struct._object** %_py_decref_tmp69, align 8, !dbg !4090, !tbaa !1091
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !4092, !tbaa !1091
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !4094
  %72 = load i64, i64* %ob_refcnt70, align 8, !dbg !4095, !tbaa !1176
  %dec71 = add i64 %72, -1, !dbg !4095
  store i64 %dec71, i64* %ob_refcnt70, align 8, !dbg !4095, !tbaa !1176
  %cmp72 = icmp ne i64 %dec71, 0, !dbg !4096
  br i1 %cmp72, label %if.then.73, label %if.else.74, !dbg !4097

if.then.73:                                       ; preds = %do.body.67
  br label %if.end.77, !dbg !4098

if.else.74:                                       ; preds = %do.body.67
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !4100, !tbaa !1091
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !4102
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8, !dbg !4102, !tbaa !1186
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !4103
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8, !dbg !4103, !tbaa !1188
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8, !dbg !4104, !tbaa !1091
  call void %75(%struct._object* %76), !dbg !4105
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  %77 = bitcast %struct._object** %_py_decref_tmp69 to i8*, !dbg !4106
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !4106
  br label %do.cond.78, !dbg !4107

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !4108

do.end.79:                                        ; preds = %do.cond.78
  br label %do.body.80, !dbg !4110

do.body.80:                                       ; preds = %do.end.79
  %78 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !4111
  call void @llvm.lifetime.start(i64 8, i8* %78) #1, !dbg !4111
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !591, metadata !1087), !dbg !4113
  %79 = load %struct._object*, %struct._object** %inner, align 8, !dbg !4114, !tbaa !1091
  store %struct._object* %79, %struct._object** %_py_decref_tmp82, align 8, !dbg !4113, !tbaa !1091
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4115, !tbaa !1091
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0, !dbg !4117
  %81 = load i64, i64* %ob_refcnt83, align 8, !dbg !4118, !tbaa !1176
  %dec84 = add i64 %81, -1, !dbg !4118
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !4118, !tbaa !1176
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !4119
  br i1 %cmp85, label %if.then.86, label %if.else.87, !dbg !4120

if.then.86:                                       ; preds = %do.body.80
  br label %if.end.90, !dbg !4121

if.else.87:                                       ; preds = %do.body.80
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4123, !tbaa !1091
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1, !dbg !4125
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8, !dbg !4125, !tbaa !1186
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4, !dbg !4126
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8, !dbg !4126, !tbaa !1188
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !4127, !tbaa !1091
  call void %84(%struct._object* %85), !dbg !4128
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  %86 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !4129
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !4129
  br label %do.cond.91, !dbg !4130

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !4131

do.end.92:                                        ; preds = %do.cond.91
  store %struct._object* null, %struct._object** %retval, !dbg !4133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4133

cleanup:                                          ; preds = %do.end.92, %do.end.66, %if.then
  %87 = bitcast %struct._object** %outer to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !4134
  %88 = bitcast %struct._object** %inner to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !4134
  %89 = bitcast %struct._object** %tmp to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !4134
  %90 = bitcast %struct._object** %partial to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !4134
  %91 = bitcast i64* %upper to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !4134
  %92 = bitcast i64* %lower to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !4134
  %93 = bitcast i64* %v to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !4134
  %94 = bitcast i64* %i to i8*, !dbg !4134
  call void @llvm.lifetime.end(i64 8, i8* %94) #1, !dbg !4134
  %95 = load %struct._object*, %struct._object** %retval, !dbg !4134
  ret %struct._object* %95, !dbg !4134
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind uwtable
define internal i64 @count_set_bits(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %count = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !627, metadata !1087), !dbg !4135
  %0 = bitcast i64* %count to i8*, !dbg !4136
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4136
  call void @llvm.dbg.declare(metadata i64* %count, metadata !628, metadata !1087), !dbg !4137
  store i64 0, i64* %count, align 8, !dbg !4137, !tbaa !1327
  br label %while.cond, !dbg !4138

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !4139, !tbaa !1327
  %cmp = icmp ne i64 %1, 0, !dbg !4142
  br i1 %cmp, label %while.body, label %while.end, !dbg !4138

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %count, align 8, !dbg !4143, !tbaa !1327
  %inc = add i64 %2, 1, !dbg !4143
  store i64 %inc, i64* %count, align 8, !dbg !4143, !tbaa !1327
  %3 = load i64, i64* %n.addr, align 8, !dbg !4145, !tbaa !1327
  %sub = sub i64 %3, 1, !dbg !4146
  %4 = load i64, i64* %n.addr, align 8, !dbg !4147, !tbaa !1327
  %and = and i64 %4, %sub, !dbg !4147
  store i64 %and, i64* %n.addr, align 8, !dbg !4147, !tbaa !1327
  br label %while.cond, !dbg !4138

while.end:                                        ; preds = %while.cond
  %5 = load i64, i64* %count, align 8, !dbg !4148, !tbaa !1327
  %6 = bitcast i64* %count to i8*, !dbg !4149
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !4149
  ret i64 %5, !dbg !4150
}

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i64 @bit_length(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %len = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !597, metadata !1087), !dbg !4151
  %0 = bitcast i64* %len to i8*, !dbg !4152
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4152
  call void @llvm.dbg.declare(metadata i64* %len, metadata !598, metadata !1087), !dbg !4153
  store i64 0, i64* %len, align 8, !dbg !4153, !tbaa !1327
  br label %while.cond, !dbg !4154

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %n.addr, align 8, !dbg !4155, !tbaa !1327
  %cmp = icmp ne i64 %1, 0, !dbg !4158
  br i1 %cmp, label %while.body, label %while.end, !dbg !4154

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %len, align 8, !dbg !4159, !tbaa !1327
  %inc = add i64 %2, 1, !dbg !4159
  store i64 %inc, i64* %len, align 8, !dbg !4159, !tbaa !1327
  %3 = load i64, i64* %n.addr, align 8, !dbg !4161, !tbaa !1327
  %shr = lshr i64 %3, 1, !dbg !4161
  store i64 %shr, i64* %n.addr, align 8, !dbg !4161, !tbaa !1327
  br label %while.cond, !dbg !4154

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %len, align 8, !dbg !4162, !tbaa !1327
  %5 = bitcast i64* %len to i8*, !dbg !4163
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !4163
  ret i64 %4, !dbg !4164
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store i64 %start, i64* %start.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %start.addr, metadata !603, metadata !1087), !dbg !4165
  store i64 %stop, i64* %stop.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %stop.addr, metadata !604, metadata !1087), !dbg !4166
  store i64 %max_bits, i64* %max_bits.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %max_bits.addr, metadata !605, metadata !1087), !dbg !4167
  %0 = bitcast i64* %midpoint to i8*, !dbg !4168
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4168
  call void @llvm.dbg.declare(metadata i64* %midpoint, metadata !606, metadata !1087), !dbg !4169
  %1 = bitcast i64* %num_operands to i8*, !dbg !4168
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4168
  call void @llvm.dbg.declare(metadata i64* %num_operands, metadata !607, metadata !1087), !dbg !4170
  %2 = bitcast %struct._object** %left to i8*, !dbg !4171
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4171
  call void @llvm.dbg.declare(metadata %struct._object** %left, metadata !608, metadata !1087), !dbg !4172
  store %struct._object* null, %struct._object** %left, align 8, !dbg !4172, !tbaa !1091
  %3 = bitcast %struct._object** %right to i8*, !dbg !4171
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4171
  call void @llvm.dbg.declare(metadata %struct._object** %right, metadata !609, metadata !1087), !dbg !4173
  store %struct._object* null, %struct._object** %right, align 8, !dbg !4173, !tbaa !1091
  %4 = bitcast %struct._object** %result to i8*, !dbg !4171
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4171
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !610, metadata !1087), !dbg !4174
  store %struct._object* null, %struct._object** %result, align 8, !dbg !4174, !tbaa !1091
  %5 = load i64, i64* %stop.addr, align 8, !dbg !4175, !tbaa !1327
  %6 = load i64, i64* %start.addr, align 8, !dbg !4176, !tbaa !1327
  %sub = sub i64 %5, %6, !dbg !4177
  %div = udiv i64 %sub, 2, !dbg !4178
  store i64 %div, i64* %num_operands, align 8, !dbg !4179, !tbaa !1327
  %7 = load i64, i64* %num_operands, align 8, !dbg !4180, !tbaa !1327
  %cmp = icmp ule i64 %7, 64, !dbg !4181
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4182

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* %num_operands, align 8, !dbg !4183, !tbaa !1327
  %9 = load i64, i64* %max_bits.addr, align 8, !dbg !4184, !tbaa !1327
  %mul = mul i64 %8, %9, !dbg !4185
  %cmp1 = icmp ule i64 %mul, 64, !dbg !4186
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4187

if.then:                                          ; preds = %land.lhs.true
  %10 = bitcast i64* %j to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4188
  call void @llvm.dbg.declare(metadata i64* %j, metadata !611, metadata !1087), !dbg !4189
  %11 = bitcast i64* %total to i8*, !dbg !4188
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !4188
  call void @llvm.dbg.declare(metadata i64* %total, metadata !614, metadata !1087), !dbg !4190
  %12 = load i64, i64* %start.addr, align 8, !dbg !4191, !tbaa !1327
  store i64 %12, i64* %total, align 8, !dbg !4193, !tbaa !1327
  %13 = load i64, i64* %start.addr, align 8, !dbg !4194, !tbaa !1327
  %add = add i64 %13, 2, !dbg !4195
  store i64 %add, i64* %j, align 8, !dbg !4196, !tbaa !1327
  br label %for.cond, !dbg !4197

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i64, i64* %j, align 8, !dbg !4198, !tbaa !1327
  %15 = load i64, i64* %stop.addr, align 8, !dbg !4202, !tbaa !1327
  %cmp2 = icmp ult i64 %14, %15, !dbg !4203
  br i1 %cmp2, label %for.body, label %for.end, !dbg !4204

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %j, align 8, !dbg !4205, !tbaa !1327
  %17 = load i64, i64* %total, align 8, !dbg !4206, !tbaa !1327
  %mul3 = mul i64 %17, %16, !dbg !4206
  store i64 %mul3, i64* %total, align 8, !dbg !4206, !tbaa !1327
  br label %for.inc, !dbg !4207

for.inc:                                          ; preds = %for.body
  %18 = load i64, i64* %j, align 8, !dbg !4208, !tbaa !1327
  %add4 = add i64 %18, 2, !dbg !4208
  store i64 %add4, i64* %j, align 8, !dbg !4208, !tbaa !1327
  br label %for.cond, !dbg !4209

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %total, align 8, !dbg !4210, !tbaa !1327
  %call = call %struct._object* @PyLong_FromUnsignedLong(i64 %19), !dbg !4211
  store %struct._object* %call, %struct._object** %retval, !dbg !4212
  store i32 1, i32* %cleanup.dest.slot
  %20 = bitcast i64* %total to i8*, !dbg !4213
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4213
  %21 = bitcast i64* %j to i8*, !dbg !4213
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !4213
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %22 = load i64, i64* %start.addr, align 8, !dbg !4214, !tbaa !1327
  %23 = load i64, i64* %num_operands, align 8, !dbg !4215, !tbaa !1327
  %add5 = add i64 %22, %23, !dbg !4216
  %or = or i64 %add5, 1, !dbg !4217
  store i64 %or, i64* %midpoint, align 8, !dbg !4218, !tbaa !1327
  %24 = load i64, i64* %start.addr, align 8, !dbg !4219, !tbaa !1327
  %25 = load i64, i64* %midpoint, align 8, !dbg !4220, !tbaa !1327
  %26 = load i64, i64* %midpoint, align 8, !dbg !4221, !tbaa !1327
  %sub6 = sub i64 %26, 2, !dbg !4222
  %call7 = call i64 @bit_length(i64 %sub6), !dbg !4223
  %call8 = call %struct._object* @factorial_partial_product(i64 %24, i64 %25, i64 %call7), !dbg !4224
  store %struct._object* %call8, %struct._object** %left, align 8, !dbg !4225, !tbaa !1091
  %27 = load %struct._object*, %struct._object** %left, align 8, !dbg !4226, !tbaa !1091
  %cmp9 = icmp eq %struct._object* %27, null, !dbg !4228
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !4229

if.then.10:                                       ; preds = %if.end
  br label %error, !dbg !4230

if.end.11:                                        ; preds = %if.end
  %28 = load i64, i64* %midpoint, align 8, !dbg !4231, !tbaa !1327
  %29 = load i64, i64* %stop.addr, align 8, !dbg !4232, !tbaa !1327
  %30 = load i64, i64* %max_bits.addr, align 8, !dbg !4233, !tbaa !1327
  %call12 = call %struct._object* @factorial_partial_product(i64 %28, i64 %29, i64 %30), !dbg !4234
  store %struct._object* %call12, %struct._object** %right, align 8, !dbg !4235, !tbaa !1091
  %31 = load %struct._object*, %struct._object** %right, align 8, !dbg !4236, !tbaa !1091
  %cmp13 = icmp eq %struct._object* %31, null, !dbg !4238
  br i1 %cmp13, label %if.then.14, label %if.end.15, !dbg !4239

if.then.14:                                       ; preds = %if.end.11
  br label %error, !dbg !4240

if.end.15:                                        ; preds = %if.end.11
  %32 = load %struct._object*, %struct._object** %left, align 8, !dbg !4241, !tbaa !1091
  %33 = load %struct._object*, %struct._object** %right, align 8, !dbg !4242, !tbaa !1091
  %call16 = call %struct._object* @PyNumber_Multiply(%struct._object* %32, %struct._object* %33), !dbg !4243
  store %struct._object* %call16, %struct._object** %result, align 8, !dbg !4244, !tbaa !1091
  br label %error, !dbg !4245

error:                                            ; preds = %if.end.15, %if.then.14, %if.then.10
  br label %do.body, !dbg !4246

do.body:                                          ; preds = %error
  %34 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4247
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !4247
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !615, metadata !1087), !dbg !4249
  %35 = load %struct._object*, %struct._object** %left, align 8, !dbg !4250, !tbaa !1091
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4249, !tbaa !1091
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4251, !tbaa !1091
  %cmp17 = icmp ne %struct._object* %36, null, !dbg !4252
  br i1 %cmp17, label %if.then.18, label %if.end.23, !dbg !4253

if.then.18:                                       ; preds = %do.body
  br label %do.body.19, !dbg !4254

do.body.19:                                       ; preds = %if.then.18
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4256
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !4256
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !617, metadata !1087), !dbg !4258
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4259, !tbaa !1091
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8, !dbg !4258, !tbaa !1091
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4260, !tbaa !1091
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !4262
  %40 = load i64, i64* %ob_refcnt, align 8, !dbg !4263, !tbaa !1176
  %dec = add i64 %40, -1, !dbg !4263
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4263, !tbaa !1176
  %cmp20 = icmp ne i64 %dec, 0, !dbg !4264
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !4265

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.22, !dbg !4266

if.else:                                          ; preds = %do.body.19
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4268, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !4270
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4270, !tbaa !1186
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !4271
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4271, !tbaa !1188
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4272, !tbaa !1091
  call void %43(%struct._object* %44), !dbg !4273
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4274
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !4274
  br label %do.cond, !dbg !4276

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !4277

do.end:                                           ; preds = %do.cond
  br label %if.end.23, !dbg !4279

if.end.23:                                        ; preds = %do.end, %do.body
  %46 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4281
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !4281
  br label %do.cond.24, !dbg !4284

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !4285

do.end.25:                                        ; preds = %do.cond.24
  br label %do.body.26, !dbg !4287

do.body.26:                                       ; preds = %do.end.25
  %47 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !4288
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !4288
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !620, metadata !1087), !dbg !4290
  %48 = load %struct._object*, %struct._object** %right, align 8, !dbg !4291, !tbaa !1091
  store %struct._object* %48, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !4290, !tbaa !1091
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !4292, !tbaa !1091
  %cmp28 = icmp ne %struct._object* %49, null, !dbg !4293
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !4294

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !4295

do.body.30:                                       ; preds = %if.then.29
  %50 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !4297
  call void @llvm.lifetime.start(i64 8, i8* %50) #1, !dbg !4297
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !622, metadata !1087), !dbg !4299
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !4300, !tbaa !1091
  store %struct._object* %51, %struct._object** %_py_decref_tmp31, align 8, !dbg !4299, !tbaa !1091
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !4301, !tbaa !1091
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0, !dbg !4303
  %53 = load i64, i64* %ob_refcnt32, align 8, !dbg !4304, !tbaa !1176
  %dec33 = add i64 %53, -1, !dbg !4304
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !4304, !tbaa !1176
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !4305
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !4306

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !4307

if.else.36:                                       ; preds = %do.body.30
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !4309, !tbaa !1091
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1, !dbg !4311
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !4311, !tbaa !1186
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4, !dbg !4312
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !4312, !tbaa !1188
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !4313, !tbaa !1091
  call void %56(%struct._object* %57), !dbg !4314
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %58 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !4315
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !4315
  br label %do.cond.40, !dbg !4317

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !4318

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !4320

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %59 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !4322
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !4322
  br label %do.cond.43, !dbg !4323

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !4324

do.end.44:                                        ; preds = %do.cond.43
  %60 = load %struct._object*, %struct._object** %result, align 8, !dbg !4326, !tbaa !1091
  store %struct._object* %60, %struct._object** %retval, !dbg !4327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4327

cleanup:                                          ; preds = %do.end.44, %for.end
  %61 = bitcast %struct._object** %result to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !4328
  %62 = bitcast %struct._object** %right to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !4328
  %63 = bitcast %struct._object** %left to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !4328
  %64 = bitcast i64* %num_operands to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !4328
  %65 = bitcast i64* %midpoint to i8*, !dbg !4328
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !4328
  %66 = load %struct._object*, %struct._object** %retval, !dbg !4328
  ret %struct._object* %66, !dbg !4328
}

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #4

; Function Attrs: nounwind
declare double @frexp(double, i32*) #4

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare %struct._object* @PyObject_GetIter(%struct._object*) #3

declare %struct._object* @PyIter_Next(%struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  store double** %p_ptr, double*** %p_ptr.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double*** %p_ptr.addr, metadata !690, metadata !1087), !dbg !4329
  store i64 %n, i64* %n.addr, align 8, !tbaa !1327
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !691, metadata !1087), !dbg !4330
  store double* %ps, double** %ps.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double** %ps.addr, metadata !692, metadata !1087), !dbg !4331
  store i64* %m_ptr, i64** %m_ptr.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata i64** %m_ptr.addr, metadata !693, metadata !1087), !dbg !4332
  %0 = bitcast i8** %v to i8*, !dbg !4333
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4333
  call void @llvm.dbg.declare(metadata i8** %v, metadata !694, metadata !1087), !dbg !4334
  store i8* null, i8** %v, align 8, !dbg !4334, !tbaa !1091
  %1 = bitcast i64* %m to i8*, !dbg !4335
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4335
  call void @llvm.dbg.declare(metadata i64* %m, metadata !695, metadata !1087), !dbg !4336
  %2 = load i64*, i64** %m_ptr.addr, align 8, !dbg !4337, !tbaa !1091
  %3 = load i64, i64* %2, align 8, !dbg !4338, !tbaa !1327
  store i64 %3, i64* %m, align 8, !dbg !4336, !tbaa !1327
  %4 = load i64, i64* %m, align 8, !dbg !4339, !tbaa !1327
  %5 = load i64, i64* %m, align 8, !dbg !4340, !tbaa !1327
  %add = add i64 %5, %4, !dbg !4340
  store i64 %add, i64* %m, align 8, !dbg !4340, !tbaa !1327
  %6 = load i64, i64* %n.addr, align 8, !dbg !4341, !tbaa !1327
  %7 = load i64, i64* %m, align 8, !dbg !4342, !tbaa !1327
  %cmp = icmp slt i64 %6, %7, !dbg !4343
  br i1 %cmp, label %land.lhs.true, label %if.end.10, !dbg !4344

land.lhs.true:                                    ; preds = %entry
  %8 = load i64, i64* %m, align 8, !dbg !4345, !tbaa !1327
  %cmp1 = icmp ult i64 %8, 1152921504606846975, !dbg !4347
  br i1 %cmp1, label %if.then, label %if.end.10, !dbg !4348

if.then:                                          ; preds = %land.lhs.true
  %9 = bitcast double** %p to i8*, !dbg !4349
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4349
  call void @llvm.dbg.declare(metadata double** %p, metadata !696, metadata !1087), !dbg !4350
  %10 = load double**, double*** %p_ptr.addr, align 8, !dbg !4351, !tbaa !1091
  %11 = load double*, double** %10, align 8, !dbg !4352, !tbaa !1091
  store double* %11, double** %p, align 8, !dbg !4350, !tbaa !1091
  %12 = load double*, double** %p, align 8, !dbg !4353, !tbaa !1091
  %13 = load double*, double** %ps.addr, align 8, !dbg !4355, !tbaa !1091
  %cmp2 = icmp eq double* %12, %13, !dbg !4356
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !4357

if.then.3:                                        ; preds = %if.then
  %14 = load i64, i64* %m, align 8, !dbg !4358, !tbaa !1327
  %mul = mul i64 8, %14, !dbg !4360
  %call = call i8* @PyMem_Malloc(i64 %mul), !dbg !4361
  store i8* %call, i8** %v, align 8, !dbg !4362, !tbaa !1091
  %15 = load i8*, i8** %v, align 8, !dbg !4363, !tbaa !1091
  %cmp4 = icmp ne i8* %15, null, !dbg !4365
  br i1 %cmp4, label %if.then.5, label %if.end, !dbg !4366

if.then.5:                                        ; preds = %if.then.3
  %16 = load i8*, i8** %v, align 8, !dbg !4367, !tbaa !1091
  %17 = load double*, double** %ps.addr, align 8, !dbg !4368, !tbaa !1091
  %18 = bitcast double* %17 to i8*, !dbg !4369
  %19 = load i64, i64* %n.addr, align 8, !dbg !4370, !tbaa !1327
  %mul6 = mul i64 8, %19, !dbg !4371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %18, i64 %mul6, i32 1, i1 false), !dbg !4369
  br label %if.end, !dbg !4369

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.9, !dbg !4372

if.else:                                          ; preds = %if.then
  %20 = load double*, double** %p, align 8, !dbg !4373, !tbaa !1091
  %21 = bitcast double* %20 to i8*, !dbg !4373
  %22 = load i64, i64* %m, align 8, !dbg !4374, !tbaa !1327
  %mul7 = mul i64 8, %22, !dbg !4375
  %call8 = call i8* @PyMem_Realloc(i8* %21, i64 %mul7), !dbg !4376
  store i8* %call8, i8** %v, align 8, !dbg !4377, !tbaa !1091
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.end
  %23 = bitcast double** %p to i8*, !dbg !4378
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !4378
  br label %if.end.10, !dbg !4379

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true, %entry
  %24 = load i8*, i8** %v, align 8, !dbg !4380, !tbaa !1091
  %cmp11 = icmp eq i8* %24, null, !dbg !4382
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !4383

if.then.12:                                       ; preds = %if.end.10
  %25 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4384, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0)), !dbg !4386
  store i32 1, i32* %retval, !dbg !4387
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4387

if.end.13:                                        ; preds = %if.end.10
  %26 = load i8*, i8** %v, align 8, !dbg !4388, !tbaa !1091
  %27 = bitcast i8* %26 to double*, !dbg !4389
  %28 = load double**, double*** %p_ptr.addr, align 8, !dbg !4390, !tbaa !1091
  store double* %27, double** %28, align 8, !dbg !4391, !tbaa !1091
  %29 = load i64, i64* %m, align 8, !dbg !4392, !tbaa !1327
  %30 = load i64*, i64** %m_ptr.addr, align 8, !dbg !4393, !tbaa !1091
  store i64 %29, i64* %30, align 8, !dbg !4394, !tbaa !1327
  store i32 0, i32* %retval, !dbg !4395
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4395

cleanup:                                          ; preds = %if.end.13, %if.then.12
  %31 = bitcast i64* %m to i8*, !dbg !4396
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !4396
  %32 = bitcast i8** %v to i8*, !dbg !4396
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !4396
  %33 = load i32, i32* %retval, !dbg !4396
  ret i32 %33, !dbg !4396
}

declare void @PyMem_Free(i8*) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i8* @PyMem_Realloc(i8*, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %q = alloca double, align 8
  %q81 = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !705, metadata !1087), !dbg !4397
  %0 = bitcast double* %absx to i8*, !dbg !4398
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4398
  call void @llvm.dbg.declare(metadata double* %absx, metadata !706, metadata !1087), !dbg !4399
  %1 = bitcast double* %r to i8*, !dbg !4398
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4398
  call void @llvm.dbg.declare(metadata double* %r, metadata !707, metadata !1087), !dbg !4400
  %2 = bitcast double* %y to i8*, !dbg !4398
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4398
  call void @llvm.dbg.declare(metadata double* %y, metadata !708, metadata !1087), !dbg !4401
  %3 = bitcast double* %z to i8*, !dbg !4398
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4398
  call void @llvm.dbg.declare(metadata double* %z, metadata !709, metadata !1087), !dbg !4402
  %4 = bitcast double* %sqrtpow to i8*, !dbg !4398
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4398
  call void @llvm.dbg.declare(metadata double* %sqrtpow, metadata !710, metadata !1087), !dbg !4403
  br i1 false, label %cond.true, label %cond.false, !dbg !4404

cond.true:                                        ; preds = %entry
  %5 = load double, double* %x.addr, align 8, !dbg !4405, !tbaa !1223
  %conv = fptrunc double %5 to float, !dbg !4405
  %call = call i32 @__finitef(float %conv) #2, !dbg !4408
  %tobool = icmp ne i32 %call, 0, !dbg !4408
  br i1 %tobool, label %if.end, label %if.then, !dbg !4409

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !4410

cond.true.1:                                      ; preds = %cond.false
  %6 = load double, double* %x.addr, align 8, !dbg !4412, !tbaa !1223
  %call2 = call i32 @__finite(double %6) #2, !dbg !4414
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4414
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4415

cond.false.4:                                     ; preds = %cond.false
  %7 = load double, double* %x.addr, align 8, !dbg !4416, !tbaa !1223
  %conv5 = fpext double %7 to x86_fp80, !dbg !4416
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #2, !dbg !4418
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4418
  br i1 %tobool7, label %if.end, label %if.then, !dbg !4404

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12, !dbg !4419

cond.true.8:                                      ; preds = %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !4422, !tbaa !1223
  %conv9 = fptrunc double %8 to float, !dbg !4422
  %call10 = call i32 @__isnanf(float %conv9) #2, !dbg !4424
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4424
  br i1 %tobool11, label %if.then.21, label %lor.lhs.false, !dbg !4425

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16, !dbg !4426

cond.true.13:                                     ; preds = %cond.false.12
  %9 = load double, double* %x.addr, align 8, !dbg !4428, !tbaa !1223
  %call14 = call i32 @__isnan(double %9) #2, !dbg !4430
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4430
  br i1 %tobool15, label %if.then.21, label %lor.lhs.false, !dbg !4431

cond.false.16:                                    ; preds = %cond.false.12
  %10 = load double, double* %x.addr, align 8, !dbg !4432, !tbaa !1223
  %conv17 = fpext double %10 to x86_fp80, !dbg !4432
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #2, !dbg !4434
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4434
  br i1 %tobool19, label %if.then.21, label %lor.lhs.false, !dbg !4419

lor.lhs.false:                                    ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %11 = load double, double* %x.addr, align 8, !dbg !4435, !tbaa !1223
  %cmp = fcmp ogt double %11, 0.000000e+00, !dbg !4439
  br i1 %cmp, label %if.then.21, label %if.else, !dbg !4440

if.then.21:                                       ; preds = %lor.lhs.false, %cond.false.16, %cond.true.13, %cond.true.8
  %12 = load double, double* %x.addr, align 8, !dbg !4441, !tbaa !1223
  store double %12, double* %retval, !dbg !4442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4442

if.else:                                          ; preds = %lor.lhs.false
  %call22 = call i32* @__errno_location() #2, !dbg !4443
  store i32 33, i32* %call22, align 4, !dbg !4445, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !4446
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4446

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %13 = load double, double* %x.addr, align 8, !dbg !4447, !tbaa !1223
  %cmp23 = fcmp oeq double %13, 0.000000e+00, !dbg !4449
  br i1 %cmp23, label %if.then.25, label %if.end.28, !dbg !4450

if.then.25:                                       ; preds = %if.end
  %call26 = call i32* @__errno_location() #2, !dbg !4451
  store i32 33, i32* %call26, align 4, !dbg !4453, !tbaa !1599
  %14 = load double, double* %x.addr, align 8, !dbg !4454, !tbaa !1223
  %call27 = call double @copysign(double 0x7FF0000000000000, double %14) #2, !dbg !4455
  store double %call27, double* %retval, !dbg !4456
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4456

if.end.28:                                        ; preds = %if.end
  %15 = load double, double* %x.addr, align 8, !dbg !4457, !tbaa !1223
  %16 = load double, double* %x.addr, align 8, !dbg !4459, !tbaa !1223
  %call29 = call double @floor(double %16) #2, !dbg !4460
  %cmp30 = fcmp oeq double %15, %call29, !dbg !4461
  br i1 %cmp30, label %if.then.32, label %if.end.43, !dbg !4462

if.then.32:                                       ; preds = %if.end.28
  %17 = load double, double* %x.addr, align 8, !dbg !4463, !tbaa !1223
  %cmp33 = fcmp olt double %17, 0.000000e+00, !dbg !4466
  br i1 %cmp33, label %if.then.35, label %if.end.37, !dbg !4467

if.then.35:                                       ; preds = %if.then.32
  %call36 = call i32* @__errno_location() #2, !dbg !4468
  store i32 33, i32* %call36, align 4, !dbg !4470, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !4471
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4471

if.end.37:                                        ; preds = %if.then.32
  %18 = load double, double* %x.addr, align 8, !dbg !4472, !tbaa !1223
  %cmp38 = fcmp ole double %18, 2.300000e+01, !dbg !4474
  br i1 %cmp38, label %if.then.40, label %if.end.42, !dbg !4475

if.then.40:                                       ; preds = %if.end.37
  %19 = load double, double* %x.addr, align 8, !dbg !4476, !tbaa !1223
  %conv41 = fptosi double %19 to i32, !dbg !4477
  %sub = sub i32 %conv41, 1, !dbg !4478
  %idxprom = sext i32 %sub to i64, !dbg !4479
  %arrayidx = getelementptr [23 x double], [23 x double]* @gamma_integral, i32 0, i64 %idxprom, !dbg !4479
  %20 = load double, double* %arrayidx, align 8, !dbg !4479, !tbaa !1223
  store double %20, double* %retval, !dbg !4480
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4480

if.end.42:                                        ; preds = %if.end.37
  br label %if.end.43, !dbg !4481

if.end.43:                                        ; preds = %if.end.42, %if.end.28
  %21 = load double, double* %x.addr, align 8, !dbg !4482, !tbaa !1223
  %call44 = call double @fabs(double %21) #2, !dbg !4483
  store double %call44, double* %absx, align 8, !dbg !4484, !tbaa !1223
  %22 = load double, double* %absx, align 8, !dbg !4485, !tbaa !1223
  %cmp45 = fcmp olt double %22, 1.000000e-20, !dbg !4487
  br i1 %cmp45, label %if.then.47, label %if.end.63, !dbg !4488

if.then.47:                                       ; preds = %if.end.43
  %23 = load double, double* %x.addr, align 8, !dbg !4489, !tbaa !1223
  %div = fdiv double 1.000000e+00, %23, !dbg !4491
  store double %div, double* %r, align 8, !dbg !4492, !tbaa !1223
  br i1 false, label %cond.true.48, label %cond.false.52, !dbg !4493

cond.true.48:                                     ; preds = %if.then.47
  %24 = load double, double* %r, align 8, !dbg !4494, !tbaa !1223
  %conv49 = fptrunc double %24 to float, !dbg !4494
  %call50 = call i32 @__isinff(float %conv49) #2, !dbg !4497
  %tobool51 = icmp ne i32 %call50, 0, !dbg !4497
  br i1 %tobool51, label %if.then.60, label %if.end.62, !dbg !4498

cond.false.52:                                    ; preds = %if.then.47
  br i1 true, label %cond.true.53, label %cond.false.56, !dbg !4499

cond.true.53:                                     ; preds = %cond.false.52
  %25 = load double, double* %r, align 8, !dbg !4501, !tbaa !1223
  %call54 = call i32 @__isinf(double %25) #2, !dbg !4503
  %tobool55 = icmp ne i32 %call54, 0, !dbg !4503
  br i1 %tobool55, label %if.then.60, label %if.end.62, !dbg !4504

cond.false.56:                                    ; preds = %cond.false.52
  %26 = load double, double* %r, align 8, !dbg !4505, !tbaa !1223
  %conv57 = fpext double %26 to x86_fp80, !dbg !4505
  %call58 = call i32 @__isinfl(x86_fp80 %conv57) #2, !dbg !4507
  %tobool59 = icmp ne i32 %call58, 0, !dbg !4507
  br i1 %tobool59, label %if.then.60, label %if.end.62, !dbg !4493

if.then.60:                                       ; preds = %cond.false.56, %cond.true.53, %cond.true.48
  %call61 = call i32* @__errno_location() #2, !dbg !4508
  store i32 34, i32* %call61, align 4, !dbg !4509, !tbaa !1599
  br label %if.end.62, !dbg !4510

if.end.62:                                        ; preds = %if.then.60, %cond.false.56, %cond.true.53, %cond.true.48
  %27 = load double, double* %r, align 8, !dbg !4511, !tbaa !1223
  store double %27, double* %retval, !dbg !4512
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4512

if.end.63:                                        ; preds = %if.end.43
  %28 = load double, double* %absx, align 8, !dbg !4513, !tbaa !1223
  %cmp64 = fcmp ogt double %28, 2.000000e+02, !dbg !4515
  br i1 %cmp64, label %if.then.66, label %if.end.74, !dbg !4516

if.then.66:                                       ; preds = %if.end.63
  %29 = load double, double* %x.addr, align 8, !dbg !4517, !tbaa !1223
  %cmp67 = fcmp olt double %29, 0.000000e+00, !dbg !4520
  br i1 %cmp67, label %if.then.69, label %if.else.72, !dbg !4521

if.then.69:                                       ; preds = %if.then.66
  %30 = load double, double* %x.addr, align 8, !dbg !4522, !tbaa !1223
  %call70 = call double @sinpi(double %30), !dbg !4524
  %div71 = fdiv double 0.000000e+00, %call70, !dbg !4525
  store double %div71, double* %retval, !dbg !4526
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4526

if.else.72:                                       ; preds = %if.then.66
  %call73 = call i32* @__errno_location() #2, !dbg !4527
  store i32 34, i32* %call73, align 4, !dbg !4529, !tbaa !1599
  store double 0x7FF0000000000000, double* %retval, !dbg !4530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4530

if.end.74:                                        ; preds = %if.end.63
  %31 = load double, double* %absx, align 8, !dbg !4531, !tbaa !1223
  %add = fadd double %31, 0x40161945B9800000, !dbg !4532
  store double %add, double* %y, align 8, !dbg !4533, !tbaa !1223
  %32 = load double, double* %absx, align 8, !dbg !4534, !tbaa !1223
  %cmp75 = fcmp ogt double %32, 0x40161945B9800000, !dbg !4535
  br i1 %cmp75, label %if.then.77, label %if.else.80, !dbg !4536

if.then.77:                                       ; preds = %if.end.74
  %33 = bitcast double* %q to i8*, !dbg !4537
  call void @llvm.lifetime.start(i64 8, i8* %33) #1, !dbg !4537
  call void @llvm.dbg.declare(metadata double* %q, metadata !711, metadata !1087), !dbg !4538
  %34 = load double, double* %y, align 8, !dbg !4539, !tbaa !1223
  %35 = load double, double* %absx, align 8, !dbg !4540, !tbaa !1223
  %sub78 = fsub double %34, %35, !dbg !4541
  store double %sub78, double* %q, align 8, !dbg !4538, !tbaa !1223
  %36 = load double, double* %q, align 8, !dbg !4542, !tbaa !1223
  %sub79 = fsub double %36, 0x40161945B9800000, !dbg !4543
  store double %sub79, double* %z, align 8, !dbg !4544, !tbaa !1223
  %37 = bitcast double* %q to i8*, !dbg !4545
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !4545
  br label %if.end.84, !dbg !4546

if.else.80:                                       ; preds = %if.end.74
  %38 = bitcast double* %q81 to i8*, !dbg !4547
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !4547
  call void @llvm.dbg.declare(metadata double* %q81, metadata !714, metadata !1087), !dbg !4548
  %39 = load double, double* %y, align 8, !dbg !4549, !tbaa !1223
  %sub82 = fsub double %39, 0x40161945B9800000, !dbg !4550
  store double %sub82, double* %q81, align 8, !dbg !4548, !tbaa !1223
  %40 = load double, double* %q81, align 8, !dbg !4551, !tbaa !1223
  %41 = load double, double* %absx, align 8, !dbg !4552, !tbaa !1223
  %sub83 = fsub double %40, %41, !dbg !4553
  store double %sub83, double* %z, align 8, !dbg !4554, !tbaa !1223
  %42 = bitcast double* %q81 to i8*, !dbg !4555
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !4555
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.80, %if.then.77
  %43 = load double, double* %z, align 8, !dbg !4556, !tbaa !1223
  %mul = fmul double %43, 0x40181945B9800000, !dbg !4557
  %44 = load double, double* %y, align 8, !dbg !4558, !tbaa !1223
  %div85 = fdiv double %mul, %44, !dbg !4559
  store double %div85, double* %z, align 8, !dbg !4560, !tbaa !1223
  %45 = load double, double* %x.addr, align 8, !dbg !4561, !tbaa !1223
  %cmp86 = fcmp olt double %45, 0.000000e+00, !dbg !4563
  br i1 %cmp86, label %if.then.88, label %if.else.111, !dbg !4564

if.then.88:                                       ; preds = %if.end.84
  %46 = load double, double* %absx, align 8, !dbg !4565, !tbaa !1223
  %call89 = call double @sinpi(double %46), !dbg !4567
  %div90 = fdiv double 0xC00921FB54442D18, %call89, !dbg !4568
  %47 = load double, double* %absx, align 8, !dbg !4569, !tbaa !1223
  %div91 = fdiv double %div90, %47, !dbg !4570
  %48 = load double, double* %y, align 8, !dbg !4571, !tbaa !1223
  %call92 = call double @exp(double %48) #1, !dbg !4572
  %mul93 = fmul double %div91, %call92, !dbg !4573
  %49 = load double, double* %absx, align 8, !dbg !4574, !tbaa !1223
  %call94 = call double @lanczos_sum(double %49), !dbg !4575
  %div95 = fdiv double %mul93, %call94, !dbg !4576
  store double %div95, double* %r, align 8, !dbg !4577, !tbaa !1223
  %50 = load double, double* %z, align 8, !dbg !4578, !tbaa !1223
  %51 = load double, double* %r, align 8, !dbg !4579, !tbaa !1223
  %mul96 = fmul double %50, %51, !dbg !4580
  %52 = load double, double* %r, align 8, !dbg !4581, !tbaa !1223
  %sub97 = fsub double %52, %mul96, !dbg !4581
  store double %sub97, double* %r, align 8, !dbg !4581, !tbaa !1223
  %53 = load double, double* %absx, align 8, !dbg !4582, !tbaa !1223
  %cmp98 = fcmp olt double %53, 1.400000e+02, !dbg !4584
  br i1 %cmp98, label %if.then.100, label %if.else.104, !dbg !4585

if.then.100:                                      ; preds = %if.then.88
  %54 = load double, double* %y, align 8, !dbg !4586, !tbaa !1223
  %55 = load double, double* %absx, align 8, !dbg !4588, !tbaa !1223
  %sub101 = fsub double %55, 5.000000e-01, !dbg !4589
  %call102 = call double @pow(double %54, double %sub101) #1, !dbg !4590
  %56 = load double, double* %r, align 8, !dbg !4591, !tbaa !1223
  %div103 = fdiv double %56, %call102, !dbg !4591
  store double %div103, double* %r, align 8, !dbg !4591, !tbaa !1223
  br label %if.end.110, !dbg !4592

if.else.104:                                      ; preds = %if.then.88
  %57 = load double, double* %y, align 8, !dbg !4593, !tbaa !1223
  %58 = load double, double* %absx, align 8, !dbg !4595, !tbaa !1223
  %div105 = fdiv double %58, 2.000000e+00, !dbg !4596
  %sub106 = fsub double %div105, 2.500000e-01, !dbg !4597
  %call107 = call double @pow(double %57, double %sub106) #1, !dbg !4598
  store double %call107, double* %sqrtpow, align 8, !dbg !4599, !tbaa !1223
  %59 = load double, double* %sqrtpow, align 8, !dbg !4600, !tbaa !1223
  %60 = load double, double* %r, align 8, !dbg !4601, !tbaa !1223
  %div108 = fdiv double %60, %59, !dbg !4601
  store double %div108, double* %r, align 8, !dbg !4601, !tbaa !1223
  %61 = load double, double* %sqrtpow, align 8, !dbg !4602, !tbaa !1223
  %62 = load double, double* %r, align 8, !dbg !4603, !tbaa !1223
  %div109 = fdiv double %62, %61, !dbg !4603
  store double %div109, double* %r, align 8, !dbg !4603, !tbaa !1223
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.104, %if.then.100
  br label %if.end.130, !dbg !4604

if.else.111:                                      ; preds = %if.end.84
  %63 = load double, double* %absx, align 8, !dbg !4605, !tbaa !1223
  %call112 = call double @lanczos_sum(double %63), !dbg !4607
  %64 = load double, double* %y, align 8, !dbg !4608, !tbaa !1223
  %call113 = call double @exp(double %64) #1, !dbg !4609
  %div114 = fdiv double %call112, %call113, !dbg !4610
  store double %div114, double* %r, align 8, !dbg !4611, !tbaa !1223
  %65 = load double, double* %z, align 8, !dbg !4612, !tbaa !1223
  %66 = load double, double* %r, align 8, !dbg !4613, !tbaa !1223
  %mul115 = fmul double %65, %66, !dbg !4614
  %67 = load double, double* %r, align 8, !dbg !4615, !tbaa !1223
  %add116 = fadd double %67, %mul115, !dbg !4615
  store double %add116, double* %r, align 8, !dbg !4615, !tbaa !1223
  %68 = load double, double* %absx, align 8, !dbg !4616, !tbaa !1223
  %cmp117 = fcmp olt double %68, 1.400000e+02, !dbg !4618
  br i1 %cmp117, label %if.then.119, label %if.else.123, !dbg !4619

if.then.119:                                      ; preds = %if.else.111
  %69 = load double, double* %y, align 8, !dbg !4620, !tbaa !1223
  %70 = load double, double* %absx, align 8, !dbg !4622, !tbaa !1223
  %sub120 = fsub double %70, 5.000000e-01, !dbg !4623
  %call121 = call double @pow(double %69, double %sub120) #1, !dbg !4624
  %71 = load double, double* %r, align 8, !dbg !4625, !tbaa !1223
  %mul122 = fmul double %71, %call121, !dbg !4625
  store double %mul122, double* %r, align 8, !dbg !4625, !tbaa !1223
  br label %if.end.129, !dbg !4626

if.else.123:                                      ; preds = %if.else.111
  %72 = load double, double* %y, align 8, !dbg !4627, !tbaa !1223
  %73 = load double, double* %absx, align 8, !dbg !4629, !tbaa !1223
  %div124 = fdiv double %73, 2.000000e+00, !dbg !4630
  %sub125 = fsub double %div124, 2.500000e-01, !dbg !4631
  %call126 = call double @pow(double %72, double %sub125) #1, !dbg !4632
  store double %call126, double* %sqrtpow, align 8, !dbg !4633, !tbaa !1223
  %74 = load double, double* %sqrtpow, align 8, !dbg !4634, !tbaa !1223
  %75 = load double, double* %r, align 8, !dbg !4635, !tbaa !1223
  %mul127 = fmul double %75, %74, !dbg !4635
  store double %mul127, double* %r, align 8, !dbg !4635, !tbaa !1223
  %76 = load double, double* %sqrtpow, align 8, !dbg !4636, !tbaa !1223
  %77 = load double, double* %r, align 8, !dbg !4637, !tbaa !1223
  %mul128 = fmul double %77, %76, !dbg !4637
  store double %mul128, double* %r, align 8, !dbg !4637, !tbaa !1223
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.123, %if.then.119
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.110
  br i1 false, label %cond.true.131, label %cond.false.135, !dbg !4638

cond.true.131:                                    ; preds = %if.end.130
  %78 = load double, double* %r, align 8, !dbg !4639, !tbaa !1223
  %conv132 = fptrunc double %78 to float, !dbg !4639
  %call133 = call i32 @__isinff(float %conv132) #2, !dbg !4642
  %tobool134 = icmp ne i32 %call133, 0, !dbg !4642
  br i1 %tobool134, label %if.then.143, label %if.end.145, !dbg !4643

cond.false.135:                                   ; preds = %if.end.130
  br i1 true, label %cond.true.136, label %cond.false.139, !dbg !4644

cond.true.136:                                    ; preds = %cond.false.135
  %79 = load double, double* %r, align 8, !dbg !4645, !tbaa !1223
  %call137 = call i32 @__isinf(double %79) #2, !dbg !4647
  %tobool138 = icmp ne i32 %call137, 0, !dbg !4647
  br i1 %tobool138, label %if.then.143, label %if.end.145, !dbg !4648

cond.false.139:                                   ; preds = %cond.false.135
  %80 = load double, double* %r, align 8, !dbg !4649, !tbaa !1223
  %conv140 = fpext double %80 to x86_fp80, !dbg !4649
  %call141 = call i32 @__isinfl(x86_fp80 %conv140) #2, !dbg !4651
  %tobool142 = icmp ne i32 %call141, 0, !dbg !4651
  br i1 %tobool142, label %if.then.143, label %if.end.145, !dbg !4638

if.then.143:                                      ; preds = %cond.false.139, %cond.true.136, %cond.true.131
  %call144 = call i32* @__errno_location() #2, !dbg !4652
  store i32 34, i32* %call144, align 4, !dbg !4653, !tbaa !1599
  br label %if.end.145, !dbg !4654

if.end.145:                                       ; preds = %if.then.143, %cond.false.139, %cond.true.136, %cond.true.131
  %81 = load double, double* %r, align 8, !dbg !4655, !tbaa !1223
  store double %81, double* %retval, !dbg !4656
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4656

cleanup:                                          ; preds = %if.end.145, %if.else.72, %if.then.69, %if.end.62, %if.then.40, %if.then.35, %if.then.25, %if.else, %if.then.21
  %82 = bitcast double* %sqrtpow to i8*, !dbg !4657
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !4657
  %83 = bitcast double* %z to i8*, !dbg !4657
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !4657
  %84 = bitcast double* %y to i8*, !dbg !4657
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !4657
  %85 = bitcast double* %r to i8*, !dbg !4657
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !4657
  %86 = bitcast double* %absx to i8*, !dbg !4657
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !4657
  %87 = load double, double* %retval, !dbg !4657
  ret double %87, !dbg !4657
}

; Function Attrs: nounwind uwtable
define internal double @sinpi(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %y = alloca double, align 8
  %r = alloca double, align 8
  %n = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !718, metadata !1087), !dbg !4658
  %0 = bitcast double* %y to i8*, !dbg !4659
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4659
  call void @llvm.dbg.declare(metadata double* %y, metadata !719, metadata !1087), !dbg !4660
  %1 = bitcast double* %r to i8*, !dbg !4659
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4659
  call void @llvm.dbg.declare(metadata double* %r, metadata !720, metadata !1087), !dbg !4661
  %2 = bitcast i32* %n to i8*, !dbg !4662
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4662
  call void @llvm.dbg.declare(metadata i32* %n, metadata !721, metadata !1087), !dbg !4663
  %3 = load double, double* %x.addr, align 8, !dbg !4664, !tbaa !1223
  %call = call double @fabs(double %3) #2, !dbg !4665
  %call1 = call double @fmod(double %call, double 2.000000e+00) #1, !dbg !4666
  store double %call1, double* %y, align 8, !dbg !4667, !tbaa !1223
  %4 = load double, double* %y, align 8, !dbg !4668, !tbaa !1223
  %mul = fmul double 2.000000e+00, %4, !dbg !4669
  %call2 = call double @round(double %mul) #2, !dbg !4670
  %conv = fptosi double %call2 to i32, !dbg !4671
  store i32 %conv, i32* %n, align 4, !dbg !4672, !tbaa !1599
  %5 = load i32, i32* %n, align 4, !dbg !4673, !tbaa !1599
  switch i32 %5, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.17
  ], !dbg !4674

sw.bb:                                            ; preds = %entry
  %6 = load double, double* %y, align 8, !dbg !4675, !tbaa !1223
  %mul3 = fmul double 0x400921FB54442D18, %6, !dbg !4677
  %call4 = call double @sin(double %mul3) #1, !dbg !4678
  store double %call4, double* %r, align 8, !dbg !4679, !tbaa !1223
  br label %sw.epilog, !dbg !4680

sw.bb.5:                                          ; preds = %entry
  %7 = load double, double* %y, align 8, !dbg !4681, !tbaa !1223
  %sub = fsub double %7, 5.000000e-01, !dbg !4682
  %mul6 = fmul double 0x400921FB54442D18, %sub, !dbg !4683
  %call7 = call double @cos(double %mul6) #1, !dbg !4684
  store double %call7, double* %r, align 8, !dbg !4685, !tbaa !1223
  br label %sw.epilog, !dbg !4686

sw.bb.8:                                          ; preds = %entry
  %8 = load double, double* %y, align 8, !dbg !4687, !tbaa !1223
  %sub9 = fsub double 1.000000e+00, %8, !dbg !4688
  %mul10 = fmul double 0x400921FB54442D18, %sub9, !dbg !4689
  %call11 = call double @sin(double %mul10) #1, !dbg !4690
  store double %call11, double* %r, align 8, !dbg !4691, !tbaa !1223
  br label %sw.epilog, !dbg !4692

sw.bb.12:                                         ; preds = %entry
  %9 = load double, double* %y, align 8, !dbg !4693, !tbaa !1223
  %sub13 = fsub double %9, 1.500000e+00, !dbg !4694
  %mul14 = fmul double 0x400921FB54442D18, %sub13, !dbg !4695
  %call15 = call double @cos(double %mul14) #1, !dbg !4696
  %sub16 = fsub double -0.000000e+00, %call15, !dbg !4697
  store double %sub16, double* %r, align 8, !dbg !4698, !tbaa !1223
  br label %sw.epilog, !dbg !4699

sw.bb.17:                                         ; preds = %entry
  %10 = load double, double* %y, align 8, !dbg !4700, !tbaa !1223
  %sub18 = fsub double %10, 2.000000e+00, !dbg !4701
  %mul19 = fmul double 0x400921FB54442D18, %sub18, !dbg !4702
  %call20 = call double @sin(double %mul19) #1, !dbg !4703
  store double %call20, double* %r, align 8, !dbg !4704, !tbaa !1223
  br label %sw.epilog, !dbg !4705

sw.default:                                       ; preds = %entry
  store double -1.230000e+200, double* %r, align 8, !dbg !4706, !tbaa !1223
  br label %sw.epilog, !dbg !4707

sw.epilog:                                        ; preds = %sw.default, %sw.bb.17, %sw.bb.12, %sw.bb.8, %sw.bb.5, %sw.bb
  %11 = load double, double* %x.addr, align 8, !dbg !4708, !tbaa !1223
  %call21 = call double @copysign(double 1.000000e+00, double %11) #2, !dbg !4709
  %12 = load double, double* %r, align 8, !dbg !4710, !tbaa !1223
  %mul22 = fmul double %call21, %12, !dbg !4711
  %13 = bitcast i32* %n to i8*, !dbg !4712
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !4712
  %14 = bitcast double* %r to i8*, !dbg !4712
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !4712
  %15 = bitcast double* %y to i8*, !dbg !4712
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4712
  ret double %mul22, !dbg !4713
}

; Function Attrs: nounwind uwtable
define internal double @lanczos_sum(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %num = alloca double, align 8
  %den = alloca double, align 8
  %i = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !724, metadata !1087), !dbg !4714
  %0 = bitcast double* %num to i8*, !dbg !4715
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4715
  call void @llvm.dbg.declare(metadata double* %num, metadata !725, metadata !1087), !dbg !4716
  store double 0.000000e+00, double* %num, align 8, !dbg !4716, !tbaa !1223
  %1 = bitcast double* %den to i8*, !dbg !4715
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4715
  call void @llvm.dbg.declare(metadata double* %den, metadata !726, metadata !1087), !dbg !4717
  store double 0.000000e+00, double* %den, align 8, !dbg !4717, !tbaa !1223
  %2 = bitcast i32* %i to i8*, !dbg !4718
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4718
  call void @llvm.dbg.declare(metadata i32* %i, metadata !727, metadata !1087), !dbg !4719
  %3 = load double, double* %x.addr, align 8, !dbg !4720, !tbaa !1223
  %cmp = fcmp olt double %3, 5.000000e+00, !dbg !4722
  br i1 %cmp, label %if.then, label %if.else, !dbg !4723

if.then:                                          ; preds = %entry
  store i32 13, i32* %i, align 4, !dbg !4724, !tbaa !1599
  br label %for.cond, !dbg !4727

for.cond:                                         ; preds = %for.body, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !4728, !tbaa !1599
  %dec = add i32 %4, -1, !dbg !4728
  store i32 %dec, i32* %i, align 4, !dbg !4728, !tbaa !1599
  %cmp1 = icmp sge i32 %dec, 0, !dbg !4732
  br i1 %cmp1, label %for.body, label %for.end, !dbg !4733

for.body:                                         ; preds = %for.cond
  %5 = load double, double* %num, align 8, !dbg !4734, !tbaa !1223
  %6 = load double, double* %x.addr, align 8, !dbg !4736, !tbaa !1223
  %mul = fmul double %5, %6, !dbg !4737
  %7 = load i32, i32* %i, align 4, !dbg !4738, !tbaa !1599
  %idxprom = sext i32 %7 to i64, !dbg !4739
  %arrayidx = getelementptr [13 x double], [13 x double]* @lanczos_num_coeffs, i32 0, i64 %idxprom, !dbg !4739
  %8 = load double, double* %arrayidx, align 8, !dbg !4739, !tbaa !1223
  %add = fadd double %mul, %8, !dbg !4740
  store double %add, double* %num, align 8, !dbg !4741, !tbaa !1223
  %9 = load double, double* %den, align 8, !dbg !4742, !tbaa !1223
  %10 = load double, double* %x.addr, align 8, !dbg !4743, !tbaa !1223
  %mul2 = fmul double %9, %10, !dbg !4744
  %11 = load i32, i32* %i, align 4, !dbg !4745, !tbaa !1599
  %idxprom3 = sext i32 %11 to i64, !dbg !4746
  %arrayidx4 = getelementptr [13 x double], [13 x double]* @lanczos_den_coeffs, i32 0, i64 %idxprom3, !dbg !4746
  %12 = load double, double* %arrayidx4, align 8, !dbg !4746, !tbaa !1223
  %add5 = fadd double %mul2, %12, !dbg !4747
  store double %add5, double* %den, align 8, !dbg !4748, !tbaa !1223
  br label %for.cond, !dbg !4749

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !4750

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4751, !tbaa !1599
  br label %for.cond.6, !dbg !4754

for.cond.6:                                       ; preds = %for.inc, %if.else
  %13 = load i32, i32* %i, align 4, !dbg !4755, !tbaa !1599
  %cmp7 = icmp slt i32 %13, 13, !dbg !4759
  br i1 %cmp7, label %for.body.8, label %for.end.16, !dbg !4760

for.body.8:                                       ; preds = %for.cond.6
  %14 = load double, double* %num, align 8, !dbg !4761, !tbaa !1223
  %15 = load double, double* %x.addr, align 8, !dbg !4763, !tbaa !1223
  %div = fdiv double %14, %15, !dbg !4764
  %16 = load i32, i32* %i, align 4, !dbg !4765, !tbaa !1599
  %idxprom9 = sext i32 %16 to i64, !dbg !4766
  %arrayidx10 = getelementptr [13 x double], [13 x double]* @lanczos_num_coeffs, i32 0, i64 %idxprom9, !dbg !4766
  %17 = load double, double* %arrayidx10, align 8, !dbg !4766, !tbaa !1223
  %add11 = fadd double %div, %17, !dbg !4767
  store double %add11, double* %num, align 8, !dbg !4768, !tbaa !1223
  %18 = load double, double* %den, align 8, !dbg !4769, !tbaa !1223
  %19 = load double, double* %x.addr, align 8, !dbg !4770, !tbaa !1223
  %div12 = fdiv double %18, %19, !dbg !4771
  %20 = load i32, i32* %i, align 4, !dbg !4772, !tbaa !1599
  %idxprom13 = sext i32 %20 to i64, !dbg !4773
  %arrayidx14 = getelementptr [13 x double], [13 x double]* @lanczos_den_coeffs, i32 0, i64 %idxprom13, !dbg !4773
  %21 = load double, double* %arrayidx14, align 8, !dbg !4773, !tbaa !1223
  %add15 = fadd double %div12, %21, !dbg !4774
  store double %add15, double* %den, align 8, !dbg !4775, !tbaa !1223
  br label %for.inc, !dbg !4776

for.inc:                                          ; preds = %for.body.8
  %22 = load i32, i32* %i, align 4, !dbg !4777, !tbaa !1599
  %inc = add i32 %22, 1, !dbg !4777
  store i32 %inc, i32* %i, align 4, !dbg !4777, !tbaa !1599
  br label %for.cond.6, !dbg !4778

for.end.16:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.16, %for.end
  %23 = load double, double* %num, align 8, !dbg !4779, !tbaa !1223
  %24 = load double, double* %den, align 8, !dbg !4780, !tbaa !1223
  %div17 = fdiv double %23, %24, !dbg !4781
  %25 = bitcast i32* %i to i8*, !dbg !4782
  call void @llvm.lifetime.end(i64 4, i8* %25) #1, !dbg !4782
  %26 = bitcast double* %den to i8*, !dbg !4782
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4782
  %27 = bitcast double* %num to i8*, !dbg !4782
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !4782
  ret double %div17, !dbg !4783
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind readnone
declare double @round(double) #5

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind
declare double @hypot(double, double) #4

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #3

; Function Attrs: nounwind
declare double @ldexp(double, i32) #4

; Function Attrs: nounwind uwtable
define internal double @m_lgamma(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  %r = alloca double, align 8
  %absx = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !767, metadata !1087), !dbg !4784
  %0 = bitcast double* %r to i8*, !dbg !4785
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4785
  call void @llvm.dbg.declare(metadata double* %r, metadata !768, metadata !1087), !dbg !4786
  %1 = bitcast double* %absx to i8*, !dbg !4785
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4785
  call void @llvm.dbg.declare(metadata double* %absx, metadata !769, metadata !1087), !dbg !4787
  br i1 false, label %cond.true, label %cond.false, !dbg !4788

cond.true:                                        ; preds = %entry
  %2 = load double, double* %x.addr, align 8, !dbg !4789, !tbaa !1223
  %conv = fptrunc double %2 to float, !dbg !4789
  %call = call i32 @__finitef(float %conv) #2, !dbg !4792
  %tobool = icmp ne i32 %call, 0, !dbg !4792
  br i1 %tobool, label %if.end, label %if.then, !dbg !4793

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !4794

cond.true.1:                                      ; preds = %cond.false
  %3 = load double, double* %x.addr, align 8, !dbg !4796, !tbaa !1223
  %call2 = call i32 @__finite(double %3) #2, !dbg !4798
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4798
  br i1 %tobool3, label %if.end, label %if.then, !dbg !4799

cond.false.4:                                     ; preds = %cond.false
  %4 = load double, double* %x.addr, align 8, !dbg !4800, !tbaa !1223
  %conv5 = fpext double %4 to x86_fp80, !dbg !4800
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #2, !dbg !4802
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4802
  br i1 %tobool7, label %if.end, label %if.then, !dbg !4788

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12, !dbg !4803

cond.true.8:                                      ; preds = %if.then
  %5 = load double, double* %x.addr, align 8, !dbg !4805, !tbaa !1223
  %conv9 = fptrunc double %5 to float, !dbg !4805
  %call10 = call i32 @__isnanf(float %conv9) #2, !dbg !4808
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4808
  br i1 %tobool11, label %if.then.20, label %if.else, !dbg !4809

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16, !dbg !4810

cond.true.13:                                     ; preds = %cond.false.12
  %6 = load double, double* %x.addr, align 8, !dbg !4812, !tbaa !1223
  %call14 = call i32 @__isnan(double %6) #2, !dbg !4814
  %tobool15 = icmp ne i32 %call14, 0, !dbg !4814
  br i1 %tobool15, label %if.then.20, label %if.else, !dbg !4815

cond.false.16:                                    ; preds = %cond.false.12
  %7 = load double, double* %x.addr, align 8, !dbg !4816, !tbaa !1223
  %conv17 = fpext double %7 to x86_fp80, !dbg !4816
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #2, !dbg !4818
  %tobool19 = icmp ne i32 %call18, 0, !dbg !4818
  br i1 %tobool19, label %if.then.20, label %if.else, !dbg !4803

if.then.20:                                       ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %8 = load double, double* %x.addr, align 8, !dbg !4819, !tbaa !1223
  store double %8, double* %retval, !dbg !4820
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4820

if.else:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  store double 0x7FF0000000000000, double* %retval, !dbg !4821
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4821

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %9 = load double, double* %x.addr, align 8, !dbg !4822, !tbaa !1223
  %10 = load double, double* %x.addr, align 8, !dbg !4824, !tbaa !1223
  %call21 = call double @floor(double %10) #2, !dbg !4825
  %cmp = fcmp oeq double %9, %call21, !dbg !4826
  br i1 %cmp, label %land.lhs.true, label %if.end.31, !dbg !4827

land.lhs.true:                                    ; preds = %if.end
  %11 = load double, double* %x.addr, align 8, !dbg !4828, !tbaa !1223
  %cmp23 = fcmp ole double %11, 2.000000e+00, !dbg !4830
  br i1 %cmp23, label %if.then.25, label %if.end.31, !dbg !4831

if.then.25:                                       ; preds = %land.lhs.true
  %12 = load double, double* %x.addr, align 8, !dbg !4832, !tbaa !1223
  %cmp26 = fcmp ole double %12, 0.000000e+00, !dbg !4835
  br i1 %cmp26, label %if.then.28, label %if.else.30, !dbg !4836

if.then.28:                                       ; preds = %if.then.25
  %call29 = call i32* @__errno_location() #2, !dbg !4837
  store i32 33, i32* %call29, align 4, !dbg !4839, !tbaa !1599
  store double 0x7FF0000000000000, double* %retval, !dbg !4840
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4840

if.else.30:                                       ; preds = %if.then.25
  store double 0.000000e+00, double* %retval, !dbg !4841
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4841

if.end.31:                                        ; preds = %land.lhs.true, %if.end
  %13 = load double, double* %x.addr, align 8, !dbg !4843, !tbaa !1223
  %call32 = call double @fabs(double %13) #2, !dbg !4844
  store double %call32, double* %absx, align 8, !dbg !4845, !tbaa !1223
  %14 = load double, double* %absx, align 8, !dbg !4846, !tbaa !1223
  %cmp33 = fcmp olt double %14, 1.000000e-20, !dbg !4848
  br i1 %cmp33, label %if.then.35, label %if.end.37, !dbg !4849

if.then.35:                                       ; preds = %if.end.31
  %15 = load double, double* %absx, align 8, !dbg !4850, !tbaa !1223
  %call36 = call double @log(double %15) #1, !dbg !4851
  %sub = fsub double -0.000000e+00, %call36, !dbg !4852
  store double %sub, double* %retval, !dbg !4853
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4853

if.end.37:                                        ; preds = %if.end.31
  %16 = load double, double* %absx, align 8, !dbg !4854, !tbaa !1223
  %call38 = call double @lanczos_sum(double %16), !dbg !4855
  %call39 = call double @log(double %call38) #1, !dbg !4856
  %sub40 = fsub double %call39, 0x40181945B9800000, !dbg !4857
  store double %sub40, double* %r, align 8, !dbg !4858, !tbaa !1223
  %17 = load double, double* %absx, align 8, !dbg !4859, !tbaa !1223
  %sub41 = fsub double %17, 5.000000e-01, !dbg !4860
  %18 = load double, double* %absx, align 8, !dbg !4861, !tbaa !1223
  %add = fadd double %18, 0x40181945B9800000, !dbg !4862
  %sub42 = fsub double %add, 5.000000e-01, !dbg !4863
  %call43 = call double @log(double %sub42) #1, !dbg !4864
  %sub44 = fsub double %call43, 1.000000e+00, !dbg !4865
  %mul = fmul double %sub41, %sub44, !dbg !4866
  %19 = load double, double* %r, align 8, !dbg !4867, !tbaa !1223
  %add45 = fadd double %19, %mul, !dbg !4867
  store double %add45, double* %r, align 8, !dbg !4867, !tbaa !1223
  %20 = load double, double* %x.addr, align 8, !dbg !4868, !tbaa !1223
  %cmp46 = fcmp olt double %20, 0.000000e+00, !dbg !4870
  br i1 %cmp46, label %if.then.48, label %if.end.56, !dbg !4871

if.then.48:                                       ; preds = %if.end.37
  %21 = load double, double* %absx, align 8, !dbg !4872, !tbaa !1223
  %call49 = call double @sinpi(double %21), !dbg !4873
  %call50 = call double @fabs(double %call49) #2, !dbg !4874
  %call51 = call double @log(double %call50) #1, !dbg !4875
  %sub52 = fsub double 0x3FF250D048E7A1BD, %call51, !dbg !4876
  %22 = load double, double* %absx, align 8, !dbg !4877, !tbaa !1223
  %call53 = call double @log(double %22) #1, !dbg !4878
  %sub54 = fsub double %sub52, %call53, !dbg !4879
  %23 = load double, double* %r, align 8, !dbg !4880, !tbaa !1223
  %sub55 = fsub double %sub54, %23, !dbg !4881
  store double %sub55, double* %r, align 8, !dbg !4882, !tbaa !1223
  br label %if.end.56, !dbg !4883

if.end.56:                                        ; preds = %if.then.48, %if.end.37
  br i1 false, label %cond.true.57, label %cond.false.61, !dbg !4884

cond.true.57:                                     ; preds = %if.end.56
  %24 = load double, double* %r, align 8, !dbg !4885, !tbaa !1223
  %conv58 = fptrunc double %24 to float, !dbg !4885
  %call59 = call i32 @__isinff(float %conv58) #2, !dbg !4888
  %tobool60 = icmp ne i32 %call59, 0, !dbg !4888
  br i1 %tobool60, label %if.then.69, label %if.end.71, !dbg !4889

cond.false.61:                                    ; preds = %if.end.56
  br i1 true, label %cond.true.62, label %cond.false.65, !dbg !4890

cond.true.62:                                     ; preds = %cond.false.61
  %25 = load double, double* %r, align 8, !dbg !4891, !tbaa !1223
  %call63 = call i32 @__isinf(double %25) #2, !dbg !4893
  %tobool64 = icmp ne i32 %call63, 0, !dbg !4893
  br i1 %tobool64, label %if.then.69, label %if.end.71, !dbg !4894

cond.false.65:                                    ; preds = %cond.false.61
  %26 = load double, double* %r, align 8, !dbg !4895, !tbaa !1223
  %conv66 = fpext double %26 to x86_fp80, !dbg !4895
  %call67 = call i32 @__isinfl(x86_fp80 %conv66) #2, !dbg !4897
  %tobool68 = icmp ne i32 %call67, 0, !dbg !4897
  br i1 %tobool68, label %if.then.69, label %if.end.71, !dbg !4884

if.then.69:                                       ; preds = %cond.false.65, %cond.true.62, %cond.true.57
  %call70 = call i32* @__errno_location() #2, !dbg !4898
  store i32 34, i32* %call70, align 4, !dbg !4899, !tbaa !1599
  br label %if.end.71, !dbg !4900

if.end.71:                                        ; preds = %if.then.69, %cond.false.65, %cond.true.62, %cond.true.57
  %27 = load double, double* %r, align 8, !dbg !4901, !tbaa !1223
  store double %27, double* %retval, !dbg !4902
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4902

cleanup:                                          ; preds = %if.end.71, %if.then.35, %if.else.30, %if.then.28, %if.else, %if.then.20
  %28 = bitcast double* %absx to i8*, !dbg !4903
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !4903
  %29 = bitcast double* %r to i8*, !dbg !4903
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !4903
  %30 = load double, double* %retval, !dbg !4903
  ret double %30, !dbg !4903
}

; Function Attrs: nounwind
declare double @log(double) #4

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !791, metadata !1087), !dbg !4904
  store double (double)* %func, double (double)** %func.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata double (double)** %func.addr, metadata !792, metadata !1087), !dbg !4905
  store i8* %funcname, i8** %funcname.addr, align 8, !tbaa !1091
  call void @llvm.dbg.declare(metadata i8** %funcname.addr, metadata !793, metadata !1087), !dbg !4906
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4907, !tbaa !1091
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !4908
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4908, !tbaa !1186
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19, !dbg !4909
  %2 = load i64, i64* %tp_flags, align 8, !dbg !4909, !tbaa !2384
  %and = and i64 %2, 16777216, !dbg !4910
  %cmp = icmp ne i64 %and, 0, !dbg !4911
  br i1 %cmp, label %if.then, label %if.end.24, !dbg !4912

if.then:                                          ; preds = %entry
  %3 = bitcast double* %x to i8*, !dbg !4913
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4913
  call void @llvm.dbg.declare(metadata double* %x, metadata !794, metadata !1087), !dbg !4914
  %4 = bitcast double* %result to i8*, !dbg !4913
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4913
  call void @llvm.dbg.declare(metadata double* %result, metadata !797, metadata !1087), !dbg !4915
  %5 = bitcast i64* %e to i8*, !dbg !4916
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4916
  call void @llvm.dbg.declare(metadata i64* %e, metadata !798, metadata !1087), !dbg !4917
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4918, !tbaa !1091
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*, !dbg !4920
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1, !dbg !4921
  %8 = load i64, i64* %ob_size, align 8, !dbg !4921, !tbaa !4922
  %cmp1 = icmp sle i64 %8, 0, !dbg !4923
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !4924

if.then.2:                                        ; preds = %if.then
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4925, !tbaa !1091
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0)), !dbg !4927
  store %struct._object* null, %struct._object** %retval, !dbg !4928
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4928

if.end:                                           ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4929, !tbaa !1091
  %call = call double @PyLong_AsDouble(%struct._object* %10), !dbg !4930
  store double %call, double* %x, align 8, !dbg !4931, !tbaa !1223
  %11 = load double, double* %x, align 8, !dbg !4932, !tbaa !1223
  %cmp3 = fcmp oeq double %11, -1.000000e+00, !dbg !4934
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !4935

land.lhs.true:                                    ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4936
  %tobool = icmp ne %struct._object* %call4, null, !dbg !4936
  br i1 %tobool, label %if.then.5, label %if.else, !dbg !4938

if.then.5:                                        ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4939, !tbaa !1091
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %12), !dbg !4942
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4942
  br i1 %tobool7, label %if.end.9, label %if.then.8, !dbg !4943

if.then.8:                                        ; preds = %if.then.5
  store %struct._object* null, %struct._object** %retval, !dbg !4944
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4944

if.end.9:                                         ; preds = %if.then.5
  call void @PyErr_Clear(), !dbg !4945
  %13 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4946, !tbaa !1091
  %14 = bitcast %struct._object* %13 to %struct._longobject*, !dbg !4947
  %call10 = call double @_PyLong_Frexp(%struct._longobject* %14, i64* %e), !dbg !4948
  store double %call10, double* %x, align 8, !dbg !4949, !tbaa !1223
  %15 = load double, double* %x, align 8, !dbg !4950, !tbaa !1223
  %cmp11 = fcmp oeq double %15, -1.000000e+00, !dbg !4952
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.16, !dbg !4953

land.lhs.true.12:                                 ; preds = %if.end.9
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !4954
  %tobool14 = icmp ne %struct._object* %call13, null, !dbg !4954
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !4956

if.then.15:                                       ; preds = %land.lhs.true.12
  store %struct._object* null, %struct._object** %retval, !dbg !4957
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4957

if.end.16:                                        ; preds = %land.lhs.true.12, %if.end.9
  %16 = load double (double)*, double (double)** %func.addr, align 8, !dbg !4958, !tbaa !1091
  %17 = load double, double* %x, align 8, !dbg !4959, !tbaa !1223
  %call17 = call double %16(double %17), !dbg !4958
  %18 = load double (double)*, double (double)** %func.addr, align 8, !dbg !4960, !tbaa !1091
  %call18 = call double %18(double 2.000000e+00), !dbg !4960
  %19 = load i64, i64* %e, align 8, !dbg !4961, !tbaa !1327
  %conv = sitofp i64 %19 to double, !dbg !4961
  %mul = fmul double %call18, %conv, !dbg !4962
  %add = fadd double %call17, %mul, !dbg !4963
  store double %add, double* %result, align 8, !dbg !4964, !tbaa !1223
  br label %if.end.20, !dbg !4965

if.else:                                          ; preds = %land.lhs.true, %if.end
  %20 = load double (double)*, double (double)** %func.addr, align 8, !dbg !4966, !tbaa !1091
  %21 = load double, double* %x, align 8, !dbg !4967, !tbaa !1223
  %call19 = call double %20(double %21), !dbg !4966
  store double %call19, double* %result, align 8, !dbg !4968, !tbaa !1223
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.16
  %22 = load double, double* %result, align 8, !dbg !4969, !tbaa !1223
  %call21 = call %struct._object* @PyFloat_FromDouble(double %22), !dbg !4970
  store %struct._object* %call21, %struct._object** %retval, !dbg !4971
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4971

cleanup:                                          ; preds = %if.end.20, %if.then.15, %if.then.8, %if.then.2
  %23 = bitcast i64* %e to i8*, !dbg !4972
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !4972
  %24 = bitcast double* %result to i8*, !dbg !4972
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !4972
  %25 = bitcast double* %x to i8*, !dbg !4972
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !4972
  br label %return

if.end.24:                                        ; preds = %entry
  %26 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4973, !tbaa !1091
  %27 = load double (double)*, double (double)** %func.addr, align 8, !dbg !4974, !tbaa !1091
  %call25 = call %struct._object* @math_1(%struct._object* %26, double (double)* %27, i32 0), !dbg !4975
  store %struct._object* %call25, %struct._object** %retval, !dbg !4976
  br label %return, !dbg !4976

return:                                           ; preds = %if.end.24, %cleanup
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4977
  ret %struct._object* %28, !dbg !4977
}

; Function Attrs: nounwind uwtable
define internal double @m_log(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !801, metadata !1087), !dbg !4978
  br i1 false, label %cond.true, label %cond.false, !dbg !4979

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !dbg !4980, !tbaa !1223
  %conv = fptrunc double %0 to float, !dbg !4980
  %call = call i32 @__finitef(float %conv) #2, !dbg !4983
  %tobool = icmp ne i32 %call, 0, !dbg !4983
  br i1 %tobool, label %if.then, label %if.else.15, !dbg !4984

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !4985

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8, !dbg !4987, !tbaa !1223
  %call2 = call i32 @__finite(double %1) #2, !dbg !4989
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4989
  br i1 %tobool3, label %if.then, label %if.else.15, !dbg !4990

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !4991, !tbaa !1223
  %conv5 = fpext double %2 to x86_fp80, !dbg !4991
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #2, !dbg !4993
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4993
  br i1 %tobool7, label %if.then, label %if.else.15, !dbg !4979

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8, !dbg !4994, !tbaa !1223
  %cmp = fcmp ogt double %3, 0.000000e+00, !dbg !4997
  br i1 %cmp, label %if.then.9, label %if.end, !dbg !4998

if.then.9:                                        ; preds = %if.then
  %4 = load double, double* %x.addr, align 8, !dbg !4999, !tbaa !1223
  %call10 = call double @log(double %4) #1, !dbg !5000
  store double %call10, double* %retval, !dbg !5001
  br label %return, !dbg !5001

if.end:                                           ; preds = %if.then
  %call11 = call i32* @__errno_location() #2, !dbg !5002
  store i32 33, i32* %call11, align 4, !dbg !5003, !tbaa !1599
  %5 = load double, double* %x.addr, align 8, !dbg !5004, !tbaa !1223
  %cmp12 = fcmp oeq double %5, 0.000000e+00, !dbg !5006
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !5007

if.then.14:                                       ; preds = %if.end
  store double 0xFFF0000000000000, double* %retval, !dbg !5008
  br label %return, !dbg !5008

if.else:                                          ; preds = %if.end
  store double 0x7FF8000000000000, double* %retval, !dbg !5009
  br label %return, !dbg !5009

if.else.15:                                       ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20, !dbg !5010

cond.true.16:                                     ; preds = %if.else.15
  %6 = load double, double* %x.addr, align 8, !dbg !5011, !tbaa !1223
  %conv17 = fptrunc double %6 to float, !dbg !5011
  %call18 = call i32 @__isnanf(float %conv17) #2, !dbg !5014
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5014
  br i1 %tobool19, label %if.then.28, label %if.else.29, !dbg !5015

cond.false.20:                                    ; preds = %if.else.15
  br i1 true, label %cond.true.21, label %cond.false.24, !dbg !5016

cond.true.21:                                     ; preds = %cond.false.20
  %7 = load double, double* %x.addr, align 8, !dbg !5018, !tbaa !1223
  %call22 = call i32 @__isnan(double %7) #2, !dbg !5020
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5020
  br i1 %tobool23, label %if.then.28, label %if.else.29, !dbg !5021

cond.false.24:                                    ; preds = %cond.false.20
  %8 = load double, double* %x.addr, align 8, !dbg !5022, !tbaa !1223
  %conv25 = fpext double %8 to x86_fp80, !dbg !5022
  %call26 = call i32 @__isnanl(x86_fp80 %conv25) #2, !dbg !5024
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5024
  br i1 %tobool27, label %if.then.28, label %if.else.29, !dbg !5010

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %9 = load double, double* %x.addr, align 8, !dbg !5025, !tbaa !1223
  store double %9, double* %retval, !dbg !5026
  br label %return, !dbg !5026

if.else.29:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %10 = load double, double* %x.addr, align 8, !dbg !5027, !tbaa !1223
  %cmp30 = fcmp ogt double %10, 0.000000e+00, !dbg !5029
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !5030

if.then.32:                                       ; preds = %if.else.29
  %11 = load double, double* %x.addr, align 8, !dbg !5031, !tbaa !1223
  store double %11, double* %retval, !dbg !5032
  br label %return, !dbg !5032

if.else.33:                                       ; preds = %if.else.29
  %call34 = call i32* @__errno_location() #2, !dbg !5033
  store i32 33, i32* %call34, align 4, !dbg !5035, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !5036
  br label %return, !dbg !5036

return:                                           ; preds = %if.else.33, %if.then.32, %if.then.28, %if.else, %if.then.14, %if.then.9
  %12 = load double, double* %retval, !dbg !5037
  ret double %12, !dbg !5037
}

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #3

declare double @PyLong_AsDouble(%struct._object*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PyErr_Clear() #3

declare double @_PyLong_Frexp(%struct._longobject*, i64*) #3

declare double @_Py_log1p(double) #3

; Function Attrs: nounwind uwtable
define internal double @m_log10(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !812, metadata !1087), !dbg !5038
  br i1 false, label %cond.true, label %cond.false, !dbg !5039

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !dbg !5040, !tbaa !1223
  %conv = fptrunc double %0 to float, !dbg !5040
  %call = call i32 @__finitef(float %conv) #2, !dbg !5043
  %tobool = icmp ne i32 %call, 0, !dbg !5043
  br i1 %tobool, label %if.then, label %if.else.15, !dbg !5044

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !5045

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8, !dbg !5047, !tbaa !1223
  %call2 = call i32 @__finite(double %1) #2, !dbg !5049
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5049
  br i1 %tobool3, label %if.then, label %if.else.15, !dbg !5050

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !5051, !tbaa !1223
  %conv5 = fpext double %2 to x86_fp80, !dbg !5051
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #2, !dbg !5053
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5053
  br i1 %tobool7, label %if.then, label %if.else.15, !dbg !5039

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %3 = load double, double* %x.addr, align 8, !dbg !5054, !tbaa !1223
  %cmp = fcmp ogt double %3, 0.000000e+00, !dbg !5057
  br i1 %cmp, label %if.then.9, label %if.end, !dbg !5058

if.then.9:                                        ; preds = %if.then
  %4 = load double, double* %x.addr, align 8, !dbg !5059, !tbaa !1223
  %call10 = call double @log10(double %4) #1, !dbg !5060
  store double %call10, double* %retval, !dbg !5061
  br label %return, !dbg !5061

if.end:                                           ; preds = %if.then
  %call11 = call i32* @__errno_location() #2, !dbg !5062
  store i32 33, i32* %call11, align 4, !dbg !5063, !tbaa !1599
  %5 = load double, double* %x.addr, align 8, !dbg !5064, !tbaa !1223
  %cmp12 = fcmp oeq double %5, 0.000000e+00, !dbg !5066
  br i1 %cmp12, label %if.then.14, label %if.else, !dbg !5067

if.then.14:                                       ; preds = %if.end
  store double 0xFFF0000000000000, double* %retval, !dbg !5068
  br label %return, !dbg !5068

if.else:                                          ; preds = %if.end
  store double 0x7FF8000000000000, double* %retval, !dbg !5069
  br label %return, !dbg !5069

if.else.15:                                       ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20, !dbg !5070

cond.true.16:                                     ; preds = %if.else.15
  %6 = load double, double* %x.addr, align 8, !dbg !5071, !tbaa !1223
  %conv17 = fptrunc double %6 to float, !dbg !5071
  %call18 = call i32 @__isnanf(float %conv17) #2, !dbg !5074
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5074
  br i1 %tobool19, label %if.then.28, label %if.else.29, !dbg !5075

cond.false.20:                                    ; preds = %if.else.15
  br i1 true, label %cond.true.21, label %cond.false.24, !dbg !5076

cond.true.21:                                     ; preds = %cond.false.20
  %7 = load double, double* %x.addr, align 8, !dbg !5078, !tbaa !1223
  %call22 = call i32 @__isnan(double %7) #2, !dbg !5080
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5080
  br i1 %tobool23, label %if.then.28, label %if.else.29, !dbg !5081

cond.false.24:                                    ; preds = %cond.false.20
  %8 = load double, double* %x.addr, align 8, !dbg !5082, !tbaa !1223
  %conv25 = fpext double %8 to x86_fp80, !dbg !5082
  %call26 = call i32 @__isnanl(x86_fp80 %conv25) #2, !dbg !5084
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5084
  br i1 %tobool27, label %if.then.28, label %if.else.29, !dbg !5070

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %9 = load double, double* %x.addr, align 8, !dbg !5085, !tbaa !1223
  store double %9, double* %retval, !dbg !5086
  br label %return, !dbg !5086

if.else.29:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %10 = load double, double* %x.addr, align 8, !dbg !5087, !tbaa !1223
  %cmp30 = fcmp ogt double %10, 0.000000e+00, !dbg !5089
  br i1 %cmp30, label %if.then.32, label %if.else.33, !dbg !5090

if.then.32:                                       ; preds = %if.else.29
  %11 = load double, double* %x.addr, align 8, !dbg !5091, !tbaa !1223
  store double %11, double* %retval, !dbg !5092
  br label %return, !dbg !5092

if.else.33:                                       ; preds = %if.else.29
  %call34 = call i32* @__errno_location() #2, !dbg !5093
  store i32 33, i32* %call34, align 4, !dbg !5095, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !5096
  br label %return, !dbg !5096

return:                                           ; preds = %if.else.33, %if.then.32, %if.then.28, %if.else, %if.then.14, %if.then.9
  %12 = load double, double* %retval, !dbg !5097
  ret double %12, !dbg !5097
}

; Function Attrs: nounwind
declare double @log10(double) #4

; Function Attrs: nounwind uwtable
define internal double @m_log2(double %x) #0 {
entry:
  %retval = alloca double, align 8
  %x.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1223
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !819, metadata !1087), !dbg !5098
  br i1 false, label %cond.true, label %cond.false, !dbg !5099

cond.true:                                        ; preds = %entry
  %0 = load double, double* %x.addr, align 8, !dbg !5100, !tbaa !1223
  %conv = fptrunc double %0 to float, !dbg !5100
  %call = call i32 @__finitef(float %conv) #2, !dbg !5103
  %tobool = icmp ne i32 %call, 0, !dbg !5103
  br i1 %tobool, label %if.end, label %if.then, !dbg !5104

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4, !dbg !5105

cond.true.1:                                      ; preds = %cond.false
  %1 = load double, double* %x.addr, align 8, !dbg !5107, !tbaa !1223
  %call2 = call i32 @__finite(double %1) #2, !dbg !5109
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5109
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5110

cond.false.4:                                     ; preds = %cond.false
  %2 = load double, double* %x.addr, align 8, !dbg !5111, !tbaa !1223
  %conv5 = fpext double %2 to x86_fp80, !dbg !5111
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #2, !dbg !5113
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5113
  br i1 %tobool7, label %if.end, label %if.then, !dbg !5099

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  br i1 false, label %cond.true.8, label %cond.false.12, !dbg !5114

cond.true.8:                                      ; preds = %if.then
  %3 = load double, double* %x.addr, align 8, !dbg !5116, !tbaa !1223
  %conv9 = fptrunc double %3 to float, !dbg !5116
  %call10 = call i32 @__isnanf(float %conv9) #2, !dbg !5119
  %tobool11 = icmp ne i32 %call10, 0, !dbg !5119
  br i1 %tobool11, label %if.then.20, label %if.else, !dbg !5120

cond.false.12:                                    ; preds = %if.then
  br i1 true, label %cond.true.13, label %cond.false.16, !dbg !5121

cond.true.13:                                     ; preds = %cond.false.12
  %4 = load double, double* %x.addr, align 8, !dbg !5123, !tbaa !1223
  %call14 = call i32 @__isnan(double %4) #2, !dbg !5125
  %tobool15 = icmp ne i32 %call14, 0, !dbg !5125
  br i1 %tobool15, label %if.then.20, label %if.else, !dbg !5126

cond.false.16:                                    ; preds = %cond.false.12
  %5 = load double, double* %x.addr, align 8, !dbg !5127, !tbaa !1223
  %conv17 = fpext double %5 to x86_fp80, !dbg !5127
  %call18 = call i32 @__isnanl(x86_fp80 %conv17) #2, !dbg !5129
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5129
  br i1 %tobool19, label %if.then.20, label %if.else, !dbg !5114

if.then.20:                                       ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %6 = load double, double* %x.addr, align 8, !dbg !5130, !tbaa !1223
  store double %6, double* %retval, !dbg !5131
  br label %return, !dbg !5131

if.else:                                          ; preds = %cond.false.16, %cond.true.13, %cond.true.8
  %7 = load double, double* %x.addr, align 8, !dbg !5132, !tbaa !1223
  %cmp = fcmp ogt double %7, 0.000000e+00, !dbg !5134
  br i1 %cmp, label %if.then.22, label %if.else.23, !dbg !5135

if.then.22:                                       ; preds = %if.else
  %8 = load double, double* %x.addr, align 8, !dbg !5136, !tbaa !1223
  store double %8, double* %retval, !dbg !5137
  br label %return, !dbg !5137

if.else.23:                                       ; preds = %if.else
  %call24 = call i32* @__errno_location() #2, !dbg !5138
  store i32 33, i32* %call24, align 4, !dbg !5140, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !5141
  br label %return, !dbg !5141

if.end:                                           ; preds = %cond.false.4, %cond.true.1, %cond.true
  %9 = load double, double* %x.addr, align 8, !dbg !5142, !tbaa !1223
  %cmp25 = fcmp ogt double %9, 0.000000e+00, !dbg !5144
  br i1 %cmp25, label %if.then.27, label %if.else.29, !dbg !5145

if.then.27:                                       ; preds = %if.end
  %10 = load double, double* %x.addr, align 8, !dbg !5146, !tbaa !1223
  %call28 = call double @log2(double %10) #1, !dbg !5148
  store double %call28, double* %retval, !dbg !5149
  br label %return, !dbg !5149

if.else.29:                                       ; preds = %if.end
  %11 = load double, double* %x.addr, align 8, !dbg !5150, !tbaa !1223
  %cmp30 = fcmp oeq double %11, 0.000000e+00, !dbg !5152
  br i1 %cmp30, label %if.then.32, label %if.else.34, !dbg !5153

if.then.32:                                       ; preds = %if.else.29
  %call33 = call i32* @__errno_location() #2, !dbg !5154
  store i32 33, i32* %call33, align 4, !dbg !5156, !tbaa !1599
  store double 0xFFF0000000000000, double* %retval, !dbg !5157
  br label %return, !dbg !5157

if.else.34:                                       ; preds = %if.else.29
  %call35 = call i32* @__errno_location() #2, !dbg !5158
  store i32 33, i32* %call35, align 4, !dbg !5160, !tbaa !1599
  store double 0x7FF8000000000000, double* %retval, !dbg !5161
  br label %return, !dbg !5161

return:                                           ; preds = %if.else.34, %if.then.32, %if.then.27, %if.else.23, %if.then.22, %if.then.20
  %12 = load double, double* %retval, !dbg !5162
  ret double %12, !dbg !5162
}

; Function Attrs: nounwind
declare double @log2(double) #4

; Function Attrs: nounwind
declare double @modf(double, double*) #4

; Function Attrs: nounwind
declare double @sinh(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @tan(double) #4

; Function Attrs: nounwind
declare double @tanh(double) #4

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1082, !1083, !1084}
!llvm.ident = !{!1085}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !365, globals: !869)
!1 = !DIFile(filename: "mathmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !343, !344, !17, !11, !94, !351, !44, !352, !353}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !7, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !52, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!5, !5, !4}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!44, !5, !5, !4}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!5, !19, !11}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!5, !19, !5, !5}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !4}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!343 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFloatObject", file: !346, line: 18, baseType: !347)
!346 = !DIFile(filename: "./Include/floatobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 15, size: 192, align: 64, elements: !348)
!348 = !{!349, !350}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 16, baseType: !6, size: 128, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_fval", scope: !347, file: !346, line: 17, baseType: !343, size: 64, align: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLongObject", file: !355, line: 10, baseType: !356)
!355 = !DIFile(filename: "./Include/longobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "_longobject", file: !357, line: 89, size: 256, align: 64, elements: !358)
!357 = !DIFile(filename: "./Include/longintrepr.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !356, file: !357, line: 90, baseType: !23, size: 192, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ob_digit", scope: !356, file: !357, line: 91, baseType: !361, size: 32, align: 32, offset: 192)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 32, align: 32, elements: !82)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "digit", file: !357, line: 49, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !364, line: 51, baseType: !341)
!364 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!365 = !{!366, !372, !376, !386, !399, !405, !409, !413, !417, !421, !425, !440, !444, !448, !456, !461, !465, !469, !473, !478, !482, !490, !495, !504, !522, !526, !531, !535, !539, !543, !565, !593, !599, !625, !629, !637, !646, !652, !685, !699, !703, !716, !722, !728, !737, !742, !747, !752, !761, !765, !770, !787, !799, !802, !806, !810, !813, !817, !820, !826, !836, !841, !845, !849, !853, !857, !861}
!366 = !DISubprogram(name: "PyInit_math", scope: !367, file: !367, line: 1994, type: !368, isLocal: false, isDefinition: true, scopeLine: 1995, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_math, variables: !370)
!367 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/mathmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!368 = !DISubroutineType(types: !369)
!369 = !{!5}
!370 = !{!371}
!371 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !366, file: !367, line: 1996, type: !5)
!372 = !DISubprogram(name: "math_acos", scope: !367, file: !367, line: 873, type: !126, isLocal: true, isDefinition: true, scopeLine: 873, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_acos, variables: !373)
!373 = !{!374, !375}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !372, file: !367, line: 873, type: !5)
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !372, file: !367, line: 873, type: !5)
!376 = !DISubprogram(name: "math_1", scope: !367, file: !367, line: 811, type: !377, isLocal: true, isDefinition: true, scopeLine: 812, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double)*, i32)* @math_1, variables: !382)
!377 = !DISubroutineType(types: !378)
!378 = !{!5, !5, !379, !44}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!343, !343}
!382 = !{!383, !384, !385}
!383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !376, file: !367, line: 811, type: !5)
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !376, file: !367, line: 811, type: !379)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "can_overflow", arg: 3, scope: !376, file: !367, line: 811, type: !44)
!386 = !DISubprogram(name: "math_1_to_whatever", scope: !367, file: !367, line: 730, type: !387, isLocal: true, isDefinition: true, scopeLine: 733, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double)*, %struct._object* (double)*, i32)* @math_1_to_whatever, variables: !392)
!387 = !DISubroutineType(types: !388)
!388 = !{!5, !5, !379, !389, !44}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!5, !343}
!392 = !{!393, !394, !395, !396, !397, !398}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !386, file: !367, line: 730, type: !5)
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !386, file: !367, line: 730, type: !379)
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "from_double_func", arg: 3, scope: !386, file: !367, line: 731, type: !389)
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "can_overflow", arg: 4, scope: !386, file: !367, line: 732, type: !44)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !386, file: !367, line: 734, type: !343)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !386, file: !367, line: 734, type: !343)
!399 = !DISubprogram(name: "is_error", scope: !367, file: !367, line: 664, type: !400, isLocal: true, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @is_error, variables: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!44, !343}
!402 = !{!403, !404}
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !399, file: !367, line: 664, type: !343)
!404 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !399, file: !367, line: 666, type: !44)
!405 = !DISubprogram(name: "math_acosh", scope: !367, file: !367, line: 875, type: !126, isLocal: true, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_acosh, variables: !406)
!406 = !{!407, !408}
!407 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !405, file: !367, line: 875, type: !5)
!408 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !405, file: !367, line: 875, type: !5)
!409 = !DISubprogram(name: "math_asin", scope: !367, file: !367, line: 877, type: !126, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_asin, variables: !410)
!410 = !{!411, !412}
!411 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !409, file: !367, line: 877, type: !5)
!412 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !409, file: !367, line: 877, type: !5)
!413 = !DISubprogram(name: "math_asinh", scope: !367, file: !367, line: 879, type: !126, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_asinh, variables: !414)
!414 = !{!415, !416}
!415 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !413, file: !367, line: 879, type: !5)
!416 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !413, file: !367, line: 879, type: !5)
!417 = !DISubprogram(name: "math_atan", scope: !367, file: !367, line: 881, type: !126, isLocal: true, isDefinition: true, scopeLine: 881, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_atan, variables: !418)
!418 = !{!419, !420}
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !417, file: !367, line: 881, type: !5)
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !417, file: !367, line: 881, type: !5)
!421 = !DISubprogram(name: "math_atan2", scope: !367, file: !367, line: 883, type: !126, isLocal: true, isDefinition: true, scopeLine: 883, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_atan2, variables: !422)
!422 = !{!423, !424}
!423 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !421, file: !367, line: 883, type: !5)
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !421, file: !367, line: 883, type: !5)
!425 = !DISubprogram(name: "math_2", scope: !367, file: !367, line: 823, type: !426, isLocal: true, isDefinition: true, scopeLine: 824, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double, double)*, i8*)* @math_2, variables: !431)
!426 = !DISubroutineType(types: !427)
!427 = !{!5, !5, !428, !52}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!343, !343, !343}
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 1, scope: !425, file: !367, line: 823, type: !5)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !425, file: !367, line: 823, type: !428)
!434 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 3, scope: !425, file: !367, line: 823, type: !52)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ox", scope: !425, file: !367, line: 825, type: !5)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oy", scope: !425, file: !367, line: 825, type: !5)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !425, file: !367, line: 826, type: !343)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !425, file: !367, line: 826, type: !343)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !425, file: !367, line: 826, type: !343)
!440 = !DISubprogram(name: "m_atan2", scope: !367, file: !367, line: 525, type: !429, isLocal: true, isDefinition: true, scopeLine: 526, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @m_atan2, variables: !441)
!441 = !{!442, !443}
!442 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 1, scope: !440, file: !367, line: 525, type: !343)
!443 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !440, file: !367, line: 525, type: !343)
!444 = !DISubprogram(name: "math_atanh", scope: !367, file: !367, line: 886, type: !126, isLocal: true, isDefinition: true, scopeLine: 886, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_atanh, variables: !445)
!445 = !{!446, !447}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !444, file: !367, line: 886, type: !5)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !444, file: !367, line: 886, type: !5)
!448 = !DISubprogram(name: "math_ceil", scope: !367, file: !367, line: 889, type: !126, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_ceil, variables: !449)
!449 = !{!450, !451, !452, !453, !454}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !448, file: !367, line: 889, type: !5)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "number", arg: 2, scope: !448, file: !367, line: 889, type: !5)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !448, file: !367, line: 891, type: !5)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !448, file: !367, line: 891, type: !5)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !455, file: !367, line: 900, type: !5)
!455 = distinct !DILexicalBlock(scope: !448, file: !367, line: 900, column: 8)
!456 = !DISubprogram(name: "math_1_to_int", scope: !367, file: !367, line: 817, type: !377, isLocal: true, isDefinition: true, scopeLine: 818, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double)*, i32)* @math_1_to_int, variables: !457)
!457 = !{!458, !459, !460}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !456, file: !367, line: 817, type: !5)
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !456, file: !367, line: 817, type: !379)
!460 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "can_overflow", arg: 3, scope: !456, file: !367, line: 817, type: !44)
!461 = !DISubprogram(name: "math_copysign", scope: !367, file: !367, line: 908, type: !126, isLocal: true, isDefinition: true, scopeLine: 908, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_copysign, variables: !462)
!462 = !{!463, !464}
!463 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !461, file: !367, line: 908, type: !5)
!464 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !461, file: !367, line: 908, type: !5)
!465 = !DISubprogram(name: "math_cos", scope: !367, file: !367, line: 912, type: !126, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_cos, variables: !466)
!466 = !{!467, !468}
!467 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !465, file: !367, line: 912, type: !5)
!468 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !465, file: !367, line: 912, type: !5)
!469 = !DISubprogram(name: "math_cosh", scope: !367, file: !367, line: 914, type: !126, isLocal: true, isDefinition: true, scopeLine: 914, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_cosh, variables: !470)
!470 = !{!471, !472}
!471 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !469, file: !367, line: 914, type: !5)
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !469, file: !367, line: 914, type: !5)
!473 = !DISubprogram(name: "math_degrees", scope: !367, file: !367, line: 1865, type: !126, isLocal: true, isDefinition: true, scopeLine: 1866, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_degrees, variables: !474)
!474 = !{!475, !476, !477}
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !473, file: !367, line: 1865, type: !5)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !473, file: !367, line: 1865, type: !5)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !473, file: !367, line: 1867, type: !343)
!478 = !DISubprogram(name: "math_erf", scope: !367, file: !367, line: 916, type: !126, isLocal: true, isDefinition: true, scopeLine: 916, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_erf, variables: !479)
!479 = !{!480, !481}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !478, file: !367, line: 916, type: !5)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !478, file: !367, line: 916, type: !5)
!482 = !DISubprogram(name: "math_1a", scope: !367, file: !367, line: 768, type: !483, isLocal: true, isDefinition: true, scopeLine: 769, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double)*)* @math_1a, variables: !485)
!483 = !DISubroutineType(types: !484)
!484 = !{!5, !5, !379}
!485 = !{!486, !487, !488, !489}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !482, file: !367, line: 768, type: !5)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !482, file: !367, line: 768, type: !379)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !482, file: !367, line: 770, type: !343)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !482, file: !367, line: 770, type: !343)
!490 = !DISubprogram(name: "m_erf", scope: !367, file: !367, line: 483, type: !380, isLocal: true, isDefinition: true, scopeLine: 484, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_erf, variables: !491)
!491 = !{!492, !493, !494}
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !490, file: !367, line: 483, type: !343)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !490, file: !367, line: 485, type: !343)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cf", scope: !490, file: !367, line: 485, type: !343)
!495 = !DISubprogram(name: "m_erf_series", scope: !367, file: !367, line: 421, type: !380, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_erf_series, variables: !496)
!496 = !{!497, !498, !499, !500, !501, !502, !503}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !495, file: !367, line: 421, type: !343)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !495, file: !367, line: 423, type: !343)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "acc", scope: !495, file: !367, line: 423, type: !343)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fk", scope: !495, file: !367, line: 423, type: !343)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !495, file: !367, line: 423, type: !343)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !495, file: !367, line: 424, type: !44)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saved_errno", scope: !495, file: !367, line: 424, type: !44)
!504 = !DISubprogram(name: "m_erfc_contfrac", scope: !367, file: !367, line: 451, type: !380, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_erfc_contfrac, variables: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !504, file: !367, line: 451, type: !343)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x2", scope: !504, file: !367, line: 453, type: !343)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !504, file: !367, line: 453, type: !343)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "da", scope: !504, file: !367, line: 453, type: !343)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !504, file: !367, line: 453, type: !343)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p_last", scope: !504, file: !367, line: 453, type: !343)
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !504, file: !367, line: 453, type: !343)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q_last", scope: !504, file: !367, line: 453, type: !343)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !504, file: !367, line: 453, type: !343)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !504, file: !367, line: 453, type: !343)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !504, file: !367, line: 454, type: !44)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "saved_errno", scope: !504, file: !367, line: 454, type: !44)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !519, file: !367, line: 465, type: !343)
!519 = distinct !DILexicalBlock(scope: !520, file: !367, line: 464, column: 30)
!520 = distinct !DILexicalBlock(scope: !521, file: !367, line: 464, column: 5)
!521 = distinct !DILexicalBlock(scope: !504, file: !367, line: 464, column: 5)
!522 = !DISubprogram(name: "math_erfc", scope: !367, file: !367, line: 918, type: !126, isLocal: true, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_erfc, variables: !523)
!523 = !{!524, !525}
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !522, file: !367, line: 918, type: !5)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !522, file: !367, line: 918, type: !5)
!526 = !DISubprogram(name: "m_erfc", scope: !367, file: !367, line: 501, type: !380, isLocal: true, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_erfc, variables: !527)
!527 = !{!528, !529, !530}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !526, file: !367, line: 501, type: !343)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !526, file: !367, line: 503, type: !343)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cf", scope: !526, file: !367, line: 503, type: !343)
!531 = !DISubprogram(name: "math_exp", scope: !367, file: !367, line: 920, type: !126, isLocal: true, isDefinition: true, scopeLine: 920, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_exp, variables: !532)
!532 = !{!533, !534}
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !531, file: !367, line: 920, type: !5)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !531, file: !367, line: 920, type: !5)
!535 = !DISubprogram(name: "math_expm1", scope: !367, file: !367, line: 922, type: !126, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_expm1, variables: !536)
!536 = !{!537, !538}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !535, file: !367, line: 922, type: !5)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !535, file: !367, line: 922, type: !5)
!539 = !DISubprogram(name: "math_fabs", scope: !367, file: !367, line: 926, type: !126, isLocal: true, isDefinition: true, scopeLine: 926, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_fabs, variables: !540)
!540 = !{!541, !542}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !539, file: !367, line: 926, type: !5)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !539, file: !367, line: 926, type: !5)
!543 = !DISubprogram(name: "math_factorial", scope: !367, file: !367, line: 1408, type: !126, isLocal: true, isDefinition: true, scopeLine: 1409, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_factorial, variables: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551, !554, !555, !557, !561, !563}
!545 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !543, file: !367, line: 1408, type: !5)
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !543, file: !367, line: 1408, type: !5)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !543, file: !367, line: 1410, type: !17)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !543, file: !367, line: 1411, type: !5)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "odd_part", scope: !543, file: !367, line: 1411, type: !5)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "two_valuation", scope: !543, file: !367, line: 1411, type: !5)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lx", scope: !552, file: !367, line: 1414, type: !5)
!552 = distinct !DILexicalBlock(scope: !553, file: !367, line: 1413, column: 129)
!553 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1413, column: 9)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !552, file: !367, line: 1415, type: !343)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !556, file: !367, line: 1425, type: !5)
!556 = distinct !DILexicalBlock(scope: !552, file: !367, line: 1425, column: 12)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !558, file: !367, line: 1449, type: !5)
!558 = distinct !DILexicalBlock(scope: !559, file: !367, line: 1449, column: 12)
!559 = distinct !DILexicalBlock(scope: !560, file: !367, line: 1448, column: 38)
!560 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1448, column: 9)
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !562, file: !367, line: 1453, type: !5)
!562 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1453, column: 8)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !564, file: !367, line: 1454, type: !5)
!564 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1454, column: 8)
!565 = !DISubprogram(name: "factorial_odd_part", scope: !367, file: !367, line: 1343, type: !566, isLocal: true, isDefinition: true, scopeLine: 1344, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64)* @factorial_odd_part, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!5, !96}
!568 = !{!569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !583, !585, !587, !589, !591}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !565, file: !367, line: 1343, type: !96)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !565, file: !367, line: 1345, type: !17)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !565, file: !367, line: 1346, type: !96)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lower", scope: !565, file: !367, line: 1346, type: !96)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "upper", scope: !565, file: !367, line: 1346, type: !96)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partial", scope: !565, file: !367, line: 1347, type: !5)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !565, file: !367, line: 1347, type: !5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inner", scope: !565, file: !367, line: 1347, type: !5)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outer", scope: !565, file: !367, line: 1347, type: !5)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !579, file: !367, line: 1371, type: !5)
!579 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1371, column: 12)
!580 = distinct !DILexicalBlock(scope: !581, file: !367, line: 1356, column: 46)
!581 = distinct !DILexicalBlock(scope: !582, file: !367, line: 1356, column: 5)
!582 = distinct !DILexicalBlock(scope: !565, file: !367, line: 1356, column: 5)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !367, line: 1374, type: !5)
!584 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1374, column: 12)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !586, file: !367, line: 1383, type: !5)
!586 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1383, column: 12)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !367, line: 1386, type: !5)
!588 = distinct !DILexicalBlock(scope: !565, file: !367, line: 1386, column: 8)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !590, file: !367, line: 1390, type: !5)
!590 = distinct !DILexicalBlock(scope: !565, file: !367, line: 1390, column: 8)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !592, file: !367, line: 1391, type: !5)
!592 = distinct !DILexicalBlock(scope: !565, file: !367, line: 1391, column: 8)
!593 = !DISubprogram(name: "bit_length", scope: !367, file: !367, line: 1199, type: !594, isLocal: true, isDefinition: true, scopeLine: 1200, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @bit_length, variables: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!96, !96}
!596 = !{!597, !598}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !593, file: !367, line: 1199, type: !96)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !593, file: !367, line: 1201, type: !96)
!599 = !DISubprogram(name: "factorial_partial_product", scope: !367, file: !367, line: 1290, type: !600, isLocal: true, isDefinition: true, scopeLine: 1292, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i64, i64, i64)* @factorial_partial_product, variables: !602)
!600 = !DISubroutineType(types: !601)
!601 = !{!5, !96, !96, !96}
!602 = !{!603, !604, !605, !606, !607, !608, !609, !610, !611, !614, !615, !617, !620, !622}
!603 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 1, scope: !599, file: !367, line: 1290, type: !96)
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "stop", arg: 2, scope: !599, file: !367, line: 1290, type: !96)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_bits", arg: 3, scope: !599, file: !367, line: 1291, type: !96)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "midpoint", scope: !599, file: !367, line: 1293, type: !96)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_operands", scope: !599, file: !367, line: 1293, type: !96)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left", scope: !599, file: !367, line: 1294, type: !5)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "right", scope: !599, file: !367, line: 1294, type: !5)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !599, file: !367, line: 1294, type: !5)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !612, file: !367, line: 1317, type: !96)
!612 = distinct !DILexicalBlock(scope: !613, file: !367, line: 1316, column: 43)
!613 = distinct !DILexicalBlock(scope: !599, file: !367, line: 1315, column: 9)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "total", scope: !612, file: !367, line: 1317, type: !96)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !616, file: !367, line: 1335, type: !5)
!616 = distinct !DILexicalBlock(scope: !599, file: !367, line: 1335, column: 8)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !618, file: !367, line: 1335, type: !5)
!618 = distinct !DILexicalBlock(scope: !619, file: !367, line: 1335, column: 96)
!619 = distinct !DILexicalBlock(scope: !616, file: !367, line: 1335, column: 62)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !621, file: !367, line: 1336, type: !5)
!621 = distinct !DILexicalBlock(scope: !599, file: !367, line: 1336, column: 8)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !623, file: !367, line: 1336, type: !5)
!623 = distinct !DILexicalBlock(scope: !624, file: !367, line: 1336, column: 97)
!624 = distinct !DILexicalBlock(scope: !621, file: !367, line: 1336, column: 63)
!625 = !DISubprogram(name: "count_set_bits", scope: !367, file: !367, line: 1210, type: !594, isLocal: true, isDefinition: true, scopeLine: 1211, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i64)* @count_set_bits, variables: !626)
!626 = !{!627, !628}
!627 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !625, file: !367, line: 1210, type: !96)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !625, file: !367, line: 1212, type: !96)
!629 = !DISubprogram(name: "math_floor", scope: !367, file: !367, line: 929, type: !126, isLocal: true, isDefinition: true, scopeLine: 929, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_floor, variables: !630)
!630 = !{!631, !632, !633, !634, !635}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !629, file: !367, line: 929, type: !5)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "number", arg: 2, scope: !629, file: !367, line: 929, type: !5)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !629, file: !367, line: 931, type: !5)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !629, file: !367, line: 931, type: !5)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !636, file: !367, line: 940, type: !5)
!636 = distinct !DILexicalBlock(scope: !629, file: !367, line: 940, column: 8)
!637 = !DISubprogram(name: "math_fmod", scope: !367, file: !367, line: 1700, type: !126, isLocal: true, isDefinition: true, scopeLine: 1701, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_fmod, variables: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !637, file: !367, line: 1700, type: !5)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !637, file: !367, line: 1700, type: !5)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ox", scope: !637, file: !367, line: 1702, type: !5)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oy", scope: !637, file: !367, line: 1702, type: !5)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !637, file: !367, line: 1703, type: !343)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !637, file: !367, line: 1703, type: !343)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !637, file: !367, line: 1703, type: !343)
!646 = !DISubprogram(name: "math_frexp", scope: !367, file: !367, line: 1493, type: !126, isLocal: true, isDefinition: true, scopeLine: 1494, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_frexp, variables: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !646, file: !367, line: 1493, type: !5)
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !646, file: !367, line: 1493, type: !5)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !646, file: !367, line: 1495, type: !44)
!651 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !646, file: !367, line: 1496, type: !343)
!652 = !DISubprogram(name: "math_fsum", scope: !367, file: !367, line: 1063, type: !126, isLocal: true, isDefinition: true, scopeLine: 1064, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_fsum, variables: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !670, !671, !672, !673, !674, !676, !677, !678, !683}
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !652, file: !367, line: 1063, type: !5)
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seq", arg: 2, scope: !652, file: !367, line: 1063, type: !5)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !652, file: !367, line: 1065, type: !5)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iter", scope: !652, file: !367, line: 1065, type: !5)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sum", scope: !652, file: !367, line: 1065, type: !5)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !652, file: !367, line: 1066, type: !11)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !652, file: !367, line: 1066, type: !11)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !652, file: !367, line: 1066, type: !11)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !652, file: !367, line: 1066, type: !11)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !652, file: !367, line: 1067, type: !343)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !652, file: !367, line: 1067, type: !343)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !652, file: !367, line: 1067, type: !343)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !652, file: !367, line: 1067, type: !667)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 2048, align: 64, elements: !668)
!668 = !{!669}
!669 = !DISubrange(count: 32)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !652, file: !367, line: 1067, type: !351)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xsave", scope: !652, file: !367, line: 1068, type: !343)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "special_sum", scope: !652, file: !367, line: 1068, type: !343)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inf_sum", scope: !652, file: !367, line: 1068, type: !343)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hi", scope: !652, file: !367, line: 1069, type: !675)
!675 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !343)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yr", scope: !652, file: !367, line: 1069, type: !675)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lo", scope: !652, file: !367, line: 1069, type: !675)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !679, file: !367, line: 1089, type: !5)
!679 = distinct !DILexicalBlock(scope: !680, file: !367, line: 1089, column: 12)
!680 = distinct !DILexicalBlock(scope: !681, file: !367, line: 1077, column: 13)
!681 = distinct !DILexicalBlock(scope: !682, file: !367, line: 1077, column: 5)
!682 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1077, column: 5)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !684, file: !367, line: 1174, type: !5)
!684 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1174, column: 8)
!685 = !DISubprogram(name: "_fsum_realloc", scope: !367, file: !367, line: 1006, type: !686, isLocal: true, isDefinition: true, scopeLine: 1008, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double**, i64, double*, i64*)* @_fsum_realloc, variables: !689)
!686 = !DISubroutineType(types: !687)
!687 = !{!44, !688, !11, !351, !247}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!689 = !{!690, !691, !692, !693, !694, !695, !696}
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_ptr", arg: 1, scope: !685, file: !367, line: 1006, type: !688)
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !685, file: !367, line: 1006, type: !11)
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 3, scope: !685, file: !367, line: 1007, type: !351)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m_ptr", arg: 4, scope: !685, file: !367, line: 1007, type: !247)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !685, file: !367, line: 1009, type: !4)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !685, file: !367, line: 1010, type: !11)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !697, file: !367, line: 1014, type: !351)
!697 = distinct !DILexicalBlock(scope: !698, file: !367, line: 1013, column: 74)
!698 = distinct !DILexicalBlock(scope: !685, file: !367, line: 1013, column: 9)
!699 = !DISubprogram(name: "math_gamma", scope: !367, file: !367, line: 948, type: !126, isLocal: true, isDefinition: true, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_gamma, variables: !700)
!700 = !{!701, !702}
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !699, file: !367, line: 948, type: !5)
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !699, file: !367, line: 948, type: !5)
!703 = !DISubprogram(name: "m_tgamma", scope: !367, file: !367, line: 227, type: !380, isLocal: true, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_tgamma, variables: !704)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !714}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !703, file: !367, line: 227, type: !343)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !703, file: !367, line: 229, type: !343)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !703, file: !367, line: 229, type: !343)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !703, file: !367, line: 229, type: !343)
!709 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !703, file: !367, line: 229, type: !343)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sqrtpow", scope: !703, file: !367, line: 229, type: !343)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !712, file: !367, line: 285, type: !343)
!712 = distinct !DILexicalBlock(scope: !713, file: !367, line: 280, column: 38)
!713 = distinct !DILexicalBlock(scope: !703, file: !367, line: 280, column: 9)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !715, file: !367, line: 289, type: !343)
!715 = distinct !DILexicalBlock(scope: !713, file: !367, line: 288, column: 10)
!716 = !DISubprogram(name: "sinpi", scope: !367, file: !367, line: 70, type: !380, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @sinpi, variables: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !716, file: !367, line: 70, type: !343)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !716, file: !367, line: 72, type: !343)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !716, file: !367, line: 72, type: !343)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !716, file: !367, line: 73, type: !44)
!722 = !DISubprogram(name: "lanczos_sum", scope: !367, file: !367, line: 198, type: !380, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @lanczos_sum, variables: !723)
!723 = !{!724, !725, !726, !727}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !722, file: !367, line: 198, type: !343)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !722, file: !367, line: 200, type: !343)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "den", scope: !722, file: !367, line: 200, type: !343)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !722, file: !367, line: 201, type: !44)
!728 = !DISubprogram(name: "math_hypot", scope: !367, file: !367, line: 1734, type: !126, isLocal: true, isDefinition: true, scopeLine: 1735, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_hypot, variables: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736}
!730 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !728, file: !367, line: 1734, type: !5)
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !728, file: !367, line: 1734, type: !5)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ox", scope: !728, file: !367, line: 1736, type: !5)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oy", scope: !728, file: !367, line: 1736, type: !5)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !728, file: !367, line: 1737, type: !343)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !728, file: !367, line: 1737, type: !343)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !728, file: !367, line: 1737, type: !343)
!737 = !DISubprogram(name: "math_isfinite", scope: !367, file: !367, line: 1891, type: !126, isLocal: true, isDefinition: true, scopeLine: 1892, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_isfinite, variables: !738)
!738 = !{!739, !740, !741}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !737, file: !367, line: 1891, type: !5)
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !737, file: !367, line: 1891, type: !5)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !737, file: !367, line: 1893, type: !343)
!742 = !DISubprogram(name: "math_isinf", scope: !367, file: !367, line: 1917, type: !126, isLocal: true, isDefinition: true, scopeLine: 1918, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_isinf, variables: !743)
!743 = !{!744, !745, !746}
!744 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !742, file: !367, line: 1917, type: !5)
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !742, file: !367, line: 1917, type: !5)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !742, file: !367, line: 1919, type: !343)
!747 = !DISubprogram(name: "math_isnan", scope: !367, file: !367, line: 1904, type: !126, isLocal: true, isDefinition: true, scopeLine: 1905, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_isnan, variables: !748)
!748 = !{!749, !750, !751}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !747, file: !367, line: 1904, type: !5)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !747, file: !367, line: 1904, type: !5)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !747, file: !367, line: 1906, type: !343)
!752 = !DISubprogram(name: "math_ldexp", scope: !367, file: !367, line: 1520, type: !126, isLocal: true, isDefinition: true, scopeLine: 1521, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_ldexp, variables: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !752, file: !367, line: 1520, type: !5)
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !752, file: !367, line: 1520, type: !5)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !752, file: !367, line: 1522, type: !343)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !752, file: !367, line: 1522, type: !343)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oexp", scope: !752, file: !367, line: 1523, type: !5)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp", scope: !752, file: !367, line: 1524, type: !17)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overflow", scope: !752, file: !367, line: 1525, type: !44)
!761 = !DISubprogram(name: "math_lgamma", scope: !367, file: !367, line: 950, type: !126, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_lgamma, variables: !762)
!762 = !{!763, !764}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !367, line: 950, type: !5)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !761, file: !367, line: 950, type: !5)
!765 = !DISubprogram(name: "m_lgamma", scope: !367, file: !367, line: 328, type: !380, isLocal: true, isDefinition: true, scopeLine: 329, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_lgamma, variables: !766)
!766 = !{!767, !768, !769}
!767 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !765, file: !367, line: 328, type: !343)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !765, file: !367, line: 330, type: !343)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "absx", scope: !765, file: !367, line: 330, type: !343)
!770 = !DISubprogram(name: "math_log", scope: !367, file: !367, line: 1650, type: !126, isLocal: true, isDefinition: true, scopeLine: 1651, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_log, variables: !771)
!771 = !{!772, !773, !774, !775, !776, !777, !778, !779, !783, !785}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !770, file: !367, line: 1650, type: !5)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !770, file: !367, line: 1650, type: !5)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arg", scope: !770, file: !367, line: 1652, type: !5)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !770, file: !367, line: 1653, type: !5)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !770, file: !367, line: 1654, type: !5)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "den", scope: !770, file: !367, line: 1654, type: !5)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ans", scope: !770, file: !367, line: 1655, type: !5)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !780, file: !367, line: 1666, type: !5)
!780 = distinct !DILexicalBlock(scope: !781, file: !367, line: 1666, column: 12)
!781 = distinct !DILexicalBlock(scope: !782, file: !367, line: 1665, column: 28)
!782 = distinct !DILexicalBlock(scope: !770, file: !367, line: 1665, column: 9)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !367, line: 1671, type: !5)
!784 = distinct !DILexicalBlock(scope: !770, file: !367, line: 1671, column: 8)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !786, file: !367, line: 1672, type: !5)
!786 = distinct !DILexicalBlock(scope: !770, file: !367, line: 1672, column: 8)
!787 = !DISubprogram(name: "loghelper", scope: !367, file: !367, line: 1612, type: !788, isLocal: true, isDefinition: true, scopeLine: 1613, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, double (double)*, i8*)* @loghelper, variables: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!5, !5, !379, !52}
!790 = !{!791, !792, !793, !794, !797, !798}
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 1, scope: !787, file: !367, line: 1612, type: !5)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "func", arg: 2, scope: !787, file: !367, line: 1612, type: !379)
!793 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "funcname", arg: 3, scope: !787, file: !367, line: 1612, type: !52)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !795, file: !367, line: 1616, type: !343)
!795 = distinct !DILexicalBlock(scope: !796, file: !367, line: 1615, column: 77)
!796 = distinct !DILexicalBlock(scope: !787, file: !367, line: 1615, column: 9)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !795, file: !367, line: 1616, type: !343)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !795, file: !367, line: 1617, type: !11)
!799 = !DISubprogram(name: "m_log", scope: !367, file: !367, line: 560, type: !380, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_log, variables: !800)
!800 = !{!801}
!801 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !799, file: !367, line: 560, type: !343)
!802 = !DISubprogram(name: "math_log1p", scope: !367, file: !367, line: 952, type: !126, isLocal: true, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_log1p, variables: !803)
!803 = !{!804, !805}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !802, file: !367, line: 952, type: !5)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !802, file: !367, line: 952, type: !5)
!806 = !DISubprogram(name: "math_log10", scope: !367, file: !367, line: 1691, type: !126, isLocal: true, isDefinition: true, scopeLine: 1692, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_log10, variables: !807)
!807 = !{!808, !809}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !806, file: !367, line: 1691, type: !5)
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !806, file: !367, line: 1691, type: !5)
!810 = !DISubprogram(name: "m_log10", scope: !367, file: !367, line: 637, type: !380, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_log10, variables: !811)
!811 = !{!812}
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !810, file: !367, line: 637, type: !343)
!813 = !DISubprogram(name: "math_log2", scope: !367, file: !367, line: 1682, type: !126, isLocal: true, isDefinition: true, scopeLine: 1683, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_log2, variables: !814)
!814 = !{!815, !816}
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !813, file: !367, line: 1682, type: !5)
!816 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !813, file: !367, line: 1682, type: !5)
!817 = !DISubprogram(name: "m_log2", scope: !367, file: !367, line: 592, type: !380, isLocal: true, isDefinition: true, scopeLine: 593, flags: DIFlagPrototyped, isOptimized: true, function: double (double)* @m_log2, variables: !818)
!818 = !{!819}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !817, file: !367, line: 592, type: !343)
!820 = !DISubprogram(name: "math_modf", scope: !367, file: !367, line: 1575, type: !126, isLocal: true, isDefinition: true, scopeLine: 1576, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_modf, variables: !821)
!821 = !{!822, !823, !824, !825}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !820, file: !367, line: 1575, type: !5)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !820, file: !367, line: 1575, type: !5)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !820, file: !367, line: 1577, type: !343)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !820, file: !367, line: 1577, type: !343)
!826 = !DISubprogram(name: "math_pow", scope: !367, file: !367, line: 1781, type: !126, isLocal: true, isDefinition: true, scopeLine: 1782, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_pow, variables: !827)
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !826, file: !367, line: 1781, type: !5)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !826, file: !367, line: 1781, type: !5)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ox", scope: !826, file: !367, line: 1783, type: !5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oy", scope: !826, file: !367, line: 1783, type: !5)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !826, file: !367, line: 1784, type: !343)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !826, file: !367, line: 1784, type: !343)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !826, file: !367, line: 1784, type: !343)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "odd_y", scope: !826, file: !367, line: 1785, type: !44)
!836 = !DISubprogram(name: "math_radians", scope: !367, file: !367, line: 1878, type: !126, isLocal: true, isDefinition: true, scopeLine: 1879, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_radians, variables: !837)
!837 = !{!838, !839, !840}
!838 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !836, file: !367, line: 1878, type: !5)
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !836, file: !367, line: 1878, type: !5)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !836, file: !367, line: 1880, type: !343)
!841 = !DISubprogram(name: "math_sin", scope: !367, file: !367, line: 955, type: !126, isLocal: true, isDefinition: true, scopeLine: 955, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_sin, variables: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !841, file: !367, line: 955, type: !5)
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !841, file: !367, line: 955, type: !5)
!845 = !DISubprogram(name: "math_sinh", scope: !367, file: !367, line: 957, type: !126, isLocal: true, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_sinh, variables: !846)
!846 = !{!847, !848}
!847 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !845, file: !367, line: 957, type: !5)
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !845, file: !367, line: 957, type: !5)
!849 = !DISubprogram(name: "math_sqrt", scope: !367, file: !367, line: 959, type: !126, isLocal: true, isDefinition: true, scopeLine: 959, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_sqrt, variables: !850)
!850 = !{!851, !852}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !849, file: !367, line: 959, type: !5)
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !849, file: !367, line: 959, type: !5)
!853 = !DISubprogram(name: "math_tan", scope: !367, file: !367, line: 961, type: !126, isLocal: true, isDefinition: true, scopeLine: 961, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_tan, variables: !854)
!854 = !{!855, !856}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !853, file: !367, line: 961, type: !5)
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !853, file: !367, line: 961, type: !5)
!857 = !DISubprogram(name: "math_tanh", scope: !367, file: !367, line: 963, type: !126, isLocal: true, isDefinition: true, scopeLine: 963, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_tanh, variables: !858)
!858 = !{!859, !860}
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !857, file: !367, line: 963, type: !5)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !857, file: !367, line: 963, type: !5)
!861 = !DISubprogram(name: "math_trunc", scope: !367, file: !367, line: 1464, type: !126, isLocal: true, isDefinition: true, scopeLine: 1465, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @math_trunc, variables: !862)
!862 = !{!863, !864, !865, !866, !867}
!863 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !861, file: !367, line: 1464, type: !5)
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "number", arg: 2, scope: !861, file: !367, line: 1464, type: !5)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "trunc", scope: !861, file: !367, line: 1467, type: !5)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !861, file: !367, line: 1467, type: !5)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !868, file: !367, line: 1483, type: !5)
!868 = distinct !DILexicalBlock(scope: !861, file: !367, line: 1483, column: 8)
!869 = !{!870, !893, !897, !901, !905, !909, !913, !917, !921, !925, !929, !937, !941, !945, !949, !953, !955, !959, !960, !964, !965, !967, !971, !975, !980, !984, !985, !989, !993, !997, !1001, !1002, !1003, !1004, !1008, !1012, !1013, !1017, !1021, !1025, !1029, !1033, !1035, !1036, !1037, !1041, !1045, !1049, !1050, !1054, !1058, !1059, !1060, !1064, !1068, !1072, !1076, !1077, !1078}
!870 = !DIGlobalVariable(name: "mathmodule", scope: !0, file: !367, line: 1981, type: !871, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @mathmodule)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !872, line: 47, size: 832, align: 64, elements: !873)
!872 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!873 = !{!874, !883, !884, !885, !886, !889, !890, !891, !892}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !871, file: !872, line: 48, baseType: !875, size: 320, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !872, line: 38, baseType: !876)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !872, line: 33, size: 320, align: 64, elements: !877)
!877 = !{!878, !879, !881, !882}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !876, file: !872, line: 34, baseType: !6, size: 128, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !876, file: !872, line: 35, baseType: !880, size: 64, align: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !876, file: !872, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !876, file: !872, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !871, file: !872, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !871, file: !872, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !871, file: !872, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !871, file: !872, line: 52, baseType: !887, size: 64, align: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64, align: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !871, file: !872, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !871, file: !872, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !871, file: !872, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !871, file: !872, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!893 = !DIGlobalVariable(name: "module_doc", scope: !0, file: !367, line: 1976, type: !894, isLocal: true, isDefinition: true, variable: [110 x i8]* @module_doc)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 880, align: 8, elements: !895)
!895 = !{!896}
!896 = !DISubrange(count: 110)
!897 = !DIGlobalVariable(name: "math_methods", scope: !0, file: !367, line: 1929, type: !898, isLocal: true, isDefinition: true, variable: [43 x %struct.PyMethodDef]* @math_methods)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 11008, align: 64, elements: !899)
!899 = !{!900}
!900 = !DISubrange(count: 43)
!901 = !DIGlobalVariable(name: "math_acos_doc", scope: !0, file: !367, line: 873, type: !902, isLocal: true, isDefinition: true, variable: [59 x i8]* @math_acos_doc)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 472, align: 8, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 59)
!905 = !DIGlobalVariable(name: "math_acosh_doc", scope: !0, file: !367, line: 875, type: !906, isLocal: true, isDefinition: true, variable: [71 x i8]* @math_acosh_doc)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 568, align: 8, elements: !907)
!907 = !{!908}
!908 = !DISubrange(count: 71)
!909 = !DIGlobalVariable(name: "math_asin_doc", scope: !0, file: !367, line: 877, type: !910, isLocal: true, isDefinition: true, variable: [57 x i8]* @math_asin_doc)
!910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 456, align: 8, elements: !911)
!911 = !{!912}
!912 = !DISubrange(count: 57)
!913 = !DIGlobalVariable(name: "math_asinh_doc", scope: !0, file: !367, line: 879, type: !914, isLocal: true, isDefinition: true, variable: [69 x i8]* @math_asinh_doc)
!914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 552, align: 8, elements: !915)
!915 = !{!916}
!916 = !DISubrange(count: 69)
!917 = !DIGlobalVariable(name: "math_atan_doc", scope: !0, file: !367, line: 881, type: !918, isLocal: true, isDefinition: true, variable: [60 x i8]* @math_atan_doc)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 480, align: 8, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 60)
!921 = !DIGlobalVariable(name: "math_atan2_doc", scope: !0, file: !367, line: 883, type: !922, isLocal: true, isDefinition: true, variable: [126 x i8]* @math_atan2_doc)
!922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1008, align: 8, elements: !923)
!923 = !{!924}
!924 = !DISubrange(count: 126)
!925 = !DIGlobalVariable(name: "math_atanh_doc", scope: !0, file: !367, line: 886, type: !926, isLocal: true, isDefinition: true, variable: [72 x i8]* @math_atanh_doc)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 576, align: 8, elements: !927)
!927 = !{!928}
!928 = !DISubrange(count: 72)
!929 = !DIGlobalVariable(name: "PyId___ceil__", scope: !448, file: !367, line: 890, type: !930, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @math_ceil.PyId___ceil__)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !7, line: 144, baseType: !931)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !7, line: 140, size: 192, align: 64, elements: !932)
!932 = !{!933, !935, !936}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !931, file: !7, line: 141, baseType: !934, size: 64, align: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64, align: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !931, file: !7, line: 142, baseType: !29, size: 64, align: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !931, file: !7, line: 143, baseType: !5, size: 64, align: 64, offset: 128)
!937 = !DIGlobalVariable(name: "math_ceil_doc", scope: !0, file: !367, line: 904, type: !938, isLocal: true, isDefinition: true, variable: [86 x i8]* @math_ceil_doc)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 688, align: 8, elements: !939)
!939 = !{!940}
!940 = !DISubrange(count: 86)
!941 = !DIGlobalVariable(name: "math_copysign_doc", scope: !0, file: !367, line: 908, type: !942, isLocal: true, isDefinition: true, variable: [168 x i8]* @math_copysign_doc)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1344, align: 8, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 168)
!945 = !DIGlobalVariable(name: "math_cos_doc", scope: !0, file: !367, line: 912, type: !946, isLocal: true, isDefinition: true, variable: [54 x i8]* @math_cos_doc)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 432, align: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 54)
!949 = !DIGlobalVariable(name: "math_cosh_doc", scope: !0, file: !367, line: 914, type: !950, isLocal: true, isDefinition: true, variable: [44 x i8]* @math_cosh_doc)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 352, align: 8, elements: !951)
!951 = !{!952}
!952 = !DISubrange(count: 44)
!953 = !DIGlobalVariable(name: "radToDeg", scope: !0, file: !367, line: 1862, type: !954, isLocal: true, isDefinition: true, variable: double 0x404CA5DC1A63C1F8)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!955 = !DIGlobalVariable(name: "math_degrees_doc", scope: !0, file: !367, line: 1873, type: !956, isLocal: true, isDefinition: true, variable: [53 x i8]* @math_degrees_doc)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 424, align: 8, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 53)
!959 = !DIGlobalVariable(name: "sqrtpi", scope: !0, file: !367, line: 66, type: !954, isLocal: true, isDefinition: true, variable: double 0x3FFC5BF891B4EF6B)
!960 = !DIGlobalVariable(name: "math_erf_doc", scope: !0, file: !367, line: 916, type: !961, isLocal: true, isDefinition: true, variable: [29 x i8]* @math_erf_doc)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 232, align: 8, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 29)
!964 = !DIGlobalVariable(name: "math_erfc_doc", scope: !0, file: !367, line: 918, type: !950, isLocal: true, isDefinition: true, variable: [44 x i8]* @math_erfc_doc)
!965 = !DIGlobalVariable(name: "math_exp_doc", scope: !0, file: !367, line: 920, type: !966, isLocal: true, isDefinition: true, variable: [43 x i8]* @math_exp_doc)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 344, align: 8, elements: !899)
!967 = !DIGlobalVariable(name: "math_expm1_doc", scope: !0, file: !367, line: 922, type: !968, isLocal: true, isDefinition: true, variable: [129 x i8]* @math_expm1_doc)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1032, align: 8, elements: !969)
!969 = !{!970}
!970 = !DISubrange(count: 129)
!971 = !DIGlobalVariable(name: "math_fabs_doc", scope: !0, file: !367, line: 926, type: !972, isLocal: true, isDefinition: true, variable: [51 x i8]* @math_fabs_doc)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 408, align: 8, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 51)
!975 = !DIGlobalVariable(name: "SmallFactorials", scope: !0, file: !367, line: 1397, type: !976, isLocal: true, isDefinition: true, variable: [21 x i64]* @SmallFactorials)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 1344, align: 64, elements: !978)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!978 = !{!979}
!979 = !DISubrange(count: 21)
!980 = !DIGlobalVariable(name: "math_factorial_doc", scope: !0, file: !367, line: 1458, type: !981, isLocal: true, isDefinition: true, variable: [88 x i8]* @math_factorial_doc)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 704, align: 8, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 88)
!984 = !DIGlobalVariable(name: "PyId___floor__", scope: !629, file: !367, line: 930, type: !930, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @math_floor.PyId___floor__)
!985 = !DIGlobalVariable(name: "math_floor_doc", scope: !0, file: !367, line: 944, type: !986, isLocal: true, isDefinition: true, variable: [84 x i8]* @math_floor_doc)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 672, align: 8, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 84)
!989 = !DIGlobalVariable(name: "math_fmod_doc", scope: !0, file: !367, line: 1729, type: !990, isLocal: true, isDefinition: true, variable: [75 x i8]* @math_fmod_doc)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 600, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 75)
!993 = !DIGlobalVariable(name: "math_frexp_doc", scope: !0, file: !367, line: 1512, type: !994, isLocal: true, isDefinition: true, variable: [178 x i8]* @math_frexp_doc)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1424, align: 8, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 178)
!997 = !DIGlobalVariable(name: "math_fsum_doc", scope: !0, file: !367, line: 1182, type: !998, isLocal: true, isDefinition: true, variable: [125 x i8]* @math_fsum_doc)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1000, align: 8, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 125)
!1001 = !DIGlobalVariable(name: "lanczos_g_minus_half", scope: !0, file: !367, line: 163, type: !954, isLocal: true, isDefinition: true, variable: double 0x40161945B9800000)
!1002 = !DIGlobalVariable(name: "lanczos_g", scope: !0, file: !367, line: 162, type: !954, isLocal: true, isDefinition: true, variable: double 0x40181945B9800000)
!1003 = !DIGlobalVariable(name: "pi", scope: !0, file: !367, line: 65, type: !954, isLocal: true, isDefinition: true, variable: double 0x400921FB54442D18)
!1004 = !DIGlobalVariable(name: "gamma_integral", scope: !0, file: !367, line: 187, type: !1005, isLocal: true, isDefinition: true, variable: [23 x double]* @gamma_integral)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 1472, align: 64, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 23)
!1008 = !DIGlobalVariable(name: "lanczos_num_coeffs", scope: !0, file: !367, line: 164, type: !1009, isLocal: true, isDefinition: true, variable: [13 x double]* @lanczos_num_coeffs)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 832, align: 64, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 13)
!1012 = !DIGlobalVariable(name: "lanczos_den_coeffs", scope: !0, file: !367, line: 181, type: !1009, isLocal: true, isDefinition: true, variable: [13 x double]* @lanczos_den_coeffs)
!1013 = !DIGlobalVariable(name: "math_gamma_doc", scope: !0, file: !367, line: 948, type: !1014, isLocal: true, isDefinition: true, variable: [31 x i8]* @math_gamma_doc)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 248, align: 8, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 31)
!1017 = !DIGlobalVariable(name: "math_hypot_doc", scope: !0, file: !367, line: 1771, type: !1018, isLocal: true, isDefinition: true, variable: [61 x i8]* @math_hypot_doc)
!1018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 488, align: 8, elements: !1019)
!1019 = !{!1020}
!1020 = !DISubrange(count: 61)
!1021 = !DIGlobalVariable(name: "math_isfinite_doc", scope: !0, file: !367, line: 1899, type: !1022, isLocal: true, isDefinition: true, variable: [93 x i8]* @math_isfinite_doc)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 744, align: 8, elements: !1023)
!1023 = !{!1024}
!1024 = !DISubrange(count: 93)
!1025 = !DIGlobalVariable(name: "math_isinf_doc", scope: !0, file: !367, line: 1925, type: !1026, isLocal: true, isDefinition: true, variable: [92 x i8]* @math_isinf_doc)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 736, align: 8, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 92)
!1029 = !DIGlobalVariable(name: "math_isnan_doc", scope: !0, file: !367, line: 1912, type: !1030, isLocal: true, isDefinition: true, variable: [81 x i8]* @math_isnan_doc)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 648, align: 8, elements: !1031)
!1031 = !{!1032}
!1032 = !DISubrange(count: 81)
!1033 = !DIGlobalVariable(name: "math_ldexp_doc", scope: !0, file: !367, line: 1570, type: !1034, isLocal: true, isDefinition: true, variable: [32 x i8]* @math_ldexp_doc)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 256, align: 8, elements: !668)
!1035 = !DIGlobalVariable(name: "logpi", scope: !0, file: !367, line: 67, type: !954, isLocal: true, isDefinition: true, variable: double 0x3FF250D048E7A1BD)
!1036 = !DIGlobalVariable(name: "math_lgamma_doc", scope: !0, file: !367, line: 950, type: !906, isLocal: true, isDefinition: true, variable: [71 x i8]* @math_lgamma_doc)
!1037 = !DIGlobalVariable(name: "math_log_doc", scope: !0, file: !367, line: 1676, type: !1038, isLocal: true, isDefinition: true, variable: [133 x i8]* @math_log_doc)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1064, align: 8, elements: !1039)
!1039 = !{!1040}
!1040 = !DISubrange(count: 133)
!1041 = !DIGlobalVariable(name: "math_log1p_doc", scope: !0, file: !367, line: 952, type: !1042, isLocal: true, isDefinition: true, variable: [123 x i8]* @math_log1p_doc)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 984, align: 8, elements: !1043)
!1043 = !{!1044}
!1044 = !DISubrange(count: 123)
!1045 = !DIGlobalVariable(name: "math_log10_doc", scope: !0, file: !367, line: 1696, type: !1046, isLocal: true, isDefinition: true, variable: [45 x i8]* @math_log10_doc)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 360, align: 8, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 45)
!1049 = !DIGlobalVariable(name: "math_log2_doc", scope: !0, file: !367, line: 1687, type: !966, isLocal: true, isDefinition: true, variable: [43 x i8]* @math_log2_doc)
!1050 = !DIGlobalVariable(name: "math_modf_doc", scope: !0, file: !367, line: 1596, type: !1051, isLocal: true, isDefinition: true, variable: [105 x i8]* @math_modf_doc)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 840, align: 8, elements: !1052)
!1052 = !{!1053}
!1053 = !DISubrange(count: 105)
!1054 = !DIGlobalVariable(name: "math_pow_doc", scope: !0, file: !367, line: 1858, type: !1055, isLocal: true, isDefinition: true, variable: [46 x i8]* @math_pow_doc)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 368, align: 8, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 46)
!1058 = !DIGlobalVariable(name: "degToRad", scope: !0, file: !367, line: 1861, type: !954, isLocal: true, isDefinition: true, variable: double 0x3F91DF46A2529D39)
!1059 = !DIGlobalVariable(name: "math_radians_doc", scope: !0, file: !367, line: 1886, type: !956, isLocal: true, isDefinition: true, variable: [53 x i8]* @math_radians_doc)
!1060 = !DIGlobalVariable(name: "math_sin_doc", scope: !0, file: !367, line: 955, type: !1061, isLocal: true, isDefinition: true, variable: [52 x i8]* @math_sin_doc)
!1061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 416, align: 8, elements: !1062)
!1062 = !{!1063}
!1063 = !DISubrange(count: 52)
!1064 = !DIGlobalVariable(name: "math_sinh_doc", scope: !0, file: !367, line: 957, type: !1065, isLocal: true, isDefinition: true, variable: [42 x i8]* @math_sinh_doc)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 336, align: 8, elements: !1066)
!1066 = !{!1067}
!1067 = !DISubrange(count: 42)
!1068 = !DIGlobalVariable(name: "math_sqrt_doc", scope: !0, file: !367, line: 959, type: !1069, isLocal: true, isDefinition: true, variable: [38 x i8]* @math_sqrt_doc)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 304, align: 8, elements: !1070)
!1070 = !{!1071}
!1071 = !DISubrange(count: 38)
!1072 = !DIGlobalVariable(name: "math_tan_doc", scope: !0, file: !367, line: 961, type: !1073, isLocal: true, isDefinition: true, variable: [55 x i8]* @math_tan_doc)
!1073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 440, align: 8, elements: !1074)
!1074 = !{!1075}
!1075 = !DISubrange(count: 55)
!1076 = !DIGlobalVariable(name: "math_tanh_doc", scope: !0, file: !367, line: 963, type: !1046, isLocal: true, isDefinition: true, variable: [45 x i8]* @math_tanh_doc)
!1077 = !DIGlobalVariable(name: "PyId___trunc__", scope: !861, file: !367, line: 1466, type: !930, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @math_trunc.PyId___trunc__)
!1078 = !DIGlobalVariable(name: "math_trunc_doc", scope: !0, file: !367, line: 1487, type: !1079, isLocal: true, isDefinition: true, variable: [106 x i8]* @math_trunc_doc)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 848, align: 8, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 106)
!1082 = !{i32 2, !"Dwarf Version", i32 4}
!1083 = !{i32 2, !"Debug Info Version", i32 3}
!1084 = !{i32 1, !"PIC Level", i32 2}
!1085 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1086 = !DILocation(line: 1996, column: 5, scope: !366)
!1087 = !DIExpression()
!1088 = !DILocation(line: 1996, column: 15, scope: !366)
!1089 = !DILocation(line: 1998, column: 9, scope: !366)
!1090 = !DILocation(line: 1998, column: 7, scope: !366)
!1091 = !{!1092, !1092, i64 0}
!1092 = !{!"any pointer", !1093, i64 0}
!1093 = !{!"omnipotent char", !1094, i64 0}
!1094 = !{!"Simple C/C++ TBAA"}
!1095 = !DILocation(line: 1999, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !366, file: !367, line: 1999, column: 9)
!1097 = !DILocation(line: 1999, column: 11, scope: !1096)
!1098 = !DILocation(line: 1999, column: 9, scope: !366)
!1099 = !DILocation(line: 2000, column: 9, scope: !1096)
!1100 = !DILocation(line: 2002, column: 24, scope: !366)
!1101 = !DILocation(line: 2002, column: 33, scope: !366)
!1102 = !DILocation(line: 2002, column: 5, scope: !366)
!1103 = !DILocation(line: 2003, column: 24, scope: !366)
!1104 = !DILocation(line: 2003, column: 32, scope: !366)
!1105 = !DILocation(line: 2003, column: 5, scope: !366)
!1106 = !DILocation(line: 2006, column: 12, scope: !366)
!1107 = !DILocation(line: 2007, column: 1, scope: !366)
!1108 = !DILocation(line: 2006, column: 5, scope: !366)
!1109 = !DILocation(line: 873, column: 39, scope: !372)
!1110 = !DILocation(line: 873, column: 55, scope: !372)
!1111 = !DILocation(line: 873, column: 77, scope: !372)
!1112 = !DILocation(line: 873, column: 70, scope: !372)
!1113 = !DILocation(line: 873, column: 63, scope: !372)
!1114 = !DILocation(line: 875, column: 40, scope: !405)
!1115 = !DILocation(line: 875, column: 56, scope: !405)
!1116 = !DILocation(line: 875, column: 78, scope: !405)
!1117 = !DILocation(line: 875, column: 71, scope: !405)
!1118 = !DILocation(line: 875, column: 64, scope: !405)
!1119 = !DILocation(line: 877, column: 39, scope: !409)
!1120 = !DILocation(line: 877, column: 55, scope: !409)
!1121 = !DILocation(line: 877, column: 77, scope: !409)
!1122 = !DILocation(line: 877, column: 70, scope: !409)
!1123 = !DILocation(line: 877, column: 63, scope: !409)
!1124 = !DILocation(line: 879, column: 40, scope: !413)
!1125 = !DILocation(line: 879, column: 56, scope: !413)
!1126 = !DILocation(line: 879, column: 78, scope: !413)
!1127 = !DILocation(line: 879, column: 71, scope: !413)
!1128 = !DILocation(line: 879, column: 64, scope: !413)
!1129 = !DILocation(line: 881, column: 39, scope: !417)
!1130 = !DILocation(line: 881, column: 55, scope: !417)
!1131 = !DILocation(line: 881, column: 77, scope: !417)
!1132 = !DILocation(line: 881, column: 70, scope: !417)
!1133 = !DILocation(line: 881, column: 63, scope: !417)
!1134 = !DILocation(line: 883, column: 40, scope: !421)
!1135 = !DILocation(line: 883, column: 56, scope: !421)
!1136 = !DILocation(line: 883, column: 78, scope: !421)
!1137 = !DILocation(line: 883, column: 71, scope: !421)
!1138 = !DILocation(line: 883, column: 64, scope: !421)
!1139 = !DILocation(line: 886, column: 40, scope: !444)
!1140 = !DILocation(line: 886, column: 56, scope: !444)
!1141 = !DILocation(line: 886, column: 78, scope: !444)
!1142 = !DILocation(line: 886, column: 71, scope: !444)
!1143 = !DILocation(line: 886, column: 64, scope: !444)
!1144 = !DILocation(line: 889, column: 39, scope: !448)
!1145 = !DILocation(line: 889, column: 55, scope: !448)
!1146 = !DILocation(line: 891, column: 5, scope: !448)
!1147 = !DILocation(line: 891, column: 15, scope: !448)
!1148 = !DILocation(line: 891, column: 24, scope: !448)
!1149 = !DILocation(line: 893, column: 38, scope: !448)
!1150 = !DILocation(line: 893, column: 14, scope: !448)
!1151 = !DILocation(line: 893, column: 12, scope: !448)
!1152 = !DILocation(line: 894, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !448, file: !367, line: 894, column: 9)
!1154 = !DILocation(line: 894, column: 16, scope: !1153)
!1155 = !DILocation(line: 894, column: 9, scope: !448)
!1156 = !DILocation(line: 895, column: 13, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !367, line: 895, column: 13)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !367, line: 894, column: 31)
!1159 = !DILocation(line: 895, column: 13, scope: !1158)
!1160 = !DILocation(line: 896, column: 13, scope: !1157)
!1161 = !DILocation(line: 897, column: 30, scope: !1158)
!1162 = !DILocation(line: 897, column: 16, scope: !1158)
!1163 = !DILocation(line: 897, column: 9, scope: !1158)
!1164 = !DILocation(line: 899, column: 43, scope: !448)
!1165 = !DILocation(line: 899, column: 14, scope: !448)
!1166 = !DILocation(line: 899, column: 12, scope: !448)
!1167 = !DILocation(line: 900, column: 5, scope: !448)
!1168 = !DILocation(line: 900, column: 10, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !455, file: !367, discriminator: 1)
!1170 = !DILocation(line: 900, column: 20, scope: !455)
!1171 = !DILocation(line: 900, column: 50, scope: !455)
!1172 = !DILocation(line: 900, column: 67, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !455, file: !367, line: 900, column: 64)
!1174 = !DILocation(line: 900, column: 84, scope: !1173)
!1175 = !DILocation(line: 900, column: 64, scope: !1173)
!1176 = !{!1177, !1178, i64 0}
!1177 = !{!"_object", !1178, i64 0, !1092, i64 8}
!1178 = !{!"long", !1093, i64 0}
!1179 = !DILocation(line: 900, column: 94, scope: !1173)
!1180 = !DILocation(line: 900, column: 64, scope: !455)
!1181 = !DILocation(line: 900, column: 64, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !455, file: !367, discriminator: 2)
!1183 = !DILocation(line: 900, column: 125, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1173, file: !367, discriminator: 3)
!1185 = !DILocation(line: 900, column: 143, scope: !1173)
!1186 = !{!1177, !1092, i64 8}
!1187 = !DILocation(line: 900, column: 153, scope: !1173)
!1188 = !{!1189, !1092, i64 48}
!1189 = !{!"_typeobject", !1190, i64 0, !1092, i64 24, !1178, i64 32, !1178, i64 40, !1092, i64 48, !1092, i64 56, !1092, i64 64, !1092, i64 72, !1092, i64 80, !1092, i64 88, !1092, i64 96, !1092, i64 104, !1092, i64 112, !1092, i64 120, !1092, i64 128, !1092, i64 136, !1092, i64 144, !1092, i64 152, !1092, i64 160, !1178, i64 168, !1092, i64 176, !1092, i64 184, !1092, i64 192, !1092, i64 200, !1178, i64 208, !1092, i64 216, !1092, i64 224, !1092, i64 232, !1092, i64 240, !1092, i64 248, !1092, i64 256, !1092, i64 264, !1092, i64 272, !1092, i64 280, !1178, i64 288, !1092, i64 296, !1092, i64 304, !1092, i64 312, !1092, i64 320, !1092, i64 328, !1092, i64 336, !1092, i64 344, !1092, i64 352, !1092, i64 360, !1092, i64 368, !1092, i64 376, !1191, i64 384, !1092, i64 392}
!1190 = !{!"", !1177, i64 0, !1178, i64 16}
!1191 = !{!"int", !1093, i64 0}
!1192 = !DILocation(line: 900, column: 178, scope: !1173)
!1193 = !DILocation(line: 900, column: 109, scope: !1173)
!1194 = !DILocation(line: 900, column: 197, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !448, file: !367, discriminator: 4)
!1196 = !DILocation(line: 900, column: 197, scope: !455)
!1197 = !DILocation(line: 900, column: 197, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !455, file: !367, discriminator: 5)
!1199 = !DILocation(line: 901, column: 12, scope: !448)
!1200 = !DILocation(line: 901, column: 5, scope: !448)
!1201 = !DILocation(line: 902, column: 1, scope: !448)
!1202 = !DILocation(line: 908, column: 43, scope: !461)
!1203 = !DILocation(line: 908, column: 59, scope: !461)
!1204 = !DILocation(line: 908, column: 81, scope: !461)
!1205 = !DILocation(line: 908, column: 74, scope: !461)
!1206 = !DILocation(line: 908, column: 67, scope: !461)
!1207 = !DILocation(line: 912, column: 38, scope: !465)
!1208 = !DILocation(line: 912, column: 54, scope: !465)
!1209 = !DILocation(line: 912, column: 76, scope: !465)
!1210 = !DILocation(line: 912, column: 69, scope: !465)
!1211 = !DILocation(line: 912, column: 62, scope: !465)
!1212 = !DILocation(line: 914, column: 39, scope: !469)
!1213 = !DILocation(line: 914, column: 55, scope: !469)
!1214 = !DILocation(line: 914, column: 77, scope: !469)
!1215 = !DILocation(line: 914, column: 70, scope: !469)
!1216 = !DILocation(line: 914, column: 63, scope: !469)
!1217 = !DILocation(line: 1865, column: 24, scope: !473)
!1218 = !DILocation(line: 1865, column: 40, scope: !473)
!1219 = !DILocation(line: 1867, column: 5, scope: !473)
!1220 = !DILocation(line: 1867, column: 12, scope: !473)
!1221 = !DILocation(line: 1867, column: 33, scope: !473)
!1222 = !DILocation(line: 1867, column: 16, scope: !473)
!1223 = !{!1224, !1224, i64 0}
!1224 = !{!"double", !1093, i64 0}
!1225 = !DILocation(line: 1868, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !473, file: !367, line: 1868, column: 9)
!1227 = !DILocation(line: 1868, column: 11, scope: !1226)
!1228 = !DILocation(line: 1868, column: 19, scope: !1226)
!1229 = !DILocation(line: 1868, column: 22, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1226, file: !367, discriminator: 1)
!1231 = !DILocation(line: 1868, column: 9, scope: !473)
!1232 = !DILocation(line: 1869, column: 9, scope: !1226)
!1233 = !DILocation(line: 1870, column: 31, scope: !473)
!1234 = !DILocation(line: 1870, column: 33, scope: !473)
!1235 = !DILocation(line: 1870, column: 12, scope: !473)
!1236 = !DILocation(line: 1870, column: 5, scope: !473)
!1237 = !DILocation(line: 1871, column: 1, scope: !473)
!1238 = !DILocation(line: 916, column: 38, scope: !478)
!1239 = !DILocation(line: 916, column: 54, scope: !478)
!1240 = !DILocation(line: 916, column: 77, scope: !478)
!1241 = !DILocation(line: 916, column: 69, scope: !478)
!1242 = !DILocation(line: 916, column: 62, scope: !478)
!1243 = !DILocation(line: 918, column: 39, scope: !522)
!1244 = !DILocation(line: 918, column: 55, scope: !522)
!1245 = !DILocation(line: 918, column: 78, scope: !522)
!1246 = !DILocation(line: 918, column: 70, scope: !522)
!1247 = !DILocation(line: 918, column: 63, scope: !522)
!1248 = !DILocation(line: 920, column: 38, scope: !531)
!1249 = !DILocation(line: 920, column: 54, scope: !531)
!1250 = !DILocation(line: 920, column: 76, scope: !531)
!1251 = !DILocation(line: 920, column: 69, scope: !531)
!1252 = !DILocation(line: 920, column: 62, scope: !531)
!1253 = !DILocation(line: 922, column: 40, scope: !535)
!1254 = !DILocation(line: 922, column: 56, scope: !535)
!1255 = !DILocation(line: 922, column: 78, scope: !535)
!1256 = !DILocation(line: 922, column: 71, scope: !535)
!1257 = !DILocation(line: 922, column: 64, scope: !535)
!1258 = !DILocation(line: 926, column: 39, scope: !539)
!1259 = !DILocation(line: 926, column: 55, scope: !539)
!1260 = !DILocation(line: 926, column: 77, scope: !539)
!1261 = !DILocation(line: 926, column: 70, scope: !539)
!1262 = !DILocation(line: 926, column: 63, scope: !539)
!1263 = !DILocation(line: 1408, column: 26, scope: !543)
!1264 = !DILocation(line: 1408, column: 42, scope: !543)
!1265 = !DILocation(line: 1410, column: 5, scope: !543)
!1266 = !DILocation(line: 1410, column: 10, scope: !543)
!1267 = !DILocation(line: 1411, column: 5, scope: !543)
!1268 = !DILocation(line: 1411, column: 15, scope: !543)
!1269 = !DILocation(line: 1411, column: 24, scope: !543)
!1270 = !DILocation(line: 1411, column: 35, scope: !543)
!1271 = !DILocation(line: 1413, column: 24, scope: !553)
!1272 = !DILocation(line: 1413, column: 31, scope: !553)
!1273 = !DILocation(line: 1413, column: 40, scope: !553)
!1274 = !DILocation(line: 1413, column: 59, scope: !553)
!1275 = !DILocation(line: 1413, column: 93, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !553, file: !367, discriminator: 1)
!1277 = !DILocation(line: 1413, column: 100, scope: !553)
!1278 = !DILocation(line: 1413, column: 62, scope: !553)
!1279 = !DILocation(line: 1413, column: 9, scope: !543)
!1280 = !DILocation(line: 1414, column: 9, scope: !552)
!1281 = !DILocation(line: 1414, column: 19, scope: !552)
!1282 = !DILocation(line: 1415, column: 9, scope: !552)
!1283 = !DILocation(line: 1415, column: 16, scope: !552)
!1284 = !DILocation(line: 1415, column: 58, scope: !552)
!1285 = !DILocation(line: 1415, column: 41, scope: !552)
!1286 = !DILocation(line: 1415, column: 65, scope: !552)
!1287 = !{!1288, !1224, i64 16}
!1288 = !{!"", !1177, i64 0, !1224, i64 16}
!1289 = !DILocation(line: 1416, column: 130, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !552, file: !367, line: 1416, column: 13)
!1291 = !DILocation(line: 1416, column: 59, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1290, file: !367, discriminator: 1)
!1293 = !DILocation(line: 1416, column: 48, scope: !1290)
!1294 = !DILocation(line: 1416, column: 16, scope: !1290)
!1295 = !DILocation(line: 1416, column: 130, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1290, file: !367, discriminator: 2)
!1297 = !DILocation(line: 1416, column: 108, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1290, file: !367, discriminator: 4)
!1299 = !DILocation(line: 1416, column: 98, scope: !1290)
!1300 = !DILocation(line: 1416, column: 65, scope: !1290)
!1301 = !DILocation(line: 1416, column: 125, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1290, file: !367, discriminator: 5)
!1303 = !DILocation(line: 1416, column: 114, scope: !1290)
!1304 = !DILocation(line: 1416, column: 133, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1306, file: !367, discriminator: 7)
!1306 = !DILexicalBlockFile(scope: !1307, file: !367, discriminator: 6)
!1307 = !DILexicalBlockFile(scope: !1290, file: !367, discriminator: 3)
!1308 = !DILocation(line: 1416, column: 145, scope: !1290)
!1309 = !DILocation(line: 1416, column: 139, scope: !1290)
!1310 = !DILocation(line: 1416, column: 136, scope: !1290)
!1311 = !DILocation(line: 1416, column: 13, scope: !552)
!1312 = !DILocation(line: 1417, column: 29, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1290, file: !367, line: 1416, column: 151)
!1314 = !DILocation(line: 1417, column: 13, scope: !1313)
!1315 = !DILocation(line: 1419, column: 13, scope: !1313)
!1316 = !DILocation(line: 1421, column: 32, scope: !552)
!1317 = !DILocation(line: 1421, column: 14, scope: !552)
!1318 = !DILocation(line: 1421, column: 12, scope: !552)
!1319 = !DILocation(line: 1422, column: 13, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !552, file: !367, line: 1422, column: 13)
!1321 = !DILocation(line: 1422, column: 16, scope: !1320)
!1322 = !DILocation(line: 1422, column: 13, scope: !552)
!1323 = !DILocation(line: 1423, column: 13, scope: !1320)
!1324 = !DILocation(line: 1424, column: 27, scope: !552)
!1325 = !DILocation(line: 1424, column: 13, scope: !552)
!1326 = !DILocation(line: 1424, column: 11, scope: !552)
!1327 = !{!1178, !1178, i64 0}
!1328 = !DILocation(line: 1425, column: 9, scope: !552)
!1329 = !DILocation(line: 1425, column: 14, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !556, file: !367, discriminator: 1)
!1331 = !DILocation(line: 1425, column: 24, scope: !556)
!1332 = !DILocation(line: 1425, column: 54, scope: !556)
!1333 = !DILocation(line: 1425, column: 67, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !556, file: !367, line: 1425, column: 64)
!1335 = !DILocation(line: 1425, column: 84, scope: !1334)
!1336 = !DILocation(line: 1425, column: 64, scope: !1334)
!1337 = !DILocation(line: 1425, column: 94, scope: !1334)
!1338 = !DILocation(line: 1425, column: 64, scope: !556)
!1339 = !DILocation(line: 1425, column: 64, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !556, file: !367, discriminator: 2)
!1341 = !DILocation(line: 1425, column: 125, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1334, file: !367, discriminator: 3)
!1343 = !DILocation(line: 1425, column: 143, scope: !1334)
!1344 = !DILocation(line: 1425, column: 153, scope: !1334)
!1345 = !DILocation(line: 1425, column: 178, scope: !1334)
!1346 = !DILocation(line: 1425, column: 109, scope: !1334)
!1347 = !DILocation(line: 1425, column: 197, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !552, file: !367, discriminator: 4)
!1349 = !DILocation(line: 1425, column: 197, scope: !556)
!1350 = !DILocation(line: 1425, column: 197, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !556, file: !367, discriminator: 5)
!1352 = !DILocation(line: 1426, column: 5, scope: !553)
!1353 = !DILocation(line: 1426, column: 5, scope: !1276)
!1354 = !DILocation(line: 1426, column: 5, scope: !552)
!1355 = !DILocation(line: 1428, column: 27, scope: !553)
!1356 = !DILocation(line: 1428, column: 13, scope: !553)
!1357 = !DILocation(line: 1428, column: 11, scope: !553)
!1358 = !DILocation(line: 1430, column: 9, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1430, column: 9)
!1360 = !DILocation(line: 1430, column: 11, scope: !1359)
!1361 = !DILocation(line: 1430, column: 17, scope: !1359)
!1362 = !DILocation(line: 1430, column: 20, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1359, file: !367, discriminator: 1)
!1364 = !DILocation(line: 1430, column: 9, scope: !543)
!1365 = !DILocation(line: 1431, column: 9, scope: !1359)
!1366 = !DILocation(line: 1432, column: 9, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1432, column: 9)
!1368 = !DILocation(line: 1432, column: 11, scope: !1367)
!1369 = !DILocation(line: 1432, column: 9, scope: !543)
!1370 = !DILocation(line: 1433, column: 25, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !367, line: 1432, column: 16)
!1372 = !DILocation(line: 1433, column: 9, scope: !1371)
!1373 = !DILocation(line: 1435, column: 9, scope: !1371)
!1374 = !DILocation(line: 1439, column: 9, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1439, column: 9)
!1376 = !DILocation(line: 1439, column: 11, scope: !1375)
!1377 = !DILocation(line: 1439, column: 9, scope: !543)
!1378 = !DILocation(line: 1440, column: 56, scope: !1375)
!1379 = !DILocation(line: 1440, column: 40, scope: !1375)
!1380 = !DILocation(line: 1440, column: 16, scope: !1375)
!1381 = !DILocation(line: 1440, column: 9, scope: !1375)
!1382 = !DILocation(line: 1444, column: 35, scope: !543)
!1383 = !DILocation(line: 1444, column: 16, scope: !543)
!1384 = !DILocation(line: 1444, column: 14, scope: !543)
!1385 = !DILocation(line: 1445, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !543, file: !367, line: 1445, column: 9)
!1387 = !DILocation(line: 1445, column: 18, scope: !1386)
!1388 = !DILocation(line: 1445, column: 9, scope: !543)
!1389 = !DILocation(line: 1446, column: 9, scope: !1386)
!1390 = !DILocation(line: 1447, column: 37, scope: !543)
!1391 = !DILocation(line: 1447, column: 56, scope: !543)
!1392 = !DILocation(line: 1447, column: 41, scope: !543)
!1393 = !DILocation(line: 1447, column: 39, scope: !543)
!1394 = !DILocation(line: 1447, column: 21, scope: !543)
!1395 = !DILocation(line: 1447, column: 19, scope: !543)
!1396 = !DILocation(line: 1448, column: 9, scope: !560)
!1397 = !DILocation(line: 1448, column: 23, scope: !560)
!1398 = !DILocation(line: 1448, column: 9, scope: !543)
!1399 = !DILocation(line: 1449, column: 9, scope: !559)
!1400 = !DILocation(line: 1449, column: 14, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !558, file: !367, discriminator: 1)
!1402 = !DILocation(line: 1449, column: 24, scope: !558)
!1403 = !DILocation(line: 1449, column: 54, scope: !558)
!1404 = !DILocation(line: 1449, column: 73, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !558, file: !367, line: 1449, column: 70)
!1406 = !DILocation(line: 1449, column: 90, scope: !1405)
!1407 = !DILocation(line: 1449, column: 70, scope: !1405)
!1408 = !DILocation(line: 1449, column: 100, scope: !1405)
!1409 = !DILocation(line: 1449, column: 70, scope: !558)
!1410 = !DILocation(line: 1449, column: 70, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !558, file: !367, discriminator: 2)
!1412 = !DILocation(line: 1449, column: 131, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1405, file: !367, discriminator: 3)
!1414 = !DILocation(line: 1449, column: 149, scope: !1405)
!1415 = !DILocation(line: 1449, column: 159, scope: !1405)
!1416 = !DILocation(line: 1449, column: 184, scope: !1405)
!1417 = !DILocation(line: 1449, column: 115, scope: !1405)
!1418 = !DILocation(line: 1449, column: 203, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !559, file: !367, discriminator: 4)
!1420 = !DILocation(line: 1449, column: 203, scope: !558)
!1421 = !DILocation(line: 1449, column: 203, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !558, file: !367, discriminator: 5)
!1423 = !DILocation(line: 1450, column: 9, scope: !559)
!1424 = !DILocation(line: 1452, column: 30, scope: !543)
!1425 = !DILocation(line: 1452, column: 40, scope: !543)
!1426 = !DILocation(line: 1452, column: 14, scope: !543)
!1427 = !DILocation(line: 1452, column: 12, scope: !543)
!1428 = !DILocation(line: 1453, column: 5, scope: !543)
!1429 = !DILocation(line: 1453, column: 10, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !562, file: !367, discriminator: 1)
!1431 = !DILocation(line: 1453, column: 20, scope: !562)
!1432 = !DILocation(line: 1453, column: 50, scope: !562)
!1433 = !DILocation(line: 1453, column: 74, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !562, file: !367, line: 1453, column: 71)
!1435 = !DILocation(line: 1453, column: 91, scope: !1434)
!1436 = !DILocation(line: 1453, column: 71, scope: !1434)
!1437 = !DILocation(line: 1453, column: 101, scope: !1434)
!1438 = !DILocation(line: 1453, column: 71, scope: !562)
!1439 = !DILocation(line: 1453, column: 71, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !562, file: !367, discriminator: 2)
!1441 = !DILocation(line: 1453, column: 132, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1434, file: !367, discriminator: 3)
!1443 = !DILocation(line: 1453, column: 150, scope: !1434)
!1444 = !DILocation(line: 1453, column: 160, scope: !1434)
!1445 = !DILocation(line: 1453, column: 185, scope: !1434)
!1446 = !DILocation(line: 1453, column: 116, scope: !1434)
!1447 = !DILocation(line: 1453, column: 204, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !543, file: !367, discriminator: 4)
!1449 = !DILocation(line: 1453, column: 204, scope: !562)
!1450 = !DILocation(line: 1453, column: 204, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !562, file: !367, discriminator: 5)
!1452 = !DILocation(line: 1454, column: 5, scope: !543)
!1453 = !DILocation(line: 1454, column: 10, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !564, file: !367, discriminator: 1)
!1455 = !DILocation(line: 1454, column: 20, scope: !564)
!1456 = !DILocation(line: 1454, column: 50, scope: !564)
!1457 = !DILocation(line: 1454, column: 69, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !564, file: !367, line: 1454, column: 66)
!1459 = !DILocation(line: 1454, column: 86, scope: !1458)
!1460 = !DILocation(line: 1454, column: 66, scope: !1458)
!1461 = !DILocation(line: 1454, column: 96, scope: !1458)
!1462 = !DILocation(line: 1454, column: 66, scope: !564)
!1463 = !DILocation(line: 1454, column: 66, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !564, file: !367, discriminator: 2)
!1465 = !DILocation(line: 1454, column: 127, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1458, file: !367, discriminator: 3)
!1467 = !DILocation(line: 1454, column: 145, scope: !1458)
!1468 = !DILocation(line: 1454, column: 155, scope: !1458)
!1469 = !DILocation(line: 1454, column: 180, scope: !1458)
!1470 = !DILocation(line: 1454, column: 111, scope: !1458)
!1471 = !DILocation(line: 1454, column: 199, scope: !1448)
!1472 = !DILocation(line: 1454, column: 199, scope: !564)
!1473 = !DILocation(line: 1454, column: 199, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !564, file: !367, discriminator: 5)
!1475 = !DILocation(line: 1455, column: 12, scope: !543)
!1476 = !DILocation(line: 1455, column: 5, scope: !543)
!1477 = !DILocation(line: 1456, column: 1, scope: !543)
!1478 = !DILocation(line: 929, column: 40, scope: !629)
!1479 = !DILocation(line: 929, column: 56, scope: !629)
!1480 = !DILocation(line: 931, column: 5, scope: !629)
!1481 = !DILocation(line: 931, column: 15, scope: !629)
!1482 = !DILocation(line: 931, column: 24, scope: !629)
!1483 = !DILocation(line: 933, column: 38, scope: !629)
!1484 = !DILocation(line: 933, column: 14, scope: !629)
!1485 = !DILocation(line: 933, column: 12, scope: !629)
!1486 = !DILocation(line: 934, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !629, file: !367, line: 934, column: 9)
!1488 = !DILocation(line: 934, column: 16, scope: !1487)
!1489 = !DILocation(line: 934, column: 9, scope: !629)
!1490 = !DILocation(line: 935, column: 13, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !367, line: 935, column: 13)
!1492 = distinct !DILexicalBlock(scope: !1487, file: !367, line: 934, column: 31)
!1493 = !DILocation(line: 935, column: 13, scope: !1492)
!1494 = !DILocation(line: 936, column: 13, scope: !1491)
!1495 = !DILocation(line: 937, column: 30, scope: !1492)
!1496 = !DILocation(line: 937, column: 16, scope: !1492)
!1497 = !DILocation(line: 937, column: 9, scope: !1492)
!1498 = !DILocation(line: 939, column: 43, scope: !629)
!1499 = !DILocation(line: 939, column: 14, scope: !629)
!1500 = !DILocation(line: 939, column: 12, scope: !629)
!1501 = !DILocation(line: 940, column: 5, scope: !629)
!1502 = !DILocation(line: 940, column: 10, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !636, file: !367, discriminator: 1)
!1504 = !DILocation(line: 940, column: 20, scope: !636)
!1505 = !DILocation(line: 940, column: 50, scope: !636)
!1506 = !DILocation(line: 940, column: 67, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !636, file: !367, line: 940, column: 64)
!1508 = !DILocation(line: 940, column: 84, scope: !1507)
!1509 = !DILocation(line: 940, column: 64, scope: !1507)
!1510 = !DILocation(line: 940, column: 94, scope: !1507)
!1511 = !DILocation(line: 940, column: 64, scope: !636)
!1512 = !DILocation(line: 940, column: 64, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !636, file: !367, discriminator: 2)
!1514 = !DILocation(line: 940, column: 125, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1507, file: !367, discriminator: 3)
!1516 = !DILocation(line: 940, column: 143, scope: !1507)
!1517 = !DILocation(line: 940, column: 153, scope: !1507)
!1518 = !DILocation(line: 940, column: 178, scope: !1507)
!1519 = !DILocation(line: 940, column: 109, scope: !1507)
!1520 = !DILocation(line: 940, column: 197, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !629, file: !367, discriminator: 4)
!1522 = !DILocation(line: 940, column: 197, scope: !636)
!1523 = !DILocation(line: 940, column: 197, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !636, file: !367, discriminator: 5)
!1525 = !DILocation(line: 941, column: 12, scope: !629)
!1526 = !DILocation(line: 941, column: 5, scope: !629)
!1527 = !DILocation(line: 942, column: 1, scope: !629)
!1528 = !DILocation(line: 1700, column: 21, scope: !637)
!1529 = !DILocation(line: 1700, column: 37, scope: !637)
!1530 = !DILocation(line: 1702, column: 5, scope: !637)
!1531 = !DILocation(line: 1702, column: 15, scope: !637)
!1532 = !DILocation(line: 1702, column: 20, scope: !637)
!1533 = !DILocation(line: 1703, column: 5, scope: !637)
!1534 = !DILocation(line: 1703, column: 12, scope: !637)
!1535 = !DILocation(line: 1703, column: 15, scope: !637)
!1536 = !DILocation(line: 1703, column: 18, scope: !637)
!1537 = !DILocation(line: 1704, column: 29, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !637, file: !367, line: 1704, column: 9)
!1539 = !DILocation(line: 1704, column: 11, scope: !1538)
!1540 = !DILocation(line: 1704, column: 9, scope: !637)
!1541 = !DILocation(line: 1705, column: 9, scope: !1538)
!1542 = !DILocation(line: 1706, column: 26, scope: !637)
!1543 = !DILocation(line: 1706, column: 9, scope: !637)
!1544 = !DILocation(line: 1706, column: 7, scope: !637)
!1545 = !DILocation(line: 1707, column: 26, scope: !637)
!1546 = !DILocation(line: 1707, column: 9, scope: !637)
!1547 = !DILocation(line: 1707, column: 7, scope: !637)
!1548 = !DILocation(line: 1708, column: 10, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !637, file: !367, line: 1708, column: 9)
!1550 = !DILocation(line: 1708, column: 12, scope: !1549)
!1551 = !DILocation(line: 1708, column: 20, scope: !1549)
!1552 = !DILocation(line: 1708, column: 23, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1549, file: !367, discriminator: 2)
!1554 = !DILocation(line: 1708, column: 25, scope: !1549)
!1555 = !DILocation(line: 1708, column: 34, scope: !1549)
!1556 = !DILocation(line: 1708, column: 37, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !367, discriminator: 3)
!1558 = !DILexicalBlockFile(scope: !1549, file: !367, discriminator: 1)
!1559 = !DILocation(line: 1708, column: 9, scope: !637)
!1560 = !DILocation(line: 1709, column: 9, scope: !1549)
!1561 = !DILocation(line: 1711, column: 116, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !637, file: !367, line: 1711, column: 9)
!1563 = !DILocation(line: 1711, column: 51, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 1)
!1565 = !DILocation(line: 1711, column: 41, scope: !1562)
!1566 = !DILocation(line: 1711, column: 10, scope: !1562)
!1567 = !DILocation(line: 1711, column: 116, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 2)
!1569 = !DILocation(line: 1711, column: 97, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 4)
!1571 = !DILocation(line: 1711, column: 88, scope: !1562)
!1572 = !DILocation(line: 1711, column: 56, scope: !1562)
!1573 = !DILocation(line: 1711, column: 112, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 5)
!1575 = !DILocation(line: 1711, column: 102, scope: !1562)
!1576 = !DILocation(line: 1711, column: 9, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !367, discriminator: 7)
!1578 = !DILexicalBlockFile(scope: !1579, file: !367, discriminator: 6)
!1579 = !DILexicalBlockFile(scope: !637, file: !367, discriminator: 3)
!1580 = !DILocation(line: 1711, column: 162, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 8)
!1582 = !DILocation(line: 1711, column: 151, scope: !1562)
!1583 = !DILocation(line: 1711, column: 120, scope: !1562)
!1584 = !DILocation(line: 1711, column: 9, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !637, file: !367, discriminator: 9)
!1586 = !DILocation(line: 1711, column: 209, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 10)
!1588 = !DILocation(line: 1711, column: 199, scope: !1562)
!1589 = !DILocation(line: 1711, column: 167, scope: !1562)
!1590 = !DILocation(line: 1711, column: 225, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1562, file: !367, discriminator: 11)
!1592 = !DILocation(line: 1711, column: 214, scope: !1562)
!1593 = !DILocation(line: 1711, column: 9, scope: !637)
!1594 = !DILocation(line: 1712, column: 35, scope: !1562)
!1595 = !DILocation(line: 1712, column: 16, scope: !1562)
!1596 = !DILocation(line: 1712, column: 9, scope: !1562)
!1597 = !DILocation(line: 1713, column: 7, scope: !637)
!1598 = !DILocation(line: 1713, column: 28, scope: !637)
!1599 = !{!1191, !1191, i64 0}
!1600 = !DILocation(line: 1715, column: 14, scope: !637)
!1601 = !DILocation(line: 1715, column: 17, scope: !637)
!1602 = !DILocation(line: 1715, column: 9, scope: !637)
!1603 = !DILocation(line: 1715, column: 7, scope: !637)
!1604 = !DILocation(line: 1717, column: 9, scope: !637)
!1605 = !DILocation(line: 1717, column: 51, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1607, file: !367, discriminator: 1)
!1607 = distinct !DILexicalBlock(scope: !637, file: !367, line: 1717, column: 9)
!1608 = !DILocation(line: 1717, column: 41, scope: !1607)
!1609 = !DILocation(line: 1717, column: 10, scope: !1607)
!1610 = !DILocation(line: 1717, column: 9, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !637, file: !367, discriminator: 2)
!1612 = !DILocation(line: 1717, column: 97, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1607, file: !367, discriminator: 3)
!1614 = !DILocation(line: 1717, column: 88, scope: !1607)
!1615 = !DILocation(line: 1717, column: 56, scope: !1607)
!1616 = !DILocation(line: 1717, column: 112, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1607, file: !367, discriminator: 4)
!1618 = !DILocation(line: 1717, column: 102, scope: !1607)
!1619 = !DILocation(line: 1718, column: 121, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !367, line: 1718, column: 13)
!1621 = distinct !DILexicalBlock(scope: !1607, file: !367, line: 1717, column: 117)
!1622 = !DILocation(line: 1718, column: 56, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 1)
!1624 = !DILocation(line: 1718, column: 46, scope: !1620)
!1625 = !DILocation(line: 1718, column: 15, scope: !1620)
!1626 = !DILocation(line: 1718, column: 121, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 2)
!1628 = !DILocation(line: 1718, column: 102, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 4)
!1630 = !DILocation(line: 1718, column: 93, scope: !1620)
!1631 = !DILocation(line: 1718, column: 61, scope: !1620)
!1632 = !DILocation(line: 1718, column: 117, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 5)
!1634 = !DILocation(line: 1718, column: 107, scope: !1620)
!1635 = !DILocation(line: 1718, column: 13, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1637, file: !367, discriminator: 7)
!1637 = !DILexicalBlockFile(scope: !1638, file: !367, discriminator: 6)
!1638 = !DILexicalBlockFile(scope: !1621, file: !367, discriminator: 3)
!1639 = !DILocation(line: 1718, column: 167, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 8)
!1641 = !DILocation(line: 1718, column: 157, scope: !1620)
!1642 = !DILocation(line: 1718, column: 126, scope: !1620)
!1643 = !DILocation(line: 1718, column: 13, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1621, file: !367, discriminator: 9)
!1645 = !DILocation(line: 1718, column: 213, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 10)
!1647 = !DILocation(line: 1718, column: 204, scope: !1620)
!1648 = !DILocation(line: 1718, column: 172, scope: !1620)
!1649 = !DILocation(line: 1718, column: 228, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1620, file: !367, discriminator: 11)
!1651 = !DILocation(line: 1718, column: 218, scope: !1620)
!1652 = !DILocation(line: 1718, column: 13, scope: !1621)
!1653 = !DILocation(line: 1719, column: 15, scope: !1620)
!1654 = !DILocation(line: 1719, column: 36, scope: !1620)
!1655 = !DILocation(line: 1719, column: 13, scope: !1620)
!1656 = !DILocation(line: 1721, column: 15, scope: !1620)
!1657 = !DILocation(line: 1721, column: 36, scope: !1620)
!1658 = !DILocation(line: 1722, column: 5, scope: !1621)
!1659 = !DILocation(line: 1723, column: 11, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !637, file: !367, line: 1723, column: 9)
!1661 = !DILocation(line: 1723, column: 10, scope: !1660)
!1662 = !DILocation(line: 1723, column: 9, scope: !1660)
!1663 = !DILocation(line: 1723, column: 32, scope: !1660)
!1664 = !DILocation(line: 1723, column: 44, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1660, file: !367, discriminator: 1)
!1666 = !DILocation(line: 1723, column: 35, scope: !1660)
!1667 = !DILocation(line: 1723, column: 9, scope: !637)
!1668 = !DILocation(line: 1724, column: 9, scope: !1660)
!1669 = !DILocation(line: 1726, column: 35, scope: !1660)
!1670 = !DILocation(line: 1726, column: 16, scope: !1660)
!1671 = !DILocation(line: 1726, column: 9, scope: !1660)
!1672 = !DILocation(line: 1727, column: 1, scope: !637)
!1673 = !DILocation(line: 1493, column: 22, scope: !646)
!1674 = !DILocation(line: 1493, column: 38, scope: !646)
!1675 = !DILocation(line: 1495, column: 5, scope: !646)
!1676 = !DILocation(line: 1495, column: 9, scope: !646)
!1677 = !DILocation(line: 1496, column: 5, scope: !646)
!1678 = !DILocation(line: 1496, column: 12, scope: !646)
!1679 = !DILocation(line: 1496, column: 33, scope: !646)
!1680 = !DILocation(line: 1496, column: 16, scope: !646)
!1681 = !DILocation(line: 1497, column: 9, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !646, file: !367, line: 1497, column: 9)
!1683 = !DILocation(line: 1497, column: 11, scope: !1682)
!1684 = !DILocation(line: 1497, column: 19, scope: !1682)
!1685 = !DILocation(line: 1497, column: 22, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1682, file: !367, discriminator: 1)
!1687 = !DILocation(line: 1497, column: 9, scope: !646)
!1688 = !DILocation(line: 1498, column: 9, scope: !1682)
!1689 = !DILocation(line: 1501, column: 116, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !646, file: !367, line: 1501, column: 9)
!1691 = !DILocation(line: 1501, column: 51, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 1)
!1693 = !DILocation(line: 1501, column: 41, scope: !1690)
!1694 = !DILocation(line: 1501, column: 10, scope: !1690)
!1695 = !DILocation(line: 1501, column: 116, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 2)
!1697 = !DILocation(line: 1501, column: 97, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 4)
!1699 = !DILocation(line: 1501, column: 88, scope: !1690)
!1700 = !DILocation(line: 1501, column: 56, scope: !1690)
!1701 = !DILocation(line: 1501, column: 112, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 5)
!1703 = !DILocation(line: 1501, column: 102, scope: !1690)
!1704 = !DILocation(line: 1501, column: 226, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1706, file: !367, discriminator: 7)
!1706 = !DILexicalBlockFile(scope: !1707, file: !367, discriminator: 6)
!1707 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 3)
!1708 = !DILocation(line: 1501, column: 161, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 8)
!1710 = !DILocation(line: 1501, column: 151, scope: !1690)
!1711 = !DILocation(line: 1501, column: 120, scope: !1690)
!1712 = !DILocation(line: 1501, column: 226, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 9)
!1714 = !DILocation(line: 1501, column: 207, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 11)
!1716 = !DILocation(line: 1501, column: 198, scope: !1690)
!1717 = !DILocation(line: 1501, column: 166, scope: !1690)
!1718 = !DILocation(line: 1501, column: 222, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 12)
!1720 = !DILocation(line: 1501, column: 212, scope: !1690)
!1721 = !DILocation(line: 1501, column: 226, scope: !1690)
!1722 = !DILocation(line: 1501, column: 230, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !367, discriminator: 14)
!1724 = !DILexicalBlockFile(scope: !1725, file: !367, discriminator: 13)
!1725 = !DILexicalBlockFile(scope: !1690, file: !367, discriminator: 10)
!1726 = !DILocation(line: 1501, column: 9, scope: !646)
!1727 = !DILocation(line: 1502, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1690, file: !367, line: 1501, column: 233)
!1729 = !DILocation(line: 1503, column: 5, scope: !1728)
!1730 = !DILocation(line: 1506, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1690, file: !367, line: 1504, column: 10)
!1732 = !DILocation(line: 1506, column: 13, scope: !1731)
!1733 = !DILocation(line: 1506, column: 11, scope: !1731)
!1734 = !DILocation(line: 1509, column: 34, scope: !646)
!1735 = !DILocation(line: 1509, column: 37, scope: !646)
!1736 = !DILocation(line: 1509, column: 12, scope: !646)
!1737 = !DILocation(line: 1509, column: 5, scope: !646)
!1738 = !DILocation(line: 1510, column: 1, scope: !646)
!1739 = !DILocation(line: 1063, column: 21, scope: !652)
!1740 = !DILocation(line: 1063, column: 37, scope: !652)
!1741 = !DILocation(line: 1065, column: 5, scope: !652)
!1742 = !DILocation(line: 1065, column: 15, scope: !652)
!1743 = !DILocation(line: 1065, column: 22, scope: !652)
!1744 = !DILocation(line: 1065, column: 29, scope: !652)
!1745 = !DILocation(line: 1066, column: 5, scope: !652)
!1746 = !DILocation(line: 1066, column: 16, scope: !652)
!1747 = !DILocation(line: 1066, column: 19, scope: !652)
!1748 = !DILocation(line: 1066, column: 22, scope: !652)
!1749 = !DILocation(line: 1066, column: 29, scope: !652)
!1750 = !DILocation(line: 1067, column: 5, scope: !652)
!1751 = !DILocation(line: 1067, column: 12, scope: !652)
!1752 = !DILocation(line: 1067, column: 15, scope: !652)
!1753 = !DILocation(line: 1067, column: 18, scope: !652)
!1754 = !DILocation(line: 1067, column: 21, scope: !652)
!1755 = !DILocation(line: 1067, column: 30, scope: !652)
!1756 = !DILocation(line: 1067, column: 34, scope: !652)
!1757 = !DILocation(line: 1068, column: 5, scope: !652)
!1758 = !DILocation(line: 1068, column: 12, scope: !652)
!1759 = !DILocation(line: 1068, column: 19, scope: !652)
!1760 = !DILocation(line: 1068, column: 38, scope: !652)
!1761 = !DILocation(line: 1069, column: 5, scope: !652)
!1762 = !DILocation(line: 1069, column: 21, scope: !652)
!1763 = !DILocation(line: 1069, column: 25, scope: !652)
!1764 = !DILocation(line: 1069, column: 29, scope: !652)
!1765 = !DILocation(line: 1071, column: 29, scope: !652)
!1766 = !DILocation(line: 1071, column: 12, scope: !652)
!1767 = !DILocation(line: 1071, column: 10, scope: !652)
!1768 = !DILocation(line: 1072, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1072, column: 9)
!1770 = !DILocation(line: 1072, column: 14, scope: !1769)
!1771 = !DILocation(line: 1072, column: 9, scope: !652)
!1772 = !DILocation(line: 1073, column: 9, scope: !1769)
!1773 = !DILocation(line: 1077, column: 5, scope: !652)
!1774 = !DILocation(line: 1082, column: 28, scope: !680)
!1775 = !DILocation(line: 1082, column: 16, scope: !680)
!1776 = !DILocation(line: 1082, column: 14, scope: !680)
!1777 = !DILocation(line: 1083, column: 13, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !680, file: !367, line: 1083, column: 13)
!1779 = !DILocation(line: 1083, column: 18, scope: !1778)
!1780 = !DILocation(line: 1083, column: 13, scope: !680)
!1781 = !DILocation(line: 1084, column: 17, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !367, line: 1084, column: 17)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !367, line: 1083, column: 33)
!1784 = !DILocation(line: 1084, column: 17, scope: !1783)
!1785 = !DILocation(line: 1085, column: 17, scope: !1782)
!1786 = !DILocation(line: 1086, column: 13, scope: !1783)
!1787 = !DILocation(line: 1088, column: 30, scope: !680)
!1788 = !DILocation(line: 1088, column: 13, scope: !680)
!1789 = !DILocation(line: 1088, column: 11, scope: !680)
!1790 = !DILocation(line: 1089, column: 9, scope: !680)
!1791 = !DILocation(line: 1089, column: 14, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !679, file: !367, discriminator: 1)
!1793 = !DILocation(line: 1089, column: 24, scope: !679)
!1794 = !DILocation(line: 1089, column: 54, scope: !679)
!1795 = !DILocation(line: 1089, column: 69, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !679, file: !367, line: 1089, column: 66)
!1797 = !DILocation(line: 1089, column: 86, scope: !1796)
!1798 = !DILocation(line: 1089, column: 66, scope: !1796)
!1799 = !DILocation(line: 1089, column: 96, scope: !1796)
!1800 = !DILocation(line: 1089, column: 66, scope: !679)
!1801 = !DILocation(line: 1089, column: 66, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !679, file: !367, discriminator: 2)
!1803 = !DILocation(line: 1089, column: 127, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1796, file: !367, discriminator: 3)
!1805 = !DILocation(line: 1089, column: 145, scope: !1796)
!1806 = !DILocation(line: 1089, column: 155, scope: !1796)
!1807 = !DILocation(line: 1089, column: 180, scope: !1796)
!1808 = !DILocation(line: 1089, column: 111, scope: !1796)
!1809 = !DILocation(line: 1089, column: 199, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !680, file: !367, discriminator: 4)
!1811 = !DILocation(line: 1089, column: 199, scope: !679)
!1812 = !DILocation(line: 1089, column: 199, scope: !1813)
!1813 = !DILexicalBlockFile(scope: !679, file: !367, discriminator: 5)
!1814 = !DILocation(line: 1090, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !680, file: !367, line: 1090, column: 13)
!1816 = !DILocation(line: 1090, column: 13, scope: !680)
!1817 = !DILocation(line: 1091, column: 13, scope: !1815)
!1818 = !DILocation(line: 1093, column: 17, scope: !680)
!1819 = !DILocation(line: 1093, column: 15, scope: !680)
!1820 = !DILocation(line: 1094, column: 20, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !680, file: !367, line: 1094, column: 9)
!1822 = !DILocation(line: 1094, column: 16, scope: !1821)
!1823 = !DILocation(line: 1094, column: 14, scope: !1821)
!1824 = !DILocation(line: 1094, column: 25, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !367, discriminator: 2)
!1826 = !DILexicalBlockFile(scope: !1827, file: !367, discriminator: 1)
!1827 = distinct !DILexicalBlock(scope: !1821, file: !367, line: 1094, column: 9)
!1828 = !DILocation(line: 1094, column: 29, scope: !1827)
!1829 = !DILocation(line: 1094, column: 27, scope: !1827)
!1830 = !DILocation(line: 1094, column: 9, scope: !1821)
!1831 = !DILocation(line: 1095, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1827, file: !367, line: 1094, column: 37)
!1833 = !DILocation(line: 1095, column: 17, scope: !1832)
!1834 = !DILocation(line: 1095, column: 15, scope: !1832)
!1835 = !DILocation(line: 1096, column: 22, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !367, line: 1096, column: 17)
!1837 = !DILocation(line: 1096, column: 17, scope: !1836)
!1838 = !DILocation(line: 1096, column: 32, scope: !1836)
!1839 = !DILocation(line: 1096, column: 27, scope: !1836)
!1840 = !DILocation(line: 1096, column: 25, scope: !1836)
!1841 = !DILocation(line: 1096, column: 17, scope: !1832)
!1842 = !DILocation(line: 1097, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !367, line: 1096, column: 36)
!1844 = !DILocation(line: 1097, column: 19, scope: !1843)
!1845 = !DILocation(line: 1097, column: 28, scope: !1843)
!1846 = !DILocation(line: 1097, column: 26, scope: !1843)
!1847 = !DILocation(line: 1097, column: 35, scope: !1843)
!1848 = !DILocation(line: 1097, column: 33, scope: !1843)
!1849 = !DILocation(line: 1098, column: 13, scope: !1843)
!1850 = !DILocation(line: 1099, column: 18, scope: !1832)
!1851 = !DILocation(line: 1099, column: 22, scope: !1832)
!1852 = !DILocation(line: 1099, column: 20, scope: !1832)
!1853 = !DILocation(line: 1099, column: 16, scope: !1832)
!1854 = !DILocation(line: 1100, column: 18, scope: !1832)
!1855 = !DILocation(line: 1100, column: 23, scope: !1832)
!1856 = !DILocation(line: 1100, column: 21, scope: !1832)
!1857 = !DILocation(line: 1100, column: 16, scope: !1832)
!1858 = !DILocation(line: 1101, column: 18, scope: !1832)
!1859 = !DILocation(line: 1101, column: 22, scope: !1832)
!1860 = !DILocation(line: 1101, column: 20, scope: !1832)
!1861 = !DILocation(line: 1101, column: 16, scope: !1832)
!1862 = !DILocation(line: 1102, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1832, file: !367, line: 1102, column: 17)
!1864 = !DILocation(line: 1102, column: 20, scope: !1863)
!1865 = !DILocation(line: 1102, column: 17, scope: !1832)
!1866 = !DILocation(line: 1103, column: 26, scope: !1863)
!1867 = !DILocation(line: 1103, column: 20, scope: !1863)
!1868 = !DILocation(line: 1103, column: 17, scope: !1863)
!1869 = !DILocation(line: 1103, column: 24, scope: !1863)
!1870 = !DILocation(line: 1104, column: 17, scope: !1832)
!1871 = !DILocation(line: 1104, column: 15, scope: !1832)
!1872 = !DILocation(line: 1105, column: 9, scope: !1832)
!1873 = !DILocation(line: 1094, column: 33, scope: !1827)
!1874 = !DILocation(line: 1094, column: 9, scope: !1827)
!1875 = !DILocation(line: 1107, column: 13, scope: !680)
!1876 = !DILocation(line: 1107, column: 11, scope: !680)
!1877 = !DILocation(line: 1108, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !680, file: !367, line: 1108, column: 13)
!1879 = !DILocation(line: 1108, column: 15, scope: !1878)
!1880 = !DILocation(line: 1108, column: 13, scope: !680)
!1881 = !DILocation(line: 1109, column: 17, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !367, line: 1108, column: 23)
!1883 = !DILocation(line: 1109, column: 62, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1885, file: !367, discriminator: 1)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !367, line: 1109, column: 17)
!1886 = !DILocation(line: 1109, column: 51, scope: !1885)
!1887 = !DILocation(line: 1109, column: 20, scope: !1885)
!1888 = !DILocation(line: 1109, column: 17, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1882, file: !367, discriminator: 2)
!1890 = !DILocation(line: 1109, column: 109, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1885, file: !367, discriminator: 3)
!1892 = !DILocation(line: 1109, column: 99, scope: !1885)
!1893 = !DILocation(line: 1109, column: 67, scope: !1885)
!1894 = !DILocation(line: 1109, column: 125, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1885, file: !367, discriminator: 4)
!1896 = !DILocation(line: 1109, column: 114, scope: !1885)
!1897 = !DILocation(line: 1114, column: 21, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1885, file: !367, line: 1109, column: 130)
!1899 = !DILocation(line: 1114, column: 68, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !367, discriminator: 1)
!1901 = distinct !DILexicalBlock(scope: !1898, file: !367, line: 1114, column: 21)
!1902 = !DILocation(line: 1114, column: 57, scope: !1901)
!1903 = !DILocation(line: 1114, column: 22, scope: !1901)
!1904 = !DILocation(line: 1114, column: 21, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1898, file: !367, discriminator: 2)
!1906 = !DILocation(line: 1114, column: 123, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1901, file: !367, discriminator: 3)
!1908 = !DILocation(line: 1114, column: 113, scope: !1901)
!1909 = !DILocation(line: 1114, column: 77, scope: !1901)
!1910 = !DILocation(line: 1114, column: 143, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1901, file: !367, discriminator: 4)
!1912 = !DILocation(line: 1114, column: 132, scope: !1901)
!1913 = !DILocation(line: 1115, column: 37, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1901, file: !367, line: 1114, column: 152)
!1915 = !DILocation(line: 1115, column: 21, scope: !1914)
!1916 = !DILocation(line: 1117, column: 21, scope: !1914)
!1917 = !DILocation(line: 1119, column: 21, scope: !1898)
!1918 = !DILocation(line: 1119, column: 67, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1920, file: !367, discriminator: 1)
!1920 = distinct !DILexicalBlock(scope: !1898, file: !367, line: 1119, column: 21)
!1921 = !DILocation(line: 1119, column: 57, scope: !1920)
!1922 = !DILocation(line: 1119, column: 22, scope: !1920)
!1923 = !DILocation(line: 1119, column: 21, scope: !1905)
!1924 = !DILocation(line: 1119, column: 121, scope: !1925)
!1925 = !DILexicalBlockFile(scope: !1920, file: !367, discriminator: 3)
!1926 = !DILocation(line: 1119, column: 112, scope: !1920)
!1927 = !DILocation(line: 1119, column: 76, scope: !1920)
!1928 = !DILocation(line: 1119, column: 140, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1920, file: !367, discriminator: 4)
!1930 = !DILocation(line: 1119, column: 130, scope: !1920)
!1931 = !DILocation(line: 1120, column: 32, scope: !1920)
!1932 = !DILocation(line: 1120, column: 29, scope: !1920)
!1933 = !DILocation(line: 1120, column: 21, scope: !1920)
!1934 = !DILocation(line: 1121, column: 32, scope: !1898)
!1935 = !DILocation(line: 1121, column: 29, scope: !1898)
!1936 = !DILocation(line: 1123, column: 19, scope: !1898)
!1937 = !DILocation(line: 1124, column: 13, scope: !1898)
!1938 = !DILocation(line: 1125, column: 22, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1885, file: !367, line: 1125, column: 22)
!1940 = !DILocation(line: 1125, column: 27, scope: !1939)
!1941 = !DILocation(line: 1125, column: 24, scope: !1939)
!1942 = !DILocation(line: 1125, column: 29, scope: !1939)
!1943 = !DILocation(line: 1125, column: 50, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1939, file: !367, discriminator: 1)
!1945 = !DILocation(line: 1125, column: 53, scope: !1939)
!1946 = !DILocation(line: 1125, column: 32, scope: !1939)
!1947 = !DILocation(line: 1125, column: 22, scope: !1885)
!1948 = !DILocation(line: 1126, column: 17, scope: !1939)
!1949 = !DILocation(line: 1128, column: 26, scope: !1939)
!1950 = !DILocation(line: 1128, column: 20, scope: !1939)
!1951 = !DILocation(line: 1128, column: 17, scope: !1939)
!1952 = !DILocation(line: 1128, column: 24, scope: !1939)
!1953 = !DILocation(line: 1129, column: 9, scope: !1882)
!1954 = !DILocation(line: 1077, column: 5, scope: !681)
!1955 = !DILocation(line: 1132, column: 9, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1132, column: 9)
!1957 = !DILocation(line: 1132, column: 21, scope: !1956)
!1958 = !DILocation(line: 1132, column: 9, scope: !652)
!1959 = !DILocation(line: 1133, column: 13, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !367, line: 1132, column: 29)
!1961 = !DILocation(line: 1133, column: 61, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1963, file: !367, discriminator: 1)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !367, line: 1133, column: 13)
!1964 = !DILocation(line: 1133, column: 51, scope: !1963)
!1965 = !DILocation(line: 1133, column: 14, scope: !1963)
!1966 = !DILocation(line: 1133, column: 13, scope: !1967)
!1967 = !DILexicalBlockFile(scope: !1960, file: !367, discriminator: 2)
!1968 = !DILocation(line: 1133, column: 119, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !1963, file: !367, discriminator: 3)
!1970 = !DILocation(line: 1133, column: 110, scope: !1963)
!1971 = !DILocation(line: 1133, column: 72, scope: !1963)
!1972 = !DILocation(line: 1133, column: 140, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1963, file: !367, discriminator: 4)
!1974 = !DILocation(line: 1133, column: 130, scope: !1963)
!1975 = !DILocation(line: 1134, column: 29, scope: !1963)
!1976 = !DILocation(line: 1134, column: 13, scope: !1963)
!1977 = !DILocation(line: 1137, column: 38, scope: !1963)
!1978 = !DILocation(line: 1137, column: 19, scope: !1963)
!1979 = !DILocation(line: 1137, column: 17, scope: !1963)
!1980 = !DILocation(line: 1138, column: 9, scope: !1960)
!1981 = !DILocation(line: 1141, column: 8, scope: !652)
!1982 = !DILocation(line: 1142, column: 9, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1142, column: 9)
!1984 = !DILocation(line: 1142, column: 11, scope: !1983)
!1985 = !DILocation(line: 1142, column: 9, scope: !652)
!1986 = !DILocation(line: 1143, column: 16, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !367, line: 1142, column: 16)
!1988 = !DILocation(line: 1143, column: 14, scope: !1987)
!1989 = !DILocation(line: 1143, column: 12, scope: !1987)
!1990 = !DILocation(line: 1146, column: 9, scope: !1987)
!1991 = !DILocation(line: 1146, column: 16, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !367, discriminator: 2)
!1993 = !DILexicalBlockFile(scope: !1987, file: !367, discriminator: 1)
!1994 = !DILocation(line: 1146, column: 18, scope: !1987)
!1995 = !DILocation(line: 1147, column: 17, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1987, file: !367, line: 1146, column: 23)
!1997 = !DILocation(line: 1147, column: 15, scope: !1996)
!1998 = !DILocation(line: 1148, column: 19, scope: !1996)
!1999 = !DILocation(line: 1148, column: 17, scope: !1996)
!2000 = !DILocation(line: 1148, column: 15, scope: !1996)
!2001 = !DILocation(line: 1150, column: 18, scope: !1996)
!2002 = !DILocation(line: 1150, column: 22, scope: !1996)
!2003 = !DILocation(line: 1150, column: 20, scope: !1996)
!2004 = !DILocation(line: 1150, column: 16, scope: !1996)
!2005 = !DILocation(line: 1151, column: 18, scope: !1996)
!2006 = !DILocation(line: 1151, column: 23, scope: !1996)
!2007 = !DILocation(line: 1151, column: 21, scope: !1996)
!2008 = !DILocation(line: 1151, column: 16, scope: !1996)
!2009 = !DILocation(line: 1152, column: 18, scope: !1996)
!2010 = !DILocation(line: 1152, column: 22, scope: !1996)
!2011 = !DILocation(line: 1152, column: 20, scope: !1996)
!2012 = !DILocation(line: 1152, column: 16, scope: !1996)
!2013 = !DILocation(line: 1153, column: 17, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1996, file: !367, line: 1153, column: 17)
!2015 = !DILocation(line: 1153, column: 20, scope: !2014)
!2016 = !DILocation(line: 1153, column: 17, scope: !1996)
!2017 = !DILocation(line: 1154, column: 17, scope: !2014)
!2018 = !DILocation(line: 1161, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1987, file: !367, line: 1161, column: 13)
!2020 = !DILocation(line: 1161, column: 15, scope: !2019)
!2021 = !DILocation(line: 1161, column: 19, scope: !2019)
!2022 = !DILocation(line: 1161, column: 24, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2019, file: !367, discriminator: 1)
!2024 = !DILocation(line: 1161, column: 27, scope: !2019)
!2025 = !DILocation(line: 1161, column: 33, scope: !2019)
!2026 = !DILocation(line: 1161, column: 38, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2019, file: !367, discriminator: 2)
!2028 = !DILocation(line: 1161, column: 39, scope: !2019)
!2029 = !DILocation(line: 1161, column: 36, scope: !2019)
!2030 = !DILocation(line: 1161, column: 43, scope: !2019)
!2031 = !DILocation(line: 1161, column: 50, scope: !2019)
!2032 = !DILocation(line: 1162, column: 24, scope: !2019)
!2033 = !DILocation(line: 1162, column: 27, scope: !2019)
!2034 = !DILocation(line: 1162, column: 33, scope: !2019)
!2035 = !DILocation(line: 1162, column: 38, scope: !2023)
!2036 = !DILocation(line: 1162, column: 39, scope: !2019)
!2037 = !DILocation(line: 1162, column: 36, scope: !2019)
!2038 = !DILocation(line: 1162, column: 43, scope: !2019)
!2039 = !DILocation(line: 1161, column: 13, scope: !1987)
!2040 = !DILocation(line: 1163, column: 17, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2019, file: !367, line: 1162, column: 52)
!2042 = !DILocation(line: 1163, column: 20, scope: !2041)
!2043 = !DILocation(line: 1163, column: 15, scope: !2041)
!2044 = !DILocation(line: 1164, column: 17, scope: !2041)
!2045 = !DILocation(line: 1164, column: 22, scope: !2041)
!2046 = !DILocation(line: 1164, column: 20, scope: !2041)
!2047 = !DILocation(line: 1164, column: 15, scope: !2041)
!2048 = !DILocation(line: 1165, column: 18, scope: !2041)
!2049 = !DILocation(line: 1165, column: 22, scope: !2041)
!2050 = !DILocation(line: 1165, column: 20, scope: !2041)
!2051 = !DILocation(line: 1165, column: 16, scope: !2041)
!2052 = !DILocation(line: 1166, column: 17, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2041, file: !367, line: 1166, column: 17)
!2054 = !DILocation(line: 1166, column: 22, scope: !2053)
!2055 = !DILocation(line: 1166, column: 19, scope: !2053)
!2056 = !DILocation(line: 1166, column: 17, scope: !2041)
!2057 = !DILocation(line: 1167, column: 22, scope: !2053)
!2058 = !DILocation(line: 1167, column: 20, scope: !2053)
!2059 = !DILocation(line: 1167, column: 17, scope: !2053)
!2060 = !DILocation(line: 1168, column: 9, scope: !2041)
!2061 = !DILocation(line: 1169, column: 5, scope: !1987)
!2062 = !DILocation(line: 1170, column: 30, scope: !652)
!2063 = !DILocation(line: 1170, column: 11, scope: !652)
!2064 = !DILocation(line: 1170, column: 9, scope: !652)
!2065 = !DILocation(line: 1170, column: 5, scope: !652)
!2066 = !DILocation(line: 1174, column: 5, scope: !652)
!2067 = !DILocation(line: 1174, column: 10, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !684, file: !367, discriminator: 1)
!2069 = !DILocation(line: 1174, column: 20, scope: !684)
!2070 = !DILocation(line: 1174, column: 50, scope: !684)
!2071 = !DILocation(line: 1174, column: 65, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !684, file: !367, line: 1174, column: 62)
!2073 = !DILocation(line: 1174, column: 82, scope: !2072)
!2074 = !DILocation(line: 1174, column: 62, scope: !2072)
!2075 = !DILocation(line: 1174, column: 92, scope: !2072)
!2076 = !DILocation(line: 1174, column: 62, scope: !684)
!2077 = !DILocation(line: 1174, column: 62, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !684, file: !367, discriminator: 2)
!2079 = !DILocation(line: 1174, column: 123, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !2072, file: !367, discriminator: 3)
!2081 = !DILocation(line: 1174, column: 141, scope: !2072)
!2082 = !DILocation(line: 1174, column: 151, scope: !2072)
!2083 = !DILocation(line: 1174, column: 176, scope: !2072)
!2084 = !DILocation(line: 1174, column: 107, scope: !2072)
!2085 = !DILocation(line: 1174, column: 195, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !652, file: !367, discriminator: 4)
!2087 = !DILocation(line: 1174, column: 195, scope: !684)
!2088 = !DILocation(line: 1174, column: 195, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !684, file: !367, discriminator: 5)
!2090 = !DILocation(line: 1175, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !652, file: !367, line: 1175, column: 9)
!2092 = !DILocation(line: 1175, column: 14, scope: !2091)
!2093 = !DILocation(line: 1175, column: 11, scope: !2091)
!2094 = !DILocation(line: 1175, column: 9, scope: !652)
!2095 = !DILocation(line: 1176, column: 20, scope: !2091)
!2096 = !DILocation(line: 1176, column: 9, scope: !2091)
!2097 = !DILocation(line: 1177, column: 12, scope: !652)
!2098 = !DILocation(line: 1177, column: 5, scope: !652)
!2099 = !DILocation(line: 1178, column: 1, scope: !652)
!2100 = !DILocation(line: 948, column: 40, scope: !699)
!2101 = !DILocation(line: 948, column: 56, scope: !699)
!2102 = !DILocation(line: 948, column: 79, scope: !699)
!2103 = !DILocation(line: 948, column: 71, scope: !699)
!2104 = !DILocation(line: 948, column: 64, scope: !699)
!2105 = !DILocation(line: 1734, column: 22, scope: !728)
!2106 = !DILocation(line: 1734, column: 38, scope: !728)
!2107 = !DILocation(line: 1736, column: 5, scope: !728)
!2108 = !DILocation(line: 1736, column: 15, scope: !728)
!2109 = !DILocation(line: 1736, column: 20, scope: !728)
!2110 = !DILocation(line: 1737, column: 5, scope: !728)
!2111 = !DILocation(line: 1737, column: 12, scope: !728)
!2112 = !DILocation(line: 1737, column: 15, scope: !728)
!2113 = !DILocation(line: 1737, column: 18, scope: !728)
!2114 = !DILocation(line: 1738, column: 29, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1738, column: 9)
!2116 = !DILocation(line: 1738, column: 11, scope: !2115)
!2117 = !DILocation(line: 1738, column: 9, scope: !728)
!2118 = !DILocation(line: 1739, column: 9, scope: !2115)
!2119 = !DILocation(line: 1740, column: 26, scope: !728)
!2120 = !DILocation(line: 1740, column: 9, scope: !728)
!2121 = !DILocation(line: 1740, column: 7, scope: !728)
!2122 = !DILocation(line: 1741, column: 26, scope: !728)
!2123 = !DILocation(line: 1741, column: 9, scope: !728)
!2124 = !DILocation(line: 1741, column: 7, scope: !728)
!2125 = !DILocation(line: 1742, column: 10, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1742, column: 9)
!2127 = !DILocation(line: 1742, column: 12, scope: !2126)
!2128 = !DILocation(line: 1742, column: 20, scope: !2126)
!2129 = !DILocation(line: 1742, column: 23, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2126, file: !367, discriminator: 2)
!2131 = !DILocation(line: 1742, column: 25, scope: !2126)
!2132 = !DILocation(line: 1742, column: 34, scope: !2126)
!2133 = !DILocation(line: 1742, column: 37, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !367, discriminator: 3)
!2135 = !DILexicalBlockFile(scope: !2126, file: !367, discriminator: 1)
!2136 = !DILocation(line: 1742, column: 9, scope: !728)
!2137 = !DILocation(line: 1743, column: 9, scope: !2126)
!2138 = !DILocation(line: 1745, column: 9, scope: !728)
!2139 = !DILocation(line: 1745, column: 51, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2141, file: !367, discriminator: 1)
!2141 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1745, column: 9)
!2142 = !DILocation(line: 1745, column: 41, scope: !2141)
!2143 = !DILocation(line: 1745, column: 10, scope: !2141)
!2144 = !DILocation(line: 1745, column: 9, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !728, file: !367, discriminator: 2)
!2146 = !DILocation(line: 1745, column: 97, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2141, file: !367, discriminator: 3)
!2148 = !DILocation(line: 1745, column: 88, scope: !2141)
!2149 = !DILocation(line: 1745, column: 56, scope: !2141)
!2150 = !DILocation(line: 1745, column: 112, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2141, file: !367, discriminator: 4)
!2152 = !DILocation(line: 1745, column: 102, scope: !2141)
!2153 = !DILocation(line: 1746, column: 40, scope: !2141)
!2154 = !DILocation(line: 1746, column: 35, scope: !2141)
!2155 = !DILocation(line: 1746, column: 16, scope: !2141)
!2156 = !DILocation(line: 1746, column: 9, scope: !2141)
!2157 = !DILocation(line: 1747, column: 9, scope: !728)
!2158 = !DILocation(line: 1747, column: 51, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !367, discriminator: 1)
!2160 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1747, column: 9)
!2161 = !DILocation(line: 1747, column: 41, scope: !2160)
!2162 = !DILocation(line: 1747, column: 10, scope: !2160)
!2163 = !DILocation(line: 1747, column: 9, scope: !2145)
!2164 = !DILocation(line: 1747, column: 97, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2160, file: !367, discriminator: 3)
!2166 = !DILocation(line: 1747, column: 88, scope: !2160)
!2167 = !DILocation(line: 1747, column: 56, scope: !2160)
!2168 = !DILocation(line: 1747, column: 112, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2160, file: !367, discriminator: 4)
!2170 = !DILocation(line: 1747, column: 102, scope: !2160)
!2171 = !DILocation(line: 1748, column: 40, scope: !2160)
!2172 = !DILocation(line: 1748, column: 35, scope: !2160)
!2173 = !DILocation(line: 1748, column: 16, scope: !2160)
!2174 = !DILocation(line: 1748, column: 9, scope: !2160)
!2175 = !DILocation(line: 1749, column: 7, scope: !728)
!2176 = !DILocation(line: 1749, column: 28, scope: !728)
!2177 = !DILocation(line: 1751, column: 15, scope: !728)
!2178 = !DILocation(line: 1751, column: 18, scope: !728)
!2179 = !DILocation(line: 1751, column: 9, scope: !728)
!2180 = !DILocation(line: 1751, column: 7, scope: !728)
!2181 = !DILocation(line: 1753, column: 9, scope: !728)
!2182 = !DILocation(line: 1753, column: 51, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2184, file: !367, discriminator: 1)
!2184 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1753, column: 9)
!2185 = !DILocation(line: 1753, column: 41, scope: !2184)
!2186 = !DILocation(line: 1753, column: 10, scope: !2184)
!2187 = !DILocation(line: 1753, column: 9, scope: !2145)
!2188 = !DILocation(line: 1753, column: 97, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2184, file: !367, discriminator: 3)
!2190 = !DILocation(line: 1753, column: 88, scope: !2184)
!2191 = !DILocation(line: 1753, column: 56, scope: !2184)
!2192 = !DILocation(line: 1753, column: 112, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2184, file: !367, discriminator: 4)
!2194 = !DILocation(line: 1753, column: 102, scope: !2184)
!2195 = !DILocation(line: 1754, column: 121, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !367, line: 1754, column: 13)
!2197 = distinct !DILexicalBlock(scope: !2184, file: !367, line: 1753, column: 117)
!2198 = !DILocation(line: 1754, column: 56, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 1)
!2200 = !DILocation(line: 1754, column: 46, scope: !2196)
!2201 = !DILocation(line: 1754, column: 15, scope: !2196)
!2202 = !DILocation(line: 1754, column: 121, scope: !2203)
!2203 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 2)
!2204 = !DILocation(line: 1754, column: 102, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 4)
!2206 = !DILocation(line: 1754, column: 93, scope: !2196)
!2207 = !DILocation(line: 1754, column: 61, scope: !2196)
!2208 = !DILocation(line: 1754, column: 117, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 5)
!2210 = !DILocation(line: 1754, column: 107, scope: !2196)
!2211 = !DILocation(line: 1754, column: 13, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !367, discriminator: 7)
!2213 = !DILexicalBlockFile(scope: !2214, file: !367, discriminator: 6)
!2214 = !DILexicalBlockFile(scope: !2197, file: !367, discriminator: 3)
!2215 = !DILocation(line: 1754, column: 167, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 8)
!2217 = !DILocation(line: 1754, column: 157, scope: !2196)
!2218 = !DILocation(line: 1754, column: 126, scope: !2196)
!2219 = !DILocation(line: 1754, column: 13, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2197, file: !367, discriminator: 9)
!2221 = !DILocation(line: 1754, column: 213, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 10)
!2223 = !DILocation(line: 1754, column: 204, scope: !2196)
!2224 = !DILocation(line: 1754, column: 172, scope: !2196)
!2225 = !DILocation(line: 1754, column: 228, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2196, file: !367, discriminator: 11)
!2227 = !DILocation(line: 1754, column: 218, scope: !2196)
!2228 = !DILocation(line: 1754, column: 13, scope: !2197)
!2229 = !DILocation(line: 1755, column: 15, scope: !2196)
!2230 = !DILocation(line: 1755, column: 36, scope: !2196)
!2231 = !DILocation(line: 1755, column: 13, scope: !2196)
!2232 = !DILocation(line: 1757, column: 15, scope: !2196)
!2233 = !DILocation(line: 1757, column: 36, scope: !2196)
!2234 = !DILocation(line: 1758, column: 5, scope: !2197)
!2235 = !DILocation(line: 1759, column: 14, scope: !2184)
!2236 = !DILocation(line: 1759, column: 56, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2238, file: !367, discriminator: 1)
!2238 = distinct !DILexicalBlock(scope: !2184, file: !367, line: 1759, column: 14)
!2239 = !DILocation(line: 1759, column: 46, scope: !2238)
!2240 = !DILocation(line: 1759, column: 15, scope: !2238)
!2241 = !DILocation(line: 1759, column: 14, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2184, file: !367, discriminator: 2)
!2243 = !DILocation(line: 1759, column: 102, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2238, file: !367, discriminator: 3)
!2245 = !DILocation(line: 1759, column: 93, scope: !2238)
!2246 = !DILocation(line: 1759, column: 61, scope: !2238)
!2247 = !DILocation(line: 1759, column: 117, scope: !2248)
!2248 = !DILexicalBlockFile(scope: !2238, file: !367, discriminator: 4)
!2249 = !DILocation(line: 1759, column: 107, scope: !2238)
!2250 = !DILocation(line: 1760, column: 123, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !367, line: 1760, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2238, file: !367, line: 1759, column: 122)
!2253 = !DILocation(line: 1760, column: 56, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 1)
!2255 = !DILocation(line: 1760, column: 45, scope: !2251)
!2256 = !DILocation(line: 1760, column: 14, scope: !2251)
!2257 = !DILocation(line: 1760, column: 123, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 2)
!2259 = !DILocation(line: 1760, column: 103, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 4)
!2261 = !DILocation(line: 1760, column: 93, scope: !2251)
!2262 = !DILocation(line: 1760, column: 61, scope: !2251)
!2263 = !DILocation(line: 1760, column: 119, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 5)
!2265 = !DILocation(line: 1760, column: 108, scope: !2251)
!2266 = !DILocation(line: 1760, column: 13, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2268, file: !367, discriminator: 7)
!2268 = !DILexicalBlockFile(scope: !2269, file: !367, discriminator: 6)
!2269 = !DILexicalBlockFile(scope: !2252, file: !367, discriminator: 3)
!2270 = !DILocation(line: 1760, column: 169, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 8)
!2272 = !DILocation(line: 1760, column: 158, scope: !2251)
!2273 = !DILocation(line: 1760, column: 127, scope: !2251)
!2274 = !DILocation(line: 1760, column: 13, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2252, file: !367, discriminator: 9)
!2276 = !DILocation(line: 1760, column: 216, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 10)
!2278 = !DILocation(line: 1760, column: 206, scope: !2251)
!2279 = !DILocation(line: 1760, column: 174, scope: !2251)
!2280 = !DILocation(line: 1760, column: 232, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2251, file: !367, discriminator: 11)
!2282 = !DILocation(line: 1760, column: 221, scope: !2251)
!2283 = !DILocation(line: 1760, column: 13, scope: !2252)
!2284 = !DILocation(line: 1761, column: 15, scope: !2251)
!2285 = !DILocation(line: 1761, column: 36, scope: !2251)
!2286 = !DILocation(line: 1761, column: 13, scope: !2251)
!2287 = !DILocation(line: 1763, column: 15, scope: !2251)
!2288 = !DILocation(line: 1763, column: 36, scope: !2251)
!2289 = !DILocation(line: 1764, column: 5, scope: !2252)
!2290 = !DILocation(line: 1765, column: 11, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !728, file: !367, line: 1765, column: 9)
!2292 = !DILocation(line: 1765, column: 10, scope: !2291)
!2293 = !DILocation(line: 1765, column: 9, scope: !2291)
!2294 = !DILocation(line: 1765, column: 32, scope: !2291)
!2295 = !DILocation(line: 1765, column: 44, scope: !2296)
!2296 = !DILexicalBlockFile(scope: !2291, file: !367, discriminator: 1)
!2297 = !DILocation(line: 1765, column: 35, scope: !2291)
!2298 = !DILocation(line: 1765, column: 9, scope: !728)
!2299 = !DILocation(line: 1766, column: 9, scope: !2291)
!2300 = !DILocation(line: 1768, column: 35, scope: !2291)
!2301 = !DILocation(line: 1768, column: 16, scope: !2291)
!2302 = !DILocation(line: 1768, column: 9, scope: !2291)
!2303 = !DILocation(line: 1769, column: 1, scope: !728)
!2304 = !DILocation(line: 1891, column: 25, scope: !737)
!2305 = !DILocation(line: 1891, column: 41, scope: !737)
!2306 = !DILocation(line: 1893, column: 5, scope: !737)
!2307 = !DILocation(line: 1893, column: 12, scope: !737)
!2308 = !DILocation(line: 1893, column: 33, scope: !737)
!2309 = !DILocation(line: 1893, column: 16, scope: !737)
!2310 = !DILocation(line: 1894, column: 9, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !737, file: !367, line: 1894, column: 9)
!2312 = !DILocation(line: 1894, column: 11, scope: !2311)
!2313 = !DILocation(line: 1894, column: 19, scope: !2311)
!2314 = !DILocation(line: 1894, column: 22, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2311, file: !367, discriminator: 1)
!2316 = !DILocation(line: 1894, column: 9, scope: !737)
!2317 = !DILocation(line: 1895, column: 9, scope: !2311)
!2318 = !DILocation(line: 1896, column: 124, scope: !737)
!2319 = !DILocation(line: 1896, column: 114, scope: !737)
!2320 = !DILocation(line: 1896, column: 28, scope: !737)
!2321 = !DILocation(line: 1896, column: 12, scope: !737)
!2322 = !DILocation(line: 1896, column: 5, scope: !737)
!2323 = !DILocation(line: 1897, column: 1, scope: !737)
!2324 = !DILocation(line: 1917, column: 22, scope: !742)
!2325 = !DILocation(line: 1917, column: 38, scope: !742)
!2326 = !DILocation(line: 1919, column: 5, scope: !742)
!2327 = !DILocation(line: 1919, column: 12, scope: !742)
!2328 = !DILocation(line: 1919, column: 33, scope: !742)
!2329 = !DILocation(line: 1919, column: 16, scope: !742)
!2330 = !DILocation(line: 1920, column: 9, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !742, file: !367, line: 1920, column: 9)
!2332 = !DILocation(line: 1920, column: 11, scope: !2331)
!2333 = !DILocation(line: 1920, column: 19, scope: !2331)
!2334 = !DILocation(line: 1920, column: 22, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2331, file: !367, discriminator: 1)
!2336 = !DILocation(line: 1920, column: 9, scope: !742)
!2337 = !DILocation(line: 1921, column: 9, scope: !2331)
!2338 = !DILocation(line: 1922, column: 122, scope: !742)
!2339 = !DILocation(line: 1922, column: 113, scope: !742)
!2340 = !DILocation(line: 1922, column: 28, scope: !742)
!2341 = !DILocation(line: 1922, column: 12, scope: !742)
!2342 = !DILocation(line: 1922, column: 5, scope: !742)
!2343 = !DILocation(line: 1923, column: 1, scope: !742)
!2344 = !DILocation(line: 1904, column: 22, scope: !747)
!2345 = !DILocation(line: 1904, column: 38, scope: !747)
!2346 = !DILocation(line: 1906, column: 5, scope: !747)
!2347 = !DILocation(line: 1906, column: 12, scope: !747)
!2348 = !DILocation(line: 1906, column: 33, scope: !747)
!2349 = !DILocation(line: 1906, column: 16, scope: !747)
!2350 = !DILocation(line: 1907, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !747, file: !367, line: 1907, column: 9)
!2352 = !DILocation(line: 1907, column: 11, scope: !2351)
!2353 = !DILocation(line: 1907, column: 19, scope: !2351)
!2354 = !DILocation(line: 1907, column: 22, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2351, file: !367, discriminator: 1)
!2356 = !DILocation(line: 1907, column: 9, scope: !747)
!2357 = !DILocation(line: 1908, column: 9, scope: !2351)
!2358 = !DILocation(line: 1909, column: 122, scope: !747)
!2359 = !DILocation(line: 1909, column: 113, scope: !747)
!2360 = !DILocation(line: 1909, column: 28, scope: !747)
!2361 = !DILocation(line: 1909, column: 12, scope: !747)
!2362 = !DILocation(line: 1909, column: 5, scope: !747)
!2363 = !DILocation(line: 1910, column: 1, scope: !747)
!2364 = !DILocation(line: 1520, column: 22, scope: !752)
!2365 = !DILocation(line: 1520, column: 38, scope: !752)
!2366 = !DILocation(line: 1522, column: 5, scope: !752)
!2367 = !DILocation(line: 1522, column: 12, scope: !752)
!2368 = !DILocation(line: 1522, column: 15, scope: !752)
!2369 = !DILocation(line: 1523, column: 5, scope: !752)
!2370 = !DILocation(line: 1523, column: 15, scope: !752)
!2371 = !DILocation(line: 1524, column: 5, scope: !752)
!2372 = !DILocation(line: 1524, column: 10, scope: !752)
!2373 = !DILocation(line: 1525, column: 5, scope: !752)
!2374 = !DILocation(line: 1525, column: 9, scope: !752)
!2375 = !DILocation(line: 1526, column: 28, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !752, file: !367, line: 1526, column: 9)
!2377 = !DILocation(line: 1526, column: 11, scope: !2376)
!2378 = !DILocation(line: 1526, column: 9, scope: !752)
!2379 = !DILocation(line: 1527, column: 9, scope: !2376)
!2380 = !DILocation(line: 1529, column: 26, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !752, file: !367, line: 1529, column: 9)
!2382 = !DILocation(line: 1529, column: 34, scope: !2381)
!2383 = !DILocation(line: 1529, column: 45, scope: !2381)
!2384 = !{!1189, !1178, i64 168}
!2385 = !DILocation(line: 1529, column: 54, scope: !2381)
!2386 = !DILocation(line: 1529, column: 71, scope: !2381)
!2387 = !DILocation(line: 1529, column: 9, scope: !752)
!2388 = !DILocation(line: 1532, column: 40, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !367, line: 1529, column: 78)
!2390 = !DILocation(line: 1532, column: 15, scope: !2389)
!2391 = !DILocation(line: 1532, column: 13, scope: !2389)
!2392 = !DILocation(line: 1533, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2389, file: !367, line: 1533, column: 13)
!2394 = !DILocation(line: 1533, column: 17, scope: !2393)
!2395 = !DILocation(line: 1533, column: 23, scope: !2393)
!2396 = !DILocation(line: 1533, column: 26, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2393, file: !367, discriminator: 1)
!2398 = !DILocation(line: 1533, column: 13, scope: !2389)
!2399 = !DILocation(line: 1534, column: 13, scope: !2393)
!2400 = !DILocation(line: 1535, column: 13, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2389, file: !367, line: 1535, column: 13)
!2402 = !DILocation(line: 1535, column: 13, scope: !2389)
!2403 = !DILocation(line: 1536, column: 19, scope: !2401)
!2404 = !DILocation(line: 1536, column: 28, scope: !2401)
!2405 = !DILocation(line: 1536, column: 17, scope: !2401)
!2406 = !DILocation(line: 1536, column: 13, scope: !2401)
!2407 = !DILocation(line: 1537, column: 5, scope: !2389)
!2408 = !DILocation(line: 1539, column: 25, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2381, file: !367, line: 1538, column: 10)
!2410 = !DILocation(line: 1539, column: 9, scope: !2409)
!2411 = !DILocation(line: 1541, column: 9, scope: !2409)
!2412 = !DILocation(line: 1544, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !752, file: !367, line: 1544, column: 9)
!2414 = !DILocation(line: 1544, column: 11, scope: !2413)
!2415 = !DILocation(line: 1544, column: 17, scope: !2413)
!2416 = !DILocation(line: 1544, column: 9, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !752, file: !367, discriminator: 1)
!2418 = !DILocation(line: 1544, column: 64, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2413, file: !367, discriminator: 2)
!2420 = !DILocation(line: 1544, column: 53, scope: !2413)
!2421 = !DILocation(line: 1544, column: 22, scope: !2413)
!2422 = !DILocation(line: 1544, column: 9, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !752, file: !367, discriminator: 3)
!2424 = !DILocation(line: 1544, column: 111, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !2413, file: !367, discriminator: 4)
!2426 = !DILocation(line: 1544, column: 101, scope: !2413)
!2427 = !DILocation(line: 1544, column: 69, scope: !2413)
!2428 = !DILocation(line: 1544, column: 127, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !2413, file: !367, discriminator: 5)
!2430 = !DILocation(line: 1544, column: 116, scope: !2413)
!2431 = !DILocation(line: 1544, column: 9, scope: !752)
!2432 = !DILocation(line: 1546, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2413, file: !367, line: 1544, column: 132)
!2434 = !DILocation(line: 1546, column: 11, scope: !2433)
!2435 = !DILocation(line: 1547, column: 11, scope: !2433)
!2436 = !DILocation(line: 1547, column: 32, scope: !2433)
!2437 = !DILocation(line: 1548, column: 5, scope: !2433)
!2438 = !DILocation(line: 1548, column: 16, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2413, file: !367, line: 1548, column: 16)
!2440 = !DILocation(line: 1548, column: 20, scope: !2439)
!2441 = !DILocation(line: 1548, column: 16, scope: !2413)
!2442 = !DILocation(line: 1550, column: 46, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !367, line: 1548, column: 34)
!2444 = !DILocation(line: 1550, column: 13, scope: !2443)
!2445 = !DILocation(line: 1550, column: 11, scope: !2443)
!2446 = !DILocation(line: 1551, column: 11, scope: !2443)
!2447 = !DILocation(line: 1551, column: 32, scope: !2443)
!2448 = !DILocation(line: 1552, column: 5, scope: !2443)
!2449 = !DILocation(line: 1552, column: 16, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2439, file: !367, line: 1552, column: 16)
!2451 = !DILocation(line: 1552, column: 20, scope: !2450)
!2452 = !DILocation(line: 1552, column: 16, scope: !2439)
!2453 = !DILocation(line: 1554, column: 26, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2450, file: !367, line: 1552, column: 40)
!2455 = !DILocation(line: 1554, column: 13, scope: !2454)
!2456 = !DILocation(line: 1554, column: 11, scope: !2454)
!2457 = !DILocation(line: 1555, column: 11, scope: !2454)
!2458 = !DILocation(line: 1555, column: 32, scope: !2454)
!2459 = !DILocation(line: 1556, column: 5, scope: !2454)
!2460 = !DILocation(line: 1557, column: 11, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !367, line: 1556, column: 12)
!2462 = !DILocation(line: 1557, column: 32, scope: !2461)
!2463 = !DILocation(line: 1559, column: 19, scope: !2461)
!2464 = !DILocation(line: 1559, column: 27, scope: !2461)
!2465 = !DILocation(line: 1559, column: 22, scope: !2461)
!2466 = !DILocation(line: 1559, column: 13, scope: !2461)
!2467 = !DILocation(line: 1559, column: 11, scope: !2461)
!2468 = !DILocation(line: 1561, column: 13, scope: !2461)
!2469 = !DILocation(line: 1561, column: 55, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2471, file: !367, discriminator: 1)
!2471 = distinct !DILexicalBlock(scope: !2461, file: !367, line: 1561, column: 13)
!2472 = !DILocation(line: 1561, column: 45, scope: !2471)
!2473 = !DILocation(line: 1561, column: 14, scope: !2471)
!2474 = !DILocation(line: 1561, column: 13, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2461, file: !367, discriminator: 2)
!2476 = !DILocation(line: 1561, column: 101, scope: !2477)
!2477 = !DILexicalBlockFile(scope: !2471, file: !367, discriminator: 3)
!2478 = !DILocation(line: 1561, column: 92, scope: !2471)
!2479 = !DILocation(line: 1561, column: 60, scope: !2471)
!2480 = !DILocation(line: 1561, column: 116, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2471, file: !367, discriminator: 4)
!2482 = !DILocation(line: 1561, column: 106, scope: !2471)
!2483 = !DILocation(line: 1562, column: 15, scope: !2471)
!2484 = !DILocation(line: 1562, column: 36, scope: !2471)
!2485 = !DILocation(line: 1562, column: 13, scope: !2471)
!2486 = !DILocation(line: 1565, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !752, file: !367, line: 1565, column: 9)
!2488 = !DILocation(line: 1565, column: 10, scope: !2487)
!2489 = !DILocation(line: 1565, column: 9, scope: !2487)
!2490 = !DILocation(line: 1565, column: 32, scope: !2487)
!2491 = !DILocation(line: 1565, column: 44, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2487, file: !367, discriminator: 1)
!2493 = !DILocation(line: 1565, column: 35, scope: !2487)
!2494 = !DILocation(line: 1565, column: 9, scope: !752)
!2495 = !DILocation(line: 1566, column: 9, scope: !2487)
!2496 = !DILocation(line: 1567, column: 31, scope: !752)
!2497 = !DILocation(line: 1567, column: 12, scope: !752)
!2498 = !DILocation(line: 1567, column: 5, scope: !752)
!2499 = !DILocation(line: 1568, column: 1, scope: !752)
!2500 = !DILocation(line: 950, column: 41, scope: !761)
!2501 = !DILocation(line: 950, column: 57, scope: !761)
!2502 = !DILocation(line: 950, column: 80, scope: !761)
!2503 = !DILocation(line: 950, column: 72, scope: !761)
!2504 = !DILocation(line: 950, column: 65, scope: !761)
!2505 = !DILocation(line: 1650, column: 20, scope: !770)
!2506 = !DILocation(line: 1650, column: 36, scope: !770)
!2507 = !DILocation(line: 1652, column: 5, scope: !770)
!2508 = !DILocation(line: 1652, column: 15, scope: !770)
!2509 = !DILocation(line: 1653, column: 5, scope: !770)
!2510 = !DILocation(line: 1653, column: 15, scope: !770)
!2511 = !DILocation(line: 1654, column: 5, scope: !770)
!2512 = !DILocation(line: 1654, column: 15, scope: !770)
!2513 = !DILocation(line: 1654, column: 21, scope: !770)
!2514 = !DILocation(line: 1655, column: 5, scope: !770)
!2515 = !DILocation(line: 1655, column: 15, scope: !770)
!2516 = !DILocation(line: 1657, column: 28, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !770, file: !367, line: 1657, column: 9)
!2518 = !DILocation(line: 1657, column: 10, scope: !2517)
!2519 = !DILocation(line: 1657, column: 9, scope: !770)
!2520 = !DILocation(line: 1658, column: 9, scope: !2517)
!2521 = !DILocation(line: 1660, column: 21, scope: !770)
!2522 = !DILocation(line: 1660, column: 11, scope: !770)
!2523 = !DILocation(line: 1660, column: 9, scope: !770)
!2524 = !DILocation(line: 1661, column: 9, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !770, file: !367, line: 1661, column: 9)
!2526 = !DILocation(line: 1661, column: 13, scope: !2525)
!2527 = !DILocation(line: 1661, column: 27, scope: !2525)
!2528 = !DILocation(line: 1661, column: 30, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2525, file: !367, discriminator: 1)
!2530 = !DILocation(line: 1661, column: 35, scope: !2525)
!2531 = !DILocation(line: 1661, column: 9, scope: !770)
!2532 = !DILocation(line: 1662, column: 16, scope: !2525)
!2533 = !DILocation(line: 1662, column: 9, scope: !2525)
!2534 = !DILocation(line: 1664, column: 21, scope: !770)
!2535 = !DILocation(line: 1664, column: 11, scope: !770)
!2536 = !DILocation(line: 1664, column: 9, scope: !770)
!2537 = !DILocation(line: 1665, column: 9, scope: !782)
!2538 = !DILocation(line: 1665, column: 13, scope: !782)
!2539 = !DILocation(line: 1665, column: 9, scope: !770)
!2540 = !DILocation(line: 1666, column: 9, scope: !781)
!2541 = !DILocation(line: 1666, column: 14, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !780, file: !367, discriminator: 1)
!2543 = !DILocation(line: 1666, column: 24, scope: !780)
!2544 = !DILocation(line: 1666, column: 54, scope: !780)
!2545 = !DILocation(line: 1666, column: 68, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !780, file: !367, line: 1666, column: 65)
!2547 = !DILocation(line: 1666, column: 85, scope: !2546)
!2548 = !DILocation(line: 1666, column: 65, scope: !2546)
!2549 = !DILocation(line: 1666, column: 95, scope: !2546)
!2550 = !DILocation(line: 1666, column: 65, scope: !780)
!2551 = !DILocation(line: 1666, column: 65, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !780, file: !367, discriminator: 2)
!2553 = !DILocation(line: 1666, column: 126, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2546, file: !367, discriminator: 3)
!2555 = !DILocation(line: 1666, column: 144, scope: !2546)
!2556 = !DILocation(line: 1666, column: 154, scope: !2546)
!2557 = !DILocation(line: 1666, column: 179, scope: !2546)
!2558 = !DILocation(line: 1666, column: 110, scope: !2546)
!2559 = !DILocation(line: 1666, column: 198, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !781, file: !367, discriminator: 4)
!2561 = !DILocation(line: 1666, column: 198, scope: !780)
!2562 = !DILocation(line: 1666, column: 198, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !780, file: !367, discriminator: 5)
!2564 = !DILocation(line: 1667, column: 9, scope: !781)
!2565 = !DILocation(line: 1670, column: 31, scope: !770)
!2566 = !DILocation(line: 1670, column: 36, scope: !770)
!2567 = !DILocation(line: 1670, column: 11, scope: !770)
!2568 = !DILocation(line: 1670, column: 9, scope: !770)
!2569 = !DILocation(line: 1671, column: 5, scope: !770)
!2570 = !DILocation(line: 1671, column: 10, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !784, file: !367, discriminator: 1)
!2572 = !DILocation(line: 1671, column: 20, scope: !784)
!2573 = !DILocation(line: 1671, column: 50, scope: !784)
!2574 = !DILocation(line: 1671, column: 64, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !784, file: !367, line: 1671, column: 61)
!2576 = !DILocation(line: 1671, column: 81, scope: !2575)
!2577 = !DILocation(line: 1671, column: 61, scope: !2575)
!2578 = !DILocation(line: 1671, column: 91, scope: !2575)
!2579 = !DILocation(line: 1671, column: 61, scope: !784)
!2580 = !DILocation(line: 1671, column: 61, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !784, file: !367, discriminator: 2)
!2582 = !DILocation(line: 1671, column: 122, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2575, file: !367, discriminator: 3)
!2584 = !DILocation(line: 1671, column: 140, scope: !2575)
!2585 = !DILocation(line: 1671, column: 150, scope: !2575)
!2586 = !DILocation(line: 1671, column: 175, scope: !2575)
!2587 = !DILocation(line: 1671, column: 106, scope: !2575)
!2588 = !DILocation(line: 1671, column: 194, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !770, file: !367, discriminator: 4)
!2590 = !DILocation(line: 1671, column: 194, scope: !784)
!2591 = !DILocation(line: 1671, column: 194, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !784, file: !367, discriminator: 5)
!2593 = !DILocation(line: 1672, column: 5, scope: !770)
!2594 = !DILocation(line: 1672, column: 10, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !786, file: !367, discriminator: 1)
!2596 = !DILocation(line: 1672, column: 20, scope: !786)
!2597 = !DILocation(line: 1672, column: 50, scope: !786)
!2598 = !DILocation(line: 1672, column: 64, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !786, file: !367, line: 1672, column: 61)
!2600 = !DILocation(line: 1672, column: 81, scope: !2599)
!2601 = !DILocation(line: 1672, column: 61, scope: !2599)
!2602 = !DILocation(line: 1672, column: 91, scope: !2599)
!2603 = !DILocation(line: 1672, column: 61, scope: !786)
!2604 = !DILocation(line: 1672, column: 61, scope: !2605)
!2605 = !DILexicalBlockFile(scope: !786, file: !367, discriminator: 2)
!2606 = !DILocation(line: 1672, column: 122, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !2599, file: !367, discriminator: 3)
!2608 = !DILocation(line: 1672, column: 140, scope: !2599)
!2609 = !DILocation(line: 1672, column: 150, scope: !2599)
!2610 = !DILocation(line: 1672, column: 175, scope: !2599)
!2611 = !DILocation(line: 1672, column: 106, scope: !2599)
!2612 = !DILocation(line: 1672, column: 194, scope: !2589)
!2613 = !DILocation(line: 1672, column: 194, scope: !786)
!2614 = !DILocation(line: 1672, column: 194, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !786, file: !367, discriminator: 5)
!2616 = !DILocation(line: 1673, column: 12, scope: !770)
!2617 = !DILocation(line: 1673, column: 5, scope: !770)
!2618 = !DILocation(line: 1674, column: 1, scope: !770)
!2619 = !DILocation(line: 952, column: 40, scope: !802)
!2620 = !DILocation(line: 952, column: 56, scope: !802)
!2621 = !DILocation(line: 952, column: 78, scope: !802)
!2622 = !DILocation(line: 952, column: 71, scope: !802)
!2623 = !DILocation(line: 952, column: 64, scope: !802)
!2624 = !DILocation(line: 1691, column: 22, scope: !806)
!2625 = !DILocation(line: 1691, column: 38, scope: !806)
!2626 = !DILocation(line: 1693, column: 22, scope: !806)
!2627 = !DILocation(line: 1693, column: 12, scope: !806)
!2628 = !DILocation(line: 1693, column: 5, scope: !806)
!2629 = !DILocation(line: 1682, column: 21, scope: !813)
!2630 = !DILocation(line: 1682, column: 37, scope: !813)
!2631 = !DILocation(line: 1684, column: 22, scope: !813)
!2632 = !DILocation(line: 1684, column: 12, scope: !813)
!2633 = !DILocation(line: 1684, column: 5, scope: !813)
!2634 = !DILocation(line: 1575, column: 21, scope: !820)
!2635 = !DILocation(line: 1575, column: 37, scope: !820)
!2636 = !DILocation(line: 1577, column: 5, scope: !820)
!2637 = !DILocation(line: 1577, column: 12, scope: !820)
!2638 = !DILocation(line: 1577, column: 15, scope: !820)
!2639 = !DILocation(line: 1577, column: 36, scope: !820)
!2640 = !DILocation(line: 1577, column: 19, scope: !820)
!2641 = !DILocation(line: 1578, column: 9, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !820, file: !367, line: 1578, column: 9)
!2643 = !DILocation(line: 1578, column: 11, scope: !2642)
!2644 = !DILocation(line: 1578, column: 19, scope: !2642)
!2645 = !DILocation(line: 1578, column: 22, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2642, file: !367, discriminator: 1)
!2647 = !DILocation(line: 1578, column: 9, scope: !820)
!2648 = !DILocation(line: 1579, column: 9, scope: !2642)
!2649 = !DILocation(line: 1582, column: 9, scope: !820)
!2650 = !DILocation(line: 1582, column: 53, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2652, file: !367, discriminator: 1)
!2652 = distinct !DILexicalBlock(scope: !820, file: !367, line: 1582, column: 9)
!2653 = !DILocation(line: 1582, column: 42, scope: !2652)
!2654 = !DILocation(line: 1582, column: 11, scope: !2652)
!2655 = !DILocation(line: 1582, column: 9, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !820, file: !367, discriminator: 2)
!2657 = !DILocation(line: 1582, column: 100, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2652, file: !367, discriminator: 3)
!2659 = !DILocation(line: 1582, column: 90, scope: !2652)
!2660 = !DILocation(line: 1582, column: 58, scope: !2652)
!2661 = !DILocation(line: 1582, column: 116, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2652, file: !367, discriminator: 4)
!2663 = !DILocation(line: 1582, column: 105, scope: !2652)
!2664 = !DILocation(line: 1583, column: 13, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2652, file: !367, line: 1582, column: 121)
!2666 = !DILocation(line: 1583, column: 55, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2668, file: !367, discriminator: 1)
!2668 = distinct !DILexicalBlock(scope: !2665, file: !367, line: 1583, column: 13)
!2669 = !DILocation(line: 1583, column: 45, scope: !2668)
!2670 = !DILocation(line: 1583, column: 14, scope: !2668)
!2671 = !DILocation(line: 1583, column: 13, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2665, file: !367, discriminator: 2)
!2673 = !DILocation(line: 1583, column: 101, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2668, file: !367, discriminator: 3)
!2675 = !DILocation(line: 1583, column: 92, scope: !2668)
!2676 = !DILocation(line: 1583, column: 60, scope: !2668)
!2677 = !DILocation(line: 1583, column: 116, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2668, file: !367, discriminator: 4)
!2679 = !DILocation(line: 1583, column: 106, scope: !2668)
!2680 = !DILocation(line: 1584, column: 55, scope: !2668)
!2681 = !DILocation(line: 1584, column: 42, scope: !2668)
!2682 = !DILocation(line: 1584, column: 59, scope: !2668)
!2683 = !DILocation(line: 1584, column: 20, scope: !2668)
!2684 = !DILocation(line: 1584, column: 13, scope: !2668)
!2685 = !DILocation(line: 1585, column: 18, scope: !2668)
!2686 = !DILocation(line: 1585, column: 60, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2688, file: !367, discriminator: 1)
!2688 = distinct !DILexicalBlock(scope: !2668, file: !367, line: 1585, column: 18)
!2689 = !DILocation(line: 1585, column: 50, scope: !2688)
!2690 = !DILocation(line: 1585, column: 19, scope: !2688)
!2691 = !DILocation(line: 1585, column: 18, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2668, file: !367, discriminator: 2)
!2693 = !DILocation(line: 1585, column: 106, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !2688, file: !367, discriminator: 3)
!2695 = !DILocation(line: 1585, column: 97, scope: !2688)
!2696 = !DILocation(line: 1585, column: 65, scope: !2688)
!2697 = !DILocation(line: 1585, column: 121, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2688, file: !367, discriminator: 4)
!2699 = !DILocation(line: 1585, column: 111, scope: !2688)
!2700 = !DILocation(line: 1586, column: 42, scope: !2688)
!2701 = !DILocation(line: 1586, column: 45, scope: !2688)
!2702 = !DILocation(line: 1586, column: 20, scope: !2688)
!2703 = !DILocation(line: 1586, column: 13, scope: !2688)
!2704 = !DILocation(line: 1587, column: 5, scope: !2665)
!2705 = !DILocation(line: 1589, column: 7, scope: !820)
!2706 = !DILocation(line: 1589, column: 28, scope: !820)
!2707 = !DILocation(line: 1591, column: 14, scope: !820)
!2708 = !DILocation(line: 1591, column: 9, scope: !820)
!2709 = !DILocation(line: 1591, column: 7, scope: !820)
!2710 = !DILocation(line: 1593, column: 34, scope: !820)
!2711 = !DILocation(line: 1593, column: 37, scope: !820)
!2712 = !DILocation(line: 1593, column: 12, scope: !820)
!2713 = !DILocation(line: 1593, column: 5, scope: !820)
!2714 = !DILocation(line: 1594, column: 1, scope: !820)
!2715 = !DILocation(line: 1781, column: 20, scope: !826)
!2716 = !DILocation(line: 1781, column: 36, scope: !826)
!2717 = !DILocation(line: 1783, column: 5, scope: !826)
!2718 = !DILocation(line: 1783, column: 15, scope: !826)
!2719 = !DILocation(line: 1783, column: 20, scope: !826)
!2720 = !DILocation(line: 1784, column: 5, scope: !826)
!2721 = !DILocation(line: 1784, column: 12, scope: !826)
!2722 = !DILocation(line: 1784, column: 15, scope: !826)
!2723 = !DILocation(line: 1784, column: 18, scope: !826)
!2724 = !DILocation(line: 1785, column: 5, scope: !826)
!2725 = !DILocation(line: 1785, column: 9, scope: !826)
!2726 = !DILocation(line: 1787, column: 29, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !826, file: !367, line: 1787, column: 9)
!2728 = !DILocation(line: 1787, column: 11, scope: !2727)
!2729 = !DILocation(line: 1787, column: 9, scope: !826)
!2730 = !DILocation(line: 1788, column: 9, scope: !2727)
!2731 = !DILocation(line: 1789, column: 26, scope: !826)
!2732 = !DILocation(line: 1789, column: 9, scope: !826)
!2733 = !DILocation(line: 1789, column: 7, scope: !826)
!2734 = !DILocation(line: 1790, column: 26, scope: !826)
!2735 = !DILocation(line: 1790, column: 9, scope: !826)
!2736 = !DILocation(line: 1790, column: 7, scope: !826)
!2737 = !DILocation(line: 1791, column: 10, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !826, file: !367, line: 1791, column: 9)
!2739 = !DILocation(line: 1791, column: 12, scope: !2738)
!2740 = !DILocation(line: 1791, column: 20, scope: !2738)
!2741 = !DILocation(line: 1791, column: 23, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2738, file: !367, discriminator: 2)
!2743 = !DILocation(line: 1791, column: 25, scope: !2738)
!2744 = !DILocation(line: 1791, column: 34, scope: !2738)
!2745 = !DILocation(line: 1791, column: 37, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2747, file: !367, discriminator: 3)
!2747 = !DILexicalBlockFile(scope: !2738, file: !367, discriminator: 1)
!2748 = !DILocation(line: 1791, column: 9, scope: !826)
!2749 = !DILocation(line: 1792, column: 9, scope: !2738)
!2750 = !DILocation(line: 1796, column: 7, scope: !826)
!2751 = !DILocation(line: 1797, column: 120, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !826, file: !367, line: 1797, column: 9)
!2753 = !DILocation(line: 1797, column: 53, scope: !2754)
!2754 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 1)
!2755 = !DILocation(line: 1797, column: 42, scope: !2752)
!2756 = !DILocation(line: 1797, column: 11, scope: !2752)
!2757 = !DILocation(line: 1797, column: 120, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 2)
!2759 = !DILocation(line: 1797, column: 100, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 4)
!2761 = !DILocation(line: 1797, column: 90, scope: !2752)
!2762 = !DILocation(line: 1797, column: 58, scope: !2752)
!2763 = !DILocation(line: 1797, column: 116, scope: !2764)
!2764 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 5)
!2765 = !DILocation(line: 1797, column: 105, scope: !2752)
!2766 = !DILocation(line: 1797, column: 9, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !2768, file: !367, discriminator: 7)
!2768 = !DILexicalBlockFile(scope: !2769, file: !367, discriminator: 6)
!2769 = !DILexicalBlockFile(scope: !826, file: !367, discriminator: 3)
!2770 = !DILocation(line: 1797, column: 167, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 8)
!2772 = !DILocation(line: 1797, column: 156, scope: !2752)
!2773 = !DILocation(line: 1797, column: 125, scope: !2752)
!2774 = !DILocation(line: 1797, column: 9, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !826, file: !367, discriminator: 9)
!2776 = !DILocation(line: 1797, column: 214, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 10)
!2778 = !DILocation(line: 1797, column: 204, scope: !2752)
!2779 = !DILocation(line: 1797, column: 172, scope: !2752)
!2780 = !DILocation(line: 1797, column: 230, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2752, file: !367, discriminator: 11)
!2782 = !DILocation(line: 1797, column: 219, scope: !2752)
!2783 = !DILocation(line: 1797, column: 9, scope: !826)
!2784 = !DILocation(line: 1798, column: 11, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2752, file: !367, line: 1797, column: 235)
!2786 = !DILocation(line: 1798, column: 32, scope: !2785)
!2787 = !DILocation(line: 1799, column: 13, scope: !2785)
!2788 = !DILocation(line: 1799, column: 55, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !2790, file: !367, discriminator: 1)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !367, line: 1799, column: 13)
!2791 = !DILocation(line: 1799, column: 45, scope: !2790)
!2792 = !DILocation(line: 1799, column: 14, scope: !2790)
!2793 = !DILocation(line: 1799, column: 13, scope: !2794)
!2794 = !DILexicalBlockFile(scope: !2785, file: !367, discriminator: 2)
!2795 = !DILocation(line: 1799, column: 101, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2790, file: !367, discriminator: 3)
!2797 = !DILocation(line: 1799, column: 92, scope: !2790)
!2798 = !DILocation(line: 1799, column: 60, scope: !2790)
!2799 = !DILocation(line: 1799, column: 116, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2790, file: !367, discriminator: 4)
!2801 = !DILocation(line: 1799, column: 106, scope: !2790)
!2802 = !DILocation(line: 1800, column: 17, scope: !2790)
!2803 = !DILocation(line: 1800, column: 19, scope: !2790)
!2804 = !DILocation(line: 1800, column: 17, scope: !2789)
!2805 = !DILocation(line: 1800, column: 32, scope: !2806)
!2806 = !DILexicalBlockFile(scope: !2790, file: !367, discriminator: 2)
!2807 = !DILocation(line: 1800, column: 15, scope: !2808)
!2808 = !DILexicalBlockFile(scope: !2796, file: !367, discriminator: 4)
!2809 = !DILocation(line: 1800, column: 13, scope: !2790)
!2810 = !DILocation(line: 1801, column: 18, scope: !2790)
!2811 = !DILocation(line: 1801, column: 60, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2813, file: !367, discriminator: 1)
!2813 = distinct !DILexicalBlock(scope: !2790, file: !367, line: 1801, column: 18)
!2814 = !DILocation(line: 1801, column: 50, scope: !2813)
!2815 = !DILocation(line: 1801, column: 19, scope: !2813)
!2816 = !DILocation(line: 1801, column: 18, scope: !2806)
!2817 = !DILocation(line: 1801, column: 106, scope: !2818)
!2818 = !DILexicalBlockFile(scope: !2813, file: !367, discriminator: 3)
!2819 = !DILocation(line: 1801, column: 97, scope: !2813)
!2820 = !DILocation(line: 1801, column: 65, scope: !2813)
!2821 = !DILocation(line: 1801, column: 121, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2813, file: !367, discriminator: 4)
!2823 = !DILocation(line: 1801, column: 111, scope: !2813)
!2824 = !DILocation(line: 1802, column: 17, scope: !2813)
!2825 = !DILocation(line: 1802, column: 19, scope: !2813)
!2826 = !DILocation(line: 1802, column: 17, scope: !2812)
!2827 = !DILocation(line: 1802, column: 32, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2813, file: !367, discriminator: 2)
!2829 = !DILocation(line: 1802, column: 15, scope: !2830)
!2830 = !DILexicalBlockFile(scope: !2818, file: !367, discriminator: 4)
!2831 = !DILocation(line: 1802, column: 13, scope: !2813)
!2832 = !DILocation(line: 1803, column: 18, scope: !2813)
!2833 = !DILocation(line: 1803, column: 60, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2835, file: !367, discriminator: 1)
!2835 = distinct !DILexicalBlock(scope: !2813, file: !367, line: 1803, column: 18)
!2836 = !DILocation(line: 1803, column: 50, scope: !2835)
!2837 = !DILocation(line: 1803, column: 19, scope: !2835)
!2838 = !DILocation(line: 1803, column: 18, scope: !2828)
!2839 = !DILocation(line: 1803, column: 106, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2835, file: !367, discriminator: 3)
!2841 = !DILocation(line: 1803, column: 97, scope: !2835)
!2842 = !DILocation(line: 1803, column: 65, scope: !2835)
!2843 = !DILocation(line: 1803, column: 121, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2835, file: !367, discriminator: 4)
!2845 = !DILocation(line: 1803, column: 111, scope: !2835)
!2846 = !DILocation(line: 1804, column: 131, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2835, file: !367, line: 1803, column: 126)
!2848 = !DILocation(line: 1804, column: 64, scope: !2849)
!2849 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 1)
!2850 = !DILocation(line: 1804, column: 53, scope: !2847)
!2851 = !DILocation(line: 1804, column: 22, scope: !2847)
!2852 = !DILocation(line: 1804, column: 131, scope: !2853)
!2853 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 2)
!2854 = !DILocation(line: 1804, column: 111, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 5)
!2856 = !DILocation(line: 1804, column: 101, scope: !2847)
!2857 = !DILocation(line: 1804, column: 69, scope: !2847)
!2858 = !DILocation(line: 1804, column: 127, scope: !2859)
!2859 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 6)
!2860 = !DILocation(line: 1804, column: 116, scope: !2847)
!2861 = !DILocation(line: 1804, column: 144, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2863, file: !367, discriminator: 9)
!2863 = !DILexicalBlockFile(scope: !2864, file: !367, discriminator: 7)
!2864 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 3)
!2865 = !DILocation(line: 1804, column: 139, scope: !2847)
!2866 = !DILocation(line: 1804, column: 134, scope: !2847)
!2867 = !DILocation(line: 1804, column: 153, scope: !2847)
!2868 = !DILocation(line: 1804, column: 131, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2870, file: !367, discriminator: 10)
!2870 = !DILexicalBlockFile(scope: !2871, file: !367, discriminator: 8)
!2871 = !DILexicalBlockFile(scope: !2847, file: !367, discriminator: 4)
!2872 = !DILocation(line: 1804, column: 19, scope: !2847)
!2873 = !DILocation(line: 1805, column: 17, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2847, file: !367, line: 1805, column: 17)
!2875 = !DILocation(line: 1805, column: 19, scope: !2874)
!2876 = !DILocation(line: 1805, column: 17, scope: !2847)
!2877 = !DILocation(line: 1806, column: 21, scope: !2874)
!2878 = !DILocation(line: 1806, column: 29, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !2874, file: !367, discriminator: 1)
!2880 = !DILocation(line: 1806, column: 38, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2874, file: !367, discriminator: 2)
!2882 = !DILocation(line: 1806, column: 33, scope: !2874)
!2883 = !DILocation(line: 1806, column: 19, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2885, file: !367, discriminator: 4)
!2885 = !DILexicalBlockFile(scope: !2874, file: !367, discriminator: 3)
!2886 = !DILocation(line: 1806, column: 17, scope: !2874)
!2887 = !DILocation(line: 1807, column: 22, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2874, file: !367, line: 1807, column: 22)
!2889 = !DILocation(line: 1807, column: 24, scope: !2888)
!2890 = !DILocation(line: 1807, column: 22, scope: !2874)
!2891 = !DILocation(line: 1808, column: 19, scope: !2888)
!2892 = !DILocation(line: 1808, column: 17, scope: !2888)
!2893 = !DILocation(line: 1810, column: 21, scope: !2888)
!2894 = !DILocation(line: 1810, column: 42, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2888, file: !367, discriminator: 1)
!2896 = !DILocation(line: 1810, column: 29, scope: !2888)
!2897 = !DILocation(line: 1810, column: 21, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2888, file: !367, discriminator: 2)
!2899 = !DILocation(line: 1810, column: 19, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2901, file: !367, discriminator: 4)
!2901 = !DILexicalBlockFile(scope: !2888, file: !367, discriminator: 3)
!2902 = !DILocation(line: 1811, column: 9, scope: !2847)
!2903 = !DILocation(line: 1812, column: 18, scope: !2835)
!2904 = !DILocation(line: 1812, column: 60, scope: !2905)
!2905 = !DILexicalBlockFile(scope: !2906, file: !367, discriminator: 1)
!2906 = distinct !DILexicalBlock(scope: !2835, file: !367, line: 1812, column: 18)
!2907 = !DILocation(line: 1812, column: 50, scope: !2906)
!2908 = !DILocation(line: 1812, column: 19, scope: !2906)
!2909 = !DILocation(line: 1812, column: 18, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2835, file: !367, discriminator: 2)
!2911 = !DILocation(line: 1812, column: 106, scope: !2912)
!2912 = !DILexicalBlockFile(scope: !2906, file: !367, discriminator: 3)
!2913 = !DILocation(line: 1812, column: 97, scope: !2906)
!2914 = !DILocation(line: 1812, column: 65, scope: !2906)
!2915 = !DILocation(line: 1812, column: 121, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2906, file: !367, discriminator: 4)
!2917 = !DILocation(line: 1812, column: 111, scope: !2906)
!2918 = !DILocation(line: 1813, column: 22, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !367, line: 1813, column: 17)
!2920 = distinct !DILexicalBlock(scope: !2906, file: !367, line: 1812, column: 126)
!2921 = !DILocation(line: 1813, column: 17, scope: !2919)
!2922 = !DILocation(line: 1813, column: 25, scope: !2919)
!2923 = !DILocation(line: 1813, column: 17, scope: !2920)
!2924 = !DILocation(line: 1814, column: 19, scope: !2919)
!2925 = !DILocation(line: 1814, column: 17, scope: !2919)
!2926 = !DILocation(line: 1815, column: 22, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2919, file: !367, line: 1815, column: 22)
!2928 = !DILocation(line: 1815, column: 24, scope: !2927)
!2929 = !DILocation(line: 1815, column: 29, scope: !2927)
!2930 = !DILocation(line: 1815, column: 37, scope: !2931)
!2931 = !DILexicalBlockFile(scope: !2927, file: !367, discriminator: 1)
!2932 = !DILocation(line: 1815, column: 32, scope: !2927)
!2933 = !DILocation(line: 1815, column: 40, scope: !2927)
!2934 = !DILocation(line: 1815, column: 22, scope: !2919)
!2935 = !DILocation(line: 1816, column: 21, scope: !2927)
!2936 = !DILocation(line: 1816, column: 19, scope: !2927)
!2937 = !DILocation(line: 1816, column: 17, scope: !2927)
!2938 = !DILocation(line: 1817, column: 22, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2927, file: !367, line: 1817, column: 22)
!2940 = !DILocation(line: 1817, column: 24, scope: !2939)
!2941 = !DILocation(line: 1817, column: 29, scope: !2939)
!2942 = !DILocation(line: 1817, column: 37, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !2939, file: !367, discriminator: 1)
!2944 = !DILocation(line: 1817, column: 32, scope: !2939)
!2945 = !DILocation(line: 1817, column: 40, scope: !2939)
!2946 = !DILocation(line: 1817, column: 22, scope: !2927)
!2947 = !DILocation(line: 1818, column: 22, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2939, file: !367, line: 1817, column: 47)
!2949 = !DILocation(line: 1818, column: 21, scope: !2948)
!2950 = !DILocation(line: 1818, column: 19, scope: !2948)
!2951 = !DILocation(line: 1819, column: 21, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2948, file: !367, line: 1819, column: 21)
!2953 = !DILocation(line: 1819, column: 23, scope: !2952)
!2954 = !DILocation(line: 1819, column: 21, scope: !2948)
!2955 = !DILocation(line: 1820, column: 23, scope: !2952)
!2956 = !DILocation(line: 1820, column: 44, scope: !2952)
!2957 = !DILocation(line: 1820, column: 21, scope: !2952)
!2958 = !DILocation(line: 1821, column: 13, scope: !2948)
!2959 = !DILocation(line: 1823, column: 19, scope: !2939)
!2960 = !DILocation(line: 1824, column: 9, scope: !2920)
!2961 = !DILocation(line: 1825, column: 5, scope: !2785)
!2962 = !DILocation(line: 1828, column: 11, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2752, file: !367, line: 1826, column: 10)
!2964 = !DILocation(line: 1828, column: 32, scope: !2963)
!2965 = !DILocation(line: 1830, column: 17, scope: !2963)
!2966 = !DILocation(line: 1830, column: 20, scope: !2963)
!2967 = !DILocation(line: 1830, column: 13, scope: !2963)
!2968 = !DILocation(line: 1830, column: 11, scope: !2963)
!2969 = !DILocation(line: 1834, column: 13, scope: !2963)
!2970 = !DILocation(line: 1834, column: 57, scope: !2971)
!2971 = !DILexicalBlockFile(scope: !2972, file: !367, discriminator: 1)
!2972 = distinct !DILexicalBlock(scope: !2963, file: !367, line: 1834, column: 13)
!2973 = !DILocation(line: 1834, column: 46, scope: !2972)
!2974 = !DILocation(line: 1834, column: 15, scope: !2972)
!2975 = !DILocation(line: 1834, column: 13, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2963, file: !367, discriminator: 2)
!2977 = !DILocation(line: 1834, column: 104, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2972, file: !367, discriminator: 3)
!2979 = !DILocation(line: 1834, column: 94, scope: !2972)
!2980 = !DILocation(line: 1834, column: 62, scope: !2972)
!2981 = !DILocation(line: 1834, column: 120, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2972, file: !367, discriminator: 4)
!2983 = !DILocation(line: 1834, column: 109, scope: !2972)
!2984 = !DILocation(line: 1835, column: 17, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2972, file: !367, line: 1834, column: 125)
!2986 = !DILocation(line: 1835, column: 59, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 1)
!2988 = distinct !DILexicalBlock(scope: !2985, file: !367, line: 1835, column: 17)
!2989 = !DILocation(line: 1835, column: 49, scope: !2988)
!2990 = !DILocation(line: 1835, column: 18, scope: !2988)
!2991 = !DILocation(line: 1835, column: 17, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2985, file: !367, discriminator: 2)
!2993 = !DILocation(line: 1835, column: 105, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 3)
!2995 = !DILocation(line: 1835, column: 96, scope: !2988)
!2996 = !DILocation(line: 1835, column: 64, scope: !2988)
!2997 = !DILocation(line: 1835, column: 120, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 4)
!2999 = !DILocation(line: 1835, column: 110, scope: !2988)
!3000 = !DILocation(line: 1836, column: 19, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2988, file: !367, line: 1835, column: 125)
!3002 = !DILocation(line: 1836, column: 40, scope: !3001)
!3003 = !DILocation(line: 1837, column: 13, scope: !3001)
!3004 = !DILocation(line: 1843, column: 22, scope: !2988)
!3005 = !DILocation(line: 1843, column: 64, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3007, file: !367, discriminator: 1)
!3007 = distinct !DILexicalBlock(scope: !2988, file: !367, line: 1843, column: 22)
!3008 = !DILocation(line: 1843, column: 54, scope: !3007)
!3009 = !DILocation(line: 1843, column: 23, scope: !3007)
!3010 = !DILocation(line: 1843, column: 22, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !2988, file: !367, discriminator: 2)
!3012 = !DILocation(line: 1843, column: 110, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3007, file: !367, discriminator: 3)
!3014 = !DILocation(line: 1843, column: 101, scope: !3007)
!3015 = !DILocation(line: 1843, column: 69, scope: !3007)
!3016 = !DILocation(line: 1843, column: 125, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3007, file: !367, discriminator: 4)
!3018 = !DILocation(line: 1843, column: 115, scope: !3007)
!3019 = !DILocation(line: 1844, column: 21, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3021, file: !367, line: 1844, column: 21)
!3021 = distinct !DILexicalBlock(scope: !3007, file: !367, line: 1843, column: 130)
!3022 = !DILocation(line: 1844, column: 23, scope: !3020)
!3023 = !DILocation(line: 1844, column: 21, scope: !3021)
!3024 = !DILocation(line: 1845, column: 23, scope: !3020)
!3025 = !DILocation(line: 1845, column: 44, scope: !3020)
!3026 = !DILocation(line: 1845, column: 21, scope: !3020)
!3027 = !DILocation(line: 1847, column: 23, scope: !3020)
!3028 = !DILocation(line: 1847, column: 44, scope: !3020)
!3029 = !DILocation(line: 1848, column: 13, scope: !3021)
!3030 = !DILocation(line: 1849, column: 9, scope: !2985)
!3031 = !DILocation(line: 1852, column: 11, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !826, file: !367, line: 1852, column: 9)
!3033 = !DILocation(line: 1852, column: 10, scope: !3032)
!3034 = !DILocation(line: 1852, column: 9, scope: !3032)
!3035 = !DILocation(line: 1852, column: 32, scope: !3032)
!3036 = !DILocation(line: 1852, column: 44, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !3032, file: !367, discriminator: 1)
!3038 = !DILocation(line: 1852, column: 35, scope: !3032)
!3039 = !DILocation(line: 1852, column: 9, scope: !826)
!3040 = !DILocation(line: 1853, column: 9, scope: !3032)
!3041 = !DILocation(line: 1855, column: 35, scope: !3032)
!3042 = !DILocation(line: 1855, column: 16, scope: !3032)
!3043 = !DILocation(line: 1855, column: 9, scope: !3032)
!3044 = !DILocation(line: 1856, column: 1, scope: !826)
!3045 = !DILocation(line: 1878, column: 24, scope: !836)
!3046 = !DILocation(line: 1878, column: 40, scope: !836)
!3047 = !DILocation(line: 1880, column: 5, scope: !836)
!3048 = !DILocation(line: 1880, column: 12, scope: !836)
!3049 = !DILocation(line: 1880, column: 33, scope: !836)
!3050 = !DILocation(line: 1880, column: 16, scope: !836)
!3051 = !DILocation(line: 1881, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !836, file: !367, line: 1881, column: 9)
!3053 = !DILocation(line: 1881, column: 11, scope: !3052)
!3054 = !DILocation(line: 1881, column: 19, scope: !3052)
!3055 = !DILocation(line: 1881, column: 22, scope: !3056)
!3056 = !DILexicalBlockFile(scope: !3052, file: !367, discriminator: 1)
!3057 = !DILocation(line: 1881, column: 9, scope: !836)
!3058 = !DILocation(line: 1882, column: 9, scope: !3052)
!3059 = !DILocation(line: 1883, column: 31, scope: !836)
!3060 = !DILocation(line: 1883, column: 33, scope: !836)
!3061 = !DILocation(line: 1883, column: 12, scope: !836)
!3062 = !DILocation(line: 1883, column: 5, scope: !836)
!3063 = !DILocation(line: 1884, column: 1, scope: !836)
!3064 = !DILocation(line: 955, column: 38, scope: !841)
!3065 = !DILocation(line: 955, column: 54, scope: !841)
!3066 = !DILocation(line: 955, column: 76, scope: !841)
!3067 = !DILocation(line: 955, column: 69, scope: !841)
!3068 = !DILocation(line: 955, column: 62, scope: !841)
!3069 = !DILocation(line: 957, column: 39, scope: !845)
!3070 = !DILocation(line: 957, column: 55, scope: !845)
!3071 = !DILocation(line: 957, column: 77, scope: !845)
!3072 = !DILocation(line: 957, column: 70, scope: !845)
!3073 = !DILocation(line: 957, column: 63, scope: !845)
!3074 = !DILocation(line: 959, column: 39, scope: !849)
!3075 = !DILocation(line: 959, column: 55, scope: !849)
!3076 = !DILocation(line: 959, column: 77, scope: !849)
!3077 = !DILocation(line: 959, column: 70, scope: !849)
!3078 = !DILocation(line: 959, column: 63, scope: !849)
!3079 = !DILocation(line: 961, column: 38, scope: !853)
!3080 = !DILocation(line: 961, column: 54, scope: !853)
!3081 = !DILocation(line: 961, column: 76, scope: !853)
!3082 = !DILocation(line: 961, column: 69, scope: !853)
!3083 = !DILocation(line: 961, column: 62, scope: !853)
!3084 = !DILocation(line: 963, column: 39, scope: !857)
!3085 = !DILocation(line: 963, column: 55, scope: !857)
!3086 = !DILocation(line: 963, column: 77, scope: !857)
!3087 = !DILocation(line: 963, column: 70, scope: !857)
!3088 = !DILocation(line: 963, column: 63, scope: !857)
!3089 = !DILocation(line: 1464, column: 22, scope: !861)
!3090 = !DILocation(line: 1464, column: 38, scope: !861)
!3091 = !DILocation(line: 1467, column: 5, scope: !861)
!3092 = !DILocation(line: 1467, column: 15, scope: !861)
!3093 = !DILocation(line: 1467, column: 23, scope: !861)
!3094 = !DILocation(line: 1469, column: 23, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !861, file: !367, line: 1469, column: 9)
!3096 = !DILocation(line: 1469, column: 33, scope: !3095)
!3097 = !DILocation(line: 1469, column: 43, scope: !3095)
!3098 = !{!1189, !1092, i64 264}
!3099 = !DILocation(line: 1469, column: 51, scope: !3095)
!3100 = !DILocation(line: 1469, column: 9, scope: !861)
!3101 = !DILocation(line: 1470, column: 40, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !367, line: 1470, column: 13)
!3103 = distinct !DILexicalBlock(scope: !3095, file: !367, line: 1469, column: 66)
!3104 = !DILocation(line: 1470, column: 50, scope: !3102)
!3105 = !DILocation(line: 1470, column: 13, scope: !3102)
!3106 = !DILocation(line: 1470, column: 60, scope: !3102)
!3107 = !DILocation(line: 1470, column: 13, scope: !3103)
!3108 = !DILocation(line: 1471, column: 13, scope: !3102)
!3109 = !DILocation(line: 1472, column: 5, scope: !3103)
!3110 = !DILocation(line: 1474, column: 37, scope: !861)
!3111 = !DILocation(line: 1474, column: 13, scope: !861)
!3112 = !DILocation(line: 1474, column: 11, scope: !861)
!3113 = !DILocation(line: 1475, column: 9, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !861, file: !367, line: 1475, column: 9)
!3115 = !DILocation(line: 1475, column: 15, scope: !3114)
!3116 = !DILocation(line: 1475, column: 9, scope: !861)
!3117 = !DILocation(line: 1476, column: 14, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !367, line: 1476, column: 13)
!3119 = distinct !DILexicalBlock(scope: !3114, file: !367, line: 1475, column: 30)
!3120 = !DILocation(line: 1476, column: 13, scope: !3119)
!3121 = !DILocation(line: 1477, column: 26, scope: !3118)
!3122 = !DILocation(line: 1479, column: 40, scope: !3118)
!3123 = !DILocation(line: 1479, column: 50, scope: !3118)
!3124 = !DILocation(line: 1479, column: 60, scope: !3118)
!3125 = !{!1189, !1092, i64 24}
!3126 = !DILocation(line: 1477, column: 13, scope: !3118)
!3127 = !DILocation(line: 1480, column: 9, scope: !3119)
!3128 = !DILocation(line: 1482, column: 43, scope: !861)
!3129 = !DILocation(line: 1482, column: 14, scope: !861)
!3130 = !DILocation(line: 1482, column: 12, scope: !861)
!3131 = !DILocation(line: 1483, column: 5, scope: !861)
!3132 = !DILocation(line: 1483, column: 10, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !868, file: !367, discriminator: 1)
!3134 = !DILocation(line: 1483, column: 20, scope: !868)
!3135 = !DILocation(line: 1483, column: 50, scope: !868)
!3136 = !DILocation(line: 1483, column: 66, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !868, file: !367, line: 1483, column: 63)
!3138 = !DILocation(line: 1483, column: 83, scope: !3137)
!3139 = !DILocation(line: 1483, column: 63, scope: !3137)
!3140 = !DILocation(line: 1483, column: 93, scope: !3137)
!3141 = !DILocation(line: 1483, column: 63, scope: !868)
!3142 = !DILocation(line: 1483, column: 63, scope: !3143)
!3143 = !DILexicalBlockFile(scope: !868, file: !367, discriminator: 2)
!3144 = !DILocation(line: 1483, column: 124, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3137, file: !367, discriminator: 3)
!3146 = !DILocation(line: 1483, column: 142, scope: !3137)
!3147 = !DILocation(line: 1483, column: 152, scope: !3137)
!3148 = !DILocation(line: 1483, column: 177, scope: !3137)
!3149 = !DILocation(line: 1483, column: 108, scope: !3137)
!3150 = !DILocation(line: 1483, column: 196, scope: !3151)
!3151 = !DILexicalBlockFile(scope: !861, file: !367, discriminator: 4)
!3152 = !DILocation(line: 1483, column: 196, scope: !868)
!3153 = !DILocation(line: 1483, column: 196, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !868, file: !367, discriminator: 5)
!3155 = !DILocation(line: 1484, column: 12, scope: !861)
!3156 = !DILocation(line: 1484, column: 5, scope: !861)
!3157 = !DILocation(line: 1485, column: 1, scope: !861)
!3158 = !DILocation(line: 811, column: 18, scope: !376)
!3159 = !DILocation(line: 811, column: 32, scope: !376)
!3160 = !DILocation(line: 811, column: 52, scope: !376)
!3161 = !DILocation(line: 813, column: 31, scope: !376)
!3162 = !DILocation(line: 813, column: 36, scope: !376)
!3163 = !DILocation(line: 813, column: 62, scope: !376)
!3164 = !DILocation(line: 813, column: 12, scope: !376)
!3165 = !DILocation(line: 813, column: 5, scope: !376)
!3166 = !DILocation(line: 730, column: 30, scope: !386)
!3167 = !DILocation(line: 730, column: 44, scope: !386)
!3168 = !DILocation(line: 731, column: 32, scope: !386)
!3169 = !DILocation(line: 732, column: 24, scope: !386)
!3170 = !DILocation(line: 734, column: 5, scope: !386)
!3171 = !DILocation(line: 734, column: 12, scope: !386)
!3172 = !DILocation(line: 734, column: 15, scope: !386)
!3173 = !DILocation(line: 735, column: 26, scope: !386)
!3174 = !DILocation(line: 735, column: 9, scope: !386)
!3175 = !DILocation(line: 735, column: 7, scope: !386)
!3176 = !DILocation(line: 736, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !386, file: !367, line: 736, column: 9)
!3178 = !DILocation(line: 736, column: 11, scope: !3177)
!3179 = !DILocation(line: 736, column: 19, scope: !3177)
!3180 = !DILocation(line: 736, column: 22, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3177, file: !367, discriminator: 1)
!3182 = !DILocation(line: 736, column: 9, scope: !386)
!3183 = !DILocation(line: 737, column: 9, scope: !3177)
!3184 = !DILocation(line: 738, column: 7, scope: !386)
!3185 = !DILocation(line: 738, column: 28, scope: !386)
!3186 = !DILocation(line: 740, column: 11, scope: !386)
!3187 = !DILocation(line: 740, column: 17, scope: !386)
!3188 = !DILocation(line: 740, column: 9, scope: !386)
!3189 = !DILocation(line: 740, column: 7, scope: !386)
!3190 = !DILocation(line: 742, column: 116, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !386, file: !367, line: 742, column: 9)
!3192 = !DILocation(line: 742, column: 51, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 1)
!3194 = !DILocation(line: 742, column: 41, scope: !3191)
!3195 = !DILocation(line: 742, column: 10, scope: !3191)
!3196 = !DILocation(line: 742, column: 116, scope: !3197)
!3197 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 2)
!3198 = !DILocation(line: 742, column: 97, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 4)
!3200 = !DILocation(line: 742, column: 88, scope: !3191)
!3201 = !DILocation(line: 742, column: 56, scope: !3191)
!3202 = !DILocation(line: 742, column: 112, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 5)
!3204 = !DILocation(line: 742, column: 102, scope: !3191)
!3205 = !DILocation(line: 742, column: 9, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3207, file: !367, discriminator: 7)
!3207 = !DILexicalBlockFile(scope: !3208, file: !367, discriminator: 6)
!3208 = !DILexicalBlockFile(scope: !386, file: !367, discriminator: 3)
!3209 = !DILocation(line: 742, column: 162, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 8)
!3211 = !DILocation(line: 742, column: 152, scope: !3191)
!3212 = !DILocation(line: 742, column: 121, scope: !3191)
!3213 = !DILocation(line: 742, column: 9, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !386, file: !367, discriminator: 9)
!3215 = !DILocation(line: 742, column: 208, scope: !3216)
!3216 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 10)
!3217 = !DILocation(line: 742, column: 199, scope: !3191)
!3218 = !DILocation(line: 742, column: 167, scope: !3191)
!3219 = !DILocation(line: 742, column: 223, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3191, file: !367, discriminator: 11)
!3221 = !DILocation(line: 742, column: 213, scope: !3191)
!3222 = !DILocation(line: 742, column: 9, scope: !386)
!3223 = !DILocation(line: 743, column: 25, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3191, file: !367, line: 742, column: 228)
!3225 = !DILocation(line: 743, column: 9, scope: !3224)
!3226 = !DILocation(line: 745, column: 9, scope: !3224)
!3227 = !DILocation(line: 747, column: 116, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !386, file: !367, line: 747, column: 9)
!3229 = !DILocation(line: 747, column: 51, scope: !3230)
!3230 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 1)
!3231 = !DILocation(line: 747, column: 41, scope: !3228)
!3232 = !DILocation(line: 747, column: 10, scope: !3228)
!3233 = !DILocation(line: 747, column: 116, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 2)
!3235 = !DILocation(line: 747, column: 97, scope: !3236)
!3236 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 4)
!3237 = !DILocation(line: 747, column: 88, scope: !3228)
!3238 = !DILocation(line: 747, column: 56, scope: !3228)
!3239 = !DILocation(line: 747, column: 112, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 5)
!3241 = !DILocation(line: 747, column: 102, scope: !3228)
!3242 = !DILocation(line: 747, column: 9, scope: !3206)
!3243 = !DILocation(line: 747, column: 162, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 8)
!3245 = !DILocation(line: 747, column: 151, scope: !3228)
!3246 = !DILocation(line: 747, column: 120, scope: !3228)
!3247 = !DILocation(line: 747, column: 9, scope: !3214)
!3248 = !DILocation(line: 747, column: 209, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 10)
!3250 = !DILocation(line: 747, column: 199, scope: !3228)
!3251 = !DILocation(line: 747, column: 167, scope: !3228)
!3252 = !DILocation(line: 747, column: 225, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3228, file: !367, discriminator: 11)
!3254 = !DILocation(line: 747, column: 214, scope: !3228)
!3255 = !DILocation(line: 747, column: 9, scope: !386)
!3256 = !DILocation(line: 748, column: 13, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3258, file: !367, line: 748, column: 13)
!3258 = distinct !DILexicalBlock(scope: !3228, file: !367, line: 747, column: 230)
!3259 = !DILocation(line: 748, column: 13, scope: !3258)
!3260 = !DILocation(line: 749, column: 29, scope: !3257)
!3261 = !DILocation(line: 749, column: 13, scope: !3257)
!3262 = !DILocation(line: 752, column: 29, scope: !3257)
!3263 = !DILocation(line: 752, column: 13, scope: !3257)
!3264 = !DILocation(line: 754, column: 9, scope: !3258)
!3265 = !DILocation(line: 756, column: 119, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !386, file: !367, line: 756, column: 9)
!3267 = !DILocation(line: 756, column: 52, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 1)
!3269 = !DILocation(line: 756, column: 41, scope: !3266)
!3270 = !DILocation(line: 756, column: 10, scope: !3266)
!3271 = !DILocation(line: 756, column: 119, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 2)
!3273 = !DILocation(line: 756, column: 99, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 4)
!3275 = !DILocation(line: 756, column: 89, scope: !3266)
!3276 = !DILocation(line: 756, column: 57, scope: !3266)
!3277 = !DILocation(line: 756, column: 115, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 5)
!3279 = !DILocation(line: 756, column: 104, scope: !3266)
!3280 = !DILocation(line: 756, column: 124, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3282, file: !367, discriminator: 7)
!3282 = !DILexicalBlockFile(scope: !3283, file: !367, discriminator: 6)
!3283 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 3)
!3284 = !DILocation(line: 756, column: 123, scope: !3266)
!3285 = !DILocation(line: 756, column: 122, scope: !3266)
!3286 = !DILocation(line: 756, column: 145, scope: !3266)
!3287 = !DILocation(line: 756, column: 157, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3266, file: !367, discriminator: 8)
!3289 = !DILocation(line: 756, column: 148, scope: !3266)
!3290 = !DILocation(line: 756, column: 9, scope: !386)
!3291 = !DILocation(line: 758, column: 9, scope: !3266)
!3292 = !DILocation(line: 760, column: 14, scope: !386)
!3293 = !DILocation(line: 760, column: 32, scope: !386)
!3294 = !DILocation(line: 760, column: 12, scope: !386)
!3295 = !DILocation(line: 760, column: 5, scope: !386)
!3296 = !DILocation(line: 761, column: 1, scope: !386)
!3297 = !DILocation(line: 664, column: 17, scope: !399)
!3298 = !DILocation(line: 666, column: 5, scope: !399)
!3299 = !DILocation(line: 666, column: 9, scope: !399)
!3300 = !DILocation(line: 668, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !399, file: !367, line: 668, column: 9)
!3302 = !DILocation(line: 668, column: 10, scope: !3301)
!3303 = !DILocation(line: 668, column: 32, scope: !3301)
!3304 = !DILocation(line: 668, column: 9, scope: !399)
!3305 = !DILocation(line: 669, column: 25, scope: !3301)
!3306 = !DILocation(line: 669, column: 9, scope: !3301)
!3307 = !DILocation(line: 671, column: 16, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3301, file: !367, line: 671, column: 14)
!3309 = !DILocation(line: 671, column: 15, scope: !3308)
!3310 = !DILocation(line: 671, column: 37, scope: !3308)
!3311 = !DILocation(line: 671, column: 14, scope: !3301)
!3312 = !DILocation(line: 687, column: 18, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !367, line: 687, column: 13)
!3314 = distinct !DILexicalBlock(scope: !3308, file: !367, line: 671, column: 44)
!3315 = !DILocation(line: 687, column: 13, scope: !3313)
!3316 = !DILocation(line: 687, column: 21, scope: !3313)
!3317 = !DILocation(line: 687, column: 13, scope: !3314)
!3318 = !DILocation(line: 688, column: 20, scope: !3313)
!3319 = !DILocation(line: 688, column: 13, scope: !3313)
!3320 = !DILocation(line: 690, column: 29, scope: !3313)
!3321 = !DILocation(line: 690, column: 13, scope: !3313)
!3322 = !DILocation(line: 692, column: 5, scope: !3314)
!3323 = !DILocation(line: 695, column: 28, scope: !3308)
!3324 = !DILocation(line: 695, column: 9, scope: !3308)
!3325 = !DILocation(line: 696, column: 12, scope: !399)
!3326 = !DILocation(line: 697, column: 1, scope: !399)
!3327 = !DILocation(line: 696, column: 5, scope: !399)
!3328 = !DILocation(line: 823, column: 18, scope: !425)
!3329 = !DILocation(line: 823, column: 33, scope: !425)
!3330 = !DILocation(line: 823, column: 63, scope: !425)
!3331 = !DILocation(line: 825, column: 5, scope: !425)
!3332 = !DILocation(line: 825, column: 15, scope: !425)
!3333 = !DILocation(line: 825, column: 20, scope: !425)
!3334 = !DILocation(line: 826, column: 5, scope: !425)
!3335 = !DILocation(line: 826, column: 12, scope: !425)
!3336 = !DILocation(line: 826, column: 15, scope: !425)
!3337 = !DILocation(line: 826, column: 18, scope: !425)
!3338 = !DILocation(line: 827, column: 29, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !425, file: !367, line: 827, column: 9)
!3340 = !DILocation(line: 827, column: 35, scope: !3339)
!3341 = !DILocation(line: 827, column: 11, scope: !3339)
!3342 = !DILocation(line: 827, column: 9, scope: !425)
!3343 = !DILocation(line: 828, column: 9, scope: !3339)
!3344 = !DILocation(line: 829, column: 26, scope: !425)
!3345 = !DILocation(line: 829, column: 9, scope: !425)
!3346 = !DILocation(line: 829, column: 7, scope: !425)
!3347 = !DILocation(line: 830, column: 26, scope: !425)
!3348 = !DILocation(line: 830, column: 9, scope: !425)
!3349 = !DILocation(line: 830, column: 7, scope: !425)
!3350 = !DILocation(line: 831, column: 10, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !425, file: !367, line: 831, column: 9)
!3352 = !DILocation(line: 831, column: 12, scope: !3351)
!3353 = !DILocation(line: 831, column: 20, scope: !3351)
!3354 = !DILocation(line: 831, column: 23, scope: !3355)
!3355 = !DILexicalBlockFile(scope: !3351, file: !367, discriminator: 2)
!3356 = !DILocation(line: 831, column: 25, scope: !3351)
!3357 = !DILocation(line: 831, column: 34, scope: !3351)
!3358 = !DILocation(line: 831, column: 37, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3360, file: !367, discriminator: 3)
!3360 = !DILexicalBlockFile(scope: !3351, file: !367, discriminator: 1)
!3361 = !DILocation(line: 831, column: 9, scope: !425)
!3362 = !DILocation(line: 832, column: 9, scope: !3351)
!3363 = !DILocation(line: 833, column: 7, scope: !425)
!3364 = !DILocation(line: 833, column: 28, scope: !425)
!3365 = !DILocation(line: 835, column: 11, scope: !425)
!3366 = !DILocation(line: 835, column: 17, scope: !425)
!3367 = !DILocation(line: 835, column: 20, scope: !425)
!3368 = !DILocation(line: 835, column: 9, scope: !425)
!3369 = !DILocation(line: 835, column: 7, scope: !425)
!3370 = !DILocation(line: 837, column: 9, scope: !425)
!3371 = !DILocation(line: 837, column: 51, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !3373, file: !367, discriminator: 1)
!3373 = distinct !DILexicalBlock(scope: !425, file: !367, line: 837, column: 9)
!3374 = !DILocation(line: 837, column: 41, scope: !3373)
!3375 = !DILocation(line: 837, column: 10, scope: !3373)
!3376 = !DILocation(line: 837, column: 9, scope: !3377)
!3377 = !DILexicalBlockFile(scope: !425, file: !367, discriminator: 2)
!3378 = !DILocation(line: 837, column: 97, scope: !3379)
!3379 = !DILexicalBlockFile(scope: !3373, file: !367, discriminator: 3)
!3380 = !DILocation(line: 837, column: 88, scope: !3373)
!3381 = !DILocation(line: 837, column: 56, scope: !3373)
!3382 = !DILocation(line: 837, column: 112, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3373, file: !367, discriminator: 4)
!3384 = !DILocation(line: 837, column: 102, scope: !3373)
!3385 = !DILocation(line: 838, column: 121, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3387, file: !367, line: 838, column: 13)
!3387 = distinct !DILexicalBlock(scope: !3373, file: !367, line: 837, column: 117)
!3388 = !DILocation(line: 838, column: 56, scope: !3389)
!3389 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 1)
!3390 = !DILocation(line: 838, column: 46, scope: !3386)
!3391 = !DILocation(line: 838, column: 15, scope: !3386)
!3392 = !DILocation(line: 838, column: 121, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 2)
!3394 = !DILocation(line: 838, column: 102, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 4)
!3396 = !DILocation(line: 838, column: 93, scope: !3386)
!3397 = !DILocation(line: 838, column: 61, scope: !3386)
!3398 = !DILocation(line: 838, column: 117, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 5)
!3400 = !DILocation(line: 838, column: 107, scope: !3386)
!3401 = !DILocation(line: 838, column: 13, scope: !3402)
!3402 = !DILexicalBlockFile(scope: !3403, file: !367, discriminator: 7)
!3403 = !DILexicalBlockFile(scope: !3404, file: !367, discriminator: 6)
!3404 = !DILexicalBlockFile(scope: !3387, file: !367, discriminator: 3)
!3405 = !DILocation(line: 838, column: 167, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 8)
!3407 = !DILocation(line: 838, column: 157, scope: !3386)
!3408 = !DILocation(line: 838, column: 126, scope: !3386)
!3409 = !DILocation(line: 838, column: 13, scope: !3410)
!3410 = !DILexicalBlockFile(scope: !3387, file: !367, discriminator: 9)
!3411 = !DILocation(line: 838, column: 213, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 10)
!3413 = !DILocation(line: 838, column: 204, scope: !3386)
!3414 = !DILocation(line: 838, column: 172, scope: !3386)
!3415 = !DILocation(line: 838, column: 228, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3386, file: !367, discriminator: 11)
!3417 = !DILocation(line: 838, column: 218, scope: !3386)
!3418 = !DILocation(line: 838, column: 13, scope: !3387)
!3419 = !DILocation(line: 839, column: 15, scope: !3386)
!3420 = !DILocation(line: 839, column: 36, scope: !3386)
!3421 = !DILocation(line: 839, column: 13, scope: !3386)
!3422 = !DILocation(line: 841, column: 15, scope: !3386)
!3423 = !DILocation(line: 841, column: 36, scope: !3386)
!3424 = !DILocation(line: 842, column: 5, scope: !3387)
!3425 = !DILocation(line: 843, column: 14, scope: !3373)
!3426 = !DILocation(line: 843, column: 56, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !3428, file: !367, discriminator: 1)
!3428 = distinct !DILexicalBlock(scope: !3373, file: !367, line: 843, column: 14)
!3429 = !DILocation(line: 843, column: 46, scope: !3428)
!3430 = !DILocation(line: 843, column: 15, scope: !3428)
!3431 = !DILocation(line: 843, column: 14, scope: !3432)
!3432 = !DILexicalBlockFile(scope: !3373, file: !367, discriminator: 2)
!3433 = !DILocation(line: 843, column: 102, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3428, file: !367, discriminator: 3)
!3435 = !DILocation(line: 843, column: 93, scope: !3428)
!3436 = !DILocation(line: 843, column: 61, scope: !3428)
!3437 = !DILocation(line: 843, column: 117, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3428, file: !367, discriminator: 4)
!3439 = !DILocation(line: 843, column: 107, scope: !3428)
!3440 = !DILocation(line: 844, column: 123, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3442, file: !367, line: 844, column: 13)
!3442 = distinct !DILexicalBlock(scope: !3428, file: !367, line: 843, column: 122)
!3443 = !DILocation(line: 844, column: 56, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 1)
!3445 = !DILocation(line: 844, column: 45, scope: !3441)
!3446 = !DILocation(line: 844, column: 14, scope: !3441)
!3447 = !DILocation(line: 844, column: 123, scope: !3448)
!3448 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 2)
!3449 = !DILocation(line: 844, column: 103, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 4)
!3451 = !DILocation(line: 844, column: 93, scope: !3441)
!3452 = !DILocation(line: 844, column: 61, scope: !3441)
!3453 = !DILocation(line: 844, column: 119, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 5)
!3455 = !DILocation(line: 844, column: 108, scope: !3441)
!3456 = !DILocation(line: 844, column: 13, scope: !3457)
!3457 = !DILexicalBlockFile(scope: !3458, file: !367, discriminator: 7)
!3458 = !DILexicalBlockFile(scope: !3459, file: !367, discriminator: 6)
!3459 = !DILexicalBlockFile(scope: !3442, file: !367, discriminator: 3)
!3460 = !DILocation(line: 844, column: 169, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 8)
!3462 = !DILocation(line: 844, column: 158, scope: !3441)
!3463 = !DILocation(line: 844, column: 127, scope: !3441)
!3464 = !DILocation(line: 844, column: 13, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3442, file: !367, discriminator: 9)
!3466 = !DILocation(line: 844, column: 216, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 10)
!3468 = !DILocation(line: 844, column: 206, scope: !3441)
!3469 = !DILocation(line: 844, column: 174, scope: !3441)
!3470 = !DILocation(line: 844, column: 232, scope: !3471)
!3471 = !DILexicalBlockFile(scope: !3441, file: !367, discriminator: 11)
!3472 = !DILocation(line: 844, column: 221, scope: !3441)
!3473 = !DILocation(line: 844, column: 13, scope: !3442)
!3474 = !DILocation(line: 845, column: 15, scope: !3441)
!3475 = !DILocation(line: 845, column: 36, scope: !3441)
!3476 = !DILocation(line: 845, column: 13, scope: !3441)
!3477 = !DILocation(line: 847, column: 15, scope: !3441)
!3478 = !DILocation(line: 847, column: 36, scope: !3441)
!3479 = !DILocation(line: 848, column: 5, scope: !3442)
!3480 = !DILocation(line: 849, column: 11, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !425, file: !367, line: 849, column: 9)
!3482 = !DILocation(line: 849, column: 10, scope: !3481)
!3483 = !DILocation(line: 849, column: 9, scope: !3481)
!3484 = !DILocation(line: 849, column: 32, scope: !3481)
!3485 = !DILocation(line: 849, column: 44, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3481, file: !367, discriminator: 1)
!3487 = !DILocation(line: 849, column: 35, scope: !3481)
!3488 = !DILocation(line: 849, column: 9, scope: !425)
!3489 = !DILocation(line: 850, column: 9, scope: !3481)
!3490 = !DILocation(line: 852, column: 35, scope: !3481)
!3491 = !DILocation(line: 852, column: 16, scope: !3481)
!3492 = !DILocation(line: 852, column: 9, scope: !3481)
!3493 = !DILocation(line: 853, column: 1, scope: !425)
!3494 = !DILocation(line: 525, column: 16, scope: !440)
!3495 = !DILocation(line: 525, column: 26, scope: !440)
!3496 = !DILocation(line: 527, column: 116, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !440, file: !367, line: 527, column: 9)
!3498 = !DILocation(line: 527, column: 51, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 1)
!3500 = !DILocation(line: 527, column: 41, scope: !3497)
!3501 = !DILocation(line: 527, column: 10, scope: !3497)
!3502 = !DILocation(line: 527, column: 116, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 2)
!3504 = !DILocation(line: 527, column: 97, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 4)
!3506 = !DILocation(line: 527, column: 88, scope: !3497)
!3507 = !DILocation(line: 527, column: 56, scope: !3497)
!3508 = !DILocation(line: 527, column: 112, scope: !3509)
!3509 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 5)
!3510 = !DILocation(line: 527, column: 102, scope: !3497)
!3511 = !DILocation(line: 527, column: 9, scope: !3512)
!3512 = !DILexicalBlockFile(scope: !3513, file: !367, discriminator: 7)
!3513 = !DILexicalBlockFile(scope: !3514, file: !367, discriminator: 6)
!3514 = !DILexicalBlockFile(scope: !440, file: !367, discriminator: 3)
!3515 = !DILocation(line: 527, column: 161, scope: !3516)
!3516 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 8)
!3517 = !DILocation(line: 527, column: 151, scope: !3497)
!3518 = !DILocation(line: 527, column: 120, scope: !3497)
!3519 = !DILocation(line: 527, column: 9, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !440, file: !367, discriminator: 9)
!3521 = !DILocation(line: 527, column: 207, scope: !3522)
!3522 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 10)
!3523 = !DILocation(line: 527, column: 198, scope: !3497)
!3524 = !DILocation(line: 527, column: 166, scope: !3497)
!3525 = !DILocation(line: 527, column: 222, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !3497, file: !367, discriminator: 11)
!3527 = !DILocation(line: 527, column: 212, scope: !3497)
!3528 = !DILocation(line: 527, column: 9, scope: !440)
!3529 = !DILocation(line: 528, column: 9, scope: !3497)
!3530 = !DILocation(line: 529, column: 9, scope: !440)
!3531 = !DILocation(line: 529, column: 51, scope: !3532)
!3532 = !DILexicalBlockFile(scope: !3533, file: !367, discriminator: 1)
!3533 = distinct !DILexicalBlock(scope: !440, file: !367, line: 529, column: 9)
!3534 = !DILocation(line: 529, column: 41, scope: !3533)
!3535 = !DILocation(line: 529, column: 10, scope: !3533)
!3536 = !DILocation(line: 529, column: 9, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !440, file: !367, discriminator: 2)
!3538 = !DILocation(line: 529, column: 97, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3533, file: !367, discriminator: 3)
!3540 = !DILocation(line: 529, column: 88, scope: !3533)
!3541 = !DILocation(line: 529, column: 56, scope: !3533)
!3542 = !DILocation(line: 529, column: 112, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3533, file: !367, discriminator: 4)
!3544 = !DILocation(line: 529, column: 102, scope: !3533)
!3545 = !DILocation(line: 530, column: 13, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3533, file: !367, line: 529, column: 117)
!3547 = !DILocation(line: 530, column: 55, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3549, file: !367, discriminator: 1)
!3549 = distinct !DILexicalBlock(scope: !3546, file: !367, line: 530, column: 13)
!3550 = !DILocation(line: 530, column: 45, scope: !3549)
!3551 = !DILocation(line: 530, column: 14, scope: !3549)
!3552 = !DILocation(line: 530, column: 13, scope: !3553)
!3553 = !DILexicalBlockFile(scope: !3546, file: !367, discriminator: 2)
!3554 = !DILocation(line: 530, column: 101, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3549, file: !367, discriminator: 3)
!3556 = !DILocation(line: 530, column: 92, scope: !3549)
!3557 = !DILocation(line: 530, column: 60, scope: !3549)
!3558 = !DILocation(line: 530, column: 116, scope: !3559)
!3559 = !DILexicalBlockFile(scope: !3549, file: !367, discriminator: 4)
!3560 = !DILocation(line: 530, column: 106, scope: !3549)
!3561 = !DILocation(line: 531, column: 30, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !367, line: 531, column: 17)
!3563 = distinct !DILexicalBlock(scope: !3549, file: !367, line: 530, column: 121)
!3564 = !DILocation(line: 531, column: 17, scope: !3562)
!3565 = !DILocation(line: 531, column: 33, scope: !3562)
!3566 = !DILocation(line: 531, column: 17, scope: !3563)
!3567 = !DILocation(line: 533, column: 62, scope: !3562)
!3568 = !DILocation(line: 533, column: 24, scope: !3562)
!3569 = !DILocation(line: 533, column: 17, scope: !3562)
!3570 = !DILocation(line: 536, column: 62, scope: !3562)
!3571 = !DILocation(line: 536, column: 24, scope: !3562)
!3572 = !DILocation(line: 536, column: 17, scope: !3562)
!3573 = !DILocation(line: 539, column: 53, scope: !3546)
!3574 = !DILocation(line: 539, column: 16, scope: !3546)
!3575 = !DILocation(line: 539, column: 9, scope: !3546)
!3576 = !DILocation(line: 541, column: 116, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !440, file: !367, line: 541, column: 9)
!3578 = !DILocation(line: 541, column: 51, scope: !3579)
!3579 = !DILexicalBlockFile(scope: !3577, file: !367, discriminator: 1)
!3580 = !DILocation(line: 541, column: 41, scope: !3577)
!3581 = !DILocation(line: 541, column: 10, scope: !3577)
!3582 = !DILocation(line: 541, column: 116, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3577, file: !367, discriminator: 2)
!3584 = !DILocation(line: 541, column: 97, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !3577, file: !367, discriminator: 4)
!3586 = !DILocation(line: 541, column: 88, scope: !3577)
!3587 = !DILocation(line: 541, column: 56, scope: !3577)
!3588 = !DILocation(line: 541, column: 112, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3577, file: !367, discriminator: 5)
!3590 = !DILocation(line: 541, column: 102, scope: !3577)
!3591 = !DILocation(line: 541, column: 119, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3593, file: !367, discriminator: 7)
!3593 = !DILexicalBlockFile(scope: !3594, file: !367, discriminator: 6)
!3594 = !DILexicalBlockFile(scope: !3577, file: !367, discriminator: 3)
!3595 = !DILocation(line: 541, column: 121, scope: !3577)
!3596 = !DILocation(line: 541, column: 9, scope: !440)
!3597 = !DILocation(line: 542, column: 26, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3599, file: !367, line: 542, column: 13)
!3599 = distinct !DILexicalBlock(scope: !3577, file: !367, line: 541, column: 128)
!3600 = !DILocation(line: 542, column: 13, scope: !3598)
!3601 = !DILocation(line: 542, column: 29, scope: !3598)
!3602 = !DILocation(line: 542, column: 13, scope: !3599)
!3603 = !DILocation(line: 544, column: 33, scope: !3598)
!3604 = !DILocation(line: 544, column: 20, scope: !3598)
!3605 = !DILocation(line: 544, column: 13, scope: !3598)
!3606 = !DILocation(line: 547, column: 53, scope: !3598)
!3607 = !DILocation(line: 547, column: 20, scope: !3598)
!3608 = !DILocation(line: 547, column: 13, scope: !3598)
!3609 = !DILocation(line: 549, column: 18, scope: !440)
!3610 = !DILocation(line: 549, column: 21, scope: !440)
!3611 = !DILocation(line: 549, column: 12, scope: !440)
!3612 = !DILocation(line: 549, column: 5, scope: !440)
!3613 = !DILocation(line: 550, column: 1, scope: !440)
!3614 = !DILocation(line: 817, column: 25, scope: !456)
!3615 = !DILocation(line: 817, column: 39, scope: !456)
!3616 = !DILocation(line: 817, column: 59, scope: !456)
!3617 = !DILocation(line: 819, column: 31, scope: !456)
!3618 = !DILocation(line: 819, column: 36, scope: !456)
!3619 = !DILocation(line: 819, column: 61, scope: !456)
!3620 = !DILocation(line: 819, column: 12, scope: !456)
!3621 = !DILocation(line: 819, column: 5, scope: !456)
!3622 = !DILocation(line: 768, column: 19, scope: !482)
!3623 = !DILocation(line: 768, column: 33, scope: !482)
!3624 = !DILocation(line: 770, column: 5, scope: !482)
!3625 = !DILocation(line: 770, column: 12, scope: !482)
!3626 = !DILocation(line: 770, column: 15, scope: !482)
!3627 = !DILocation(line: 771, column: 26, scope: !482)
!3628 = !DILocation(line: 771, column: 9, scope: !482)
!3629 = !DILocation(line: 771, column: 7, scope: !482)
!3630 = !DILocation(line: 772, column: 9, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !482, file: !367, line: 772, column: 9)
!3632 = !DILocation(line: 772, column: 11, scope: !3631)
!3633 = !DILocation(line: 772, column: 19, scope: !3631)
!3634 = !DILocation(line: 772, column: 22, scope: !3635)
!3635 = !DILexicalBlockFile(scope: !3631, file: !367, discriminator: 1)
!3636 = !DILocation(line: 772, column: 9, scope: !482)
!3637 = !DILocation(line: 773, column: 9, scope: !3631)
!3638 = !DILocation(line: 774, column: 7, scope: !482)
!3639 = !DILocation(line: 774, column: 28, scope: !482)
!3640 = !DILocation(line: 776, column: 11, scope: !482)
!3641 = !DILocation(line: 776, column: 17, scope: !482)
!3642 = !DILocation(line: 776, column: 9, scope: !482)
!3643 = !DILocation(line: 776, column: 7, scope: !482)
!3644 = !DILocation(line: 778, column: 11, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !482, file: !367, line: 778, column: 9)
!3646 = !DILocation(line: 778, column: 10, scope: !3645)
!3647 = !DILocation(line: 778, column: 9, scope: !3645)
!3648 = !DILocation(line: 778, column: 32, scope: !3645)
!3649 = !DILocation(line: 778, column: 44, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3645, file: !367, discriminator: 1)
!3651 = !DILocation(line: 778, column: 35, scope: !3645)
!3652 = !DILocation(line: 778, column: 9, scope: !482)
!3653 = !DILocation(line: 779, column: 9, scope: !3645)
!3654 = !DILocation(line: 780, column: 31, scope: !482)
!3655 = !DILocation(line: 780, column: 12, scope: !482)
!3656 = !DILocation(line: 780, column: 5, scope: !482)
!3657 = !DILocation(line: 781, column: 1, scope: !482)
!3658 = !DILocation(line: 483, column: 14, scope: !490)
!3659 = !DILocation(line: 485, column: 5, scope: !490)
!3660 = !DILocation(line: 485, column: 12, scope: !490)
!3661 = !DILocation(line: 485, column: 18, scope: !490)
!3662 = !DILocation(line: 487, column: 9, scope: !490)
!3663 = !DILocation(line: 487, column: 51, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3665, file: !367, discriminator: 1)
!3665 = distinct !DILexicalBlock(scope: !490, file: !367, line: 487, column: 9)
!3666 = !DILocation(line: 487, column: 41, scope: !3665)
!3667 = !DILocation(line: 487, column: 10, scope: !3665)
!3668 = !DILocation(line: 487, column: 9, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !490, file: !367, discriminator: 2)
!3670 = !DILocation(line: 487, column: 97, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3665, file: !367, discriminator: 3)
!3672 = !DILocation(line: 487, column: 88, scope: !3665)
!3673 = !DILocation(line: 487, column: 56, scope: !3665)
!3674 = !DILocation(line: 487, column: 112, scope: !3675)
!3675 = !DILexicalBlockFile(scope: !3665, file: !367, discriminator: 4)
!3676 = !DILocation(line: 487, column: 102, scope: !3665)
!3677 = !DILocation(line: 488, column: 16, scope: !3665)
!3678 = !DILocation(line: 488, column: 9, scope: !3665)
!3679 = !DILocation(line: 489, column: 17, scope: !490)
!3680 = !DILocation(line: 489, column: 12, scope: !490)
!3681 = !DILocation(line: 489, column: 10, scope: !490)
!3682 = !DILocation(line: 490, column: 9, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !490, file: !367, line: 490, column: 9)
!3684 = !DILocation(line: 490, column: 14, scope: !3683)
!3685 = !DILocation(line: 490, column: 9, scope: !490)
!3686 = !DILocation(line: 491, column: 29, scope: !3683)
!3687 = !DILocation(line: 491, column: 16, scope: !3683)
!3688 = !DILocation(line: 491, column: 9, scope: !3683)
!3689 = !DILocation(line: 493, column: 30, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3683, file: !367, line: 492, column: 10)
!3691 = !DILocation(line: 493, column: 14, scope: !3690)
!3692 = !DILocation(line: 493, column: 12, scope: !3690)
!3693 = !DILocation(line: 494, column: 16, scope: !3690)
!3694 = !DILocation(line: 494, column: 18, scope: !3690)
!3695 = !DILocation(line: 494, column: 32, scope: !3696)
!3696 = !DILexicalBlockFile(scope: !3690, file: !367, discriminator: 1)
!3697 = !DILocation(line: 494, column: 30, scope: !3690)
!3698 = !DILocation(line: 494, column: 37, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3690, file: !367, discriminator: 2)
!3700 = !DILocation(line: 494, column: 40, scope: !3690)
!3701 = !DILocation(line: 494, column: 9, scope: !3702)
!3702 = !DILexicalBlockFile(scope: !3703, file: !367, discriminator: 4)
!3703 = !DILexicalBlockFile(scope: !3690, file: !367, discriminator: 3)
!3704 = !DILocation(line: 494, column: 9, scope: !3690)
!3705 = !DILocation(line: 496, column: 1, scope: !490)
!3706 = !DILocation(line: 421, column: 21, scope: !495)
!3707 = !DILocation(line: 423, column: 5, scope: !495)
!3708 = !DILocation(line: 423, column: 12, scope: !495)
!3709 = !DILocation(line: 423, column: 16, scope: !495)
!3710 = !DILocation(line: 423, column: 21, scope: !495)
!3711 = !DILocation(line: 423, column: 25, scope: !495)
!3712 = !DILocation(line: 424, column: 5, scope: !495)
!3713 = !DILocation(line: 424, column: 9, scope: !495)
!3714 = !DILocation(line: 424, column: 12, scope: !495)
!3715 = !DILocation(line: 426, column: 10, scope: !495)
!3716 = !DILocation(line: 426, column: 14, scope: !495)
!3717 = !DILocation(line: 426, column: 12, scope: !495)
!3718 = !DILocation(line: 426, column: 8, scope: !495)
!3719 = !DILocation(line: 427, column: 9, scope: !495)
!3720 = !DILocation(line: 428, column: 8, scope: !495)
!3721 = !DILocation(line: 429, column: 12, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !495, file: !367, line: 429, column: 5)
!3723 = !DILocation(line: 429, column: 10, scope: !3722)
!3724 = !DILocation(line: 429, column: 17, scope: !3725)
!3725 = !DILexicalBlockFile(scope: !3726, file: !367, discriminator: 2)
!3726 = !DILexicalBlockFile(scope: !3727, file: !367, discriminator: 1)
!3727 = distinct !DILexicalBlock(scope: !3722, file: !367, line: 429, column: 5)
!3728 = !DILocation(line: 429, column: 19, scope: !3727)
!3729 = !DILocation(line: 429, column: 5, scope: !3722)
!3730 = !DILocation(line: 430, column: 21, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3727, file: !367, line: 429, column: 30)
!3732 = !DILocation(line: 430, column: 26, scope: !3731)
!3733 = !DILocation(line: 430, column: 24, scope: !3731)
!3734 = !DILocation(line: 430, column: 32, scope: !3731)
!3735 = !DILocation(line: 430, column: 30, scope: !3731)
!3736 = !DILocation(line: 430, column: 19, scope: !3731)
!3737 = !DILocation(line: 430, column: 13, scope: !3731)
!3738 = !DILocation(line: 431, column: 12, scope: !3731)
!3739 = !DILocation(line: 432, column: 5, scope: !3731)
!3740 = !DILocation(line: 429, column: 26, scope: !3727)
!3741 = !DILocation(line: 429, column: 5, scope: !3727)
!3742 = !DILocation(line: 435, column: 21, scope: !495)
!3743 = !DILocation(line: 435, column: 20, scope: !495)
!3744 = !DILocation(line: 435, column: 17, scope: !495)
!3745 = !DILocation(line: 436, column: 14, scope: !495)
!3746 = !DILocation(line: 436, column: 20, scope: !495)
!3747 = !DILocation(line: 436, column: 18, scope: !495)
!3748 = !DILocation(line: 436, column: 29, scope: !495)
!3749 = !DILocation(line: 436, column: 28, scope: !495)
!3750 = !DILocation(line: 436, column: 24, scope: !495)
!3751 = !DILocation(line: 436, column: 22, scope: !495)
!3752 = !DILocation(line: 436, column: 33, scope: !495)
!3753 = !DILocation(line: 436, column: 12, scope: !495)
!3754 = !DILocation(line: 437, column: 30, scope: !495)
!3755 = !DILocation(line: 437, column: 7, scope: !495)
!3756 = !DILocation(line: 437, column: 28, scope: !495)
!3757 = !DILocation(line: 438, column: 12, scope: !495)
!3758 = !DILocation(line: 439, column: 1, scope: !495)
!3759 = !DILocation(line: 438, column: 5, scope: !495)
!3760 = !DILocation(line: 451, column: 24, scope: !504)
!3761 = !DILocation(line: 453, column: 5, scope: !504)
!3762 = !DILocation(line: 453, column: 12, scope: !504)
!3763 = !DILocation(line: 453, column: 16, scope: !504)
!3764 = !DILocation(line: 453, column: 19, scope: !504)
!3765 = !DILocation(line: 453, column: 23, scope: !504)
!3766 = !DILocation(line: 453, column: 26, scope: !504)
!3767 = !DILocation(line: 453, column: 34, scope: !504)
!3768 = !DILocation(line: 453, column: 37, scope: !504)
!3769 = !DILocation(line: 453, column: 45, scope: !504)
!3770 = !DILocation(line: 453, column: 48, scope: !504)
!3771 = !DILocation(line: 454, column: 5, scope: !504)
!3772 = !DILocation(line: 454, column: 9, scope: !504)
!3773 = !DILocation(line: 454, column: 12, scope: !504)
!3774 = !DILocation(line: 456, column: 9, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !504, file: !367, line: 456, column: 9)
!3776 = !DILocation(line: 456, column: 11, scope: !3775)
!3777 = !DILocation(line: 456, column: 9, scope: !504)
!3778 = !DILocation(line: 457, column: 9, scope: !3775)
!3779 = !DILocation(line: 459, column: 10, scope: !504)
!3780 = !DILocation(line: 459, column: 12, scope: !504)
!3781 = !DILocation(line: 459, column: 11, scope: !504)
!3782 = !DILocation(line: 459, column: 8, scope: !504)
!3783 = !DILocation(line: 460, column: 7, scope: !504)
!3784 = !DILocation(line: 461, column: 8, scope: !504)
!3785 = !DILocation(line: 462, column: 7, scope: !504)
!3786 = !DILocation(line: 462, column: 21, scope: !504)
!3787 = !DILocation(line: 463, column: 9, scope: !504)
!3788 = !DILocation(line: 463, column: 14, scope: !504)
!3789 = !DILocation(line: 463, column: 12, scope: !504)
!3790 = !DILocation(line: 463, column: 7, scope: !504)
!3791 = !DILocation(line: 463, column: 25, scope: !504)
!3792 = !DILocation(line: 464, column: 12, scope: !521)
!3793 = !DILocation(line: 464, column: 10, scope: !521)
!3794 = !DILocation(line: 464, column: 17, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3796, file: !367, discriminator: 2)
!3796 = !DILexicalBlockFile(scope: !520, file: !367, discriminator: 1)
!3797 = !DILocation(line: 464, column: 19, scope: !520)
!3798 = !DILocation(line: 464, column: 5, scope: !521)
!3799 = !DILocation(line: 465, column: 9, scope: !519)
!3800 = !DILocation(line: 465, column: 16, scope: !519)
!3801 = !DILocation(line: 466, column: 14, scope: !519)
!3802 = !DILocation(line: 466, column: 11, scope: !519)
!3803 = !DILocation(line: 467, column: 12, scope: !519)
!3804 = !DILocation(line: 468, column: 13, scope: !519)
!3805 = !DILocation(line: 468, column: 18, scope: !519)
!3806 = !DILocation(line: 468, column: 16, scope: !519)
!3807 = !DILocation(line: 468, column: 11, scope: !519)
!3808 = !DILocation(line: 469, column: 16, scope: !519)
!3809 = !DILocation(line: 469, column: 14, scope: !519)
!3810 = !DILocation(line: 469, column: 23, scope: !519)
!3811 = !DILocation(line: 469, column: 25, scope: !519)
!3812 = !DILocation(line: 469, column: 24, scope: !519)
!3813 = !DILocation(line: 469, column: 29, scope: !519)
!3814 = !DILocation(line: 469, column: 31, scope: !519)
!3815 = !DILocation(line: 469, column: 30, scope: !519)
!3816 = !DILocation(line: 469, column: 27, scope: !519)
!3817 = !DILocation(line: 469, column: 21, scope: !519)
!3818 = !DILocation(line: 469, column: 48, scope: !519)
!3819 = !DILocation(line: 469, column: 46, scope: !519)
!3820 = !DILocation(line: 470, column: 16, scope: !519)
!3821 = !DILocation(line: 470, column: 14, scope: !519)
!3822 = !DILocation(line: 470, column: 23, scope: !519)
!3823 = !DILocation(line: 470, column: 25, scope: !519)
!3824 = !DILocation(line: 470, column: 24, scope: !519)
!3825 = !DILocation(line: 470, column: 29, scope: !519)
!3826 = !DILocation(line: 470, column: 31, scope: !519)
!3827 = !DILocation(line: 470, column: 30, scope: !519)
!3828 = !DILocation(line: 470, column: 27, scope: !519)
!3829 = !DILocation(line: 470, column: 21, scope: !519)
!3830 = !DILocation(line: 470, column: 48, scope: !519)
!3831 = !DILocation(line: 470, column: 46, scope: !519)
!3832 = !DILocation(line: 471, column: 5, scope: !520)
!3833 = !DILocation(line: 471, column: 5, scope: !519)
!3834 = !DILocation(line: 464, column: 26, scope: !520)
!3835 = !DILocation(line: 464, column: 5, scope: !520)
!3836 = !DILocation(line: 474, column: 21, scope: !504)
!3837 = !DILocation(line: 474, column: 20, scope: !504)
!3838 = !DILocation(line: 474, column: 17, scope: !504)
!3839 = !DILocation(line: 475, column: 14, scope: !504)
!3840 = !DILocation(line: 475, column: 18, scope: !504)
!3841 = !DILocation(line: 475, column: 16, scope: !504)
!3842 = !DILocation(line: 475, column: 22, scope: !504)
!3843 = !DILocation(line: 475, column: 20, scope: !504)
!3844 = !DILocation(line: 475, column: 31, scope: !504)
!3845 = !DILocation(line: 475, column: 30, scope: !504)
!3846 = !DILocation(line: 475, column: 26, scope: !504)
!3847 = !DILocation(line: 475, column: 24, scope: !504)
!3848 = !DILocation(line: 475, column: 35, scope: !504)
!3849 = !DILocation(line: 475, column: 12, scope: !504)
!3850 = !DILocation(line: 476, column: 30, scope: !504)
!3851 = !DILocation(line: 476, column: 7, scope: !504)
!3852 = !DILocation(line: 476, column: 28, scope: !504)
!3853 = !DILocation(line: 477, column: 12, scope: !504)
!3854 = !DILocation(line: 477, column: 5, scope: !504)
!3855 = !DILocation(line: 478, column: 1, scope: !504)
!3856 = !DILocation(line: 501, column: 15, scope: !526)
!3857 = !DILocation(line: 503, column: 5, scope: !526)
!3858 = !DILocation(line: 503, column: 12, scope: !526)
!3859 = !DILocation(line: 503, column: 18, scope: !526)
!3860 = !DILocation(line: 505, column: 9, scope: !526)
!3861 = !DILocation(line: 505, column: 51, scope: !3862)
!3862 = !DILexicalBlockFile(scope: !3863, file: !367, discriminator: 1)
!3863 = distinct !DILexicalBlock(scope: !526, file: !367, line: 505, column: 9)
!3864 = !DILocation(line: 505, column: 41, scope: !3863)
!3865 = !DILocation(line: 505, column: 10, scope: !3863)
!3866 = !DILocation(line: 505, column: 9, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !526, file: !367, discriminator: 2)
!3868 = !DILocation(line: 505, column: 97, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3863, file: !367, discriminator: 3)
!3870 = !DILocation(line: 505, column: 88, scope: !3863)
!3871 = !DILocation(line: 505, column: 56, scope: !3863)
!3872 = !DILocation(line: 505, column: 112, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3863, file: !367, discriminator: 4)
!3874 = !DILocation(line: 505, column: 102, scope: !3863)
!3875 = !DILocation(line: 506, column: 16, scope: !3863)
!3876 = !DILocation(line: 506, column: 9, scope: !3863)
!3877 = !DILocation(line: 507, column: 17, scope: !526)
!3878 = !DILocation(line: 507, column: 12, scope: !526)
!3879 = !DILocation(line: 507, column: 10, scope: !526)
!3880 = !DILocation(line: 508, column: 9, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !526, file: !367, line: 508, column: 9)
!3882 = !DILocation(line: 508, column: 14, scope: !3881)
!3883 = !DILocation(line: 508, column: 9, scope: !526)
!3884 = !DILocation(line: 509, column: 35, scope: !3881)
!3885 = !DILocation(line: 509, column: 22, scope: !3881)
!3886 = !DILocation(line: 509, column: 20, scope: !3881)
!3887 = !DILocation(line: 509, column: 9, scope: !3881)
!3888 = !DILocation(line: 511, column: 30, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3881, file: !367, line: 510, column: 10)
!3890 = !DILocation(line: 511, column: 14, scope: !3889)
!3891 = !DILocation(line: 511, column: 12, scope: !3889)
!3892 = !DILocation(line: 512, column: 16, scope: !3889)
!3893 = !DILocation(line: 512, column: 18, scope: !3889)
!3894 = !DILocation(line: 512, column: 26, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3889, file: !367, discriminator: 1)
!3896 = !DILocation(line: 512, column: 37, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3889, file: !367, discriminator: 2)
!3898 = !DILocation(line: 512, column: 35, scope: !3889)
!3899 = !DILocation(line: 512, column: 9, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3901, file: !367, discriminator: 4)
!3901 = !DILexicalBlockFile(scope: !3889, file: !367, discriminator: 3)
!3902 = !DILocation(line: 512, column: 9, scope: !3889)
!3903 = !DILocation(line: 514, column: 1, scope: !526)
!3904 = !DILocation(line: 1343, column: 34, scope: !565)
!3905 = !DILocation(line: 1345, column: 5, scope: !565)
!3906 = !DILocation(line: 1345, column: 10, scope: !565)
!3907 = !DILocation(line: 1346, column: 5, scope: !565)
!3908 = !DILocation(line: 1346, column: 19, scope: !565)
!3909 = !DILocation(line: 1346, column: 22, scope: !565)
!3910 = !DILocation(line: 1346, column: 29, scope: !565)
!3911 = !DILocation(line: 1347, column: 5, scope: !565)
!3912 = !DILocation(line: 1347, column: 15, scope: !565)
!3913 = !DILocation(line: 1347, column: 25, scope: !565)
!3914 = !DILocation(line: 1347, column: 31, scope: !565)
!3915 = !DILocation(line: 1347, column: 39, scope: !565)
!3916 = !DILocation(line: 1349, column: 13, scope: !565)
!3917 = !DILocation(line: 1349, column: 11, scope: !565)
!3918 = !DILocation(line: 1350, column: 9, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !565, file: !367, line: 1350, column: 9)
!3920 = !DILocation(line: 1350, column: 15, scope: !3919)
!3921 = !DILocation(line: 1350, column: 9, scope: !565)
!3922 = !DILocation(line: 1351, column: 9, scope: !3919)
!3923 = !DILocation(line: 1352, column: 13, scope: !565)
!3924 = !DILocation(line: 1352, column: 11, scope: !565)
!3925 = !DILocation(line: 1353, column: 21, scope: !565)
!3926 = !DILocation(line: 1353, column: 30, scope: !565)
!3927 = !DILocation(line: 1353, column: 39, scope: !565)
!3928 = !DILocation(line: 1355, column: 11, scope: !565)
!3929 = !DILocation(line: 1356, column: 25, scope: !582)
!3930 = !DILocation(line: 1356, column: 14, scope: !582)
!3931 = !DILocation(line: 1356, column: 28, scope: !582)
!3932 = !DILocation(line: 1356, column: 12, scope: !582)
!3933 = !DILocation(line: 1356, column: 10, scope: !582)
!3934 = !DILocation(line: 1356, column: 33, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3936, file: !367, discriminator: 2)
!3936 = !DILexicalBlockFile(scope: !581, file: !367, discriminator: 1)
!3937 = !DILocation(line: 1356, column: 35, scope: !581)
!3938 = !DILocation(line: 1356, column: 5, scope: !582)
!3939 = !DILocation(line: 1357, column: 13, scope: !580)
!3940 = !DILocation(line: 1357, column: 18, scope: !580)
!3941 = !DILocation(line: 1357, column: 15, scope: !580)
!3942 = !DILocation(line: 1357, column: 11, scope: !580)
!3943 = !DILocation(line: 1358, column: 13, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1358, column: 13)
!3945 = !DILocation(line: 1358, column: 15, scope: !3944)
!3946 = !DILocation(line: 1358, column: 13, scope: !580)
!3947 = !DILocation(line: 1359, column: 13, scope: !3944)
!3948 = !DILocation(line: 1360, column: 17, scope: !580)
!3949 = !DILocation(line: 1360, column: 15, scope: !580)
!3950 = !DILocation(line: 1362, column: 18, scope: !580)
!3951 = !DILocation(line: 1362, column: 20, scope: !580)
!3952 = !DILocation(line: 1362, column: 25, scope: !580)
!3953 = !DILocation(line: 1362, column: 15, scope: !580)
!3954 = !DILocation(line: 1366, column: 45, scope: !580)
!3955 = !DILocation(line: 1366, column: 52, scope: !580)
!3956 = !DILocation(line: 1366, column: 70, scope: !580)
!3957 = !DILocation(line: 1366, column: 75, scope: !580)
!3958 = !DILocation(line: 1366, column: 59, scope: !580)
!3959 = !DILocation(line: 1366, column: 19, scope: !580)
!3960 = !DILocation(line: 1366, column: 17, scope: !580)
!3961 = !DILocation(line: 1368, column: 13, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1368, column: 13)
!3963 = !DILocation(line: 1368, column: 21, scope: !3962)
!3964 = !DILocation(line: 1368, column: 13, scope: !580)
!3965 = !DILocation(line: 1369, column: 13, scope: !3962)
!3966 = !DILocation(line: 1370, column: 33, scope: !580)
!3967 = !DILocation(line: 1370, column: 40, scope: !580)
!3968 = !DILocation(line: 1370, column: 15, scope: !580)
!3969 = !DILocation(line: 1370, column: 13, scope: !580)
!3970 = !DILocation(line: 1371, column: 9, scope: !580)
!3971 = !DILocation(line: 1371, column: 14, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !579, file: !367, discriminator: 1)
!3973 = !DILocation(line: 1371, column: 24, scope: !579)
!3974 = !DILocation(line: 1371, column: 54, scope: !579)
!3975 = !DILocation(line: 1371, column: 72, scope: !3976)
!3976 = distinct !DILexicalBlock(scope: !579, file: !367, line: 1371, column: 69)
!3977 = !DILocation(line: 1371, column: 89, scope: !3976)
!3978 = !DILocation(line: 1371, column: 69, scope: !3976)
!3979 = !DILocation(line: 1371, column: 99, scope: !3976)
!3980 = !DILocation(line: 1371, column: 69, scope: !579)
!3981 = !DILocation(line: 1371, column: 69, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !579, file: !367, discriminator: 2)
!3983 = !DILocation(line: 1371, column: 130, scope: !3984)
!3984 = !DILexicalBlockFile(scope: !3976, file: !367, discriminator: 3)
!3985 = !DILocation(line: 1371, column: 148, scope: !3976)
!3986 = !DILocation(line: 1371, column: 158, scope: !3976)
!3987 = !DILocation(line: 1371, column: 183, scope: !3976)
!3988 = !DILocation(line: 1371, column: 114, scope: !3976)
!3989 = !DILocation(line: 1371, column: 202, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !580, file: !367, discriminator: 4)
!3991 = !DILocation(line: 1371, column: 202, scope: !579)
!3992 = !DILocation(line: 1371, column: 202, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !579, file: !367, discriminator: 5)
!3994 = !DILocation(line: 1372, column: 13, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1372, column: 13)
!3996 = !DILocation(line: 1372, column: 17, scope: !3995)
!3997 = !DILocation(line: 1372, column: 13, scope: !580)
!3998 = !DILocation(line: 1373, column: 13, scope: !3995)
!3999 = !DILocation(line: 1374, column: 9, scope: !580)
!4000 = !DILocation(line: 1374, column: 14, scope: !4001)
!4001 = !DILexicalBlockFile(scope: !584, file: !367, discriminator: 1)
!4002 = !DILocation(line: 1374, column: 24, scope: !584)
!4003 = !DILocation(line: 1374, column: 54, scope: !584)
!4004 = !DILocation(line: 1374, column: 70, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !584, file: !367, line: 1374, column: 67)
!4006 = !DILocation(line: 1374, column: 87, scope: !4005)
!4007 = !DILocation(line: 1374, column: 67, scope: !4005)
!4008 = !DILocation(line: 1374, column: 97, scope: !4005)
!4009 = !DILocation(line: 1374, column: 67, scope: !584)
!4010 = !DILocation(line: 1374, column: 67, scope: !4011)
!4011 = !DILexicalBlockFile(scope: !584, file: !367, discriminator: 2)
!4012 = !DILocation(line: 1374, column: 128, scope: !4013)
!4013 = !DILexicalBlockFile(scope: !4005, file: !367, discriminator: 3)
!4014 = !DILocation(line: 1374, column: 146, scope: !4005)
!4015 = !DILocation(line: 1374, column: 156, scope: !4005)
!4016 = !DILocation(line: 1374, column: 181, scope: !4005)
!4017 = !DILocation(line: 1374, column: 112, scope: !4005)
!4018 = !DILocation(line: 1374, column: 200, scope: !3990)
!4019 = !DILocation(line: 1374, column: 200, scope: !584)
!4020 = !DILocation(line: 1374, column: 200, scope: !4021)
!4021 = !DILexicalBlockFile(scope: !584, file: !367, discriminator: 5)
!4022 = !DILocation(line: 1375, column: 17, scope: !580)
!4023 = !DILocation(line: 1375, column: 15, scope: !580)
!4024 = !DILocation(line: 1380, column: 33, scope: !580)
!4025 = !DILocation(line: 1380, column: 40, scope: !580)
!4026 = !DILocation(line: 1380, column: 15, scope: !580)
!4027 = !DILocation(line: 1380, column: 13, scope: !580)
!4028 = !DILocation(line: 1381, column: 13, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !580, file: !367, line: 1381, column: 13)
!4030 = !DILocation(line: 1381, column: 17, scope: !4029)
!4031 = !DILocation(line: 1381, column: 13, scope: !580)
!4032 = !DILocation(line: 1382, column: 13, scope: !4029)
!4033 = !DILocation(line: 1383, column: 9, scope: !580)
!4034 = !DILocation(line: 1383, column: 14, scope: !4035)
!4035 = !DILexicalBlockFile(scope: !586, file: !367, discriminator: 1)
!4036 = !DILocation(line: 1383, column: 24, scope: !586)
!4037 = !DILocation(line: 1383, column: 54, scope: !586)
!4038 = !DILocation(line: 1383, column: 70, scope: !4039)
!4039 = distinct !DILexicalBlock(scope: !586, file: !367, line: 1383, column: 67)
!4040 = !DILocation(line: 1383, column: 87, scope: !4039)
!4041 = !DILocation(line: 1383, column: 67, scope: !4039)
!4042 = !DILocation(line: 1383, column: 97, scope: !4039)
!4043 = !DILocation(line: 1383, column: 67, scope: !586)
!4044 = !DILocation(line: 1383, column: 67, scope: !4045)
!4045 = !DILexicalBlockFile(scope: !586, file: !367, discriminator: 2)
!4046 = !DILocation(line: 1383, column: 128, scope: !4047)
!4047 = !DILexicalBlockFile(scope: !4039, file: !367, discriminator: 3)
!4048 = !DILocation(line: 1383, column: 146, scope: !4039)
!4049 = !DILocation(line: 1383, column: 156, scope: !4039)
!4050 = !DILocation(line: 1383, column: 181, scope: !4039)
!4051 = !DILocation(line: 1383, column: 112, scope: !4039)
!4052 = !DILocation(line: 1383, column: 200, scope: !3990)
!4053 = !DILocation(line: 1383, column: 200, scope: !586)
!4054 = !DILocation(line: 1383, column: 200, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !586, file: !367, discriminator: 5)
!4056 = !DILocation(line: 1384, column: 17, scope: !580)
!4057 = !DILocation(line: 1384, column: 15, scope: !580)
!4058 = !DILocation(line: 1385, column: 5, scope: !580)
!4059 = !DILocation(line: 1356, column: 42, scope: !581)
!4060 = !DILocation(line: 1356, column: 5, scope: !581)
!4061 = !DILocation(line: 1386, column: 5, scope: !565)
!4062 = !DILocation(line: 1386, column: 10, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !588, file: !367, discriminator: 1)
!4064 = !DILocation(line: 1386, column: 20, scope: !588)
!4065 = !DILocation(line: 1386, column: 50, scope: !588)
!4066 = !DILocation(line: 1386, column: 66, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !588, file: !367, line: 1386, column: 63)
!4068 = !DILocation(line: 1386, column: 83, scope: !4067)
!4069 = !DILocation(line: 1386, column: 63, scope: !4067)
!4070 = !DILocation(line: 1386, column: 93, scope: !4067)
!4071 = !DILocation(line: 1386, column: 63, scope: !588)
!4072 = !DILocation(line: 1386, column: 63, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !588, file: !367, discriminator: 2)
!4074 = !DILocation(line: 1386, column: 124, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4067, file: !367, discriminator: 3)
!4076 = !DILocation(line: 1386, column: 142, scope: !4067)
!4077 = !DILocation(line: 1386, column: 152, scope: !4067)
!4078 = !DILocation(line: 1386, column: 177, scope: !4067)
!4079 = !DILocation(line: 1386, column: 108, scope: !4067)
!4080 = !DILocation(line: 1386, column: 196, scope: !4081)
!4081 = !DILexicalBlockFile(scope: !565, file: !367, discriminator: 4)
!4082 = !DILocation(line: 1386, column: 196, scope: !588)
!4083 = !DILocation(line: 1386, column: 196, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !588, file: !367, discriminator: 5)
!4085 = !DILocation(line: 1387, column: 12, scope: !565)
!4086 = !DILocation(line: 1387, column: 5, scope: !565)
!4087 = !DILocation(line: 1390, column: 5, scope: !565)
!4088 = !DILocation(line: 1390, column: 10, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !590, file: !367, discriminator: 1)
!4090 = !DILocation(line: 1390, column: 20, scope: !590)
!4091 = !DILocation(line: 1390, column: 50, scope: !590)
!4092 = !DILocation(line: 1390, column: 66, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !590, file: !367, line: 1390, column: 63)
!4094 = !DILocation(line: 1390, column: 83, scope: !4093)
!4095 = !DILocation(line: 1390, column: 63, scope: !4093)
!4096 = !DILocation(line: 1390, column: 93, scope: !4093)
!4097 = !DILocation(line: 1390, column: 63, scope: !590)
!4098 = !DILocation(line: 1390, column: 63, scope: !4099)
!4099 = !DILexicalBlockFile(scope: !590, file: !367, discriminator: 2)
!4100 = !DILocation(line: 1390, column: 124, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4093, file: !367, discriminator: 3)
!4102 = !DILocation(line: 1390, column: 142, scope: !4093)
!4103 = !DILocation(line: 1390, column: 152, scope: !4093)
!4104 = !DILocation(line: 1390, column: 177, scope: !4093)
!4105 = !DILocation(line: 1390, column: 108, scope: !4093)
!4106 = !DILocation(line: 1390, column: 196, scope: !4081)
!4107 = !DILocation(line: 1390, column: 196, scope: !590)
!4108 = !DILocation(line: 1390, column: 196, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !590, file: !367, discriminator: 5)
!4110 = !DILocation(line: 1391, column: 5, scope: !565)
!4111 = !DILocation(line: 1391, column: 10, scope: !4112)
!4112 = !DILexicalBlockFile(scope: !592, file: !367, discriminator: 1)
!4113 = !DILocation(line: 1391, column: 20, scope: !592)
!4114 = !DILocation(line: 1391, column: 50, scope: !592)
!4115 = !DILocation(line: 1391, column: 66, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !592, file: !367, line: 1391, column: 63)
!4117 = !DILocation(line: 1391, column: 83, scope: !4116)
!4118 = !DILocation(line: 1391, column: 63, scope: !4116)
!4119 = !DILocation(line: 1391, column: 93, scope: !4116)
!4120 = !DILocation(line: 1391, column: 63, scope: !592)
!4121 = !DILocation(line: 1391, column: 63, scope: !4122)
!4122 = !DILexicalBlockFile(scope: !592, file: !367, discriminator: 2)
!4123 = !DILocation(line: 1391, column: 124, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4116, file: !367, discriminator: 3)
!4125 = !DILocation(line: 1391, column: 142, scope: !4116)
!4126 = !DILocation(line: 1391, column: 152, scope: !4116)
!4127 = !DILocation(line: 1391, column: 177, scope: !4116)
!4128 = !DILocation(line: 1391, column: 108, scope: !4116)
!4129 = !DILocation(line: 1391, column: 196, scope: !4081)
!4130 = !DILocation(line: 1391, column: 196, scope: !592)
!4131 = !DILocation(line: 1391, column: 196, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !592, file: !367, discriminator: 5)
!4133 = !DILocation(line: 1392, column: 5, scope: !565)
!4134 = !DILocation(line: 1393, column: 1, scope: !565)
!4135 = !DILocation(line: 1210, column: 30, scope: !625)
!4136 = !DILocation(line: 1212, column: 5, scope: !625)
!4137 = !DILocation(line: 1212, column: 19, scope: !625)
!4138 = !DILocation(line: 1213, column: 5, scope: !625)
!4139 = !DILocation(line: 1213, column: 12, scope: !4140)
!4140 = !DILexicalBlockFile(scope: !4141, file: !367, discriminator: 2)
!4141 = !DILexicalBlockFile(scope: !625, file: !367, discriminator: 1)
!4142 = !DILocation(line: 1213, column: 14, scope: !625)
!4143 = !DILocation(line: 1214, column: 9, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !625, file: !367, line: 1213, column: 20)
!4145 = !DILocation(line: 1215, column: 14, scope: !4144)
!4146 = !DILocation(line: 1215, column: 16, scope: !4144)
!4147 = !DILocation(line: 1215, column: 11, scope: !4144)
!4148 = !DILocation(line: 1217, column: 12, scope: !625)
!4149 = !DILocation(line: 1218, column: 1, scope: !625)
!4150 = !DILocation(line: 1217, column: 5, scope: !625)
!4151 = !DILocation(line: 1199, column: 26, scope: !593)
!4152 = !DILocation(line: 1201, column: 5, scope: !593)
!4153 = !DILocation(line: 1201, column: 19, scope: !593)
!4154 = !DILocation(line: 1202, column: 5, scope: !593)
!4155 = !DILocation(line: 1202, column: 12, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !4157, file: !367, discriminator: 2)
!4157 = !DILexicalBlockFile(scope: !593, file: !367, discriminator: 1)
!4158 = !DILocation(line: 1202, column: 14, scope: !593)
!4159 = !DILocation(line: 1203, column: 9, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !593, file: !367, line: 1202, column: 20)
!4161 = !DILocation(line: 1204, column: 11, scope: !4160)
!4162 = !DILocation(line: 1206, column: 12, scope: !593)
!4163 = !DILocation(line: 1207, column: 1, scope: !593)
!4164 = !DILocation(line: 1206, column: 5, scope: !593)
!4165 = !DILocation(line: 1290, column: 41, scope: !599)
!4166 = !DILocation(line: 1290, column: 62, scope: !599)
!4167 = !DILocation(line: 1291, column: 41, scope: !599)
!4168 = !DILocation(line: 1293, column: 5, scope: !599)
!4169 = !DILocation(line: 1293, column: 19, scope: !599)
!4170 = !DILocation(line: 1293, column: 29, scope: !599)
!4171 = !DILocation(line: 1294, column: 5, scope: !599)
!4172 = !DILocation(line: 1294, column: 15, scope: !599)
!4173 = !DILocation(line: 1294, column: 35, scope: !599)
!4174 = !DILocation(line: 1294, column: 56, scope: !599)
!4175 = !DILocation(line: 1312, column: 21, scope: !599)
!4176 = !DILocation(line: 1312, column: 28, scope: !599)
!4177 = !DILocation(line: 1312, column: 26, scope: !599)
!4178 = !DILocation(line: 1312, column: 35, scope: !599)
!4179 = !DILocation(line: 1312, column: 18, scope: !599)
!4180 = !DILocation(line: 1315, column: 9, scope: !613)
!4181 = !DILocation(line: 1315, column: 22, scope: !613)
!4182 = !DILocation(line: 1315, column: 31, scope: !613)
!4183 = !DILocation(line: 1316, column: 9, scope: !613)
!4184 = !DILocation(line: 1316, column: 24, scope: !613)
!4185 = !DILocation(line: 1316, column: 22, scope: !613)
!4186 = !DILocation(line: 1316, column: 33, scope: !613)
!4187 = !DILocation(line: 1315, column: 9, scope: !599)
!4188 = !DILocation(line: 1317, column: 9, scope: !612)
!4189 = !DILocation(line: 1317, column: 23, scope: !612)
!4190 = !DILocation(line: 1317, column: 26, scope: !612)
!4191 = !DILocation(line: 1318, column: 22, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !612, file: !367, line: 1318, column: 9)
!4193 = !DILocation(line: 1318, column: 20, scope: !4192)
!4194 = !DILocation(line: 1318, column: 33, scope: !4192)
!4195 = !DILocation(line: 1318, column: 39, scope: !4192)
!4196 = !DILocation(line: 1318, column: 31, scope: !4192)
!4197 = !DILocation(line: 1318, column: 14, scope: !4192)
!4198 = !DILocation(line: 1318, column: 44, scope: !4199)
!4199 = !DILexicalBlockFile(scope: !4200, file: !367, discriminator: 2)
!4200 = !DILexicalBlockFile(scope: !4201, file: !367, discriminator: 1)
!4201 = distinct !DILexicalBlock(scope: !4192, file: !367, line: 1318, column: 9)
!4202 = !DILocation(line: 1318, column: 48, scope: !4201)
!4203 = !DILocation(line: 1318, column: 46, scope: !4201)
!4204 = !DILocation(line: 1318, column: 9, scope: !4192)
!4205 = !DILocation(line: 1319, column: 22, scope: !4201)
!4206 = !DILocation(line: 1319, column: 19, scope: !4201)
!4207 = !DILocation(line: 1319, column: 13, scope: !4201)
!4208 = !DILocation(line: 1318, column: 56, scope: !4201)
!4209 = !DILocation(line: 1318, column: 9, scope: !4201)
!4210 = !DILocation(line: 1320, column: 40, scope: !612)
!4211 = !DILocation(line: 1320, column: 16, scope: !612)
!4212 = !DILocation(line: 1320, column: 9, scope: !612)
!4213 = !DILocation(line: 1321, column: 5, scope: !613)
!4214 = !DILocation(line: 1324, column: 17, scope: !599)
!4215 = !DILocation(line: 1324, column: 25, scope: !599)
!4216 = !DILocation(line: 1324, column: 23, scope: !599)
!4217 = !DILocation(line: 1324, column: 39, scope: !599)
!4218 = !DILocation(line: 1324, column: 14, scope: !599)
!4219 = !DILocation(line: 1325, column: 38, scope: !599)
!4220 = !DILocation(line: 1325, column: 45, scope: !599)
!4221 = !DILocation(line: 1326, column: 49, scope: !599)
!4222 = !DILocation(line: 1326, column: 58, scope: !599)
!4223 = !DILocation(line: 1326, column: 38, scope: !599)
!4224 = !DILocation(line: 1325, column: 12, scope: !599)
!4225 = !DILocation(line: 1325, column: 10, scope: !599)
!4226 = !DILocation(line: 1327, column: 9, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !599, file: !367, line: 1327, column: 9)
!4228 = !DILocation(line: 1327, column: 14, scope: !4227)
!4229 = !DILocation(line: 1327, column: 9, scope: !599)
!4230 = !DILocation(line: 1328, column: 9, scope: !4227)
!4231 = !DILocation(line: 1329, column: 39, scope: !599)
!4232 = !DILocation(line: 1329, column: 49, scope: !599)
!4233 = !DILocation(line: 1329, column: 55, scope: !599)
!4234 = !DILocation(line: 1329, column: 13, scope: !599)
!4235 = !DILocation(line: 1329, column: 11, scope: !599)
!4236 = !DILocation(line: 1330, column: 9, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !599, file: !367, line: 1330, column: 9)
!4238 = !DILocation(line: 1330, column: 15, scope: !4237)
!4239 = !DILocation(line: 1330, column: 9, scope: !599)
!4240 = !DILocation(line: 1331, column: 9, scope: !4237)
!4241 = !DILocation(line: 1332, column: 32, scope: !599)
!4242 = !DILocation(line: 1332, column: 38, scope: !599)
!4243 = !DILocation(line: 1332, column: 14, scope: !599)
!4244 = !DILocation(line: 1332, column: 12, scope: !599)
!4245 = !DILocation(line: 1332, column: 5, scope: !599)
!4246 = !DILocation(line: 1335, column: 5, scope: !599)
!4247 = !DILocation(line: 1335, column: 10, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !616, file: !367, discriminator: 1)
!4249 = !DILocation(line: 1335, column: 20, scope: !616)
!4250 = !DILocation(line: 1335, column: 51, scope: !616)
!4251 = !DILocation(line: 1335, column: 62, scope: !619)
!4252 = !DILocation(line: 1335, column: 78, scope: !619)
!4253 = !DILocation(line: 1335, column: 62, scope: !616)
!4254 = !DILocation(line: 1335, column: 93, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !619, file: !367, discriminator: 2)
!4256 = !DILocation(line: 1335, column: 98, scope: !4257)
!4257 = !DILexicalBlockFile(scope: !618, file: !367, discriminator: 4)
!4258 = !DILocation(line: 1335, column: 108, scope: !618)
!4259 = !DILocation(line: 1335, column: 138, scope: !618)
!4260 = !DILocation(line: 1335, column: 164, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !618, file: !367, line: 1335, column: 161)
!4262 = !DILocation(line: 1335, column: 181, scope: !4261)
!4263 = !DILocation(line: 1335, column: 161, scope: !4261)
!4264 = !DILocation(line: 1335, column: 191, scope: !4261)
!4265 = !DILocation(line: 1335, column: 161, scope: !618)
!4266 = !DILocation(line: 1335, column: 161, scope: !4267)
!4267 = !DILexicalBlockFile(scope: !618, file: !367, discriminator: 5)
!4268 = !DILocation(line: 1335, column: 222, scope: !4269)
!4269 = !DILexicalBlockFile(scope: !4261, file: !367, discriminator: 6)
!4270 = !DILocation(line: 1335, column: 240, scope: !4261)
!4271 = !DILocation(line: 1335, column: 250, scope: !4261)
!4272 = !DILocation(line: 1335, column: 275, scope: !4261)
!4273 = !DILocation(line: 1335, column: 206, scope: !4261)
!4274 = !DILocation(line: 1335, column: 294, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !619, file: !367, discriminator: 7)
!4276 = !DILocation(line: 1335, column: 294, scope: !618)
!4277 = !DILocation(line: 1335, column: 294, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !618, file: !367, discriminator: 8)
!4279 = !DILocation(line: 1335, column: 294, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !618, file: !367, discriminator: 9)
!4281 = !DILocation(line: 1335, column: 307, scope: !4282)
!4282 = !DILexicalBlockFile(scope: !4283, file: !367, discriminator: 10)
!4283 = !DILexicalBlockFile(scope: !599, file: !367, discriminator: 3)
!4284 = !DILocation(line: 1335, column: 307, scope: !616)
!4285 = !DILocation(line: 1335, column: 307, scope: !4286)
!4286 = !DILexicalBlockFile(scope: !616, file: !367, discriminator: 11)
!4287 = !DILocation(line: 1336, column: 5, scope: !599)
!4288 = !DILocation(line: 1336, column: 10, scope: !4289)
!4289 = !DILexicalBlockFile(scope: !621, file: !367, discriminator: 1)
!4290 = !DILocation(line: 1336, column: 20, scope: !621)
!4291 = !DILocation(line: 1336, column: 51, scope: !621)
!4292 = !DILocation(line: 1336, column: 63, scope: !624)
!4293 = !DILocation(line: 1336, column: 79, scope: !624)
!4294 = !DILocation(line: 1336, column: 63, scope: !621)
!4295 = !DILocation(line: 1336, column: 94, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !624, file: !367, discriminator: 2)
!4297 = !DILocation(line: 1336, column: 99, scope: !4298)
!4298 = !DILexicalBlockFile(scope: !623, file: !367, discriminator: 4)
!4299 = !DILocation(line: 1336, column: 109, scope: !623)
!4300 = !DILocation(line: 1336, column: 139, scope: !623)
!4301 = !DILocation(line: 1336, column: 165, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !623, file: !367, line: 1336, column: 162)
!4303 = !DILocation(line: 1336, column: 182, scope: !4302)
!4304 = !DILocation(line: 1336, column: 162, scope: !4302)
!4305 = !DILocation(line: 1336, column: 192, scope: !4302)
!4306 = !DILocation(line: 1336, column: 162, scope: !623)
!4307 = !DILocation(line: 1336, column: 162, scope: !4308)
!4308 = !DILexicalBlockFile(scope: !623, file: !367, discriminator: 5)
!4309 = !DILocation(line: 1336, column: 223, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !4302, file: !367, discriminator: 6)
!4311 = !DILocation(line: 1336, column: 241, scope: !4302)
!4312 = !DILocation(line: 1336, column: 251, scope: !4302)
!4313 = !DILocation(line: 1336, column: 276, scope: !4302)
!4314 = !DILocation(line: 1336, column: 207, scope: !4302)
!4315 = !DILocation(line: 1336, column: 295, scope: !4316)
!4316 = !DILexicalBlockFile(scope: !624, file: !367, discriminator: 7)
!4317 = !DILocation(line: 1336, column: 295, scope: !623)
!4318 = !DILocation(line: 1336, column: 295, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !623, file: !367, discriminator: 8)
!4320 = !DILocation(line: 1336, column: 295, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !623, file: !367, discriminator: 9)
!4322 = !DILocation(line: 1336, column: 308, scope: !4282)
!4323 = !DILocation(line: 1336, column: 308, scope: !621)
!4324 = !DILocation(line: 1336, column: 308, scope: !4325)
!4325 = !DILexicalBlockFile(scope: !621, file: !367, discriminator: 11)
!4326 = !DILocation(line: 1337, column: 12, scope: !599)
!4327 = !DILocation(line: 1337, column: 5, scope: !599)
!4328 = !DILocation(line: 1338, column: 1, scope: !599)
!4329 = !DILocation(line: 1006, column: 24, scope: !685)
!4330 = !DILocation(line: 1006, column: 42, scope: !685)
!4331 = !DILocation(line: 1007, column: 22, scope: !685)
!4332 = !DILocation(line: 1007, column: 38, scope: !685)
!4333 = !DILocation(line: 1009, column: 5, scope: !685)
!4334 = !DILocation(line: 1009, column: 11, scope: !685)
!4335 = !DILocation(line: 1010, column: 5, scope: !685)
!4336 = !DILocation(line: 1010, column: 16, scope: !685)
!4337 = !DILocation(line: 1010, column: 21, scope: !685)
!4338 = !DILocation(line: 1010, column: 20, scope: !685)
!4339 = !DILocation(line: 1012, column: 10, scope: !685)
!4340 = !DILocation(line: 1012, column: 7, scope: !685)
!4341 = !DILocation(line: 1013, column: 9, scope: !698)
!4342 = !DILocation(line: 1013, column: 13, scope: !698)
!4343 = !DILocation(line: 1013, column: 11, scope: !698)
!4344 = !DILocation(line: 1013, column: 15, scope: !698)
!4345 = !DILocation(line: 1013, column: 18, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !698, file: !367, discriminator: 1)
!4347 = !DILocation(line: 1013, column: 20, scope: !698)
!4348 = !DILocation(line: 1013, column: 9, scope: !685)
!4349 = !DILocation(line: 1014, column: 9, scope: !697)
!4350 = !DILocation(line: 1014, column: 17, scope: !697)
!4351 = !DILocation(line: 1014, column: 22, scope: !697)
!4352 = !DILocation(line: 1014, column: 21, scope: !697)
!4353 = !DILocation(line: 1015, column: 13, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !697, file: !367, line: 1015, column: 13)
!4355 = !DILocation(line: 1015, column: 18, scope: !4354)
!4356 = !DILocation(line: 1015, column: 15, scope: !4354)
!4357 = !DILocation(line: 1015, column: 13, scope: !697)
!4358 = !DILocation(line: 1016, column: 47, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4354, file: !367, line: 1015, column: 22)
!4360 = !DILocation(line: 1016, column: 45, scope: !4359)
!4361 = !DILocation(line: 1016, column: 17, scope: !4359)
!4362 = !DILocation(line: 1016, column: 15, scope: !4359)
!4363 = !DILocation(line: 1017, column: 17, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4359, file: !367, line: 1017, column: 17)
!4365 = !DILocation(line: 1017, column: 19, scope: !4364)
!4366 = !DILocation(line: 1017, column: 17, scope: !4359)
!4367 = !DILocation(line: 1018, column: 24, scope: !4364)
!4368 = !DILocation(line: 1018, column: 27, scope: !4364)
!4369 = !DILocation(line: 1018, column: 17, scope: !4364)
!4370 = !DILocation(line: 1018, column: 48, scope: !4364)
!4371 = !DILocation(line: 1018, column: 46, scope: !4364)
!4372 = !DILocation(line: 1019, column: 9, scope: !4359)
!4373 = !DILocation(line: 1021, column: 31, scope: !4354)
!4374 = !DILocation(line: 1021, column: 51, scope: !4354)
!4375 = !DILocation(line: 1021, column: 49, scope: !4354)
!4376 = !DILocation(line: 1021, column: 17, scope: !4354)
!4377 = !DILocation(line: 1021, column: 15, scope: !4354)
!4378 = !DILocation(line: 1022, column: 5, scope: !698)
!4379 = !DILocation(line: 1022, column: 5, scope: !697)
!4380 = !DILocation(line: 1023, column: 9, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !685, file: !367, line: 1023, column: 9)
!4382 = !DILocation(line: 1023, column: 11, scope: !4381)
!4383 = !DILocation(line: 1023, column: 9, scope: !685)
!4384 = !DILocation(line: 1024, column: 25, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4381, file: !367, line: 1023, column: 26)
!4386 = !DILocation(line: 1024, column: 9, scope: !4385)
!4387 = !DILocation(line: 1025, column: 9, scope: !4385)
!4388 = !DILocation(line: 1027, column: 24, scope: !685)
!4389 = !DILocation(line: 1027, column: 14, scope: !685)
!4390 = !DILocation(line: 1027, column: 6, scope: !685)
!4391 = !DILocation(line: 1027, column: 12, scope: !685)
!4392 = !DILocation(line: 1028, column: 14, scope: !685)
!4393 = !DILocation(line: 1028, column: 6, scope: !685)
!4394 = !DILocation(line: 1028, column: 12, scope: !685)
!4395 = !DILocation(line: 1029, column: 5, scope: !685)
!4396 = !DILocation(line: 1030, column: 1, scope: !685)
!4397 = !DILocation(line: 227, column: 17, scope: !703)
!4398 = !DILocation(line: 229, column: 5, scope: !703)
!4399 = !DILocation(line: 229, column: 12, scope: !703)
!4400 = !DILocation(line: 229, column: 18, scope: !703)
!4401 = !DILocation(line: 229, column: 21, scope: !703)
!4402 = !DILocation(line: 229, column: 24, scope: !703)
!4403 = !DILocation(line: 229, column: 27, scope: !703)
!4404 = !DILocation(line: 232, column: 9, scope: !703)
!4405 = !DILocation(line: 232, column: 53, scope: !4406)
!4406 = !DILexicalBlockFile(scope: !4407, file: !367, discriminator: 1)
!4407 = distinct !DILexicalBlock(scope: !703, file: !367, line: 232, column: 9)
!4408 = !DILocation(line: 232, column: 42, scope: !4407)
!4409 = !DILocation(line: 232, column: 11, scope: !4407)
!4410 = !DILocation(line: 232, column: 9, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !703, file: !367, discriminator: 2)
!4412 = !DILocation(line: 232, column: 100, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !4407, file: !367, discriminator: 3)
!4414 = !DILocation(line: 232, column: 90, scope: !4407)
!4415 = !DILocation(line: 232, column: 58, scope: !4407)
!4416 = !DILocation(line: 232, column: 116, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4407, file: !367, discriminator: 4)
!4418 = !DILocation(line: 232, column: 105, scope: !4407)
!4419 = !DILocation(line: 233, column: 120, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !367, line: 233, column: 13)
!4421 = distinct !DILexicalBlock(scope: !4407, file: !367, line: 232, column: 121)
!4422 = !DILocation(line: 233, column: 55, scope: !4423)
!4423 = !DILexicalBlockFile(scope: !4420, file: !367, discriminator: 1)
!4424 = !DILocation(line: 233, column: 45, scope: !4420)
!4425 = !DILocation(line: 233, column: 14, scope: !4420)
!4426 = !DILocation(line: 233, column: 120, scope: !4427)
!4427 = !DILexicalBlockFile(scope: !4420, file: !367, discriminator: 2)
!4428 = !DILocation(line: 233, column: 101, scope: !4429)
!4429 = !DILexicalBlockFile(scope: !4420, file: !367, discriminator: 4)
!4430 = !DILocation(line: 233, column: 92, scope: !4420)
!4431 = !DILocation(line: 233, column: 60, scope: !4420)
!4432 = !DILocation(line: 233, column: 116, scope: !4433)
!4433 = !DILexicalBlockFile(scope: !4420, file: !367, discriminator: 5)
!4434 = !DILocation(line: 233, column: 106, scope: !4420)
!4435 = !DILocation(line: 233, column: 123, scope: !4436)
!4436 = !DILexicalBlockFile(scope: !4437, file: !367, discriminator: 7)
!4437 = !DILexicalBlockFile(scope: !4438, file: !367, discriminator: 6)
!4438 = !DILexicalBlockFile(scope: !4420, file: !367, discriminator: 3)
!4439 = !DILocation(line: 233, column: 125, scope: !4420)
!4440 = !DILocation(line: 233, column: 13, scope: !4421)
!4441 = !DILocation(line: 234, column: 20, scope: !4420)
!4442 = !DILocation(line: 234, column: 13, scope: !4420)
!4443 = !DILocation(line: 236, column: 15, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4420, file: !367, line: 235, column: 14)
!4445 = !DILocation(line: 236, column: 36, scope: !4444)
!4446 = !DILocation(line: 237, column: 13, scope: !4444)
!4447 = !DILocation(line: 240, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !703, file: !367, line: 240, column: 9)
!4449 = !DILocation(line: 240, column: 11, scope: !4448)
!4450 = !DILocation(line: 240, column: 9, scope: !703)
!4451 = !DILocation(line: 241, column: 11, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4448, file: !367, line: 240, column: 19)
!4453 = !DILocation(line: 241, column: 32, scope: !4452)
!4454 = !DILocation(line: 243, column: 49, scope: !4452)
!4455 = !DILocation(line: 243, column: 16, scope: !4452)
!4456 = !DILocation(line: 243, column: 9, scope: !4452)
!4457 = !DILocation(line: 247, column: 9, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !703, file: !367, line: 247, column: 9)
!4459 = !DILocation(line: 247, column: 20, scope: !4458)
!4460 = !DILocation(line: 247, column: 14, scope: !4458)
!4461 = !DILocation(line: 247, column: 11, scope: !4458)
!4462 = !DILocation(line: 247, column: 9, scope: !703)
!4463 = !DILocation(line: 248, column: 13, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !367, line: 248, column: 13)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !367, line: 247, column: 24)
!4466 = !DILocation(line: 248, column: 15, scope: !4464)
!4467 = !DILocation(line: 248, column: 13, scope: !4465)
!4468 = !DILocation(line: 249, column: 15, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4464, file: !367, line: 248, column: 22)
!4470 = !DILocation(line: 249, column: 36, scope: !4469)
!4471 = !DILocation(line: 250, column: 13, scope: !4469)
!4472 = !DILocation(line: 252, column: 13, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4465, file: !367, line: 252, column: 13)
!4474 = !DILocation(line: 252, column: 15, scope: !4473)
!4475 = !DILocation(line: 252, column: 13, scope: !4465)
!4476 = !DILocation(line: 253, column: 40, scope: !4473)
!4477 = !DILocation(line: 253, column: 35, scope: !4473)
!4478 = !DILocation(line: 253, column: 42, scope: !4473)
!4479 = !DILocation(line: 253, column: 20, scope: !4473)
!4480 = !DILocation(line: 253, column: 13, scope: !4473)
!4481 = !DILocation(line: 254, column: 5, scope: !4465)
!4482 = !DILocation(line: 255, column: 17, scope: !703)
!4483 = !DILocation(line: 255, column: 12, scope: !703)
!4484 = !DILocation(line: 255, column: 10, scope: !703)
!4485 = !DILocation(line: 258, column: 9, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !703, file: !367, line: 258, column: 9)
!4487 = !DILocation(line: 258, column: 14, scope: !4486)
!4488 = !DILocation(line: 258, column: 9, scope: !703)
!4489 = !DILocation(line: 259, column: 17, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !367, line: 258, column: 23)
!4491 = !DILocation(line: 259, column: 16, scope: !4490)
!4492 = !DILocation(line: 259, column: 11, scope: !4490)
!4493 = !DILocation(line: 260, column: 13, scope: !4490)
!4494 = !DILocation(line: 260, column: 55, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !4496, file: !367, discriminator: 1)
!4496 = distinct !DILexicalBlock(scope: !4490, file: !367, line: 260, column: 13)
!4497 = !DILocation(line: 260, column: 45, scope: !4496)
!4498 = !DILocation(line: 260, column: 14, scope: !4496)
!4499 = !DILocation(line: 260, column: 13, scope: !4500)
!4500 = !DILexicalBlockFile(scope: !4490, file: !367, discriminator: 2)
!4501 = !DILocation(line: 260, column: 101, scope: !4502)
!4502 = !DILexicalBlockFile(scope: !4496, file: !367, discriminator: 3)
!4503 = !DILocation(line: 260, column: 92, scope: !4496)
!4504 = !DILocation(line: 260, column: 60, scope: !4496)
!4505 = !DILocation(line: 260, column: 116, scope: !4506)
!4506 = !DILexicalBlockFile(scope: !4496, file: !367, discriminator: 4)
!4507 = !DILocation(line: 260, column: 106, scope: !4496)
!4508 = !DILocation(line: 261, column: 15, scope: !4496)
!4509 = !DILocation(line: 261, column: 36, scope: !4496)
!4510 = !DILocation(line: 261, column: 13, scope: !4496)
!4511 = !DILocation(line: 262, column: 16, scope: !4490)
!4512 = !DILocation(line: 262, column: 9, scope: !4490)
!4513 = !DILocation(line: 268, column: 9, scope: !4514)
!4514 = distinct !DILexicalBlock(scope: !703, file: !367, line: 268, column: 9)
!4515 = !DILocation(line: 268, column: 14, scope: !4514)
!4516 = !DILocation(line: 268, column: 9, scope: !703)
!4517 = !DILocation(line: 269, column: 13, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !367, line: 269, column: 13)
!4519 = distinct !DILexicalBlock(scope: !4514, file: !367, line: 268, column: 23)
!4520 = !DILocation(line: 269, column: 15, scope: !4518)
!4521 = !DILocation(line: 269, column: 13, scope: !4519)
!4522 = !DILocation(line: 270, column: 30, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4518, file: !367, line: 269, column: 22)
!4524 = !DILocation(line: 270, column: 24, scope: !4523)
!4525 = !DILocation(line: 270, column: 23, scope: !4523)
!4526 = !DILocation(line: 270, column: 13, scope: !4523)
!4527 = !DILocation(line: 273, column: 15, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4518, file: !367, line: 272, column: 14)
!4529 = !DILocation(line: 273, column: 36, scope: !4528)
!4530 = !DILocation(line: 274, column: 13, scope: !4528)
!4531 = !DILocation(line: 278, column: 9, scope: !703)
!4532 = !DILocation(line: 278, column: 14, scope: !703)
!4533 = !DILocation(line: 278, column: 7, scope: !703)
!4534 = !DILocation(line: 280, column: 9, scope: !713)
!4535 = !DILocation(line: 280, column: 14, scope: !713)
!4536 = !DILocation(line: 280, column: 9, scope: !703)
!4537 = !DILocation(line: 285, column: 9, scope: !712)
!4538 = !DILocation(line: 285, column: 16, scope: !712)
!4539 = !DILocation(line: 285, column: 20, scope: !712)
!4540 = !DILocation(line: 285, column: 24, scope: !712)
!4541 = !DILocation(line: 285, column: 22, scope: !712)
!4542 = !DILocation(line: 286, column: 13, scope: !712)
!4543 = !DILocation(line: 286, column: 15, scope: !712)
!4544 = !DILocation(line: 286, column: 11, scope: !712)
!4545 = !DILocation(line: 287, column: 5, scope: !713)
!4546 = !DILocation(line: 287, column: 5, scope: !712)
!4547 = !DILocation(line: 289, column: 9, scope: !715)
!4548 = !DILocation(line: 289, column: 16, scope: !715)
!4549 = !DILocation(line: 289, column: 20, scope: !715)
!4550 = !DILocation(line: 289, column: 22, scope: !715)
!4551 = !DILocation(line: 290, column: 13, scope: !715)
!4552 = !DILocation(line: 290, column: 17, scope: !715)
!4553 = !DILocation(line: 290, column: 15, scope: !715)
!4554 = !DILocation(line: 290, column: 11, scope: !715)
!4555 = !DILocation(line: 291, column: 5, scope: !713)
!4556 = !DILocation(line: 292, column: 9, scope: !703)
!4557 = !DILocation(line: 292, column: 11, scope: !703)
!4558 = !DILocation(line: 292, column: 25, scope: !703)
!4559 = !DILocation(line: 292, column: 23, scope: !703)
!4560 = !DILocation(line: 292, column: 7, scope: !703)
!4561 = !DILocation(line: 293, column: 9, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !703, file: !367, line: 293, column: 9)
!4563 = !DILocation(line: 293, column: 11, scope: !4562)
!4564 = !DILocation(line: 293, column: 9, scope: !703)
!4565 = !DILocation(line: 294, column: 25, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4562, file: !367, line: 293, column: 18)
!4567 = !DILocation(line: 294, column: 19, scope: !4566)
!4568 = !DILocation(line: 294, column: 17, scope: !4566)
!4569 = !DILocation(line: 294, column: 33, scope: !4566)
!4570 = !DILocation(line: 294, column: 31, scope: !4566)
!4571 = !DILocation(line: 294, column: 44, scope: !4566)
!4572 = !DILocation(line: 294, column: 40, scope: !4566)
!4573 = !DILocation(line: 294, column: 38, scope: !4566)
!4574 = !DILocation(line: 294, column: 61, scope: !4566)
!4575 = !DILocation(line: 294, column: 49, scope: !4566)
!4576 = !DILocation(line: 294, column: 47, scope: !4566)
!4577 = !DILocation(line: 294, column: 11, scope: !4566)
!4578 = !DILocation(line: 295, column: 14, scope: !4566)
!4579 = !DILocation(line: 295, column: 18, scope: !4566)
!4580 = !DILocation(line: 295, column: 16, scope: !4566)
!4581 = !DILocation(line: 295, column: 11, scope: !4566)
!4582 = !DILocation(line: 296, column: 13, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4566, file: !367, line: 296, column: 13)
!4584 = !DILocation(line: 296, column: 18, scope: !4583)
!4585 = !DILocation(line: 296, column: 13, scope: !4566)
!4586 = !DILocation(line: 297, column: 22, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4583, file: !367, line: 296, column: 27)
!4588 = !DILocation(line: 297, column: 25, scope: !4587)
!4589 = !DILocation(line: 297, column: 30, scope: !4587)
!4590 = !DILocation(line: 297, column: 18, scope: !4587)
!4591 = !DILocation(line: 297, column: 15, scope: !4587)
!4592 = !DILocation(line: 298, column: 9, scope: !4587)
!4593 = !DILocation(line: 300, column: 27, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4583, file: !367, line: 299, column: 14)
!4595 = !DILocation(line: 300, column: 30, scope: !4594)
!4596 = !DILocation(line: 300, column: 35, scope: !4594)
!4597 = !DILocation(line: 300, column: 41, scope: !4594)
!4598 = !DILocation(line: 300, column: 23, scope: !4594)
!4599 = !DILocation(line: 300, column: 21, scope: !4594)
!4600 = !DILocation(line: 301, column: 18, scope: !4594)
!4601 = !DILocation(line: 301, column: 15, scope: !4594)
!4602 = !DILocation(line: 302, column: 18, scope: !4594)
!4603 = !DILocation(line: 302, column: 15, scope: !4594)
!4604 = !DILocation(line: 304, column: 5, scope: !4566)
!4605 = !DILocation(line: 306, column: 25, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4562, file: !367, line: 305, column: 10)
!4607 = !DILocation(line: 306, column: 13, scope: !4606)
!4608 = !DILocation(line: 306, column: 37, scope: !4606)
!4609 = !DILocation(line: 306, column: 33, scope: !4606)
!4610 = !DILocation(line: 306, column: 31, scope: !4606)
!4611 = !DILocation(line: 306, column: 11, scope: !4606)
!4612 = !DILocation(line: 307, column: 14, scope: !4606)
!4613 = !DILocation(line: 307, column: 18, scope: !4606)
!4614 = !DILocation(line: 307, column: 16, scope: !4606)
!4615 = !DILocation(line: 307, column: 11, scope: !4606)
!4616 = !DILocation(line: 308, column: 13, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4606, file: !367, line: 308, column: 13)
!4618 = !DILocation(line: 308, column: 18, scope: !4617)
!4619 = !DILocation(line: 308, column: 13, scope: !4606)
!4620 = !DILocation(line: 309, column: 22, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 308, column: 27)
!4622 = !DILocation(line: 309, column: 25, scope: !4621)
!4623 = !DILocation(line: 309, column: 30, scope: !4621)
!4624 = !DILocation(line: 309, column: 18, scope: !4621)
!4625 = !DILocation(line: 309, column: 15, scope: !4621)
!4626 = !DILocation(line: 310, column: 9, scope: !4621)
!4627 = !DILocation(line: 312, column: 27, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4617, file: !367, line: 311, column: 14)
!4629 = !DILocation(line: 312, column: 30, scope: !4628)
!4630 = !DILocation(line: 312, column: 35, scope: !4628)
!4631 = !DILocation(line: 312, column: 41, scope: !4628)
!4632 = !DILocation(line: 312, column: 23, scope: !4628)
!4633 = !DILocation(line: 312, column: 21, scope: !4628)
!4634 = !DILocation(line: 313, column: 18, scope: !4628)
!4635 = !DILocation(line: 313, column: 15, scope: !4628)
!4636 = !DILocation(line: 314, column: 18, scope: !4628)
!4637 = !DILocation(line: 314, column: 15, scope: !4628)
!4638 = !DILocation(line: 317, column: 9, scope: !703)
!4639 = !DILocation(line: 317, column: 51, scope: !4640)
!4640 = !DILexicalBlockFile(scope: !4641, file: !367, discriminator: 1)
!4641 = distinct !DILexicalBlock(scope: !703, file: !367, line: 317, column: 9)
!4642 = !DILocation(line: 317, column: 41, scope: !4641)
!4643 = !DILocation(line: 317, column: 10, scope: !4641)
!4644 = !DILocation(line: 317, column: 9, scope: !4411)
!4645 = !DILocation(line: 317, column: 97, scope: !4646)
!4646 = !DILexicalBlockFile(scope: !4641, file: !367, discriminator: 3)
!4647 = !DILocation(line: 317, column: 88, scope: !4641)
!4648 = !DILocation(line: 317, column: 56, scope: !4641)
!4649 = !DILocation(line: 317, column: 112, scope: !4650)
!4650 = !DILexicalBlockFile(scope: !4641, file: !367, discriminator: 4)
!4651 = !DILocation(line: 317, column: 102, scope: !4641)
!4652 = !DILocation(line: 318, column: 11, scope: !4641)
!4653 = !DILocation(line: 318, column: 32, scope: !4641)
!4654 = !DILocation(line: 318, column: 9, scope: !4641)
!4655 = !DILocation(line: 319, column: 12, scope: !703)
!4656 = !DILocation(line: 319, column: 5, scope: !703)
!4657 = !DILocation(line: 320, column: 1, scope: !703)
!4658 = !DILocation(line: 70, column: 14, scope: !716)
!4659 = !DILocation(line: 72, column: 5, scope: !716)
!4660 = !DILocation(line: 72, column: 12, scope: !716)
!4661 = !DILocation(line: 72, column: 15, scope: !716)
!4662 = !DILocation(line: 73, column: 5, scope: !716)
!4663 = !DILocation(line: 73, column: 9, scope: !716)
!4664 = !DILocation(line: 76, column: 19, scope: !716)
!4665 = !DILocation(line: 76, column: 14, scope: !716)
!4666 = !DILocation(line: 76, column: 9, scope: !716)
!4667 = !DILocation(line: 76, column: 7, scope: !716)
!4668 = !DILocation(line: 77, column: 24, scope: !716)
!4669 = !DILocation(line: 77, column: 23, scope: !716)
!4670 = !DILocation(line: 77, column: 14, scope: !716)
!4671 = !DILocation(line: 77, column: 9, scope: !716)
!4672 = !DILocation(line: 77, column: 7, scope: !716)
!4673 = !DILocation(line: 79, column: 13, scope: !716)
!4674 = !DILocation(line: 79, column: 5, scope: !716)
!4675 = !DILocation(line: 81, column: 20, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !716, file: !367, line: 79, column: 16)
!4677 = !DILocation(line: 81, column: 19, scope: !4676)
!4678 = !DILocation(line: 81, column: 13, scope: !4676)
!4679 = !DILocation(line: 81, column: 11, scope: !4676)
!4680 = !DILocation(line: 82, column: 9, scope: !4676)
!4681 = !DILocation(line: 84, column: 21, scope: !4676)
!4682 = !DILocation(line: 84, column: 22, scope: !4676)
!4683 = !DILocation(line: 84, column: 19, scope: !4676)
!4684 = !DILocation(line: 84, column: 13, scope: !4676)
!4685 = !DILocation(line: 84, column: 11, scope: !4676)
!4686 = !DILocation(line: 85, column: 9, scope: !4676)
!4687 = !DILocation(line: 89, column: 25, scope: !4676)
!4688 = !DILocation(line: 89, column: 24, scope: !4676)
!4689 = !DILocation(line: 89, column: 19, scope: !4676)
!4690 = !DILocation(line: 89, column: 13, scope: !4676)
!4691 = !DILocation(line: 89, column: 11, scope: !4676)
!4692 = !DILocation(line: 90, column: 9, scope: !4676)
!4693 = !DILocation(line: 92, column: 22, scope: !4676)
!4694 = !DILocation(line: 92, column: 23, scope: !4676)
!4695 = !DILocation(line: 92, column: 20, scope: !4676)
!4696 = !DILocation(line: 92, column: 14, scope: !4676)
!4697 = !DILocation(line: 92, column: 13, scope: !4676)
!4698 = !DILocation(line: 92, column: 11, scope: !4676)
!4699 = !DILocation(line: 93, column: 9, scope: !4676)
!4700 = !DILocation(line: 95, column: 21, scope: !4676)
!4701 = !DILocation(line: 95, column: 22, scope: !4676)
!4702 = !DILocation(line: 95, column: 19, scope: !4676)
!4703 = !DILocation(line: 95, column: 13, scope: !4676)
!4704 = !DILocation(line: 95, column: 11, scope: !4676)
!4705 = !DILocation(line: 96, column: 9, scope: !4676)
!4706 = !DILocation(line: 99, column: 11, scope: !4676)
!4707 = !DILocation(line: 100, column: 5, scope: !4676)
!4708 = !DILocation(line: 101, column: 26, scope: !716)
!4709 = !DILocation(line: 101, column: 12, scope: !716)
!4710 = !DILocation(line: 101, column: 29, scope: !716)
!4711 = !DILocation(line: 101, column: 28, scope: !716)
!4712 = !DILocation(line: 102, column: 1, scope: !716)
!4713 = !DILocation(line: 101, column: 5, scope: !716)
!4714 = !DILocation(line: 198, column: 20, scope: !722)
!4715 = !DILocation(line: 200, column: 5, scope: !722)
!4716 = !DILocation(line: 200, column: 12, scope: !722)
!4717 = !DILocation(line: 200, column: 23, scope: !722)
!4718 = !DILocation(line: 201, column: 5, scope: !722)
!4719 = !DILocation(line: 201, column: 9, scope: !722)
!4720 = !DILocation(line: 211, column: 9, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !722, file: !367, line: 211, column: 9)
!4722 = !DILocation(line: 211, column: 11, scope: !4721)
!4723 = !DILocation(line: 211, column: 9, scope: !722)
!4724 = !DILocation(line: 212, column: 16, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !367, line: 212, column: 9)
!4726 = distinct !DILexicalBlock(scope: !4721, file: !367, line: 211, column: 18)
!4727 = !DILocation(line: 212, column: 14, scope: !4725)
!4728 = !DILocation(line: 212, column: 22, scope: !4729)
!4729 = !DILexicalBlockFile(scope: !4730, file: !367, discriminator: 2)
!4730 = !DILexicalBlockFile(scope: !4731, file: !367, discriminator: 1)
!4731 = distinct !DILexicalBlock(scope: !4725, file: !367, line: 212, column: 9)
!4732 = !DILocation(line: 212, column: 26, scope: !4731)
!4733 = !DILocation(line: 212, column: 9, scope: !4725)
!4734 = !DILocation(line: 213, column: 19, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !367, line: 212, column: 34)
!4736 = !DILocation(line: 213, column: 25, scope: !4735)
!4737 = !DILocation(line: 213, column: 23, scope: !4735)
!4738 = !DILocation(line: 213, column: 48, scope: !4735)
!4739 = !DILocation(line: 213, column: 29, scope: !4735)
!4740 = !DILocation(line: 213, column: 27, scope: !4735)
!4741 = !DILocation(line: 213, column: 17, scope: !4735)
!4742 = !DILocation(line: 214, column: 19, scope: !4735)
!4743 = !DILocation(line: 214, column: 25, scope: !4735)
!4744 = !DILocation(line: 214, column: 23, scope: !4735)
!4745 = !DILocation(line: 214, column: 48, scope: !4735)
!4746 = !DILocation(line: 214, column: 29, scope: !4735)
!4747 = !DILocation(line: 214, column: 27, scope: !4735)
!4748 = !DILocation(line: 214, column: 17, scope: !4735)
!4749 = !DILocation(line: 212, column: 9, scope: !4731)
!4750 = !DILocation(line: 216, column: 5, scope: !4726)
!4751 = !DILocation(line: 218, column: 16, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !367, line: 218, column: 9)
!4753 = distinct !DILexicalBlock(scope: !4721, file: !367, line: 217, column: 10)
!4754 = !DILocation(line: 218, column: 14, scope: !4752)
!4755 = !DILocation(line: 218, column: 21, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !4757, file: !367, discriminator: 2)
!4757 = !DILexicalBlockFile(scope: !4758, file: !367, discriminator: 1)
!4758 = distinct !DILexicalBlock(scope: !4752, file: !367, line: 218, column: 9)
!4759 = !DILocation(line: 218, column: 23, scope: !4758)
!4760 = !DILocation(line: 218, column: 9, scope: !4752)
!4761 = !DILocation(line: 219, column: 19, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !367, line: 218, column: 34)
!4763 = !DILocation(line: 219, column: 25, scope: !4762)
!4764 = !DILocation(line: 219, column: 23, scope: !4762)
!4765 = !DILocation(line: 219, column: 48, scope: !4762)
!4766 = !DILocation(line: 219, column: 29, scope: !4762)
!4767 = !DILocation(line: 219, column: 27, scope: !4762)
!4768 = !DILocation(line: 219, column: 17, scope: !4762)
!4769 = !DILocation(line: 220, column: 19, scope: !4762)
!4770 = !DILocation(line: 220, column: 25, scope: !4762)
!4771 = !DILocation(line: 220, column: 23, scope: !4762)
!4772 = !DILocation(line: 220, column: 48, scope: !4762)
!4773 = !DILocation(line: 220, column: 29, scope: !4762)
!4774 = !DILocation(line: 220, column: 27, scope: !4762)
!4775 = !DILocation(line: 220, column: 17, scope: !4762)
!4776 = !DILocation(line: 221, column: 9, scope: !4762)
!4777 = !DILocation(line: 218, column: 30, scope: !4758)
!4778 = !DILocation(line: 218, column: 9, scope: !4758)
!4779 = !DILocation(line: 223, column: 12, scope: !722)
!4780 = !DILocation(line: 223, column: 16, scope: !722)
!4781 = !DILocation(line: 223, column: 15, scope: !722)
!4782 = !DILocation(line: 224, column: 1, scope: !722)
!4783 = !DILocation(line: 223, column: 5, scope: !722)
!4784 = !DILocation(line: 328, column: 17, scope: !765)
!4785 = !DILocation(line: 330, column: 5, scope: !765)
!4786 = !DILocation(line: 330, column: 12, scope: !765)
!4787 = !DILocation(line: 330, column: 15, scope: !765)
!4788 = !DILocation(line: 333, column: 9, scope: !765)
!4789 = !DILocation(line: 333, column: 53, scope: !4790)
!4790 = !DILexicalBlockFile(scope: !4791, file: !367, discriminator: 1)
!4791 = distinct !DILexicalBlock(scope: !765, file: !367, line: 333, column: 9)
!4792 = !DILocation(line: 333, column: 42, scope: !4791)
!4793 = !DILocation(line: 333, column: 11, scope: !4791)
!4794 = !DILocation(line: 333, column: 9, scope: !4795)
!4795 = !DILexicalBlockFile(scope: !765, file: !367, discriminator: 2)
!4796 = !DILocation(line: 333, column: 100, scope: !4797)
!4797 = !DILexicalBlockFile(scope: !4791, file: !367, discriminator: 3)
!4798 = !DILocation(line: 333, column: 90, scope: !4791)
!4799 = !DILocation(line: 333, column: 58, scope: !4791)
!4800 = !DILocation(line: 333, column: 116, scope: !4801)
!4801 = !DILexicalBlockFile(scope: !4791, file: !367, discriminator: 4)
!4802 = !DILocation(line: 333, column: 105, scope: !4791)
!4803 = !DILocation(line: 334, column: 13, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4791, file: !367, line: 333, column: 121)
!4805 = !DILocation(line: 334, column: 55, scope: !4806)
!4806 = !DILexicalBlockFile(scope: !4807, file: !367, discriminator: 1)
!4807 = distinct !DILexicalBlock(scope: !4804, file: !367, line: 334, column: 13)
!4808 = !DILocation(line: 334, column: 45, scope: !4807)
!4809 = !DILocation(line: 334, column: 14, scope: !4807)
!4810 = !DILocation(line: 334, column: 13, scope: !4811)
!4811 = !DILexicalBlockFile(scope: !4804, file: !367, discriminator: 2)
!4812 = !DILocation(line: 334, column: 101, scope: !4813)
!4813 = !DILexicalBlockFile(scope: !4807, file: !367, discriminator: 3)
!4814 = !DILocation(line: 334, column: 92, scope: !4807)
!4815 = !DILocation(line: 334, column: 60, scope: !4807)
!4816 = !DILocation(line: 334, column: 116, scope: !4817)
!4817 = !DILexicalBlockFile(scope: !4807, file: !367, discriminator: 4)
!4818 = !DILocation(line: 334, column: 106, scope: !4807)
!4819 = !DILocation(line: 335, column: 20, scope: !4807)
!4820 = !DILocation(line: 335, column: 13, scope: !4807)
!4821 = !DILocation(line: 337, column: 13, scope: !4807)
!4822 = !DILocation(line: 341, column: 9, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !765, file: !367, line: 341, column: 9)
!4824 = !DILocation(line: 341, column: 20, scope: !4823)
!4825 = !DILocation(line: 341, column: 14, scope: !4823)
!4826 = !DILocation(line: 341, column: 11, scope: !4823)
!4827 = !DILocation(line: 341, column: 23, scope: !4823)
!4828 = !DILocation(line: 341, column: 26, scope: !4829)
!4829 = !DILexicalBlockFile(scope: !4823, file: !367, discriminator: 1)
!4830 = !DILocation(line: 341, column: 28, scope: !4823)
!4831 = !DILocation(line: 341, column: 9, scope: !765)
!4832 = !DILocation(line: 342, column: 13, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !367, line: 342, column: 13)
!4834 = distinct !DILexicalBlock(scope: !4823, file: !367, line: 341, column: 36)
!4835 = !DILocation(line: 342, column: 15, scope: !4833)
!4836 = !DILocation(line: 342, column: 13, scope: !4834)
!4837 = !DILocation(line: 343, column: 15, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4833, file: !367, line: 342, column: 23)
!4839 = !DILocation(line: 343, column: 36, scope: !4838)
!4840 = !DILocation(line: 344, column: 13, scope: !4838)
!4841 = !DILocation(line: 347, column: 13, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4833, file: !367, line: 346, column: 14)
!4843 = !DILocation(line: 351, column: 17, scope: !765)
!4844 = !DILocation(line: 351, column: 12, scope: !765)
!4845 = !DILocation(line: 351, column: 10, scope: !765)
!4846 = !DILocation(line: 353, column: 9, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !765, file: !367, line: 353, column: 9)
!4848 = !DILocation(line: 353, column: 14, scope: !4847)
!4849 = !DILocation(line: 353, column: 9, scope: !765)
!4850 = !DILocation(line: 354, column: 21, scope: !4847)
!4851 = !DILocation(line: 354, column: 17, scope: !4847)
!4852 = !DILocation(line: 354, column: 16, scope: !4847)
!4853 = !DILocation(line: 354, column: 9, scope: !4847)
!4854 = !DILocation(line: 360, column: 25, scope: !765)
!4855 = !DILocation(line: 360, column: 13, scope: !765)
!4856 = !DILocation(line: 360, column: 9, scope: !765)
!4857 = !DILocation(line: 360, column: 32, scope: !765)
!4858 = !DILocation(line: 360, column: 7, scope: !765)
!4859 = !DILocation(line: 361, column: 11, scope: !765)
!4860 = !DILocation(line: 361, column: 16, scope: !765)
!4861 = !DILocation(line: 361, column: 30, scope: !765)
!4862 = !DILocation(line: 361, column: 35, scope: !765)
!4863 = !DILocation(line: 361, column: 47, scope: !765)
!4864 = !DILocation(line: 361, column: 26, scope: !765)
!4865 = !DILocation(line: 361, column: 54, scope: !765)
!4866 = !DILocation(line: 361, column: 23, scope: !765)
!4867 = !DILocation(line: 361, column: 7, scope: !765)
!4868 = !DILocation(line: 362, column: 9, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !765, file: !367, line: 362, column: 9)
!4870 = !DILocation(line: 362, column: 11, scope: !4869)
!4871 = !DILocation(line: 362, column: 9, scope: !765)
!4872 = !DILocation(line: 364, column: 36, scope: !4869)
!4873 = !DILocation(line: 364, column: 30, scope: !4869)
!4874 = !DILocation(line: 364, column: 25, scope: !4869)
!4875 = !DILocation(line: 364, column: 21, scope: !4869)
!4876 = !DILocation(line: 364, column: 19, scope: !4869)
!4877 = !DILocation(line: 364, column: 50, scope: !4869)
!4878 = !DILocation(line: 364, column: 46, scope: !4869)
!4879 = !DILocation(line: 364, column: 44, scope: !4869)
!4880 = !DILocation(line: 364, column: 58, scope: !4869)
!4881 = !DILocation(line: 364, column: 56, scope: !4869)
!4882 = !DILocation(line: 364, column: 11, scope: !4869)
!4883 = !DILocation(line: 364, column: 9, scope: !4869)
!4884 = !DILocation(line: 365, column: 9, scope: !765)
!4885 = !DILocation(line: 365, column: 51, scope: !4886)
!4886 = !DILexicalBlockFile(scope: !4887, file: !367, discriminator: 1)
!4887 = distinct !DILexicalBlock(scope: !765, file: !367, line: 365, column: 9)
!4888 = !DILocation(line: 365, column: 41, scope: !4887)
!4889 = !DILocation(line: 365, column: 10, scope: !4887)
!4890 = !DILocation(line: 365, column: 9, scope: !4795)
!4891 = !DILocation(line: 365, column: 97, scope: !4892)
!4892 = !DILexicalBlockFile(scope: !4887, file: !367, discriminator: 3)
!4893 = !DILocation(line: 365, column: 88, scope: !4887)
!4894 = !DILocation(line: 365, column: 56, scope: !4887)
!4895 = !DILocation(line: 365, column: 112, scope: !4896)
!4896 = !DILexicalBlockFile(scope: !4887, file: !367, discriminator: 4)
!4897 = !DILocation(line: 365, column: 102, scope: !4887)
!4898 = !DILocation(line: 366, column: 11, scope: !4887)
!4899 = !DILocation(line: 366, column: 32, scope: !4887)
!4900 = !DILocation(line: 366, column: 9, scope: !4887)
!4901 = !DILocation(line: 367, column: 12, scope: !765)
!4902 = !DILocation(line: 367, column: 5, scope: !765)
!4903 = !DILocation(line: 368, column: 1, scope: !765)
!4904 = !DILocation(line: 1612, column: 21, scope: !787)
!4905 = !DILocation(line: 1612, column: 35, scope: !787)
!4906 = !DILocation(line: 1612, column: 56, scope: !787)
!4907 = !DILocation(line: 1615, column: 26, scope: !796)
!4908 = !DILocation(line: 1615, column: 33, scope: !796)
!4909 = !DILocation(line: 1615, column: 44, scope: !796)
!4910 = !DILocation(line: 1615, column: 53, scope: !796)
!4911 = !DILocation(line: 1615, column: 70, scope: !796)
!4912 = !DILocation(line: 1615, column: 9, scope: !787)
!4913 = !DILocation(line: 1616, column: 9, scope: !795)
!4914 = !DILocation(line: 1616, column: 16, scope: !795)
!4915 = !DILocation(line: 1616, column: 19, scope: !795)
!4916 = !DILocation(line: 1617, column: 9, scope: !795)
!4917 = !DILocation(line: 1617, column: 20, scope: !795)
!4918 = !DILocation(line: 1620, column: 30, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !795, file: !367, line: 1620, column: 13)
!4920 = !DILocation(line: 1620, column: 15, scope: !4919)
!4921 = !DILocation(line: 1620, column: 37, scope: !4919)
!4922 = !{!1190, !1178, i64 16}
!4923 = !DILocation(line: 1620, column: 46, scope: !4919)
!4924 = !DILocation(line: 1620, column: 13, scope: !795)
!4925 = !DILocation(line: 1621, column: 29, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4919, file: !367, line: 1620, column: 52)
!4927 = !DILocation(line: 1621, column: 13, scope: !4926)
!4928 = !DILocation(line: 1623, column: 13, scope: !4926)
!4929 = !DILocation(line: 1626, column: 29, scope: !795)
!4930 = !DILocation(line: 1626, column: 13, scope: !795)
!4931 = !DILocation(line: 1626, column: 11, scope: !795)
!4932 = !DILocation(line: 1627, column: 13, scope: !4933)
!4933 = distinct !DILexicalBlock(scope: !795, file: !367, line: 1627, column: 13)
!4934 = !DILocation(line: 1627, column: 15, scope: !4933)
!4935 = !DILocation(line: 1627, column: 23, scope: !4933)
!4936 = !DILocation(line: 1627, column: 26, scope: !4937)
!4937 = !DILexicalBlockFile(scope: !4933, file: !367, discriminator: 1)
!4938 = !DILocation(line: 1627, column: 13, scope: !795)
!4939 = !DILocation(line: 1628, column: 41, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !367, line: 1628, column: 17)
!4941 = distinct !DILexicalBlock(scope: !4933, file: !367, line: 1627, column: 44)
!4942 = !DILocation(line: 1628, column: 18, scope: !4940)
!4943 = !DILocation(line: 1628, column: 17, scope: !4941)
!4944 = !DILocation(line: 1629, column: 17, scope: !4940)
!4945 = !DILocation(line: 1632, column: 13, scope: !4941)
!4946 = !DILocation(line: 1633, column: 47, scope: !4941)
!4947 = !DILocation(line: 1633, column: 31, scope: !4941)
!4948 = !DILocation(line: 1633, column: 17, scope: !4941)
!4949 = !DILocation(line: 1633, column: 15, scope: !4941)
!4950 = !DILocation(line: 1634, column: 17, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4941, file: !367, line: 1634, column: 17)
!4952 = !DILocation(line: 1634, column: 19, scope: !4951)
!4953 = !DILocation(line: 1634, column: 27, scope: !4951)
!4954 = !DILocation(line: 1634, column: 30, scope: !4955)
!4955 = !DILexicalBlockFile(scope: !4951, file: !367, discriminator: 1)
!4956 = !DILocation(line: 1634, column: 17, scope: !4941)
!4957 = !DILocation(line: 1635, column: 17, scope: !4951)
!4958 = !DILocation(line: 1637, column: 22, scope: !4941)
!4959 = !DILocation(line: 1637, column: 27, scope: !4941)
!4960 = !DILocation(line: 1637, column: 32, scope: !4941)
!4961 = !DILocation(line: 1637, column: 44, scope: !4941)
!4962 = !DILocation(line: 1637, column: 42, scope: !4941)
!4963 = !DILocation(line: 1637, column: 30, scope: !4941)
!4964 = !DILocation(line: 1637, column: 20, scope: !4941)
!4965 = !DILocation(line: 1638, column: 9, scope: !4941)
!4966 = !DILocation(line: 1641, column: 22, scope: !4933)
!4967 = !DILocation(line: 1641, column: 27, scope: !4933)
!4968 = !DILocation(line: 1641, column: 20, scope: !4933)
!4969 = !DILocation(line: 1642, column: 35, scope: !795)
!4970 = !DILocation(line: 1642, column: 16, scope: !795)
!4971 = !DILocation(line: 1642, column: 9, scope: !795)
!4972 = !DILocation(line: 1643, column: 5, scope: !796)
!4973 = !DILocation(line: 1646, column: 19, scope: !787)
!4974 = !DILocation(line: 1646, column: 24, scope: !787)
!4975 = !DILocation(line: 1646, column: 12, scope: !787)
!4976 = !DILocation(line: 1646, column: 5, scope: !787)
!4977 = !DILocation(line: 1647, column: 1, scope: !787)
!4978 = !DILocation(line: 560, column: 14, scope: !799)
!4979 = !DILocation(line: 562, column: 9, scope: !799)
!4980 = !DILocation(line: 562, column: 52, scope: !4981)
!4981 = !DILexicalBlockFile(scope: !4982, file: !367, discriminator: 1)
!4982 = distinct !DILexicalBlock(scope: !799, file: !367, line: 562, column: 9)
!4983 = !DILocation(line: 562, column: 41, scope: !4982)
!4984 = !DILocation(line: 562, column: 10, scope: !4982)
!4985 = !DILocation(line: 562, column: 9, scope: !4986)
!4986 = !DILexicalBlockFile(scope: !799, file: !367, discriminator: 2)
!4987 = !DILocation(line: 562, column: 99, scope: !4988)
!4988 = !DILexicalBlockFile(scope: !4982, file: !367, discriminator: 3)
!4989 = !DILocation(line: 562, column: 89, scope: !4982)
!4990 = !DILocation(line: 562, column: 57, scope: !4982)
!4991 = !DILocation(line: 562, column: 115, scope: !4992)
!4992 = !DILexicalBlockFile(scope: !4982, file: !367, discriminator: 4)
!4993 = !DILocation(line: 562, column: 104, scope: !4982)
!4994 = !DILocation(line: 563, column: 13, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !367, line: 563, column: 13)
!4996 = distinct !DILexicalBlock(scope: !4982, file: !367, line: 562, column: 120)
!4997 = !DILocation(line: 563, column: 15, scope: !4995)
!4998 = !DILocation(line: 563, column: 13, scope: !4996)
!4999 = !DILocation(line: 564, column: 24, scope: !4995)
!5000 = !DILocation(line: 564, column: 20, scope: !4995)
!5001 = !DILocation(line: 564, column: 13, scope: !4995)
!5002 = !DILocation(line: 565, column: 11, scope: !4996)
!5003 = !DILocation(line: 565, column: 32, scope: !4996)
!5004 = !DILocation(line: 566, column: 13, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4996, file: !367, line: 566, column: 13)
!5006 = !DILocation(line: 566, column: 15, scope: !5005)
!5007 = !DILocation(line: 566, column: 13, scope: !4996)
!5008 = !DILocation(line: 567, column: 13, scope: !5005)
!5009 = !DILocation(line: 569, column: 13, scope: !5005)
!5010 = !DILocation(line: 571, column: 14, scope: !4982)
!5011 = !DILocation(line: 571, column: 56, scope: !5012)
!5012 = !DILexicalBlockFile(scope: !5013, file: !367, discriminator: 1)
!5013 = distinct !DILexicalBlock(scope: !4982, file: !367, line: 571, column: 14)
!5014 = !DILocation(line: 571, column: 46, scope: !5013)
!5015 = !DILocation(line: 571, column: 15, scope: !5013)
!5016 = !DILocation(line: 571, column: 14, scope: !5017)
!5017 = !DILexicalBlockFile(scope: !4982, file: !367, discriminator: 2)
!5018 = !DILocation(line: 571, column: 102, scope: !5019)
!5019 = !DILexicalBlockFile(scope: !5013, file: !367, discriminator: 3)
!5020 = !DILocation(line: 571, column: 93, scope: !5013)
!5021 = !DILocation(line: 571, column: 61, scope: !5013)
!5022 = !DILocation(line: 571, column: 117, scope: !5023)
!5023 = !DILexicalBlockFile(scope: !5013, file: !367, discriminator: 4)
!5024 = !DILocation(line: 571, column: 107, scope: !5013)
!5025 = !DILocation(line: 572, column: 16, scope: !5013)
!5026 = !DILocation(line: 572, column: 9, scope: !5013)
!5027 = !DILocation(line: 573, column: 14, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5013, file: !367, line: 573, column: 14)
!5029 = !DILocation(line: 573, column: 16, scope: !5028)
!5030 = !DILocation(line: 573, column: 14, scope: !5013)
!5031 = !DILocation(line: 574, column: 16, scope: !5028)
!5032 = !DILocation(line: 574, column: 9, scope: !5028)
!5033 = !DILocation(line: 576, column: 11, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5028, file: !367, line: 575, column: 10)
!5035 = !DILocation(line: 576, column: 32, scope: !5034)
!5036 = !DILocation(line: 577, column: 9, scope: !5034)
!5037 = !DILocation(line: 579, column: 1, scope: !799)
!5038 = !DILocation(line: 637, column: 16, scope: !810)
!5039 = !DILocation(line: 639, column: 9, scope: !810)
!5040 = !DILocation(line: 639, column: 52, scope: !5041)
!5041 = !DILexicalBlockFile(scope: !5042, file: !367, discriminator: 1)
!5042 = distinct !DILexicalBlock(scope: !810, file: !367, line: 639, column: 9)
!5043 = !DILocation(line: 639, column: 41, scope: !5042)
!5044 = !DILocation(line: 639, column: 10, scope: !5042)
!5045 = !DILocation(line: 639, column: 9, scope: !5046)
!5046 = !DILexicalBlockFile(scope: !810, file: !367, discriminator: 2)
!5047 = !DILocation(line: 639, column: 99, scope: !5048)
!5048 = !DILexicalBlockFile(scope: !5042, file: !367, discriminator: 3)
!5049 = !DILocation(line: 639, column: 89, scope: !5042)
!5050 = !DILocation(line: 639, column: 57, scope: !5042)
!5051 = !DILocation(line: 639, column: 115, scope: !5052)
!5052 = !DILexicalBlockFile(scope: !5042, file: !367, discriminator: 4)
!5053 = !DILocation(line: 639, column: 104, scope: !5042)
!5054 = !DILocation(line: 640, column: 13, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5056, file: !367, line: 640, column: 13)
!5056 = distinct !DILexicalBlock(scope: !5042, file: !367, line: 639, column: 120)
!5057 = !DILocation(line: 640, column: 15, scope: !5055)
!5058 = !DILocation(line: 640, column: 13, scope: !5056)
!5059 = !DILocation(line: 641, column: 26, scope: !5055)
!5060 = !DILocation(line: 641, column: 20, scope: !5055)
!5061 = !DILocation(line: 641, column: 13, scope: !5055)
!5062 = !DILocation(line: 642, column: 11, scope: !5056)
!5063 = !DILocation(line: 642, column: 32, scope: !5056)
!5064 = !DILocation(line: 643, column: 13, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5056, file: !367, line: 643, column: 13)
!5066 = !DILocation(line: 643, column: 15, scope: !5065)
!5067 = !DILocation(line: 643, column: 13, scope: !5056)
!5068 = !DILocation(line: 644, column: 13, scope: !5065)
!5069 = !DILocation(line: 646, column: 13, scope: !5065)
!5070 = !DILocation(line: 648, column: 14, scope: !5042)
!5071 = !DILocation(line: 648, column: 56, scope: !5072)
!5072 = !DILexicalBlockFile(scope: !5073, file: !367, discriminator: 1)
!5073 = distinct !DILexicalBlock(scope: !5042, file: !367, line: 648, column: 14)
!5074 = !DILocation(line: 648, column: 46, scope: !5073)
!5075 = !DILocation(line: 648, column: 15, scope: !5073)
!5076 = !DILocation(line: 648, column: 14, scope: !5077)
!5077 = !DILexicalBlockFile(scope: !5042, file: !367, discriminator: 2)
!5078 = !DILocation(line: 648, column: 102, scope: !5079)
!5079 = !DILexicalBlockFile(scope: !5073, file: !367, discriminator: 3)
!5080 = !DILocation(line: 648, column: 93, scope: !5073)
!5081 = !DILocation(line: 648, column: 61, scope: !5073)
!5082 = !DILocation(line: 648, column: 117, scope: !5083)
!5083 = !DILexicalBlockFile(scope: !5073, file: !367, discriminator: 4)
!5084 = !DILocation(line: 648, column: 107, scope: !5073)
!5085 = !DILocation(line: 649, column: 16, scope: !5073)
!5086 = !DILocation(line: 649, column: 9, scope: !5073)
!5087 = !DILocation(line: 650, column: 14, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5073, file: !367, line: 650, column: 14)
!5089 = !DILocation(line: 650, column: 16, scope: !5088)
!5090 = !DILocation(line: 650, column: 14, scope: !5073)
!5091 = !DILocation(line: 651, column: 16, scope: !5088)
!5092 = !DILocation(line: 651, column: 9, scope: !5088)
!5093 = !DILocation(line: 653, column: 11, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5088, file: !367, line: 652, column: 10)
!5095 = !DILocation(line: 653, column: 32, scope: !5094)
!5096 = !DILocation(line: 654, column: 9, scope: !5094)
!5097 = !DILocation(line: 656, column: 1, scope: !810)
!5098 = !DILocation(line: 592, column: 15, scope: !817)
!5099 = !DILocation(line: 594, column: 9, scope: !817)
!5100 = !DILocation(line: 594, column: 53, scope: !5101)
!5101 = !DILexicalBlockFile(scope: !5102, file: !367, discriminator: 1)
!5102 = distinct !DILexicalBlock(scope: !817, file: !367, line: 594, column: 9)
!5103 = !DILocation(line: 594, column: 42, scope: !5102)
!5104 = !DILocation(line: 594, column: 11, scope: !5102)
!5105 = !DILocation(line: 594, column: 9, scope: !5106)
!5106 = !DILexicalBlockFile(scope: !817, file: !367, discriminator: 2)
!5107 = !DILocation(line: 594, column: 100, scope: !5108)
!5108 = !DILexicalBlockFile(scope: !5102, file: !367, discriminator: 3)
!5109 = !DILocation(line: 594, column: 90, scope: !5102)
!5110 = !DILocation(line: 594, column: 58, scope: !5102)
!5111 = !DILocation(line: 594, column: 116, scope: !5112)
!5112 = !DILexicalBlockFile(scope: !5102, file: !367, discriminator: 4)
!5113 = !DILocation(line: 594, column: 105, scope: !5102)
!5114 = !DILocation(line: 595, column: 13, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5102, file: !367, line: 594, column: 121)
!5116 = !DILocation(line: 595, column: 55, scope: !5117)
!5117 = !DILexicalBlockFile(scope: !5118, file: !367, discriminator: 1)
!5118 = distinct !DILexicalBlock(scope: !5115, file: !367, line: 595, column: 13)
!5119 = !DILocation(line: 595, column: 45, scope: !5118)
!5120 = !DILocation(line: 595, column: 14, scope: !5118)
!5121 = !DILocation(line: 595, column: 13, scope: !5122)
!5122 = !DILexicalBlockFile(scope: !5115, file: !367, discriminator: 2)
!5123 = !DILocation(line: 595, column: 101, scope: !5124)
!5124 = !DILexicalBlockFile(scope: !5118, file: !367, discriminator: 3)
!5125 = !DILocation(line: 595, column: 92, scope: !5118)
!5126 = !DILocation(line: 595, column: 60, scope: !5118)
!5127 = !DILocation(line: 595, column: 116, scope: !5128)
!5128 = !DILexicalBlockFile(scope: !5118, file: !367, discriminator: 4)
!5129 = !DILocation(line: 595, column: 106, scope: !5118)
!5130 = !DILocation(line: 596, column: 20, scope: !5118)
!5131 = !DILocation(line: 596, column: 13, scope: !5118)
!5132 = !DILocation(line: 597, column: 18, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5118, file: !367, line: 597, column: 18)
!5134 = !DILocation(line: 597, column: 20, scope: !5133)
!5135 = !DILocation(line: 597, column: 18, scope: !5118)
!5136 = !DILocation(line: 598, column: 20, scope: !5133)
!5137 = !DILocation(line: 598, column: 13, scope: !5133)
!5138 = !DILocation(line: 600, column: 15, scope: !5139)
!5139 = distinct !DILexicalBlock(scope: !5133, file: !367, line: 599, column: 14)
!5140 = !DILocation(line: 600, column: 36, scope: !5139)
!5141 = !DILocation(line: 601, column: 13, scope: !5139)
!5142 = !DILocation(line: 605, column: 9, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !817, file: !367, line: 605, column: 9)
!5144 = !DILocation(line: 605, column: 11, scope: !5143)
!5145 = !DILocation(line: 605, column: 9, scope: !817)
!5146 = !DILocation(line: 607, column: 21, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5143, file: !367, line: 605, column: 18)
!5148 = !DILocation(line: 607, column: 16, scope: !5147)
!5149 = !DILocation(line: 607, column: 9, scope: !5147)
!5150 = !DILocation(line: 626, column: 14, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5143, file: !367, line: 626, column: 14)
!5152 = !DILocation(line: 626, column: 16, scope: !5151)
!5153 = !DILocation(line: 626, column: 14, scope: !5143)
!5154 = !DILocation(line: 627, column: 11, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5151, file: !367, line: 626, column: 24)
!5156 = !DILocation(line: 627, column: 32, scope: !5155)
!5157 = !DILocation(line: 628, column: 9, scope: !5155)
!5158 = !DILocation(line: 631, column: 11, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5151, file: !367, line: 630, column: 10)
!5160 = !DILocation(line: 631, column: 32, scope: !5159)
!5161 = !DILocation(line: 632, column: 9, scope: !5159)
!5162 = !DILocation(line: 634, column: 1, scope: !817)
