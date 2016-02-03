; ModuleID = 'floatobject.o.bc'
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
%struct.PyFloatObject = type { %struct._object, double }
%struct.PyStructSequence_Desc = type { i8*, i8*, %struct.PyStructSequence_Field*, i32 }
%struct.PyStructSequence_Field = type { i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }

@FloatInfoType = internal global %struct._typeobject zeroinitializer, align 8
@free_list = internal unnamed_addr global %struct.PyFloatObject* null, align 8
@numfree = internal unnamed_addr global i32 0, align 4
@PyFloat_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.PyFloatObject*)* @float_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyFloatObject*)* @float_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* @float_as_number, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyFloatObject*)* @float_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyFloatObject*)* @float_repr to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @float_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @float_richcompare, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @float_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([3 x %struct.PyGetSetDef], [3 x %struct.PyGetSetDef]* @float_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @float_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str = private unnamed_addr constant [60 x i8] c"float() argument must be a string or a number, not '%.200s'\00", align 1
@_Py_ctype_table = external constant [256 x i32], align 16
@PyExc_ValueError = external global %struct._object*, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"could not convert string to float: %R\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"a float is required\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"nb_float should return float object\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@float_as_number = internal global %struct.PyNumberMethods { %struct._object* (%struct._object*, %struct._object*)* @float_add, %struct._object* (%struct._object*, %struct._object*)* @float_sub, %struct._object* (%struct._object*, %struct._object*)* @float_mul, %struct._object* (%struct._object*, %struct._object*)* @float_rem, %struct._object* (%struct._object*, %struct._object*)* @float_divmod, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @float_pow, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyFloatObject*)* @float_neg to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*)* @float_float, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyFloatObject*)* @float_abs to %struct._object* (%struct._object*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyFloatObject*)* @float_bool to i32 (%struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @float_trunc, i8* null, %struct._object* (%struct._object*)* @float_float, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @float_floor_div, %struct._object* (%struct._object*, %struct._object*)* @float_div, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null }, align 8
@float_doc = internal global [103 x i8] c"float(x) -> floating point number\0A\0AConvert a string or number to a floating point number, if possible.\00", align 16
@float_methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @float_float to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @float_trunc to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @float_round, i32 1, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.25, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @float_as_integer_ratio, i32 4, i8* getelementptr inbounds ([324 x i8], [324 x i8]* @float_as_integer_ratio_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @float_fromhex, i32 24, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @float_fromhex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @float_hex to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([169 x i8], [169 x i8]* @float_hex_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @float_is_integer to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyFloatObject*)* @float_getnewargs to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._typeobject*, %struct._object*)* @float_getformat to %struct._object* (%struct._object*, %struct._object*)*), i32 24, i8* getelementptr inbounds ([357 x i8], [357 x i8]* @float_getformat_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._typeobject*, %struct._object*)* @float_setformat to %struct._object* (%struct._object*, %struct._object*)*), i32 17, i8* getelementptr inbounds ([491 x i8], [491 x i8]* @float_setformat_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @float__format__, i32 1, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @float__format__doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@float_getset = internal global [3 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*)* @float_float to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @float_getzero, i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.65, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"C?\FF\01\02\03\04\05\00", align 1
@detected_double_format = internal unnamed_addr global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"\05\04\03\02\01\FF?C\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"K\7F\01\02\00", align 1
@detected_float_format = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"\02\01\7FK\00", align 1
@double_format = internal unnamed_addr global i32 0, align 4
@float_format = internal unnamed_addr global i32 0, align 4
@floatinfo_desc = internal global %struct.PyStructSequence_Desc { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([218 x i8], [218 x i8]* @floatinfo__doc__, i32 0, i32 0), %struct.PyStructSequence_Field* getelementptr inbounds ([12 x %struct.PyStructSequence_Field], [12 x %struct.PyStructSequence_Field]* @floatinfo_fields, i32 0, i32 0), i32 11 }, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"free PyFloatObject\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"frexp() result out of range\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"float too large to pack with f format\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"float too large to pack with d format\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"can't unpack IEEE 754 special value on non-IEEE platform\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@PyExc_ZeroDivisionError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"float modulo\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"float divmod()\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"(dd)\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.17 = private unnamed_addr constant [65 x i8] c"pow() 3rd argument not allowed unless all arguments are integers\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"0.0 cannot be raised to a negative power\00", align 1
@PyComplex_Type = external global %struct._typeobject, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"float division by zero\00", align 1
@_Py_SwappedOp = external global [0 x i32], align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"conjugate\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"Return self, the complex conjugate of any float.\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"__trunc__\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"Return the Integral closest to x between 0 and x.\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"__round__\00", align 1
@.str.25 = private unnamed_addr constant [127 x i8] c"Return the Integral closest to x, rounding half toward even.\0AWhen an argument is passed, work like built-in round(x, ndigits).\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"as_integer_ratio\00", align 1
@float_as_integer_ratio_doc = internal global [324 x i8] c"float.as_integer_ratio() -> (int, int)\0A\0AReturn a pair of integers, whose ratio is exactly equal to the original\0Afloat and with a positive denominator.\0ARaise OverflowError on infinities and a ValueError on NaNs.\0A\0A>>> (10.0).as_integer_ratio()\0A(10, 1)\0A>>> (0.0).as_integer_ratio()\0A(0, 1)\0A>>> (-.25).as_integer_ratio()\0A(-1, 4)\00", align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"fromhex\00", align 1
@float_fromhex_doc = internal global [175 x i8] c"float.fromhex(string) -> float\0A\0ACreate a floating-point number from a hexadecimal string.\0A>>> float.fromhex('0x1.ffffp10')\0A2047.984375\0A>>> float.fromhex('-0x1p-1074')\0A-5e-324\00", align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@float_hex_doc = internal global [169 x i8] c"float.hex() -> string\0A\0AReturn a hexadecimal representation of a floating-point number.\0A>>> (-0.1).hex()\0A'-0x1.999999999999ap-4'\0A>>> 3.14159.hex()\0A'0x1.921f9f01b866ep+1'\00", align 16
@.str.29 = private unnamed_addr constant [11 x i8] c"is_integer\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"Return True if the float is an integer.\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"__getformat__\00", align 1
@float_getformat_doc = internal global [357 x i8] c"float.__getformat__(typestr) -> string\0A\0AYou probably don't want to use this function.  It exists mainly to be\0Aused in Python's test suite.\0A\0Atypestr must be 'double' or 'float'.  This function returns whichever of\0A'unknown', 'IEEE, big-endian' or 'IEEE, little-endian' best describes the\0Aformat of floating point numbers used by the C type named by typestr.\00", align 16
@.str.33 = private unnamed_addr constant [14 x i8] c"__setformat__\00", align 1
@float_setformat_doc = internal global [491 x i8] c"float.__setformat__(typestr, fmt) -> None\0A\0AYou probably don't want to use this function.  It exists mainly to be\0Aused in Python's test suite.\0A\0Atypestr must be 'double' or 'float'.  fmt must be one of 'unknown',\0A'IEEE, big-endian' or 'IEEE, little-endian', and in addition can only be\0Aone of the latter two if it appears to match the underlying C reality.\0A\0AOverride the automatic determination of C-level floating point type.\0AThis affects how floats are converted to and from binary strings.\00", align 16
@.str.34 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@float__format__doc = internal global [85 x i8] c"float.__format__(format_spec) -> string\0A\0AFormats the float according to format_spec.\00", align 16
@.str.35 = private unnamed_addr constant [3 x i8] c"|O\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"%s0%se%d\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"rounded value too large to represent\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@.str.40 = private unnamed_addr constant [48 x i8] c"Cannot pass infinity to float.as_integer_ratio.\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"Cannot pass NaN to float.as_integer_ratio.\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"(d)\00", align 1
@.str.43 = private unnamed_addr constant [52 x i8] c"hexadecimal value too large to represent as a float\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"invalid hexadecimal floating-point string\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"hexadecimal string too long to convert\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"-0x0.0p+0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"0x0.0p+0\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"-0x%sp%c%d\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"0x%sp%c%d\00", align 1
@Py_hexdigits = external global i8*, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.50 = private unnamed_addr constant [52 x i8] c"__getformat__() argument must be string, not %.500s\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.52 = private unnamed_addr constant [55 x i8] c"__getformat__() argument 1 must be 'double' or 'float'\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"IEEE, little-endian\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"IEEE, big-endian\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"insane float_format or double_format\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"ss:__setformat__\00", align 1
@.str.58 = private unnamed_addr constant [55 x i8] c"__setformat__() argument 1 must be 'double' or 'float'\00", align 1
@.str.59 = private unnamed_addr constant [90 x i8] c"__setformat__() argument 2 must be 'unknown', 'IEEE, little-endian' or 'IEEE, big-endian'\00", align 1
@.str.60 = private unnamed_addr constant [67 x i8] c"can only set %s format to 'unknown' or the detected platform value\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"U:__format__\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"the real part of a complex number\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"the imaginary part of a complex number\00", align 1
@float_new.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.66, i32 0, i32 0), i8* null], align 16
@.str.66 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"|O:float\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.68 = private unnamed_addr constant [15 x i8] c"sys.float_info\00", align 1
@floatinfo__doc__ = internal global [218 x i8] c"sys.float_info\0A\0AA structseq holding information about the float type. It contains low level\0Ainformation about the precision and internal representation. Please study\0Ayour system's :file:`float.h` for more information.\00", align 16
@floatinfo_fields = internal global [12 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.72, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.74, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.76, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.78, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.80, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.84, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.86, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.88, i32 0, i32 0) }, %struct.PyStructSequence_Field { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.90, i32 0, i32 0) }, %struct.PyStructSequence_Field zeroinitializer], align 16
@.str.69 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"DBL_MAX -- maximum representable finite float\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"max_exp\00", align 1
@.str.72 = private unnamed_addr constant [69 x i8] c"DBL_MAX_EXP -- maximum int e such that radix**(e-1) is representable\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"max_10_exp\00", align 1
@.str.74 = private unnamed_addr constant [65 x i8] c"DBL_MAX_10_EXP -- maximum int e such that 10**e is representable\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.76 = private unnamed_addr constant [45 x i8] c"DBL_MIN -- Minimum positive normalizer float\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"min_exp\00", align 1
@.str.78 = private unnamed_addr constant [74 x i8] c"DBL_MIN_EXP -- minimum int e such that radix**(e-1) is a normalized float\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"min_10_exp\00", align 1
@.str.80 = private unnamed_addr constant [64 x i8] c"DBL_MIN_10_EXP -- minimum int e such that 10**e is a normalized\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"dig\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"DBL_DIG -- digits\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"mant_dig\00", align 1
@.str.84 = private unnamed_addr constant [32 x i8] c"DBL_MANT_DIG -- mantissa digits\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"epsilon\00", align 1
@.str.86 = private unnamed_addr constant [69 x i8] c"DBL_EPSILON -- Difference between 1 and the next representable float\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"radix\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"FLT_RADIX -- radix of exponent\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"rounds\00", align 1
@.str.90 = private unnamed_addr constant [30 x i8] c"FLT_ROUNDS -- addition rounds\00", align 1
@switch.table = private unnamed_addr constant [55 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15]

; Function Attrs: nounwind readnone uwtable
define double @PyFloat_GetMax() #0 {
entry:
  ret double 0x7FEFFFFFFFFFFFFF, !dbg !1034
}

; Function Attrs: nounwind readnone uwtable
define double @PyFloat_GetMin() #0 {
entry:
  ret double 0x10000000000000, !dbg !1035
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_GetInfo() #1 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !407, metadata !1036), !dbg !1037
  %call = tail call %struct._object* @PyStructSequence_New(%struct._typeobject* nonnull @FloatInfoType) #2, !dbg !1038
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !406, metadata !1036), !dbg !1039
  %cmp = icmp eq %struct._object* %call, null, !dbg !1040
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1042

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata double 0x7FEFFFFFFFFFFFFF, i64 0, metadata !420, metadata !1036) #2, !dbg !1043
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1045, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %0, i64 0, metadata !421, metadata !1036) #2, !dbg !1050
  %cmp.i = icmp eq %struct.PyFloatObject* %0, null, !dbg !1051
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !1053

if.then.i:                                        ; preds = %if.end
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i64 0, i32 0, i32 1, !dbg !1054
  %1 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !1054
  %2 = load i64, i64* %1, align 8, !dbg !1054, !tbaa !1056
  store i64 %2, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1059, !tbaa !1046
  %3 = load i32, i32* @numfree, align 4, !dbg !1060, !tbaa !1061
  %dec.i = add i32 %3, -1, !dbg !1060
  store i32 %dec.i, i32* @numfree, align 4, !dbg !1060, !tbaa !1061
  br label %if.end.3.i, !dbg !1063

if.else.i:                                        ; preds = %if.end
  %call.i = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !1064
  %4 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !1066
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %4, i64 0, metadata !421, metadata !1036) #2, !dbg !1050
  %tobool.i = icmp eq i8* %call.i, null, !dbg !1067
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !1069

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1070
  br label %PyFloat_FromDouble.exit, !dbg !1071

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %0, %if.then.i ], [ %4, %if.else.i ], !dbg !1072
  %5 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !1073
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !1073
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !1073, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !1073
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1073, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !1075
  store double 0x7FEFFFFFFFFFFFFF, double* %ob_fval.i, align 8, !dbg !1076, !tbaa !1077
  br label %PyFloat_FromDouble.exit, !dbg !1080

PyFloat_FromDouble.exit:                          ; preds = %if.then.1.i, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %5, %if.end.3.i ], [ %call2.i, %if.then.1.i ], !dbg !1072
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !407, metadata !1036), !dbg !1037
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1072
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !1072
  store %struct._object* %retval.0.i, %struct._object** %arrayidx, align 8, !dbg !1072, !tbaa !1046
  %call2 = tail call %struct._object* @PyLong_FromLong(i64 1024) #2, !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx6 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 1, !dbg !1081
  %6 = bitcast %struct._typeobject** %arrayidx6 to %struct._object**, !dbg !1081
  store %struct._object* %call2, %struct._object** %6, align 8, !dbg !1081, !tbaa !1046
  %call7 = tail call %struct._object* @PyLong_FromLong(i64 308) #2, !dbg !1082
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx11 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 2, !dbg !1082
  %7 = bitcast %struct._typeobject** %arrayidx11 to %struct._object**, !dbg !1082
  store %struct._object* %call7, %struct._object** %7, align 8, !dbg !1082, !tbaa !1046
  tail call void @llvm.dbg.value(metadata double 0x10000000000000, i64 0, metadata !420, metadata !1036) #2, !dbg !1083
  %8 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1085, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %8, i64 0, metadata !421, metadata !1036) #2, !dbg !1086
  %cmp.i.97 = icmp eq %struct.PyFloatObject* %8, null, !dbg !1087
  br i1 %cmp.i.97, label %if.else.i.103, label %if.then.i.100, !dbg !1088

if.then.i.100:                                    ; preds = %PyFloat_FromDouble.exit
  %ob_type.i.98 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %8, i64 0, i32 0, i32 1, !dbg !1089
  %9 = bitcast %struct._typeobject** %ob_type.i.98 to i64*, !dbg !1089
  %10 = load i64, i64* %9, align 8, !dbg !1089, !tbaa !1056
  store i64 %10, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1090, !tbaa !1046
  %11 = load i32, i32* @numfree, align 4, !dbg !1091, !tbaa !1061
  %dec.i.99 = add i32 %11, -1, !dbg !1091
  store i32 %dec.i.99, i32* @numfree, align 4, !dbg !1091, !tbaa !1061
  br label %if.end.3.i.110, !dbg !1092

if.else.i.103:                                    ; preds = %PyFloat_FromDouble.exit
  %call.i.101 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !1093
  %12 = bitcast i8* %call.i.101 to %struct.PyFloatObject*, !dbg !1094
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %12, i64 0, metadata !421, metadata !1036) #2, !dbg !1086
  %tobool.i.102 = icmp eq i8* %call.i.101, null, !dbg !1095
  br i1 %tobool.i.102, label %if.then.1.i.105, label %if.end.3.i.110, !dbg !1096

if.then.1.i.105:                                  ; preds = %if.else.i.103
  %call2.i.104 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1097
  br label %PyFloat_FromDouble.exit112, !dbg !1098

if.end.3.i.110:                                   ; preds = %if.else.i.103, %if.then.i.100
  %op.0.i.106 = phi %struct.PyFloatObject* [ %8, %if.then.i.100 ], [ %12, %if.else.i.103 ], !dbg !1099
  %13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.106, i64 0, i32 0, !dbg !1100
  %ob_type4.i.107 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.106, i64 0, i32 0, i32 1, !dbg !1100
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.107, align 8, !dbg !1100, !tbaa !1056
  %ob_refcnt.i.108 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.106, i64 0, i32 0, i32 0, !dbg !1100
  store i64 1, i64* %ob_refcnt.i.108, align 8, !dbg !1100, !tbaa !1074
  %ob_fval.i.109 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.106, i64 0, i32 1, !dbg !1101
  store double 0x10000000000000, double* %ob_fval.i.109, align 8, !dbg !1102, !tbaa !1077
  br label %PyFloat_FromDouble.exit112, !dbg !1103

PyFloat_FromDouble.exit112:                       ; preds = %if.then.1.i.105, %if.end.3.i.110
  %retval.0.i.111 = phi %struct._object* [ %13, %if.end.3.i.110 ], [ %call2.i.104, %if.then.1.i.105 ], !dbg !1099
  tail call void @llvm.dbg.value(metadata i32 4, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx16 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 3, !dbg !1099
  %14 = bitcast %struct._typeobject** %arrayidx16 to %struct._object**, !dbg !1099
  store %struct._object* %retval.0.i.111, %struct._object** %14, align 8, !dbg !1099, !tbaa !1046
  %call17 = tail call %struct._object* @PyLong_FromLong(i64 -1021) #2, !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 5, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx21 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 4, !dbg !1104
  %15 = bitcast %struct._typeobject** %arrayidx21 to %struct._object**, !dbg !1104
  store %struct._object* %call17, %struct._object** %15, align 8, !dbg !1104, !tbaa !1046
  %call22 = tail call %struct._object* @PyLong_FromLong(i64 -307) #2, !dbg !1105
  tail call void @llvm.dbg.value(metadata i32 6, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx26 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 5, !dbg !1105
  %16 = bitcast %struct._typeobject** %arrayidx26 to %struct._object**, !dbg !1105
  store %struct._object* %call22, %struct._object** %16, align 8, !dbg !1105, !tbaa !1046
  %call27 = tail call %struct._object* @PyLong_FromLong(i64 15) #2, !dbg !1106
  tail call void @llvm.dbg.value(metadata i32 7, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx31 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 6, !dbg !1106
  %17 = bitcast %struct._typeobject** %arrayidx31 to %struct._object**, !dbg !1106
  store %struct._object* %call27, %struct._object** %17, align 8, !dbg !1106, !tbaa !1046
  %call32 = tail call %struct._object* @PyLong_FromLong(i64 53) #2, !dbg !1107
  tail call void @llvm.dbg.value(metadata i32 8, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx36 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 7, !dbg !1107
  %18 = bitcast %struct._typeobject** %arrayidx36 to %struct._object**, !dbg !1107
  store %struct._object* %call32, %struct._object** %18, align 8, !dbg !1107, !tbaa !1046
  tail call void @llvm.dbg.value(metadata double 0x3CB0000000000000, i64 0, metadata !420, metadata !1036) #2, !dbg !1108
  %19 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1110, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %19, i64 0, metadata !421, metadata !1036) #2, !dbg !1111
  %cmp.i.113 = icmp eq %struct.PyFloatObject* %19, null, !dbg !1112
  br i1 %cmp.i.113, label %if.else.i.119, label %if.then.i.116, !dbg !1113

if.then.i.116:                                    ; preds = %PyFloat_FromDouble.exit112
  %ob_type.i.114 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %19, i64 0, i32 0, i32 1, !dbg !1114
  %20 = bitcast %struct._typeobject** %ob_type.i.114 to i64*, !dbg !1114
  %21 = load i64, i64* %20, align 8, !dbg !1114, !tbaa !1056
  store i64 %21, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1115, !tbaa !1046
  %22 = load i32, i32* @numfree, align 4, !dbg !1116, !tbaa !1061
  %dec.i.115 = add i32 %22, -1, !dbg !1116
  store i32 %dec.i.115, i32* @numfree, align 4, !dbg !1116, !tbaa !1061
  br label %if.end.3.i.126, !dbg !1117

if.else.i.119:                                    ; preds = %PyFloat_FromDouble.exit112
  %call.i.117 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !1118
  %23 = bitcast i8* %call.i.117 to %struct.PyFloatObject*, !dbg !1119
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %23, i64 0, metadata !421, metadata !1036) #2, !dbg !1111
  %tobool.i.118 = icmp eq i8* %call.i.117, null, !dbg !1120
  br i1 %tobool.i.118, label %if.then.1.i.121, label %if.end.3.i.126, !dbg !1121

if.then.1.i.121:                                  ; preds = %if.else.i.119
  %call2.i.120 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1122
  br label %PyFloat_FromDouble.exit128, !dbg !1123

if.end.3.i.126:                                   ; preds = %if.else.i.119, %if.then.i.116
  %op.0.i.122 = phi %struct.PyFloatObject* [ %19, %if.then.i.116 ], [ %23, %if.else.i.119 ], !dbg !1124
  %24 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.122, i64 0, i32 0, !dbg !1125
  %ob_type4.i.123 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.122, i64 0, i32 0, i32 1, !dbg !1125
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.123, align 8, !dbg !1125, !tbaa !1056
  %ob_refcnt.i.124 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.122, i64 0, i32 0, i32 0, !dbg !1125
  store i64 1, i64* %ob_refcnt.i.124, align 8, !dbg !1125, !tbaa !1074
  %ob_fval.i.125 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.122, i64 0, i32 1, !dbg !1126
  store double 0x3CB0000000000000, double* %ob_fval.i.125, align 8, !dbg !1127, !tbaa !1077
  br label %PyFloat_FromDouble.exit128, !dbg !1128

PyFloat_FromDouble.exit128:                       ; preds = %if.then.1.i.121, %if.end.3.i.126
  %retval.0.i.127 = phi %struct._object* [ %24, %if.end.3.i.126 ], [ %call2.i.120, %if.then.1.i.121 ], !dbg !1124
  tail call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx41 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 8, !dbg !1124
  %25 = bitcast %struct._typeobject** %arrayidx41 to %struct._object**, !dbg !1124
  store %struct._object* %retval.0.i.127, %struct._object** %25, align 8, !dbg !1124, !tbaa !1046
  %call42 = tail call %struct._object* @PyLong_FromLong(i64 2) #2, !dbg !1129
  tail call void @llvm.dbg.value(metadata i32 10, i64 0, metadata !407, metadata !1036), !dbg !1037
  %arrayidx46 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 9, !dbg !1129
  %26 = bitcast %struct._typeobject** %arrayidx46 to %struct._object**, !dbg !1129
  store %struct._object* %call42, %struct._object** %26, align 8, !dbg !1129, !tbaa !1046
  %27 = tail call i32 @llvm.flt.rounds(), !dbg !1130
  %conv = sext i32 %27 to i64, !dbg !1130
  %call47 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !1130
  %arrayidx51 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item, i64 10, !dbg !1130
  %28 = bitcast %struct._typeobject** %arrayidx51 to %struct._object**, !dbg !1130
  store %struct._object* %call47, %struct._object** %28, align 8, !dbg !1130, !tbaa !1046
  %call52 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1131
  %tobool = icmp eq %struct._object* %call52, null, !dbg !1131
  br i1 %tobool, label %cleanup, label %if.then.56, !dbg !1132

if.then.56:                                       ; preds = %PyFloat_FromDouble.exit128
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !408, metadata !1036), !dbg !1133
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !406, metadata !1036), !dbg !1039
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !412, metadata !1036), !dbg !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1137
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1137, !tbaa !1074
  %dec = add i64 %29, -1, !dbg !1137
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1137, !tbaa !1074
  %cmp58 = icmp eq i64 %dec, 0, !dbg !1137
  br i1 %cmp58, label %if.else, label %cleanup, !dbg !1139

if.else:                                          ; preds = %if.then.56
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1140
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1140, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !1140
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1140, !tbaa !1142
  tail call void %31(%struct._object* %call) #2, !dbg !1140
  br label %cleanup

cleanup:                                          ; preds = %PyFloat_FromDouble.exit128, %if.then.56, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %if.then.56 ], [ %call, %PyFloat_FromDouble.exit128 ]
  ret %struct._object* %retval.0, !dbg !1145
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_FromDouble(double %fval) #1 {
entry:
  tail call void @llvm.dbg.value(metadata double %fval, i64 0, metadata !420, metadata !1036), !dbg !1146
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1147, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %0, i64 0, metadata !421, metadata !1036), !dbg !1148
  %cmp = icmp eq %struct.PyFloatObject* %0, null, !dbg !1149
  br i1 %cmp, label %if.else, label %if.then, !dbg !1150

if.then:                                          ; preds = %entry
  %ob_type = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i64 0, i32 0, i32 1, !dbg !1151
  %1 = bitcast %struct._typeobject** %ob_type to i64*, !dbg !1151
  %2 = load i64, i64* %1, align 8, !dbg !1151, !tbaa !1056
  store i64 %2, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1152, !tbaa !1046
  %3 = load i32, i32* @numfree, align 4, !dbg !1153, !tbaa !1061
  %dec = add i32 %3, -1, !dbg !1153
  store i32 %dec, i32* @numfree, align 4, !dbg !1153, !tbaa !1061
  br label %if.end.3, !dbg !1154

if.else:                                          ; preds = %entry
  %call = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !1155
  %4 = bitcast i8* %call to %struct.PyFloatObject*, !dbg !1156
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %4, i64 0, metadata !421, metadata !1036), !dbg !1148
  %tobool = icmp eq i8* %call, null, !dbg !1157
  br i1 %tobool, label %if.then.1, label %if.end.3, !dbg !1158

if.then.1:                                        ; preds = %if.else
  %call2 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1159
  br label %cleanup, !dbg !1160

if.end.3:                                         ; preds = %if.else, %if.then
  %op.0 = phi %struct.PyFloatObject* [ %0, %if.then ], [ %4, %if.else ]
  %5 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0, i64 0, i32 0, !dbg !1161
  %ob_type4 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0, i64 0, i32 0, i32 1, !dbg !1161
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4, align 8, !dbg !1161, !tbaa !1056
  %ob_refcnt = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0, i64 0, i32 0, i32 0, !dbg !1161
  store i64 1, i64* %ob_refcnt, align 8, !dbg !1161, !tbaa !1074
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0, i64 0, i32 1, !dbg !1162
  store double %fval, double* %ob_fval, align 8, !dbg !1163, !tbaa !1077
  br label %cleanup, !dbg !1164

cleanup:                                          ; preds = %if.end.3, %if.then.1
  %retval.0 = phi %struct._object* [ %5, %if.end.3 ], [ %call2, %if.then.1 ]
  ret %struct._object* %retval.0, !dbg !1165
}

declare %struct._object* @PyLong_FromLong(i64) #4

; Function Attrs: nounwind
declare i32 @llvm.flt.rounds() #2

declare %struct._object* @PyErr_Occurred() #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8* @PyObject_Malloc(i64) #4

declare %struct._object* @PyErr_NoMemory() #4

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_FromString(%struct._object* %v) #1 {
entry:
  %s = alloca i8*, align 8
  %end = alloca i8*, align 8
  %len = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !424, metadata !1036), !dbg !1166
  %0 = bitcast i8** %s to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1167
  %1 = bitcast i8** %end to i8*, !dbg !1167
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1167
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !429, metadata !1036), !dbg !1168
  %2 = bitcast i64* %len to i8*, !dbg !1169
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1169
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !431, metadata !1036), !dbg !1170
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !1171
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1171, !tbaa !1056
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1171
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1171, !tbaa !1172
  %and = and i64 %4, 268435456, !dbg !1171
  %cmp = icmp eq i64 %and, 0, !dbg !1171
  br i1 %cmp, label %if.else.11, label %if.then, !dbg !1173

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object* %v) #2, !dbg !1174
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !429, metadata !1036), !dbg !1168
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !1175
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !1177

if.end:                                           ; preds = %if.then
  tail call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !430, metadata !1036), !dbg !1178
  %call3 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %call, i64* nonnull %len) #2, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %call3, i64 0, metadata !425, metadata !1036), !dbg !1180
  store i8* %call3, i8** %s, align 8, !dbg !1181, !tbaa !1046
  %cmp4 = icmp eq i8* %call3, null, !dbg !1182
  br i1 %cmp4, label %do.body, label %if.end.17, !dbg !1183

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !432, metadata !1036), !dbg !1184
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1186
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1186, !tbaa !1074
  %dec = add i64 %5, -1, !dbg !1186
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1186, !tbaa !1074
  %cmp6 = icmp eq i64 %dec, 0, !dbg !1186
  br i1 %cmp6, label %if.else, label %cleanup, !dbg !1188

if.else:                                          ; preds = %do.body
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1189
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1189, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1189
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1189, !tbaa !1142
  call void %7(%struct._object* %call) #2, !dbg !1189
  br label %cleanup

if.else.11:                                       ; preds = %entry
  tail call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  tail call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !430, metadata !1036), !dbg !1178
  %call12 = call i32 @PyObject_AsCharBuffer(%struct._object* %v, i8** nonnull %s, i64* nonnull %len) #2, !dbg !1191
  %tobool = icmp eq i32 %call12, 0, !dbg !1191
  br i1 %tobool, label %if.else.11.if.end.17_crit_edge, label %if.then.13, !dbg !1193

if.else.11.if.end.17_crit_edge:                   ; preds = %if.else.11
  %.pre = load i8*, i8** %s, align 8, !dbg !1194, !tbaa !1046
  br label %if.end.17, !dbg !1193

if.then.13:                                       ; preds = %if.else.11
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1195, !tbaa !1046
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1197, !tbaa !1056
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 1, !dbg !1198
  %10 = load i8*, i8** %tp_name, align 8, !dbg !1198, !tbaa !1199
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %10) #2, !dbg !1200
  br label %cleanup, !dbg !1201

if.end.17:                                        ; preds = %if.else.11.if.end.17_crit_edge, %if.end
  %11 = phi i8* [ %call3, %if.end ], [ %.pre, %if.else.11.if.end.17_crit_edge ], !dbg !1194
  %s_buffer.0 = phi %struct._object* [ %call, %if.end ], [ null, %if.else.11.if.end.17_crit_edge ]
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !430, metadata !1036), !dbg !1178
  %12 = load i64, i64* %len, align 8, !dbg !1202, !tbaa !1203
  %add.ptr = getelementptr i8, i8* %11, i64 %12, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !426, metadata !1036), !dbg !1205
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  %cmp18.106 = icmp ult i8* %11, %add.ptr, !dbg !1206
  br i1 %cmp18.106, label %land.rhs.preheader, label %while.cond.23.preheader, !dbg !1207

land.rhs.preheader:                               ; preds = %if.end.17
  br label %land.rhs, !dbg !1208

land.rhs:                                         ; preds = %land.rhs.preheader, %while.body
  %13 = phi i8* [ %incdec.ptr, %while.body ], [ %11, %land.rhs.preheader ]
  %14 = load i8, i8* %13, align 1, !dbg !1208, !tbaa !1210
  %idxprom = zext i8 %14 to i64, !dbg !1208
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !1208
  %15 = load i32, i32* %arrayidx, align 4, !dbg !1208, !tbaa !1061
  %and21 = and i32 %15, 8, !dbg !1208
  %tobool22 = icmp eq i32 %and21, 0, !dbg !1207
  br i1 %tobool22, label %while.cond.23.preheader.loopexit, label %while.body, !dbg !1211

while.cond.23.preheader.loopexit:                 ; preds = %while.body, %land.rhs
  %.ph = phi i8* [ %13, %land.rhs ], [ %incdec.ptr, %while.body ]
  br label %while.cond.23.preheader, !dbg !1180

while.cond.23.preheader:                          ; preds = %while.cond.23.preheader.loopexit, %if.end.17
  %16 = phi i8* [ %11, %if.end.17 ], [ %.ph, %while.cond.23.preheader.loopexit ], !dbg !1213
  br label %while.cond.23, !dbg !1180

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr i8, i8* %13, i64 1, !dbg !1214
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !425, metadata !1036), !dbg !1180
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !1214, !tbaa !1046
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  %cmp18 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !1206
  br i1 %cmp18, label %land.rhs, label %while.cond.23.preheader.loopexit, !dbg !1207

while.cond.23:                                    ; preds = %while.cond.23.preheader, %land.rhs.27
  %last.0 = phi i8* [ %add.ptr24, %land.rhs.27 ], [ %add.ptr, %while.cond.23.preheader ]
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  %add.ptr24 = getelementptr i8, i8* %last.0, i64 -1, !dbg !1215
  %cmp25 = icmp ult i8* %16, %add.ptr24, !dbg !1216
  br i1 %cmp25, label %land.rhs.27, label %while.end.39, !dbg !1217

land.rhs.27:                                      ; preds = %while.cond.23
  %17 = load i8, i8* %add.ptr24, align 1, !dbg !1218, !tbaa !1210
  %idxprom32 = zext i8 %17 to i64, !dbg !1218
  %arrayidx33 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom32, !dbg !1218
  %18 = load i32, i32* %arrayidx33, align 4, !dbg !1218, !tbaa !1061
  %and34 = and i32 %18, 8, !dbg !1218
  %tobool35 = icmp eq i32 %and34, 0, !dbg !1217
  br i1 %tobool35, label %while.end.39, label %while.cond.23, !dbg !1219

while.end.39:                                     ; preds = %land.rhs.27, %while.cond.23
  %last.0.lcssa = phi i8* [ %last.0, %land.rhs.27 ], [ %last.0, %while.cond.23 ]
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !425, metadata !1036), !dbg !1180
  call void @llvm.dbg.value(metadata i8** %end, i64 0, metadata !427, metadata !1036), !dbg !1220
  %call40 = call double @PyOS_string_to_double(i8* %16, i8** nonnull %end, %struct._object* null) #2, !dbg !1221
  call void @llvm.dbg.value(metadata double %call40, i64 0, metadata !428, metadata !1036), !dbg !1222
  call void @llvm.dbg.value(metadata i8** %end, i64 0, metadata !427, metadata !1036), !dbg !1220
  %19 = load i8*, i8** %end, align 8, !dbg !1223, !tbaa !1046
  %cmp41 = icmp eq i8* %19, %last.0.lcssa, !dbg !1225
  br i1 %cmp41, label %if.else.45, label %if.then.43, !dbg !1226

if.then.43:                                       ; preds = %while.end.39
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1227, !tbaa !1046
  %call44 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct._object* %v) #2, !dbg !1229
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !431, metadata !1036), !dbg !1170
  br label %do.body.55, !dbg !1230

if.else.45:                                       ; preds = %while.end.39
  %cmp46 = fcmp oeq double %call40, -1.000000e+00, !dbg !1231
  br i1 %cmp46, label %land.lhs.true, label %if.else.51, !dbg !1233

land.lhs.true:                                    ; preds = %if.else.45
  %call48 = call %struct._object* @PyErr_Occurred() #2, !dbg !1234
  %tobool49 = icmp eq %struct._object* %call48, null, !dbg !1234
  br i1 %tobool49, label %if.else.51, label %do.body.55, !dbg !1236

if.else.51:                                       ; preds = %land.lhs.true, %if.else.45
  call void @llvm.dbg.value(metadata double %call40, i64 0, metadata !420, metadata !1036) #2, !dbg !1237
  %21 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1239, !tbaa !1046
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %21, i64 0, metadata !421, metadata !1036) #2, !dbg !1240
  %cmp.i = icmp eq %struct.PyFloatObject* %21, null, !dbg !1241
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !1242

if.then.i:                                        ; preds = %if.else.51
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %21, i64 0, i32 0, i32 1, !dbg !1243
  %22 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !1243
  %23 = load i64, i64* %22, align 8, !dbg !1243, !tbaa !1056
  store i64 %23, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1244, !tbaa !1046
  %24 = load i32, i32* @numfree, align 4, !dbg !1245, !tbaa !1061
  %dec.i = add i32 %24, -1, !dbg !1245
  store i32 %dec.i, i32* @numfree, align 4, !dbg !1245, !tbaa !1061
  br label %if.end.3.i, !dbg !1246

if.else.i:                                        ; preds = %if.else.51
  %call.i = call i8* @PyObject_Malloc(i64 24) #2, !dbg !1247
  %25 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !1248
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %25, i64 0, metadata !421, metadata !1036) #2, !dbg !1240
  %tobool.i = icmp eq i8* %call.i, null, !dbg !1249
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !1250

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !1251
  br label %do.body.55, !dbg !1252

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %21, %if.then.i ], [ %25, %if.else.i ], !dbg !1253
  %26 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !1254
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !1254
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !1254, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !1254
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !1254, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !1255
  store double %call40, double* %ob_fval.i, align 8, !dbg !1256, !tbaa !1077
  br label %do.body.55, !dbg !1257

do.body.55:                                       ; preds = %if.end.3.i, %if.then.1.i, %land.lhs.true, %if.then.43
  %result.0 = phi %struct._object* [ null, %if.then.43 ], [ null, %land.lhs.true ], [ %26, %if.end.3.i ], [ %call2.i, %if.then.1.i ]
  call void @llvm.dbg.value(metadata %struct._object* %s_buffer.0, i64 0, metadata !438, metadata !1036), !dbg !1258
  %cmp56 = icmp eq %struct._object* %s_buffer.0, null, !dbg !1260
  br i1 %cmp56, label %cleanup, label %do.body.59, !dbg !1261

do.body.59:                                       ; preds = %do.body.55
  call void @llvm.dbg.value(metadata %struct._object* %s_buffer.0, i64 0, metadata !440, metadata !1036), !dbg !1262
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %s_buffer.0, i64 0, i32 0, !dbg !1264
  %27 = load i64, i64* %ob_refcnt61, align 8, !dbg !1264, !tbaa !1074
  %dec62 = add i64 %27, -1, !dbg !1264
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !1264, !tbaa !1074
  %cmp63 = icmp eq i64 %dec62, 0, !dbg !1264
  br i1 %cmp63, label %if.else.66, label %cleanup, !dbg !1266

if.else.66:                                       ; preds = %do.body.59
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %s_buffer.0, i64 0, i32 1, !dbg !1267
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1267, !tbaa !1056
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1267
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1267, !tbaa !1142
  call void %29(%struct._object* %s_buffer.0) #2, !dbg !1267
  br label %cleanup

cleanup:                                          ; preds = %do.body.55, %do.body.59, %if.else.66, %if.else, %do.body, %if.then, %if.then.13
  %retval.0 = phi %struct._object* [ null, %if.then.13 ], [ null, %if.then ], [ null, %do.body ], [ null, %if.else ], [ %result.0, %if.else.66 ], [ %result.0, %do.body.59 ], [ %result.0, %do.body.55 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1269
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1269
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1269
  ret %struct._object* %retval.0, !dbg !1269
}

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #4

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #4

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #4

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #4

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #4

; Function Attrs: nounwind uwtable
define double @PyFloat_AsDouble(%struct._object* %op) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %op, i64 0, metadata !447, metadata !1036), !dbg !1270
  %cond = icmp eq %struct._object* %op, null, !dbg !1271
  br i1 %cond, label %if.then.4, label %land.lhs.true, !dbg !1271

land.lhs.true:                                    ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %op, i64 0, i32 1, !dbg !1273
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1273, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !1273
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1273

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1275
  %tobool2 = icmp eq i32 %call, 0, !dbg !1275
  br i1 %tobool2, label %if.end.6, label %if.then, !dbg !1277

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %ob_fval = getelementptr inbounds %struct._object, %struct._object* %op, i64 1, !dbg !1278
  %1 = bitcast %struct._object* %ob_fval to double*, !dbg !1278
  %2 = load double, double* %1, align 8, !dbg !1278, !tbaa !1077
  br label %cleanup, !dbg !1279

if.then.4:                                        ; preds = %entry
  %call5 = tail call i32 @PyErr_BadArgument() #2, !dbg !1280
  br label %cleanup, !dbg !1283

if.end.6:                                         ; preds = %lor.lhs.false
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1284, !tbaa !1056
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 10, !dbg !1286
  %4 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1286, !tbaa !1287
  tail call void @llvm.dbg.value(metadata %struct.PyNumberMethods* %4, i64 0, metadata !448, metadata !1036), !dbg !1288
  %cmp8 = icmp eq %struct.PyNumberMethods* %4, null, !dbg !1289
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9, !dbg !1290

lor.lhs.false.9:                                  ; preds = %if.end.6
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %4, i64 0, i32 18, !dbg !1291
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8, !dbg !1291, !tbaa !1292
  %cmp10 = icmp eq %struct._object* (%struct._object*)* %5, null, !dbg !1294
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1295

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1296, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)) #2, !dbg !1298
  br label %cleanup, !dbg !1299

if.end.12:                                        ; preds = %lor.lhs.false.9
  %call14 = tail call %struct._object* %5(%struct._object* %op) #2, !dbg !1300
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !1301
  br i1 %cmp15, label %cleanup, label %if.end.17, !dbg !1303

if.end.17:                                        ; preds = %if.end.12
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 1, !dbg !1304
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1304, !tbaa !1056
  %cmp19 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !1304
  br i1 %cmp19, label %if.end.25, label %lor.lhs.false.20, !dbg !1304

lor.lhs.false.20:                                 ; preds = %if.end.17
  %call22 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1306
  %tobool23 = icmp eq i32 %call22, 0, !dbg !1306
  br i1 %tobool23, label %if.then.24, label %if.end.25, !dbg !1308

if.then.24:                                       ; preds = %lor.lhs.false.20
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1309, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0)) #2, !dbg !1311
  br label %cleanup, !dbg !1312

if.end.25:                                        ; preds = %lor.lhs.false.20, %if.end.17
  %ob_fval26 = getelementptr inbounds %struct._object, %struct._object* %call14, i64 1, !dbg !1313
  %9 = bitcast %struct._object* %ob_fval26 to double*, !dbg !1313
  %10 = load double, double* %9, align 8, !dbg !1313, !tbaa !1077
  tail call void @llvm.dbg.value(metadata double %10, i64 0, metadata !450, metadata !1036), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !451, metadata !1036), !dbg !1315
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call14, i64 0, i32 0, !dbg !1317
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1317, !tbaa !1074
  %dec = add i64 %11, -1, !dbg !1317
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1317, !tbaa !1074
  %cmp27 = icmp eq i64 %dec, 0, !dbg !1317
  br i1 %cmp27, label %if.else, label %cleanup, !dbg !1319

if.else:                                          ; preds = %if.end.25
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1320, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1320
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1320, !tbaa !1142
  tail call void %13(%struct._object* %call14) #2, !dbg !1320
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.25, %if.end.12, %if.then.24, %if.then.11, %if.then.4, %if.then
  %retval.0 = phi double [ %2, %if.then ], [ -1.000000e+00, %if.then.4 ], [ -1.000000e+00, %if.then.11 ], [ -1.000000e+00, %if.then.24 ], [ -1.000000e+00, %if.end.12 ], [ %10, %if.end.25 ], [ %10, %if.else ]
  ret double %retval.0, !dbg !1322
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #4

declare i32 @PyErr_BadArgument() #4

declare void @PyErr_SetString(%struct._object*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @float_dealloc(%struct.PyFloatObject* %op) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %op, i64 0, metadata !560, metadata !1036), !dbg !1323
  %ob_type = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op, i64 0, i32 0, i32 1, !dbg !1324
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1324, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !1324
  br i1 %cmp, label %if.then, label %if.else, !dbg !1326

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @numfree, align 4, !dbg !1327, !tbaa !1061
  %cmp1 = icmp sgt i32 %1, 99, !dbg !1330
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1331

if.then.2:                                        ; preds = %if.then
  %2 = bitcast %struct.PyFloatObject* %op to i8*, !dbg !1332
  tail call void @PyObject_Free(i8* %2) #2, !dbg !1334
  br label %if.end.5, !dbg !1335

if.end:                                           ; preds = %if.then
  %inc = add i32 %1, 1, !dbg !1336
  store i32 %inc, i32* @numfree, align 4, !dbg !1336, !tbaa !1061
  %3 = load i64, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !1337, !tbaa !1046
  %4 = bitcast %struct._typeobject** %ob_type to i64*, !dbg !1338
  store i64 %3, i64* %4, align 8, !dbg !1338, !tbaa !1056
  store %struct.PyFloatObject* %op, %struct.PyFloatObject** @free_list, align 8, !dbg !1339, !tbaa !1046
  br label %if.end.5, !dbg !1340

if.else:                                          ; preds = %entry
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 38, !dbg !1341
  %5 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1341, !tbaa !1342
  %6 = bitcast %struct.PyFloatObject* %op to i8*, !dbg !1343
  tail call void %5(i8* %6) #2, !dbg !1344
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.else, %if.end
  ret void, !dbg !1345
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_repr(%struct.PyFloatObject* nocapture readonly %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !565, metadata !1036), !dbg !1346
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !1347
  %0 = load double, double* %ob_fval, align 8, !dbg !1347, !tbaa !1077
  %call = tail call i8* @PyOS_double_to_string(double %0, i8 signext 114, i32 0, i32 2, i32* null) #2, !dbg !1348
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !567, metadata !1036), !dbg !1349
  %tobool = icmp eq i8* %call, null, !dbg !1350
  br i1 %tobool, label %if.then, label %if.end, !dbg !1352

if.then:                                          ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !1353
  br label %cleanup, !dbg !1354

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %call) #10, !dbg !1355
  %call3 = tail call %struct._object* @_PyUnicode_FromASCII(i8* %call, i64 %call2) #2, !dbg !1356
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !566, metadata !1036), !dbg !1357
  tail call void @PyMem_Free(i8* %call) #2, !dbg !1358
  br label %cleanup, !dbg !1359

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call3, %if.end ], [ %call1, %if.then ]
  ret %struct._object* %retval.0, !dbg !1360
}

; Function Attrs: nounwind uwtable
define internal i64 @float_hash(%struct.PyFloatObject* nocapture readonly %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !667, metadata !1036), !dbg !1361
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !1362
  %0 = load double, double* %ob_fval, align 8, !dbg !1362, !tbaa !1077
  %call = tail call i64 @_Py_HashDouble(double %0) #2, !dbg !1363
  ret i64 %call, !dbg !1364
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_richcompare(%struct._object* nocapture readonly %v, %struct._object* %w, i32 %op) #1 {
entry:
  %exponent = alloca i32, align 4
  %intpart = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !670, metadata !1036), !dbg !1365
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !671, metadata !1036), !dbg !1366
  tail call void @llvm.dbg.value(metadata i32 %op, i64 0, metadata !672, metadata !1036), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !675, metadata !1036), !dbg !1368
  %ob_fval = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !1369
  %0 = bitcast %struct._object* %ob_fval to double*, !dbg !1369
  %1 = load double, double* %0, align 8, !dbg !1369, !tbaa !1077
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !673, metadata !1036), !dbg !1370
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !1371
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1371, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !1371
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1371

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !1372
  %tobool = icmp eq i32 %call, 0, !dbg !1372
  br i1 %tobool, label %cond.true.5, label %if.then, !dbg !1374

if.then:                                          ; preds = %lor.lhs.false, %entry
  %ob_fval2 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, !dbg !1375
  %3 = bitcast %struct._object* %ob_fval2 to double*, !dbg !1375
  %4 = load double, double* %3, align 8, !dbg !1375, !tbaa !1077
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !674, metadata !1036), !dbg !1376
  br label %Compare, !dbg !1377

cond.true.5:                                      ; preds = %lor.lhs.false
  %call6 = tail call i32 @__finite(double %1) #3, !dbg !1378
  %tobool7 = icmp eq i32 %call6, 0, !dbg !1378
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1380, !tbaa !1056
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !1380
  %6 = load i64, i64* %tp_flags20, align 8, !dbg !1380, !tbaa !1172
  %and21 = and i64 %6, 16777216, !dbg !1380
  %cmp22 = icmp ne i64 %and21, 0, !dbg !1380
  br i1 %tobool7, label %if.then.12, label %if.else.18, !dbg !1378

if.then.12:                                       ; preds = %cond.true.5
  br i1 %cmp22, label %Compare, label %Unimplemented, !dbg !1381

if.else.18:                                       ; preds = %cond.true.5
  br i1 %cmp22, label %if.then.24, label %Unimplemented, !dbg !1383

if.then.24:                                       ; preds = %if.else.18
  %cmp25 = fcmp oeq double %1, 0.000000e+00, !dbg !1384
  %cmp29 = fcmp olt double %1, 0.000000e+00, !dbg !1385
  %cond = select i1 %cmp29, i32 -1, i32 1, !dbg !1386
  %cond31 = select i1 %cmp25, i32 0, i32 %cond, !dbg !1387
  tail call void @llvm.dbg.value(metadata i32 %cond31, i64 0, metadata !676, metadata !1036), !dbg !1388
  %call32 = tail call i32 @_PyLong_Sign(%struct._object* %w) #2, !dbg !1389
  tail call void @llvm.dbg.value(metadata i32 %call32, i64 0, metadata !681, metadata !1036), !dbg !1390
  %7 = bitcast i32* %exponent to i8*, !dbg !1391
  call void @llvm.lifetime.start(i64 4, i8* %7) #2, !dbg !1391
  %cmp33 = icmp eq i32 %cond31, %call32, !dbg !1392
  br i1 %cmp33, label %if.end.38, label %if.then.35, !dbg !1394

if.then.35:                                       ; preds = %if.then.24
  %conv36 = sitofp i32 %cond31 to double, !dbg !1395
  tail call void @llvm.dbg.value(metadata double %conv36, i64 0, metadata !673, metadata !1036), !dbg !1370
  %conv37 = sitofp i32 %call32 to double, !dbg !1397
  tail call void @llvm.dbg.value(metadata double %conv37, i64 0, metadata !674, metadata !1036), !dbg !1376
  br label %cleanup.219.thread, !dbg !1398

if.end.38:                                        ; preds = %if.then.24
  %call39 = tail call i64 @_PyLong_NumBits(%struct._object* %w) #2, !dbg !1399
  tail call void @llvm.dbg.value(metadata i64 %call39, i64 0, metadata !682, metadata !1036), !dbg !1400
  %cmp40 = icmp eq i64 %call39, -1, !dbg !1401
  br i1 %cmp40, label %land.lhs.true, label %if.end.47, !dbg !1403

land.lhs.true:                                    ; preds = %if.end.38
  %call42 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !1404
  %tobool43 = icmp eq %struct._object* %call42, null, !dbg !1404
  br i1 %tobool43, label %if.end.52, label %if.then.44, !dbg !1406

if.then.44:                                       ; preds = %land.lhs.true
  tail call void @PyErr_Clear() #2, !dbg !1407
  %conv45 = sitofp i32 %cond31 to double, !dbg !1409
  tail call void @llvm.dbg.value(metadata double %conv45, i64 0, metadata !673, metadata !1036), !dbg !1370
  %mul = fmul double %conv45, 2.000000e+00, !dbg !1410
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !674, metadata !1036), !dbg !1376
  br label %cleanup.219.thread, !dbg !1411

if.end.47:                                        ; preds = %if.end.38
  %cmp48 = icmp ult i64 %call39, 49, !dbg !1412
  br i1 %cmp48, label %if.then.50, label %if.end.52, !dbg !1414

if.then.50:                                       ; preds = %if.end.47
  %call51 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !1415
  tail call void @llvm.dbg.value(metadata double %call51, i64 0, metadata !674, metadata !1036), !dbg !1376
  br label %cleanup.219.thread, !dbg !1417

if.end.52:                                        ; preds = %land.lhs.true, %if.end.47
  %cmp53 = icmp slt i32 %cond31, 0, !dbg !1418
  br i1 %cmp53, label %if.then.55, label %if.end.56, !dbg !1420

if.then.55:                                       ; preds = %if.end.52
  %sub = fsub double -0.000000e+00, %1, !dbg !1421
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !673, metadata !1036), !dbg !1370
  %idxprom = sext i32 %op to i64, !dbg !1423
  %arrayidx = getelementptr [0 x i32], [0 x i32]* @_Py_SwappedOp, i64 0, i64 %idxprom, !dbg !1423
  %8 = load i32, i32* %arrayidx, align 4, !dbg !1423, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !672, metadata !1036), !dbg !1367
  br label %if.end.56, !dbg !1424

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %i.0 = phi double [ %sub, %if.then.55 ], [ %1, %if.end.52 ]
  %op.addr.0 = phi i32 [ %8, %if.then.55 ], [ %op, %if.end.52 ]
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !683, metadata !1036), !dbg !1425
  %call57 = call double @frexp(double %i.0, i32* nonnull %exponent) #2, !dbg !1426
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !683, metadata !1036), !dbg !1425
  %9 = load i32, i32* %exponent, align 4, !dbg !1427, !tbaa !1061
  %cmp58 = icmp slt i32 %9, 0, !dbg !1429
  br i1 %cmp58, label %cleanup.219.thread, label %lor.lhs.false.60, !dbg !1430

lor.lhs.false.60:                                 ; preds = %if.end.56
  %conv61 = sext i32 %9 to i64, !dbg !1431
  %cmp62 = icmp ult i64 %conv61, %call39, !dbg !1432
  br i1 %cmp62, label %cleanup.219.thread, label %if.end.65, !dbg !1433

if.end.65:                                        ; preds = %lor.lhs.false.60
  %cmp67 = icmp ugt i64 %conv61, %call39, !dbg !1434
  br i1 %cmp67, label %cleanup.219.thread, label %if.end.70, !dbg !1436

if.end.70:                                        ; preds = %if.end.65
  %10 = bitcast double* %intpart to i8*, !dbg !1437
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !1437
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !687, metadata !1036), !dbg !1438
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !688, metadata !1036), !dbg !1439
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !689, metadata !1036), !dbg !1440
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !690, metadata !1036), !dbg !1441
  br i1 %cmp53, label %if.then.73, label %if.else.79, !dbg !1442

if.then.73:                                       ; preds = %if.end.70
  %call74 = tail call %struct._object* @PyNumber_Negative(%struct._object* %w) #2, !dbg !1443
  tail call void @llvm.dbg.value(metadata %struct._object* %call74, i64 0, metadata !690, metadata !1036), !dbg !1441
  %cmp75 = icmp eq %struct._object* %call74, null, !dbg !1446
  br i1 %cmp75, label %cleanup.219, label %if.end.80, !dbg !1448

if.else.79:                                       ; preds = %if.end.70
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 0, !dbg !1449
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1449, !tbaa !1074
  %inc = add i64 %11, 1, !dbg !1449
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1449, !tbaa !1074
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.73, %if.else.79
  %ww.0 = phi %struct._object* [ %call74, %if.then.73 ], [ %w, %if.else.79 ]
  tail call void @llvm.dbg.value(metadata double* %intpart, i64 0, metadata !686, metadata !1036), !dbg !1450
  %call81 = call double @modf(double %i.0, double* nonnull %intpart) #2, !dbg !1451
  tail call void @llvm.dbg.value(metadata double %call81, i64 0, metadata !684, metadata !1036), !dbg !1452
  tail call void @llvm.dbg.value(metadata double* %intpart, i64 0, metadata !686, metadata !1036), !dbg !1450
  %12 = load double, double* %intpart, align 8, !dbg !1453, !tbaa !1454
  %call82 = tail call %struct._object* @PyLong_FromDouble(double %12) #2, !dbg !1455
  tail call void @llvm.dbg.value(metadata %struct._object* %call82, i64 0, metadata !689, metadata !1036), !dbg !1440
  %cmp83 = icmp eq %struct._object* %call82, null, !dbg !1456
  br i1 %cmp83, label %do.body.176, label %if.end.86, !dbg !1458

if.end.86:                                        ; preds = %if.end.80
  %cmp87 = fcmp une double %call81, 0.000000e+00, !dbg !1459
  br i1 %cmp87, label %if.then.89, label %if.end.143, !dbg !1460

if.then.89:                                       ; preds = %if.end.86
  %call90 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct._object* %call90, i64 0, metadata !688, metadata !1036), !dbg !1439
  %cmp91 = icmp eq %struct._object* %call90, null, !dbg !1462
  br i1 %cmp91, label %do.body.155, label %if.end.94, !dbg !1464

if.end.94:                                        ; preds = %if.then.89
  %call95 = tail call %struct._object* @PyNumber_Lshift(%struct._object* %ww.0, %struct._object* %call90) #2, !dbg !1465
  tail call void @llvm.dbg.value(metadata %struct._object* %call95, i64 0, metadata !691, metadata !1036), !dbg !1466
  %cmp96 = icmp eq %struct._object* %call95, null, !dbg !1467
  br i1 %cmp96, label %do.body.155, label %do.body, !dbg !1469

do.body:                                          ; preds = %if.end.94
  tail call void @llvm.dbg.value(metadata %struct._object* %ww.0, i64 0, metadata !694, metadata !1036), !dbg !1470
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %ww.0, i64 0, i32 0, !dbg !1472
  %13 = load i64, i64* %ob_refcnt100, align 8, !dbg !1472, !tbaa !1074
  %dec = add i64 %13, -1, !dbg !1472
  store i64 %dec, i64* %ob_refcnt100, align 8, !dbg !1472, !tbaa !1074
  %cmp101 = icmp eq i64 %dec, 0, !dbg !1472
  br i1 %cmp101, label %if.else.104, label %if.end.106, !dbg !1474

if.else.104:                                      ; preds = %do.body
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %ww.0, i64 0, i32 1, !dbg !1475
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8, !dbg !1475, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1475
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1475, !tbaa !1142
  tail call void %15(%struct._object* %ww.0) #2, !dbg !1475
  br label %if.end.106

if.end.106:                                       ; preds = %do.body, %if.else.104
  tail call void @llvm.dbg.value(metadata %struct._object* %call95, i64 0, metadata !690, metadata !1036), !dbg !1441
  %call107 = tail call %struct._object* @PyNumber_Lshift(%struct._object* %call82, %struct._object* %call90) #2, !dbg !1477
  tail call void @llvm.dbg.value(metadata %struct._object* %call107, i64 0, metadata !691, metadata !1036), !dbg !1466
  %cmp108 = icmp eq %struct._object* %call107, null, !dbg !1478
  br i1 %cmp108, label %do.body.151, label %do.body.112, !dbg !1480

do.body.112:                                      ; preds = %if.end.106
  tail call void @llvm.dbg.value(metadata %struct._object* %call82, i64 0, metadata !696, metadata !1036), !dbg !1481
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %call82, i64 0, i32 0, !dbg !1483
  %16 = load i64, i64* %ob_refcnt114, align 8, !dbg !1483, !tbaa !1074
  %dec115 = add i64 %16, -1, !dbg !1483
  store i64 %dec115, i64* %ob_refcnt114, align 8, !dbg !1483, !tbaa !1074
  %cmp116 = icmp eq i64 %dec115, 0, !dbg !1483
  br i1 %cmp116, label %if.else.119, label %if.end.122, !dbg !1485

if.else.119:                                      ; preds = %do.body.112
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %call82, i64 0, i32 1, !dbg !1486
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !1486, !tbaa !1056
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1486
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !1486, !tbaa !1142
  tail call void %18(%struct._object* %call82) #2, !dbg !1486
  br label %if.end.122

if.end.122:                                       ; preds = %do.body.112, %if.else.119
  tail call void @llvm.dbg.value(metadata %struct._object* %call107, i64 0, metadata !689, metadata !1036), !dbg !1440
  %call125 = tail call %struct._object* @PyNumber_Or(%struct._object* %call107, %struct._object* %call90) #2, !dbg !1488
  tail call void @llvm.dbg.value(metadata %struct._object* %call125, i64 0, metadata !691, metadata !1036), !dbg !1466
  %cmp126 = icmp eq %struct._object* %call125, null, !dbg !1489
  br i1 %cmp126, label %do.body.151, label %do.body.130, !dbg !1491

do.body.130:                                      ; preds = %if.end.122
  tail call void @llvm.dbg.value(metadata %struct._object* %call107, i64 0, metadata !698, metadata !1036), !dbg !1492
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %call107, i64 0, i32 0, !dbg !1494
  %19 = load i64, i64* %ob_refcnt132, align 8, !dbg !1494, !tbaa !1074
  %dec133 = add i64 %19, -1, !dbg !1494
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !1494, !tbaa !1074
  %cmp134 = icmp eq i64 %dec133, 0, !dbg !1494
  br i1 %cmp134, label %if.else.137, label %if.end.143, !dbg !1496

if.else.137:                                      ; preds = %do.body.130
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %call107, i64 0, i32 1, !dbg !1497
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8, !dbg !1497, !tbaa !1056
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1497
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8, !dbg !1497, !tbaa !1142
  tail call void %21(%struct._object* %call107) #2, !dbg !1497
  br label %if.end.143

if.end.143:                                       ; preds = %do.body.130, %if.else.137, %if.end.86
  %ww.2 = phi %struct._object* [ %ww.0, %if.end.86 ], [ %call95, %do.body.130 ], [ %call95, %if.else.137 ]
  %vv.1 = phi %struct._object* [ %call82, %if.end.86 ], [ %call125, %do.body.130 ], [ %call125, %if.else.137 ]
  %one.0 = phi %struct._object* [ null, %if.end.86 ], [ %call90, %do.body.130 ], [ %call90, %if.else.137 ]
  %call144 = tail call i32 @PyObject_RichCompareBool(%struct._object* %vv.1, %struct._object* %ww.2, i32 %op.addr.0) #2, !dbg !1499
  tail call void @llvm.dbg.value(metadata i32 %call144, i64 0, metadata !675, metadata !1036), !dbg !1368
  %cmp145 = icmp slt i32 %call144, 0, !dbg !1500
  br i1 %cmp145, label %do.body.151, label %if.end.148, !dbg !1502

if.end.148:                                       ; preds = %if.end.143
  %conv149 = sext i32 %call144 to i64, !dbg !1503
  %call150 = tail call %struct._object* @PyBool_FromLong(i64 %conv149) #2, !dbg !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %call150, i64 0, metadata !687, metadata !1036), !dbg !1438
  br label %do.body.151, !dbg !1505

do.body.151:                                      ; preds = %if.end.122, %if.end.106, %if.end.148, %if.end.143
  %ww.3 = phi %struct._object* [ %ww.2, %if.end.143 ], [ %ww.2, %if.end.148 ], [ %call95, %if.end.122 ], [ %call95, %if.end.106 ]
  %vv.2 = phi %struct._object* [ %vv.1, %if.end.143 ], [ %vv.1, %if.end.148 ], [ %call107, %if.end.122 ], [ %call82, %if.end.106 ]
  %one.1 = phi %struct._object* [ %one.0, %if.end.143 ], [ %one.0, %if.end.148 ], [ %call90, %if.end.122 ], [ %call90, %if.end.106 ]
  %result.0 = phi %struct._object* [ null, %if.end.143 ], [ %call150, %if.end.148 ], [ null, %if.end.122 ], [ null, %if.end.106 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %vv.2, i64 0, metadata !700, metadata !1036), !dbg !1506
  %cmp152 = icmp eq %struct._object* %vv.2, null, !dbg !1508
  br i1 %cmp152, label %if.end.168, label %do.body.155, !dbg !1509

do.body.155:                                      ; preds = %if.then.89, %if.end.94, %do.body.151
  %result.0356 = phi %struct._object* [ %result.0, %do.body.151 ], [ null, %if.end.94 ], [ null, %if.then.89 ]
  %one.1355 = phi %struct._object* [ %one.1, %do.body.151 ], [ %call90, %if.end.94 ], [ null, %if.then.89 ]
  %vv.2354 = phi %struct._object* [ %vv.2, %do.body.151 ], [ %call82, %if.end.94 ], [ %call82, %if.then.89 ]
  %ww.3353 = phi %struct._object* [ %ww.3, %do.body.151 ], [ %ww.0, %if.end.94 ], [ %ww.0, %if.then.89 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %vv.2, i64 0, metadata !702, metadata !1036), !dbg !1510
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %vv.2354, i64 0, i32 0, !dbg !1512
  %22 = load i64, i64* %ob_refcnt157, align 8, !dbg !1512, !tbaa !1074
  %dec158 = add i64 %22, -1, !dbg !1512
  store i64 %dec158, i64* %ob_refcnt157, align 8, !dbg !1512, !tbaa !1074
  %cmp159 = icmp eq i64 %dec158, 0, !dbg !1512
  br i1 %cmp159, label %if.else.162, label %if.end.168, !dbg !1514

if.else.162:                                      ; preds = %do.body.155
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %vv.2354, i64 0, i32 1, !dbg !1515
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8, !dbg !1515, !tbaa !1056
  %tp_dealloc164 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1515
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc164, align 8, !dbg !1515, !tbaa !1142
  tail call void %24(%struct._object* %vv.2354) #2, !dbg !1515
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.162, %do.body.155, %do.body.151
  %result.0349 = phi %struct._object* [ %result.0356, %if.else.162 ], [ %result.0356, %do.body.155 ], [ %result.0, %do.body.151 ]
  %one.1348 = phi %struct._object* [ %one.1355, %if.else.162 ], [ %one.1355, %do.body.155 ], [ %one.1, %do.body.151 ]
  %ww.3347 = phi %struct._object* [ %ww.3353, %if.else.162 ], [ %ww.3353, %do.body.155 ], [ %ww.3, %do.body.151 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %ww.3, i64 0, metadata !705, metadata !1036), !dbg !1517
  %cmp173 = icmp eq %struct._object* %ww.3347, null, !dbg !1519
  br i1 %cmp173, label %if.end.189, label %do.body.176, !dbg !1520

do.body.176:                                      ; preds = %if.end.80, %if.end.168
  %ww.3347365 = phi %struct._object* [ %ww.3347, %if.end.168 ], [ %ww.0, %if.end.80 ]
  %one.1348364 = phi %struct._object* [ %one.1348, %if.end.168 ], [ null, %if.end.80 ]
  %result.0349363 = phi %struct._object* [ %result.0349, %if.end.168 ], [ null, %if.end.80 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %ww.3, i64 0, metadata !707, metadata !1036), !dbg !1521
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %ww.3347365, i64 0, i32 0, !dbg !1523
  %25 = load i64, i64* %ob_refcnt178, align 8, !dbg !1523, !tbaa !1074
  %dec179 = add i64 %25, -1, !dbg !1523
  store i64 %dec179, i64* %ob_refcnt178, align 8, !dbg !1523, !tbaa !1074
  %cmp180 = icmp eq i64 %dec179, 0, !dbg !1523
  br i1 %cmp180, label %if.else.183, label %if.end.189, !dbg !1525

if.else.183:                                      ; preds = %do.body.176
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %ww.3347365, i64 0, i32 1, !dbg !1526
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8, !dbg !1526, !tbaa !1056
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 4, !dbg !1526
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8, !dbg !1526, !tbaa !1142
  tail call void %27(%struct._object* %ww.3347365) #2, !dbg !1526
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.183, %do.body.176, %if.end.168
  %one.1348360 = phi %struct._object* [ %one.1348364, %if.else.183 ], [ %one.1348364, %do.body.176 ], [ %one.1348, %if.end.168 ]
  %result.0349359 = phi %struct._object* [ %result.0349363, %if.else.183 ], [ %result.0349363, %do.body.176 ], [ %result.0349, %if.end.168 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %one.1, i64 0, metadata !710, metadata !1036), !dbg !1528
  %cmp194 = icmp eq %struct._object* %one.1348360, null, !dbg !1530
  br i1 %cmp194, label %cleanup.219, label %do.body.197, !dbg !1531

do.body.197:                                      ; preds = %if.end.189
  tail call void @llvm.dbg.value(metadata %struct._object* %one.1, i64 0, metadata !712, metadata !1036), !dbg !1532
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %one.1348360, i64 0, i32 0, !dbg !1534
  %28 = load i64, i64* %ob_refcnt199, align 8, !dbg !1534, !tbaa !1074
  %dec200 = add i64 %28, -1, !dbg !1534
  store i64 %dec200, i64* %ob_refcnt199, align 8, !dbg !1534, !tbaa !1074
  %cmp201 = icmp eq i64 %dec200, 0, !dbg !1534
  br i1 %cmp201, label %if.else.204, label %cleanup.219, !dbg !1536

if.else.204:                                      ; preds = %do.body.197
  %ob_type205 = getelementptr inbounds %struct._object, %struct._object* %one.1348360, i64 0, i32 1, !dbg !1537
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type205, align 8, !dbg !1537, !tbaa !1056
  %tp_dealloc206 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !1537
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc206, align 8, !dbg !1537, !tbaa !1142
  tail call void %30(%struct._object* %one.1348360) #2, !dbg !1537
  br label %cleanup.219

cleanup.219.thread:                               ; preds = %if.then.35, %if.then.44, %if.then.50, %lor.lhs.false.60, %if.end.56, %if.end.65
  %j.0.ph = phi double [ 1.000000e+00, %if.end.65 ], [ 2.000000e+00, %if.end.56 ], [ 2.000000e+00, %lor.lhs.false.60 ], [ %call51, %if.then.50 ], [ %mul, %if.then.44 ], [ %conv37, %if.then.35 ]
  %i.1.ph = phi double [ 2.000000e+00, %if.end.65 ], [ 1.000000e+00, %if.end.56 ], [ 1.000000e+00, %lor.lhs.false.60 ], [ %1, %if.then.50 ], [ %conv45, %if.then.44 ], [ %conv36, %if.then.35 ]
  %op.addr.1.ph = phi i32 [ %op.addr.0, %if.end.65 ], [ %op.addr.0, %if.end.56 ], [ %op.addr.0, %lor.lhs.false.60 ], [ %op, %if.then.50 ], [ %op, %if.then.44 ], [ %op, %if.then.35 ]
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !1539
  br label %Compare

cleanup.219:                                      ; preds = %if.then.73, %if.else.204, %do.body.197, %if.end.189
  %result.0349359367 = phi %struct._object* [ %result.0349359, %if.else.204 ], [ %result.0349359, %do.body.197 ], [ %result.0349359, %if.end.189 ], [ null, %if.then.73 ]
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !1539
  br label %cleanup.247

Compare:                                          ; preds = %cleanup.219.thread, %if.then.12, %if.then
  %j.1 = phi double [ %4, %if.then ], [ 0.000000e+00, %if.then.12 ], [ %j.0.ph, %cleanup.219.thread ]
  %i.2 = phi double [ %1, %if.then ], [ %1, %if.then.12 ], [ %i.1.ph, %cleanup.219.thread ]
  %op.addr.2 = phi i32 [ %op, %if.then ], [ %op, %if.then.12 ], [ %op.addr.1.ph, %cleanup.219.thread ]
  switch i32 %op.addr.2, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.229
    i32 1, label %sw.bb.232
    i32 5, label %sw.bb.235
    i32 0, label %sw.bb.238
    i32 4, label %sw.bb.241
  ], !dbg !1541

sw.bb:                                            ; preds = %Compare
  %cmp227 = fcmp oeq double %i.2, %j.1, !dbg !1542
  %conv228 = zext i1 %cmp227 to i64, !dbg !1542
  br label %sw.epilog, !dbg !1544

sw.bb.229:                                        ; preds = %Compare
  %cmp230 = fcmp une double %i.2, %j.1, !dbg !1545
  %conv231 = zext i1 %cmp230 to i64, !dbg !1545
  br label %sw.epilog, !dbg !1546

sw.bb.232:                                        ; preds = %Compare
  %cmp233 = fcmp ole double %i.2, %j.1, !dbg !1547
  %conv234 = zext i1 %cmp233 to i64, !dbg !1547
  br label %sw.epilog, !dbg !1548

sw.bb.235:                                        ; preds = %Compare
  %cmp236 = fcmp oge double %i.2, %j.1, !dbg !1549
  %conv237 = zext i1 %cmp236 to i64, !dbg !1549
  br label %sw.epilog, !dbg !1550

sw.bb.238:                                        ; preds = %Compare
  %cmp239 = fcmp olt double %i.2, %j.1, !dbg !1551
  %conv240 = zext i1 %cmp239 to i64, !dbg !1551
  br label %sw.epilog, !dbg !1552

sw.bb.241:                                        ; preds = %Compare
  %cmp242 = fcmp ogt double %i.2, %j.1, !dbg !1553
  %conv243 = zext i1 %cmp242 to i64, !dbg !1553
  br label %sw.epilog, !dbg !1554

sw.epilog:                                        ; preds = %Compare, %sw.bb.241, %sw.bb.238, %sw.bb.235, %sw.bb.232, %sw.bb.229, %sw.bb
  %r.4 = phi i64 [ 0, %Compare ], [ %conv243, %sw.bb.241 ], [ %conv240, %sw.bb.238 ], [ %conv237, %sw.bb.235 ], [ %conv234, %sw.bb.232 ], [ %conv231, %sw.bb.229 ], [ %conv228, %sw.bb ]
  %call245 = tail call %struct._object* @PyBool_FromLong(i64 %r.4) #2, !dbg !1555
  br label %cleanup.247, !dbg !1556

Unimplemented:                                    ; preds = %if.else.18, %if.then.12
  %31 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1557, !tbaa !1074
  %inc246 = add i64 %31, 1, !dbg !1557
  store i64 %inc246, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !1557, !tbaa !1074
  br label %cleanup.247, !dbg !1557

cleanup.247:                                      ; preds = %cleanup.219, %Unimplemented, %sw.epilog
  %retval.2 = phi %struct._object* [ %call245, %sw.epilog ], [ %result.0349359367, %cleanup.219 ], [ @_Py_NotImplementedStruct, %Unimplemented ]
  ret %struct._object* %retval.2, !dbg !1558
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #1 {
entry:
  %x.i = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !941, metadata !1036), !dbg !1559
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !942, metadata !1036), !dbg !1560
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !943, metadata !1036), !dbg !1561
  %0 = bitcast %struct._object** %x to i8*, !dbg !1562
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1562
  tail call void @llvm.dbg.value(metadata !400, i64 0, metadata !944, metadata !1036), !dbg !1563
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object** %x, align 8, !dbg !1563, !tbaa !1046
  %cmp = icmp eq %struct._typeobject* %type, @PyFloat_Type, !dbg !1564
  br i1 %cmp, label %if.end, label %if.then, !dbg !1566

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !947, metadata !1036) #2, !dbg !1567
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !948, metadata !1036) #2, !dbg !1569
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !949, metadata !1036) #2, !dbg !1570
  tail call void @llvm.dbg.value(metadata %struct._typeobject* @PyFloat_Type, i64 0, metadata !941, metadata !1036) #2, !dbg !1571
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !942, metadata !1036) #2, !dbg !1573
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !943, metadata !1036) #2, !dbg !1574
  %1 = bitcast %struct._object** %x.i to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1575
  tail call void @llvm.dbg.value(metadata !400, i64 0, metadata !944, metadata !1036) #2, !dbg !1576
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %struct._object** %x.i, align 8, !dbg !1576, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object** %x.i, i64 0, metadata !944, metadata !1036) #2, !dbg !1576
  %call1.i = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @float_new.kwlist, i64 0, i64 0), %struct._object** nonnull %x.i) #2, !dbg !1577
  %tobool.i = icmp eq i32 %call1.i, 0, !dbg !1577
  br i1 %tobool.i, label %float_new.exit.thread, label %if.end.3.i, !dbg !1579

float_new.exit.thread:                            ; preds = %if.then
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1580
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.14, i64 0, metadata !950, metadata !1036) #2, !dbg !1581
  br label %cleanup, !dbg !1582

if.end.3.i:                                       ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct._object** %x.i, i64 0, metadata !944, metadata !1036) #2, !dbg !1576
  %2 = load %struct._object*, %struct._object** %x.i, align 8, !dbg !1583, !tbaa !1046
  %ob_type.i.13 = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1583
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.13, align 8, !dbg !1583, !tbaa !1056
  %cmp4.i = icmp eq %struct._typeobject* %3, @PyUnicode_Type, !dbg !1583
  br i1 %cmp4.i, label %if.then.5.i, label %if.end.7.i, !dbg !1585

if.then.5.i:                                      ; preds = %if.end.3.i
  %call6.i = call %struct._object* @PyFloat_FromString(%struct._object* %2) #2, !dbg !1586
  br label %float_new.exit, !dbg !1587

if.end.7.i:                                       ; preds = %if.end.3.i
  %call8.i = call %struct._object* @PyNumber_Float(%struct._object* %2) #2, !dbg !1588
  br label %float_new.exit, !dbg !1589

float_new.exit:                                   ; preds = %if.then.5.i, %if.end.7.i
  %retval.0.i.14 = phi %struct._object* [ %call6.i, %if.then.5.i ], [ %call8.i, %if.end.7.i ], !dbg !1590
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1580
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.14, i64 0, metadata !950, metadata !1036) #2, !dbg !1581
  %cmp.i = icmp eq %struct._object* %retval.0.i.14, null, !dbg !1591
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1582

if.end.i:                                         ; preds = %float_new.exit
  %tp_alloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1593
  %4 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc.i, align 8, !dbg !1593, !tbaa !1594
  %call2.i = call %struct._object* %4(%struct._typeobject* %type, i64 0) #2, !dbg !1595
  call void @llvm.dbg.value(metadata %struct._object* %call2.i, i64 0, metadata !951, metadata !1036) #2, !dbg !1596
  %cmp3.i = icmp eq %struct._object* %call2.i, null, !dbg !1597
  br i1 %cmp3.i, label %do.body.i, label %if.end.9.i, !dbg !1598

do.body.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.14, i64 0, metadata !952, metadata !1036) #2, !dbg !1599
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.14, i64 0, i32 0, !dbg !1601
  %5 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1601, !tbaa !1074
  %dec.i = add i64 %5, -1, !dbg !1601
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1601, !tbaa !1074
  %cmp6.i = icmp eq i64 %dec.i, 0, !dbg !1601
  br i1 %cmp6.i, label %if.else.i, label %cleanup, !dbg !1603

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.14, i64 0, i32 1, !dbg !1604
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1604, !tbaa !1056
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1604
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1604, !tbaa !1142
  call void %7(%struct._object* %retval.0.i.14) #2, !dbg !1604
  br label %cleanup, !dbg !1606

if.end.9.i:                                       ; preds = %if.end.i
  %8 = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.14, i64 1, i32 0, !dbg !1607
  %9 = load i64, i64* %8, align 8, !dbg !1607, !tbaa !1077
  %10 = getelementptr inbounds %struct._object, %struct._object* %call2.i, i64 1, i32 0, !dbg !1608
  store i64 %9, i64* %10, align 8, !dbg !1608, !tbaa !1077
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.14, i64 0, metadata !956, metadata !1036) #2, !dbg !1609
  %ob_refcnt14.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.14, i64 0, i32 0, !dbg !1611
  %11 = load i64, i64* %ob_refcnt14.i, align 8, !dbg !1611, !tbaa !1074
  %dec15.i = add i64 %11, -1, !dbg !1611
  store i64 %dec15.i, i64* %ob_refcnt14.i, align 8, !dbg !1611, !tbaa !1074
  %cmp16.i = icmp eq i64 %dec15.i, 0, !dbg !1611
  br i1 %cmp16.i, label %if.else.18.i, label %cleanup, !dbg !1613

if.else.18.i:                                     ; preds = %if.end.9.i
  %ob_type19.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.14, i64 0, i32 1, !dbg !1614
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type19.i, align 8, !dbg !1614, !tbaa !1056
  %tp_dealloc20.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1614
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20.i, align 8, !dbg !1614, !tbaa !1142
  call void %13(%struct._object* %retval.0.i.14) #2, !dbg !1614
  br label %cleanup, !dbg !1606

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %x, i64 0, metadata !944, metadata !1036), !dbg !1563
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @float_new.kwlist, i64 0, i64 0), %struct._object** nonnull %x) #2, !dbg !1616
  %tobool = icmp eq i32 %call1, 0, !dbg !1616
  br i1 %tobool, label %cleanup, label %if.end.3, !dbg !1617

if.end.3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %x, i64 0, metadata !944, metadata !1036), !dbg !1563
  %14 = load %struct._object*, %struct._object** %x, align 8, !dbg !1618, !tbaa !1046
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !1618
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1618, !tbaa !1056
  %cmp4 = icmp eq %struct._typeobject* %15, @PyUnicode_Type, !dbg !1618
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1619

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyFloat_FromString(%struct._object* %14), !dbg !1620
  br label %cleanup, !dbg !1621

if.end.7:                                         ; preds = %if.end.3
  %call8 = call %struct._object* @PyNumber_Float(%struct._object* %14) #2, !dbg !1622
  br label %cleanup, !dbg !1623

cleanup:                                          ; preds = %if.else.18.i, %if.end.9.i, %if.else.i, %do.body.i, %float_new.exit, %float_new.exit.thread, %if.end, %if.end.7, %if.then.5
  %retval.0 = phi %struct._object* [ %call6, %if.then.5 ], [ %call8, %if.end.7 ], [ null, %if.end ], [ null, %float_new.exit ], [ null, %do.body.i ], [ null, %if.else.i ], [ %call2.i, %if.end.9.i ], [ %call2.i, %if.else.18.i ], [ null, %float_new.exit.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1624
  ret %struct._object* %retval.0, !dbg !1624
}

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Init() #1 {
entry:
  %x = alloca double, align 8
  %y = alloca float, align 4
  %0 = bitcast double* %x to i8*, !dbg !1625
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1625
  tail call void @llvm.dbg.value(metadata double 0x433FFF0102030405, i64 0, metadata !457, metadata !1036), !dbg !1626
  store double 0x433FFF0102030405, double* %x, align 8, !dbg !1626, !tbaa !1454
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 8) #10, !dbg !1627
  %cmp = icmp eq i32 %call, 0, !dbg !1629
  br i1 %cmp, label %if.then, label %if.else, !dbg !1630

if.then:                                          ; preds = %entry
  store i32 1, i32* @detected_double_format, align 4, !dbg !1631, !tbaa !1210
  br label %if.end.5, !dbg !1632

if.else:                                          ; preds = %entry
  %call1 = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 8) #10, !dbg !1633
  %cmp2 = icmp eq i32 %call1, 0, !dbg !1635
  br i1 %cmp2, label %if.then.3, label %if.else.4, !dbg !1636

if.then.3:                                        ; preds = %if.else
  store i32 2, i32* @detected_double_format, align 4, !dbg !1637, !tbaa !1210
  br label %if.end.5, !dbg !1638

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* @detected_double_format, align 4, !dbg !1639, !tbaa !1210
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.else.4, %if.then
  %1 = phi i32 [ 2, %if.then.3 ], [ 0, %if.else.4 ], [ 1, %if.then ], !dbg !1640
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1641
  %2 = bitcast float* %y to i8*, !dbg !1642
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1642
  tail call void @llvm.dbg.value(metadata float 0x416FE02040000000, i64 0, metadata !459, metadata !1036), !dbg !1643
  store float 0x416FE02040000000, float* %y, align 4, !dbg !1643, !tbaa !1644
  %call6 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4) #10, !dbg !1646
  %cmp7 = icmp eq i32 %call6, 0, !dbg !1648
  br i1 %cmp7, label %if.then.8, label %if.else.9, !dbg !1649

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* @detected_float_format, align 4, !dbg !1650, !tbaa !1210
  br label %if.end.15, !dbg !1651

if.else.9:                                        ; preds = %if.end.5
  %call10 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #10, !dbg !1652
  %cmp11 = icmp eq i32 %call10, 0, !dbg !1654
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !1655

if.then.12:                                       ; preds = %if.else.9
  store i32 2, i32* @detected_float_format, align 4, !dbg !1656, !tbaa !1210
  br label %if.end.15, !dbg !1657

if.else.13:                                       ; preds = %if.else.9
  store i32 0, i32* @detected_float_format, align 4, !dbg !1658, !tbaa !1210
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.else.13, %if.then.8
  %3 = phi i32 [ 2, %if.then.12 ], [ 0, %if.else.13 ], [ 1, %if.then.8 ], !dbg !1659
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1660
  store i32 %1, i32* @double_format, align 4, !dbg !1661, !tbaa !1210
  store i32 %3, i32* @float_format, align 4, !dbg !1662, !tbaa !1210
  %4 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FloatInfoType, i64 0, i32 1), align 8, !dbg !1663, !tbaa !1199
  %cmp16 = icmp eq i8* %4, null, !dbg !1665
  br i1 %cmp16, label %if.then.17, label %if.end.22, !dbg !1666

if.then.17:                                       ; preds = %if.end.15
  %call18 = tail call i32 @PyStructSequence_InitType2(%struct._typeobject* nonnull @FloatInfoType, %struct.PyStructSequence_Desc* nonnull @floatinfo_desc) #2, !dbg !1667
  %cmp19 = icmp slt i32 %call18, 0, !dbg !1670
  br i1 %cmp19, label %return, label %if.end.22, !dbg !1671

if.end.22:                                        ; preds = %if.then.17, %if.end.15
  br label %return, !dbg !1672

return:                                           ; preds = %if.then.17, %if.end.22
  %retval.0 = phi i32 [ 1, %if.end.22 ], [ 0, %if.then.17 ]
  ret i32 %retval.0, !dbg !1673
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #5

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #4

; Function Attrs: nounwind uwtable
define i32 @PyFloat_ClearFreeList() #1 {
entry:
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1674, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %0, i64 0, metadata !463, metadata !1036), !dbg !1675
  %1 = load i32, i32* @numfree, align 4, !dbg !1676, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !465, metadata !1036), !dbg !1677
  %tobool.6 = icmp eq %struct.PyFloatObject* %0, null, !dbg !1678
  br i1 %tobool.6, label %while.end, label %while.body.preheader, !dbg !1678

while.body.preheader:                             ; preds = %entry
  br label %while.body, !dbg !1679

while.body:                                       ; preds = %while.body.preheader, %while.body
  %f.07 = phi %struct.PyFloatObject* [ %3, %while.body ], [ %0, %while.body.preheader ]
  %ob_type = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %f.07, i64 0, i32 0, i32 1, !dbg !1679
  %2 = bitcast %struct._typeobject** %ob_type to %struct.PyFloatObject**, !dbg !1679
  %3 = load %struct.PyFloatObject*, %struct.PyFloatObject** %2, align 8, !dbg !1679, !tbaa !1056
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %3, i64 0, metadata !464, metadata !1036), !dbg !1681
  %4 = bitcast %struct.PyFloatObject* %f.07 to i8*, !dbg !1682
  tail call void @PyObject_Free(i8* %4) #2, !dbg !1683
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %3, i64 0, metadata !463, metadata !1036), !dbg !1675
  %tobool = icmp eq %struct.PyFloatObject* %3, null, !dbg !1678
  br i1 %tobool, label %while.end.loopexit, label %while.body, !dbg !1678

while.end.loopexit:                               ; preds = %while.body
  br label %while.end, !dbg !1684

while.end:                                        ; preds = %while.end.loopexit, %entry
  store %struct.PyFloatObject* null, %struct.PyFloatObject** @free_list, align 8, !dbg !1684, !tbaa !1046
  store i32 0, i32* @numfree, align 4, !dbg !1685, !tbaa !1061
  ret i32 %1, !dbg !1686
}

declare void @PyObject_Free(i8*) #4

; Function Attrs: nounwind uwtable
define void @PyFloat_Fini() #1 {
entry:
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1687, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %0, i64 0, metadata !463, metadata !1036) #2, !dbg !1689
  %tobool.6.i = icmp eq %struct.PyFloatObject* %0, null, !dbg !1690
  br i1 %tobool.6.i, label %PyFloat_ClearFreeList.exit, label %while.body.i.preheader, !dbg !1690

while.body.i.preheader:                           ; preds = %entry
  br label %while.body.i, !dbg !1691

while.body.i:                                     ; preds = %while.body.i.preheader, %while.body.i
  %f.07.i = phi %struct.PyFloatObject* [ %2, %while.body.i ], [ %0, %while.body.i.preheader ], !dbg !1692
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %f.07.i, i64 0, i32 0, i32 1, !dbg !1691
  %1 = bitcast %struct._typeobject** %ob_type.i to %struct.PyFloatObject**, !dbg !1691
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** %1, align 8, !dbg !1691, !tbaa !1056
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %2, i64 0, metadata !464, metadata !1036) #2, !dbg !1693
  %3 = bitcast %struct.PyFloatObject* %f.07.i to i8*, !dbg !1694
  tail call void @PyObject_Free(i8* %3) #2, !dbg !1695
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %2, i64 0, metadata !463, metadata !1036) #2, !dbg !1689
  %tobool.i = icmp eq %struct.PyFloatObject* %2, null, !dbg !1690
  br i1 %tobool.i, label %PyFloat_ClearFreeList.exit.loopexit, label %while.body.i, !dbg !1690

PyFloat_ClearFreeList.exit.loopexit:              ; preds = %while.body.i
  br label %PyFloat_ClearFreeList.exit, !dbg !1696

PyFloat_ClearFreeList.exit:                       ; preds = %PyFloat_ClearFreeList.exit.loopexit, %entry
  store %struct.PyFloatObject* null, %struct.PyFloatObject** @free_list, align 8, !dbg !1696, !tbaa !1046
  store i32 0, i32* @numfree, align 4, !dbg !1697, !tbaa !1061
  ret void, !dbg !1698
}

; Function Attrs: nounwind uwtable
define void @_PyFloat_DebugMallocStats(%struct._IO_FILE* %out) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %out, i64 0, metadata !473, metadata !1036), !dbg !1699
  %0 = load i32, i32* @numfree, align 4, !dbg !1700, !tbaa !1061
  tail call void @_PyDebugAllocatorStats(%struct._IO_FILE* %out, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %0, i64 24) #2, !dbg !1701
  ret void, !dbg !1702
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Pack4(double %x, i8* nocapture %p, i32 %le) #1 {
entry:
  %e = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !479, metadata !1036), !dbg !1703
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !480, metadata !1036), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 %le, i64 0, metadata !481, metadata !1036), !dbg !1705
  %0 = load i32, i32* @float_format, align 4, !dbg !1706, !tbaa !1210
  %cmp = icmp eq i32 %0, 0, !dbg !1708
  br i1 %cmp, label %if.then, label %if.else.60, !dbg !1709

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %e to i8*, !dbg !1710
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1710
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !488, metadata !1036), !dbg !1711
  %tobool = icmp eq i32 %le, 0, !dbg !1712
  %add.ptr = getelementptr i8, i8* %p, i64 3, !dbg !1714
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !480, metadata !1036), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !488, metadata !1036), !dbg !1711
  %p.add.ptr = select i1 %tobool, i8* %p, i8* %add.ptr, !dbg !1716
  %. = select i1 %tobool, i64 1, i64 -1, !dbg !1716
  %cmp2 = fcmp olt double %x, 0.000000e+00, !dbg !1717
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !482, metadata !1036), !dbg !1719
  %sub = fsub double -0.000000e+00, %x, !dbg !1720
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !479, metadata !1036), !dbg !1703
  %x.addr.0 = select i1 %cmp2, double %sub, double %x, !dbg !1722
  %sign.0 = select i1 %cmp2, i32 128, i32 0, !dbg !1722
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %call = call double @frexp(double %x.addr.0, i32* nonnull %e) #2, !dbg !1724
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !486, metadata !1036), !dbg !1725
  %cmp5 = fcmp oge double %call, 5.000000e-01, !dbg !1726
  %cmp6 = fcmp olt double %call, 1.000000e+00, !dbg !1728
  %or.cond = and i1 %cmp5, %cmp6, !dbg !1729
  br i1 %or.cond, label %if.end.13, label %if.else.8, !dbg !1729

if.else.8:                                        ; preds = %if.then
  %cmp9 = fcmp oeq double %call, 0.000000e+00, !dbg !1730
  br i1 %cmp9, label %if.else.16.thread, label %if.else.11, !dbg !1732

if.else.16.thread:                                ; preds = %if.else.8
  store i32 0, i32* %e, align 4, !dbg !1733, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  br label %if.else.20, !dbg !1735

if.else.11:                                       ; preds = %if.else.8
  %2 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1737, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !1739
  br label %cleanup.thread, !dbg !1740

if.end.13:                                        ; preds = %if.then
  %mul = fmul double %call, 2.000000e+00, !dbg !1741
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !486, metadata !1036), !dbg !1725
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %3 = load i32, i32* %e, align 4, !dbg !1733, !tbaa !1061
  %dec = add i32 %3, -1, !dbg !1733
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !485, metadata !1036), !dbg !1723
  store i32 %dec, i32* %e, align 4, !dbg !1733, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %cmp14 = icmp sgt i32 %dec, 127, !dbg !1742
  br i1 %cmp14, label %cleanup, label %if.else.16, !dbg !1743

if.else.16:                                       ; preds = %if.end.13
  %cmp17 = icmp slt i32 %dec, -126, !dbg !1744
  br i1 %cmp17, label %if.then.18, label %if.else.20, !dbg !1735

if.then.18:                                       ; preds = %if.else.16
  %add = add i32 %3, 125, !dbg !1746
  %call19 = tail call double @ldexp(double %mul, i32 %add) #2, !dbg !1748
  tail call void @llvm.dbg.value(metadata double %call19, i64 0, metadata !486, metadata !1036), !dbg !1725
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !485, metadata !1036), !dbg !1723
  store i32 0, i32* %e, align 4, !dbg !1749, !tbaa !1061
  br label %if.end.29, !dbg !1750

if.else.20:                                       ; preds = %if.else.16.thread, %if.else.16
  %storemerge152156 = phi i32 [ 0, %if.else.16.thread ], [ %dec, %if.else.16 ]
  %f.0153155 = phi double [ %call, %if.else.16.thread ], [ %mul, %if.else.16 ]
  %cmp21 = icmp eq i32 %storemerge152156, 0, !dbg !1751
  %cmp23 = fcmp oeq double %f.0153155, 0.000000e+00, !dbg !1753
  %or.cond109 = and i1 %cmp21, %cmp23, !dbg !1754
  br i1 %or.cond109, label %if.end.29, label %if.then.24, !dbg !1754

if.then.24:                                       ; preds = %if.else.20
  %add25 = add i32 %storemerge152156, 127, !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %add25, i64 0, metadata !485, metadata !1036), !dbg !1723
  store i32 %add25, i32* %e, align 4, !dbg !1755, !tbaa !1061
  %sub26 = fadd double %f.0153155, -1.000000e+00, !dbg !1757
  tail call void @llvm.dbg.value(metadata double %sub26, i64 0, metadata !486, metadata !1036), !dbg !1725
  br label %if.end.29, !dbg !1758

if.end.29:                                        ; preds = %if.then.18, %if.else.20, %if.then.24
  %4 = phi i32 [ 0, %if.then.18 ], [ 0, %if.else.20 ], [ %add25, %if.then.24 ], !dbg !1759
  %f.1 = phi double [ %call19, %if.then.18 ], [ %f.0153155, %if.else.20 ], [ %sub26, %if.then.24 ]
  %mul30 = fmul double %f.1, 8.388608e+06, !dbg !1762
  tail call void @llvm.dbg.value(metadata double %mul30, i64 0, metadata !486, metadata !1036), !dbg !1725
  %add31 = fadd double %mul30, 5.000000e-01, !dbg !1763
  %conv = fptoui double %add31 to i32, !dbg !1764
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !487, metadata !1036), !dbg !1765
  %tobool32 = icmp ugt i32 %conv, 8388607, !dbg !1766
  br i1 %tobool32, label %if.then.33, label %if.end.38, !dbg !1767

if.then.33:                                       ; preds = %if.end.29
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !487, metadata !1036), !dbg !1765
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %inc = add i32 %4, 1, !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !485, metadata !1036), !dbg !1723
  store i32 %inc, i32* %e, align 4, !dbg !1759, !tbaa !1061
  %cmp34 = icmp sgt i32 %inc, 254, !dbg !1768
  br i1 %cmp34, label %cleanup, label %if.end.38, !dbg !1770

if.end.38:                                        ; preds = %if.then.33, %if.end.29
  %5 = phi i32 [ %inc, %if.then.33 ], [ %4, %if.end.29 ], !dbg !1771
  %fbits.0 = phi i32 [ 0, %if.then.33 ], [ %conv, %if.end.29 ]
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %shr40.149 = lshr i32 %5, 1, !dbg !1772
  %or = or i32 %shr40.149, %sign.0, !dbg !1773
  %conv41 = trunc i32 %or to i8, !dbg !1774
  store i8 %conv41, i8* %p.add.ptr, align 1, !dbg !1775, !tbaa !1210
  %add.ptr42 = getelementptr i8, i8* %p.add.ptr, i64 %., !dbg !1776
  tail call void @llvm.dbg.value(metadata i8* %add.ptr42, i64 0, metadata !480, metadata !1036), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !485, metadata !1036), !dbg !1723
  %and = shl i32 %5, 7, !dbg !1777
  %shr44 = lshr i32 %fbits.0, 16, !dbg !1778
  %or45 = or i32 %and, %shr44, !dbg !1779
  %conv46 = trunc i32 %or45 to i8, !dbg !1780
  store i8 %conv46, i8* %add.ptr42, align 1, !dbg !1781, !tbaa !1210
  %add.ptr48 = getelementptr i8, i8* %add.ptr42, i64 %., !dbg !1782
  tail call void @llvm.dbg.value(metadata i8* %add.ptr48, i64 0, metadata !480, metadata !1036), !dbg !1704
  %shr49 = lshr i32 %fbits.0, 8, !dbg !1783
  %conv51 = trunc i32 %shr49 to i8, !dbg !1784
  store i8 %conv51, i8* %add.ptr48, align 1, !dbg !1785, !tbaa !1210
  %add.ptr53 = getelementptr i8, i8* %add.ptr48, i64 %., !dbg !1786
  tail call void @llvm.dbg.value(metadata i8* %add.ptr53, i64 0, metadata !480, metadata !1036), !dbg !1704
  %conv55 = trunc i32 %fbits.0 to i8, !dbg !1787
  store i8 %conv55, i8* %add.ptr53, align 1, !dbg !1788, !tbaa !1210
  br label %cleanup.thread, !dbg !1789

cleanup.thread:                                   ; preds = %if.end.38, %if.else.11
  %retval.0.ph = phi i32 [ -1, %if.else.11 ], [ 0, %if.end.38 ]
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1790
  br label %return

cleanup:                                          ; preds = %if.then.33, %if.end.13
  call void @llvm.lifetime.end(i64 4, i8* %1) #2, !dbg !1790
  br label %Overflow

if.else.60:                                       ; preds = %entry
  %conv61 = fptrunc double %x to float, !dbg !1791
  tail call void @llvm.dbg.value(metadata float %conv61, i64 0, metadata !489, metadata !1036), !dbg !1792
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !491, metadata !1036), !dbg !1793
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !493, metadata !1036), !dbg !1794
  %call63 = tail call i32 @__isinff(float %conv61) #3, !dbg !1795
  %tobool64 = icmp eq i32 %call63, 0, !dbg !1795
  %6 = bitcast float %conv61 to i32, !dbg !1795
  %7 = trunc i32 %6 to i8, !dbg !1798
  %8 = lshr i32 %6, 8, !dbg !1795
  %9 = trunc i32 %8 to i8, !dbg !1798
  %10 = lshr i32 %6, 16, !dbg !1795
  %11 = trunc i32 %10 to i8, !dbg !1798
  %12 = lshr i32 %6, 24, !dbg !1795
  %13 = trunc i32 %12 to i8, !dbg !1798
  br i1 %tobool64, label %if.end.87, label %cond.true.79, !dbg !1795

cond.true.79:                                     ; preds = %if.else.60
  %call80 = tail call i32 @__isinf(double %x) #3, !dbg !1802
  %tobool81 = icmp eq i32 %call80, 0, !dbg !1802
  br i1 %tobool81, label %Overflow, label %if.end.87, !dbg !1802

if.end.87:                                        ; preds = %cond.true.79, %if.else.60
  %cmp88 = icmp ne i32 %0, 2, !dbg !1804
  %tobool91 = icmp ne i32 %le, 0, !dbg !1805
  %or.cond110 = or i1 %tobool91, %cmp88, !dbg !1807
  %or.cond110.not = xor i1 %or.cond110, true, !dbg !1807
  %cmp92 = icmp eq i32 %0, 1
  %or.cond111 = and i1 %tobool91, %cmp92, !dbg !1808
  %or.cond150 = or i1 %or.cond111, %or.cond110.not, !dbg !1807
  %add.ptr97 = getelementptr i8, i8* %p, i64 3, !dbg !1809
  tail call void @llvm.dbg.value(metadata i8* %add.ptr97, i64 0, metadata !480, metadata !1036), !dbg !1704
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !493, metadata !1036), !dbg !1794
  %p.addr.1 = select i1 %or.cond150, i8* %add.ptr97, i8* %p, !dbg !1807
  %incr62.0 = select i1 %or.cond150, i64 -1, i64 1, !dbg !1807
  store i8 %7, i8* %p.addr.1, align 1, !dbg !1811, !tbaa !1210
  %add.ptr102 = getelementptr i8, i8* %p.addr.1, i64 %incr62.0, !dbg !1812
  tail call void @llvm.dbg.value(metadata i8* %add.ptr102, i64 0, metadata !480, metadata !1036), !dbg !1704
  store i8 %9, i8* %add.ptr102, align 1, !dbg !1811, !tbaa !1210
  %add.ptr102.1 = getelementptr i8, i8* %add.ptr102, i64 %incr62.0, !dbg !1812
  tail call void @llvm.dbg.value(metadata i8* %add.ptr102, i64 0, metadata !480, metadata !1036), !dbg !1704
  store i8 %11, i8* %add.ptr102.1, align 1, !dbg !1811, !tbaa !1210
  %add.ptr102.2 = getelementptr i8, i8* %add.ptr102.1, i64 %incr62.0, !dbg !1812
  tail call void @llvm.dbg.value(metadata i8* %add.ptr102, i64 0, metadata !480, metadata !1036), !dbg !1704
  store i8 %13, i8* %add.ptr102.2, align 1, !dbg !1811, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8* %add.ptr102, i64 0, metadata !480, metadata !1036), !dbg !1704
  br label %return

Overflow:                                         ; preds = %cond.true.79, %cleanup
  %14 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1813, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0)) #2, !dbg !1814
  br label %return, !dbg !1815

return:                                           ; preds = %cleanup.thread, %if.end.87, %Overflow
  %retval.2 = phi i32 [ -1, %Overflow ], [ 0, %if.end.87 ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.2, !dbg !1816
}

; Function Attrs: nounwind
declare double @frexp(double, i32* nocapture) #6

; Function Attrs: nounwind
declare double @ldexp(double, i32) #6

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #7

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #7

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Pack8(double %x, i8* nocapture %p, i32 %le) #1 {
entry:
  %e = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata double %x, i64 0, metadata !496, metadata !1036), !dbg !1817
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !497, metadata !1036), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 %le, i64 0, metadata !498, metadata !1036), !dbg !1819
  %0 = load i32, i32* @double_format, align 4, !dbg !1820, !tbaa !1210
  %cmp = icmp eq i32 %0, 0, !dbg !1821
  %1 = bitcast double %x to i64, !dbg !1822
  br i1 %cmp, label %if.then, label %if.else.89, !dbg !1822

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %e to i8*, !dbg !1823
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !506, metadata !1036), !dbg !1824
  %tobool = icmp eq i32 %le, 0, !dbg !1825
  %add.ptr = getelementptr i8, i8* %p, i64 7, !dbg !1827
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !497, metadata !1036), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !506, metadata !1036), !dbg !1824
  %p.add.ptr = select i1 %tobool, i8* %p, i8* %add.ptr, !dbg !1829
  %. = select i1 %tobool, i64 1, i64 -1, !dbg !1829
  %cmp2 = fcmp olt double %x, 0.000000e+00, !dbg !1830
  tail call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !499, metadata !1036), !dbg !1832
  %sub = fsub double -0.000000e+00, %x, !dbg !1833
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !496, metadata !1036), !dbg !1817
  %3 = select i1 %cmp2, double %sub, double %x, !dbg !1835
  %sign.0 = select i1 %cmp2, i32 128, i32 0, !dbg !1835
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %call = call double @frexp(double %3, i32* nonnull %e) #2, !dbg !1837
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !503, metadata !1036), !dbg !1838
  %cmp5 = fcmp oge double %call, 5.000000e-01, !dbg !1839
  %cmp6 = fcmp olt double %call, 1.000000e+00, !dbg !1841
  %or.cond = and i1 %cmp5, %cmp6, !dbg !1842
  br i1 %or.cond, label %if.end.13, label %if.else.8, !dbg !1842

if.else.8:                                        ; preds = %if.then
  %cmp9 = fcmp oeq double %call, 0.000000e+00, !dbg !1843
  br i1 %cmp9, label %if.else.16.thread, label %if.else.11, !dbg !1845

if.else.16.thread:                                ; preds = %if.else.8
  store i32 0, i32* %e, align 4, !dbg !1846, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  br label %if.else.20, !dbg !1848

if.else.11:                                       ; preds = %if.else.8
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1850, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0)) #2, !dbg !1852
  br label %cleanup, !dbg !1853

if.end.13:                                        ; preds = %if.then
  %mul = fmul double %call, 2.000000e+00, !dbg !1854
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !503, metadata !1036), !dbg !1838
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %5 = load i32, i32* %e, align 4, !dbg !1846, !tbaa !1061
  %dec = add i32 %5, -1, !dbg !1846
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !502, metadata !1036), !dbg !1836
  store i32 %dec, i32* %e, align 4, !dbg !1846, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %cmp14 = icmp sgt i32 %dec, 1023, !dbg !1855
  br i1 %cmp14, label %Overflow, label %if.else.16, !dbg !1856

if.else.16:                                       ; preds = %if.end.13
  %cmp17 = icmp slt i32 %dec, -1022, !dbg !1857
  br i1 %cmp17, label %if.then.18, label %if.else.20, !dbg !1848

if.then.18:                                       ; preds = %if.else.16
  %add = add i32 %5, 1021, !dbg !1859
  %call19 = tail call double @ldexp(double %mul, i32 %add) #2, !dbg !1861
  tail call void @llvm.dbg.value(metadata double %call19, i64 0, metadata !503, metadata !1036), !dbg !1838
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !502, metadata !1036), !dbg !1836
  store i32 0, i32* %e, align 4, !dbg !1862, !tbaa !1061
  br label %if.end.29, !dbg !1863

if.else.20:                                       ; preds = %if.else.16.thread, %if.else.16
  %storemerge169173 = phi i32 [ 0, %if.else.16.thread ], [ %dec, %if.else.16 ]
  %f.0170172 = phi double [ %call, %if.else.16.thread ], [ %mul, %if.else.16 ]
  %cmp21 = icmp eq i32 %storemerge169173, 0, !dbg !1864
  %cmp23 = fcmp oeq double %f.0170172, 0.000000e+00, !dbg !1866
  %or.cond110 = and i1 %cmp21, %cmp23, !dbg !1867
  br i1 %or.cond110, label %if.end.29, label %if.then.24, !dbg !1867

if.then.24:                                       ; preds = %if.else.20
  %add25 = add i32 %storemerge169173, 1023, !dbg !1868
  tail call void @llvm.dbg.value(metadata i32 %add25, i64 0, metadata !502, metadata !1036), !dbg !1836
  store i32 %add25, i32* %e, align 4, !dbg !1868, !tbaa !1061
  %sub26 = fadd double %f.0170172, -1.000000e+00, !dbg !1870
  tail call void @llvm.dbg.value(metadata double %sub26, i64 0, metadata !503, metadata !1036), !dbg !1838
  br label %if.end.29, !dbg !1871

if.end.29:                                        ; preds = %if.then.18, %if.else.20, %if.then.24
  %6 = phi i32 [ 0, %if.then.18 ], [ 0, %if.else.20 ], [ %add25, %if.then.24 ], !dbg !1872
  %f.1 = phi double [ %call19, %if.then.18 ], [ %f.0170172, %if.else.20 ], [ %sub26, %if.then.24 ]
  %mul30 = fmul double %f.1, 0x41B0000000000000, !dbg !1877
  tail call void @llvm.dbg.value(metadata double %mul30, i64 0, metadata !503, metadata !1036), !dbg !1838
  %conv = fptoui double %mul30 to i32, !dbg !1878
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !504, metadata !1036), !dbg !1879
  %conv31 = uitofp i32 %conv to double, !dbg !1880
  %sub32 = fsub double %mul30, %conv31, !dbg !1881
  tail call void @llvm.dbg.value(metadata double %sub32, i64 0, metadata !503, metadata !1036), !dbg !1838
  %mul33 = fmul double %sub32, 0x4170000000000000, !dbg !1882
  tail call void @llvm.dbg.value(metadata double %mul33, i64 0, metadata !503, metadata !1036), !dbg !1838
  %add34 = fadd double %mul33, 5.000000e-01, !dbg !1883
  %conv35 = fptoui double %add34 to i32, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %conv35, i64 0, metadata !505, metadata !1036), !dbg !1885
  %tobool36 = icmp ugt i32 %conv35, 16777215, !dbg !1886
  br i1 %tobool36, label %if.then.37, label %if.end.47, !dbg !1887

if.then.37:                                       ; preds = %if.end.29
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !505, metadata !1036), !dbg !1885
  %inc = add i32 %conv, 1, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !504, metadata !1036), !dbg !1879
  %tobool39 = icmp ugt i32 %inc, 268435455, !dbg !1889
  br i1 %tobool39, label %if.then.40, label %if.end.47, !dbg !1890

if.then.40:                                       ; preds = %if.then.37
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !504, metadata !1036), !dbg !1879
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %inc41 = add i32 %6, 1, !dbg !1872
  tail call void @llvm.dbg.value(metadata i32 %inc41, i64 0, metadata !502, metadata !1036), !dbg !1836
  store i32 %inc41, i32* %e, align 4, !dbg !1872, !tbaa !1061
  %cmp42 = icmp sgt i32 %inc41, 2046, !dbg !1891
  br i1 %cmp42, label %Overflow, label %if.end.47, !dbg !1893

if.end.47:                                        ; preds = %if.then.37, %if.then.40, %if.end.29
  %7 = phi i32 [ %inc41, %if.then.40 ], [ %6, %if.then.37 ], [ %6, %if.end.29 ], !dbg !1894
  %fhi.0 = phi i32 [ 0, %if.then.40 ], [ %inc, %if.then.37 ], [ %conv, %if.end.29 ]
  %flo.0 = phi i32 [ 0, %if.then.40 ], [ 0, %if.then.37 ], [ %conv35, %if.end.29 ]
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %shr49.166 = lshr i32 %7, 4, !dbg !1895
  %or = or i32 %shr49.166, %sign.0, !dbg !1896
  %conv50 = trunc i32 %or to i8, !dbg !1897
  store i8 %conv50, i8* %p.add.ptr, align 1, !dbg !1898, !tbaa !1210
  %add.ptr51 = getelementptr i8, i8* %p.add.ptr, i64 %., !dbg !1899
  tail call void @llvm.dbg.value(metadata i8* %add.ptr51, i64 0, metadata !497, metadata !1036), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !502, metadata !1036), !dbg !1836
  %and = shl i32 %7, 4, !dbg !1900
  %shr53 = lshr i32 %fhi.0, 24, !dbg !1901
  %or54 = or i32 %and, %shr53, !dbg !1902
  %conv55 = trunc i32 %or54 to i8, !dbg !1903
  store i8 %conv55, i8* %add.ptr51, align 1, !dbg !1904, !tbaa !1210
  %add.ptr57 = getelementptr i8, i8* %add.ptr51, i64 %., !dbg !1905
  tail call void @llvm.dbg.value(metadata i8* %add.ptr57, i64 0, metadata !497, metadata !1036), !dbg !1818
  %shr58 = lshr i32 %fhi.0, 16, !dbg !1906
  %conv60 = trunc i32 %shr58 to i8, !dbg !1907
  store i8 %conv60, i8* %add.ptr57, align 1, !dbg !1908, !tbaa !1210
  %add.ptr62 = getelementptr i8, i8* %add.ptr57, i64 %., !dbg !1909
  tail call void @llvm.dbg.value(metadata i8* %add.ptr62, i64 0, metadata !497, metadata !1036), !dbg !1818
  %shr63 = lshr i32 %fhi.0, 8, !dbg !1910
  %conv65 = trunc i32 %shr63 to i8, !dbg !1911
  store i8 %conv65, i8* %add.ptr62, align 1, !dbg !1912, !tbaa !1210
  %add.ptr67 = getelementptr i8, i8* %add.ptr62, i64 %., !dbg !1913
  tail call void @llvm.dbg.value(metadata i8* %add.ptr67, i64 0, metadata !497, metadata !1036), !dbg !1818
  %conv69 = trunc i32 %fhi.0 to i8, !dbg !1914
  store i8 %conv69, i8* %add.ptr67, align 1, !dbg !1915, !tbaa !1210
  %add.ptr71 = getelementptr i8, i8* %add.ptr67, i64 %., !dbg !1916
  tail call void @llvm.dbg.value(metadata i8* %add.ptr71, i64 0, metadata !497, metadata !1036), !dbg !1818
  %shr72 = lshr i32 %flo.0, 16, !dbg !1917
  %conv74 = trunc i32 %shr72 to i8, !dbg !1918
  store i8 %conv74, i8* %add.ptr71, align 1, !dbg !1919, !tbaa !1210
  %add.ptr76 = getelementptr i8, i8* %add.ptr71, i64 %., !dbg !1920
  tail call void @llvm.dbg.value(metadata i8* %add.ptr76, i64 0, metadata !497, metadata !1036), !dbg !1818
  %shr77 = lshr i32 %flo.0, 8, !dbg !1921
  %conv79 = trunc i32 %shr77 to i8, !dbg !1922
  store i8 %conv79, i8* %add.ptr76, align 1, !dbg !1923, !tbaa !1210
  %add.ptr81 = getelementptr i8, i8* %add.ptr76, i64 %., !dbg !1924
  tail call void @llvm.dbg.value(metadata i8* %add.ptr81, i64 0, metadata !497, metadata !1036), !dbg !1818
  %conv83 = trunc i32 %flo.0 to i8, !dbg !1925
  store i8 %conv83, i8* %add.ptr81, align 1, !dbg !1926, !tbaa !1210
  br label %cleanup, !dbg !1927

Overflow:                                         ; preds = %if.then.40, %if.end.13
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1928, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #2, !dbg !1929
  br label %cleanup, !dbg !1930

cleanup:                                          ; preds = %Overflow, %if.end.47, %if.else.11
  %retval.0 = phi i32 [ -1, %Overflow ], [ 0, %if.end.47 ], [ -1, %if.else.11 ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1931
  br label %return

if.else.89:                                       ; preds = %entry
  %9 = lshr i64 %1, 56, !dbg !1822
  %10 = trunc i64 %9 to i8, !dbg !1932
  %11 = lshr i64 %1, 48, !dbg !1822
  %12 = trunc i64 %11 to i8, !dbg !1932
  %13 = lshr i64 %1, 40, !dbg !1822
  %14 = trunc i64 %13 to i8, !dbg !1932
  %15 = lshr i64 %1, 32, !dbg !1822
  %16 = trunc i64 %15 to i8, !dbg !1932
  %17 = lshr i64 %1, 24, !dbg !1822
  %18 = trunc i64 %17 to i8, !dbg !1932
  %19 = lshr i64 %1, 16, !dbg !1822
  %20 = trunc i64 %19 to i8, !dbg !1932
  %21 = lshr i64 %1, 8, !dbg !1822
  %22 = trunc i64 %21 to i8, !dbg !1932
  %23 = trunc i64 %1 to i8, !dbg !1932
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !510, metadata !1036), !dbg !1936
  %cmp91 = icmp ne i32 %0, 2, !dbg !1937
  %tobool94 = icmp ne i32 %le, 0, !dbg !1939
  %or.cond111 = or i1 %tobool94, %cmp91, !dbg !1941
  %or.cond111.not = xor i1 %or.cond111, true, !dbg !1941
  %cmp95 = icmp eq i32 %0, 1
  %or.cond112 = and i1 %tobool94, %cmp95, !dbg !1942
  %or.cond167 = or i1 %or.cond112, %or.cond111.not, !dbg !1941
  %add.ptr100 = getelementptr i8, i8* %p, i64 7, !dbg !1943
  tail call void @llvm.dbg.value(metadata i8* %add.ptr100, i64 0, metadata !497, metadata !1036), !dbg !1818
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !510, metadata !1036), !dbg !1936
  %p.addr.1 = select i1 %or.cond167, i8* %add.ptr100, i8* %p, !dbg !1941
  %incr90.0 = select i1 %or.cond167, i64 -1, i64 1, !dbg !1941
  store i8 %23, i8* %p.addr.1, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105 = getelementptr i8, i8* %p.addr.1, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %22, i8* %add.ptr105, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.1 = getelementptr i8, i8* %add.ptr105, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %20, i8* %add.ptr105.1, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.2 = getelementptr i8, i8* %add.ptr105.1, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %18, i8* %add.ptr105.2, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.3 = getelementptr i8, i8* %add.ptr105.2, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %16, i8* %add.ptr105.3, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.4 = getelementptr i8, i8* %add.ptr105.3, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %14, i8* %add.ptr105.4, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.5 = getelementptr i8, i8* %add.ptr105.4, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %12, i8* %add.ptr105.5, align 1, !dbg !1945, !tbaa !1210
  %add.ptr105.6 = getelementptr i8, i8* %add.ptr105.5, i64 %incr90.0, !dbg !1946
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  store i8 %10, i8* %add.ptr105.6, align 1, !dbg !1945, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8* %add.ptr105, i64 0, metadata !497, metadata !1036), !dbg !1818
  br label %return, !dbg !1947

return:                                           ; preds = %if.else.89, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %if.else.89 ]
  ret i32 %retval.1, !dbg !1947
}

; Function Attrs: nounwind uwtable
define double @_PyFloat_Unpack4(i8* nocapture readonly %p, i32 %le) #1 {
entry:
  %buf = alloca float, align 4
  %tmpcast = bitcast float* %buf to [4 x i8]*
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !515, metadata !1036), !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 %le, i64 0, metadata !516, metadata !1036), !dbg !1949
  %0 = load i32, i32* @float_format, align 4, !dbg !1950, !tbaa !1210
  %cmp = icmp eq i32 %0, 0, !dbg !1951
  br i1 %cmp, label %if.then, label %if.else.38, !dbg !1952

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !523, metadata !1036), !dbg !1953
  %tobool = icmp eq i32 %le, 0, !dbg !1954
  %add.ptr = getelementptr i8, i8* %p, i64 3, !dbg !1956
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !515, metadata !1036), !dbg !1948
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !523, metadata !1036), !dbg !1953
  %p.add.ptr = select i1 %tobool, i8* %p, i8* %add.ptr, !dbg !1958
  %. = select i1 %tobool, i64 1, i64 -1, !dbg !1958
  %1 = load i8, i8* %p.add.ptr, align 1, !dbg !1959, !tbaa !1210
  %conv = zext i8 %1 to i32, !dbg !1959
  %and4 = shl nuw nsw i32 %conv, 1, !dbg !1960
  %shl = and i32 %and4, 254, !dbg !1960
  tail call void @llvm.dbg.value(metadata i32 %shl, i64 0, metadata !520, metadata !1036), !dbg !1961
  %add.ptr5 = getelementptr i8, i8* %p.add.ptr, i64 %., !dbg !1962
  tail call void @llvm.dbg.value(metadata i8* %add.ptr5, i64 0, metadata !515, metadata !1036), !dbg !1948
  %2 = load i8, i8* %add.ptr5, align 1, !dbg !1963, !tbaa !1210
  %conv6 = zext i8 %2 to i32, !dbg !1963
  %shr7.92 = lshr i32 %conv6, 7, !dbg !1964
  %or = or i32 %shl, %shr7.92, !dbg !1965
  tail call void @llvm.dbg.value(metadata i32 %or, i64 0, metadata !520, metadata !1036), !dbg !1961
  tail call void @llvm.dbg.value(metadata i32 %shl11, i64 0, metadata !521, metadata !1036), !dbg !1966
  %add.ptr13 = getelementptr i8, i8* %add.ptr5, i64 %., !dbg !1967
  tail call void @llvm.dbg.value(metadata i8* %add.ptr13, i64 0, metadata !515, metadata !1036), !dbg !1948
  %cmp14 = icmp eq i32 %or, 255, !dbg !1968
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !1970

if.then.16:                                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1971, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !1973
  br label %return, !dbg !1974

if.end.17:                                        ; preds = %if.then
  %and10 = shl nuw nsw i32 %conv6, 16, !dbg !1975
  %shl11 = and i32 %and10, 8323072, !dbg !1975
  %4 = load i8, i8* %add.ptr13, align 1, !dbg !1976, !tbaa !1210
  %conv18 = zext i8 %4 to i32, !dbg !1976
  %shl19 = shl nuw nsw i32 %conv18, 8, !dbg !1977
  %or20 = or i32 %shl19, %shl11, !dbg !1978
  tail call void @llvm.dbg.value(metadata i32 %or20, i64 0, metadata !521, metadata !1036), !dbg !1966
  %add.ptr22 = getelementptr i8, i8* %add.ptr13, i64 %., !dbg !1979
  tail call void @llvm.dbg.value(metadata i8* %add.ptr22, i64 0, metadata !515, metadata !1036), !dbg !1948
  %5 = load i8, i8* %add.ptr22, align 1, !dbg !1980, !tbaa !1210
  %conv23 = zext i8 %5 to i32, !dbg !1980
  %or24 = or i32 %or20, %conv23, !dbg !1981
  tail call void @llvm.dbg.value(metadata i32 %or24, i64 0, metadata !521, metadata !1036), !dbg !1966
  %conv25 = uitofp i32 %or24 to double, !dbg !1982
  %div = fmul double %conv25, 0x3E80000000000000, !dbg !1983
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !522, metadata !1036), !dbg !1984
  %cmp26 = icmp eq i32 %or, 0, !dbg !1985
  %add = fadd double %div, 1.000000e+00, !dbg !1987
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !522, metadata !1036), !dbg !1984
  %sub = add nsw i32 %or, -127, !dbg !1989
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !520, metadata !1036), !dbg !1961
  %e.0 = select i1 %cmp26, i32 -126, i32 %sub, !dbg !1990
  %x.0 = select i1 %cmp26, double %div, double %add, !dbg !1990
  %call = tail call double @ldexp(double %x.0, i32 %e.0) #2, !dbg !1991
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !522, metadata !1036), !dbg !1984
  %tobool30 = icmp slt i8 %1, 0, !dbg !1992
  %sub32 = fsub double -0.000000e+00, %call, !dbg !1994
  tail call void @llvm.dbg.value(metadata double %sub32, i64 0, metadata !522, metadata !1036), !dbg !1984
  %sub32.call = select i1 %tobool30, double %sub32, double %call, !dbg !1995
  br label %return, !dbg !1996

if.else.38:                                       ; preds = %entry
  %cmp40 = icmp ne i32 %0, 2, !dbg !1997
  %tobool42 = icmp ne i32 %le, 0, !dbg !1998
  %or.cond = or i1 %tobool42, %cmp40, !dbg !2000
  %or.cond.not = xor i1 %or.cond, true, !dbg !2000
  %cmp43 = icmp eq i32 %0, 1
  %or.cond55 = and i1 %tobool42, %cmp43, !dbg !2001
  %or.cond93 = or i1 %or.cond55, %or.cond.not, !dbg !2000
  br i1 %or.cond93, label %if.then.47, label %if.else.51, !dbg !2000

if.then.47:                                       ; preds = %if.else.38
  %6 = bitcast float* %buf to i8*, !dbg !2002
  call void @llvm.lifetime.start(i64 4, i8* %6) #2, !dbg !2002
  tail call void @llvm.dbg.declare(metadata [4 x i8]* %tmpcast, metadata !526, metadata !1036), !dbg !2003
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 3, !dbg !2004
  tail call void @llvm.dbg.value(metadata i8* %arrayidx, i64 0, metadata !532, metadata !1036), !dbg !2005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !533, metadata !1036), !dbg !2006
  %incdec.ptr = getelementptr i8, i8* %p, i64 1, !dbg !2007
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !515, metadata !1036), !dbg !1948
  %7 = load i8, i8* %p, align 1, !dbg !2011, !tbaa !1210
  %incdec.ptr50 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 2, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr50, i64 0, metadata !532, metadata !1036), !dbg !2005
  store i8 %7, i8* %arrayidx, align 1, !dbg !2013, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !533, metadata !1036), !dbg !2006
  %incdec.ptr.1 = getelementptr i8, i8* %p, i64 2, !dbg !2007
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !515, metadata !1036), !dbg !1948
  %8 = load i8, i8* %incdec.ptr, align 1, !dbg !2011, !tbaa !1210
  %incdec.ptr50.1 = getelementptr [4 x i8], [4 x i8]* %tmpcast, i64 0, i64 1, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr50, i64 0, metadata !532, metadata !1036), !dbg !2005
  store i8 %8, i8* %incdec.ptr50, align 2, !dbg !2013, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !533, metadata !1036), !dbg !2006
  %incdec.ptr.2 = getelementptr i8, i8* %p, i64 3, !dbg !2007
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !515, metadata !1036), !dbg !1948
  %9 = load i8, i8* %incdec.ptr.1, align 1, !dbg !2011, !tbaa !1210
  %incdec.ptr50.2 = bitcast float* %buf to i8*, !dbg !2012
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr50, i64 0, metadata !532, metadata !1036), !dbg !2005
  store i8 %9, i8* %incdec.ptr50.1, align 1, !dbg !2013, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !533, metadata !1036), !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !515, metadata !1036), !dbg !1948
  %10 = load i8, i8* %incdec.ptr.2, align 1, !dbg !2011, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr50, i64 0, metadata !532, metadata !1036), !dbg !2005
  store i8 %10, i8* %incdec.ptr50.2, align 4, !dbg !2013, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !533, metadata !1036), !dbg !2006
  %x39.0.copyload = load float, float* %buf, align 4, !dbg !2014
  tail call void @llvm.dbg.value(metadata float %x39.0.copyload, i64 0, metadata !524, metadata !1036), !dbg !2015
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !2016
  br label %if.end.52, !dbg !2017

if.else.51:                                       ; preds = %if.else.38
  %x39.0..sroa_cast60 = bitcast i8* %p to float*, !dbg !2018
  %x39.0.copyload61 = load float, float* %x39.0..sroa_cast60, align 1, !dbg !2018
  tail call void @llvm.dbg.value(metadata float %x39.0.copyload61, i64 0, metadata !524, metadata !1036), !dbg !2015
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %if.then.47
  %x39.0 = phi float [ %x39.0.copyload, %if.then.47 ], [ %x39.0.copyload61, %if.else.51 ]
  %conv53 = fpext float %x39.0 to double, !dbg !2020
  br label %return

return:                                           ; preds = %if.then.16, %if.end.17, %if.end.52
  %retval.1 = phi double [ %conv53, %if.end.52 ], [ -1.000000e+00, %if.then.16 ], [ %sub32.call, %if.end.17 ]
  ret double %retval.1, !dbg !2021
}

; Function Attrs: nounwind uwtable
define double @_PyFloat_Unpack8(i8* nocapture readonly %p, i32 %le) #1 {
entry:
  %buf = alloca double, align 8
  %tmpcast = bitcast double* %buf to [8 x i8]*
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !536, metadata !1036), !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 %le, i64 0, metadata !537, metadata !1036), !dbg !2023
  %0 = load i32, i32* @double_format, align 4, !dbg !2024, !tbaa !1210
  %cmp = icmp eq i32 %0, 0, !dbg !2025
  br i1 %cmp, label %if.then, label %if.else.60, !dbg !2026

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !545, metadata !1036), !dbg !2027
  %tobool = icmp eq i32 %le, 0, !dbg !2028
  %add.ptr = getelementptr i8, i8* %p, i64 7, !dbg !2030
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !545, metadata !1036), !dbg !2027
  %p.add.ptr = select i1 %tobool, i8* %p, i8* %add.ptr, !dbg !2032
  %. = select i1 %tobool, i64 1, i64 -1, !dbg !2032
  %1 = load i8, i8* %p.add.ptr, align 1, !dbg !2033, !tbaa !1210
  %conv = zext i8 %1 to i32, !dbg !2033
  %and4 = shl nuw nsw i32 %conv, 4, !dbg !2034
  %shl = and i32 %and4, 2032, !dbg !2034
  tail call void @llvm.dbg.value(metadata i32 %shl, i64 0, metadata !541, metadata !1036), !dbg !2035
  %add.ptr5 = getelementptr i8, i8* %p.add.ptr, i64 %., !dbg !2036
  tail call void @llvm.dbg.value(metadata i8* %add.ptr5, i64 0, metadata !536, metadata !1036), !dbg !2022
  %2 = load i8, i8* %add.ptr5, align 1, !dbg !2037, !tbaa !1210
  %conv6 = zext i8 %2 to i32, !dbg !2037
  %shr7.130 = lshr i32 %conv6, 4, !dbg !2038
  %or = or i32 %shl, %shr7.130, !dbg !2039
  tail call void @llvm.dbg.value(metadata i32 %or, i64 0, metadata !541, metadata !1036), !dbg !2035
  tail call void @llvm.dbg.value(metadata i32 %shl11, i64 0, metadata !542, metadata !1036), !dbg !2040
  %add.ptr13 = getelementptr i8, i8* %add.ptr5, i64 %., !dbg !2041
  tail call void @llvm.dbg.value(metadata i8* %add.ptr13, i64 0, metadata !536, metadata !1036), !dbg !2022
  %cmp14 = icmp eq i32 %or, 2047, !dbg !2042
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !2044

if.then.16:                                       ; preds = %if.then
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2045, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0)) #2, !dbg !2047
  br label %return, !dbg !2048

if.end.17:                                        ; preds = %if.then
  %and10 = shl nuw i32 %conv6, 24, !dbg !2049
  %shl11 = and i32 %and10, 251658240, !dbg !2049
  %4 = load i8, i8* %add.ptr13, align 1, !dbg !2050, !tbaa !1210
  %conv18 = zext i8 %4 to i32, !dbg !2050
  %shl19 = shl nuw nsw i32 %conv18, 16, !dbg !2051
  %or20 = or i32 %shl19, %shl11, !dbg !2052
  tail call void @llvm.dbg.value(metadata i32 %or20, i64 0, metadata !542, metadata !1036), !dbg !2040
  %add.ptr22 = getelementptr i8, i8* %add.ptr13, i64 %., !dbg !2053
  tail call void @llvm.dbg.value(metadata i8* %add.ptr22, i64 0, metadata !536, metadata !1036), !dbg !2022
  %5 = load i8, i8* %add.ptr22, align 1, !dbg !2054, !tbaa !1210
  %conv23 = zext i8 %5 to i32, !dbg !2054
  %shl24 = shl nuw nsw i32 %conv23, 8, !dbg !2055
  %or25 = or i32 %or20, %shl24, !dbg !2056
  tail call void @llvm.dbg.value(metadata i32 %or25, i64 0, metadata !542, metadata !1036), !dbg !2040
  %add.ptr27 = getelementptr i8, i8* %add.ptr22, i64 %., !dbg !2057
  tail call void @llvm.dbg.value(metadata i8* %add.ptr27, i64 0, metadata !536, metadata !1036), !dbg !2022
  %6 = load i8, i8* %add.ptr27, align 1, !dbg !2058, !tbaa !1210
  %conv28 = zext i8 %6 to i32, !dbg !2058
  %or29 = or i32 %or25, %conv28, !dbg !2059
  tail call void @llvm.dbg.value(metadata i32 %or29, i64 0, metadata !542, metadata !1036), !dbg !2040
  %add.ptr31 = getelementptr i8, i8* %add.ptr27, i64 %., !dbg !2060
  tail call void @llvm.dbg.value(metadata i8* %add.ptr31, i64 0, metadata !536, metadata !1036), !dbg !2022
  %7 = load i8, i8* %add.ptr31, align 1, !dbg !2061, !tbaa !1210
  %conv32 = zext i8 %7 to i32, !dbg !2061
  %shl33 = shl nuw nsw i32 %conv32, 16, !dbg !2062
  tail call void @llvm.dbg.value(metadata i32 %shl33, i64 0, metadata !543, metadata !1036), !dbg !2063
  %add.ptr35 = getelementptr i8, i8* %add.ptr31, i64 %., !dbg !2064
  tail call void @llvm.dbg.value(metadata i8* %add.ptr35, i64 0, metadata !536, metadata !1036), !dbg !2022
  %8 = load i8, i8* %add.ptr35, align 1, !dbg !2065, !tbaa !1210
  %conv36 = zext i8 %8 to i32, !dbg !2065
  %shl37 = shl nuw nsw i32 %conv36, 8, !dbg !2066
  %or38 = or i32 %shl37, %shl33, !dbg !2067
  tail call void @llvm.dbg.value(metadata i32 %or38, i64 0, metadata !543, metadata !1036), !dbg !2063
  %add.ptr40 = getelementptr i8, i8* %add.ptr35, i64 %., !dbg !2068
  tail call void @llvm.dbg.value(metadata i8* %add.ptr40, i64 0, metadata !536, metadata !1036), !dbg !2022
  %9 = load i8, i8* %add.ptr40, align 1, !dbg !2069, !tbaa !1210
  %conv41 = zext i8 %9 to i32, !dbg !2069
  %or42 = or i32 %or38, %conv41, !dbg !2070
  tail call void @llvm.dbg.value(metadata i32 %or42, i64 0, metadata !543, metadata !1036), !dbg !2063
  %conv43 = uitofp i32 %or29 to double, !dbg !2071
  %conv44 = uitofp i32 %or42 to double, !dbg !2072
  %div = fmul double %conv44, 0x3E70000000000000, !dbg !2073
  %add = fadd double %conv43, %div, !dbg !2074
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !544, metadata !1036), !dbg !2075
  %div45 = fmul double %add, 0x3E30000000000000, !dbg !2076
  tail call void @llvm.dbg.value(metadata double %div45, i64 0, metadata !544, metadata !1036), !dbg !2075
  %cmp46 = icmp eq i32 %or, 0, !dbg !2077
  %add49 = fadd double %div45, 1.000000e+00, !dbg !2079
  tail call void @llvm.dbg.value(metadata double %add49, i64 0, metadata !544, metadata !1036), !dbg !2075
  %sub = add nsw i32 %or, -1023, !dbg !2081
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !541, metadata !1036), !dbg !2035
  %e.0 = select i1 %cmp46, i32 -1022, i32 %sub, !dbg !2082
  %x.0 = select i1 %cmp46, double %div45, double %add49, !dbg !2082
  %call = tail call double @ldexp(double %x.0, i32 %e.0) #2, !dbg !2083
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !544, metadata !1036), !dbg !2075
  %tobool51 = icmp slt i8 %1, 0, !dbg !2084
  %sub53 = fsub double -0.000000e+00, %call, !dbg !2086
  tail call void @llvm.dbg.value(metadata double %sub53, i64 0, metadata !544, metadata !1036), !dbg !2075
  %sub53.call = select i1 %tobool51, double %sub53, double %call, !dbg !2087
  br label %return, !dbg !2088

if.else.60:                                       ; preds = %entry
  %cmp62 = icmp ne i32 %0, 2, !dbg !2089
  %tobool64 = icmp ne i32 %le, 0, !dbg !2090
  %or.cond = or i1 %tobool64, %cmp62, !dbg !2092
  %or.cond.not = xor i1 %or.cond, true, !dbg !2092
  %cmp65 = icmp eq i32 %0, 1
  %or.cond76 = and i1 %tobool64, %cmp65, !dbg !2093
  %or.cond131 = or i1 %or.cond76, %or.cond.not, !dbg !2092
  br i1 %or.cond131, label %if.then.69, label %if.else.73, !dbg !2092

if.then.69:                                       ; preds = %if.else.60
  %10 = bitcast double* %buf to i8*, !dbg !2094
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !2094
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %tmpcast, metadata !548, metadata !1036), !dbg !2095
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 7, !dbg !2096
  tail call void @llvm.dbg.value(metadata i8* %arrayidx, i64 0, metadata !554, metadata !1036), !dbg !2097
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr = getelementptr i8, i8* %p, i64 1, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %11 = load i8, i8* %p, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 6, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %11, i8* %arrayidx, align 1, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.1 = getelementptr i8, i8* %p, i64 2, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %12 = load i8, i8* %incdec.ptr, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.1 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 5, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %12, i8* %incdec.ptr72, align 2, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.2 = getelementptr i8, i8* %p, i64 3, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %13 = load i8, i8* %incdec.ptr.1, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.2 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 4, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %13, i8* %incdec.ptr72.1, align 1, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.3 = getelementptr i8, i8* %p, i64 4, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %14 = load i8, i8* %incdec.ptr.2, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.3 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 3, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %14, i8* %incdec.ptr72.2, align 4, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.4 = getelementptr i8, i8* %p, i64 5, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %15 = load i8, i8* %incdec.ptr.3, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.4 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 2, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %15, i8* %incdec.ptr72.3, align 1, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.5 = getelementptr i8, i8* %p, i64 6, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %16 = load i8, i8* %incdec.ptr.4, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.5 = getelementptr [8 x i8], [8 x i8]* %tmpcast, i64 0, i64 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %16, i8* %incdec.ptr72.4, align 2, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %incdec.ptr.6 = getelementptr i8, i8* %p, i64 7, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %17 = load i8, i8* %incdec.ptr.5, align 1, !dbg !2103, !tbaa !1210
  %incdec.ptr72.6 = bitcast double* %buf to i8*, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %17, i8* %incdec.ptr72.5, align 1, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !536, metadata !1036), !dbg !2022
  %18 = load i8, i8* %incdec.ptr.6, align 1, !dbg !2103, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr72, i64 0, metadata !554, metadata !1036), !dbg !2097
  store i8 %18, i8* %incdec.ptr72.6, align 8, !dbg !2105, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !555, metadata !1036), !dbg !2098
  %x61.0.copyload = load double, double* %buf, align 8, !dbg !2106
  tail call void @llvm.dbg.value(metadata double %x61.0.copyload, i64 0, metadata !546, metadata !1036), !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !2108
  br label %return, !dbg !2109

if.else.73:                                       ; preds = %if.else.60
  %x61.0..sroa_cast81 = bitcast i8* %p to double*, !dbg !2110
  %x61.0.copyload82 = load double, double* %x61.0..sroa_cast81, align 1, !dbg !2110
  tail call void @llvm.dbg.value(metadata double %x61.0.copyload82, i64 0, metadata !546, metadata !1036), !dbg !2107
  br label %return

return:                                           ; preds = %if.then.69, %if.else.73, %if.then.16, %if.end.17
  %retval.1 = phi double [ -1.000000e+00, %if.then.16 ], [ %sub53.call, %if.end.17 ], [ %x61.0.copyload, %if.then.69 ], [ %x61.0.copyload82, %if.else.73 ]
  ret double %retval.1, !dbg !2112
}

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #4

declare %struct._object* @_PyUnicode_FromASCII(i8*, i64) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8* nocapture) #5

declare void @PyMem_Free(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_add(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2114
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !571, metadata !1036), !dbg !2119
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2125
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2125, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2125
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2125

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2126
  %tobool = icmp eq i32 %call, 0, !dbg !2126
  br i1 %tobool, label %if.else, label %if.then, !dbg !2128

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2129
  %2 = load i64, i64* %1, align 8, !dbg !2129, !tbaa !1077
  br label %if.end.5, !dbg !2129

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !572, metadata !1036), !dbg !2132
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2133
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2134
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2135, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2135
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2135, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !2135
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2135
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2137

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2138
  %5 = bitcast double %call.i to i64, !dbg !2140
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2141
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !2143

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2144
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2144
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2146

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2147, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !2147
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2147, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2114
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !570, metadata !1036), !dbg !2113
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !570, metadata !1036), !dbg !2113
  br label %cleanup, !dbg !2149

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %a.sroa.0.0.54 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2150
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2150, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !2150
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2150

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2151
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2151
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2153

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2154
  %9 = load i64, i64* %8, align 8, !dbg !2154, !tbaa !1077
  br label %if.end.19, !dbg !2154

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !573, metadata !1036), !dbg !2157
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2158
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2159
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2160, !tbaa !1056
  %tp_flags.i.23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !2160
  %11 = load i64, i64* %tp_flags.i.23, align 8, !dbg !2160, !tbaa !1172
  %and.i.24 = and i64 %11, 16777216, !dbg !2160
  %cmp.i.25 = icmp eq i64 %and.i.24, 0, !dbg !2160
  br i1 %cmp.i.25, label %if.else.i.34, label %if.then.i.28, !dbg !2161

if.then.i.28:                                     ; preds = %if.else.14
  %call.i.26 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2162
  %12 = bitcast double %call.i.26 to i64, !dbg !2163
  %cmp1.i.27 = fcmp oeq double %call.i.26, -1.000000e+00, !dbg !2164
  br i1 %cmp1.i.27, label %land.lhs.true.i.31, label %if.end.19, !dbg !2165

land.lhs.true.i.31:                               ; preds = %if.then.i.28
  %call2.i.29 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2166
  %tobool.i.30 = icmp eq %struct._object* %call2.i.29, null, !dbg !2166
  br i1 %tobool.i.30, label %if.end.19, label %cleanup, !dbg !2167

if.else.i.34:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2168, !tbaa !1074
  %inc.i.33 = add i64 %13, 1, !dbg !2168
  store i64 %inc.i.33, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2168, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2120
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !571, metadata !1036), !dbg !2119
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !571, metadata !1036), !dbg !2119
  br label %cleanup, !dbg !2169

if.end.19:                                        ; preds = %if.then.i.28, %land.lhs.true.i.31, %if.then.12
  %b.sroa.0.0.52 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.31 ], [ %12, %if.then.i.28 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !572, metadata !1036), !dbg !2132
  %14 = bitcast i64 %a.sroa.0.0.54 to double, !dbg !2170
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !573, metadata !1036), !dbg !2157
  %15 = bitcast i64 %b.sroa.0.0.52 to double, !dbg !2171
  %add = fadd double %14, %15, !dbg !2172
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !572, metadata !1036), !dbg !2132
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !420, metadata !1036) #2, !dbg !2173
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2175, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %16, i64 0, metadata !421, metadata !1036) #2, !dbg !2176
  %cmp.i.37 = icmp eq %struct.PyFloatObject* %16, null, !dbg !2177
  br i1 %cmp.i.37, label %if.else.i.42, label %if.then.i.39, !dbg !2178

if.then.i.39:                                     ; preds = %if.end.19
  %ob_type.i.38 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i64 0, i32 0, i32 1, !dbg !2179
  %17 = bitcast %struct._typeobject** %ob_type.i.38 to i64*, !dbg !2179
  %18 = load i64, i64* %17, align 8, !dbg !2179, !tbaa !1056
  store i64 %18, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2180, !tbaa !1046
  %19 = load i32, i32* @numfree, align 4, !dbg !2181, !tbaa !1061
  %dec.i = add i32 %19, -1, !dbg !2181
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2181, !tbaa !1061
  br label %if.end.3.i, !dbg !2182

if.else.i.42:                                     ; preds = %if.end.19
  %call.i.40 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2183
  %20 = bitcast i8* %call.i.40 to %struct.PyFloatObject*, !dbg !2184
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %20, i64 0, metadata !421, metadata !1036) #2, !dbg !2176
  %tobool.i.41 = icmp eq i8* %call.i.40, null, !dbg !2185
  br i1 %tobool.i.41, label %if.then.1.i, label %if.end.3.i, !dbg !2186

if.then.1.i:                                      ; preds = %if.else.i.42
  %call2.i.43 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2187
  br label %cleanup, !dbg !2188

if.end.3.i:                                       ; preds = %if.else.i.42, %if.then.i.39
  %op.0.i = phi %struct.PyFloatObject* [ %16, %if.then.i.39 ], [ %20, %if.else.i.42 ], !dbg !2189
  %21 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2190
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2190
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2190, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2190
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2190, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2191
  store double %add, double* %ob_fval.i, align 8, !dbg !2192, !tbaa !1077
  br label %cleanup, !dbg !2193

cleanup:                                          ; preds = %land.lhs.true.i.31, %land.lhs.true.i, %if.end.3.i, %if.then.1.i, %if.else.i.34, %if.else.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.34 ], [ %21, %if.end.3.i ], [ %call2.i.43, %if.then.1.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.31 ]
  ret %struct._object* %retval.0, !dbg !2194
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_sub(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2196
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !586, metadata !1036), !dbg !2201
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2207
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2207, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2207
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2207

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2208
  %tobool = icmp eq i32 %call, 0, !dbg !2208
  br i1 %tobool, label %if.else, label %if.then, !dbg !2210

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2211
  %2 = load i64, i64* %1, align 8, !dbg !2211, !tbaa !1077
  br label %if.end.5, !dbg !2211

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !587, metadata !1036), !dbg !2214
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2216
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2217, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2217
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2217, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !2217
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2217
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2218

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2219
  %5 = bitcast double %call.i to i64, !dbg !2220
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2221
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !2222

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2223
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2223
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2224

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2225, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !2225
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2225, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2196
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !585, metadata !1036), !dbg !2195
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !585, metadata !1036), !dbg !2195
  br label %cleanup, !dbg !2226

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %a.sroa.0.0.54 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2227
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2227, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !2227
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2227

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2228
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2228
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2230

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2231
  %9 = load i64, i64* %8, align 8, !dbg !2231, !tbaa !1077
  br label %if.end.19, !dbg !2231

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !588, metadata !1036), !dbg !2234
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2235
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2236
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2237, !tbaa !1056
  %tp_flags.i.23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !2237
  %11 = load i64, i64* %tp_flags.i.23, align 8, !dbg !2237, !tbaa !1172
  %and.i.24 = and i64 %11, 16777216, !dbg !2237
  %cmp.i.25 = icmp eq i64 %and.i.24, 0, !dbg !2237
  br i1 %cmp.i.25, label %if.else.i.34, label %if.then.i.28, !dbg !2238

if.then.i.28:                                     ; preds = %if.else.14
  %call.i.26 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2239
  %12 = bitcast double %call.i.26 to i64, !dbg !2240
  %cmp1.i.27 = fcmp oeq double %call.i.26, -1.000000e+00, !dbg !2241
  br i1 %cmp1.i.27, label %land.lhs.true.i.31, label %if.end.19, !dbg !2242

land.lhs.true.i.31:                               ; preds = %if.then.i.28
  %call2.i.29 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2243
  %tobool.i.30 = icmp eq %struct._object* %call2.i.29, null, !dbg !2243
  br i1 %tobool.i.30, label %if.end.19, label %cleanup, !dbg !2244

if.else.i.34:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2245, !tbaa !1074
  %inc.i.33 = add i64 %13, 1, !dbg !2245
  store i64 %inc.i.33, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2245, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2202
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !586, metadata !1036), !dbg !2201
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !586, metadata !1036), !dbg !2201
  br label %cleanup, !dbg !2246

if.end.19:                                        ; preds = %if.then.i.28, %land.lhs.true.i.31, %if.then.12
  %b.sroa.0.0.52 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.31 ], [ %12, %if.then.i.28 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !587, metadata !1036), !dbg !2214
  %14 = bitcast i64 %a.sroa.0.0.54 to double, !dbg !2247
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !588, metadata !1036), !dbg !2234
  %15 = bitcast i64 %b.sroa.0.0.52 to double, !dbg !2248
  %sub = fsub double %14, %15, !dbg !2249
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !587, metadata !1036), !dbg !2214
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !420, metadata !1036) #2, !dbg !2250
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2252, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %16, i64 0, metadata !421, metadata !1036) #2, !dbg !2253
  %cmp.i.37 = icmp eq %struct.PyFloatObject* %16, null, !dbg !2254
  br i1 %cmp.i.37, label %if.else.i.42, label %if.then.i.39, !dbg !2255

if.then.i.39:                                     ; preds = %if.end.19
  %ob_type.i.38 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i64 0, i32 0, i32 1, !dbg !2256
  %17 = bitcast %struct._typeobject** %ob_type.i.38 to i64*, !dbg !2256
  %18 = load i64, i64* %17, align 8, !dbg !2256, !tbaa !1056
  store i64 %18, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2257, !tbaa !1046
  %19 = load i32, i32* @numfree, align 4, !dbg !2258, !tbaa !1061
  %dec.i = add i32 %19, -1, !dbg !2258
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2258, !tbaa !1061
  br label %if.end.3.i, !dbg !2259

if.else.i.42:                                     ; preds = %if.end.19
  %call.i.40 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2260
  %20 = bitcast i8* %call.i.40 to %struct.PyFloatObject*, !dbg !2261
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %20, i64 0, metadata !421, metadata !1036) #2, !dbg !2253
  %tobool.i.41 = icmp eq i8* %call.i.40, null, !dbg !2262
  br i1 %tobool.i.41, label %if.then.1.i, label %if.end.3.i, !dbg !2263

if.then.1.i:                                      ; preds = %if.else.i.42
  %call2.i.43 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2264
  br label %cleanup, !dbg !2265

if.end.3.i:                                       ; preds = %if.else.i.42, %if.then.i.39
  %op.0.i = phi %struct.PyFloatObject* [ %16, %if.then.i.39 ], [ %20, %if.else.i.42 ], !dbg !2266
  %21 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2267
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2267
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2267, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2267
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2267, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2268
  store double %sub, double* %ob_fval.i, align 8, !dbg !2269, !tbaa !1077
  br label %cleanup, !dbg !2270

cleanup:                                          ; preds = %land.lhs.true.i.31, %land.lhs.true.i, %if.end.3.i, %if.then.1.i, %if.else.i.34, %if.else.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.34 ], [ %21, %if.end.3.i ], [ %call2.i.43, %if.then.1.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.31 ]
  ret %struct._object* %retval.0, !dbg !2271
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_mul(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2273
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !592, metadata !1036), !dbg !2278
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2284
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2284, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2284
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2284

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2285
  %tobool = icmp eq i32 %call, 0, !dbg !2285
  br i1 %tobool, label %if.else, label %if.then, !dbg !2287

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2288
  %2 = load i64, i64* %1, align 8, !dbg !2288, !tbaa !1077
  br label %if.end.5, !dbg !2288

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !593, metadata !1036), !dbg !2291
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2292
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2293
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2294, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2294
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2294, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !2294
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2294
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2295

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2296
  %5 = bitcast double %call.i to i64, !dbg !2297
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2298
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !2299

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2300
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2300
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2301

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2302, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !2302
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2302, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2273
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !591, metadata !1036), !dbg !2272
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !591, metadata !1036), !dbg !2272
  br label %cleanup, !dbg !2303

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %a.sroa.0.0.54 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2304
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2304, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !2304
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2304

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2305
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2305
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2307

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2308
  %9 = load i64, i64* %8, align 8, !dbg !2308, !tbaa !1077
  br label %if.end.19, !dbg !2308

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !594, metadata !1036), !dbg !2311
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2312
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2313
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2314, !tbaa !1056
  %tp_flags.i.23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !2314
  %11 = load i64, i64* %tp_flags.i.23, align 8, !dbg !2314, !tbaa !1172
  %and.i.24 = and i64 %11, 16777216, !dbg !2314
  %cmp.i.25 = icmp eq i64 %and.i.24, 0, !dbg !2314
  br i1 %cmp.i.25, label %if.else.i.34, label %if.then.i.28, !dbg !2315

if.then.i.28:                                     ; preds = %if.else.14
  %call.i.26 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2316
  %12 = bitcast double %call.i.26 to i64, !dbg !2317
  %cmp1.i.27 = fcmp oeq double %call.i.26, -1.000000e+00, !dbg !2318
  br i1 %cmp1.i.27, label %land.lhs.true.i.31, label %if.end.19, !dbg !2319

land.lhs.true.i.31:                               ; preds = %if.then.i.28
  %call2.i.29 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2320
  %tobool.i.30 = icmp eq %struct._object* %call2.i.29, null, !dbg !2320
  br i1 %tobool.i.30, label %if.end.19, label %cleanup, !dbg !2321

if.else.i.34:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2322, !tbaa !1074
  %inc.i.33 = add i64 %13, 1, !dbg !2322
  store i64 %inc.i.33, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2322, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2279
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !592, metadata !1036), !dbg !2278
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !592, metadata !1036), !dbg !2278
  br label %cleanup, !dbg !2323

if.end.19:                                        ; preds = %if.then.i.28, %land.lhs.true.i.31, %if.then.12
  %b.sroa.0.0.52 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.31 ], [ %12, %if.then.i.28 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !593, metadata !1036), !dbg !2291
  %14 = bitcast i64 %a.sroa.0.0.54 to double, !dbg !2324
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !594, metadata !1036), !dbg !2311
  %15 = bitcast i64 %b.sroa.0.0.52 to double, !dbg !2325
  %mul = fmul double %14, %15, !dbg !2326
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !593, metadata !1036), !dbg !2291
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !420, metadata !1036) #2, !dbg !2327
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2329, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %16, i64 0, metadata !421, metadata !1036) #2, !dbg !2330
  %cmp.i.37 = icmp eq %struct.PyFloatObject* %16, null, !dbg !2331
  br i1 %cmp.i.37, label %if.else.i.42, label %if.then.i.39, !dbg !2332

if.then.i.39:                                     ; preds = %if.end.19
  %ob_type.i.38 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i64 0, i32 0, i32 1, !dbg !2333
  %17 = bitcast %struct._typeobject** %ob_type.i.38 to i64*, !dbg !2333
  %18 = load i64, i64* %17, align 8, !dbg !2333, !tbaa !1056
  store i64 %18, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2334, !tbaa !1046
  %19 = load i32, i32* @numfree, align 4, !dbg !2335, !tbaa !1061
  %dec.i = add i32 %19, -1, !dbg !2335
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2335, !tbaa !1061
  br label %if.end.3.i, !dbg !2336

if.else.i.42:                                     ; preds = %if.end.19
  %call.i.40 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2337
  %20 = bitcast i8* %call.i.40 to %struct.PyFloatObject*, !dbg !2338
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %20, i64 0, metadata !421, metadata !1036) #2, !dbg !2330
  %tobool.i.41 = icmp eq i8* %call.i.40, null, !dbg !2339
  br i1 %tobool.i.41, label %if.then.1.i, label %if.end.3.i, !dbg !2340

if.then.1.i:                                      ; preds = %if.else.i.42
  %call2.i.43 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2341
  br label %cleanup, !dbg !2342

if.end.3.i:                                       ; preds = %if.else.i.42, %if.then.i.39
  %op.0.i = phi %struct.PyFloatObject* [ %16, %if.then.i.39 ], [ %20, %if.else.i.42 ], !dbg !2343
  %21 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2344
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2344
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2344, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2344
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2344, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2345
  store double %mul, double* %ob_fval.i, align 8, !dbg !2346, !tbaa !1077
  br label %cleanup, !dbg !2347

cleanup:                                          ; preds = %land.lhs.true.i.31, %land.lhs.true.i, %if.end.3.i, %if.then.1.i, %if.else.i.34, %if.else.i
  %retval.0 = phi %struct._object* [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.34 ], [ %21, %if.end.3.i ], [ %call2.i.43, %if.then.1.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.31 ]
  ret %struct._object* %retval.0, !dbg !2348
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_rem(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2350
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !598, metadata !1036), !dbg !2355
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2361
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2361, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2361
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2361

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2362
  %tobool = icmp eq i32 %call, 0, !dbg !2362
  br i1 %tobool, label %if.else, label %if.then, !dbg !2364

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2365
  %2 = load i64, i64* %1, align 8, !dbg !2365, !tbaa !1077
  br label %if.end.5, !dbg !2365

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !599, metadata !1036), !dbg !2368
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2369
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2370
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2371, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2371
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2371, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !2371
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2371
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2372

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2373
  %5 = bitcast double %call.i to i64, !dbg !2374
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2375
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !2376

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2377
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2377
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2378

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2379, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !2379
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2379, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2350
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !1036), !dbg !2349
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !597, metadata !1036), !dbg !2349
  br label %cleanup, !dbg !2380

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %vx.sroa.0.0.76 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2381
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2381, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !2381
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2381

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2382
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2382
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2384

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2385
  %9 = load i64, i64* %8, align 8, !dbg !2385, !tbaa !1077
  br label %if.end.19, !dbg !2385

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !600, metadata !1036), !dbg !2388
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2389
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2390
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2391, !tbaa !1056
  %tp_flags.i.44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !2391
  %11 = load i64, i64* %tp_flags.i.44, align 8, !dbg !2391, !tbaa !1172
  %and.i.45 = and i64 %11, 16777216, !dbg !2391
  %cmp.i.46 = icmp eq i64 %and.i.45, 0, !dbg !2391
  br i1 %cmp.i.46, label %if.else.i.55, label %if.then.i.49, !dbg !2392

if.then.i.49:                                     ; preds = %if.else.14
  %call.i.47 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2393
  %12 = bitcast double %call.i.47 to i64, !dbg !2394
  %cmp1.i.48 = fcmp oeq double %call.i.47, -1.000000e+00, !dbg !2395
  br i1 %cmp1.i.48, label %land.lhs.true.i.52, label %if.end.19, !dbg !2396

land.lhs.true.i.52:                               ; preds = %if.then.i.49
  %call2.i.50 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2397
  %tobool.i.51 = icmp eq %struct._object* %call2.i.50, null, !dbg !2397
  br i1 %tobool.i.51, label %if.end.19, label %cleanup, !dbg !2398

if.else.i.55:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2399, !tbaa !1074
  %inc.i.54 = add i64 %13, 1, !dbg !2399
  store i64 %inc.i.54, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2399, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2356
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !1036), !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !598, metadata !1036), !dbg !2355
  br label %cleanup, !dbg !2400

if.end.19:                                        ; preds = %if.then.i.49, %land.lhs.true.i.52, %if.then.12
  %wx.sroa.0.0.74 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.52 ], [ %12, %if.then.i.49 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !600, metadata !1036), !dbg !2388
  %14 = bitcast i64 %wx.sroa.0.0.74 to double, !dbg !2401
  %cmp20 = fcmp oeq double %14, 0.000000e+00, !dbg !2403
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2404

if.then.21:                                       ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2405, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0)) #2, !dbg !2407
  br label %cleanup, !dbg !2408

if.end.22:                                        ; preds = %if.end.19
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !599, metadata !1036), !dbg !2368
  %16 = bitcast i64 %vx.sroa.0.0.76 to double, !dbg !2409
  %call23 = tail call double @fmod(double %16, double %14) #2, !dbg !2410
  tail call void @llvm.dbg.value(metadata double %call23, i64 0, metadata !601, metadata !1036), !dbg !2411
  %tobool24 = fcmp une double %call23, 0.000000e+00, !dbg !2412
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !600, metadata !1036), !dbg !2388
  br i1 %tobool24, label %if.then.25, label %if.else.33, !dbg !2414

if.then.25:                                       ; preds = %if.end.22
  %cmp26 = fcmp olt double %14, 0.000000e+00, !dbg !2415
  %cmp27 = fcmp olt double %call23, 0.000000e+00, !dbg !2418
  %cmp29 = xor i1 %cmp26, %cmp27, !dbg !2419
  %add = fadd double %14, %call23, !dbg !2420
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !601, metadata !1036), !dbg !2411
  %add.call23 = select i1 %cmp29, double %add, double %call23, !dbg !2422
  br label %if.end.35, !dbg !2422

if.else.33:                                       ; preds = %if.end.22
  %call34 = tail call double @copysign(double 0.000000e+00, double %14) #3, !dbg !2423
  tail call void @llvm.dbg.value(metadata double %call34, i64 0, metadata !601, metadata !1036), !dbg !2411
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.25, %if.else.33
  %mod.0 = phi double [ %call34, %if.else.33 ], [ %add.call23, %if.then.25 ]
  tail call void @llvm.dbg.value(metadata double %mod.0, i64 0, metadata !420, metadata !1036) #2, !dbg !2425
  %17 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2427, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %17, i64 0, metadata !421, metadata !1036) #2, !dbg !2428
  %cmp.i.58 = icmp eq %struct.PyFloatObject* %17, null, !dbg !2429
  br i1 %cmp.i.58, label %if.else.i.63, label %if.then.i.60, !dbg !2430

if.then.i.60:                                     ; preds = %if.end.35
  %ob_type.i.59 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %17, i64 0, i32 0, i32 1, !dbg !2431
  %18 = bitcast %struct._typeobject** %ob_type.i.59 to i64*, !dbg !2431
  %19 = load i64, i64* %18, align 8, !dbg !2431, !tbaa !1056
  store i64 %19, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2432, !tbaa !1046
  %20 = load i32, i32* @numfree, align 4, !dbg !2433, !tbaa !1061
  %dec.i = add i32 %20, -1, !dbg !2433
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2433, !tbaa !1061
  br label %if.end.3.i, !dbg !2434

if.else.i.63:                                     ; preds = %if.end.35
  %call.i.61 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2435
  %21 = bitcast i8* %call.i.61 to %struct.PyFloatObject*, !dbg !2436
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %21, i64 0, metadata !421, metadata !1036) #2, !dbg !2428
  %tobool.i.62 = icmp eq i8* %call.i.61, null, !dbg !2437
  br i1 %tobool.i.62, label %if.then.1.i, label %if.end.3.i, !dbg !2438

if.then.1.i:                                      ; preds = %if.else.i.63
  %call2.i.64 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2439
  br label %cleanup, !dbg !2440

if.end.3.i:                                       ; preds = %if.else.i.63, %if.then.i.60
  %op.0.i = phi %struct.PyFloatObject* [ %17, %if.then.i.60 ], [ %21, %if.else.i.63 ], !dbg !2441
  %22 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2442
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2442
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2442, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2442
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2442, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2443
  store double %mod.0, double* %ob_fval.i, align 8, !dbg !2444, !tbaa !1077
  br label %cleanup, !dbg !2445

cleanup:                                          ; preds = %land.lhs.true.i.52, %land.lhs.true.i, %if.end.3.i, %if.then.1.i, %if.else.i.55, %if.else.i, %if.then.21
  %retval.0 = phi %struct._object* [ null, %if.then.21 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.55 ], [ %22, %if.end.3.i ], [ %call2.i.64, %if.then.1.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.52 ]
  ret %struct._object* %retval.0, !dbg !2446
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_divmod(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2454
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !605, metadata !1036), !dbg !2453
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2459
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2459, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2459
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2459

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2460
  %tobool = icmp eq i32 %call, 0, !dbg !2460
  br i1 %tobool, label %if.else, label %if.then, !dbg !2462

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2463
  %2 = load i64, i64* %1, align 8, !dbg !2463, !tbaa !1077
  br label %if.end.5, !dbg !2463

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !606, metadata !1036), !dbg !2466
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2467
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2468
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2469, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2469
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !2469, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !2469
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2469
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2470

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2471
  %5 = bitcast double %call.i to i64, !dbg !2472
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2473
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !2474

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2475
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2475
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !2476

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2477, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !2477
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2477, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2448
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !604, metadata !1036), !dbg !2447
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !604, metadata !1036), !dbg !2447
  br label %cleanup, !dbg !2478

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %vx.sroa.0.0.96 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2479
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2479, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !2479
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !2479

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2480
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2480
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !2482

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2483
  %9 = load i64, i64* %8, align 8, !dbg !2483, !tbaa !1077
  br label %if.end.19, !dbg !2483

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !607, metadata !1036), !dbg !2486
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2487
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2488
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !2489, !tbaa !1056
  %tp_flags.i.69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !2489
  %11 = load i64, i64* %tp_flags.i.69, align 8, !dbg !2489, !tbaa !1172
  %and.i.70 = and i64 %11, 16777216, !dbg !2489
  %cmp.i.71 = icmp eq i64 %and.i.70, 0, !dbg !2489
  br i1 %cmp.i.71, label %if.else.i.80, label %if.then.i.74, !dbg !2490

if.then.i.74:                                     ; preds = %if.else.14
  %call.i.72 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2491
  %12 = bitcast double %call.i.72 to i64, !dbg !2492
  %cmp1.i.73 = fcmp oeq double %call.i.72, -1.000000e+00, !dbg !2493
  br i1 %cmp1.i.73, label %land.lhs.true.i.77, label %if.end.19, !dbg !2494

land.lhs.true.i.77:                               ; preds = %if.then.i.74
  %call2.i.75 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2495
  %tobool.i.76 = icmp eq %struct._object* %call2.i.75, null, !dbg !2495
  br i1 %tobool.i.76, label %if.end.19, label %cleanup, !dbg !2496

if.else.i.80:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2497, !tbaa !1074
  %inc.i.79 = add i64 %13, 1, !dbg !2497
  store i64 %inc.i.79, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2497, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2454
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !605, metadata !1036), !dbg !2453
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !605, metadata !1036), !dbg !2453
  br label %cleanup, !dbg !2498

if.end.19:                                        ; preds = %if.then.i.74, %land.lhs.true.i.77, %if.then.12
  %wx.sroa.0.0.94 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.77 ], [ %12, %if.then.i.74 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !607, metadata !1036), !dbg !2486
  %14 = bitcast i64 %wx.sroa.0.0.94 to double, !dbg !2499
  %cmp20 = fcmp oeq double %14, 0.000000e+00, !dbg !2501
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !2502

if.then.21:                                       ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2503, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0)) #2, !dbg !2505
  br label %cleanup, !dbg !2506

if.end.22:                                        ; preds = %if.end.19
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !606, metadata !1036), !dbg !2466
  %16 = bitcast i64 %vx.sroa.0.0.96 to double, !dbg !2507
  %call23 = tail call double @fmod(double %16, double %14) #2, !dbg !2508
  tail call void @llvm.dbg.value(metadata double %call23, i64 0, metadata !609, metadata !1036), !dbg !2509
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !606, metadata !1036), !dbg !2466
  %sub = fsub double %16, %call23, !dbg !2510
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !607, metadata !1036), !dbg !2486
  %div24 = fdiv double %sub, %14, !dbg !2511
  tail call void @llvm.dbg.value(metadata double %div24, i64 0, metadata !608, metadata !1036), !dbg !2512
  %tobool25 = fcmp une double %call23, 0.000000e+00, !dbg !2513
  br i1 %tobool25, label %if.then.26, label %if.else.35, !dbg !2515

if.then.26:                                       ; preds = %if.end.22
  %cmp27 = fcmp olt double %14, 0.000000e+00, !dbg !2516
  %cmp28 = fcmp olt double %call23, 0.000000e+00, !dbg !2519
  %cmp30 = xor i1 %cmp27, %cmp28, !dbg !2520
  br i1 %cmp30, label %if.then.32, label %if.end.37, !dbg !2521

if.then.32:                                       ; preds = %if.then.26
  %add = fadd double %14, %call23, !dbg !2522
  tail call void @llvm.dbg.value(metadata double %add, i64 0, metadata !609, metadata !1036), !dbg !2509
  %sub33 = fadd double %div24, -1.000000e+00, !dbg !2524
  tail call void @llvm.dbg.value(metadata double %sub33, i64 0, metadata !608, metadata !1036), !dbg !2512
  br label %if.end.37, !dbg !2525

if.else.35:                                       ; preds = %if.end.22
  %call36 = tail call double @copysign(double 0.000000e+00, double %14) #3, !dbg !2526
  tail call void @llvm.dbg.value(metadata double %call36, i64 0, metadata !609, metadata !1036), !dbg !2509
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.26, %if.then.32, %if.else.35
  %div.0 = phi double [ %sub33, %if.then.32 ], [ %div24, %if.then.26 ], [ %div24, %if.else.35 ]
  %mod.0 = phi double [ %add, %if.then.32 ], [ %call23, %if.then.26 ], [ %call36, %if.else.35 ]
  %tobool38 = fcmp une double %div.0, 0.000000e+00, !dbg !2528
  br i1 %tobool38, label %if.then.39, label %if.else.47, !dbg !2530

if.then.39:                                       ; preds = %if.end.37
  %call40 = tail call double @floor(double %div.0) #3, !dbg !2531
  tail call void @llvm.dbg.value(metadata double %call40, i64 0, metadata !610, metadata !1036), !dbg !2533
  %sub41 = fsub double %div.0, %call40, !dbg !2534
  %cmp42 = fcmp ogt double %sub41, 5.000000e-01, !dbg !2536
  br i1 %cmp42, label %if.then.44, label %if.end.50, !dbg !2537

if.then.44:                                       ; preds = %if.then.39
  %add45 = fadd double %call40, 1.000000e+00, !dbg !2538
  tail call void @llvm.dbg.value(metadata double %add45, i64 0, metadata !610, metadata !1036), !dbg !2533
  br label %if.end.50, !dbg !2539

if.else.47:                                       ; preds = %if.end.37
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !606, metadata !1036), !dbg !2466
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !607, metadata !1036), !dbg !2486
  %div48 = fdiv double %16, %14, !dbg !2540
  %call49 = tail call double @copysign(double 0.000000e+00, double %div48) #3, !dbg !2542
  tail call void @llvm.dbg.value(metadata double %call49, i64 0, metadata !610, metadata !1036), !dbg !2533
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.39, %if.then.44, %if.else.47
  %floordiv.0 = phi double [ %add45, %if.then.44 ], [ %call40, %if.then.39 ], [ %call49, %if.else.47 ]
  %call51 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), double %floordiv.0, double %mod.0) #2, !dbg !2543
  br label %cleanup, !dbg !2544

cleanup:                                          ; preds = %land.lhs.true.i.77, %land.lhs.true.i, %if.else.i.80, %if.else.i, %if.end.50, %if.then.21
  %retval.0 = phi %struct._object* [ null, %if.then.21 ], [ %call51, %if.end.50 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.80 ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.77 ]
  ret %struct._object* %retval.0, !dbg !2545
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_pow(%struct._object* %v, %struct._object* %w, %struct._object* %z) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* %z, i64 0, metadata !615, metadata !1036), !dbg !2558
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !619, metadata !1036), !dbg !2559
  %cmp = icmp eq %struct._object* %z, @_Py_NoneStruct, !dbg !2560
  br i1 %cmp, label %if.end, label %if.then, !dbg !2562

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2563, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0)) #2, !dbg !2565
  br label %cleanup.208, !dbg !2566

if.end:                                           ; preds = %entry
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2567
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2567, !tbaa !1056
  %cmp1 = icmp eq %struct._typeobject* %1, @PyFloat_Type, !dbg !2567
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !2567

lor.lhs.false:                                    ; preds = %if.end
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2568
  %tobool = icmp eq i32 %call, 0, !dbg !2568
  br i1 %tobool, label %if.else, label %if.then.3, !dbg !2570

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %2 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2571
  %3 = load i64, i64* %2, align 8, !dbg !2571, !tbaa !1077
  br label %if.end.8, !dbg !2571

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2575
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !2576
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2577, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 19, !dbg !2577
  %5 = load i64, i64* %tp_flags.i, align 8, !dbg !2577, !tbaa !1172
  %and.i = and i64 %5, 16777216, !dbg !2577
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !2577
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2578

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !2579
  %6 = bitcast double %call.i to i64, !dbg !2580
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !2581
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.8, !dbg !2582

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2583
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !2583
  br i1 %tobool.i, label %if.end.8, label %cleanup.208, !dbg !2584

if.else.i:                                        ; preds = %if.else
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2585, !tbaa !1074
  %inc.i = add i64 %7, 1, !dbg !2585
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2585, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2547
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !1036), !dbg !2546
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !613, metadata !1036), !dbg !2546
  br label %cleanup.208, !dbg !2586

if.end.8:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then.3
  %iv.sroa.0.0.428 = phi i64 [ %3, %if.then.3 ], [ %6, %land.lhs.true.i ], [ %6, %if.then.i ]
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !2587
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2587, !tbaa !1056
  %cmp10 = icmp eq %struct._typeobject* %8, @PyFloat_Type, !dbg !2587
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11, !dbg !2587

lor.lhs.false.11:                                 ; preds = %if.end.8
  %call13 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !2588
  %tobool14 = icmp eq i32 %call13, 0, !dbg !2588
  br i1 %tobool14, label %if.else.17, label %if.then.15, !dbg !2590

if.then.15:                                       ; preds = %lor.lhs.false.11, %if.end.8
  %9 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !2591
  %10 = load i64, i64* %9, align 8, !dbg !2591, !tbaa !1077
  br label %if.end.22, !dbg !2591

if.else.17:                                       ; preds = %lor.lhs.false.11
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !2595
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !2596
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !2597, !tbaa !1056
  %tp_flags.i.224 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 19, !dbg !2597
  %12 = load i64, i64* %tp_flags.i.224, align 8, !dbg !2597, !tbaa !1172
  %and.i.225 = and i64 %12, 16777216, !dbg !2597
  %cmp.i.226 = icmp eq i64 %and.i.225, 0, !dbg !2597
  br i1 %cmp.i.226, label %if.else.i.235, label %if.then.i.229, !dbg !2598

if.then.i.229:                                    ; preds = %if.else.17
  %call.i.227 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !2599
  %13 = bitcast double %call.i.227 to i64, !dbg !2600
  %cmp1.i.228 = fcmp oeq double %call.i.227, -1.000000e+00, !dbg !2601
  br i1 %cmp1.i.228, label %land.lhs.true.i.232, label %if.end.22, !dbg !2602

land.lhs.true.i.232:                              ; preds = %if.then.i.229
  %call2.i.230 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !2603
  %tobool.i.231 = icmp eq %struct._object* %call2.i.230, null, !dbg !2603
  br i1 %tobool.i.231, label %if.end.22, label %cleanup.208, !dbg !2604

if.else.i.235:                                    ; preds = %if.else.17
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2605, !tbaa !1074
  %inc.i.234 = add i64 %14, 1, !dbg !2605
  store i64 %inc.i.234, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !2605, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !2553
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !614, metadata !1036), !dbg !2552
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !614, metadata !1036), !dbg !2552
  br label %cleanup.208, !dbg !2606

if.end.22:                                        ; preds = %if.then.i.229, %land.lhs.true.i.232, %if.then.15
  %iw.sroa.0.0.426 = phi i64 [ %10, %if.then.15 ], [ %13, %land.lhs.true.i.232 ], [ %13, %if.then.i.229 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %15 = bitcast i64 %iw.sroa.0.0.426 to double, !dbg !2607
  %cmp23 = fcmp oeq double %15, 0.000000e+00, !dbg !2609
  br i1 %cmp23, label %if.then.24, label %cond.true.29, !dbg !2610

if.then.24:                                       ; preds = %if.end.22
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !420, metadata !1036) #2, !dbg !2611
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2614, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %16, i64 0, metadata !421, metadata !1036) #2, !dbg !2615
  %cmp.i.238 = icmp eq %struct.PyFloatObject* %16, null, !dbg !2616
  br i1 %cmp.i.238, label %if.else.i.243, label %if.then.i.240, !dbg !2617

if.then.i.240:                                    ; preds = %if.then.24
  %ob_type.i.239 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i64 0, i32 0, i32 1, !dbg !2618
  %17 = bitcast %struct._typeobject** %ob_type.i.239 to i64*, !dbg !2618
  %18 = load i64, i64* %17, align 8, !dbg !2618, !tbaa !1056
  store i64 %18, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2619, !tbaa !1046
  %19 = load i32, i32* @numfree, align 4, !dbg !2620, !tbaa !1061
  %dec.i = add i32 %19, -1, !dbg !2620
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2620, !tbaa !1061
  br label %if.end.3.i, !dbg !2621

if.else.i.243:                                    ; preds = %if.then.24
  %call.i.241 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2622
  %20 = bitcast i8* %call.i.241 to %struct.PyFloatObject*, !dbg !2623
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %20, i64 0, metadata !421, metadata !1036) #2, !dbg !2615
  %tobool.i.242 = icmp eq i8* %call.i.241, null, !dbg !2624
  br i1 %tobool.i.242, label %if.then.1.i, label %if.end.3.i, !dbg !2625

if.then.1.i:                                      ; preds = %if.else.i.243
  %call2.i.244 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2626
  br label %cleanup.208, !dbg !2627

if.end.3.i:                                       ; preds = %if.else.i.243, %if.then.i.240
  %op.0.i = phi %struct.PyFloatObject* [ %16, %if.then.i.240 ], [ %20, %if.else.i.243 ], !dbg !2628
  %21 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2629
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2629
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2629, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2629
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2629, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2630
  store double 1.000000e+00, double* %ob_fval.i, align 8, !dbg !2631, !tbaa !1077
  br label %cleanup.208, !dbg !2632

cond.true.29:                                     ; preds = %if.end.22
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  %22 = bitcast i64 %iv.sroa.0.0.428 to double, !dbg !2633
  %call30 = tail call i32 @__isnan(double %22) #3, !dbg !2633
  %tobool31 = icmp eq i32 %call30, 0, !dbg !2633
  br i1 %tobool31, label %cond.true.44, label %if.then.36, !dbg !2633

if.then.36:                                       ; preds = %cond.true.29
  tail call void @llvm.dbg.value(metadata double %22, i64 0, metadata !420, metadata !1036) #2, !dbg !2636
  %23 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2639, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %23, i64 0, metadata !421, metadata !1036) #2, !dbg !2640
  %cmp.i.246 = icmp eq %struct.PyFloatObject* %23, null, !dbg !2641
  br i1 %cmp.i.246, label %if.else.i.252, label %if.then.i.249, !dbg !2642

if.then.i.249:                                    ; preds = %if.then.36
  %ob_type.i.247 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %23, i64 0, i32 0, i32 1, !dbg !2643
  %24 = bitcast %struct._typeobject** %ob_type.i.247 to i64*, !dbg !2643
  %25 = load i64, i64* %24, align 8, !dbg !2643, !tbaa !1056
  store i64 %25, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2644, !tbaa !1046
  %26 = load i32, i32* @numfree, align 4, !dbg !2645, !tbaa !1061
  %dec.i.248 = add i32 %26, -1, !dbg !2645
  store i32 %dec.i.248, i32* @numfree, align 4, !dbg !2645, !tbaa !1061
  br label %if.end.3.i.259, !dbg !2646

if.else.i.252:                                    ; preds = %if.then.36
  %call.i.250 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2647
  %27 = bitcast i8* %call.i.250 to %struct.PyFloatObject*, !dbg !2648
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %27, i64 0, metadata !421, metadata !1036) #2, !dbg !2640
  %tobool.i.251 = icmp eq i8* %call.i.250, null, !dbg !2649
  br i1 %tobool.i.251, label %if.then.1.i.254, label %if.end.3.i.259, !dbg !2650

if.then.1.i.254:                                  ; preds = %if.else.i.252
  %call2.i.253 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2651
  br label %cleanup.208, !dbg !2652

if.end.3.i.259:                                   ; preds = %if.else.i.252, %if.then.i.249
  %op.0.i.255 = phi %struct.PyFloatObject* [ %23, %if.then.i.249 ], [ %27, %if.else.i.252 ], !dbg !2653
  %28 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.255, i64 0, i32 0, !dbg !2654
  %ob_type4.i.256 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.255, i64 0, i32 0, i32 1, !dbg !2654
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.256, align 8, !dbg !2654, !tbaa !1056
  %ob_refcnt.i.257 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.255, i64 0, i32 0, i32 0, !dbg !2654
  store i64 1, i64* %ob_refcnt.i.257, align 8, !dbg !2654, !tbaa !1074
  %ob_fval.i.258 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.255, i64 0, i32 1, !dbg !2655
  %29 = bitcast double* %ob_fval.i.258 to i64*, !dbg !2656
  store i64 %iv.sroa.0.0.428, i64* %29, align 8, !dbg !2656, !tbaa !1077
  br label %cleanup.208, !dbg !2657

cond.true.44:                                     ; preds = %cond.true.29
  %call45 = tail call i32 @__isnan(double %15) #3, !dbg !2658
  %tobool46 = icmp eq i32 %call45, 0, !dbg !2658
  br i1 %tobool46, label %cond.true.63, label %if.then.51, !dbg !2658

if.then.51:                                       ; preds = %cond.true.44
  %cmp52 = fcmp oeq double %22, 1.000000e+00, !dbg !2661
  %cond = select i1 %cmp52, double 1.000000e+00, double %15, !dbg !2663
  tail call void @llvm.dbg.value(metadata double %cond, i64 0, metadata !420, metadata !1036) #2, !dbg !2664
  %30 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2668, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %30, i64 0, metadata !421, metadata !1036) #2, !dbg !2669
  %cmp.i.262 = icmp eq %struct.PyFloatObject* %30, null, !dbg !2670
  br i1 %cmp.i.262, label %if.else.i.268, label %if.then.i.265, !dbg !2671

if.then.i.265:                                    ; preds = %if.then.51
  %ob_type.i.263 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %30, i64 0, i32 0, i32 1, !dbg !2672
  %31 = bitcast %struct._typeobject** %ob_type.i.263 to i64*, !dbg !2672
  %32 = load i64, i64* %31, align 8, !dbg !2672, !tbaa !1056
  store i64 %32, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2673, !tbaa !1046
  %33 = load i32, i32* @numfree, align 4, !dbg !2674, !tbaa !1061
  %dec.i.264 = add i32 %33, -1, !dbg !2674
  store i32 %dec.i.264, i32* @numfree, align 4, !dbg !2674, !tbaa !1061
  br label %if.end.3.i.275, !dbg !2675

if.else.i.268:                                    ; preds = %if.then.51
  %call.i.266 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2676
  %34 = bitcast i8* %call.i.266 to %struct.PyFloatObject*, !dbg !2677
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %34, i64 0, metadata !421, metadata !1036) #2, !dbg !2669
  %tobool.i.267 = icmp eq i8* %call.i.266, null, !dbg !2678
  br i1 %tobool.i.267, label %if.then.1.i.270, label %if.end.3.i.275, !dbg !2679

if.then.1.i.270:                                  ; preds = %if.else.i.268
  %call2.i.269 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2680
  br label %cleanup.208, !dbg !2681

if.end.3.i.275:                                   ; preds = %if.else.i.268, %if.then.i.265
  %op.0.i.271 = phi %struct.PyFloatObject* [ %30, %if.then.i.265 ], [ %34, %if.else.i.268 ], !dbg !2682
  %35 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.271, i64 0, i32 0, !dbg !2683
  %ob_type4.i.272 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.271, i64 0, i32 0, i32 1, !dbg !2683
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.272, align 8, !dbg !2683, !tbaa !1056
  %ob_refcnt.i.273 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.271, i64 0, i32 0, i32 0, !dbg !2683
  store i64 1, i64* %ob_refcnt.i.273, align 8, !dbg !2683, !tbaa !1074
  %ob_fval.i.274 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.271, i64 0, i32 1, !dbg !2684
  store double %cond, double* %ob_fval.i.274, align 8, !dbg !2685, !tbaa !1077
  br label %cleanup.208, !dbg !2686

cond.true.63:                                     ; preds = %cond.true.44
  %call64 = tail call i32 @__isinf(double %15) #3, !dbg !2687
  %tobool65 = icmp eq i32 %call64, 0, !dbg !2687
  br i1 %tobool65, label %cond.true.94, label %if.then.70, !dbg !2687

if.then.70:                                       ; preds = %cond.true.63
  %call71 = tail call double @fabs(double %22) #3, !dbg !2690
  tail call void @llvm.dbg.value(metadata double %call71, i64 0, metadata !616, metadata !1036), !dbg !2574
  %cmp72 = fcmp oeq double %call71, 1.000000e+00, !dbg !2692
  br i1 %cmp72, label %if.then.74, label %if.else.76, !dbg !2694

if.then.74:                                       ; preds = %if.then.70
  tail call void @llvm.dbg.value(metadata double 1.000000e+00, i64 0, metadata !420, metadata !1036) #2, !dbg !2695
  %36 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2697, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %36, i64 0, metadata !421, metadata !1036) #2, !dbg !2698
  %cmp.i.278 = icmp eq %struct.PyFloatObject* %36, null, !dbg !2699
  br i1 %cmp.i.278, label %if.else.i.284, label %if.then.i.281, !dbg !2700

if.then.i.281:                                    ; preds = %if.then.74
  %ob_type.i.279 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %36, i64 0, i32 0, i32 1, !dbg !2701
  %37 = bitcast %struct._typeobject** %ob_type.i.279 to i64*, !dbg !2701
  %38 = load i64, i64* %37, align 8, !dbg !2701, !tbaa !1056
  store i64 %38, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2702, !tbaa !1046
  %39 = load i32, i32* @numfree, align 4, !dbg !2703, !tbaa !1061
  %dec.i.280 = add i32 %39, -1, !dbg !2703
  store i32 %dec.i.280, i32* @numfree, align 4, !dbg !2703, !tbaa !1061
  br label %if.end.3.i.291, !dbg !2704

if.else.i.284:                                    ; preds = %if.then.74
  %call.i.282 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2705
  %40 = bitcast i8* %call.i.282 to %struct.PyFloatObject*, !dbg !2706
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %40, i64 0, metadata !421, metadata !1036) #2, !dbg !2698
  %tobool.i.283 = icmp eq i8* %call.i.282, null, !dbg !2707
  br i1 %tobool.i.283, label %if.then.1.i.286, label %if.end.3.i.291, !dbg !2708

if.then.1.i.286:                                  ; preds = %if.else.i.284
  %call2.i.285 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2709
  br label %cleanup.208, !dbg !2710

if.end.3.i.291:                                   ; preds = %if.else.i.284, %if.then.i.281
  %op.0.i.287 = phi %struct.PyFloatObject* [ %36, %if.then.i.281 ], [ %40, %if.else.i.284 ], !dbg !2711
  %41 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.287, i64 0, i32 0, !dbg !2712
  %ob_type4.i.288 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.287, i64 0, i32 0, i32 1, !dbg !2712
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.288, align 8, !dbg !2712, !tbaa !1056
  %ob_refcnt.i.289 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.287, i64 0, i32 0, i32 0, !dbg !2712
  store i64 1, i64* %ob_refcnt.i.289, align 8, !dbg !2712, !tbaa !1074
  %ob_fval.i.290 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.287, i64 0, i32 1, !dbg !2713
  store double 1.000000e+00, double* %ob_fval.i.290, align 8, !dbg !2714, !tbaa !1077
  br label %cleanup.208, !dbg !2715

if.else.76:                                       ; preds = %if.then.70
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %cmp77 = fcmp ogt double %15, 0.000000e+00, !dbg !2716
  %cmp79 = fcmp ogt double %call71, 1.000000e+00, !dbg !2718
  %cmp81tmp = xor i1 %cmp77, %cmp79, !dbg !2719
  br i1 %cmp81tmp, label %if.else.86, label %if.then.83, !dbg !2720

if.then.83:                                       ; preds = %if.else.76
  %call84 = tail call double @fabs(double %15) #3, !dbg !2721
  tail call void @llvm.dbg.value(metadata double %call84, i64 0, metadata !420, metadata !1036) #2, !dbg !2722
  %42 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2724, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %42, i64 0, metadata !421, metadata !1036) #2, !dbg !2725
  %cmp.i.294 = icmp eq %struct.PyFloatObject* %42, null, !dbg !2726
  br i1 %cmp.i.294, label %if.else.i.300, label %if.then.i.297, !dbg !2727

if.then.i.297:                                    ; preds = %if.then.83
  %ob_type.i.295 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %42, i64 0, i32 0, i32 1, !dbg !2728
  %43 = bitcast %struct._typeobject** %ob_type.i.295 to i64*, !dbg !2728
  %44 = load i64, i64* %43, align 8, !dbg !2728, !tbaa !1056
  store i64 %44, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2729, !tbaa !1046
  %45 = load i32, i32* @numfree, align 4, !dbg !2730, !tbaa !1061
  %dec.i.296 = add i32 %45, -1, !dbg !2730
  store i32 %dec.i.296, i32* @numfree, align 4, !dbg !2730, !tbaa !1061
  br label %if.end.3.i.307, !dbg !2731

if.else.i.300:                                    ; preds = %if.then.83
  %call.i.298 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2732
  %46 = bitcast i8* %call.i.298 to %struct.PyFloatObject*, !dbg !2733
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %46, i64 0, metadata !421, metadata !1036) #2, !dbg !2725
  %tobool.i.299 = icmp eq i8* %call.i.298, null, !dbg !2734
  br i1 %tobool.i.299, label %if.then.1.i.302, label %if.end.3.i.307, !dbg !2735

if.then.1.i.302:                                  ; preds = %if.else.i.300
  %call2.i.301 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2736
  br label %cleanup.208, !dbg !2737

if.end.3.i.307:                                   ; preds = %if.else.i.300, %if.then.i.297
  %op.0.i.303 = phi %struct.PyFloatObject* [ %42, %if.then.i.297 ], [ %46, %if.else.i.300 ], !dbg !2738
  %47 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.303, i64 0, i32 0, !dbg !2739
  %ob_type4.i.304 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.303, i64 0, i32 0, i32 1, !dbg !2739
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.304, align 8, !dbg !2739, !tbaa !1056
  %ob_refcnt.i.305 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.303, i64 0, i32 0, i32 0, !dbg !2739
  store i64 1, i64* %ob_refcnt.i.305, align 8, !dbg !2739, !tbaa !1074
  %ob_fval.i.306 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.303, i64 0, i32 1, !dbg !2740
  store double %call84, double* %ob_fval.i.306, align 8, !dbg !2741, !tbaa !1077
  br label %cleanup.208, !dbg !2742

if.else.86:                                       ; preds = %if.else.76
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !420, metadata !1036) #2, !dbg !2743
  %48 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2745, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %48, i64 0, metadata !421, metadata !1036) #2, !dbg !2746
  %cmp.i.310 = icmp eq %struct.PyFloatObject* %48, null, !dbg !2747
  br i1 %cmp.i.310, label %if.else.i.316, label %if.then.i.313, !dbg !2748

if.then.i.313:                                    ; preds = %if.else.86
  %ob_type.i.311 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %48, i64 0, i32 0, i32 1, !dbg !2749
  %49 = bitcast %struct._typeobject** %ob_type.i.311 to i64*, !dbg !2749
  %50 = load i64, i64* %49, align 8, !dbg !2749, !tbaa !1056
  store i64 %50, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2750, !tbaa !1046
  %51 = load i32, i32* @numfree, align 4, !dbg !2751, !tbaa !1061
  %dec.i.312 = add i32 %51, -1, !dbg !2751
  store i32 %dec.i.312, i32* @numfree, align 4, !dbg !2751, !tbaa !1061
  br label %if.end.3.i.323, !dbg !2752

if.else.i.316:                                    ; preds = %if.else.86
  %call.i.314 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2753
  %52 = bitcast i8* %call.i.314 to %struct.PyFloatObject*, !dbg !2754
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %52, i64 0, metadata !421, metadata !1036) #2, !dbg !2746
  %tobool.i.315 = icmp eq i8* %call.i.314, null, !dbg !2755
  br i1 %tobool.i.315, label %if.then.1.i.318, label %if.end.3.i.323, !dbg !2756

if.then.1.i.318:                                  ; preds = %if.else.i.316
  %call2.i.317 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2757
  br label %cleanup.208, !dbg !2758

if.end.3.i.323:                                   ; preds = %if.else.i.316, %if.then.i.313
  %op.0.i.319 = phi %struct.PyFloatObject* [ %48, %if.then.i.313 ], [ %52, %if.else.i.316 ], !dbg !2759
  %53 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.319, i64 0, i32 0, !dbg !2760
  %ob_type4.i.320 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.319, i64 0, i32 0, i32 1, !dbg !2760
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.320, align 8, !dbg !2760, !tbaa !1056
  %ob_refcnt.i.321 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.319, i64 0, i32 0, i32 0, !dbg !2760
  store i64 1, i64* %ob_refcnt.i.321, align 8, !dbg !2760, !tbaa !1074
  %ob_fval.i.322 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.319, i64 0, i32 1, !dbg !2761
  store double 0.000000e+00, double* %ob_fval.i.322, align 8, !dbg !2762, !tbaa !1077
  br label %cleanup.208, !dbg !2763

cond.true.94:                                     ; preds = %cond.true.63
  %call95 = tail call i32 @__isinf(double %22) #3, !dbg !2764
  %tobool96 = icmp eq i32 %call95, 0, !dbg !2764
  br i1 %tobool96, label %if.end.124, label %if.then.101, !dbg !2764

if.then.101:                                      ; preds = %cond.true.94
  %call102 = tail call double @fabs(double %15) #3, !dbg !2766
  %call103 = tail call double @fmod(double %call102, double 2.000000e+00) #2, !dbg !2766
  %cmp104 = fcmp oeq double %call103, 1.000000e+00, !dbg !2766
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %cmp106 = fcmp ogt double %15, 0.000000e+00, !dbg !2767
  br i1 %cmp106, label %if.then.108, label %if.else.116, !dbg !2769

if.then.108:                                      ; preds = %if.then.101
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  br i1 %cmp104, label %cond.end.113, label %cond.false.111, !dbg !2770

cond.false.111:                                   ; preds = %if.then.108
  %call112 = tail call double @fabs(double %22) #3, !dbg !2771
  br label %cond.end.113, !dbg !2770

cond.end.113:                                     ; preds = %if.then.108, %cond.false.111
  %cond114 = phi double [ %call112, %cond.false.111 ], [ %22, %if.then.108 ], !dbg !2770
  tail call void @llvm.dbg.value(metadata double %cond114, i64 0, metadata !420, metadata !1036) #2, !dbg !2772
  %54 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2776, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %54, i64 0, metadata !421, metadata !1036) #2, !dbg !2777
  %cmp.i.326 = icmp eq %struct.PyFloatObject* %54, null, !dbg !2778
  br i1 %cmp.i.326, label %if.else.i.332, label %if.then.i.329, !dbg !2779

if.then.i.329:                                    ; preds = %cond.end.113
  %ob_type.i.327 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %54, i64 0, i32 0, i32 1, !dbg !2780
  %55 = bitcast %struct._typeobject** %ob_type.i.327 to i64*, !dbg !2780
  %56 = load i64, i64* %55, align 8, !dbg !2780, !tbaa !1056
  store i64 %56, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2781, !tbaa !1046
  %57 = load i32, i32* @numfree, align 4, !dbg !2782, !tbaa !1061
  %dec.i.328 = add i32 %57, -1, !dbg !2782
  store i32 %dec.i.328, i32* @numfree, align 4, !dbg !2782, !tbaa !1061
  br label %if.end.3.i.339, !dbg !2783

if.else.i.332:                                    ; preds = %cond.end.113
  %call.i.330 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2784
  %58 = bitcast i8* %call.i.330 to %struct.PyFloatObject*, !dbg !2785
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %58, i64 0, metadata !421, metadata !1036) #2, !dbg !2777
  %tobool.i.331 = icmp eq i8* %call.i.330, null, !dbg !2786
  br i1 %tobool.i.331, label %if.then.1.i.334, label %if.end.3.i.339, !dbg !2787

if.then.1.i.334:                                  ; preds = %if.else.i.332
  %call2.i.333 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2788
  br label %cleanup.208, !dbg !2789

if.end.3.i.339:                                   ; preds = %if.else.i.332, %if.then.i.329
  %op.0.i.335 = phi %struct.PyFloatObject* [ %54, %if.then.i.329 ], [ %58, %if.else.i.332 ], !dbg !2790
  %59 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.335, i64 0, i32 0, !dbg !2791
  %ob_type4.i.336 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.335, i64 0, i32 0, i32 1, !dbg !2791
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.336, align 8, !dbg !2791, !tbaa !1056
  %ob_refcnt.i.337 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.335, i64 0, i32 0, i32 0, !dbg !2791
  store i64 1, i64* %ob_refcnt.i.337, align 8, !dbg !2791, !tbaa !1074
  %ob_fval.i.338 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.335, i64 0, i32 1, !dbg !2792
  store double %cond114, double* %ob_fval.i.338, align 8, !dbg !2793, !tbaa !1077
  br label %cleanup.208, !dbg !2794

if.else.116:                                      ; preds = %if.then.101
  br i1 %cmp104, label %cond.true.118, label %cond.end.121, !dbg !2795

cond.true.118:                                    ; preds = %if.else.116
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  %call119 = tail call double @copysign(double 0.000000e+00, double %22) #3, !dbg !2796
  br label %cond.end.121, !dbg !2795

cond.end.121:                                     ; preds = %if.else.116, %cond.true.118
  %cond122 = phi double [ %call119, %cond.true.118 ], [ 0.000000e+00, %if.else.116 ], !dbg !2795
  tail call void @llvm.dbg.value(metadata double %cond122, i64 0, metadata !420, metadata !1036) #2, !dbg !2797
  %60 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2801, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %60, i64 0, metadata !421, metadata !1036) #2, !dbg !2802
  %cmp.i.342 = icmp eq %struct.PyFloatObject* %60, null, !dbg !2803
  br i1 %cmp.i.342, label %if.else.i.348, label %if.then.i.345, !dbg !2804

if.then.i.345:                                    ; preds = %cond.end.121
  %ob_type.i.343 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %60, i64 0, i32 0, i32 1, !dbg !2805
  %61 = bitcast %struct._typeobject** %ob_type.i.343 to i64*, !dbg !2805
  %62 = load i64, i64* %61, align 8, !dbg !2805, !tbaa !1056
  store i64 %62, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2806, !tbaa !1046
  %63 = load i32, i32* @numfree, align 4, !dbg !2807, !tbaa !1061
  %dec.i.344 = add i32 %63, -1, !dbg !2807
  store i32 %dec.i.344, i32* @numfree, align 4, !dbg !2807, !tbaa !1061
  br label %if.end.3.i.355, !dbg !2808

if.else.i.348:                                    ; preds = %cond.end.121
  %call.i.346 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2809
  %64 = bitcast i8* %call.i.346 to %struct.PyFloatObject*, !dbg !2810
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %64, i64 0, metadata !421, metadata !1036) #2, !dbg !2802
  %tobool.i.347 = icmp eq i8* %call.i.346, null, !dbg !2811
  br i1 %tobool.i.347, label %if.then.1.i.350, label %if.end.3.i.355, !dbg !2812

if.then.1.i.350:                                  ; preds = %if.else.i.348
  %call2.i.349 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2813
  br label %cleanup.208, !dbg !2814

if.end.3.i.355:                                   ; preds = %if.else.i.348, %if.then.i.345
  %op.0.i.351 = phi %struct.PyFloatObject* [ %60, %if.then.i.345 ], [ %64, %if.else.i.348 ], !dbg !2815
  %65 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.351, i64 0, i32 0, !dbg !2816
  %ob_type4.i.352 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.351, i64 0, i32 0, i32 1, !dbg !2816
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.352, align 8, !dbg !2816, !tbaa !1056
  %ob_refcnt.i.353 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.351, i64 0, i32 0, i32 0, !dbg !2816
  store i64 1, i64* %ob_refcnt.i.353, align 8, !dbg !2816, !tbaa !1074
  %ob_fval.i.354 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.351, i64 0, i32 1, !dbg !2817
  store double %cond122, double* %ob_fval.i.354, align 8, !dbg !2818, !tbaa !1077
  br label %cleanup.208, !dbg !2819

if.end.124:                                       ; preds = %cond.true.94
  %cmp125 = fcmp oeq double %22, 0.000000e+00, !dbg !2820
  br i1 %cmp125, label %if.then.127, label %if.end.144, !dbg !2821

if.then.127:                                      ; preds = %if.end.124
  %call129 = tail call double @fabs(double %15) #3, !dbg !2822
  %call130 = tail call double @fmod(double %call129, double 2.000000e+00) #2, !dbg !2822
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %cmp133 = fcmp olt double %15, 0.000000e+00, !dbg !2823
  br i1 %cmp133, label %if.then.135, label %if.end.136, !dbg !2825

if.then.135:                                      ; preds = %if.then.127
  %66 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !2826, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0)) #2, !dbg !2828
  br label %cleanup.208, !dbg !2829

if.end.136:                                       ; preds = %if.then.127
  %cmp131 = fcmp oeq double %call130, 1.000000e+00, !dbg !2822
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  %cond141 = select i1 %cmp131, double %22, double 0.000000e+00, !dbg !2830
  tail call void @llvm.dbg.value(metadata double %cond141, i64 0, metadata !420, metadata !1036) #2, !dbg !2831
  %67 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2835, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %67, i64 0, metadata !421, metadata !1036) #2, !dbg !2836
  %cmp.i.358 = icmp eq %struct.PyFloatObject* %67, null, !dbg !2837
  br i1 %cmp.i.358, label %if.else.i.364, label %if.then.i.361, !dbg !2838

if.then.i.361:                                    ; preds = %if.end.136
  %ob_type.i.359 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %67, i64 0, i32 0, i32 1, !dbg !2839
  %68 = bitcast %struct._typeobject** %ob_type.i.359 to i64*, !dbg !2839
  %69 = load i64, i64* %68, align 8, !dbg !2839, !tbaa !1056
  store i64 %69, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2840, !tbaa !1046
  %70 = load i32, i32* @numfree, align 4, !dbg !2841, !tbaa !1061
  %dec.i.360 = add i32 %70, -1, !dbg !2841
  store i32 %dec.i.360, i32* @numfree, align 4, !dbg !2841, !tbaa !1061
  br label %if.end.3.i.371, !dbg !2842

if.else.i.364:                                    ; preds = %if.end.136
  %call.i.362 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2843
  %71 = bitcast i8* %call.i.362 to %struct.PyFloatObject*, !dbg !2844
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %71, i64 0, metadata !421, metadata !1036) #2, !dbg !2836
  %tobool.i.363 = icmp eq i8* %call.i.362, null, !dbg !2845
  br i1 %tobool.i.363, label %if.then.1.i.366, label %if.end.3.i.371, !dbg !2846

if.then.1.i.366:                                  ; preds = %if.else.i.364
  %call2.i.365 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2847
  br label %cleanup.208, !dbg !2848

if.end.3.i.371:                                   ; preds = %if.else.i.364, %if.then.i.361
  %op.0.i.367 = phi %struct.PyFloatObject* [ %67, %if.then.i.361 ], [ %71, %if.else.i.364 ], !dbg !2849
  %72 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.367, i64 0, i32 0, !dbg !2850
  %ob_type4.i.368 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.367, i64 0, i32 0, i32 1, !dbg !2850
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.368, align 8, !dbg !2850, !tbaa !1056
  %ob_refcnt.i.369 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.367, i64 0, i32 0, i32 0, !dbg !2850
  store i64 1, i64* %ob_refcnt.i.369, align 8, !dbg !2850, !tbaa !1074
  %ob_fval.i.370 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.367, i64 0, i32 1, !dbg !2851
  store double %cond141, double* %ob_fval.i.370, align 8, !dbg !2852, !tbaa !1077
  br label %cleanup.208, !dbg !2853

if.end.144:                                       ; preds = %if.end.124
  %cmp145 = fcmp olt double %22, 0.000000e+00, !dbg !2854
  br i1 %cmp145, label %if.then.147, label %if.end.158, !dbg !2856

if.then.147:                                      ; preds = %if.end.144
  %call148 = tail call double @floor(double %15) #3, !dbg !2857
  %cmp149 = fcmp une double %15, %call148, !dbg !2860
  br i1 %cmp149, label %if.then.151, label %if.end.153, !dbg !2861

if.then.151:                                      ; preds = %if.then.147
  %73 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyComplex_Type, i64 0, i32 10), align 8, !dbg !2862, !tbaa !1287
  %nb_power = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %73, i64 0, i32 5, !dbg !2864
  %74 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %nb_power, align 8, !dbg !2864, !tbaa !2865
  %call152 = tail call %struct._object* %74(%struct._object* %v, %struct._object* %w, %struct._object* nonnull @_Py_NoneStruct) #2, !dbg !2866
  br label %cleanup.208, !dbg !2867

if.end.153:                                       ; preds = %if.then.147
  %sub = fsub double -0.000000e+00, %22, !dbg !2868
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !616, metadata !1036), !dbg !2574
  %75 = bitcast double %sub to i64, !dbg !2869
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %call154 = tail call double @fabs(double %15) #3, !dbg !2870
  %call155 = tail call double @fmod(double %call154, double 2.000000e+00) #2, !dbg !2870
  %cmp156 = fcmp oeq double %call155, 1.000000e+00, !dbg !2870
  %conv157 = zext i1 %cmp156 to i32, !dbg !2870
  tail call void @llvm.dbg.value(metadata i32 %conv157, i64 0, metadata !619, metadata !1036), !dbg !2559
  br label %if.end.158, !dbg !2871

if.end.158:                                       ; preds = %if.end.153, %if.end.144
  %iv.sroa.0.0.430 = phi i64 [ %75, %if.end.153 ], [ %iv.sroa.0.0.428, %if.end.144 ]
  %negate_result.0 = phi i32 [ %conv157, %if.end.153 ], [ 0, %if.end.144 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  %76 = bitcast i64 %iv.sroa.0.0.430 to double, !dbg !2872
  %cmp159 = fcmp oeq double %76, 1.000000e+00, !dbg !2874
  br i1 %cmp159, label %if.then.161, label %if.end.165, !dbg !2875

if.then.161:                                      ; preds = %if.end.158
  %tobool162 = icmp ne i32 %negate_result.0, 0, !dbg !2876
  %cond163 = select i1 %tobool162, double -1.000000e+00, double 1.000000e+00, !dbg !2876
  tail call void @llvm.dbg.value(metadata double %cond163, i64 0, metadata !420, metadata !1036) #2, !dbg !2878
  %77 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2880, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %77, i64 0, metadata !421, metadata !1036) #2, !dbg !2881
  %cmp.i.374 = icmp eq %struct.PyFloatObject* %77, null, !dbg !2882
  br i1 %cmp.i.374, label %if.else.i.380, label %if.then.i.377, !dbg !2883

if.then.i.377:                                    ; preds = %if.then.161
  %ob_type.i.375 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %77, i64 0, i32 0, i32 1, !dbg !2884
  %78 = bitcast %struct._typeobject** %ob_type.i.375 to i64*, !dbg !2884
  %79 = load i64, i64* %78, align 8, !dbg !2884, !tbaa !1056
  store i64 %79, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2885, !tbaa !1046
  %80 = load i32, i32* @numfree, align 4, !dbg !2886, !tbaa !1061
  %dec.i.376 = add i32 %80, -1, !dbg !2886
  store i32 %dec.i.376, i32* @numfree, align 4, !dbg !2886, !tbaa !1061
  br label %if.end.3.i.387, !dbg !2887

if.else.i.380:                                    ; preds = %if.then.161
  %call.i.378 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2888
  %81 = bitcast i8* %call.i.378 to %struct.PyFloatObject*, !dbg !2889
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %81, i64 0, metadata !421, metadata !1036) #2, !dbg !2881
  %tobool.i.379 = icmp eq i8* %call.i.378, null, !dbg !2890
  br i1 %tobool.i.379, label %if.then.1.i.382, label %if.end.3.i.387, !dbg !2891

if.then.1.i.382:                                  ; preds = %if.else.i.380
  %call2.i.381 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2892
  br label %cleanup.208, !dbg !2893

if.end.3.i.387:                                   ; preds = %if.else.i.380, %if.then.i.377
  %op.0.i.383 = phi %struct.PyFloatObject* [ %77, %if.then.i.377 ], [ %81, %if.else.i.380 ], !dbg !2894
  %82 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.383, i64 0, i32 0, !dbg !2895
  %ob_type4.i.384 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.383, i64 0, i32 0, i32 1, !dbg !2895
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.384, align 8, !dbg !2895, !tbaa !1056
  %ob_refcnt.i.385 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.383, i64 0, i32 0, i32 0, !dbg !2895
  store i64 1, i64* %ob_refcnt.i.385, align 8, !dbg !2895, !tbaa !1074
  %ob_fval.i.386 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.383, i64 0, i32 1, !dbg !2896
  store double %cond163, double* %ob_fval.i.386, align 8, !dbg !2897, !tbaa !1077
  br label %cleanup.208, !dbg !2898

if.end.165:                                       ; preds = %if.end.158
  %call166 = tail call i32* @__errno_location() #3, !dbg !2899
  store i32 0, i32* %call166, align 4, !dbg !2900, !tbaa !1061
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !616, metadata !1036), !dbg !2574
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !617, metadata !1036), !dbg !2594
  %call167 = tail call double @pow(double %76, double %15) #2, !dbg !2901
  tail call void @llvm.dbg.value(metadata double %call167, i64 0, metadata !618, metadata !1036), !dbg !2902
  %83 = load i32, i32* %call166, align 4, !dbg !2903, !tbaa !1061
  %cmp169 = icmp eq i32 %83, 0, !dbg !2905
  br i1 %cmp169, label %if.then.171, label %if.else.180, !dbg !2909

if.then.171:                                      ; preds = %if.end.165
  %cmp172 = fcmp oeq double %call167, 0x7FF0000000000000, !dbg !2910
  %cmp175 = fcmp oeq double %call167, 0xFFF0000000000000, !dbg !2914
  %or.cond = or i1 %cmp172, %cmp175, !dbg !2910
  br i1 %or.cond, label %do.end.thread450, label %do.end.thread455, !dbg !2910

do.end.thread455:                                 ; preds = %if.then.171
  %tobool190.456 = icmp eq i32 %negate_result.0, 0, !dbg !2916
  %sub192.457 = fsub double -0.000000e+00, %call167, !dbg !2918
  %call167.sub192.458 = select i1 %tobool190.456, double %call167, double %sub192.457, !dbg !2919
  br label %if.end.206, !dbg !2920

do.end.thread450:                                 ; preds = %if.then.171
  store i32 34, i32* %call166, align 4, !dbg !2921, !tbaa !1061
  br label %if.then.197, !dbg !2920

if.else.180:                                      ; preds = %if.end.165
  %cmp182 = icmp eq i32 %83, 34, !dbg !2924
  %cmp184 = fcmp oeq double %call167, 0.000000e+00, !dbg !2927
  %or.cond212 = and i1 %cmp184, %cmp182, !dbg !2924
  br i1 %or.cond212, label %do.end.thread, label %if.then.197, !dbg !2924

do.end.thread:                                    ; preds = %if.else.180
  store i32 0, i32* %call166, align 4, !dbg !2929, !tbaa !1061
  %tobool190.445 = icmp eq i32 %negate_result.0, 0, !dbg !2916
  %sub192.446 = fsub double -0.000000e+00, %call167, !dbg !2918
  %call167.sub192.447 = select i1 %tobool190.445, double %call167, double %sub192.446, !dbg !2919
  br label %if.end.206, !dbg !2920

if.then.197:                                      ; preds = %if.else.180, %do.end.thread450
  %84 = phi i32 [ 34, %do.end.thread450 ], [ %83, %if.else.180 ]
  %cmp199 = icmp eq i32 %84, 34, !dbg !2931
  %85 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2933, !tbaa !1046
  %86 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2935, !tbaa !1046
  %cond204 = select i1 %cmp199, %struct._object* %85, %struct._object* %86, !dbg !2936
  %call205 = tail call %struct._object* @PyErr_SetFromErrno(%struct._object* %cond204) #2, !dbg !2937
  br label %cleanup.208, !dbg !2940

if.end.206:                                       ; preds = %do.end.thread455, %do.end.thread
  %call167.sub192449 = phi double [ %call167.sub192.447, %do.end.thread ], [ %call167.sub192.458, %do.end.thread455 ]
  %87 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2941, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %87, i64 0, metadata !421, metadata !1036) #2, !dbg !2943
  %cmp.i.390 = icmp eq %struct.PyFloatObject* %87, null, !dbg !2944
  br i1 %cmp.i.390, label %if.else.i.396, label %if.then.i.393, !dbg !2945

if.then.i.393:                                    ; preds = %if.end.206
  %ob_type.i.391 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %87, i64 0, i32 0, i32 1, !dbg !2946
  %88 = bitcast %struct._typeobject** %ob_type.i.391 to i64*, !dbg !2946
  %89 = load i64, i64* %88, align 8, !dbg !2946, !tbaa !1056
  store i64 %89, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2947, !tbaa !1046
  %90 = load i32, i32* @numfree, align 4, !dbg !2948, !tbaa !1061
  %dec.i.392 = add i32 %90, -1, !dbg !2948
  store i32 %dec.i.392, i32* @numfree, align 4, !dbg !2948, !tbaa !1061
  br label %if.end.3.i.403, !dbg !2949

if.else.i.396:                                    ; preds = %if.end.206
  %call.i.394 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2950
  %91 = bitcast i8* %call.i.394 to %struct.PyFloatObject*, !dbg !2951
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %91, i64 0, metadata !421, metadata !1036) #2, !dbg !2943
  %tobool.i.395 = icmp eq i8* %call.i.394, null, !dbg !2952
  br i1 %tobool.i.395, label %if.then.1.i.398, label %if.end.3.i.403, !dbg !2953

if.then.1.i.398:                                  ; preds = %if.else.i.396
  %call2.i.397 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2954
  br label %cleanup.208, !dbg !2955

if.end.3.i.403:                                   ; preds = %if.else.i.396, %if.then.i.393
  %op.0.i.399 = phi %struct.PyFloatObject* [ %87, %if.then.i.393 ], [ %91, %if.else.i.396 ], !dbg !2956
  %92 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.399, i64 0, i32 0, !dbg !2957
  %ob_type4.i.400 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.399, i64 0, i32 0, i32 1, !dbg !2957
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.400, align 8, !dbg !2957, !tbaa !1056
  %ob_refcnt.i.401 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.399, i64 0, i32 0, i32 0, !dbg !2957
  store i64 1, i64* %ob_refcnt.i.401, align 8, !dbg !2957, !tbaa !1074
  %ob_fval.i.402 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.399, i64 0, i32 1, !dbg !2958
  store double %call167.sub192449, double* %ob_fval.i.402, align 8, !dbg !2959, !tbaa !1077
  br label %cleanup.208, !dbg !2960

cleanup.208:                                      ; preds = %land.lhs.true.i.232, %land.lhs.true.i, %if.end.3.i.403, %if.then.1.i.398, %if.end.3.i.387, %if.then.1.i.382, %if.end.3.i.371, %if.then.1.i.366, %if.end.3.i.355, %if.then.1.i.350, %if.end.3.i.339, %if.then.1.i.334, %if.end.3.i.323, %if.then.1.i.318, %if.end.3.i.307, %if.then.1.i.302, %if.end.3.i.291, %if.then.1.i.286, %if.end.3.i.275, %if.then.1.i.270, %if.end.3.i.259, %if.then.1.i.254, %if.end.3.i, %if.then.1.i, %if.else.i.235, %if.else.i, %if.then.135, %if.then.197, %if.then.151, %if.then
  %retval.2 = phi %struct._object* [ null, %if.then ], [ %call152, %if.then.151 ], [ null, %if.then.197 ], [ null, %if.then.135 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.235 ], [ %21, %if.end.3.i ], [ %call2.i.244, %if.then.1.i ], [ %28, %if.end.3.i.259 ], [ %call2.i.253, %if.then.1.i.254 ], [ %35, %if.end.3.i.275 ], [ %call2.i.269, %if.then.1.i.270 ], [ %41, %if.end.3.i.291 ], [ %call2.i.285, %if.then.1.i.286 ], [ %47, %if.end.3.i.307 ], [ %call2.i.301, %if.then.1.i.302 ], [ %53, %if.end.3.i.323 ], [ %call2.i.317, %if.then.1.i.318 ], [ %59, %if.end.3.i.339 ], [ %call2.i.333, %if.then.1.i.334 ], [ %65, %if.end.3.i.355 ], [ %call2.i.349, %if.then.1.i.350 ], [ %72, %if.end.3.i.371 ], [ %call2.i.365, %if.then.1.i.366 ], [ %82, %if.end.3.i.387 ], [ %call2.i.381, %if.then.1.i.382 ], [ %92, %if.end.3.i.403 ], [ %call2.i.397, %if.then.1.i.398 ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.232 ]
  ret %struct._object* %retval.2, !dbg !2961
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_neg(%struct.PyFloatObject* nocapture readonly %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !628, metadata !1036), !dbg !2962
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !2963
  %0 = load double, double* %ob_fval, align 8, !dbg !2963, !tbaa !1077
  %sub = fsub double -0.000000e+00, %0, !dbg !2964
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !420, metadata !1036) #2, !dbg !2965
  %1 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2967, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %1, i64 0, metadata !421, metadata !1036) #2, !dbg !2968
  %cmp.i = icmp eq %struct.PyFloatObject* %1, null, !dbg !2969
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2970

if.then.i:                                        ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %1, i64 0, i32 0, i32 1, !dbg !2971
  %2 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !2971
  %3 = load i64, i64* %2, align 8, !dbg !2971, !tbaa !1056
  store i64 %3, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2972, !tbaa !1046
  %4 = load i32, i32* @numfree, align 4, !dbg !2973, !tbaa !1061
  %dec.i = add i32 %4, -1, !dbg !2973
  store i32 %dec.i, i32* @numfree, align 4, !dbg !2973, !tbaa !1061
  br label %if.end.3.i, !dbg !2974

if.else.i:                                        ; preds = %entry
  %call.i = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !2975
  %5 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !2976
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %5, i64 0, metadata !421, metadata !1036) #2, !dbg !2968
  %tobool.i = icmp eq i8* %call.i, null, !dbg !2977
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !2978

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !2979
  br label %PyFloat_FromDouble.exit, !dbg !2980

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %1, %if.then.i ], [ %5, %if.else.i ], !dbg !2981
  %6 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !2982
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !2982
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !2982, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !2982
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !2982, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !2983
  store double %sub, double* %ob_fval.i, align 8, !dbg !2984, !tbaa !1077
  br label %PyFloat_FromDouble.exit, !dbg !2985

PyFloat_FromDouble.exit:                          ; preds = %if.then.1.i, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %6, %if.end.3.i ], [ %call2.i, %if.then.1.i ], !dbg !2981
  ret %struct._object* %retval.0.i, !dbg !2986
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_float(%struct._object* %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !631, metadata !1036), !dbg !2987
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !2988
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2988, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !2988
  br i1 %cmp, label %if.then, label %if.else, !dbg !2990

if.then:                                          ; preds = %entry
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 0, !dbg !2991
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2991, !tbaa !1074
  %inc = add i64 %1, 1, !dbg !2991
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2991, !tbaa !1074
  br label %if.end, !dbg !2991

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !2992
  %3 = load i64, i64* %2, align 8, !dbg !2992, !tbaa !1077
  %4 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2993, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %4, i64 0, metadata !421, metadata !1036) #2, !dbg !2995
  %cmp.i = icmp eq %struct.PyFloatObject* %4, null, !dbg !2996
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !2997

if.then.i:                                        ; preds = %if.else
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %4, i64 0, i32 0, i32 1, !dbg !2998
  %5 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !2998
  %6 = load i64, i64* %5, align 8, !dbg !2998, !tbaa !1056
  store i64 %6, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !2999, !tbaa !1046
  %7 = load i32, i32* @numfree, align 4, !dbg !3000, !tbaa !1061
  %dec.i = add i32 %7, -1, !dbg !3000
  store i32 %dec.i, i32* @numfree, align 4, !dbg !3000, !tbaa !1061
  br label %if.end.3.i, !dbg !3001

if.else.i:                                        ; preds = %if.else
  %call.i = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !3002
  %8 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !3003
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %8, i64 0, metadata !421, metadata !1036) #2, !dbg !2995
  %tobool.i = icmp eq i8* %call.i, null, !dbg !3004
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !3005

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !3006
  br label %if.end, !dbg !3007

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %4, %if.then.i ], [ %8, %if.else.i ], !dbg !3008
  %9 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !3009
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !3009
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !3009, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !3009
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !3009, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !3010
  %10 = bitcast double* %ob_fval.i to i64*, !dbg !3011
  store i64 %3, i64* %10, align 8, !dbg !3011, !tbaa !1077
  br label %if.end, !dbg !3012

if.end:                                           ; preds = %if.end.3.i, %if.then.1.i, %if.then
  %v.addr.0 = phi %struct._object* [ %v, %if.then ], [ %9, %if.end.3.i ], [ %call2.i, %if.then.1.i ]
  ret %struct._object* %v.addr.0, !dbg !3013
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_abs(%struct.PyFloatObject* nocapture readonly %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !634, metadata !1036), !dbg !3014
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !3015
  %0 = load double, double* %ob_fval, align 8, !dbg !3015, !tbaa !1077
  %call = tail call double @fabs(double %0) #3, !dbg !3016
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !420, metadata !1036) #2, !dbg !3017
  %1 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3019, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %1, i64 0, metadata !421, metadata !1036) #2, !dbg !3020
  %cmp.i = icmp eq %struct.PyFloatObject* %1, null, !dbg !3021
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !3022

if.then.i:                                        ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %1, i64 0, i32 0, i32 1, !dbg !3023
  %2 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !3023
  %3 = load i64, i64* %2, align 8, !dbg !3023, !tbaa !1056
  store i64 %3, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3024, !tbaa !1046
  %4 = load i32, i32* @numfree, align 4, !dbg !3025, !tbaa !1061
  %dec.i = add i32 %4, -1, !dbg !3025
  store i32 %dec.i, i32* @numfree, align 4, !dbg !3025, !tbaa !1061
  br label %if.end.3.i, !dbg !3026

if.else.i:                                        ; preds = %entry
  %call.i = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !3027
  %5 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !3028
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %5, i64 0, metadata !421, metadata !1036) #2, !dbg !3020
  %tobool.i = icmp eq i8* %call.i, null, !dbg !3029
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !3030

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !3031
  br label %PyFloat_FromDouble.exit, !dbg !3032

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %1, %if.then.i ], [ %5, %if.else.i ], !dbg !3033
  %6 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !3034
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !3034
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !3034, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !3034
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !3034, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !3035
  store double %call, double* %ob_fval.i, align 8, !dbg !3036, !tbaa !1077
  br label %PyFloat_FromDouble.exit, !dbg !3037

PyFloat_FromDouble.exit:                          ; preds = %if.then.1.i, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %6, %if.end.3.i ], [ %call2.i, %if.then.1.i ], !dbg !3033
  ret %struct._object* %retval.0.i, !dbg !3038
}

; Function Attrs: nounwind readonly uwtable
define internal i32 @float_bool(%struct.PyFloatObject* nocapture readonly %v) #8 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !639, metadata !1036), !dbg !3039
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !3040
  %0 = load double, double* %ob_fval, align 8, !dbg !3040, !tbaa !1077
  %cmp = fcmp une double %0, 0.000000e+00, !dbg !3041
  %conv = zext i1 %cmp to i32, !dbg !3041
  ret i32 %conv, !dbg !3042
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_trunc(%struct._object* %v) #1 {
entry:
  %wholepart = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !642, metadata !1036), !dbg !3043
  %call = tail call double @PyFloat_AsDouble(%struct._object* %v), !dbg !3044
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !643, metadata !1036), !dbg !3045
  %0 = bitcast double* %wholepart to i8*, !dbg !3046
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3046
  tail call void @llvm.dbg.value(metadata double* %wholepart, i64 0, metadata !644, metadata !1036), !dbg !3047
  %call1 = call double @modf(double %call, double* nonnull %wholepart) #2, !dbg !3048
  tail call void @llvm.dbg.value(metadata double* %wholepart, i64 0, metadata !644, metadata !1036), !dbg !3047
  %1 = load double, double* %wholepart, align 8, !dbg !3049, !tbaa !1454
  %cmp = fcmp ogt double %1, 0xC3E0000000000000, !dbg !3050
  %cmp2 = fcmp olt double %1, 0x43E0000000000000, !dbg !3051
  %or.cond = and i1 %cmp, %cmp2, !dbg !3052
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3052

if.then:                                          ; preds = %entry
  %conv = fptosi double %1 to i64, !dbg !3053
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !645, metadata !1036), !dbg !3054
  %call3 = tail call %struct._object* @PyLong_FromLong(i64 %conv) #2, !dbg !3055
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call %struct._object* @PyLong_FromDouble(double %1) #2, !dbg !3056
  br label %cleanup, !dbg !3057

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ %call3, %if.then ], [ %call4, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !3058
  ret %struct._object* %retval.0, !dbg !3058
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_floor_div(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !651, metadata !1036), !dbg !3059
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !652, metadata !1036), !dbg !3060
  %call = tail call %struct._object* @float_divmod(%struct._object* %v, %struct._object* %w), !dbg !3061
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !653, metadata !1036), !dbg !3062
  %cmp = icmp eq %struct._object* %call, null, !dbg !3063
  %cmp1 = icmp eq %struct._object* %call, @_Py_NotImplementedStruct, !dbg !3065
  %or.cond = or i1 %cmp, %cmp1, !dbg !3066
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3066

if.end:                                           ; preds = %entry
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !3067
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !3067
  %0 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3067, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !654, metadata !1036), !dbg !3068
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !3069
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3069, !tbaa !1074
  %inc = add i64 %1, 1, !dbg !3069
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3069, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !655, metadata !1036), !dbg !3070
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3072
  %2 = load i64, i64* %ob_refcnt2, align 8, !dbg !3072, !tbaa !1074
  %dec = add i64 %2, -1, !dbg !3072
  store i64 %dec, i64* %ob_refcnt2, align 8, !dbg !3072, !tbaa !1074
  %cmp3 = icmp eq i64 %dec, 0, !dbg !3072
  br i1 %cmp3, label %if.else, label %cleanup, !dbg !3074

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3075
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3075, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !3075
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3075, !tbaa !1142
  tail call void %4(%struct._object* %call) #2, !dbg !3075
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ %call, %entry ], [ %0, %if.end ], [ %0, %if.else ]
  ret %struct._object* %retval.0, !dbg !3077
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_div(%struct._object* %v, %struct._object* %w) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !3079
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !580, metadata !1036), !dbg !3085
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !660, metadata !1036), !dbg !3084
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !3090
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3090, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %0, @PyFloat_Type, !dbg !3090
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3090

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %0, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !3091
  %tobool = icmp eq i32 %call, 0, !dbg !3091
  br i1 %tobool, label %if.else, label %if.then, !dbg !3093

if.then:                                          ; preds = %lor.lhs.false, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !3094
  %2 = load i64, i64* %1, align 8, !dbg !3094, !tbaa !1077
  br label %if.end.5, !dbg !3094

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !661, metadata !1036), !dbg !3097
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !3098
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !3099
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3100, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !3100
  %4 = load i64, i64* %tp_flags.i, align 8, !dbg !3100, !tbaa !1172
  %and.i = and i64 %4, 16777216, !dbg !3100
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !3100
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !3101

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !3102
  %5 = bitcast double %call.i to i64, !dbg !3103
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !3104
  br i1 %cmp1.i, label %land.lhs.true.i, label %if.end.5, !dbg !3105

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3106
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !3106
  br i1 %tobool.i, label %if.end.5, label %cleanup, !dbg !3107

if.else.i:                                        ; preds = %if.else
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3108, !tbaa !1074
  %inc.i = add i64 %6, 1, !dbg !3108
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3108, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !3079
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !659, metadata !1036), !dbg !3078
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !659, metadata !1036), !dbg !3078
  br label %cleanup, !dbg !3109

if.end.5:                                         ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %a.sroa.0.0.57 = phi i64 [ %2, %if.then ], [ %5, %land.lhs.true.i ], [ %5, %if.then.i ]
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %w, i64 0, i32 1, !dbg !3110
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3110, !tbaa !1056
  %cmp7 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !3110
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3110

lor.lhs.false.8:                                  ; preds = %if.end.5
  %call10 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !3111
  %tobool11 = icmp eq i32 %call10, 0, !dbg !3111
  br i1 %tobool11, label %if.else.14, label %if.then.12, !dbg !3113

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %8 = getelementptr inbounds %struct._object, %struct._object* %w, i64 1, i32 0, !dbg !3114
  %9 = load i64, i64* %8, align 8, !dbg !3114, !tbaa !1077
  br label %if.end.19, !dbg !3114

if.else.14:                                       ; preds = %lor.lhs.false.8
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !662, metadata !1036), !dbg !3117
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !3118
  tail call void @llvm.dbg.value(metadata %struct._object* %w, i64 0, metadata !582, metadata !1036) #2, !dbg !3119
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3120, !tbaa !1056
  %tp_flags.i.26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !3120
  %11 = load i64, i64* %tp_flags.i.26, align 8, !dbg !3120, !tbaa !1172
  %and.i.27 = and i64 %11, 16777216, !dbg !3120
  %cmp.i.28 = icmp eq i64 %and.i.27, 0, !dbg !3120
  br i1 %cmp.i.28, label %if.else.i.37, label %if.then.i.31, !dbg !3121

if.then.i.31:                                     ; preds = %if.else.14
  %call.i.29 = tail call double @PyLong_AsDouble(%struct._object* %w) #2, !dbg !3122
  %12 = bitcast double %call.i.29 to i64, !dbg !3123
  %cmp1.i.30 = fcmp oeq double %call.i.29, -1.000000e+00, !dbg !3124
  br i1 %cmp1.i.30, label %land.lhs.true.i.34, label %if.end.19, !dbg !3125

land.lhs.true.i.34:                               ; preds = %if.then.i.31
  %call2.i.32 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3126
  %tobool.i.33 = icmp eq %struct._object* %call2.i.32, null, !dbg !3126
  br i1 %tobool.i.33, label %if.end.19, label %cleanup, !dbg !3127

if.else.i.37:                                     ; preds = %if.else.14
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3128, !tbaa !1074
  %inc.i.36 = add i64 %13, 1, !dbg !3128
  store i64 %inc.i.36, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3128, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !3085
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !660, metadata !1036), !dbg !3084
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !660, metadata !1036), !dbg !3084
  br label %cleanup, !dbg !3129

if.end.19:                                        ; preds = %if.then.i.31, %land.lhs.true.i.34, %if.then.12
  %b.sroa.0.0.55 = phi i64 [ %9, %if.then.12 ], [ %12, %land.lhs.true.i.34 ], [ %12, %if.then.i.31 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !662, metadata !1036), !dbg !3117
  %14 = bitcast i64 %b.sroa.0.0.55 to double, !dbg !3130
  %cmp20 = fcmp oeq double %14, 0.000000e+00, !dbg !3132
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !3133

if.then.21:                                       ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !3134, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0)) #2, !dbg !3136
  br label %cleanup, !dbg !3137

if.end.22:                                        ; preds = %if.end.19
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !661, metadata !1036), !dbg !3097
  %16 = bitcast i64 %a.sroa.0.0.57 to double, !dbg !3138
  %div = fdiv double %16, %14, !dbg !3139
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !661, metadata !1036), !dbg !3097
  tail call void @llvm.dbg.value(metadata double %div, i64 0, metadata !420, metadata !1036) #2, !dbg !3140
  %17 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3142, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %17, i64 0, metadata !421, metadata !1036) #2, !dbg !3143
  %cmp.i.40 = icmp eq %struct.PyFloatObject* %17, null, !dbg !3144
  br i1 %cmp.i.40, label %if.else.i.45, label %if.then.i.42, !dbg !3145

if.then.i.42:                                     ; preds = %if.end.22
  %ob_type.i.41 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %17, i64 0, i32 0, i32 1, !dbg !3146
  %18 = bitcast %struct._typeobject** %ob_type.i.41 to i64*, !dbg !3146
  %19 = load i64, i64* %18, align 8, !dbg !3146, !tbaa !1056
  store i64 %19, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3147, !tbaa !1046
  %20 = load i32, i32* @numfree, align 4, !dbg !3148, !tbaa !1061
  %dec.i = add i32 %20, -1, !dbg !3148
  store i32 %dec.i, i32* @numfree, align 4, !dbg !3148, !tbaa !1061
  br label %if.end.3.i, !dbg !3149

if.else.i.45:                                     ; preds = %if.end.22
  %call.i.43 = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !3150
  %21 = bitcast i8* %call.i.43 to %struct.PyFloatObject*, !dbg !3151
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %21, i64 0, metadata !421, metadata !1036) #2, !dbg !3143
  %tobool.i.44 = icmp eq i8* %call.i.43, null, !dbg !3152
  br i1 %tobool.i.44, label %if.then.1.i, label %if.end.3.i, !dbg !3153

if.then.1.i:                                      ; preds = %if.else.i.45
  %call2.i.46 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !3154
  br label %cleanup, !dbg !3155

if.end.3.i:                                       ; preds = %if.else.i.45, %if.then.i.42
  %op.0.i = phi %struct.PyFloatObject* [ %17, %if.then.i.42 ], [ %21, %if.else.i.45 ], !dbg !3156
  %22 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !3157
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !3157
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !3157, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !3157
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !3157, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !3158
  store double %div, double* %ob_fval.i, align 8, !dbg !3159, !tbaa !1077
  br label %cleanup, !dbg !3160

cleanup:                                          ; preds = %land.lhs.true.i.34, %land.lhs.true.i, %if.end.3.i, %if.then.1.i, %if.else.i.37, %if.else.i, %if.then.21
  %retval.0 = phi %struct._object* [ null, %if.then.21 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ @_Py_NotImplementedStruct, %if.else.i.37 ], [ %22, %if.end.3.i ], [ %call2.i.46, %if.then.1.i ], [ null, %land.lhs.true.i ], [ null, %land.lhs.true.i.34 ]
  ret %struct._object* %retval.0, !dbg !3161
}

declare double @PyLong_AsDouble(%struct._object*) #4

; Function Attrs: nounwind
declare double @fmod(double, double) #6

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #7

; Function Attrs: nounwind readnone
declare double @floor(double) #7

declare %struct._object* @Py_BuildValue(i8*, ...) #4

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #7

; Function Attrs: nounwind readnone
declare double @fabs(double) #7

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare double @pow(double, double) #6

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #4

; Function Attrs: nounwind
declare double @modf(double, double* nocapture) #6

declare %struct._object* @PyLong_FromDouble(double) #4

declare i64 @_Py_HashDouble(double) #4

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #7

declare i32 @_PyLong_Sign(%struct._object*) #4

declare i64 @_PyLong_NumBits(%struct._object*) #4

declare void @PyErr_Clear() #4

declare %struct._object* @PyNumber_Negative(%struct._object*) #4

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #4

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #4

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #4

declare %struct._object* @PyBool_FromLong(i64) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_round(%struct._object* %v, %struct._object* %args) #1 {
entry:
  %buf_end.i = alloca i8*, align 8
  %shortbuf.i = alloca [100 x i8], align 16
  %decpt.i = alloca i32, align 4
  %sign.i = alloca i32, align 4
  %o_ndigits = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !717, metadata !1036), !dbg !3162
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !718, metadata !1036), !dbg !3163
  %0 = bitcast %struct._object** %o_ndigits to i8*, !dbg !3164
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3164
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !721, metadata !1036), !dbg !3165
  store %struct._object* null, %struct._object** %o_ndigits, align 8, !dbg !3165, !tbaa !1046
  %call = tail call double @PyFloat_AsDouble(%struct._object* %v), !dbg !3166
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !719, metadata !1036), !dbg !3167
  tail call void @llvm.dbg.value(metadata %struct._object** %o_ndigits, i64 0, metadata !721, metadata !1036), !dbg !3165
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0), %struct._object** nonnull %o_ndigits) #2, !dbg !3168
  %tobool = icmp eq i32 %call1, 0, !dbg !3168
  call void @llvm.dbg.declare(metadata [100 x i8]* %shortbuf.i, metadata !734, metadata !1036), !dbg !3170
  br i1 %tobool, label %cleanup, label %if.end, !dbg !3174

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %o_ndigits, i64 0, metadata !721, metadata !1036), !dbg !3165
  %1 = load %struct._object*, %struct._object** %o_ndigits, align 8, !dbg !3175, !tbaa !1046
  %cmp = icmp eq %struct._object* %1, null, !dbg !3177
  br i1 %cmp, label %if.then.2, label %if.end.10, !dbg !3178

if.then.2:                                        ; preds = %if.end
  %call3 = call double @round(double %call) #3, !dbg !3179
  call void @llvm.dbg.value(metadata double %call3, i64 0, metadata !720, metadata !1036), !dbg !3181
  %sub = fsub double %call, %call3, !dbg !3182
  %call4 = call double @fabs(double %sub) #3, !dbg !3184
  %cmp5 = fcmp oeq double %call4, 5.000000e-01, !dbg !3185
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !3186

if.then.6:                                        ; preds = %if.then.2
  %div = fmul double %call, 5.000000e-01, !dbg !3187
  %call7 = call double @round(double %div) #3, !dbg !3188
  %mul = fmul double %call7, 2.000000e+00, !dbg !3189
  call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !720, metadata !1036), !dbg !3181
  br label %if.end.8, !dbg !3190

if.end.8:                                         ; preds = %if.then.6, %if.then.2
  %rounded.0 = phi double [ %mul, %if.then.6 ], [ %call3, %if.then.2 ]
  %call9 = call %struct._object* @PyLong_FromDouble(double %rounded.0) #2, !dbg !3191
  br label %cleanup, !dbg !3192

if.end.10:                                        ; preds = %if.end
  %call11 = call i64 @PyNumber_AsSsize_t(%struct._object* %1, %struct._object* null) #2, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %call11, i64 0, metadata !722, metadata !1036), !dbg !3194
  %cmp12 = icmp eq i64 %call11, -1, !dbg !3195
  br i1 %cmp12, label %land.lhs.true, label %cond.true.19, !dbg !3197

land.lhs.true:                                    ; preds = %if.end.10
  %call13 = call %struct._object* @PyErr_Occurred() #2, !dbg !3198
  %tobool14 = icmp eq %struct._object* %call13, null, !dbg !3198
  br i1 %tobool14, label %cond.true.19, label %cleanup, !dbg !3200

cond.true.19:                                     ; preds = %land.lhs.true, %if.end.10
  %call20 = call i32 @__finite(double %call) #3, !dbg !3201
  %tobool21 = icmp eq i32 %call20, 0, !dbg !3201
  br i1 %tobool21, label %if.then.26, label %if.end.28, !dbg !3201

if.then.26:                                       ; preds = %cond.true.19
  call void @llvm.dbg.value(metadata double %call, i64 0, metadata !420, metadata !1036) #2, !dbg !3204
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3206, !tbaa !1046
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %2, i64 0, metadata !421, metadata !1036) #2, !dbg !3207
  %cmp.i = icmp eq %struct.PyFloatObject* %2, null, !dbg !3208
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !3209

if.then.i:                                        ; preds = %if.then.26
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %2, i64 0, i32 0, i32 1, !dbg !3210
  %3 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !3210
  %4 = load i64, i64* %3, align 8, !dbg !3210, !tbaa !1056
  store i64 %4, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3211, !tbaa !1046
  %5 = load i32, i32* @numfree, align 4, !dbg !3212, !tbaa !1061
  %dec.i = add i32 %5, -1, !dbg !3212
  store i32 %dec.i, i32* @numfree, align 4, !dbg !3212, !tbaa !1061
  br label %if.end.3.i, !dbg !3213

if.else.i:                                        ; preds = %if.then.26
  %call.i = call i8* @PyObject_Malloc(i64 24) #2, !dbg !3214
  %6 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !3215
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %6, i64 0, metadata !421, metadata !1036) #2, !dbg !3207
  %tobool.i = icmp eq i8* %call.i, null, !dbg !3216
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !3217

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3218
  br label %cleanup, !dbg !3219

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %2, %if.then.i ], [ %6, %if.else.i ], !dbg !3220
  %7 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !3221
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !3221
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !3221, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !3221
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !3221, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !3222
  store double %call, double* %ob_fval.i, align 8, !dbg !3223, !tbaa !1077
  br label %cleanup, !dbg !3224

if.end.28:                                        ; preds = %cond.true.19
  %cmp29 = icmp sgt i64 %call11, 323, !dbg !3225
  br i1 %cmp29, label %if.then.31, label %if.else, !dbg !3226

if.then.31:                                       ; preds = %if.end.28
  call void @llvm.dbg.value(metadata double %call, i64 0, metadata !420, metadata !1036) #2, !dbg !3227
  %8 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3229, !tbaa !1046
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %8, i64 0, metadata !421, metadata !1036) #2, !dbg !3230
  %cmp.i.57 = icmp eq %struct.PyFloatObject* %8, null, !dbg !3231
  br i1 %cmp.i.57, label %if.else.i.63, label %if.then.i.60, !dbg !3232

if.then.i.60:                                     ; preds = %if.then.31
  %ob_type.i.58 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %8, i64 0, i32 0, i32 1, !dbg !3233
  %9 = bitcast %struct._typeobject** %ob_type.i.58 to i64*, !dbg !3233
  %10 = load i64, i64* %9, align 8, !dbg !3233, !tbaa !1056
  store i64 %10, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3234, !tbaa !1046
  %11 = load i32, i32* @numfree, align 4, !dbg !3235, !tbaa !1061
  %dec.i.59 = add i32 %11, -1, !dbg !3235
  store i32 %dec.i.59, i32* @numfree, align 4, !dbg !3235, !tbaa !1061
  br label %if.end.3.i.70, !dbg !3236

if.else.i.63:                                     ; preds = %if.then.31
  %call.i.61 = call i8* @PyObject_Malloc(i64 24) #2, !dbg !3237
  %12 = bitcast i8* %call.i.61 to %struct.PyFloatObject*, !dbg !3238
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %12, i64 0, metadata !421, metadata !1036) #2, !dbg !3230
  %tobool.i.62 = icmp eq i8* %call.i.61, null, !dbg !3239
  br i1 %tobool.i.62, label %if.then.1.i.65, label %if.end.3.i.70, !dbg !3240

if.then.1.i.65:                                   ; preds = %if.else.i.63
  %call2.i.64 = call %struct._object* @PyErr_NoMemory() #2, !dbg !3241
  br label %cleanup, !dbg !3242

if.end.3.i.70:                                    ; preds = %if.else.i.63, %if.then.i.60
  %op.0.i.66 = phi %struct.PyFloatObject* [ %8, %if.then.i.60 ], [ %12, %if.else.i.63 ], !dbg !3243
  %13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.66, i64 0, i32 0, !dbg !3244
  %ob_type4.i.67 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.66, i64 0, i32 0, i32 1, !dbg !3244
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.67, align 8, !dbg !3244, !tbaa !1056
  %ob_refcnt.i.68 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.66, i64 0, i32 0, i32 0, !dbg !3244
  store i64 1, i64* %ob_refcnt.i.68, align 8, !dbg !3244, !tbaa !1074
  %ob_fval.i.69 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.66, i64 0, i32 1, !dbg !3245
  store double %call, double* %ob_fval.i.69, align 8, !dbg !3246, !tbaa !1077
  br label %cleanup, !dbg !3247

if.else:                                          ; preds = %if.end.28
  %cmp33 = icmp slt i64 %call11, -308, !dbg !3248
  br i1 %cmp33, label %if.then.35, label %if.else.38, !dbg !3249

if.then.35:                                       ; preds = %if.else
  %mul36 = fmul double %call, 0.000000e+00, !dbg !3250
  call void @llvm.dbg.value(metadata double %mul36, i64 0, metadata !420, metadata !1036) #2, !dbg !3251
  %14 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3253, !tbaa !1046
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %14, i64 0, metadata !421, metadata !1036) #2, !dbg !3254
  %cmp.i.73 = icmp eq %struct.PyFloatObject* %14, null, !dbg !3255
  br i1 %cmp.i.73, label %if.else.i.79, label %if.then.i.76, !dbg !3256

if.then.i.76:                                     ; preds = %if.then.35
  %ob_type.i.74 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %14, i64 0, i32 0, i32 1, !dbg !3257
  %15 = bitcast %struct._typeobject** %ob_type.i.74 to i64*, !dbg !3257
  %16 = load i64, i64* %15, align 8, !dbg !3257, !tbaa !1056
  store i64 %16, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3258, !tbaa !1046
  %17 = load i32, i32* @numfree, align 4, !dbg !3259, !tbaa !1061
  %dec.i.75 = add i32 %17, -1, !dbg !3259
  store i32 %dec.i.75, i32* @numfree, align 4, !dbg !3259, !tbaa !1061
  br label %if.end.3.i.86, !dbg !3260

if.else.i.79:                                     ; preds = %if.then.35
  %call.i.77 = call i8* @PyObject_Malloc(i64 24) #2, !dbg !3261
  %18 = bitcast i8* %call.i.77 to %struct.PyFloatObject*, !dbg !3262
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %18, i64 0, metadata !421, metadata !1036) #2, !dbg !3254
  %tobool.i.78 = icmp eq i8* %call.i.77, null, !dbg !3263
  br i1 %tobool.i.78, label %if.then.1.i.81, label %if.end.3.i.86, !dbg !3264

if.then.1.i.81:                                   ; preds = %if.else.i.79
  %call2.i.80 = call %struct._object* @PyErr_NoMemory() #2, !dbg !3265
  br label %cleanup, !dbg !3266

if.end.3.i.86:                                    ; preds = %if.else.i.79, %if.then.i.76
  %op.0.i.82 = phi %struct.PyFloatObject* [ %14, %if.then.i.76 ], [ %18, %if.else.i.79 ], !dbg !3267
  %19 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.82, i64 0, i32 0, !dbg !3268
  %ob_type4.i.83 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.82, i64 0, i32 0, i32 1, !dbg !3268
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.83, align 8, !dbg !3268, !tbaa !1056
  %ob_refcnt.i.84 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.82, i64 0, i32 0, i32 0, !dbg !3268
  store i64 1, i64* %ob_refcnt.i.84, align 8, !dbg !3268, !tbaa !1074
  %ob_fval.i.85 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.82, i64 0, i32 1, !dbg !3269
  store double %mul36, double* %ob_fval.i.85, align 8, !dbg !3270, !tbaa !1077
  br label %cleanup, !dbg !3271

if.else.38:                                       ; preds = %if.else
  %conv39 = trunc i64 %call11 to i32, !dbg !3272
  call void @llvm.dbg.value(metadata double %call, i64 0, metadata !727, metadata !1036) #2, !dbg !3273
  call void @llvm.dbg.value(metadata i32 %conv39, i64 0, metadata !728, metadata !1036) #2, !dbg !3274
  call void @llvm.dbg.value(metadata i64 100, i64 0, metadata !731, metadata !1036) #2, !dbg !3275
  %20 = bitcast i8** %buf_end.i to i8*, !dbg !3276
  call void @llvm.lifetime.start(i64 8, i8* %20) #2, !dbg !3276
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %shortbuf.i, i64 0, i64 0, !dbg !3276
  call void @llvm.lifetime.start(i64 100, i8* %21) #2, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !738, metadata !1036) #2, !dbg !3277
  %22 = bitcast i32* %decpt.i to i8*, !dbg !3278
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !3278
  %23 = bitcast i32* %sign.i to i8*, !dbg !3278
  call void @llvm.lifetime.start(i64 4, i8* %23) #2, !dbg !3278
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !741, metadata !1036) #2, !dbg !3279
  %call.i.89 = call zeroext i16 @_Py_get_387controlword() #2, !dbg !3280
  call void @llvm.dbg.value(metadata i16 %call.i.89, i64 0, metadata !742, metadata !1036) #2, !dbg !3283
  %and.i = and i16 %call.i.89, -3841, !dbg !3280
  %or.i = or i16 %and.i, 512, !dbg !3280
  call void @llvm.dbg.value(metadata i16 %or.i, i64 0, metadata !743, metadata !1036) #2, !dbg !3283
  %cmp.i.90 = icmp eq i16 %or.i, %call.i.89, !dbg !3284
  br i1 %cmp.i.90, label %do.end.thread112.i, label %if.then.10.i, !dbg !3286

do.end.thread112.i:                               ; preds = %if.else.38
  call void @llvm.dbg.value(metadata i8** %buf_end.i, i64 0, metadata !733, metadata !1036) #2, !dbg !3287
  call void @llvm.dbg.value(metadata i32* %decpt.i, i64 0, metadata !739, metadata !1036) #2, !dbg !3288
  call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !740, metadata !1036) #2, !dbg !3289
  %call5.113.i = call i8* @_Py_dg_dtoa(double %call, i32 3, i32 %conv39, i32* nonnull %decpt.i, i32* nonnull %sign.i, i8** nonnull %buf_end.i) #2, !dbg !3290
  br label %if.end.11.i, !dbg !3291

if.then.10.i:                                     ; preds = %if.else.38
  call void @_Py_set_387controlword(i16 zeroext %or.i) #2, !dbg !3292
  call void @llvm.dbg.value(metadata i8** %buf_end.i, i64 0, metadata !733, metadata !1036) #2, !dbg !3287
  call void @llvm.dbg.value(metadata i32* %decpt.i, i64 0, metadata !739, metadata !1036) #2, !dbg !3288
  call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !740, metadata !1036) #2, !dbg !3289
  %call5.109.i = call i8* @_Py_dg_dtoa(double %call, i32 3, i32 %conv39, i32* nonnull %decpt.i, i32* nonnull %sign.i, i8** nonnull %buf_end.i) #2, !dbg !3290
  call void @_Py_set_387controlword(i16 zeroext %call.i.89) #2, !dbg !3294
  br label %if.end.11.i, !dbg !3294

if.end.11.i:                                      ; preds = %if.then.10.i, %do.end.thread112.i
  %call5110.i = phi i8* [ %call5.109.i, %if.then.10.i ], [ %call5.113.i, %do.end.thread112.i ], !dbg !3297
  %cmp12.i = icmp eq i8* %call5110.i, null, !dbg !3298
  br i1 %cmp12.i, label %if.then.14.i, label %if.end.16.i, !dbg !3300

if.then.14.i:                                     ; preds = %if.end.11.i
  %call15.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3301
  br label %double_round.exit, !dbg !3303

if.end.16.i:                                      ; preds = %if.end.11.i
  call void @llvm.dbg.value(metadata i8** %buf_end.i, i64 0, metadata !733, metadata !1036) #2, !dbg !3287
  %24 = bitcast i8** %buf_end.i to i64*, !dbg !3304
  %25 = load i64, i64* %24, align 8, !dbg !3304, !tbaa !1046
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call5110.i to i64, !dbg !3305
  %sub.ptr.sub.i = sub i64 %25, %sub.ptr.rhs.cast.i, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i, i64 0, metadata !730, metadata !1036) #2, !dbg !3306
  %add.i = add i64 %sub.ptr.sub.i, 8, !dbg !3307
  %cmp17.i = icmp sgt i64 %add.i, 100, !dbg !3309
  br i1 %cmp17.i, label %if.then.19.i, label %if.end.27.i, !dbg !3310

if.then.19.i:                                     ; preds = %if.end.16.i
  call void @llvm.dbg.value(metadata i64 %add.i, i64 0, metadata !731, metadata !1036) #2, !dbg !3275
  %call21.i = call i8* @PyMem_Malloc(i64 %add.i) #2, !dbg !3311
  call void @llvm.dbg.value(metadata i8* %call21.i, i64 0, metadata !738, metadata !1036) #2, !dbg !3277
  %cmp22.i = icmp eq i8* %call21.i, null, !dbg !3313
  br i1 %cmp22.i, label %if.then.24.i, label %if.end.27.i, !dbg !3315

if.then.24.i:                                     ; preds = %if.then.19.i
  %call25.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3316
  br label %exit.i, !dbg !3318

if.end.27.i:                                      ; preds = %if.then.19.i, %if.end.16.i
  %mybuflen.0.i = phi i64 [ %add.i, %if.then.19.i ], [ 100, %if.end.16.i ], !dbg !3297
  %mybuf.0.i = phi i8* [ %call21.i, %if.then.19.i ], [ %21, %if.end.16.i ], !dbg !3297
  call void @llvm.dbg.value(metadata i32* %sign.i, i64 0, metadata !740, metadata !1036) #2, !dbg !3289
  %26 = load i32, i32* %sign.i, align 4, !dbg !3319, !tbaa !1061
  %tobool.i.91 = icmp ne i32 %26, 0, !dbg !3319
  %cond.i = select i1 %tobool.i.91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i64 0, i64 0), !dbg !3319
  call void @llvm.dbg.value(metadata i32* %decpt.i, i64 0, metadata !739, metadata !1036) #2, !dbg !3288
  %27 = load i32, i32* %decpt.i, align 4, !dbg !3320, !tbaa !1061
  %conv28.i = trunc i64 %sub.ptr.sub.i to i32, !dbg !3321
  %sub.i = sub i32 %27, %conv28.i, !dbg !3322
  %call29.i = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %mybuf.0.i, i64 %mybuflen.0.i, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i64 0, i64 0), i8* %cond.i, i8* %call5110.i, i32 %sub.i) #2, !dbg !3323
  %call30.i = tail call i32* @__errno_location() #3, !dbg !3324
  store i32 0, i32* %call30.i, align 4, !dbg !3325, !tbaa !1061
  %call32.i = call zeroext i16 @_Py_get_387controlword() #2, !dbg !3326
  call void @llvm.dbg.value(metadata i16 %call32.i, i64 0, metadata !742, metadata !1036) #2, !dbg !3283
  %and34.i = and i16 %call32.i, -3841, !dbg !3326
  %or35.i = or i16 %and34.i, 512, !dbg !3326
  call void @llvm.dbg.value(metadata i16 %or35.i, i64 0, metadata !743, metadata !1036) #2, !dbg !3283
  %cmp39.i = icmp eq i16 %or35.i, %call32.i, !dbg !3329
  br i1 %cmp39.i, label %do.end.44.thread117.i, label %if.then.50.i, !dbg !3331

do.end.44.thread117.i:                            ; preds = %if.end.27.i
  %call45.118.i = call double @_Py_dg_strtod(i8* %mybuf.0.i, i8** null) #2, !dbg !3332
  br label %if.end.51.i, !dbg !3333

if.then.50.i:                                     ; preds = %if.end.27.i
  call void @_Py_set_387controlword(i16 zeroext %or35.i) #2, !dbg !3334
  %call45.114.i = call double @_Py_dg_strtod(i8* %mybuf.0.i, i8** null) #2, !dbg !3332
  call void @_Py_set_387controlword(i16 zeroext %call32.i) #2, !dbg !3336
  br label %if.end.51.i, !dbg !3336

if.end.51.i:                                      ; preds = %if.then.50.i, %do.end.44.thread117.i
  %call45115.i = phi double [ %call45.114.i, %if.then.50.i ], [ %call45.118.i, %do.end.44.thread117.i ], !dbg !3297
  %28 = load i32, i32* %call30.i, align 4, !dbg !3339, !tbaa !1061
  %cmp53.i = icmp eq i32 %28, 34, !dbg !3341
  br i1 %cmp53.i, label %land.lhs.true.i, label %if.else.i.92, !dbg !3342

land.lhs.true.i:                                  ; preds = %if.end.51.i
  %call55.i = call double @fabs(double %call45115.i) #3, !dbg !3343
  %cmp56.i = fcmp ult double %call55.i, 1.000000e+00, !dbg !3344
  br i1 %cmp56.i, label %if.else.i.92, label %if.then.58.i, !dbg !3345

if.then.58.i:                                     ; preds = %land.lhs.true.i
  %29 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3346, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i64 0, i64 0)) #2, !dbg !3347
  br label %if.end.60.i, !dbg !3347

if.else.i.92:                                     ; preds = %land.lhs.true.i, %if.end.51.i
  %30 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !3348, !tbaa !1046
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %30, i64 0, metadata !421, metadata !1036) #2, !dbg !3350
  %cmp.i.i = icmp eq %struct.PyFloatObject* %30, null, !dbg !3351
  br i1 %cmp.i.i, label %if.else.i.i, label %if.then.i.i, !dbg !3352

if.then.i.i:                                      ; preds = %if.else.i.92
  %ob_type.i.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %30, i64 0, i32 0, i32 1, !dbg !3353
  %31 = bitcast %struct._typeobject** %ob_type.i.i to i64*, !dbg !3353
  %32 = load i64, i64* %31, align 8, !dbg !3353, !tbaa !1056
  store i64 %32, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !3354, !tbaa !1046
  %33 = load i32, i32* @numfree, align 4, !dbg !3355, !tbaa !1061
  %dec.i.i = add i32 %33, -1, !dbg !3355
  store i32 %dec.i.i, i32* @numfree, align 4, !dbg !3355, !tbaa !1061
  br label %if.end.3.i.i, !dbg !3356

if.else.i.i:                                      ; preds = %if.else.i.92
  %call.i.i = call i8* @PyObject_Malloc(i64 24) #2, !dbg !3357
  %34 = bitcast i8* %call.i.i to %struct.PyFloatObject*, !dbg !3358
  call void @llvm.dbg.value(metadata %struct.PyFloatObject* %34, i64 0, metadata !421, metadata !1036) #2, !dbg !3350
  %tobool.i.i = icmp eq i8* %call.i.i, null, !dbg !3359
  br i1 %tobool.i.i, label %if.then.1.i.i, label %if.end.3.i.i, !dbg !3360

if.then.1.i.i:                                    ; preds = %if.else.i.i
  %call2.i.i = call %struct._object* @PyErr_NoMemory() #2, !dbg !3361
  br label %if.end.60.i, !dbg !3362

if.end.3.i.i:                                     ; preds = %if.else.i.i, %if.then.i.i
  %op.0.i.i = phi %struct.PyFloatObject* [ %30, %if.then.i.i ], [ %34, %if.else.i.i ], !dbg !3363
  %35 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.i, i64 0, i32 0, !dbg !3364
  %ob_type4.i.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.i, i64 0, i32 0, i32 1, !dbg !3364
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i.i, align 8, !dbg !3364, !tbaa !1056
  %ob_refcnt.i.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.i, i64 0, i32 0, i32 0, !dbg !3364
  store i64 1, i64* %ob_refcnt.i.i, align 8, !dbg !3364, !tbaa !1074
  %ob_fval.i.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i.i, i64 0, i32 1, !dbg !3365
  store double %call45115.i, double* %ob_fval.i.i, align 8, !dbg !3366, !tbaa !1077
  br label %if.end.60.i, !dbg !3367

if.end.60.i:                                      ; preds = %if.end.3.i.i, %if.then.1.i.i, %if.then.58.i
  %result.0.i = phi %struct._object* [ null, %if.then.58.i ], [ %35, %if.end.3.i.i ], [ %call2.i.i, %if.then.1.i.i ], !dbg !3297
  %cmp62.i = icmp eq i8* %mybuf.0.i, %21, !dbg !3368
  br i1 %cmp62.i, label %exit.i, label %if.then.64.i, !dbg !3370

if.then.64.i:                                     ; preds = %if.end.60.i
  call void @PyMem_Free(i8* %mybuf.0.i) #2, !dbg !3371
  br label %exit.i, !dbg !3371

exit.i:                                           ; preds = %if.then.64.i, %if.end.60.i, %if.then.24.i
  %result.1.i = phi %struct._object* [ null, %if.then.24.i ], [ %result.0.i, %if.then.64.i ], [ %result.0.i, %if.end.60.i ], !dbg !3297
  call void @_Py_dg_freedtoa(i8* %call5110.i) #2, !dbg !3372
  br label %double_round.exit, !dbg !3373

double_round.exit:                                ; preds = %if.then.14.i, %exit.i
  %retval.0.i.93 = phi %struct._object* [ null, %if.then.14.i ], [ %result.1.i, %exit.i ], !dbg !3297
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !3374
  call void @llvm.lifetime.end(i64 4, i8* %22) #2, !dbg !3374
  call void @llvm.lifetime.end(i64 100, i8* %21) #2, !dbg !3374
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !3374
  br label %cleanup, !dbg !3375

cleanup:                                          ; preds = %if.end.3.i.86, %if.then.1.i.81, %if.end.3.i.70, %if.then.1.i.65, %if.end.3.i, %if.then.1.i, %land.lhs.true, %entry, %double_round.exit, %if.end.8
  %retval.0 = phi %struct._object* [ %call9, %if.end.8 ], [ %retval.0.i.93, %double_round.exit ], [ null, %entry ], [ null, %land.lhs.true ], [ %7, %if.end.3.i ], [ %call2.i, %if.then.1.i ], [ %13, %if.end.3.i.70 ], [ %call2.i.64, %if.then.1.i.65 ], [ %19, %if.end.3.i.86 ], [ %call2.i.80, %if.then.1.i.81 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !3376
  ret %struct._object* %retval.0, !dbg !3376
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_as_integer_ratio(%struct._object* %v, %struct._object* nocapture readnone %unused) #1 {
entry:
  %exponent = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* %unused, i64 0, metadata !747, metadata !1036), !dbg !3383
  %0 = bitcast i32* %exponent to i8*, !dbg !3384
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3384
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !753, metadata !1036), !dbg !3385
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !754, metadata !1036), !dbg !3386
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !755, metadata !1036), !dbg !3387
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !756, metadata !1036), !dbg !3388
  %1 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i64 0, i32 10), align 8, !dbg !3389, !tbaa !1287
  tail call void @llvm.dbg.value(metadata %struct.PyNumberMethods* %1, i64 0, metadata !757, metadata !1036), !dbg !3390
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !3391
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3391, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !3391
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3391

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !3392
  %tobool = icmp eq i32 %call, 0, !dbg !3392
  br i1 %tobool, label %if.else, label %if.then, !dbg !3394

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !3395
  %4 = load i64, i64* %3, align 8, !dbg !3395, !tbaa !1077
  br label %cond.true.8, !dbg !3395

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !748, metadata !1036), !dbg !3398
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !3399
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !3400
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3401, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !3401
  %6 = load i64, i64* %tp_flags.i, align 8, !dbg !3401, !tbaa !1172
  %and.i = and i64 %6, 16777216, !dbg !3401
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !3401
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !3402

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !3403
  %7 = bitcast double %call.i to i64, !dbg !3404
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !3405
  br i1 %cmp1.i, label %land.lhs.true.i, label %cond.true.8, !dbg !3406

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3407
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !3407
  br i1 %tobool.i, label %cond.true.8, label %cleanup, !dbg !3408

if.else.i:                                        ; preds = %if.else
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3409, !tbaa !1074
  %inc.i = add i64 %8, 1, !dbg !3409
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3409, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !3378
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !746, metadata !1036), !dbg !3377
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !746, metadata !1036), !dbg !3377
  br label %cleanup, !dbg !3410

cond.true.8:                                      ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %self.sroa.0.0.224 = phi i64 [ %4, %if.then ], [ %7, %land.lhs.true.i ], [ %7, %if.then.i ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !748, metadata !1036), !dbg !3398
  %9 = bitcast i64 %self.sroa.0.0.224 to double, !dbg !3411
  %call9 = tail call i32 @__isinf(double %9) #3, !dbg !3411
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3411
  br i1 %tobool10, label %cond.true.22, label %if.then.15, !dbg !3411

if.then.15:                                       ; preds = %cond.true.8
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3414, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0)) #2, !dbg !3416
  br label %cleanup, !dbg !3417

cond.true.22:                                     ; preds = %cond.true.8
  %call23 = tail call i32 @__isnan(double %9) #3, !dbg !3418
  %tobool24 = icmp eq i32 %call23, 0, !dbg !3418
  br i1 %tobool24, label %if.end.30, label %if.then.29, !dbg !3418

if.then.29:                                       ; preds = %cond.true.22
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3421, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i64 0, i64 0)) #2, !dbg !3423
  br label %cleanup, !dbg !3424

if.end.30:                                        ; preds = %cond.true.22
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %call31 = call double @frexp(double %9, i32* nonnull %exponent) #2, !dbg !3426
  tail call void @llvm.dbg.value(metadata double %call31, i64 0, metadata !749, metadata !1036), !dbg !3427
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !751, metadata !1036), !dbg !3428
  br label %land.rhs, !dbg !3429

land.rhs:                                         ; preds = %for.body.2, %if.end.30
  %float_part.0241 = phi double [ %call31, %if.end.30 ], [ %mul.2, %for.body.2 ]
  %i.0240 = phi i32 [ 0, %if.end.30 ], [ %inc.2, %for.body.2 ]
  %call34 = tail call double @floor(double %float_part.0241) #3, !dbg !3432
  %cmp35 = fcmp une double %float_part.0241, %call34, !dbg !3433
  br i1 %cmp35, label %for.body, label %for.end, !dbg !3434

for.body:                                         ; preds = %land.rhs
  %mul = fmul double %float_part.0241, 2.000000e+00, !dbg !3436
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !749, metadata !1036), !dbg !3427
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %12 = load i32, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %dec = add i32 %12, -1, !dbg !3438
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !750, metadata !1036), !dbg !3425
  store i32 %dec, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %call34.1 = tail call double @floor(double %mul) #3, !dbg !3432
  %cmp35.1 = fcmp une double %mul, %call34.1, !dbg !3433
  br i1 %cmp35.1, label %for.body.1, label %for.end, !dbg !3434

for.end:                                          ; preds = %for.body.2, %for.body.1, %for.body, %land.rhs
  %float_part.0.lcssa = phi double [ %float_part.0241, %land.rhs ], [ %mul, %for.body ], [ %mul.1, %for.body.1 ], [ %mul.2, %for.body.2 ]
  %call37 = tail call %struct._object* @PyLong_FromDouble(double %float_part.0.lcssa) #2, !dbg !3439
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !754, metadata !1036), !dbg !3386
  %cmp38 = icmp eq %struct._object* %call37, null, !dbg !3440
  br i1 %cmp38, label %cleanup, label %if.end.41, !dbg !3442

if.end.41:                                        ; preds = %for.end
  %call42 = tail call %struct._object* @PyLong_FromLong(i64 1) #2, !dbg !3443
  tail call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !755, metadata !1036), !dbg !3387
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %13 = load i32, i32* %exponent, align 4, !dbg !3444, !tbaa !1061
  %conv43 = sext i32 %13 to i64, !dbg !3445
  %ispos = icmp sgt i32 %13, -1, !dbg !3446
  %neg = sub nsw i64 0, %conv43, !dbg !3446
  %14 = select i1 %ispos, i64 %conv43, i64 %neg, !dbg !3446
  %call45 = tail call %struct._object* @PyLong_FromLong(i64 %14) #2, !dbg !3447
  tail call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !753, metadata !1036), !dbg !3385
  %cmp46 = icmp eq %struct._object* %call45, null, !dbg !3448
  br i1 %cmp46, label %if.end.116, label %if.end.49, !dbg !3450

if.end.49:                                        ; preds = %if.end.41
  tail call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !752, metadata !1036), !dbg !3451
  %nb_lshift = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %1, i64 0, i32 11, !dbg !3452
  %15 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_lshift, align 8, !dbg !3452, !tbaa !3453
  %call50 = tail call %struct._object* %15(%struct._object* %call42, %struct._object* %call45) #2, !dbg !3452
  tail call void @llvm.dbg.value(metadata %struct._object* %call50, i64 0, metadata !753, metadata !1036), !dbg !3385
  tail call void @llvm.dbg.value(metadata %struct._object* %call45, i64 0, metadata !758, metadata !1036), !dbg !3454
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call45, i64 0, i32 0, !dbg !3456
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3456, !tbaa !1074
  %dec51 = add i64 %16, -1, !dbg !3456
  store i64 %dec51, i64* %ob_refcnt, align 8, !dbg !3456, !tbaa !1074
  %cmp52 = icmp eq i64 %dec51, 0, !dbg !3456
  br i1 %cmp52, label %if.else.55, label %if.end.57, !dbg !3458

if.else.55:                                       ; preds = %if.end.49
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %call45, i64 0, i32 1, !dbg !3459
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !3459, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !3459
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3459, !tbaa !1142
  tail call void %18(%struct._object* %call45) #2, !dbg !3459
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.49, %if.else.55
  %cmp58 = icmp eq %struct._object* %call50, null, !dbg !3461
  br i1 %cmp58, label %if.end.116, label %if.end.61, !dbg !3463

if.end.61:                                        ; preds = %if.end.57
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %cmp62 = icmp sgt i32 %13, 0, !dbg !3464
  br i1 %cmp62, label %if.then.64, label %do.body.84, !dbg !3465

if.then.64:                                       ; preds = %if.end.61
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !752, metadata !1036), !dbg !3451
  %nb_multiply = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %1, i64 0, i32 2, !dbg !3466
  %19 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_multiply, align 8, !dbg !3466, !tbaa !3467
  %call65 = tail call %struct._object* %19(%struct._object* %call37, %struct._object* %call50) #2, !dbg !3466
  tail call void @llvm.dbg.value(metadata %struct._object* %call65, i64 0, metadata !754, metadata !1036), !dbg !3386
  tail call void @llvm.dbg.value(metadata %struct._object* %call37, i64 0, metadata !760, metadata !1036), !dbg !3468
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 0, !dbg !3470
  %20 = load i64, i64* %ob_refcnt68, align 8, !dbg !3470, !tbaa !1074
  %dec69 = add i64 %20, -1, !dbg !3470
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !3470, !tbaa !1074
  %cmp70 = icmp eq i64 %dec69, 0, !dbg !3470
  br i1 %cmp70, label %if.else.73, label %if.end.76, !dbg !3472

if.else.73:                                       ; preds = %if.then.64
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %call37, i64 0, i32 1, !dbg !3473
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !3473, !tbaa !1056
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !3473
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !3473, !tbaa !1142
  tail call void %22(%struct._object* %call37) #2, !dbg !3473
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.64, %if.else.73
  %cmp79 = icmp eq %struct._object* %call65, null, !dbg !3475
  br i1 %cmp79, label %do.body.99, label %if.end.97, !dbg !3477

do.body.84:                                       ; preds = %if.end.61
  tail call void @llvm.dbg.value(metadata %struct._object* %call42, i64 0, metadata !764, metadata !1036), !dbg !3478
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %call42, i64 0, i32 0, !dbg !3480
  %23 = load i64, i64* %ob_refcnt86, align 8, !dbg !3480, !tbaa !1074
  %dec87 = add i64 %23, -1, !dbg !3480
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !3480, !tbaa !1074
  %cmp88 = icmp eq i64 %dec87, 0, !dbg !3480
  br i1 %cmp88, label %if.else.91, label %if.end.97, !dbg !3482

if.else.91:                                       ; preds = %do.body.84
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %call42, i64 0, i32 1, !dbg !3483
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !3483, !tbaa !1056
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !3483
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !3483, !tbaa !1142
  tail call void %25(%struct._object* %call42) #2, !dbg !3483
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.91, %do.body.84, %if.end.76
  %denominator.0 = phi %struct._object* [ %call42, %if.end.76 ], [ %call50, %do.body.84 ], [ %call50, %if.else.91 ]
  %numerator.0 = phi %struct._object* [ %call65, %if.end.76 ], [ %call37, %do.body.84 ], [ %call37, %if.else.91 ]
  %py_exponent.0 = phi %struct._object* [ %call50, %if.end.76 ], [ null, %do.body.84 ], [ null, %if.else.91 ]
  %call98 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %numerator.0, %struct._object* %denominator.0) #2, !dbg !3485
  tail call void @llvm.dbg.value(metadata %struct._object* %call98, i64 0, metadata !756, metadata !1036), !dbg !3388
  br label %do.body.99, !dbg !3486

do.body.99:                                       ; preds = %if.end.97, %if.end.76
  %result_pair.0 = phi %struct._object* [ null, %if.end.76 ], [ %call98, %if.end.97 ]
  %denominator.1 = phi %struct._object* [ %call42, %if.end.76 ], [ %denominator.0, %if.end.97 ]
  %numerator.1 = phi %struct._object* [ null, %if.end.76 ], [ %numerator.0, %if.end.97 ]
  %py_exponent.1 = phi %struct._object* [ %call50, %if.end.76 ], [ %py_exponent.0, %if.end.97 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %py_exponent.1, i64 0, metadata !767, metadata !1036), !dbg !3487
  %cmp100 = icmp eq %struct._object* %py_exponent.1, null, !dbg !3489
  br i1 %cmp100, label %if.end.116, label %do.body.103, !dbg !3490

do.body.103:                                      ; preds = %do.body.99
  tail call void @llvm.dbg.value(metadata %struct._object* %py_exponent.1, i64 0, metadata !769, metadata !1036), !dbg !3491
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %py_exponent.1, i64 0, i32 0, !dbg !3493
  %26 = load i64, i64* %ob_refcnt105, align 8, !dbg !3493, !tbaa !1074
  %dec106 = add i64 %26, -1, !dbg !3493
  store i64 %dec106, i64* %ob_refcnt105, align 8, !dbg !3493, !tbaa !1074
  %cmp107 = icmp eq i64 %dec106, 0, !dbg !3493
  br i1 %cmp107, label %if.else.110, label %if.end.116, !dbg !3495

if.else.110:                                      ; preds = %do.body.103
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %py_exponent.1, i64 0, i32 1, !dbg !3496
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !3496, !tbaa !1056
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !3496
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !3496, !tbaa !1142
  tail call void %28(%struct._object* %py_exponent.1) #2, !dbg !3496
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.57, %if.end.41, %if.else.110, %do.body.103, %do.body.99
  %numerator.1235 = phi %struct._object* [ %numerator.1, %if.else.110 ], [ %numerator.1, %do.body.103 ], [ %numerator.1, %do.body.99 ], [ %call37, %if.end.41 ], [ %call37, %if.end.57 ]
  %denominator.1234 = phi %struct._object* [ %denominator.1, %if.else.110 ], [ %denominator.1, %do.body.103 ], [ %denominator.1, %do.body.99 ], [ %call42, %if.end.41 ], [ %call42, %if.end.57 ]
  %result_pair.0233 = phi %struct._object* [ %result_pair.0, %if.else.110 ], [ %result_pair.0, %do.body.103 ], [ %result_pair.0, %do.body.99 ], [ null, %if.end.41 ], [ null, %if.end.57 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %denominator.1, i64 0, metadata !772, metadata !1036), !dbg !3498
  %cmp121 = icmp eq %struct._object* %denominator.1234, null, !dbg !3500
  br i1 %cmp121, label %if.end.137, label %do.body.124, !dbg !3501

do.body.124:                                      ; preds = %if.end.116
  tail call void @llvm.dbg.value(metadata %struct._object* %denominator.1, i64 0, metadata !774, metadata !1036), !dbg !3502
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %denominator.1234, i64 0, i32 0, !dbg !3504
  %29 = load i64, i64* %ob_refcnt126, align 8, !dbg !3504, !tbaa !1074
  %dec127 = add i64 %29, -1, !dbg !3504
  store i64 %dec127, i64* %ob_refcnt126, align 8, !dbg !3504, !tbaa !1074
  %cmp128 = icmp eq i64 %dec127, 0, !dbg !3504
  br i1 %cmp128, label %if.else.131, label %if.end.137, !dbg !3506

if.else.131:                                      ; preds = %do.body.124
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %denominator.1234, i64 0, i32 1, !dbg !3507
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8, !dbg !3507, !tbaa !1056
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !3507
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8, !dbg !3507, !tbaa !1142
  tail call void %31(%struct._object* %denominator.1234) #2, !dbg !3507
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.131, %do.body.124, %if.end.116
  tail call void @llvm.dbg.value(metadata %struct._object* %numerator.1, i64 0, metadata !777, metadata !1036), !dbg !3509
  %cmp142 = icmp eq %struct._object* %numerator.1235, null, !dbg !3511
  br i1 %cmp142, label %cleanup, label %do.body.145, !dbg !3512

do.body.145:                                      ; preds = %if.end.137
  tail call void @llvm.dbg.value(metadata %struct._object* %numerator.1, i64 0, metadata !779, metadata !1036), !dbg !3513
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %numerator.1235, i64 0, i32 0, !dbg !3515
  %32 = load i64, i64* %ob_refcnt147, align 8, !dbg !3515, !tbaa !1074
  %dec148 = add i64 %32, -1, !dbg !3515
  store i64 %dec148, i64* %ob_refcnt147, align 8, !dbg !3515, !tbaa !1074
  %cmp149 = icmp eq i64 %dec148, 0, !dbg !3515
  br i1 %cmp149, label %if.else.152, label %cleanup, !dbg !3517

if.else.152:                                      ; preds = %do.body.145
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %numerator.1235, i64 0, i32 1, !dbg !3518
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8, !dbg !3518, !tbaa !1056
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !3518
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8, !dbg !3518, !tbaa !1142
  tail call void %34(%struct._object* %numerator.1235) #2, !dbg !3518
  br label %cleanup

cleanup:                                          ; preds = %for.end, %land.lhs.true.i, %if.else.i, %if.end.137, %do.body.145, %if.else.152, %if.then.29, %if.then.15
  %retval.0 = phi %struct._object* [ null, %if.then.15 ], [ null, %if.then.29 ], [ %result_pair.0233, %if.else.152 ], [ %result_pair.0233, %do.body.145 ], [ %result_pair.0233, %if.end.137 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ null, %land.lhs.true.i ], [ null, %for.end ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !3520
  ret %struct._object* %retval.0, !dbg !3520

for.body.1:                                       ; preds = %for.body
  %mul.1 = fmul double %mul, 2.000000e+00, !dbg !3436
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !749, metadata !1036), !dbg !3427
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %35 = load i32, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %dec.1 = add i32 %35, -1, !dbg !3438
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !750, metadata !1036), !dbg !3425
  store i32 %dec.1, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %call34.2 = tail call double @floor(double %mul.1) #3, !dbg !3432
  %cmp35.2 = fcmp une double %mul.1, %call34.2, !dbg !3433
  br i1 %cmp35.2, label %for.body.2, label %for.end, !dbg !3434

for.body.2:                                       ; preds = %for.body.1
  %mul.2 = fmul double %mul.1, 2.000000e+00, !dbg !3436
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !749, metadata !1036), !dbg !3427
  tail call void @llvm.dbg.value(metadata i32* %exponent, i64 0, metadata !750, metadata !1036), !dbg !3425
  %36 = load i32, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %dec.2 = add i32 %36, -1, !dbg !3438
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !750, metadata !1036), !dbg !3425
  store i32 %dec.2, i32* %exponent, align 4, !dbg !3438, !tbaa !1061
  %inc.2 = add nsw i32 %i.0240, 3, !dbg !3521
  %cmp32.2 = icmp slt i32 %inc.2, 300, !dbg !3522
  br i1 %cmp32.2, label %land.rhs, label %for.end, !dbg !3429
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_fromhex(%struct._object* %cls, %struct._object* %arg) #1 {
entry:
  %coeff_end = alloca i8*, align 8
  %length = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %cls, i64 0, metadata !784, metadata !1036), !dbg !3523
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !785, metadata !1036), !dbg !3524
  %0 = bitcast i8** %coeff_end to i8*, !dbg !3525
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !802, metadata !1036), !dbg !3526
  %1 = bitcast i64* %length to i8*, !dbg !3527
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !3527
  tail call void @llvm.dbg.value(metadata i64* %length, i64 0, metadata !803, metadata !1036), !dbg !3528
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %arg, i64* nonnull %length) #2, !dbg !3529
  call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !793, metadata !1036), !dbg !3530
  %cmp = icmp eq i8* %call, null, !dbg !3531
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3533

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %length, i64 0, metadata !803, metadata !1036), !dbg !3528
  %2 = load i64, i64* %length, align 8, !dbg !3534, !tbaa !1203
  call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !798, metadata !1036), !dbg !3535
  br label %while.cond, !dbg !3536

while.cond:                                       ; preds = %while.cond, %if.end
  %s.0 = phi i8* [ %call, %if.end ], [ %incdec.ptr, %while.cond ]
  %3 = load i8, i8* %s.0, align 1, !dbg !3537, !tbaa !1210
  %idxprom = zext i8 %3 to i64, !dbg !3537
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom, !dbg !3537
  %4 = load i32, i32* %arrayidx, align 4, !dbg !3537, !tbaa !1061
  %and2 = and i32 %4, 8, !dbg !3537
  %tobool = icmp eq i32 %and2, 0, !dbg !3536
  %incdec.ptr = getelementptr i8, i8* %s.0, i64 1, !dbg !3540
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !793, metadata !1036), !dbg !3530
  br i1 %tobool, label %while.end, label %while.cond, !dbg !3536

while.end:                                        ; preds = %while.cond
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %while.cond ]
  %s.0.lcssa = phi i8* [ %s.0, %while.cond ]
  %add.ptr = getelementptr i8, i8* %call, i64 %2, !dbg !3541
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %call3 = call double @_Py_parse_inf_or_nan(i8* %s.0.lcssa, i8** nonnull %coeff_end) #2, !dbg !3543
  call void @llvm.dbg.value(metadata double %call3, i64 0, metadata !788, metadata !1036), !dbg !3544
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %5 = load i8*, i8** %coeff_end, align 8, !dbg !3545, !tbaa !1046
  %cmp4 = icmp eq i8* %5, %s.0.lcssa, !dbg !3547
  br i1 %cmp4, label %if.end.7, label %while.cond.329.preheader, !dbg !3548

if.end.7:                                         ; preds = %while.end
  %6 = load i8, i8* %s.0.lcssa, align 1, !dbg !3549, !tbaa !1210
  switch i8 %6, label %if.end.19 [
    i8 45, label %if.then.11
    i8 43, label %if.then.16
  ], !dbg !3551

if.then.11:                                       ; preds = %if.end.7
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !793, metadata !1036), !dbg !3530
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !802, metadata !1036), !dbg !3526
  br label %if.end.19, !dbg !3552

if.then.16:                                       ; preds = %if.end.7
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !793, metadata !1036), !dbg !3530
  br label %if.end.19, !dbg !3554

if.end.19:                                        ; preds = %if.end.7, %if.then.16, %if.then.11
  %s.1 = phi i8* [ %incdec.ptr.lcssa, %if.then.11 ], [ %incdec.ptr.lcssa, %if.then.16 ], [ %s.0.lcssa, %if.end.7 ]
  %negate.0 = phi i32 [ 1, %if.then.11 ], [ 0, %if.then.16 ], [ 0, %if.end.7 ]
  call void @llvm.dbg.value(metadata i8* %s.1, i64 0, metadata !795, metadata !1036), !dbg !3556
  %7 = load i8, i8* %s.1, align 1, !dbg !3557, !tbaa !1210
  %cmp21 = icmp eq i8 %7, 48, !dbg !3559
  br i1 %cmp21, label %if.then.23, label %if.end.35, !dbg !3560

if.then.23:                                       ; preds = %if.end.19
  %incdec.ptr24 = getelementptr i8, i8* %s.1, i64 1, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %incdec.ptr24, i64 0, metadata !793, metadata !1036), !dbg !3530
  %8 = load i8, i8* %incdec.ptr24, align 1, !dbg !3563, !tbaa !1210
  switch i8 %8, label %if.end.35 [
    i8 120, label %if.then.31
    i8 88, label %if.then.31
  ], !dbg !3565

if.then.31:                                       ; preds = %if.then.23, %if.then.23
  %incdec.ptr32 = getelementptr i8, i8* %s.1, i64 2, !dbg !3566
  call void @llvm.dbg.value(metadata i8* %incdec.ptr32, i64 0, metadata !793, metadata !1036), !dbg !3530
  %.pre = load i8, i8* %incdec.ptr32, align 1, !dbg !3567, !tbaa !1210
  br label %if.end.35, !dbg !3568

if.end.35:                                        ; preds = %if.then.23, %if.then.31, %if.end.19
  %9 = phi i8 [ %.pre, %if.then.31 ], [ %7, %if.end.19 ], [ 48, %if.then.23 ], !dbg !3567
  %s.2 = phi i8* [ %incdec.ptr32, %if.then.31 ], [ %s.1, %if.end.19 ], [ %s.1, %if.then.23 ]
  call void @llvm.dbg.value(metadata i8* %s.2, i64 0, metadata !794, metadata !1036), !dbg !3569
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !813, metadata !1036), !dbg !3570
  %conv.i.604 = sext i8 %9 to i32, !dbg !3572
  %switch.tableidx.i.605 = add nsw i32 %conv.i.604, -48, !dbg !3573
  %10 = icmp ult i32 %switch.tableidx.i.605, 55, !dbg !3573
  br i1 %10, label %hex_from_char.exit.preheader, label %while.end.42, !dbg !3573

hex_from_char.exit.preheader:                     ; preds = %if.end.35
  br label %hex_from_char.exit, !dbg !3573

hex_from_char.exit:                               ; preds = %hex_from_char.exit.preheader, %while.body.40
  %.pr = phi i8 [ %14, %while.body.40 ], [ %9, %hex_from_char.exit.preheader ], !dbg !3574
  %switch.tableidx.i607 = phi i32 [ %switch.tableidx.i, %while.body.40 ], [ %switch.tableidx.i.605, %hex_from_char.exit.preheader ]
  %s.3606 = phi i8* [ %incdec.ptr41, %while.body.40 ], [ %s.2, %hex_from_char.exit.preheader ]
  %11 = sext i32 %switch.tableidx.i607 to i64, !dbg !3573
  %12 = lshr i64 35465847073801215, %11, !dbg !3576
  %13 = and i64 %12, 1, !dbg !3576
  %cmp38 = icmp eq i64 %13, 0, !dbg !3576
  br i1 %cmp38, label %while.end.42.loopexit, label %while.body.40, !dbg !3577

while.body.40:                                    ; preds = %hex_from_char.exit
  %incdec.ptr41 = getelementptr i8, i8* %s.3606, i64 1, !dbg !3578
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, i64 0, metadata !793, metadata !1036), !dbg !3530
  %14 = load i8, i8* %incdec.ptr41, align 1, !dbg !3567, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !813, metadata !1036), !dbg !3570
  %conv.i = sext i8 %14 to i32, !dbg !3572
  %switch.tableidx.i = add nsw i32 %conv.i, -48, !dbg !3573
  %15 = icmp ult i32 %switch.tableidx.i, 55, !dbg !3573
  br i1 %15, label %hex_from_char.exit, label %while.end.42.loopexit, !dbg !3573

while.end.42.loopexit:                            ; preds = %hex_from_char.exit, %while.body.40
  %s.3591.ph = phi i8* [ %incdec.ptr41, %while.body.40 ], [ %s.3606, %hex_from_char.exit ]
  %.ph = phi i8 [ %14, %while.body.40 ], [ %.pr, %hex_from_char.exit ]
  br label %while.end.42, !dbg !3556

while.end.42:                                     ; preds = %while.end.42.loopexit, %if.end.35
  %s.3591 = phi i8* [ %s.2, %if.end.35 ], [ %s.3591.ph, %while.end.42.loopexit ]
  %16 = phi i8 [ %9, %if.end.35 ], [ %.ph, %while.end.42.loopexit ], !dbg !3574
  call void @llvm.dbg.value(metadata i8* %incdec.ptr41, i64 0, metadata !795, metadata !1036), !dbg !3556
  %cmp44 = icmp eq i8 %16, 46, !dbg !3579
  br i1 %cmp44, label %while.cond.48.preheader, label %if.end.57, !dbg !3580

while.cond.48.preheader:                          ; preds = %while.end.42
  br label %while.cond.48, !dbg !3581

while.cond.48:                                    ; preds = %while.cond.48.preheader, %hex_from_char.exit523
  %s.3.pn = phi i8* [ %s.4, %hex_from_char.exit523 ], [ %s.3591, %while.cond.48.preheader ]
  %s.4 = getelementptr i8, i8* %s.3.pn, i64 1, !dbg !3581
  %17 = load i8, i8* %s.4, align 1, !dbg !3583, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %17, i64 0, metadata !813, metadata !1036), !dbg !3584
  %conv.i.517 = sext i8 %17 to i32, !dbg !3586
  %switch.tableidx.i.518 = add nsw i32 %conv.i.517, -48, !dbg !3587
  %18 = icmp ult i32 %switch.tableidx.i.518, 55, !dbg !3587
  br i1 %18, label %hex_from_char.exit523, label %if.end.57.loopexit, !dbg !3587

hex_from_char.exit523:                            ; preds = %while.cond.48
  %19 = sext i32 %switch.tableidx.i.518 to i64, !dbg !3587
  %20 = lshr i64 35465847073801215, %19, !dbg !3588
  %21 = and i64 %20, 1, !dbg !3588
  %cmp50 = icmp eq i64 %21, 0, !dbg !3588
  br i1 %cmp50, label %if.end.57.loopexit, label %while.cond.48, !dbg !3589

if.end.57.loopexit:                               ; preds = %while.cond.48, %hex_from_char.exit523
  %s.4.lcssa = phi i8* [ %s.4, %while.cond.48 ], [ %s.4, %hex_from_char.exit523 ]
  %s.3.pn.lcssa = phi i8* [ %s.3.pn, %while.cond.48 ], [ %s.3.pn, %hex_from_char.exit523 ]
  br label %if.end.57, !dbg !3590

if.end.57:                                        ; preds = %if.end.57.loopexit, %while.end.42
  %storemerge = phi i8* [ %s.3591, %while.end.42 ], [ %s.3.pn.lcssa, %if.end.57.loopexit ]
  %s.5 = phi i8* [ %s.3591, %while.end.42 ], [ %s.4.lcssa, %if.end.57.loopexit ]
  store i8* %storemerge, i8** %coeff_end, align 8, !dbg !3590, !tbaa !1046
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %.cast = ptrtoint i8* %storemerge to i64, !dbg !3591
  %sub.ptr.rhs.cast = ptrtoint i8* %s.2 to i64, !dbg !3592
  %sub.ptr.sub = sub i64 %.cast, %sub.ptr.rhs.cast, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, i64 0, metadata !804, metadata !1036), !dbg !3593
  %sub.ptr.rhs.cast59 = ptrtoint i8* %s.3591 to i64, !dbg !3594
  %sub.ptr.sub60 = sub i64 %.cast, %sub.ptr.rhs.cast59, !dbg !3594
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub60, i64 0, metadata !805, metadata !1036), !dbg !3595
  %cmp61 = icmp eq i8* %storemerge, %s.2, !dbg !3596
  br i1 %cmp61, label %parse_error, label %if.end.64, !dbg !3598

if.end.64:                                        ; preds = %if.end.57
  %cmp65 = icmp sgt i64 %sub.ptr.sub, 1152921504606846707, !dbg !3599
  br i1 %cmp65, label %insane_length_error, label %if.end.68, !dbg !3601

if.end.68:                                        ; preds = %if.end.64
  %22 = load i8, i8* %s.5, align 1, !dbg !3602, !tbaa !1210
  switch i8 %22, label %while.cond.110.preheader [
    i8 112, label %if.then.76
    i8 80, label %if.then.76
  ], !dbg !3604

if.then.76:                                       ; preds = %if.end.68, %if.end.68
  %incdec.ptr77 = getelementptr i8, i8* %s.5, i64 1, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %incdec.ptr77, i64 0, metadata !793, metadata !1036), !dbg !3530
  call void @llvm.dbg.value(metadata i8* %incdec.ptr77, i64 0, metadata !797, metadata !1036), !dbg !3607
  %23 = load i8, i8* %incdec.ptr77, align 1, !dbg !3608, !tbaa !1210
  switch i8 %23, label %if.end.87 [
    i8 45, label %if.then.85
    i8 43, label %if.then.85
  ], !dbg !3610

if.then.85:                                       ; preds = %if.then.76, %if.then.76
  %incdec.ptr86 = getelementptr i8, i8* %s.5, i64 2, !dbg !3611
  call void @llvm.dbg.value(metadata i8* %incdec.ptr86, i64 0, metadata !793, metadata !1036), !dbg !3530
  %.pre613 = load i8, i8* %incdec.ptr86, align 1, !dbg !3612, !tbaa !1210
  br label %if.end.87, !dbg !3614

if.end.87:                                        ; preds = %if.then.76, %if.then.85
  %24 = phi i8 [ %.pre613, %if.then.85 ], [ %23, %if.then.76 ], !dbg !3612
  %s.6 = phi i8* [ %incdec.ptr86, %if.then.85 ], [ %incdec.ptr77, %if.then.76 ]
  %.off = add i8 %24, -48, !dbg !3615
  %25 = icmp ult i8 %.off, 10, !dbg !3615
  br i1 %25, label %while.cond.97.preheader, label %parse_error, !dbg !3615

while.cond.97.preheader:                          ; preds = %if.end.87
  br label %while.cond.97, !dbg !3616

while.cond.97:                                    ; preds = %while.cond.97.preheader, %while.cond.97
  %s.6.pn = phi i8* [ %s.7, %while.cond.97 ], [ %s.6, %while.cond.97.preheader ]
  %s.7 = getelementptr i8, i8* %s.6.pn, i64 1, !dbg !3616
  %26 = load i8, i8* %s.7, align 1, !dbg !3617, !tbaa !1210
  %.off587 = add i8 %26, -48, !dbg !3618
  %27 = icmp ult i8 %.off587, 10, !dbg !3618
  br i1 %27, label %while.cond.97, label %while.end.106, !dbg !3618

while.end.106:                                    ; preds = %while.cond.97
  %s.7.lcssa = phi i8* [ %s.7, %while.cond.97 ]
  %call107 = call i64 @strtol(i8* nocapture %incdec.ptr77, i8** null, i32 10) #2, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %call107, i64 0, metadata !789, metadata !1036), !dbg !3620
  %.pre614 = load i8*, i8** %coeff_end, align 8, !dbg !3621, !tbaa !1046
  br label %while.cond.110.preheader, !dbg !3623

while.cond.110.preheader:                         ; preds = %while.end.106, %if.end.68
  %28 = phi i8* [ %storemerge, %if.end.68 ], [ %.pre614, %while.end.106 ], !dbg !3624
  %s.8.ph = phi i8* [ %s.5, %if.end.68 ], [ %s.7.lcssa, %while.end.106 ]
  %exp.0.ph = phi i64 [ 0, %if.end.68 ], [ %call107, %while.end.106 ]
  %add.ptr118 = getelementptr i8, i8* %28, i64 -1, !dbg !3632
  br label %while.cond.110, !dbg !3634

while.cond.110:                                   ; preds = %while.cond.110.preheader, %land.rhs.113
  %ndigits.0 = phi i64 [ %sub, %land.rhs.113 ], [ %sub.ptr.sub, %while.cond.110.preheader ]
  %cmp111 = icmp sgt i64 %ndigits.0, 0, !dbg !3634
  br i1 %cmp111, label %land.rhs.113, label %while.end.127, !dbg !3635

land.rhs.113:                                     ; preds = %while.cond.110
  %sub = add i64 %ndigits.0, -1, !dbg !3636
  %cmp114 = icmp slt i64 %sub, %sub.ptr.sub60, !dbg !3636
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg = sub i64 1, %ndigits.0, !dbg !3621
  %add.ptr117 = getelementptr i8, i8* %28, i64 %idx.neg, !dbg !3621
  %add.ptr121 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg, !dbg !3632
  %cond = select i1 %cmp114, i8* %add.ptr117, i8* %add.ptr121, !dbg !3636
  %29 = load i8, i8* %cond, align 1, !dbg !3638, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %29, i64 0, metadata !813, metadata !1036), !dbg !3641
  %cmp123 = icmp eq i8 %29, 48, !dbg !3643
  br i1 %cmp123, label %while.cond.110, label %while.end.127, !dbg !3644

while.end.127:                                    ; preds = %land.rhs.113, %while.cond.110
  %ndigits.0.lcssa = phi i64 [ %ndigits.0, %land.rhs.113 ], [ %ndigits.0, %while.cond.110 ]
  %cmp128 = icmp eq i64 %ndigits.0.lcssa, 0, !dbg !3645
  %cmp131 = icmp slt i64 %exp.0.ph, -4611686018427387904, !dbg !3647
  %or.cond = or i1 %cmp131, %cmp128, !dbg !3648
  br i1 %or.cond, label %while.cond.329.preheader, label %if.end.134, !dbg !3648

if.end.134:                                       ; preds = %while.end.127
  %cmp135 = icmp sgt i64 %exp.0.ph, 4611686018427387903, !dbg !3649
  br i1 %cmp135, label %overflow_error, label %if.end.138, !dbg !3651

if.end.138:                                       ; preds = %if.end.134
  %mul = shl i64 %sub.ptr.sub60, 2, !dbg !3652
  %sub139 = sub i64 %exp.0.ph, %mul, !dbg !3653
  call void @llvm.dbg.value(metadata i64 %sub139, i64 0, metadata !789, metadata !1036), !dbg !3620
  %sub140 = add i64 %ndigits.0.lcssa, -1, !dbg !3654
  %mul141 = shl i64 %sub140, 2, !dbg !3655
  %add = add i64 %mul141, %sub139, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !790, metadata !1036), !dbg !3657
  %cmp143 = icmp slt i64 %sub140, %sub.ptr.sub60, !dbg !3658
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg147 = sub i64 1, %ndigits.0.lcssa, !dbg !3660
  %add.ptr148 = getelementptr i8, i8* %28, i64 %idx.neg147, !dbg !3660
  %add.ptr153 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg147, !dbg !3662
  %cond155 = select i1 %cmp143, i8* %add.ptr148, i8* %add.ptr153, !dbg !3658
  %30 = load i8, i8* %cond155, align 1, !dbg !3664, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %30, i64 0, metadata !813, metadata !1036), !dbg !3667
  %conv.i.565 = sext i8 %30 to i32, !dbg !3669
  %switch.tableidx.i.566 = add nsw i32 %conv.i.565, -48, !dbg !3670
  %31 = icmp ult i32 %switch.tableidx.i.566, 55, !dbg !3670
  br i1 %31, label %for.cond.preheader, label %for.body.preheader, !dbg !3670

for.cond.preheader:                               ; preds = %if.end.138
  %32 = sext i32 %switch.tableidx.i.566 to i64, !dbg !3670
  %switch.gep.i.567 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i64 0, i64 %32, !dbg !3670
  %switch.load.i.568 = load i32, i32* %switch.gep.i.567, align 4, !dbg !3670
  %cmp157.600 = icmp eq i32 %switch.tableidx.i.566, 0, !dbg !3671
  br i1 %cmp157.600, label %for.end, label %for.body.preheader, !dbg !3673

for.body.preheader:                               ; preds = %for.cond.preheader, %if.end.138
  %digit.0602.ph = phi i32 [ -1, %if.end.138 ], [ %switch.load.i.568, %for.cond.preheader ]
  br label %for.body, !dbg !3674

for.body:                                         ; preds = %for.body.preheader, %for.body
  %digit.0602 = phi i32 [ %div, %for.body ], [ %digit.0602.ph, %for.body.preheader ]
  %top_exp.0601 = phi i64 [ %inc, %for.body ], [ %add, %for.body.preheader ]
  %inc = add i64 %top_exp.0601, 1, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !790, metadata !1036), !dbg !3657
  %div = sdiv i32 %digit.0602, 2, !dbg !3675
  call void @llvm.dbg.value(metadata i32 %div, i64 0, metadata !800, metadata !1036), !dbg !3676
  %digit.0602.off = add i32 %digit.0602, 1, !dbg !3671
  %33 = icmp ult i32 %digit.0602.off, 3, !dbg !3671
  br i1 %33, label %for.end.loopexit, label %for.body, !dbg !3673

for.end.loopexit:                                 ; preds = %for.body
  %inc.lcssa = phi i64 [ %inc, %for.body ]
  br label %for.end, !dbg !3677

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %top_exp.0.lcssa = phi i64 [ %add, %for.cond.preheader ], [ %inc.lcssa, %for.end.loopexit ]
  %cmp159 = icmp slt i64 %top_exp.0.lcssa, -1074, !dbg !3677
  br i1 %cmp159, label %while.cond.329.preheader, label %if.end.162, !dbg !3679

if.end.162:                                       ; preds = %for.end
  %cmp163 = icmp sgt i64 %top_exp.0.lcssa, 1024, !dbg !3680
  br i1 %cmp163, label %overflow_error, label %if.end.166, !dbg !3682

if.end.166:                                       ; preds = %if.end.162
  %cmp167 = icmp sgt i64 %top_exp.0.lcssa, -1021, !dbg !3683
  %cond172 = select i1 %cmp167, i64 %top_exp.0.lcssa, i64 -1021, !dbg !3683
  %sub173 = add i64 %cond172, -53, !dbg !3684
  call void @llvm.dbg.value(metadata i64 %sub173, i64 0, metadata !791, metadata !1036), !dbg !3687
  call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !788, metadata !1036), !dbg !3544
  %cmp174 = icmp sgt i64 %sub173, %sub139, !dbg !3688
  br i1 %cmp174, label %if.end.202, label %for.cond.178.preheader, !dbg !3690

for.cond.178.preheader:                           ; preds = %if.end.166
  %cmp179.596 = icmp sgt i64 %sub140, -1, !dbg !3691
  br i1 %cmp179.596, label %for.body.181.preheader, label %for.end.199, !dbg !3695

for.body.181.preheader:                           ; preds = %for.cond.178.preheader
  br label %for.body.181, !dbg !3696

for.body.181:                                     ; preds = %for.body.181.preheader, %hex_from_char.exit563
  %i.0598 = phi i64 [ %dec198, %hex_from_char.exit563 ], [ %sub140, %for.body.181.preheader ]
  %x.0597 = phi double [ %add196, %hex_from_char.exit563 ], [ 0.000000e+00, %for.body.181.preheader ]
  %mul182 = fmul double %x.0597, 1.600000e+01, !dbg !3696
  %cmp183 = icmp slt i64 %i.0598, %sub.ptr.sub60, !dbg !3697
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg186 = sub i64 0, %i.0598, !dbg !3698
  %add.ptr187 = getelementptr i8, i8* %28, i64 %idx.neg186, !dbg !3698
  %add.ptr191 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg186, !dbg !3700
  %cond193 = select i1 %cmp183, i8* %add.ptr187, i8* %add.ptr191, !dbg !3697
  %34 = load i8, i8* %cond193, align 1, !dbg !3702, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %34, i64 0, metadata !813, metadata !1036), !dbg !3705
  %conv.i.557 = sext i8 %34 to i32, !dbg !3707
  %switch.tableidx.i.558 = add nsw i32 %conv.i.557, -48, !dbg !3708
  %35 = icmp ult i32 %switch.tableidx.i.558, 55, !dbg !3708
  br i1 %35, label %switch.lookup.i.561, label %hex_from_char.exit563, !dbg !3708

switch.lookup.i.561:                              ; preds = %for.body.181
  %36 = sext i32 %switch.tableidx.i.558 to i64, !dbg !3708
  %switch.gep.i.559 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i64 0, i64 %36, !dbg !3708
  %switch.load.i.560 = load i32, i32* %switch.gep.i.559, align 4, !dbg !3708
  br label %hex_from_char.exit563, !dbg !3708

hex_from_char.exit563:                            ; preds = %for.body.181, %switch.lookup.i.561
  %call194564 = phi i32 [ %switch.load.i.560, %switch.lookup.i.561 ], [ -1, %for.body.181 ]
  %conv195 = sitofp i32 %call194564 to double, !dbg !3702
  %add196 = fadd double %mul182, %conv195, !dbg !3709
  call void @llvm.dbg.value(metadata double %add196, i64 0, metadata !788, metadata !1036), !dbg !3544
  %dec198 = add i64 %i.0598, -1, !dbg !3710
  call void @llvm.dbg.value(metadata i64 %dec198, i64 0, metadata !806, metadata !1036), !dbg !3711
  %cmp179 = icmp sgt i64 %dec198, -1, !dbg !3691
  br i1 %cmp179, label %for.body.181, label %for.end.199.loopexit, !dbg !3695

for.end.199.loopexit:                             ; preds = %hex_from_char.exit563
  %add196.lcssa = phi double [ %add196, %hex_from_char.exit563 ]
  br label %for.end.199, !dbg !3712

for.end.199:                                      ; preds = %for.end.199.loopexit, %for.cond.178.preheader
  %x.0.lcssa = phi double [ 0.000000e+00, %for.cond.178.preheader ], [ %add196.lcssa, %for.end.199.loopexit ]
  %conv200 = trunc i64 %sub139 to i32, !dbg !3712
  %call201 = call double @ldexp(double %x.0.lcssa, i32 %conv200) #2, !dbg !3713
  call void @llvm.dbg.value(metadata double %call201, i64 0, metadata !788, metadata !1036), !dbg !3544
  br label %while.cond.329.preheader, !dbg !3714

if.end.202:                                       ; preds = %if.end.166
  %sub203 = sub i64 %sub173, %sub139, !dbg !3715
  %sub204 = add i64 %sub203, -1, !dbg !3716
  %rem = srem i64 %sub204, 4, !dbg !3717
  %conv205 = trunc i64 %rem to i32, !dbg !3718
  %shl = shl i32 1, %conv205, !dbg !3719
  call void @llvm.dbg.value(metadata i32 %shl, i64 0, metadata !799, metadata !1036), !dbg !3720
  %div208 = sdiv i64 %sub204, 4, !dbg !3721
  call void @llvm.dbg.value(metadata i64 %div208, i64 0, metadata !792, metadata !1036), !dbg !3722
  call void @llvm.dbg.value(metadata i64 %sub140, i64 0, metadata !806, metadata !1036), !dbg !3711
  %cmp211.593 = icmp sgt i64 %sub140, %div208, !dbg !3723
  br i1 %cmp211.593, label %for.body.213.preheader, label %for.end.231, !dbg !3726

for.body.213.preheader:                           ; preds = %if.end.202
  br label %for.body.213, !dbg !3727

for.body.213:                                     ; preds = %for.body.213.preheader, %hex_from_char.exit555
  %i.1595 = phi i64 [ %dec230, %hex_from_char.exit555 ], [ %sub140, %for.body.213.preheader ]
  %x.1594 = phi double [ %phitmp, %hex_from_char.exit555 ], [ 0.000000e+00, %for.body.213.preheader ]
  %cmp215 = icmp slt i64 %i.1595, %sub.ptr.sub60, !dbg !3727
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg218 = sub i64 0, %i.1595, !dbg !3728
  %add.ptr219 = getelementptr i8, i8* %28, i64 %idx.neg218, !dbg !3728
  %add.ptr223 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg218, !dbg !3730
  %cond225 = select i1 %cmp215, i8* %add.ptr219, i8* %add.ptr223, !dbg !3727
  %37 = load i8, i8* %cond225, align 1, !dbg !3732, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %37, i64 0, metadata !813, metadata !1036), !dbg !3735
  %conv.i.549 = sext i8 %37 to i32, !dbg !3737
  %switch.tableidx.i.550 = add nsw i32 %conv.i.549, -48, !dbg !3738
  %38 = icmp ult i32 %switch.tableidx.i.550, 55, !dbg !3738
  br i1 %38, label %switch.lookup.i.553, label %hex_from_char.exit555, !dbg !3738

switch.lookup.i.553:                              ; preds = %for.body.213
  %39 = sext i32 %switch.tableidx.i.550 to i64, !dbg !3738
  %switch.gep.i.551 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i64 0, i64 %39, !dbg !3738
  %switch.load.i.552 = load i32, i32* %switch.gep.i.551, align 4, !dbg !3738
  br label %hex_from_char.exit555, !dbg !3738

hex_from_char.exit555:                            ; preds = %for.body.213, %switch.lookup.i.553
  %call226556 = phi i32 [ %switch.load.i.552, %switch.lookup.i.553 ], [ -1, %for.body.213 ]
  %conv227 = sitofp i32 %call226556 to double, !dbg !3732
  %add228 = fadd double %x.1594, %conv227, !dbg !3739
  call void @llvm.dbg.value(metadata double %add228, i64 0, metadata !788, metadata !1036), !dbg !3544
  %dec230 = add i64 %i.1595, -1, !dbg !3740
  call void @llvm.dbg.value(metadata i64 %dec230, i64 0, metadata !806, metadata !1036), !dbg !3711
  %phitmp = fmul double %add228, 1.600000e+01, !dbg !3741
  %cmp211 = icmp sgt i64 %dec230, %div208, !dbg !3723
  br i1 %cmp211, label %for.body.213, label %for.end.231.loopexit, !dbg !3726

for.end.231.loopexit:                             ; preds = %hex_from_char.exit555
  %phitmp.lcssa = phi double [ %phitmp, %hex_from_char.exit555 ]
  br label %for.end.231, !dbg !3742

for.end.231:                                      ; preds = %for.end.231.loopexit, %if.end.202
  %x.1.lcssa = phi double [ 0.000000e+00, %if.end.202 ], [ %phitmp.lcssa, %for.end.231.loopexit ]
  %cmp232 = icmp slt i64 %div208, %sub.ptr.sub60, !dbg !3742
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg235 = sub nsw i64 0, %div208, !dbg !3743
  %add.ptr236 = getelementptr i8, i8* %28, i64 %idx.neg235, !dbg !3743
  %add.ptr240 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg235, !dbg !3744
  %cond242 = select i1 %cmp232, i8* %add.ptr236, i8* %add.ptr240, !dbg !3742
  %40 = load i8, i8* %cond242, align 1, !dbg !3745, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %40, i64 0, metadata !813, metadata !1036), !dbg !3746
  %conv.i.541 = sext i8 %40 to i32, !dbg !3748
  %switch.tableidx.i.542 = add nsw i32 %conv.i.541, -48, !dbg !3749
  %41 = icmp ult i32 %switch.tableidx.i.542, 55, !dbg !3749
  br i1 %41, label %switch.lookup.i.545, label %hex_from_char.exit547, !dbg !3749

switch.lookup.i.545:                              ; preds = %for.end.231
  %42 = sext i32 %switch.tableidx.i.542 to i64, !dbg !3749
  %switch.gep.i.543 = getelementptr inbounds [55 x i32], [55 x i32]* @switch.table, i64 0, i64 %42, !dbg !3749
  %switch.load.i.544 = load i32, i32* %switch.gep.i.543, align 4, !dbg !3749
  br label %hex_from_char.exit547, !dbg !3749

hex_from_char.exit547:                            ; preds = %for.end.231, %switch.lookup.i.545
  %call243548 = phi i32 [ %switch.load.i.544, %switch.lookup.i.545 ], [ -1, %for.end.231 ]
  call void @llvm.dbg.value(metadata i32 %call243548, i64 0, metadata !800, metadata !1036), !dbg !3676
  %mul245 = shl i32 %shl, 1, !dbg !3750
  %sub246 = sub i32 16, %mul245, !dbg !3751
  %and247 = and i32 %call243548, %sub246, !dbg !3752
  %conv248 = sitofp i32 %and247 to double, !dbg !3753
  %add249 = fadd double %x.1.lcssa, %conv248, !dbg !3754
  call void @llvm.dbg.value(metadata double %add249, i64 0, metadata !788, metadata !1036), !dbg !3544
  %and250 = and i32 %call243548, %shl, !dbg !3755
  %cmp251 = icmp eq i32 %and250, 0, !dbg !3756
  br i1 %cmp251, label %if.end.324, label %if.then.253, !dbg !3757

if.then.253:                                      ; preds = %hex_from_char.exit547
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !801, metadata !1036), !dbg !3758
  %mul254 = shl i32 3, %conv205, !dbg !3759
  %sub255 = add i32 %mul254, -1, !dbg !3760
  %and256 = and i32 %call243548, %sub255, !dbg !3761
  %cmp257 = icmp eq i32 %and256, 0, !dbg !3762
  br i1 %cmp257, label %lor.lhs.false.259, label %if.then.309, !dbg !3763

lor.lhs.false.259:                                ; preds = %if.then.253
  %cmp260 = icmp eq i32 %conv205, 3, !dbg !3764
  br i1 %cmp260, label %land.lhs.true.262, label %for.cond.284.preheader, !dbg !3765

land.lhs.true.262:                                ; preds = %lor.lhs.false.259
  %add263 = add nsw i64 %div208, 1, !dbg !3766
  %cmp264 = icmp slt i64 %add263, %sub.ptr.sub60, !dbg !3766
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg268 = xor i64 %div208, -1, !dbg !3768
  %add.ptr269 = getelementptr i8, i8* %28, i64 %idx.neg268, !dbg !3768
  %add.ptr274 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg268, !dbg !3770
  %cond276 = select i1 %cmp264, i8* %add.ptr269, i8* %add.ptr274, !dbg !3766
  %43 = load i8, i8* %cond276, align 1, !dbg !3772, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %43, i64 0, metadata !813, metadata !1036), !dbg !3775
  %conv.i.533 = sext i8 %43 to i32, !dbg !3777
  %switch.tableidx.i.534 = add nsw i32 %conv.i.533, -48, !dbg !3778
  %44 = icmp ult i32 %switch.tableidx.i.534, 55, !dbg !3778
  br i1 %44, label %hex_from_char.exit539, label %if.then.309, !dbg !3778

hex_from_char.exit539:                            ; preds = %land.lhs.true.262
  %45 = sext i32 %switch.tableidx.i.534 to i64, !dbg !3778
  %46 = lshr i64 11821949024600405, %45, !dbg !3779
  %47 = and i64 %46, 1, !dbg !3779
  %cmp279 = icmp eq i64 %47, 0, !dbg !3779
  br i1 %cmp279, label %if.then.309, label %for.cond.284.preheader, !dbg !3780

for.cond.284.preheader:                           ; preds = %lor.lhs.false.259, %hex_from_char.exit539
  br label %for.cond.284, !dbg !3781

for.cond.284:                                     ; preds = %for.cond.284.preheader, %for.body.287
  %i.2.in = phi i64 [ %i.2, %for.body.287 ], [ %div208, %for.cond.284.preheader ]
  %cmp285 = icmp sgt i64 %i.2.in, 0, !dbg !3781
  br i1 %cmp285, label %for.body.287, label %if.end.324.loopexit, !dbg !3782

for.body.287:                                     ; preds = %for.cond.284
  %i.2 = add nsw i64 %i.2.in, -1, !dbg !3783
  %cmp288 = icmp sle i64 %i.2.in, %sub.ptr.sub60, !dbg !3784
  call void @llvm.dbg.value(metadata i8** %coeff_end, i64 0, metadata !796, metadata !1036), !dbg !3542
  %idx.neg291 = sub i64 1, %i.2.in, !dbg !3624
  %add.ptr292 = getelementptr i8, i8* %28, i64 %idx.neg291, !dbg !3624
  %add.ptr296 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg291, !dbg !3785
  %cond298 = select i1 %cmp288, i8* %add.ptr292, i8* %add.ptr296, !dbg !3784
  %48 = load i8, i8* %cond298, align 1, !dbg !3787, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i8 %48, i64 0, metadata !813, metadata !1036), !dbg !3790
  %cmp300 = icmp eq i8 %48, 48, !dbg !3792
  br i1 %cmp300, label %for.cond.284, label %if.then.309.loopexit, !dbg !3793

if.then.309.loopexit:                             ; preds = %for.body.287
  br label %if.then.309, !dbg !3794

if.then.309:                                      ; preds = %if.then.309.loopexit, %hex_from_char.exit539, %land.lhs.true.262, %if.then.253
  %conv311 = sitofp i32 %mul245 to double, !dbg !3794
  %add312 = fadd double %conv311, %add249, !dbg !3797
  call void @llvm.dbg.value(metadata double %add312, i64 0, metadata !788, metadata !1036), !dbg !3544
  %cmp313 = icmp eq i64 %top_exp.0.lcssa, 1024, !dbg !3798
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.324, !dbg !3800

land.lhs.true.315:                                ; preds = %if.then.309
  %call318 = call double @ldexp(double %conv311, i32 53) #2, !dbg !3801
  %cmp319 = fcmp oeq double %add312, %call318, !dbg !3802
  br i1 %cmp319, label %overflow_error, label %if.end.324, !dbg !3803

if.end.324.loopexit:                              ; preds = %for.cond.284
  br label %if.end.324, !dbg !3804

if.end.324:                                       ; preds = %if.end.324.loopexit, %hex_from_char.exit547, %land.lhs.true.315, %if.then.309
  %x.2 = phi double [ %add312, %land.lhs.true.315 ], [ %add312, %if.then.309 ], [ %add249, %hex_from_char.exit547 ], [ %add249, %if.end.324.loopexit ]
  %mul325 = shl nsw i64 %div208, 2, !dbg !3804
  %add326 = add i64 %mul325, %sub139, !dbg !3805
  %conv327 = trunc i64 %add326 to i32, !dbg !3806
  %call328 = call double @ldexp(double %x.2, i32 %conv327) #2, !dbg !3807
  call void @llvm.dbg.value(metadata double %call328, i64 0, metadata !788, metadata !1036), !dbg !3544
  br label %while.cond.329.preheader, !dbg !3808

while.cond.329.preheader:                         ; preds = %if.end.324, %for.end.199, %while.end, %while.end.127, %for.end
  %s.9.ph = phi i8* [ %s.8.ph, %for.end ], [ %s.8.ph, %while.end.127 ], [ %5, %while.end ], [ %s.8.ph, %if.end.324 ], [ %s.8.ph, %for.end.199 ]
  %negate.1.ph = phi i32 [ %negate.0, %for.end ], [ %negate.0, %while.end.127 ], [ 0, %while.end ], [ %negate.0, %if.end.324 ], [ %negate.0, %for.end.199 ]
  %x.3.ph = phi double [ 0.000000e+00, %for.end ], [ 0.000000e+00, %while.end.127 ], [ %call3, %while.end ], [ %call328, %if.end.324 ], [ %call201, %for.end.199 ]
  br label %while.cond.329, !dbg !3809

while.cond.329:                                   ; preds = %while.cond.329, %while.cond.329.preheader
  %s.9 = phi i8* [ %incdec.ptr338, %while.cond.329 ], [ %s.9.ph, %while.cond.329.preheader ]
  %49 = load i8, i8* %s.9, align 1, !dbg !3809, !tbaa !1210
  %idxprom333 = zext i8 %49 to i64, !dbg !3809
  %arrayidx334 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i64 0, i64 %idxprom333, !dbg !3809
  %50 = load i32, i32* %arrayidx334, align 4, !dbg !3809, !tbaa !1061
  %and335 = and i32 %50, 8, !dbg !3809
  %tobool336 = icmp eq i32 %and335, 0, !dbg !3810
  %incdec.ptr338 = getelementptr i8, i8* %s.9, i64 1, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %incdec.ptr338, i64 0, metadata !793, metadata !1036), !dbg !3530
  br i1 %tobool336, label %while.end.339, label %while.cond.329, !dbg !3810

while.end.339:                                    ; preds = %while.cond.329
  %s.9.lcssa = phi i8* [ %s.9, %while.cond.329 ]
  %cmp340 = icmp eq i8* %s.9.lcssa, %add.ptr, !dbg !3812
  br i1 %cmp340, label %if.end.343, label %parse_error, !dbg !3814

if.end.343:                                       ; preds = %while.end.339
  %tobool344 = icmp ne i32 %negate.1.ph, 0, !dbg !3815
  %sub346 = fsub double -0.000000e+00, %x.3.ph, !dbg !3816
  %cond349 = select i1 %tobool344, double %sub346, double %x.3.ph, !dbg !3815
  %call350 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), double %cond349) #2, !dbg !3817
  call void @llvm.dbg.value(metadata %struct._object* %call350, i64 0, metadata !786, metadata !1036), !dbg !3818
  %cmp351 = icmp eq %struct._object* %call350, null, !dbg !3819
  br i1 %cmp351, label %cleanup, label %if.end.354, !dbg !3821

if.end.354:                                       ; preds = %if.end.343
  %call355 = call %struct._object* @PyObject_CallObject(%struct._object* %cls, %struct._object* %call350) #2, !dbg !3822
  call void @llvm.dbg.value(metadata %struct._object* %call355, i64 0, metadata !787, metadata !1036), !dbg !3823
  call void @llvm.dbg.value(metadata %struct._object* %call350, i64 0, metadata !807, metadata !1036), !dbg !3824
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call350, i64 0, i32 0, !dbg !3826
  %51 = load i64, i64* %ob_refcnt, align 8, !dbg !3826, !tbaa !1074
  %dec356 = add i64 %51, -1, !dbg !3826
  store i64 %dec356, i64* %ob_refcnt, align 8, !dbg !3826, !tbaa !1074
  %cmp357 = icmp eq i64 %dec356, 0, !dbg !3826
  br i1 %cmp357, label %if.else.360, label %cleanup, !dbg !3828

if.else.360:                                      ; preds = %if.end.354
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call350, i64 0, i32 1, !dbg !3829
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3829, !tbaa !1056
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i64 0, i32 4, !dbg !3829
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3829, !tbaa !1142
  call void %53(%struct._object* %call350) #2, !dbg !3829
  br label %cleanup

overflow_error:                                   ; preds = %land.lhs.true.315, %if.end.162, %if.end.134
  %54 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3831, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i64 0, i64 0)) #2, !dbg !3832
  br label %cleanup, !dbg !3833

parse_error:                                      ; preds = %while.end.339, %if.end.87, %if.end.57
  %55 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3834, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0)) #2, !dbg !3835
  br label %cleanup, !dbg !3836

insane_length_error:                              ; preds = %if.end.64
  %56 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3837, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i64 0, i64 0)) #2, !dbg !3838
  br label %cleanup, !dbg !3839

cleanup:                                          ; preds = %if.else.360, %if.end.354, %if.end.343, %entry, %insane_length_error, %parse_error, %overflow_error
  %retval.0 = phi %struct._object* [ null, %parse_error ], [ null, %insane_length_error ], [ null, %overflow_error ], [ null, %entry ], [ null, %if.end.343 ], [ %call355, %if.end.354 ], [ %call355, %if.else.360 ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !3840
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !3840
  ret %struct._object* %retval.0, !dbg !3840
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_hex(%struct._object* %v) #1 {
entry:
  %e = alloca i32, align 4
  %s = alloca [16 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !580, metadata !1036), !dbg !3842
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !817, metadata !1036), !dbg !3841
  %0 = bitcast i32* %e to i8*, !dbg !3847
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !3847
  %1 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i64 0, i64 0, !dbg !3848
  call void @llvm.lifetime.start(i64 16, i8* %1) #2, !dbg !3848
  tail call void @llvm.dbg.declare(metadata [16 x i8]* %s, metadata !825, metadata !1036), !dbg !3849
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %v, i64 0, i32 1, !dbg !3850
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3850, !tbaa !1056
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !3850
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3850

lor.lhs.false:                                    ; preds = %entry
  %call = tail call i32 @PyType_IsSubtype(%struct._typeobject* %2, %struct._typeobject* nonnull @PyFloat_Type) #2, !dbg !3851
  %tobool = icmp eq i32 %call, 0, !dbg !3851
  br i1 %tobool, label %if.else, label %if.then, !dbg !3853

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, i32 0, !dbg !3854
  %4 = load i64, i64* %3, align 8, !dbg !3854, !tbaa !1077
  br label %cond.true.8, !dbg !3854

if.else:                                          ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !818, metadata !1036), !dbg !3857
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !581, metadata !1036) #2, !dbg !3858
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !582, metadata !1036) #2, !dbg !3859
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3860, !tbaa !1056
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !3860
  %6 = load i64, i64* %tp_flags.i, align 8, !dbg !3860, !tbaa !1172
  %and.i = and i64 %6, 16777216, !dbg !3860
  %cmp.i = icmp eq i64 %and.i, 0, !dbg !3860
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !3861

if.then.i:                                        ; preds = %if.else
  %call.i = tail call double @PyLong_AsDouble(%struct._object* %v) #2, !dbg !3862
  %7 = bitcast double %call.i to i64, !dbg !3863
  %cmp1.i = fcmp oeq double %call.i, -1.000000e+00, !dbg !3864
  br i1 %cmp1.i, label %land.lhs.true.i, label %cond.true.8, !dbg !3865

land.lhs.true.i:                                  ; preds = %if.then.i
  %call2.i = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3866
  %tobool.i = icmp eq %struct._object* %call2.i, null, !dbg !3866
  br i1 %tobool.i, label %cond.true.8, label %cleanup, !dbg !3867

if.else.i:                                        ; preds = %if.else
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3868, !tbaa !1074
  %inc.i = add i64 %8, 1, !dbg !3868
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i64 0, i32 0), align 8, !dbg !3868, !tbaa !1074
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !580, metadata !1036), !dbg !3842
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !817, metadata !1036), !dbg !3841
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NotImplementedStruct, i64 0, metadata !817, metadata !1036), !dbg !3841
  br label %cleanup, !dbg !3869

cond.true.8:                                      ; preds = %if.then.i, %land.lhs.true.i, %if.then
  %x.sroa.0.0.126 = phi i64 [ %4, %if.then ], [ %7, %land.lhs.true.i ], [ %7, %if.then.i ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !818, metadata !1036), !dbg !3857
  %9 = bitcast i64 %x.sroa.0.0.126 to double, !dbg !3870
  %call9 = tail call i32 @__isnan(double %9) #3, !dbg !3870
  %tobool10 = icmp eq i32 %call9, 0, !dbg !3870
  br i1 %tobool10, label %cond.true.21, label %if.then.28, !dbg !3870

cond.true.21:                                     ; preds = %cond.true.8
  %call22 = tail call i32 @__isinf(double %9) #3, !dbg !3873
  %tobool23 = icmp eq i32 %call22, 0, !dbg !3873
  br i1 %tobool23, label %if.end.30, label %if.then.28, !dbg !3873

if.then.28:                                       ; preds = %cond.true.21, %cond.true.8
  %ob_fval.i = getelementptr inbounds %struct._object, %struct._object* %v, i64 1, !dbg !3875
  %10 = bitcast %struct._object* %ob_fval.i to double*, !dbg !3875
  %11 = load double, double* %10, align 8, !dbg !3875, !tbaa !1077
  %call.i.113 = tail call i8* @PyOS_double_to_string(double %11, i8 signext 114, i32 0, i32 2, i32* null) #2, !dbg !3877
  tail call void @llvm.dbg.value(metadata i8* %call.i.113, i64 0, metadata !567, metadata !1036) #2, !dbg !3878
  %tobool.i.114 = icmp eq i8* %call.i.113, null, !dbg !3879
  br i1 %tobool.i.114, label %if.then.i.115, label %if.end.i, !dbg !3880

if.then.i.115:                                    ; preds = %if.then.28
  %call1.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !3881
  br label %cleanup, !dbg !3882

if.end.i:                                         ; preds = %if.then.28
  %call2.i.116 = tail call i64 @strlen(i8* %call.i.113) #10, !dbg !3883
  %call3.i = tail call %struct._object* @_PyUnicode_FromASCII(i8* %call.i.113, i64 %call2.i.116) #2, !dbg !3884
  tail call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !566, metadata !1036) #2, !dbg !3885
  tail call void @PyMem_Free(i8* %call.i.113) #2, !dbg !3886
  br label %cleanup, !dbg !3887

if.end.30:                                        ; preds = %cond.true.21
  %cmp31 = fcmp oeq double %9, 0.000000e+00, !dbg !3888
  br i1 %cmp31, label %if.then.33, label %if.end.41, !dbg !3890

if.then.33:                                       ; preds = %if.end.30
  %call34 = tail call double @copysign(double 1.000000e+00, double %9) #3, !dbg !3891
  %cmp35 = fcmp oeq double %call34, -1.000000e+00, !dbg !3894
  br i1 %cmp35, label %if.then.37, label %if.else.39, !dbg !3895

if.then.37:                                       ; preds = %if.then.33
  %call38 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i64 0, i64 0)) #2, !dbg !3896
  br label %cleanup, !dbg !3897

if.else.39:                                       ; preds = %if.then.33
  %call40 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i64 0, i64 0)) #2, !dbg !3898
  br label %cleanup, !dbg !3899

if.end.41:                                        ; preds = %if.end.30
  %call42 = tail call double @fabs(double %9) #3, !dbg !3900
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !820, metadata !1036), !dbg !3901
  %call43 = call double @frexp(double %call42, i32* nonnull %e) #2, !dbg !3902
  tail call void @llvm.dbg.value(metadata double %call43, i64 0, metadata !819, metadata !1036), !dbg !3903
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !820, metadata !1036), !dbg !3901
  %12 = load i32, i32* %e, align 4, !dbg !3904, !tbaa !1061
  %sub = sub i32 -1021, %12, !dbg !3904
  %cmp44 = icmp sgt i32 %sub, 0, !dbg !3904
  %cond = select i1 %cmp44, i32 %sub, i32 0, !dbg !3904
  %sub49 = sub i32 1, %cond, !dbg !3905
  tail call void @llvm.dbg.value(metadata i32 %sub49, i64 0, metadata !821, metadata !1036), !dbg !3908
  %call50 = tail call double @ldexp(double %call43, i32 %sub49) #2, !dbg !3909
  tail call void @llvm.dbg.value(metadata double %call50, i64 0, metadata !819, metadata !1036), !dbg !3903
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !820, metadata !1036), !dbg !3901
  %sub51 = sub i32 %12, %sub49, !dbg !3910
  tail call void @llvm.dbg.value(metadata i32 %sub51, i64 0, metadata !820, metadata !1036), !dbg !3901
  store i32 %sub51, i32* %e, align 4, !dbg !3910, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !823, metadata !1036), !dbg !3911
  %conv52 = fptosi double %call50 to i32, !dbg !3912
  tail call void @llvm.dbg.value(metadata i32 %conv52, i64 0, metadata !833, metadata !1036), !dbg !3913
  %idxprom.i = sext i32 %conv52 to i64, !dbg !3915
  %13 = load i8*, i8** @Py_hexdigits, align 8, !dbg !3915, !tbaa !1046
  %arrayidx.i = getelementptr i8, i8* %13, i64 %idxprom.i, !dbg !3915
  %14 = load i8, i8* %arrayidx.i, align 1, !dbg !3915, !tbaa !1210
  store i8 %14, i8* %1, align 16, !dbg !3916, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !823, metadata !1036), !dbg !3911
  %conv55 = sitofp i32 %conv52 to double, !dbg !3917
  %sub56 = fsub double %call50, %conv55, !dbg !3918
  tail call void @llvm.dbg.value(metadata double %sub56, i64 0, metadata !819, metadata !1036), !dbg !3903
  %arrayidx58 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 1, !dbg !3919
  store i8 46, i8* %arrayidx58, align 1, !dbg !3920, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !823, metadata !1036), !dbg !3911
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !822, metadata !1036), !dbg !3921
  %mul = fmul double %sub56, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62 = fptosi double %mul to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118 = sext i32 %conv62 to i64, !dbg !3929
  %arrayidx.i.119 = getelementptr i8, i8* %13, i64 %idxprom.i.118, !dbg !3929
  %15 = load i8, i8* %arrayidx.i.119, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 2, !dbg !3930
  store i8 %15, i8* %arrayidx65, align 2, !dbg !3931, !tbaa !1210
  %conv68 = sitofp i32 %conv62 to double, !dbg !3932
  %sub69 = fsub double %mul, %conv68, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.1 = fmul double %sub69, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.1 = fptosi double %mul.1 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.1 = sext i32 %conv62.1 to i64, !dbg !3929
  %arrayidx.i.119.1 = getelementptr i8, i8* %13, i64 %idxprom.i.118.1, !dbg !3929
  %16 = load i8, i8* %arrayidx.i.119.1, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.1 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 3, !dbg !3930
  store i8 %16, i8* %arrayidx65.1, align 1, !dbg !3931, !tbaa !1210
  %conv68.1 = sitofp i32 %conv62.1 to double, !dbg !3932
  %sub69.1 = fsub double %mul.1, %conv68.1, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.2 = fmul double %sub69.1, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.2 = fptosi double %mul.2 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.2 = sext i32 %conv62.2 to i64, !dbg !3929
  %arrayidx.i.119.2 = getelementptr i8, i8* %13, i64 %idxprom.i.118.2, !dbg !3929
  %17 = load i8, i8* %arrayidx.i.119.2, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.2 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 4, !dbg !3930
  store i8 %17, i8* %arrayidx65.2, align 4, !dbg !3931, !tbaa !1210
  %conv68.2 = sitofp i32 %conv62.2 to double, !dbg !3932
  %sub69.2 = fsub double %mul.2, %conv68.2, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.3 = fmul double %sub69.2, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.3 = fptosi double %mul.3 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.3 = sext i32 %conv62.3 to i64, !dbg !3929
  %arrayidx.i.119.3 = getelementptr i8, i8* %13, i64 %idxprom.i.118.3, !dbg !3929
  %18 = load i8, i8* %arrayidx.i.119.3, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.3 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 5, !dbg !3930
  store i8 %18, i8* %arrayidx65.3, align 1, !dbg !3931, !tbaa !1210
  %conv68.3 = sitofp i32 %conv62.3 to double, !dbg !3932
  %sub69.3 = fsub double %mul.3, %conv68.3, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.4 = fmul double %sub69.3, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.4 = fptosi double %mul.4 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.4 = sext i32 %conv62.4 to i64, !dbg !3929
  %arrayidx.i.119.4 = getelementptr i8, i8* %13, i64 %idxprom.i.118.4, !dbg !3929
  %19 = load i8, i8* %arrayidx.i.119.4, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.4 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 6, !dbg !3930
  store i8 %19, i8* %arrayidx65.4, align 2, !dbg !3931, !tbaa !1210
  %conv68.4 = sitofp i32 %conv62.4 to double, !dbg !3932
  %sub69.4 = fsub double %mul.4, %conv68.4, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.5 = fmul double %sub69.4, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.5 = fptosi double %mul.5 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.5 = sext i32 %conv62.5 to i64, !dbg !3929
  %arrayidx.i.119.5 = getelementptr i8, i8* %13, i64 %idxprom.i.118.5, !dbg !3929
  %20 = load i8, i8* %arrayidx.i.119.5, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.5 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 7, !dbg !3930
  store i8 %20, i8* %arrayidx65.5, align 1, !dbg !3931, !tbaa !1210
  %conv68.5 = sitofp i32 %conv62.5 to double, !dbg !3932
  %sub69.5 = fsub double %mul.5, %conv68.5, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.6 = fmul double %sub69.5, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.6 = fptosi double %mul.6 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.6 = sext i32 %conv62.6 to i64, !dbg !3929
  %arrayidx.i.119.6 = getelementptr i8, i8* %13, i64 %idxprom.i.118.6, !dbg !3929
  %21 = load i8, i8* %arrayidx.i.119.6, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.6 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 8, !dbg !3930
  store i8 %21, i8* %arrayidx65.6, align 8, !dbg !3931, !tbaa !1210
  %conv68.6 = sitofp i32 %conv62.6 to double, !dbg !3932
  %sub69.6 = fsub double %mul.6, %conv68.6, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.7 = fmul double %sub69.6, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.7 = fptosi double %mul.7 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.7 = sext i32 %conv62.7 to i64, !dbg !3929
  %arrayidx.i.119.7 = getelementptr i8, i8* %13, i64 %idxprom.i.118.7, !dbg !3929
  %22 = load i8, i8* %arrayidx.i.119.7, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.7 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 9, !dbg !3930
  store i8 %22, i8* %arrayidx65.7, align 1, !dbg !3931, !tbaa !1210
  %conv68.7 = sitofp i32 %conv62.7 to double, !dbg !3932
  %sub69.7 = fsub double %mul.7, %conv68.7, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.8 = fmul double %sub69.7, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.8 = fptosi double %mul.8 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.8 = sext i32 %conv62.8 to i64, !dbg !3929
  %arrayidx.i.119.8 = getelementptr i8, i8* %13, i64 %idxprom.i.118.8, !dbg !3929
  %23 = load i8, i8* %arrayidx.i.119.8, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.8 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 10, !dbg !3930
  store i8 %23, i8* %arrayidx65.8, align 2, !dbg !3931, !tbaa !1210
  %conv68.8 = sitofp i32 %conv62.8 to double, !dbg !3932
  %sub69.8 = fsub double %mul.8, %conv68.8, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.9 = fmul double %sub69.8, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.9 = fptosi double %mul.9 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.9 = sext i32 %conv62.9 to i64, !dbg !3929
  %arrayidx.i.119.9 = getelementptr i8, i8* %13, i64 %idxprom.i.118.9, !dbg !3929
  %24 = load i8, i8* %arrayidx.i.119.9, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.9 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 11, !dbg !3930
  store i8 %24, i8* %arrayidx65.9, align 1, !dbg !3931, !tbaa !1210
  %conv68.9 = sitofp i32 %conv62.9 to double, !dbg !3932
  %sub69.9 = fsub double %mul.9, %conv68.9, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.10 = fmul double %sub69.9, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.10 = fptosi double %mul.10 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.10 = sext i32 %conv62.10 to i64, !dbg !3929
  %25 = load i8*, i8** @Py_hexdigits, align 8, !dbg !3929, !tbaa !1046
  %arrayidx.i.119.10 = getelementptr i8, i8* %25, i64 %idxprom.i.118.10, !dbg !3929
  %26 = load i8, i8* %arrayidx.i.119.10, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.10 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 12, !dbg !3930
  store i8 %26, i8* %arrayidx65.10, align 4, !dbg !3931, !tbaa !1210
  %conv68.10 = sitofp i32 %conv62.10 to double, !dbg !3932
  %sub69.10 = fsub double %mul.10, %conv68.10, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.11 = fmul double %sub69.10, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.11 = fptosi double %mul.11 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.11 = sext i32 %conv62.11 to i64, !dbg !3929
  %arrayidx.i.119.11 = getelementptr i8, i8* %25, i64 %idxprom.i.118.11, !dbg !3929
  %27 = load i8, i8* %arrayidx.i.119.11, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.11 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 13, !dbg !3930
  store i8 %27, i8* %arrayidx65.11, align 1, !dbg !3931, !tbaa !1210
  %conv68.11 = sitofp i32 %conv62.11 to double, !dbg !3932
  %sub69.11 = fsub double %mul.11, %conv68.11, !dbg !3933
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %mul.12 = fmul double %sub69.11, 1.600000e+01, !dbg !3922
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !819, metadata !1036), !dbg !3903
  %conv62.12 = fptosi double %mul.12 to i32, !dbg !3926
  tail call void @llvm.dbg.value(metadata i32 %conv62, i64 0, metadata !833, metadata !1036), !dbg !3927
  %idxprom.i.118.12 = sext i32 %conv62.12 to i64, !dbg !3929
  %arrayidx.i.119.12 = getelementptr i8, i8* %25, i64 %idxprom.i.118.12, !dbg !3929
  %28 = load i8, i8* %arrayidx.i.119.12, align 1, !dbg !3929, !tbaa !1210
  %arrayidx65.12 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 14, !dbg !3930
  store i8 %28, i8* %arrayidx65.12, align 2, !dbg !3931, !tbaa !1210
  tail call void @llvm.dbg.value(metadata double %sub69, i64 0, metadata !819, metadata !1036), !dbg !3903
  %arrayidx72 = getelementptr [16 x i8], [16 x i8]* %s, i64 0, i64 15, !dbg !3934
  store i8 0, i8* %arrayidx72, align 1, !dbg !3935, !tbaa !1210
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !820, metadata !1036), !dbg !3901
  %29 = load i32, i32* %e, align 4, !dbg !3936, !tbaa !1061
  %cmp73 = icmp slt i32 %29, 0, !dbg !3938
  br i1 %cmp73, label %if.then.75, label %if.end.78, !dbg !3939

if.then.75:                                       ; preds = %if.end.41
  tail call void @llvm.dbg.value(metadata i32 45, i64 0, metadata !824, metadata !1036), !dbg !3940
  %sub76 = sub i32 0, %29, !dbg !3941
  tail call void @llvm.dbg.value(metadata i32 %sub76, i64 0, metadata !820, metadata !1036), !dbg !3901
  store i32 %sub76, i32* %e, align 4, !dbg !3943, !tbaa !1061
  br label %if.end.78, !dbg !3944

if.end.78:                                        ; preds = %if.end.41, %if.then.75
  %30 = phi i32 [ %sub76, %if.then.75 ], [ %29, %if.end.41 ], !dbg !3945
  %esign.0 = phi i32 [ 45, %if.then.75 ], [ 43, %if.end.41 ]
  tail call void @llvm.dbg.value(metadata double* undef, i64 0, metadata !818, metadata !1036), !dbg !3857
  %cmp79 = fcmp olt double %9, 0.000000e+00, !dbg !3947
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !820, metadata !1036), !dbg !3901
  br i1 %cmp79, label %if.then.81, label %if.else.83, !dbg !3948

if.then.81:                                       ; preds = %if.end.78
  %call82 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i8* %1, i32 %esign.0, i32 %30) #2, !dbg !3949
  br label %cleanup, !dbg !3950

if.else.83:                                       ; preds = %if.end.78
  %call85 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i64 0, i64 0), i8* %1, i32 %esign.0, i32 %30) #2, !dbg !3951
  br label %cleanup, !dbg !3952

cleanup:                                          ; preds = %land.lhs.true.i, %if.end.i, %if.then.i.115, %if.else.i, %if.else.83, %if.then.81, %if.else.39, %if.then.37
  %retval.0 = phi %struct._object* [ %call38, %if.then.37 ], [ %call40, %if.else.39 ], [ %call82, %if.then.81 ], [ %call85, %if.else.83 ], [ @_Py_NotImplementedStruct, %if.else.i ], [ %call3.i, %if.end.i ], [ %call1.i, %if.then.i.115 ], [ null, %land.lhs.true.i ]
  call void @llvm.lifetime.end(i64 16, i8* %1) #2, !dbg !3953
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !3953
  ret %struct._object* %retval.0, !dbg !3953
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_is_integer(%struct._object* %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !836, metadata !1036), !dbg !3954
  %call = tail call double @PyFloat_AsDouble(%struct._object* %v), !dbg !3955
  tail call void @llvm.dbg.value(metadata double %call, i64 0, metadata !837, metadata !1036), !dbg !3956
  %cmp = fcmp oeq double %call, -1.000000e+00, !dbg !3957
  br i1 %cmp, label %land.lhs.true, label %cond.true.4, !dbg !3959

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call %struct._object* @PyErr_Occurred() #2, !dbg !3960
  %tobool = icmp eq %struct._object* %call1, null, !dbg !3960
  br i1 %tobool, label %cond.true.4, label %cleanup, !dbg !3962

cond.true.4:                                      ; preds = %land.lhs.true, %entry
  %call5 = tail call i32 @__finite(double %call) #3, !dbg !3963
  %tobool6 = icmp eq i32 %call5, 0, !dbg !3963
  br i1 %tobool6, label %if.then.11, label %if.end.12, !dbg !3963

if.then.11:                                       ; preds = %cond.true.4
  %0 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3966, !tbaa !1074
  %inc = add i64 %0, 1, !dbg !3966
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3966, !tbaa !1074
  br label %cleanup, !dbg !3966

if.end.12:                                        ; preds = %cond.true.4
  %call13 = tail call i32* @__errno_location() #3, !dbg !3967
  store i32 0, i32* %call13, align 4, !dbg !3968, !tbaa !1061
  %call14 = tail call double @floor(double %call) #3, !dbg !3969
  %cmp15 = fcmp oeq double %call14, %call, !dbg !3970
  %cond = select i1 %cmp15, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !3971
  tail call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !838, metadata !1036), !dbg !3972
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %cond, i64 0, i32 0, !dbg !3973
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !3973, !tbaa !1074
  %inc29 = add i64 %1, 1, !dbg !3973
  store i64 %inc29, i64* %ob_refcnt, align 8, !dbg !3973, !tbaa !1074
  br label %cleanup, !dbg !3974

cleanup:                                          ; preds = %land.lhs.true, %if.end.12, %if.then.11
  %retval.0 = phi %struct._object* [ %cond, %if.end.12 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.then.11 ], [ null, %land.lhs.true ]
  ret %struct._object* %retval.0, !dbg !3975
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getnewargs(%struct.PyFloatObject* nocapture readonly %v) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %v, i64 0, metadata !841, metadata !1036), !dbg !3976
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %v, i64 0, i32 1, !dbg !3977
  %0 = load double, double* %ob_fval, align 8, !dbg !3977, !tbaa !1077
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), double %0) #2, !dbg !3978
  ret %struct._object* %call, !dbg !3979
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getformat(%struct._typeobject* nocapture readnone %v, %struct._object* %arg) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %v, i64 0, metadata !848, metadata !1036), !dbg !3980
  tail call void @llvm.dbg.value(metadata %struct._object* %arg, i64 0, metadata !849, metadata !1036), !dbg !3981
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %arg, i64 0, i32 1, !dbg !3982
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3982, !tbaa !1056
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 19, !dbg !3982
  %1 = load i64, i64* %tp_flags, align 8, !dbg !3982, !tbaa !1172
  %and = and i64 %1, 268435456, !dbg !3982
  %cmp = icmp eq i64 %and, 0, !dbg !3982
  br i1 %cmp, label %if.then, label %if.end, !dbg !3984

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3985, !tbaa !1046
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !3987
  %3 = load i8*, i8** %tp_name, align 8, !dbg !3987, !tbaa !1199
  %call = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i64 0, i64 0), i8* %3) #2, !dbg !3988
  br label %cleanup, !dbg !3989

if.end:                                           ; preds = %entry
  %call2 = tail call i8* @PyUnicode_AsUTF8(%struct._object* %arg) #2, !dbg !3990
  tail call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !850, metadata !1036), !dbg !3991
  %cmp3 = icmp eq i8* %call2, null, !dbg !3992
  br i1 %cmp3, label %cleanup, label %cond.false, !dbg !3994

cond.false:                                       ; preds = %if.end
  tail call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !856, metadata !1036), !dbg !3995
  %call44 = tail call i32 @strcmp(i8* %call2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)) #2, !dbg !3996
  %cmp45 = icmp eq i32 %call44, 0, !dbg !3999
  br i1 %cmp45, label %if.end.108, label %cond.false.99, !dbg !4000

cond.false.99:                                    ; preds = %cond.false
  tail call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !863, metadata !1036), !dbg !4001
  %call100 = tail call i32 @strcmp(i8* %call2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !4002
  %cmp103 = icmp eq i32 %call100, 0, !dbg !4005
  br i1 %cmp103, label %if.end.108, label %if.else.106, !dbg !4006

if.else.106:                                      ; preds = %cond.false.99
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4007, !tbaa !1046
  tail call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i64 0, i64 0)) #2, !dbg !4009
  br label %cleanup, !dbg !4010

if.end.108:                                       ; preds = %cond.false.99, %cond.false
  %r.0.in = phi i32* [ @double_format, %cond.false ], [ @float_format, %cond.false.99 ]
  %r.0 = load i32, i32* %r.0.in, align 4, !dbg !4011
  switch i32 %r.0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.110
    i32 1, label %sw.bb.112
  ], !dbg !4013

sw.bb:                                            ; preds = %if.end.108
  %call109 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #2, !dbg !4014
  br label %cleanup, !dbg !4016

sw.bb.110:                                        ; preds = %if.end.108
  %call111 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0)) #2, !dbg !4017
  br label %cleanup, !dbg !4018

sw.bb.112:                                        ; preds = %if.end.108
  %call113 = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #2, !dbg !4019
  br label %cleanup, !dbg !4020

sw.default:                                       ; preds = %if.end.108
  tail call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i64 0, i64 0)) #11, !dbg !4021
  unreachable, !dbg !4021

cleanup:                                          ; preds = %if.end, %sw.bb.112, %sw.bb.110, %sw.bb, %if.else.106, %if.then
  %retval.0 = phi %struct._object* [ %call113, %sw.bb.112 ], [ %call111, %sw.bb.110 ], [ %call109, %sw.bb ], [ null, %if.else.106 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !4022
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_setformat(%struct._typeobject* nocapture readnone %v, %struct._object* %args) #1 {
entry:
  %typestr = alloca i8*, align 8
  %format = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %v, i64 0, metadata !869, metadata !1036), !dbg !4023
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !870, metadata !1036), !dbg !4024
  %0 = bitcast i8** %typestr to i8*, !dbg !4025
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4025
  %1 = bitcast i8** %format to i8*, !dbg !4026
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !4026
  tail call void @llvm.dbg.value(metadata i8** %typestr, i64 0, metadata !871, metadata !1036), !dbg !4027
  tail call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !872, metadata !1036), !dbg !4028
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i8** nonnull %typestr, i8** nonnull %format) #2, !dbg !4029
  %tobool = icmp eq i32 %call, 0, !dbg !4029
  br i1 %tobool, label %cleanup, label %cond.false, !dbg !4031

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata i64 6, i64 0, metadata !880, metadata !1036), !dbg !4032
  call void @llvm.dbg.value(metadata i8** %typestr, i64 0, metadata !871, metadata !1036), !dbg !4027
  %2 = load i8*, i8** %typestr, align 8, !dbg !4033, !tbaa !1046
  %call38 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i64 0, i64 0)) #2, !dbg !4036
  %cmp39 = icmp eq i32 %call38, 0, !dbg !4039
  br i1 %cmp39, label %if.end.102, label %cond.false.93, !dbg !4040

cond.false.93:                                    ; preds = %cond.false
  call void @llvm.dbg.value(metadata i64 5, i64 0, metadata !887, metadata !1036), !dbg !4041
  call void @llvm.dbg.value(metadata i8** %typestr, i64 0, metadata !871, metadata !1036), !dbg !4027
  %call94 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #2, !dbg !4042
  %cmp97 = icmp eq i32 %call94, 0, !dbg !4045
  br i1 %cmp97, label %if.end.102, label %if.else.100, !dbg !4046

if.else.100:                                      ; preds = %cond.false.93
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4047, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.58, i64 0, i64 0)) #2, !dbg !4049
  br label %cleanup, !dbg !4050

if.end.102:                                       ; preds = %cond.false.93, %cond.false
  %p.0 = phi i32* [ @double_format, %cond.false ], [ @float_format, %cond.false.93 ]
  %detected.0.in = phi i32* [ @detected_double_format, %cond.false ], [ @detected_float_format, %cond.false.93 ]
  %detected.0 = load i32, i32* %detected.0.in, align 4, !dbg !4051
  call void @llvm.dbg.value(metadata i64 7, i64 0, metadata !894, metadata !1036), !dbg !4053
  call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !872, metadata !1036), !dbg !4028
  %4 = load i8*, i8** %format, align 8, !dbg !4054, !tbaa !1046
  %call155 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0)) #2, !dbg !4054
  %cmp158 = icmp eq i32 %call155, 0, !dbg !4057
  br i1 %cmp158, label %if.end.290, label %cond.false.213, !dbg !4058

cond.false.213:                                   ; preds = %if.end.102
  call void @llvm.dbg.value(metadata i64 19, i64 0, metadata !901, metadata !1036), !dbg !4059
  call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !872, metadata !1036), !dbg !4028
  %call214 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i64 0, i64 0)) #2, !dbg !4060
  %cmp217 = icmp eq i32 %call214, 0, !dbg !4063
  br i1 %cmp217, label %if.end.282, label %cond.false.272, !dbg !4064

cond.false.272:                                   ; preds = %cond.false.213
  call void @llvm.dbg.value(metadata i64 16, i64 0, metadata !908, metadata !1036), !dbg !4065
  call void @llvm.dbg.value(metadata i8** %format, i64 0, metadata !872, metadata !1036), !dbg !4028
  %call273 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0)) #2, !dbg !4066
  %cmp276 = icmp eq i32 %call273, 0, !dbg !4069
  br i1 %cmp276, label %if.end.282, label %if.else.279, !dbg !4070

if.else.279:                                      ; preds = %cond.false.272
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4071, !tbaa !1046
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.59, i64 0, i64 0)) #2, !dbg !4073
  br label %cleanup, !dbg !4074

if.end.282:                                       ; preds = %cond.false.272, %cond.false.213
  %f.0 = phi i32 [ 2, %cond.false.213 ], [ 1, %cond.false.272 ]
  %cmp286 = icmp eq i32 %f.0, %detected.0, !dbg !4075
  br i1 %cmp286, label %if.end.290, label %if.then.288, !dbg !4076

if.then.288:                                      ; preds = %if.end.282
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4077, !tbaa !1046
  call void @llvm.dbg.value(metadata i8** %typestr, i64 0, metadata !871, metadata !1036), !dbg !4027
  %call289 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.60, i64 0, i64 0), i8* %2) #2, !dbg !4078
  br label %cleanup, !dbg !4079

if.end.290:                                       ; preds = %if.end.102, %if.end.282
  %f.0382 = phi i32 [ %detected.0, %if.end.282 ], [ 0, %if.end.102 ]
  store i32 %f.0382, i32* %p.0, align 4, !dbg !4080, !tbaa !1210
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !4081, !tbaa !1074
  %inc = add i64 %7, 1, !dbg !4081
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !4081, !tbaa !1074
  br label %cleanup, !dbg !4081

cleanup:                                          ; preds = %entry, %if.end.290, %if.then.288, %if.else.279, %if.else.100
  %retval.0 = phi %struct._object* [ null, %if.then.288 ], [ @_Py_NoneStruct, %if.end.290 ], [ null, %if.else.279 ], [ null, %if.else.100 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !4082
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !4082
  ret %struct._object* %retval.0, !dbg !4082
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float__format__(%struct._object* %self, %struct._object* %args) #1 {
entry:
  %format_spec = alloca %struct._object*, align 8
  %writer = alloca %struct._PyUnicodeWriter, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !914, metadata !1036), !dbg !4083
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !915, metadata !1036), !dbg !4084
  %0 = bitcast %struct._object** %format_spec to i8*, !dbg !4085
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !4085
  %1 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !4086
  call void @llvm.lifetime.start(i64 56, i8* %1) #2, !dbg !4086
  tail call void @llvm.dbg.value(metadata %struct._object** %format_spec, i64 0, metadata !916, metadata !1036), !dbg !4087
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i64 0, i64 0), %struct._object** nonnull %format_spec) #2, !dbg !4088
  %tobool = icmp eq i32 %call, 0, !dbg !4088
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4090

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !917, metadata !1036), !dbg !4091
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !4092
  call void @llvm.dbg.value(metadata %struct._object** %format_spec, i64 0, metadata !916, metadata !1036), !dbg !4087
  %2 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !4093, !tbaa !1046
  %3 = getelementptr inbounds %struct._object, %struct._object* %2, i64 1, i32 0, !dbg !4094
  %4 = load i64, i64* %3, align 8, !dbg !4094, !tbaa !4095
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !917, metadata !1036), !dbg !4091
  %call1 = call i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter* nonnull %writer, %struct._object* %self, %struct._object* %2, i64 0, i64 %4) #2, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !932, metadata !1036), !dbg !4099
  %cmp = icmp eq i32 %call1, -1, !dbg !4100
  call void @llvm.dbg.value(metadata %struct._PyUnicodeWriter* %writer, i64 0, metadata !917, metadata !1036), !dbg !4091
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !4102

if.then.2:                                        ; preds = %if.end
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !4103
  br label %cleanup, !dbg !4105

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* nonnull %writer) #2, !dbg !4106
  br label %cleanup, !dbg !4107

cleanup:                                          ; preds = %entry, %if.end.3, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ %call4, %if.end.3 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 56, i8* %1) #2, !dbg !4108
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !4108
  ret %struct._object* %retval.0, !dbg !4108
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #4

; Function Attrs: nounwind readnone
declare double @round(double) #7

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #4

declare zeroext i16 @_Py_get_387controlword() #4

declare void @_Py_set_387controlword(i16 zeroext) #4

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #4

declare i8* @PyMem_Malloc(i64) #4

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #4

declare double @_Py_dg_strtod(i8*, i8**) #4

declare void @_Py_dg_freedtoa(i8*) #4

declare %struct._object* @PyTuple_Pack(i64, ...) #4

declare double @_Py_parse_inf_or_nan(i8*, i8**) #4

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #6

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #4

declare %struct._object* @PyUnicode_FromString(i8*) #4

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #4

declare i8* @PyUnicode_AsUTF8(%struct._object*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #5

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #9

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #4

declare i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #4

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #4

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getzero(%struct._object* nocapture readnone %v, i8* nocapture readnone %closure) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !935, metadata !1036), !dbg !4109
  tail call void @llvm.dbg.value(metadata i8* %closure, i64 0, metadata !936, metadata !1036), !dbg !4110
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !420, metadata !1036) #2, !dbg !4111
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !4113, !tbaa !1046
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %0, i64 0, metadata !421, metadata !1036) #2, !dbg !4114
  %cmp.i = icmp eq %struct.PyFloatObject* %0, null, !dbg !4115
  br i1 %cmp.i, label %if.else.i, label %if.then.i, !dbg !4116

if.then.i:                                        ; preds = %entry
  %ob_type.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i64 0, i32 0, i32 1, !dbg !4117
  %1 = bitcast %struct._typeobject** %ob_type.i to i64*, !dbg !4117
  %2 = load i64, i64* %1, align 8, !dbg !4117, !tbaa !1056
  store i64 %2, i64* bitcast (%struct.PyFloatObject** @free_list to i64*), align 8, !dbg !4118, !tbaa !1046
  %3 = load i32, i32* @numfree, align 4, !dbg !4119, !tbaa !1061
  %dec.i = add i32 %3, -1, !dbg !4119
  store i32 %dec.i, i32* @numfree, align 4, !dbg !4119, !tbaa !1061
  br label %if.end.3.i, !dbg !4120

if.else.i:                                        ; preds = %entry
  %call.i = tail call i8* @PyObject_Malloc(i64 24) #2, !dbg !4121
  %4 = bitcast i8* %call.i to %struct.PyFloatObject*, !dbg !4122
  tail call void @llvm.dbg.value(metadata %struct.PyFloatObject* %4, i64 0, metadata !421, metadata !1036) #2, !dbg !4114
  %tobool.i = icmp eq i8* %call.i, null, !dbg !4123
  br i1 %tobool.i, label %if.then.1.i, label %if.end.3.i, !dbg !4124

if.then.1.i:                                      ; preds = %if.else.i
  %call2.i = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !4125
  br label %PyFloat_FromDouble.exit, !dbg !4126

if.end.3.i:                                       ; preds = %if.else.i, %if.then.i
  %op.0.i = phi %struct.PyFloatObject* [ %0, %if.then.i ], [ %4, %if.else.i ], !dbg !4127
  %5 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, !dbg !4128
  %ob_type4.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 1, !dbg !4128
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4.i, align 8, !dbg !4128, !tbaa !1056
  %ob_refcnt.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 0, i32 0, !dbg !4128
  store i64 1, i64* %ob_refcnt.i, align 8, !dbg !4128, !tbaa !1074
  %ob_fval.i = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %op.0.i, i64 0, i32 1, !dbg !4129
  store double 0.000000e+00, double* %ob_fval.i, align 8, !dbg !4130, !tbaa !1077
  br label %PyFloat_FromDouble.exit, !dbg !4131

PyFloat_FromDouble.exit:                          ; preds = %if.then.1.i, %if.end.3.i
  %retval.0.i = phi %struct._object* [ %5, %if.end.3.i ], [ %call2.i, %if.then.1.i ], !dbg !4127
  ret %struct._object* %retval.0.i, !dbg !4132
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #4

declare %struct._object* @PyNumber_Float(%struct._object*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind readonly }
attributes #11 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1031, !1032}
!llvm.ident = !{!1033}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !15, subprograms: !396, globals: !958)
!1 = !DIFile(filename: "Objects/floatobject.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !8}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 1567, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7}
!5 = !DIEnumerator(name: "unknown_format", value: 0)
!6 = !DIEnumerator(name: "ieee_big_endian_format", value: 1)
!7 = !DIEnumerator(name: "ieee_little_endian_format", value: 2)
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !9, line: 451, size: 32, align: 32, elements: !10)
!9 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!10 = !{!11, !12, !13, !14}
!11 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!12 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!13 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!14 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!15 = !{!16, !17, !55, !363, !371, !372, !358, !47, !373, !69, !370, !40, !38, !111, !61, !374, !376, !45, !378}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !19, line: 33, baseType: !20)
!19 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 25, size: 256, align: 64, elements: !21)
!21 = !{!22, !361}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !19, line: 26, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !24, line: 114, baseType: !25)
!24 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 111, size: 192, align: 64, elements: !26)
!26 = !{!27, !360}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !24, line: 112, baseType: !28, size: 128, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !24, line: 109, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !24, line: 105, size: 128, align: 64, elements: !30)
!30 = !{!31, !39}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !29, file: !24, line: 107, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !33, line: 177, baseType: !34)
!33 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !35, line: 102, baseType: !36)
!35 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !37, line: 181, baseType: !38)
!37 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!38 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !29, file: !24, line: 108, baseType: !40, size: 64, align: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !24, line: 334, size: 3200, align: 64, elements: !42)
!42 = !{!43, !44, !48, !49, !50, !56, !119, !124, !129, !130, !135, !187, !218, !230, !236, !237, !238, !240, !242, !273, !274, !275, !284, !285, !290, !291, !293, !295, !305, !308, !326, !327, !328, !330, !332, !333, !335, !340, !345, !350, !351, !352, !353, !354, !355, !356, !357, !359}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !41, file: !24, line: 335, baseType: !23, size: 192, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !41, file: !24, line: 336, baseType: !45, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !41, file: !24, line: 337, baseType: !32, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !41, file: !24, line: 337, baseType: !32, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !41, file: !24, line: 341, baseType: !51, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !24, line: 308, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !41, file: !24, line: 342, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !24, line: 314, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !55, !62, !61}
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 48, baseType: !64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !65, line: 246, size: 1728, align: 64, elements: !66)
!65 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!66 = !{!67, !68, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !88, !89, !90, !91, !93, !95, !97, !101, !104, !106, !107, !108, !109, !110, !114, !115}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !64, file: !65, line: 247, baseType: !61, size: 32, align: 32)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !64, file: !65, line: 252, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !64, file: !65, line: 253, baseType: !69, size: 64, align: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !64, file: !65, line: 254, baseType: !69, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !64, file: !65, line: 255, baseType: !69, size: 64, align: 64, offset: 256)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !64, file: !65, line: 256, baseType: !69, size: 64, align: 64, offset: 320)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !64, file: !65, line: 257, baseType: !69, size: 64, align: 64, offset: 384)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !64, file: !65, line: 258, baseType: !69, size: 64, align: 64, offset: 448)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !64, file: !65, line: 259, baseType: !69, size: 64, align: 64, offset: 512)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !64, file: !65, line: 261, baseType: !69, size: 64, align: 64, offset: 576)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !64, file: !65, line: 262, baseType: !69, size: 64, align: 64, offset: 640)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !64, file: !65, line: 263, baseType: !69, size: 64, align: 64, offset: 704)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !64, file: !65, line: 265, baseType: !81, size: 64, align: 64, offset: 768)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !65, line: 161, size: 192, align: 64, elements: !83)
!83 = !{!84, !85, !87}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !82, file: !65, line: 162, baseType: !81, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !82, file: !65, line: 163, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !82, file: !65, line: 167, baseType: !61, size: 32, align: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !64, file: !65, line: 267, baseType: !86, size: 64, align: 64, offset: 832)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !64, file: !65, line: 269, baseType: !61, size: 32, align: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !64, file: !65, line: 273, baseType: !61, size: 32, align: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !64, file: !65, line: 275, baseType: !92, size: 64, align: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !37, line: 140, baseType: !38)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !64, file: !65, line: 279, baseType: !94, size: 16, align: 16, offset: 1024)
!94 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !64, file: !65, line: 280, baseType: !96, size: 8, align: 8, offset: 1040)
!96 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !64, file: !65, line: 281, baseType: !98, size: 8, align: 8, offset: 1048)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 1)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !64, file: !65, line: 285, baseType: !102, size: 64, align: 64, offset: 1088)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !65, line: 155, baseType: null)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !64, file: !65, line: 294, baseType: !105, size: 64, align: 64, offset: 1152)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !37, line: 141, baseType: !38)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !64, file: !65, line: 303, baseType: !16, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !64, file: !65, line: 304, baseType: !16, size: 64, align: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !64, file: !65, line: 305, baseType: !16, size: 64, align: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !64, file: !65, line: 306, baseType: !16, size: 64, align: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !64, file: !65, line: 307, baseType: !111, size: 64, align: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!113 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !64, file: !65, line: 309, baseType: !61, size: 32, align: 32, offset: 1536)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !64, file: !65, line: 311, baseType: !116, size: 160, align: 8, offset: 1568)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 160, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 20)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !41, file: !24, line: 343, baseType: !120, size: 64, align: 64, offset: 512)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !24, line: 316, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!55, !55, !69}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !41, file: !24, line: 344, baseType: !125, size: 64, align: 64, offset: 576)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !24, line: 318, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!61, !55, !69, !55}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !41, file: !24, line: 345, baseType: !16, size: 64, align: 64, offset: 640)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !41, file: !24, line: 346, baseType: !131, size: 64, align: 64, offset: 704)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !24, line: 320, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!55, !55}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !41, file: !24, line: 350, baseType: !136, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !24, line: 278, baseType: !138)
!138 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 236, size: 2176, align: 64, elements: !139)
!139 = !{!140, !145, !146, !147, !148, !149, !154, !156, !157, !158, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !138, file: !24, line: 241, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !24, line: 166, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!55, !55, !55}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !138, file: !24, line: 242, baseType: !141, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !138, file: !24, line: 243, baseType: !141, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !138, file: !24, line: 244, baseType: !141, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !138, file: !24, line: 245, baseType: !141, size: 64, align: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !138, file: !24, line: 246, baseType: !150, size: 64, align: 64, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !24, line: 167, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!55, !55, !55, !55}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !138, file: !24, line: 247, baseType: !155, size: 64, align: 64, offset: 384)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !24, line: 165, baseType: !132)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !138, file: !24, line: 248, baseType: !155, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !138, file: !24, line: 249, baseType: !155, size: 64, align: 64, offset: 512)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !138, file: !24, line: 250, baseType: !159, size: 64, align: 64, offset: 576)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !24, line: 168, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!61, !55}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !138, file: !24, line: 251, baseType: !155, size: 64, align: 64, offset: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !138, file: !24, line: 252, baseType: !141, size: 64, align: 64, offset: 704)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !138, file: !24, line: 253, baseType: !141, size: 64, align: 64, offset: 768)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !138, file: !24, line: 254, baseType: !141, size: 64, align: 64, offset: 832)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !138, file: !24, line: 255, baseType: !141, size: 64, align: 64, offset: 896)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !138, file: !24, line: 256, baseType: !141, size: 64, align: 64, offset: 960)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !138, file: !24, line: 257, baseType: !155, size: 64, align: 64, offset: 1024)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !138, file: !24, line: 258, baseType: !16, size: 64, align: 64, offset: 1088)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !138, file: !24, line: 259, baseType: !155, size: 64, align: 64, offset: 1152)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !138, file: !24, line: 261, baseType: !141, size: 64, align: 64, offset: 1216)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !138, file: !24, line: 262, baseType: !141, size: 64, align: 64, offset: 1280)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !138, file: !24, line: 263, baseType: !141, size: 64, align: 64, offset: 1344)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !138, file: !24, line: 264, baseType: !141, size: 64, align: 64, offset: 1408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !138, file: !24, line: 265, baseType: !150, size: 64, align: 64, offset: 1472)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !138, file: !24, line: 266, baseType: !141, size: 64, align: 64, offset: 1536)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !138, file: !24, line: 267, baseType: !141, size: 64, align: 64, offset: 1600)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !138, file: !24, line: 268, baseType: !141, size: 64, align: 64, offset: 1664)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !138, file: !24, line: 269, baseType: !141, size: 64, align: 64, offset: 1728)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !138, file: !24, line: 270, baseType: !141, size: 64, align: 64, offset: 1792)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !138, file: !24, line: 272, baseType: !141, size: 64, align: 64, offset: 1856)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !138, file: !24, line: 273, baseType: !141, size: 64, align: 64, offset: 1920)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !138, file: !24, line: 274, baseType: !141, size: 64, align: 64, offset: 1984)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !138, file: !24, line: 275, baseType: !141, size: 64, align: 64, offset: 2048)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !138, file: !24, line: 277, baseType: !155, size: 64, align: 64, offset: 2112)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !41, file: !24, line: 351, baseType: !188, size: 64, align: 64, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !24, line: 292, baseType: !190)
!190 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 280, size: 640, align: 64, elements: !191)
!191 = !{!192, !197, !198, !203, !204, !205, !210, !211, !216, !217}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !190, file: !24, line: 281, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !24, line: 169, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!32, !55}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !190, file: !24, line: 282, baseType: !141, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !190, file: !24, line: 283, baseType: !199, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !24, line: 170, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!55, !55, !32}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !190, file: !24, line: 284, baseType: !199, size: 64, align: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !190, file: !24, line: 285, baseType: !16, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !190, file: !24, line: 286, baseType: !206, size: 64, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !24, line: 172, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!61, !55, !32, !55}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !190, file: !24, line: 287, baseType: !16, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !190, file: !24, line: 288, baseType: !212, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !24, line: 231, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!61, !55, !55}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !190, file: !24, line: 290, baseType: !141, size: 64, align: 64, offset: 512)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !190, file: !24, line: 291, baseType: !199, size: 64, align: 64, offset: 576)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !41, file: !24, line: 352, baseType: !219, size: 64, align: 64, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !24, line: 298, baseType: !221)
!221 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 294, size: 192, align: 64, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !221, file: !24, line: 295, baseType: !193, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !221, file: !24, line: 296, baseType: !141, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !221, file: !24, line: 297, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !24, line: 174, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!61, !55, !55, !55}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !41, file: !24, line: 356, baseType: !231, size: 64, align: 64, offset: 960)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !24, line: 321, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !55}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !33, line: 186, baseType: !32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !41, file: !24, line: 357, baseType: !150, size: 64, align: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !41, file: !24, line: 358, baseType: !131, size: 64, align: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !41, file: !24, line: 359, baseType: !239, size: 64, align: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !24, line: 317, baseType: !142)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !41, file: !24, line: 360, baseType: !241, size: 64, align: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !24, line: 319, baseType: !227)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !41, file: !24, line: 363, baseType: !243, size: 64, align: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !24, line: 304, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 301, size: 128, align: 64, elements: !246)
!246 = !{!247, !268}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !245, file: !24, line: 302, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !24, line: 193, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!61, !55, !252, !61}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !24, line: 191, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !24, line: 178, size: 640, align: 64, elements: !255)
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !265, !266, !267}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !254, file: !24, line: 179, baseType: !16, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !254, file: !24, line: 180, baseType: !55, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !24, line: 181, baseType: !32, size: 64, align: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !254, file: !24, line: 182, baseType: !32, size: 64, align: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !254, file: !24, line: 184, baseType: !61, size: 32, align: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !254, file: !24, line: 185, baseType: !61, size: 32, align: 32, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !254, file: !24, line: 186, baseType: !69, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !254, file: !24, line: 187, baseType: !264, size: 64, align: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !254, file: !24, line: 188, baseType: !264, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !254, file: !24, line: 189, baseType: !264, size: 64, align: 64, offset: 512)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !254, file: !24, line: 190, baseType: !16, size: 64, align: 64, offset: 576)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !245, file: !24, line: 303, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !24, line: 194, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !55, !252}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !41, file: !24, line: 366, baseType: !113, size: 64, align: 64, offset: 1344)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !41, file: !24, line: 368, baseType: !45, size: 64, align: 64, offset: 1408)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !41, file: !24, line: 372, baseType: !276, size: 64, align: 64, offset: 1472)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !24, line: 233, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!61, !55, !280, !16}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !24, line: 232, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!61, !55, !16}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !41, file: !24, line: 375, baseType: !159, size: 64, align: 64, offset: 1536)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !41, file: !24, line: 379, baseType: !286, size: 64, align: 64, offset: 1600)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !24, line: 322, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!55, !55, !55, !61}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !41, file: !24, line: 382, baseType: !32, size: 64, align: 64, offset: 1664)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !41, file: !24, line: 385, baseType: !292, size: 64, align: 64, offset: 1728)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !24, line: 323, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !41, file: !24, line: 386, baseType: !294, size: 64, align: 64, offset: 1792)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !24, line: 324, baseType: !132)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !41, file: !24, line: 389, baseType: !296, size: 64, align: 64, offset: 1856)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !298, line: 40, size: 256, align: 64, elements: !299)
!298 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!299 = !{!300, !301, !303, !304}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !297, file: !298, line: 41, baseType: !45, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !297, file: !298, line: 42, baseType: !302, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !298, line: 18, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !297, file: !298, line: 43, baseType: !61, size: 32, align: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !297, file: !298, line: 45, baseType: !45, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !41, file: !24, line: 390, baseType: !306, size: 64, align: 64, offset: 1920)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !24, line: 390, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !41, file: !24, line: 391, baseType: !309, size: 64, align: 64, offset: 1984)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !311, line: 11, size: 320, align: 64, elements: !312)
!311 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!312 = !{!313, !314, !319, !324, !325}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !310, file: !311, line: 12, baseType: !69, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !310, file: !311, line: 13, baseType: !315, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !311, line: 8, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!55, !55, !16}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !310, file: !311, line: 14, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !311, line: 9, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!61, !55, !55, !16}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !310, file: !311, line: 15, baseType: !69, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !310, file: !311, line: 16, baseType: !16, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !41, file: !24, line: 392, baseType: !40, size: 64, align: 64, offset: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !41, file: !24, line: 393, baseType: !55, size: 64, align: 64, offset: 2112)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !41, file: !24, line: 394, baseType: !329, size: 64, align: 64, offset: 2176)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !24, line: 325, baseType: !151)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !41, file: !24, line: 395, baseType: !331, size: 64, align: 64, offset: 2240)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !24, line: 326, baseType: !227)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !41, file: !24, line: 396, baseType: !32, size: 64, align: 64, offset: 2304)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !41, file: !24, line: 397, baseType: !334, size: 64, align: 64, offset: 2368)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !24, line: 327, baseType: !227)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !41, file: !24, line: 398, baseType: !336, size: 64, align: 64, offset: 2432)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !24, line: 329, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!55, !40, !32}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !41, file: !24, line: 399, baseType: !341, size: 64, align: 64, offset: 2496)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !24, line: 328, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!55, !40, !55, !55}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !41, file: !24, line: 400, baseType: !346, size: 64, align: 64, offset: 2560)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !24, line: 307, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !16}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !41, file: !24, line: 401, baseType: !159, size: 64, align: 64, offset: 2624)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !41, file: !24, line: 402, baseType: !55, size: 64, align: 64, offset: 2688)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !41, file: !24, line: 403, baseType: !55, size: 64, align: 64, offset: 2752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !41, file: !24, line: 404, baseType: !55, size: 64, align: 64, offset: 2816)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !41, file: !24, line: 405, baseType: !55, size: 64, align: 64, offset: 2880)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !41, file: !24, line: 406, baseType: !55, size: 64, align: 64, offset: 2944)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !41, file: !24, line: 407, baseType: !51, size: 64, align: 64, offset: 3008)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !41, file: !24, line: 410, baseType: !358, size: 32, align: 32, offset: 3072)
!358 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !41, file: !24, line: 412, baseType: !51, size: 64, align: 64, offset: 3136)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !25, file: !24, line: 113, baseType: !32, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !20, file: !19, line: 27, baseType: !362, size: 64, align: 64, offset: 192)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 64, align: 64, elements: !99)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFloatObject", file: !365, line: 18, baseType: !366)
!365 = !DIFile(filename: "Include/floatobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !365, line: 15, size: 192, align: 64, elements: !367)
!367 = !{!368, !369}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !365, line: 16, baseType: !28, size: 128, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_fval", scope: !366, file: !365, line: 17, baseType: !370, size: 64, align: 64, offset: 128)
!370 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!371 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!373 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !9, line: 351, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 217, size: 384, align: 64, elements: !381)
!381 = !{!382, !383, !384, !385, !393}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !380, file: !9, line: 291, baseType: !28, size: 128, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !380, file: !9, line: 292, baseType: !32, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !380, file: !9, line: 293, baseType: !235, size: 64, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !9, line: 349, baseType: !386, size: 32, align: 32, offset: 256)
!386 = !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !9, line: 294, size: 32, align: 32, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !386, file: !9, line: 303, baseType: !358, size: 2, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !386, file: !9, line: 331, baseType: !358, size: 3, align: 32, offset: 2)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !386, file: !9, line: 336, baseType: !358, size: 1, align: 32, offset: 5)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !386, file: !9, line: 340, baseType: !358, size: 1, align: 32, offset: 6)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !386, file: !9, line: 345, baseType: !358, size: 1, align: 32, offset: 7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !380, file: !9, line: 350, baseType: !394, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 90, baseType: !61)
!396 = !{!397, !401, !402, !416, !422, !443, !453, !461, !466, !469, !474, !494, !511, !534, !556, !561, !568, !574, !583, !589, !595, !602, !611, !626, !629, !632, !635, !640, !649, !657, !663, !668, !715, !723, !744, !782, !809, !815, !829, !834, !839, !842, !867, !912, !933, !937, !945}
!397 = !DISubprogram(name: "PyFloat_GetMax", scope: !1, file: !1, line: 25, type: !398, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @PyFloat_GetMax, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{!370}
!400 = !{}
!401 = !DISubprogram(name: "PyFloat_GetMin", scope: !1, file: !1, line: 31, type: !398, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @PyFloat_GetMin, variables: !400)
!402 = !DISubprogram(name: "PyFloat_GetInfo", scope: !1, file: !1, line: 73, type: !403, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyFloat_GetInfo, variables: !405)
!403 = !DISubroutineType(types: !404)
!404 = !{!55}
!405 = !{!406, !407, !408, !412}
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "floatinfo", scope: !402, file: !1, line: 75, type: !55)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !402, file: !1, line: 76, type: !61)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !409, file: !1, line: 103, type: !55)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 103, column: 9)
!410 = distinct !DILexicalBlock(scope: !411, file: !1, line: 102, column: 27)
!411 = distinct !DILexicalBlock(scope: !402, file: !1, line: 102, column: 9)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !413, file: !1, line: 103, type: !55)
!413 = distinct !DILexicalBlock(scope: !414, file: !1, line: 103, column: 9)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 103, column: 9)
!415 = distinct !DILexicalBlock(scope: !409, file: !1, line: 103, column: 9)
!416 = !DISubprogram(name: "PyFloat_FromDouble", scope: !1, file: !1, line: 110, type: !417, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double)* @PyFloat_FromDouble, variables: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!55, !370}
!419 = !{!420, !421}
!420 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fval", arg: 1, scope: !416, file: !1, line: 110, type: !370)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !416, file: !1, line: 112, type: !363)
!422 = !DISubprogram(name: "PyFloat_FromString", scope: !1, file: !1, line: 128, type: !133, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFloat_FromString, variables: !423)
!423 = !{!424, !425, !426, !427, !428, !429, !430, !431, !432, !438, !440}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !422, file: !1, line: 128, type: !55)
!425 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !422, file: !1, line: 130, type: !45)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !422, file: !1, line: 130, type: !45)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !422, file: !1, line: 130, type: !45)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !422, file: !1, line: 131, type: !370)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_buffer", scope: !422, file: !1, line: 132, type: !55)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !422, file: !1, line: 133, type: !32)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !422, file: !1, line: 134, type: !55)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !1, line: 142, type: !55)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 142, column: 13)
!434 = distinct !DILexicalBlock(scope: !435, file: !1, line: 141, column: 24)
!435 = distinct !DILexicalBlock(scope: !436, file: !1, line: 141, column: 13)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 136, column: 29)
!437 = distinct !DILexicalBlock(scope: !422, file: !1, line: 136, column: 9)
!438 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !439, file: !1, line: 173, type: !55)
!439 = distinct !DILexicalBlock(scope: !422, file: !1, line: 173, column: 5)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 173, type: !55)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 173, column: 5)
!442 = distinct !DILexicalBlock(scope: !439, file: !1, line: 173, column: 5)
!443 = !DISubprogram(name: "PyFloat_AsDouble", scope: !1, file: !1, line: 194, type: !444, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyFloat_AsDouble, variables: !446)
!444 = !DISubroutineType(types: !445)
!445 = !{!370, !55}
!446 = !{!447, !448, !449, !450, !451}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !443, file: !1, line: 194, type: !55)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nb", scope: !443, file: !1, line: 196, type: !136)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fo", scope: !443, file: !1, line: 197, type: !363)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !443, file: !1, line: 198, type: !370)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !452, file: !1, line: 223, type: !55)
!452 = distinct !DILexicalBlock(scope: !443, file: !1, line: 223, column: 5)
!453 = !DISubprogram(name: "_PyFloat_Init", scope: !1, file: !1, line: 1858, type: !454, isLocal: false, isDefinition: true, scopeLine: 1859, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyFloat_Init, variables: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{!61}
!456 = !{!457, !459}
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !458, file: !1, line: 1877, type: !370)
!458 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1876, column: 5)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !460, file: !1, line: 1891, type: !373)
!460 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1890, column: 5)
!461 = !DISubprogram(name: "PyFloat_ClearFreeList", scope: !1, file: !1, line: 1915, type: !454, isLocal: false, isDefinition: true, scopeLine: 1916, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyFloat_ClearFreeList, variables: !462)
!462 = !{!463, !464, !465}
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !461, file: !1, line: 1917, type: !363)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !461, file: !1, line: 1917, type: !363)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !461, file: !1, line: 1918, type: !61)
!466 = !DISubprogram(name: "PyFloat_Fini", scope: !1, file: !1, line: 1930, type: !467, isLocal: false, isDefinition: true, scopeLine: 1931, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyFloat_Fini, variables: !400)
!467 = !DISubroutineType(types: !468)
!468 = !{null}
!469 = !DISubprogram(name: "_PyFloat_DebugMallocStats", scope: !1, file: !1, line: 1937, type: !470, isLocal: false, isDefinition: true, scopeLine: 1938, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyFloat_DebugMallocStats, variables: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !62}
!472 = !{!473}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !469, file: !1, line: 1937, type: !62)
!474 = !DISubprogram(name: "_PyFloat_Pack4", scope: !1, file: !1, line: 1949, type: !475, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i8*, i32)* @_PyFloat_Pack4, variables: !478)
!475 = !DISubroutineType(types: !476)
!476 = !{!61, !370, !477, !61}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!478 = !{!479, !480, !481, !482, !485, !486, !487, !488, !489, !491, !492, !493}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !474, file: !1, line: 1949, type: !370)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !474, file: !1, line: 1949, type: !477)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 3, scope: !474, file: !1, line: 1949, type: !61)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !483, file: !1, line: 1952, type: !371)
!483 = distinct !DILexicalBlock(scope: !484, file: !1, line: 1951, column: 41)
!484 = distinct !DILexicalBlock(scope: !474, file: !1, line: 1951, column: 9)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !483, file: !1, line: 1953, type: !61)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !483, file: !1, line: 1954, type: !370)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fbits", scope: !483, file: !1, line: 1955, type: !358)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !483, file: !1, line: 1956, type: !61)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !490, file: !1, line: 2028, type: !373)
!490 = distinct !DILexicalBlock(scope: !484, file: !1, line: 2027, column: 10)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !490, file: !1, line: 2029, type: !45)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !490, file: !1, line: 2030, type: !61)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !490, file: !1, line: 2030, type: !61)
!494 = !DISubprogram(name: "_PyFloat_Pack8", scope: !1, file: !1, line: 2054, type: !475, isLocal: false, isDefinition: true, scopeLine: 2055, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i8*, i32)* @_PyFloat_Pack8, variables: !495)
!495 = !{!496, !497, !498, !499, !502, !503, !504, !505, !506, !507, !509, !510}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !494, file: !1, line: 2054, type: !370)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !494, file: !1, line: 2054, type: !477)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 3, scope: !494, file: !1, line: 2054, type: !61)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !500, file: !1, line: 2057, type: !371)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 2056, column: 42)
!501 = distinct !DILexicalBlock(scope: !494, file: !1, line: 2056, column: 9)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !500, file: !1, line: 2058, type: !61)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !500, file: !1, line: 2059, type: !370)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fhi", scope: !500, file: !1, line: 2060, type: !358)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flo", scope: !500, file: !1, line: 2060, type: !358)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !500, file: !1, line: 2061, type: !61)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !508, file: !1, line: 2165, type: !45)
!508 = distinct !DILexicalBlock(scope: !501, file: !1, line: 2164, column: 10)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !508, file: !1, line: 2166, type: !61)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !508, file: !1, line: 2166, type: !61)
!511 = !DISubprogram(name: "_PyFloat_Unpack4", scope: !1, file: !1, line: 2183, type: !512, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i32)* @_PyFloat_Unpack4, variables: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!370, !376, !61}
!514 = !{!515, !516, !517, !520, !521, !522, !523, !524, !526, !532, !533}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !511, file: !1, line: 2183, type: !376)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !511, file: !1, line: 2183, type: !61)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !518, file: !1, line: 2186, type: !371)
!518 = distinct !DILexicalBlock(scope: !519, file: !1, line: 2185, column: 41)
!519 = distinct !DILexicalBlock(scope: !511, file: !1, line: 2185, column: 9)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !518, file: !1, line: 2187, type: !61)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !518, file: !1, line: 2188, type: !358)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !518, file: !1, line: 2189, type: !370)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !518, file: !1, line: 2190, type: !61)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !525, file: !1, line: 2239, type: !373)
!525 = distinct !DILexicalBlock(scope: !519, file: !1, line: 2238, column: 10)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !527, file: !1, line: 2243, type: !529)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 2242, column: 64)
!528 = distinct !DILexicalBlock(scope: !525, file: !1, line: 2241, column: 13)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 32, align: 8, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 4)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !527, file: !1, line: 2244, type: !69)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !527, file: !1, line: 2245, type: !61)
!534 = !DISubprogram(name: "_PyFloat_Unpack8", scope: !1, file: !1, line: 2261, type: !512, isLocal: false, isDefinition: true, scopeLine: 2262, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i32)* @_PyFloat_Unpack8, variables: !535)
!535 = !{!536, !537, !538, !541, !542, !543, !544, !545, !546, !548, !554, !555}
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !534, file: !1, line: 2261, type: !376)
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !534, file: !1, line: 2261, type: !61)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !539, file: !1, line: 2264, type: !371)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 2263, column: 42)
!540 = distinct !DILexicalBlock(scope: !534, file: !1, line: 2263, column: 9)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !539, file: !1, line: 2265, type: !61)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fhi", scope: !539, file: !1, line: 2266, type: !358)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flo", scope: !539, file: !1, line: 2266, type: !358)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !539, file: !1, line: 2267, type: !370)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !539, file: !1, line: 2268, type: !61)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !547, file: !1, line: 2334, type: !370)
!547 = distinct !DILexicalBlock(scope: !540, file: !1, line: 2333, column: 10)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !549, file: !1, line: 2338, type: !551)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 2337, column: 65)
!550 = distinct !DILexicalBlock(scope: !547, file: !1, line: 2336, column: 13)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 64, align: 8, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 8)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !549, file: !1, line: 2339, type: !69)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !549, file: !1, line: 2340, type: !61)
!556 = !DISubprogram(name: "float_dealloc", scope: !1, file: !1, line: 178, type: !557, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyFloatObject*)* @float_dealloc, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !363}
!559 = !{!560}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !556, file: !1, line: 178, type: !363)
!561 = !DISubprogram(name: "float_repr", scope: !1, file: !1, line: 263, type: !562, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_repr, variables: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!55, !363}
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !561, file: !1, line: 263, type: !363)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !561, file: !1, line: 265, type: !55)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !561, file: !1, line: 266, type: !69)
!568 = !DISubprogram(name: "float_add", scope: !1, file: !1, line: 488, type: !143, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_add, variables: !569)
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !568, file: !1, line: 488, type: !55)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !568, file: !1, line: 488, type: !55)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !568, file: !1, line: 490, type: !370)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !568, file: !1, line: 490, type: !370)
!574 = !DISubprogram(name: "convert_to_double", scope: !1, file: !1, line: 243, type: !575, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, variables: !579)
!575 = !DISubroutineType(types: !576)
!576 = !{!61, !577, !578}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!579 = !{!580, !581, !582}
!580 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !574, file: !1, line: 243, type: !577)
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dbl", arg: 2, scope: !574, file: !1, line: 243, type: !578)
!582 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !574, file: !1, line: 245, type: !55)
!583 = !DISubprogram(name: "float_sub", scope: !1, file: !1, line: 500, type: !143, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_sub, variables: !584)
!584 = !{!585, !586, !587, !588}
!585 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !583, file: !1, line: 500, type: !55)
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !583, file: !1, line: 500, type: !55)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !583, file: !1, line: 502, type: !370)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !583, file: !1, line: 502, type: !370)
!589 = !DISubprogram(name: "float_mul", scope: !1, file: !1, line: 512, type: !143, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_mul, variables: !590)
!590 = !{!591, !592, !593, !594}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !589, file: !1, line: 512, type: !55)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !589, file: !1, line: 512, type: !55)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !589, file: !1, line: 514, type: !370)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !589, file: !1, line: 514, type: !370)
!595 = !DISubprogram(name: "float_rem", scope: !1, file: !1, line: 541, type: !143, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_rem, variables: !596)
!596 = !{!597, !598, !599, !600, !601}
!597 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !595, file: !1, line: 541, type: !55)
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !595, file: !1, line: 541, type: !55)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vx", scope: !595, file: !1, line: 543, type: !370)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wx", scope: !595, file: !1, line: 543, type: !370)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !595, file: !1, line: 544, type: !370)
!602 = !DISubprogram(name: "float_divmod", scope: !1, file: !1, line: 571, type: !143, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_divmod, variables: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610}
!604 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !602, file: !1, line: 571, type: !55)
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !602, file: !1, line: 571, type: !55)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vx", scope: !602, file: !1, line: 573, type: !370)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wx", scope: !602, file: !1, line: 573, type: !370)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "div", scope: !602, file: !1, line: 574, type: !370)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !602, file: !1, line: 574, type: !370)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "floordiv", scope: !602, file: !1, line: 574, type: !370)
!611 = !DISubprogram(name: "float_pow", scope: !1, file: !1, line: 637, type: !152, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @float_pow, variables: !612)
!612 = !{!613, !614, !615, !616, !617, !618, !619, !620, !623}
!613 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !611, file: !1, line: 637, type: !55)
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !611, file: !1, line: 637, type: !55)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 3, scope: !611, file: !1, line: 637, type: !55)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iv", scope: !611, file: !1, line: 639, type: !370)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw", scope: !611, file: !1, line: 639, type: !370)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !611, file: !1, line: 639, type: !370)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate_result", scope: !611, file: !1, line: 640, type: !61)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw_is_odd", scope: !621, file: !1, line: 681, type: !61)
!621 = distinct !DILexicalBlock(scope: !622, file: !1, line: 676, column: 29)
!622 = distinct !DILexicalBlock(scope: !611, file: !1, line: 676, column: 9)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw_is_odd", scope: !624, file: !1, line: 691, type: !61)
!624 = distinct !DILexicalBlock(scope: !625, file: !1, line: 688, column: 20)
!625 = distinct !DILexicalBlock(scope: !611, file: !1, line: 688, column: 9)
!626 = !DISubprogram(name: "float_neg", scope: !1, file: !1, line: 761, type: !562, isLocal: true, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_neg, variables: !627)
!627 = !{!628}
!628 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !626, file: !1, line: 761, type: !363)
!629 = !DISubprogram(name: "float_float", scope: !1, file: !1, line: 1019, type: !133, isLocal: true, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_float, variables: !630)
!630 = !{!631}
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !629, file: !1, line: 1019, type: !55)
!632 = !DISubprogram(name: "float_abs", scope: !1, file: !1, line: 767, type: !562, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_abs, variables: !633)
!633 = !{!634}
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !632, file: !1, line: 767, type: !363)
!635 = !DISubprogram(name: "float_bool", scope: !1, file: !1, line: 773, type: !636, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFloatObject*)* @float_bool, variables: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{!61, !363}
!638 = !{!639}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !635, file: !1, line: 773, type: !363)
!640 = !DISubprogram(name: "float_trunc", scope: !1, file: !1, line: 831, type: !133, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_trunc, variables: !641)
!641 = !{!642, !643, !644, !645}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !640, file: !1, line: 831, type: !55)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !640, file: !1, line: 833, type: !370)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wholepart", scope: !640, file: !1, line: 834, type: !370)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aslong", scope: !646, file: !1, line: 850, type: !648)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 849, column: 55)
!647 = distinct !DILexicalBlock(scope: !640, file: !1, line: 849, column: 9)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!649 = !DISubprogram(name: "float_floor_div", scope: !1, file: !1, line: 618, type: !143, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_floor_div, variables: !650)
!650 = !{!651, !652, !653, !654, !655}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !649, file: !1, line: 618, type: !55)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !649, file: !1, line: 618, type: !55)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !649, file: !1, line: 620, type: !55)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !649, file: !1, line: 620, type: !55)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !656, file: !1, line: 628, type: !55)
!656 = distinct !DILexicalBlock(scope: !649, file: !1, line: 628, column: 5)
!657 = !DISubprogram(name: "float_div", scope: !1, file: !1, line: 524, type: !143, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_div, variables: !658)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !657, file: !1, line: 524, type: !55)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !657, file: !1, line: 524, type: !55)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !657, file: !1, line: 526, type: !370)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !657, file: !1, line: 526, type: !370)
!663 = !DISubprogram(name: "float_hash", scope: !1, file: !1, line: 482, type: !664, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyFloatObject*)* @float_hash, variables: !666)
!664 = !DISubroutineType(types: !665)
!665 = !{!235, !363}
!666 = !{!667}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !663, file: !1, line: 482, type: !363)
!668 = !DISubprogram(name: "float_richcompare", scope: !1, file: !1, line: 295, type: !288, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @float_richcompare, variables: !669)
!669 = !{!670, !671, !672, !673, !674, !675, !676, !681, !682, !683, !684, !686, !687, !688, !689, !690, !691, !694, !696, !698, !700, !702, !705, !707, !710, !712}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !668, file: !1, line: 295, type: !55)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !668, file: !1, line: 295, type: !55)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !668, file: !1, line: 295, type: !61)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !668, file: !1, line: 297, type: !370)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !668, file: !1, line: 297, type: !370)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !668, file: !1, line: 298, type: !61)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsign", scope: !677, file: !1, line: 321, type: !61)
!677 = distinct !DILexicalBlock(scope: !678, file: !1, line: 320, column: 31)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 320, column: 14)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 309, column: 14)
!680 = distinct !DILexicalBlock(scope: !668, file: !1, line: 306, column: 9)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wsign", scope: !677, file: !1, line: 322, type: !61)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbits", scope: !677, file: !1, line: 323, type: !111)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !677, file: !1, line: 324, type: !61)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fracpart", scope: !685, file: !1, line: 388, type: !370)
!685 = distinct !DILexicalBlock(scope: !677, file: !1, line: 387, column: 9)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !685, file: !1, line: 389, type: !370)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !685, file: !1, line: 390, type: !55)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !685, file: !1, line: 391, type: !55)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vv", scope: !685, file: !1, line: 392, type: !55)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ww", scope: !685, file: !1, line: 393, type: !55)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !692, file: !1, line: 412, type: !55)
!692 = distinct !DILexicalBlock(scope: !693, file: !1, line: 408, column: 34)
!693 = distinct !DILexicalBlock(scope: !685, file: !1, line: 408, column: 17)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !695, file: !1, line: 421, type: !55)
!695 = distinct !DILexicalBlock(scope: !692, file: !1, line: 421, column: 17)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !697, file: !1, line: 427, type: !55)
!697 = distinct !DILexicalBlock(scope: !692, file: !1, line: 427, column: 17)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !699, file: !1, line: 433, type: !55)
!699 = distinct !DILexicalBlock(scope: !692, file: !1, line: 433, column: 17)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !701, file: !1, line: 442, type: !55)
!701 = distinct !DILexicalBlock(scope: !685, file: !1, line: 442, column: 13)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !703, file: !1, line: 442, type: !55)
!703 = distinct !DILexicalBlock(scope: !704, file: !1, line: 442, column: 13)
!704 = distinct !DILexicalBlock(scope: !701, file: !1, line: 442, column: 13)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !706, file: !1, line: 443, type: !55)
!706 = distinct !DILexicalBlock(scope: !685, file: !1, line: 443, column: 13)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !708, file: !1, line: 443, type: !55)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 443, column: 13)
!709 = distinct !DILexicalBlock(scope: !706, file: !1, line: 443, column: 13)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !711, file: !1, line: 444, type: !55)
!711 = distinct !DILexicalBlock(scope: !685, file: !1, line: 444, column: 13)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !713, file: !1, line: 444, type: !55)
!713 = distinct !DILexicalBlock(scope: !714, file: !1, line: 444, column: 13)
!714 = distinct !DILexicalBlock(scope: !711, file: !1, line: 444, column: 13)
!715 = !DISubprogram(name: "float_round", scope: !1, file: !1, line: 973, type: !143, isLocal: true, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_round, variables: !716)
!716 = !{!717, !718, !719, !720, !721, !722}
!717 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !715, file: !1, line: 973, type: !55)
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !715, file: !1, line: 973, type: !55)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !715, file: !1, line: 975, type: !370)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rounded", scope: !715, file: !1, line: 975, type: !370)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o_ndigits", scope: !715, file: !1, line: 976, type: !55)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndigits", scope: !715, file: !1, line: 977, type: !32)
!723 = !DISubprogram(name: "double_round", scope: !1, file: !1, line: 866, type: !724, isLocal: true, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: true, variables: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{!55, !370, !61}
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !738, !739, !740, !741, !742, !743}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !723, file: !1, line: 866, type: !370)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ndigits", arg: 2, scope: !723, file: !1, line: 866, type: !61)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rounded", scope: !723, file: !1, line: 868, type: !370)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !723, file: !1, line: 869, type: !32)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mybuflen", scope: !723, file: !1, line: 869, type: !32)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !723, file: !1, line: 870, type: !69)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf_end", scope: !723, file: !1, line: 870, type: !69)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shortbuf", scope: !723, file: !1, line: 870, type: !735)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 800, align: 8, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 100)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mybuf", scope: !723, file: !1, line: 870, type: !69)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt", scope: !723, file: !1, line: 871, type: !61)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !723, file: !1, line: 871, type: !61)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !723, file: !1, line: 872, type: !55)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !723, file: !1, line: 873, type: !94)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !723, file: !1, line: 873, type: !94)
!744 = !DISubprogram(name: "float_as_integer_ratio", scope: !1, file: !1, line: 1424, type: !143, isLocal: true, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_as_integer_ratio, variables: !745)
!745 = !{!746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !760, !764, !767, !769, !772, !774, !777, !779}
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !744, file: !1, line: 1424, type: !55)
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !744, file: !1, line: 1424, type: !55)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !744, file: !1, line: 1426, type: !370)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "float_part", scope: !744, file: !1, line: 1427, type: !370)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !744, file: !1, line: 1428, type: !61)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !744, file: !1, line: 1429, type: !61)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !744, file: !1, line: 1431, type: !55)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_exponent", scope: !744, file: !1, line: 1432, type: !55)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numerator", scope: !744, file: !1, line: 1433, type: !55)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denominator", scope: !744, file: !1, line: 1434, type: !55)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_pair", scope: !744, file: !1, line: 1435, type: !55)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "long_methods", scope: !744, file: !1, line: 1436, type: !136)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !759, file: !1, line: 1475, type: !55)
!759 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1475, column: 5)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !761, file: !1, line: 1479, type: !55)
!761 = distinct !DILexicalBlock(scope: !762, file: !1, line: 1479, column: 9)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1478, column: 23)
!763 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1478, column: 9)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !765, file: !1, line: 1484, type: !55)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 1484, column: 9)
!766 = distinct !DILexicalBlock(scope: !763, file: !1, line: 1483, column: 10)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !768, file: !1, line: 1493, type: !55)
!768 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1493, column: 5)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !770, file: !1, line: 1493, type: !55)
!770 = distinct !DILexicalBlock(scope: !771, file: !1, line: 1493, column: 5)
!771 = distinct !DILexicalBlock(scope: !768, file: !1, line: 1493, column: 5)
!772 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !773, file: !1, line: 1494, type: !55)
!773 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1494, column: 5)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !775, file: !1, line: 1494, type: !55)
!775 = distinct !DILexicalBlock(scope: !776, file: !1, line: 1494, column: 5)
!776 = distinct !DILexicalBlock(scope: !773, file: !1, line: 1494, column: 5)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !778, file: !1, line: 1495, type: !55)
!778 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1495, column: 5)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !780, file: !1, line: 1495, type: !55)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 1495, column: 5)
!781 = distinct !DILexicalBlock(scope: !778, file: !1, line: 1495, column: 5)
!782 = !DISubprogram(name: "float_fromhex", scope: !1, file: !1, line: 1173, type: !143, isLocal: true, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_fromhex, variables: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807}
!784 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 1, scope: !782, file: !1, line: 1173, type: !55)
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !782, file: !1, line: 1173, type: !55)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_as_float", scope: !782, file: !1, line: 1175, type: !55)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !782, file: !1, line: 1175, type: !55)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !782, file: !1, line: 1176, type: !370)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp", scope: !782, file: !1, line: 1177, type: !38)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top_exp", scope: !782, file: !1, line: 1177, type: !38)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lsb", scope: !782, file: !1, line: 1177, type: !38)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_digit", scope: !782, file: !1, line: 1177, type: !38)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !782, file: !1, line: 1178, type: !69)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coeff_start", scope: !782, file: !1, line: 1178, type: !69)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_store", scope: !782, file: !1, line: 1178, type: !69)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coeff_end", scope: !782, file: !1, line: 1178, type: !69)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_start", scope: !782, file: !1, line: 1178, type: !69)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_end", scope: !782, file: !1, line: 1178, type: !69)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "half_eps", scope: !782, file: !1, line: 1179, type: !61)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digit", scope: !782, file: !1, line: 1179, type: !61)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "round_up", scope: !782, file: !1, line: 1179, type: !61)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate", scope: !782, file: !1, line: 1179, type: !61)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !782, file: !1, line: 1180, type: !32)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndigits", scope: !782, file: !1, line: 1180, type: !32)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdigits", scope: !782, file: !1, line: 1180, type: !32)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !782, file: !1, line: 1180, type: !32)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !808, file: !1, line: 1394, type: !55)
!808 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1394, column: 5)
!809 = !DISubprogram(name: "hex_from_char", scope: !1, file: !1, line: 1038, type: !810, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{!61, !47}
!812 = !{!813, !814}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !809, file: !1, line: 1038, type: !47)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !809, file: !1, line: 1039, type: !61)
!815 = !DISubprogram(name: "float_hex", scope: !1, file: !1, line: 1109, type: !133, isLocal: true, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_hex, variables: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825}
!817 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !815, file: !1, line: 1109, type: !55)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !815, file: !1, line: 1111, type: !370)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !815, file: !1, line: 1111, type: !370)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !815, file: !1, line: 1112, type: !61)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !815, file: !1, line: 1112, type: !61)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !815, file: !1, line: 1112, type: !61)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "si", scope: !815, file: !1, line: 1112, type: !61)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "esign", scope: !815, file: !1, line: 1112, type: !61)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !815, file: !1, line: 1115, type: !826)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, align: 8, elements: !827)
!827 = !{!828}
!828 = !DISubrange(count: 16)
!829 = !DISubprogram(name: "char_from_hex", scope: !1, file: !1, line: 1031, type: !830, isLocal: true, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, variables: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{!47, !61}
!832 = !{!833}
!833 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !829, file: !1, line: 1031, type: !61)
!834 = !DISubprogram(name: "float_is_integer", scope: !1, file: !1, line: 779, type: !133, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_is_integer, variables: !835)
!835 = !{!836, !837, !838}
!836 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !834, file: !1, line: 779, type: !55)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !834, file: !1, line: 781, type: !370)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !834, file: !1, line: 782, type: !55)
!839 = !DISubprogram(name: "float_getnewargs", scope: !1, file: !1, line: 1560, type: !562, isLocal: true, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_getnewargs, variables: !840)
!840 = !{!841}
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !839, file: !1, line: 1560, type: !363)
!842 = !DISubprogram(name: "float_getformat", scope: !1, file: !1, line: 1575, type: !843, isLocal: true, isDefinition: true, scopeLine: 1576, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @float_getformat, variables: !847)
!843 = !DISubroutineType(types: !844)
!844 = !{!55, !845, !55}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !24, line: 422, baseType: !41)
!847 = !{!848, !849, !850, !851, !853, !856, !857, !859, !860, !863, !864, !866}
!848 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !842, file: !1, line: 1575, type: !845)
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !842, file: !1, line: 1575, type: !55)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !842, file: !1, line: 1577, type: !69)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !842, file: !1, line: 1578, type: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_format_type", file: !1, line: 1569, baseType: !3)
!853 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !854, file: !1, line: 1589, type: !111)
!854 = distinct !DILexicalBlock(scope: !855, file: !1, line: 1589, column: 9)
!855 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1589, column: 9)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !854, file: !1, line: 1589, type: !111)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !858, file: !1, line: 1589, type: !376)
!858 = distinct !DILexicalBlock(scope: !854, file: !1, line: 1589, column: 9)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !858, file: !1, line: 1589, type: !61)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !861, file: !1, line: 1592, type: !111)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1592, column: 14)
!862 = distinct !DILexicalBlock(scope: !855, file: !1, line: 1592, column: 14)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !861, file: !1, line: 1592, type: !111)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !865, file: !1, line: 1592, type: !376)
!865 = distinct !DILexicalBlock(scope: !861, file: !1, line: 1592, column: 14)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !865, file: !1, line: 1592, type: !61)
!867 = !DISubprogram(name: "float_setformat", scope: !1, file: !1, line: 1626, type: !843, isLocal: true, isDefinition: true, scopeLine: 1627, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @float_setformat, variables: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !875, !877, !880, !881, !883, !884, !887, !888, !890, !891, !894, !895, !897, !898, !901, !902, !904, !905, !908, !909, !911}
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !867, file: !1, line: 1626, type: !845)
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !867, file: !1, line: 1626, type: !55)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typestr", scope: !867, file: !1, line: 1628, type: !69)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !867, file: !1, line: 1629, type: !69)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !867, file: !1, line: 1630, type: !852)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detected", scope: !867, file: !1, line: 1631, type: !852)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !867, file: !1, line: 1632, type: !876)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!877 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !878, file: !1, line: 1637, type: !111)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 1637, column: 9)
!879 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1637, column: 9)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !878, file: !1, line: 1637, type: !111)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !882, file: !1, line: 1637, type: !376)
!882 = distinct !DILexicalBlock(scope: !878, file: !1, line: 1637, column: 9)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !882, file: !1, line: 1637, type: !61)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !885, file: !1, line: 1641, type: !111)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 1641, column: 14)
!886 = distinct !DILexicalBlock(scope: !879, file: !1, line: 1641, column: 14)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !885, file: !1, line: 1641, type: !111)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !889, file: !1, line: 1641, type: !376)
!889 = distinct !DILexicalBlock(scope: !885, file: !1, line: 1641, column: 14)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !889, file: !1, line: 1641, type: !61)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !892, file: !1, line: 1652, type: !111)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 1652, column: 9)
!893 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1652, column: 9)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !892, file: !1, line: 1652, type: !111)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !896, file: !1, line: 1652, type: !376)
!896 = distinct !DILexicalBlock(scope: !892, file: !1, line: 1652, column: 9)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !896, file: !1, line: 1652, type: !61)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !899, file: !1, line: 1655, type: !111)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 1655, column: 14)
!900 = distinct !DILexicalBlock(scope: !893, file: !1, line: 1655, column: 14)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !899, file: !1, line: 1655, type: !111)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !903, file: !1, line: 1655, type: !376)
!903 = distinct !DILexicalBlock(scope: !899, file: !1, line: 1655, column: 14)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !903, file: !1, line: 1655, type: !61)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !906, file: !1, line: 1658, type: !111)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 1658, column: 14)
!907 = distinct !DILexicalBlock(scope: !900, file: !1, line: 1658, column: 14)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !906, file: !1, line: 1658, type: !111)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !910, file: !1, line: 1658, type: !376)
!910 = distinct !DILexicalBlock(scope: !906, file: !1, line: 1658, column: 14)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !910, file: !1, line: 1658, type: !61)
!912 = !DISubprogram(name: "float__format__", scope: !1, file: !1, line: 1701, type: !143, isLocal: true, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float__format__, variables: !913)
!913 = !{!914, !915, !916, !917, !932}
!914 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !912, file: !1, line: 1701, type: !55)
!915 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !912, file: !1, line: 1701, type: !55)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_spec", scope: !912, file: !1, line: 1703, type: !55)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !912, file: !1, line: 1704, type: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !9, line: 917, baseType: !919)
!919 = !DICompositeType(tag: DW_TAG_structure_type, file: !9, line: 897, size: 448, align: 64, elements: !920)
!920 = !{!921, !922, !923, !924, !926, !927, !928, !929, !930, !931}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !919, file: !9, line: 898, baseType: !55, size: 64, align: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !919, file: !9, line: 899, baseType: !16, size: 64, align: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !919, file: !9, line: 900, baseType: !8, size: 32, align: 32, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !919, file: !9, line: 901, baseType: !925, size: 32, align: 32, offset: 160)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !9, line: 121, baseType: !358)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !919, file: !9, line: 902, baseType: !32, size: 64, align: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !919, file: !9, line: 903, baseType: !32, size: 64, align: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !919, file: !9, line: 906, baseType: !32, size: 64, align: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !919, file: !9, line: 909, baseType: !925, size: 32, align: 32, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !919, file: !9, line: 912, baseType: !371, size: 8, align: 8, offset: 416)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !919, file: !9, line: 916, baseType: !371, size: 8, align: 8, offset: 424)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !912, file: !1, line: 1705, type: !61)
!933 = !DISubprogram(name: "float_getzero", scope: !1, file: !1, line: 1695, type: !317, isLocal: true, isDefinition: true, scopeLine: 1696, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @float_getzero, variables: !934)
!934 = !{!935, !936}
!935 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !933, file: !1, line: 1695, type: !55)
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !933, file: !1, line: 1695, type: !16)
!937 = !DISubprogram(name: "float_new", scope: !1, file: !1, line: 1518, type: !938, isLocal: true, isDefinition: true, scopeLine: 1519, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @float_new, variables: !940)
!938 = !DISubroutineType(types: !939)
!939 = !{!55, !845, !55, !55}
!940 = !{!941, !942, !943, !944}
!941 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !937, file: !1, line: 1518, type: !845)
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !937, file: !1, line: 1518, type: !55)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !937, file: !1, line: 1518, type: !55)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !937, file: !1, line: 1520, type: !55)
!945 = !DISubprogram(name: "float_subtype_new", scope: !1, file: !1, line: 1540, type: !938, isLocal: true, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, variables: !946)
!946 = !{!947, !948, !949, !950, !951, !952, !956}
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !945, file: !1, line: 1540, type: !845)
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !945, file: !1, line: 1540, type: !55)
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !945, file: !1, line: 1540, type: !55)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !945, file: !1, line: 1542, type: !55)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !945, file: !1, line: 1542, type: !55)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !953, file: !1, line: 1551, type: !55)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 1551, column: 9)
!954 = distinct !DILexicalBlock(scope: !955, file: !1, line: 1550, column: 25)
!955 = distinct !DILexicalBlock(scope: !945, file: !1, line: 1550, column: 9)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !957, file: !1, line: 1555, type: !55)
!957 = distinct !DILexicalBlock(scope: !945, file: !1, line: 1555, column: 5)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !972, !977, !981, !985, !989, !993, !997, !1001, !1006, !1010, !1024, !1028}
!959 = !DIGlobalVariable(name: "PyFloat_Type", scope: !0, file: !1, line: 1816, type: !846, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyFloat_Type)
!960 = !DIGlobalVariable(name: "FloatInfoType", scope: !0, file: !1, line: 36, type: !846, isLocal: true, isDefinition: true, variable: %struct._typeobject* @FloatInfoType)
!961 = !DIGlobalVariable(name: "double_format", scope: !0, file: !1, line: 1571, type: !852, isLocal: true, isDefinition: true, variable: i32* @double_format)
!962 = !DIGlobalVariable(name: "float_format", scope: !0, file: !1, line: 1571, type: !852, isLocal: true, isDefinition: true, variable: i32* @float_format)
!963 = !DIGlobalVariable(name: "detected_double_format", scope: !0, file: !1, line: 1572, type: !852, isLocal: true, isDefinition: true, variable: i32* @detected_double_format)
!964 = !DIGlobalVariable(name: "detected_float_format", scope: !0, file: !1, line: 1572, type: !852, isLocal: true, isDefinition: true, variable: i32* @detected_float_format)
!965 = !DIGlobalVariable(name: "free_list", scope: !0, file: !1, line: 22, type: !363, isLocal: true, isDefinition: true, variable: %struct.PyFloatObject** @free_list)
!966 = !DIGlobalVariable(name: "numfree", scope: !0, file: !1, line: 21, type: !61, isLocal: true, isDefinition: true, variable: i32* @numfree)
!967 = !DIGlobalVariable(name: "float_as_number", scope: !0, file: !1, line: 1780, type: !137, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @float_as_number)
!968 = !DIGlobalVariable(name: "float_doc", scope: !0, file: !1, line: 1774, type: !969, isLocal: true, isDefinition: true, variable: [103 x i8]* @float_doc)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 824, align: 8, elements: !970)
!970 = !{!971}
!971 = !DISubrange(count: 103)
!972 = !DIGlobalVariable(name: "float_methods", scope: !0, file: !1, line: 1728, type: !973, isLocal: true, isDefinition: true, variable: [12 x %struct.PyMethodDef]* @float_methods)
!973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 3072, align: 64, elements: !975)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !298, line: 47, baseType: !297)
!975 = !{!976}
!976 = !DISubrange(count: 12)
!977 = !DIGlobalVariable(name: "float_as_integer_ratio_doc", scope: !0, file: !1, line: 1499, type: !978, isLocal: true, isDefinition: true, variable: [324 x i8]* @float_as_integer_ratio_doc)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2592, align: 8, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 324)
!981 = !DIGlobalVariable(name: "float_fromhex_doc", scope: !0, file: !1, line: 1413, type: !982, isLocal: true, isDefinition: true, variable: [175 x i8]* @float_fromhex_doc)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1400, align: 8, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 175)
!985 = !DIGlobalVariable(name: "float_hex_doc", scope: !0, file: !1, line: 1161, type: !986, isLocal: true, isDefinition: true, variable: [169 x i8]* @float_hex_doc)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1352, align: 8, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 169)
!989 = !DIGlobalVariable(name: "float_getformat_doc", scope: !0, file: !1, line: 1615, type: !990, isLocal: true, isDefinition: true, variable: [357 x i8]* @float_getformat_doc)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 2856, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 357)
!993 = !DIGlobalVariable(name: "float_setformat_doc", scope: !0, file: !1, line: 1681, type: !994, isLocal: true, isDefinition: true, variable: [491 x i8]* @float_setformat_doc)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 3928, align: 8, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 491)
!997 = !DIGlobalVariable(name: "float__format__doc", scope: !0, file: !1, line: 1722, type: !998, isLocal: true, isDefinition: true, variable: [85 x i8]* @float__format__doc)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 680, align: 8, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 85)
!1001 = !DIGlobalVariable(name: "float_getset", scope: !0, file: !1, line: 1762, type: !1002, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @float_getset)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1003, size: 960, align: 64, elements: !1004)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !311, line: 17, baseType: !310)
!1004 = !{!1005}
!1005 = !DISubrange(count: 3)
!1006 = !DIGlobalVariable(name: "kwlist", scope: !937, file: !1, line: 1521, type: !1007, isLocal: true, isDefinition: true, variable: [2 x i8*]* @float_new.kwlist)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 128, align: 64, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 2)
!1010 = !DIGlobalVariable(name: "floatinfo_desc", scope: !0, file: !1, line: 65, type: !1011, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @floatinfo_desc)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !1012, line: 20, baseType: !1013)
!1012 = !DIFile(filename: "Include/structseq.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !1012, line: 15, size: 256, align: 64, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1013, file: !1012, line: 16, baseType: !69, size: 64, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1013, file: !1012, line: 17, baseType: !69, size: 64, align: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1013, file: !1012, line: 18, baseType: !1018, size: 64, align: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !1012, line: 10, size: 128, align: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1019, file: !1012, line: 11, baseType: !69, size: 64, align: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1019, file: !1012, line: 12, baseType: !69, size: 64, align: 64, offset: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !1013, file: !1012, line: 19, baseType: !61, size: 32, align: 32, offset: 192)
!1024 = !DIGlobalVariable(name: "floatinfo__doc__", scope: !0, file: !1, line: 38, type: !1025, isLocal: true, isDefinition: true, variable: [218 x i8]* @floatinfo__doc__)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1744, align: 8, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 218)
!1028 = !DIGlobalVariable(name: "floatinfo_fields", scope: !0, file: !1, line: 45, type: !1029, isLocal: true, isDefinition: true, variable: [12 x %struct.PyStructSequence_Field]* @floatinfo_fields)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1030, size: 1536, align: 64, elements: !975)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !1012, line: 13, baseType: !1019)
!1031 = !{i32 2, !"Dwarf Version", i32 4}
!1032 = !{i32 2, !"Debug Info Version", i32 3}
!1033 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1034 = !DILocation(line: 27, column: 5, scope: !397)
!1035 = !DILocation(line: 33, column: 5, scope: !401)
!1036 = !DIExpression()
!1037 = !DILocation(line: 76, column: 9, scope: !402)
!1038 = !DILocation(line: 78, column: 17, scope: !402)
!1039 = !DILocation(line: 75, column: 15, scope: !402)
!1040 = !DILocation(line: 79, column: 19, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !402, file: !1, line: 79, column: 9)
!1042 = !DILocation(line: 79, column: 9, scope: !402)
!1043 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 88, column: 5, scope: !402)
!1045 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !1044)
!1046 = !{!1047, !1047, i64 0}
!1047 = !{!"any pointer", !1048, i64 0}
!1048 = !{!"omnipotent char", !1049, i64 0}
!1049 = !{!"Simple C/C++ TBAA"}
!1050 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !1044)
!1051 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !1044)
!1052 = distinct !DILexicalBlock(scope: !416, file: !1, line: 113, column: 9)
!1053 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !1044)
!1054 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !1044)
!1055 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 113, column: 21)
!1056 = !{!1057, !1047, i64 8}
!1057 = !{!"_object", !1058, i64 0, !1047, i64 8}
!1058 = !{!"long", !1048, i64 0}
!1059 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !1044)
!1060 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !1044)
!1061 = !{!1062, !1062, i64 0}
!1062 = !{!"int", !1048, i64 0}
!1063 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !1044)
!1064 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !1044)
!1065 = distinct !DILexicalBlock(scope: !1052, file: !1, line: 116, column: 12)
!1066 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !1044)
!1067 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !1044)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 118, column: 13)
!1069 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !1044)
!1070 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !1044)
!1071 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !1044)
!1072 = !DILocation(line: 88, column: 5, scope: !402)
!1073 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !1044)
!1074 = !{!1057, !1058, i64 0}
!1075 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !1044)
!1076 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !1044)
!1077 = !{!1078, !1079, i64 16}
!1078 = !{!"", !1057, i64 0, !1079, i64 16}
!1079 = !{!"double", !1048, i64 0}
!1080 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !1044)
!1081 = !DILocation(line: 89, column: 5, scope: !402)
!1082 = !DILocation(line: 90, column: 5, scope: !402)
!1083 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 91, column: 5, scope: !402)
!1085 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !1084)
!1086 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !1084)
!1087 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !1084)
!1088 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !1084)
!1089 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !1084)
!1090 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !1084)
!1091 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !1084)
!1092 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !1084)
!1093 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !1084)
!1094 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !1084)
!1095 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !1084)
!1096 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !1084)
!1097 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !1084)
!1098 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !1084)
!1099 = !DILocation(line: 91, column: 5, scope: !402)
!1100 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !1084)
!1101 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !1084)
!1102 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !1084)
!1103 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !1084)
!1104 = !DILocation(line: 92, column: 5, scope: !402)
!1105 = !DILocation(line: 93, column: 5, scope: !402)
!1106 = !DILocation(line: 94, column: 5, scope: !402)
!1107 = !DILocation(line: 95, column: 5, scope: !402)
!1108 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !1109)
!1109 = distinct !DILocation(line: 96, column: 5, scope: !402)
!1110 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !1109)
!1111 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !1109)
!1112 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !1109)
!1113 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !1109)
!1114 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !1109)
!1115 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !1109)
!1116 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !1109)
!1117 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !1109)
!1118 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !1109)
!1119 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !1109)
!1120 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !1109)
!1121 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !1109)
!1122 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !1109)
!1123 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !1109)
!1124 = !DILocation(line: 96, column: 5, scope: !402)
!1125 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !1109)
!1126 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !1109)
!1127 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !1109)
!1128 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !1109)
!1129 = !DILocation(line: 97, column: 5, scope: !402)
!1130 = !DILocation(line: 98, column: 5, scope: !402)
!1131 = !DILocation(line: 102, column: 9, scope: !411)
!1132 = !DILocation(line: 102, column: 9, scope: !402)
!1133 = !DILocation(line: 103, column: 9, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !409, file: !1, discriminator: 1)
!1135 = !DILocation(line: 103, column: 9, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !413, file: !1, discriminator: 4)
!1137 = !DILocation(line: 103, column: 9, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !413, file: !1, line: 103, column: 9)
!1139 = !DILocation(line: 103, column: 9, scope: !413)
!1140 = !DILocation(line: 103, column: 9, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1138, file: !1, discriminator: 6)
!1142 = !{!1143, !1047, i64 48}
!1143 = !{!"_typeobject", !1144, i64 0, !1047, i64 24, !1058, i64 32, !1058, i64 40, !1047, i64 48, !1047, i64 56, !1047, i64 64, !1047, i64 72, !1047, i64 80, !1047, i64 88, !1047, i64 96, !1047, i64 104, !1047, i64 112, !1047, i64 120, !1047, i64 128, !1047, i64 136, !1047, i64 144, !1047, i64 152, !1047, i64 160, !1058, i64 168, !1047, i64 176, !1047, i64 184, !1047, i64 192, !1047, i64 200, !1058, i64 208, !1047, i64 216, !1047, i64 224, !1047, i64 232, !1047, i64 240, !1047, i64 248, !1047, i64 256, !1047, i64 264, !1047, i64 272, !1047, i64 280, !1058, i64 288, !1047, i64 296, !1047, i64 304, !1047, i64 312, !1047, i64 320, !1047, i64 328, !1047, i64 336, !1047, i64 344, !1047, i64 352, !1047, i64 360, !1047, i64 368, !1047, i64 376, !1062, i64 384, !1047, i64 392}
!1144 = !{!"", !1057, i64 0, !1058, i64 16}
!1145 = !DILocation(line: 107, column: 1, scope: !402)
!1146 = !DILocation(line: 110, column: 27, scope: !416)
!1147 = !DILocation(line: 112, column: 25, scope: !416)
!1148 = !DILocation(line: 112, column: 20, scope: !416)
!1149 = !DILocation(line: 113, column: 12, scope: !1052)
!1150 = !DILocation(line: 113, column: 9, scope: !416)
!1151 = !DILocation(line: 114, column: 39, scope: !1055)
!1152 = !DILocation(line: 114, column: 19, scope: !1055)
!1153 = !DILocation(line: 115, column: 16, scope: !1055)
!1154 = !DILocation(line: 116, column: 5, scope: !1055)
!1155 = !DILocation(line: 117, column: 31, scope: !1065)
!1156 = !DILocation(line: 117, column: 14, scope: !1065)
!1157 = !DILocation(line: 118, column: 14, scope: !1068)
!1158 = !DILocation(line: 118, column: 13, scope: !1065)
!1159 = !DILocation(line: 119, column: 20, scope: !1068)
!1160 = !DILocation(line: 119, column: 13, scope: !1068)
!1161 = !DILocation(line: 122, column: 11, scope: !416)
!1162 = !DILocation(line: 123, column: 9, scope: !416)
!1163 = !DILocation(line: 123, column: 17, scope: !416)
!1164 = !DILocation(line: 124, column: 5, scope: !416)
!1165 = !DILocation(line: 125, column: 1, scope: !416)
!1166 = !DILocation(line: 128, column: 30, scope: !422)
!1167 = !DILocation(line: 130, column: 5, scope: !422)
!1168 = !DILocation(line: 132, column: 15, scope: !422)
!1169 = !DILocation(line: 133, column: 5, scope: !422)
!1170 = !DILocation(line: 134, column: 15, scope: !422)
!1171 = !DILocation(line: 136, column: 9, scope: !437)
!1172 = !{!1143, !1058, i64 168}
!1173 = !DILocation(line: 136, column: 9, scope: !422)
!1174 = !DILocation(line: 137, column: 20, scope: !436)
!1175 = !DILocation(line: 138, column: 22, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !436, file: !1, line: 138, column: 13)
!1177 = !DILocation(line: 138, column: 13, scope: !436)
!1178 = !DILocation(line: 133, column: 16, scope: !422)
!1179 = !DILocation(line: 140, column: 13, scope: !436)
!1180 = !DILocation(line: 130, column: 17, scope: !422)
!1181 = !DILocation(line: 140, column: 11, scope: !436)
!1182 = !DILocation(line: 141, column: 15, scope: !435)
!1183 = !DILocation(line: 141, column: 13, scope: !436)
!1184 = !DILocation(line: 142, column: 13, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !433, file: !1, discriminator: 1)
!1186 = !DILocation(line: 142, column: 13, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !433, file: !1, line: 142, column: 13)
!1188 = !DILocation(line: 142, column: 13, scope: !433)
!1189 = !DILocation(line: 142, column: 13, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1187, file: !1, discriminator: 3)
!1191 = !DILocation(line: 146, column: 14, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !437, file: !1, line: 146, column: 14)
!1193 = !DILocation(line: 146, column: 14, scope: !437)
!1194 = !DILocation(line: 152, column: 12, scope: !422)
!1195 = !DILocation(line: 147, column: 22, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 146, column: 50)
!1197 = !DILocation(line: 149, column: 13, scope: !1196)
!1198 = !DILocation(line: 149, column: 25, scope: !1196)
!1199 = !{!1143, !1047, i64 24}
!1200 = !DILocation(line: 147, column: 9, scope: !1196)
!1201 = !DILocation(line: 150, column: 9, scope: !1196)
!1202 = !DILocation(line: 152, column: 16, scope: !422)
!1203 = !{!1058, !1058, i64 0}
!1204 = !DILocation(line: 152, column: 14, scope: !422)
!1205 = !DILocation(line: 130, column: 21, scope: !422)
!1206 = !DILocation(line: 154, column: 14, scope: !422)
!1207 = !DILocation(line: 154, column: 21, scope: !422)
!1208 = !DILocation(line: 154, column: 24, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 2)
!1210 = !{!1048, !1048, i64 0}
!1211 = !DILocation(line: 154, column: 5, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !422, file: !1, discriminator: 3)
!1213 = !DILocation(line: 161, column: 31, scope: !422)
!1214 = !DILocation(line: 155, column: 10, scope: !422)
!1215 = !DILocation(line: 156, column: 21, scope: !422)
!1216 = !DILocation(line: 156, column: 14, scope: !422)
!1217 = !DILocation(line: 156, column: 25, scope: !422)
!1218 = !DILocation(line: 156, column: 28, scope: !1209)
!1219 = !DILocation(line: 156, column: 5, scope: !1212)
!1220 = !DILocation(line: 130, column: 28, scope: !422)
!1221 = !DILocation(line: 161, column: 9, scope: !422)
!1222 = !DILocation(line: 131, column: 12, scope: !422)
!1223 = !DILocation(line: 162, column: 9, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !422, file: !1, line: 162, column: 9)
!1225 = !DILocation(line: 162, column: 13, scope: !1224)
!1226 = !DILocation(line: 162, column: 9, scope: !422)
!1227 = !DILocation(line: 163, column: 22, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 162, column: 22)
!1229 = !DILocation(line: 163, column: 9, scope: !1228)
!1230 = !DILocation(line: 167, column: 5, scope: !1228)
!1231 = !DILocation(line: 168, column: 16, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !1, line: 168, column: 14)
!1233 = !DILocation(line: 168, column: 24, scope: !1232)
!1234 = !DILocation(line: 168, column: 27, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1232, file: !1, discriminator: 1)
!1236 = !DILocation(line: 168, column: 14, scope: !1224)
!1237 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 171, column: 18, scope: !1232)
!1239 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !1238)
!1240 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !1238)
!1241 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !1238)
!1242 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !1238)
!1243 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !1238)
!1244 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !1238)
!1245 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !1238)
!1246 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !1238)
!1247 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !1238)
!1248 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !1238)
!1249 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !1238)
!1250 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !1238)
!1251 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !1238)
!1252 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !1238)
!1253 = !DILocation(line: 171, column: 18, scope: !1232)
!1254 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !1238)
!1255 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !1238)
!1256 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !1238)
!1257 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !1238)
!1258 = !DILocation(line: 173, column: 5, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!1260 = !DILocation(line: 173, column: 5, scope: !442)
!1261 = !DILocation(line: 173, column: 5, scope: !439)
!1262 = !DILocation(line: 173, column: 5, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!1264 = !DILocation(line: 173, column: 5, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !441, file: !1, line: 173, column: 5)
!1266 = !DILocation(line: 173, column: 5, scope: !441)
!1267 = !DILocation(line: 173, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1265, file: !1, discriminator: 6)
!1269 = !DILocation(line: 175, column: 1, scope: !422)
!1270 = !DILocation(line: 194, column: 28, scope: !443)
!1271 = !DILocation(line: 200, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !443, file: !1, line: 200, column: 9)
!1273 = !DILocation(line: 200, column: 15, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 1)
!1275 = !DILocation(line: 200, column: 15, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1272, file: !1, discriminator: 2)
!1277 = !DILocation(line: 200, column: 9, scope: !443)
!1278 = !DILocation(line: 201, column: 16, scope: !1272)
!1279 = !DILocation(line: 201, column: 9, scope: !1272)
!1280 = !DILocation(line: 204, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 203, column: 21)
!1282 = distinct !DILexicalBlock(scope: !443, file: !1, line: 203, column: 9)
!1283 = !DILocation(line: 205, column: 9, scope: !1281)
!1284 = !DILocation(line: 208, column: 15, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !443, file: !1, line: 208, column: 9)
!1286 = !DILocation(line: 208, column: 28, scope: !1285)
!1287 = !{!1143, !1047, i64 96}
!1288 = !DILocation(line: 196, column: 22, scope: !443)
!1289 = !DILocation(line: 208, column: 42, scope: !1285)
!1290 = !DILocation(line: 208, column: 50, scope: !1285)
!1291 = !DILocation(line: 208, column: 57, scope: !1285)
!1292 = !{!1293, !1047, i64 144}
!1293 = !{!"", !1047, i64 0, !1047, i64 8, !1047, i64 16, !1047, i64 24, !1047, i64 32, !1047, i64 40, !1047, i64 48, !1047, i64 56, !1047, i64 64, !1047, i64 72, !1047, i64 80, !1047, i64 88, !1047, i64 96, !1047, i64 104, !1047, i64 112, !1047, i64 120, !1047, i64 128, !1047, i64 136, !1047, i64 144, !1047, i64 152, !1047, i64 160, !1047, i64 168, !1047, i64 176, !1047, i64 184, !1047, i64 192, !1047, i64 200, !1047, i64 208, !1047, i64 216, !1047, i64 224, !1047, i64 232, !1047, i64 240, !1047, i64 248, !1047, i64 256, !1047, i64 264}
!1294 = !DILocation(line: 208, column: 66, scope: !1285)
!1295 = !DILocation(line: 208, column: 9, scope: !443)
!1296 = !DILocation(line: 209, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 208, column: 75)
!1298 = !DILocation(line: 209, column: 9, scope: !1297)
!1299 = !DILocation(line: 210, column: 9, scope: !1297)
!1300 = !DILocation(line: 213, column: 27, scope: !443)
!1301 = !DILocation(line: 214, column: 12, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !443, file: !1, line: 214, column: 9)
!1303 = !DILocation(line: 214, column: 9, scope: !443)
!1304 = !DILocation(line: 216, column: 10, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !443, file: !1, line: 216, column: 9)
!1306 = !DILocation(line: 216, column: 10, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1305, file: !1, discriminator: 1)
!1308 = !DILocation(line: 216, column: 9, scope: !443)
!1309 = !DILocation(line: 217, column: 25, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 216, column: 29)
!1311 = !DILocation(line: 217, column: 9, scope: !1310)
!1312 = !DILocation(line: 219, column: 9, scope: !1310)
!1313 = !DILocation(line: 222, column: 11, scope: !443)
!1314 = !DILocation(line: 198, column: 12, scope: !443)
!1315 = !DILocation(line: 223, column: 5, scope: !1316)
!1316 = !DILexicalBlockFile(scope: !452, file: !1, discriminator: 1)
!1317 = !DILocation(line: 223, column: 5, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !452, file: !1, line: 223, column: 5)
!1319 = !DILocation(line: 223, column: 5, scope: !452)
!1320 = !DILocation(line: 223, column: 5, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1318, file: !1, discriminator: 3)
!1322 = !DILocation(line: 226, column: 1, scope: !443)
!1323 = !DILocation(line: 178, column: 30, scope: !556)
!1324 = !DILocation(line: 180, column: 9, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !556, file: !1, line: 180, column: 9)
!1326 = !DILocation(line: 180, column: 9, scope: !556)
!1327 = !DILocation(line: 181, column: 13, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 181, column: 13)
!1329 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 180, column: 33)
!1330 = !DILocation(line: 181, column: 21, scope: !1328)
!1331 = !DILocation(line: 181, column: 13, scope: !1329)
!1332 = !DILocation(line: 182, column: 27, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 181, column: 46)
!1334 = !DILocation(line: 182, column: 13, scope: !1333)
!1335 = !DILocation(line: 183, column: 13, scope: !1333)
!1336 = !DILocation(line: 185, column: 16, scope: !1329)
!1337 = !DILocation(line: 186, column: 45, scope: !1329)
!1338 = !DILocation(line: 186, column: 21, scope: !1329)
!1339 = !DILocation(line: 187, column: 19, scope: !1329)
!1340 = !DILocation(line: 188, column: 5, scope: !1329)
!1341 = !DILocation(line: 190, column: 22, scope: !1325)
!1342 = !{!1143, !1047, i64 320}
!1343 = !DILocation(line: 190, column: 30, scope: !1325)
!1344 = !DILocation(line: 190, column: 9, scope: !1325)
!1345 = !DILocation(line: 191, column: 1, scope: !556)
!1346 = !DILocation(line: 263, column: 27, scope: !561)
!1347 = !DILocation(line: 268, column: 33, scope: !561)
!1348 = !DILocation(line: 268, column: 11, scope: !561)
!1349 = !DILocation(line: 266, column: 11, scope: !561)
!1350 = !DILocation(line: 272, column: 10, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !561, file: !1, line: 272, column: 9)
!1352 = !DILocation(line: 272, column: 9, scope: !561)
!1353 = !DILocation(line: 273, column: 16, scope: !1351)
!1354 = !DILocation(line: 273, column: 9, scope: !1351)
!1355 = !DILocation(line: 274, column: 40, scope: !561)
!1356 = !DILocation(line: 274, column: 14, scope: !561)
!1357 = !DILocation(line: 265, column: 15, scope: !561)
!1358 = !DILocation(line: 275, column: 5, scope: !561)
!1359 = !DILocation(line: 276, column: 5, scope: !561)
!1360 = !DILocation(line: 277, column: 1, scope: !561)
!1361 = !DILocation(line: 482, column: 27, scope: !663)
!1362 = !DILocation(line: 484, column: 30, scope: !663)
!1363 = !DILocation(line: 484, column: 12, scope: !663)
!1364 = !DILocation(line: 484, column: 5, scope: !663)
!1365 = !DILocation(line: 295, column: 29, scope: !668)
!1366 = !DILocation(line: 295, column: 42, scope: !668)
!1367 = !DILocation(line: 295, column: 49, scope: !668)
!1368 = !DILocation(line: 298, column: 9, scope: !668)
!1369 = !DILocation(line: 301, column: 9, scope: !668)
!1370 = !DILocation(line: 297, column: 12, scope: !668)
!1371 = !DILocation(line: 306, column: 9, scope: !680)
!1372 = !DILocation(line: 306, column: 9, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 1)
!1374 = !DILocation(line: 306, column: 9, scope: !668)
!1375 = !DILocation(line: 307, column: 13, scope: !680)
!1376 = !DILocation(line: 297, column: 15, scope: !668)
!1377 = !DILocation(line: 307, column: 9, scope: !680)
!1378 = !DILocation(line: 309, column: 15, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !679, file: !1, discriminator: 3)
!1380 = !DILocation(line: 320, column: 14, scope: !678)
!1381 = !DILocation(line: 310, column: 13, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !679, file: !1, line: 309, column: 32)
!1383 = !DILocation(line: 320, column: 14, scope: !679)
!1384 = !DILocation(line: 321, column: 23, scope: !677)
!1385 = !DILocation(line: 321, column: 38, scope: !677)
!1386 = !DILocation(line: 321, column: 36, scope: !677)
!1387 = !DILocation(line: 321, column: 21, scope: !677)
!1388 = !DILocation(line: 321, column: 13, scope: !677)
!1389 = !DILocation(line: 322, column: 21, scope: !677)
!1390 = !DILocation(line: 322, column: 13, scope: !677)
!1391 = !DILocation(line: 324, column: 9, scope: !677)
!1392 = !DILocation(line: 326, column: 19, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !677, file: !1, line: 326, column: 13)
!1394 = !DILocation(line: 326, column: 13, scope: !677)
!1395 = !DILocation(line: 330, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !1, line: 326, column: 29)
!1397 = !DILocation(line: 331, column: 17, scope: !1396)
!1398 = !DILocation(line: 332, column: 13, scope: !1396)
!1399 = !DILocation(line: 336, column: 17, scope: !677)
!1400 = !DILocation(line: 323, column: 16, scope: !677)
!1401 = !DILocation(line: 337, column: 19, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !677, file: !1, line: 337, column: 13)
!1403 = !DILocation(line: 337, column: 33, scope: !1402)
!1404 = !DILocation(line: 337, column: 36, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1402, file: !1, discriminator: 1)
!1406 = !DILocation(line: 337, column: 13, scope: !677)
!1407 = !DILocation(line: 344, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1402, file: !1, line: 337, column: 54)
!1409 = !DILocation(line: 345, column: 17, scope: !1408)
!1410 = !DILocation(line: 347, column: 23, scope: !1408)
!1411 = !DILocation(line: 348, column: 13, scope: !1408)
!1412 = !DILocation(line: 350, column: 19, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !677, file: !1, line: 350, column: 13)
!1414 = !DILocation(line: 350, column: 13, scope: !677)
!1415 = !DILocation(line: 351, column: 17, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1413, file: !1, line: 350, column: 26)
!1417 = !DILocation(line: 354, column: 13, scope: !1416)
!1418 = !DILocation(line: 361, column: 19, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !677, file: !1, line: 361, column: 13)
!1420 = !DILocation(line: 361, column: 13, scope: !677)
!1421 = !DILocation(line: 365, column: 17, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1419, file: !1, line: 361, column: 24)
!1423 = !DILocation(line: 366, column: 18, scope: !1422)
!1424 = !DILocation(line: 367, column: 9, scope: !1422)
!1425 = !DILocation(line: 324, column: 13, scope: !677)
!1426 = !DILocation(line: 369, column: 16, scope: !677)
!1427 = !DILocation(line: 373, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !677, file: !1, line: 373, column: 13)
!1429 = !DILocation(line: 373, column: 22, scope: !1428)
!1430 = !DILocation(line: 373, column: 26, scope: !1428)
!1431 = !DILocation(line: 373, column: 29, scope: !1428)
!1432 = !DILocation(line: 373, column: 46, scope: !1428)
!1433 = !DILocation(line: 373, column: 13, scope: !677)
!1434 = !DILocation(line: 378, column: 30, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !677, file: !1, line: 378, column: 13)
!1436 = !DILocation(line: 378, column: 13, scope: !677)
!1437 = !DILocation(line: 389, column: 13, scope: !685)
!1438 = !DILocation(line: 390, column: 23, scope: !685)
!1439 = !DILocation(line: 391, column: 23, scope: !685)
!1440 = !DILocation(line: 392, column: 23, scope: !685)
!1441 = !DILocation(line: 393, column: 23, scope: !685)
!1442 = !DILocation(line: 395, column: 17, scope: !685)
!1443 = !DILocation(line: 396, column: 22, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 395, column: 28)
!1445 = distinct !DILexicalBlock(scope: !685, file: !1, line: 395, column: 17)
!1446 = !DILocation(line: 397, column: 24, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1444, file: !1, line: 397, column: 21)
!1448 = !DILocation(line: 397, column: 21, scope: !1444)
!1449 = !DILocation(line: 401, column: 17, scope: !1445)
!1450 = !DILocation(line: 389, column: 20, scope: !685)
!1451 = !DILocation(line: 403, column: 24, scope: !685)
!1452 = !DILocation(line: 388, column: 20, scope: !685)
!1453 = !DILocation(line: 404, column: 36, scope: !685)
!1454 = !{!1079, !1079, i64 0}
!1455 = !DILocation(line: 404, column: 18, scope: !685)
!1456 = !DILocation(line: 405, column: 20, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !685, file: !1, line: 405, column: 17)
!1458 = !DILocation(line: 405, column: 17, scope: !685)
!1459 = !DILocation(line: 408, column: 26, scope: !693)
!1460 = !DILocation(line: 408, column: 17, scope: !685)
!1461 = !DILocation(line: 414, column: 23, scope: !692)
!1462 = !DILocation(line: 415, column: 25, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !692, file: !1, line: 415, column: 21)
!1464 = !DILocation(line: 415, column: 21, scope: !692)
!1465 = !DILocation(line: 418, column: 24, scope: !692)
!1466 = !DILocation(line: 412, column: 27, scope: !692)
!1467 = !DILocation(line: 419, column: 26, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !692, file: !1, line: 419, column: 21)
!1469 = !DILocation(line: 419, column: 21, scope: !692)
!1470 = !DILocation(line: 421, column: 17, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !695, file: !1, discriminator: 1)
!1472 = !DILocation(line: 421, column: 17, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !695, file: !1, line: 421, column: 17)
!1474 = !DILocation(line: 421, column: 17, scope: !695)
!1475 = !DILocation(line: 421, column: 17, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 3)
!1477 = !DILocation(line: 424, column: 24, scope: !692)
!1478 = !DILocation(line: 425, column: 26, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !692, file: !1, line: 425, column: 21)
!1480 = !DILocation(line: 425, column: 21, scope: !692)
!1481 = !DILocation(line: 427, column: 17, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !697, file: !1, discriminator: 1)
!1483 = !DILocation(line: 427, column: 17, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !697, file: !1, line: 427, column: 17)
!1485 = !DILocation(line: 427, column: 17, scope: !697)
!1486 = !DILocation(line: 427, column: 17, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !1484, file: !1, discriminator: 3)
!1488 = !DILocation(line: 430, column: 24, scope: !692)
!1489 = !DILocation(line: 431, column: 26, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !692, file: !1, line: 431, column: 21)
!1491 = !DILocation(line: 431, column: 21, scope: !692)
!1492 = !DILocation(line: 433, column: 17, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !699, file: !1, discriminator: 1)
!1494 = !DILocation(line: 433, column: 17, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !699, file: !1, line: 433, column: 17)
!1496 = !DILocation(line: 433, column: 17, scope: !699)
!1497 = !DILocation(line: 433, column: 17, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1495, file: !1, discriminator: 3)
!1499 = !DILocation(line: 437, column: 17, scope: !685)
!1500 = !DILocation(line: 438, column: 19, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !685, file: !1, line: 438, column: 17)
!1502 = !DILocation(line: 438, column: 17, scope: !685)
!1503 = !DILocation(line: 440, column: 38, scope: !685)
!1504 = !DILocation(line: 440, column: 22, scope: !685)
!1505 = !DILocation(line: 440, column: 13, scope: !685)
!1506 = !DILocation(line: 442, column: 13, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !701, file: !1, discriminator: 1)
!1508 = !DILocation(line: 442, column: 13, scope: !704)
!1509 = !DILocation(line: 442, column: 13, scope: !701)
!1510 = !DILocation(line: 442, column: 13, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 4)
!1512 = !DILocation(line: 442, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !703, file: !1, line: 442, column: 13)
!1514 = !DILocation(line: 442, column: 13, scope: !703)
!1515 = !DILocation(line: 442, column: 13, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1513, file: !1, discriminator: 6)
!1517 = !DILocation(line: 443, column: 13, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!1519 = !DILocation(line: 443, column: 13, scope: !709)
!1520 = !DILocation(line: 443, column: 13, scope: !706)
!1521 = !DILocation(line: 443, column: 13, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 4)
!1523 = !DILocation(line: 443, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !708, file: !1, line: 443, column: 13)
!1525 = !DILocation(line: 443, column: 13, scope: !708)
!1526 = !DILocation(line: 443, column: 13, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1524, file: !1, discriminator: 6)
!1528 = !DILocation(line: 444, column: 13, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !711, file: !1, discriminator: 1)
!1530 = !DILocation(line: 444, column: 13, scope: !714)
!1531 = !DILocation(line: 444, column: 13, scope: !711)
!1532 = !DILocation(line: 444, column: 13, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !713, file: !1, discriminator: 4)
!1534 = !DILocation(line: 444, column: 13, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !713, file: !1, line: 444, column: 13)
!1536 = !DILocation(line: 444, column: 13, scope: !713)
!1537 = !DILocation(line: 444, column: 13, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1535, file: !1, discriminator: 6)
!1539 = !DILocation(line: 447, column: 5, scope: !678)
!1540 = !DILocation(line: 446, column: 9, scope: !677)
!1541 = !DILocation(line: 454, column: 5, scope: !668)
!1542 = !DILocation(line: 456, column: 15, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !668, file: !1, line: 454, column: 17)
!1544 = !DILocation(line: 457, column: 9, scope: !1543)
!1545 = !DILocation(line: 459, column: 15, scope: !1543)
!1546 = !DILocation(line: 460, column: 9, scope: !1543)
!1547 = !DILocation(line: 462, column: 15, scope: !1543)
!1548 = !DILocation(line: 463, column: 9, scope: !1543)
!1549 = !DILocation(line: 465, column: 15, scope: !1543)
!1550 = !DILocation(line: 466, column: 9, scope: !1543)
!1551 = !DILocation(line: 468, column: 15, scope: !1543)
!1552 = !DILocation(line: 469, column: 9, scope: !1543)
!1553 = !DILocation(line: 471, column: 15, scope: !1543)
!1554 = !DILocation(line: 472, column: 9, scope: !1543)
!1555 = !DILocation(line: 475, column: 12, scope: !668)
!1556 = !DILocation(line: 475, column: 5, scope: !668)
!1557 = !DILocation(line: 478, column: 5, scope: !668)
!1558 = !DILocation(line: 479, column: 1, scope: !668)
!1559 = !DILocation(line: 1518, column: 25, scope: !937)
!1560 = !DILocation(line: 1518, column: 41, scope: !937)
!1561 = !DILocation(line: 1518, column: 57, scope: !937)
!1562 = !DILocation(line: 1520, column: 5, scope: !937)
!1563 = !DILocation(line: 1520, column: 15, scope: !937)
!1564 = !DILocation(line: 1523, column: 14, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !937, file: !1, line: 1523, column: 9)
!1566 = !DILocation(line: 1523, column: 9, scope: !937)
!1567 = !DILocation(line: 1540, column: 33, scope: !945, inlinedAt: !1568)
!1568 = distinct !DILocation(line: 1524, column: 16, scope: !1565)
!1569 = !DILocation(line: 1540, column: 49, scope: !945, inlinedAt: !1568)
!1570 = !DILocation(line: 1540, column: 65, scope: !945, inlinedAt: !1568)
!1571 = !DILocation(line: 1518, column: 25, scope: !937, inlinedAt: !1572)
!1572 = distinct !DILocation(line: 1545, column: 11, scope: !945, inlinedAt: !1568)
!1573 = !DILocation(line: 1518, column: 41, scope: !937, inlinedAt: !1572)
!1574 = !DILocation(line: 1518, column: 57, scope: !937, inlinedAt: !1572)
!1575 = !DILocation(line: 1520, column: 5, scope: !937, inlinedAt: !1572)
!1576 = !DILocation(line: 1520, column: 15, scope: !937, inlinedAt: !1572)
!1577 = !DILocation(line: 1525, column: 10, scope: !1578, inlinedAt: !1572)
!1578 = distinct !DILexicalBlock(scope: !937, file: !1, line: 1525, column: 9)
!1579 = !DILocation(line: 1525, column: 9, scope: !937, inlinedAt: !1572)
!1580 = !DILocation(line: 1532, column: 1, scope: !937, inlinedAt: !1572)
!1581 = !DILocation(line: 1542, column: 15, scope: !945, inlinedAt: !1568)
!1582 = !DILocation(line: 1546, column: 9, scope: !945, inlinedAt: !1568)
!1583 = !DILocation(line: 1529, column: 9, scope: !1584, inlinedAt: !1572)
!1584 = distinct !DILexicalBlock(scope: !937, file: !1, line: 1529, column: 9)
!1585 = !DILocation(line: 1529, column: 9, scope: !937, inlinedAt: !1572)
!1586 = !DILocation(line: 1530, column: 16, scope: !1584, inlinedAt: !1572)
!1587 = !DILocation(line: 1530, column: 9, scope: !1584, inlinedAt: !1572)
!1588 = !DILocation(line: 1531, column: 12, scope: !937, inlinedAt: !1572)
!1589 = !DILocation(line: 1531, column: 5, scope: !937, inlinedAt: !1572)
!1590 = !DILocation(line: 1545, column: 11, scope: !945, inlinedAt: !1568)
!1591 = !DILocation(line: 1546, column: 13, scope: !1592, inlinedAt: !1568)
!1592 = distinct !DILexicalBlock(scope: !945, file: !1, line: 1546, column: 9)
!1593 = !DILocation(line: 1549, column: 20, scope: !945, inlinedAt: !1568)
!1594 = !{!1143, !1047, i64 304}
!1595 = !DILocation(line: 1549, column: 14, scope: !945, inlinedAt: !1568)
!1596 = !DILocation(line: 1542, column: 21, scope: !945, inlinedAt: !1568)
!1597 = !DILocation(line: 1550, column: 16, scope: !955, inlinedAt: !1568)
!1598 = !DILocation(line: 1550, column: 9, scope: !945, inlinedAt: !1568)
!1599 = !DILocation(line: 1551, column: 9, scope: !1600, inlinedAt: !1568)
!1600 = !DILexicalBlockFile(scope: !953, file: !1, discriminator: 1)
!1601 = !DILocation(line: 1551, column: 9, scope: !1602, inlinedAt: !1568)
!1602 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1551, column: 9)
!1603 = !DILocation(line: 1551, column: 9, scope: !953, inlinedAt: !1568)
!1604 = !DILocation(line: 1551, column: 9, scope: !1605, inlinedAt: !1568)
!1605 = !DILexicalBlockFile(scope: !1602, file: !1, discriminator: 3)
!1606 = !DILocation(line: 1524, column: 16, scope: !1565)
!1607 = !DILocation(line: 1554, column: 66, scope: !945, inlinedAt: !1568)
!1608 = !DILocation(line: 1554, column: 40, scope: !945, inlinedAt: !1568)
!1609 = !DILocation(line: 1555, column: 5, scope: !1610, inlinedAt: !1568)
!1610 = !DILexicalBlockFile(scope: !957, file: !1, discriminator: 1)
!1611 = !DILocation(line: 1555, column: 5, scope: !1612, inlinedAt: !1568)
!1612 = distinct !DILexicalBlock(scope: !957, file: !1, line: 1555, column: 5)
!1613 = !DILocation(line: 1555, column: 5, scope: !957, inlinedAt: !1568)
!1614 = !DILocation(line: 1555, column: 5, scope: !1615, inlinedAt: !1568)
!1615 = !DILexicalBlockFile(scope: !1612, file: !1, discriminator: 3)
!1616 = !DILocation(line: 1525, column: 10, scope: !1578)
!1617 = !DILocation(line: 1525, column: 9, scope: !937)
!1618 = !DILocation(line: 1529, column: 9, scope: !1584)
!1619 = !DILocation(line: 1529, column: 9, scope: !937)
!1620 = !DILocation(line: 1530, column: 16, scope: !1584)
!1621 = !DILocation(line: 1530, column: 9, scope: !1584)
!1622 = !DILocation(line: 1531, column: 12, scope: !937)
!1623 = !DILocation(line: 1531, column: 5, scope: !937)
!1624 = !DILocation(line: 1532, column: 1, scope: !937)
!1625 = !DILocation(line: 1877, column: 9, scope: !458)
!1626 = !DILocation(line: 1877, column: 16, scope: !458)
!1627 = !DILocation(line: 1878, column: 13, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !458, file: !1, line: 1878, column: 13)
!1629 = !DILocation(line: 1878, column: 63, scope: !1628)
!1630 = !DILocation(line: 1878, column: 13, scope: !458)
!1631 = !DILocation(line: 1879, column: 36, scope: !1628)
!1632 = !DILocation(line: 1879, column: 13, scope: !1628)
!1633 = !DILocation(line: 1880, column: 18, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1628, file: !1, line: 1880, column: 18)
!1635 = !DILocation(line: 1880, column: 68, scope: !1634)
!1636 = !DILocation(line: 1880, column: 18, scope: !1628)
!1637 = !DILocation(line: 1881, column: 36, scope: !1634)
!1638 = !DILocation(line: 1881, column: 13, scope: !1634)
!1639 = !DILocation(line: 1883, column: 36, scope: !1634)
!1640 = !DILocation(line: 1903, column: 21, scope: !453)
!1641 = !DILocation(line: 1884, column: 5, scope: !453)
!1642 = !DILocation(line: 1891, column: 9, scope: !460)
!1643 = !DILocation(line: 1891, column: 15, scope: !460)
!1644 = !{!1645, !1645, i64 0}
!1645 = !{!"float", !1048, i64 0}
!1646 = !DILocation(line: 1892, column: 13, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !460, file: !1, line: 1892, column: 13)
!1648 = !DILocation(line: 1892, column: 47, scope: !1647)
!1649 = !DILocation(line: 1892, column: 13, scope: !460)
!1650 = !DILocation(line: 1893, column: 35, scope: !1647)
!1651 = !DILocation(line: 1893, column: 13, scope: !1647)
!1652 = !DILocation(line: 1894, column: 18, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1647, file: !1, line: 1894, column: 18)
!1654 = !DILocation(line: 1894, column: 52, scope: !1653)
!1655 = !DILocation(line: 1894, column: 18, scope: !1647)
!1656 = !DILocation(line: 1895, column: 35, scope: !1653)
!1657 = !DILocation(line: 1895, column: 13, scope: !1653)
!1658 = !DILocation(line: 1897, column: 35, scope: !1653)
!1659 = !DILocation(line: 1904, column: 20, scope: !453)
!1660 = !DILocation(line: 1898, column: 5, scope: !453)
!1661 = !DILocation(line: 1903, column: 19, scope: !453)
!1662 = !DILocation(line: 1904, column: 18, scope: !453)
!1663 = !DILocation(line: 1907, column: 23, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !453, file: !1, line: 1907, column: 9)
!1665 = !DILocation(line: 1907, column: 31, scope: !1664)
!1666 = !DILocation(line: 1907, column: 9, scope: !453)
!1667 = !DILocation(line: 1908, column: 13, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 1908, column: 13)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !1, line: 1907, column: 40)
!1670 = !DILocation(line: 1908, column: 73, scope: !1668)
!1671 = !DILocation(line: 1908, column: 13, scope: !1669)
!1672 = !DILocation(line: 1911, column: 5, scope: !453)
!1673 = !DILocation(line: 1912, column: 1, scope: !453)
!1674 = !DILocation(line: 1917, column: 24, scope: !461)
!1675 = !DILocation(line: 1917, column: 20, scope: !461)
!1676 = !DILocation(line: 1918, column: 13, scope: !461)
!1677 = !DILocation(line: 1918, column: 9, scope: !461)
!1678 = !DILocation(line: 1919, column: 5, scope: !461)
!1679 = !DILocation(line: 1920, column: 33, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !461, file: !1, line: 1919, column: 15)
!1681 = !DILocation(line: 1917, column: 36, scope: !461)
!1682 = !DILocation(line: 1921, column: 23, scope: !1680)
!1683 = !DILocation(line: 1921, column: 9, scope: !1680)
!1684 = !DILocation(line: 1924, column: 15, scope: !461)
!1685 = !DILocation(line: 1925, column: 13, scope: !461)
!1686 = !DILocation(line: 1926, column: 5, scope: !461)
!1687 = !DILocation(line: 1917, column: 24, scope: !461, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1932, column: 11, scope: !466)
!1689 = !DILocation(line: 1917, column: 20, scope: !461, inlinedAt: !1688)
!1690 = !DILocation(line: 1919, column: 5, scope: !461, inlinedAt: !1688)
!1691 = !DILocation(line: 1920, column: 33, scope: !1680, inlinedAt: !1688)
!1692 = !DILocation(line: 1932, column: 11, scope: !466)
!1693 = !DILocation(line: 1917, column: 36, scope: !461, inlinedAt: !1688)
!1694 = !DILocation(line: 1921, column: 23, scope: !1680, inlinedAt: !1688)
!1695 = !DILocation(line: 1921, column: 9, scope: !1680, inlinedAt: !1688)
!1696 = !DILocation(line: 1924, column: 15, scope: !461, inlinedAt: !1688)
!1697 = !DILocation(line: 1925, column: 13, scope: !461, inlinedAt: !1688)
!1698 = !DILocation(line: 1933, column: 1, scope: !466)
!1699 = !DILocation(line: 1937, column: 33, scope: !469)
!1700 = !DILocation(line: 1941, column: 28, scope: !469)
!1701 = !DILocation(line: 1939, column: 5, scope: !469)
!1702 = !DILocation(line: 1942, column: 1, scope: !469)
!1703 = !DILocation(line: 1949, column: 23, scope: !474)
!1704 = !DILocation(line: 1949, column: 41, scope: !474)
!1705 = !DILocation(line: 1949, column: 48, scope: !474)
!1706 = !DILocation(line: 2035, column: 14, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !490, file: !1, line: 2035, column: 13)
!1708 = !DILocation(line: 1951, column: 22, scope: !484)
!1709 = !DILocation(line: 1951, column: 9, scope: !474)
!1710 = !DILocation(line: 1953, column: 9, scope: !483)
!1711 = !DILocation(line: 1956, column: 13, scope: !483)
!1712 = !DILocation(line: 1958, column: 13, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1958, column: 13)
!1714 = !DILocation(line: 1959, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1713, file: !1, line: 1958, column: 17)
!1716 = !DILocation(line: 1958, column: 13, scope: !483)
!1717 = !DILocation(line: 1963, column: 15, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1963, column: 13)
!1719 = !DILocation(line: 1952, column: 23, scope: !483)
!1720 = !DILocation(line: 1965, column: 17, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1718, file: !1, line: 1963, column: 20)
!1722 = !DILocation(line: 1963, column: 13, scope: !483)
!1723 = !DILocation(line: 1953, column: 13, scope: !483)
!1724 = !DILocation(line: 1970, column: 13, scope: !483)
!1725 = !DILocation(line: 1954, column: 16, scope: !483)
!1726 = !DILocation(line: 1973, column: 17, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1973, column: 13)
!1728 = !DILocation(line: 1973, column: 27, scope: !1727)
!1729 = !DILocation(line: 1973, column: 22, scope: !1727)
!1730 = !DILocation(line: 1977, column: 20, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 1977, column: 18)
!1732 = !DILocation(line: 1977, column: 18, scope: !1727)
!1733 = !DILocation(line: 1975, column: 14, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1727, file: !1, line: 1973, column: 34)
!1735 = !DILocation(line: 1987, column: 18, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !483, file: !1, line: 1985, column: 13)
!1737 = !DILocation(line: 1980, column: 29, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 1979, column: 14)
!1739 = !DILocation(line: 1980, column: 13, scope: !1738)
!1740 = !DILocation(line: 1982, column: 13, scope: !1738)
!1741 = !DILocation(line: 1974, column: 15, scope: !1734)
!1742 = !DILocation(line: 1985, column: 15, scope: !1736)
!1743 = !DILocation(line: 1985, column: 13, scope: !483)
!1744 = !DILocation(line: 1987, column: 20, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1736, file: !1, line: 1987, column: 18)
!1746 = !DILocation(line: 1989, column: 30, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 1987, column: 28)
!1748 = !DILocation(line: 1989, column: 17, scope: !1747)
!1749 = !DILocation(line: 1990, column: 15, scope: !1747)
!1750 = !DILocation(line: 1991, column: 9, scope: !1747)
!1751 = !DILocation(line: 1992, column: 22, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1745, file: !1, line: 1992, column: 18)
!1753 = !DILocation(line: 1992, column: 32, scope: !1752)
!1754 = !DILocation(line: 1992, column: 27, scope: !1752)
!1755 = !DILocation(line: 1993, column: 15, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !1, line: 1992, column: 41)
!1757 = !DILocation(line: 1994, column: 15, scope: !1756)
!1758 = !DILocation(line: 1995, column: 9, scope: !1756)
!1759 = !DILocation(line: 2003, column: 13, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1761, file: !1, line: 2000, column: 26)
!1761 = distinct !DILexicalBlock(scope: !483, file: !1, line: 2000, column: 13)
!1762 = !DILocation(line: 1997, column: 11, scope: !483)
!1763 = !DILocation(line: 1998, column: 34, scope: !483)
!1764 = !DILocation(line: 1998, column: 17, scope: !483)
!1765 = !DILocation(line: 1955, column: 22, scope: !483)
!1766 = !DILocation(line: 2000, column: 19, scope: !1761)
!1767 = !DILocation(line: 2000, column: 13, scope: !483)
!1768 = !DILocation(line: 2004, column: 19, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1760, file: !1, line: 2004, column: 17)
!1770 = !DILocation(line: 2004, column: 17, scope: !1760)
!1771 = !DILocation(line: 2009, column: 29, scope: !483)
!1772 = !DILocation(line: 2009, column: 31, scope: !483)
!1773 = !DILocation(line: 2009, column: 26, scope: !483)
!1774 = !DILocation(line: 2009, column: 14, scope: !483)
!1775 = !DILocation(line: 2009, column: 12, scope: !483)
!1776 = !DILocation(line: 2010, column: 11, scope: !483)
!1777 = !DILocation(line: 2013, column: 31, scope: !483)
!1778 = !DILocation(line: 2013, column: 46, scope: !483)
!1779 = !DILocation(line: 2013, column: 37, scope: !483)
!1780 = !DILocation(line: 2013, column: 14, scope: !483)
!1781 = !DILocation(line: 2013, column: 12, scope: !483)
!1782 = !DILocation(line: 2014, column: 11, scope: !483)
!1783 = !DILocation(line: 2017, column: 21, scope: !483)
!1784 = !DILocation(line: 2017, column: 14, scope: !483)
!1785 = !DILocation(line: 2017, column: 12, scope: !483)
!1786 = !DILocation(line: 2018, column: 11, scope: !483)
!1787 = !DILocation(line: 2021, column: 14, scope: !483)
!1788 = !DILocation(line: 2021, column: 12, scope: !483)
!1789 = !DILocation(line: 2024, column: 9, scope: !483)
!1790 = !DILocation(line: 2026, column: 5, scope: !484)
!1791 = !DILocation(line: 2028, column: 19, scope: !490)
!1792 = !DILocation(line: 2028, column: 15, scope: !490)
!1793 = !DILocation(line: 2029, column: 21, scope: !490)
!1794 = !DILocation(line: 2030, column: 16, scope: !490)
!1795 = !DILocation(line: 2032, column: 13, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 1)
!1797 = distinct !DILexicalBlock(scope: !490, file: !1, line: 2032, column: 13)
!1798 = !DILocation(line: 2042, column: 18, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 2041, column: 33)
!1800 = distinct !DILexicalBlock(scope: !1801, file: !1, line: 2041, column: 9)
!1801 = distinct !DILexicalBlock(scope: !490, file: !1, line: 2041, column: 9)
!1802 = !DILocation(line: 2032, column: 35, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1797, file: !1, discriminator: 10)
!1804 = !DILocation(line: 2035, column: 27, scope: !1707)
!1805 = !DILocation(line: 2035, column: 60, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1707, file: !1, discriminator: 1)
!1807 = !DILocation(line: 2035, column: 56, scope: !1707)
!1808 = !DILocation(line: 2036, column: 56, scope: !1707)
!1809 = !DILocation(line: 2037, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1707, file: !1, line: 2036, column: 64)
!1811 = !DILocation(line: 2042, column: 16, scope: !1799)
!1812 = !DILocation(line: 2043, column: 15, scope: !1799)
!1813 = !DILocation(line: 2048, column: 21, scope: !474)
!1814 = !DILocation(line: 2048, column: 5, scope: !474)
!1815 = !DILocation(line: 2050, column: 5, scope: !474)
!1816 = !DILocation(line: 2051, column: 1, scope: !474)
!1817 = !DILocation(line: 2054, column: 23, scope: !494)
!1818 = !DILocation(line: 2054, column: 41, scope: !494)
!1819 = !DILocation(line: 2054, column: 48, scope: !494)
!1820 = !DILocation(line: 2056, column: 9, scope: !501)
!1821 = !DILocation(line: 2056, column: 23, scope: !501)
!1822 = !DILocation(line: 2056, column: 9, scope: !494)
!1823 = !DILocation(line: 2058, column: 9, scope: !500)
!1824 = !DILocation(line: 2061, column: 13, scope: !500)
!1825 = !DILocation(line: 2063, column: 13, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !500, file: !1, line: 2063, column: 13)
!1827 = !DILocation(line: 2064, column: 15, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1826, file: !1, line: 2063, column: 17)
!1829 = !DILocation(line: 2063, column: 13, scope: !500)
!1830 = !DILocation(line: 2068, column: 15, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !500, file: !1, line: 2068, column: 13)
!1832 = !DILocation(line: 2057, column: 23, scope: !500)
!1833 = !DILocation(line: 2070, column: 17, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !1, line: 2068, column: 20)
!1835 = !DILocation(line: 2068, column: 13, scope: !500)
!1836 = !DILocation(line: 2058, column: 13, scope: !500)
!1837 = !DILocation(line: 2075, column: 13, scope: !500)
!1838 = !DILocation(line: 2059, column: 16, scope: !500)
!1839 = !DILocation(line: 2078, column: 17, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !500, file: !1, line: 2078, column: 13)
!1841 = !DILocation(line: 2078, column: 27, scope: !1840)
!1842 = !DILocation(line: 2078, column: 22, scope: !1840)
!1843 = !DILocation(line: 2082, column: 20, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 2082, column: 18)
!1845 = !DILocation(line: 2082, column: 18, scope: !1840)
!1846 = !DILocation(line: 2080, column: 14, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1840, file: !1, line: 2078, column: 34)
!1848 = !DILocation(line: 2092, column: 18, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !500, file: !1, line: 2090, column: 13)
!1850 = !DILocation(line: 2085, column: 29, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 2084, column: 14)
!1852 = !DILocation(line: 2085, column: 13, scope: !1851)
!1853 = !DILocation(line: 2087, column: 13, scope: !1851)
!1854 = !DILocation(line: 2079, column: 15, scope: !1847)
!1855 = !DILocation(line: 2090, column: 15, scope: !1849)
!1856 = !DILocation(line: 2090, column: 13, scope: !500)
!1857 = !DILocation(line: 2092, column: 20, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1849, file: !1, line: 2092, column: 18)
!1859 = !DILocation(line: 2094, column: 31, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 2092, column: 29)
!1861 = !DILocation(line: 2094, column: 17, scope: !1860)
!1862 = !DILocation(line: 2095, column: 15, scope: !1860)
!1863 = !DILocation(line: 2096, column: 9, scope: !1860)
!1864 = !DILocation(line: 2097, column: 22, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1858, file: !1, line: 2097, column: 18)
!1866 = !DILocation(line: 2097, column: 32, scope: !1865)
!1867 = !DILocation(line: 2097, column: 27, scope: !1865)
!1868 = !DILocation(line: 2098, column: 15, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !1, line: 2097, column: 41)
!1870 = !DILocation(line: 2099, column: 15, scope: !1869)
!1871 = !DILocation(line: 2100, column: 9, scope: !1869)
!1872 = !DILocation(line: 2118, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 2115, column: 28)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 2115, column: 17)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !1, line: 2111, column: 24)
!1876 = distinct !DILexicalBlock(scope: !500, file: !1, line: 2111, column: 13)
!1877 = !DILocation(line: 2103, column: 11, scope: !500)
!1878 = !DILocation(line: 2104, column: 15, scope: !500)
!1879 = !DILocation(line: 2060, column: 22, scope: !500)
!1880 = !DILocation(line: 2107, column: 14, scope: !500)
!1881 = !DILocation(line: 2107, column: 11, scope: !500)
!1882 = !DILocation(line: 2108, column: 11, scope: !500)
!1883 = !DILocation(line: 2109, column: 32, scope: !500)
!1884 = !DILocation(line: 2109, column: 15, scope: !500)
!1885 = !DILocation(line: 2060, column: 27, scope: !500)
!1886 = !DILocation(line: 2111, column: 17, scope: !1876)
!1887 = !DILocation(line: 2111, column: 13, scope: !500)
!1888 = !DILocation(line: 2114, column: 13, scope: !1875)
!1889 = !DILocation(line: 2115, column: 21, scope: !1874)
!1890 = !DILocation(line: 2115, column: 17, scope: !1875)
!1891 = !DILocation(line: 2119, column: 23, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 2119, column: 21)
!1893 = !DILocation(line: 2119, column: 21, scope: !1873)
!1894 = !DILocation(line: 2125, column: 29, scope: !500)
!1895 = !DILocation(line: 2125, column: 31, scope: !500)
!1896 = !DILocation(line: 2125, column: 26, scope: !500)
!1897 = !DILocation(line: 2125, column: 14, scope: !500)
!1898 = !DILocation(line: 2125, column: 12, scope: !500)
!1899 = !DILocation(line: 2126, column: 11, scope: !500)
!1900 = !DILocation(line: 2129, column: 42, scope: !500)
!1901 = !DILocation(line: 2129, column: 55, scope: !500)
!1902 = !DILocation(line: 2129, column: 48, scope: !500)
!1903 = !DILocation(line: 2129, column: 14, scope: !500)
!1904 = !DILocation(line: 2129, column: 12, scope: !500)
!1905 = !DILocation(line: 2130, column: 11, scope: !500)
!1906 = !DILocation(line: 2133, column: 19, scope: !500)
!1907 = !DILocation(line: 2133, column: 14, scope: !500)
!1908 = !DILocation(line: 2133, column: 12, scope: !500)
!1909 = !DILocation(line: 2134, column: 11, scope: !500)
!1910 = !DILocation(line: 2137, column: 19, scope: !500)
!1911 = !DILocation(line: 2137, column: 14, scope: !500)
!1912 = !DILocation(line: 2137, column: 12, scope: !500)
!1913 = !DILocation(line: 2138, column: 11, scope: !500)
!1914 = !DILocation(line: 2141, column: 14, scope: !500)
!1915 = !DILocation(line: 2141, column: 12, scope: !500)
!1916 = !DILocation(line: 2142, column: 11, scope: !500)
!1917 = !DILocation(line: 2145, column: 19, scope: !500)
!1918 = !DILocation(line: 2145, column: 14, scope: !500)
!1919 = !DILocation(line: 2145, column: 12, scope: !500)
!1920 = !DILocation(line: 2146, column: 11, scope: !500)
!1921 = !DILocation(line: 2149, column: 19, scope: !500)
!1922 = !DILocation(line: 2149, column: 14, scope: !500)
!1923 = !DILocation(line: 2149, column: 12, scope: !500)
!1924 = !DILocation(line: 2150, column: 11, scope: !500)
!1925 = !DILocation(line: 2153, column: 14, scope: !500)
!1926 = !DILocation(line: 2153, column: 12, scope: !500)
!1927 = !DILocation(line: 2157, column: 9, scope: !500)
!1928 = !DILocation(line: 2160, column: 25, scope: !500)
!1929 = !DILocation(line: 2160, column: 9, scope: !500)
!1930 = !DILocation(line: 2162, column: 9, scope: !500)
!1931 = !DILocation(line: 2163, column: 5, scope: !501)
!1932 = !DILocation(line: 2175, column: 18, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 2174, column: 33)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1, line: 2174, column: 9)
!1935 = distinct !DILexicalBlock(scope: !508, file: !1, line: 2174, column: 9)
!1936 = !DILocation(line: 2166, column: 16, scope: !508)
!1937 = !DILocation(line: 2168, column: 28, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !508, file: !1, line: 2168, column: 13)
!1939 = !DILocation(line: 2168, column: 61, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1938, file: !1, discriminator: 1)
!1941 = !DILocation(line: 2168, column: 57, scope: !1938)
!1942 = !DILocation(line: 2169, column: 57, scope: !1938)
!1943 = !DILocation(line: 2170, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !1, line: 2169, column: 65)
!1945 = !DILocation(line: 2175, column: 16, scope: !1933)
!1946 = !DILocation(line: 2176, column: 15, scope: !1933)
!1947 = !DILocation(line: 2180, column: 1, scope: !494)
!1948 = !DILocation(line: 2183, column: 39, scope: !511)
!1949 = !DILocation(line: 2183, column: 46, scope: !511)
!1950 = !DILocation(line: 2185, column: 9, scope: !519)
!1951 = !DILocation(line: 2185, column: 22, scope: !519)
!1952 = !DILocation(line: 2185, column: 9, scope: !511)
!1953 = !DILocation(line: 2190, column: 13, scope: !518)
!1954 = !DILocation(line: 2192, column: 13, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !518, file: !1, line: 2192, column: 13)
!1956 = !DILocation(line: 2193, column: 15, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1955, file: !1, line: 2192, column: 17)
!1958 = !DILocation(line: 2192, column: 13, scope: !518)
!1959 = !DILocation(line: 2198, column: 17, scope: !518)
!1960 = !DILocation(line: 2199, column: 25, scope: !518)
!1961 = !DILocation(line: 2187, column: 13, scope: !518)
!1962 = !DILocation(line: 2200, column: 11, scope: !518)
!1963 = !DILocation(line: 2203, column: 15, scope: !518)
!1964 = !DILocation(line: 2203, column: 18, scope: !518)
!1965 = !DILocation(line: 2203, column: 11, scope: !518)
!1966 = !DILocation(line: 2188, column: 22, scope: !518)
!1967 = !DILocation(line: 2205, column: 11, scope: !518)
!1968 = !DILocation(line: 2207, column: 15, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !518, file: !1, line: 2207, column: 13)
!1970 = !DILocation(line: 2207, column: 13, scope: !518)
!1971 = !DILocation(line: 2209, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !1, line: 2207, column: 23)
!1973 = !DILocation(line: 2208, column: 13, scope: !1972)
!1974 = !DILocation(line: 2212, column: 13, scope: !1972)
!1975 = !DILocation(line: 2204, column: 25, scope: !518)
!1976 = !DILocation(line: 2216, column: 14, scope: !518)
!1977 = !DILocation(line: 2216, column: 17, scope: !518)
!1978 = !DILocation(line: 2216, column: 11, scope: !518)
!1979 = !DILocation(line: 2217, column: 11, scope: !518)
!1980 = !DILocation(line: 2220, column: 14, scope: !518)
!1981 = !DILocation(line: 2220, column: 11, scope: !518)
!1982 = !DILocation(line: 2222, column: 13, scope: !518)
!1983 = !DILocation(line: 2222, column: 23, scope: !518)
!1984 = !DILocation(line: 2189, column: 16, scope: !518)
!1985 = !DILocation(line: 2225, column: 15, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !518, file: !1, line: 2225, column: 13)
!1987 = !DILocation(line: 2228, column: 15, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1986, file: !1, line: 2227, column: 14)
!1989 = !DILocation(line: 2229, column: 15, scope: !1988)
!1990 = !DILocation(line: 2225, column: 13, scope: !518)
!1991 = !DILocation(line: 2231, column: 13, scope: !518)
!1992 = !DILocation(line: 2233, column: 13, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !518, file: !1, line: 2233, column: 13)
!1994 = !DILocation(line: 2234, column: 17, scope: !1993)
!1995 = !DILocation(line: 2233, column: 13, scope: !518)
!1996 = !DILocation(line: 2236, column: 9, scope: !518)
!1997 = !DILocation(line: 2241, column: 27, scope: !528)
!1998 = !DILocation(line: 2241, column: 60, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 1)
!2000 = !DILocation(line: 2241, column: 56, scope: !528)
!2001 = !DILocation(line: 2242, column: 56, scope: !528)
!2002 = !DILocation(line: 2243, column: 13, scope: !527)
!2003 = !DILocation(line: 2243, column: 18, scope: !527)
!2004 = !DILocation(line: 2244, column: 24, scope: !527)
!2005 = !DILocation(line: 2244, column: 19, scope: !527)
!2006 = !DILocation(line: 2245, column: 17, scope: !527)
!2007 = !DILocation(line: 2248, column: 26, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !1, line: 2247, column: 37)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !1, line: 2247, column: 13)
!2010 = distinct !DILexicalBlock(scope: !527, file: !1, line: 2247, column: 13)
!2011 = !DILocation(line: 2248, column: 24, scope: !2008)
!2012 = !DILocation(line: 2248, column: 19, scope: !2008)
!2013 = !DILocation(line: 2248, column: 22, scope: !2008)
!2014 = !DILocation(line: 2250, column: 13, scope: !527)
!2015 = !DILocation(line: 2239, column: 15, scope: !525)
!2016 = !DILocation(line: 2251, column: 9, scope: !528)
!2017 = !DILocation(line: 2251, column: 9, scope: !527)
!2018 = !DILocation(line: 2253, column: 13, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !528, file: !1, line: 2252, column: 14)
!2020 = !DILocation(line: 2256, column: 16, scope: !525)
!2021 = !DILocation(line: 2258, column: 1, scope: !511)
!2022 = !DILocation(line: 2261, column: 39, scope: !534)
!2023 = !DILocation(line: 2261, column: 46, scope: !534)
!2024 = !DILocation(line: 2263, column: 9, scope: !540)
!2025 = !DILocation(line: 2263, column: 23, scope: !540)
!2026 = !DILocation(line: 2263, column: 9, scope: !534)
!2027 = !DILocation(line: 2268, column: 13, scope: !539)
!2028 = !DILocation(line: 2270, column: 13, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !539, file: !1, line: 2270, column: 13)
!2030 = !DILocation(line: 2271, column: 15, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2029, file: !1, line: 2270, column: 17)
!2032 = !DILocation(line: 2270, column: 13, scope: !539)
!2033 = !DILocation(line: 2276, column: 17, scope: !539)
!2034 = !DILocation(line: 2277, column: 25, scope: !539)
!2035 = !DILocation(line: 2265, column: 13, scope: !539)
!2036 = !DILocation(line: 2279, column: 11, scope: !539)
!2037 = !DILocation(line: 2282, column: 15, scope: !539)
!2038 = !DILocation(line: 2282, column: 18, scope: !539)
!2039 = !DILocation(line: 2282, column: 11, scope: !539)
!2040 = !DILocation(line: 2266, column: 22, scope: !539)
!2041 = !DILocation(line: 2284, column: 11, scope: !539)
!2042 = !DILocation(line: 2286, column: 15, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !539, file: !1, line: 2286, column: 13)
!2044 = !DILocation(line: 2286, column: 13, scope: !539)
!2045 = !DILocation(line: 2288, column: 17, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 2286, column: 24)
!2047 = !DILocation(line: 2287, column: 13, scope: !2046)
!2048 = !DILocation(line: 2291, column: 13, scope: !2046)
!2049 = !DILocation(line: 2283, column: 26, scope: !539)
!2050 = !DILocation(line: 2295, column: 16, scope: !539)
!2051 = !DILocation(line: 2295, column: 19, scope: !539)
!2052 = !DILocation(line: 2295, column: 13, scope: !539)
!2053 = !DILocation(line: 2296, column: 11, scope: !539)
!2054 = !DILocation(line: 2299, column: 16, scope: !539)
!2055 = !DILocation(line: 2299, column: 20, scope: !539)
!2056 = !DILocation(line: 2299, column: 13, scope: !539)
!2057 = !DILocation(line: 2300, column: 11, scope: !539)
!2058 = !DILocation(line: 2303, column: 16, scope: !539)
!2059 = !DILocation(line: 2303, column: 13, scope: !539)
!2060 = !DILocation(line: 2304, column: 11, scope: !539)
!2061 = !DILocation(line: 2307, column: 15, scope: !539)
!2062 = !DILocation(line: 2307, column: 18, scope: !539)
!2063 = !DILocation(line: 2266, column: 27, scope: !539)
!2064 = !DILocation(line: 2308, column: 11, scope: !539)
!2065 = !DILocation(line: 2311, column: 16, scope: !539)
!2066 = !DILocation(line: 2311, column: 19, scope: !539)
!2067 = !DILocation(line: 2311, column: 13, scope: !539)
!2068 = !DILocation(line: 2312, column: 11, scope: !539)
!2069 = !DILocation(line: 2315, column: 16, scope: !539)
!2070 = !DILocation(line: 2315, column: 13, scope: !539)
!2071 = !DILocation(line: 2317, column: 13, scope: !539)
!2072 = !DILocation(line: 2317, column: 27, scope: !539)
!2073 = !DILocation(line: 2317, column: 39, scope: !539)
!2074 = !DILocation(line: 2317, column: 25, scope: !539)
!2075 = !DILocation(line: 2267, column: 16, scope: !539)
!2076 = !DILocation(line: 2318, column: 11, scope: !539)
!2077 = !DILocation(line: 2320, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !539, file: !1, line: 2320, column: 13)
!2079 = !DILocation(line: 2323, column: 15, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2078, file: !1, line: 2322, column: 14)
!2081 = !DILocation(line: 2324, column: 15, scope: !2080)
!2082 = !DILocation(line: 2320, column: 13, scope: !539)
!2083 = !DILocation(line: 2326, column: 13, scope: !539)
!2084 = !DILocation(line: 2328, column: 13, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !539, file: !1, line: 2328, column: 13)
!2086 = !DILocation(line: 2329, column: 17, scope: !2085)
!2087 = !DILocation(line: 2328, column: 13, scope: !539)
!2088 = !DILocation(line: 2331, column: 9, scope: !539)
!2089 = !DILocation(line: 2336, column: 28, scope: !550)
!2090 = !DILocation(line: 2336, column: 61, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!2092 = !DILocation(line: 2336, column: 57, scope: !550)
!2093 = !DILocation(line: 2337, column: 57, scope: !550)
!2094 = !DILocation(line: 2338, column: 13, scope: !549)
!2095 = !DILocation(line: 2338, column: 18, scope: !549)
!2096 = !DILocation(line: 2339, column: 24, scope: !549)
!2097 = !DILocation(line: 2339, column: 19, scope: !549)
!2098 = !DILocation(line: 2340, column: 17, scope: !549)
!2099 = !DILocation(line: 2343, column: 26, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !1, line: 2342, column: 37)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !1, line: 2342, column: 13)
!2102 = distinct !DILexicalBlock(scope: !549, file: !1, line: 2342, column: 13)
!2103 = !DILocation(line: 2343, column: 24, scope: !2100)
!2104 = !DILocation(line: 2343, column: 19, scope: !2100)
!2105 = !DILocation(line: 2343, column: 22, scope: !2100)
!2106 = !DILocation(line: 2345, column: 13, scope: !549)
!2107 = !DILocation(line: 2334, column: 16, scope: !547)
!2108 = !DILocation(line: 2346, column: 9, scope: !550)
!2109 = !DILocation(line: 2346, column: 9, scope: !549)
!2110 = !DILocation(line: 2348, column: 13, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !550, file: !1, line: 2347, column: 14)
!2112 = !DILocation(line: 2353, column: 1, scope: !534)
!2113 = !DILocation(line: 488, column: 21, scope: !568)
!2114 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 491, column: 5, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2117, file: !1, discriminator: 4)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !1, line: 491, column: 5)
!2118 = distinct !DILexicalBlock(scope: !568, file: !1, line: 491, column: 5)
!2119 = !DILocation(line: 488, column: 34, scope: !568)
!2120 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2121)
!2121 = distinct !DILocation(line: 492, column: 5, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 4)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 492, column: 5)
!2124 = distinct !DILexicalBlock(scope: !568, file: !1, line: 492, column: 5)
!2125 = !DILocation(line: 491, column: 5, scope: !2118)
!2126 = !DILocation(line: 491, column: 5, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2118, file: !1, discriminator: 2)
!2128 = !DILocation(line: 491, column: 5, scope: !568)
!2129 = !DILocation(line: 491, column: 5, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !1, discriminator: 3)
!2131 = !DILexicalBlockFile(scope: !2118, file: !1, discriminator: 1)
!2132 = !DILocation(line: 490, column: 12, scope: !568)
!2133 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2115)
!2134 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2115)
!2135 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2115)
!2136 = distinct !DILexicalBlock(scope: !574, file: !1, line: 247, column: 9)
!2137 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2115)
!2138 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2115)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 247, column: 28)
!2140 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2115)
!2141 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2115)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !1, line: 249, column: 13)
!2143 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2115)
!2144 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2115)
!2145 = !DILexicalBlockFile(scope: !2142, file: !1, discriminator: 1)
!2146 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2115)
!2147 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2115)
!2148 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 254, column: 10)
!2149 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2115)
!2150 = !DILocation(line: 492, column: 5, scope: !2124)
!2151 = !DILocation(line: 492, column: 5, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 2)
!2153 = !DILocation(line: 492, column: 5, scope: !568)
!2154 = !DILocation(line: 492, column: 5, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2156, file: !1, discriminator: 3)
!2156 = !DILexicalBlockFile(scope: !2124, file: !1, discriminator: 1)
!2157 = !DILocation(line: 490, column: 14, scope: !568)
!2158 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2121)
!2159 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2121)
!2160 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2121)
!2161 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2121)
!2162 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2121)
!2163 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2121)
!2164 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2121)
!2165 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2121)
!2166 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2121)
!2167 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2121)
!2168 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2121)
!2169 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2121)
!2170 = !DILocation(line: 494, column: 9, scope: !568)
!2171 = !DILocation(line: 494, column: 13, scope: !568)
!2172 = !DILocation(line: 494, column: 11, scope: !568)
!2173 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 496, column: 12, scope: !568)
!2175 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2174)
!2176 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2174)
!2177 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2174)
!2178 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2174)
!2179 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2174)
!2180 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2174)
!2181 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2174)
!2182 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2174)
!2183 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2174)
!2184 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2174)
!2185 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2174)
!2186 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2174)
!2187 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2174)
!2188 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2174)
!2189 = !DILocation(line: 496, column: 12, scope: !568)
!2190 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2174)
!2191 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2174)
!2192 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2174)
!2193 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2174)
!2194 = !DILocation(line: 497, column: 1, scope: !568)
!2195 = !DILocation(line: 500, column: 21, scope: !583)
!2196 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2197)
!2197 = distinct !DILocation(line: 503, column: 5, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !1, discriminator: 4)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 503, column: 5)
!2200 = distinct !DILexicalBlock(scope: !583, file: !1, line: 503, column: 5)
!2201 = !DILocation(line: 500, column: 34, scope: !583)
!2202 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 504, column: 5, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !1, discriminator: 4)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 504, column: 5)
!2206 = distinct !DILexicalBlock(scope: !583, file: !1, line: 504, column: 5)
!2207 = !DILocation(line: 503, column: 5, scope: !2200)
!2208 = !DILocation(line: 503, column: 5, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !2200, file: !1, discriminator: 2)
!2210 = !DILocation(line: 503, column: 5, scope: !583)
!2211 = !DILocation(line: 503, column: 5, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2213, file: !1, discriminator: 3)
!2213 = !DILexicalBlockFile(scope: !2200, file: !1, discriminator: 1)
!2214 = !DILocation(line: 502, column: 12, scope: !583)
!2215 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2197)
!2216 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2197)
!2217 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2197)
!2218 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2197)
!2219 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2197)
!2220 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2197)
!2221 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2197)
!2222 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2197)
!2223 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2197)
!2224 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2197)
!2225 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2197)
!2226 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2197)
!2227 = !DILocation(line: 504, column: 5, scope: !2206)
!2228 = !DILocation(line: 504, column: 5, scope: !2229)
!2229 = !DILexicalBlockFile(scope: !2206, file: !1, discriminator: 2)
!2230 = !DILocation(line: 504, column: 5, scope: !583)
!2231 = !DILocation(line: 504, column: 5, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 3)
!2233 = !DILexicalBlockFile(scope: !2206, file: !1, discriminator: 1)
!2234 = !DILocation(line: 502, column: 14, scope: !583)
!2235 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2203)
!2236 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2203)
!2237 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2203)
!2238 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2203)
!2239 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2203)
!2240 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2203)
!2241 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2203)
!2242 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2203)
!2243 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2203)
!2244 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2203)
!2245 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2203)
!2246 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2203)
!2247 = !DILocation(line: 506, column: 9, scope: !583)
!2248 = !DILocation(line: 506, column: 13, scope: !583)
!2249 = !DILocation(line: 506, column: 11, scope: !583)
!2250 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 508, column: 12, scope: !583)
!2252 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2251)
!2253 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2251)
!2254 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2251)
!2255 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2251)
!2256 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2251)
!2257 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2251)
!2258 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2251)
!2259 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2251)
!2260 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2251)
!2261 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2251)
!2262 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2251)
!2263 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2251)
!2264 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2251)
!2265 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2251)
!2266 = !DILocation(line: 508, column: 12, scope: !583)
!2267 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2251)
!2268 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2251)
!2269 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2251)
!2270 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2251)
!2271 = !DILocation(line: 509, column: 1, scope: !583)
!2272 = !DILocation(line: 512, column: 21, scope: !589)
!2273 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 515, column: 5, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !1, discriminator: 4)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 515, column: 5)
!2277 = distinct !DILexicalBlock(scope: !589, file: !1, line: 515, column: 5)
!2278 = !DILocation(line: 512, column: 34, scope: !589)
!2279 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 516, column: 5, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2282, file: !1, discriminator: 4)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !1, line: 516, column: 5)
!2283 = distinct !DILexicalBlock(scope: !589, file: !1, line: 516, column: 5)
!2284 = !DILocation(line: 515, column: 5, scope: !2277)
!2285 = !DILocation(line: 515, column: 5, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2277, file: !1, discriminator: 2)
!2287 = !DILocation(line: 515, column: 5, scope: !589)
!2288 = !DILocation(line: 515, column: 5, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2290, file: !1, discriminator: 3)
!2290 = !DILexicalBlockFile(scope: !2277, file: !1, discriminator: 1)
!2291 = !DILocation(line: 514, column: 12, scope: !589)
!2292 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2274)
!2293 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2274)
!2294 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2274)
!2295 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2274)
!2296 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2274)
!2297 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2274)
!2298 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2274)
!2299 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2274)
!2300 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2274)
!2301 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2274)
!2302 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2274)
!2303 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2274)
!2304 = !DILocation(line: 516, column: 5, scope: !2283)
!2305 = !DILocation(line: 516, column: 5, scope: !2306)
!2306 = !DILexicalBlockFile(scope: !2283, file: !1, discriminator: 2)
!2307 = !DILocation(line: 516, column: 5, scope: !589)
!2308 = !DILocation(line: 516, column: 5, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !1, discriminator: 3)
!2310 = !DILexicalBlockFile(scope: !2283, file: !1, discriminator: 1)
!2311 = !DILocation(line: 514, column: 14, scope: !589)
!2312 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2280)
!2313 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2280)
!2314 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2280)
!2315 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2280)
!2316 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2280)
!2317 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2280)
!2318 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2280)
!2319 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2280)
!2320 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2280)
!2321 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2280)
!2322 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2280)
!2323 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2280)
!2324 = !DILocation(line: 518, column: 9, scope: !589)
!2325 = !DILocation(line: 518, column: 13, scope: !589)
!2326 = !DILocation(line: 518, column: 11, scope: !589)
!2327 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 520, column: 12, scope: !589)
!2329 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2328)
!2330 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2328)
!2331 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2328)
!2332 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2328)
!2333 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2328)
!2334 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2328)
!2335 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2328)
!2336 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2328)
!2337 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2328)
!2338 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2328)
!2339 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2328)
!2340 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2328)
!2341 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2328)
!2342 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2328)
!2343 = !DILocation(line: 520, column: 12, scope: !589)
!2344 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2328)
!2345 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2328)
!2346 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2328)
!2347 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2328)
!2348 = !DILocation(line: 521, column: 1, scope: !589)
!2349 = !DILocation(line: 541, column: 21, scope: !595)
!2350 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 545, column: 5, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2353, file: !1, discriminator: 4)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !1, line: 545, column: 5)
!2354 = distinct !DILexicalBlock(scope: !595, file: !1, line: 545, column: 5)
!2355 = !DILocation(line: 541, column: 34, scope: !595)
!2356 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 546, column: 5, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2359, file: !1, discriminator: 4)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !1, line: 546, column: 5)
!2360 = distinct !DILexicalBlock(scope: !595, file: !1, line: 546, column: 5)
!2361 = !DILocation(line: 545, column: 5, scope: !2354)
!2362 = !DILocation(line: 545, column: 5, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 2)
!2364 = !DILocation(line: 545, column: 5, scope: !595)
!2365 = !DILocation(line: 545, column: 5, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2367, file: !1, discriminator: 3)
!2367 = !DILexicalBlockFile(scope: !2354, file: !1, discriminator: 1)
!2368 = !DILocation(line: 543, column: 12, scope: !595)
!2369 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2351)
!2370 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2351)
!2371 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2351)
!2372 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2351)
!2373 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2351)
!2374 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2351)
!2375 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2351)
!2376 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2351)
!2377 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2351)
!2378 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2351)
!2379 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2351)
!2380 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2351)
!2381 = !DILocation(line: 546, column: 5, scope: !2360)
!2382 = !DILocation(line: 546, column: 5, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 2)
!2384 = !DILocation(line: 546, column: 5, scope: !595)
!2385 = !DILocation(line: 546, column: 5, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !1, discriminator: 3)
!2387 = !DILexicalBlockFile(scope: !2360, file: !1, discriminator: 1)
!2388 = !DILocation(line: 543, column: 16, scope: !595)
!2389 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2357)
!2390 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2357)
!2391 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2357)
!2392 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2357)
!2393 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2357)
!2394 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2357)
!2395 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2357)
!2396 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2357)
!2397 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2357)
!2398 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2357)
!2399 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2357)
!2400 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2357)
!2401 = !DILocation(line: 547, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !595, file: !1, line: 547, column: 9)
!2403 = !DILocation(line: 547, column: 12, scope: !2402)
!2404 = !DILocation(line: 547, column: 9, scope: !595)
!2405 = !DILocation(line: 548, column: 25, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !1, line: 547, column: 20)
!2407 = !DILocation(line: 548, column: 9, scope: !2406)
!2408 = !DILocation(line: 550, column: 9, scope: !2406)
!2409 = !DILocation(line: 553, column: 16, scope: !595)
!2410 = !DILocation(line: 553, column: 11, scope: !595)
!2411 = !DILocation(line: 544, column: 12, scope: !595)
!2412 = !DILocation(line: 554, column: 9, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !595, file: !1, line: 554, column: 9)
!2414 = !DILocation(line: 554, column: 9, scope: !595)
!2415 = !DILocation(line: 556, column: 17, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !1, line: 556, column: 13)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 554, column: 14)
!2418 = !DILocation(line: 556, column: 30, scope: !2416)
!2419 = !DILocation(line: 556, column: 22, scope: !2416)
!2420 = !DILocation(line: 557, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !1, line: 556, column: 36)
!2422 = !DILocation(line: 556, column: 13, scope: !2417)
!2423 = !DILocation(line: 564, column: 15, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2413, file: !1, line: 560, column: 10)
!2425 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 567, column: 12, scope: !595)
!2427 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2426)
!2428 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2426)
!2429 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2426)
!2430 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2426)
!2431 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2426)
!2432 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2426)
!2433 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2426)
!2434 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2426)
!2435 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2426)
!2436 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2426)
!2437 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2426)
!2438 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2426)
!2439 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2426)
!2440 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2426)
!2441 = !DILocation(line: 567, column: 12, scope: !595)
!2442 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2426)
!2443 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2426)
!2444 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2426)
!2445 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2426)
!2446 = !DILocation(line: 568, column: 1, scope: !595)
!2447 = !DILocation(line: 571, column: 24, scope: !602)
!2448 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 575, column: 5, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2451, file: !1, discriminator: 4)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !1, line: 575, column: 5)
!2452 = distinct !DILexicalBlock(scope: !602, file: !1, line: 575, column: 5)
!2453 = !DILocation(line: 571, column: 37, scope: !602)
!2454 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 576, column: 5, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2457, file: !1, discriminator: 4)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 576, column: 5)
!2458 = distinct !DILexicalBlock(scope: !602, file: !1, line: 576, column: 5)
!2459 = !DILocation(line: 575, column: 5, scope: !2452)
!2460 = !DILocation(line: 575, column: 5, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2452, file: !1, discriminator: 2)
!2462 = !DILocation(line: 575, column: 5, scope: !602)
!2463 = !DILocation(line: 575, column: 5, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !1, discriminator: 3)
!2465 = !DILexicalBlockFile(scope: !2452, file: !1, discriminator: 1)
!2466 = !DILocation(line: 573, column: 12, scope: !602)
!2467 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2449)
!2468 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2449)
!2469 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2449)
!2470 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2449)
!2471 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2449)
!2472 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2449)
!2473 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2449)
!2474 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2449)
!2475 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2449)
!2476 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2449)
!2477 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2449)
!2478 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2449)
!2479 = !DILocation(line: 576, column: 5, scope: !2458)
!2480 = !DILocation(line: 576, column: 5, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 2)
!2482 = !DILocation(line: 576, column: 5, scope: !602)
!2483 = !DILocation(line: 576, column: 5, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !1, discriminator: 3)
!2485 = !DILexicalBlockFile(scope: !2458, file: !1, discriminator: 1)
!2486 = !DILocation(line: 573, column: 16, scope: !602)
!2487 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2455)
!2488 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2455)
!2489 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2455)
!2490 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2455)
!2491 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2455)
!2492 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2455)
!2493 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2455)
!2494 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2455)
!2495 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2455)
!2496 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2455)
!2497 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2455)
!2498 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2455)
!2499 = !DILocation(line: 577, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !602, file: !1, line: 577, column: 9)
!2501 = !DILocation(line: 577, column: 12, scope: !2500)
!2502 = !DILocation(line: 577, column: 9, scope: !602)
!2503 = !DILocation(line: 578, column: 25, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2500, file: !1, line: 577, column: 20)
!2505 = !DILocation(line: 578, column: 9, scope: !2504)
!2506 = !DILocation(line: 579, column: 9, scope: !2504)
!2507 = !DILocation(line: 582, column: 16, scope: !602)
!2508 = !DILocation(line: 582, column: 11, scope: !602)
!2509 = !DILocation(line: 574, column: 17, scope: !602)
!2510 = !DILocation(line: 589, column: 15, scope: !602)
!2511 = !DILocation(line: 589, column: 22, scope: !602)
!2512 = !DILocation(line: 574, column: 12, scope: !602)
!2513 = !DILocation(line: 590, column: 9, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !602, file: !1, line: 590, column: 9)
!2515 = !DILocation(line: 590, column: 9, scope: !602)
!2516 = !DILocation(line: 592, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !1, line: 592, column: 13)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 590, column: 14)
!2519 = !DILocation(line: 592, column: 30, scope: !2517)
!2520 = !DILocation(line: 592, column: 22, scope: !2517)
!2521 = !DILocation(line: 592, column: 13, scope: !2518)
!2522 = !DILocation(line: 593, column: 17, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2517, file: !1, line: 592, column: 36)
!2524 = !DILocation(line: 594, column: 17, scope: !2523)
!2525 = !DILocation(line: 595, column: 9, scope: !2523)
!2526 = !DILocation(line: 601, column: 15, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 597, column: 10)
!2528 = !DILocation(line: 604, column: 9, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !602, file: !1, line: 604, column: 9)
!2530 = !DILocation(line: 604, column: 9, scope: !602)
!2531 = !DILocation(line: 605, column: 20, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 604, column: 14)
!2533 = !DILocation(line: 574, column: 22, scope: !602)
!2534 = !DILocation(line: 606, column: 17, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2532, file: !1, line: 606, column: 13)
!2536 = !DILocation(line: 606, column: 28, scope: !2535)
!2537 = !DILocation(line: 606, column: 13, scope: !2532)
!2538 = !DILocation(line: 607, column: 22, scope: !2535)
!2539 = !DILocation(line: 607, column: 13, scope: !2535)
!2540 = !DILocation(line: 611, column: 37, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2529, file: !1, line: 609, column: 10)
!2542 = !DILocation(line: 611, column: 20, scope: !2541)
!2543 = !DILocation(line: 614, column: 12, scope: !602)
!2544 = !DILocation(line: 614, column: 5, scope: !602)
!2545 = !DILocation(line: 615, column: 1, scope: !602)
!2546 = !DILocation(line: 637, column: 21, scope: !611)
!2547 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 648, column: 5, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !1, discriminator: 4)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !1, line: 648, column: 5)
!2551 = distinct !DILexicalBlock(scope: !611, file: !1, line: 648, column: 5)
!2552 = !DILocation(line: 637, column: 34, scope: !611)
!2553 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 649, column: 5, scope: !2555)
!2555 = !DILexicalBlockFile(scope: !2556, file: !1, discriminator: 4)
!2556 = distinct !DILexicalBlock(scope: !2557, file: !1, line: 649, column: 5)
!2557 = distinct !DILexicalBlock(scope: !611, file: !1, line: 649, column: 5)
!2558 = !DILocation(line: 637, column: 47, scope: !611)
!2559 = !DILocation(line: 640, column: 9, scope: !611)
!2560 = !DILocation(line: 642, column: 23, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !611, file: !1, line: 642, column: 9)
!2562 = !DILocation(line: 642, column: 9, scope: !611)
!2563 = !DILocation(line: 643, column: 25, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !1, line: 642, column: 35)
!2565 = !DILocation(line: 643, column: 9, scope: !2564)
!2566 = !DILocation(line: 645, column: 9, scope: !2564)
!2567 = !DILocation(line: 648, column: 5, scope: !2551)
!2568 = !DILocation(line: 648, column: 5, scope: !2569)
!2569 = !DILexicalBlockFile(scope: !2551, file: !1, discriminator: 2)
!2570 = !DILocation(line: 648, column: 5, scope: !611)
!2571 = !DILocation(line: 648, column: 5, scope: !2572)
!2572 = !DILexicalBlockFile(scope: !2573, file: !1, discriminator: 3)
!2573 = !DILexicalBlockFile(scope: !2551, file: !1, discriminator: 1)
!2574 = !DILocation(line: 639, column: 12, scope: !611)
!2575 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2548)
!2576 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2548)
!2577 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2548)
!2578 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2548)
!2579 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2548)
!2580 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2548)
!2581 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2548)
!2582 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2548)
!2583 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2548)
!2584 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2548)
!2585 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2548)
!2586 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2548)
!2587 = !DILocation(line: 649, column: 5, scope: !2557)
!2588 = !DILocation(line: 649, column: 5, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2557, file: !1, discriminator: 2)
!2590 = !DILocation(line: 649, column: 5, scope: !611)
!2591 = !DILocation(line: 649, column: 5, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2593, file: !1, discriminator: 3)
!2593 = !DILexicalBlockFile(scope: !2557, file: !1, discriminator: 1)
!2594 = !DILocation(line: 639, column: 16, scope: !611)
!2595 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !2554)
!2596 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !2554)
!2597 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !2554)
!2598 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !2554)
!2599 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !2554)
!2600 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !2554)
!2601 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !2554)
!2602 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !2554)
!2603 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !2554)
!2604 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !2554)
!2605 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !2554)
!2606 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !2554)
!2607 = !DILocation(line: 652, column: 9, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !611, file: !1, line: 652, column: 9)
!2609 = !DILocation(line: 652, column: 12, scope: !2608)
!2610 = !DILocation(line: 652, column: 9, scope: !611)
!2611 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 653, column: 16, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !1, line: 652, column: 18)
!2614 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2612)
!2615 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2612)
!2616 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2612)
!2617 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2612)
!2618 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2612)
!2619 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2612)
!2620 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2612)
!2621 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2612)
!2622 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2612)
!2623 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2612)
!2624 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2612)
!2625 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2612)
!2626 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2612)
!2627 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2612)
!2628 = !DILocation(line: 653, column: 16, scope: !2613)
!2629 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2612)
!2630 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2612)
!2631 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2612)
!2632 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2612)
!2633 = !DILocation(line: 655, column: 9, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !1, discriminator: 3)
!2635 = distinct !DILexicalBlock(scope: !611, file: !1, line: 655, column: 9)
!2636 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 656, column: 16, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !1, line: 655, column: 24)
!2639 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2637)
!2640 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2637)
!2641 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2637)
!2642 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2637)
!2643 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2637)
!2644 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2637)
!2645 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2637)
!2646 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2637)
!2647 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2637)
!2648 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2637)
!2649 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2637)
!2650 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2637)
!2651 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2637)
!2652 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2637)
!2653 = !DILocation(line: 656, column: 16, scope: !2638)
!2654 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2637)
!2655 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2637)
!2656 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2637)
!2657 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2637)
!2658 = !DILocation(line: 658, column: 9, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2660, file: !1, discriminator: 3)
!2660 = distinct !DILexicalBlock(scope: !611, file: !1, line: 658, column: 9)
!2661 = !DILocation(line: 659, column: 38, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 658, column: 24)
!2663 = !DILocation(line: 659, column: 35, scope: !2662)
!2664 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 659, column: 16, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2667, file: !1, discriminator: 4)
!2667 = !DILexicalBlockFile(scope: !2662, file: !1, discriminator: 3)
!2668 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2665)
!2669 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2665)
!2670 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2665)
!2671 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2665)
!2672 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2665)
!2673 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2665)
!2674 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2665)
!2675 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2665)
!2676 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2665)
!2677 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2665)
!2678 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2665)
!2679 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2665)
!2680 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2665)
!2681 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2665)
!2682 = !DILocation(line: 659, column: 16, scope: !2666)
!2683 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2665)
!2684 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2665)
!2685 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2665)
!2686 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2665)
!2687 = !DILocation(line: 661, column: 9, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2689, file: !1, discriminator: 3)
!2689 = distinct !DILexicalBlock(scope: !611, file: !1, line: 661, column: 9)
!2690 = !DILocation(line: 668, column: 14, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 661, column: 29)
!2692 = !DILocation(line: 669, column: 16, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 669, column: 13)
!2694 = !DILocation(line: 669, column: 13, scope: !2691)
!2695 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 670, column: 20, scope: !2693)
!2697 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2696)
!2698 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2696)
!2699 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2696)
!2700 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2696)
!2701 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2696)
!2702 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2696)
!2703 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2696)
!2704 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2696)
!2705 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2696)
!2706 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2696)
!2707 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2696)
!2708 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2696)
!2709 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2696)
!2710 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2696)
!2711 = !DILocation(line: 670, column: 20, scope: !2693)
!2712 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2696)
!2713 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2696)
!2714 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2696)
!2715 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2696)
!2716 = !DILocation(line: 671, column: 22, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 671, column: 18)
!2718 = !DILocation(line: 671, column: 36, scope: !2717)
!2719 = !DILocation(line: 671, column: 29, scope: !2717)
!2720 = !DILocation(line: 671, column: 18, scope: !2693)
!2721 = !DILocation(line: 672, column: 39, scope: !2717)
!2722 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 672, column: 20, scope: !2717)
!2724 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2723)
!2725 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2723)
!2726 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2723)
!2727 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2723)
!2728 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2723)
!2729 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2723)
!2730 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2723)
!2731 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2723)
!2732 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2723)
!2733 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2723)
!2734 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2723)
!2735 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2723)
!2736 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2723)
!2737 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2723)
!2738 = !DILocation(line: 672, column: 20, scope: !2717)
!2739 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2723)
!2740 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2723)
!2741 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2723)
!2742 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2723)
!2743 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 674, column: 20, scope: !2717)
!2745 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2744)
!2746 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2744)
!2747 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2744)
!2748 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2744)
!2749 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2744)
!2750 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2744)
!2751 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2744)
!2752 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2744)
!2753 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2744)
!2754 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2744)
!2755 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2744)
!2756 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2744)
!2757 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2744)
!2758 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2744)
!2759 = !DILocation(line: 674, column: 20, scope: !2717)
!2760 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2744)
!2761 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2744)
!2762 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2744)
!2763 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2744)
!2764 = !DILocation(line: 676, column: 9, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !622, file: !1, discriminator: 3)
!2766 = !DILocation(line: 681, column: 25, scope: !621)
!2767 = !DILocation(line: 682, column: 16, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !621, file: !1, line: 682, column: 13)
!2769 = !DILocation(line: 682, column: 13, scope: !621)
!2770 = !DILocation(line: 683, column: 39, scope: !2768)
!2771 = !DILocation(line: 683, column: 56, scope: !2768)
!2772 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 683, column: 20, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2775, file: !1, discriminator: 4)
!2775 = !DILexicalBlockFile(scope: !2768, file: !1, discriminator: 3)
!2776 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2773)
!2777 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2773)
!2778 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2773)
!2779 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2773)
!2780 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2773)
!2781 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2773)
!2782 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2773)
!2783 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2773)
!2784 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2773)
!2785 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2773)
!2786 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2773)
!2787 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2773)
!2788 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2773)
!2789 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2773)
!2790 = !DILocation(line: 683, column: 20, scope: !2774)
!2791 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2773)
!2792 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2773)
!2793 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2773)
!2794 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2773)
!2795 = !DILocation(line: 685, column: 39, scope: !2768)
!2796 = !DILocation(line: 686, column: 39, scope: !2768)
!2797 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 685, column: 20, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !2800, file: !1, discriminator: 3)
!2800 = !DILexicalBlockFile(scope: !2768, file: !1, discriminator: 2)
!2801 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2798)
!2802 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2798)
!2803 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2798)
!2804 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2798)
!2805 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2798)
!2806 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2798)
!2807 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2798)
!2808 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2798)
!2809 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2798)
!2810 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2798)
!2811 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2798)
!2812 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2798)
!2813 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2798)
!2814 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2798)
!2815 = !DILocation(line: 685, column: 20, scope: !2799)
!2816 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2798)
!2817 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2798)
!2818 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2798)
!2819 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2798)
!2820 = !DILocation(line: 688, column: 12, scope: !625)
!2821 = !DILocation(line: 688, column: 9, scope: !611)
!2822 = !DILocation(line: 691, column: 25, scope: !624)
!2823 = !DILocation(line: 692, column: 16, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !624, file: !1, line: 692, column: 13)
!2825 = !DILocation(line: 692, column: 13, scope: !624)
!2826 = !DILocation(line: 693, column: 29, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !1, line: 692, column: 23)
!2828 = !DILocation(line: 693, column: 13, scope: !2827)
!2829 = !DILocation(line: 696, column: 13, scope: !2827)
!2830 = !DILocation(line: 699, column: 35, scope: !624)
!2831 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 699, column: 16, scope: !2833)
!2833 = !DILexicalBlockFile(scope: !2834, file: !1, discriminator: 4)
!2834 = !DILexicalBlockFile(scope: !624, file: !1, discriminator: 3)
!2835 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2832)
!2836 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2832)
!2837 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2832)
!2838 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2832)
!2839 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2832)
!2840 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2832)
!2841 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2832)
!2842 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2832)
!2843 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2832)
!2844 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2832)
!2845 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2832)
!2846 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2832)
!2847 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2832)
!2848 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2832)
!2849 = !DILocation(line: 699, column: 16, scope: !2833)
!2850 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2832)
!2851 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2832)
!2852 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2832)
!2853 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2832)
!2854 = !DILocation(line: 702, column: 12, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !611, file: !1, line: 702, column: 9)
!2856 = !DILocation(line: 702, column: 9, scope: !611)
!2857 = !DILocation(line: 706, column: 19, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !1, line: 706, column: 13)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !1, line: 702, column: 19)
!2860 = !DILocation(line: 706, column: 16, scope: !2858)
!2861 = !DILocation(line: 706, column: 13, scope: !2859)
!2862 = !DILocation(line: 710, column: 35, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !1, line: 706, column: 30)
!2864 = !DILocation(line: 710, column: 49, scope: !2863)
!2865 = !{!1293, !1047, i64 40}
!2866 = !DILocation(line: 710, column: 20, scope: !2863)
!2867 = !DILocation(line: 710, column: 13, scope: !2863)
!2868 = !DILocation(line: 716, column: 14, scope: !2859)
!2869 = !DILocation(line: 716, column: 12, scope: !2859)
!2870 = !DILocation(line: 717, column: 25, scope: !2859)
!2871 = !DILocation(line: 718, column: 5, scope: !2859)
!2872 = !DILocation(line: 720, column: 9, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !611, file: !1, line: 720, column: 9)
!2874 = !DILocation(line: 720, column: 12, scope: !2873)
!2875 = !DILocation(line: 720, column: 9, scope: !611)
!2876 = !DILocation(line: 732, column: 35, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2873, file: !1, line: 720, column: 20)
!2878 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 732, column: 16, scope: !2877)
!2880 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2879)
!2881 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2879)
!2882 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2879)
!2883 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2879)
!2884 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2879)
!2885 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2879)
!2886 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2879)
!2887 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2879)
!2888 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2879)
!2889 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2879)
!2890 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2879)
!2891 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2879)
!2892 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2879)
!2893 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2879)
!2894 = !DILocation(line: 732, column: 16, scope: !2877)
!2895 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2879)
!2896 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2879)
!2897 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2879)
!2898 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2879)
!2899 = !DILocation(line: 739, column: 5, scope: !611)
!2900 = !DILocation(line: 739, column: 11, scope: !611)
!2901 = !DILocation(line: 741, column: 10, scope: !611)
!2902 = !DILocation(line: 639, column: 20, scope: !611)
!2903 = !DILocation(line: 747, column: 9, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !611, file: !1, line: 747, column: 9)
!2905 = !DILocation(line: 743, column: 5, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2907, file: !1, discriminator: 1)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 743, column: 5)
!2908 = distinct !DILexicalBlock(scope: !611, file: !1, line: 743, column: 5)
!2909 = !DILocation(line: 743, column: 5, scope: !2908)
!2910 = !DILocation(line: 743, column: 5, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 2)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 743, column: 5)
!2913 = distinct !DILexicalBlock(scope: !2907, file: !1, line: 743, column: 5)
!2914 = !DILocation(line: 743, column: 5, scope: !2915)
!2915 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 5)
!2916 = !DILocation(line: 744, column: 9, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !611, file: !1, line: 744, column: 9)
!2918 = !DILocation(line: 745, column: 14, scope: !2917)
!2919 = !DILocation(line: 744, column: 9, scope: !611)
!2920 = !DILocation(line: 747, column: 9, scope: !611)
!2921 = !DILocation(line: 743, column: 5, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2923, file: !1, discriminator: 6)
!2923 = !DILexicalBlockFile(scope: !2912, file: !1, discriminator: 4)
!2924 = !DILocation(line: 743, column: 5, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 3)
!2926 = distinct !DILexicalBlock(scope: !2907, file: !1, line: 743, column: 5)
!2927 = !DILocation(line: 743, column: 5, scope: !2928)
!2928 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 10)
!2929 = !DILocation(line: 743, column: 5, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2926, file: !1, discriminator: 11)
!2931 = !DILocation(line: 751, column: 34, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2904, file: !1, line: 747, column: 21)
!2933 = !DILocation(line: 751, column: 46, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2932, file: !1, discriminator: 1)
!2935 = !DILocation(line: 752, column: 30, scope: !2932)
!2936 = !DILocation(line: 751, column: 28, scope: !2932)
!2937 = !DILocation(line: 751, column: 9, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2939, file: !1, discriminator: 3)
!2939 = !DILexicalBlockFile(scope: !2932, file: !1, discriminator: 2)
!2940 = !DILocation(line: 753, column: 9, scope: !2932)
!2941 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 755, column: 12, scope: !611)
!2943 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2942)
!2944 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2942)
!2945 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2942)
!2946 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2942)
!2947 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2942)
!2948 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2942)
!2949 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2942)
!2950 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2942)
!2951 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2942)
!2952 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2942)
!2953 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2942)
!2954 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2942)
!2955 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2942)
!2956 = !DILocation(line: 755, column: 12, scope: !611)
!2957 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2942)
!2958 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2942)
!2959 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2942)
!2960 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2942)
!2961 = !DILocation(line: 756, column: 1, scope: !611)
!2962 = !DILocation(line: 761, column: 26, scope: !626)
!2963 = !DILocation(line: 763, column: 35, scope: !626)
!2964 = !DILocation(line: 763, column: 31, scope: !626)
!2965 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 763, column: 12, scope: !626)
!2967 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2966)
!2968 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2966)
!2969 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2966)
!2970 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2966)
!2971 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2966)
!2972 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2966)
!2973 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2966)
!2974 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2966)
!2975 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2966)
!2976 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2966)
!2977 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2966)
!2978 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2966)
!2979 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2966)
!2980 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2966)
!2981 = !DILocation(line: 763, column: 12, scope: !626)
!2982 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2966)
!2983 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2966)
!2984 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2966)
!2985 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2966)
!2986 = !DILocation(line: 763, column: 5, scope: !626)
!2987 = !DILocation(line: 1019, column: 23, scope: !629)
!2988 = !DILocation(line: 1021, column: 9, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !629, file: !1, line: 1021, column: 9)
!2990 = !DILocation(line: 1021, column: 9, scope: !629)
!2991 = !DILocation(line: 1022, column: 9, scope: !2989)
!2992 = !DILocation(line: 1024, column: 54, scope: !2989)
!2993 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 1024, column: 13, scope: !2989)
!2995 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !2994)
!2996 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !2994)
!2997 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !2994)
!2998 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !2994)
!2999 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !2994)
!3000 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !2994)
!3001 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !2994)
!3002 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !2994)
!3003 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !2994)
!3004 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !2994)
!3005 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !2994)
!3006 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !2994)
!3007 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !2994)
!3008 = !DILocation(line: 1024, column: 13, scope: !2989)
!3009 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !2994)
!3010 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !2994)
!3011 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !2994)
!3012 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !2994)
!3013 = !DILocation(line: 1025, column: 5, scope: !629)
!3014 = !DILocation(line: 767, column: 26, scope: !632)
!3015 = !DILocation(line: 769, column: 39, scope: !632)
!3016 = !DILocation(line: 769, column: 31, scope: !632)
!3017 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 769, column: 12, scope: !632)
!3019 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3018)
!3020 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3018)
!3021 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3018)
!3022 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3018)
!3023 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3018)
!3024 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3018)
!3025 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3018)
!3026 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3018)
!3027 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3018)
!3028 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3018)
!3029 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3018)
!3030 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3018)
!3031 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3018)
!3032 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3018)
!3033 = !DILocation(line: 769, column: 12, scope: !632)
!3034 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3018)
!3035 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3018)
!3036 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3018)
!3037 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3018)
!3038 = !DILocation(line: 769, column: 5, scope: !632)
!3039 = !DILocation(line: 773, column: 27, scope: !635)
!3040 = !DILocation(line: 775, column: 15, scope: !635)
!3041 = !DILocation(line: 775, column: 23, scope: !635)
!3042 = !DILocation(line: 775, column: 5, scope: !635)
!3043 = !DILocation(line: 831, column: 23, scope: !640)
!3044 = !DILocation(line: 833, column: 16, scope: !640)
!3045 = !DILocation(line: 833, column: 12, scope: !640)
!3046 = !DILocation(line: 834, column: 5, scope: !640)
!3047 = !DILocation(line: 834, column: 12, scope: !640)
!3048 = !DILocation(line: 836, column: 11, scope: !640)
!3049 = !DILocation(line: 849, column: 20, scope: !647)
!3050 = !DILocation(line: 849, column: 18, scope: !647)
!3051 = !DILocation(line: 849, column: 43, scope: !647)
!3052 = !DILocation(line: 849, column: 30, scope: !647)
!3053 = !DILocation(line: 850, column: 29, scope: !646)
!3054 = !DILocation(line: 850, column: 20, scope: !646)
!3055 = !DILocation(line: 851, column: 16, scope: !646)
!3056 = !DILocation(line: 853, column: 12, scope: !640)
!3057 = !DILocation(line: 853, column: 5, scope: !640)
!3058 = !DILocation(line: 854, column: 1, scope: !640)
!3059 = !DILocation(line: 618, column: 27, scope: !649)
!3060 = !DILocation(line: 618, column: 40, scope: !649)
!3061 = !DILocation(line: 622, column: 9, scope: !649)
!3062 = !DILocation(line: 620, column: 15, scope: !649)
!3063 = !DILocation(line: 623, column: 11, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !649, file: !1, line: 623, column: 9)
!3065 = !DILocation(line: 623, column: 24, scope: !3064)
!3066 = !DILocation(line: 623, column: 19, scope: !3064)
!3067 = !DILocation(line: 626, column: 9, scope: !649)
!3068 = !DILocation(line: 620, column: 19, scope: !649)
!3069 = !DILocation(line: 627, column: 5, scope: !649)
!3070 = !DILocation(line: 628, column: 5, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !656, file: !1, discriminator: 1)
!3072 = !DILocation(line: 628, column: 5, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !656, file: !1, line: 628, column: 5)
!3074 = !DILocation(line: 628, column: 5, scope: !656)
!3075 = !DILocation(line: 628, column: 5, scope: !3076)
!3076 = !DILexicalBlockFile(scope: !3073, file: !1, discriminator: 3)
!3077 = !DILocation(line: 630, column: 1, scope: !649)
!3078 = !DILocation(line: 524, column: 21, scope: !657)
!3079 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 527, column: 5, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3082, file: !1, discriminator: 4)
!3082 = distinct !DILexicalBlock(scope: !3083, file: !1, line: 527, column: 5)
!3083 = distinct !DILexicalBlock(scope: !657, file: !1, line: 527, column: 5)
!3084 = !DILocation(line: 524, column: 34, scope: !657)
!3085 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 528, column: 5, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3088, file: !1, discriminator: 4)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !1, line: 528, column: 5)
!3089 = distinct !DILexicalBlock(scope: !657, file: !1, line: 528, column: 5)
!3090 = !DILocation(line: 527, column: 5, scope: !3083)
!3091 = !DILocation(line: 527, column: 5, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3083, file: !1, discriminator: 2)
!3093 = !DILocation(line: 527, column: 5, scope: !657)
!3094 = !DILocation(line: 527, column: 5, scope: !3095)
!3095 = !DILexicalBlockFile(scope: !3096, file: !1, discriminator: 3)
!3096 = !DILexicalBlockFile(scope: !3083, file: !1, discriminator: 1)
!3097 = !DILocation(line: 526, column: 12, scope: !657)
!3098 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !3080)
!3099 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !3080)
!3100 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !3080)
!3101 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !3080)
!3102 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !3080)
!3103 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !3080)
!3104 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !3080)
!3105 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !3080)
!3106 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !3080)
!3107 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !3080)
!3108 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !3080)
!3109 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !3080)
!3110 = !DILocation(line: 528, column: 5, scope: !3089)
!3111 = !DILocation(line: 528, column: 5, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3089, file: !1, discriminator: 2)
!3113 = !DILocation(line: 528, column: 5, scope: !657)
!3114 = !DILocation(line: 528, column: 5, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !3116, file: !1, discriminator: 3)
!3116 = !DILexicalBlockFile(scope: !3089, file: !1, discriminator: 1)
!3117 = !DILocation(line: 526, column: 14, scope: !657)
!3118 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !3086)
!3119 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !3086)
!3120 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !3086)
!3121 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !3086)
!3122 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !3086)
!3123 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !3086)
!3124 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !3086)
!3125 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !3086)
!3126 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !3086)
!3127 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !3086)
!3128 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !3086)
!3129 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !3086)
!3130 = !DILocation(line: 529, column: 9, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !657, file: !1, line: 529, column: 9)
!3132 = !DILocation(line: 529, column: 11, scope: !3131)
!3133 = !DILocation(line: 529, column: 9, scope: !657)
!3134 = !DILocation(line: 530, column: 25, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3131, file: !1, line: 529, column: 19)
!3136 = !DILocation(line: 530, column: 9, scope: !3135)
!3137 = !DILocation(line: 532, column: 9, scope: !3135)
!3138 = !DILocation(line: 535, column: 9, scope: !657)
!3139 = !DILocation(line: 535, column: 11, scope: !657)
!3140 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 537, column: 12, scope: !657)
!3142 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3141)
!3143 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3141)
!3144 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3141)
!3145 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3141)
!3146 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3141)
!3147 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3141)
!3148 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3141)
!3149 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3141)
!3150 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3141)
!3151 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3141)
!3152 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3141)
!3153 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3141)
!3154 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3141)
!3155 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3141)
!3156 = !DILocation(line: 537, column: 12, scope: !657)
!3157 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3141)
!3158 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3141)
!3159 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3141)
!3160 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3141)
!3161 = !DILocation(line: 538, column: 1, scope: !657)
!3162 = !DILocation(line: 973, column: 23, scope: !715)
!3163 = !DILocation(line: 973, column: 36, scope: !715)
!3164 = !DILocation(line: 976, column: 5, scope: !715)
!3165 = !DILocation(line: 976, column: 15, scope: !715)
!3166 = !DILocation(line: 979, column: 9, scope: !715)
!3167 = !DILocation(line: 975, column: 12, scope: !715)
!3168 = !DILocation(line: 980, column: 10, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !715, file: !1, line: 980, column: 9)
!3170 = !DILocation(line: 870, column: 26, scope: !723, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1013, column: 16, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !1, line: 1008, column: 14)
!3173 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1005, column: 9)
!3174 = !DILocation(line: 980, column: 9, scope: !715)
!3175 = !DILocation(line: 982, column: 9, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !715, file: !1, line: 982, column: 9)
!3177 = !DILocation(line: 982, column: 19, scope: !3176)
!3178 = !DILocation(line: 982, column: 9, scope: !715)
!3179 = !DILocation(line: 984, column: 19, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !1, line: 982, column: 28)
!3181 = !DILocation(line: 975, column: 15, scope: !715)
!3182 = !DILocation(line: 985, column: 19, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3180, file: !1, line: 985, column: 13)
!3184 = !DILocation(line: 985, column: 13, scope: !3183)
!3185 = !DILocation(line: 985, column: 29, scope: !3183)
!3186 = !DILocation(line: 985, column: 13, scope: !3180)
!3187 = !DILocation(line: 987, column: 34, scope: !3183)
!3188 = !DILocation(line: 987, column: 27, scope: !3183)
!3189 = !DILocation(line: 987, column: 26, scope: !3183)
!3190 = !DILocation(line: 987, column: 13, scope: !3183)
!3191 = !DILocation(line: 988, column: 16, scope: !3180)
!3192 = !DILocation(line: 988, column: 9, scope: !3180)
!3193 = !DILocation(line: 992, column: 15, scope: !715)
!3194 = !DILocation(line: 977, column: 16, scope: !715)
!3195 = !DILocation(line: 993, column: 17, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !715, file: !1, line: 993, column: 9)
!3197 = !DILocation(line: 993, column: 23, scope: !3196)
!3198 = !DILocation(line: 993, column: 26, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3196, file: !1, discriminator: 1)
!3200 = !DILocation(line: 993, column: 9, scope: !715)
!3201 = !DILocation(line: 997, column: 10, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3203, file: !1, discriminator: 3)
!3203 = distinct !DILexicalBlock(scope: !715, file: !1, line: 997, column: 9)
!3204 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 998, column: 16, scope: !3203)
!3206 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3205)
!3207 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3205)
!3208 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3205)
!3209 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3205)
!3210 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3205)
!3211 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3205)
!3212 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3205)
!3213 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3205)
!3214 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3205)
!3215 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3205)
!3216 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3205)
!3217 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3205)
!3218 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3205)
!3219 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3205)
!3220 = !DILocation(line: 998, column: 16, scope: !3203)
!3221 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3205)
!3222 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3205)
!3223 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3205)
!3224 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3205)
!3225 = !DILocation(line: 1005, column: 17, scope: !3173)
!3226 = !DILocation(line: 1005, column: 9, scope: !715)
!3227 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1007, column: 16, scope: !3173)
!3229 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3228)
!3230 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3228)
!3231 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3228)
!3232 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3228)
!3233 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3228)
!3234 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3228)
!3235 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3228)
!3236 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3228)
!3237 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3228)
!3238 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3228)
!3239 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3228)
!3240 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3228)
!3241 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3228)
!3242 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3228)
!3243 = !DILocation(line: 1007, column: 16, scope: !3173)
!3244 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3228)
!3245 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3228)
!3246 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3228)
!3247 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3228)
!3248 = !DILocation(line: 1008, column: 22, scope: !3172)
!3249 = !DILocation(line: 1008, column: 14, scope: !3173)
!3250 = !DILocation(line: 1010, column: 38, scope: !3172)
!3251 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 1010, column: 16, scope: !3172)
!3253 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3252)
!3254 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3252)
!3255 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3252)
!3256 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3252)
!3257 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3252)
!3258 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3252)
!3259 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3252)
!3260 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3252)
!3261 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3252)
!3262 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3252)
!3263 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3252)
!3264 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3252)
!3265 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3252)
!3266 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3252)
!3267 = !DILocation(line: 1010, column: 16, scope: !3172)
!3268 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3252)
!3269 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3252)
!3270 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3252)
!3271 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3252)
!3272 = !DILocation(line: 1013, column: 32, scope: !3172)
!3273 = !DILocation(line: 866, column: 21, scope: !723, inlinedAt: !3171)
!3274 = !DILocation(line: 866, column: 28, scope: !723, inlinedAt: !3171)
!3275 = !DILocation(line: 869, column: 24, scope: !723, inlinedAt: !3171)
!3276 = !DILocation(line: 870, column: 5, scope: !723, inlinedAt: !3171)
!3277 = !DILocation(line: 870, column: 42, scope: !723, inlinedAt: !3171)
!3278 = !DILocation(line: 871, column: 5, scope: !723, inlinedAt: !3171)
!3279 = !DILocation(line: 872, column: 15, scope: !723, inlinedAt: !3171)
!3280 = !DILocation(line: 876, column: 5, scope: !3281, inlinedAt: !3171)
!3281 = !DILexicalBlockFile(scope: !3282, file: !1, discriminator: 1)
!3282 = distinct !DILexicalBlock(scope: !723, file: !1, line: 876, column: 5)
!3283 = !DILocation(line: 873, column: 5, scope: !723, inlinedAt: !3171)
!3284 = !DILocation(line: 876, column: 5, scope: !3285, inlinedAt: !3171)
!3285 = distinct !DILexicalBlock(scope: !3282, file: !1, line: 876, column: 5)
!3286 = !DILocation(line: 876, column: 5, scope: !3282, inlinedAt: !3171)
!3287 = !DILocation(line: 870, column: 17, scope: !723, inlinedAt: !3171)
!3288 = !DILocation(line: 871, column: 9, scope: !723, inlinedAt: !3171)
!3289 = !DILocation(line: 871, column: 16, scope: !723, inlinedAt: !3171)
!3290 = !DILocation(line: 877, column: 11, scope: !723, inlinedAt: !3171)
!3291 = !DILocation(line: 878, column: 5, scope: !723, inlinedAt: !3171)
!3292 = !DILocation(line: 876, column: 5, scope: !3293, inlinedAt: !3171)
!3293 = !DILexicalBlockFile(scope: !3285, file: !1, discriminator: 2)
!3294 = !DILocation(line: 878, column: 5, scope: !3295, inlinedAt: !3171)
!3295 = !DILexicalBlockFile(scope: !3296, file: !1, discriminator: 1)
!3296 = distinct !DILexicalBlock(scope: !723, file: !1, line: 878, column: 5)
!3297 = !DILocation(line: 1013, column: 16, scope: !3172)
!3298 = !DILocation(line: 879, column: 13, scope: !3299, inlinedAt: !3171)
!3299 = distinct !DILexicalBlock(scope: !723, file: !1, line: 879, column: 9)
!3300 = !DILocation(line: 879, column: 9, scope: !723, inlinedAt: !3171)
!3301 = !DILocation(line: 880, column: 9, scope: !3302, inlinedAt: !3171)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !1, line: 879, column: 22)
!3303 = !DILocation(line: 881, column: 9, scope: !3302, inlinedAt: !3171)
!3304 = !DILocation(line: 886, column: 14, scope: !723, inlinedAt: !3171)
!3305 = !DILocation(line: 886, column: 22, scope: !723, inlinedAt: !3171)
!3306 = !DILocation(line: 869, column: 16, scope: !723, inlinedAt: !3171)
!3307 = !DILocation(line: 887, column: 16, scope: !3308, inlinedAt: !3171)
!3308 = distinct !DILexicalBlock(scope: !723, file: !1, line: 887, column: 9)
!3309 = !DILocation(line: 887, column: 20, scope: !3308, inlinedAt: !3171)
!3310 = !DILocation(line: 887, column: 9, scope: !723, inlinedAt: !3171)
!3311 = !DILocation(line: 889, column: 25, scope: !3312, inlinedAt: !3171)
!3312 = distinct !DILexicalBlock(scope: !3308, file: !1, line: 887, column: 32)
!3313 = !DILocation(line: 890, column: 19, scope: !3314, inlinedAt: !3171)
!3314 = distinct !DILexicalBlock(scope: !3312, file: !1, line: 890, column: 13)
!3315 = !DILocation(line: 890, column: 13, scope: !3312, inlinedAt: !3171)
!3316 = !DILocation(line: 891, column: 13, scope: !3317, inlinedAt: !3171)
!3317 = distinct !DILexicalBlock(scope: !3314, file: !1, line: 890, column: 28)
!3318 = !DILocation(line: 892, column: 13, scope: !3317, inlinedAt: !3171)
!3319 = !DILocation(line: 896, column: 49, scope: !723, inlinedAt: !3171)
!3320 = !DILocation(line: 897, column: 24, scope: !723, inlinedAt: !3171)
!3321 = !DILocation(line: 897, column: 32, scope: !723, inlinedAt: !3171)
!3322 = !DILocation(line: 897, column: 30, scope: !723, inlinedAt: !3171)
!3323 = !DILocation(line: 896, column: 5, scope: !723, inlinedAt: !3171)
!3324 = !DILocation(line: 900, column: 5, scope: !723, inlinedAt: !3171)
!3325 = !DILocation(line: 900, column: 11, scope: !723, inlinedAt: !3171)
!3326 = !DILocation(line: 901, column: 5, scope: !3327, inlinedAt: !3171)
!3327 = !DILexicalBlockFile(scope: !3328, file: !1, discriminator: 1)
!3328 = distinct !DILexicalBlock(scope: !723, file: !1, line: 901, column: 5)
!3329 = !DILocation(line: 901, column: 5, scope: !3330, inlinedAt: !3171)
!3330 = distinct !DILexicalBlock(scope: !3328, file: !1, line: 901, column: 5)
!3331 = !DILocation(line: 901, column: 5, scope: !3328, inlinedAt: !3171)
!3332 = !DILocation(line: 902, column: 15, scope: !723, inlinedAt: !3171)
!3333 = !DILocation(line: 903, column: 5, scope: !723, inlinedAt: !3171)
!3334 = !DILocation(line: 901, column: 5, scope: !3335, inlinedAt: !3171)
!3335 = !DILexicalBlockFile(scope: !3330, file: !1, discriminator: 2)
!3336 = !DILocation(line: 903, column: 5, scope: !3337, inlinedAt: !3171)
!3337 = !DILexicalBlockFile(scope: !3338, file: !1, discriminator: 1)
!3338 = distinct !DILexicalBlock(scope: !723, file: !1, line: 903, column: 5)
!3339 = !DILocation(line: 904, column: 9, scope: !3340, inlinedAt: !3171)
!3340 = distinct !DILexicalBlock(scope: !723, file: !1, line: 904, column: 9)
!3341 = !DILocation(line: 904, column: 15, scope: !3340, inlinedAt: !3171)
!3342 = !DILocation(line: 904, column: 25, scope: !3340, inlinedAt: !3171)
!3343 = !DILocation(line: 904, column: 28, scope: !3340, inlinedAt: !3171)
!3344 = !DILocation(line: 904, column: 42, scope: !3340, inlinedAt: !3171)
!3345 = !DILocation(line: 904, column: 9, scope: !723, inlinedAt: !3171)
!3346 = !DILocation(line: 905, column: 25, scope: !3340, inlinedAt: !3171)
!3347 = !DILocation(line: 905, column: 9, scope: !3340, inlinedAt: !3171)
!3348 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 908, column: 18, scope: !3340, inlinedAt: !3171)
!3350 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !3349)
!3351 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !3349)
!3352 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !3349)
!3353 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !3349)
!3354 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !3349)
!3355 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !3349)
!3356 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !3349)
!3357 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !3349)
!3358 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !3349)
!3359 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !3349)
!3360 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !3349)
!3361 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !3349)
!3362 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !3349)
!3363 = !DILocation(line: 908, column: 18, scope: !3340, inlinedAt: !3171)
!3364 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !3349)
!3365 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !3349)
!3366 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !3349)
!3367 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !3349)
!3368 = !DILocation(line: 911, column: 15, scope: !3369, inlinedAt: !3171)
!3369 = distinct !DILexicalBlock(scope: !723, file: !1, line: 911, column: 9)
!3370 = !DILocation(line: 911, column: 9, scope: !723, inlinedAt: !3171)
!3371 = !DILocation(line: 912, column: 9, scope: !3369, inlinedAt: !3171)
!3372 = !DILocation(line: 914, column: 5, scope: !723, inlinedAt: !3171)
!3373 = !DILocation(line: 915, column: 5, scope: !723, inlinedAt: !3171)
!3374 = !DILocation(line: 916, column: 1, scope: !723, inlinedAt: !3171)
!3375 = !DILocation(line: 1013, column: 9, scope: !3172)
!3376 = !DILocation(line: 1016, column: 1, scope: !715)
!3377 = !DILocation(line: 1424, column: 34, scope: !744)
!3378 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1443, column: 5, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3381, file: !1, discriminator: 4)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 1443, column: 5)
!3382 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1443, column: 5)
!3383 = !DILocation(line: 1424, column: 47, scope: !744)
!3384 = !DILocation(line: 1428, column: 5, scope: !744)
!3385 = !DILocation(line: 1432, column: 15, scope: !744)
!3386 = !DILocation(line: 1433, column: 15, scope: !744)
!3387 = !DILocation(line: 1434, column: 15, scope: !744)
!3388 = !DILocation(line: 1435, column: 15, scope: !744)
!3389 = !DILocation(line: 1436, column: 49, scope: !744)
!3390 = !DILocation(line: 1436, column: 22, scope: !744)
!3391 = !DILocation(line: 1443, column: 5, scope: !3382)
!3392 = !DILocation(line: 1443, column: 5, scope: !3393)
!3393 = !DILexicalBlockFile(scope: !3382, file: !1, discriminator: 2)
!3394 = !DILocation(line: 1443, column: 5, scope: !744)
!3395 = !DILocation(line: 1443, column: 5, scope: !3396)
!3396 = !DILexicalBlockFile(scope: !3397, file: !1, discriminator: 3)
!3397 = !DILexicalBlockFile(scope: !3382, file: !1, discriminator: 1)
!3398 = !DILocation(line: 1426, column: 12, scope: !744)
!3399 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !3379)
!3400 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !3379)
!3401 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !3379)
!3402 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !3379)
!3403 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !3379)
!3404 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !3379)
!3405 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !3379)
!3406 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !3379)
!3407 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !3379)
!3408 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !3379)
!3409 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !3379)
!3410 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !3379)
!3411 = !DILocation(line: 1445, column: 9, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3413, file: !1, discriminator: 3)
!3413 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1445, column: 9)
!3414 = !DILocation(line: 1446, column: 23, scope: !3415)
!3415 = distinct !DILexicalBlock(scope: !3413, file: !1, line: 1445, column: 31)
!3416 = !DILocation(line: 1446, column: 7, scope: !3415)
!3417 = !DILocation(line: 1448, column: 7, scope: !3415)
!3418 = !DILocation(line: 1450, column: 9, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !3420, file: !1, discriminator: 3)
!3420 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1450, column: 9)
!3421 = !DILocation(line: 1451, column: 23, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3420, file: !1, line: 1450, column: 26)
!3423 = !DILocation(line: 1451, column: 7, scope: !3422)
!3424 = !DILocation(line: 1453, column: 7, scope: !3422)
!3425 = !DILocation(line: 1428, column: 9, scope: !744)
!3426 = !DILocation(line: 1457, column: 18, scope: !744)
!3427 = !DILocation(line: 1427, column: 12, scope: !744)
!3428 = !DILocation(line: 1429, column: 9, scope: !744)
!3429 = !DILocation(line: 1460, column: 21, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !1, line: 1460, column: 5)
!3431 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1460, column: 5)
!3432 = !DILocation(line: 1460, column: 38, scope: !3430)
!3433 = !DILocation(line: 1460, column: 35, scope: !3430)
!3434 = !DILocation(line: 1460, column: 5, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !3431, file: !1, discriminator: 3)
!3436 = !DILocation(line: 1461, column: 20, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 1460, column: 63)
!3438 = !DILocation(line: 1462, column: 17, scope: !3437)
!3439 = !DILocation(line: 1468, column: 17, scope: !744)
!3440 = !DILocation(line: 1469, column: 19, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1469, column: 9)
!3442 = !DILocation(line: 1469, column: 9, scope: !744)
!3443 = !DILocation(line: 1472, column: 19, scope: !744)
!3444 = !DILocation(line: 1478, column: 9, scope: !763)
!3445 = !DILocation(line: 1473, column: 40, scope: !744)
!3446 = !DILocation(line: 1473, column: 35, scope: !744)
!3447 = !DILocation(line: 1473, column: 19, scope: !744)
!3448 = !DILocation(line: 1474, column: 21, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1474, column: 9)
!3450 = !DILocation(line: 1474, column: 9, scope: !744)
!3451 = !DILocation(line: 1431, column: 15, scope: !744)
!3452 = !DILocation(line: 1475, column: 5, scope: !744)
!3453 = !{!1293, !1047, i64 88}
!3454 = !DILocation(line: 1475, column: 5, scope: !3455)
!3455 = !DILexicalBlockFile(scope: !759, file: !1, discriminator: 1)
!3456 = !DILocation(line: 1475, column: 5, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !759, file: !1, line: 1475, column: 5)
!3458 = !DILocation(line: 1475, column: 5, scope: !759)
!3459 = !DILocation(line: 1475, column: 5, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3457, file: !1, discriminator: 3)
!3461 = !DILocation(line: 1477, column: 21, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !744, file: !1, line: 1477, column: 9)
!3463 = !DILocation(line: 1477, column: 9, scope: !744)
!3464 = !DILocation(line: 1478, column: 18, scope: !763)
!3465 = !DILocation(line: 1478, column: 9, scope: !744)
!3466 = !DILocation(line: 1479, column: 9, scope: !762)
!3467 = !{!1293, !1047, i64 16}
!3468 = !DILocation(line: 1479, column: 9, scope: !3469)
!3469 = !DILexicalBlockFile(scope: !761, file: !1, discriminator: 1)
!3470 = !DILocation(line: 1479, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !761, file: !1, line: 1479, column: 9)
!3472 = !DILocation(line: 1479, column: 9, scope: !761)
!3473 = !DILocation(line: 1479, column: 9, scope: !3474)
!3474 = !DILexicalBlockFile(scope: !3471, file: !1, discriminator: 3)
!3475 = !DILocation(line: 1481, column: 23, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !762, file: !1, line: 1481, column: 13)
!3477 = !DILocation(line: 1481, column: 13, scope: !762)
!3478 = !DILocation(line: 1484, column: 9, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !765, file: !1, discriminator: 1)
!3480 = !DILocation(line: 1484, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !765, file: !1, line: 1484, column: 9)
!3482 = !DILocation(line: 1484, column: 9, scope: !765)
!3483 = !DILocation(line: 1484, column: 9, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3481, file: !1, discriminator: 3)
!3485 = !DILocation(line: 1489, column: 19, scope: !744)
!3486 = !DILocation(line: 1489, column: 5, scope: !744)
!3487 = !DILocation(line: 1493, column: 5, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !768, file: !1, discriminator: 1)
!3489 = !DILocation(line: 1493, column: 5, scope: !771)
!3490 = !DILocation(line: 1493, column: 5, scope: !768)
!3491 = !DILocation(line: 1493, column: 5, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !770, file: !1, discriminator: 4)
!3493 = !DILocation(line: 1493, column: 5, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !770, file: !1, line: 1493, column: 5)
!3495 = !DILocation(line: 1493, column: 5, scope: !770)
!3496 = !DILocation(line: 1493, column: 5, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3494, file: !1, discriminator: 6)
!3498 = !DILocation(line: 1494, column: 5, scope: !3499)
!3499 = !DILexicalBlockFile(scope: !773, file: !1, discriminator: 1)
!3500 = !DILocation(line: 1494, column: 5, scope: !776)
!3501 = !DILocation(line: 1494, column: 5, scope: !773)
!3502 = !DILocation(line: 1494, column: 5, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !775, file: !1, discriminator: 4)
!3504 = !DILocation(line: 1494, column: 5, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !775, file: !1, line: 1494, column: 5)
!3506 = !DILocation(line: 1494, column: 5, scope: !775)
!3507 = !DILocation(line: 1494, column: 5, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3505, file: !1, discriminator: 6)
!3509 = !DILocation(line: 1495, column: 5, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !778, file: !1, discriminator: 1)
!3511 = !DILocation(line: 1495, column: 5, scope: !781)
!3512 = !DILocation(line: 1495, column: 5, scope: !778)
!3513 = !DILocation(line: 1495, column: 5, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !780, file: !1, discriminator: 4)
!3515 = !DILocation(line: 1495, column: 5, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !780, file: !1, line: 1495, column: 5)
!3517 = !DILocation(line: 1495, column: 5, scope: !780)
!3518 = !DILocation(line: 1495, column: 5, scope: !3519)
!3519 = !DILexicalBlockFile(scope: !3516, file: !1, discriminator: 6)
!3520 = !DILocation(line: 1497, column: 1, scope: !744)
!3521 = !DILocation(line: 1460, column: 59, scope: !3430)
!3522 = !DILocation(line: 1460, column: 16, scope: !3430)
!3523 = !DILocation(line: 1173, column: 25, scope: !782)
!3524 = !DILocation(line: 1173, column: 40, scope: !782)
!3525 = !DILocation(line: 1178, column: 5, scope: !782)
!3526 = !DILocation(line: 1179, column: 36, scope: !782)
!3527 = !DILocation(line: 1180, column: 5, scope: !782)
!3528 = !DILocation(line: 1180, column: 16, scope: !782)
!3529 = !DILocation(line: 1227, column: 9, scope: !782)
!3530 = !DILocation(line: 1178, column: 11, scope: !782)
!3531 = !DILocation(line: 1228, column: 11, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1228, column: 9)
!3533 = !DILocation(line: 1228, column: 9, scope: !782)
!3534 = !DILocation(line: 1230, column: 17, scope: !782)
!3535 = !DILocation(line: 1178, column: 63, scope: !782)
!3536 = !DILocation(line: 1237, column: 5, scope: !782)
!3537 = !DILocation(line: 1237, column: 12, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !3539, file: !1, discriminator: 2)
!3539 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 1)
!3540 = !DILocation(line: 1238, column: 10, scope: !782)
!3541 = !DILocation(line: 1230, column: 15, scope: !782)
!3542 = !DILocation(line: 1178, column: 39, scope: !782)
!3543 = !DILocation(line: 1241, column: 9, scope: !782)
!3544 = !DILocation(line: 1176, column: 12, scope: !782)
!3545 = !DILocation(line: 1242, column: 9, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1242, column: 9)
!3547 = !DILocation(line: 1242, column: 19, scope: !3546)
!3548 = !DILocation(line: 1242, column: 9, scope: !782)
!3549 = !DILocation(line: 1248, column: 9, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1248, column: 9)
!3551 = !DILocation(line: 1248, column: 9, scope: !782)
!3552 = !DILocation(line: 1251, column: 5, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !1, line: 1248, column: 20)
!3554 = !DILocation(line: 1253, column: 9, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !1, line: 1252, column: 14)
!3556 = !DILocation(line: 1178, column: 29, scope: !782)
!3557 = !DILocation(line: 1257, column: 9, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1257, column: 9)
!3559 = !DILocation(line: 1257, column: 12, scope: !3558)
!3560 = !DILocation(line: 1257, column: 9, scope: !782)
!3561 = !DILocation(line: 1258, column: 10, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1257, column: 20)
!3563 = !DILocation(line: 1259, column: 13, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3562, file: !1, line: 1259, column: 13)
!3565 = !DILocation(line: 1259, column: 23, scope: !3564)
!3566 = !DILocation(line: 1260, column: 14, scope: !3564)
!3567 = !DILocation(line: 1267, column: 26, scope: !782)
!3568 = !DILocation(line: 1260, column: 13, scope: !3564)
!3569 = !DILocation(line: 1178, column: 15, scope: !782)
!3570 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 1267, column: 12, scope: !782)
!3572 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3571)
!3573 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3571)
!3574 = !DILocation(line: 1270, column: 9, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1270, column: 9)
!3576 = !DILocation(line: 1267, column: 30, scope: !782)
!3577 = !DILocation(line: 1267, column: 5, scope: !782)
!3578 = !DILocation(line: 1268, column: 10, scope: !782)
!3579 = !DILocation(line: 1270, column: 12, scope: !3575)
!3580 = !DILocation(line: 1270, column: 9, scope: !782)
!3581 = !DILocation(line: 1271, column: 10, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !1, line: 1270, column: 20)
!3583 = !DILocation(line: 1272, column: 30, scope: !3582)
!3584 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 1272, column: 16, scope: !3582)
!3586 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3585)
!3587 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3585)
!3588 = !DILocation(line: 1272, column: 34, scope: !3582)
!3589 = !DILocation(line: 1272, column: 9, scope: !3582)
!3590 = !DILocation(line: 1274, column: 19, scope: !3582)
!3591 = !DILocation(line: 1280, column: 15, scope: !782)
!3592 = !DILocation(line: 1280, column: 25, scope: !782)
!3593 = !DILocation(line: 1180, column: 24, scope: !782)
!3594 = !DILocation(line: 1281, column: 25, scope: !782)
!3595 = !DILocation(line: 1180, column: 33, scope: !782)
!3596 = !DILocation(line: 1282, column: 17, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1282, column: 9)
!3598 = !DILocation(line: 1282, column: 9, scope: !782)
!3599 = !DILocation(line: 1284, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1284, column: 9)
!3601 = !DILocation(line: 1284, column: 9, scope: !782)
!3602 = !DILocation(line: 1289, column: 9, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1289, column: 9)
!3604 = !DILocation(line: 1289, column: 19, scope: !3603)
!3605 = !DILocation(line: 1290, column: 10, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3603, file: !1, line: 1289, column: 33)
!3607 = !DILocation(line: 1178, column: 51, scope: !782)
!3608 = !DILocation(line: 1292, column: 13, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 1292, column: 13)
!3610 = !DILocation(line: 1292, column: 23, scope: !3609)
!3611 = !DILocation(line: 1293, column: 14, scope: !3609)
!3612 = !DILocation(line: 1294, column: 22, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !1, line: 1294, column: 13)
!3614 = !DILocation(line: 1293, column: 13, scope: !3609)
!3615 = !DILocation(line: 1294, column: 25, scope: !3613)
!3616 = !DILocation(line: 1296, column: 10, scope: !3606)
!3617 = !DILocation(line: 1297, column: 23, scope: !3606)
!3618 = !DILocation(line: 1297, column: 26, scope: !3606)
!3619 = !DILocation(line: 1299, column: 15, scope: !3606)
!3620 = !DILocation(line: 1177, column: 10, scope: !782)
!3621 = !DILocation(line: 1314, column: 27, scope: !3622)
!3622 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 4)
!3623 = !DILocation(line: 1300, column: 5, scope: !3606)
!3624 = !DILocation(line: 1369, column: 21, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3626, file: !1, discriminator: 1)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 1369, column: 21)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !1, line: 1368, column: 13)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !1, line: 1368, column: 13)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1364, column: 13)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !1, line: 1362, column: 34)
!3631 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1362, column: 9)
!3632 = !DILocation(line: 1314, column: 27, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 5)
!3634 = !DILocation(line: 1314, column: 20, scope: !782)
!3635 = !DILocation(line: 1314, column: 24, scope: !782)
!3636 = !DILocation(line: 1314, column: 27, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 2)
!3638 = !DILocation(line: 1314, column: 27, scope: !3639)
!3639 = !DILexicalBlockFile(scope: !3640, file: !1, discriminator: 7)
!3640 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 6)
!3641 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 1314, column: 27, scope: !3639)
!3643 = !DILocation(line: 1314, column: 48, scope: !782)
!3644 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3642)
!3645 = !DILocation(line: 1316, column: 17, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1316, column: 9)
!3647 = !DILocation(line: 1316, column: 29, scope: !3646)
!3648 = !DILocation(line: 1316, column: 22, scope: !3646)
!3649 = !DILocation(line: 1320, column: 13, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1320, column: 9)
!3651 = !DILocation(line: 1320, column: 9, scope: !782)
!3652 = !DILocation(line: 1324, column: 18, scope: !782)
!3653 = !DILocation(line: 1324, column: 15, scope: !782)
!3654 = !DILocation(line: 1327, column: 38, scope: !782)
!3655 = !DILocation(line: 1327, column: 22, scope: !782)
!3656 = !DILocation(line: 1327, column: 19, scope: !782)
!3657 = !DILocation(line: 1177, column: 15, scope: !782)
!3658 = !DILocation(line: 1328, column: 18, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1328, column: 5)
!3660 = !DILocation(line: 1328, column: 18, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !3659, file: !1, discriminator: 1)
!3662 = !DILocation(line: 1328, column: 18, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3659, file: !1, discriminator: 2)
!3664 = !DILocation(line: 1328, column: 18, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3666, file: !1, discriminator: 4)
!3666 = !DILexicalBlockFile(scope: !3659, file: !1, discriminator: 3)
!3667 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 1328, column: 18, scope: !3665)
!3669 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3668)
!3670 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3668)
!3671 = !DILocation(line: 1328, column: 46, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3659, file: !1, line: 1328, column: 5)
!3673 = !DILocation(line: 1328, column: 5, scope: !3659)
!3674 = !DILocation(line: 1329, column: 16, scope: !3672)
!3675 = !DILocation(line: 1328, column: 58, scope: !3672)
!3676 = !DILocation(line: 1179, column: 19, scope: !782)
!3677 = !DILocation(line: 1332, column: 17, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1332, column: 9)
!3679 = !DILocation(line: 1332, column: 9, scope: !782)
!3680 = !DILocation(line: 1336, column: 17, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1336, column: 9)
!3682 = !DILocation(line: 1336, column: 9, scope: !782)
!3683 = !DILocation(line: 1341, column: 11, scope: !782)
!3684 = !DILocation(line: 1341, column: 46, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3686, file: !1, discriminator: 4)
!3686 = !DILexicalBlockFile(scope: !782, file: !1, discriminator: 3)
!3687 = !DILocation(line: 1177, column: 24, scope: !782)
!3688 = !DILocation(line: 1344, column: 13, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1344, column: 9)
!3690 = !DILocation(line: 1344, column: 9, scope: !782)
!3691 = !DILocation(line: 1346, column: 31, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !1, line: 1346, column: 9)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !1, line: 1346, column: 9)
!3694 = distinct !DILexicalBlock(scope: !3689, file: !1, line: 1344, column: 21)
!3695 = !DILocation(line: 1346, column: 9, scope: !3693)
!3696 = !DILocation(line: 1347, column: 21, scope: !3692)
!3697 = !DILocation(line: 1347, column: 26, scope: !3692)
!3698 = !DILocation(line: 1347, column: 26, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3692, file: !1, discriminator: 1)
!3700 = !DILocation(line: 1347, column: 26, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !3692, file: !1, discriminator: 2)
!3702 = !DILocation(line: 1347, column: 26, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3704, file: !1, discriminator: 4)
!3704 = !DILexicalBlockFile(scope: !3692, file: !1, discriminator: 3)
!3705 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3706)
!3706 = distinct !DILocation(line: 1347, column: 26, scope: !3703)
!3707 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3706)
!3708 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3706)
!3709 = !DILocation(line: 1347, column: 24, scope: !3692)
!3710 = !DILocation(line: 1346, column: 38, scope: !3692)
!3711 = !DILocation(line: 1180, column: 42, scope: !782)
!3712 = !DILocation(line: 1348, column: 22, scope: !3694)
!3713 = !DILocation(line: 1348, column: 13, scope: !3694)
!3714 = !DILocation(line: 1349, column: 9, scope: !3694)
!3715 = !DILocation(line: 1353, column: 32, scope: !782)
!3716 = !DILocation(line: 1353, column: 38, scope: !782)
!3717 = !DILocation(line: 1353, column: 43, scope: !782)
!3718 = !DILocation(line: 1353, column: 21, scope: !782)
!3719 = !DILocation(line: 1353, column: 18, scope: !782)
!3720 = !DILocation(line: 1179, column: 9, scope: !782)
!3721 = !DILocation(line: 1354, column: 33, scope: !782)
!3722 = !DILocation(line: 1177, column: 29, scope: !782)
!3723 = !DILocation(line: 1355, column: 27, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !1, line: 1355, column: 5)
!3725 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1355, column: 5)
!3726 = !DILocation(line: 1355, column: 5, scope: !3725)
!3727 = !DILocation(line: 1356, column: 22, scope: !3724)
!3728 = !DILocation(line: 1356, column: 22, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !3724, file: !1, discriminator: 1)
!3730 = !DILocation(line: 1356, column: 22, scope: !3731)
!3731 = !DILexicalBlockFile(scope: !3724, file: !1, discriminator: 2)
!3732 = !DILocation(line: 1356, column: 22, scope: !3733)
!3733 = !DILexicalBlockFile(scope: !3734, file: !1, discriminator: 4)
!3734 = !DILexicalBlockFile(scope: !3724, file: !1, discriminator: 3)
!3735 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3736)
!3736 = distinct !DILocation(line: 1356, column: 22, scope: !3733)
!3737 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3736)
!3738 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3736)
!3739 = !DILocation(line: 1356, column: 20, scope: !3724)
!3740 = !DILocation(line: 1355, column: 41, scope: !3724)
!3741 = !DILocation(line: 1355, column: 5, scope: !3724)
!3742 = !DILocation(line: 1357, column: 13, scope: !782)
!3743 = !DILocation(line: 1357, column: 13, scope: !3539)
!3744 = !DILocation(line: 1357, column: 13, scope: !3637)
!3745 = !DILocation(line: 1357, column: 13, scope: !3685)
!3746 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 1357, column: 13, scope: !3685)
!3748 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3747)
!3749 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3747)
!3750 = !DILocation(line: 1358, column: 40, scope: !782)
!3751 = !DILocation(line: 1358, column: 38, scope: !782)
!3752 = !DILocation(line: 1358, column: 33, scope: !782)
!3753 = !DILocation(line: 1358, column: 18, scope: !782)
!3754 = !DILocation(line: 1358, column: 16, scope: !782)
!3755 = !DILocation(line: 1362, column: 16, scope: !3631)
!3756 = !DILocation(line: 1362, column: 28, scope: !3631)
!3757 = !DILocation(line: 1362, column: 9, scope: !782)
!3758 = !DILocation(line: 1179, column: 26, scope: !782)
!3759 = !DILocation(line: 1364, column: 24, scope: !3629)
!3760 = !DILocation(line: 1364, column: 33, scope: !3629)
!3761 = !DILocation(line: 1364, column: 20, scope: !3629)
!3762 = !DILocation(line: 1364, column: 38, scope: !3629)
!3763 = !DILocation(line: 1364, column: 43, scope: !3629)
!3764 = !DILocation(line: 1365, column: 23, scope: !3629)
!3765 = !DILocation(line: 1365, column: 28, scope: !3629)
!3766 = !DILocation(line: 1365, column: 32, scope: !3767)
!3767 = !DILexicalBlockFile(scope: !3629, file: !1, discriminator: 1)
!3768 = !DILocation(line: 1365, column: 32, scope: !3769)
!3769 = !DILexicalBlockFile(scope: !3629, file: !1, discriminator: 2)
!3770 = !DILocation(line: 1365, column: 32, scope: !3771)
!3771 = !DILexicalBlockFile(scope: !3629, file: !1, discriminator: 3)
!3772 = !DILocation(line: 1365, column: 32, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !3774, file: !1, discriminator: 5)
!3774 = !DILexicalBlockFile(scope: !3629, file: !1, discriminator: 4)
!3775 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 1365, column: 32, scope: !3773)
!3777 = !DILocation(line: 1040, column: 12, scope: !809, inlinedAt: !3776)
!3778 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3776)
!3779 = !DILocation(line: 1365, column: 60, scope: !3629)
!3780 = !DILocation(line: 1364, column: 13, scope: !3630)
!3781 = !DILocation(line: 1368, column: 37, scope: !3627)
!3782 = !DILocation(line: 1368, column: 13, scope: !3628)
!3783 = !DILocation(line: 1368, column: 31, scope: !3628)
!3784 = !DILocation(line: 1369, column: 21, scope: !3626)
!3785 = !DILocation(line: 1369, column: 21, scope: !3786)
!3786 = !DILexicalBlockFile(scope: !3626, file: !1, discriminator: 2)
!3787 = !DILocation(line: 1369, column: 21, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3789, file: !1, discriminator: 4)
!3789 = !DILexicalBlockFile(scope: !3626, file: !1, discriminator: 3)
!3790 = !DILocation(line: 1038, column: 20, scope: !809, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 1369, column: 21, scope: !3788)
!3792 = !DILocation(line: 1369, column: 34, scope: !3626)
!3793 = !DILocation(line: 1040, column: 5, scope: !809, inlinedAt: !3791)
!3794 = !DILocation(line: 1374, column: 18, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !1, line: 1373, column: 23)
!3796 = distinct !DILexicalBlock(scope: !3630, file: !1, line: 1373, column: 13)
!3797 = !DILocation(line: 1374, column: 15, scope: !3795)
!3798 = !DILocation(line: 1375, column: 25, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3795, file: !1, line: 1375, column: 17)
!3800 = !DILocation(line: 1375, column: 40, scope: !3799)
!3801 = !DILocation(line: 1376, column: 22, scope: !3799)
!3802 = !DILocation(line: 1376, column: 19, scope: !3799)
!3803 = !DILocation(line: 1375, column: 17, scope: !3795)
!3804 = !DILocation(line: 1382, column: 29, scope: !782)
!3805 = !DILocation(line: 1382, column: 27, scope: !782)
!3806 = !DILocation(line: 1382, column: 18, scope: !782)
!3807 = !DILocation(line: 1382, column: 9, scope: !782)
!3808 = !DILocation(line: 1382, column: 5, scope: !782)
!3809 = !DILocation(line: 1386, column: 12, scope: !3538)
!3810 = !DILocation(line: 1386, column: 5, scope: !782)
!3811 = !DILocation(line: 1387, column: 10, scope: !782)
!3812 = !DILocation(line: 1388, column: 11, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1388, column: 9)
!3814 = !DILocation(line: 1388, column: 9, scope: !782)
!3815 = !DILocation(line: 1390, column: 44, scope: !782)
!3816 = !DILocation(line: 1390, column: 53, scope: !782)
!3817 = !DILocation(line: 1390, column: 23, scope: !3685)
!3818 = !DILocation(line: 1175, column: 15, scope: !782)
!3819 = !DILocation(line: 1391, column: 25, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !782, file: !1, line: 1391, column: 9)
!3821 = !DILocation(line: 1391, column: 9, scope: !782)
!3822 = !DILocation(line: 1393, column: 14, scope: !782)
!3823 = !DILocation(line: 1175, column: 33, scope: !782)
!3824 = !DILocation(line: 1394, column: 5, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 1)
!3826 = !DILocation(line: 1394, column: 5, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !808, file: !1, line: 1394, column: 5)
!3828 = !DILocation(line: 1394, column: 5, scope: !808)
!3829 = !DILocation(line: 1394, column: 5, scope: !3830)
!3830 = !DILexicalBlockFile(scope: !3827, file: !1, discriminator: 3)
!3831 = !DILocation(line: 1398, column: 21, scope: !782)
!3832 = !DILocation(line: 1398, column: 5, scope: !782)
!3833 = !DILocation(line: 1400, column: 5, scope: !782)
!3834 = !DILocation(line: 1403, column: 21, scope: !782)
!3835 = !DILocation(line: 1403, column: 5, scope: !782)
!3836 = !DILocation(line: 1405, column: 5, scope: !782)
!3837 = !DILocation(line: 1408, column: 21, scope: !782)
!3838 = !DILocation(line: 1408, column: 5, scope: !782)
!3839 = !DILocation(line: 1410, column: 5, scope: !782)
!3840 = !DILocation(line: 1411, column: 1, scope: !782)
!3841 = !DILocation(line: 1109, column: 21, scope: !815)
!3842 = !DILocation(line: 243, column: 30, scope: !574, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 1117, column: 5, scope: !3844)
!3844 = !DILexicalBlockFile(scope: !3845, file: !1, discriminator: 4)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !1, line: 1117, column: 5)
!3846 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1117, column: 5)
!3847 = !DILocation(line: 1112, column: 5, scope: !815)
!3848 = !DILocation(line: 1115, column: 5, scope: !815)
!3849 = !DILocation(line: 1115, column: 10, scope: !815)
!3850 = !DILocation(line: 1117, column: 5, scope: !3846)
!3851 = !DILocation(line: 1117, column: 5, scope: !3852)
!3852 = !DILexicalBlockFile(scope: !3846, file: !1, discriminator: 2)
!3853 = !DILocation(line: 1117, column: 5, scope: !815)
!3854 = !DILocation(line: 1117, column: 5, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3856, file: !1, discriminator: 3)
!3856 = !DILexicalBlockFile(scope: !3846, file: !1, discriminator: 1)
!3857 = !DILocation(line: 1111, column: 12, scope: !815)
!3858 = !DILocation(line: 243, column: 41, scope: !574, inlinedAt: !3843)
!3859 = !DILocation(line: 245, column: 15, scope: !574, inlinedAt: !3843)
!3860 = !DILocation(line: 247, column: 9, scope: !2136, inlinedAt: !3843)
!3861 = !DILocation(line: 247, column: 9, scope: !574, inlinedAt: !3843)
!3862 = !DILocation(line: 248, column: 16, scope: !2139, inlinedAt: !3843)
!3863 = !DILocation(line: 248, column: 14, scope: !2139, inlinedAt: !3843)
!3864 = !DILocation(line: 249, column: 18, scope: !2142, inlinedAt: !3843)
!3865 = !DILocation(line: 249, column: 26, scope: !2142, inlinedAt: !3843)
!3866 = !DILocation(line: 249, column: 29, scope: !2145, inlinedAt: !3843)
!3867 = !DILocation(line: 249, column: 13, scope: !2139, inlinedAt: !3843)
!3868 = !DILocation(line: 255, column: 9, scope: !2148, inlinedAt: !3843)
!3869 = !DILocation(line: 257, column: 9, scope: !2148, inlinedAt: !3843)
!3870 = !DILocation(line: 1119, column: 9, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3872, file: !1, discriminator: 4)
!3872 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1119, column: 9)
!3873 = !DILocation(line: 1119, column: 25, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3872, file: !1, discriminator: 10)
!3875 = !DILocation(line: 268, column: 33, scope: !561, inlinedAt: !3876)
!3876 = distinct !DILocation(line: 1120, column: 16, scope: !3872)
!3877 = !DILocation(line: 268, column: 11, scope: !561, inlinedAt: !3876)
!3878 = !DILocation(line: 266, column: 11, scope: !561, inlinedAt: !3876)
!3879 = !DILocation(line: 272, column: 10, scope: !1351, inlinedAt: !3876)
!3880 = !DILocation(line: 272, column: 9, scope: !561, inlinedAt: !3876)
!3881 = !DILocation(line: 273, column: 16, scope: !1351, inlinedAt: !3876)
!3882 = !DILocation(line: 273, column: 9, scope: !1351, inlinedAt: !3876)
!3883 = !DILocation(line: 274, column: 40, scope: !561, inlinedAt: !3876)
!3884 = !DILocation(line: 274, column: 14, scope: !561, inlinedAt: !3876)
!3885 = !DILocation(line: 265, column: 15, scope: !561, inlinedAt: !3876)
!3886 = !DILocation(line: 275, column: 5, scope: !561, inlinedAt: !3876)
!3887 = !DILocation(line: 276, column: 5, scope: !561, inlinedAt: !3876)
!3888 = !DILocation(line: 1122, column: 11, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1122, column: 9)
!3890 = !DILocation(line: 1122, column: 9, scope: !815)
!3891 = !DILocation(line: 1123, column: 13, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !1, line: 1123, column: 13)
!3893 = distinct !DILexicalBlock(scope: !3889, file: !1, line: 1122, column: 19)
!3894 = !DILocation(line: 1123, column: 30, scope: !3892)
!3895 = !DILocation(line: 1123, column: 13, scope: !3893)
!3896 = !DILocation(line: 1124, column: 20, scope: !3892)
!3897 = !DILocation(line: 1124, column: 13, scope: !3892)
!3898 = !DILocation(line: 1126, column: 20, scope: !3892)
!3899 = !DILocation(line: 1126, column: 13, scope: !3892)
!3900 = !DILocation(line: 1129, column: 15, scope: !815)
!3901 = !DILocation(line: 1112, column: 9, scope: !815)
!3902 = !DILocation(line: 1129, column: 9, scope: !815)
!3903 = !DILocation(line: 1111, column: 15, scope: !815)
!3904 = !DILocation(line: 1130, column: 17, scope: !815)
!3905 = !DILocation(line: 1130, column: 15, scope: !3906)
!3906 = !DILexicalBlockFile(scope: !3907, file: !1, discriminator: 4)
!3907 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 3)
!3908 = !DILocation(line: 1112, column: 12, scope: !815)
!3909 = !DILocation(line: 1131, column: 9, scope: !815)
!3910 = !DILocation(line: 1132, column: 7, scope: !815)
!3911 = !DILocation(line: 1112, column: 22, scope: !815)
!3912 = !DILocation(line: 1135, column: 27, scope: !815)
!3913 = !DILocation(line: 1031, column: 19, scope: !829, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 1135, column: 13, scope: !815)
!3915 = !DILocation(line: 1034, column: 12, scope: !829, inlinedAt: !3914)
!3916 = !DILocation(line: 1135, column: 11, scope: !815)
!3917 = !DILocation(line: 1137, column: 10, scope: !815)
!3918 = !DILocation(line: 1137, column: 7, scope: !815)
!3919 = !DILocation(line: 1138, column: 5, scope: !815)
!3920 = !DILocation(line: 1138, column: 11, scope: !815)
!3921 = !DILocation(line: 1112, column: 19, scope: !815)
!3922 = !DILocation(line: 1141, column: 11, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !1, line: 1140, column: 43)
!3924 = distinct !DILexicalBlock(scope: !3925, file: !1, line: 1140, column: 5)
!3925 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1140, column: 5)
!3926 = !DILocation(line: 1142, column: 31, scope: !3923)
!3927 = !DILocation(line: 1031, column: 19, scope: !829, inlinedAt: !3928)
!3928 = distinct !DILocation(line: 1142, column: 17, scope: !3923)
!3929 = !DILocation(line: 1034, column: 12, scope: !829, inlinedAt: !3928)
!3930 = !DILocation(line: 1142, column: 9, scope: !3923)
!3931 = !DILocation(line: 1142, column: 15, scope: !3923)
!3932 = !DILocation(line: 1144, column: 14, scope: !3923)
!3933 = !DILocation(line: 1144, column: 11, scope: !3923)
!3934 = !DILocation(line: 1146, column: 5, scope: !815)
!3935 = !DILocation(line: 1146, column: 11, scope: !815)
!3936 = !DILocation(line: 1148, column: 9, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1148, column: 9)
!3938 = !DILocation(line: 1148, column: 11, scope: !3937)
!3939 = !DILocation(line: 1148, column: 9, scope: !815)
!3940 = !DILocation(line: 1112, column: 26, scope: !815)
!3941 = !DILocation(line: 1150, column: 13, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3937, file: !1, line: 1148, column: 16)
!3943 = !DILocation(line: 1150, column: 11, scope: !3942)
!3944 = !DILocation(line: 1151, column: 5, scope: !3942)
!3945 = !DILocation(line: 1156, column: 61, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !815, file: !1, line: 1155, column: 9)
!3947 = !DILocation(line: 1155, column: 11, scope: !3946)
!3948 = !DILocation(line: 1155, column: 9, scope: !815)
!3949 = !DILocation(line: 1156, column: 16, scope: !3946)
!3950 = !DILocation(line: 1156, column: 9, scope: !3946)
!3951 = !DILocation(line: 1158, column: 16, scope: !3946)
!3952 = !DILocation(line: 1158, column: 9, scope: !3946)
!3953 = !DILocation(line: 1159, column: 1, scope: !815)
!3954 = !DILocation(line: 779, column: 28, scope: !834)
!3955 = !DILocation(line: 781, column: 16, scope: !834)
!3956 = !DILocation(line: 781, column: 12, scope: !834)
!3957 = !DILocation(line: 784, column: 11, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !834, file: !1, line: 784, column: 9)
!3959 = !DILocation(line: 784, column: 19, scope: !3958)
!3960 = !DILocation(line: 784, column: 22, scope: !3961)
!3961 = !DILexicalBlockFile(scope: !3958, file: !1, discriminator: 1)
!3962 = !DILocation(line: 784, column: 9, scope: !834)
!3963 = !DILocation(line: 786, column: 10, scope: !3964)
!3964 = !DILexicalBlockFile(scope: !3965, file: !1, discriminator: 3)
!3965 = distinct !DILexicalBlock(scope: !834, file: !1, line: 786, column: 9)
!3966 = !DILocation(line: 787, column: 9, scope: !3965)
!3967 = !DILocation(line: 788, column: 5, scope: !834)
!3968 = !DILocation(line: 788, column: 11, scope: !834)
!3969 = !DILocation(line: 790, column: 10, scope: !834)
!3970 = !DILocation(line: 790, column: 19, scope: !834)
!3971 = !DILocation(line: 790, column: 9, scope: !834)
!3972 = !DILocation(line: 782, column: 15, scope: !834)
!3973 = !DILocation(line: 797, column: 5, scope: !834)
!3974 = !DILocation(line: 798, column: 5, scope: !834)
!3975 = !DILocation(line: 799, column: 1, scope: !834)
!3976 = !DILocation(line: 1560, column: 33, scope: !839)
!3977 = !DILocation(line: 1562, column: 36, scope: !839)
!3978 = !DILocation(line: 1562, column: 12, scope: !839)
!3979 = !DILocation(line: 1562, column: 5, scope: !839)
!3980 = !DILocation(line: 1575, column: 31, scope: !842)
!3981 = !DILocation(line: 1575, column: 44, scope: !842)
!3982 = !DILocation(line: 1580, column: 10, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1580, column: 9)
!3984 = !DILocation(line: 1580, column: 9, scope: !842)
!3985 = !DILocation(line: 1581, column: 22, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3983, file: !1, line: 1580, column: 32)
!3987 = !DILocation(line: 1583, column: 40, scope: !3986)
!3988 = !DILocation(line: 1581, column: 9, scope: !3986)
!3989 = !DILocation(line: 1584, column: 9, scope: !3986)
!3990 = !DILocation(line: 1586, column: 9, scope: !842)
!3991 = !DILocation(line: 1577, column: 11, scope: !842)
!3992 = !DILocation(line: 1587, column: 11, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1587, column: 9)
!3994 = !DILocation(line: 1587, column: 9, scope: !842)
!3995 = !DILocation(line: 1589, column: 9, scope: !854)
!3996 = !DILocation(line: 1589, column: 9, scope: !3997)
!3997 = !DILexicalBlockFile(scope: !3998, file: !1, discriminator: 4)
!3998 = !DILexicalBlockFile(scope: !854, file: !1, discriminator: 2)
!3999 = !DILocation(line: 1589, column: 29, scope: !855)
!4000 = !DILocation(line: 1589, column: 9, scope: !842)
!4001 = !DILocation(line: 1592, column: 14, scope: !861)
!4002 = !DILocation(line: 1592, column: 14, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !4004, file: !1, discriminator: 4)
!4004 = !DILexicalBlockFile(scope: !861, file: !1, discriminator: 2)
!4005 = !DILocation(line: 1592, column: 33, scope: !862)
!4006 = !DILocation(line: 1592, column: 14, scope: !855)
!4007 = !DILocation(line: 1596, column: 25, scope: !4008)
!4008 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1595, column: 10)
!4009 = !DILocation(line: 1596, column: 9, scope: !4008)
!4010 = !DILocation(line: 1599, column: 9, scope: !4008)
!4011 = !DILocation(line: 1590, column: 13, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !855, file: !1, line: 1589, column: 35)
!4013 = !DILocation(line: 1602, column: 5, scope: !842)
!4014 = !DILocation(line: 1604, column: 16, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !842, file: !1, line: 1602, column: 16)
!4016 = !DILocation(line: 1604, column: 9, scope: !4015)
!4017 = !DILocation(line: 1606, column: 16, scope: !4015)
!4018 = !DILocation(line: 1606, column: 9, scope: !4015)
!4019 = !DILocation(line: 1608, column: 16, scope: !4015)
!4020 = !DILocation(line: 1608, column: 9, scope: !4015)
!4021 = !DILocation(line: 1610, column: 9, scope: !4015)
!4022 = !DILocation(line: 1613, column: 1, scope: !842)
!4023 = !DILocation(line: 1626, column: 31, scope: !867)
!4024 = !DILocation(line: 1626, column: 44, scope: !867)
!4025 = !DILocation(line: 1628, column: 5, scope: !867)
!4026 = !DILocation(line: 1629, column: 5, scope: !867)
!4027 = !DILocation(line: 1628, column: 11, scope: !867)
!4028 = !DILocation(line: 1629, column: 11, scope: !867)
!4029 = !DILocation(line: 1634, column: 10, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1634, column: 9)
!4031 = !DILocation(line: 1634, column: 9, scope: !867)
!4032 = !DILocation(line: 1637, column: 9, scope: !878)
!4033 = !DILocation(line: 1673, column: 49, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 1670, column: 47)
!4035 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1670, column: 9)
!4036 = !DILocation(line: 1637, column: 9, scope: !4037)
!4037 = !DILexicalBlockFile(scope: !4038, file: !1, discriminator: 4)
!4038 = !DILexicalBlockFile(scope: !878, file: !1, discriminator: 2)
!4039 = !DILocation(line: 1637, column: 35, scope: !879)
!4040 = !DILocation(line: 1637, column: 9, scope: !867)
!4041 = !DILocation(line: 1641, column: 14, scope: !885)
!4042 = !DILocation(line: 1641, column: 14, scope: !4043)
!4043 = !DILexicalBlockFile(scope: !4044, file: !1, discriminator: 4)
!4044 = !DILexicalBlockFile(scope: !885, file: !1, discriminator: 2)
!4045 = !DILocation(line: 1641, column: 39, scope: !886)
!4046 = !DILocation(line: 1641, column: 14, scope: !879)
!4047 = !DILocation(line: 1646, column: 25, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !886, file: !1, line: 1645, column: 10)
!4049 = !DILocation(line: 1646, column: 9, scope: !4048)
!4050 = !DILocation(line: 1649, column: 9, scope: !4048)
!4051 = !DILocation(line: 1639, column: 20, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !879, file: !1, line: 1637, column: 41)
!4053 = !DILocation(line: 1652, column: 9, scope: !892)
!4054 = !DILocation(line: 1652, column: 9, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !4056, file: !1, discriminator: 4)
!4056 = !DILexicalBlockFile(scope: !892, file: !1, discriminator: 2)
!4057 = !DILocation(line: 1652, column: 35, scope: !893)
!4058 = !DILocation(line: 1652, column: 9, scope: !867)
!4059 = !DILocation(line: 1655, column: 14, scope: !899)
!4060 = !DILocation(line: 1655, column: 14, scope: !4061)
!4061 = !DILexicalBlockFile(scope: !4062, file: !1, discriminator: 4)
!4062 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 2)
!4063 = !DILocation(line: 1655, column: 52, scope: !900)
!4064 = !DILocation(line: 1655, column: 14, scope: !893)
!4065 = !DILocation(line: 1658, column: 14, scope: !906)
!4066 = !DILocation(line: 1658, column: 14, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4068, file: !1, discriminator: 4)
!4068 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 2)
!4069 = !DILocation(line: 1658, column: 49, scope: !907)
!4070 = !DILocation(line: 1658, column: 14, scope: !900)
!4071 = !DILocation(line: 1662, column: 25, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !907, file: !1, line: 1661, column: 10)
!4073 = !DILocation(line: 1662, column: 9, scope: !4072)
!4074 = !DILocation(line: 1666, column: 9, scope: !4072)
!4075 = !DILocation(line: 1670, column: 34, scope: !4035)
!4076 = !DILocation(line: 1670, column: 29, scope: !4035)
!4077 = !DILocation(line: 1671, column: 22, scope: !4034)
!4078 = !DILocation(line: 1671, column: 9, scope: !4034)
!4079 = !DILocation(line: 1674, column: 9, scope: !4034)
!4080 = !DILocation(line: 1677, column: 8, scope: !867)
!4081 = !DILocation(line: 1678, column: 5, scope: !867)
!4082 = !DILocation(line: 1679, column: 1, scope: !867)
!4083 = !DILocation(line: 1701, column: 27, scope: !912)
!4084 = !DILocation(line: 1701, column: 43, scope: !912)
!4085 = !DILocation(line: 1703, column: 5, scope: !912)
!4086 = !DILocation(line: 1704, column: 5, scope: !912)
!4087 = !DILocation(line: 1703, column: 15, scope: !912)
!4088 = !DILocation(line: 1707, column: 10, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !912, file: !1, line: 1707, column: 9)
!4090 = !DILocation(line: 1707, column: 9, scope: !912)
!4091 = !DILocation(line: 1704, column: 22, scope: !912)
!4092 = !DILocation(line: 1710, column: 5, scope: !912)
!4093 = !DILocation(line: 1714, column: 9, scope: !912)
!4094 = !DILocation(line: 1714, column: 25, scope: !912)
!4095 = !{!4096, !1058, i64 16}
!4096 = !{!"", !1057, i64 0, !1058, i64 16, !1058, i64 24, !4097, i64 32, !1047, i64 40}
!4097 = !{!"", !1062, i64 0, !1062, i64 0, !1062, i64 0, !1062, i64 0, !1062, i64 0, !1062, i64 1}
!4098 = !DILocation(line: 1711, column: 11, scope: !912)
!4099 = !DILocation(line: 1705, column: 9, scope: !912)
!4100 = !DILocation(line: 1715, column: 13, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !912, file: !1, line: 1715, column: 9)
!4102 = !DILocation(line: 1715, column: 9, scope: !912)
!4103 = !DILocation(line: 1716, column: 9, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4101, file: !1, line: 1715, column: 20)
!4105 = !DILocation(line: 1717, column: 9, scope: !4104)
!4106 = !DILocation(line: 1719, column: 12, scope: !912)
!4107 = !DILocation(line: 1719, column: 5, scope: !912)
!4108 = !DILocation(line: 1720, column: 1, scope: !912)
!4109 = !DILocation(line: 1695, column: 25, scope: !933)
!4110 = !DILocation(line: 1695, column: 34, scope: !933)
!4111 = !DILocation(line: 110, column: 27, scope: !416, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 1697, column: 12, scope: !933)
!4113 = !DILocation(line: 112, column: 25, scope: !416, inlinedAt: !4112)
!4114 = !DILocation(line: 112, column: 20, scope: !416, inlinedAt: !4112)
!4115 = !DILocation(line: 113, column: 12, scope: !1052, inlinedAt: !4112)
!4116 = !DILocation(line: 113, column: 9, scope: !416, inlinedAt: !4112)
!4117 = !DILocation(line: 114, column: 39, scope: !1055, inlinedAt: !4112)
!4118 = !DILocation(line: 114, column: 19, scope: !1055, inlinedAt: !4112)
!4119 = !DILocation(line: 115, column: 16, scope: !1055, inlinedAt: !4112)
!4120 = !DILocation(line: 116, column: 5, scope: !1055, inlinedAt: !4112)
!4121 = !DILocation(line: 117, column: 31, scope: !1065, inlinedAt: !4112)
!4122 = !DILocation(line: 117, column: 14, scope: !1065, inlinedAt: !4112)
!4123 = !DILocation(line: 118, column: 14, scope: !1068, inlinedAt: !4112)
!4124 = !DILocation(line: 118, column: 13, scope: !1065, inlinedAt: !4112)
!4125 = !DILocation(line: 119, column: 20, scope: !1068, inlinedAt: !4112)
!4126 = !DILocation(line: 119, column: 13, scope: !1068, inlinedAt: !4112)
!4127 = !DILocation(line: 1697, column: 12, scope: !933)
!4128 = !DILocation(line: 122, column: 11, scope: !416, inlinedAt: !4112)
!4129 = !DILocation(line: 123, column: 9, scope: !416, inlinedAt: !4112)
!4130 = !DILocation(line: 123, column: 17, scope: !416, inlinedAt: !4112)
!4131 = !DILocation(line: 124, column: 5, scope: !416, inlinedAt: !4112)
!4132 = !DILocation(line: 1697, column: 5, scope: !933)
