; ModuleID = './floatobject.bc'
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
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@FloatInfoType = internal global %struct._typeobject zeroinitializer, align 8
@free_list = internal global %struct.PyFloatObject* null, align 8
@numfree = internal global i32 0, align 4
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
@detected_double_format = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"\05\04\03\02\01\FF?C\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"K\7F\01\02\00", align 1
@detected_float_format = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"\02\01\7FK\00", align 1
@double_format = internal global i32 0, align 4
@float_format = internal global i32 0, align 4
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

; Function Attrs: nounwind uwtable
define double @PyFloat_GetMax() #0 {
entry:
  ret double 0x7FEFFFFFFFFFFFFF
}

; Function Attrs: nounwind uwtable
define double @PyFloat_GetMin() #0 {
entry:
  ret double 0x10000000000000
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_GetInfo() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %floatinfo = alloca %struct._object*, align 8
  %pos = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 0, i32* %pos, align 4
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @FloatInfoType)
  store %struct._object* %call, %struct._object** %floatinfo, align 8
  %0 = load %struct._object*, %struct._object** %floatinfo, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyFloat_FromDouble(double 0x7FEFFFFFFFFFFFFF)
  %1 = load i32, i32* %pos, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %pos, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct._object*, %struct._object** %floatinfo, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  store %struct._object* %call1, %struct._object** %arrayidx, align 8
  %call2 = call %struct._object* @PyLong_FromLong(i64 1024)
  %4 = load i32, i32* %pos, align 4
  %inc3 = add i32 %4, 1
  store i32 %inc3, i32* %pos, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load %struct._object*, %struct._object** %floatinfo, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 %idxprom4
  store %struct._object* %call2, %struct._object** %arrayidx6, align 8
  %call7 = call %struct._object* @PyLong_FromLong(i64 308)
  %7 = load i32, i32* %pos, align 4
  %inc8 = add i32 %7, 1
  store i32 %inc8, i32* %pos, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load %struct._object*, %struct._object** %floatinfo, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 %idxprom9
  store %struct._object* %call7, %struct._object** %arrayidx11, align 8
  %call12 = call %struct._object* @PyFloat_FromDouble(double 0x10000000000000)
  %10 = load i32, i32* %pos, align 4
  %inc13 = add i32 %10, 1
  store i32 %inc13, i32* %pos, align 4
  %idxprom14 = sext i32 %10 to i64
  %11 = load %struct._object*, %struct._object** %floatinfo, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %12, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %idxprom14
  store %struct._object* %call12, %struct._object** %arrayidx16, align 8
  %call17 = call %struct._object* @PyLong_FromLong(i64 -1021)
  %13 = load i32, i32* %pos, align 4
  %inc18 = add i32 %13, 1
  store i32 %inc18, i32* %pos, align 4
  %idxprom19 = sext i32 %13 to i64
  %14 = load %struct._object*, %struct._object** %floatinfo, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 %idxprom19
  store %struct._object* %call17, %struct._object** %arrayidx21, align 8
  %call22 = call %struct._object* @PyLong_FromLong(i64 -307)
  %16 = load i32, i32* %pos, align 4
  %inc23 = add i32 %16, 1
  store i32 %inc23, i32* %pos, align 4
  %idxprom24 = sext i32 %16 to i64
  %17 = load %struct._object*, %struct._object** %floatinfo, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 %idxprom24
  store %struct._object* %call22, %struct._object** %arrayidx26, align 8
  %call27 = call %struct._object* @PyLong_FromLong(i64 15)
  %19 = load i32, i32* %pos, align 4
  %inc28 = add i32 %19, 1
  store i32 %inc28, i32* %pos, align 4
  %idxprom29 = sext i32 %19 to i64
  %20 = load %struct._object*, %struct._object** %floatinfo, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %idxprom29
  store %struct._object* %call27, %struct._object** %arrayidx31, align 8
  %call32 = call %struct._object* @PyLong_FromLong(i64 53)
  %22 = load i32, i32* %pos, align 4
  %inc33 = add i32 %22, 1
  store i32 %inc33, i32* %pos, align 4
  %idxprom34 = sext i32 %22 to i64
  %23 = load %struct._object*, %struct._object** %floatinfo, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 %idxprom34
  store %struct._object* %call32, %struct._object** %arrayidx36, align 8
  %call37 = call %struct._object* @PyFloat_FromDouble(double 0x3CB0000000000000)
  %25 = load i32, i32* %pos, align 4
  %inc38 = add i32 %25, 1
  store i32 %inc38, i32* %pos, align 4
  %idxprom39 = sext i32 %25 to i64
  %26 = load %struct._object*, %struct._object** %floatinfo, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 %idxprom39
  store %struct._object* %call37, %struct._object** %arrayidx41, align 8
  %call42 = call %struct._object* @PyLong_FromLong(i64 2)
  %28 = load i32, i32* %pos, align 4
  %inc43 = add i32 %28, 1
  store i32 %inc43, i32* %pos, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load %struct._object*, %struct._object** %floatinfo, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item45 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx46 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item45, i32 0, i64 %idxprom44
  store %struct._object* %call42, %struct._object** %arrayidx46, align 8
  %31 = call i32 @llvm.flt.rounds()
  %conv = sext i32 %31 to i64
  %call47 = call %struct._object* @PyLong_FromLong(i64 %conv)
  %32 = load i32, i32* %pos, align 4
  %inc48 = add i32 %32, 1
  store i32 %inc48, i32* %pos, align 4
  %idxprom49 = sext i32 %32 to i64
  %33 = load %struct._object*, %struct._object** %floatinfo, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item50 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx51 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item50, i32 0, i64 %idxprom49
  store %struct._object* %call47, %struct._object** %arrayidx51, align 8
  %call52 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call52, null
  br i1 %tobool, label %if.then.53, label %if.end.64

if.then.53:                                       ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.53
  %35 = load %struct._object*, %struct._object** %floatinfo, align 8
  store %struct._object* %35, %struct._object** %_py_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp54 = icmp ne %struct._object* %36, null
  br i1 %cmp54, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %floatinfo, align 8
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp58 = icmp ne i64 %dec, 0
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %do.body.57
  br label %if.end.61

if.else:                                          ; preds = %do.body.57
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.60
  br label %do.end

do.end:                                           ; preds = %if.end.61
  br label %if.end.62

if.end.62:                                        ; preds = %do.end, %do.body
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end
  %44 = load %struct._object*, %struct._object** %floatinfo, align 8
  store %struct._object* %44, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.64, %do.end.63, %if.then
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_FromDouble(double %fval) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fval.addr = alloca double, align 8
  %op = alloca %struct.PyFloatObject*, align 8
  store double %fval, double* %fval.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8
  store %struct.PyFloatObject* %0, %struct.PyFloatObject** %op, align 8
  %1 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %cmp = icmp ne %struct.PyFloatObject* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %3 = bitcast %struct.PyFloatObject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = bitcast %struct._typeobject* %4 to %struct.PyFloatObject*
  store %struct.PyFloatObject* %5, %struct.PyFloatObject** @free_list, align 8
  %6 = load i32, i32* @numfree, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* @numfree, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %call = call i8* @PyObject_Malloc(i64 24)
  %7 = bitcast i8* %call to %struct.PyFloatObject*
  store %struct.PyFloatObject* %7, %struct.PyFloatObject** %op, align 8
  %8 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %tobool = icmp ne %struct.PyFloatObject* %8, null
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %if.else
  %call2 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %9 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %10 = bitcast %struct.PyFloatObject* %9 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4, align 8
  %11 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %12 = bitcast %struct.PyFloatObject* %11 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  %13 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %14 = load double, double* %fval.addr, align 8
  %15 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1
  store double %14, double* %ob_fval, align 8
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8
  %17 = bitcast %struct.PyFloatObject* %16 to %struct._object*
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind
declare i32 @llvm.flt.rounds() #2

declare %struct._object* @PyErr_Occurred() #1

declare i8* @PyObject_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_FromString(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %last = alloca i8*, align 8
  %end = alloca i8*, align 8
  %x = alloca double, align 8
  %s_buffer = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* null, %struct._object** %s_buffer, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else.11

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
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %s_buffer, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %if.end.17

if.else.11:                                       ; preds = %entry
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %call12 = call i32 @PyObject_AsCharBuffer(%struct._object* %14, i8** %s, i64* %len)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.else.11
  %15 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %16 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 1
  %18 = load i8*, i8** %tp_name, align 8
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %15, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i8* %18)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %19 = load i8*, i8** %s, align 8
  %20 = load i64, i64* %len, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  store i8* %add.ptr, i8** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.17
  %21 = load i8*, i8** %s, align 8
  %22 = load i8*, i8** %last, align 8
  %cmp18 = icmp ult i8* %21, %22
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv = sext i8 %24 to i32
  %and19 = and i32 %conv, 255
  %conv20 = trunc i32 %and19 to i8
  %idxprom = zext i8 %conv20 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx, align 4
  %and21 = and i32 %25, 8
  %tobool22 = icmp ne i32 %and21, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %tobool22, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.body.37, %while.end
  %28 = load i8*, i8** %s, align 8
  %29 = load i8*, i8** %last, align 8
  %add.ptr24 = getelementptr i8, i8* %29, i64 -1
  %cmp25 = icmp ult i8* %28, %add.ptr24
  br i1 %cmp25, label %land.rhs.27, label %land.end.36

land.rhs.27:                                      ; preds = %while.cond.23
  %30 = load i8*, i8** %last, align 8
  %arrayidx28 = getelementptr i8, i8* %30, i64 -1
  %31 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %31 to i32
  %and30 = and i32 %conv29, 255
  %conv31 = trunc i32 %and30 to i8
  %idxprom32 = zext i8 %conv31 to i64
  %arrayidx33 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom32
  %32 = load i32, i32* %arrayidx33, align 4
  %and34 = and i32 %32, 8
  %tobool35 = icmp ne i32 %and34, 0
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.27, %while.cond.23
  %33 = phi i1 [ false, %while.cond.23 ], [ %tobool35, %land.rhs.27 ]
  br i1 %33, label %while.body.37, label %while.end.39

while.body.37:                                    ; preds = %land.end.36
  %34 = load i8*, i8** %last, align 8
  %incdec.ptr38 = getelementptr i8, i8* %34, i32 -1
  store i8* %incdec.ptr38, i8** %last, align 8
  br label %while.cond.23

while.end.39:                                     ; preds = %land.end.36
  %35 = load i8*, i8** %s, align 8
  %call40 = call double @PyOS_string_to_double(i8* %35, i8** %end, %struct._object* null)
  store double %call40, double* %x, align 8
  %36 = load i8*, i8** %end, align 8
  %37 = load i8*, i8** %last, align 8
  %cmp41 = icmp ne i8* %36, %37
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %while.end.39
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %39 = load %struct._object*, %struct._object** %v.addr, align 8
  %call44 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), %struct._object* %39)
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.54

if.else.45:                                       ; preds = %while.end.39
  %40 = load double, double* %x, align 8
  %cmp46 = fcmp oeq double %40, -1.000000e+00
  br i1 %cmp46, label %land.lhs.true, label %if.else.51

land.lhs.true:                                    ; preds = %if.else.45
  %call48 = call %struct._object* @PyErr_Occurred()
  %tobool49 = icmp ne %struct._object* %call48, null
  br i1 %tobool49, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %result, align 8
  br label %if.end.53

if.else.51:                                       ; preds = %land.lhs.true, %if.else.45
  %41 = load double, double* %x, align 8
  %call52 = call %struct._object* @PyFloat_FromDouble(double %41)
  store %struct._object* %call52, %struct._object** %result, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.43
  br label %do.body.55

do.body.55:                                       ; preds = %if.end.54
  %42 = load %struct._object*, %struct._object** %s_buffer, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp56 = icmp ne %struct._object* %43, null
  br i1 %cmp56, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %do.body.55
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp60, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %46, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %49(%struct._object* %50)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.55
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %51 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.72, %if.then.13, %do.end, %if.then.2
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #1

; Function Attrs: nounwind uwtable
define double @PyFloat_AsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  %nb = alloca %struct.PyNumberMethods*, align 8
  %fo = alloca %struct.PyFloatObject*, align 8
  %val = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8
  %0 = load %struct._object*, %struct._object** %op.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %5 = load %struct._object*, %struct._object** %op.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %6, i32 0, i32 1
  %7 = load double, double* %ob_fval, align 8
  store double %7, double* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** %op.addr, align 8
  %cmp3 = icmp eq %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 @PyErr_BadArgument()
  store double -1.000000e+00, double* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %op.addr, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 10
  %11 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8
  store %struct.PyNumberMethods* %11, %struct.PyNumberMethods** %nb, align 8
  %cmp8 = icmp eq %struct.PyNumberMethods* %11, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end.6
  %12 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nb, align 8
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %12, i32 0, i32 18
  %13 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8
  %cmp10 = icmp eq %struct._object* (%struct._object*)* %13, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %14 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.9
  %15 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nb, align 8
  %nb_float13 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %15, i32 0, i32 18
  %16 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float13, align 8
  %17 = load %struct._object*, %struct._object** %op.addr, align 8
  %call14 = call %struct._object* %16(%struct._object* %17)
  %18 = bitcast %struct._object* %call14 to %struct.PyFloatObject*
  store %struct.PyFloatObject* %18, %struct.PyFloatObject** %fo, align 8
  %19 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8
  %cmp15 = icmp eq %struct.PyFloatObject* %19, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  store double -1.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %20 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8
  %21 = bitcast %struct.PyFloatObject* %20 to %struct._object*
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %cmp19 = icmp eq %struct._typeobject* %22, @PyFloat_Type
  br i1 %cmp19, label %if.end.25, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.17
  %23 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8
  %24 = bitcast %struct.PyFloatObject* %23 to %struct._object*
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %call22 = call i32 @PyType_IsSubtype(%struct._typeobject* %25, %struct._typeobject* @PyFloat_Type)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false.20
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.20, %if.end.17
  %27 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8
  %ob_fval26 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %27, i32 0, i32 1
  %28 = load double, double* %ob_fval26, align 8
  store double %28, double* %val, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.25
  %29 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8
  %30 = bitcast %struct.PyFloatObject* %29 to %struct._object*
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.30

if.else:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.30
  %37 = load double, double* %val, align 8
  store double %37, double* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.24, %if.then.16, %if.then.11, %if.then.4, %if.then
  %38 = load double, double* %retval
  ret double %38
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare i32 @PyErr_BadArgument() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @float_dealloc(%struct.PyFloatObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %op, %struct.PyFloatObject** %op.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  %1 = bitcast %struct.PyFloatObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @numfree, align 4
  %cmp1 = icmp sge i32 %3, 100
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  %5 = bitcast %struct.PyFloatObject* %4 to i8*
  call void @PyObject_Free(i8* %5)
  br label %if.end.5

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* @numfree, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* @numfree, align 4
  %7 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8
  %8 = bitcast %struct.PyFloatObject* %7 to %struct._typeobject*
  %9 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  %10 = bitcast %struct.PyFloatObject* %9 to %struct._object*
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  store %struct._typeobject* %8, %struct._typeobject** %ob_type3, align 8
  %11 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  store %struct.PyFloatObject* %11, %struct.PyFloatObject** @free_list, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %12 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  %13 = bitcast %struct.PyFloatObject* %12 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8
  %17 = bitcast %struct.PyFloatObject* %16 to %struct._object*
  %18 = bitcast %struct._object* %17 to i8*
  call void %15(i8* %18)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.else, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_repr(%struct.PyFloatObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyFloatObject*, align 8
  %result = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %call = call i8* @PyOS_double_to_string(double %1, i8 signext 114, i32 0, i32 2, i32* null)
  store i8* %call, i8** %buf, align 8
  %2 = load i8*, i8** %buf, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %buf, align 8
  %4 = load i8*, i8** %buf, align 8
  %call2 = call i64 @strlen(i8* %4) #7
  %call3 = call %struct._object* @_PyUnicode_FromASCII(i8* %3, i64 %call2)
  store %struct._object* %call3, %struct._object** %result, align 8
  %5 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %5)
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal i64 @float_hash(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %call = call i64 @_Py_HashDouble(double %1)
  ret i64 %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_richcompare(%struct._object* %v, %struct._object* %w, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %i = alloca double, align 8
  %j = alloca double, align 8
  %r = alloca i32, align 4
  %vsign = alloca i32, align 4
  %wsign = alloca i32, align 4
  %nbits = alloca i64, align 8
  %exponent = alloca i32, align 4
  %fracpart = alloca double, align 8
  %intpart = alloca double, align 8
  %result = alloca %struct._object*, align 8
  %one = alloca %struct._object*, align 8
  %vv = alloca %struct._object*, align 8
  %ww = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp154 = alloca %struct._object*, align 8
  %_py_xdecref_tmp168 = alloca %struct._object*, align 8
  %_py_decref_tmp173 = alloca %struct._object*, align 8
  %_py_xdecref_tmp187 = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 0, i32* %r, align 4
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %1, i32 0, i32 1
  %2 = load double, double* %ob_fval, align 8
  store double %2, double* %i, align 8
  %3 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %4, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %w.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyFloatObject*
  %ob_fval2 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %8, i32 0, i32 1
  %9 = load double, double* %ob_fval2, align 8
  store double %9, double* %j, align 8
  br label %if.end.207

if.else:                                          ; preds = %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %10 = load double, double* %i, align 8
  %conv = fptrunc double %10 to float
  %call3 = call i32 @__finitef(float %conv) #8
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.else.18, label %if.then.12

cond.false:                                       ; preds = %if.else
  br i1 true, label %cond.true.5, label %cond.false.8

cond.true.5:                                      ; preds = %cond.false
  %11 = load double, double* %i, align 8
  %call6 = call i32 @__finite(double %11) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.else.18, label %if.then.12

cond.false.8:                                     ; preds = %cond.false
  %12 = load double, double* %i, align 8
  %conv9 = fpext double %12 to x86_fp80
  %call10 = call i32 @__finitel(x86_fp80 %conv9) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else.18, label %if.then.12

if.then.12:                                       ; preds = %cond.false.8, %cond.true.5, %cond.true
  %13 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags, align 8
  %and = and i64 %15, 16777216
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.then.12
  store double 0.000000e+00, double* %j, align 8
  br label %if.end

if.else.17:                                       ; preds = %if.then.12
  br label %Unimplemented

if.end:                                           ; preds = %if.then.16
  br label %if.end.206

if.else.18:                                       ; preds = %cond.false.8, %cond.true.5, %cond.true
  %16 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19
  %18 = load i64, i64* %tp_flags20, align 8
  %and21 = and i64 %18, 16777216
  %cmp22 = icmp ne i64 %and21, 0
  br i1 %cmp22, label %if.then.24, label %if.else.205

if.then.24:                                       ; preds = %if.else.18
  %19 = load double, double* %i, align 8
  %cmp25 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp25, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.then.24
  br label %cond.end

cond.false.28:                                    ; preds = %if.then.24
  %20 = load double, double* %i, align 8
  %cmp29 = fcmp olt double %20, 0.000000e+00
  %cond = select i1 %cmp29, i32 -1, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi i32 [ 0, %cond.true.27 ], [ %cond, %cond.false.28 ]
  store i32 %cond31, i32* %vsign, align 4
  %21 = load %struct._object*, %struct._object** %w.addr, align 8
  %call32 = call i32 @_PyLong_Sign(%struct._object* %21)
  store i32 %call32, i32* %wsign, align 4
  %22 = load i32, i32* %vsign, align 4
  %23 = load i32, i32* %wsign, align 4
  %cmp33 = icmp ne i32 %22, %23
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %cond.end
  %24 = load i32, i32* %vsign, align 4
  %conv36 = sitofp i32 %24 to double
  store double %conv36, double* %i, align 8
  %25 = load i32, i32* %wsign, align 4
  %conv37 = sitofp i32 %25 to double
  store double %conv37, double* %j, align 8
  br label %Compare

if.end.38:                                        ; preds = %cond.end
  %26 = load %struct._object*, %struct._object** %w.addr, align 8
  %call39 = call i64 @_PyLong_NumBits(%struct._object* %26)
  store i64 %call39, i64* %nbits, align 8
  %27 = load i64, i64* %nbits, align 8
  %cmp40 = icmp eq i64 %27, -1
  br i1 %cmp40, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.38
  %call42 = call %struct._object* @PyErr_Occurred()
  %tobool43 = icmp ne %struct._object* %call42, null
  br i1 %tobool43, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear()
  %28 = load i32, i32* %vsign, align 4
  %conv45 = sitofp i32 %28 to double
  store double %conv45, double* %i, align 8
  %29 = load i32, i32* %wsign, align 4
  %conv46 = sitofp i32 %29 to double
  %mul = fmul double %conv46, 2.000000e+00
  store double %mul, double* %j, align 8
  br label %Compare

if.end.47:                                        ; preds = %land.lhs.true, %if.end.38
  %30 = load i64, i64* %nbits, align 8
  %cmp48 = icmp ule i64 %30, 48
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %31 = load %struct._object*, %struct._object** %w.addr, align 8
  %call51 = call double @PyLong_AsDouble(%struct._object* %31)
  store double %call51, double* %j, align 8
  br label %Compare

if.end.52:                                        ; preds = %if.end.47
  %32 = load i32, i32* %vsign, align 4
  %cmp53 = icmp slt i32 %32, 0
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  %33 = load double, double* %i, align 8
  %sub = fsub double -0.000000e+00, %33
  store double %sub, double* %i, align 8
  %34 = load i32, i32* %op.addr, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr [0 x i32], [0 x i32]* @_Py_SwappedOp, i32 0, i64 %idxprom
  %35 = load i32, i32* %arrayidx, align 4
  store i32 %35, i32* %op.addr, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %36 = load double, double* %i, align 8
  %call57 = call double @frexp(double %36, i32* %exponent) #2
  %37 = load i32, i32* %exponent, align 4
  %cmp58 = icmp slt i32 %37, 0
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %if.end.56
  %38 = load i32, i32* %exponent, align 4
  %conv61 = sext i32 %38 to i64
  %39 = load i64, i64* %nbits, align 8
  %cmp62 = icmp ult i64 %conv61, %39
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %lor.lhs.false.60, %if.end.56
  store double 1.000000e+00, double* %i, align 8
  store double 2.000000e+00, double* %j, align 8
  br label %Compare

if.end.65:                                        ; preds = %lor.lhs.false.60
  %40 = load i32, i32* %exponent, align 4
  %conv66 = sext i32 %40 to i64
  %41 = load i64, i64* %nbits, align 8
  %cmp67 = icmp ugt i64 %conv66, %41
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.65
  store double 2.000000e+00, double* %i, align 8
  store double 1.000000e+00, double* %j, align 8
  br label %Compare

if.end.70:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %one, align 8
  store %struct._object* null, %struct._object** %vv, align 8
  %42 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %42, %struct._object** %ww, align 8
  %43 = load i32, i32* %wsign, align 4
  %cmp71 = icmp slt i32 %43, 0
  br i1 %cmp71, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %if.end.70
  %44 = load %struct._object*, %struct._object** %w.addr, align 8
  %call74 = call %struct._object* @PyNumber_Negative(%struct._object* %44)
  store %struct._object* %call74, %struct._object** %ww, align 8
  %45 = load %struct._object*, %struct._object** %ww, align 8
  %cmp75 = icmp eq %struct._object* %45, null
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.then.73
  br label %Error

if.end.78:                                        ; preds = %if.then.73
  br label %if.end.80

if.else.79:                                       ; preds = %if.end.70
  %46 = load %struct._object*, %struct._object** %ww, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %47, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.end.78
  %48 = load double, double* %i, align 8
  %call81 = call double @modf(double %48, double* %intpart) #2
  store double %call81, double* %fracpart, align 8
  %49 = load double, double* %intpart, align 8
  %call82 = call %struct._object* @PyLong_FromDouble(double %49)
  store %struct._object* %call82, %struct._object** %vv, align 8
  %50 = load %struct._object*, %struct._object** %vv, align 8
  %cmp83 = icmp eq %struct._object* %50, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.80
  br label %Error

if.end.86:                                        ; preds = %if.end.80
  %51 = load double, double* %fracpart, align 8
  %cmp87 = fcmp une double %51, 0.000000e+00
  br i1 %cmp87, label %if.then.89, label %if.end.141

if.then.89:                                       ; preds = %if.end.86
  %call90 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call90, %struct._object** %one, align 8
  %52 = load %struct._object*, %struct._object** %one, align 8
  %cmp91 = icmp eq %struct._object* %52, null
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.then.89
  br label %Error

if.end.94:                                        ; preds = %if.then.89
  %53 = load %struct._object*, %struct._object** %ww, align 8
  %54 = load %struct._object*, %struct._object** %one, align 8
  %call95 = call %struct._object* @PyNumber_Lshift(%struct._object* %53, %struct._object* %54)
  store %struct._object* %call95, %struct._object** %temp, align 8
  %55 = load %struct._object*, %struct._object** %temp, align 8
  %cmp96 = icmp eq %struct._object* %55, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.94
  br label %Error

if.end.99:                                        ; preds = %if.end.94
  br label %do.body

do.body:                                          ; preds = %if.end.99
  %56 = load %struct._object*, %struct._object** %ww, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt100, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %ob_refcnt100, align 8
  %cmp101 = icmp ne i64 %dec, 0
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body
  br label %if.end.106

if.else.104:                                      ; preds = %do.body
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %61(%struct._object* %62)
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end

do.end:                                           ; preds = %if.end.106
  %63 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %63, %struct._object** %ww, align 8
  %64 = load %struct._object*, %struct._object** %vv, align 8
  %65 = load %struct._object*, %struct._object** %one, align 8
  %call107 = call %struct._object* @PyNumber_Lshift(%struct._object* %64, %struct._object* %65)
  store %struct._object* %call107, %struct._object** %temp, align 8
  %66 = load %struct._object*, %struct._object** %temp, align 8
  %cmp108 = icmp eq %struct._object* %66, null
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %do.end
  br label %Error

if.end.111:                                       ; preds = %do.end
  br label %do.body.112

do.body.112:                                      ; preds = %if.end.111
  %67 = load %struct._object*, %struct._object** %vv, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp113, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %69, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.112
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.112
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %72(%struct._object* %73)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  %74 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %74, %struct._object** %vv, align 8
  %75 = load %struct._object*, %struct._object** %vv, align 8
  %76 = load %struct._object*, %struct._object** %one, align 8
  %call124 = call %struct._object* @PyNumber_Or(%struct._object* %75, %struct._object* %76)
  store %struct._object* %call124, %struct._object** %temp, align 8
  %77 = load %struct._object*, %struct._object** %temp, align 8
  %cmp125 = icmp eq %struct._object* %77, null
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %do.end.123
  br label %Error

if.end.128:                                       ; preds = %do.end.123
  br label %do.body.129

do.body.129:                                      ; preds = %if.end.128
  %78 = load %struct._object*, %struct._object** %vv, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp130, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %80, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.129
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.129
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %83(%struct._object* %84)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  %85 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %85, %struct._object** %vv, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %do.end.140, %if.end.86
  %86 = load %struct._object*, %struct._object** %vv, align 8
  %87 = load %struct._object*, %struct._object** %ww, align 8
  %88 = load i32, i32* %op.addr, align 4
  %call142 = call i32 @PyObject_RichCompareBool(%struct._object* %86, %struct._object* %87, i32 %88)
  store i32 %call142, i32* %r, align 4
  %89 = load i32, i32* %r, align 4
  %cmp143 = icmp slt i32 %89, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.141
  br label %Error

if.end.146:                                       ; preds = %if.end.141
  %90 = load i32, i32* %r, align 4
  %conv147 = sext i32 %90 to i64
  %call148 = call %struct._object* @PyBool_FromLong(i64 %conv147)
  store %struct._object* %call148, %struct._object** %result, align 8
  br label %Error

Error:                                            ; preds = %if.end.146, %if.then.145, %if.then.127, %if.then.110, %if.then.98, %if.then.93, %if.then.85, %if.then.77
  br label %do.body.149

do.body.149:                                      ; preds = %Error
  %91 = load %struct._object*, %struct._object** %vv, align 8
  store %struct._object* %91, %struct._object** %_py_xdecref_tmp, align 8
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp150 = icmp ne %struct._object* %92, null
  br i1 %cmp150, label %if.then.152, label %if.end.165

if.then.152:                                      ; preds = %do.body.149
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp154, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_refcnt155 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt155, align 8
  %dec156 = add i64 %95, -1
  store i64 %dec156, i64* %ob_refcnt155, align 8
  %cmp157 = icmp ne i64 %dec156, 0
  br i1 %cmp157, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163

if.else.160:                                      ; preds = %do.body.153
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp154, align 8
  call void %98(%struct._object* %99)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.body.149
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  br label %do.body.167

do.body.167:                                      ; preds = %do.end.166
  %100 = load %struct._object*, %struct._object** %ww, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp168, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp168, align 8
  %cmp169 = icmp ne %struct._object* %101, null
  br i1 %cmp169, label %if.then.171, label %if.end.184

if.then.171:                                      ; preds = %do.body.167
  br label %do.body.172

do.body.172:                                      ; preds = %if.then.171
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp168, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp173, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt174, align 8
  %dec175 = add i64 %104, -1
  store i64 %dec175, i64* %ob_refcnt174, align 8
  %cmp176 = icmp ne i64 %dec175, 0
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %do.body.172
  br label %if.end.182

if.else.179:                                      ; preds = %do.body.172
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  %ob_type180 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type180, align 8
  %tp_dealloc181 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc181, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp173, align 8
  call void %107(%struct._object* %108)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.179, %if.then.178
  br label %do.end.183

do.end.183:                                       ; preds = %if.end.182
  br label %if.end.184

if.end.184:                                       ; preds = %do.end.183, %do.body.167
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.184
  br label %do.body.186

do.body.186:                                      ; preds = %do.end.185
  %109 = load %struct._object*, %struct._object** %one, align 8
  store %struct._object* %109, %struct._object** %_py_xdecref_tmp187, align 8
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp187, align 8
  %cmp188 = icmp ne %struct._object* %110, null
  br i1 %cmp188, label %if.then.190, label %if.end.203

if.then.190:                                      ; preds = %do.body.186
  br label %do.body.191

do.body.191:                                      ; preds = %if.then.190
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp187, align 8
  store %struct._object* %111, %struct._object** %_py_decref_tmp192, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %113, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.191
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.191
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 1
  %115 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %115, i32 0, i32 4
  %116 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %116(%struct._object* %117)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %do.body.186
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  %118 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %118, %struct._object** %retval
  br label %return

if.else.205:                                      ; preds = %if.else.18
  br label %Unimplemented

if.end.206:                                       ; preds = %if.end
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.then
  br label %Compare

Compare:                                          ; preds = %if.end.207, %if.then.69, %if.then.64, %if.then.50, %if.then.44, %if.then.35
  %119 = load i32, i32* %op.addr, align 4
  switch i32 %119, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.210
    i32 1, label %sw.bb.213
    i32 5, label %sw.bb.216
    i32 0, label %sw.bb.219
    i32 4, label %sw.bb.222
  ]

sw.bb:                                            ; preds = %Compare
  %120 = load double, double* %i, align 8
  %121 = load double, double* %j, align 8
  %cmp208 = fcmp oeq double %120, %121
  %conv209 = zext i1 %cmp208 to i32
  store i32 %conv209, i32* %r, align 4
  br label %sw.epilog

sw.bb.210:                                        ; preds = %Compare
  %122 = load double, double* %i, align 8
  %123 = load double, double* %j, align 8
  %cmp211 = fcmp une double %122, %123
  %conv212 = zext i1 %cmp211 to i32
  store i32 %conv212, i32* %r, align 4
  br label %sw.epilog

sw.bb.213:                                        ; preds = %Compare
  %124 = load double, double* %i, align 8
  %125 = load double, double* %j, align 8
  %cmp214 = fcmp ole double %124, %125
  %conv215 = zext i1 %cmp214 to i32
  store i32 %conv215, i32* %r, align 4
  br label %sw.epilog

sw.bb.216:                                        ; preds = %Compare
  %126 = load double, double* %i, align 8
  %127 = load double, double* %j, align 8
  %cmp217 = fcmp oge double %126, %127
  %conv218 = zext i1 %cmp217 to i32
  store i32 %conv218, i32* %r, align 4
  br label %sw.epilog

sw.bb.219:                                        ; preds = %Compare
  %128 = load double, double* %i, align 8
  %129 = load double, double* %j, align 8
  %cmp220 = fcmp olt double %128, %129
  %conv221 = zext i1 %cmp220 to i32
  store i32 %conv221, i32* %r, align 4
  br label %sw.epilog

sw.bb.222:                                        ; preds = %Compare
  %130 = load double, double* %i, align 8
  %131 = load double, double* %j, align 8
  %cmp223 = fcmp ogt double %130, %131
  %conv224 = zext i1 %cmp223 to i32
  store i32 %conv224, i32* %r, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %Compare, %sw.bb.222, %sw.bb.219, %sw.bb.216, %sw.bb.213, %sw.bb.210, %sw.bb
  %132 = load i32, i32* %r, align 4
  %conv225 = sext i32 %132 to i64
  %call226 = call %struct._object* @PyBool_FromLong(i64 %conv225)
  store %struct._object* %call226, %struct._object** %retval
  br label %return

Unimplemented:                                    ; preds = %if.else.205, %if.else.17
  %133 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc227 = add i64 %133, 1
  store i64 %inc227, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %Unimplemented, %sw.epilog, %do.end.204
  %134 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %134
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %x, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp ne %struct._typeobject* %0, @PyFloat_Type
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @float_subtype_new(%struct._typeobject* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %4, %struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @float_new.kwlist, i32 0, i32 0), %struct._object** %x)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %x, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp4 = icmp eq %struct._typeobject* %7, @PyUnicode_Type
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** %x, align 8
  %call6 = call %struct._object* @PyFloat_FromString(%struct._object* %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %x, align 8
  %call8 = call %struct._object* @PyNumber_Float(%struct._object* %9)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca float, align 4
  store double 0x433FFF0102030405, double* %x, align 8
  %0 = bitcast double* %x to i8*
  %call = call i32 @memcmp(i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i64 8) #7
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @detected_double_format, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %1 = bitcast double* %x to i8*
  %call1 = call i32 @memcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 8) #7
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 2, i32* @detected_double_format, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* @detected_double_format, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  store float 0x416FE02040000000, float* %y, align 4
  %2 = bitcast float* %y to i8*
  %call6 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* @detected_float_format, align 4
  br label %if.end.15

if.else.9:                                        ; preds = %if.end.5
  %3 = bitcast float* %y to i8*
  %call10 = call i32 @memcmp(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #7
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else.9
  store i32 2, i32* @detected_float_format, align 4
  br label %if.end.14

if.else.13:                                       ; preds = %if.else.9
  store i32 0, i32* @detected_float_format, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %4 = load i32, i32* @detected_double_format, align 4
  store i32 %4, i32* @double_format, align 4
  %5 = load i32, i32* @detected_float_format, align 4
  store i32 %5, i32* @float_format, align 4
  %6 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FloatInfoType, i32 0, i32 1), align 8
  %cmp16 = icmp eq i8* %6, null
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %call18 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @FloatInfoType, %struct.PyStructSequence_Desc* @floatinfo_desc)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.20
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #1

; Function Attrs: nounwind uwtable
define i32 @PyFloat_ClearFreeList() #0 {
entry:
  %f = alloca %struct.PyFloatObject*, align 8
  %next = alloca %struct.PyFloatObject*, align 8
  %i = alloca i32, align 4
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8
  store %struct.PyFloatObject* %0, %struct.PyFloatObject** %f, align 8
  %1 = load i32, i32* @numfree, align 4
  store i32 %1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8
  %tobool = icmp ne %struct.PyFloatObject* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8
  %4 = bitcast %struct.PyFloatObject* %3 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %6 = bitcast %struct._typeobject* %5 to %struct.PyFloatObject*
  store %struct.PyFloatObject* %6, %struct.PyFloatObject** %next, align 8
  %7 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8
  %8 = bitcast %struct.PyFloatObject* %7 to i8*
  call void @PyObject_Free(i8* %8)
  %9 = load %struct.PyFloatObject*, %struct.PyFloatObject** %next, align 8
  store %struct.PyFloatObject* %9, %struct.PyFloatObject** %f, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.PyFloatObject* null, %struct.PyFloatObject** @free_list, align 8
  store i32 0, i32* @numfree, align 4
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define void @PyFloat_Fini() #0 {
entry:
  %call = call i32 @PyFloat_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyFloat_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load i32, i32* @numfree, align 4
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %1, i64 24)
  ret void
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Pack4(double %x, i8* %p, i32 %le) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %sign = alloca i8, align 1
  %e = alloca i32, align 4
  %f = alloca double, align 8
  %fbits = alloca i32, align 4
  %incr = alloca i32, align 4
  %y = alloca float, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %incr58 = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i32, i32* @float_format, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.56

if.then:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4
  %1 = load i32, i32* %le.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 3
  store i8* %add.ptr, i8** %p.addr, align 8
  store i32 -1, i32* %incr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i8 1, i8* %sign, align 1
  %4 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %4
  store double %sub, double* %x.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  store i8 0, i8* %sign, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %5 = load double, double* %x.addr, align 8
  %call = call double @frexp(double %5, i32* %e) #2
  store double %call, double* %f, align 8
  %6 = load double, double* %f, align 8
  %cmp5 = fcmp ole double 5.000000e-01, %6
  br i1 %cmp5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.end.4
  %7 = load double, double* %f, align 8
  %cmp6 = fcmp olt double %7, 1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load double, double* %f, align 8
  %mul = fmul double %8, 2.000000e+00
  store double %mul, double* %f, align 8
  %9 = load i32, i32* %e, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %e, align 4
  br label %if.end.13

if.else.8:                                        ; preds = %land.lhs.true, %if.end.4
  %10 = load double, double* %f, align 8
  %cmp9 = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.8
  store i32 0, i32* %e, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.else.8
  %11 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %12 = load i32, i32* %e, align 4
  %cmp14 = icmp sge i32 %12, 128
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  br label %Overflow

if.else.16:                                       ; preds = %if.end.13
  %13 = load i32, i32* %e, align 4
  %cmp17 = icmp slt i32 %13, -126
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.16
  %14 = load double, double* %f, align 8
  %15 = load i32, i32* %e, align 4
  %add = add i32 126, %15
  %call19 = call double @ldexp(double %14, i32 %add) #2
  store double %call19, double* %f, align 8
  store i32 0, i32* %e, align 4
  br label %if.end.28

if.else.20:                                       ; preds = %if.else.16
  %16 = load i32, i32* %e, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.then.24

land.lhs.true.22:                                 ; preds = %if.else.20
  %17 = load double, double* %f, align 8
  %cmp23 = fcmp oeq double %17, 0.000000e+00
  br i1 %cmp23, label %if.end.27, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22, %if.else.20
  %18 = load i32, i32* %e, align 4
  %add25 = add i32 %18, 127
  store i32 %add25, i32* %e, align 4
  %19 = load double, double* %f, align 8
  %sub26 = fsub double %19, 1.000000e+00
  store double %sub26, double* %f, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %20 = load double, double* %f, align 8
  %mul30 = fmul double %20, 8.388608e+06
  store double %mul30, double* %f, align 8
  %21 = load double, double* %f, align 8
  %add31 = fadd double %21, 5.000000e-01
  %conv = fptoui double %add31 to i32
  store i32 %conv, i32* %fbits, align 4
  %22 = load i32, i32* %fbits, align 4
  %shr = lshr i32 %22, 23
  %tobool32 = icmp ne i32 %shr, 0
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.end.29
  store i32 0, i32* %fbits, align 4
  %23 = load i32, i32* %e, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %e, align 4
  %24 = load i32, i32* %e, align 4
  %cmp34 = icmp sge i32 %24, 255
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  br label %Overflow

if.end.37:                                        ; preds = %if.then.33
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.29
  %25 = load i8, i8* %sign, align 1
  %conv39 = zext i8 %25 to i32
  %shl = shl i32 %conv39, 7
  %26 = load i32, i32* %e, align 4
  %shr40 = ashr i32 %26, 1
  %or = or i32 %shl, %shr40
  %conv41 = trunc i32 %or to i8
  %27 = load i8*, i8** %p.addr, align 8
  store i8 %conv41, i8* %27, align 1
  %28 = load i32, i32* %incr, align 4
  %29 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %28 to i64
  %add.ptr42 = getelementptr i8, i8* %29, i64 %idx.ext
  store i8* %add.ptr42, i8** %p.addr, align 8
  %30 = load i32, i32* %e, align 4
  %and = and i32 %30, 1
  %shl43 = shl i32 %and, 7
  %31 = load i32, i32* %fbits, align 4
  %shr44 = lshr i32 %31, 16
  %or45 = or i32 %shl43, %shr44
  %conv46 = trunc i32 %or45 to i8
  %32 = load i8*, i8** %p.addr, align 8
  store i8 %conv46, i8* %32, align 1
  %33 = load i32, i32* %incr, align 4
  %34 = load i8*, i8** %p.addr, align 8
  %idx.ext47 = sext i32 %33 to i64
  %add.ptr48 = getelementptr i8, i8* %34, i64 %idx.ext47
  store i8* %add.ptr48, i8** %p.addr, align 8
  %35 = load i32, i32* %fbits, align 4
  %shr49 = lshr i32 %35, 8
  %and50 = and i32 %shr49, 255
  %conv51 = trunc i32 %and50 to i8
  %36 = load i8*, i8** %p.addr, align 8
  store i8 %conv51, i8* %36, align 1
  %37 = load i32, i32* %incr, align 4
  %38 = load i8*, i8** %p.addr, align 8
  %idx.ext52 = sext i32 %37 to i64
  %add.ptr53 = getelementptr i8, i8* %38, i64 %idx.ext52
  store i8* %add.ptr53, i8** %p.addr, align 8
  %39 = load i32, i32* %fbits, align 4
  %and54 = and i32 %39, 255
  %conv55 = trunc i32 %and54 to i8
  %40 = load i8*, i8** %p.addr, align 8
  store i8 %conv55, i8* %40, align 1
  store i32 0, i32* %retval
  br label %return

if.else.56:                                       ; preds = %entry
  %41 = load double, double* %x.addr, align 8
  %conv57 = fptrunc double %41 to float
  store float %conv57, float* %y, align 4
  %42 = bitcast float* %y to i8*
  store i8* %42, i8** %s, align 8
  store i32 1, i32* %incr58, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.56
  %43 = load float, float* %y, align 4
  %call59 = call i32 @__isinff(float %43) #8
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.69, label %if.end.83

cond.false:                                       ; preds = %if.else.56
  br i1 false, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %cond.false
  %44 = load float, float* %y, align 4
  %conv62 = fpext float %44 to double
  %call63 = call i32 @__isinf(double %conv62) #8
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true.69, label %if.end.83

cond.false.65:                                    ; preds = %cond.false
  %45 = load float, float* %y, align 4
  %conv66 = fpext float %45 to x86_fp80
  %call67 = call i32 @__isinfl(x86_fp80 %conv66) #8
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.83

land.lhs.true.69:                                 ; preds = %cond.false.65, %cond.true.61, %cond.true
  br i1 false, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %land.lhs.true.69
  %46 = load double, double* %x.addr, align 8
  %conv71 = fptrunc double %46 to float
  %call72 = call i32 @__isinff(float %conv71) #8
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.83, label %if.then.82

cond.false.74:                                    ; preds = %land.lhs.true.69
  br i1 true, label %cond.true.75, label %cond.false.78

cond.true.75:                                     ; preds = %cond.false.74
  %47 = load double, double* %x.addr, align 8
  %call76 = call i32 @__isinf(double %47) #8
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.end.83, label %if.then.82

cond.false.78:                                    ; preds = %cond.false.74
  %48 = load double, double* %x.addr, align 8
  %conv79 = fpext double %48 to x86_fp80
  %call80 = call i32 @__isinfl(x86_fp80 %conv79) #8
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %cond.false.78, %cond.true.75, %cond.true.70
  br label %Overflow

if.end.83:                                        ; preds = %cond.false.78, %cond.true.75, %cond.true.70, %cond.false.65, %cond.true.61, %cond.true
  %49 = load i32, i32* @float_format, align 4
  %cmp84 = icmp eq i32 %49, 2
  br i1 %cmp84, label %land.lhs.true.86, label %lor.lhs.false

land.lhs.true.86:                                 ; preds = %if.end.83
  %50 = load i32, i32* %le.addr, align 4
  %tobool87 = icmp ne i32 %50, 0
  br i1 %tobool87, label %lor.lhs.false, label %if.then.92

lor.lhs.false:                                    ; preds = %land.lhs.true.86, %if.end.83
  %51 = load i32, i32* @float_format, align 4
  %cmp88 = icmp eq i32 %51, 1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.94

land.lhs.true.90:                                 ; preds = %lor.lhs.false
  %52 = load i32, i32* %le.addr, align 4
  %tobool91 = icmp ne i32 %52, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %land.lhs.true.90, %land.lhs.true.86
  %53 = load i8*, i8** %p.addr, align 8
  %add.ptr93 = getelementptr i8, i8* %53, i64 3
  store i8* %add.ptr93, i8** %p.addr, align 8
  store i32 -1, i32* %incr58, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %land.lhs.true.90, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.94
  %54 = load i32, i32* %i, align 4
  %cmp95 = icmp slt i32 %54, 4
  br i1 %cmp95, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %55, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %p.addr, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i32, i32* %incr58, align 4
  %59 = load i8*, i8** %p.addr, align 8
  %idx.ext97 = sext i32 %58 to i64
  %add.ptr98 = getelementptr i8, i8* %59, i64 %idx.ext97
  store i8* %add.ptr98, i8** %p.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %60 = load i32, i32* %i, align 4
  %inc99 = add i32 %60, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

Overflow:                                         ; preds = %if.then.82, %if.then.36, %if.then.15
  %61 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %Overflow, %for.end, %if.end.38, %if.else.11
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind
declare double @frexp(double, i32*) #4

; Function Attrs: nounwind
declare double @ldexp(double, i32) #4

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #5

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #5

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #5

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Pack8(double %x, i8* %p, i32 %le) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca double, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %sign = alloca i8, align 1
  %e = alloca i32, align 4
  %f = alloca double, align 8
  %fhi = alloca i32, align 4
  %flo = alloca i32, align 4
  %incr = alloca i32, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %incr85 = alloca i32, align 4
  store double %x, double* %x.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i32, i32* @double_format, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.84

if.then:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4
  %1 = load i32, i32* %le.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 7
  store i8* %add.ptr, i8** %p.addr, align 8
  store i32 -1, i32* %incr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load double, double* %x.addr, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i8 1, i8* %sign, align 1
  %4 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %4
  store double %sub, double* %x.addr, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  store i8 0, i8* %sign, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %5 = load double, double* %x.addr, align 8
  %call = call double @frexp(double %5, i32* %e) #2
  store double %call, double* %f, align 8
  %6 = load double, double* %f, align 8
  %cmp5 = fcmp ole double 5.000000e-01, %6
  br i1 %cmp5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.end.4
  %7 = load double, double* %f, align 8
  %cmp6 = fcmp olt double %7, 1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  %8 = load double, double* %f, align 8
  %mul = fmul double %8, 2.000000e+00
  store double %mul, double* %f, align 8
  %9 = load i32, i32* %e, align 4
  %dec = add i32 %9, -1
  store i32 %dec, i32* %e, align 4
  br label %if.end.13

if.else.8:                                        ; preds = %land.lhs.true, %if.end.4
  %10 = load double, double* %f, align 8
  %cmp9 = fcmp oeq double %10, 0.000000e+00
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.8
  store i32 0, i32* %e, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.else.8
  %11 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %12 = load i32, i32* %e, align 4
  %cmp14 = icmp sge i32 %12, 1024
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.end.13
  br label %Overflow

if.else.16:                                       ; preds = %if.end.13
  %13 = load i32, i32* %e, align 4
  %cmp17 = icmp slt i32 %13, -1022
  br i1 %cmp17, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.16
  %14 = load double, double* %f, align 8
  %15 = load i32, i32* %e, align 4
  %add = add i32 1022, %15
  %call19 = call double @ldexp(double %14, i32 %add) #2
  store double %call19, double* %f, align 8
  store i32 0, i32* %e, align 4
  br label %if.end.28

if.else.20:                                       ; preds = %if.else.16
  %16 = load i32, i32* %e, align 4
  %cmp21 = icmp eq i32 %16, 0
  br i1 %cmp21, label %land.lhs.true.22, label %if.then.24

land.lhs.true.22:                                 ; preds = %if.else.20
  %17 = load double, double* %f, align 8
  %cmp23 = fcmp oeq double %17, 0.000000e+00
  br i1 %cmp23, label %if.end.27, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22, %if.else.20
  %18 = load i32, i32* %e, align 4
  %add25 = add i32 %18, 1023
  store i32 %add25, i32* %e, align 4
  %19 = load double, double* %f, align 8
  %sub26 = fsub double %19, 1.000000e+00
  store double %sub26, double* %f, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %20 = load double, double* %f, align 8
  %mul30 = fmul double %20, 0x41B0000000000000
  store double %mul30, double* %f, align 8
  %21 = load double, double* %f, align 8
  %conv = fptoui double %21 to i32
  store i32 %conv, i32* %fhi, align 4
  %22 = load i32, i32* %fhi, align 4
  %conv31 = uitofp i32 %22 to double
  %23 = load double, double* %f, align 8
  %sub32 = fsub double %23, %conv31
  store double %sub32, double* %f, align 8
  %24 = load double, double* %f, align 8
  %mul33 = fmul double %24, 0x4170000000000000
  store double %mul33, double* %f, align 8
  %25 = load double, double* %f, align 8
  %add34 = fadd double %25, 5.000000e-01
  %conv35 = fptoui double %add34 to i32
  store i32 %conv35, i32* %flo, align 4
  %26 = load i32, i32* %flo, align 4
  %shr = lshr i32 %26, 24
  %tobool36 = icmp ne i32 %shr, 0
  br i1 %tobool36, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %if.end.29
  store i32 0, i32* %flo, align 4
  %27 = load i32, i32* %fhi, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %fhi, align 4
  %28 = load i32, i32* %fhi, align 4
  %shr38 = lshr i32 %28, 28
  %tobool39 = icmp ne i32 %shr38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.then.37
  store i32 0, i32* %fhi, align 4
  %29 = load i32, i32* %e, align 4
  %inc41 = add i32 %29, 1
  store i32 %inc41, i32* %e, align 4
  %30 = load i32, i32* %e, align 4
  %cmp42 = icmp sge i32 %30, 2047
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.40
  br label %Overflow

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.37
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.29
  %31 = load i8, i8* %sign, align 1
  %conv48 = zext i8 %31 to i32
  %shl = shl i32 %conv48, 7
  %32 = load i32, i32* %e, align 4
  %shr49 = ashr i32 %32, 4
  %or = or i32 %shl, %shr49
  %conv50 = trunc i32 %or to i8
  %33 = load i8*, i8** %p.addr, align 8
  store i8 %conv50, i8* %33, align 1
  %34 = load i32, i32* %incr, align 4
  %35 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %34 to i64
  %add.ptr51 = getelementptr i8, i8* %35, i64 %idx.ext
  store i8* %add.ptr51, i8** %p.addr, align 8
  %36 = load i32, i32* %e, align 4
  %and = and i32 %36, 15
  %shl52 = shl i32 %and, 4
  %37 = load i32, i32* %fhi, align 4
  %shr53 = lshr i32 %37, 24
  %or54 = or i32 %shl52, %shr53
  %conv55 = trunc i32 %or54 to i8
  %38 = load i8*, i8** %p.addr, align 8
  store i8 %conv55, i8* %38, align 1
  %39 = load i32, i32* %incr, align 4
  %40 = load i8*, i8** %p.addr, align 8
  %idx.ext56 = sext i32 %39 to i64
  %add.ptr57 = getelementptr i8, i8* %40, i64 %idx.ext56
  store i8* %add.ptr57, i8** %p.addr, align 8
  %41 = load i32, i32* %fhi, align 4
  %shr58 = lshr i32 %41, 16
  %and59 = and i32 %shr58, 255
  %conv60 = trunc i32 %and59 to i8
  %42 = load i8*, i8** %p.addr, align 8
  store i8 %conv60, i8* %42, align 1
  %43 = load i32, i32* %incr, align 4
  %44 = load i8*, i8** %p.addr, align 8
  %idx.ext61 = sext i32 %43 to i64
  %add.ptr62 = getelementptr i8, i8* %44, i64 %idx.ext61
  store i8* %add.ptr62, i8** %p.addr, align 8
  %45 = load i32, i32* %fhi, align 4
  %shr63 = lshr i32 %45, 8
  %and64 = and i32 %shr63, 255
  %conv65 = trunc i32 %and64 to i8
  %46 = load i8*, i8** %p.addr, align 8
  store i8 %conv65, i8* %46, align 1
  %47 = load i32, i32* %incr, align 4
  %48 = load i8*, i8** %p.addr, align 8
  %idx.ext66 = sext i32 %47 to i64
  %add.ptr67 = getelementptr i8, i8* %48, i64 %idx.ext66
  store i8* %add.ptr67, i8** %p.addr, align 8
  %49 = load i32, i32* %fhi, align 4
  %and68 = and i32 %49, 255
  %conv69 = trunc i32 %and68 to i8
  %50 = load i8*, i8** %p.addr, align 8
  store i8 %conv69, i8* %50, align 1
  %51 = load i32, i32* %incr, align 4
  %52 = load i8*, i8** %p.addr, align 8
  %idx.ext70 = sext i32 %51 to i64
  %add.ptr71 = getelementptr i8, i8* %52, i64 %idx.ext70
  store i8* %add.ptr71, i8** %p.addr, align 8
  %53 = load i32, i32* %flo, align 4
  %shr72 = lshr i32 %53, 16
  %and73 = and i32 %shr72, 255
  %conv74 = trunc i32 %and73 to i8
  %54 = load i8*, i8** %p.addr, align 8
  store i8 %conv74, i8* %54, align 1
  %55 = load i32, i32* %incr, align 4
  %56 = load i8*, i8** %p.addr, align 8
  %idx.ext75 = sext i32 %55 to i64
  %add.ptr76 = getelementptr i8, i8* %56, i64 %idx.ext75
  store i8* %add.ptr76, i8** %p.addr, align 8
  %57 = load i32, i32* %flo, align 4
  %shr77 = lshr i32 %57, 8
  %and78 = and i32 %shr77, 255
  %conv79 = trunc i32 %and78 to i8
  %58 = load i8*, i8** %p.addr, align 8
  store i8 %conv79, i8* %58, align 1
  %59 = load i32, i32* %incr, align 4
  %60 = load i8*, i8** %p.addr, align 8
  %idx.ext80 = sext i32 %59 to i64
  %add.ptr81 = getelementptr i8, i8* %60, i64 %idx.ext80
  store i8* %add.ptr81, i8** %p.addr, align 8
  %61 = load i32, i32* %flo, align 4
  %and82 = and i32 %61, 255
  %conv83 = trunc i32 %and82 to i8
  %62 = load i8*, i8** %p.addr, align 8
  store i8 %conv83, i8* %62, align 1
  store i32 0, i32* %retval
  br label %return

Overflow:                                         ; preds = %if.then.44, %if.then.15
  %63 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %63, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.84:                                       ; preds = %entry
  %64 = bitcast double* %x.addr to i8*
  store i8* %64, i8** %s, align 8
  store i32 1, i32* %incr85, align 4
  %65 = load i32, i32* @double_format, align 4
  %cmp86 = icmp eq i32 %65, 2
  br i1 %cmp86, label %land.lhs.true.88, label %lor.lhs.false

land.lhs.true.88:                                 ; preds = %if.else.84
  %66 = load i32, i32* %le.addr, align 4
  %tobool89 = icmp ne i32 %66, 0
  br i1 %tobool89, label %lor.lhs.false, label %if.then.94

lor.lhs.false:                                    ; preds = %land.lhs.true.88, %if.else.84
  %67 = load i32, i32* @double_format, align 4
  %cmp90 = icmp eq i32 %67, 1
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.96

land.lhs.true.92:                                 ; preds = %lor.lhs.false
  %68 = load i32, i32* %le.addr, align 4
  %tobool93 = icmp ne i32 %68, 0
  br i1 %tobool93, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %land.lhs.true.92, %land.lhs.true.88
  %69 = load i8*, i8** %p.addr, align 8
  %add.ptr95 = getelementptr i8, i8* %69, i64 7
  store i8* %add.ptr95, i8** %p.addr, align 8
  store i32 -1, i32* %incr85, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %land.lhs.true.92, %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.96
  %70 = load i32, i32* %i, align 4
  %cmp97 = icmp slt i32 %70, 8
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %71 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %71, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %p.addr, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %incr85, align 4
  %75 = load i8*, i8** %p.addr, align 8
  %idx.ext99 = sext i32 %74 to i64
  %add.ptr100 = getelementptr i8, i8* %75, i64 %idx.ext99
  store i8* %add.ptr100, i8** %p.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i32, i32* %i, align 4
  %inc101 = add i32 %76, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %Overflow, %if.end.47, %if.else.11
  %77 = load i32, i32* %retval
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define double @_PyFloat_Unpack4(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca double, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %sign = alloca i8, align 1
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %x = alloca double, align 8
  %incr = alloca i32, align 4
  %x35 = alloca float, align 4
  %buf = alloca [4 x i8], align 1
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i32, i32* @float_format, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4
  %1 = load i32, i32* %le.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 3
  store i8* %add.ptr, i8** %p.addr, align 8
  store i32 -1, i32* %incr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 7
  %and = and i32 %shr, 1
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, i8* %sign, align 1
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  %and4 = and i32 %conv3, 127
  %shl = shl i32 %and4, 1
  store i32 %shl, i32* %e, align 4
  %7 = load i32, i32* %incr, align 4
  %8 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr5 = getelementptr i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr5, i8** %p.addr, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %shr7 = ashr i32 %conv6, 7
  %and8 = and i32 %shr7, 1
  %11 = load i32, i32* %e, align 4
  %or = or i32 %11, %and8
  store i32 %or, i32* %e, align 4
  %12 = load i8*, i8** %p.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %and10 = and i32 %conv9, 127
  %shl11 = shl i32 %and10, 16
  store i32 %shl11, i32* %f, align 4
  %14 = load i32, i32* %incr, align 4
  %15 = load i8*, i8** %p.addr, align 8
  %idx.ext12 = sext i32 %14 to i64
  %add.ptr13 = getelementptr i8, i8* %15, i64 %idx.ext12
  store i8* %add.ptr13, i8** %p.addr, align 8
  %16 = load i32, i32* %e, align 4
  %cmp14 = icmp eq i32 %16, 255
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %18 = load i8*, i8** %p.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = zext i8 %19 to i32
  %shl19 = shl i32 %conv18, 8
  %20 = load i32, i32* %f, align 4
  %or20 = or i32 %20, %shl19
  store i32 %or20, i32* %f, align 4
  %21 = load i32, i32* %incr, align 4
  %22 = load i8*, i8** %p.addr, align 8
  %idx.ext21 = sext i32 %21 to i64
  %add.ptr22 = getelementptr i8, i8* %22, i64 %idx.ext21
  store i8* %add.ptr22, i8** %p.addr, align 8
  %23 = load i8*, i8** %p.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %25 = load i32, i32* %f, align 4
  %or24 = or i32 %25, %conv23
  store i32 %or24, i32* %f, align 4
  %26 = load i32, i32* %f, align 4
  %conv25 = uitofp i32 %26 to double
  %div = fdiv double %conv25, 8.388608e+06
  store double %div, double* %x, align 8
  %27 = load i32, i32* %e, align 4
  %cmp26 = icmp eq i32 %27, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.17
  store i32 -126, i32* %e, align 4
  br label %if.end.29

if.else:                                          ; preds = %if.end.17
  %28 = load double, double* %x, align 8
  %add = fadd double %28, 1.000000e+00
  store double %add, double* %x, align 8
  %29 = load i32, i32* %e, align 4
  %sub = sub i32 %29, 127
  store i32 %sub, i32* %e, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %30 = load double, double* %x, align 8
  %31 = load i32, i32* %e, align 4
  %call = call double @ldexp(double %30, i32 %31) #2
  store double %call, double* %x, align 8
  %32 = load i8, i8* %sign, align 1
  %tobool30 = icmp ne i8 %32, 0
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.29
  %33 = load double, double* %x, align 8
  %sub32 = fsub double -0.000000e+00, %33
  store double %sub32, double* %x, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %34 = load double, double* %x, align 8
  store double %34, double* %retval
  br label %return

if.else.34:                                       ; preds = %entry
  %35 = load i32, i32* @float_format, align 4
  %cmp36 = icmp eq i32 %35, 2
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else.34
  %36 = load i32, i32* %le.addr, align 4
  %tobool38 = icmp ne i32 %36, 0
  br i1 %tobool38, label %lor.lhs.false, label %if.then.43

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.34
  %37 = load i32, i32* @float_format, align 4
  %cmp39 = icmp eq i32 %37, 1
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.47

land.lhs.true.41:                                 ; preds = %lor.lhs.false
  %38 = load i32, i32* %le.addr, align 4
  %tobool42 = icmp ne i32 %38, 0
  br i1 %tobool42, label %if.then.43, label %if.else.47

if.then.43:                                       ; preds = %land.lhs.true.41, %land.lhs.true
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %buf, i32 0, i64 3
  store i8* %arrayidx, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %39 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %39, 4
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %40, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %d, align 8
  %incdec.ptr46 = getelementptr i8, i8* %42, i32 -1
  store i8* %incdec.ptr46, i8** %d, align 8
  store i8 %41, i8* %42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = bitcast float* %x35 to i8*
  %45 = bitcast [4 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 4, i32 1, i1 false)
  br label %if.end.48

if.else.47:                                       ; preds = %land.lhs.true.41, %lor.lhs.false
  %46 = bitcast float* %x35 to i8*
  %47 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 4, i32 1, i1 false)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %for.end
  %48 = load float, float* %x35, align 4
  %conv49 = fpext float %48 to double
  store double %conv49, double* %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.end.33, %if.then.16
  %49 = load double, double* %retval
  ret double %49
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define double @_PyFloat_Unpack8(i8* %p, i32 %le) #0 {
entry:
  %retval = alloca double, align 8
  %p.addr = alloca i8*, align 8
  %le.addr = alloca i32, align 4
  %sign = alloca i8, align 1
  %e = alloca i32, align 4
  %fhi = alloca i32, align 4
  %flo = alloca i32, align 4
  %x = alloca double, align 8
  %incr = alloca i32, align 4
  %x56 = alloca double, align 8
  %buf = alloca [8 x i8], align 1
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %le, i32* %le.addr, align 4
  %0 = load i32, i32* @double_format, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.55

if.then:                                          ; preds = %entry
  store i32 1, i32* %incr, align 4
  %1 = load i32, i32* %le.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %2 = load i8*, i8** %p.addr, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 7
  store i8* %add.ptr, i8** %p.addr, align 8
  store i32 -1, i32* %incr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = zext i8 %4 to i32
  %shr = ashr i32 %conv, 7
  %and = and i32 %shr, 1
  %conv2 = trunc i32 %and to i8
  store i8 %conv2, i8* %sign, align 1
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv3 = zext i8 %6 to i32
  %and4 = and i32 %conv3, 127
  %shl = shl i32 %and4, 4
  store i32 %shl, i32* %e, align 4
  %7 = load i32, i32* %incr, align 4
  %8 = load i8*, i8** %p.addr, align 8
  %idx.ext = sext i32 %7 to i64
  %add.ptr5 = getelementptr i8, i8* %8, i64 %idx.ext
  store i8* %add.ptr5, i8** %p.addr, align 8
  %9 = load i8*, i8** %p.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv6 = zext i8 %10 to i32
  %shr7 = ashr i32 %conv6, 4
  %and8 = and i32 %shr7, 15
  %11 = load i32, i32* %e, align 4
  %or = or i32 %11, %and8
  store i32 %or, i32* %e, align 4
  %12 = load i8*, i8** %p.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv9 = zext i8 %13 to i32
  %and10 = and i32 %conv9, 15
  %shl11 = shl i32 %and10, 24
  store i32 %shl11, i32* %fhi, align 4
  %14 = load i32, i32* %incr, align 4
  %15 = load i8*, i8** %p.addr, align 8
  %idx.ext12 = sext i32 %14 to i64
  %add.ptr13 = getelementptr i8, i8* %15, i64 %idx.ext12
  store i8* %add.ptr13, i8** %p.addr, align 8
  %16 = load i32, i32* %e, align 4
  %cmp14 = icmp eq i32 %16, 2047
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0))
  store double -1.000000e+00, double* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %18 = load i8*, i8** %p.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv18 = zext i8 %19 to i32
  %shl19 = shl i32 %conv18, 16
  %20 = load i32, i32* %fhi, align 4
  %or20 = or i32 %20, %shl19
  store i32 %or20, i32* %fhi, align 4
  %21 = load i32, i32* %incr, align 4
  %22 = load i8*, i8** %p.addr, align 8
  %idx.ext21 = sext i32 %21 to i64
  %add.ptr22 = getelementptr i8, i8* %22, i64 %idx.ext21
  store i8* %add.ptr22, i8** %p.addr, align 8
  %23 = load i8*, i8** %p.addr, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = zext i8 %24 to i32
  %shl24 = shl i32 %conv23, 8
  %25 = load i32, i32* %fhi, align 4
  %or25 = or i32 %25, %shl24
  store i32 %or25, i32* %fhi, align 4
  %26 = load i32, i32* %incr, align 4
  %27 = load i8*, i8** %p.addr, align 8
  %idx.ext26 = sext i32 %26 to i64
  %add.ptr27 = getelementptr i8, i8* %27, i64 %idx.ext26
  store i8* %add.ptr27, i8** %p.addr, align 8
  %28 = load i8*, i8** %p.addr, align 8
  %29 = load i8, i8* %28, align 1
  %conv28 = zext i8 %29 to i32
  %30 = load i32, i32* %fhi, align 4
  %or29 = or i32 %30, %conv28
  store i32 %or29, i32* %fhi, align 4
  %31 = load i32, i32* %incr, align 4
  %32 = load i8*, i8** %p.addr, align 8
  %idx.ext30 = sext i32 %31 to i64
  %add.ptr31 = getelementptr i8, i8* %32, i64 %idx.ext30
  store i8* %add.ptr31, i8** %p.addr, align 8
  %33 = load i8*, i8** %p.addr, align 8
  %34 = load i8, i8* %33, align 1
  %conv32 = zext i8 %34 to i32
  %shl33 = shl i32 %conv32, 16
  store i32 %shl33, i32* %flo, align 4
  %35 = load i32, i32* %incr, align 4
  %36 = load i8*, i8** %p.addr, align 8
  %idx.ext34 = sext i32 %35 to i64
  %add.ptr35 = getelementptr i8, i8* %36, i64 %idx.ext34
  store i8* %add.ptr35, i8** %p.addr, align 8
  %37 = load i8*, i8** %p.addr, align 8
  %38 = load i8, i8* %37, align 1
  %conv36 = zext i8 %38 to i32
  %shl37 = shl i32 %conv36, 8
  %39 = load i32, i32* %flo, align 4
  %or38 = or i32 %39, %shl37
  store i32 %or38, i32* %flo, align 4
  %40 = load i32, i32* %incr, align 4
  %41 = load i8*, i8** %p.addr, align 8
  %idx.ext39 = sext i32 %40 to i64
  %add.ptr40 = getelementptr i8, i8* %41, i64 %idx.ext39
  store i8* %add.ptr40, i8** %p.addr, align 8
  %42 = load i8*, i8** %p.addr, align 8
  %43 = load i8, i8* %42, align 1
  %conv41 = zext i8 %43 to i32
  %44 = load i32, i32* %flo, align 4
  %or42 = or i32 %44, %conv41
  store i32 %or42, i32* %flo, align 4
  %45 = load i32, i32* %fhi, align 4
  %conv43 = uitofp i32 %45 to double
  %46 = load i32, i32* %flo, align 4
  %conv44 = uitofp i32 %46 to double
  %div = fdiv double %conv44, 0x4170000000000000
  %add = fadd double %conv43, %div
  store double %add, double* %x, align 8
  %47 = load double, double* %x, align 8
  %div45 = fdiv double %47, 0x41B0000000000000
  store double %div45, double* %x, align 8
  %48 = load i32, i32* %e, align 4
  %cmp46 = icmp eq i32 %48, 0
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %if.end.17
  store i32 -1022, i32* %e, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.end.17
  %49 = load double, double* %x, align 8
  %add49 = fadd double %49, 1.000000e+00
  store double %add49, double* %x, align 8
  %50 = load i32, i32* %e, align 4
  %sub = sub i32 %50, 1023
  store i32 %sub, i32* %e, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.48
  %51 = load double, double* %x, align 8
  %52 = load i32, i32* %e, align 4
  %call = call double @ldexp(double %51, i32 %52) #2
  store double %call, double* %x, align 8
  %53 = load i8, i8* %sign, align 1
  %tobool51 = icmp ne i8 %53, 0
  br i1 %tobool51, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %if.end.50
  %54 = load double, double* %x, align 8
  %sub53 = fsub double -0.000000e+00, %54
  store double %sub53, double* %x, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %55 = load double, double* %x, align 8
  store double %55, double* %retval
  br label %return

if.else.55:                                       ; preds = %entry
  %56 = load i32, i32* @double_format, align 4
  %cmp57 = icmp eq i32 %56, 2
  br i1 %cmp57, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.else.55
  %57 = load i32, i32* %le.addr, align 4
  %tobool59 = icmp ne i32 %57, 0
  br i1 %tobool59, label %lor.lhs.false, label %if.then.64

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.55
  %58 = load i32, i32* @double_format, align 4
  %cmp60 = icmp eq i32 %58, 1
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.68

land.lhs.true.62:                                 ; preds = %lor.lhs.false
  %59 = load i32, i32* %le.addr, align 4
  %tobool63 = icmp ne i32 %59, 0
  br i1 %tobool63, label %if.then.64, label %if.else.68

if.then.64:                                       ; preds = %land.lhs.true.62, %land.lhs.true
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %buf, i32 0, i64 7
  store i8* %arrayidx, i8** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.64
  %60 = load i32, i32* %i, align 4
  %cmp65 = icmp slt i32 %60, 8
  br i1 %cmp65, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %61, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %d, align 8
  %incdec.ptr67 = getelementptr i8, i8* %63, i32 -1
  store i8* %incdec.ptr67, i8** %d, align 8
  store i8 %62, i8* %63, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %inc = add i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = bitcast double* %x56 to i8*
  %66 = bitcast [8 x i8]* %buf to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 8, i32 1, i1 false)
  br label %if.end.69

if.else.68:                                       ; preds = %land.lhs.true.62, %lor.lhs.false
  %67 = bitcast double* %x56 to i8*
  %68 = load i8*, i8** %p.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 8, i32 1, i1 false)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.68, %for.end
  %69 = load double, double* %x56, align 8
  store double %69, double* %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.end.54, %if.then.16
  %70 = load double, double* %retval
  ret double %70
}

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #1

declare %struct._object* @_PyUnicode_FromASCII(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_add(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %a, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %b, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %a, align 8
  %17 = load double, double* %b, align 8
  %add = fadd double %16, %17
  store double %add, double* %a, align 8
  %18 = load double, double* %a, align 8
  %call20 = call %struct._object* @PyFloat_FromDouble(double %18)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_sub(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %a, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %b, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %a, align 8
  %17 = load double, double* %b, align 8
  %sub = fsub double %16, %17
  store double %sub, double* %a, align 8
  %18 = load double, double* %a, align 8
  %call20 = call %struct._object* @PyFloat_FromDouble(double %18)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_mul(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %a, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %b, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %a, align 8
  %17 = load double, double* %b, align 8
  %mul = fmul double %16, %17
  store double %mul, double* %a, align 8
  %18 = load double, double* %a, align 8
  %call20 = call %struct._object* @PyFloat_FromDouble(double %18)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.17, %if.then.4
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_rem(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %vx = alloca double, align 8
  %wx = alloca double, align 8
  %mod = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %vx, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %vx)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %wx, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %wx)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %wx, align 8
  %cmp20 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %17 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %18 = load double, double* %vx, align 8
  %19 = load double, double* %wx, align 8
  %call23 = call double @fmod(double %18, double %19) #2
  store double %call23, double* %mod, align 8
  %20 = load double, double* %mod, align 8
  %tobool24 = fcmp une double %20, 0.000000e+00
  br i1 %tobool24, label %if.then.25, label %if.else.33

if.then.25:                                       ; preds = %if.end.22
  %21 = load double, double* %wx, align 8
  %cmp26 = fcmp olt double %21, 0.000000e+00
  %conv = zext i1 %cmp26 to i32
  %22 = load double, double* %mod, align 8
  %cmp27 = fcmp olt double %22, 0.000000e+00
  %conv28 = zext i1 %cmp27 to i32
  %cmp29 = icmp ne i32 %conv, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.25
  %23 = load double, double* %wx, align 8
  %24 = load double, double* %mod, align 8
  %add = fadd double %24, %23
  store double %add, double* %mod, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.25
  br label %if.end.35

if.else.33:                                       ; preds = %if.end.22
  %25 = load double, double* %wx, align 8
  %call34 = call double @copysign(double 0.000000e+00, double %25) #8
  store double %call34, double* %mod, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  %26 = load double, double* %mod, align 8
  %call36 = call %struct._object* @PyFloat_FromDouble(double %26)
  store %struct._object* %call36, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.21, %if.then.17, %if.then.4
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_divmod(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %vx = alloca double, align 8
  %wx = alloca double, align 8
  %div = alloca double, align 8
  %mod = alloca double, align 8
  %floordiv = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %vx, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %vx)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %wx, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %wx)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %wx, align 8
  %cmp20 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %17 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %18 = load double, double* %vx, align 8
  %19 = load double, double* %wx, align 8
  %call23 = call double @fmod(double %18, double %19) #2
  store double %call23, double* %mod, align 8
  %20 = load double, double* %vx, align 8
  %21 = load double, double* %mod, align 8
  %sub = fsub double %20, %21
  %22 = load double, double* %wx, align 8
  %div24 = fdiv double %sub, %22
  store double %div24, double* %div, align 8
  %23 = load double, double* %mod, align 8
  %tobool25 = fcmp une double %23, 0.000000e+00
  br i1 %tobool25, label %if.then.26, label %if.else.35

if.then.26:                                       ; preds = %if.end.22
  %24 = load double, double* %wx, align 8
  %cmp27 = fcmp olt double %24, 0.000000e+00
  %conv = zext i1 %cmp27 to i32
  %25 = load double, double* %mod, align 8
  %cmp28 = fcmp olt double %25, 0.000000e+00
  %conv29 = zext i1 %cmp28 to i32
  %cmp30 = icmp ne i32 %conv, %conv29
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.26
  %26 = load double, double* %wx, align 8
  %27 = load double, double* %mod, align 8
  %add = fadd double %27, %26
  store double %add, double* %mod, align 8
  %28 = load double, double* %div, align 8
  %sub33 = fsub double %28, 1.000000e+00
  store double %sub33, double* %div, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.26
  br label %if.end.37

if.else.35:                                       ; preds = %if.end.22
  %29 = load double, double* %wx, align 8
  %call36 = call double @copysign(double 0.000000e+00, double %29) #8
  store double %call36, double* %mod, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %30 = load double, double* %div, align 8
  %tobool38 = fcmp une double %30, 0.000000e+00
  br i1 %tobool38, label %if.then.39, label %if.else.47

if.then.39:                                       ; preds = %if.end.37
  %31 = load double, double* %div, align 8
  %call40 = call double @floor(double %31) #8
  store double %call40, double* %floordiv, align 8
  %32 = load double, double* %div, align 8
  %33 = load double, double* %floordiv, align 8
  %sub41 = fsub double %32, %33
  %cmp42 = fcmp ogt double %sub41, 5.000000e-01
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.39
  %34 = load double, double* %floordiv, align 8
  %add45 = fadd double %34, 1.000000e+00
  store double %add45, double* %floordiv, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.39
  br label %if.end.50

if.else.47:                                       ; preds = %if.end.37
  %35 = load double, double* %vx, align 8
  %36 = load double, double* %wx, align 8
  %div48 = fdiv double %35, %36
  %call49 = call double @copysign(double 0.000000e+00, double %div48) #8
  store double %call49, double* %floordiv, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.end.46
  %37 = load double, double* %floordiv, align 8
  %38 = load double, double* %mod, align 8
  %call51 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %37, double %38)
  store %struct._object* %call51, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.21, %if.then.17, %if.then.4
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_pow(%struct._object* %v, %struct._object* %w, %struct._object* %z) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %z.addr = alloca %struct._object*, align 8
  %iv = alloca double, align 8
  %iw = alloca double, align 8
  %ix = alloca double, align 8
  %negate_result = alloca i32, align 4
  %iw_is_odd = alloca i32, align 4
  %iw_is_odd128 = alloca i32, align 4
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  store %struct._object* %z, %struct._object** %z.addr, align 8
  store i32 0, i32* %negate_result, align 4
  %0 = load %struct._object*, %struct._object** %z.addr, align 8
  %cmp = icmp ne %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyFloat_Type
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %7, i32 0, i32 1
  %8 = load double, double* %ob_fval, align 8
  store double %8, double* %iv, align 8
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %call4 = call i32 @convert_to_double(%struct._object** %v.addr, double* %iv)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %11, @PyFloat_Type
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %call13 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFloat_Type)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %lor.lhs.false.11, %if.end.8
  %14 = load %struct._object*, %struct._object** %w.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*
  %ob_fval16 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1
  %16 = load double, double* %ob_fval16, align 8
  store double %16, double* %iw, align 8
  br label %if.end.22

if.else.17:                                       ; preds = %lor.lhs.false.11
  %call18 = call i32 @convert_to_double(%struct._object** %w.addr, double* %iw)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.17
  %17 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.else.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %18 = load double, double* %iw, align 8
  %cmp23 = fcmp oeq double %18, 0.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.22
  %call25 = call %struct._object* @PyFloat_FromDouble(double 1.000000e+00)
  store %struct._object* %call25, %struct._object** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.26
  %19 = load double, double* %iv, align 8
  %conv = fptrunc double %19 to float
  %call27 = call i32 @__isnanf(float %conv) #8
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.36, label %if.end.38

cond.false:                                       ; preds = %if.end.26
  br i1 true, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.false
  %20 = load double, double* %iv, align 8
  %call30 = call i32 @__isnan(double %20) #8
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.36, label %if.end.38

cond.false.32:                                    ; preds = %cond.false
  %21 = load double, double* %iv, align 8
  %conv33 = fpext double %21 to x86_fp80
  %call34 = call i32 @__isnanl(x86_fp80 %conv33) #8
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %cond.false.32, %cond.true.29, %cond.true
  %22 = load double, double* %iv, align 8
  %call37 = call %struct._object* @PyFloat_FromDouble(double %22)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %cond.false.32, %cond.true.29, %cond.true
  br i1 false, label %cond.true.39, label %cond.false.43

cond.true.39:                                     ; preds = %if.end.38
  %23 = load double, double* %iw, align 8
  %conv40 = fptrunc double %23 to float
  %call41 = call i32 @__isnanf(float %conv40) #8
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.51, label %if.end.57

cond.false.43:                                    ; preds = %if.end.38
  br i1 true, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.false.43
  %24 = load double, double* %iw, align 8
  %call45 = call i32 @__isnan(double %24) #8
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.51, label %if.end.57

cond.false.47:                                    ; preds = %cond.false.43
  %25 = load double, double* %iw, align 8
  %conv48 = fpext double %25 to x86_fp80
  %call49 = call i32 @__isnanl(x86_fp80 %conv48) #8
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  %26 = load double, double* %iv, align 8
  %cmp52 = fcmp oeq double %26, 1.000000e+00
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %if.then.51
  br label %cond.end

cond.false.55:                                    ; preds = %if.then.51
  %27 = load double, double* %iw, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.55, %cond.true.54
  %cond = phi double [ 1.000000e+00, %cond.true.54 ], [ %27, %cond.false.55 ]
  %call56 = call %struct._object* @PyFloat_FromDouble(double %cond)
  store %struct._object* %call56, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %if.end.57
  %28 = load double, double* %iw, align 8
  %conv59 = fptrunc double %28 to float
  %call60 = call i32 @__isinff(float %conv59) #8
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.70, label %if.end.88

cond.false.62:                                    ; preds = %if.end.57
  br i1 true, label %cond.true.63, label %cond.false.66

cond.true.63:                                     ; preds = %cond.false.62
  %29 = load double, double* %iw, align 8
  %call64 = call i32 @__isinf(double %29) #8
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.70, label %if.end.88

cond.false.66:                                    ; preds = %cond.false.62
  %30 = load double, double* %iw, align 8
  %conv67 = fpext double %30 to x86_fp80
  %call68 = call i32 @__isinfl(x86_fp80 %conv67) #8
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.88

if.then.70:                                       ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  %31 = load double, double* %iv, align 8
  %call71 = call double @fabs(double %31) #8
  store double %call71, double* %iv, align 8
  %32 = load double, double* %iv, align 8
  %cmp72 = fcmp oeq double %32, 1.000000e+00
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.then.70
  %call75 = call %struct._object* @PyFloat_FromDouble(double 1.000000e+00)
  store %struct._object* %call75, %struct._object** %retval
  br label %return

if.else.76:                                       ; preds = %if.then.70
  %33 = load double, double* %iw, align 8
  %cmp77 = fcmp ogt double %33, 0.000000e+00
  %conv78 = zext i1 %cmp77 to i32
  %34 = load double, double* %iv, align 8
  %cmp79 = fcmp ogt double %34, 1.000000e+00
  %conv80 = zext i1 %cmp79 to i32
  %cmp81 = icmp eq i32 %conv78, %conv80
  br i1 %cmp81, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %if.else.76
  %35 = load double, double* %iw, align 8
  %call84 = call double @fabs(double %35) #8
  %call85 = call %struct._object* @PyFloat_FromDouble(double %call84)
  store %struct._object* %call85, %struct._object** %retval
  br label %return

if.else.86:                                       ; preds = %if.else.76
  %call87 = call %struct._object* @PyFloat_FromDouble(double 0.000000e+00)
  store %struct._object* %call87, %struct._object** %retval
  br label %return

if.end.88:                                        ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  br i1 false, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %if.end.88
  %36 = load double, double* %iv, align 8
  %conv90 = fptrunc double %36 to float
  %call91 = call i32 @__isinff(float %conv90) #8
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.101, label %if.end.124

cond.false.93:                                    ; preds = %if.end.88
  br i1 true, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %cond.false.93
  %37 = load double, double* %iv, align 8
  %call95 = call i32 @__isinf(double %37) #8
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.101, label %if.end.124

cond.false.97:                                    ; preds = %cond.false.93
  %38 = load double, double* %iv, align 8
  %conv98 = fpext double %38 to x86_fp80
  %call99 = call i32 @__isinfl(x86_fp80 %conv98) #8
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.124

if.then.101:                                      ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %39 = load double, double* %iw, align 8
  %call102 = call double @fabs(double %39) #8
  %call103 = call double @fmod(double %call102, double 2.000000e+00) #2
  %cmp104 = fcmp oeq double %call103, 1.000000e+00
  %conv105 = zext i1 %cmp104 to i32
  store i32 %conv105, i32* %iw_is_odd, align 4
  %40 = load double, double* %iw, align 8
  %cmp106 = fcmp ogt double %40, 0.000000e+00
  br i1 %cmp106, label %if.then.108, label %if.else.116

if.then.108:                                      ; preds = %if.then.101
  %41 = load i32, i32* %iw_is_odd, align 4
  %tobool109 = icmp ne i32 %41, 0
  br i1 %tobool109, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %if.then.108
  %42 = load double, double* %iv, align 8
  br label %cond.end.113

cond.false.111:                                   ; preds = %if.then.108
  %43 = load double, double* %iv, align 8
  %call112 = call double @fabs(double %43) #8
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.110
  %cond114 = phi double [ %42, %cond.true.110 ], [ %call112, %cond.false.111 ]
  %call115 = call %struct._object* @PyFloat_FromDouble(double %cond114)
  store %struct._object* %call115, %struct._object** %retval
  br label %return

if.else.116:                                      ; preds = %if.then.101
  %44 = load i32, i32* %iw_is_odd, align 4
  %tobool117 = icmp ne i32 %44, 0
  br i1 %tobool117, label %cond.true.118, label %cond.false.120

cond.true.118:                                    ; preds = %if.else.116
  %45 = load double, double* %iv, align 8
  %call119 = call double @copysign(double 0.000000e+00, double %45) #8
  br label %cond.end.121

cond.false.120:                                   ; preds = %if.else.116
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.118
  %cond122 = phi double [ %call119, %cond.true.118 ], [ 0.000000e+00, %cond.false.120 ]
  %call123 = call %struct._object* @PyFloat_FromDouble(double %cond122)
  store %struct._object* %call123, %struct._object** %retval
  br label %return

if.end.124:                                       ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %46 = load double, double* %iv, align 8
  %cmp125 = fcmp oeq double %46, 0.000000e+00
  br i1 %cmp125, label %if.then.127, label %if.end.143

if.then.127:                                      ; preds = %if.end.124
  %47 = load double, double* %iw, align 8
  %call129 = call double @fabs(double %47) #8
  %call130 = call double @fmod(double %call129, double 2.000000e+00) #2
  %cmp131 = fcmp oeq double %call130, 1.000000e+00
  %conv132 = zext i1 %cmp131 to i32
  store i32 %conv132, i32* %iw_is_odd128, align 4
  %48 = load double, double* %iw, align 8
  %cmp133 = fcmp olt double %48, 0.000000e+00
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.127
  %49 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.136:                                       ; preds = %if.then.127
  %50 = load i32, i32* %iw_is_odd128, align 4
  %tobool137 = icmp ne i32 %50, 0
  br i1 %tobool137, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %if.end.136
  %51 = load double, double* %iv, align 8
  br label %cond.end.140

cond.false.139:                                   ; preds = %if.end.136
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi double [ %51, %cond.true.138 ], [ 0.000000e+00, %cond.false.139 ]
  %call142 = call %struct._object* @PyFloat_FromDouble(double %cond141)
  store %struct._object* %call142, %struct._object** %retval
  br label %return

if.end.143:                                       ; preds = %if.end.124
  %52 = load double, double* %iv, align 8
  %cmp144 = fcmp olt double %52, 0.000000e+00
  br i1 %cmp144, label %if.then.146, label %if.end.157

if.then.146:                                      ; preds = %if.end.143
  %53 = load double, double* %iw, align 8
  %54 = load double, double* %iw, align 8
  %call147 = call double @floor(double %54) #8
  %cmp148 = fcmp une double %53, %call147
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.then.146
  %55 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyComplex_Type, i32 0, i32 10), align 8
  %nb_power = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %55, i32 0, i32 5
  %56 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %nb_power, align 8
  %57 = load %struct._object*, %struct._object** %v.addr, align 8
  %58 = load %struct._object*, %struct._object** %w.addr, align 8
  %59 = load %struct._object*, %struct._object** %z.addr, align 8
  %call151 = call %struct._object* %56(%struct._object* %57, %struct._object* %58, %struct._object* %59)
  store %struct._object* %call151, %struct._object** %retval
  br label %return

if.end.152:                                       ; preds = %if.then.146
  %60 = load double, double* %iv, align 8
  %sub = fsub double -0.000000e+00, %60
  store double %sub, double* %iv, align 8
  %61 = load double, double* %iw, align 8
  %call153 = call double @fabs(double %61) #8
  %call154 = call double @fmod(double %call153, double 2.000000e+00) #2
  %cmp155 = fcmp oeq double %call154, 1.000000e+00
  %conv156 = zext i1 %cmp155 to i32
  store i32 %conv156, i32* %negate_result, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.152, %if.end.143
  %62 = load double, double* %iv, align 8
  %cmp158 = fcmp oeq double %62, 1.000000e+00
  br i1 %cmp158, label %if.then.160, label %if.end.164

if.then.160:                                      ; preds = %if.end.157
  %63 = load i32, i32* %negate_result, align 4
  %tobool161 = icmp ne i32 %63, 0
  %cond162 = select i1 %tobool161, double -1.000000e+00, double 1.000000e+00
  %call163 = call %struct._object* @PyFloat_FromDouble(double %cond162)
  store %struct._object* %call163, %struct._object** %retval
  br label %return

if.end.164:                                       ; preds = %if.end.157
  %call165 = call i32* @__errno_location() #8
  store i32 0, i32* %call165, align 4
  %64 = load double, double* %iv, align 8
  %65 = load double, double* %iw, align 8
  %call166 = call double @pow(double %64, double %65) #2
  store double %call166, double* %ix, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.164
  %call167 = call i32* @__errno_location() #8
  %66 = load i32, i32* %call167, align 4
  %cmp168 = icmp eq i32 %66, 0
  br i1 %cmp168, label %if.then.170, label %if.else.179

if.then.170:                                      ; preds = %do.body
  %67 = load double, double* %ix, align 8
  %cmp171 = fcmp oeq double %67, 0x7FF0000000000000
  br i1 %cmp171, label %if.then.176, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.then.170
  %68 = load double, double* %ix, align 8
  %cmp174 = fcmp oeq double %68, 0xFFF0000000000000
  br i1 %cmp174, label %if.then.176, label %if.end.178

if.then.176:                                      ; preds = %lor.lhs.false.173, %if.then.170
  %call177 = call i32* @__errno_location() #8
  store i32 34, i32* %call177, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.176, %lor.lhs.false.173
  br label %if.end.188

if.else.179:                                      ; preds = %do.body
  %call180 = call i32* @__errno_location() #8
  %69 = load i32, i32* %call180, align 4
  %cmp181 = icmp eq i32 %69, 34
  br i1 %cmp181, label %land.lhs.true, label %if.end.187

land.lhs.true:                                    ; preds = %if.else.179
  %70 = load double, double* %ix, align 8
  %cmp183 = fcmp oeq double %70, 0.000000e+00
  br i1 %cmp183, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %land.lhs.true
  %call186 = call i32* @__errno_location() #8
  store i32 0, i32* %call186, align 4
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %land.lhs.true, %if.else.179
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.178
  br label %do.end

do.end:                                           ; preds = %if.end.188
  %71 = load i32, i32* %negate_result, align 4
  %tobool189 = icmp ne i32 %71, 0
  br i1 %tobool189, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %do.end
  %72 = load double, double* %ix, align 8
  %sub191 = fsub double -0.000000e+00, %72
  store double %sub191, double* %ix, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.190, %do.end
  %call193 = call i32* @__errno_location() #8
  %73 = load i32, i32* %call193, align 4
  %cmp194 = icmp ne i32 %73, 0
  br i1 %cmp194, label %if.then.196, label %if.end.205

if.then.196:                                      ; preds = %if.end.192
  %call197 = call i32* @__errno_location() #8
  %74 = load i32, i32* %call197, align 4
  %cmp198 = icmp eq i32 %74, 34
  br i1 %cmp198, label %cond.true.200, label %cond.false.201

cond.true.200:                                    ; preds = %if.then.196
  %75 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  br label %cond.end.202

cond.false.201:                                   ; preds = %if.then.196
  %76 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.200
  %cond203 = phi %struct._object* [ %75, %cond.true.200 ], [ %76, %cond.false.201 ]
  %call204 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %cond203)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.205:                                       ; preds = %if.end.192
  %77 = load double, double* %ix, align 8
  %call206 = call %struct._object* @PyFloat_FromDouble(double %77)
  store %struct._object* %call206, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.205, %cond.end.202, %if.then.160, %if.then.150, %cond.end.140, %if.then.135, %cond.end.121, %cond.end.113, %if.else.86, %if.then.83, %if.then.74, %cond.end, %if.then.36, %if.then.24, %if.then.20, %if.then.6, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_neg(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %sub = fsub double -0.000000e+00, %1
  %call = call %struct._object* @PyFloat_FromDouble(double %sub)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_float(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double %6)
  store %struct._object* %call, %struct._object** %v.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_abs(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %call = call double @fabs(double %1) #8
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @float_bool(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %cmp = fcmp une double %1, 0.000000e+00
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_trunc(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %wholepart = alloca double, align 8
  %aslong = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load double, double* %x, align 8
  %call1 = call double @modf(double %1, double* %wholepart) #2
  %2 = load double, double* %wholepart, align 8
  %cmp = fcmp olt double 0xC3E0000000000000, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load double, double* %wholepart, align 8
  %cmp2 = fcmp olt double %3, 0x43E0000000000000
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load double, double* %wholepart, align 8
  %conv = fptosi double %4 to i64
  store i64 %conv, i64* %aslong, align 8
  %5 = load i64, i64* %aslong, align 8
  %call3 = call %struct._object* @PyLong_FromLong(i64 %5)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load double, double* %wholepart, align 8
  %call4 = call %struct._object* @PyLong_FromDouble(double %6)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_floor_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %w.addr, align 8
  %call = call %struct._object* @float_divmod(%struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %t, align 8
  %2 = load %struct._object*, %struct._object** %t, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %t, align 8
  %cmp1 = icmp eq %struct._object* %3, @_Py_NotImplementedStruct
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %t, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %r, align 8
  %8 = load %struct._object*, %struct._object** %r, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt2, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt2, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %17 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %w, %struct._object** %w.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %a, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %cmp7 = icmp eq %struct._typeobject* %9, @PyFloat_Type
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %w.addr, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1
  %14 = load double, double* %ob_fval13, align 8
  store double %14, double* %b, align 8
  br label %if.end.19

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else.14
  %15 = load %struct._object*, %struct._object** %w.addr, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %16 = load double, double* %b, align 8
  %cmp20 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %17 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %18 = load double, double* %a, align 8
  %19 = load double, double* %b, align 8
  %div = fdiv double %18, %19
  store double %div, double* %a, align 8
  %20 = load double, double* %a, align 8
  %call23 = call %struct._object* @PyFloat_FromDouble(double %20)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.21, %if.then.17, %if.then.4
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_to_double(%struct._object** %v, double* %dbl) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object**, align 8
  %dbl.addr = alloca double*, align 8
  %obj = alloca %struct._object*, align 8
  store %struct._object** %v, %struct._object*** %v.addr, align 8
  store double* %dbl, double** %dbl.addr, align 8
  %0 = load %struct._object**, %struct._object*** %v.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %obj, align 8
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %call = call double @PyLong_AsDouble(%struct._object* %5)
  %6 = load double*, double** %dbl.addr, align 8
  store double %call, double* %6, align 8
  %7 = load double*, double** %dbl.addr, align 8
  %8 = load double, double* %7, align 8
  %cmp1 = fcmp oeq double %8, -1.000000e+00
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call2, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %land.lhs.true
  %9 = load %struct._object**, %struct._object*** %v.addr, align 8
  store %struct._object* null, %struct._object** %9, align 8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %11 = load %struct._object**, %struct._object*** %v.addr, align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %11, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.else, %if.then.3
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare double @PyLong_AsDouble(%struct._object*) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #4

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #5

; Function Attrs: nounwind readnone
declare double @floor(double) #5

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #5

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #5

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare double @pow(double, double) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

; Function Attrs: nounwind
declare double @modf(double, double*) #4

declare %struct._object* @PyLong_FromDouble(double) #1

declare i64 @_Py_HashDouble(double) #1

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #5

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #5

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #5

declare i32 @_PyLong_Sign(%struct._object*) #1

declare i64 @_PyLong_NumBits(%struct._object*) #1

declare void @PyErr_Clear() #1

declare %struct._object* @PyNumber_Negative(%struct._object*) #1

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #1

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyBool_FromLong(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_round(%struct._object* %v, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %rounded = alloca double, align 8
  %o_ndigits = alloca %struct._object*, align 8
  %ndigits = alloca i64, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %o_ndigits, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %call = call double @PyFloat_AsDouble(%struct._object* %0)
  store double %call, double* %x, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), %struct._object** %o_ndigits)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %o_ndigits, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %3 = load double, double* %x, align 8
  %call3 = call double @round(double %3) #8
  store double %call3, double* %rounded, align 8
  %4 = load double, double* %x, align 8
  %5 = load double, double* %rounded, align 8
  %sub = fsub double %4, %5
  %call4 = call double @fabs(double %sub) #8
  %cmp5 = fcmp oeq double %call4, 5.000000e-01
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.2
  %6 = load double, double* %x, align 8
  %div = fdiv double %6, 2.000000e+00
  %call7 = call double @round(double %div) #8
  %mul = fmul double 2.000000e+00, %call7
  store double %mul, double* %rounded, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.2
  %7 = load double, double* %rounded, align 8
  %call9 = call %struct._object* @PyLong_FromDouble(double %7)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %o_ndigits, align 8
  %call11 = call i64 @PyNumber_AsSsize_t(%struct._object* %8, %struct._object* null)
  store i64 %call11, i64* %ndigits, align 8
  %9 = load i64, i64* %ndigits, align 8
  %cmp12 = icmp eq i64 %9, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.10
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.10
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %10 = load double, double* %x, align 8
  %conv = fptrunc double %10 to float
  %call17 = call i32 @__finitef(float %conv) #8
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.28, label %if.then.26

cond.false:                                       ; preds = %if.end.16
  br i1 true, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %cond.false
  %11 = load double, double* %x, align 8
  %call20 = call i32 @__finite(double %11) #8
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.28, label %if.then.26

cond.false.22:                                    ; preds = %cond.false
  %12 = load double, double* %x, align 8
  %conv23 = fpext double %12 to x86_fp80
  %call24 = call i32 @__finitel(x86_fp80 %conv23) #8
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true
  %13 = load double, double* %x, align 8
  %call27 = call %struct._object* @PyFloat_FromDouble(double %13)
  store %struct._object* %call27, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %cond.false.22, %cond.true.19, %cond.true
  %14 = load i64, i64* %ndigits, align 8
  %cmp29 = icmp sgt i64 %14, 323
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %if.end.28
  %15 = load double, double* %x, align 8
  %call32 = call %struct._object* @PyFloat_FromDouble(double %15)
  store %struct._object* %call32, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.28
  %16 = load i64, i64* %ndigits, align 8
  %cmp33 = icmp slt i64 %16, -308
  br i1 %cmp33, label %if.then.35, label %if.else.38

if.then.35:                                       ; preds = %if.else
  %17 = load double, double* %x, align 8
  %mul36 = fmul double 0.000000e+00, %17
  %call37 = call %struct._object* @PyFloat_FromDouble(double %mul36)
  store %struct._object* %call37, %struct._object** %retval
  br label %return

if.else.38:                                       ; preds = %if.else
  %18 = load double, double* %x, align 8
  %19 = load i64, i64* %ndigits, align 8
  %conv39 = trunc i64 %19 to i32
  %call40 = call %struct._object* @double_round(double %18, i32 %conv39)
  store %struct._object* %call40, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.38, %if.then.35, %if.then.31, %if.then.26, %if.then.15, %if.end.8, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_as_integer_ratio(%struct._object* %v, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %self = alloca double, align 8
  %float_part = alloca double, align 8
  %exponent = alloca i32, align 4
  %i = alloca i32, align 4
  %prev = alloca %struct._object*, align 8
  %py_exponent = alloca %struct._object*, align 8
  %numerator = alloca %struct._object*, align 8
  %denominator = alloca %struct._object*, align 8
  %result_pair = alloca %struct._object*, align 8
  %long_methods = alloca %struct.PyNumberMethods*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_xdecref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_py_xdecref_tmp135 = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  store %struct._object* null, %struct._object** %py_exponent, align 8
  store %struct._object* null, %struct._object** %numerator, align 8
  store %struct._object* null, %struct._object** %denominator, align 8
  store %struct._object* null, %struct._object** %result_pair, align 8
  %0 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 10), align 8
  store %struct.PyNumberMethods* %0, %struct.PyNumberMethods** %long_methods, align 8
  %1 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %6, i32 0, i32 1
  %7 = load double, double* %ob_fval, align 8
  store double %7, double* %self, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %self)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %9 = load double, double* %self, align 8
  %conv = fptrunc double %9 to float
  %call6 = call i32 @__isinff(float %conv) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.15, label %if.end.16

cond.false:                                       ; preds = %if.end.5
  br i1 true, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.false
  %10 = load double, double* %self, align 8
  %call9 = call i32 @__isinf(double %10) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.15, label %if.end.16

cond.false.11:                                    ; preds = %cond.false
  %11 = load double, double* %self, align 8
  %conv12 = fpext double %11 to x86_fp80
  %call13 = call i32 @__isinfl(x86_fp80 %conv12) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %cond.false.11, %cond.true.8, %cond.true
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %cond.false.11, %cond.true.8, %cond.true
  br i1 false, label %cond.true.17, label %cond.false.21

cond.true.17:                                     ; preds = %if.end.16
  %13 = load double, double* %self, align 8
  %conv18 = fptrunc double %13 to float
  %call19 = call i32 @__isnanf(float %conv18) #8
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.29, label %if.end.30

cond.false.21:                                    ; preds = %if.end.16
  br i1 true, label %cond.true.22, label %cond.false.25

cond.true.22:                                     ; preds = %cond.false.21
  %14 = load double, double* %self, align 8
  %call23 = call i32 @__isnan(double %14) #8
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.29, label %if.end.30

cond.false.25:                                    ; preds = %cond.false.21
  %15 = load double, double* %self, align 8
  %conv26 = fpext double %15 to x86_fp80
  %call27 = call i32 @__isnanl(x86_fp80 %conv26) #8
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %cond.false.25, %cond.true.22, %cond.true.17
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %cond.false.25, %cond.true.22, %cond.true.17
  %17 = load double, double* %self, align 8
  %call31 = call double @frexp(double %17, i32* %exponent) #2
  store double %call31, double* %float_part, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.30
  %18 = load i32, i32* %i, align 4
  %cmp32 = icmp slt i32 %18, 300
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %19 = load double, double* %float_part, align 8
  %20 = load double, double* %float_part, align 8
  %call34 = call double @floor(double %20) #8
  %cmp35 = fcmp une double %19, %call34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %21 = phi i1 [ false, %for.cond ], [ %cmp35, %land.rhs ]
  br i1 %21, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %22 = load double, double* %float_part, align 8
  %mul = fmul double %22, 2.000000e+00
  store double %mul, double* %float_part, align 8
  %23 = load i32, i32* %exponent, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %exponent, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load double, double* %float_part, align 8
  %call37 = call %struct._object* @PyLong_FromDouble(double %25)
  store %struct._object* %call37, %struct._object** %numerator, align 8
  %26 = load %struct._object*, %struct._object** %numerator, align 8
  %cmp38 = icmp eq %struct._object* %26, null
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %for.end
  br label %error

if.end.41:                                        ; preds = %for.end
  %call42 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call42, %struct._object** %denominator, align 8
  %27 = load i32, i32* %exponent, align 4
  %conv43 = sext i32 %27 to i64
  %call44 = call i64 @labs(i64 %conv43) #8
  %call45 = call %struct._object* @PyLong_FromLong(i64 %call44)
  store %struct._object* %call45, %struct._object** %py_exponent, align 8
  %28 = load %struct._object*, %struct._object** %py_exponent, align 8
  %cmp46 = icmp eq %struct._object* %28, null
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.41
  br label %error

if.end.49:                                        ; preds = %if.end.41
  %29 = load %struct._object*, %struct._object** %py_exponent, align 8
  store %struct._object* %29, %struct._object** %prev, align 8
  %30 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %long_methods, align 8
  %nb_lshift = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %30, i32 0, i32 11
  %31 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_lshift, align 8
  %32 = load %struct._object*, %struct._object** %denominator, align 8
  %33 = load %struct._object*, %struct._object** %py_exponent, align 8
  %call50 = call %struct._object* %31(%struct._object* %32, %struct._object* %33)
  store %struct._object* %call50, %struct._object** %py_exponent, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.49
  %34 = load %struct._object*, %struct._object** %prev, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt, align 8
  %dec51 = add i64 %36, -1
  store i64 %dec51, i64* %ob_refcnt, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body
  br label %if.end.57

if.else.55:                                       ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %39(%struct._object* %40)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end

do.end:                                           ; preds = %if.end.57
  %41 = load %struct._object*, %struct._object** %py_exponent, align 8
  %cmp58 = icmp eq %struct._object* %41, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %do.end
  br label %error

if.end.61:                                        ; preds = %do.end
  %42 = load i32, i32* %exponent, align 4
  %cmp62 = icmp sgt i32 %42, 0
  br i1 %cmp62, label %if.then.64, label %if.else.82

if.then.64:                                       ; preds = %if.end.61
  %43 = load %struct._object*, %struct._object** %numerator, align 8
  store %struct._object* %43, %struct._object** %prev, align 8
  %44 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %long_methods, align 8
  %nb_multiply = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %44, i32 0, i32 2
  %45 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_multiply, align 8
  %46 = load %struct._object*, %struct._object** %numerator, align 8
  %47 = load %struct._object*, %struct._object** %py_exponent, align 8
  %call65 = call %struct._object* %45(%struct._object* %46, %struct._object* %47)
  store %struct._object* %call65, %struct._object** %numerator, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %48 = load %struct._object*, %struct._object** %prev, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp67, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %50, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.66
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.66
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %53(%struct._object* %54)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %55 = load %struct._object*, %struct._object** %numerator, align 8
  %cmp78 = icmp eq %struct._object* %55, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %do.end.77
  br label %error

if.end.81:                                        ; preds = %do.end.77
  br label %if.end.95

if.else.82:                                       ; preds = %if.end.61
  br label %do.body.83

do.body.83:                                       ; preds = %if.else.82
  %56 = load %struct._object*, %struct._object** %denominator, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp84, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %58, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.83
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.83
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %61(%struct._object* %62)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %63 = load %struct._object*, %struct._object** %py_exponent, align 8
  store %struct._object* %63, %struct._object** %denominator, align 8
  store %struct._object* null, %struct._object** %py_exponent, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %if.end.81
  %64 = load %struct._object*, %struct._object** %numerator, align 8
  %65 = load %struct._object*, %struct._object** %denominator, align 8
  %call96 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %64, %struct._object* %65)
  store %struct._object* %call96, %struct._object** %result_pair, align 8
  br label %error

error:                                            ; preds = %if.end.95, %if.then.80, %if.then.60, %if.then.48, %if.then.40
  br label %do.body.97

do.body.97:                                       ; preds = %error
  %66 = load %struct._object*, %struct._object** %py_exponent, align 8
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp98 = icmp ne %struct._object* %67, null
  br i1 %cmp98, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %do.body.97
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp102, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %70, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.101
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.101
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %73(%struct._object* %74)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.97
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.body.115

do.body.115:                                      ; preds = %do.end.114
  %75 = load %struct._object*, %struct._object** %denominator, align 8
  store %struct._object* %75, %struct._object** %_py_xdecref_tmp116, align 8
  %76 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %76, null
  br i1 %cmp117, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %do.body.115
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %77 = load %struct._object*, %struct._object** %_py_xdecref_tmp116, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp121, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %79, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.120
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %82(%struct._object* %83)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.115
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %84 = load %struct._object*, %struct._object** %numerator, align 8
  store %struct._object* %84, %struct._object** %_py_xdecref_tmp135, align 8
  %85 = load %struct._object*, %struct._object** %_py_xdecref_tmp135, align 8
  %cmp136 = icmp ne %struct._object* %85, null
  br i1 %cmp136, label %if.then.138, label %if.end.151

if.then.138:                                      ; preds = %do.body.134
  br label %do.body.139

do.body.139:                                      ; preds = %if.then.138
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp135, align 8
  store %struct._object* %86, %struct._object** %_py_decref_tmp140, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %88, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.139
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.139
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %91(%struct._object* %92)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  br label %if.end.151

if.end.151:                                       ; preds = %do.end.150, %do.body.134
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  %93 = load %struct._object*, %struct._object** %result_pair, align 8
  store %struct._object* %93, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.152, %if.then.29, %if.then.15, %if.then.4
  %94 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %94
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_fromhex(%struct._object* %cls, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %cls.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %result_as_float = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %exp = alloca i64, align 8
  %top_exp = alloca i64, align 8
  %lsb = alloca i64, align 8
  %key_digit = alloca i64, align 8
  %s = alloca i8*, align 8
  %coeff_start = alloca i8*, align 8
  %s_store = alloca i8*, align 8
  %coeff_end = alloca i8*, align 8
  %exp_start = alloca i8*, align 8
  %s_end = alloca i8*, align 8
  %half_eps = alloca i32, align 4
  %digit = alloca i32, align 4
  %round_up = alloca i32, align 4
  %negate = alloca i32, align 4
  %length = alloca i64, align 8
  %ndigits = alloca i64, align 8
  %fdigits = alloca i64, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i32 0, i32* %negate, align 4
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %0, i64* %length)
  store i8* %call, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i64, i64* %length, align 8
  %add.ptr = getelementptr i8, i8* %2, i64 %3
  store i8* %add.ptr, i8** %s_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 255
  %conv1 = trunc i32 %and to i8
  %idxprom = zext i8 %conv1 to i64
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %and2 = and i32 %6, 8
  %tobool = icmp ne i32 %and2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %s, align 8
  %call3 = call double @_Py_parse_inf_or_nan(i8* %8, i8** %coeff_end)
  store double %call3, double* %x, align 8
  %9 = load i8*, i8** %coeff_end, align 8
  %10 = load i8*, i8** %s, align 8
  %cmp4 = icmp ne i8* %9, %10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %while.end
  %11 = load i8*, i8** %coeff_end, align 8
  store i8* %11, i8** %s, align 8
  br label %finished

if.end.7:                                         ; preds = %while.end
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv8, 45
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.7
  %14 = load i8*, i8** %s, align 8
  %incdec.ptr12 = getelementptr i8, i8* %14, i32 1
  store i8* %incdec.ptr12, i8** %s, align 8
  store i32 1, i32* %negate, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end.7
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv13, 43
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.else
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr17 = getelementptr i8, i8* %17, i32 1
  store i8* %incdec.ptr17, i8** %s, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.11
  %18 = load i8*, i8** %s, align 8
  store i8* %18, i8** %s_store, align 8
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 48
  br i1 %cmp21, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %if.end.19
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr24 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr24, i8** %s, align 8
  %22 = load i8*, i8** %s, align 8
  %23 = load i8, i8* %22, align 1
  %conv25 = sext i8 %23 to i32
  %cmp26 = icmp eq i32 %conv25, 120
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.23
  %24 = load i8*, i8** %s, align 8
  %25 = load i8, i8* %24, align 1
  %conv28 = sext i8 %25 to i32
  %cmp29 = icmp eq i32 %conv28, 88
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %lor.lhs.false, %if.then.23
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr32 = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr32, i8** %s, align 8
  br label %if.end.34

if.else.33:                                       ; preds = %lor.lhs.false
  %27 = load i8*, i8** %s_store, align 8
  store i8* %27, i8** %s, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.19
  %28 = load i8*, i8** %s, align 8
  store i8* %28, i8** %coeff_start, align 8
  br label %while.cond.36

while.cond.36:                                    ; preds = %while.body.40, %if.end.35
  %29 = load i8*, i8** %s, align 8
  %30 = load i8, i8* %29, align 1
  %call37 = call i32 @hex_from_char(i8 signext %30)
  %cmp38 = icmp sge i32 %call37, 0
  br i1 %cmp38, label %while.body.40, label %while.end.42

while.body.40:                                    ; preds = %while.cond.36
  %31 = load i8*, i8** %s, align 8
  %incdec.ptr41 = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr41, i8** %s, align 8
  br label %while.cond.36

while.end.42:                                     ; preds = %while.cond.36
  %32 = load i8*, i8** %s, align 8
  store i8* %32, i8** %s_store, align 8
  %33 = load i8*, i8** %s, align 8
  %34 = load i8, i8* %33, align 1
  %conv43 = sext i8 %34 to i32
  %cmp44 = icmp eq i32 %conv43, 46
  br i1 %cmp44, label %if.then.46, label %if.else.56

if.then.46:                                       ; preds = %while.end.42
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr47 = getelementptr i8, i8* %35, i32 1
  store i8* %incdec.ptr47, i8** %s, align 8
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.52, %if.then.46
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %call49 = call i32 @hex_from_char(i8 signext %37)
  %cmp50 = icmp sge i32 %call49, 0
  br i1 %cmp50, label %while.body.52, label %while.end.54

while.body.52:                                    ; preds = %while.cond.48
  %38 = load i8*, i8** %s, align 8
  %incdec.ptr53 = getelementptr i8, i8* %38, i32 1
  store i8* %incdec.ptr53, i8** %s, align 8
  br label %while.cond.48

while.end.54:                                     ; preds = %while.cond.48
  %39 = load i8*, i8** %s, align 8
  %add.ptr55 = getelementptr i8, i8* %39, i64 -1
  store i8* %add.ptr55, i8** %coeff_end, align 8
  br label %if.end.57

if.else.56:                                       ; preds = %while.end.42
  %40 = load i8*, i8** %s, align 8
  store i8* %40, i8** %coeff_end, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %while.end.54
  %41 = load i8*, i8** %coeff_end, align 8
  %42 = load i8*, i8** %coeff_start, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %42 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %ndigits, align 8
  %43 = load i8*, i8** %coeff_end, align 8
  %44 = load i8*, i8** %s_store, align 8
  %sub.ptr.lhs.cast58 = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast59 = ptrtoint i8* %44 to i64
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59
  store i64 %sub.ptr.sub60, i64* %fdigits, align 8
  %45 = load i64, i64* %ndigits, align 8
  %cmp61 = icmp eq i64 %45, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.57
  br label %parse_error

if.end.64:                                        ; preds = %if.end.57
  %46 = load i64, i64* %ndigits, align 8
  %cmp65 = icmp sgt i64 %46, 1152921504606846707
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.64
  br label %insane_length_error

if.end.68:                                        ; preds = %if.end.64
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv69 = sext i8 %48 to i32
  %cmp70 = icmp eq i32 %conv69, 112
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %if.end.68
  %49 = load i8*, i8** %s, align 8
  %50 = load i8, i8* %49, align 1
  %conv73 = sext i8 %50 to i32
  %cmp74 = icmp eq i32 %conv73, 80
  br i1 %cmp74, label %if.then.76, label %if.else.108

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.end.68
  %51 = load i8*, i8** %s, align 8
  %incdec.ptr77 = getelementptr i8, i8* %51, i32 1
  store i8* %incdec.ptr77, i8** %s, align 8
  %52 = load i8*, i8** %s, align 8
  store i8* %52, i8** %exp_start, align 8
  %53 = load i8*, i8** %s, align 8
  %54 = load i8, i8* %53, align 1
  %conv78 = sext i8 %54 to i32
  %cmp79 = icmp eq i32 %conv78, 45
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %if.then.76
  %55 = load i8*, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %conv82 = sext i8 %56 to i32
  %cmp83 = icmp eq i32 %conv82, 43
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.then.76
  %57 = load i8*, i8** %s, align 8
  %incdec.ptr86 = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr86, i8** %s, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false.81
  %58 = load i8*, i8** %s, align 8
  %59 = load i8, i8* %58, align 1
  %conv88 = sext i8 %59 to i32
  %cmp89 = icmp sle i32 48, %conv88
  br i1 %cmp89, label %land.lhs.true, label %if.then.94

land.lhs.true:                                    ; preds = %if.end.87
  %60 = load i8*, i8** %s, align 8
  %61 = load i8, i8* %60, align 1
  %conv91 = sext i8 %61 to i32
  %cmp92 = icmp sle i32 %conv91, 57
  br i1 %cmp92, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true, %if.end.87
  br label %parse_error

if.end.95:                                        ; preds = %land.lhs.true
  %62 = load i8*, i8** %s, align 8
  %incdec.ptr96 = getelementptr i8, i8* %62, i32 1
  store i8* %incdec.ptr96, i8** %s, align 8
  br label %while.cond.97

while.cond.97:                                    ; preds = %while.body.104, %if.end.95
  %63 = load i8*, i8** %s, align 8
  %64 = load i8, i8* %63, align 1
  %conv98 = sext i8 %64 to i32
  %cmp99 = icmp sle i32 48, %conv98
  br i1 %cmp99, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.97
  %65 = load i8*, i8** %s, align 8
  %66 = load i8, i8* %65, align 1
  %conv101 = sext i8 %66 to i32
  %cmp102 = icmp sle i32 %conv101, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.97
  %67 = phi i1 [ false, %while.cond.97 ], [ %cmp102, %land.rhs ]
  br i1 %67, label %while.body.104, label %while.end.106

while.body.104:                                   ; preds = %land.end
  %68 = load i8*, i8** %s, align 8
  %incdec.ptr105 = getelementptr i8, i8* %68, i32 1
  store i8* %incdec.ptr105, i8** %s, align 8
  br label %while.cond.97

while.end.106:                                    ; preds = %land.end
  %69 = load i8*, i8** %exp_start, align 8
  %call107 = call i64 @strtol(i8* %69, i8** null, i32 10) #2
  store i64 %call107, i64* %exp, align 8
  br label %if.end.109

if.else.108:                                      ; preds = %lor.lhs.false.72
  store i64 0, i64* %exp, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %while.end.106
  br label %while.cond.110

while.cond.110:                                   ; preds = %while.body.126, %if.end.109
  %70 = load i64, i64* %ndigits, align 8
  %cmp111 = icmp sgt i64 %70, 0
  br i1 %cmp111, label %land.rhs.113, label %land.end.125

land.rhs.113:                                     ; preds = %while.cond.110
  %71 = load i64, i64* %ndigits, align 8
  %sub = sub i64 %71, 1
  %72 = load i64, i64* %fdigits, align 8
  %cmp114 = icmp slt i64 %sub, %72
  br i1 %cmp114, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs.113
  %73 = load i8*, i8** %coeff_end, align 8
  %74 = load i64, i64* %ndigits, align 8
  %sub116 = sub i64 %74, 1
  %idx.neg = sub i64 0, %sub116
  %add.ptr117 = getelementptr i8, i8* %73, i64 %idx.neg
  br label %cond.end

cond.false:                                       ; preds = %land.rhs.113
  %75 = load i8*, i8** %coeff_end, align 8
  %add.ptr118 = getelementptr i8, i8* %75, i64 -1
  %76 = load i64, i64* %ndigits, align 8
  %sub119 = sub i64 %76, 1
  %idx.neg120 = sub i64 0, %sub119
  %add.ptr121 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg120
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr117, %cond.true ], [ %add.ptr121, %cond.false ]
  %77 = load i8, i8* %cond, align 1
  %call122 = call i32 @hex_from_char(i8 signext %77)
  %cmp123 = icmp eq i32 %call122, 0
  br label %land.end.125

land.end.125:                                     ; preds = %cond.end, %while.cond.110
  %78 = phi i1 [ false, %while.cond.110 ], [ %cmp123, %cond.end ]
  br i1 %78, label %while.body.126, label %while.end.127

while.body.126:                                   ; preds = %land.end.125
  %79 = load i64, i64* %ndigits, align 8
  %dec = add i64 %79, -1
  store i64 %dec, i64* %ndigits, align 8
  br label %while.cond.110

while.end.127:                                    ; preds = %land.end.125
  %80 = load i64, i64* %ndigits, align 8
  %cmp128 = icmp eq i64 %80, 0
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %while.end.127
  %81 = load i64, i64* %exp, align 8
  %cmp131 = icmp slt i64 %81, -4611686018427387904
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.130, %while.end.127
  store double 0.000000e+00, double* %x, align 8
  br label %finished

if.end.134:                                       ; preds = %lor.lhs.false.130
  %82 = load i64, i64* %exp, align 8
  %cmp135 = icmp sgt i64 %82, 4611686018427387903
  br i1 %cmp135, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.134
  br label %overflow_error

if.end.138:                                       ; preds = %if.end.134
  %83 = load i64, i64* %exp, align 8
  %84 = load i64, i64* %fdigits, align 8
  %mul = mul i64 4, %84
  %sub139 = sub i64 %83, %mul
  store i64 %sub139, i64* %exp, align 8
  %85 = load i64, i64* %exp, align 8
  %86 = load i64, i64* %ndigits, align 8
  %sub140 = sub i64 %86, 1
  %mul141 = mul i64 4, %sub140
  %add = add i64 %85, %mul141
  store i64 %add, i64* %top_exp, align 8
  %87 = load i64, i64* %ndigits, align 8
  %sub142 = sub i64 %87, 1
  %88 = load i64, i64* %fdigits, align 8
  %cmp143 = icmp slt i64 %sub142, %88
  br i1 %cmp143, label %cond.true.145, label %cond.false.149

cond.true.145:                                    ; preds = %if.end.138
  %89 = load i8*, i8** %coeff_end, align 8
  %90 = load i64, i64* %ndigits, align 8
  %sub146 = sub i64 %90, 1
  %idx.neg147 = sub i64 0, %sub146
  %add.ptr148 = getelementptr i8, i8* %89, i64 %idx.neg147
  br label %cond.end.154

cond.false.149:                                   ; preds = %if.end.138
  %91 = load i8*, i8** %coeff_end, align 8
  %add.ptr150 = getelementptr i8, i8* %91, i64 -1
  %92 = load i64, i64* %ndigits, align 8
  %sub151 = sub i64 %92, 1
  %idx.neg152 = sub i64 0, %sub151
  %add.ptr153 = getelementptr i8, i8* %add.ptr150, i64 %idx.neg152
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.false.149, %cond.true.145
  %cond155 = phi i8* [ %add.ptr148, %cond.true.145 ], [ %add.ptr153, %cond.false.149 ]
  %93 = load i8, i8* %cond155, align 1
  %call156 = call i32 @hex_from_char(i8 signext %93)
  store i32 %call156, i32* %digit, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.154
  %94 = load i32, i32* %digit, align 4
  %cmp157 = icmp ne i32 %94, 0
  br i1 %cmp157, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %95 = load i64, i64* %top_exp, align 8
  %inc = add i64 %95, 1
  store i64 %inc, i64* %top_exp, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %96 = load i32, i32* %digit, align 4
  %div = sdiv i32 %96, 2
  store i32 %div, i32* %digit, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load i64, i64* %top_exp, align 8
  %cmp159 = icmp slt i64 %97, -1074
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.end
  store double 0.000000e+00, double* %x, align 8
  br label %finished

if.end.162:                                       ; preds = %for.end
  %98 = load i64, i64* %top_exp, align 8
  %cmp163 = icmp sgt i64 %98, 1024
  br i1 %cmp163, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.end.162
  br label %overflow_error

if.end.166:                                       ; preds = %if.end.162
  %99 = load i64, i64* %top_exp, align 8
  %cmp167 = icmp sgt i64 %99, -1021
  br i1 %cmp167, label %cond.true.169, label %cond.false.170

cond.true.169:                                    ; preds = %if.end.166
  %100 = load i64, i64* %top_exp, align 8
  br label %cond.end.171

cond.false.170:                                   ; preds = %if.end.166
  br label %cond.end.171

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.169
  %cond172 = phi i64 [ %100, %cond.true.169 ], [ -1021, %cond.false.170 ]
  %sub173 = sub i64 %cond172, 53
  store i64 %sub173, i64* %lsb, align 8
  store double 0.000000e+00, double* %x, align 8
  %101 = load i64, i64* %exp, align 8
  %102 = load i64, i64* %lsb, align 8
  %cmp174 = icmp sge i64 %101, %102
  br i1 %cmp174, label %if.then.176, label %if.end.202

if.then.176:                                      ; preds = %cond.end.171
  %103 = load i64, i64* %ndigits, align 8
  %sub177 = sub i64 %103, 1
  store i64 %sub177, i64* %i, align 8
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.197, %if.then.176
  %104 = load i64, i64* %i, align 8
  %cmp179 = icmp sge i64 %104, 0
  br i1 %cmp179, label %for.body.181, label %for.end.199

for.body.181:                                     ; preds = %for.cond.178
  %105 = load double, double* %x, align 8
  %mul182 = fmul double 1.600000e+01, %105
  %106 = load i64, i64* %i, align 8
  %107 = load i64, i64* %fdigits, align 8
  %cmp183 = icmp slt i64 %106, %107
  br i1 %cmp183, label %cond.true.185, label %cond.false.188

cond.true.185:                                    ; preds = %for.body.181
  %108 = load i8*, i8** %coeff_end, align 8
  %109 = load i64, i64* %i, align 8
  %idx.neg186 = sub i64 0, %109
  %add.ptr187 = getelementptr i8, i8* %108, i64 %idx.neg186
  br label %cond.end.192

cond.false.188:                                   ; preds = %for.body.181
  %110 = load i8*, i8** %coeff_end, align 8
  %add.ptr189 = getelementptr i8, i8* %110, i64 -1
  %111 = load i64, i64* %i, align 8
  %idx.neg190 = sub i64 0, %111
  %add.ptr191 = getelementptr i8, i8* %add.ptr189, i64 %idx.neg190
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.false.188, %cond.true.185
  %cond193 = phi i8* [ %add.ptr187, %cond.true.185 ], [ %add.ptr191, %cond.false.188 ]
  %112 = load i8, i8* %cond193, align 1
  %call194 = call i32 @hex_from_char(i8 signext %112)
  %conv195 = sitofp i32 %call194 to double
  %add196 = fadd double %mul182, %conv195
  store double %add196, double* %x, align 8
  br label %for.inc.197

for.inc.197:                                      ; preds = %cond.end.192
  %113 = load i64, i64* %i, align 8
  %dec198 = add i64 %113, -1
  store i64 %dec198, i64* %i, align 8
  br label %for.cond.178

for.end.199:                                      ; preds = %for.cond.178
  %114 = load double, double* %x, align 8
  %115 = load i64, i64* %exp, align 8
  %conv200 = trunc i64 %115 to i32
  %call201 = call double @ldexp(double %114, i32 %conv200) #2
  store double %call201, double* %x, align 8
  br label %finished

if.end.202:                                       ; preds = %cond.end.171
  %116 = load i64, i64* %lsb, align 8
  %117 = load i64, i64* %exp, align 8
  %sub203 = sub i64 %116, %117
  %sub204 = sub i64 %sub203, 1
  %rem = srem i64 %sub204, 4
  %conv205 = trunc i64 %rem to i32
  %shl = shl i32 1, %conv205
  store i32 %shl, i32* %half_eps, align 4
  %118 = load i64, i64* %lsb, align 8
  %119 = load i64, i64* %exp, align 8
  %sub206 = sub i64 %118, %119
  %sub207 = sub i64 %sub206, 1
  %div208 = sdiv i64 %sub207, 4
  store i64 %div208, i64* %key_digit, align 8
  %120 = load i64, i64* %ndigits, align 8
  %sub209 = sub i64 %120, 1
  store i64 %sub209, i64* %i, align 8
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.229, %if.end.202
  %121 = load i64, i64* %i, align 8
  %122 = load i64, i64* %key_digit, align 8
  %cmp211 = icmp sgt i64 %121, %122
  br i1 %cmp211, label %for.body.213, label %for.end.231

for.body.213:                                     ; preds = %for.cond.210
  %123 = load double, double* %x, align 8
  %mul214 = fmul double 1.600000e+01, %123
  %124 = load i64, i64* %i, align 8
  %125 = load i64, i64* %fdigits, align 8
  %cmp215 = icmp slt i64 %124, %125
  br i1 %cmp215, label %cond.true.217, label %cond.false.220

cond.true.217:                                    ; preds = %for.body.213
  %126 = load i8*, i8** %coeff_end, align 8
  %127 = load i64, i64* %i, align 8
  %idx.neg218 = sub i64 0, %127
  %add.ptr219 = getelementptr i8, i8* %126, i64 %idx.neg218
  br label %cond.end.224

cond.false.220:                                   ; preds = %for.body.213
  %128 = load i8*, i8** %coeff_end, align 8
  %add.ptr221 = getelementptr i8, i8* %128, i64 -1
  %129 = load i64, i64* %i, align 8
  %idx.neg222 = sub i64 0, %129
  %add.ptr223 = getelementptr i8, i8* %add.ptr221, i64 %idx.neg222
  br label %cond.end.224

cond.end.224:                                     ; preds = %cond.false.220, %cond.true.217
  %cond225 = phi i8* [ %add.ptr219, %cond.true.217 ], [ %add.ptr223, %cond.false.220 ]
  %130 = load i8, i8* %cond225, align 1
  %call226 = call i32 @hex_from_char(i8 signext %130)
  %conv227 = sitofp i32 %call226 to double
  %add228 = fadd double %mul214, %conv227
  store double %add228, double* %x, align 8
  br label %for.inc.229

for.inc.229:                                      ; preds = %cond.end.224
  %131 = load i64, i64* %i, align 8
  %dec230 = add i64 %131, -1
  store i64 %dec230, i64* %i, align 8
  br label %for.cond.210

for.end.231:                                      ; preds = %for.cond.210
  %132 = load i64, i64* %key_digit, align 8
  %133 = load i64, i64* %fdigits, align 8
  %cmp232 = icmp slt i64 %132, %133
  br i1 %cmp232, label %cond.true.234, label %cond.false.237

cond.true.234:                                    ; preds = %for.end.231
  %134 = load i8*, i8** %coeff_end, align 8
  %135 = load i64, i64* %key_digit, align 8
  %idx.neg235 = sub i64 0, %135
  %add.ptr236 = getelementptr i8, i8* %134, i64 %idx.neg235
  br label %cond.end.241

cond.false.237:                                   ; preds = %for.end.231
  %136 = load i8*, i8** %coeff_end, align 8
  %add.ptr238 = getelementptr i8, i8* %136, i64 -1
  %137 = load i64, i64* %key_digit, align 8
  %idx.neg239 = sub i64 0, %137
  %add.ptr240 = getelementptr i8, i8* %add.ptr238, i64 %idx.neg239
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.237, %cond.true.234
  %cond242 = phi i8* [ %add.ptr236, %cond.true.234 ], [ %add.ptr240, %cond.false.237 ]
  %138 = load i8, i8* %cond242, align 1
  %call243 = call i32 @hex_from_char(i8 signext %138)
  store i32 %call243, i32* %digit, align 4
  %139 = load double, double* %x, align 8
  %mul244 = fmul double 1.600000e+01, %139
  %140 = load i32, i32* %digit, align 4
  %141 = load i32, i32* %half_eps, align 4
  %mul245 = mul i32 2, %141
  %sub246 = sub i32 16, %mul245
  %and247 = and i32 %140, %sub246
  %conv248 = sitofp i32 %and247 to double
  %add249 = fadd double %mul244, %conv248
  store double %add249, double* %x, align 8
  %142 = load i32, i32* %digit, align 4
  %143 = load i32, i32* %half_eps, align 4
  %and250 = and i32 %142, %143
  %cmp251 = icmp ne i32 %and250, 0
  br i1 %cmp251, label %if.then.253, label %if.end.324

if.then.253:                                      ; preds = %cond.end.241
  store i32 0, i32* %round_up, align 4
  %144 = load i32, i32* %digit, align 4
  %145 = load i32, i32* %half_eps, align 4
  %mul254 = mul i32 3, %145
  %sub255 = sub i32 %mul254, 1
  %and256 = and i32 %144, %sub255
  %cmp257 = icmp ne i32 %and256, 0
  br i1 %cmp257, label %if.then.281, label %lor.lhs.false.259

lor.lhs.false.259:                                ; preds = %if.then.253
  %146 = load i32, i32* %half_eps, align 4
  %cmp260 = icmp eq i32 %146, 8
  br i1 %cmp260, label %land.lhs.true.262, label %if.else.282

land.lhs.true.262:                                ; preds = %lor.lhs.false.259
  %147 = load i64, i64* %key_digit, align 8
  %add263 = add i64 %147, 1
  %148 = load i64, i64* %fdigits, align 8
  %cmp264 = icmp slt i64 %add263, %148
  br i1 %cmp264, label %cond.true.266, label %cond.false.270

cond.true.266:                                    ; preds = %land.lhs.true.262
  %149 = load i8*, i8** %coeff_end, align 8
  %150 = load i64, i64* %key_digit, align 8
  %add267 = add i64 %150, 1
  %idx.neg268 = sub i64 0, %add267
  %add.ptr269 = getelementptr i8, i8* %149, i64 %idx.neg268
  br label %cond.end.275

cond.false.270:                                   ; preds = %land.lhs.true.262
  %151 = load i8*, i8** %coeff_end, align 8
  %add.ptr271 = getelementptr i8, i8* %151, i64 -1
  %152 = load i64, i64* %key_digit, align 8
  %add272 = add i64 %152, 1
  %idx.neg273 = sub i64 0, %add272
  %add.ptr274 = getelementptr i8, i8* %add.ptr271, i64 %idx.neg273
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.270, %cond.true.266
  %cond276 = phi i8* [ %add.ptr269, %cond.true.266 ], [ %add.ptr274, %cond.false.270 ]
  %153 = load i8, i8* %cond276, align 1
  %call277 = call i32 @hex_from_char(i8 signext %153)
  %and278 = and i32 %call277, 1
  %cmp279 = icmp ne i32 %and278, 0
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %cond.end.275, %if.then.253
  store i32 1, i32* %round_up, align 4
  br label %if.end.307

if.else.282:                                      ; preds = %cond.end.275, %lor.lhs.false.259
  %154 = load i64, i64* %key_digit, align 8
  %sub283 = sub i64 %154, 1
  store i64 %sub283, i64* %i, align 8
  br label %for.cond.284

for.cond.284:                                     ; preds = %for.inc.304, %if.else.282
  %155 = load i64, i64* %i, align 8
  %cmp285 = icmp sge i64 %155, 0
  br i1 %cmp285, label %for.body.287, label %for.end.306

for.body.287:                                     ; preds = %for.cond.284
  %156 = load i64, i64* %i, align 8
  %157 = load i64, i64* %fdigits, align 8
  %cmp288 = icmp slt i64 %156, %157
  br i1 %cmp288, label %cond.true.290, label %cond.false.293

cond.true.290:                                    ; preds = %for.body.287
  %158 = load i8*, i8** %coeff_end, align 8
  %159 = load i64, i64* %i, align 8
  %idx.neg291 = sub i64 0, %159
  %add.ptr292 = getelementptr i8, i8* %158, i64 %idx.neg291
  br label %cond.end.297

cond.false.293:                                   ; preds = %for.body.287
  %160 = load i8*, i8** %coeff_end, align 8
  %add.ptr294 = getelementptr i8, i8* %160, i64 -1
  %161 = load i64, i64* %i, align 8
  %idx.neg295 = sub i64 0, %161
  %add.ptr296 = getelementptr i8, i8* %add.ptr294, i64 %idx.neg295
  br label %cond.end.297

cond.end.297:                                     ; preds = %cond.false.293, %cond.true.290
  %cond298 = phi i8* [ %add.ptr292, %cond.true.290 ], [ %add.ptr296, %cond.false.293 ]
  %162 = load i8, i8* %cond298, align 1
  %call299 = call i32 @hex_from_char(i8 signext %162)
  %cmp300 = icmp ne i32 %call299, 0
  br i1 %cmp300, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %cond.end.297
  store i32 1, i32* %round_up, align 4
  br label %for.end.306

if.end.303:                                       ; preds = %cond.end.297
  br label %for.inc.304

for.inc.304:                                      ; preds = %if.end.303
  %163 = load i64, i64* %i, align 8
  %dec305 = add i64 %163, -1
  store i64 %dec305, i64* %i, align 8
  br label %for.cond.284

for.end.306:                                      ; preds = %if.then.302, %for.cond.284
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %if.then.281
  %164 = load i32, i32* %round_up, align 4
  %tobool308 = icmp ne i32 %164, 0
  br i1 %tobool308, label %if.then.309, label %if.end.323

if.then.309:                                      ; preds = %if.end.307
  %165 = load i32, i32* %half_eps, align 4
  %mul310 = mul i32 2, %165
  %conv311 = sitofp i32 %mul310 to double
  %166 = load double, double* %x, align 8
  %add312 = fadd double %166, %conv311
  store double %add312, double* %x, align 8
  %167 = load i64, i64* %top_exp, align 8
  %cmp313 = icmp eq i64 %167, 1024
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.322

land.lhs.true.315:                                ; preds = %if.then.309
  %168 = load double, double* %x, align 8
  %169 = load i32, i32* %half_eps, align 4
  %mul316 = mul i32 2, %169
  %conv317 = sitofp i32 %mul316 to double
  %call318 = call double @ldexp(double %conv317, i32 53) #2
  %cmp319 = fcmp oeq double %168, %call318
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %land.lhs.true.315
  br label %overflow_error

if.end.322:                                       ; preds = %land.lhs.true.315, %if.then.309
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.end.307
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %cond.end.241
  %170 = load double, double* %x, align 8
  %171 = load i64, i64* %exp, align 8
  %172 = load i64, i64* %key_digit, align 8
  %mul325 = mul i64 4, %172
  %add326 = add i64 %171, %mul325
  %conv327 = trunc i64 %add326 to i32
  %call328 = call double @ldexp(double %170, i32 %conv327) #2
  store double %call328, double* %x, align 8
  br label %finished

finished:                                         ; preds = %if.end.324, %for.end.199, %if.then.161, %if.then.133, %if.then.6
  br label %while.cond.329

while.cond.329:                                   ; preds = %while.body.337, %finished
  %173 = load i8*, i8** %s, align 8
  %174 = load i8, i8* %173, align 1
  %conv330 = sext i8 %174 to i32
  %and331 = and i32 %conv330, 255
  %conv332 = trunc i32 %and331 to i8
  %idxprom333 = zext i8 %conv332 to i64
  %arrayidx334 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom333
  %175 = load i32, i32* %arrayidx334, align 4
  %and335 = and i32 %175, 8
  %tobool336 = icmp ne i32 %and335, 0
  br i1 %tobool336, label %while.body.337, label %while.end.339

while.body.337:                                   ; preds = %while.cond.329
  %176 = load i8*, i8** %s, align 8
  %incdec.ptr338 = getelementptr i8, i8* %176, i32 1
  store i8* %incdec.ptr338, i8** %s, align 8
  br label %while.cond.329

while.end.339:                                    ; preds = %while.cond.329
  %177 = load i8*, i8** %s, align 8
  %178 = load i8*, i8** %s_end, align 8
  %cmp340 = icmp ne i8* %177, %178
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %while.end.339
  br label %parse_error

if.end.343:                                       ; preds = %while.end.339
  %179 = load i32, i32* %negate, align 4
  %tobool344 = icmp ne i32 %179, 0
  br i1 %tobool344, label %cond.true.345, label %cond.false.347

cond.true.345:                                    ; preds = %if.end.343
  %180 = load double, double* %x, align 8
  %sub346 = fsub double -0.000000e+00, %180
  br label %cond.end.348

cond.false.347:                                   ; preds = %if.end.343
  %181 = load double, double* %x, align 8
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.345
  %cond349 = phi double [ %sub346, %cond.true.345 ], [ %181, %cond.false.347 ]
  %call350 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), double %cond349)
  store %struct._object* %call350, %struct._object** %result_as_float, align 8
  %182 = load %struct._object*, %struct._object** %result_as_float, align 8
  %cmp351 = icmp eq %struct._object* %182, null
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %cond.end.348
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.354:                                       ; preds = %cond.end.348
  %183 = load %struct._object*, %struct._object** %cls.addr, align 8
  %184 = load %struct._object*, %struct._object** %result_as_float, align 8
  %call355 = call %struct._object* @PyObject_CallObject(%struct._object* %183, %struct._object* %184)
  store %struct._object* %call355, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.354
  %185 = load %struct._object*, %struct._object** %result_as_float, align 8
  store %struct._object* %185, %struct._object** %_py_decref_tmp, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 0
  %187 = load i64, i64* %ob_refcnt, align 8
  %dec356 = add i64 %187, -1
  store i64 %dec356, i64* %ob_refcnt, align 8
  %cmp357 = icmp ne i64 %dec356, 0
  br i1 %cmp357, label %if.then.359, label %if.else.360

if.then.359:                                      ; preds = %do.body
  br label %if.end.361

if.else.360:                                      ; preds = %do.body
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 1
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i32 0, i32 4
  %190 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %190(%struct._object* %191)
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.360, %if.then.359
  br label %do.end

do.end:                                           ; preds = %if.end.361
  %192 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %192, %struct._object** %retval
  br label %return

overflow_error:                                   ; preds = %if.then.321, %if.then.165, %if.then.137
  %193 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %193, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

parse_error:                                      ; preds = %if.then.342, %if.then.94, %if.then.63
  %194 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %194, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

insane_length_error:                              ; preds = %if.then.67
  %195 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %195, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %insane_length_error, %parse_error, %overflow_error, %do.end, %if.then.353, %if.then
  %196 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %196
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_hex(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %m = alloca double, align 8
  %e = alloca i32, align 4
  %shift = alloca i32, align 4
  %i = alloca i32, align 4
  %si = alloca i32, align 4
  %esign = alloca i32, align 4
  %s = alloca [16 x i8], align 16
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %3, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1
  %6 = load double, double* %ob_fval, align 8
  store double %6, double* %x, align 8
  br label %if.end.5

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %x)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.5
  %8 = load double, double* %x, align 8
  %conv = fptrunc double %8 to float
  %call6 = call i32 @__isnanf(float %conv) #8
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.28, label %lor.lhs.false.15

cond.false:                                       ; preds = %if.end.5
  br i1 true, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.false
  %9 = load double, double* %x, align 8
  %call9 = call i32 @__isnan(double %9) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.28, label %lor.lhs.false.15

cond.false.11:                                    ; preds = %cond.false
  %10 = load double, double* %x, align 8
  %conv12 = fpext double %10 to x86_fp80
  %call13 = call i32 @__isnanl(x86_fp80 %conv12) #8
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.28, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %cond.false.11, %cond.true.8, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20

cond.true.16:                                     ; preds = %lor.lhs.false.15
  %11 = load double, double* %x, align 8
  %conv17 = fptrunc double %11 to float
  %call18 = call i32 @__isinff(float %conv17) #8
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.28, label %if.end.30

cond.false.20:                                    ; preds = %lor.lhs.false.15
  br i1 true, label %cond.true.21, label %cond.false.24

cond.true.21:                                     ; preds = %cond.false.20
  %12 = load double, double* %x, align 8
  %call22 = call i32 @__isinf(double %12) #8
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.28, label %if.end.30

cond.false.24:                                    ; preds = %cond.false.20
  %13 = load double, double* %x, align 8
  %conv25 = fpext double %13 to x86_fp80
  %call26 = call i32 @__isinfl(x86_fp80 %conv25) #8
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16, %cond.false.11, %cond.true.8, %cond.true
  %14 = load %struct._object*, %struct._object** %v.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*
  %call29 = call %struct._object* @float_repr(%struct.PyFloatObject* %15)
  store %struct._object* %call29, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %16 = load double, double* %x, align 8
  %cmp31 = fcmp oeq double %16, 0.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %if.end.30
  %17 = load double, double* %x, align 8
  %call34 = call double @copysign(double 1.000000e+00, double %17) #8
  %cmp35 = fcmp oeq double %call34, -1.000000e+00
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.then.33
  %call38 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0))
  store %struct._object* %call38, %struct._object** %retval
  br label %return

if.else.39:                                       ; preds = %if.then.33
  %call40 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* %call40, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.30
  %18 = load double, double* %x, align 8
  %call42 = call double @fabs(double %18) #8
  %call43 = call double @frexp(double %call42, i32* %e) #2
  store double %call43, double* %m, align 8
  %19 = load i32, i32* %e, align 4
  %sub = sub i32 -1021, %19
  %cmp44 = icmp sgt i32 %sub, 0
  br i1 %cmp44, label %cond.true.46, label %cond.false.48

cond.true.46:                                     ; preds = %if.end.41
  %20 = load i32, i32* %e, align 4
  %sub47 = sub i32 -1021, %20
  br label %cond.end

cond.false.48:                                    ; preds = %if.end.41
  br label %cond.end

cond.end:                                         ; preds = %cond.false.48, %cond.true.46
  %cond = phi i32 [ %sub47, %cond.true.46 ], [ 0, %cond.false.48 ]
  %sub49 = sub i32 1, %cond
  store i32 %sub49, i32* %shift, align 4
  %21 = load double, double* %m, align 8
  %22 = load i32, i32* %shift, align 4
  %call50 = call double @ldexp(double %21, i32 %22) #2
  store double %call50, double* %m, align 8
  %23 = load i32, i32* %shift, align 4
  %24 = load i32, i32* %e, align 4
  %sub51 = sub i32 %24, %23
  store i32 %sub51, i32* %e, align 4
  store i32 0, i32* %si, align 4
  %25 = load double, double* %m, align 8
  %conv52 = fptosi double %25 to i32
  %call53 = call signext i8 @char_from_hex(i32 %conv52)
  %26 = load i32, i32* %si, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom
  store i8 %call53, i8* %arrayidx, align 1
  %27 = load i32, i32* %si, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %si, align 4
  %28 = load double, double* %m, align 8
  %conv54 = fptosi double %28 to i32
  %conv55 = sitofp i32 %conv54 to double
  %29 = load double, double* %m, align 8
  %sub56 = fsub double %29, %conv55
  store double %sub56, double* %m, align 8
  %30 = load i32, i32* %si, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom57
  store i8 46, i8* %arrayidx58, align 1
  %31 = load i32, i32* %si, align 4
  %inc59 = add i32 %31, 1
  store i32 %inc59, i32* %si, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %32 = load i32, i32* %i, align 4
  %cmp60 = icmp slt i32 %32, 13
  br i1 %cmp60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load double, double* %m, align 8
  %mul = fmul double %33, 1.600000e+01
  store double %mul, double* %m, align 8
  %34 = load double, double* %m, align 8
  %conv62 = fptosi double %34 to i32
  %call63 = call signext i8 @char_from_hex(i32 %conv62)
  %35 = load i32, i32* %si, align 4
  %idxprom64 = sext i32 %35 to i64
  %arrayidx65 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom64
  store i8 %call63, i8* %arrayidx65, align 1
  %36 = load i32, i32* %si, align 4
  %inc66 = add i32 %36, 1
  store i32 %inc66, i32* %si, align 4
  %37 = load double, double* %m, align 8
  %conv67 = fptosi double %37 to i32
  %conv68 = sitofp i32 %conv67 to double
  %38 = load double, double* %m, align 8
  %sub69 = fsub double %38, %conv68
  store double %sub69, double* %m, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc70 = add i32 %39, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load i32, i32* %si, align 4
  %idxprom71 = sext i32 %40 to i64
  %arrayidx72 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom71
  store i8 0, i8* %arrayidx72, align 1
  %41 = load i32, i32* %e, align 4
  %cmp73 = icmp slt i32 %41, 0
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %for.end
  store i32 45, i32* %esign, align 4
  %42 = load i32, i32* %e, align 4
  %sub76 = sub i32 0, %42
  store i32 %sub76, i32* %e, align 4
  br label %if.end.78

if.else.77:                                       ; preds = %for.end
  store i32 43, i32* %esign, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.75
  %43 = load double, double* %x, align 8
  %cmp79 = fcmp olt double %43, 0.000000e+00
  br i1 %cmp79, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %if.end.78
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %44 = load i32, i32* %esign, align 4
  %45 = load i32, i32* %e, align 4
  %call82 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay, i32 %44, i32 %45)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.else.83:                                       ; preds = %if.end.78
  %arraydecay84 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0
  %46 = load i32, i32* %esign, align 4
  %47 = load i32, i32* %e, align 4
  %call85 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay84, i32 %46, i32 %47)
  store %struct._object* %call85, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.83, %if.then.81, %if.else.39, %if.then.37, %if.then.28, %if.then.4
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_is_integer(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %o = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
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
  %call2 = call i32 @__finitef(float %conv) #8
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.12, label %if.then.11

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %3 = load double, double* %x, align 8
  %call5 = call i32 @__finite(double %3) #8
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.12, label %if.then.11

cond.false.7:                                     ; preds = %cond.false
  %4 = load double, double* %x, align 8
  %conv8 = fpext double %4 to x86_fp80
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #8
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %cond.false.7, %cond.true.4, %cond.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %cond.false.7, %cond.true.4, %cond.true
  %call13 = call i32* @__errno_location() #8
  store i32 0, i32* %call13, align 4
  %6 = load double, double* %x, align 8
  %call14 = call double @floor(double %6) #8
  %7 = load double, double* %x, align 8
  %cmp15 = fcmp oeq double %call14, %7
  %cond = select i1 %cmp15, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %o, align 8
  %call17 = call i32* @__errno_location() #8
  %8 = load i32, i32* %call17, align 4
  %cmp18 = icmp ne i32 %8, 0
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.end.12
  %call21 = call i32* @__errno_location() #8
  %9 = load i32, i32* %call21, align 4
  %cmp22 = icmp eq i32 %9, 34
  br i1 %cmp22, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %if.then.20
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  br label %cond.end

cond.false.25:                                    ; preds = %if.then.20
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond26 = phi %struct._object* [ %10, %cond.true.24 ], [ %11, %cond.false.25 ]
  %call27 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %cond26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** %o, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc29 = add i64 %13, 1
  store i64 %inc29, i64* %ob_refcnt, align 8
  %14 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %cond.end, %if.then.11, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getnewargs(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1
  %1 = load double, double* %ob_fval, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), double %1)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getformat(%struct._typeobject* %v, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._typeobject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %r = alloca i32, align 4
  store %struct._typeobject* %v, %struct._typeobject** %v.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %4 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i8* %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call2 = call i8* @PyUnicode_AsUTF8(%struct._object* %7)
  store i8* %call2, i8** %s, align 8
  %8 = load i8*, i8** %s, align 8
  %cmp3 = icmp eq i8* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load i8*, i8** %s, align 8
  %call6 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #7
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.5
  %10 = load i32, i32* @double_format, align 4
  store i32 %10, i32* %r, align 4
  br label %if.end.14

if.else:                                          ; preds = %if.end.5
  %11 = load i8*, i8** %s, align 8
  %call9 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %12 = load i32, i32* @float_format, align 4
  store i32 %12, i32* %r, align 4
  br label %if.end.13

if.else.12:                                       ; preds = %if.else
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.8
  %14 = load i32, i32* %r, align 4
  switch i32 %14, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.16
    i32 1, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.14
  %call15 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* %call15, %struct._object** %retval
  br label %return

sw.bb.16:                                         ; preds = %if.end.14
  %call17 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* %call17, %struct._object** %retval
  br label %return

sw.bb.18:                                         ; preds = %if.end.14
  %call19 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end.14
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0)) #9
  unreachable

return:                                           ; preds = %sw.bb.18, %sw.bb.16, %sw.bb, %if.else.12, %if.then.4, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_setformat(%struct._typeobject* %v, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %typestr = alloca i8*, align 8
  %format = alloca i8*, align 8
  %f = alloca i32, align 4
  %detected = alloca i32, align 4
  %p = alloca i32*, align 8
  store %struct._typeobject* %v, %struct._typeobject** %v.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8** %typestr, i8** %format)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %typestr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #7
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32* @double_format, i32** %p, align 8
  %2 = load i32, i32* @detected_double_format, align 4
  store i32 %2, i32* %detected, align 4
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %3 = load i8*, i8** %typestr, align 8
  %call3 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #7
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32* @float_format, i32** %p, align 8
  %4 = load i32, i32* @detected_float_format, align 4
  store i32 %4, i32* %detected, align 4
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.58, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %6 = load i8*, i8** %format, align 8
  %call9 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #7
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.8
  store i32 0, i32* %f, align 4
  br label %if.end.23

if.else.12:                                       ; preds = %if.end.8
  %7 = load i8*, i8** %format, align 8
  %call13 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #7
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 2, i32* %f, align 4
  br label %if.end.22

if.else.16:                                       ; preds = %if.else.12
  %8 = load i8*, i8** %format, align 8
  %call17 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0)) #7
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 1, i32* %f, align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.16
  %9 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.59, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.11
  %10 = load i32, i32* %f, align 4
  %cmp24 = icmp ne i32 %10, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.23
  %11 = load i32, i32* %f, align 4
  %12 = load i32, i32* %detected, align 4
  %cmp25 = icmp ne i32 %11, %12
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %14 = load i8*, i8** %typestr, align 8
  %call27 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.60, i32 0, i32 0), i8* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %if.end.23
  %15 = load i32, i32* %f, align 4
  %16 = load i32*, i32** %p, align 8
  store i32 %15, i32* %16, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.26, %if.else.20, %if.else.6, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float__format__(%struct._object* %self, %struct._object* %args) #0 {
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
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), %struct._object** %format_spec)
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
  %call1 = call i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %1, %struct._object* %2, i64 0, i64 %5)
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

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare double @round(double) #5

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @double_round(double %x, i32 %ndigits) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %x.addr = alloca double, align 8
  %ndigits.addr = alloca i32, align 4
  %rounded = alloca double, align 8
  %buflen = alloca i64, align 8
  %mybuflen = alloca i64, align 8
  %buf = alloca i8*, align 8
  %buf_end = alloca i8*, align 8
  %shortbuf = alloca [100 x i8], align 16
  %mybuf = alloca i8*, align 8
  %decpt = alloca i32, align 4
  %sign = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %old_387controlword = alloca i16, align 2
  %new_387controlword = alloca i16, align 2
  store double %x, double* %x.addr, align 8
  store i32 %ndigits, i32* %ndigits.addr, align 4
  store i64 100, i64* %mybuflen, align 8
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %shortbuf, i32 0, i32 0
  store i8* %arraydecay, i8** %mybuf, align 8
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %call = call zeroext i16 @_Py_get_387controlword()
  store i16 %call, i16* %old_387controlword, align 2
  %0 = load i16, i16* %old_387controlword, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, -3841
  %or = or i32 %and, 512
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, i16* %new_387controlword, align 2
  %1 = load i16, i16* %new_387controlword, align 2
  %conv2 = zext i16 %1 to i32
  %2 = load i16, i16* %old_387controlword, align 2
  %conv3 = zext i16 %2 to i32
  %cmp = icmp ne i32 %conv2, %conv3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i16, i16* %new_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load double, double* %x.addr, align 8
  %5 = load i32, i32* %ndigits.addr, align 4
  %call5 = call i8* @_Py_dg_dtoa(double %4, i32 3, i32 %5, i32* %decpt, i32* %sign, i8** %buf_end)
  store i8* %call5, i8** %buf, align 8
  %6 = load i16, i16* %new_387controlword, align 2
  %conv6 = zext i16 %6 to i32
  %7 = load i16, i16* %old_387controlword, align 2
  %conv7 = zext i16 %7 to i32
  %cmp8 = icmp ne i32 %conv6, %conv7
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %do.end
  %8 = load i16, i16* %old_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %8)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %do.end
  %9 = load i8*, i8** %buf, align 8
  %cmp12 = icmp eq i8* %9, null
  br i1 %cmp12, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %call15 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %10 = load i8*, i8** %buf_end, align 8
  %11 = load i8*, i8** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %buflen, align 8
  %12 = load i64, i64* %buflen, align 8
  %add = add i64 %12, 8
  %13 = load i64, i64* %mybuflen, align 8
  %cmp17 = icmp sgt i64 %add, %13
  br i1 %cmp17, label %if.then.19, label %if.end.27

if.then.19:                                       ; preds = %if.end.16
  %14 = load i64, i64* %buflen, align 8
  %add20 = add i64 %14, 8
  store i64 %add20, i64* %mybuflen, align 8
  %15 = load i64, i64* %mybuflen, align 8
  %call21 = call i8* @PyMem_Malloc(i64 %15)
  store i8* %call21, i8** %mybuf, align 8
  %16 = load i8*, i8** %mybuf, align 8
  %cmp22 = icmp eq i8* %16, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.19
  %call25 = call %struct._object* @PyErr_NoMemory()
  br label %exit

if.end.26:                                        ; preds = %if.then.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  %17 = load i8*, i8** %mybuf, align 8
  %18 = load i64, i64* %mybuflen, align 8
  %19 = load i32, i32* %sign, align 4
  %tobool = icmp ne i32 %19, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0)
  %20 = load i8*, i8** %buf, align 8
  %21 = load i32, i32* %decpt, align 4
  %22 = load i64, i64* %buflen, align 8
  %conv28 = trunc i64 %22 to i32
  %sub = sub i32 %21, %conv28
  %call29 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %17, i64 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* %cond, i8* %20, i32 %sub)
  %call30 = call i32* @__errno_location() #8
  store i32 0, i32* %call30, align 4
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.27
  %call32 = call zeroext i16 @_Py_get_387controlword()
  store i16 %call32, i16* %old_387controlword, align 2
  %23 = load i16, i16* %old_387controlword, align 2
  %conv33 = zext i16 %23 to i32
  %and34 = and i32 %conv33, -3841
  %or35 = or i32 %and34, 512
  %conv36 = trunc i32 %or35 to i16
  store i16 %conv36, i16* %new_387controlword, align 2
  %24 = load i16, i16* %new_387controlword, align 2
  %conv37 = zext i16 %24 to i32
  %25 = load i16, i16* %old_387controlword, align 2
  %conv38 = zext i16 %25 to i32
  %cmp39 = icmp ne i32 %conv37, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.body.31
  %26 = load i16, i16* %new_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %26)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %do.body.31
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %27 = load i8*, i8** %mybuf, align 8
  %call44 = call double @_Py_dg_strtod(i8* %27, i8** null)
  store double %call44, double* %rounded, align 8
  %28 = load i16, i16* %new_387controlword, align 2
  %conv45 = zext i16 %28 to i32
  %29 = load i16, i16* %old_387controlword, align 2
  %conv46 = zext i16 %29 to i32
  %cmp47 = icmp ne i32 %conv45, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.end.43
  %30 = load i16, i16* %old_387controlword, align 2
  call void @_Py_set_387controlword(i16 zeroext %30)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %do.end.43
  %call51 = call i32* @__errno_location() #8
  %31 = load i32, i32* %call51, align 4
  %cmp52 = icmp eq i32 %31, 34
  br i1 %cmp52, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.50
  %32 = load double, double* %rounded, align 8
  %call54 = call double @fabs(double %32) #8
  %cmp55 = fcmp oge double %call54, 1.000000e+00
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %land.lhs.true
  %33 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.59

if.else:                                          ; preds = %land.lhs.true, %if.end.50
  %34 = load double, double* %rounded, align 8
  %call58 = call %struct._object* @PyFloat_FromDouble(double %34)
  store %struct._object* %call58, %struct._object** %result, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.57
  %35 = load i8*, i8** %mybuf, align 8
  %arraydecay60 = getelementptr inbounds [100 x i8], [100 x i8]* %shortbuf, i32 0, i32 0
  %cmp61 = icmp ne i8* %35, %arraydecay60
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.59
  %36 = load i8*, i8** %mybuf, align 8
  call void @PyMem_Free(i8* %36)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %if.end.59
  br label %exit

exit:                                             ; preds = %if.end.64, %if.then.24
  %37 = load i8*, i8** %buf, align 8
  call void @_Py_dg_freedtoa(i8* %37)
  %38 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %38, %struct._object** %retval
  br label %return

return:                                           ; preds = %exit, %if.then.14
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare zeroext i16 @_Py_get_387controlword() #1

declare void @_Py_set_387controlword(i16 zeroext) #1

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #1

declare i8* @PyMem_Malloc(i64) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare double @_Py_dg_strtod(i8*, i8**) #1

declare void @_Py_dg_freedtoa(i8*) #1

; Function Attrs: nounwind readnone
declare i64 @labs(i64) #5

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare double @_Py_parse_inf_or_nan(i8*, i8**) #1

; Function Attrs: nounwind uwtable
define internal i32 @hex_from_char(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %x = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb.1
    i32 50, label %sw.bb.2
    i32 51, label %sw.bb.3
    i32 52, label %sw.bb.4
    i32 53, label %sw.bb.5
    i32 54, label %sw.bb.6
    i32 55, label %sw.bb.7
    i32 56, label %sw.bb.8
    i32 57, label %sw.bb.9
    i32 97, label %sw.bb.10
    i32 65, label %sw.bb.10
    i32 98, label %sw.bb.11
    i32 66, label %sw.bb.11
    i32 99, label %sw.bb.12
    i32 67, label %sw.bb.12
    i32 100, label %sw.bb.13
    i32 68, label %sw.bb.13
    i32 101, label %sw.bb.14
    i32 69, label %sw.bb.14
    i32 102, label %sw.bb.15
    i32 70, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %x, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %x, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %x, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %x, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 5, i32* %x, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  store i32 6, i32* %x, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  store i32 7, i32* %x, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  store i32 8, i32* %x, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  store i32 9, i32* %x, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry, %entry
  store i32 10, i32* %x, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry, %entry
  store i32 11, i32* %x, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry, %entry
  store i32 12, i32* %x, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 13, i32* %x, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  store i32 14, i32* %x, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry, %entry
  store i32 15, i32* %x, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %x, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %x, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #4

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal signext i8 @char_from_hex(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  ret i8 %2
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #6

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #1

declare i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #1

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #1

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getzero(%struct._object* %v, i8* %closure) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %call = call %struct._object* @PyFloat_FromDouble(double 0.000000e+00)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_subtype_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %newobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @float_new(%struct._typeobject* @PyFloat_Type, %struct._object* %0, %struct._object* %1)
  store %struct._object* %call, %struct._object** %tmp, align 8
  %2 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 36
  %4 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call2 = call %struct._object* %4(%struct._typeobject* %5, i64 0)
  store %struct._object* %call2, %struct._object** %newobj, align 8
  %6 = load %struct._object*, %struct._object** %newobj, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %tmp, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1
  %16 = load double, double* %ob_fval, align 8
  %17 = load %struct._object*, %struct._object** %newobj, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyFloatObject*
  %ob_fval10 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %18, i32 0, i32 1
  store double %16, double* %ob_fval10, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp13, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %21, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.11
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.11
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %24(%struct._object* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %26, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.22, %do.end, %if.then
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare %struct._object* @PyNumber_Float(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
