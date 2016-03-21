; ModuleID = 'irs-onlybc/floatobject.bc'
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
  ret double 0x7FEFFFFFFFFFFFFF, !dbg !1035
}

; Function Attrs: nounwind uwtable
define double @PyFloat_GetMin() #0 {
entry:
  ret double 0x10000000000000, !dbg !1036
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_GetInfo() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %floatinfo = alloca %struct._object*, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %floatinfo to i8*, !dbg !1037
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1037
  call void @llvm.dbg.declare(metadata %struct._object** %floatinfo, metadata !407, metadata !1038), !dbg !1039
  %1 = bitcast i32* %pos to i8*, !dbg !1040
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1040
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !408, metadata !1038), !dbg !1041
  store i32 0, i32* %pos, align 4, !dbg !1041, !tbaa !1042
  %call = call %struct._object* @PyStructSequence_New(%struct._typeobject* @FloatInfoType), !dbg !1046
  store %struct._object* %call, %struct._object** %floatinfo, align 8, !dbg !1047, !tbaa !1048
  %2 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1050, !tbaa !1048
  %cmp = icmp eq %struct._object* %2, null, !dbg !1052
  br i1 %cmp, label %if.then, label %if.end, !dbg !1053

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1054
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1054

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyFloat_FromDouble(double 0x7FEFFFFFFFFFFFFF), !dbg !1056
  %3 = load i32, i32* %pos, align 4, !dbg !1057, !tbaa !1042
  %inc = add i32 %3, 1, !dbg !1057
  store i32 %inc, i32* %pos, align 4, !dbg !1057, !tbaa !1042
  %idxprom = sext i32 %3 to i64, !dbg !1058
  %4 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1059, !tbaa !1048
  %5 = bitcast %struct._object* %4 to %struct.PyTupleObject*, !dbg !1060
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %5, i32 0, i32 1, !dbg !1061
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom, !dbg !1058
  store %struct._object* %call1, %struct._object** %arrayidx, align 8, !dbg !1062, !tbaa !1048
  %call2 = call %struct._object* @PyLong_FromLong(i64 1024), !dbg !1063
  %6 = load i32, i32* %pos, align 4, !dbg !1064, !tbaa !1042
  %inc3 = add i32 %6, 1, !dbg !1064
  store i32 %inc3, i32* %pos, align 4, !dbg !1064, !tbaa !1042
  %idxprom4 = sext i32 %6 to i64, !dbg !1065
  %7 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1066, !tbaa !1048
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*, !dbg !1067
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !1068
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 %idxprom4, !dbg !1065
  store %struct._object* %call2, %struct._object** %arrayidx6, align 8, !dbg !1069, !tbaa !1048
  %call7 = call %struct._object* @PyLong_FromLong(i64 308), !dbg !1070
  %9 = load i32, i32* %pos, align 4, !dbg !1071, !tbaa !1042
  %inc8 = add i32 %9, 1, !dbg !1071
  store i32 %inc8, i32* %pos, align 4, !dbg !1071, !tbaa !1042
  %idxprom9 = sext i32 %9 to i64, !dbg !1072
  %10 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1073, !tbaa !1048
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*, !dbg !1074
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1, !dbg !1075
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 %idxprom9, !dbg !1072
  store %struct._object* %call7, %struct._object** %arrayidx11, align 8, !dbg !1076, !tbaa !1048
  %call12 = call %struct._object* @PyFloat_FromDouble(double 0x10000000000000), !dbg !1077
  %12 = load i32, i32* %pos, align 4, !dbg !1078, !tbaa !1042
  %inc13 = add i32 %12, 1, !dbg !1078
  store i32 %inc13, i32* %pos, align 4, !dbg !1078, !tbaa !1042
  %idxprom14 = sext i32 %12 to i64, !dbg !1079
  %13 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1080, !tbaa !1048
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*, !dbg !1081
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1, !dbg !1082
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %idxprom14, !dbg !1079
  store %struct._object* %call12, %struct._object** %arrayidx16, align 8, !dbg !1083, !tbaa !1048
  %call17 = call %struct._object* @PyLong_FromLong(i64 -1021), !dbg !1084
  %15 = load i32, i32* %pos, align 4, !dbg !1085, !tbaa !1042
  %inc18 = add i32 %15, 1, !dbg !1085
  store i32 %inc18, i32* %pos, align 4, !dbg !1085, !tbaa !1042
  %idxprom19 = sext i32 %15 to i64, !dbg !1086
  %16 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1087, !tbaa !1048
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*, !dbg !1088
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1, !dbg !1089
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 %idxprom19, !dbg !1086
  store %struct._object* %call17, %struct._object** %arrayidx21, align 8, !dbg !1090, !tbaa !1048
  %call22 = call %struct._object* @PyLong_FromLong(i64 -307), !dbg !1091
  %18 = load i32, i32* %pos, align 4, !dbg !1092, !tbaa !1042
  %inc23 = add i32 %18, 1, !dbg !1092
  store i32 %inc23, i32* %pos, align 4, !dbg !1092, !tbaa !1042
  %idxprom24 = sext i32 %18 to i64, !dbg !1093
  %19 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1094, !tbaa !1048
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*, !dbg !1095
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1, !dbg !1096
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 %idxprom24, !dbg !1093
  store %struct._object* %call22, %struct._object** %arrayidx26, align 8, !dbg !1097, !tbaa !1048
  %call27 = call %struct._object* @PyLong_FromLong(i64 15), !dbg !1098
  %21 = load i32, i32* %pos, align 4, !dbg !1099, !tbaa !1042
  %inc28 = add i32 %21, 1, !dbg !1099
  store i32 %inc28, i32* %pos, align 4, !dbg !1099, !tbaa !1042
  %idxprom29 = sext i32 %21 to i64, !dbg !1100
  %22 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1101, !tbaa !1048
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*, !dbg !1102
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1, !dbg !1103
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %idxprom29, !dbg !1100
  store %struct._object* %call27, %struct._object** %arrayidx31, align 8, !dbg !1104, !tbaa !1048
  %call32 = call %struct._object* @PyLong_FromLong(i64 53), !dbg !1105
  %24 = load i32, i32* %pos, align 4, !dbg !1106, !tbaa !1042
  %inc33 = add i32 %24, 1, !dbg !1106
  store i32 %inc33, i32* %pos, align 4, !dbg !1106, !tbaa !1042
  %idxprom34 = sext i32 %24 to i64, !dbg !1107
  %25 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1108, !tbaa !1048
  %26 = bitcast %struct._object* %25 to %struct.PyTupleObject*, !dbg !1109
  %ob_item35 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %26, i32 0, i32 1, !dbg !1110
  %arrayidx36 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item35, i32 0, i64 %idxprom34, !dbg !1107
  store %struct._object* %call32, %struct._object** %arrayidx36, align 8, !dbg !1111, !tbaa !1048
  %call37 = call %struct._object* @PyFloat_FromDouble(double 0x3CB0000000000000), !dbg !1112
  %27 = load i32, i32* %pos, align 4, !dbg !1113, !tbaa !1042
  %inc38 = add i32 %27, 1, !dbg !1113
  store i32 %inc38, i32* %pos, align 4, !dbg !1113, !tbaa !1042
  %idxprom39 = sext i32 %27 to i64, !dbg !1114
  %28 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1115, !tbaa !1048
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*, !dbg !1116
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1, !dbg !1117
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 %idxprom39, !dbg !1114
  store %struct._object* %call37, %struct._object** %arrayidx41, align 8, !dbg !1118, !tbaa !1048
  %call42 = call %struct._object* @PyLong_FromLong(i64 2), !dbg !1119
  %30 = load i32, i32* %pos, align 4, !dbg !1120, !tbaa !1042
  %inc43 = add i32 %30, 1, !dbg !1120
  store i32 %inc43, i32* %pos, align 4, !dbg !1120, !tbaa !1042
  %idxprom44 = sext i32 %30 to i64, !dbg !1121
  %31 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1122, !tbaa !1048
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*, !dbg !1123
  %ob_item45 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1, !dbg !1124
  %arrayidx46 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item45, i32 0, i64 %idxprom44, !dbg !1121
  store %struct._object* %call42, %struct._object** %arrayidx46, align 8, !dbg !1125, !tbaa !1048
  %33 = call i32 @llvm.flt.rounds(), !dbg !1126
  %conv = sext i32 %33 to i64, !dbg !1127
  %call47 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1128
  %34 = load i32, i32* %pos, align 4, !dbg !1129, !tbaa !1042
  %inc48 = add i32 %34, 1, !dbg !1129
  store i32 %inc48, i32* %pos, align 4, !dbg !1129, !tbaa !1042
  %idxprom49 = sext i32 %34 to i64, !dbg !1130
  %35 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1131, !tbaa !1048
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*, !dbg !1132
  %ob_item50 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1, !dbg !1133
  %arrayidx51 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item50, i32 0, i64 %idxprom49, !dbg !1130
  store %struct._object* %call47, %struct._object** %arrayidx51, align 8, !dbg !1134, !tbaa !1048
  %call52 = call %struct._object* @PyErr_Occurred(), !dbg !1135
  %tobool = icmp ne %struct._object* %call52, null, !dbg !1135
  br i1 %tobool, label %if.then.53, label %if.end.65, !dbg !1136

if.then.53:                                       ; preds = %if.end
  br label %do.body, !dbg !1137

do.body:                                          ; preds = %if.then.53
  %37 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1138
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !1138
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !409, metadata !1038), !dbg !1140
  %38 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1141, !tbaa !1048
  store %struct._object* %38, %struct._object** %_py_tmp, align 8, !dbg !1140, !tbaa !1048
  %39 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1142, !tbaa !1048
  %cmp54 = icmp ne %struct._object* %39, null, !dbg !1143
  br i1 %cmp54, label %if.then.56, label %if.end.62, !dbg !1144

if.then.56:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %floatinfo, align 8, !dbg !1145, !tbaa !1048
  br label %do.body.57, !dbg !1147

do.body.57:                                       ; preds = %if.then.56
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1148
  call void @llvm.lifetime.start(i64 8, i8* %40) #1, !dbg !1148
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !413, metadata !1038), !dbg !1150
  %41 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1151, !tbaa !1048
  store %struct._object* %41, %struct._object** %_py_decref_tmp, align 8, !dbg !1150, !tbaa !1048
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1152, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !1154
  %43 = load i64, i64* %ob_refcnt, align 8, !dbg !1155, !tbaa !1156
  %dec = add i64 %43, -1, !dbg !1155
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1155, !tbaa !1156
  %cmp58 = icmp ne i64 %dec, 0, !dbg !1159
  br i1 %cmp58, label %if.then.60, label %if.else, !dbg !1160

if.then.60:                                       ; preds = %do.body.57
  br label %if.end.61, !dbg !1161

if.else:                                          ; preds = %do.body.57
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1163, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !1165
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1165, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !1167
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1167, !tbaa !1168
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1171, !tbaa !1048
  call void %46(%struct._object* %47), !dbg !1172
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.60
  %48 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !1173
  br label %do.cond, !dbg !1175

do.cond:                                          ; preds = %if.end.61
  br label %do.end, !dbg !1176

do.end:                                           ; preds = %do.cond
  br label %if.end.62, !dbg !1178

if.end.62:                                        ; preds = %do.end, %do.body
  %49 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1180
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !1180
  br label %do.cond.63, !dbg !1183

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !1184

do.end.64:                                        ; preds = %do.cond.63
  store %struct._object* null, %struct._object** %retval, !dbg !1186
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1186

if.end.65:                                        ; preds = %if.end
  %50 = load %struct._object*, %struct._object** %floatinfo, align 8, !dbg !1187, !tbaa !1048
  store %struct._object* %50, %struct._object** %retval, !dbg !1188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1188

cleanup:                                          ; preds = %if.end.65, %do.end.64, %if.then
  %51 = bitcast i32* %pos to i8*, !dbg !1189
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !1189
  %52 = bitcast %struct._object** %floatinfo to i8*, !dbg !1189
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1189
  %53 = load %struct._object*, %struct._object** %retval, !dbg !1189
  ret %struct._object* %53, !dbg !1189
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyStructSequence_New(%struct._typeobject*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyFloat_FromDouble(double %fval) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fval.addr = alloca double, align 8
  %op = alloca %struct.PyFloatObject*, align 8
  %cleanup.dest.slot = alloca i32
  store double %fval, double* %fval.addr, align 8, !tbaa !1190
  call void @llvm.dbg.declare(metadata double* %fval.addr, metadata !421, metadata !1038), !dbg !1192
  %0 = bitcast %struct.PyFloatObject** %op to i8*, !dbg !1193
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1193
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %op, metadata !422, metadata !1038), !dbg !1194
  %1 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1195, !tbaa !1048
  store %struct.PyFloatObject* %1, %struct.PyFloatObject** %op, align 8, !dbg !1194, !tbaa !1048
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1196, !tbaa !1048
  %cmp = icmp ne %struct.PyFloatObject* %2, null, !dbg !1198
  br i1 %cmp, label %if.then, label %if.else, !dbg !1199

if.then:                                          ; preds = %entry
  %3 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1200, !tbaa !1048
  %4 = bitcast %struct.PyFloatObject* %3 to %struct._object*, !dbg !1202
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1203
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1203, !tbaa !1166
  %6 = bitcast %struct._typeobject* %5 to %struct.PyFloatObject*, !dbg !1204
  store %struct.PyFloatObject* %6, %struct.PyFloatObject** @free_list, align 8, !dbg !1205, !tbaa !1048
  %7 = load i32, i32* @numfree, align 4, !dbg !1206, !tbaa !1042
  %dec = add i32 %7, -1, !dbg !1206
  store i32 %dec, i32* @numfree, align 4, !dbg !1206, !tbaa !1042
  br label %if.end.3, !dbg !1207

if.else:                                          ; preds = %entry
  %call = call i8* @PyObject_Malloc(i64 24), !dbg !1208
  %8 = bitcast i8* %call to %struct.PyFloatObject*, !dbg !1210
  store %struct.PyFloatObject* %8, %struct.PyFloatObject** %op, align 8, !dbg !1211, !tbaa !1048
  %9 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1212, !tbaa !1048
  %tobool = icmp ne %struct.PyFloatObject* %9, null, !dbg !1212
  br i1 %tobool, label %if.end, label %if.then.1, !dbg !1214

if.then.1:                                        ; preds = %if.else
  %call2 = call %struct._object* @PyErr_NoMemory(), !dbg !1215
  store %struct._object* %call2, %struct._object** %retval, !dbg !1216
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1216

if.end:                                           ; preds = %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %10 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1217, !tbaa !1048
  %11 = bitcast %struct.PyFloatObject* %10 to %struct._object*, !dbg !1218
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !1219
  store %struct._typeobject* @PyFloat_Type, %struct._typeobject** %ob_type4, align 8, !dbg !1220, !tbaa !1166
  %12 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1221, !tbaa !1048
  %13 = bitcast %struct.PyFloatObject* %12 to %struct._object*, !dbg !1222
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1223
  store i64 1, i64* %ob_refcnt, align 8, !dbg !1224, !tbaa !1156
  %14 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1225, !tbaa !1048
  %15 = load double, double* %fval.addr, align 8, !dbg !1226, !tbaa !1190
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1227, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i32 0, i32 1, !dbg !1228
  store double %15, double* %ob_fval, align 8, !dbg !1229, !tbaa !1230
  %17 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op, align 8, !dbg !1232, !tbaa !1048
  %18 = bitcast %struct.PyFloatObject* %17 to %struct._object*, !dbg !1233
  store %struct._object* %18, %struct._object** %retval, !dbg !1234
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1234

cleanup:                                          ; preds = %if.end.3, %if.then.1
  %19 = bitcast %struct.PyFloatObject** %op to i8*, !dbg !1235
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1235
  %20 = load %struct._object*, %struct._object** %retval, !dbg !1235
  ret %struct._object* %20, !dbg !1235
}

declare %struct._object* @PyLong_FromLong(i64) #3

; Function Attrs: nounwind
declare i32 @llvm.flt.rounds() #1

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i8* @PyObject_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !425, metadata !1038), !dbg !1236
  %0 = bitcast i8** %s to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1237
  call void @llvm.dbg.declare(metadata i8** %s, metadata !426, metadata !1038), !dbg !1238
  %1 = bitcast i8** %last to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1237
  call void @llvm.dbg.declare(metadata i8** %last, metadata !427, metadata !1038), !dbg !1239
  %2 = bitcast i8** %end to i8*, !dbg !1237
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1237
  call void @llvm.dbg.declare(metadata i8** %end, metadata !428, metadata !1038), !dbg !1240
  %3 = bitcast double* %x to i8*, !dbg !1241
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1241
  call void @llvm.dbg.declare(metadata double* %x, metadata !429, metadata !1038), !dbg !1242
  %4 = bitcast %struct._object** %s_buffer to i8*, !dbg !1243
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1243
  call void @llvm.dbg.declare(metadata %struct._object** %s_buffer, metadata !430, metadata !1038), !dbg !1244
  store %struct._object* null, %struct._object** %s_buffer, align 8, !dbg !1244, !tbaa !1048
  %5 = bitcast i64* %len to i8*, !dbg !1245
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1245
  call void @llvm.dbg.declare(metadata i64* %len, metadata !431, metadata !1038), !dbg !1246
  %6 = bitcast %struct._object** %result to i8*, !dbg !1247
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1247
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !432, metadata !1038), !dbg !1248
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1248, !tbaa !1048
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1249, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !1250
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1250, !tbaa !1166
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !1251
  %9 = load i64, i64* %tp_flags, align 8, !dbg !1251, !tbaa !1252
  %and = and i64 %9, 268435456, !dbg !1253
  %cmp = icmp ne i64 %and, 0, !dbg !1254
  br i1 %cmp, label %if.then, label %if.else.11, !dbg !1255

if.then:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1256, !tbaa !1048
  %call = call %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object* %10), !dbg !1257
  store %struct._object* %call, %struct._object** %s_buffer, align 8, !dbg !1258, !tbaa !1048
  %11 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !1259, !tbaa !1048
  %cmp1 = icmp eq %struct._object* %11, null, !dbg !1261
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1262

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !1263
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1263

if.end:                                           ; preds = %if.then
  %12 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !1264, !tbaa !1048
  %call3 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %12, i64* %len), !dbg !1265
  store i8* %call3, i8** %s, align 8, !dbg !1266, !tbaa !1048
  %13 = load i8*, i8** %s, align 8, !dbg !1267, !tbaa !1048
  %cmp4 = icmp eq i8* %13, null, !dbg !1268
  br i1 %cmp4, label %if.then.5, label %if.end.10, !dbg !1269

if.then.5:                                        ; preds = %if.end
  br label %do.body, !dbg !1270

do.body:                                          ; preds = %if.then.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1271
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !1271
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !433, metadata !1038), !dbg !1273
  %15 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !1274, !tbaa !1048
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1273, !tbaa !1048
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1275, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1277
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1278, !tbaa !1156
  %dec = add i64 %17, -1, !dbg !1278
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1278, !tbaa !1156
  %cmp6 = icmp ne i64 %dec, 0, !dbg !1279
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !1280

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1281

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1283, !tbaa !1048
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1285
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1285, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1286
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1286, !tbaa !1168
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1287, !tbaa !1048
  call void %20(%struct._object* %21), !dbg !1288
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1289
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1289
  br label %do.cond, !dbg !1291

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1292

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !1294
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1294

if.end.10:                                        ; preds = %if.end
  br label %if.end.17, !dbg !1295

if.else.11:                                       ; preds = %entry
  %23 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1296, !tbaa !1048
  %call12 = call i32 @PyObject_AsCharBuffer(%struct._object* %23, i8** %s, i64* %len), !dbg !1298
  %tobool = icmp ne i32 %call12, 0, !dbg !1298
  br i1 %tobool, label %if.then.13, label %if.end.16, !dbg !1299

if.then.13:                                       ; preds = %if.else.11
  %24 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1300, !tbaa !1048
  %25 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1302, !tbaa !1048
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1303
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !1303, !tbaa !1166
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 1, !dbg !1304
  %27 = load i8*, i8** %tp_name, align 8, !dbg !1304, !tbaa !1305
  %call15 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i32 0, i32 0), i8* %27), !dbg !1306
  store %struct._object* null, %struct._object** %retval, !dbg !1307
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1307

if.end.16:                                        ; preds = %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.10
  %28 = load i8*, i8** %s, align 8, !dbg !1308, !tbaa !1048
  %29 = load i64, i64* %len, align 8, !dbg !1309, !tbaa !1310
  %add.ptr = getelementptr i8, i8* %28, i64 %29, !dbg !1311
  store i8* %add.ptr, i8** %last, align 8, !dbg !1312, !tbaa !1048
  br label %while.cond, !dbg !1313

while.cond:                                       ; preds = %while.body, %if.end.17
  %30 = load i8*, i8** %s, align 8, !dbg !1314, !tbaa !1048
  %31 = load i8*, i8** %last, align 8, !dbg !1317, !tbaa !1048
  %cmp18 = icmp ult i8* %30, %31, !dbg !1318
  br i1 %cmp18, label %land.rhs, label %land.end, !dbg !1319

land.rhs:                                         ; preds = %while.cond
  %32 = load i8*, i8** %s, align 8, !dbg !1320, !tbaa !1048
  %33 = load i8, i8* %32, align 1, !dbg !1322, !tbaa !1323
  %conv = sext i8 %33 to i32, !dbg !1324
  %and19 = and i32 %conv, 255, !dbg !1325
  %conv20 = trunc i32 %and19 to i8, !dbg !1326
  %idxprom = zext i8 %conv20 to i64, !dbg !1327
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !1327
  %34 = load i32, i32* %arrayidx, align 4, !dbg !1327, !tbaa !1042
  %and21 = and i32 %34, 8, !dbg !1328
  %tobool22 = icmp ne i32 %and21, 0, !dbg !1319
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %35 = phi i1 [ false, %while.cond ], [ %tobool22, %land.rhs ]
  br i1 %35, label %while.body, label %while.end, !dbg !1329

while.body:                                       ; preds = %land.end
  %36 = load i8*, i8** %s, align 8, !dbg !1331, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %36, i32 1, !dbg !1331
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !1331, !tbaa !1048
  br label %while.cond, !dbg !1313

while.end:                                        ; preds = %land.end
  br label %while.cond.23, !dbg !1332

while.cond.23:                                    ; preds = %while.body.37, %while.end
  %37 = load i8*, i8** %s, align 8, !dbg !1333, !tbaa !1048
  %38 = load i8*, i8** %last, align 8, !dbg !1334, !tbaa !1048
  %add.ptr24 = getelementptr i8, i8* %38, i64 -1, !dbg !1335
  %cmp25 = icmp ult i8* %37, %add.ptr24, !dbg !1336
  br i1 %cmp25, label %land.rhs.27, label %land.end.36, !dbg !1337

land.rhs.27:                                      ; preds = %while.cond.23
  %39 = load i8*, i8** %last, align 8, !dbg !1338, !tbaa !1048
  %arrayidx28 = getelementptr i8, i8* %39, i64 -1, !dbg !1338
  %40 = load i8, i8* %arrayidx28, align 1, !dbg !1338, !tbaa !1323
  %conv29 = sext i8 %40 to i32, !dbg !1339
  %and30 = and i32 %conv29, 255, !dbg !1340
  %conv31 = trunc i32 %and30 to i8, !dbg !1341
  %idxprom32 = zext i8 %conv31 to i64, !dbg !1342
  %arrayidx33 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom32, !dbg !1342
  %41 = load i32, i32* %arrayidx33, align 4, !dbg !1342, !tbaa !1042
  %and34 = and i32 %41, 8, !dbg !1343
  %tobool35 = icmp ne i32 %and34, 0, !dbg !1337
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.27, %while.cond.23
  %42 = phi i1 [ false, %while.cond.23 ], [ %tobool35, %land.rhs.27 ]
  br i1 %42, label %while.body.37, label %while.end.39, !dbg !1344

while.body.37:                                    ; preds = %land.end.36
  %43 = load i8*, i8** %last, align 8, !dbg !1345, !tbaa !1048
  %incdec.ptr38 = getelementptr i8, i8* %43, i32 -1, !dbg !1345
  store i8* %incdec.ptr38, i8** %last, align 8, !dbg !1345, !tbaa !1048
  br label %while.cond.23, !dbg !1332

while.end.39:                                     ; preds = %land.end.36
  %44 = load i8*, i8** %s, align 8, !dbg !1346, !tbaa !1048
  %call40 = call double @PyOS_string_to_double(i8* %44, i8** %end, %struct._object* null), !dbg !1347
  store double %call40, double* %x, align 8, !dbg !1348, !tbaa !1190
  %45 = load i8*, i8** %end, align 8, !dbg !1349, !tbaa !1048
  %46 = load i8*, i8** %last, align 8, !dbg !1351, !tbaa !1048
  %cmp41 = icmp ne i8* %45, %46, !dbg !1352
  br i1 %cmp41, label %if.then.43, label %if.else.45, !dbg !1353

if.then.43:                                       ; preds = %while.end.39
  %47 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1354, !tbaa !1048
  %48 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1356, !tbaa !1048
  %call44 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %47, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), %struct._object* %48), !dbg !1357
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1358, !tbaa !1048
  br label %if.end.54, !dbg !1359

if.else.45:                                       ; preds = %while.end.39
  %49 = load double, double* %x, align 8, !dbg !1360, !tbaa !1190
  %cmp46 = fcmp oeq double %49, -1.000000e+00, !dbg !1362
  br i1 %cmp46, label %land.lhs.true, label %if.else.51, !dbg !1363

land.lhs.true:                                    ; preds = %if.else.45
  %call48 = call %struct._object* @PyErr_Occurred(), !dbg !1364
  %tobool49 = icmp ne %struct._object* %call48, null, !dbg !1364
  br i1 %tobool49, label %if.then.50, label %if.else.51, !dbg !1366

if.then.50:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1367, !tbaa !1048
  br label %if.end.53, !dbg !1368

if.else.51:                                       ; preds = %land.lhs.true, %if.else.45
  %50 = load double, double* %x, align 8, !dbg !1369, !tbaa !1190
  %call52 = call %struct._object* @PyFloat_FromDouble(double %50), !dbg !1370
  store %struct._object* %call52, %struct._object** %result, align 8, !dbg !1371, !tbaa !1048
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.43
  br label %do.body.55, !dbg !1372

do.body.55:                                       ; preds = %if.end.54
  %51 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1373
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !1373
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !439, metadata !1038), !dbg !1375
  %52 = load %struct._object*, %struct._object** %s_buffer, align 8, !dbg !1376, !tbaa !1048
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1375, !tbaa !1048
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1377, !tbaa !1048
  %cmp56 = icmp ne %struct._object* %53, null, !dbg !1378
  br i1 %cmp56, label %if.then.58, label %if.end.72, !dbg !1379

if.then.58:                                       ; preds = %do.body.55
  br label %do.body.59, !dbg !1380

do.body.59:                                       ; preds = %if.then.58
  %54 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !1382
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !1382
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp60, metadata !441, metadata !1038), !dbg !1384
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1385, !tbaa !1048
  store %struct._object* %55, %struct._object** %_py_decref_tmp60, align 8, !dbg !1384, !tbaa !1048
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1386, !tbaa !1048
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0, !dbg !1388
  %57 = load i64, i64* %ob_refcnt61, align 8, !dbg !1389, !tbaa !1156
  %dec62 = add i64 %57, -1, !dbg !1389
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !1389, !tbaa !1156
  %cmp63 = icmp ne i64 %dec62, 0, !dbg !1390
  br i1 %cmp63, label %if.then.65, label %if.else.66, !dbg !1391

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69, !dbg !1392

if.else.66:                                       ; preds = %do.body.59
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1394, !tbaa !1048
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1, !dbg !1396
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !1396, !tbaa !1166
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4, !dbg !1397
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !1397, !tbaa !1168
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !1398, !tbaa !1048
  call void %60(%struct._object* %61), !dbg !1399
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  %62 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !1400
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !1400
  br label %do.cond.70, !dbg !1402

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71, !dbg !1403

do.end.71:                                        ; preds = %do.cond.70
  br label %if.end.72, !dbg !1405

if.end.72:                                        ; preds = %do.end.71, %do.body.55
  %63 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1407
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !1407
  br label %do.cond.73, !dbg !1409

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !1410

do.end.74:                                        ; preds = %do.cond.73
  %64 = load %struct._object*, %struct._object** %result, align 8, !dbg !1412, !tbaa !1048
  store %struct._object* %64, %struct._object** %retval, !dbg !1413
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1413

cleanup:                                          ; preds = %do.end.74, %if.then.13, %do.end, %if.then.2
  %65 = bitcast %struct._object** %result to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !1414
  %66 = bitcast i64* %len to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !1414
  %67 = bitcast %struct._object** %s_buffer to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !1414
  %68 = bitcast double* %x to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !1414
  %69 = bitcast i8** %end to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !1414
  %70 = bitcast i8** %last to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !1414
  %71 = bitcast i8** %s to i8*, !dbg !1414
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !1414
  %72 = load %struct._object*, %struct._object** %retval, !dbg !1414
  ret %struct._object* %72, !dbg !1414
}

declare %struct._object* @_PyUnicode_TransformDecimalAndSpaceToASCII(%struct._object*) #3

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #3

declare i32 @PyObject_AsCharBuffer(%struct._object*, i8**, i64*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare double @PyOS_string_to_double(i8*, i8**, %struct._object*) #3

; Function Attrs: nounwind uwtable
define double @PyFloat_AsDouble(%struct._object* %op) #0 {
entry:
  %retval = alloca double, align 8
  %op.addr = alloca %struct._object*, align 8
  %nb = alloca %struct.PyNumberMethods*, align 8
  %fo = alloca %struct.PyFloatObject*, align 8
  %val = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %op, %struct._object** %op.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %op.addr, metadata !448, metadata !1038), !dbg !1415
  %0 = bitcast %struct.PyNumberMethods** %nb to i8*, !dbg !1416
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1416
  call void @llvm.dbg.declare(metadata %struct.PyNumberMethods** %nb, metadata !449, metadata !1038), !dbg !1417
  %1 = bitcast %struct.PyFloatObject** %fo to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %fo, metadata !450, metadata !1038), !dbg !1419
  %2 = bitcast double* %val to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1420
  call void @llvm.dbg.declare(metadata double* %val, metadata !451, metadata !1038), !dbg !1421
  %3 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1422, !tbaa !1048
  %tobool = icmp ne %struct._object* %3, null, !dbg !1422
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1424

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1425, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !1427
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1427, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %5, @PyFloat_Type, !dbg !1428
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1429

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1430, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1432
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1432, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %7, %struct._typeobject* @PyFloat_Type), !dbg !1433
  %tobool2 = icmp ne i32 %call, 0, !dbg !1433
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1434

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %8 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1435, !tbaa !1048
  %9 = bitcast %struct._object* %8 to %struct.PyFloatObject*, !dbg !1436
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %9, i32 0, i32 1, !dbg !1437
  %10 = load double, double* %ob_fval, align 8, !dbg !1437, !tbaa !1230
  store double %10, double* %retval, !dbg !1438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1438

if.end:                                           ; preds = %lor.lhs.false, %entry
  %11 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1439, !tbaa !1048
  %cmp3 = icmp eq %struct._object* %11, null, !dbg !1441
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !1442

if.then.4:                                        ; preds = %if.end
  %call5 = call i32 @PyErr_BadArgument(), !dbg !1443
  store double -1.000000e+00, double* %retval, !dbg !1445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1445

if.end.6:                                         ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1446, !tbaa !1048
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1448
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8, !dbg !1448, !tbaa !1166
  %tp_as_number = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 10, !dbg !1449
  %14 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %tp_as_number, align 8, !dbg !1449, !tbaa !1450
  store %struct.PyNumberMethods* %14, %struct.PyNumberMethods** %nb, align 8, !dbg !1451, !tbaa !1048
  %cmp8 = icmp eq %struct.PyNumberMethods* %14, null, !dbg !1452
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9, !dbg !1453

lor.lhs.false.9:                                  ; preds = %if.end.6
  %15 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nb, align 8, !dbg !1454, !tbaa !1048
  %nb_float = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %15, i32 0, i32 18, !dbg !1456
  %16 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float, align 8, !dbg !1456, !tbaa !1457
  %cmp10 = icmp eq %struct._object* (%struct._object*)* %16, null, !dbg !1459
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1460

if.then.11:                                       ; preds = %lor.lhs.false.9, %if.end.6
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1461, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0)), !dbg !1463
  store double -1.000000e+00, double* %retval, !dbg !1464
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1464

if.end.12:                                        ; preds = %lor.lhs.false.9
  %18 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %nb, align 8, !dbg !1465, !tbaa !1048
  %nb_float13 = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %18, i32 0, i32 18, !dbg !1466
  %19 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %nb_float13, align 8, !dbg !1466, !tbaa !1457
  %20 = load %struct._object*, %struct._object** %op.addr, align 8, !dbg !1467, !tbaa !1048
  %call14 = call %struct._object* %19(%struct._object* %20), !dbg !1468
  %21 = bitcast %struct._object* %call14 to %struct.PyFloatObject*, !dbg !1469
  store %struct.PyFloatObject* %21, %struct.PyFloatObject** %fo, align 8, !dbg !1470, !tbaa !1048
  %22 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8, !dbg !1471, !tbaa !1048
  %cmp15 = icmp eq %struct.PyFloatObject* %22, null, !dbg !1473
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !1474

if.then.16:                                       ; preds = %if.end.12
  store double -1.000000e+00, double* %retval, !dbg !1475
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1475

if.end.17:                                        ; preds = %if.end.12
  %23 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8, !dbg !1476, !tbaa !1048
  %24 = bitcast %struct.PyFloatObject* %23 to %struct._object*, !dbg !1478
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1479
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1479, !tbaa !1166
  %cmp19 = icmp eq %struct._typeobject* %25, @PyFloat_Type, !dbg !1480
  br i1 %cmp19, label %if.end.25, label %lor.lhs.false.20, !dbg !1481

lor.lhs.false.20:                                 ; preds = %if.end.17
  %26 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8, !dbg !1482, !tbaa !1048
  %27 = bitcast %struct.PyFloatObject* %26 to %struct._object*, !dbg !1484
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !1485
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8, !dbg !1485, !tbaa !1166
  %call22 = call i32 @PyType_IsSubtype(%struct._typeobject* %28, %struct._typeobject* @PyFloat_Type), !dbg !1486
  %tobool23 = icmp ne i32 %call22, 0, !dbg !1486
  br i1 %tobool23, label %if.end.25, label %if.then.24, !dbg !1487

if.then.24:                                       ; preds = %lor.lhs.false.20
  %29 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1488, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)), !dbg !1490
  store double -1.000000e+00, double* %retval, !dbg !1491
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1491

if.end.25:                                        ; preds = %lor.lhs.false.20, %if.end.17
  %30 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8, !dbg !1492, !tbaa !1048
  %ob_fval26 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %30, i32 0, i32 1, !dbg !1493
  %31 = load double, double* %ob_fval26, align 8, !dbg !1493, !tbaa !1230
  store double %31, double* %val, align 8, !dbg !1494, !tbaa !1190
  br label %do.body, !dbg !1495

do.body:                                          ; preds = %if.end.25
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1496
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !1496
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !452, metadata !1038), !dbg !1498
  %33 = load %struct.PyFloatObject*, %struct.PyFloatObject** %fo, align 8, !dbg !1499, !tbaa !1048
  %34 = bitcast %struct.PyFloatObject* %33 to %struct._object*, !dbg !1500
  store %struct._object* %34, %struct._object** %_py_decref_tmp, align 8, !dbg !1498, !tbaa !1048
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1501, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0, !dbg !1503
  %36 = load i64, i64* %ob_refcnt, align 8, !dbg !1504, !tbaa !1156
  %dec = add i64 %36, -1, !dbg !1504
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1504, !tbaa !1156
  %cmp27 = icmp ne i64 %dec, 0, !dbg !1505
  br i1 %cmp27, label %if.then.28, label %if.else, !dbg !1506

if.then.28:                                       ; preds = %do.body
  br label %if.end.30, !dbg !1507

if.else:                                          ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1509, !tbaa !1048
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1, !dbg !1511
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !1511, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4, !dbg !1512
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1512, !tbaa !1168
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1513, !tbaa !1048
  call void %39(%struct._object* %40), !dbg !1514
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1515
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !1515
  br label %do.cond, !dbg !1517

do.cond:                                          ; preds = %if.end.30
  br label %do.end, !dbg !1518

do.end:                                           ; preds = %do.cond
  %42 = load double, double* %val, align 8, !dbg !1520, !tbaa !1190
  store double %42, double* %retval, !dbg !1521
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1521

cleanup:                                          ; preds = %do.end, %if.then.24, %if.then.16, %if.then.11, %if.then.4, %if.then
  %43 = bitcast double* %val to i8*, !dbg !1522
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1522
  %44 = bitcast %struct.PyFloatObject** %fo to i8*, !dbg !1522
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1522
  %45 = bitcast %struct.PyNumberMethods** %nb to i8*, !dbg !1522
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1522
  %46 = load double, double* %retval, !dbg !1522
  ret double %46, !dbg !1522
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare i32 @PyErr_BadArgument() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @float_dealloc(%struct.PyFloatObject* %op) #0 {
entry:
  %op.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %op, %struct.PyFloatObject** %op.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %op.addr, metadata !561, metadata !1038), !dbg !1523
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1524, !tbaa !1048
  %1 = bitcast %struct.PyFloatObject* %0 to %struct._object*, !dbg !1526
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !1527
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1527, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %2, @PyFloat_Type, !dbg !1528
  br i1 %cmp, label %if.then, label %if.else, !dbg !1529

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @numfree, align 4, !dbg !1530, !tbaa !1042
  %cmp1 = icmp sge i32 %3, 100, !dbg !1533
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !1534

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1535, !tbaa !1048
  %5 = bitcast %struct.PyFloatObject* %4 to i8*, !dbg !1535
  call void @PyObject_Free(i8* %5), !dbg !1537
  br label %if.end.5, !dbg !1538

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* @numfree, align 4, !dbg !1539, !tbaa !1042
  %inc = add i32 %6, 1, !dbg !1539
  store i32 %inc, i32* @numfree, align 4, !dbg !1539, !tbaa !1042
  %7 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !1540, !tbaa !1048
  %8 = bitcast %struct.PyFloatObject* %7 to %struct._typeobject*, !dbg !1541
  %9 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1542, !tbaa !1048
  %10 = bitcast %struct.PyFloatObject* %9 to %struct._object*, !dbg !1543
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1544
  store %struct._typeobject* %8, %struct._typeobject** %ob_type3, align 8, !dbg !1545, !tbaa !1166
  %11 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1546, !tbaa !1048
  store %struct.PyFloatObject* %11, %struct.PyFloatObject** @free_list, align 8, !dbg !1547, !tbaa !1048
  br label %if.end.5, !dbg !1548

if.else:                                          ; preds = %entry
  %12 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1549, !tbaa !1048
  %13 = bitcast %struct.PyFloatObject* %12 to %struct._object*, !dbg !1550
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1551
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8, !dbg !1551, !tbaa !1166
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38, !dbg !1552
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1552, !tbaa !1553
  %16 = load %struct.PyFloatObject*, %struct.PyFloatObject** %op.addr, align 8, !dbg !1554, !tbaa !1048
  %17 = bitcast %struct.PyFloatObject* %16 to %struct._object*, !dbg !1555
  %18 = bitcast %struct._object* %17 to i8*, !dbg !1555
  call void %15(i8* %18), !dbg !1556
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.else, %if.end
  ret void, !dbg !1557
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_repr(%struct.PyFloatObject* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct.PyFloatObject*, align 8
  %result = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !566, metadata !1038), !dbg !1558
  %0 = bitcast %struct._object** %result to i8*, !dbg !1559
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1559
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !567, metadata !1038), !dbg !1560
  %1 = bitcast i8** %buf to i8*, !dbg !1561
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1561
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !568, metadata !1038), !dbg !1562
  %2 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !1563, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %2, i32 0, i32 1, !dbg !1564
  %3 = load double, double* %ob_fval, align 8, !dbg !1564, !tbaa !1230
  %call = call i8* @PyOS_double_to_string(double %3, i8 signext 114, i32 0, i32 2, i32* null), !dbg !1565
  store i8* %call, i8** %buf, align 8, !dbg !1566, !tbaa !1048
  %4 = load i8*, i8** %buf, align 8, !dbg !1567, !tbaa !1048
  %tobool = icmp ne i8* %4, null, !dbg !1567
  br i1 %tobool, label %if.end, label %if.then, !dbg !1569

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory(), !dbg !1570
  store %struct._object* %call1, %struct._object** %retval, !dbg !1571
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1571

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %buf, align 8, !dbg !1572, !tbaa !1048
  %6 = load i8*, i8** %buf, align 8, !dbg !1573, !tbaa !1048
  %call2 = call i64 @strlen(i8* %6) #8, !dbg !1574
  %call3 = call %struct._object* @_PyUnicode_FromASCII(i8* %5, i64 %call2), !dbg !1575
  store %struct._object* %call3, %struct._object** %result, align 8, !dbg !1576, !tbaa !1048
  %7 = load i8*, i8** %buf, align 8, !dbg !1577, !tbaa !1048
  call void @PyMem_Free(i8* %7), !dbg !1578
  %8 = load %struct._object*, %struct._object** %result, align 8, !dbg !1579, !tbaa !1048
  store %struct._object* %8, %struct._object** %retval, !dbg !1580
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1580

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %buf to i8*, !dbg !1581
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !1581
  %10 = bitcast %struct._object** %result to i8*, !dbg !1581
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !1581
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1581
  ret %struct._object* %11, !dbg !1581
}

; Function Attrs: nounwind uwtable
define internal i64 @float_hash(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !668, metadata !1038), !dbg !1582
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !1583, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1, !dbg !1584
  %1 = load double, double* %ob_fval, align 8, !dbg !1584, !tbaa !1230
  %call = call i64 @_Py_HashDouble(double %1), !dbg !1585
  ret i64 %call, !dbg !1586
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

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
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp156 = alloca %struct._object*, align 8
  %_py_xdecref_tmp172 = alloca %struct._object*, align 8
  %_py_decref_tmp177 = alloca %struct._object*, align 8
  %_py_xdecref_tmp193 = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !671, metadata !1038), !dbg !1587
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !672, metadata !1038), !dbg !1588
  store i32 %op, i32* %op.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %op.addr, metadata !673, metadata !1038), !dbg !1589
  %0 = bitcast double* %i to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1590
  call void @llvm.dbg.declare(metadata double* %i, metadata !674, metadata !1038), !dbg !1591
  %1 = bitcast double* %j to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1590
  call void @llvm.dbg.declare(metadata double* %j, metadata !675, metadata !1038), !dbg !1592
  %2 = bitcast i32* %r to i8*, !dbg !1593
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1593
  call void @llvm.dbg.declare(metadata i32* %r, metadata !676, metadata !1038), !dbg !1594
  store i32 0, i32* %r, align 4, !dbg !1594, !tbaa !1042
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1595, !tbaa !1048
  %4 = bitcast %struct._object* %3 to %struct.PyFloatObject*, !dbg !1596
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %4, i32 0, i32 1, !dbg !1597
  %5 = load double, double* %ob_fval, align 8, !dbg !1597, !tbaa !1230
  store double %5, double* %i, align 8, !dbg !1598, !tbaa !1190
  %6 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1599, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !1600
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1600, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !1601
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1602

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1603, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !1605
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1605, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* @PyFloat_Type), !dbg !1606
  %tobool = icmp ne i32 %call, 0, !dbg !1606
  br i1 %tobool, label %if.then, label %if.else, !dbg !1607

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1608, !tbaa !1048
  %11 = bitcast %struct._object* %10 to %struct.PyFloatObject*, !dbg !1609
  %ob_fval2 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %11, i32 0, i32 1, !dbg !1610
  %12 = load double, double* %ob_fval2, align 8, !dbg !1610, !tbaa !1230
  store double %12, double* %j, align 8, !dbg !1611, !tbaa !1190
  br label %if.end.225, !dbg !1612

if.else:                                          ; preds = %lor.lhs.false
  br i1 false, label %cond.true, label %cond.false, !dbg !1613

cond.true:                                        ; preds = %if.else
  %13 = load double, double* %i, align 8, !dbg !1614, !tbaa !1190
  %conv = fptrunc double %13 to float, !dbg !1614
  %call3 = call i32 @__finitef(float %conv) #2, !dbg !1616
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1616
  br i1 %tobool4, label %if.else.18, label %if.then.12, !dbg !1617

cond.false:                                       ; preds = %if.else
  br i1 true, label %cond.true.5, label %cond.false.8, !dbg !1618

cond.true.5:                                      ; preds = %cond.false
  %14 = load double, double* %i, align 8, !dbg !1620, !tbaa !1190
  %call6 = call i32 @__finite(double %14) #2, !dbg !1622
  %tobool7 = icmp ne i32 %call6, 0, !dbg !1622
  br i1 %tobool7, label %if.else.18, label %if.then.12, !dbg !1623

cond.false.8:                                     ; preds = %cond.false
  %15 = load double, double* %i, align 8, !dbg !1624, !tbaa !1190
  %conv9 = fpext double %15 to x86_fp80, !dbg !1624
  %call10 = call i32 @__finitel(x86_fp80 %conv9) #2, !dbg !1626
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1626
  br i1 %tobool11, label %if.else.18, label %if.then.12, !dbg !1613

if.then.12:                                       ; preds = %cond.false.8, %cond.true.5, %cond.true
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1627, !tbaa !1048
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !1630
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8, !dbg !1630, !tbaa !1166
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 19, !dbg !1631
  %18 = load i64, i64* %tp_flags, align 8, !dbg !1631, !tbaa !1252
  %and = and i64 %18, 16777216, !dbg !1632
  %cmp14 = icmp ne i64 %and, 0, !dbg !1633
  br i1 %cmp14, label %if.then.16, label %if.else.17, !dbg !1634

if.then.16:                                       ; preds = %if.then.12
  store double 0.000000e+00, double* %j, align 8, !dbg !1635, !tbaa !1190
  br label %if.end, !dbg !1636

if.else.17:                                       ; preds = %if.then.12
  br label %Unimplemented, !dbg !1637

if.end:                                           ; preds = %if.then.16
  br label %if.end.224, !dbg !1638

if.else.18:                                       ; preds = %cond.false.8, %cond.true.5, %cond.true
  %19 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1639, !tbaa !1048
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !1640
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1640, !tbaa !1166
  %tp_flags20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 19, !dbg !1641
  %21 = load i64, i64* %tp_flags20, align 8, !dbg !1641, !tbaa !1252
  %and21 = and i64 %21, 16777216, !dbg !1642
  %cmp22 = icmp ne i64 %and21, 0, !dbg !1643
  br i1 %cmp22, label %if.then.24, label %if.else.223, !dbg !1644

if.then.24:                                       ; preds = %if.else.18
  %22 = bitcast i32* %vsign to i8*, !dbg !1645
  call void @llvm.lifetime.start(i64 4, i8* %22) #1, !dbg !1645
  call void @llvm.dbg.declare(metadata i32* %vsign, metadata !677, metadata !1038), !dbg !1646
  %23 = load double, double* %i, align 8, !dbg !1647, !tbaa !1190
  %cmp25 = fcmp oeq double %23, 0.000000e+00, !dbg !1648
  br i1 %cmp25, label %cond.true.27, label %cond.false.28, !dbg !1647

cond.true.27:                                     ; preds = %if.then.24
  br label %cond.end, !dbg !1649

cond.false.28:                                    ; preds = %if.then.24
  %24 = load double, double* %i, align 8, !dbg !1651, !tbaa !1190
  %cmp29 = fcmp olt double %24, 0.000000e+00, !dbg !1653
  %cond = select i1 %cmp29, i32 -1, i32 1, !dbg !1654
  br label %cond.end, !dbg !1647

cond.end:                                         ; preds = %cond.false.28, %cond.true.27
  %cond31 = phi i32 [ 0, %cond.true.27 ], [ %cond, %cond.false.28 ], !dbg !1647
  store i32 %cond31, i32* %vsign, align 4, !dbg !1655, !tbaa !1042
  %25 = bitcast i32* %wsign to i8*, !dbg !1658
  call void @llvm.lifetime.start(i64 4, i8* %25) #1, !dbg !1658
  call void @llvm.dbg.declare(metadata i32* %wsign, metadata !682, metadata !1038), !dbg !1659
  %26 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1660, !tbaa !1048
  %call32 = call i32 @_PyLong_Sign(%struct._object* %26), !dbg !1661
  store i32 %call32, i32* %wsign, align 4, !dbg !1659, !tbaa !1042
  %27 = bitcast i64* %nbits to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !1662
  call void @llvm.dbg.declare(metadata i64* %nbits, metadata !683, metadata !1038), !dbg !1663
  %28 = bitcast i32* %exponent to i8*, !dbg !1664
  call void @llvm.lifetime.start(i64 4, i8* %28) #1, !dbg !1664
  call void @llvm.dbg.declare(metadata i32* %exponent, metadata !684, metadata !1038), !dbg !1665
  %29 = load i32, i32* %vsign, align 4, !dbg !1666, !tbaa !1042
  %30 = load i32, i32* %wsign, align 4, !dbg !1668, !tbaa !1042
  %cmp33 = icmp ne i32 %29, %30, !dbg !1669
  br i1 %cmp33, label %if.then.35, label %if.end.38, !dbg !1670

if.then.35:                                       ; preds = %cond.end
  %31 = load i32, i32* %vsign, align 4, !dbg !1671, !tbaa !1042
  %conv36 = sitofp i32 %31 to double, !dbg !1673
  store double %conv36, double* %i, align 8, !dbg !1674, !tbaa !1190
  %32 = load i32, i32* %wsign, align 4, !dbg !1675, !tbaa !1042
  %conv37 = sitofp i32 %32 to double, !dbg !1676
  store double %conv37, double* %j, align 8, !dbg !1677, !tbaa !1190
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1678

if.end.38:                                        ; preds = %cond.end
  %33 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1679, !tbaa !1048
  %call39 = call i64 @_PyLong_NumBits(%struct._object* %33), !dbg !1680
  store i64 %call39, i64* %nbits, align 8, !dbg !1681, !tbaa !1310
  %34 = load i64, i64* %nbits, align 8, !dbg !1682, !tbaa !1310
  %cmp40 = icmp eq i64 %34, -1, !dbg !1684
  br i1 %cmp40, label %land.lhs.true, label %if.end.47, !dbg !1685

land.lhs.true:                                    ; preds = %if.end.38
  %call42 = call %struct._object* @PyErr_Occurred(), !dbg !1686
  %tobool43 = icmp ne %struct._object* %call42, null, !dbg !1686
  br i1 %tobool43, label %if.then.44, label %if.end.47, !dbg !1688

if.then.44:                                       ; preds = %land.lhs.true
  call void @PyErr_Clear(), !dbg !1689
  %35 = load i32, i32* %vsign, align 4, !dbg !1691, !tbaa !1042
  %conv45 = sitofp i32 %35 to double, !dbg !1692
  store double %conv45, double* %i, align 8, !dbg !1693, !tbaa !1190
  %36 = load i32, i32* %wsign, align 4, !dbg !1694, !tbaa !1042
  %conv46 = sitofp i32 %36 to double, !dbg !1694
  %mul = fmul double %conv46, 2.000000e+00, !dbg !1695
  store double %mul, double* %j, align 8, !dbg !1696, !tbaa !1190
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1697

if.end.47:                                        ; preds = %land.lhs.true, %if.end.38
  %37 = load i64, i64* %nbits, align 8, !dbg !1698, !tbaa !1310
  %cmp48 = icmp ule i64 %37, 48, !dbg !1700
  br i1 %cmp48, label %if.then.50, label %if.end.52, !dbg !1701

if.then.50:                                       ; preds = %if.end.47
  %38 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1702, !tbaa !1048
  %call51 = call double @PyLong_AsDouble(%struct._object* %38), !dbg !1704
  store double %call51, double* %j, align 8, !dbg !1705, !tbaa !1190
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1706

if.end.52:                                        ; preds = %if.end.47
  %39 = load i32, i32* %vsign, align 4, !dbg !1707, !tbaa !1042
  %cmp53 = icmp slt i32 %39, 0, !dbg !1709
  br i1 %cmp53, label %if.then.55, label %if.end.56, !dbg !1710

if.then.55:                                       ; preds = %if.end.52
  %40 = load double, double* %i, align 8, !dbg !1711, !tbaa !1190
  %sub = fsub double -0.000000e+00, %40, !dbg !1713
  store double %sub, double* %i, align 8, !dbg !1714, !tbaa !1190
  %41 = load i32, i32* %op.addr, align 4, !dbg !1715, !tbaa !1042
  %idxprom = sext i32 %41 to i64, !dbg !1716
  %arrayidx = getelementptr [0 x i32], [0 x i32]* @_Py_SwappedOp, i32 0, i64 %idxprom, !dbg !1716
  %42 = load i32, i32* %arrayidx, align 4, !dbg !1716, !tbaa !1042
  store i32 %42, i32* %op.addr, align 4, !dbg !1717, !tbaa !1042
  br label %if.end.56, !dbg !1718

if.end.56:                                        ; preds = %if.then.55, %if.end.52
  %43 = load double, double* %i, align 8, !dbg !1719, !tbaa !1190
  %call57 = call double @frexp(double %43, i32* %exponent) #1, !dbg !1720
  %44 = load i32, i32* %exponent, align 4, !dbg !1721, !tbaa !1042
  %cmp58 = icmp slt i32 %44, 0, !dbg !1723
  br i1 %cmp58, label %if.then.64, label %lor.lhs.false.60, !dbg !1724

lor.lhs.false.60:                                 ; preds = %if.end.56
  %45 = load i32, i32* %exponent, align 4, !dbg !1725, !tbaa !1042
  %conv61 = sext i32 %45 to i64, !dbg !1727
  %46 = load i64, i64* %nbits, align 8, !dbg !1728, !tbaa !1310
  %cmp62 = icmp ult i64 %conv61, %46, !dbg !1729
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !1730

if.then.64:                                       ; preds = %lor.lhs.false.60, %if.end.56
  store double 1.000000e+00, double* %i, align 8, !dbg !1731, !tbaa !1190
  store double 2.000000e+00, double* %j, align 8, !dbg !1733, !tbaa !1190
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1734

if.end.65:                                        ; preds = %lor.lhs.false.60
  %47 = load i32, i32* %exponent, align 4, !dbg !1735, !tbaa !1042
  %conv66 = sext i32 %47 to i64, !dbg !1737
  %48 = load i64, i64* %nbits, align 8, !dbg !1738, !tbaa !1310
  %cmp67 = icmp ugt i64 %conv66, %48, !dbg !1739
  br i1 %cmp67, label %if.then.69, label %if.end.70, !dbg !1740

if.then.69:                                       ; preds = %if.end.65
  store double 2.000000e+00, double* %i, align 8, !dbg !1741, !tbaa !1190
  store double 1.000000e+00, double* %j, align 8, !dbg !1743, !tbaa !1190
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.219, !dbg !1744

if.end.70:                                        ; preds = %if.end.65
  %49 = bitcast double* %fracpart to i8*, !dbg !1745
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !1745
  call void @llvm.dbg.declare(metadata double* %fracpart, metadata !685, metadata !1038), !dbg !1746
  %50 = bitcast double* %intpart to i8*, !dbg !1747
  call void @llvm.lifetime.start(i64 8, i8* %50) #1, !dbg !1747
  call void @llvm.dbg.declare(metadata double* %intpart, metadata !687, metadata !1038), !dbg !1748
  %51 = bitcast %struct._object** %result to i8*, !dbg !1749
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !1749
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !688, metadata !1038), !dbg !1750
  store %struct._object* null, %struct._object** %result, align 8, !dbg !1750, !tbaa !1048
  %52 = bitcast %struct._object** %one to i8*, !dbg !1751
  call void @llvm.lifetime.start(i64 8, i8* %52) #1, !dbg !1751
  call void @llvm.dbg.declare(metadata %struct._object** %one, metadata !689, metadata !1038), !dbg !1752
  store %struct._object* null, %struct._object** %one, align 8, !dbg !1752, !tbaa !1048
  %53 = bitcast %struct._object** %vv to i8*, !dbg !1753
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !1753
  call void @llvm.dbg.declare(metadata %struct._object** %vv, metadata !690, metadata !1038), !dbg !1754
  store %struct._object* null, %struct._object** %vv, align 8, !dbg !1754, !tbaa !1048
  %54 = bitcast %struct._object** %ww to i8*, !dbg !1755
  call void @llvm.lifetime.start(i64 8, i8* %54) #1, !dbg !1755
  call void @llvm.dbg.declare(metadata %struct._object** %ww, metadata !691, metadata !1038), !dbg !1756
  %55 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1757, !tbaa !1048
  store %struct._object* %55, %struct._object** %ww, align 8, !dbg !1756, !tbaa !1048
  %56 = load i32, i32* %wsign, align 4, !dbg !1758, !tbaa !1042
  %cmp71 = icmp slt i32 %56, 0, !dbg !1760
  br i1 %cmp71, label %if.then.73, label %if.else.79, !dbg !1761

if.then.73:                                       ; preds = %if.end.70
  %57 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !1762, !tbaa !1048
  %call74 = call %struct._object* @PyNumber_Negative(%struct._object* %57), !dbg !1764
  store %struct._object* %call74, %struct._object** %ww, align 8, !dbg !1765, !tbaa !1048
  %58 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1766, !tbaa !1048
  %cmp75 = icmp eq %struct._object* %58, null, !dbg !1768
  br i1 %cmp75, label %if.then.77, label %if.end.78, !dbg !1769

if.then.77:                                       ; preds = %if.then.73
  br label %Error, !dbg !1770

if.end.78:                                        ; preds = %if.then.73
  br label %if.end.80, !dbg !1771

if.else.79:                                       ; preds = %if.end.70
  %59 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1772, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0, !dbg !1773
  %60 = load i64, i64* %ob_refcnt, align 8, !dbg !1774, !tbaa !1156
  %inc = add i64 %60, 1, !dbg !1774
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1774, !tbaa !1156
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.end.78
  %61 = load double, double* %i, align 8, !dbg !1775, !tbaa !1190
  %call81 = call double @modf(double %61, double* %intpart) #1, !dbg !1776
  store double %call81, double* %fracpart, align 8, !dbg !1777, !tbaa !1190
  %62 = load double, double* %intpart, align 8, !dbg !1778, !tbaa !1190
  %call82 = call %struct._object* @PyLong_FromDouble(double %62), !dbg !1779
  store %struct._object* %call82, %struct._object** %vv, align 8, !dbg !1780, !tbaa !1048
  %63 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1781, !tbaa !1048
  %cmp83 = icmp eq %struct._object* %63, null, !dbg !1783
  br i1 %cmp83, label %if.then.85, label %if.end.86, !dbg !1784

if.then.85:                                       ; preds = %if.end.80
  br label %Error, !dbg !1785

if.end.86:                                        ; preds = %if.end.80
  %64 = load double, double* %fracpart, align 8, !dbg !1786, !tbaa !1190
  %cmp87 = fcmp une double %64, 0.000000e+00, !dbg !1787
  br i1 %cmp87, label %if.then.89, label %if.end.143, !dbg !1788

if.then.89:                                       ; preds = %if.end.86
  %65 = bitcast %struct._object** %temp to i8*, !dbg !1789
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !1789
  call void @llvm.dbg.declare(metadata %struct._object** %temp, metadata !692, metadata !1038), !dbg !1790
  %call90 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !1791
  store %struct._object* %call90, %struct._object** %one, align 8, !dbg !1792, !tbaa !1048
  %66 = load %struct._object*, %struct._object** %one, align 8, !dbg !1793, !tbaa !1048
  %cmp91 = icmp eq %struct._object* %66, null, !dbg !1795
  br i1 %cmp91, label %if.then.93, label %if.end.94, !dbg !1796

if.then.93:                                       ; preds = %if.then.89
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1797

if.end.94:                                        ; preds = %if.then.89
  %67 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1798, !tbaa !1048
  %68 = load %struct._object*, %struct._object** %one, align 8, !dbg !1799, !tbaa !1048
  %call95 = call %struct._object* @PyNumber_Lshift(%struct._object* %67, %struct._object* %68), !dbg !1800
  store %struct._object* %call95, %struct._object** %temp, align 8, !dbg !1801, !tbaa !1048
  %69 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1802, !tbaa !1048
  %cmp96 = icmp eq %struct._object* %69, null, !dbg !1804
  br i1 %cmp96, label %if.then.98, label %if.end.99, !dbg !1805

if.then.98:                                       ; preds = %if.end.94
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1806

if.end.99:                                        ; preds = %if.end.94
  br label %do.body, !dbg !1807

do.body:                                          ; preds = %if.end.99
  %70 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1808
  call void @llvm.lifetime.start(i64 8, i8* %70) #1, !dbg !1808
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !695, metadata !1038), !dbg !1810
  %71 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1811, !tbaa !1048
  store %struct._object* %71, %struct._object** %_py_decref_tmp, align 8, !dbg !1810, !tbaa !1048
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1812, !tbaa !1048
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !1814
  %73 = load i64, i64* %ob_refcnt100, align 8, !dbg !1815, !tbaa !1156
  %dec = add i64 %73, -1, !dbg !1815
  store i64 %dec, i64* %ob_refcnt100, align 8, !dbg !1815, !tbaa !1156
  %cmp101 = icmp ne i64 %dec, 0, !dbg !1816
  br i1 %cmp101, label %if.then.103, label %if.else.104, !dbg !1817

if.then.103:                                      ; preds = %do.body
  br label %if.end.106, !dbg !1818

if.else.104:                                      ; preds = %do.body
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1820, !tbaa !1048
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !1822
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8, !dbg !1822, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !1823
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1823, !tbaa !1168
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1824, !tbaa !1048
  call void %76(%struct._object* %77), !dbg !1825
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.103
  %78 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1826
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !1826
  br label %do.cond, !dbg !1828

do.cond:                                          ; preds = %if.end.106
  br label %do.end, !dbg !1829

do.end:                                           ; preds = %do.cond
  %79 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1831, !tbaa !1048
  store %struct._object* %79, %struct._object** %ww, align 8, !dbg !1832, !tbaa !1048
  %80 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1833, !tbaa !1048
  %81 = load %struct._object*, %struct._object** %one, align 8, !dbg !1834, !tbaa !1048
  %call107 = call %struct._object* @PyNumber_Lshift(%struct._object* %80, %struct._object* %81), !dbg !1835
  store %struct._object* %call107, %struct._object** %temp, align 8, !dbg !1836, !tbaa !1048
  %82 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1837, !tbaa !1048
  %cmp108 = icmp eq %struct._object* %82, null, !dbg !1839
  br i1 %cmp108, label %if.then.110, label %if.end.111, !dbg !1840

if.then.110:                                      ; preds = %do.end
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1841

if.end.111:                                       ; preds = %do.end
  br label %do.body.112, !dbg !1842

do.body.112:                                      ; preds = %if.end.111
  %83 = bitcast %struct._object** %_py_decref_tmp113 to i8*, !dbg !1843
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !1843
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp113, metadata !697, metadata !1038), !dbg !1845
  %84 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1846, !tbaa !1048
  store %struct._object* %84, %struct._object** %_py_decref_tmp113, align 8, !dbg !1845, !tbaa !1048
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8, !dbg !1847, !tbaa !1048
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !1849
  %86 = load i64, i64* %ob_refcnt114, align 8, !dbg !1850, !tbaa !1156
  %dec115 = add i64 %86, -1, !dbg !1850
  store i64 %dec115, i64* %ob_refcnt114, align 8, !dbg !1850, !tbaa !1156
  %cmp116 = icmp ne i64 %dec115, 0, !dbg !1851
  br i1 %cmp116, label %if.then.118, label %if.else.119, !dbg !1852

if.then.118:                                      ; preds = %do.body.112
  br label %if.end.122, !dbg !1853

if.else.119:                                      ; preds = %do.body.112
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8, !dbg !1855, !tbaa !1048
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !1857
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8, !dbg !1857, !tbaa !1166
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !1858
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8, !dbg !1858, !tbaa !1168
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8, !dbg !1859, !tbaa !1048
  call void %89(%struct._object* %90), !dbg !1860
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  %91 = bitcast %struct._object** %_py_decref_tmp113 to i8*, !dbg !1861
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !1861
  br label %do.cond.123, !dbg !1862

do.cond.123:                                      ; preds = %if.end.122
  br label %do.end.124, !dbg !1863

do.end.124:                                       ; preds = %do.cond.123
  %92 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1865, !tbaa !1048
  store %struct._object* %92, %struct._object** %vv, align 8, !dbg !1866, !tbaa !1048
  %93 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1867, !tbaa !1048
  %94 = load %struct._object*, %struct._object** %one, align 8, !dbg !1868, !tbaa !1048
  %call125 = call %struct._object* @PyNumber_Or(%struct._object* %93, %struct._object* %94), !dbg !1869
  store %struct._object* %call125, %struct._object** %temp, align 8, !dbg !1870, !tbaa !1048
  %95 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1871, !tbaa !1048
  %cmp126 = icmp eq %struct._object* %95, null, !dbg !1873
  br i1 %cmp126, label %if.then.128, label %if.end.129, !dbg !1874

if.then.128:                                      ; preds = %do.end.124
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1875

if.end.129:                                       ; preds = %do.end.124
  br label %do.body.130, !dbg !1876

do.body.130:                                      ; preds = %if.end.129
  %96 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !1877
  call void @llvm.lifetime.start(i64 8, i8* %96) #1, !dbg !1877
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp131, metadata !699, metadata !1038), !dbg !1879
  %97 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1880, !tbaa !1048
  store %struct._object* %97, %struct._object** %_py_decref_tmp131, align 8, !dbg !1879, !tbaa !1048
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1881, !tbaa !1048
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0, !dbg !1883
  %99 = load i64, i64* %ob_refcnt132, align 8, !dbg !1884, !tbaa !1156
  %dec133 = add i64 %99, -1, !dbg !1884
  store i64 %dec133, i64* %ob_refcnt132, align 8, !dbg !1884, !tbaa !1156
  %cmp134 = icmp ne i64 %dec133, 0, !dbg !1885
  br i1 %cmp134, label %if.then.136, label %if.else.137, !dbg !1886

if.then.136:                                      ; preds = %do.body.130
  br label %if.end.140, !dbg !1887

if.else.137:                                      ; preds = %do.body.130
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1889, !tbaa !1048
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1, !dbg !1891
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8, !dbg !1891, !tbaa !1166
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4, !dbg !1892
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8, !dbg !1892, !tbaa !1168
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8, !dbg !1893, !tbaa !1048
  call void %102(%struct._object* %103), !dbg !1894
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  %104 = bitcast %struct._object** %_py_decref_tmp131 to i8*, !dbg !1895
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !1895
  br label %do.cond.141, !dbg !1896

do.cond.141:                                      ; preds = %if.end.140
  br label %do.end.142, !dbg !1897

do.end.142:                                       ; preds = %do.cond.141
  %105 = load %struct._object*, %struct._object** %temp, align 8, !dbg !1899, !tbaa !1048
  store %struct._object* %105, %struct._object** %vv, align 8, !dbg !1900, !tbaa !1048
  store i32 0, i32* %cleanup.dest.slot, !dbg !1901
  br label %cleanup, !dbg !1901

cleanup:                                          ; preds = %if.then.128, %if.then.110, %if.then.98, %if.then.93, %do.end.142
  %106 = bitcast %struct._object** %temp to i8*, !dbg !1902
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !1902
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.213 [
    i32 0, label %cleanup.cont
    i32 4, label %Error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.143, !dbg !1904

if.end.143:                                       ; preds = %cleanup.cont, %if.end.86
  %107 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1905, !tbaa !1048
  %108 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1906, !tbaa !1048
  %109 = load i32, i32* %op.addr, align 4, !dbg !1907, !tbaa !1042
  %call144 = call i32 @PyObject_RichCompareBool(%struct._object* %107, %struct._object* %108, i32 %109), !dbg !1908
  store i32 %call144, i32* %r, align 4, !dbg !1909, !tbaa !1042
  %110 = load i32, i32* %r, align 4, !dbg !1910, !tbaa !1042
  %cmp145 = icmp slt i32 %110, 0, !dbg !1912
  br i1 %cmp145, label %if.then.147, label %if.end.148, !dbg !1913

if.then.147:                                      ; preds = %if.end.143
  br label %Error, !dbg !1914

if.end.148:                                       ; preds = %if.end.143
  %111 = load i32, i32* %r, align 4, !dbg !1915, !tbaa !1042
  %conv149 = sext i32 %111 to i64, !dbg !1915
  %call150 = call %struct._object* @PyBool_FromLong(i64 %conv149), !dbg !1916
  store %struct._object* %call150, %struct._object** %result, align 8, !dbg !1917, !tbaa !1048
  br label %Error, !dbg !1918

Error:                                            ; preds = %if.end.148, %cleanup, %if.then.147, %if.then.85, %if.then.77
  br label %do.body.151, !dbg !1919

do.body.151:                                      ; preds = %Error
  %112 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1920
  call void @llvm.lifetime.start(i64 8, i8* %112) #1, !dbg !1920
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !701, metadata !1038), !dbg !1922
  %113 = load %struct._object*, %struct._object** %vv, align 8, !dbg !1923, !tbaa !1048
  store %struct._object* %113, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1922, !tbaa !1048
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1924, !tbaa !1048
  %cmp152 = icmp ne %struct._object* %114, null, !dbg !1925
  br i1 %cmp152, label %if.then.154, label %if.end.168, !dbg !1926

if.then.154:                                      ; preds = %do.body.151
  br label %do.body.155, !dbg !1927

do.body.155:                                      ; preds = %if.then.154
  %115 = bitcast %struct._object** %_py_decref_tmp156 to i8*, !dbg !1929
  call void @llvm.lifetime.start(i64 8, i8* %115) #1, !dbg !1929
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp156, metadata !703, metadata !1038), !dbg !1931
  %116 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1932, !tbaa !1048
  store %struct._object* %116, %struct._object** %_py_decref_tmp156, align 8, !dbg !1931, !tbaa !1048
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !1933, !tbaa !1048
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0, !dbg !1935
  %118 = load i64, i64* %ob_refcnt157, align 8, !dbg !1936, !tbaa !1156
  %dec158 = add i64 %118, -1, !dbg !1936
  store i64 %dec158, i64* %ob_refcnt157, align 8, !dbg !1936, !tbaa !1156
  %cmp159 = icmp ne i64 %dec158, 0, !dbg !1937
  br i1 %cmp159, label %if.then.161, label %if.else.162, !dbg !1938

if.then.161:                                      ; preds = %do.body.155
  br label %if.end.165, !dbg !1939

if.else.162:                                      ; preds = %do.body.155
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !1941, !tbaa !1048
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1, !dbg !1943
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8, !dbg !1943, !tbaa !1166
  %tp_dealloc164 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4, !dbg !1944
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc164, align 8, !dbg !1944, !tbaa !1168
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !1945, !tbaa !1048
  call void %121(%struct._object* %122), !dbg !1946
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.then.161
  %123 = bitcast %struct._object** %_py_decref_tmp156 to i8*, !dbg !1947
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !1947
  br label %do.cond.166, !dbg !1949

do.cond.166:                                      ; preds = %if.end.165
  br label %do.end.167, !dbg !1950

do.end.167:                                       ; preds = %do.cond.166
  br label %if.end.168, !dbg !1952

if.end.168:                                       ; preds = %do.end.167, %do.body.151
  %124 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1954
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !1954
  br label %do.cond.169, !dbg !1957

do.cond.169:                                      ; preds = %if.end.168
  br label %do.end.170, !dbg !1958

do.end.170:                                       ; preds = %do.cond.169
  br label %do.body.171, !dbg !1960

do.body.171:                                      ; preds = %do.end.170
  %125 = bitcast %struct._object** %_py_xdecref_tmp172 to i8*, !dbg !1961
  call void @llvm.lifetime.start(i64 8, i8* %125) #1, !dbg !1961
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp172, metadata !706, metadata !1038), !dbg !1963
  %126 = load %struct._object*, %struct._object** %ww, align 8, !dbg !1964, !tbaa !1048
  store %struct._object* %126, %struct._object** %_py_xdecref_tmp172, align 8, !dbg !1963, !tbaa !1048
  %127 = load %struct._object*, %struct._object** %_py_xdecref_tmp172, align 8, !dbg !1965, !tbaa !1048
  %cmp173 = icmp ne %struct._object* %127, null, !dbg !1966
  br i1 %cmp173, label %if.then.175, label %if.end.189, !dbg !1967

if.then.175:                                      ; preds = %do.body.171
  br label %do.body.176, !dbg !1968

do.body.176:                                      ; preds = %if.then.175
  %128 = bitcast %struct._object** %_py_decref_tmp177 to i8*, !dbg !1970
  call void @llvm.lifetime.start(i64 8, i8* %128) #1, !dbg !1970
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp177, metadata !708, metadata !1038), !dbg !1972
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp172, align 8, !dbg !1973, !tbaa !1048
  store %struct._object* %129, %struct._object** %_py_decref_tmp177, align 8, !dbg !1972, !tbaa !1048
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !1974, !tbaa !1048
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0, !dbg !1976
  %131 = load i64, i64* %ob_refcnt178, align 8, !dbg !1977, !tbaa !1156
  %dec179 = add i64 %131, -1, !dbg !1977
  store i64 %dec179, i64* %ob_refcnt178, align 8, !dbg !1977, !tbaa !1156
  %cmp180 = icmp ne i64 %dec179, 0, !dbg !1978
  br i1 %cmp180, label %if.then.182, label %if.else.183, !dbg !1979

if.then.182:                                      ; preds = %do.body.176
  br label %if.end.186, !dbg !1980

if.else.183:                                      ; preds = %do.body.176
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !1982, !tbaa !1048
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %132, i32 0, i32 1, !dbg !1984
  %133 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8, !dbg !1984, !tbaa !1166
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %133, i32 0, i32 4, !dbg !1985
  %134 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8, !dbg !1985, !tbaa !1168
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp177, align 8, !dbg !1986, !tbaa !1048
  call void %134(%struct._object* %135), !dbg !1987
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  %136 = bitcast %struct._object** %_py_decref_tmp177 to i8*, !dbg !1988
  call void @llvm.lifetime.end(i64 8, i8* %136) #1, !dbg !1988
  br label %do.cond.187, !dbg !1990

do.cond.187:                                      ; preds = %if.end.186
  br label %do.end.188, !dbg !1991

do.end.188:                                       ; preds = %do.cond.187
  br label %if.end.189, !dbg !1993

if.end.189:                                       ; preds = %do.end.188, %do.body.171
  %137 = bitcast %struct._object** %_py_xdecref_tmp172 to i8*, !dbg !1995
  call void @llvm.lifetime.end(i64 8, i8* %137) #1, !dbg !1995
  br label %do.cond.190, !dbg !1996

do.cond.190:                                      ; preds = %if.end.189
  br label %do.end.191, !dbg !1997

do.end.191:                                       ; preds = %do.cond.190
  br label %do.body.192, !dbg !1999

do.body.192:                                      ; preds = %do.end.191
  %138 = bitcast %struct._object** %_py_xdecref_tmp193 to i8*, !dbg !2000
  call void @llvm.lifetime.start(i64 8, i8* %138) #1, !dbg !2000
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp193, metadata !711, metadata !1038), !dbg !2002
  %139 = load %struct._object*, %struct._object** %one, align 8, !dbg !2003, !tbaa !1048
  store %struct._object* %139, %struct._object** %_py_xdecref_tmp193, align 8, !dbg !2002, !tbaa !1048
  %140 = load %struct._object*, %struct._object** %_py_xdecref_tmp193, align 8, !dbg !2004, !tbaa !1048
  %cmp194 = icmp ne %struct._object* %140, null, !dbg !2005
  br i1 %cmp194, label %if.then.196, label %if.end.210, !dbg !2006

if.then.196:                                      ; preds = %do.body.192
  br label %do.body.197, !dbg !2007

do.body.197:                                      ; preds = %if.then.196
  %141 = bitcast %struct._object** %_py_decref_tmp198 to i8*, !dbg !2009
  call void @llvm.lifetime.start(i64 8, i8* %141) #1, !dbg !2009
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp198, metadata !713, metadata !1038), !dbg !2011
  %142 = load %struct._object*, %struct._object** %_py_xdecref_tmp193, align 8, !dbg !2012, !tbaa !1048
  store %struct._object* %142, %struct._object** %_py_decref_tmp198, align 8, !dbg !2011, !tbaa !1048
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8, !dbg !2013, !tbaa !1048
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0, !dbg !2015
  %144 = load i64, i64* %ob_refcnt199, align 8, !dbg !2016, !tbaa !1156
  %dec200 = add i64 %144, -1, !dbg !2016
  store i64 %dec200, i64* %ob_refcnt199, align 8, !dbg !2016, !tbaa !1156
  %cmp201 = icmp ne i64 %dec200, 0, !dbg !2017
  br i1 %cmp201, label %if.then.203, label %if.else.204, !dbg !2018

if.then.203:                                      ; preds = %do.body.197
  br label %if.end.207, !dbg !2019

if.else.204:                                      ; preds = %do.body.197
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8, !dbg !2021, !tbaa !1048
  %ob_type205 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1, !dbg !2023
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type205, align 8, !dbg !2023, !tbaa !1166
  %tp_dealloc206 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4, !dbg !2024
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc206, align 8, !dbg !2024, !tbaa !1168
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8, !dbg !2025, !tbaa !1048
  call void %147(%struct._object* %148), !dbg !2026
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.204, %if.then.203
  %149 = bitcast %struct._object** %_py_decref_tmp198 to i8*, !dbg !2027
  call void @llvm.lifetime.end(i64 8, i8* %149) #1, !dbg !2027
  br label %do.cond.208, !dbg !2029

do.cond.208:                                      ; preds = %if.end.207
  br label %do.end.209, !dbg !2030

do.end.209:                                       ; preds = %do.cond.208
  br label %if.end.210, !dbg !2032

if.end.210:                                       ; preds = %do.end.209, %do.body.192
  %150 = bitcast %struct._object** %_py_xdecref_tmp193 to i8*, !dbg !2034
  call void @llvm.lifetime.end(i64 8, i8* %150) #1, !dbg !2034
  br label %do.cond.211, !dbg !2035

do.cond.211:                                      ; preds = %if.end.210
  br label %do.end.212, !dbg !2036

do.end.212:                                       ; preds = %do.cond.211
  %151 = load %struct._object*, %struct._object** %result, align 8, !dbg !2038, !tbaa !1048
  store %struct._object* %151, %struct._object** %retval, !dbg !2039
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.213, !dbg !2039

cleanup.213:                                      ; preds = %do.end.212, %cleanup
  %152 = bitcast %struct._object** %ww to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %152) #1, !dbg !2040
  %153 = bitcast %struct._object** %vv to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %153) #1, !dbg !2040
  %154 = bitcast %struct._object** %one to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %154) #1, !dbg !2040
  %155 = bitcast %struct._object** %result to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %155) #1, !dbg !2040
  %156 = bitcast double* %intpart to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %156) #1, !dbg !2040
  %157 = bitcast double* %fracpart to i8*, !dbg !2040
  call void @llvm.lifetime.end(i64 8, i8* %157) #1, !dbg !2040
  br label %cleanup.219

cleanup.219:                                      ; preds = %if.then.69, %if.then.64, %if.then.50, %if.then.44, %if.then.35, %cleanup.213
  %158 = bitcast i32* %exponent to i8*, !dbg !2041
  call void @llvm.lifetime.end(i64 4, i8* %158) #1, !dbg !2041
  %159 = bitcast i64* %nbits to i8*, !dbg !2041
  call void @llvm.lifetime.end(i64 8, i8* %159) #1, !dbg !2041
  %160 = bitcast i32* %wsign to i8*, !dbg !2041
  call void @llvm.lifetime.end(i64 4, i8* %160) #1, !dbg !2041
  %161 = bitcast i32* %vsign to i8*, !dbg !2041
  call void @llvm.lifetime.end(i64 4, i8* %161) #1, !dbg !2041
  %cleanup.dest226 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest226, label %cleanup.247 [
    i32 3, label %Compare
  ]

if.else.223:                                      ; preds = %if.else.18
  br label %Unimplemented, !dbg !2042

if.end.224:                                       ; preds = %if.end
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then
  br label %Compare, !dbg !2043

Compare:                                          ; preds = %if.end.225, %cleanup.219
  %162 = load i32, i32* %op.addr, align 4, !dbg !2044, !tbaa !1042
  switch i32 %162, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.229
    i32 1, label %sw.bb.232
    i32 5, label %sw.bb.235
    i32 0, label %sw.bb.238
    i32 4, label %sw.bb.241
  ], !dbg !2045

sw.bb:                                            ; preds = %Compare
  %163 = load double, double* %i, align 8, !dbg !2046, !tbaa !1190
  %164 = load double, double* %j, align 8, !dbg !2048, !tbaa !1190
  %cmp227 = fcmp oeq double %163, %164, !dbg !2049
  %conv228 = zext i1 %cmp227 to i32, !dbg !2049
  store i32 %conv228, i32* %r, align 4, !dbg !2050, !tbaa !1042
  br label %sw.epilog, !dbg !2051

sw.bb.229:                                        ; preds = %Compare
  %165 = load double, double* %i, align 8, !dbg !2052, !tbaa !1190
  %166 = load double, double* %j, align 8, !dbg !2053, !tbaa !1190
  %cmp230 = fcmp une double %165, %166, !dbg !2054
  %conv231 = zext i1 %cmp230 to i32, !dbg !2054
  store i32 %conv231, i32* %r, align 4, !dbg !2055, !tbaa !1042
  br label %sw.epilog, !dbg !2056

sw.bb.232:                                        ; preds = %Compare
  %167 = load double, double* %i, align 8, !dbg !2057, !tbaa !1190
  %168 = load double, double* %j, align 8, !dbg !2058, !tbaa !1190
  %cmp233 = fcmp ole double %167, %168, !dbg !2059
  %conv234 = zext i1 %cmp233 to i32, !dbg !2059
  store i32 %conv234, i32* %r, align 4, !dbg !2060, !tbaa !1042
  br label %sw.epilog, !dbg !2061

sw.bb.235:                                        ; preds = %Compare
  %169 = load double, double* %i, align 8, !dbg !2062, !tbaa !1190
  %170 = load double, double* %j, align 8, !dbg !2063, !tbaa !1190
  %cmp236 = fcmp oge double %169, %170, !dbg !2064
  %conv237 = zext i1 %cmp236 to i32, !dbg !2064
  store i32 %conv237, i32* %r, align 4, !dbg !2065, !tbaa !1042
  br label %sw.epilog, !dbg !2066

sw.bb.238:                                        ; preds = %Compare
  %171 = load double, double* %i, align 8, !dbg !2067, !tbaa !1190
  %172 = load double, double* %j, align 8, !dbg !2068, !tbaa !1190
  %cmp239 = fcmp olt double %171, %172, !dbg !2069
  %conv240 = zext i1 %cmp239 to i32, !dbg !2069
  store i32 %conv240, i32* %r, align 4, !dbg !2070, !tbaa !1042
  br label %sw.epilog, !dbg !2071

sw.bb.241:                                        ; preds = %Compare
  %173 = load double, double* %i, align 8, !dbg !2072, !tbaa !1190
  %174 = load double, double* %j, align 8, !dbg !2073, !tbaa !1190
  %cmp242 = fcmp ogt double %173, %174, !dbg !2074
  %conv243 = zext i1 %cmp242 to i32, !dbg !2074
  store i32 %conv243, i32* %r, align 4, !dbg !2075, !tbaa !1042
  br label %sw.epilog, !dbg !2076

sw.epilog:                                        ; preds = %Compare, %sw.bb.241, %sw.bb.238, %sw.bb.235, %sw.bb.232, %sw.bb.229, %sw.bb
  %175 = load i32, i32* %r, align 4, !dbg !2077, !tbaa !1042
  %conv244 = sext i32 %175 to i64, !dbg !2077
  %call245 = call %struct._object* @PyBool_FromLong(i64 %conv244), !dbg !2078
  store %struct._object* %call245, %struct._object** %retval, !dbg !2079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247, !dbg !2079

Unimplemented:                                    ; preds = %if.else.223, %if.else.17
  %176 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2080, !tbaa !1156
  %inc246 = add i64 %176, 1, !dbg !2080
  store i64 %inc246, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !2080, !tbaa !1156
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval, !dbg !2081
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.247, !dbg !2081

cleanup.247:                                      ; preds = %Unimplemented, %sw.epilog, %cleanup.219
  %177 = bitcast i32* %r to i8*, !dbg !2082
  call void @llvm.lifetime.end(i64 4, i8* %177) #1, !dbg !2082
  %178 = bitcast double* %j to i8*, !dbg !2082
  call void @llvm.lifetime.end(i64 8, i8* %178) #1, !dbg !2082
  %179 = bitcast double* %i to i8*, !dbg !2082
  call void @llvm.lifetime.end(i64 8, i8* %179) #1, !dbg !2082
  %180 = load %struct._object*, %struct._object** %retval, !dbg !2082
  ret %struct._object* %180, !dbg !2082
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %x = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !942, metadata !1038), !dbg !2083
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !943, metadata !1038), !dbg !2084
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !944, metadata !1038), !dbg !2085
  %0 = bitcast %struct._object** %x to i8*, !dbg !2086
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2086
  call void @llvm.dbg.declare(metadata %struct._object** %x, metadata !945, metadata !1038), !dbg !2087
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %x, align 8, !dbg !2087, !tbaa !1048
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2088, !tbaa !1048
  %cmp = icmp ne %struct._typeobject* %1, @PyFloat_Type, !dbg !2090
  br i1 %cmp, label %if.then, label %if.end, !dbg !2091

if.then:                                          ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2092, !tbaa !1048
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2093, !tbaa !1048
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2094, !tbaa !1048
  %call = call %struct._object* @float_subtype_new(%struct._typeobject* %2, %struct._object* %3, %struct._object* %4), !dbg !2095
  store %struct._object* %call, %struct._object** %retval, !dbg !2096
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2096

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2097, !tbaa !1048
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2099, !tbaa !1048
  %call1 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %5, %struct._object* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @float_new.kwlist, i32 0, i32 0), %struct._object** %x), !dbg !2100
  %tobool = icmp ne i32 %call1, 0, !dbg !2100
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !2101

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2102

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %x, align 8, !dbg !2103, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2105
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2105, !tbaa !1166
  %cmp4 = icmp eq %struct._typeobject* %8, @PyUnicode_Type, !dbg !2106
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !2107

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %x, align 8, !dbg !2108, !tbaa !1048
  %call6 = call %struct._object* @PyFloat_FromString(%struct._object* %9), !dbg !2109
  store %struct._object* %call6, %struct._object** %retval, !dbg !2110
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2110

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %x, align 8, !dbg !2111, !tbaa !1048
  %call8 = call %struct._object* @PyNumber_Float(%struct._object* %10), !dbg !2112
  store %struct._object* %call8, %struct._object** %retval, !dbg !2113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2113

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %11 = bitcast %struct._object** %x to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2114
  %12 = load %struct._object*, %struct._object** %retval, !dbg !2114
  ret %struct._object* %12, !dbg !2114
}

; Function Attrs: nounwind uwtable
define i32 @_PyFloat_Init() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca float, align 4
  %0 = bitcast double* %x to i8*, !dbg !2115
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2115
  call void @llvm.dbg.declare(metadata double* %x, metadata !458, metadata !1038), !dbg !2116
  store double 0x433FFF0102030405, double* %x, align 8, !dbg !2116, !tbaa !1190
  %1 = bitcast double* %x to i8*, !dbg !2117
  %call = call i32 @memcmp(i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i64 8) #8, !dbg !2119
  %cmp = icmp eq i32 %call, 0, !dbg !2120
  br i1 %cmp, label %if.then, label %if.else, !dbg !2121

if.then:                                          ; preds = %entry
  store i32 1, i32* @detected_double_format, align 4, !dbg !2122, !tbaa !1323
  br label %if.end.5, !dbg !2123

if.else:                                          ; preds = %entry
  %2 = bitcast double* %x to i8*, !dbg !2124
  %call1 = call i32 @memcmp(i8* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i64 8) #8, !dbg !2126
  %cmp2 = icmp eq i32 %call1, 0, !dbg !2127
  br i1 %cmp2, label %if.then.3, label %if.else.4, !dbg !2128

if.then.3:                                        ; preds = %if.else
  store i32 2, i32* @detected_double_format, align 4, !dbg !2129, !tbaa !1323
  br label %if.end, !dbg !2130

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* @detected_double_format, align 4, !dbg !2131, !tbaa !1323
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %3 = bitcast double* %x to i8*, !dbg !2132
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !2132
  %4 = bitcast float* %y to i8*, !dbg !2133
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2133
  call void @llvm.dbg.declare(metadata float* %y, metadata !460, metadata !1038), !dbg !2134
  store float 0x416FE02040000000, float* %y, align 4, !dbg !2134, !tbaa !2135
  %5 = bitcast float* %y to i8*, !dbg !2137
  %call6 = call i32 @memcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 4) #8, !dbg !2139
  %cmp7 = icmp eq i32 %call6, 0, !dbg !2140
  br i1 %cmp7, label %if.then.8, label %if.else.9, !dbg !2141

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* @detected_float_format, align 4, !dbg !2142, !tbaa !1323
  br label %if.end.15, !dbg !2143

if.else.9:                                        ; preds = %if.end.5
  %6 = bitcast float* %y to i8*, !dbg !2144
  %call10 = call i32 @memcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 4) #8, !dbg !2146
  %cmp11 = icmp eq i32 %call10, 0, !dbg !2147
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !2148

if.then.12:                                       ; preds = %if.else.9
  store i32 2, i32* @detected_float_format, align 4, !dbg !2149, !tbaa !1323
  br label %if.end.14, !dbg !2150

if.else.13:                                       ; preds = %if.else.9
  store i32 0, i32* @detected_float_format, align 4, !dbg !2151, !tbaa !1323
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.8
  %7 = bitcast float* %y to i8*, !dbg !2152
  call void @llvm.lifetime.end(i64 4, i8* %7) #1, !dbg !2152
  %8 = load i32, i32* @detected_double_format, align 4, !dbg !2153, !tbaa !1323
  store i32 %8, i32* @double_format, align 4, !dbg !2154, !tbaa !1323
  %9 = load i32, i32* @detected_float_format, align 4, !dbg !2155, !tbaa !1323
  store i32 %9, i32* @float_format, align 4, !dbg !2156, !tbaa !1323
  %10 = load i8*, i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @FloatInfoType, i32 0, i32 1), align 8, !dbg !2157, !tbaa !1305
  %cmp16 = icmp eq i8* %10, null, !dbg !2159
  br i1 %cmp16, label %if.then.17, label %if.end.22, !dbg !2160

if.then.17:                                       ; preds = %if.end.15
  %call18 = call i32 @PyStructSequence_InitType2(%struct._typeobject* @FloatInfoType, %struct.PyStructSequence_Desc* @floatinfo_desc), !dbg !2161
  %cmp19 = icmp slt i32 %call18, 0, !dbg !2164
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !2165

if.then.20:                                       ; preds = %if.then.17
  store i32 0, i32* %retval, !dbg !2166
  br label %return, !dbg !2166

if.end.21:                                        ; preds = %if.then.17
  br label %if.end.22, !dbg !2167

if.end.22:                                        ; preds = %if.end.21, %if.end.15
  store i32 1, i32* %retval, !dbg !2168
  br label %return, !dbg !2168

return:                                           ; preds = %if.end.22, %if.then.20
  %11 = load i32, i32* %retval, !dbg !2169
  ret i32 %11, !dbg !2169
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

declare i32 @PyStructSequence_InitType2(%struct._typeobject*, %struct.PyStructSequence_Desc*) #3

; Function Attrs: nounwind uwtable
define i32 @PyFloat_ClearFreeList() #0 {
entry:
  %f = alloca %struct.PyFloatObject*, align 8
  %next = alloca %struct.PyFloatObject*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.PyFloatObject** %f to i8*, !dbg !2170
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %f, metadata !464, metadata !1038), !dbg !2171
  %1 = load %struct.PyFloatObject*, %struct.PyFloatObject** @free_list, align 8, !dbg !2172, !tbaa !1048
  store %struct.PyFloatObject* %1, %struct.PyFloatObject** %f, align 8, !dbg !2171, !tbaa !1048
  %2 = bitcast %struct.PyFloatObject** %next to i8*, !dbg !2170
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2170
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %next, metadata !465, metadata !1038), !dbg !2173
  %3 = bitcast i32* %i to i8*, !dbg !2174
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2174
  call void @llvm.dbg.declare(metadata i32* %i, metadata !466, metadata !1038), !dbg !2175
  %4 = load i32, i32* @numfree, align 4, !dbg !2176, !tbaa !1042
  store i32 %4, i32* %i, align 4, !dbg !2175, !tbaa !1042
  br label %while.cond, !dbg !2177

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8, !dbg !2178, !tbaa !1048
  %tobool = icmp ne %struct.PyFloatObject* %5, null, !dbg !2177
  br i1 %tobool, label %while.body, label %while.end, !dbg !2177

while.body:                                       ; preds = %while.cond
  %6 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8, !dbg !2181, !tbaa !1048
  %7 = bitcast %struct.PyFloatObject* %6 to %struct._object*, !dbg !2183
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2184
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2184, !tbaa !1166
  %9 = bitcast %struct._typeobject* %8 to %struct.PyFloatObject*, !dbg !2185
  store %struct.PyFloatObject* %9, %struct.PyFloatObject** %next, align 8, !dbg !2186, !tbaa !1048
  %10 = load %struct.PyFloatObject*, %struct.PyFloatObject** %f, align 8, !dbg !2187, !tbaa !1048
  %11 = bitcast %struct.PyFloatObject* %10 to i8*, !dbg !2187
  call void @PyObject_Free(i8* %11), !dbg !2188
  %12 = load %struct.PyFloatObject*, %struct.PyFloatObject** %next, align 8, !dbg !2189, !tbaa !1048
  store %struct.PyFloatObject* %12, %struct.PyFloatObject** %f, align 8, !dbg !2190, !tbaa !1048
  br label %while.cond, !dbg !2177

while.end:                                        ; preds = %while.cond
  store %struct.PyFloatObject* null, %struct.PyFloatObject** @free_list, align 8, !dbg !2191, !tbaa !1048
  store i32 0, i32* @numfree, align 4, !dbg !2192, !tbaa !1042
  %13 = load i32, i32* %i, align 4, !dbg !2193, !tbaa !1042
  %14 = bitcast i32* %i to i8*, !dbg !2194
  call void @llvm.lifetime.end(i64 4, i8* %14) #1, !dbg !2194
  %15 = bitcast %struct.PyFloatObject** %next to i8*, !dbg !2194
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2194
  %16 = bitcast %struct.PyFloatObject** %f to i8*, !dbg !2194
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2194
  ret i32 %13, !dbg !2195
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define void @PyFloat_Fini() #0 {
entry:
  %call = call i32 @PyFloat_ClearFreeList(), !dbg !2196
  ret void, !dbg !2197
}

; Function Attrs: nounwind uwtable
define void @_PyFloat_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %out.addr, metadata !474, metadata !1038), !dbg !2198
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8, !dbg !2199, !tbaa !1048
  %1 = load i32, i32* @numfree, align 4, !dbg !2200, !tbaa !1042
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i32 %1, i64 24), !dbg !2201
  ret void, !dbg !2202
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #3

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
  %cleanup.dest.slot = alloca i32
  %y = alloca float, align 4
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %incr62 = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1190
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !480, metadata !1038), !dbg !2203
  store i8* %p, i8** %p.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !481, metadata !1038), !dbg !2204
  store i32 %le, i32* %le.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !482, metadata !1038), !dbg !2205
  %0 = load i32, i32* @float_format, align 4, !dbg !2206, !tbaa !1323
  %cmp = icmp eq i32 %0, 0, !dbg !2207
  br i1 %cmp, label %if.then, label %if.else.60, !dbg !2208

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %sign) #1, !dbg !2209
  call void @llvm.dbg.declare(metadata i8* %sign, metadata !483, metadata !1038), !dbg !2210
  %1 = bitcast i32* %e to i8*, !dbg !2211
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2211
  call void @llvm.dbg.declare(metadata i32* %e, metadata !486, metadata !1038), !dbg !2212
  %2 = bitcast double* %f to i8*, !dbg !2213
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2213
  call void @llvm.dbg.declare(metadata double* %f, metadata !487, metadata !1038), !dbg !2214
  %3 = bitcast i32* %fbits to i8*, !dbg !2215
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2215
  call void @llvm.dbg.declare(metadata i32* %fbits, metadata !488, metadata !1038), !dbg !2216
  %4 = bitcast i32* %incr to i8*, !dbg !2217
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2217
  call void @llvm.dbg.declare(metadata i32* %incr, metadata !489, metadata !1038), !dbg !2218
  store i32 1, i32* %incr, align 4, !dbg !2218, !tbaa !1042
  %5 = load i32, i32* %le.addr, align 4, !dbg !2219, !tbaa !1042
  %tobool = icmp ne i32 %5, 0, !dbg !2219
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !2221

if.then.1:                                        ; preds = %if.then
  %6 = load i8*, i8** %p.addr, align 8, !dbg !2222, !tbaa !1048
  %add.ptr = getelementptr i8, i8* %6, i64 3, !dbg !2222
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !2222, !tbaa !1048
  store i32 -1, i32* %incr, align 4, !dbg !2224, !tbaa !1042
  br label %if.end, !dbg !2225

if.end:                                           ; preds = %if.then.1, %if.then
  %7 = load double, double* %x.addr, align 8, !dbg !2226, !tbaa !1190
  %cmp2 = fcmp olt double %7, 0.000000e+00, !dbg !2228
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2229

if.then.3:                                        ; preds = %if.end
  store i8 1, i8* %sign, align 1, !dbg !2230, !tbaa !1323
  %8 = load double, double* %x.addr, align 8, !dbg !2232, !tbaa !1190
  %sub = fsub double -0.000000e+00, %8, !dbg !2233
  store double %sub, double* %x.addr, align 8, !dbg !2234, !tbaa !1190
  br label %if.end.4, !dbg !2235

if.else:                                          ; preds = %if.end
  store i8 0, i8* %sign, align 1, !dbg !2236, !tbaa !1323
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %9 = load double, double* %x.addr, align 8, !dbg !2237, !tbaa !1190
  %call = call double @frexp(double %9, i32* %e) #1, !dbg !2238
  store double %call, double* %f, align 8, !dbg !2239, !tbaa !1190
  %10 = load double, double* %f, align 8, !dbg !2240, !tbaa !1190
  %cmp5 = fcmp ole double 5.000000e-01, %10, !dbg !2242
  br i1 %cmp5, label %land.lhs.true, label %if.else.8, !dbg !2243

land.lhs.true:                                    ; preds = %if.end.4
  %11 = load double, double* %f, align 8, !dbg !2244, !tbaa !1190
  %cmp6 = fcmp olt double %11, 1.000000e+00, !dbg !2246
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !2247

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load double, double* %f, align 8, !dbg !2248, !tbaa !1190
  %mul = fmul double %12, 2.000000e+00, !dbg !2248
  store double %mul, double* %f, align 8, !dbg !2248, !tbaa !1190
  %13 = load i32, i32* %e, align 4, !dbg !2250, !tbaa !1042
  %dec = add i32 %13, -1, !dbg !2250
  store i32 %dec, i32* %e, align 4, !dbg !2250, !tbaa !1042
  br label %if.end.13, !dbg !2251

if.else.8:                                        ; preds = %land.lhs.true, %if.end.4
  %14 = load double, double* %f, align 8, !dbg !2252, !tbaa !1190
  %cmp9 = fcmp oeq double %14, 0.000000e+00, !dbg !2254
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !2255

if.then.10:                                       ; preds = %if.else.8
  store i32 0, i32* %e, align 4, !dbg !2256, !tbaa !1042
  br label %if.end.12, !dbg !2257

if.else.11:                                       ; preds = %if.else.8
  %15 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2258, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)), !dbg !2260
  store i32 -1, i32* %retval, !dbg !2261
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2261

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %16 = load i32, i32* %e, align 4, !dbg !2262, !tbaa !1042
  %cmp14 = icmp sge i32 %16, 128, !dbg !2264
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !2265

if.then.15:                                       ; preds = %if.end.13
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2266

if.else.16:                                       ; preds = %if.end.13
  %17 = load i32, i32* %e, align 4, !dbg !2267, !tbaa !1042
  %cmp17 = icmp slt i32 %17, -126, !dbg !2269
  br i1 %cmp17, label %if.then.18, label %if.else.20, !dbg !2270

if.then.18:                                       ; preds = %if.else.16
  %18 = load double, double* %f, align 8, !dbg !2271, !tbaa !1190
  %19 = load i32, i32* %e, align 4, !dbg !2273, !tbaa !1042
  %add = add i32 126, %19, !dbg !2274
  %call19 = call double @ldexp(double %18, i32 %add) #1, !dbg !2275
  store double %call19, double* %f, align 8, !dbg !2276, !tbaa !1190
  store i32 0, i32* %e, align 4, !dbg !2277, !tbaa !1042
  br label %if.end.28, !dbg !2278

if.else.20:                                       ; preds = %if.else.16
  %20 = load i32, i32* %e, align 4, !dbg !2279, !tbaa !1042
  %cmp21 = icmp eq i32 %20, 0, !dbg !2281
  br i1 %cmp21, label %land.lhs.true.22, label %if.then.24, !dbg !2282

land.lhs.true.22:                                 ; preds = %if.else.20
  %21 = load double, double* %f, align 8, !dbg !2283, !tbaa !1190
  %cmp23 = fcmp oeq double %21, 0.000000e+00, !dbg !2285
  br i1 %cmp23, label %if.end.27, label %if.then.24, !dbg !2286

if.then.24:                                       ; preds = %land.lhs.true.22, %if.else.20
  %22 = load i32, i32* %e, align 4, !dbg !2287, !tbaa !1042
  %add25 = add i32 %22, 127, !dbg !2287
  store i32 %add25, i32* %e, align 4, !dbg !2287, !tbaa !1042
  %23 = load double, double* %f, align 8, !dbg !2289, !tbaa !1190
  %sub26 = fsub double %23, 1.000000e+00, !dbg !2289
  store double %sub26, double* %f, align 8, !dbg !2289, !tbaa !1190
  br label %if.end.27, !dbg !2290

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %24 = load double, double* %f, align 8, !dbg !2291, !tbaa !1190
  %mul30 = fmul double %24, 8.388608e+06, !dbg !2291
  store double %mul30, double* %f, align 8, !dbg !2291, !tbaa !1190
  %25 = load double, double* %f, align 8, !dbg !2292, !tbaa !1190
  %add31 = fadd double %25, 5.000000e-01, !dbg !2293
  %conv = fptoui double %add31 to i32, !dbg !2294
  store i32 %conv, i32* %fbits, align 4, !dbg !2295, !tbaa !1042
  %26 = load i32, i32* %fbits, align 4, !dbg !2296, !tbaa !1042
  %shr = lshr i32 %26, 23, !dbg !2298
  %tobool32 = icmp ne i32 %shr, 0, !dbg !2298
  br i1 %tobool32, label %if.then.33, label %if.end.38, !dbg !2299

if.then.33:                                       ; preds = %if.end.29
  store i32 0, i32* %fbits, align 4, !dbg !2300, !tbaa !1042
  %27 = load i32, i32* %e, align 4, !dbg !2302, !tbaa !1042
  %inc = add i32 %27, 1, !dbg !2302
  store i32 %inc, i32* %e, align 4, !dbg !2302, !tbaa !1042
  %28 = load i32, i32* %e, align 4, !dbg !2303, !tbaa !1042
  %cmp34 = icmp sge i32 %28, 255, !dbg !2305
  br i1 %cmp34, label %if.then.36, label %if.end.37, !dbg !2306

if.then.36:                                       ; preds = %if.then.33
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2307

if.end.37:                                        ; preds = %if.then.33
  br label %if.end.38, !dbg !2308

if.end.38:                                        ; preds = %if.end.37, %if.end.29
  %29 = load i8, i8* %sign, align 1, !dbg !2309, !tbaa !1323
  %conv39 = zext i8 %29 to i32, !dbg !2309
  %shl = shl i32 %conv39, 7, !dbg !2310
  %30 = load i32, i32* %e, align 4, !dbg !2311, !tbaa !1042
  %shr40 = ashr i32 %30, 1, !dbg !2312
  %or = or i32 %shl, %shr40, !dbg !2313
  %conv41 = trunc i32 %or to i8, !dbg !2314
  %31 = load i8*, i8** %p.addr, align 8, !dbg !2315, !tbaa !1048
  store i8 %conv41, i8* %31, align 1, !dbg !2316, !tbaa !1323
  %32 = load i32, i32* %incr, align 4, !dbg !2317, !tbaa !1042
  %33 = load i8*, i8** %p.addr, align 8, !dbg !2318, !tbaa !1048
  %idx.ext = sext i32 %32 to i64, !dbg !2318
  %add.ptr42 = getelementptr i8, i8* %33, i64 %idx.ext, !dbg !2318
  store i8* %add.ptr42, i8** %p.addr, align 8, !dbg !2318, !tbaa !1048
  %34 = load i32, i32* %e, align 4, !dbg !2319, !tbaa !1042
  %and = and i32 %34, 1, !dbg !2320
  %shl43 = shl i32 %and, 7, !dbg !2321
  %35 = load i32, i32* %fbits, align 4, !dbg !2322, !tbaa !1042
  %shr44 = lshr i32 %35, 16, !dbg !2323
  %or45 = or i32 %shl43, %shr44, !dbg !2324
  %conv46 = trunc i32 %or45 to i8, !dbg !2325
  %36 = load i8*, i8** %p.addr, align 8, !dbg !2326, !tbaa !1048
  store i8 %conv46, i8* %36, align 1, !dbg !2327, !tbaa !1323
  %37 = load i32, i32* %incr, align 4, !dbg !2328, !tbaa !1042
  %38 = load i8*, i8** %p.addr, align 8, !dbg !2329, !tbaa !1048
  %idx.ext47 = sext i32 %37 to i64, !dbg !2329
  %add.ptr48 = getelementptr i8, i8* %38, i64 %idx.ext47, !dbg !2329
  store i8* %add.ptr48, i8** %p.addr, align 8, !dbg !2329, !tbaa !1048
  %39 = load i32, i32* %fbits, align 4, !dbg !2330, !tbaa !1042
  %shr49 = lshr i32 %39, 8, !dbg !2331
  %and50 = and i32 %shr49, 255, !dbg !2332
  %conv51 = trunc i32 %and50 to i8, !dbg !2333
  %40 = load i8*, i8** %p.addr, align 8, !dbg !2334, !tbaa !1048
  store i8 %conv51, i8* %40, align 1, !dbg !2335, !tbaa !1323
  %41 = load i32, i32* %incr, align 4, !dbg !2336, !tbaa !1042
  %42 = load i8*, i8** %p.addr, align 8, !dbg !2337, !tbaa !1048
  %idx.ext52 = sext i32 %41 to i64, !dbg !2337
  %add.ptr53 = getelementptr i8, i8* %42, i64 %idx.ext52, !dbg !2337
  store i8* %add.ptr53, i8** %p.addr, align 8, !dbg !2337, !tbaa !1048
  %43 = load i32, i32* %fbits, align 4, !dbg !2338, !tbaa !1042
  %and54 = and i32 %43, 255, !dbg !2339
  %conv55 = trunc i32 %and54 to i8, !dbg !2338
  %44 = load i8*, i8** %p.addr, align 8, !dbg !2340, !tbaa !1048
  store i8 %conv55, i8* %44, align 1, !dbg !2341, !tbaa !1323
  store i32 0, i32* %retval, !dbg !2342
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2342

cleanup:                                          ; preds = %if.then.36, %if.then.15, %if.end.38, %if.else.11
  %45 = bitcast i32* %incr to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 4, i8* %45) #1, !dbg !2343
  %46 = bitcast i32* %fbits to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 4, i8* %46) #1, !dbg !2343
  %47 = bitcast double* %f to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2343
  %48 = bitcast i32* %e to i8*, !dbg !2343
  call void @llvm.lifetime.end(i64 4, i8* %48) #1, !dbg !2343
  call void @llvm.lifetime.end(i64 1, i8* %sign) #1, !dbg !2343
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 1, label %return
    i32 2, label %Overflow
  ]

if.else.60:                                       ; preds = %entry
  %49 = bitcast float* %y to i8*, !dbg !2344
  call void @llvm.lifetime.start(i64 4, i8* %49) #1, !dbg !2344
  call void @llvm.dbg.declare(metadata float* %y, metadata !490, metadata !1038), !dbg !2345
  %50 = load double, double* %x.addr, align 8, !dbg !2346, !tbaa !1190
  %conv61 = fptrunc double %50 to float, !dbg !2347
  store float %conv61, float* %y, align 4, !dbg !2345, !tbaa !2135
  %51 = bitcast i8** %s to i8*, !dbg !2348
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !2348
  call void @llvm.dbg.declare(metadata i8** %s, metadata !492, metadata !1038), !dbg !2349
  %52 = bitcast float* %y to i8*, !dbg !2350
  store i8* %52, i8** %s, align 8, !dbg !2349, !tbaa !1048
  %53 = bitcast i32* %i to i8*, !dbg !2351
  call void @llvm.lifetime.start(i64 4, i8* %53) #1, !dbg !2351
  call void @llvm.dbg.declare(metadata i32* %i, metadata !493, metadata !1038), !dbg !2352
  %54 = bitcast i32* %incr62 to i8*, !dbg !2351
  call void @llvm.lifetime.start(i64 4, i8* %54) #1, !dbg !2351
  call void @llvm.dbg.declare(metadata i32* %incr62, metadata !494, metadata !1038), !dbg !2353
  store i32 1, i32* %incr62, align 4, !dbg !2353, !tbaa !1042
  br i1 true, label %cond.true, label %cond.false, !dbg !2354

cond.true:                                        ; preds = %if.else.60
  %55 = load float, float* %y, align 4, !dbg !2356, !tbaa !2135
  %call63 = call i32 @__isinff(float %55) #2, !dbg !2358
  %tobool64 = icmp ne i32 %call63, 0, !dbg !2358
  br i1 %tobool64, label %land.lhs.true.73, label %if.end.87, !dbg !2359

cond.false:                                       ; preds = %if.else.60
  br i1 false, label %cond.true.65, label %cond.false.69, !dbg !2360

cond.true.65:                                     ; preds = %cond.false
  %56 = load float, float* %y, align 4, !dbg !2362, !tbaa !2135
  %conv66 = fpext float %56 to double, !dbg !2362
  %call67 = call i32 @__isinf(double %conv66) #2, !dbg !2364
  %tobool68 = icmp ne i32 %call67, 0, !dbg !2364
  br i1 %tobool68, label %land.lhs.true.73, label %if.end.87, !dbg !2365

cond.false.69:                                    ; preds = %cond.false
  %57 = load float, float* %y, align 4, !dbg !2366, !tbaa !2135
  %conv70 = fpext float %57 to x86_fp80, !dbg !2366
  %call71 = call i32 @__isinfl(x86_fp80 %conv70) #2, !dbg !2368
  %tobool72 = icmp ne i32 %call71, 0, !dbg !2368
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.87, !dbg !2354

land.lhs.true.73:                                 ; preds = %cond.false.69, %cond.true.65, %cond.true
  br i1 false, label %cond.true.74, label %cond.false.78, !dbg !2369

cond.true.74:                                     ; preds = %land.lhs.true.73
  %58 = load double, double* %x.addr, align 8, !dbg !2373, !tbaa !1190
  %conv75 = fptrunc double %58 to float, !dbg !2373
  %call76 = call i32 @__isinff(float %conv75) #2, !dbg !2375
  %tobool77 = icmp ne i32 %call76, 0, !dbg !2375
  br i1 %tobool77, label %if.end.87, label %if.then.86, !dbg !2376

cond.false.78:                                    ; preds = %land.lhs.true.73
  br i1 true, label %cond.true.79, label %cond.false.82, !dbg !2377

cond.true.79:                                     ; preds = %cond.false.78
  %59 = load double, double* %x.addr, align 8, !dbg !2379, !tbaa !1190
  %call80 = call i32 @__isinf(double %59) #2, !dbg !2381
  %tobool81 = icmp ne i32 %call80, 0, !dbg !2381
  br i1 %tobool81, label %if.end.87, label %if.then.86, !dbg !2382

cond.false.82:                                    ; preds = %cond.false.78
  %60 = load double, double* %x.addr, align 8, !dbg !2383, !tbaa !1190
  %conv83 = fpext double %60 to x86_fp80, !dbg !2383
  %call84 = call i32 @__isinfl(x86_fp80 %conv83) #2, !dbg !2385
  %tobool85 = icmp ne i32 %call84, 0, !dbg !2385
  br i1 %tobool85, label %if.end.87, label %if.then.86, !dbg !2386

if.then.86:                                       ; preds = %cond.false.82, %cond.true.79, %cond.true.74
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.104, !dbg !2387

if.end.87:                                        ; preds = %cond.false.82, %cond.true.79, %cond.true.74, %cond.false.69, %cond.true.65, %cond.true
  %61 = load i32, i32* @float_format, align 4, !dbg !2388, !tbaa !1323
  %cmp88 = icmp eq i32 %61, 2, !dbg !2390
  br i1 %cmp88, label %land.lhs.true.90, label %lor.lhs.false, !dbg !2391

land.lhs.true.90:                                 ; preds = %if.end.87
  %62 = load i32, i32* %le.addr, align 4, !dbg !2392, !tbaa !1042
  %tobool91 = icmp ne i32 %62, 0, !dbg !2392
  br i1 %tobool91, label %lor.lhs.false, label %if.then.96, !dbg !2394

lor.lhs.false:                                    ; preds = %land.lhs.true.90, %if.end.87
  %63 = load i32, i32* @float_format, align 4, !dbg !2395, !tbaa !1323
  %cmp92 = icmp eq i32 %63, 1, !dbg !2396
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.98, !dbg !2397

land.lhs.true.94:                                 ; preds = %lor.lhs.false
  %64 = load i32, i32* %le.addr, align 4, !dbg !2398, !tbaa !1042
  %tobool95 = icmp ne i32 %64, 0, !dbg !2398
  br i1 %tobool95, label %if.then.96, label %if.end.98, !dbg !2400

if.then.96:                                       ; preds = %land.lhs.true.94, %land.lhs.true.90
  %65 = load i8*, i8** %p.addr, align 8, !dbg !2401, !tbaa !1048
  %add.ptr97 = getelementptr i8, i8* %65, i64 3, !dbg !2401
  store i8* %add.ptr97, i8** %p.addr, align 8, !dbg !2401, !tbaa !1048
  store i32 -1, i32* %incr62, align 4, !dbg !2403, !tbaa !1042
  br label %if.end.98, !dbg !2404

if.end.98:                                        ; preds = %if.then.96, %land.lhs.true.94, %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !2405, !tbaa !1042
  br label %for.cond, !dbg !2407

for.cond:                                         ; preds = %for.inc, %if.end.98
  %66 = load i32, i32* %i, align 4, !dbg !2408, !tbaa !1042
  %cmp99 = icmp slt i32 %66, 4, !dbg !2412
  br i1 %cmp99, label %for.body, label %for.end, !dbg !2413

for.body:                                         ; preds = %for.cond
  %67 = load i8*, i8** %s, align 8, !dbg !2414, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %67, i32 1, !dbg !2414
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !2414, !tbaa !1048
  %68 = load i8, i8* %67, align 1, !dbg !2416, !tbaa !1323
  %69 = load i8*, i8** %p.addr, align 8, !dbg !2417, !tbaa !1048
  store i8 %68, i8* %69, align 1, !dbg !2418, !tbaa !1323
  %70 = load i32, i32* %incr62, align 4, !dbg !2419, !tbaa !1042
  %71 = load i8*, i8** %p.addr, align 8, !dbg !2420, !tbaa !1048
  %idx.ext101 = sext i32 %70 to i64, !dbg !2420
  %add.ptr102 = getelementptr i8, i8* %71, i64 %idx.ext101, !dbg !2420
  store i8* %add.ptr102, i8** %p.addr, align 8, !dbg !2420, !tbaa !1048
  br label %for.inc, !dbg !2421

for.inc:                                          ; preds = %for.body
  %72 = load i32, i32* %i, align 4, !dbg !2422, !tbaa !1042
  %inc103 = add i32 %72, 1, !dbg !2422
  store i32 %inc103, i32* %i, align 4, !dbg !2422, !tbaa !1042
  br label %for.cond, !dbg !2423

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2424
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.104, !dbg !2424

cleanup.104:                                      ; preds = %if.then.86, %for.end
  %73 = bitcast i32* %incr62 to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 4, i8* %73) #1, !dbg !2425
  %74 = bitcast i32* %i to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 4, i8* %74) #1, !dbg !2425
  %75 = bitcast i8** %s to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !2425
  %76 = bitcast float* %y to i8*, !dbg !2425
  call void @llvm.lifetime.end(i64 4, i8* %76) #1, !dbg !2425
  %cleanup.dest.108 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.108, label %unreachable [
    i32 1, label %return
    i32 2, label %Overflow
  ]

Overflow:                                         ; preds = %cleanup.104, %cleanup
  %77 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2426, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0)), !dbg !2427
  store i32 -1, i32* %retval, !dbg !2428
  br label %return, !dbg !2428

return:                                           ; preds = %Overflow, %cleanup.104, %cleanup
  %78 = load i32, i32* %retval, !dbg !2429
  ret i32 %78, !dbg !2429

unreachable:                                      ; preds = %cleanup.104, %cleanup
  unreachable
}

; Function Attrs: nounwind
declare double @frexp(double, i32*) #5

; Function Attrs: nounwind
declare double @ldexp(double, i32) #5

; Function Attrs: nounwind readnone
declare i32 @__isinff(float) #6

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #6

; Function Attrs: nounwind readnone
declare i32 @__isinfl(x86_fp80) #6

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
  %cleanup.dest.slot = alloca i32
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %incr90 = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1190
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !497, metadata !1038), !dbg !2430
  store i8* %p, i8** %p.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !498, metadata !1038), !dbg !2431
  store i32 %le, i32* %le.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !499, metadata !1038), !dbg !2432
  %0 = load i32, i32* @double_format, align 4, !dbg !2433, !tbaa !1323
  %cmp = icmp eq i32 %0, 0, !dbg !2434
  br i1 %cmp, label %if.then, label %if.else.89, !dbg !2435

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %sign) #1, !dbg !2436
  call void @llvm.dbg.declare(metadata i8* %sign, metadata !500, metadata !1038), !dbg !2437
  %1 = bitcast i32* %e to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2438
  call void @llvm.dbg.declare(metadata i32* %e, metadata !503, metadata !1038), !dbg !2439
  %2 = bitcast double* %f to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2440
  call void @llvm.dbg.declare(metadata double* %f, metadata !504, metadata !1038), !dbg !2441
  %3 = bitcast i32* %fhi to i8*, !dbg !2442
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2442
  call void @llvm.dbg.declare(metadata i32* %fhi, metadata !505, metadata !1038), !dbg !2443
  %4 = bitcast i32* %flo to i8*, !dbg !2442
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2442
  call void @llvm.dbg.declare(metadata i32* %flo, metadata !506, metadata !1038), !dbg !2444
  %5 = bitcast i32* %incr to i8*, !dbg !2445
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2445
  call void @llvm.dbg.declare(metadata i32* %incr, metadata !507, metadata !1038), !dbg !2446
  store i32 1, i32* %incr, align 4, !dbg !2446, !tbaa !1042
  %6 = load i32, i32* %le.addr, align 4, !dbg !2447, !tbaa !1042
  %tobool = icmp ne i32 %6, 0, !dbg !2447
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !2449

if.then.1:                                        ; preds = %if.then
  %7 = load i8*, i8** %p.addr, align 8, !dbg !2450, !tbaa !1048
  %add.ptr = getelementptr i8, i8* %7, i64 7, !dbg !2450
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !2450, !tbaa !1048
  store i32 -1, i32* %incr, align 4, !dbg !2452, !tbaa !1042
  br label %if.end, !dbg !2453

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load double, double* %x.addr, align 8, !dbg !2454, !tbaa !1190
  %cmp2 = fcmp olt double %8, 0.000000e+00, !dbg !2456
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2457

if.then.3:                                        ; preds = %if.end
  store i8 1, i8* %sign, align 1, !dbg !2458, !tbaa !1323
  %9 = load double, double* %x.addr, align 8, !dbg !2460, !tbaa !1190
  %sub = fsub double -0.000000e+00, %9, !dbg !2461
  store double %sub, double* %x.addr, align 8, !dbg !2462, !tbaa !1190
  br label %if.end.4, !dbg !2463

if.else:                                          ; preds = %if.end
  store i8 0, i8* %sign, align 1, !dbg !2464, !tbaa !1323
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %10 = load double, double* %x.addr, align 8, !dbg !2465, !tbaa !1190
  %call = call double @frexp(double %10, i32* %e) #1, !dbg !2466
  store double %call, double* %f, align 8, !dbg !2467, !tbaa !1190
  %11 = load double, double* %f, align 8, !dbg !2468, !tbaa !1190
  %cmp5 = fcmp ole double 5.000000e-01, %11, !dbg !2470
  br i1 %cmp5, label %land.lhs.true, label %if.else.8, !dbg !2471

land.lhs.true:                                    ; preds = %if.end.4
  %12 = load double, double* %f, align 8, !dbg !2472, !tbaa !1190
  %cmp6 = fcmp olt double %12, 1.000000e+00, !dbg !2474
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !2475

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load double, double* %f, align 8, !dbg !2476, !tbaa !1190
  %mul = fmul double %13, 2.000000e+00, !dbg !2476
  store double %mul, double* %f, align 8, !dbg !2476, !tbaa !1190
  %14 = load i32, i32* %e, align 4, !dbg !2478, !tbaa !1042
  %dec = add i32 %14, -1, !dbg !2478
  store i32 %dec, i32* %e, align 4, !dbg !2478, !tbaa !1042
  br label %if.end.13, !dbg !2479

if.else.8:                                        ; preds = %land.lhs.true, %if.end.4
  %15 = load double, double* %f, align 8, !dbg !2480, !tbaa !1190
  %cmp9 = fcmp oeq double %15, 0.000000e+00, !dbg !2482
  br i1 %cmp9, label %if.then.10, label %if.else.11, !dbg !2483

if.then.10:                                       ; preds = %if.else.8
  store i32 0, i32* %e, align 4, !dbg !2484, !tbaa !1042
  br label %if.end.12, !dbg !2485

if.else.11:                                       ; preds = %if.else.8
  %16 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !2486, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0)), !dbg !2488
  store i32 -1, i32* %retval, !dbg !2489
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2489

if.end.12:                                        ; preds = %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.7
  %17 = load i32, i32* %e, align 4, !dbg !2490, !tbaa !1042
  %cmp14 = icmp sge i32 %17, 1024, !dbg !2492
  br i1 %cmp14, label %if.then.15, label %if.else.16, !dbg !2493

if.then.15:                                       ; preds = %if.end.13
  br label %Overflow, !dbg !2494

if.else.16:                                       ; preds = %if.end.13
  %18 = load i32, i32* %e, align 4, !dbg !2495, !tbaa !1042
  %cmp17 = icmp slt i32 %18, -1022, !dbg !2497
  br i1 %cmp17, label %if.then.18, label %if.else.20, !dbg !2498

if.then.18:                                       ; preds = %if.else.16
  %19 = load double, double* %f, align 8, !dbg !2499, !tbaa !1190
  %20 = load i32, i32* %e, align 4, !dbg !2501, !tbaa !1042
  %add = add i32 1022, %20, !dbg !2502
  %call19 = call double @ldexp(double %19, i32 %add) #1, !dbg !2503
  store double %call19, double* %f, align 8, !dbg !2504, !tbaa !1190
  store i32 0, i32* %e, align 4, !dbg !2505, !tbaa !1042
  br label %if.end.28, !dbg !2506

if.else.20:                                       ; preds = %if.else.16
  %21 = load i32, i32* %e, align 4, !dbg !2507, !tbaa !1042
  %cmp21 = icmp eq i32 %21, 0, !dbg !2509
  br i1 %cmp21, label %land.lhs.true.22, label %if.then.24, !dbg !2510

land.lhs.true.22:                                 ; preds = %if.else.20
  %22 = load double, double* %f, align 8, !dbg !2511, !tbaa !1190
  %cmp23 = fcmp oeq double %22, 0.000000e+00, !dbg !2513
  br i1 %cmp23, label %if.end.27, label %if.then.24, !dbg !2514

if.then.24:                                       ; preds = %land.lhs.true.22, %if.else.20
  %23 = load i32, i32* %e, align 4, !dbg !2515, !tbaa !1042
  %add25 = add i32 %23, 1023, !dbg !2515
  store i32 %add25, i32* %e, align 4, !dbg !2515, !tbaa !1042
  %24 = load double, double* %f, align 8, !dbg !2517, !tbaa !1190
  %sub26 = fsub double %24, 1.000000e+00, !dbg !2517
  store double %sub26, double* %f, align 8, !dbg !2517, !tbaa !1190
  br label %if.end.27, !dbg !2518

if.end.27:                                        ; preds = %if.then.24, %land.lhs.true.22
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  %25 = load double, double* %f, align 8, !dbg !2519, !tbaa !1190
  %mul30 = fmul double %25, 0x41B0000000000000, !dbg !2519
  store double %mul30, double* %f, align 8, !dbg !2519, !tbaa !1190
  %26 = load double, double* %f, align 8, !dbg !2520, !tbaa !1190
  %conv = fptoui double %26 to i32, !dbg !2521
  store i32 %conv, i32* %fhi, align 4, !dbg !2522, !tbaa !1042
  %27 = load i32, i32* %fhi, align 4, !dbg !2523, !tbaa !1042
  %conv31 = uitofp i32 %27 to double, !dbg !2524
  %28 = load double, double* %f, align 8, !dbg !2525, !tbaa !1190
  %sub32 = fsub double %28, %conv31, !dbg !2525
  store double %sub32, double* %f, align 8, !dbg !2525, !tbaa !1190
  %29 = load double, double* %f, align 8, !dbg !2526, !tbaa !1190
  %mul33 = fmul double %29, 0x4170000000000000, !dbg !2526
  store double %mul33, double* %f, align 8, !dbg !2526, !tbaa !1190
  %30 = load double, double* %f, align 8, !dbg !2527, !tbaa !1190
  %add34 = fadd double %30, 5.000000e-01, !dbg !2528
  %conv35 = fptoui double %add34 to i32, !dbg !2529
  store i32 %conv35, i32* %flo, align 4, !dbg !2530, !tbaa !1042
  %31 = load i32, i32* %flo, align 4, !dbg !2531, !tbaa !1042
  %shr = lshr i32 %31, 24, !dbg !2533
  %tobool36 = icmp ne i32 %shr, 0, !dbg !2533
  br i1 %tobool36, label %if.then.37, label %if.end.47, !dbg !2534

if.then.37:                                       ; preds = %if.end.29
  store i32 0, i32* %flo, align 4, !dbg !2535, !tbaa !1042
  %32 = load i32, i32* %fhi, align 4, !dbg !2537, !tbaa !1042
  %inc = add i32 %32, 1, !dbg !2537
  store i32 %inc, i32* %fhi, align 4, !dbg !2537, !tbaa !1042
  %33 = load i32, i32* %fhi, align 4, !dbg !2538, !tbaa !1042
  %shr38 = lshr i32 %33, 28, !dbg !2540
  %tobool39 = icmp ne i32 %shr38, 0, !dbg !2540
  br i1 %tobool39, label %if.then.40, label %if.end.46, !dbg !2541

if.then.40:                                       ; preds = %if.then.37
  store i32 0, i32* %fhi, align 4, !dbg !2542, !tbaa !1042
  %34 = load i32, i32* %e, align 4, !dbg !2544, !tbaa !1042
  %inc41 = add i32 %34, 1, !dbg !2544
  store i32 %inc41, i32* %e, align 4, !dbg !2544, !tbaa !1042
  %35 = load i32, i32* %e, align 4, !dbg !2545, !tbaa !1042
  %cmp42 = icmp sge i32 %35, 2047, !dbg !2547
  br i1 %cmp42, label %if.then.44, label %if.end.45, !dbg !2548

if.then.44:                                       ; preds = %if.then.40
  br label %Overflow, !dbg !2549

if.end.45:                                        ; preds = %if.then.40
  br label %if.end.46, !dbg !2550

if.end.46:                                        ; preds = %if.end.45, %if.then.37
  br label %if.end.47, !dbg !2551

if.end.47:                                        ; preds = %if.end.46, %if.end.29
  %36 = load i8, i8* %sign, align 1, !dbg !2552, !tbaa !1323
  %conv48 = zext i8 %36 to i32, !dbg !2552
  %shl = shl i32 %conv48, 7, !dbg !2553
  %37 = load i32, i32* %e, align 4, !dbg !2554, !tbaa !1042
  %shr49 = ashr i32 %37, 4, !dbg !2555
  %or = or i32 %shl, %shr49, !dbg !2556
  %conv50 = trunc i32 %or to i8, !dbg !2557
  %38 = load i8*, i8** %p.addr, align 8, !dbg !2558, !tbaa !1048
  store i8 %conv50, i8* %38, align 1, !dbg !2559, !tbaa !1323
  %39 = load i32, i32* %incr, align 4, !dbg !2560, !tbaa !1042
  %40 = load i8*, i8** %p.addr, align 8, !dbg !2561, !tbaa !1048
  %idx.ext = sext i32 %39 to i64, !dbg !2561
  %add.ptr51 = getelementptr i8, i8* %40, i64 %idx.ext, !dbg !2561
  store i8* %add.ptr51, i8** %p.addr, align 8, !dbg !2561, !tbaa !1048
  %41 = load i32, i32* %e, align 4, !dbg !2562, !tbaa !1042
  %and = and i32 %41, 15, !dbg !2563
  %shl52 = shl i32 %and, 4, !dbg !2564
  %42 = load i32, i32* %fhi, align 4, !dbg !2565, !tbaa !1042
  %shr53 = lshr i32 %42, 24, !dbg !2566
  %or54 = or i32 %shl52, %shr53, !dbg !2567
  %conv55 = trunc i32 %or54 to i8, !dbg !2568
  %43 = load i8*, i8** %p.addr, align 8, !dbg !2569, !tbaa !1048
  store i8 %conv55, i8* %43, align 1, !dbg !2570, !tbaa !1323
  %44 = load i32, i32* %incr, align 4, !dbg !2571, !tbaa !1042
  %45 = load i8*, i8** %p.addr, align 8, !dbg !2572, !tbaa !1048
  %idx.ext56 = sext i32 %44 to i64, !dbg !2572
  %add.ptr57 = getelementptr i8, i8* %45, i64 %idx.ext56, !dbg !2572
  store i8* %add.ptr57, i8** %p.addr, align 8, !dbg !2572, !tbaa !1048
  %46 = load i32, i32* %fhi, align 4, !dbg !2573, !tbaa !1042
  %shr58 = lshr i32 %46, 16, !dbg !2574
  %and59 = and i32 %shr58, 255, !dbg !2575
  %conv60 = trunc i32 %and59 to i8, !dbg !2576
  %47 = load i8*, i8** %p.addr, align 8, !dbg !2577, !tbaa !1048
  store i8 %conv60, i8* %47, align 1, !dbg !2578, !tbaa !1323
  %48 = load i32, i32* %incr, align 4, !dbg !2579, !tbaa !1042
  %49 = load i8*, i8** %p.addr, align 8, !dbg !2580, !tbaa !1048
  %idx.ext61 = sext i32 %48 to i64, !dbg !2580
  %add.ptr62 = getelementptr i8, i8* %49, i64 %idx.ext61, !dbg !2580
  store i8* %add.ptr62, i8** %p.addr, align 8, !dbg !2580, !tbaa !1048
  %50 = load i32, i32* %fhi, align 4, !dbg !2581, !tbaa !1042
  %shr63 = lshr i32 %50, 8, !dbg !2582
  %and64 = and i32 %shr63, 255, !dbg !2583
  %conv65 = trunc i32 %and64 to i8, !dbg !2584
  %51 = load i8*, i8** %p.addr, align 8, !dbg !2585, !tbaa !1048
  store i8 %conv65, i8* %51, align 1, !dbg !2586, !tbaa !1323
  %52 = load i32, i32* %incr, align 4, !dbg !2587, !tbaa !1042
  %53 = load i8*, i8** %p.addr, align 8, !dbg !2588, !tbaa !1048
  %idx.ext66 = sext i32 %52 to i64, !dbg !2588
  %add.ptr67 = getelementptr i8, i8* %53, i64 %idx.ext66, !dbg !2588
  store i8* %add.ptr67, i8** %p.addr, align 8, !dbg !2588, !tbaa !1048
  %54 = load i32, i32* %fhi, align 4, !dbg !2589, !tbaa !1042
  %and68 = and i32 %54, 255, !dbg !2590
  %conv69 = trunc i32 %and68 to i8, !dbg !2589
  %55 = load i8*, i8** %p.addr, align 8, !dbg !2591, !tbaa !1048
  store i8 %conv69, i8* %55, align 1, !dbg !2592, !tbaa !1323
  %56 = load i32, i32* %incr, align 4, !dbg !2593, !tbaa !1042
  %57 = load i8*, i8** %p.addr, align 8, !dbg !2594, !tbaa !1048
  %idx.ext70 = sext i32 %56 to i64, !dbg !2594
  %add.ptr71 = getelementptr i8, i8* %57, i64 %idx.ext70, !dbg !2594
  store i8* %add.ptr71, i8** %p.addr, align 8, !dbg !2594, !tbaa !1048
  %58 = load i32, i32* %flo, align 4, !dbg !2595, !tbaa !1042
  %shr72 = lshr i32 %58, 16, !dbg !2596
  %and73 = and i32 %shr72, 255, !dbg !2597
  %conv74 = trunc i32 %and73 to i8, !dbg !2598
  %59 = load i8*, i8** %p.addr, align 8, !dbg !2599, !tbaa !1048
  store i8 %conv74, i8* %59, align 1, !dbg !2600, !tbaa !1323
  %60 = load i32, i32* %incr, align 4, !dbg !2601, !tbaa !1042
  %61 = load i8*, i8** %p.addr, align 8, !dbg !2602, !tbaa !1048
  %idx.ext75 = sext i32 %60 to i64, !dbg !2602
  %add.ptr76 = getelementptr i8, i8* %61, i64 %idx.ext75, !dbg !2602
  store i8* %add.ptr76, i8** %p.addr, align 8, !dbg !2602, !tbaa !1048
  %62 = load i32, i32* %flo, align 4, !dbg !2603, !tbaa !1042
  %shr77 = lshr i32 %62, 8, !dbg !2604
  %and78 = and i32 %shr77, 255, !dbg !2605
  %conv79 = trunc i32 %and78 to i8, !dbg !2606
  %63 = load i8*, i8** %p.addr, align 8, !dbg !2607, !tbaa !1048
  store i8 %conv79, i8* %63, align 1, !dbg !2608, !tbaa !1323
  %64 = load i32, i32* %incr, align 4, !dbg !2609, !tbaa !1042
  %65 = load i8*, i8** %p.addr, align 8, !dbg !2610, !tbaa !1048
  %idx.ext80 = sext i32 %64 to i64, !dbg !2610
  %add.ptr81 = getelementptr i8, i8* %65, i64 %idx.ext80, !dbg !2610
  store i8* %add.ptr81, i8** %p.addr, align 8, !dbg !2610, !tbaa !1048
  %66 = load i32, i32* %flo, align 4, !dbg !2611, !tbaa !1042
  %and82 = and i32 %66, 255, !dbg !2612
  %conv83 = trunc i32 %and82 to i8, !dbg !2611
  %67 = load i8*, i8** %p.addr, align 8, !dbg !2613, !tbaa !1048
  store i8 %conv83, i8* %67, align 1, !dbg !2614, !tbaa !1323
  store i32 0, i32* %retval, !dbg !2615
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2615

Overflow:                                         ; preds = %if.then.44, %if.then.15
  %68 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2616, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0)), !dbg !2617
  store i32 -1, i32* %retval, !dbg !2618
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2618

cleanup:                                          ; preds = %Overflow, %if.end.47, %if.else.11
  %69 = bitcast i32* %incr to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 4, i8* %69) #1, !dbg !2619
  %70 = bitcast i32* %flo to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 4, i8* %70) #1, !dbg !2619
  %71 = bitcast i32* %fhi to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 4, i8* %71) #1, !dbg !2619
  %72 = bitcast double* %f to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !2619
  %73 = bitcast i32* %e to i8*, !dbg !2619
  call void @llvm.lifetime.end(i64 4, i8* %73) #1, !dbg !2619
  call void @llvm.lifetime.end(i64 1, i8* %sign) #1, !dbg !2619
  br label %return

if.else.89:                                       ; preds = %entry
  %74 = bitcast i8** %s to i8*, !dbg !2620
  call void @llvm.lifetime.start(i64 8, i8* %74) #1, !dbg !2620
  call void @llvm.dbg.declare(metadata i8** %s, metadata !508, metadata !1038), !dbg !2621
  %75 = bitcast double* %x.addr to i8*, !dbg !2622
  store i8* %75, i8** %s, align 8, !dbg !2621, !tbaa !1048
  %76 = bitcast i32* %i to i8*, !dbg !2623
  call void @llvm.lifetime.start(i64 4, i8* %76) #1, !dbg !2623
  call void @llvm.dbg.declare(metadata i32* %i, metadata !510, metadata !1038), !dbg !2624
  %77 = bitcast i32* %incr90 to i8*, !dbg !2623
  call void @llvm.lifetime.start(i64 4, i8* %77) #1, !dbg !2623
  call void @llvm.dbg.declare(metadata i32* %incr90, metadata !511, metadata !1038), !dbg !2625
  store i32 1, i32* %incr90, align 4, !dbg !2625, !tbaa !1042
  %78 = load i32, i32* @double_format, align 4, !dbg !2626, !tbaa !1323
  %cmp91 = icmp eq i32 %78, 2, !dbg !2628
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false, !dbg !2629

land.lhs.true.93:                                 ; preds = %if.else.89
  %79 = load i32, i32* %le.addr, align 4, !dbg !2630, !tbaa !1042
  %tobool94 = icmp ne i32 %79, 0, !dbg !2630
  br i1 %tobool94, label %lor.lhs.false, label %if.then.99, !dbg !2632

lor.lhs.false:                                    ; preds = %land.lhs.true.93, %if.else.89
  %80 = load i32, i32* @double_format, align 4, !dbg !2633, !tbaa !1323
  %cmp95 = icmp eq i32 %80, 1, !dbg !2634
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.101, !dbg !2635

land.lhs.true.97:                                 ; preds = %lor.lhs.false
  %81 = load i32, i32* %le.addr, align 4, !dbg !2636, !tbaa !1042
  %tobool98 = icmp ne i32 %81, 0, !dbg !2636
  br i1 %tobool98, label %if.then.99, label %if.end.101, !dbg !2638

if.then.99:                                       ; preds = %land.lhs.true.97, %land.lhs.true.93
  %82 = load i8*, i8** %p.addr, align 8, !dbg !2639, !tbaa !1048
  %add.ptr100 = getelementptr i8, i8* %82, i64 7, !dbg !2639
  store i8* %add.ptr100, i8** %p.addr, align 8, !dbg !2639, !tbaa !1048
  store i32 -1, i32* %incr90, align 4, !dbg !2641, !tbaa !1042
  br label %if.end.101, !dbg !2642

if.end.101:                                       ; preds = %if.then.99, %land.lhs.true.97, %lor.lhs.false
  store i32 0, i32* %i, align 4, !dbg !2643, !tbaa !1042
  br label %for.cond, !dbg !2645

for.cond:                                         ; preds = %for.inc, %if.end.101
  %83 = load i32, i32* %i, align 4, !dbg !2646, !tbaa !1042
  %cmp102 = icmp slt i32 %83, 8, !dbg !2650
  br i1 %cmp102, label %for.body, label %for.end, !dbg !2651

for.body:                                         ; preds = %for.cond
  %84 = load i8*, i8** %s, align 8, !dbg !2652, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %84, i32 1, !dbg !2652
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !2652, !tbaa !1048
  %85 = load i8, i8* %84, align 1, !dbg !2654, !tbaa !1323
  %86 = load i8*, i8** %p.addr, align 8, !dbg !2655, !tbaa !1048
  store i8 %85, i8* %86, align 1, !dbg !2656, !tbaa !1323
  %87 = load i32, i32* %incr90, align 4, !dbg !2657, !tbaa !1042
  %88 = load i8*, i8** %p.addr, align 8, !dbg !2658, !tbaa !1048
  %idx.ext104 = sext i32 %87 to i64, !dbg !2658
  %add.ptr105 = getelementptr i8, i8* %88, i64 %idx.ext104, !dbg !2658
  store i8* %add.ptr105, i8** %p.addr, align 8, !dbg !2658, !tbaa !1048
  br label %for.inc, !dbg !2659

for.inc:                                          ; preds = %for.body
  %89 = load i32, i32* %i, align 4, !dbg !2660, !tbaa !1042
  %inc106 = add i32 %89, 1, !dbg !2660
  store i32 %inc106, i32* %i, align 4, !dbg !2660, !tbaa !1042
  br label %for.cond, !dbg !2661

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !2662
  store i32 1, i32* %cleanup.dest.slot
  %90 = bitcast i32* %incr90 to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 4, i8* %90) #1, !dbg !2663
  %91 = bitcast i32* %i to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 4, i8* %91) #1, !dbg !2663
  %92 = bitcast i8** %s to i8*, !dbg !2663
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !2663
  br label %return

return:                                           ; preds = %for.end, %cleanup
  %93 = load i32, i32* %retval, !dbg !2664
  ret i32 %93, !dbg !2664
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
  %cleanup.dest.slot = alloca i32
  %x39 = alloca float, align 4
  %buf = alloca [4 x i8], align 1
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !516, metadata !1038), !dbg !2665
  store i32 %le, i32* %le.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !517, metadata !1038), !dbg !2666
  %0 = load i32, i32* @float_format, align 4, !dbg !2667, !tbaa !1323
  %cmp = icmp eq i32 %0, 0, !dbg !2668
  br i1 %cmp, label %if.then, label %if.else.38, !dbg !2669

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %sign) #1, !dbg !2670
  call void @llvm.dbg.declare(metadata i8* %sign, metadata !518, metadata !1038), !dbg !2671
  %1 = bitcast i32* %e to i8*, !dbg !2672
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2672
  call void @llvm.dbg.declare(metadata i32* %e, metadata !521, metadata !1038), !dbg !2673
  %2 = bitcast i32* %f to i8*, !dbg !2674
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2674
  call void @llvm.dbg.declare(metadata i32* %f, metadata !522, metadata !1038), !dbg !2675
  %3 = bitcast double* %x to i8*, !dbg !2676
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2676
  call void @llvm.dbg.declare(metadata double* %x, metadata !523, metadata !1038), !dbg !2677
  %4 = bitcast i32* %incr to i8*, !dbg !2678
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !2678
  call void @llvm.dbg.declare(metadata i32* %incr, metadata !524, metadata !1038), !dbg !2679
  store i32 1, i32* %incr, align 4, !dbg !2679, !tbaa !1042
  %5 = load i32, i32* %le.addr, align 4, !dbg !2680, !tbaa !1042
  %tobool = icmp ne i32 %5, 0, !dbg !2680
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !2682

if.then.1:                                        ; preds = %if.then
  %6 = load i8*, i8** %p.addr, align 8, !dbg !2683, !tbaa !1048
  %add.ptr = getelementptr i8, i8* %6, i64 3, !dbg !2683
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !2683, !tbaa !1048
  store i32 -1, i32* %incr, align 4, !dbg !2685, !tbaa !1042
  br label %if.end, !dbg !2686

if.end:                                           ; preds = %if.then.1, %if.then
  %7 = load i8*, i8** %p.addr, align 8, !dbg !2687, !tbaa !1048
  %8 = load i8, i8* %7, align 1, !dbg !2688, !tbaa !1323
  %conv = zext i8 %8 to i32, !dbg !2688
  %shr = ashr i32 %conv, 7, !dbg !2689
  %and = and i32 %shr, 1, !dbg !2690
  %conv2 = trunc i32 %and to i8, !dbg !2691
  store i8 %conv2, i8* %sign, align 1, !dbg !2692, !tbaa !1323
  %9 = load i8*, i8** %p.addr, align 8, !dbg !2693, !tbaa !1048
  %10 = load i8, i8* %9, align 1, !dbg !2694, !tbaa !1323
  %conv3 = zext i8 %10 to i32, !dbg !2694
  %and4 = and i32 %conv3, 127, !dbg !2695
  %shl = shl i32 %and4, 1, !dbg !2696
  store i32 %shl, i32* %e, align 4, !dbg !2697, !tbaa !1042
  %11 = load i32, i32* %incr, align 4, !dbg !2698, !tbaa !1042
  %12 = load i8*, i8** %p.addr, align 8, !dbg !2699, !tbaa !1048
  %idx.ext = sext i32 %11 to i64, !dbg !2699
  %add.ptr5 = getelementptr i8, i8* %12, i64 %idx.ext, !dbg !2699
  store i8* %add.ptr5, i8** %p.addr, align 8, !dbg !2699, !tbaa !1048
  %13 = load i8*, i8** %p.addr, align 8, !dbg !2700, !tbaa !1048
  %14 = load i8, i8* %13, align 1, !dbg !2701, !tbaa !1323
  %conv6 = zext i8 %14 to i32, !dbg !2701
  %shr7 = ashr i32 %conv6, 7, !dbg !2702
  %and8 = and i32 %shr7, 1, !dbg !2703
  %15 = load i32, i32* %e, align 4, !dbg !2704, !tbaa !1042
  %or = or i32 %15, %and8, !dbg !2704
  store i32 %or, i32* %e, align 4, !dbg !2704, !tbaa !1042
  %16 = load i8*, i8** %p.addr, align 8, !dbg !2705, !tbaa !1048
  %17 = load i8, i8* %16, align 1, !dbg !2706, !tbaa !1323
  %conv9 = zext i8 %17 to i32, !dbg !2706
  %and10 = and i32 %conv9, 127, !dbg !2707
  %shl11 = shl i32 %and10, 16, !dbg !2708
  store i32 %shl11, i32* %f, align 4, !dbg !2709, !tbaa !1042
  %18 = load i32, i32* %incr, align 4, !dbg !2710, !tbaa !1042
  %19 = load i8*, i8** %p.addr, align 8, !dbg !2711, !tbaa !1048
  %idx.ext12 = sext i32 %18 to i64, !dbg !2711
  %add.ptr13 = getelementptr i8, i8* %19, i64 %idx.ext12, !dbg !2711
  store i8* %add.ptr13, i8** %p.addr, align 8, !dbg !2711, !tbaa !1048
  %20 = load i32, i32* %e, align 4, !dbg !2712, !tbaa !1042
  %cmp14 = icmp eq i32 %20, 255, !dbg !2714
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !2715

if.then.16:                                       ; preds = %if.end
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2716, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0)), !dbg !2718
  store double -1.000000e+00, double* %retval, !dbg !2719
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2719

if.end.17:                                        ; preds = %if.end
  %22 = load i8*, i8** %p.addr, align 8, !dbg !2720, !tbaa !1048
  %23 = load i8, i8* %22, align 1, !dbg !2721, !tbaa !1323
  %conv18 = zext i8 %23 to i32, !dbg !2721
  %shl19 = shl i32 %conv18, 8, !dbg !2722
  %24 = load i32, i32* %f, align 4, !dbg !2723, !tbaa !1042
  %or20 = or i32 %24, %shl19, !dbg !2723
  store i32 %or20, i32* %f, align 4, !dbg !2723, !tbaa !1042
  %25 = load i32, i32* %incr, align 4, !dbg !2724, !tbaa !1042
  %26 = load i8*, i8** %p.addr, align 8, !dbg !2725, !tbaa !1048
  %idx.ext21 = sext i32 %25 to i64, !dbg !2725
  %add.ptr22 = getelementptr i8, i8* %26, i64 %idx.ext21, !dbg !2725
  store i8* %add.ptr22, i8** %p.addr, align 8, !dbg !2725, !tbaa !1048
  %27 = load i8*, i8** %p.addr, align 8, !dbg !2726, !tbaa !1048
  %28 = load i8, i8* %27, align 1, !dbg !2727, !tbaa !1323
  %conv23 = zext i8 %28 to i32, !dbg !2727
  %29 = load i32, i32* %f, align 4, !dbg !2728, !tbaa !1042
  %or24 = or i32 %29, %conv23, !dbg !2728
  store i32 %or24, i32* %f, align 4, !dbg !2728, !tbaa !1042
  %30 = load i32, i32* %f, align 4, !dbg !2729, !tbaa !1042
  %conv25 = uitofp i32 %30 to double, !dbg !2730
  %div = fdiv double %conv25, 8.388608e+06, !dbg !2731
  store double %div, double* %x, align 8, !dbg !2732, !tbaa !1190
  %31 = load i32, i32* %e, align 4, !dbg !2733, !tbaa !1042
  %cmp26 = icmp eq i32 %31, 0, !dbg !2735
  br i1 %cmp26, label %if.then.28, label %if.else, !dbg !2736

if.then.28:                                       ; preds = %if.end.17
  store i32 -126, i32* %e, align 4, !dbg !2737, !tbaa !1042
  br label %if.end.29, !dbg !2738

if.else:                                          ; preds = %if.end.17
  %32 = load double, double* %x, align 8, !dbg !2739, !tbaa !1190
  %add = fadd double %32, 1.000000e+00, !dbg !2739
  store double %add, double* %x, align 8, !dbg !2739, !tbaa !1190
  %33 = load i32, i32* %e, align 4, !dbg !2741, !tbaa !1042
  %sub = sub i32 %33, 127, !dbg !2741
  store i32 %sub, i32* %e, align 4, !dbg !2741, !tbaa !1042
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %34 = load double, double* %x, align 8, !dbg !2742, !tbaa !1190
  %35 = load i32, i32* %e, align 4, !dbg !2743, !tbaa !1042
  %call = call double @ldexp(double %34, i32 %35) #1, !dbg !2744
  store double %call, double* %x, align 8, !dbg !2745, !tbaa !1190
  %36 = load i8, i8* %sign, align 1, !dbg !2746, !tbaa !1323
  %tobool30 = icmp ne i8 %36, 0, !dbg !2746
  br i1 %tobool30, label %if.then.31, label %if.end.33, !dbg !2748

if.then.31:                                       ; preds = %if.end.29
  %37 = load double, double* %x, align 8, !dbg !2749, !tbaa !1190
  %sub32 = fsub double -0.000000e+00, %37, !dbg !2750
  store double %sub32, double* %x, align 8, !dbg !2751, !tbaa !1190
  br label %if.end.33, !dbg !2752

if.end.33:                                        ; preds = %if.then.31, %if.end.29
  %38 = load double, double* %x, align 8, !dbg !2753, !tbaa !1190
  store double %38, double* %retval, !dbg !2754
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2754

cleanup:                                          ; preds = %if.end.33, %if.then.16
  %39 = bitcast i32* %incr to i8*, !dbg !2755
  call void @llvm.lifetime.end(i64 4, i8* %39) #1, !dbg !2755
  %40 = bitcast double* %x to i8*, !dbg !2755
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2755
  %41 = bitcast i32* %f to i8*, !dbg !2755
  call void @llvm.lifetime.end(i64 4, i8* %41) #1, !dbg !2755
  %42 = bitcast i32* %e to i8*, !dbg !2755
  call void @llvm.lifetime.end(i64 4, i8* %42) #1, !dbg !2755
  call void @llvm.lifetime.end(i64 1, i8* %sign) #1, !dbg !2755
  br label %return

if.else.38:                                       ; preds = %entry
  %43 = bitcast float* %x39 to i8*, !dbg !2756
  call void @llvm.lifetime.start(i64 4, i8* %43) #1, !dbg !2756
  call void @llvm.dbg.declare(metadata float* %x39, metadata !525, metadata !1038), !dbg !2757
  %44 = load i32, i32* @float_format, align 4, !dbg !2758, !tbaa !1323
  %cmp40 = icmp eq i32 %44, 2, !dbg !2759
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false, !dbg !2760

land.lhs.true:                                    ; preds = %if.else.38
  %45 = load i32, i32* %le.addr, align 4, !dbg !2761, !tbaa !1042
  %tobool42 = icmp ne i32 %45, 0, !dbg !2761
  br i1 %tobool42, label %lor.lhs.false, label %if.then.47, !dbg !2763

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.38
  %46 = load i32, i32* @float_format, align 4, !dbg !2764, !tbaa !1323
  %cmp43 = icmp eq i32 %46, 1, !dbg !2765
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.51, !dbg !2766

land.lhs.true.45:                                 ; preds = %lor.lhs.false
  %47 = load i32, i32* %le.addr, align 4, !dbg !2767, !tbaa !1042
  %tobool46 = icmp ne i32 %47, 0, !dbg !2767
  br i1 %tobool46, label %if.then.47, label %if.else.51, !dbg !2769

if.then.47:                                       ; preds = %land.lhs.true.45, %land.lhs.true
  %48 = bitcast [4 x i8]* %buf to i8*, !dbg !2770
  call void @llvm.lifetime.start(i64 4, i8* %48) #1, !dbg !2770
  call void @llvm.dbg.declare(metadata [4 x i8]* %buf, metadata !527, metadata !1038), !dbg !2771
  %49 = bitcast i8** %d to i8*, !dbg !2772
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !2772
  call void @llvm.dbg.declare(metadata i8** %d, metadata !533, metadata !1038), !dbg !2773
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %buf, i32 0, i64 3, !dbg !2774
  store i8* %arrayidx, i8** %d, align 8, !dbg !2773, !tbaa !1048
  %50 = bitcast i32* %i to i8*, !dbg !2775
  call void @llvm.lifetime.start(i64 4, i8* %50) #1, !dbg !2775
  call void @llvm.dbg.declare(metadata i32* %i, metadata !534, metadata !1038), !dbg !2776
  store i32 0, i32* %i, align 4, !dbg !2777, !tbaa !1042
  br label %for.cond, !dbg !2779

for.cond:                                         ; preds = %for.inc, %if.then.47
  %51 = load i32, i32* %i, align 4, !dbg !2780, !tbaa !1042
  %cmp48 = icmp slt i32 %51, 4, !dbg !2784
  br i1 %cmp48, label %for.body, label %for.end, !dbg !2785

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %p.addr, align 8, !dbg !2786, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %52, i32 1, !dbg !2786
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !2786, !tbaa !1048
  %53 = load i8, i8* %52, align 1, !dbg !2788, !tbaa !1323
  %54 = load i8*, i8** %d, align 8, !dbg !2789, !tbaa !1048
  %incdec.ptr50 = getelementptr i8, i8* %54, i32 -1, !dbg !2789
  store i8* %incdec.ptr50, i8** %d, align 8, !dbg !2789, !tbaa !1048
  store i8 %53, i8* %54, align 1, !dbg !2790, !tbaa !1323
  br label %for.inc, !dbg !2791

for.inc:                                          ; preds = %for.body
  %55 = load i32, i32* %i, align 4, !dbg !2792, !tbaa !1042
  %inc = add i32 %55, 1, !dbg !2792
  store i32 %inc, i32* %i, align 4, !dbg !2792, !tbaa !1042
  br label %for.cond, !dbg !2793

for.end:                                          ; preds = %for.cond
  %56 = bitcast float* %x39 to i8*, !dbg !2794
  %57 = bitcast [4 x i8]* %buf to i8*, !dbg !2794
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 4, i32 1, i1 false), !dbg !2794
  %58 = bitcast i32* %i to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %58) #1, !dbg !2795
  %59 = bitcast i8** %d to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !2795
  %60 = bitcast [4 x i8]* %buf to i8*, !dbg !2795
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !2795
  br label %if.end.52, !dbg !2796

if.else.51:                                       ; preds = %land.lhs.true.45, %lor.lhs.false
  %61 = bitcast float* %x39 to i8*, !dbg !2797
  %62 = load i8*, i8** %p.addr, align 8, !dbg !2799, !tbaa !1048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 4, i32 1, i1 false), !dbg !2797
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.51, %for.end
  %63 = load float, float* %x39, align 4, !dbg !2800, !tbaa !2135
  %conv53 = fpext float %63 to double, !dbg !2800
  store double %conv53, double* %retval, !dbg !2801
  store i32 1, i32* %cleanup.dest.slot
  %64 = bitcast float* %x39 to i8*, !dbg !2802
  call void @llvm.lifetime.end(i64 4, i8* %64) #1, !dbg !2802
  br label %return

return:                                           ; preds = %if.end.52, %cleanup
  %65 = load double, double* %retval, !dbg !2803
  ret double %65, !dbg !2803
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

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
  %cleanup.dest.slot = alloca i32
  %x61 = alloca double, align 8
  %buf = alloca [8 x i8], align 1
  %d = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !537, metadata !1038), !dbg !2804
  store i32 %le, i32* %le.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %le.addr, metadata !538, metadata !1038), !dbg !2805
  %0 = load i32, i32* @double_format, align 4, !dbg !2806, !tbaa !1323
  %cmp = icmp eq i32 %0, 0, !dbg !2807
  br i1 %cmp, label %if.then, label %if.else.60, !dbg !2808

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start(i64 1, i8* %sign) #1, !dbg !2809
  call void @llvm.dbg.declare(metadata i8* %sign, metadata !539, metadata !1038), !dbg !2810
  %1 = bitcast i32* %e to i8*, !dbg !2811
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2811
  call void @llvm.dbg.declare(metadata i32* %e, metadata !542, metadata !1038), !dbg !2812
  %2 = bitcast i32* %fhi to i8*, !dbg !2813
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2813
  call void @llvm.dbg.declare(metadata i32* %fhi, metadata !543, metadata !1038), !dbg !2814
  %3 = bitcast i32* %flo to i8*, !dbg !2813
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2813
  call void @llvm.dbg.declare(metadata i32* %flo, metadata !544, metadata !1038), !dbg !2815
  %4 = bitcast double* %x to i8*, !dbg !2816
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2816
  call void @llvm.dbg.declare(metadata double* %x, metadata !545, metadata !1038), !dbg !2817
  %5 = bitcast i32* %incr to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %incr, metadata !546, metadata !1038), !dbg !2819
  store i32 1, i32* %incr, align 4, !dbg !2819, !tbaa !1042
  %6 = load i32, i32* %le.addr, align 4, !dbg !2820, !tbaa !1042
  %tobool = icmp ne i32 %6, 0, !dbg !2820
  br i1 %tobool, label %if.then.1, label %if.end, !dbg !2822

if.then.1:                                        ; preds = %if.then
  %7 = load i8*, i8** %p.addr, align 8, !dbg !2823, !tbaa !1048
  %add.ptr = getelementptr i8, i8* %7, i64 7, !dbg !2823
  store i8* %add.ptr, i8** %p.addr, align 8, !dbg !2823, !tbaa !1048
  store i32 -1, i32* %incr, align 4, !dbg !2825, !tbaa !1042
  br label %if.end, !dbg !2826

if.end:                                           ; preds = %if.then.1, %if.then
  %8 = load i8*, i8** %p.addr, align 8, !dbg !2827, !tbaa !1048
  %9 = load i8, i8* %8, align 1, !dbg !2828, !tbaa !1323
  %conv = zext i8 %9 to i32, !dbg !2828
  %shr = ashr i32 %conv, 7, !dbg !2829
  %and = and i32 %shr, 1, !dbg !2830
  %conv2 = trunc i32 %and to i8, !dbg !2831
  store i8 %conv2, i8* %sign, align 1, !dbg !2832, !tbaa !1323
  %10 = load i8*, i8** %p.addr, align 8, !dbg !2833, !tbaa !1048
  %11 = load i8, i8* %10, align 1, !dbg !2834, !tbaa !1323
  %conv3 = zext i8 %11 to i32, !dbg !2834
  %and4 = and i32 %conv3, 127, !dbg !2835
  %shl = shl i32 %and4, 4, !dbg !2836
  store i32 %shl, i32* %e, align 4, !dbg !2837, !tbaa !1042
  %12 = load i32, i32* %incr, align 4, !dbg !2838, !tbaa !1042
  %13 = load i8*, i8** %p.addr, align 8, !dbg !2839, !tbaa !1048
  %idx.ext = sext i32 %12 to i64, !dbg !2839
  %add.ptr5 = getelementptr i8, i8* %13, i64 %idx.ext, !dbg !2839
  store i8* %add.ptr5, i8** %p.addr, align 8, !dbg !2839, !tbaa !1048
  %14 = load i8*, i8** %p.addr, align 8, !dbg !2840, !tbaa !1048
  %15 = load i8, i8* %14, align 1, !dbg !2841, !tbaa !1323
  %conv6 = zext i8 %15 to i32, !dbg !2841
  %shr7 = ashr i32 %conv6, 4, !dbg !2842
  %and8 = and i32 %shr7, 15, !dbg !2843
  %16 = load i32, i32* %e, align 4, !dbg !2844, !tbaa !1042
  %or = or i32 %16, %and8, !dbg !2844
  store i32 %or, i32* %e, align 4, !dbg !2844, !tbaa !1042
  %17 = load i8*, i8** %p.addr, align 8, !dbg !2845, !tbaa !1048
  %18 = load i8, i8* %17, align 1, !dbg !2846, !tbaa !1323
  %conv9 = zext i8 %18 to i32, !dbg !2846
  %and10 = and i32 %conv9, 15, !dbg !2847
  %shl11 = shl i32 %and10, 24, !dbg !2848
  store i32 %shl11, i32* %fhi, align 4, !dbg !2849, !tbaa !1042
  %19 = load i32, i32* %incr, align 4, !dbg !2850, !tbaa !1042
  %20 = load i8*, i8** %p.addr, align 8, !dbg !2851, !tbaa !1048
  %idx.ext12 = sext i32 %19 to i64, !dbg !2851
  %add.ptr13 = getelementptr i8, i8* %20, i64 %idx.ext12, !dbg !2851
  store i8* %add.ptr13, i8** %p.addr, align 8, !dbg !2851, !tbaa !1048
  %21 = load i32, i32* %e, align 4, !dbg !2852, !tbaa !1042
  %cmp14 = icmp eq i32 %21, 2047, !dbg !2854
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !2855

if.then.16:                                       ; preds = %if.end
  %22 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2856, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i32 0, i32 0)), !dbg !2858
  store double -1.000000e+00, double* %retval, !dbg !2859
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2859

if.end.17:                                        ; preds = %if.end
  %23 = load i8*, i8** %p.addr, align 8, !dbg !2860, !tbaa !1048
  %24 = load i8, i8* %23, align 1, !dbg !2861, !tbaa !1323
  %conv18 = zext i8 %24 to i32, !dbg !2861
  %shl19 = shl i32 %conv18, 16, !dbg !2862
  %25 = load i32, i32* %fhi, align 4, !dbg !2863, !tbaa !1042
  %or20 = or i32 %25, %shl19, !dbg !2863
  store i32 %or20, i32* %fhi, align 4, !dbg !2863, !tbaa !1042
  %26 = load i32, i32* %incr, align 4, !dbg !2864, !tbaa !1042
  %27 = load i8*, i8** %p.addr, align 8, !dbg !2865, !tbaa !1048
  %idx.ext21 = sext i32 %26 to i64, !dbg !2865
  %add.ptr22 = getelementptr i8, i8* %27, i64 %idx.ext21, !dbg !2865
  store i8* %add.ptr22, i8** %p.addr, align 8, !dbg !2865, !tbaa !1048
  %28 = load i8*, i8** %p.addr, align 8, !dbg !2866, !tbaa !1048
  %29 = load i8, i8* %28, align 1, !dbg !2867, !tbaa !1323
  %conv23 = zext i8 %29 to i32, !dbg !2867
  %shl24 = shl i32 %conv23, 8, !dbg !2868
  %30 = load i32, i32* %fhi, align 4, !dbg !2869, !tbaa !1042
  %or25 = or i32 %30, %shl24, !dbg !2869
  store i32 %or25, i32* %fhi, align 4, !dbg !2869, !tbaa !1042
  %31 = load i32, i32* %incr, align 4, !dbg !2870, !tbaa !1042
  %32 = load i8*, i8** %p.addr, align 8, !dbg !2871, !tbaa !1048
  %idx.ext26 = sext i32 %31 to i64, !dbg !2871
  %add.ptr27 = getelementptr i8, i8* %32, i64 %idx.ext26, !dbg !2871
  store i8* %add.ptr27, i8** %p.addr, align 8, !dbg !2871, !tbaa !1048
  %33 = load i8*, i8** %p.addr, align 8, !dbg !2872, !tbaa !1048
  %34 = load i8, i8* %33, align 1, !dbg !2873, !tbaa !1323
  %conv28 = zext i8 %34 to i32, !dbg !2873
  %35 = load i32, i32* %fhi, align 4, !dbg !2874, !tbaa !1042
  %or29 = or i32 %35, %conv28, !dbg !2874
  store i32 %or29, i32* %fhi, align 4, !dbg !2874, !tbaa !1042
  %36 = load i32, i32* %incr, align 4, !dbg !2875, !tbaa !1042
  %37 = load i8*, i8** %p.addr, align 8, !dbg !2876, !tbaa !1048
  %idx.ext30 = sext i32 %36 to i64, !dbg !2876
  %add.ptr31 = getelementptr i8, i8* %37, i64 %idx.ext30, !dbg !2876
  store i8* %add.ptr31, i8** %p.addr, align 8, !dbg !2876, !tbaa !1048
  %38 = load i8*, i8** %p.addr, align 8, !dbg !2877, !tbaa !1048
  %39 = load i8, i8* %38, align 1, !dbg !2878, !tbaa !1323
  %conv32 = zext i8 %39 to i32, !dbg !2878
  %shl33 = shl i32 %conv32, 16, !dbg !2879
  store i32 %shl33, i32* %flo, align 4, !dbg !2880, !tbaa !1042
  %40 = load i32, i32* %incr, align 4, !dbg !2881, !tbaa !1042
  %41 = load i8*, i8** %p.addr, align 8, !dbg !2882, !tbaa !1048
  %idx.ext34 = sext i32 %40 to i64, !dbg !2882
  %add.ptr35 = getelementptr i8, i8* %41, i64 %idx.ext34, !dbg !2882
  store i8* %add.ptr35, i8** %p.addr, align 8, !dbg !2882, !tbaa !1048
  %42 = load i8*, i8** %p.addr, align 8, !dbg !2883, !tbaa !1048
  %43 = load i8, i8* %42, align 1, !dbg !2884, !tbaa !1323
  %conv36 = zext i8 %43 to i32, !dbg !2884
  %shl37 = shl i32 %conv36, 8, !dbg !2885
  %44 = load i32, i32* %flo, align 4, !dbg !2886, !tbaa !1042
  %or38 = or i32 %44, %shl37, !dbg !2886
  store i32 %or38, i32* %flo, align 4, !dbg !2886, !tbaa !1042
  %45 = load i32, i32* %incr, align 4, !dbg !2887, !tbaa !1042
  %46 = load i8*, i8** %p.addr, align 8, !dbg !2888, !tbaa !1048
  %idx.ext39 = sext i32 %45 to i64, !dbg !2888
  %add.ptr40 = getelementptr i8, i8* %46, i64 %idx.ext39, !dbg !2888
  store i8* %add.ptr40, i8** %p.addr, align 8, !dbg !2888, !tbaa !1048
  %47 = load i8*, i8** %p.addr, align 8, !dbg !2889, !tbaa !1048
  %48 = load i8, i8* %47, align 1, !dbg !2890, !tbaa !1323
  %conv41 = zext i8 %48 to i32, !dbg !2890
  %49 = load i32, i32* %flo, align 4, !dbg !2891, !tbaa !1042
  %or42 = or i32 %49, %conv41, !dbg !2891
  store i32 %or42, i32* %flo, align 4, !dbg !2891, !tbaa !1042
  %50 = load i32, i32* %fhi, align 4, !dbg !2892, !tbaa !1042
  %conv43 = uitofp i32 %50 to double, !dbg !2893
  %51 = load i32, i32* %flo, align 4, !dbg !2894, !tbaa !1042
  %conv44 = uitofp i32 %51 to double, !dbg !2895
  %div = fdiv double %conv44, 0x4170000000000000, !dbg !2896
  %add = fadd double %conv43, %div, !dbg !2897
  store double %add, double* %x, align 8, !dbg !2898, !tbaa !1190
  %52 = load double, double* %x, align 8, !dbg !2899, !tbaa !1190
  %div45 = fdiv double %52, 0x41B0000000000000, !dbg !2899
  store double %div45, double* %x, align 8, !dbg !2899, !tbaa !1190
  %53 = load i32, i32* %e, align 4, !dbg !2900, !tbaa !1042
  %cmp46 = icmp eq i32 %53, 0, !dbg !2902
  br i1 %cmp46, label %if.then.48, label %if.else, !dbg !2903

if.then.48:                                       ; preds = %if.end.17
  store i32 -1022, i32* %e, align 4, !dbg !2904, !tbaa !1042
  br label %if.end.50, !dbg !2905

if.else:                                          ; preds = %if.end.17
  %54 = load double, double* %x, align 8, !dbg !2906, !tbaa !1190
  %add49 = fadd double %54, 1.000000e+00, !dbg !2906
  store double %add49, double* %x, align 8, !dbg !2906, !tbaa !1190
  %55 = load i32, i32* %e, align 4, !dbg !2908, !tbaa !1042
  %sub = sub i32 %55, 1023, !dbg !2908
  store i32 %sub, i32* %e, align 4, !dbg !2908, !tbaa !1042
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.48
  %56 = load double, double* %x, align 8, !dbg !2909, !tbaa !1190
  %57 = load i32, i32* %e, align 4, !dbg !2910, !tbaa !1042
  %call = call double @ldexp(double %56, i32 %57) #1, !dbg !2911
  store double %call, double* %x, align 8, !dbg !2912, !tbaa !1190
  %58 = load i8, i8* %sign, align 1, !dbg !2913, !tbaa !1323
  %tobool51 = icmp ne i8 %58, 0, !dbg !2913
  br i1 %tobool51, label %if.then.52, label %if.end.54, !dbg !2915

if.then.52:                                       ; preds = %if.end.50
  %59 = load double, double* %x, align 8, !dbg !2916, !tbaa !1190
  %sub53 = fsub double -0.000000e+00, %59, !dbg !2917
  store double %sub53, double* %x, align 8, !dbg !2918, !tbaa !1190
  br label %if.end.54, !dbg !2919

if.end.54:                                        ; preds = %if.then.52, %if.end.50
  %60 = load double, double* %x, align 8, !dbg !2920, !tbaa !1190
  store double %60, double* %retval, !dbg !2921
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2921

cleanup:                                          ; preds = %if.end.54, %if.then.16
  %61 = bitcast i32* %incr to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 4, i8* %61) #1, !dbg !2922
  %62 = bitcast double* %x to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !2922
  %63 = bitcast i32* %flo to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 4, i8* %63) #1, !dbg !2922
  %64 = bitcast i32* %fhi to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 4, i8* %64) #1, !dbg !2922
  %65 = bitcast i32* %e to i8*, !dbg !2922
  call void @llvm.lifetime.end(i64 4, i8* %65) #1, !dbg !2922
  call void @llvm.lifetime.end(i64 1, i8* %sign) #1, !dbg !2922
  br label %return

if.else.60:                                       ; preds = %entry
  %66 = bitcast double* %x61 to i8*, !dbg !2923
  call void @llvm.lifetime.start(i64 8, i8* %66) #1, !dbg !2923
  call void @llvm.dbg.declare(metadata double* %x61, metadata !547, metadata !1038), !dbg !2924
  %67 = load i32, i32* @double_format, align 4, !dbg !2925, !tbaa !1323
  %cmp62 = icmp eq i32 %67, 2, !dbg !2926
  br i1 %cmp62, label %land.lhs.true, label %lor.lhs.false, !dbg !2927

land.lhs.true:                                    ; preds = %if.else.60
  %68 = load i32, i32* %le.addr, align 4, !dbg !2928, !tbaa !1042
  %tobool64 = icmp ne i32 %68, 0, !dbg !2928
  br i1 %tobool64, label %lor.lhs.false, label %if.then.69, !dbg !2930

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.else.60
  %69 = load i32, i32* @double_format, align 4, !dbg !2931, !tbaa !1323
  %cmp65 = icmp eq i32 %69, 1, !dbg !2932
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.73, !dbg !2933

land.lhs.true.67:                                 ; preds = %lor.lhs.false
  %70 = load i32, i32* %le.addr, align 4, !dbg !2934, !tbaa !1042
  %tobool68 = icmp ne i32 %70, 0, !dbg !2934
  br i1 %tobool68, label %if.then.69, label %if.else.73, !dbg !2936

if.then.69:                                       ; preds = %land.lhs.true.67, %land.lhs.true
  %71 = bitcast [8 x i8]* %buf to i8*, !dbg !2937
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2937
  call void @llvm.dbg.declare(metadata [8 x i8]* %buf, metadata !549, metadata !1038), !dbg !2938
  %72 = bitcast i8** %d to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 8, i8* %72) #1, !dbg !2939
  call void @llvm.dbg.declare(metadata i8** %d, metadata !555, metadata !1038), !dbg !2940
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %buf, i32 0, i64 7, !dbg !2941
  store i8* %arrayidx, i8** %d, align 8, !dbg !2940, !tbaa !1048
  %73 = bitcast i32* %i to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 4, i8* %73) #1, !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %i, metadata !556, metadata !1038), !dbg !2943
  store i32 0, i32* %i, align 4, !dbg !2944, !tbaa !1042
  br label %for.cond, !dbg !2946

for.cond:                                         ; preds = %for.inc, %if.then.69
  %74 = load i32, i32* %i, align 4, !dbg !2947, !tbaa !1042
  %cmp70 = icmp slt i32 %74, 8, !dbg !2951
  br i1 %cmp70, label %for.body, label %for.end, !dbg !2952

for.body:                                         ; preds = %for.cond
  %75 = load i8*, i8** %p.addr, align 8, !dbg !2953, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %75, i32 1, !dbg !2953
  store i8* %incdec.ptr, i8** %p.addr, align 8, !dbg !2953, !tbaa !1048
  %76 = load i8, i8* %75, align 1, !dbg !2955, !tbaa !1323
  %77 = load i8*, i8** %d, align 8, !dbg !2956, !tbaa !1048
  %incdec.ptr72 = getelementptr i8, i8* %77, i32 -1, !dbg !2956
  store i8* %incdec.ptr72, i8** %d, align 8, !dbg !2956, !tbaa !1048
  store i8 %76, i8* %77, align 1, !dbg !2957, !tbaa !1323
  br label %for.inc, !dbg !2958

for.inc:                                          ; preds = %for.body
  %78 = load i32, i32* %i, align 4, !dbg !2959, !tbaa !1042
  %inc = add i32 %78, 1, !dbg !2959
  store i32 %inc, i32* %i, align 4, !dbg !2959, !tbaa !1042
  br label %for.cond, !dbg !2960

for.end:                                          ; preds = %for.cond
  %79 = bitcast double* %x61 to i8*, !dbg !2961
  %80 = bitcast [8 x i8]* %buf to i8*, !dbg !2961
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 8, i32 1, i1 false), !dbg !2961
  %81 = bitcast i32* %i to i8*, !dbg !2962
  call void @llvm.lifetime.end(i64 4, i8* %81) #1, !dbg !2962
  %82 = bitcast i8** %d to i8*, !dbg !2962
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !2962
  %83 = bitcast [8 x i8]* %buf to i8*, !dbg !2962
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !2962
  br label %if.end.74, !dbg !2963

if.else.73:                                       ; preds = %land.lhs.true.67, %lor.lhs.false
  %84 = bitcast double* %x61 to i8*, !dbg !2964
  %85 = load i8*, i8** %p.addr, align 8, !dbg !2966, !tbaa !1048
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 8, i32 1, i1 false), !dbg !2964
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73, %for.end
  %86 = load double, double* %x61, align 8, !dbg !2967, !tbaa !1190
  store double %86, double* %retval, !dbg !2968
  store i32 1, i32* %cleanup.dest.slot
  %87 = bitcast double* %x61 to i8*, !dbg !2969
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !2969
  br label %return

return:                                           ; preds = %if.end.74, %cleanup
  %88 = load double, double* %retval, !dbg !2970
  ret double %88, !dbg !2970
}

declare i8* @PyOS_double_to_string(double, i8 signext, i32, i32, i32*) #3

declare %struct._object* @_PyUnicode_FromASCII(i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_add(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !571, metadata !1038), !dbg !2971
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !572, metadata !1038), !dbg !2972
  %0 = bitcast double* %a to i8*, !dbg !2973
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2973
  call void @llvm.dbg.declare(metadata double* %a, metadata !573, metadata !1038), !dbg !2974
  %1 = bitcast double* %b to i8*, !dbg !2973
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2973
  call void @llvm.dbg.declare(metadata double* %b, metadata !574, metadata !1038), !dbg !2975
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2976, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !2978
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2978, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !2979
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2980

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2981, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !2983
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !2983, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type), !dbg !2984
  %tobool = icmp ne i32 %call, 0, !dbg !2984
  br i1 %tobool, label %if.then, label %if.else, !dbg !2985

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2986, !tbaa !1048
  %7 = bitcast %struct._object* %6 to %struct.PyFloatObject*, !dbg !2989
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %7, i32 0, i32 1, !dbg !2990
  %8 = load double, double* %ob_fval, align 8, !dbg !2990, !tbaa !1230
  store double %8, double* %a, align 8, !dbg !2991, !tbaa !1190
  br label %if.end.5, !dbg !2992

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a), !dbg !2993
  %cmp3 = icmp slt i32 %call2, 0, !dbg !2996
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !2997

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !2998, !tbaa !1048
  store %struct._object* %9, %struct._object** %retval, !dbg !3000
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3000

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3001, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3003
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3003, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %11, @PyFloat_Type, !dbg !3004
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3005

lor.lhs.false.8:                                  ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3006, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3008
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3008, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFloat_Type), !dbg !3009
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3009
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3010

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3011, !tbaa !1048
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*, !dbg !3014
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1, !dbg !3015
  %16 = load double, double* %ob_fval13, align 8, !dbg !3015, !tbaa !1230
  store double %16, double* %b, align 8, !dbg !3016, !tbaa !1190
  br label %if.end.19, !dbg !3017

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b), !dbg !3018
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3021
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3022

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3023, !tbaa !1048
  store %struct._object* %17, %struct._object** %retval, !dbg !3025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3025

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = load double, double* %a, align 8, !dbg !3026, !tbaa !1190
  %19 = load double, double* %b, align 8, !dbg !3027, !tbaa !1190
  %add = fadd double %18, %19, !dbg !3028
  store double %add, double* %a, align 8, !dbg !3029, !tbaa !1190
  %20 = load double, double* %a, align 8, !dbg !3030, !tbaa !1190
  %call20 = call %struct._object* @PyFloat_FromDouble(double %20), !dbg !3031
  store %struct._object* %call20, %struct._object** %retval, !dbg !3032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3032

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %21 = bitcast double* %b to i8*, !dbg !3033
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3033
  %22 = bitcast double* %a to i8*, !dbg !3033
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3033
  %23 = load %struct._object*, %struct._object** %retval, !dbg !3033
  ret %struct._object* %23, !dbg !3033
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_sub(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !586, metadata !1038), !dbg !3034
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !587, metadata !1038), !dbg !3035
  %0 = bitcast double* %a to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3036
  call void @llvm.dbg.declare(metadata double* %a, metadata !588, metadata !1038), !dbg !3037
  %1 = bitcast double* %b to i8*, !dbg !3036
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3036
  call void @llvm.dbg.declare(metadata double* %b, metadata !589, metadata !1038), !dbg !3038
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3039, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3041
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3041, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !3042
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3043

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3044, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3046
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3046, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type), !dbg !3047
  %tobool = icmp ne i32 %call, 0, !dbg !3047
  br i1 %tobool, label %if.then, label %if.else, !dbg !3048

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3049, !tbaa !1048
  %7 = bitcast %struct._object* %6 to %struct.PyFloatObject*, !dbg !3052
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %7, i32 0, i32 1, !dbg !3053
  %8 = load double, double* %ob_fval, align 8, !dbg !3053, !tbaa !1230
  store double %8, double* %a, align 8, !dbg !3054, !tbaa !1190
  br label %if.end.5, !dbg !3055

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a), !dbg !3056
  %cmp3 = icmp slt i32 %call2, 0, !dbg !3059
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3060

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3061, !tbaa !1048
  store %struct._object* %9, %struct._object** %retval, !dbg !3063
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3063

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3064, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3066
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3066, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %11, @PyFloat_Type, !dbg !3067
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3068

lor.lhs.false.8:                                  ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3069, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3071
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3071, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFloat_Type), !dbg !3072
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3072
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3073

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3074, !tbaa !1048
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*, !dbg !3077
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1, !dbg !3078
  %16 = load double, double* %ob_fval13, align 8, !dbg !3078, !tbaa !1230
  store double %16, double* %b, align 8, !dbg !3079, !tbaa !1190
  br label %if.end.19, !dbg !3080

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b), !dbg !3081
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3084
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3085

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3086, !tbaa !1048
  store %struct._object* %17, %struct._object** %retval, !dbg !3088
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3088

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = load double, double* %a, align 8, !dbg !3089, !tbaa !1190
  %19 = load double, double* %b, align 8, !dbg !3090, !tbaa !1190
  %sub = fsub double %18, %19, !dbg !3091
  store double %sub, double* %a, align 8, !dbg !3092, !tbaa !1190
  %20 = load double, double* %a, align 8, !dbg !3093, !tbaa !1190
  %call20 = call %struct._object* @PyFloat_FromDouble(double %20), !dbg !3094
  store %struct._object* %call20, %struct._object** %retval, !dbg !3095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3095

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %21 = bitcast double* %b to i8*, !dbg !3096
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3096
  %22 = bitcast double* %a to i8*, !dbg !3096
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3096
  %23 = load %struct._object*, %struct._object** %retval, !dbg !3096
  ret %struct._object* %23, !dbg !3096
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_mul(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !592, metadata !1038), !dbg !3097
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !593, metadata !1038), !dbg !3098
  %0 = bitcast double* %a to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3099
  call void @llvm.dbg.declare(metadata double* %a, metadata !594, metadata !1038), !dbg !3100
  %1 = bitcast double* %b to i8*, !dbg !3099
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3099
  call void @llvm.dbg.declare(metadata double* %b, metadata !595, metadata !1038), !dbg !3101
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3102, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3104
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3104, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !3105
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3106

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3107, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3109
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3109, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type), !dbg !3110
  %tobool = icmp ne i32 %call, 0, !dbg !3110
  br i1 %tobool, label %if.then, label %if.else, !dbg !3111

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3112, !tbaa !1048
  %7 = bitcast %struct._object* %6 to %struct.PyFloatObject*, !dbg !3115
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %7, i32 0, i32 1, !dbg !3116
  %8 = load double, double* %ob_fval, align 8, !dbg !3116, !tbaa !1230
  store double %8, double* %a, align 8, !dbg !3117, !tbaa !1190
  br label %if.end.5, !dbg !3118

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a), !dbg !3119
  %cmp3 = icmp slt i32 %call2, 0, !dbg !3122
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3123

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3124, !tbaa !1048
  store %struct._object* %9, %struct._object** %retval, !dbg !3126
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3126

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3127, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3129
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3129, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %11, @PyFloat_Type, !dbg !3130
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3131

lor.lhs.false.8:                                  ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3132, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3134
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3134, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFloat_Type), !dbg !3135
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3135
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3136

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3137, !tbaa !1048
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*, !dbg !3140
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1, !dbg !3141
  %16 = load double, double* %ob_fval13, align 8, !dbg !3141, !tbaa !1230
  store double %16, double* %b, align 8, !dbg !3142, !tbaa !1190
  br label %if.end.19, !dbg !3143

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b), !dbg !3144
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3147
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3148

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3149, !tbaa !1048
  store %struct._object* %17, %struct._object** %retval, !dbg !3151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3151

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = load double, double* %a, align 8, !dbg !3152, !tbaa !1190
  %19 = load double, double* %b, align 8, !dbg !3153, !tbaa !1190
  %mul = fmul double %18, %19, !dbg !3154
  store double %mul, double* %a, align 8, !dbg !3155, !tbaa !1190
  %20 = load double, double* %a, align 8, !dbg !3156, !tbaa !1190
  %call20 = call %struct._object* @PyFloat_FromDouble(double %20), !dbg !3157
  store %struct._object* %call20, %struct._object** %retval, !dbg !3158
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3158

cleanup:                                          ; preds = %if.end.19, %if.then.17, %if.then.4
  %21 = bitcast double* %b to i8*, !dbg !3159
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !3159
  %22 = bitcast double* %a to i8*, !dbg !3159
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3159
  %23 = load %struct._object*, %struct._object** %retval, !dbg !3159
  ret %struct._object* %23, !dbg !3159
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !598, metadata !1038), !dbg !3160
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !599, metadata !1038), !dbg !3161
  %0 = bitcast double* %vx to i8*, !dbg !3162
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3162
  call void @llvm.dbg.declare(metadata double* %vx, metadata !600, metadata !1038), !dbg !3163
  %1 = bitcast double* %wx to i8*, !dbg !3162
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3162
  call void @llvm.dbg.declare(metadata double* %wx, metadata !601, metadata !1038), !dbg !3164
  %2 = bitcast double* %mod to i8*, !dbg !3165
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3165
  call void @llvm.dbg.declare(metadata double* %mod, metadata !602, metadata !1038), !dbg !3166
  %3 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3167, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3169
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3169, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %4, @PyFloat_Type, !dbg !3170
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3171

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3172, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3174
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3174, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %6, %struct._typeobject* @PyFloat_Type), !dbg !3175
  %tobool = icmp ne i32 %call, 0, !dbg !3175
  br i1 %tobool, label %if.then, label %if.else, !dbg !3176

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3177, !tbaa !1048
  %8 = bitcast %struct._object* %7 to %struct.PyFloatObject*, !dbg !3180
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %8, i32 0, i32 1, !dbg !3181
  %9 = load double, double* %ob_fval, align 8, !dbg !3181, !tbaa !1230
  store double %9, double* %vx, align 8, !dbg !3182, !tbaa !1190
  br label %if.end.5, !dbg !3183

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %vx), !dbg !3184
  %cmp3 = icmp slt i32 %call2, 0, !dbg !3187
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3188

if.then.4:                                        ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3189, !tbaa !1048
  store %struct._object* %10, %struct._object** %retval, !dbg !3191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3191

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %11 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3192, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !3194
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3194, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %12, @PyFloat_Type, !dbg !3195
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3196

lor.lhs.false.8:                                  ; preds = %if.end.5
  %13 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3197, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3199
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3199, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyFloat_Type), !dbg !3200
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3200
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3201

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %15 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3202, !tbaa !1048
  %16 = bitcast %struct._object* %15 to %struct.PyFloatObject*, !dbg !3205
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i32 0, i32 1, !dbg !3206
  %17 = load double, double* %ob_fval13, align 8, !dbg !3206, !tbaa !1230
  store double %17, double* %wx, align 8, !dbg !3207, !tbaa !1190
  br label %if.end.19, !dbg !3208

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %wx), !dbg !3209
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3212
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3213

if.then.17:                                       ; preds = %if.else.14
  %18 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3214, !tbaa !1048
  store %struct._object* %18, %struct._object** %retval, !dbg !3216
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3216

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %19 = load double, double* %wx, align 8, !dbg !3217, !tbaa !1190
  %cmp20 = fcmp oeq double %19, 0.000000e+00, !dbg !3219
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !3220

if.then.21:                                       ; preds = %if.end.19
  %20 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !3221, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !3223
  store %struct._object* null, %struct._object** %retval, !dbg !3224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3224

if.end.22:                                        ; preds = %if.end.19
  %21 = load double, double* %vx, align 8, !dbg !3225, !tbaa !1190
  %22 = load double, double* %wx, align 8, !dbg !3226, !tbaa !1190
  %call23 = call double @fmod(double %21, double %22) #1, !dbg !3227
  store double %call23, double* %mod, align 8, !dbg !3228, !tbaa !1190
  %23 = load double, double* %mod, align 8, !dbg !3229, !tbaa !1190
  %tobool24 = fcmp une double %23, 0.000000e+00, !dbg !3229
  br i1 %tobool24, label %if.then.25, label %if.else.33, !dbg !3231

if.then.25:                                       ; preds = %if.end.22
  %24 = load double, double* %wx, align 8, !dbg !3232, !tbaa !1190
  %cmp26 = fcmp olt double %24, 0.000000e+00, !dbg !3235
  %conv = zext i1 %cmp26 to i32, !dbg !3235
  %25 = load double, double* %mod, align 8, !dbg !3236, !tbaa !1190
  %cmp27 = fcmp olt double %25, 0.000000e+00, !dbg !3237
  %conv28 = zext i1 %cmp27 to i32, !dbg !3237
  %cmp29 = icmp ne i32 %conv, %conv28, !dbg !3238
  br i1 %cmp29, label %if.then.31, label %if.end.32, !dbg !3239

if.then.31:                                       ; preds = %if.then.25
  %26 = load double, double* %wx, align 8, !dbg !3240, !tbaa !1190
  %27 = load double, double* %mod, align 8, !dbg !3242, !tbaa !1190
  %add = fadd double %27, %26, !dbg !3242
  store double %add, double* %mod, align 8, !dbg !3242, !tbaa !1190
  br label %if.end.32, !dbg !3243

if.end.32:                                        ; preds = %if.then.31, %if.then.25
  br label %if.end.35, !dbg !3244

if.else.33:                                       ; preds = %if.end.22
  %28 = load double, double* %wx, align 8, !dbg !3245, !tbaa !1190
  %call34 = call double @copysign(double 0.000000e+00, double %28) #2, !dbg !3247
  store double %call34, double* %mod, align 8, !dbg !3248, !tbaa !1190
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.end.32
  %29 = load double, double* %mod, align 8, !dbg !3249, !tbaa !1190
  %call36 = call %struct._object* @PyFloat_FromDouble(double %29), !dbg !3250
  store %struct._object* %call36, %struct._object** %retval, !dbg !3251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3251

cleanup:                                          ; preds = %if.end.35, %if.then.21, %if.then.17, %if.then.4
  %30 = bitcast double* %mod to i8*, !dbg !3252
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !3252
  %31 = bitcast double* %wx to i8*, !dbg !3252
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !3252
  %32 = bitcast double* %vx to i8*, !dbg !3252
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !3252
  %33 = load %struct._object*, %struct._object** %retval, !dbg !3252
  ret %struct._object* %33, !dbg !3252
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !605, metadata !1038), !dbg !3253
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !606, metadata !1038), !dbg !3254
  %0 = bitcast double* %vx to i8*, !dbg !3255
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3255
  call void @llvm.dbg.declare(metadata double* %vx, metadata !607, metadata !1038), !dbg !3256
  %1 = bitcast double* %wx to i8*, !dbg !3255
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3255
  call void @llvm.dbg.declare(metadata double* %wx, metadata !608, metadata !1038), !dbg !3257
  %2 = bitcast double* %div to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3258
  call void @llvm.dbg.declare(metadata double* %div, metadata !609, metadata !1038), !dbg !3259
  %3 = bitcast double* %mod to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3258
  call void @llvm.dbg.declare(metadata double* %mod, metadata !610, metadata !1038), !dbg !3260
  %4 = bitcast double* %floordiv to i8*, !dbg !3258
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3258
  call void @llvm.dbg.declare(metadata double* %floordiv, metadata !611, metadata !1038), !dbg !3261
  %5 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3262, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !3264
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3264, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %6, @PyFloat_Type, !dbg !3265
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3266

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3267, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !3269
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3269, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %8, %struct._typeobject* @PyFloat_Type), !dbg !3270
  %tobool = icmp ne i32 %call, 0, !dbg !3270
  br i1 %tobool, label %if.then, label %if.else, !dbg !3271

if.then:                                          ; preds = %lor.lhs.false, %entry
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3272, !tbaa !1048
  %10 = bitcast %struct._object* %9 to %struct.PyFloatObject*, !dbg !3275
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %10, i32 0, i32 1, !dbg !3276
  %11 = load double, double* %ob_fval, align 8, !dbg !3276, !tbaa !1230
  store double %11, double* %vx, align 8, !dbg !3277, !tbaa !1190
  br label %if.end.5, !dbg !3278

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %vx), !dbg !3279
  %cmp3 = icmp slt i32 %call2, 0, !dbg !3282
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3283

if.then.4:                                        ; preds = %if.else
  %12 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3284, !tbaa !1048
  store %struct._object* %12, %struct._object** %retval, !dbg !3286
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3286

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3287, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3289
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3289, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %14, @PyFloat_Type, !dbg !3290
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3291

lor.lhs.false.8:                                  ; preds = %if.end.5
  %15 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3292, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3294
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3294, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %16, %struct._typeobject* @PyFloat_Type), !dbg !3295
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3295
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3296

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %17 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3297, !tbaa !1048
  %18 = bitcast %struct._object* %17 to %struct.PyFloatObject*, !dbg !3300
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %18, i32 0, i32 1, !dbg !3301
  %19 = load double, double* %ob_fval13, align 8, !dbg !3301, !tbaa !1230
  store double %19, double* %wx, align 8, !dbg !3302, !tbaa !1190
  br label %if.end.19, !dbg !3303

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %wx), !dbg !3304
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3307
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3308

if.then.17:                                       ; preds = %if.else.14
  %20 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3309, !tbaa !1048
  store %struct._object* %20, %struct._object** %retval, !dbg !3311
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3311

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %21 = load double, double* %wx, align 8, !dbg !3312, !tbaa !1190
  %cmp20 = fcmp oeq double %21, 0.000000e+00, !dbg !3314
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !3315

if.then.21:                                       ; preds = %if.end.19
  %22 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !3316, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !3318
  store %struct._object* null, %struct._object** %retval, !dbg !3319
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3319

if.end.22:                                        ; preds = %if.end.19
  %23 = load double, double* %vx, align 8, !dbg !3320, !tbaa !1190
  %24 = load double, double* %wx, align 8, !dbg !3321, !tbaa !1190
  %call23 = call double @fmod(double %23, double %24) #1, !dbg !3322
  store double %call23, double* %mod, align 8, !dbg !3323, !tbaa !1190
  %25 = load double, double* %vx, align 8, !dbg !3324, !tbaa !1190
  %26 = load double, double* %mod, align 8, !dbg !3325, !tbaa !1190
  %sub = fsub double %25, %26, !dbg !3326
  %27 = load double, double* %wx, align 8, !dbg !3327, !tbaa !1190
  %div24 = fdiv double %sub, %27, !dbg !3328
  store double %div24, double* %div, align 8, !dbg !3329, !tbaa !1190
  %28 = load double, double* %mod, align 8, !dbg !3330, !tbaa !1190
  %tobool25 = fcmp une double %28, 0.000000e+00, !dbg !3330
  br i1 %tobool25, label %if.then.26, label %if.else.35, !dbg !3332

if.then.26:                                       ; preds = %if.end.22
  %29 = load double, double* %wx, align 8, !dbg !3333, !tbaa !1190
  %cmp27 = fcmp olt double %29, 0.000000e+00, !dbg !3336
  %conv = zext i1 %cmp27 to i32, !dbg !3336
  %30 = load double, double* %mod, align 8, !dbg !3337, !tbaa !1190
  %cmp28 = fcmp olt double %30, 0.000000e+00, !dbg !3338
  %conv29 = zext i1 %cmp28 to i32, !dbg !3338
  %cmp30 = icmp ne i32 %conv, %conv29, !dbg !3339
  br i1 %cmp30, label %if.then.32, label %if.end.34, !dbg !3340

if.then.32:                                       ; preds = %if.then.26
  %31 = load double, double* %wx, align 8, !dbg !3341, !tbaa !1190
  %32 = load double, double* %mod, align 8, !dbg !3343, !tbaa !1190
  %add = fadd double %32, %31, !dbg !3343
  store double %add, double* %mod, align 8, !dbg !3343, !tbaa !1190
  %33 = load double, double* %div, align 8, !dbg !3344, !tbaa !1190
  %sub33 = fsub double %33, 1.000000e+00, !dbg !3344
  store double %sub33, double* %div, align 8, !dbg !3344, !tbaa !1190
  br label %if.end.34, !dbg !3345

if.end.34:                                        ; preds = %if.then.32, %if.then.26
  br label %if.end.37, !dbg !3346

if.else.35:                                       ; preds = %if.end.22
  %34 = load double, double* %wx, align 8, !dbg !3347, !tbaa !1190
  %call36 = call double @copysign(double 0.000000e+00, double %34) #2, !dbg !3349
  store double %call36, double* %mod, align 8, !dbg !3350, !tbaa !1190
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.35, %if.end.34
  %35 = load double, double* %div, align 8, !dbg !3351, !tbaa !1190
  %tobool38 = fcmp une double %35, 0.000000e+00, !dbg !3351
  br i1 %tobool38, label %if.then.39, label %if.else.47, !dbg !3353

if.then.39:                                       ; preds = %if.end.37
  %36 = load double, double* %div, align 8, !dbg !3354, !tbaa !1190
  %call40 = call double @floor(double %36) #2, !dbg !3356
  store double %call40, double* %floordiv, align 8, !dbg !3357, !tbaa !1190
  %37 = load double, double* %div, align 8, !dbg !3358, !tbaa !1190
  %38 = load double, double* %floordiv, align 8, !dbg !3360, !tbaa !1190
  %sub41 = fsub double %37, %38, !dbg !3361
  %cmp42 = fcmp ogt double %sub41, 5.000000e-01, !dbg !3362
  br i1 %cmp42, label %if.then.44, label %if.end.46, !dbg !3363

if.then.44:                                       ; preds = %if.then.39
  %39 = load double, double* %floordiv, align 8, !dbg !3364, !tbaa !1190
  %add45 = fadd double %39, 1.000000e+00, !dbg !3364
  store double %add45, double* %floordiv, align 8, !dbg !3364, !tbaa !1190
  br label %if.end.46, !dbg !3365

if.end.46:                                        ; preds = %if.then.44, %if.then.39
  br label %if.end.50, !dbg !3366

if.else.47:                                       ; preds = %if.end.37
  %40 = load double, double* %vx, align 8, !dbg !3367, !tbaa !1190
  %41 = load double, double* %wx, align 8, !dbg !3369, !tbaa !1190
  %div48 = fdiv double %40, %41, !dbg !3370
  %call49 = call double @copysign(double 0.000000e+00, double %div48) #2, !dbg !3371
  store double %call49, double* %floordiv, align 8, !dbg !3372, !tbaa !1190
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.end.46
  %42 = load double, double* %floordiv, align 8, !dbg !3373, !tbaa !1190
  %43 = load double, double* %mod, align 8, !dbg !3374, !tbaa !1190
  %call51 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), double %42, double %43), !dbg !3375
  store %struct._object* %call51, %struct._object** %retval, !dbg !3376
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3376

cleanup:                                          ; preds = %if.end.50, %if.then.21, %if.then.17, %if.then.4
  %44 = bitcast double* %floordiv to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3377
  %45 = bitcast double* %mod to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3377
  %46 = bitcast double* %div to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3377
  %47 = bitcast double* %wx to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3377
  %48 = bitcast double* %vx to i8*, !dbg !3377
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !3377
  %49 = load %struct._object*, %struct._object** %retval, !dbg !3377
  ret %struct._object* %49, !dbg !3377
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
  %cleanup.dest.slot = alloca i32
  %iw_is_odd = alloca i32, align 4
  %iw_is_odd128 = alloca i32, align 4
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !614, metadata !1038), !dbg !3378
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !615, metadata !1038), !dbg !3379
  store %struct._object* %z, %struct._object** %z.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %z.addr, metadata !616, metadata !1038), !dbg !3380
  %0 = bitcast double* %iv to i8*, !dbg !3381
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3381
  call void @llvm.dbg.declare(metadata double* %iv, metadata !617, metadata !1038), !dbg !3382
  %1 = bitcast double* %iw to i8*, !dbg !3381
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3381
  call void @llvm.dbg.declare(metadata double* %iw, metadata !618, metadata !1038), !dbg !3383
  %2 = bitcast double* %ix to i8*, !dbg !3381
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3381
  call void @llvm.dbg.declare(metadata double* %ix, metadata !619, metadata !1038), !dbg !3384
  %3 = bitcast i32* %negate_result to i8*, !dbg !3385
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3385
  call void @llvm.dbg.declare(metadata i32* %negate_result, metadata !620, metadata !1038), !dbg !3386
  store i32 0, i32* %negate_result, align 4, !dbg !3386, !tbaa !1042
  %4 = load %struct._object*, %struct._object** %z.addr, align 8, !dbg !3387, !tbaa !1048
  %cmp = icmp ne %struct._object* %4, @_Py_NoneStruct, !dbg !3389
  br i1 %cmp, label %if.then, label %if.end, !dbg !3390

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3391, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0)), !dbg !3393
  store %struct._object* null, %struct._object** %retval, !dbg !3394
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3394

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3395, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !3397
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3397, !tbaa !1166
  %cmp1 = icmp eq %struct._typeobject* %7, @PyFloat_Type, !dbg !3398
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false, !dbg !3399

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3400, !tbaa !1048
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !3402
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8, !dbg !3402, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %9, %struct._typeobject* @PyFloat_Type), !dbg !3403
  %tobool = icmp ne i32 %call, 0, !dbg !3403
  br i1 %tobool, label %if.then.3, label %if.else, !dbg !3404

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3405, !tbaa !1048
  %11 = bitcast %struct._object* %10 to %struct.PyFloatObject*, !dbg !3408
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %11, i32 0, i32 1, !dbg !3409
  %12 = load double, double* %ob_fval, align 8, !dbg !3409, !tbaa !1230
  store double %12, double* %iv, align 8, !dbg !3410, !tbaa !1190
  br label %if.end.8, !dbg !3411

if.else:                                          ; preds = %lor.lhs.false
  %call4 = call i32 @convert_to_double(%struct._object** %v.addr, double* %iv), !dbg !3412
  %cmp5 = icmp slt i32 %call4, 0, !dbg !3415
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3416

if.then.6:                                        ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3417, !tbaa !1048
  store %struct._object* %13, %struct._object** %retval, !dbg !3419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3419

if.end.7:                                         ; preds = %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.3
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3420, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3422
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3422, !tbaa !1166
  %cmp10 = icmp eq %struct._typeobject* %15, @PyFloat_Type, !dbg !3423
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false.11, !dbg !3424

lor.lhs.false.11:                                 ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3425, !tbaa !1048
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !3427
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8, !dbg !3427, !tbaa !1166
  %call13 = call i32 @PyType_IsSubtype(%struct._typeobject* %17, %struct._typeobject* @PyFloat_Type), !dbg !3428
  %tobool14 = icmp ne i32 %call13, 0, !dbg !3428
  br i1 %tobool14, label %if.then.15, label %if.else.17, !dbg !3429

if.then.15:                                       ; preds = %lor.lhs.false.11, %if.end.8
  %18 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3430, !tbaa !1048
  %19 = bitcast %struct._object* %18 to %struct.PyFloatObject*, !dbg !3433
  %ob_fval16 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %19, i32 0, i32 1, !dbg !3434
  %20 = load double, double* %ob_fval16, align 8, !dbg !3434, !tbaa !1230
  store double %20, double* %iw, align 8, !dbg !3435, !tbaa !1190
  br label %if.end.22, !dbg !3436

if.else.17:                                       ; preds = %lor.lhs.false.11
  %call18 = call i32 @convert_to_double(%struct._object** %w.addr, double* %iw), !dbg !3437
  %cmp19 = icmp slt i32 %call18, 0, !dbg !3440
  br i1 %cmp19, label %if.then.20, label %if.end.21, !dbg !3441

if.then.20:                                       ; preds = %if.else.17
  %21 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3442, !tbaa !1048
  store %struct._object* %21, %struct._object** %retval, !dbg !3444
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3444

if.end.21:                                        ; preds = %if.else.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.15
  %22 = load double, double* %iw, align 8, !dbg !3445, !tbaa !1190
  %cmp23 = fcmp oeq double %22, 0.000000e+00, !dbg !3447
  br i1 %cmp23, label %if.then.24, label %if.end.26, !dbg !3448

if.then.24:                                       ; preds = %if.end.22
  %call25 = call %struct._object* @PyFloat_FromDouble(double 1.000000e+00), !dbg !3449
  store %struct._object* %call25, %struct._object** %retval, !dbg !3451
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3451

if.end.26:                                        ; preds = %if.end.22
  br i1 false, label %cond.true, label %cond.false, !dbg !3452

cond.true:                                        ; preds = %if.end.26
  %23 = load double, double* %iv, align 8, !dbg !3453, !tbaa !1190
  %conv = fptrunc double %23 to float, !dbg !3453
  %call27 = call i32 @__isnanf(float %conv) #2, !dbg !3456
  %tobool28 = icmp ne i32 %call27, 0, !dbg !3456
  br i1 %tobool28, label %if.then.36, label %if.end.38, !dbg !3457

cond.false:                                       ; preds = %if.end.26
  br i1 true, label %cond.true.29, label %cond.false.32, !dbg !3458

cond.true.29:                                     ; preds = %cond.false
  %24 = load double, double* %iv, align 8, !dbg !3460, !tbaa !1190
  %call30 = call i32 @__isnan(double %24) #2, !dbg !3462
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3462
  br i1 %tobool31, label %if.then.36, label %if.end.38, !dbg !3463

cond.false.32:                                    ; preds = %cond.false
  %25 = load double, double* %iv, align 8, !dbg !3464, !tbaa !1190
  %conv33 = fpext double %25 to x86_fp80, !dbg !3464
  %call34 = call i32 @__isnanl(x86_fp80 %conv33) #2, !dbg !3466
  %tobool35 = icmp ne i32 %call34, 0, !dbg !3466
  br i1 %tobool35, label %if.then.36, label %if.end.38, !dbg !3452

if.then.36:                                       ; preds = %cond.false.32, %cond.true.29, %cond.true
  %26 = load double, double* %iv, align 8, !dbg !3467, !tbaa !1190
  %call37 = call %struct._object* @PyFloat_FromDouble(double %26), !dbg !3469
  store %struct._object* %call37, %struct._object** %retval, !dbg !3470
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3470

if.end.38:                                        ; preds = %cond.false.32, %cond.true.29, %cond.true
  br i1 false, label %cond.true.39, label %cond.false.43, !dbg !3471

cond.true.39:                                     ; preds = %if.end.38
  %27 = load double, double* %iw, align 8, !dbg !3472, !tbaa !1190
  %conv40 = fptrunc double %27 to float, !dbg !3472
  %call41 = call i32 @__isnanf(float %conv40) #2, !dbg !3475
  %tobool42 = icmp ne i32 %call41, 0, !dbg !3475
  br i1 %tobool42, label %if.then.51, label %if.end.57, !dbg !3476

cond.false.43:                                    ; preds = %if.end.38
  br i1 true, label %cond.true.44, label %cond.false.47, !dbg !3477

cond.true.44:                                     ; preds = %cond.false.43
  %28 = load double, double* %iw, align 8, !dbg !3478, !tbaa !1190
  %call45 = call i32 @__isnan(double %28) #2, !dbg !3480
  %tobool46 = icmp ne i32 %call45, 0, !dbg !3480
  br i1 %tobool46, label %if.then.51, label %if.end.57, !dbg !3481

cond.false.47:                                    ; preds = %cond.false.43
  %29 = load double, double* %iw, align 8, !dbg !3482, !tbaa !1190
  %conv48 = fpext double %29 to x86_fp80, !dbg !3482
  %call49 = call i32 @__isnanl(x86_fp80 %conv48) #2, !dbg !3484
  %tobool50 = icmp ne i32 %call49, 0, !dbg !3484
  br i1 %tobool50, label %if.then.51, label %if.end.57, !dbg !3471

if.then.51:                                       ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  %30 = load double, double* %iv, align 8, !dbg !3485, !tbaa !1190
  %cmp52 = fcmp oeq double %30, 1.000000e+00, !dbg !3487
  br i1 %cmp52, label %cond.true.54, label %cond.false.55, !dbg !3485

cond.true.54:                                     ; preds = %if.then.51
  br label %cond.end, !dbg !3488

cond.false.55:                                    ; preds = %if.then.51
  %31 = load double, double* %iw, align 8, !dbg !3490, !tbaa !1190
  br label %cond.end, !dbg !3485

cond.end:                                         ; preds = %cond.false.55, %cond.true.54
  %cond = phi double [ 1.000000e+00, %cond.true.54 ], [ %31, %cond.false.55 ], !dbg !3485
  %call56 = call %struct._object* @PyFloat_FromDouble(double %cond), !dbg !3492
  store %struct._object* %call56, %struct._object** %retval, !dbg !3495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3495

if.end.57:                                        ; preds = %cond.false.47, %cond.true.44, %cond.true.39
  br i1 false, label %cond.true.58, label %cond.false.62, !dbg !3496

cond.true.58:                                     ; preds = %if.end.57
  %32 = load double, double* %iw, align 8, !dbg !3497, !tbaa !1190
  %conv59 = fptrunc double %32 to float, !dbg !3497
  %call60 = call i32 @__isinff(float %conv59) #2, !dbg !3500
  %tobool61 = icmp ne i32 %call60, 0, !dbg !3500
  br i1 %tobool61, label %if.then.70, label %if.end.88, !dbg !3501

cond.false.62:                                    ; preds = %if.end.57
  br i1 true, label %cond.true.63, label %cond.false.66, !dbg !3502

cond.true.63:                                     ; preds = %cond.false.62
  %33 = load double, double* %iw, align 8, !dbg !3503, !tbaa !1190
  %call64 = call i32 @__isinf(double %33) #2, !dbg !3505
  %tobool65 = icmp ne i32 %call64, 0, !dbg !3505
  br i1 %tobool65, label %if.then.70, label %if.end.88, !dbg !3506

cond.false.66:                                    ; preds = %cond.false.62
  %34 = load double, double* %iw, align 8, !dbg !3507, !tbaa !1190
  %conv67 = fpext double %34 to x86_fp80, !dbg !3507
  %call68 = call i32 @__isinfl(x86_fp80 %conv67) #2, !dbg !3509
  %tobool69 = icmp ne i32 %call68, 0, !dbg !3509
  br i1 %tobool69, label %if.then.70, label %if.end.88, !dbg !3496

if.then.70:                                       ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  %35 = load double, double* %iv, align 8, !dbg !3510, !tbaa !1190
  %call71 = call double @fabs(double %35) #2, !dbg !3512
  store double %call71, double* %iv, align 8, !dbg !3513, !tbaa !1190
  %36 = load double, double* %iv, align 8, !dbg !3514, !tbaa !1190
  %cmp72 = fcmp oeq double %36, 1.000000e+00, !dbg !3516
  br i1 %cmp72, label %if.then.74, label %if.else.76, !dbg !3517

if.then.74:                                       ; preds = %if.then.70
  %call75 = call %struct._object* @PyFloat_FromDouble(double 1.000000e+00), !dbg !3518
  store %struct._object* %call75, %struct._object** %retval, !dbg !3519
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3519

if.else.76:                                       ; preds = %if.then.70
  %37 = load double, double* %iw, align 8, !dbg !3520, !tbaa !1190
  %cmp77 = fcmp ogt double %37, 0.000000e+00, !dbg !3522
  %conv78 = zext i1 %cmp77 to i32, !dbg !3522
  %38 = load double, double* %iv, align 8, !dbg !3523, !tbaa !1190
  %cmp79 = fcmp ogt double %38, 1.000000e+00, !dbg !3524
  %conv80 = zext i1 %cmp79 to i32, !dbg !3524
  %cmp81 = icmp eq i32 %conv78, %conv80, !dbg !3525
  br i1 %cmp81, label %if.then.83, label %if.else.86, !dbg !3526

if.then.83:                                       ; preds = %if.else.76
  %39 = load double, double* %iw, align 8, !dbg !3527, !tbaa !1190
  %call84 = call double @fabs(double %39) #2, !dbg !3528
  %call85 = call %struct._object* @PyFloat_FromDouble(double %call84), !dbg !3529
  store %struct._object* %call85, %struct._object** %retval, !dbg !3530
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3530

if.else.86:                                       ; preds = %if.else.76
  %call87 = call %struct._object* @PyFloat_FromDouble(double 0.000000e+00), !dbg !3531
  store %struct._object* %call87, %struct._object** %retval, !dbg !3532
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3532

if.end.88:                                        ; preds = %cond.false.66, %cond.true.63, %cond.true.58
  br i1 false, label %cond.true.89, label %cond.false.93, !dbg !3533

cond.true.89:                                     ; preds = %if.end.88
  %40 = load double, double* %iv, align 8, !dbg !3534, !tbaa !1190
  %conv90 = fptrunc double %40 to float, !dbg !3534
  %call91 = call i32 @__isinff(float %conv90) #2, !dbg !3536
  %tobool92 = icmp ne i32 %call91, 0, !dbg !3536
  br i1 %tobool92, label %if.then.101, label %if.end.124, !dbg !3537

cond.false.93:                                    ; preds = %if.end.88
  br i1 true, label %cond.true.94, label %cond.false.97, !dbg !3538

cond.true.94:                                     ; preds = %cond.false.93
  %41 = load double, double* %iv, align 8, !dbg !3539, !tbaa !1190
  %call95 = call i32 @__isinf(double %41) #2, !dbg !3541
  %tobool96 = icmp ne i32 %call95, 0, !dbg !3541
  br i1 %tobool96, label %if.then.101, label %if.end.124, !dbg !3542

cond.false.97:                                    ; preds = %cond.false.93
  %42 = load double, double* %iv, align 8, !dbg !3543, !tbaa !1190
  %conv98 = fpext double %42 to x86_fp80, !dbg !3543
  %call99 = call i32 @__isinfl(x86_fp80 %conv98) #2, !dbg !3545
  %tobool100 = icmp ne i32 %call99, 0, !dbg !3545
  br i1 %tobool100, label %if.then.101, label %if.end.124, !dbg !3533

if.then.101:                                      ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %43 = bitcast i32* %iw_is_odd to i8*, !dbg !3546
  call void @llvm.lifetime.start(i64 4, i8* %43) #1, !dbg !3546
  call void @llvm.dbg.declare(metadata i32* %iw_is_odd, metadata !621, metadata !1038), !dbg !3547
  %44 = load double, double* %iw, align 8, !dbg !3548, !tbaa !1190
  %call102 = call double @fabs(double %44) #2, !dbg !3549
  %call103 = call double @fmod(double %call102, double 2.000000e+00) #1, !dbg !3550
  %cmp104 = fcmp oeq double %call103, 1.000000e+00, !dbg !3551
  %conv105 = zext i1 %cmp104 to i32, !dbg !3551
  store i32 %conv105, i32* %iw_is_odd, align 4, !dbg !3547, !tbaa !1042
  %45 = load double, double* %iw, align 8, !dbg !3552, !tbaa !1190
  %cmp106 = fcmp ogt double %45, 0.000000e+00, !dbg !3554
  br i1 %cmp106, label %if.then.108, label %if.else.116, !dbg !3555

if.then.108:                                      ; preds = %if.then.101
  %46 = load i32, i32* %iw_is_odd, align 4, !dbg !3556, !tbaa !1042
  %tobool109 = icmp ne i32 %46, 0, !dbg !3556
  br i1 %tobool109, label %cond.true.110, label %cond.false.111, !dbg !3556

cond.true.110:                                    ; preds = %if.then.108
  %47 = load double, double* %iv, align 8, !dbg !3557, !tbaa !1190
  br label %cond.end.113, !dbg !3556

cond.false.111:                                   ; preds = %if.then.108
  %48 = load double, double* %iv, align 8, !dbg !3559, !tbaa !1190
  %call112 = call double @fabs(double %48) #2, !dbg !3561
  br label %cond.end.113, !dbg !3556

cond.end.113:                                     ; preds = %cond.false.111, %cond.true.110
  %cond114 = phi double [ %47, %cond.true.110 ], [ %call112, %cond.false.111 ], !dbg !3556
  %call115 = call %struct._object* @PyFloat_FromDouble(double %cond114), !dbg !3562
  store %struct._object* %call115, %struct._object** %retval, !dbg !3565
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3565

if.else.116:                                      ; preds = %if.then.101
  %49 = load i32, i32* %iw_is_odd, align 4, !dbg !3566, !tbaa !1042
  %tobool117 = icmp ne i32 %49, 0, !dbg !3566
  br i1 %tobool117, label %cond.true.118, label %cond.false.120, !dbg !3566

cond.true.118:                                    ; preds = %if.else.116
  %50 = load double, double* %iv, align 8, !dbg !3567, !tbaa !1190
  %call119 = call double @copysign(double 0.000000e+00, double %50) #2, !dbg !3568
  br label %cond.end.121, !dbg !3566

cond.false.120:                                   ; preds = %if.else.116
  br label %cond.end.121, !dbg !3569

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.118
  %cond122 = phi double [ %call119, %cond.true.118 ], [ 0.000000e+00, %cond.false.120 ], !dbg !3566
  %call123 = call %struct._object* @PyFloat_FromDouble(double %cond122), !dbg !3570
  store %struct._object* %call123, %struct._object** %retval, !dbg !3572
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3572

cleanup:                                          ; preds = %cond.end.121, %cond.end.113
  %51 = bitcast i32* %iw_is_odd to i8*, !dbg !3573
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !3573
  br label %cleanup.208

if.end.124:                                       ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %52 = load double, double* %iv, align 8, !dbg !3574, !tbaa !1190
  %cmp125 = fcmp oeq double %52, 0.000000e+00, !dbg !3575
  br i1 %cmp125, label %if.then.127, label %if.end.144, !dbg !3576

if.then.127:                                      ; preds = %if.end.124
  %53 = bitcast i32* %iw_is_odd128 to i8*, !dbg !3577
  call void @llvm.lifetime.start(i64 4, i8* %53) #1, !dbg !3577
  call void @llvm.dbg.declare(metadata i32* %iw_is_odd128, metadata !624, metadata !1038), !dbg !3578
  %54 = load double, double* %iw, align 8, !dbg !3579, !tbaa !1190
  %call129 = call double @fabs(double %54) #2, !dbg !3580
  %call130 = call double @fmod(double %call129, double 2.000000e+00) #1, !dbg !3581
  %cmp131 = fcmp oeq double %call130, 1.000000e+00, !dbg !3582
  %conv132 = zext i1 %cmp131 to i32, !dbg !3582
  store i32 %conv132, i32* %iw_is_odd128, align 4, !dbg !3578, !tbaa !1042
  %55 = load double, double* %iw, align 8, !dbg !3583, !tbaa !1190
  %cmp133 = fcmp olt double %55, 0.000000e+00, !dbg !3585
  br i1 %cmp133, label %if.then.135, label %if.end.136, !dbg !3586

if.then.135:                                      ; preds = %if.then.127
  %56 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !3587, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0)), !dbg !3589
  store %struct._object* null, %struct._object** %retval, !dbg !3590
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143, !dbg !3590

if.end.136:                                       ; preds = %if.then.127
  %57 = load i32, i32* %iw_is_odd128, align 4, !dbg !3591, !tbaa !1042
  %tobool137 = icmp ne i32 %57, 0, !dbg !3591
  br i1 %tobool137, label %cond.true.138, label %cond.false.139, !dbg !3591

cond.true.138:                                    ; preds = %if.end.136
  %58 = load double, double* %iv, align 8, !dbg !3592, !tbaa !1190
  br label %cond.end.140, !dbg !3591

cond.false.139:                                   ; preds = %if.end.136
  br label %cond.end.140, !dbg !3594

cond.end.140:                                     ; preds = %cond.false.139, %cond.true.138
  %cond141 = phi double [ %58, %cond.true.138 ], [ 0.000000e+00, %cond.false.139 ], !dbg !3591
  %call142 = call %struct._object* @PyFloat_FromDouble(double %cond141), !dbg !3596
  store %struct._object* %call142, %struct._object** %retval, !dbg !3599
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.143, !dbg !3599

cleanup.143:                                      ; preds = %cond.end.140, %if.then.135
  %59 = bitcast i32* %iw_is_odd128 to i8*, !dbg !3600
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !3600
  br label %cleanup.208

if.end.144:                                       ; preds = %if.end.124
  %60 = load double, double* %iv, align 8, !dbg !3601, !tbaa !1190
  %cmp145 = fcmp olt double %60, 0.000000e+00, !dbg !3603
  br i1 %cmp145, label %if.then.147, label %if.end.158, !dbg !3604

if.then.147:                                      ; preds = %if.end.144
  %61 = load double, double* %iw, align 8, !dbg !3605, !tbaa !1190
  %62 = load double, double* %iw, align 8, !dbg !3608, !tbaa !1190
  %call148 = call double @floor(double %62) #2, !dbg !3609
  %cmp149 = fcmp une double %61, %call148, !dbg !3610
  br i1 %cmp149, label %if.then.151, label %if.end.153, !dbg !3611

if.then.151:                                      ; preds = %if.then.147
  %63 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyComplex_Type, i32 0, i32 10), align 8, !dbg !3612, !tbaa !1450
  %nb_power = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %63, i32 0, i32 5, !dbg !3614
  %64 = load %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)** %nb_power, align 8, !dbg !3614, !tbaa !3615
  %65 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3616, !tbaa !1048
  %66 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3617, !tbaa !1048
  %67 = load %struct._object*, %struct._object** %z.addr, align 8, !dbg !3618, !tbaa !1048
  %call152 = call %struct._object* %64(%struct._object* %65, %struct._object* %66, %struct._object* %67), !dbg !3619
  store %struct._object* %call152, %struct._object** %retval, !dbg !3620
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3620

if.end.153:                                       ; preds = %if.then.147
  %68 = load double, double* %iv, align 8, !dbg !3621, !tbaa !1190
  %sub = fsub double -0.000000e+00, %68, !dbg !3622
  store double %sub, double* %iv, align 8, !dbg !3623, !tbaa !1190
  %69 = load double, double* %iw, align 8, !dbg !3624, !tbaa !1190
  %call154 = call double @fabs(double %69) #2, !dbg !3625
  %call155 = call double @fmod(double %call154, double 2.000000e+00) #1, !dbg !3626
  %cmp156 = fcmp oeq double %call155, 1.000000e+00, !dbg !3627
  %conv157 = zext i1 %cmp156 to i32, !dbg !3627
  store i32 %conv157, i32* %negate_result, align 4, !dbg !3628, !tbaa !1042
  br label %if.end.158, !dbg !3629

if.end.158:                                       ; preds = %if.end.153, %if.end.144
  %70 = load double, double* %iv, align 8, !dbg !3630, !tbaa !1190
  %cmp159 = fcmp oeq double %70, 1.000000e+00, !dbg !3632
  br i1 %cmp159, label %if.then.161, label %if.end.165, !dbg !3633

if.then.161:                                      ; preds = %if.end.158
  %71 = load i32, i32* %negate_result, align 4, !dbg !3634, !tbaa !1042
  %tobool162 = icmp ne i32 %71, 0, !dbg !3634
  %cond163 = select i1 %tobool162, double -1.000000e+00, double 1.000000e+00, !dbg !3634
  %call164 = call %struct._object* @PyFloat_FromDouble(double %cond163), !dbg !3636
  store %struct._object* %call164, %struct._object** %retval, !dbg !3637
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3637

if.end.165:                                       ; preds = %if.end.158
  %call166 = call i32* @__errno_location() #2, !dbg !3638
  store i32 0, i32* %call166, align 4, !dbg !3639, !tbaa !1042
  %72 = load double, double* %iv, align 8, !dbg !3640, !tbaa !1190
  %73 = load double, double* %iw, align 8, !dbg !3641, !tbaa !1190
  %call167 = call double @pow(double %72, double %73) #1, !dbg !3642
  store double %call167, double* %ix, align 8, !dbg !3643, !tbaa !1190
  br label %do.body, !dbg !3644

do.body:                                          ; preds = %if.end.165
  %call168 = call i32* @__errno_location() #2, !dbg !3645
  %74 = load i32, i32* %call168, align 4, !dbg !3649, !tbaa !1042
  %cmp169 = icmp eq i32 %74, 0, !dbg !3650
  br i1 %cmp169, label %if.then.171, label %if.else.180, !dbg !3651

if.then.171:                                      ; preds = %do.body
  %75 = load double, double* %ix, align 8, !dbg !3652, !tbaa !1190
  %cmp172 = fcmp oeq double %75, 0x7FF0000000000000, !dbg !3656
  br i1 %cmp172, label %if.then.177, label %lor.lhs.false.174, !dbg !3657

lor.lhs.false.174:                                ; preds = %if.then.171
  %76 = load double, double* %ix, align 8, !dbg !3658, !tbaa !1190
  %cmp175 = fcmp oeq double %76, 0xFFF0000000000000, !dbg !3660
  br i1 %cmp175, label %if.then.177, label %if.end.179, !dbg !3661

if.then.177:                                      ; preds = %lor.lhs.false.174, %if.then.171
  %call178 = call i32* @__errno_location() #2, !dbg !3662
  store i32 34, i32* %call178, align 4, !dbg !3665, !tbaa !1042
  br label %if.end.179, !dbg !3666

if.end.179:                                       ; preds = %if.then.177, %lor.lhs.false.174
  br label %if.end.189, !dbg !3667

if.else.180:                                      ; preds = %do.body
  %call181 = call i32* @__errno_location() #2, !dbg !3670
  %77 = load i32, i32* %call181, align 4, !dbg !3673, !tbaa !1042
  %cmp182 = icmp eq i32 %77, 34, !dbg !3674
  br i1 %cmp182, label %land.lhs.true, label %if.end.188, !dbg !3675

land.lhs.true:                                    ; preds = %if.else.180
  %78 = load double, double* %ix, align 8, !dbg !3676, !tbaa !1190
  %cmp184 = fcmp oeq double %78, 0.000000e+00, !dbg !3678
  br i1 %cmp184, label %if.then.186, label %if.end.188, !dbg !3679

if.then.186:                                      ; preds = %land.lhs.true
  %call187 = call i32* @__errno_location() #2, !dbg !3680
  store i32 0, i32* %call187, align 4, !dbg !3682, !tbaa !1042
  br label %if.end.188, !dbg !3683

if.end.188:                                       ; preds = %if.then.186, %land.lhs.true, %if.else.180
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.179
  br label %do.cond, !dbg !3684

do.cond:                                          ; preds = %if.end.189
  br label %do.end, !dbg !3686

do.end:                                           ; preds = %do.cond
  %79 = load i32, i32* %negate_result, align 4, !dbg !3688, !tbaa !1042
  %tobool190 = icmp ne i32 %79, 0, !dbg !3688
  br i1 %tobool190, label %if.then.191, label %if.end.193, !dbg !3690

if.then.191:                                      ; preds = %do.end
  %80 = load double, double* %ix, align 8, !dbg !3691, !tbaa !1190
  %sub192 = fsub double -0.000000e+00, %80, !dbg !3692
  store double %sub192, double* %ix, align 8, !dbg !3693, !tbaa !1190
  br label %if.end.193, !dbg !3694

if.end.193:                                       ; preds = %if.then.191, %do.end
  %call194 = call i32* @__errno_location() #2, !dbg !3695
  %81 = load i32, i32* %call194, align 4, !dbg !3697, !tbaa !1042
  %cmp195 = icmp ne i32 %81, 0, !dbg !3698
  br i1 %cmp195, label %if.then.197, label %if.end.206, !dbg !3699

if.then.197:                                      ; preds = %if.end.193
  %call198 = call i32* @__errno_location() #2, !dbg !3700
  %82 = load i32, i32* %call198, align 4, !dbg !3702, !tbaa !1042
  %cmp199 = icmp eq i32 %82, 34, !dbg !3703
  br i1 %cmp199, label %cond.true.201, label %cond.false.202, !dbg !3704

cond.true.201:                                    ; preds = %if.then.197
  %83 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !3705, !tbaa !1048
  br label %cond.end.203, !dbg !3704

cond.false.202:                                   ; preds = %if.then.197
  %84 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3707, !tbaa !1048
  br label %cond.end.203, !dbg !3704

cond.end.203:                                     ; preds = %cond.false.202, %cond.true.201
  %cond204 = phi %struct._object* [ %83, %cond.true.201 ], [ %84, %cond.false.202 ], !dbg !3704
  %call205 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %cond204), !dbg !3708
  store %struct._object* null, %struct._object** %retval, !dbg !3711
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3711

if.end.206:                                       ; preds = %if.end.193
  %85 = load double, double* %ix, align 8, !dbg !3712, !tbaa !1190
  %call207 = call %struct._object* @PyFloat_FromDouble(double %85), !dbg !3713
  store %struct._object* %call207, %struct._object** %retval, !dbg !3714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.208, !dbg !3714

cleanup.208:                                      ; preds = %if.end.206, %cond.end.203, %if.then.161, %if.then.151, %cleanup.143, %cleanup, %if.else.86, %if.then.83, %if.then.74, %cond.end, %if.then.36, %if.then.24, %if.then.20, %if.then.6, %if.then
  %86 = bitcast i32* %negate_result to i8*, !dbg !3715
  call void @llvm.lifetime.end(i64 4, i8* %86) #1, !dbg !3715
  %87 = bitcast double* %ix to i8*, !dbg !3715
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !3715
  %88 = bitcast double* %iw to i8*, !dbg !3715
  call void @llvm.lifetime.end(i64 8, i8* %88) #1, !dbg !3715
  %89 = bitcast double* %iv to i8*, !dbg !3715
  call void @llvm.lifetime.end(i64 8, i8* %89) #1, !dbg !3715
  %90 = load %struct._object*, %struct._object** %retval, !dbg !3715
  ret %struct._object* %90, !dbg !3715
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_neg(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !629, metadata !1038), !dbg !3716
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !3717, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1, !dbg !3718
  %1 = load double, double* %ob_fval, align 8, !dbg !3718, !tbaa !1230
  %sub = fsub double -0.000000e+00, %1, !dbg !3719
  %call = call %struct._object* @PyFloat_FromDouble(double %sub), !dbg !3720
  ret %struct._object* %call, !dbg !3721
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_float(%struct._object* %v) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !632, metadata !1038), !dbg !3722
  %0 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3723, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1, !dbg !3725
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3725, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %1, @PyFloat_Type, !dbg !3726
  br i1 %cmp, label %if.then, label %if.else, !dbg !3727

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3728, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0, !dbg !3729
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !3730, !tbaa !1156
  %inc = add i64 %3, 1, !dbg !3730
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3730, !tbaa !1156
  br label %if.end, !dbg !3731

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3732, !tbaa !1048
  %5 = bitcast %struct._object* %4 to %struct.PyFloatObject*, !dbg !3733
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %5, i32 0, i32 1, !dbg !3734
  %6 = load double, double* %ob_fval, align 8, !dbg !3734, !tbaa !1230
  %call = call %struct._object* @PyFloat_FromDouble(double %6), !dbg !3735
  store %struct._object* %call, %struct._object** %v.addr, align 8, !dbg !3736, !tbaa !1048
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3737, !tbaa !1048
  ret %struct._object* %7, !dbg !3738
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_abs(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !635, metadata !1038), !dbg !3739
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !3740, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1, !dbg !3741
  %1 = load double, double* %ob_fval, align 8, !dbg !3741, !tbaa !1230
  %call = call double @fabs(double %1) #2, !dbg !3742
  %call1 = call %struct._object* @PyFloat_FromDouble(double %call), !dbg !3743
  ret %struct._object* %call1, !dbg !3744
}

; Function Attrs: nounwind uwtable
define internal i32 @float_bool(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !640, metadata !1038), !dbg !3745
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !3746, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1, !dbg !3747
  %1 = load double, double* %ob_fval, align 8, !dbg !3747, !tbaa !1230
  %cmp = fcmp une double %1, 0.000000e+00, !dbg !3748
  %conv = zext i1 %cmp to i32, !dbg !3748
  ret i32 %conv, !dbg !3749
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_trunc(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %wholepart = alloca double, align 8
  %aslong = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !643, metadata !1038), !dbg !3750
  %0 = bitcast double* %x to i8*, !dbg !3751
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3751
  call void @llvm.dbg.declare(metadata double* %x, metadata !644, metadata !1038), !dbg !3752
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3753, !tbaa !1048
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !3754
  store double %call, double* %x, align 8, !dbg !3752, !tbaa !1190
  %2 = bitcast double* %wholepart to i8*, !dbg !3755
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3755
  call void @llvm.dbg.declare(metadata double* %wholepart, metadata !645, metadata !1038), !dbg !3756
  %3 = load double, double* %x, align 8, !dbg !3757, !tbaa !1190
  %call1 = call double @modf(double %3, double* %wholepart) #1, !dbg !3758
  %4 = load double, double* %wholepart, align 8, !dbg !3759, !tbaa !1190
  %cmp = fcmp olt double 0xC3E0000000000000, %4, !dbg !3760
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3761

land.lhs.true:                                    ; preds = %entry
  %5 = load double, double* %wholepart, align 8, !dbg !3762, !tbaa !1190
  %cmp2 = fcmp olt double %5, 0x43E0000000000000, !dbg !3764
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3765

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast i64* %aslong to i8*, !dbg !3766
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !3766
  call void @llvm.dbg.declare(metadata i64* %aslong, metadata !646, metadata !1038), !dbg !3767
  %7 = load double, double* %wholepart, align 8, !dbg !3768, !tbaa !1190
  %conv = fptosi double %7 to i64, !dbg !3769
  store i64 %conv, i64* %aslong, align 8, !dbg !3767, !tbaa !1310
  %8 = load i64, i64* %aslong, align 8, !dbg !3770, !tbaa !1310
  %call3 = call %struct._object* @PyLong_FromLong(i64 %8), !dbg !3771
  store %struct._object* %call3, %struct._object** %retval, !dbg !3772
  store i32 1, i32* %cleanup.dest.slot
  %9 = bitcast i64* %aslong to i8*, !dbg !3773
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3773
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load double, double* %wholepart, align 8, !dbg !3774, !tbaa !1190
  %call4 = call %struct._object* @PyLong_FromDouble(double %10), !dbg !3775
  store %struct._object* %call4, %struct._object** %retval, !dbg !3776
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3776

cleanup:                                          ; preds = %if.end, %if.then
  %11 = bitcast double* %wholepart to i8*, !dbg !3777
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3777
  %12 = bitcast double* %x to i8*, !dbg !3777
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !3777
  %13 = load %struct._object*, %struct._object** %retval, !dbg !3777
  ret %struct._object* %13, !dbg !3777
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_floor_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !652, metadata !1038), !dbg !3778
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !653, metadata !1038), !dbg !3779
  %0 = bitcast %struct._object** %t to i8*, !dbg !3780
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3780
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !654, metadata !1038), !dbg !3781
  %1 = bitcast %struct._object** %r to i8*, !dbg !3780
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3780
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !655, metadata !1038), !dbg !3782
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3783, !tbaa !1048
  %3 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3784, !tbaa !1048
  %call = call %struct._object* @float_divmod(%struct._object* %2, %struct._object* %3), !dbg !3785
  store %struct._object* %call, %struct._object** %t, align 8, !dbg !3786, !tbaa !1048
  %4 = load %struct._object*, %struct._object** %t, align 8, !dbg !3787, !tbaa !1048
  %cmp = icmp eq %struct._object* %4, null, !dbg !3789
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3790

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %t, align 8, !dbg !3791, !tbaa !1048
  %cmp1 = icmp eq %struct._object* %5, @_Py_NotImplementedStruct, !dbg !3793
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3794

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %t, align 8, !dbg !3795, !tbaa !1048
  store %struct._object* %6, %struct._object** %retval, !dbg !3796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3796

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %t, align 8, !dbg !3797, !tbaa !1048
  %8 = bitcast %struct._object* %7 to %struct.PyTupleObject*, !dbg !3798
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %8, i32 0, i32 1, !dbg !3799
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0, !dbg !3800
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3800, !tbaa !1048
  store %struct._object* %9, %struct._object** %r, align 8, !dbg !3801, !tbaa !1048
  %10 = load %struct._object*, %struct._object** %r, align 8, !dbg !3802, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !3803
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !3804, !tbaa !1156
  %inc = add i64 %11, 1, !dbg !3804
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3804, !tbaa !1156
  br label %do.body, !dbg !3805

do.body:                                          ; preds = %if.end
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3806
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !3806
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !656, metadata !1038), !dbg !3808
  %13 = load %struct._object*, %struct._object** %t, align 8, !dbg !3809, !tbaa !1048
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !3808, !tbaa !1048
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3810, !tbaa !1048
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !3812
  %15 = load i64, i64* %ob_refcnt2, align 8, !dbg !3813, !tbaa !1156
  %dec = add i64 %15, -1, !dbg !3813
  store i64 %dec, i64* %ob_refcnt2, align 8, !dbg !3813, !tbaa !1156
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3814
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3815

if.then.4:                                        ; preds = %do.body
  br label %if.end.5, !dbg !3816

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3818, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !3820
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3820, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !3821
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3821, !tbaa !1168
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3822, !tbaa !1048
  call void %18(%struct._object* %19), !dbg !3823
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3824
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !3824
  br label %do.cond, !dbg !3826

do.cond:                                          ; preds = %if.end.5
  br label %do.end, !dbg !3827

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %r, align 8, !dbg !3829, !tbaa !1048
  store %struct._object* %21, %struct._object** %retval, !dbg !3830
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3830

cleanup:                                          ; preds = %do.end, %if.then
  %22 = bitcast %struct._object** %r to i8*, !dbg !3831
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3831
  %23 = bitcast %struct._object** %t to i8*, !dbg !3831
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3831
  %24 = load %struct._object*, %struct._object** %retval, !dbg !3831
  ret %struct._object* %24, !dbg !3831
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_div(%struct._object* %v, %struct._object* %w) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %w.addr = alloca %struct._object*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !660, metadata !1038), !dbg !3832
  store %struct._object* %w, %struct._object** %w.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %w.addr, metadata !661, metadata !1038), !dbg !3833
  %0 = bitcast double* %a to i8*, !dbg !3834
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3834
  call void @llvm.dbg.declare(metadata double* %a, metadata !662, metadata !1038), !dbg !3835
  %1 = bitcast double* %b to i8*, !dbg !3834
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3834
  call void @llvm.dbg.declare(metadata double* %b, metadata !663, metadata !1038), !dbg !3836
  %2 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3837, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !3839
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3839, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %3, @PyFloat_Type, !dbg !3840
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !3841

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3842, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1, !dbg !3844
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !3844, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @PyFloat_Type), !dbg !3845
  %tobool = icmp ne i32 %call, 0, !dbg !3845
  br i1 %tobool, label %if.then, label %if.else, !dbg !3846

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3847, !tbaa !1048
  %7 = bitcast %struct._object* %6 to %struct.PyFloatObject*, !dbg !3850
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %7, i32 0, i32 1, !dbg !3851
  %8 = load double, double* %ob_fval, align 8, !dbg !3851, !tbaa !1230
  store double %8, double* %a, align 8, !dbg !3852, !tbaa !1190
  br label %if.end.5, !dbg !3853

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %a), !dbg !3854
  %cmp3 = icmp slt i32 %call2, 0, !dbg !3857
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !3858

if.then.4:                                        ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3859, !tbaa !1048
  store %struct._object* %9, %struct._object** %retval, !dbg !3861
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3861

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %10 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3862, !tbaa !1048
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !3864
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8, !dbg !3864, !tbaa !1166
  %cmp7 = icmp eq %struct._typeobject* %11, @PyFloat_Type, !dbg !3865
  br i1 %cmp7, label %if.then.12, label %lor.lhs.false.8, !dbg !3866

lor.lhs.false.8:                                  ; preds = %if.end.5
  %12 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3867, !tbaa !1048
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3869
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !3869, !tbaa !1166
  %call10 = call i32 @PyType_IsSubtype(%struct._typeobject* %13, %struct._typeobject* @PyFloat_Type), !dbg !3870
  %tobool11 = icmp ne i32 %call10, 0, !dbg !3870
  br i1 %tobool11, label %if.then.12, label %if.else.14, !dbg !3871

if.then.12:                                       ; preds = %lor.lhs.false.8, %if.end.5
  %14 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3872, !tbaa !1048
  %15 = bitcast %struct._object* %14 to %struct.PyFloatObject*, !dbg !3875
  %ob_fval13 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %15, i32 0, i32 1, !dbg !3876
  %16 = load double, double* %ob_fval13, align 8, !dbg !3876, !tbaa !1230
  store double %16, double* %b, align 8, !dbg !3877, !tbaa !1190
  br label %if.end.19, !dbg !3878

if.else.14:                                       ; preds = %lor.lhs.false.8
  %call15 = call i32 @convert_to_double(%struct._object** %w.addr, double* %b), !dbg !3879
  %cmp16 = icmp slt i32 %call15, 0, !dbg !3882
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !3883

if.then.17:                                       ; preds = %if.else.14
  %17 = load %struct._object*, %struct._object** %w.addr, align 8, !dbg !3884, !tbaa !1048
  store %struct._object* %17, %struct._object** %retval, !dbg !3886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3886

if.end.18:                                        ; preds = %if.else.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %18 = load double, double* %b, align 8, !dbg !3887, !tbaa !1190
  %cmp20 = fcmp oeq double %18, 0.000000e+00, !dbg !3889
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !3890

if.then.21:                                       ; preds = %if.end.19
  %19 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8, !dbg !3891, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0)), !dbg !3893
  store %struct._object* null, %struct._object** %retval, !dbg !3894
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3894

if.end.22:                                        ; preds = %if.end.19
  %20 = load double, double* %a, align 8, !dbg !3895, !tbaa !1190
  %21 = load double, double* %b, align 8, !dbg !3896, !tbaa !1190
  %div = fdiv double %20, %21, !dbg !3897
  store double %div, double* %a, align 8, !dbg !3898, !tbaa !1190
  %22 = load double, double* %a, align 8, !dbg !3899, !tbaa !1190
  %call23 = call %struct._object* @PyFloat_FromDouble(double %22), !dbg !3900
  store %struct._object* %call23, %struct._object** %retval, !dbg !3901
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3901

cleanup:                                          ; preds = %if.end.22, %if.then.21, %if.then.17, %if.then.4
  %23 = bitcast double* %b to i8*, !dbg !3902
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3902
  %24 = bitcast double* %a to i8*, !dbg !3902
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3902
  %25 = load %struct._object*, %struct._object** %retval, !dbg !3902
  ret %struct._object* %25, !dbg !3902
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_to_double(%struct._object** %v, double* %dbl) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct._object**, align 8
  %dbl.addr = alloca double*, align 8
  %obj = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object** %v, %struct._object*** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object*** %v.addr, metadata !581, metadata !1038), !dbg !3903
  store double* %dbl, double** %dbl.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata double** %dbl.addr, metadata !582, metadata !1038), !dbg !3904
  %0 = bitcast %struct._object** %obj to i8*, !dbg !3905
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3905
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !583, metadata !1038), !dbg !3906
  %1 = load %struct._object**, %struct._object*** %v.addr, align 8, !dbg !3907, !tbaa !1048
  %2 = load %struct._object*, %struct._object** %1, align 8, !dbg !3908, !tbaa !1048
  store %struct._object* %2, %struct._object** %obj, align 8, !dbg !3906, !tbaa !1048
  %3 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3909, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !3911
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3911, !tbaa !1166
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19, !dbg !3912
  %5 = load i64, i64* %tp_flags, align 8, !dbg !3912, !tbaa !1252
  %and = and i64 %5, 16777216, !dbg !3913
  %cmp = icmp ne i64 %and, 0, !dbg !3914
  br i1 %cmp, label %if.then, label %if.else, !dbg !3915

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3916, !tbaa !1048
  %call = call double @PyLong_AsDouble(%struct._object* %6), !dbg !3918
  %7 = load double*, double** %dbl.addr, align 8, !dbg !3919, !tbaa !1048
  store double %call, double* %7, align 8, !dbg !3920, !tbaa !1190
  %8 = load double*, double** %dbl.addr, align 8, !dbg !3921, !tbaa !1048
  %9 = load double, double* %8, align 8, !dbg !3923, !tbaa !1190
  %cmp1 = fcmp oeq double %9, -1.000000e+00, !dbg !3924
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !3925

land.lhs.true:                                    ; preds = %if.then
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !3926
  %tobool = icmp ne %struct._object* %call2, null, !dbg !3926
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !3928

if.then.3:                                        ; preds = %land.lhs.true
  %10 = load %struct._object**, %struct._object*** %v.addr, align 8, !dbg !3929, !tbaa !1048
  store %struct._object* null, %struct._object** %10, align 8, !dbg !3931, !tbaa !1048
  store i32 -1, i32* %retval, !dbg !3932
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3932

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.4, !dbg !3933

if.else:                                          ; preds = %entry
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !3934, !tbaa !1156
  %inc = add i64 %11, 1, !dbg !3934
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8, !dbg !3934, !tbaa !1156
  %12 = load %struct._object**, %struct._object*** %v.addr, align 8, !dbg !3936, !tbaa !1048
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %12, align 8, !dbg !3937, !tbaa !1048
  store i32 -1, i32* %retval, !dbg !3938
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3938

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %retval, !dbg !3939
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3939

cleanup:                                          ; preds = %if.end.4, %if.else, %if.then.3
  %13 = bitcast %struct._object** %obj to i8*, !dbg !3940
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !3940
  %14 = load i32, i32* %retval, !dbg !3940
  ret i32 %14, !dbg !3940
}

declare double @PyLong_AsDouble(%struct._object*) #3

; Function Attrs: nounwind
declare double @fmod(double, double) #5

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #6

; Function Attrs: nounwind readnone
declare double @floor(double) #6

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #6

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #6

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #6

; Function Attrs: nounwind readnone
declare double @fabs(double) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare double @pow(double, double) #5

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

; Function Attrs: nounwind
declare double @modf(double, double*) #5

declare %struct._object* @PyLong_FromDouble(double) #3

declare i64 @_Py_HashDouble(double) #3

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #6

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #6

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #6

declare i32 @_PyLong_Sign(%struct._object*) #3

declare i64 @_PyLong_NumBits(%struct._object*) #3

declare void @PyErr_Clear() #3

declare %struct._object* @PyNumber_Negative(%struct._object*) #3

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #3

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #3

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @PyBool_FromLong(i64) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !718, metadata !1038), !dbg !3941
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !719, metadata !1038), !dbg !3942
  %0 = bitcast double* %x to i8*, !dbg !3943
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3943
  call void @llvm.dbg.declare(metadata double* %x, metadata !720, metadata !1038), !dbg !3944
  %1 = bitcast double* %rounded to i8*, !dbg !3943
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3943
  call void @llvm.dbg.declare(metadata double* %rounded, metadata !721, metadata !1038), !dbg !3945
  %2 = bitcast %struct._object** %o_ndigits to i8*, !dbg !3946
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3946
  call void @llvm.dbg.declare(metadata %struct._object** %o_ndigits, metadata !722, metadata !1038), !dbg !3947
  store %struct._object* null, %struct._object** %o_ndigits, align 8, !dbg !3947, !tbaa !1048
  %3 = bitcast i64* %ndigits to i8*, !dbg !3948
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3948
  call void @llvm.dbg.declare(metadata i64* %ndigits, metadata !723, metadata !1038), !dbg !3949
  %4 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !3950, !tbaa !1048
  %call = call double @PyFloat_AsDouble(%struct._object* %4), !dbg !3951
  store double %call, double* %x, align 8, !dbg !3952, !tbaa !1190
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3953, !tbaa !1048
  %call1 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), %struct._object** %o_ndigits), !dbg !3955
  %tobool = icmp ne i32 %call1, 0, !dbg !3955
  br i1 %tobool, label %if.end, label %if.then, !dbg !3956

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3957
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3957

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %o_ndigits, align 8, !dbg !3958, !tbaa !1048
  %cmp = icmp eq %struct._object* %6, null, !dbg !3960
  br i1 %cmp, label %if.then.2, label %if.end.10, !dbg !3961

if.then.2:                                        ; preds = %if.end
  %7 = load double, double* %x, align 8, !dbg !3962, !tbaa !1190
  %call3 = call double @round(double %7) #2, !dbg !3964
  store double %call3, double* %rounded, align 8, !dbg !3965, !tbaa !1190
  %8 = load double, double* %x, align 8, !dbg !3966, !tbaa !1190
  %9 = load double, double* %rounded, align 8, !dbg !3968, !tbaa !1190
  %sub = fsub double %8, %9, !dbg !3969
  %call4 = call double @fabs(double %sub) #2, !dbg !3970
  %cmp5 = fcmp oeq double %call4, 5.000000e-01, !dbg !3971
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !3972

if.then.6:                                        ; preds = %if.then.2
  %10 = load double, double* %x, align 8, !dbg !3973, !tbaa !1190
  %div = fdiv double %10, 2.000000e+00, !dbg !3974
  %call7 = call double @round(double %div) #2, !dbg !3975
  %mul = fmul double 2.000000e+00, %call7, !dbg !3976
  store double %mul, double* %rounded, align 8, !dbg !3977, !tbaa !1190
  br label %if.end.8, !dbg !3978

if.end.8:                                         ; preds = %if.then.6, %if.then.2
  %11 = load double, double* %rounded, align 8, !dbg !3979, !tbaa !1190
  %call9 = call %struct._object* @PyLong_FromDouble(double %11), !dbg !3980
  store %struct._object* %call9, %struct._object** %retval, !dbg !3981
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3981

if.end.10:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %o_ndigits, align 8, !dbg !3982, !tbaa !1048
  %call11 = call i64 @PyNumber_AsSsize_t(%struct._object* %12, %struct._object* null), !dbg !3983
  store i64 %call11, i64* %ndigits, align 8, !dbg !3984, !tbaa !1310
  %13 = load i64, i64* %ndigits, align 8, !dbg !3985, !tbaa !1310
  %cmp12 = icmp eq i64 %13, -1, !dbg !3987
  br i1 %cmp12, label %land.lhs.true, label %if.end.16, !dbg !3988

land.lhs.true:                                    ; preds = %if.end.10
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !3989
  %tobool14 = icmp ne %struct._object* %call13, null, !dbg !3989
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !3991

if.then.15:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !3992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3992

if.end.16:                                        ; preds = %land.lhs.true, %if.end.10
  br i1 false, label %cond.true, label %cond.false, !dbg !3993

cond.true:                                        ; preds = %if.end.16
  %14 = load double, double* %x, align 8, !dbg !3994, !tbaa !1190
  %conv = fptrunc double %14 to float, !dbg !3994
  %call17 = call i32 @__finitef(float %conv) #2, !dbg !3997
  %tobool18 = icmp ne i32 %call17, 0, !dbg !3997
  br i1 %tobool18, label %if.end.28, label %if.then.26, !dbg !3998

cond.false:                                       ; preds = %if.end.16
  br i1 true, label %cond.true.19, label %cond.false.22, !dbg !3999

cond.true.19:                                     ; preds = %cond.false
  %15 = load double, double* %x, align 8, !dbg !4001, !tbaa !1190
  %call20 = call i32 @__finite(double %15) #2, !dbg !4003
  %tobool21 = icmp ne i32 %call20, 0, !dbg !4003
  br i1 %tobool21, label %if.end.28, label %if.then.26, !dbg !4004

cond.false.22:                                    ; preds = %cond.false
  %16 = load double, double* %x, align 8, !dbg !4005, !tbaa !1190
  %conv23 = fpext double %16 to x86_fp80, !dbg !4005
  %call24 = call i32 @__finitel(x86_fp80 %conv23) #2, !dbg !4007
  %tobool25 = icmp ne i32 %call24, 0, !dbg !4007
  br i1 %tobool25, label %if.end.28, label %if.then.26, !dbg !3993

if.then.26:                                       ; preds = %cond.false.22, %cond.true.19, %cond.true
  %17 = load double, double* %x, align 8, !dbg !4008, !tbaa !1190
  %call27 = call %struct._object* @PyFloat_FromDouble(double %17), !dbg !4009
  store %struct._object* %call27, %struct._object** %retval, !dbg !4010
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4010

if.end.28:                                        ; preds = %cond.false.22, %cond.true.19, %cond.true
  %18 = load i64, i64* %ndigits, align 8, !dbg !4011, !tbaa !1310
  %cmp29 = icmp sgt i64 %18, 323, !dbg !4013
  br i1 %cmp29, label %if.then.31, label %if.else, !dbg !4014

if.then.31:                                       ; preds = %if.end.28
  %19 = load double, double* %x, align 8, !dbg !4015, !tbaa !1190
  %call32 = call %struct._object* @PyFloat_FromDouble(double %19), !dbg !4016
  store %struct._object* %call32, %struct._object** %retval, !dbg !4017
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4017

if.else:                                          ; preds = %if.end.28
  %20 = load i64, i64* %ndigits, align 8, !dbg !4018, !tbaa !1310
  %cmp33 = icmp slt i64 %20, -308, !dbg !4020
  br i1 %cmp33, label %if.then.35, label %if.else.38, !dbg !4021

if.then.35:                                       ; preds = %if.else
  %21 = load double, double* %x, align 8, !dbg !4022, !tbaa !1190
  %mul36 = fmul double 0.000000e+00, %21, !dbg !4023
  %call37 = call %struct._object* @PyFloat_FromDouble(double %mul36), !dbg !4024
  store %struct._object* %call37, %struct._object** %retval, !dbg !4025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4025

if.else.38:                                       ; preds = %if.else
  %22 = load double, double* %x, align 8, !dbg !4026, !tbaa !1190
  %23 = load i64, i64* %ndigits, align 8, !dbg !4027, !tbaa !1310
  %conv39 = trunc i64 %23 to i32, !dbg !4028
  %call40 = call %struct._object* @double_round(double %22, i32 %conv39), !dbg !4029
  store %struct._object* %call40, %struct._object** %retval, !dbg !4030
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4030

cleanup:                                          ; preds = %if.else.38, %if.then.35, %if.then.31, %if.then.26, %if.then.15, %if.end.8, %if.then
  %24 = bitcast i64* %ndigits to i8*, !dbg !4031
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !4031
  %25 = bitcast %struct._object** %o_ndigits to i8*, !dbg !4031
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !4031
  %26 = bitcast double* %rounded to i8*, !dbg !4031
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4031
  %27 = bitcast double* %x to i8*, !dbg !4031
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !4031
  %28 = load %struct._object*, %struct._object** %retval, !dbg !4031
  ret %struct._object* %28, !dbg !4031
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_xdecref_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_xdecref_tmp141 = alloca %struct._object*, align 8
  %_py_decref_tmp146 = alloca %struct._object*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !747, metadata !1038), !dbg !4032
  store %struct._object* %unused, %struct._object** %unused.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %unused.addr, metadata !748, metadata !1038), !dbg !4033
  %0 = bitcast double* %self to i8*, !dbg !4034
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4034
  call void @llvm.dbg.declare(metadata double* %self, metadata !749, metadata !1038), !dbg !4035
  %1 = bitcast double* %float_part to i8*, !dbg !4036
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4036
  call void @llvm.dbg.declare(metadata double* %float_part, metadata !750, metadata !1038), !dbg !4037
  %2 = bitcast i32* %exponent to i8*, !dbg !4038
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4038
  call void @llvm.dbg.declare(metadata i32* %exponent, metadata !751, metadata !1038), !dbg !4039
  %3 = bitcast i32* %i to i8*, !dbg !4040
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !4040
  call void @llvm.dbg.declare(metadata i32* %i, metadata !752, metadata !1038), !dbg !4041
  %4 = bitcast %struct._object** %prev to i8*, !dbg !4042
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4042
  call void @llvm.dbg.declare(metadata %struct._object** %prev, metadata !753, metadata !1038), !dbg !4043
  %5 = bitcast %struct._object** %py_exponent to i8*, !dbg !4044
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4044
  call void @llvm.dbg.declare(metadata %struct._object** %py_exponent, metadata !754, metadata !1038), !dbg !4045
  store %struct._object* null, %struct._object** %py_exponent, align 8, !dbg !4045, !tbaa !1048
  %6 = bitcast %struct._object** %numerator to i8*, !dbg !4046
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4046
  call void @llvm.dbg.declare(metadata %struct._object** %numerator, metadata !755, metadata !1038), !dbg !4047
  store %struct._object* null, %struct._object** %numerator, align 8, !dbg !4047, !tbaa !1048
  %7 = bitcast %struct._object** %denominator to i8*, !dbg !4048
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4048
  call void @llvm.dbg.declare(metadata %struct._object** %denominator, metadata !756, metadata !1038), !dbg !4049
  store %struct._object* null, %struct._object** %denominator, align 8, !dbg !4049, !tbaa !1048
  %8 = bitcast %struct._object** %result_pair to i8*, !dbg !4050
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !4050
  call void @llvm.dbg.declare(metadata %struct._object** %result_pair, metadata !757, metadata !1038), !dbg !4051
  store %struct._object* null, %struct._object** %result_pair, align 8, !dbg !4051, !tbaa !1048
  %9 = bitcast %struct.PyNumberMethods** %long_methods to i8*, !dbg !4052
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4052
  call void @llvm.dbg.declare(metadata %struct.PyNumberMethods** %long_methods, metadata !758, metadata !1038), !dbg !4053
  %10 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 10), align 8, !dbg !4054, !tbaa !1450
  store %struct.PyNumberMethods* %10, %struct.PyNumberMethods** %long_methods, align 8, !dbg !4053, !tbaa !1048
  %11 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4055, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !4057
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4057, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %12, @PyFloat_Type, !dbg !4058
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4059

lor.lhs.false:                                    ; preds = %entry
  %13 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4060, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !4062
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !4062, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %14, %struct._typeobject* @PyFloat_Type), !dbg !4063
  %tobool = icmp ne i32 %call, 0, !dbg !4063
  br i1 %tobool, label %if.then, label %if.else, !dbg !4064

if.then:                                          ; preds = %lor.lhs.false, %entry
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4065, !tbaa !1048
  %16 = bitcast %struct._object* %15 to %struct.PyFloatObject*, !dbg !4068
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %16, i32 0, i32 1, !dbg !4069
  %17 = load double, double* %ob_fval, align 8, !dbg !4069, !tbaa !1230
  store double %17, double* %self, align 8, !dbg !4070, !tbaa !1190
  br label %if.end.5, !dbg !4071

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %self), !dbg !4072
  %cmp3 = icmp slt i32 %call2, 0, !dbg !4075
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !4076

if.then.4:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !4077, !tbaa !1048
  store %struct._object* %18, %struct._object** %retval, !dbg !4079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4079

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br i1 false, label %cond.true, label %cond.false, !dbg !4080

cond.true:                                        ; preds = %if.end.5
  %19 = load double, double* %self, align 8, !dbg !4081, !tbaa !1190
  %conv = fptrunc double %19 to float, !dbg !4081
  %call6 = call i32 @__isinff(float %conv) #2, !dbg !4084
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4084
  br i1 %tobool7, label %if.then.15, label %if.end.16, !dbg !4085

cond.false:                                       ; preds = %if.end.5
  br i1 true, label %cond.true.8, label %cond.false.11, !dbg !4086

cond.true.8:                                      ; preds = %cond.false
  %20 = load double, double* %self, align 8, !dbg !4088, !tbaa !1190
  %call9 = call i32 @__isinf(double %20) #2, !dbg !4090
  %tobool10 = icmp ne i32 %call9, 0, !dbg !4090
  br i1 %tobool10, label %if.then.15, label %if.end.16, !dbg !4091

cond.false.11:                                    ; preds = %cond.false
  %21 = load double, double* %self, align 8, !dbg !4092, !tbaa !1190
  %conv12 = fpext double %21 to x86_fp80, !dbg !4092
  %call13 = call i32 @__isinfl(x86_fp80 %conv12) #2, !dbg !4094
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4094
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !4080

if.then.15:                                       ; preds = %cond.false.11, %cond.true.8, %cond.true
  %22 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4095, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i32 0, i32 0)), !dbg !4097
  store %struct._object* null, %struct._object** %retval, !dbg !4098
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4098

if.end.16:                                        ; preds = %cond.false.11, %cond.true.8, %cond.true
  br i1 false, label %cond.true.17, label %cond.false.21, !dbg !4099

cond.true.17:                                     ; preds = %if.end.16
  %23 = load double, double* %self, align 8, !dbg !4100, !tbaa !1190
  %conv18 = fptrunc double %23 to float, !dbg !4100
  %call19 = call i32 @__isnanf(float %conv18) #2, !dbg !4103
  %tobool20 = icmp ne i32 %call19, 0, !dbg !4103
  br i1 %tobool20, label %if.then.29, label %if.end.30, !dbg !4104

cond.false.21:                                    ; preds = %if.end.16
  br i1 true, label %cond.true.22, label %cond.false.25, !dbg !4105

cond.true.22:                                     ; preds = %cond.false.21
  %24 = load double, double* %self, align 8, !dbg !4106, !tbaa !1190
  %call23 = call i32 @__isnan(double %24) #2, !dbg !4108
  %tobool24 = icmp ne i32 %call23, 0, !dbg !4108
  br i1 %tobool24, label %if.then.29, label %if.end.30, !dbg !4109

cond.false.25:                                    ; preds = %cond.false.21
  %25 = load double, double* %self, align 8, !dbg !4110, !tbaa !1190
  %conv26 = fpext double %25 to x86_fp80, !dbg !4110
  %call27 = call i32 @__isnanl(x86_fp80 %conv26) #2, !dbg !4112
  %tobool28 = icmp ne i32 %call27, 0, !dbg !4112
  br i1 %tobool28, label %if.then.29, label %if.end.30, !dbg !4099

if.then.29:                                       ; preds = %cond.false.25, %cond.true.22, %cond.true.17
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4113, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0)), !dbg !4115
  store %struct._object* null, %struct._object** %retval, !dbg !4116
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4116

if.end.30:                                        ; preds = %cond.false.25, %cond.true.22, %cond.true.17
  %27 = load double, double* %self, align 8, !dbg !4117, !tbaa !1190
  %call31 = call double @frexp(double %27, i32* %exponent) #1, !dbg !4118
  store double %call31, double* %float_part, align 8, !dbg !4119, !tbaa !1190
  store i32 0, i32* %i, align 4, !dbg !4120, !tbaa !1042
  br label %for.cond, !dbg !4122

for.cond:                                         ; preds = %for.inc, %if.end.30
  %28 = load i32, i32* %i, align 4, !dbg !4123, !tbaa !1042
  %cmp32 = icmp slt i32 %28, 300, !dbg !4127
  br i1 %cmp32, label %land.rhs, label %land.end, !dbg !4128

land.rhs:                                         ; preds = %for.cond
  %29 = load double, double* %float_part, align 8, !dbg !4129, !tbaa !1190
  %30 = load double, double* %float_part, align 8, !dbg !4131, !tbaa !1190
  %call34 = call double @floor(double %30) #2, !dbg !4132
  %cmp35 = fcmp une double %29, %call34, !dbg !4133
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %31 = phi i1 [ false, %for.cond ], [ %cmp35, %land.rhs ]
  br i1 %31, label %for.body, label %for.end, !dbg !4134

for.body:                                         ; preds = %land.end
  %32 = load double, double* %float_part, align 8, !dbg !4136, !tbaa !1190
  %mul = fmul double %32, 2.000000e+00, !dbg !4136
  store double %mul, double* %float_part, align 8, !dbg !4136, !tbaa !1190
  %33 = load i32, i32* %exponent, align 4, !dbg !4138, !tbaa !1042
  %dec = add i32 %33, -1, !dbg !4138
  store i32 %dec, i32* %exponent, align 4, !dbg !4138, !tbaa !1042
  br label %for.inc, !dbg !4139

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !dbg !4140, !tbaa !1042
  %inc = add i32 %34, 1, !dbg !4140
  store i32 %inc, i32* %i, align 4, !dbg !4140, !tbaa !1042
  br label %for.cond, !dbg !4141

for.end:                                          ; preds = %land.end
  %35 = load double, double* %float_part, align 8, !dbg !4142, !tbaa !1190
  %call37 = call %struct._object* @PyLong_FromDouble(double %35), !dbg !4143
  store %struct._object* %call37, %struct._object** %numerator, align 8, !dbg !4144, !tbaa !1048
  %36 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4145, !tbaa !1048
  %cmp38 = icmp eq %struct._object* %36, null, !dbg !4147
  br i1 %cmp38, label %if.then.40, label %if.end.41, !dbg !4148

if.then.40:                                       ; preds = %for.end
  br label %error, !dbg !4149

if.end.41:                                        ; preds = %for.end
  %call42 = call %struct._object* @PyLong_FromLong(i64 1), !dbg !4151
  store %struct._object* %call42, %struct._object** %denominator, align 8, !dbg !4152, !tbaa !1048
  %37 = load i32, i32* %exponent, align 4, !dbg !4153, !tbaa !1042
  %conv43 = sext i32 %37 to i64, !dbg !4154
  %call44 = call i64 @labs(i64 %conv43) #2, !dbg !4155
  %call45 = call %struct._object* @PyLong_FromLong(i64 %call44), !dbg !4156
  store %struct._object* %call45, %struct._object** %py_exponent, align 8, !dbg !4157, !tbaa !1048
  %38 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4158, !tbaa !1048
  %cmp46 = icmp eq %struct._object* %38, null, !dbg !4160
  br i1 %cmp46, label %if.then.48, label %if.end.49, !dbg !4161

if.then.48:                                       ; preds = %if.end.41
  br label %error, !dbg !4162

if.end.49:                                        ; preds = %if.end.41
  %39 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4164, !tbaa !1048
  store %struct._object* %39, %struct._object** %prev, align 8, !dbg !4165, !tbaa !1048
  %40 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %long_methods, align 8, !dbg !4166, !tbaa !1048
  %nb_lshift = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %40, i32 0, i32 11, !dbg !4167
  %41 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_lshift, align 8, !dbg !4167, !tbaa !4168
  %42 = load %struct._object*, %struct._object** %denominator, align 8, !dbg !4169, !tbaa !1048
  %43 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4170, !tbaa !1048
  %call50 = call %struct._object* %41(%struct._object* %42, %struct._object* %43), !dbg !4166
  store %struct._object* %call50, %struct._object** %py_exponent, align 8, !dbg !4171, !tbaa !1048
  br label %do.body, !dbg !4172

do.body:                                          ; preds = %if.end.49
  %44 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4173
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !4173
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !759, metadata !1038), !dbg !4175
  %45 = load %struct._object*, %struct._object** %prev, align 8, !dbg !4176, !tbaa !1048
  store %struct._object* %45, %struct._object** %_py_decref_tmp, align 8, !dbg !4175, !tbaa !1048
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4177, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0, !dbg !4179
  %47 = load i64, i64* %ob_refcnt, align 8, !dbg !4180, !tbaa !1156
  %dec51 = add i64 %47, -1, !dbg !4180
  store i64 %dec51, i64* %ob_refcnt, align 8, !dbg !4180, !tbaa !1156
  %cmp52 = icmp ne i64 %dec51, 0, !dbg !4181
  br i1 %cmp52, label %if.then.54, label %if.else.55, !dbg !4182

if.then.54:                                       ; preds = %do.body
  br label %if.end.57, !dbg !4183

if.else.55:                                       ; preds = %do.body
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4185, !tbaa !1048
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1, !dbg !4187
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !4187, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4, !dbg !4188
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4188, !tbaa !1168
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4189, !tbaa !1048
  call void %50(%struct._object* %51), !dbg !4190
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  %52 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4191
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !4191
  br label %do.cond, !dbg !4193

do.cond:                                          ; preds = %if.end.57
  br label %do.end, !dbg !4194

do.end:                                           ; preds = %do.cond
  %53 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4196, !tbaa !1048
  %cmp58 = icmp eq %struct._object* %53, null, !dbg !4198
  br i1 %cmp58, label %if.then.60, label %if.end.61, !dbg !4199

if.then.60:                                       ; preds = %do.end
  br label %error, !dbg !4200

if.end.61:                                        ; preds = %do.end
  %54 = load i32, i32* %exponent, align 4, !dbg !4202, !tbaa !1042
  %cmp62 = icmp sgt i32 %54, 0, !dbg !4203
  br i1 %cmp62, label %if.then.64, label %if.else.83, !dbg !4204

if.then.64:                                       ; preds = %if.end.61
  %55 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4205, !tbaa !1048
  store %struct._object* %55, %struct._object** %prev, align 8, !dbg !4206, !tbaa !1048
  %56 = load %struct.PyNumberMethods*, %struct.PyNumberMethods** %long_methods, align 8, !dbg !4207, !tbaa !1048
  %nb_multiply = getelementptr inbounds %struct.PyNumberMethods, %struct.PyNumberMethods* %56, i32 0, i32 2, !dbg !4208
  %57 = load %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)** %nb_multiply, align 8, !dbg !4208, !tbaa !4209
  %58 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4210, !tbaa !1048
  %59 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4211, !tbaa !1048
  %call65 = call %struct._object* %57(%struct._object* %58, %struct._object* %59), !dbg !4207
  store %struct._object* %call65, %struct._object** %numerator, align 8, !dbg !4212, !tbaa !1048
  br label %do.body.66, !dbg !4213

do.body.66:                                       ; preds = %if.then.64
  %60 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !4214
  call void @llvm.lifetime.start(i64 8, i8* %60) #1, !dbg !4214
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp67, metadata !761, metadata !1038), !dbg !4216
  %61 = load %struct._object*, %struct._object** %prev, align 8, !dbg !4217, !tbaa !1048
  store %struct._object* %61, %struct._object** %_py_decref_tmp67, align 8, !dbg !4216, !tbaa !1048
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4218, !tbaa !1048
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !4220
  %63 = load i64, i64* %ob_refcnt68, align 8, !dbg !4221, !tbaa !1156
  %dec69 = add i64 %63, -1, !dbg !4221
  store i64 %dec69, i64* %ob_refcnt68, align 8, !dbg !4221, !tbaa !1156
  %cmp70 = icmp ne i64 %dec69, 0, !dbg !4222
  br i1 %cmp70, label %if.then.72, label %if.else.73, !dbg !4223

if.then.72:                                       ; preds = %do.body.66
  br label %if.end.76, !dbg !4224

if.else.73:                                       ; preds = %do.body.66
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4226, !tbaa !1048
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !4228
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8, !dbg !4228, !tbaa !1166
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !4229
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8, !dbg !4229, !tbaa !1168
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8, !dbg !4230, !tbaa !1048
  call void %66(%struct._object* %67), !dbg !4231
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  %68 = bitcast %struct._object** %_py_decref_tmp67 to i8*, !dbg !4232
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !4232
  br label %do.cond.77, !dbg !4234

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !4235

do.end.78:                                        ; preds = %do.cond.77
  %69 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4237, !tbaa !1048
  %cmp79 = icmp eq %struct._object* %69, null, !dbg !4239
  br i1 %cmp79, label %if.then.81, label %if.end.82, !dbg !4240

if.then.81:                                       ; preds = %do.end.78
  br label %error, !dbg !4241

if.end.82:                                        ; preds = %do.end.78
  br label %if.end.97, !dbg !4243

if.else.83:                                       ; preds = %if.end.61
  br label %do.body.84, !dbg !4244

do.body.84:                                       ; preds = %if.else.83
  %70 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !4245
  call void @llvm.lifetime.start(i64 8, i8* %70) #1, !dbg !4245
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !765, metadata !1038), !dbg !4247
  %71 = load %struct._object*, %struct._object** %denominator, align 8, !dbg !4248, !tbaa !1048
  store %struct._object* %71, %struct._object** %_py_decref_tmp85, align 8, !dbg !4247, !tbaa !1048
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4249, !tbaa !1048
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0, !dbg !4251
  %73 = load i64, i64* %ob_refcnt86, align 8, !dbg !4252, !tbaa !1156
  %dec87 = add i64 %73, -1, !dbg !4252
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !4252, !tbaa !1156
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !4253
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !4254

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94, !dbg !4255

if.else.91:                                       ; preds = %do.body.84
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4257, !tbaa !1048
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1, !dbg !4259
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !4259, !tbaa !1166
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4, !dbg !4260
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !4260, !tbaa !1168
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4261, !tbaa !1048
  call void %76(%struct._object* %77), !dbg !4262
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %78 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !4263
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !4263
  br label %do.cond.95, !dbg !4265

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !4266

do.end.96:                                        ; preds = %do.cond.95
  %79 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4268, !tbaa !1048
  store %struct._object* %79, %struct._object** %denominator, align 8, !dbg !4269, !tbaa !1048
  store %struct._object* null, %struct._object** %py_exponent, align 8, !dbg !4270, !tbaa !1048
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %if.end.82
  %80 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4271, !tbaa !1048
  %81 = load %struct._object*, %struct._object** %denominator, align 8, !dbg !4272, !tbaa !1048
  %call98 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %80, %struct._object* %81), !dbg !4273
  store %struct._object* %call98, %struct._object** %result_pair, align 8, !dbg !4274, !tbaa !1048
  br label %error, !dbg !4275

error:                                            ; preds = %if.end.97, %if.then.81, %if.then.60, %if.then.48, %if.then.40
  br label %do.body.99, !dbg !4276

do.body.99:                                       ; preds = %error
  %82 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4277
  call void @llvm.lifetime.start(i64 8, i8* %82) #1, !dbg !4277
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !768, metadata !1038), !dbg !4279
  %83 = load %struct._object*, %struct._object** %py_exponent, align 8, !dbg !4280, !tbaa !1048
  store %struct._object* %83, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4279, !tbaa !1048
  %84 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4281, !tbaa !1048
  %cmp100 = icmp ne %struct._object* %84, null, !dbg !4282
  br i1 %cmp100, label %if.then.102, label %if.end.116, !dbg !4283

if.then.102:                                      ; preds = %do.body.99
  br label %do.body.103, !dbg !4284

do.body.103:                                      ; preds = %if.then.102
  %85 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !4286
  call void @llvm.lifetime.start(i64 8, i8* %85) #1, !dbg !4286
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp104, metadata !770, metadata !1038), !dbg !4288
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4289, !tbaa !1048
  store %struct._object* %86, %struct._object** %_py_decref_tmp104, align 8, !dbg !4288, !tbaa !1048
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !4290, !tbaa !1048
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0, !dbg !4292
  %88 = load i64, i64* %ob_refcnt105, align 8, !dbg !4293, !tbaa !1156
  %dec106 = add i64 %88, -1, !dbg !4293
  store i64 %dec106, i64* %ob_refcnt105, align 8, !dbg !4293, !tbaa !1156
  %cmp107 = icmp ne i64 %dec106, 0, !dbg !4294
  br i1 %cmp107, label %if.then.109, label %if.else.110, !dbg !4295

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113, !dbg !4296

if.else.110:                                      ; preds = %do.body.103
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !4298, !tbaa !1048
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 1, !dbg !4300
  %90 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8, !dbg !4300, !tbaa !1166
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %90, i32 0, i32 4, !dbg !4301
  %91 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8, !dbg !4301, !tbaa !1168
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8, !dbg !4302, !tbaa !1048
  call void %91(%struct._object* %92), !dbg !4303
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  %93 = bitcast %struct._object** %_py_decref_tmp104 to i8*, !dbg !4304
  call void @llvm.lifetime.end(i64 8, i8* %93) #1, !dbg !4304
  br label %do.cond.114, !dbg !4306

do.cond.114:                                      ; preds = %if.end.113
  br label %do.end.115, !dbg !4307

do.end.115:                                       ; preds = %do.cond.114
  br label %if.end.116, !dbg !4309

if.end.116:                                       ; preds = %do.end.115, %do.body.99
  %94 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4311
  call void @llvm.lifetime.end(i64 8, i8* %94) #1, !dbg !4311
  br label %do.cond.117, !dbg !4314

do.cond.117:                                      ; preds = %if.end.116
  br label %do.end.118, !dbg !4315

do.end.118:                                       ; preds = %do.cond.117
  br label %do.body.119, !dbg !4317

do.body.119:                                      ; preds = %do.end.118
  %95 = bitcast %struct._object** %_py_xdecref_tmp120 to i8*, !dbg !4318
  call void @llvm.lifetime.start(i64 8, i8* %95) #1, !dbg !4318
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp120, metadata !773, metadata !1038), !dbg !4320
  %96 = load %struct._object*, %struct._object** %denominator, align 8, !dbg !4321, !tbaa !1048
  store %struct._object* %96, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !4320, !tbaa !1048
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !4322, !tbaa !1048
  %cmp121 = icmp ne %struct._object* %97, null, !dbg !4323
  br i1 %cmp121, label %if.then.123, label %if.end.137, !dbg !4324

if.then.123:                                      ; preds = %do.body.119
  br label %do.body.124, !dbg !4325

do.body.124:                                      ; preds = %if.then.123
  %98 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !4327
  call void @llvm.lifetime.start(i64 8, i8* %98) #1, !dbg !4327
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp125, metadata !775, metadata !1038), !dbg !4329
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp120, align 8, !dbg !4330, !tbaa !1048
  store %struct._object* %99, %struct._object** %_py_decref_tmp125, align 8, !dbg !4329, !tbaa !1048
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !4331, !tbaa !1048
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0, !dbg !4333
  %101 = load i64, i64* %ob_refcnt126, align 8, !dbg !4334, !tbaa !1156
  %dec127 = add i64 %101, -1, !dbg !4334
  store i64 %dec127, i64* %ob_refcnt126, align 8, !dbg !4334, !tbaa !1156
  %cmp128 = icmp ne i64 %dec127, 0, !dbg !4335
  br i1 %cmp128, label %if.then.130, label %if.else.131, !dbg !4336

if.then.130:                                      ; preds = %do.body.124
  br label %if.end.134, !dbg !4337

if.else.131:                                      ; preds = %do.body.124
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !4339, !tbaa !1048
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1, !dbg !4341
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8, !dbg !4341, !tbaa !1166
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4, !dbg !4342
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8, !dbg !4342, !tbaa !1168
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !4343, !tbaa !1048
  call void %104(%struct._object* %105), !dbg !4344
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  %106 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !4345
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !4345
  br label %do.cond.135, !dbg !4347

do.cond.135:                                      ; preds = %if.end.134
  br label %do.end.136, !dbg !4348

do.end.136:                                       ; preds = %do.cond.135
  br label %if.end.137, !dbg !4350

if.end.137:                                       ; preds = %do.end.136, %do.body.119
  %107 = bitcast %struct._object** %_py_xdecref_tmp120 to i8*, !dbg !4352
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !4352
  br label %do.cond.138, !dbg !4353

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !4354

do.end.139:                                       ; preds = %do.cond.138
  br label %do.body.140, !dbg !4356

do.body.140:                                      ; preds = %do.end.139
  %108 = bitcast %struct._object** %_py_xdecref_tmp141 to i8*, !dbg !4357
  call void @llvm.lifetime.start(i64 8, i8* %108) #1, !dbg !4357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp141, metadata !778, metadata !1038), !dbg !4359
  %109 = load %struct._object*, %struct._object** %numerator, align 8, !dbg !4360, !tbaa !1048
  store %struct._object* %109, %struct._object** %_py_xdecref_tmp141, align 8, !dbg !4359, !tbaa !1048
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp141, align 8, !dbg !4361, !tbaa !1048
  %cmp142 = icmp ne %struct._object* %110, null, !dbg !4362
  br i1 %cmp142, label %if.then.144, label %if.end.158, !dbg !4363

if.then.144:                                      ; preds = %do.body.140
  br label %do.body.145, !dbg !4364

do.body.145:                                      ; preds = %if.then.144
  %111 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !4366
  call void @llvm.lifetime.start(i64 8, i8* %111) #1, !dbg !4366
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp146, metadata !780, metadata !1038), !dbg !4368
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp141, align 8, !dbg !4369, !tbaa !1048
  store %struct._object* %112, %struct._object** %_py_decref_tmp146, align 8, !dbg !4368, !tbaa !1048
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !4370, !tbaa !1048
  %ob_refcnt147 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0, !dbg !4372
  %114 = load i64, i64* %ob_refcnt147, align 8, !dbg !4373, !tbaa !1156
  %dec148 = add i64 %114, -1, !dbg !4373
  store i64 %dec148, i64* %ob_refcnt147, align 8, !dbg !4373, !tbaa !1156
  %cmp149 = icmp ne i64 %dec148, 0, !dbg !4374
  br i1 %cmp149, label %if.then.151, label %if.else.152, !dbg !4375

if.then.151:                                      ; preds = %do.body.145
  br label %if.end.155, !dbg !4376

if.else.152:                                      ; preds = %do.body.145
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !4378, !tbaa !1048
  %ob_type153 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1, !dbg !4380
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type153, align 8, !dbg !4380, !tbaa !1166
  %tp_dealloc154 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4, !dbg !4381
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc154, align 8, !dbg !4381, !tbaa !1168
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp146, align 8, !dbg !4382, !tbaa !1048
  call void %117(%struct._object* %118), !dbg !4383
  br label %if.end.155

if.end.155:                                       ; preds = %if.else.152, %if.then.151
  %119 = bitcast %struct._object** %_py_decref_tmp146 to i8*, !dbg !4384
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !4384
  br label %do.cond.156, !dbg !4386

do.cond.156:                                      ; preds = %if.end.155
  br label %do.end.157, !dbg !4387

do.end.157:                                       ; preds = %do.cond.156
  br label %if.end.158, !dbg !4389

if.end.158:                                       ; preds = %do.end.157, %do.body.140
  %120 = bitcast %struct._object** %_py_xdecref_tmp141 to i8*, !dbg !4391
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !4391
  br label %do.cond.159, !dbg !4392

do.cond.159:                                      ; preds = %if.end.158
  br label %do.end.160, !dbg !4393

do.end.160:                                       ; preds = %do.cond.159
  %121 = load %struct._object*, %struct._object** %result_pair, align 8, !dbg !4395, !tbaa !1048
  store %struct._object* %121, %struct._object** %retval, !dbg !4396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4396

cleanup:                                          ; preds = %do.end.160, %if.then.29, %if.then.15, %if.then.4
  %122 = bitcast %struct.PyNumberMethods** %long_methods to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !4397
  %123 = bitcast %struct._object** %result_pair to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !4397
  %124 = bitcast %struct._object** %denominator to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !4397
  %125 = bitcast %struct._object** %numerator to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !4397
  %126 = bitcast %struct._object** %py_exponent to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !4397
  %127 = bitcast %struct._object** %prev to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %127) #1, !dbg !4397
  %128 = bitcast i32* %i to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 4, i8* %128) #1, !dbg !4397
  %129 = bitcast i32* %exponent to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 4, i8* %129) #1, !dbg !4397
  %130 = bitcast double* %float_part to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !4397
  %131 = bitcast double* %self to i8*, !dbg !4397
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !4397
  %132 = load %struct._object*, %struct._object** %retval, !dbg !4397
  ret %struct._object* %132, !dbg !4397
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %cls, %struct._object** %cls.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %cls.addr, metadata !785, metadata !1038), !dbg !4398
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !786, metadata !1038), !dbg !4399
  %0 = bitcast %struct._object** %result_as_float to i8*, !dbg !4400
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4400
  call void @llvm.dbg.declare(metadata %struct._object** %result_as_float, metadata !787, metadata !1038), !dbg !4401
  %1 = bitcast %struct._object** %result to i8*, !dbg !4400
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4400
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !788, metadata !1038), !dbg !4402
  %2 = bitcast double* %x to i8*, !dbg !4403
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4403
  call void @llvm.dbg.declare(metadata double* %x, metadata !789, metadata !1038), !dbg !4404
  %3 = bitcast i64* %exp to i8*, !dbg !4405
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4405
  call void @llvm.dbg.declare(metadata i64* %exp, metadata !790, metadata !1038), !dbg !4406
  %4 = bitcast i64* %top_exp to i8*, !dbg !4405
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4405
  call void @llvm.dbg.declare(metadata i64* %top_exp, metadata !791, metadata !1038), !dbg !4407
  %5 = bitcast i64* %lsb to i8*, !dbg !4405
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4405
  call void @llvm.dbg.declare(metadata i64* %lsb, metadata !792, metadata !1038), !dbg !4408
  %6 = bitcast i64* %key_digit to i8*, !dbg !4405
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4405
  call void @llvm.dbg.declare(metadata i64* %key_digit, metadata !793, metadata !1038), !dbg !4409
  %7 = bitcast i8** %s to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %s, metadata !794, metadata !1038), !dbg !4411
  %8 = bitcast i8** %coeff_start to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %coeff_start, metadata !795, metadata !1038), !dbg !4412
  %9 = bitcast i8** %s_store to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %s_store, metadata !796, metadata !1038), !dbg !4413
  %10 = bitcast i8** %coeff_end to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %coeff_end, metadata !797, metadata !1038), !dbg !4414
  %11 = bitcast i8** %exp_start to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %exp_start, metadata !798, metadata !1038), !dbg !4415
  %12 = bitcast i8** %s_end to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata i8** %s_end, metadata !799, metadata !1038), !dbg !4416
  %13 = bitcast i32* %half_eps to i8*, !dbg !4417
  call void @llvm.lifetime.start(i64 4, i8* %13) #1, !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %half_eps, metadata !800, metadata !1038), !dbg !4418
  %14 = bitcast i32* %digit to i8*, !dbg !4417
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %digit, metadata !801, metadata !1038), !dbg !4419
  %15 = bitcast i32* %round_up to i8*, !dbg !4417
  call void @llvm.lifetime.start(i64 4, i8* %15) #1, !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %round_up, metadata !802, metadata !1038), !dbg !4420
  %16 = bitcast i32* %negate to i8*, !dbg !4417
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !4417
  call void @llvm.dbg.declare(metadata i32* %negate, metadata !803, metadata !1038), !dbg !4421
  store i32 0, i32* %negate, align 4, !dbg !4421, !tbaa !1042
  %17 = bitcast i64* %length to i8*, !dbg !4422
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !4422
  call void @llvm.dbg.declare(metadata i64* %length, metadata !804, metadata !1038), !dbg !4423
  %18 = bitcast i64* %ndigits to i8*, !dbg !4422
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !4422
  call void @llvm.dbg.declare(metadata i64* %ndigits, metadata !805, metadata !1038), !dbg !4424
  %19 = bitcast i64* %fdigits to i8*, !dbg !4422
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !4422
  call void @llvm.dbg.declare(metadata i64* %fdigits, metadata !806, metadata !1038), !dbg !4425
  %20 = bitcast i64* %i to i8*, !dbg !4422
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !4422
  call void @llvm.dbg.declare(metadata i64* %i, metadata !807, metadata !1038), !dbg !4426
  %21 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !4427, !tbaa !1048
  %call = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %21, i64* %length), !dbg !4428
  store i8* %call, i8** %s, align 8, !dbg !4429, !tbaa !1048
  %22 = load i8*, i8** %s, align 8, !dbg !4430, !tbaa !1048
  %cmp = icmp eq i8* %22, null, !dbg !4432
  br i1 %cmp, label %if.then, label %if.end, !dbg !4433

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4434
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4434

if.end:                                           ; preds = %entry
  %23 = load i8*, i8** %s, align 8, !dbg !4435, !tbaa !1048
  %24 = load i64, i64* %length, align 8, !dbg !4436, !tbaa !1310
  %add.ptr = getelementptr i8, i8* %23, i64 %24, !dbg !4437
  store i8* %add.ptr, i8** %s_end, align 8, !dbg !4438, !tbaa !1048
  br label %while.cond, !dbg !4439

while.cond:                                       ; preds = %while.body, %if.end
  %25 = load i8*, i8** %s, align 8, !dbg !4440, !tbaa !1048
  %26 = load i8, i8* %25, align 1, !dbg !4443, !tbaa !1323
  %conv = sext i8 %26 to i32, !dbg !4444
  %and = and i32 %conv, 255, !dbg !4445
  %conv1 = trunc i32 %and to i8, !dbg !4446
  %idxprom = zext i8 %conv1 to i64, !dbg !4447
  %arrayidx = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom, !dbg !4447
  %27 = load i32, i32* %arrayidx, align 4, !dbg !4447, !tbaa !1042
  %and2 = and i32 %27, 8, !dbg !4448
  %tobool = icmp ne i32 %and2, 0, !dbg !4439
  br i1 %tobool, label %while.body, label %while.end, !dbg !4439

while.body:                                       ; preds = %while.cond
  %28 = load i8*, i8** %s, align 8, !dbg !4449, !tbaa !1048
  %incdec.ptr = getelementptr i8, i8* %28, i32 1, !dbg !4449
  store i8* %incdec.ptr, i8** %s, align 8, !dbg !4449, !tbaa !1048
  br label %while.cond, !dbg !4439

while.end:                                        ; preds = %while.cond
  %29 = load i8*, i8** %s, align 8, !dbg !4450, !tbaa !1048
  %call3 = call double @_Py_parse_inf_or_nan(i8* %29, i8** %coeff_end), !dbg !4451
  store double %call3, double* %x, align 8, !dbg !4452, !tbaa !1190
  %30 = load i8*, i8** %coeff_end, align 8, !dbg !4453, !tbaa !1048
  %31 = load i8*, i8** %s, align 8, !dbg !4455, !tbaa !1048
  %cmp4 = icmp ne i8* %30, %31, !dbg !4456
  br i1 %cmp4, label %if.then.6, label %if.end.7, !dbg !4457

if.then.6:                                        ; preds = %while.end
  %32 = load i8*, i8** %coeff_end, align 8, !dbg !4458, !tbaa !1048
  store i8* %32, i8** %s, align 8, !dbg !4460, !tbaa !1048
  br label %finished, !dbg !4461

if.end.7:                                         ; preds = %while.end
  %33 = load i8*, i8** %s, align 8, !dbg !4462, !tbaa !1048
  %34 = load i8, i8* %33, align 1, !dbg !4464, !tbaa !1323
  %conv8 = sext i8 %34 to i32, !dbg !4464
  %cmp9 = icmp eq i32 %conv8, 45, !dbg !4465
  br i1 %cmp9, label %if.then.11, label %if.else, !dbg !4466

if.then.11:                                       ; preds = %if.end.7
  %35 = load i8*, i8** %s, align 8, !dbg !4467, !tbaa !1048
  %incdec.ptr12 = getelementptr i8, i8* %35, i32 1, !dbg !4467
  store i8* %incdec.ptr12, i8** %s, align 8, !dbg !4467, !tbaa !1048
  store i32 1, i32* %negate, align 4, !dbg !4469, !tbaa !1042
  br label %if.end.19, !dbg !4470

if.else:                                          ; preds = %if.end.7
  %36 = load i8*, i8** %s, align 8, !dbg !4471, !tbaa !1048
  %37 = load i8, i8* %36, align 1, !dbg !4473, !tbaa !1323
  %conv13 = sext i8 %37 to i32, !dbg !4473
  %cmp14 = icmp eq i32 %conv13, 43, !dbg !4474
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !4475

if.then.16:                                       ; preds = %if.else
  %38 = load i8*, i8** %s, align 8, !dbg !4476, !tbaa !1048
  %incdec.ptr17 = getelementptr i8, i8* %38, i32 1, !dbg !4476
  store i8* %incdec.ptr17, i8** %s, align 8, !dbg !4476, !tbaa !1048
  br label %if.end.18, !dbg !4477

if.end.18:                                        ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.11
  %39 = load i8*, i8** %s, align 8, !dbg !4478, !tbaa !1048
  store i8* %39, i8** %s_store, align 8, !dbg !4479, !tbaa !1048
  %40 = load i8*, i8** %s, align 8, !dbg !4480, !tbaa !1048
  %41 = load i8, i8* %40, align 1, !dbg !4482, !tbaa !1323
  %conv20 = sext i8 %41 to i32, !dbg !4482
  %cmp21 = icmp eq i32 %conv20, 48, !dbg !4483
  br i1 %cmp21, label %if.then.23, label %if.end.35, !dbg !4484

if.then.23:                                       ; preds = %if.end.19
  %42 = load i8*, i8** %s, align 8, !dbg !4485, !tbaa !1048
  %incdec.ptr24 = getelementptr i8, i8* %42, i32 1, !dbg !4485
  store i8* %incdec.ptr24, i8** %s, align 8, !dbg !4485, !tbaa !1048
  %43 = load i8*, i8** %s, align 8, !dbg !4487, !tbaa !1048
  %44 = load i8, i8* %43, align 1, !dbg !4489, !tbaa !1323
  %conv25 = sext i8 %44 to i32, !dbg !4489
  %cmp26 = icmp eq i32 %conv25, 120, !dbg !4490
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false, !dbg !4491

lor.lhs.false:                                    ; preds = %if.then.23
  %45 = load i8*, i8** %s, align 8, !dbg !4492, !tbaa !1048
  %46 = load i8, i8* %45, align 1, !dbg !4494, !tbaa !1323
  %conv28 = sext i8 %46 to i32, !dbg !4494
  %cmp29 = icmp eq i32 %conv28, 88, !dbg !4495
  br i1 %cmp29, label %if.then.31, label %if.else.33, !dbg !4496

if.then.31:                                       ; preds = %lor.lhs.false, %if.then.23
  %47 = load i8*, i8** %s, align 8, !dbg !4497, !tbaa !1048
  %incdec.ptr32 = getelementptr i8, i8* %47, i32 1, !dbg !4497
  store i8* %incdec.ptr32, i8** %s, align 8, !dbg !4497, !tbaa !1048
  br label %if.end.34, !dbg !4498

if.else.33:                                       ; preds = %lor.lhs.false
  %48 = load i8*, i8** %s_store, align 8, !dbg !4499, !tbaa !1048
  store i8* %48, i8** %s, align 8, !dbg !4500, !tbaa !1048
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.31
  br label %if.end.35, !dbg !4501

if.end.35:                                        ; preds = %if.end.34, %if.end.19
  %49 = load i8*, i8** %s, align 8, !dbg !4502, !tbaa !1048
  store i8* %49, i8** %coeff_start, align 8, !dbg !4503, !tbaa !1048
  br label %while.cond.36, !dbg !4504

while.cond.36:                                    ; preds = %while.body.40, %if.end.35
  %50 = load i8*, i8** %s, align 8, !dbg !4505, !tbaa !1048
  %51 = load i8, i8* %50, align 1, !dbg !4506, !tbaa !1323
  %call37 = call i32 @hex_from_char(i8 signext %51), !dbg !4507
  %cmp38 = icmp sge i32 %call37, 0, !dbg !4508
  br i1 %cmp38, label %while.body.40, label %while.end.42, !dbg !4504

while.body.40:                                    ; preds = %while.cond.36
  %52 = load i8*, i8** %s, align 8, !dbg !4509, !tbaa !1048
  %incdec.ptr41 = getelementptr i8, i8* %52, i32 1, !dbg !4509
  store i8* %incdec.ptr41, i8** %s, align 8, !dbg !4509, !tbaa !1048
  br label %while.cond.36, !dbg !4504

while.end.42:                                     ; preds = %while.cond.36
  %53 = load i8*, i8** %s, align 8, !dbg !4510, !tbaa !1048
  store i8* %53, i8** %s_store, align 8, !dbg !4511, !tbaa !1048
  %54 = load i8*, i8** %s, align 8, !dbg !4512, !tbaa !1048
  %55 = load i8, i8* %54, align 1, !dbg !4514, !tbaa !1323
  %conv43 = sext i8 %55 to i32, !dbg !4514
  %cmp44 = icmp eq i32 %conv43, 46, !dbg !4515
  br i1 %cmp44, label %if.then.46, label %if.else.56, !dbg !4516

if.then.46:                                       ; preds = %while.end.42
  %56 = load i8*, i8** %s, align 8, !dbg !4517, !tbaa !1048
  %incdec.ptr47 = getelementptr i8, i8* %56, i32 1, !dbg !4517
  store i8* %incdec.ptr47, i8** %s, align 8, !dbg !4517, !tbaa !1048
  br label %while.cond.48, !dbg !4519

while.cond.48:                                    ; preds = %while.body.52, %if.then.46
  %57 = load i8*, i8** %s, align 8, !dbg !4520, !tbaa !1048
  %58 = load i8, i8* %57, align 1, !dbg !4523, !tbaa !1323
  %call49 = call i32 @hex_from_char(i8 signext %58), !dbg !4524
  %cmp50 = icmp sge i32 %call49, 0, !dbg !4525
  br i1 %cmp50, label %while.body.52, label %while.end.54, !dbg !4519

while.body.52:                                    ; preds = %while.cond.48
  %59 = load i8*, i8** %s, align 8, !dbg !4526, !tbaa !1048
  %incdec.ptr53 = getelementptr i8, i8* %59, i32 1, !dbg !4526
  store i8* %incdec.ptr53, i8** %s, align 8, !dbg !4526, !tbaa !1048
  br label %while.cond.48, !dbg !4519

while.end.54:                                     ; preds = %while.cond.48
  %60 = load i8*, i8** %s, align 8, !dbg !4527, !tbaa !1048
  %add.ptr55 = getelementptr i8, i8* %60, i64 -1, !dbg !4528
  store i8* %add.ptr55, i8** %coeff_end, align 8, !dbg !4529, !tbaa !1048
  br label %if.end.57, !dbg !4530

if.else.56:                                       ; preds = %while.end.42
  %61 = load i8*, i8** %s, align 8, !dbg !4531, !tbaa !1048
  store i8* %61, i8** %coeff_end, align 8, !dbg !4532, !tbaa !1048
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.56, %while.end.54
  %62 = load i8*, i8** %coeff_end, align 8, !dbg !4533, !tbaa !1048
  %63 = load i8*, i8** %coeff_start, align 8, !dbg !4534, !tbaa !1048
  %sub.ptr.lhs.cast = ptrtoint i8* %62 to i64, !dbg !4535
  %sub.ptr.rhs.cast = ptrtoint i8* %63 to i64, !dbg !4535
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4535
  store i64 %sub.ptr.sub, i64* %ndigits, align 8, !dbg !4536, !tbaa !1310
  %64 = load i8*, i8** %coeff_end, align 8, !dbg !4537, !tbaa !1048
  %65 = load i8*, i8** %s_store, align 8, !dbg !4538, !tbaa !1048
  %sub.ptr.lhs.cast58 = ptrtoint i8* %64 to i64, !dbg !4539
  %sub.ptr.rhs.cast59 = ptrtoint i8* %65 to i64, !dbg !4539
  %sub.ptr.sub60 = sub i64 %sub.ptr.lhs.cast58, %sub.ptr.rhs.cast59, !dbg !4539
  store i64 %sub.ptr.sub60, i64* %fdigits, align 8, !dbg !4540, !tbaa !1310
  %66 = load i64, i64* %ndigits, align 8, !dbg !4541, !tbaa !1310
  %cmp61 = icmp eq i64 %66, 0, !dbg !4543
  br i1 %cmp61, label %if.then.63, label %if.end.64, !dbg !4544

if.then.63:                                       ; preds = %if.end.57
  br label %parse_error, !dbg !4545

if.end.64:                                        ; preds = %if.end.57
  %67 = load i64, i64* %ndigits, align 8, !dbg !4546, !tbaa !1310
  %cmp65 = icmp sgt i64 %67, 1152921504606846707, !dbg !4548
  br i1 %cmp65, label %if.then.67, label %if.end.68, !dbg !4549

if.then.67:                                       ; preds = %if.end.64
  br label %insane_length_error, !dbg !4550

if.end.68:                                        ; preds = %if.end.64
  %68 = load i8*, i8** %s, align 8, !dbg !4551, !tbaa !1048
  %69 = load i8, i8* %68, align 1, !dbg !4553, !tbaa !1323
  %conv69 = sext i8 %69 to i32, !dbg !4553
  %cmp70 = icmp eq i32 %conv69, 112, !dbg !4554
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false.72, !dbg !4555

lor.lhs.false.72:                                 ; preds = %if.end.68
  %70 = load i8*, i8** %s, align 8, !dbg !4556, !tbaa !1048
  %71 = load i8, i8* %70, align 1, !dbg !4558, !tbaa !1323
  %conv73 = sext i8 %71 to i32, !dbg !4558
  %cmp74 = icmp eq i32 %conv73, 80, !dbg !4559
  br i1 %cmp74, label %if.then.76, label %if.else.108, !dbg !4560

if.then.76:                                       ; preds = %lor.lhs.false.72, %if.end.68
  %72 = load i8*, i8** %s, align 8, !dbg !4561, !tbaa !1048
  %incdec.ptr77 = getelementptr i8, i8* %72, i32 1, !dbg !4561
  store i8* %incdec.ptr77, i8** %s, align 8, !dbg !4561, !tbaa !1048
  %73 = load i8*, i8** %s, align 8, !dbg !4563, !tbaa !1048
  store i8* %73, i8** %exp_start, align 8, !dbg !4564, !tbaa !1048
  %74 = load i8*, i8** %s, align 8, !dbg !4565, !tbaa !1048
  %75 = load i8, i8* %74, align 1, !dbg !4567, !tbaa !1323
  %conv78 = sext i8 %75 to i32, !dbg !4567
  %cmp79 = icmp eq i32 %conv78, 45, !dbg !4568
  br i1 %cmp79, label %if.then.85, label %lor.lhs.false.81, !dbg !4569

lor.lhs.false.81:                                 ; preds = %if.then.76
  %76 = load i8*, i8** %s, align 8, !dbg !4570, !tbaa !1048
  %77 = load i8, i8* %76, align 1, !dbg !4572, !tbaa !1323
  %conv82 = sext i8 %77 to i32, !dbg !4572
  %cmp83 = icmp eq i32 %conv82, 43, !dbg !4573
  br i1 %cmp83, label %if.then.85, label %if.end.87, !dbg !4574

if.then.85:                                       ; preds = %lor.lhs.false.81, %if.then.76
  %78 = load i8*, i8** %s, align 8, !dbg !4575, !tbaa !1048
  %incdec.ptr86 = getelementptr i8, i8* %78, i32 1, !dbg !4575
  store i8* %incdec.ptr86, i8** %s, align 8, !dbg !4575, !tbaa !1048
  br label %if.end.87, !dbg !4576

if.end.87:                                        ; preds = %if.then.85, %lor.lhs.false.81
  %79 = load i8*, i8** %s, align 8, !dbg !4577, !tbaa !1048
  %80 = load i8, i8* %79, align 1, !dbg !4579, !tbaa !1323
  %conv88 = sext i8 %80 to i32, !dbg !4579
  %cmp89 = icmp sle i32 48, %conv88, !dbg !4580
  br i1 %cmp89, label %land.lhs.true, label %if.then.94, !dbg !4581

land.lhs.true:                                    ; preds = %if.end.87
  %81 = load i8*, i8** %s, align 8, !dbg !4582, !tbaa !1048
  %82 = load i8, i8* %81, align 1, !dbg !4584, !tbaa !1323
  %conv91 = sext i8 %82 to i32, !dbg !4584
  %cmp92 = icmp sle i32 %conv91, 57, !dbg !4585
  br i1 %cmp92, label %if.end.95, label %if.then.94, !dbg !4586

if.then.94:                                       ; preds = %land.lhs.true, %if.end.87
  br label %parse_error, !dbg !4587

if.end.95:                                        ; preds = %land.lhs.true
  %83 = load i8*, i8** %s, align 8, !dbg !4588, !tbaa !1048
  %incdec.ptr96 = getelementptr i8, i8* %83, i32 1, !dbg !4588
  store i8* %incdec.ptr96, i8** %s, align 8, !dbg !4588, !tbaa !1048
  br label %while.cond.97, !dbg !4589

while.cond.97:                                    ; preds = %while.body.104, %if.end.95
  %84 = load i8*, i8** %s, align 8, !dbg !4590, !tbaa !1048
  %85 = load i8, i8* %84, align 1, !dbg !4593, !tbaa !1323
  %conv98 = sext i8 %85 to i32, !dbg !4593
  %cmp99 = icmp sle i32 48, %conv98, !dbg !4594
  br i1 %cmp99, label %land.rhs, label %land.end, !dbg !4595

land.rhs:                                         ; preds = %while.cond.97
  %86 = load i8*, i8** %s, align 8, !dbg !4596, !tbaa !1048
  %87 = load i8, i8* %86, align 1, !dbg !4598, !tbaa !1323
  %conv101 = sext i8 %87 to i32, !dbg !4598
  %cmp102 = icmp sle i32 %conv101, 57, !dbg !4599
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.97
  %88 = phi i1 [ false, %while.cond.97 ], [ %cmp102, %land.rhs ]
  br i1 %88, label %while.body.104, label %while.end.106, !dbg !4600

while.body.104:                                   ; preds = %land.end
  %89 = load i8*, i8** %s, align 8, !dbg !4602, !tbaa !1048
  %incdec.ptr105 = getelementptr i8, i8* %89, i32 1, !dbg !4602
  store i8* %incdec.ptr105, i8** %s, align 8, !dbg !4602, !tbaa !1048
  br label %while.cond.97, !dbg !4589

while.end.106:                                    ; preds = %land.end
  %90 = load i8*, i8** %exp_start, align 8, !dbg !4603, !tbaa !1048
  %call107 = call i64 @strtol(i8* %90, i8** null, i32 10) #1, !dbg !4604
  store i64 %call107, i64* %exp, align 8, !dbg !4605, !tbaa !1310
  br label %if.end.109, !dbg !4606

if.else.108:                                      ; preds = %lor.lhs.false.72
  store i64 0, i64* %exp, align 8, !dbg !4607, !tbaa !1310
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %while.end.106
  br label %while.cond.110, !dbg !4608

while.cond.110:                                   ; preds = %while.body.126, %if.end.109
  %91 = load i64, i64* %ndigits, align 8, !dbg !4609, !tbaa !1310
  %cmp111 = icmp sgt i64 %91, 0, !dbg !4611
  br i1 %cmp111, label %land.rhs.113, label %land.end.125, !dbg !4612

land.rhs.113:                                     ; preds = %while.cond.110
  %92 = load i64, i64* %ndigits, align 8, !dbg !4613, !tbaa !1310
  %sub = sub i64 %92, 1, !dbg !4615
  %93 = load i64, i64* %fdigits, align 8, !dbg !4616, !tbaa !1310
  %cmp114 = icmp slt i64 %sub, %93, !dbg !4617
  br i1 %cmp114, label %cond.true, label %cond.false, !dbg !4618

cond.true:                                        ; preds = %land.rhs.113
  %94 = load i8*, i8** %coeff_end, align 8, !dbg !4619, !tbaa !1048
  %95 = load i64, i64* %ndigits, align 8, !dbg !4621, !tbaa !1310
  %sub116 = sub i64 %95, 1, !dbg !4622
  %idx.neg = sub i64 0, %sub116, !dbg !4623
  %add.ptr117 = getelementptr i8, i8* %94, i64 %idx.neg, !dbg !4623
  br label %cond.end, !dbg !4618

cond.false:                                       ; preds = %land.rhs.113
  %96 = load i8*, i8** %coeff_end, align 8, !dbg !4624, !tbaa !1048
  %add.ptr118 = getelementptr i8, i8* %96, i64 -1, !dbg !4626
  %97 = load i64, i64* %ndigits, align 8, !dbg !4627, !tbaa !1310
  %sub119 = sub i64 %97, 1, !dbg !4628
  %idx.neg120 = sub i64 0, %sub119, !dbg !4629
  %add.ptr121 = getelementptr i8, i8* %add.ptr118, i64 %idx.neg120, !dbg !4629
  br label %cond.end, !dbg !4618

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr117, %cond.true ], [ %add.ptr121, %cond.false ], !dbg !4618
  %98 = load i8, i8* %cond, align 1, !dbg !4630, !tbaa !1323
  %call122 = call i32 @hex_from_char(i8 signext %98), !dbg !4633
  %cmp123 = icmp eq i32 %call122, 0, !dbg !4634
  br label %land.end.125

land.end.125:                                     ; preds = %cond.end, %while.cond.110
  %99 = phi i1 [ false, %while.cond.110 ], [ %cmp123, %cond.end ]
  br i1 %99, label %while.body.126, label %while.end.127, !dbg !4635

while.body.126:                                   ; preds = %land.end.125
  %100 = load i64, i64* %ndigits, align 8, !dbg !4637, !tbaa !1310
  %dec = add i64 %100, -1, !dbg !4637
  store i64 %dec, i64* %ndigits, align 8, !dbg !4637, !tbaa !1310
  br label %while.cond.110, !dbg !4608

while.end.127:                                    ; preds = %land.end.125
  %101 = load i64, i64* %ndigits, align 8, !dbg !4638, !tbaa !1310
  %cmp128 = icmp eq i64 %101, 0, !dbg !4640
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.130, !dbg !4641

lor.lhs.false.130:                                ; preds = %while.end.127
  %102 = load i64, i64* %exp, align 8, !dbg !4642, !tbaa !1310
  %cmp131 = icmp slt i64 %102, -4611686018427387904, !dbg !4644
  br i1 %cmp131, label %if.then.133, label %if.end.134, !dbg !4645

if.then.133:                                      ; preds = %lor.lhs.false.130, %while.end.127
  store double 0.000000e+00, double* %x, align 8, !dbg !4646, !tbaa !1190
  br label %finished, !dbg !4648

if.end.134:                                       ; preds = %lor.lhs.false.130
  %103 = load i64, i64* %exp, align 8, !dbg !4649, !tbaa !1310
  %cmp135 = icmp sgt i64 %103, 4611686018427387903, !dbg !4651
  br i1 %cmp135, label %if.then.137, label %if.end.138, !dbg !4652

if.then.137:                                      ; preds = %if.end.134
  br label %overflow_error, !dbg !4653

if.end.138:                                       ; preds = %if.end.134
  %104 = load i64, i64* %exp, align 8, !dbg !4654, !tbaa !1310
  %105 = load i64, i64* %fdigits, align 8, !dbg !4655, !tbaa !1310
  %mul = mul i64 4, %105, !dbg !4656
  %sub139 = sub i64 %104, %mul, !dbg !4657
  store i64 %sub139, i64* %exp, align 8, !dbg !4658, !tbaa !1310
  %106 = load i64, i64* %exp, align 8, !dbg !4659, !tbaa !1310
  %107 = load i64, i64* %ndigits, align 8, !dbg !4660, !tbaa !1310
  %sub140 = sub i64 %107, 1, !dbg !4661
  %mul141 = mul i64 4, %sub140, !dbg !4662
  %add = add i64 %106, %mul141, !dbg !4663
  store i64 %add, i64* %top_exp, align 8, !dbg !4664, !tbaa !1310
  %108 = load i64, i64* %ndigits, align 8, !dbg !4665, !tbaa !1310
  %sub142 = sub i64 %108, 1, !dbg !4667
  %109 = load i64, i64* %fdigits, align 8, !dbg !4668, !tbaa !1310
  %cmp143 = icmp slt i64 %sub142, %109, !dbg !4669
  br i1 %cmp143, label %cond.true.145, label %cond.false.149, !dbg !4670

cond.true.145:                                    ; preds = %if.end.138
  %110 = load i8*, i8** %coeff_end, align 8, !dbg !4671, !tbaa !1048
  %111 = load i64, i64* %ndigits, align 8, !dbg !4673, !tbaa !1310
  %sub146 = sub i64 %111, 1, !dbg !4674
  %idx.neg147 = sub i64 0, %sub146, !dbg !4675
  %add.ptr148 = getelementptr i8, i8* %110, i64 %idx.neg147, !dbg !4675
  br label %cond.end.154, !dbg !4670

cond.false.149:                                   ; preds = %if.end.138
  %112 = load i8*, i8** %coeff_end, align 8, !dbg !4676, !tbaa !1048
  %add.ptr150 = getelementptr i8, i8* %112, i64 -1, !dbg !4678
  %113 = load i64, i64* %ndigits, align 8, !dbg !4679, !tbaa !1310
  %sub151 = sub i64 %113, 1, !dbg !4680
  %idx.neg152 = sub i64 0, %sub151, !dbg !4681
  %add.ptr153 = getelementptr i8, i8* %add.ptr150, i64 %idx.neg152, !dbg !4681
  br label %cond.end.154, !dbg !4670

cond.end.154:                                     ; preds = %cond.false.149, %cond.true.145
  %cond155 = phi i8* [ %add.ptr148, %cond.true.145 ], [ %add.ptr153, %cond.false.149 ], !dbg !4670
  %114 = load i8, i8* %cond155, align 1, !dbg !4682, !tbaa !1323
  %call156 = call i32 @hex_from_char(i8 signext %114), !dbg !4685
  store i32 %call156, i32* %digit, align 4, !dbg !4686, !tbaa !1042
  br label %for.cond, !dbg !4687

for.cond:                                         ; preds = %for.inc, %cond.end.154
  %115 = load i32, i32* %digit, align 4, !dbg !4688, !tbaa !1042
  %cmp157 = icmp ne i32 %115, 0, !dbg !4692
  br i1 %cmp157, label %for.body, label %for.end, !dbg !4693

for.body:                                         ; preds = %for.cond
  %116 = load i64, i64* %top_exp, align 8, !dbg !4694, !tbaa !1310
  %inc = add i64 %116, 1, !dbg !4694
  store i64 %inc, i64* %top_exp, align 8, !dbg !4694, !tbaa !1310
  br label %for.inc, !dbg !4695

for.inc:                                          ; preds = %for.body
  %117 = load i32, i32* %digit, align 4, !dbg !4696, !tbaa !1042
  %div = sdiv i32 %117, 2, !dbg !4696
  store i32 %div, i32* %digit, align 4, !dbg !4696, !tbaa !1042
  br label %for.cond, !dbg !4697

for.end:                                          ; preds = %for.cond
  %118 = load i64, i64* %top_exp, align 8, !dbg !4698, !tbaa !1310
  %cmp159 = icmp slt i64 %118, -1074, !dbg !4700
  br i1 %cmp159, label %if.then.161, label %if.end.162, !dbg !4701

if.then.161:                                      ; preds = %for.end
  store double 0.000000e+00, double* %x, align 8, !dbg !4702, !tbaa !1190
  br label %finished, !dbg !4704

if.end.162:                                       ; preds = %for.end
  %119 = load i64, i64* %top_exp, align 8, !dbg !4705, !tbaa !1310
  %cmp163 = icmp sgt i64 %119, 1024, !dbg !4707
  br i1 %cmp163, label %if.then.165, label %if.end.166, !dbg !4708

if.then.165:                                      ; preds = %if.end.162
  br label %overflow_error, !dbg !4709

if.end.166:                                       ; preds = %if.end.162
  %120 = load i64, i64* %top_exp, align 8, !dbg !4710, !tbaa !1310
  %cmp167 = icmp sgt i64 %120, -1021, !dbg !4711
  br i1 %cmp167, label %cond.true.169, label %cond.false.170, !dbg !4712

cond.true.169:                                    ; preds = %if.end.166
  %121 = load i64, i64* %top_exp, align 8, !dbg !4713, !tbaa !1310
  br label %cond.end.171, !dbg !4712

cond.false.170:                                   ; preds = %if.end.166
  br label %cond.end.171, !dbg !4714

cond.end.171:                                     ; preds = %cond.false.170, %cond.true.169
  %cond172 = phi i64 [ %121, %cond.true.169 ], [ -1021, %cond.false.170 ], !dbg !4712
  %sub173 = sub i64 %cond172, 53, !dbg !4715
  store i64 %sub173, i64* %lsb, align 8, !dbg !4717, !tbaa !1310
  store double 0.000000e+00, double* %x, align 8, !dbg !4718, !tbaa !1190
  %122 = load i64, i64* %exp, align 8, !dbg !4719, !tbaa !1310
  %123 = load i64, i64* %lsb, align 8, !dbg !4721, !tbaa !1310
  %cmp174 = icmp sge i64 %122, %123, !dbg !4722
  br i1 %cmp174, label %if.then.176, label %if.end.202, !dbg !4723

if.then.176:                                      ; preds = %cond.end.171
  %124 = load i64, i64* %ndigits, align 8, !dbg !4724, !tbaa !1310
  %sub177 = sub i64 %124, 1, !dbg !4727
  store i64 %sub177, i64* %i, align 8, !dbg !4728, !tbaa !1310
  br label %for.cond.178, !dbg !4729

for.cond.178:                                     ; preds = %for.inc.197, %if.then.176
  %125 = load i64, i64* %i, align 8, !dbg !4730, !tbaa !1310
  %cmp179 = icmp sge i64 %125, 0, !dbg !4734
  br i1 %cmp179, label %for.body.181, label %for.end.199, !dbg !4735

for.body.181:                                     ; preds = %for.cond.178
  %126 = load double, double* %x, align 8, !dbg !4736, !tbaa !1190
  %mul182 = fmul double 1.600000e+01, %126, !dbg !4737
  %127 = load i64, i64* %i, align 8, !dbg !4738, !tbaa !1310
  %128 = load i64, i64* %fdigits, align 8, !dbg !4739, !tbaa !1310
  %cmp183 = icmp slt i64 %127, %128, !dbg !4740
  br i1 %cmp183, label %cond.true.185, label %cond.false.188, !dbg !4741

cond.true.185:                                    ; preds = %for.body.181
  %129 = load i8*, i8** %coeff_end, align 8, !dbg !4742, !tbaa !1048
  %130 = load i64, i64* %i, align 8, !dbg !4743, !tbaa !1310
  %idx.neg186 = sub i64 0, %130, !dbg !4744
  %add.ptr187 = getelementptr i8, i8* %129, i64 %idx.neg186, !dbg !4744
  br label %cond.end.192, !dbg !4741

cond.false.188:                                   ; preds = %for.body.181
  %131 = load i8*, i8** %coeff_end, align 8, !dbg !4745, !tbaa !1048
  %add.ptr189 = getelementptr i8, i8* %131, i64 -1, !dbg !4747
  %132 = load i64, i64* %i, align 8, !dbg !4748, !tbaa !1310
  %idx.neg190 = sub i64 0, %132, !dbg !4749
  %add.ptr191 = getelementptr i8, i8* %add.ptr189, i64 %idx.neg190, !dbg !4749
  br label %cond.end.192, !dbg !4741

cond.end.192:                                     ; preds = %cond.false.188, %cond.true.185
  %cond193 = phi i8* [ %add.ptr187, %cond.true.185 ], [ %add.ptr191, %cond.false.188 ], !dbg !4741
  %133 = load i8, i8* %cond193, align 1, !dbg !4750, !tbaa !1323
  %call194 = call i32 @hex_from_char(i8 signext %133), !dbg !4753
  %conv195 = sitofp i32 %call194 to double, !dbg !4753
  %add196 = fadd double %mul182, %conv195, !dbg !4754
  store double %add196, double* %x, align 8, !dbg !4755, !tbaa !1190
  br label %for.inc.197, !dbg !4756

for.inc.197:                                      ; preds = %cond.end.192
  %134 = load i64, i64* %i, align 8, !dbg !4757, !tbaa !1310
  %dec198 = add i64 %134, -1, !dbg !4757
  store i64 %dec198, i64* %i, align 8, !dbg !4757, !tbaa !1310
  br label %for.cond.178, !dbg !4758

for.end.199:                                      ; preds = %for.cond.178
  %135 = load double, double* %x, align 8, !dbg !4759, !tbaa !1190
  %136 = load i64, i64* %exp, align 8, !dbg !4760, !tbaa !1310
  %conv200 = trunc i64 %136 to i32, !dbg !4761
  %call201 = call double @ldexp(double %135, i32 %conv200) #1, !dbg !4762
  store double %call201, double* %x, align 8, !dbg !4763, !tbaa !1190
  br label %finished, !dbg !4764

if.end.202:                                       ; preds = %cond.end.171
  %137 = load i64, i64* %lsb, align 8, !dbg !4765, !tbaa !1310
  %138 = load i64, i64* %exp, align 8, !dbg !4766, !tbaa !1310
  %sub203 = sub i64 %137, %138, !dbg !4767
  %sub204 = sub i64 %sub203, 1, !dbg !4768
  %rem = srem i64 %sub204, 4, !dbg !4769
  %conv205 = trunc i64 %rem to i32, !dbg !4770
  %shl = shl i32 1, %conv205, !dbg !4771
  store i32 %shl, i32* %half_eps, align 4, !dbg !4772, !tbaa !1042
  %139 = load i64, i64* %lsb, align 8, !dbg !4773, !tbaa !1310
  %140 = load i64, i64* %exp, align 8, !dbg !4774, !tbaa !1310
  %sub206 = sub i64 %139, %140, !dbg !4775
  %sub207 = sub i64 %sub206, 1, !dbg !4776
  %div208 = sdiv i64 %sub207, 4, !dbg !4777
  store i64 %div208, i64* %key_digit, align 8, !dbg !4778, !tbaa !1310
  %141 = load i64, i64* %ndigits, align 8, !dbg !4779, !tbaa !1310
  %sub209 = sub i64 %141, 1, !dbg !4781
  store i64 %sub209, i64* %i, align 8, !dbg !4782, !tbaa !1310
  br label %for.cond.210, !dbg !4783

for.cond.210:                                     ; preds = %for.inc.229, %if.end.202
  %142 = load i64, i64* %i, align 8, !dbg !4784, !tbaa !1310
  %143 = load i64, i64* %key_digit, align 8, !dbg !4788, !tbaa !1310
  %cmp211 = icmp sgt i64 %142, %143, !dbg !4789
  br i1 %cmp211, label %for.body.213, label %for.end.231, !dbg !4790

for.body.213:                                     ; preds = %for.cond.210
  %144 = load double, double* %x, align 8, !dbg !4791, !tbaa !1190
  %mul214 = fmul double 1.600000e+01, %144, !dbg !4792
  %145 = load i64, i64* %i, align 8, !dbg !4793, !tbaa !1310
  %146 = load i64, i64* %fdigits, align 8, !dbg !4794, !tbaa !1310
  %cmp215 = icmp slt i64 %145, %146, !dbg !4795
  br i1 %cmp215, label %cond.true.217, label %cond.false.220, !dbg !4796

cond.true.217:                                    ; preds = %for.body.213
  %147 = load i8*, i8** %coeff_end, align 8, !dbg !4797, !tbaa !1048
  %148 = load i64, i64* %i, align 8, !dbg !4798, !tbaa !1310
  %idx.neg218 = sub i64 0, %148, !dbg !4799
  %add.ptr219 = getelementptr i8, i8* %147, i64 %idx.neg218, !dbg !4799
  br label %cond.end.224, !dbg !4796

cond.false.220:                                   ; preds = %for.body.213
  %149 = load i8*, i8** %coeff_end, align 8, !dbg !4800, !tbaa !1048
  %add.ptr221 = getelementptr i8, i8* %149, i64 -1, !dbg !4802
  %150 = load i64, i64* %i, align 8, !dbg !4803, !tbaa !1310
  %idx.neg222 = sub i64 0, %150, !dbg !4804
  %add.ptr223 = getelementptr i8, i8* %add.ptr221, i64 %idx.neg222, !dbg !4804
  br label %cond.end.224, !dbg !4796

cond.end.224:                                     ; preds = %cond.false.220, %cond.true.217
  %cond225 = phi i8* [ %add.ptr219, %cond.true.217 ], [ %add.ptr223, %cond.false.220 ], !dbg !4796
  %151 = load i8, i8* %cond225, align 1, !dbg !4805, !tbaa !1323
  %call226 = call i32 @hex_from_char(i8 signext %151), !dbg !4808
  %conv227 = sitofp i32 %call226 to double, !dbg !4808
  %add228 = fadd double %mul214, %conv227, !dbg !4809
  store double %add228, double* %x, align 8, !dbg !4810, !tbaa !1190
  br label %for.inc.229, !dbg !4811

for.inc.229:                                      ; preds = %cond.end.224
  %152 = load i64, i64* %i, align 8, !dbg !4812, !tbaa !1310
  %dec230 = add i64 %152, -1, !dbg !4812
  store i64 %dec230, i64* %i, align 8, !dbg !4812, !tbaa !1310
  br label %for.cond.210, !dbg !4813

for.end.231:                                      ; preds = %for.cond.210
  %153 = load i64, i64* %key_digit, align 8, !dbg !4814, !tbaa !1310
  %154 = load i64, i64* %fdigits, align 8, !dbg !4815, !tbaa !1310
  %cmp232 = icmp slt i64 %153, %154, !dbg !4816
  br i1 %cmp232, label %cond.true.234, label %cond.false.237, !dbg !4817

cond.true.234:                                    ; preds = %for.end.231
  %155 = load i8*, i8** %coeff_end, align 8, !dbg !4818, !tbaa !1048
  %156 = load i64, i64* %key_digit, align 8, !dbg !4819, !tbaa !1310
  %idx.neg235 = sub i64 0, %156, !dbg !4820
  %add.ptr236 = getelementptr i8, i8* %155, i64 %idx.neg235, !dbg !4820
  br label %cond.end.241, !dbg !4817

cond.false.237:                                   ; preds = %for.end.231
  %157 = load i8*, i8** %coeff_end, align 8, !dbg !4821, !tbaa !1048
  %add.ptr238 = getelementptr i8, i8* %157, i64 -1, !dbg !4822
  %158 = load i64, i64* %key_digit, align 8, !dbg !4823, !tbaa !1310
  %idx.neg239 = sub i64 0, %158, !dbg !4824
  %add.ptr240 = getelementptr i8, i8* %add.ptr238, i64 %idx.neg239, !dbg !4824
  br label %cond.end.241, !dbg !4817

cond.end.241:                                     ; preds = %cond.false.237, %cond.true.234
  %cond242 = phi i8* [ %add.ptr236, %cond.true.234 ], [ %add.ptr240, %cond.false.237 ], !dbg !4817
  %159 = load i8, i8* %cond242, align 1, !dbg !4825, !tbaa !1323
  %call243 = call i32 @hex_from_char(i8 signext %159), !dbg !4826
  store i32 %call243, i32* %digit, align 4, !dbg !4827, !tbaa !1042
  %160 = load double, double* %x, align 8, !dbg !4828, !tbaa !1190
  %mul244 = fmul double 1.600000e+01, %160, !dbg !4829
  %161 = load i32, i32* %digit, align 4, !dbg !4830, !tbaa !1042
  %162 = load i32, i32* %half_eps, align 4, !dbg !4831, !tbaa !1042
  %mul245 = mul i32 2, %162, !dbg !4832
  %sub246 = sub i32 16, %mul245, !dbg !4833
  %and247 = and i32 %161, %sub246, !dbg !4834
  %conv248 = sitofp i32 %and247 to double, !dbg !4835
  %add249 = fadd double %mul244, %conv248, !dbg !4836
  store double %add249, double* %x, align 8, !dbg !4837, !tbaa !1190
  %163 = load i32, i32* %digit, align 4, !dbg !4838, !tbaa !1042
  %164 = load i32, i32* %half_eps, align 4, !dbg !4840, !tbaa !1042
  %and250 = and i32 %163, %164, !dbg !4841
  %cmp251 = icmp ne i32 %and250, 0, !dbg !4842
  br i1 %cmp251, label %if.then.253, label %if.end.324, !dbg !4843

if.then.253:                                      ; preds = %cond.end.241
  store i32 0, i32* %round_up, align 4, !dbg !4844, !tbaa !1042
  %165 = load i32, i32* %digit, align 4, !dbg !4846, !tbaa !1042
  %166 = load i32, i32* %half_eps, align 4, !dbg !4848, !tbaa !1042
  %mul254 = mul i32 3, %166, !dbg !4849
  %sub255 = sub i32 %mul254, 1, !dbg !4850
  %and256 = and i32 %165, %sub255, !dbg !4851
  %cmp257 = icmp ne i32 %and256, 0, !dbg !4852
  br i1 %cmp257, label %if.then.281, label %lor.lhs.false.259, !dbg !4853

lor.lhs.false.259:                                ; preds = %if.then.253
  %167 = load i32, i32* %half_eps, align 4, !dbg !4854, !tbaa !1042
  %cmp260 = icmp eq i32 %167, 8, !dbg !4855
  br i1 %cmp260, label %land.lhs.true.262, label %if.else.282, !dbg !4856

land.lhs.true.262:                                ; preds = %lor.lhs.false.259
  %168 = load i64, i64* %key_digit, align 8, !dbg !4857, !tbaa !1310
  %add263 = add i64 %168, 1, !dbg !4859
  %169 = load i64, i64* %fdigits, align 8, !dbg !4860, !tbaa !1310
  %cmp264 = icmp slt i64 %add263, %169, !dbg !4861
  br i1 %cmp264, label %cond.true.266, label %cond.false.270, !dbg !4862

cond.true.266:                                    ; preds = %land.lhs.true.262
  %170 = load i8*, i8** %coeff_end, align 8, !dbg !4863, !tbaa !1048
  %171 = load i64, i64* %key_digit, align 8, !dbg !4865, !tbaa !1310
  %add267 = add i64 %171, 1, !dbg !4866
  %idx.neg268 = sub i64 0, %add267, !dbg !4867
  %add.ptr269 = getelementptr i8, i8* %170, i64 %idx.neg268, !dbg !4867
  br label %cond.end.275, !dbg !4862

cond.false.270:                                   ; preds = %land.lhs.true.262
  %172 = load i8*, i8** %coeff_end, align 8, !dbg !4868, !tbaa !1048
  %add.ptr271 = getelementptr i8, i8* %172, i64 -1, !dbg !4870
  %173 = load i64, i64* %key_digit, align 8, !dbg !4871, !tbaa !1310
  %add272 = add i64 %173, 1, !dbg !4872
  %idx.neg273 = sub i64 0, %add272, !dbg !4873
  %add.ptr274 = getelementptr i8, i8* %add.ptr271, i64 %idx.neg273, !dbg !4873
  br label %cond.end.275, !dbg !4862

cond.end.275:                                     ; preds = %cond.false.270, %cond.true.266
  %cond276 = phi i8* [ %add.ptr269, %cond.true.266 ], [ %add.ptr274, %cond.false.270 ], !dbg !4862
  %174 = load i8, i8* %cond276, align 1, !dbg !4874, !tbaa !1323
  %call277 = call i32 @hex_from_char(i8 signext %174), !dbg !4877
  %and278 = and i32 %call277, 1, !dbg !4878
  %cmp279 = icmp ne i32 %and278, 0, !dbg !4879
  br i1 %cmp279, label %if.then.281, label %if.else.282, !dbg !4880

if.then.281:                                      ; preds = %cond.end.275, %if.then.253
  store i32 1, i32* %round_up, align 4, !dbg !4881, !tbaa !1042
  br label %if.end.307, !dbg !4882

if.else.282:                                      ; preds = %cond.end.275, %lor.lhs.false.259
  %175 = load i64, i64* %key_digit, align 8, !dbg !4883, !tbaa !1310
  %sub283 = sub i64 %175, 1, !dbg !4885
  store i64 %sub283, i64* %i, align 8, !dbg !4886, !tbaa !1310
  br label %for.cond.284, !dbg !4887

for.cond.284:                                     ; preds = %for.inc.304, %if.else.282
  %176 = load i64, i64* %i, align 8, !dbg !4888, !tbaa !1310
  %cmp285 = icmp sge i64 %176, 0, !dbg !4892
  br i1 %cmp285, label %for.body.287, label %for.end.306, !dbg !4893

for.body.287:                                     ; preds = %for.cond.284
  %177 = load i64, i64* %i, align 8, !dbg !4894, !tbaa !1310
  %178 = load i64, i64* %fdigits, align 8, !dbg !4896, !tbaa !1310
  %cmp288 = icmp slt i64 %177, %178, !dbg !4897
  br i1 %cmp288, label %cond.true.290, label %cond.false.293, !dbg !4898

cond.true.290:                                    ; preds = %for.body.287
  %179 = load i8*, i8** %coeff_end, align 8, !dbg !4899, !tbaa !1048
  %180 = load i64, i64* %i, align 8, !dbg !4901, !tbaa !1310
  %idx.neg291 = sub i64 0, %180, !dbg !4902
  %add.ptr292 = getelementptr i8, i8* %179, i64 %idx.neg291, !dbg !4902
  br label %cond.end.297, !dbg !4898

cond.false.293:                                   ; preds = %for.body.287
  %181 = load i8*, i8** %coeff_end, align 8, !dbg !4903, !tbaa !1048
  %add.ptr294 = getelementptr i8, i8* %181, i64 -1, !dbg !4905
  %182 = load i64, i64* %i, align 8, !dbg !4906, !tbaa !1310
  %idx.neg295 = sub i64 0, %182, !dbg !4907
  %add.ptr296 = getelementptr i8, i8* %add.ptr294, i64 %idx.neg295, !dbg !4907
  br label %cond.end.297, !dbg !4898

cond.end.297:                                     ; preds = %cond.false.293, %cond.true.290
  %cond298 = phi i8* [ %add.ptr292, %cond.true.290 ], [ %add.ptr296, %cond.false.293 ], !dbg !4898
  %183 = load i8, i8* %cond298, align 1, !dbg !4908, !tbaa !1323
  %call299 = call i32 @hex_from_char(i8 signext %183), !dbg !4911
  %cmp300 = icmp ne i32 %call299, 0, !dbg !4912
  br i1 %cmp300, label %if.then.302, label %if.end.303, !dbg !4913

if.then.302:                                      ; preds = %cond.end.297
  store i32 1, i32* %round_up, align 4, !dbg !4914, !tbaa !1042
  br label %for.end.306, !dbg !4916

if.end.303:                                       ; preds = %cond.end.297
  br label %for.inc.304, !dbg !4917

for.inc.304:                                      ; preds = %if.end.303
  %184 = load i64, i64* %i, align 8, !dbg !4919, !tbaa !1310
  %dec305 = add i64 %184, -1, !dbg !4919
  store i64 %dec305, i64* %i, align 8, !dbg !4919, !tbaa !1310
  br label %for.cond.284, !dbg !4920

for.end.306:                                      ; preds = %if.then.302, %for.cond.284
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %if.then.281
  %185 = load i32, i32* %round_up, align 4, !dbg !4921, !tbaa !1042
  %tobool308 = icmp ne i32 %185, 0, !dbg !4921
  br i1 %tobool308, label %if.then.309, label %if.end.323, !dbg !4923

if.then.309:                                      ; preds = %if.end.307
  %186 = load i32, i32* %half_eps, align 4, !dbg !4924, !tbaa !1042
  %mul310 = mul i32 2, %186, !dbg !4926
  %conv311 = sitofp i32 %mul310 to double, !dbg !4927
  %187 = load double, double* %x, align 8, !dbg !4928, !tbaa !1190
  %add312 = fadd double %187, %conv311, !dbg !4928
  store double %add312, double* %x, align 8, !dbg !4928, !tbaa !1190
  %188 = load i64, i64* %top_exp, align 8, !dbg !4929, !tbaa !1310
  %cmp313 = icmp eq i64 %188, 1024, !dbg !4931
  br i1 %cmp313, label %land.lhs.true.315, label %if.end.322, !dbg !4932

land.lhs.true.315:                                ; preds = %if.then.309
  %189 = load double, double* %x, align 8, !dbg !4933, !tbaa !1190
  %190 = load i32, i32* %half_eps, align 4, !dbg !4934, !tbaa !1042
  %mul316 = mul i32 2, %190, !dbg !4935
  %conv317 = sitofp i32 %mul316 to double, !dbg !4936
  %call318 = call double @ldexp(double %conv317, i32 53) #1, !dbg !4937
  %cmp319 = fcmp oeq double %189, %call318, !dbg !4938
  br i1 %cmp319, label %if.then.321, label %if.end.322, !dbg !4939

if.then.321:                                      ; preds = %land.lhs.true.315
  br label %overflow_error, !dbg !4940

if.end.322:                                       ; preds = %land.lhs.true.315, %if.then.309
  br label %if.end.323, !dbg !4941

if.end.323:                                       ; preds = %if.end.322, %if.end.307
  br label %if.end.324, !dbg !4942

if.end.324:                                       ; preds = %if.end.323, %cond.end.241
  %191 = load double, double* %x, align 8, !dbg !4943, !tbaa !1190
  %192 = load i64, i64* %exp, align 8, !dbg !4944, !tbaa !1310
  %193 = load i64, i64* %key_digit, align 8, !dbg !4945, !tbaa !1310
  %mul325 = mul i64 4, %193, !dbg !4946
  %add326 = add i64 %192, %mul325, !dbg !4947
  %conv327 = trunc i64 %add326 to i32, !dbg !4948
  %call328 = call double @ldexp(double %191, i32 %conv327) #1, !dbg !4949
  store double %call328, double* %x, align 8, !dbg !4950, !tbaa !1190
  br label %finished, !dbg !4951

finished:                                         ; preds = %if.end.324, %for.end.199, %if.then.161, %if.then.133, %if.then.6
  br label %while.cond.329, !dbg !4952

while.cond.329:                                   ; preds = %while.body.337, %finished
  %194 = load i8*, i8** %s, align 8, !dbg !4953, !tbaa !1048
  %195 = load i8, i8* %194, align 1, !dbg !4954, !tbaa !1323
  %conv330 = sext i8 %195 to i32, !dbg !4955
  %and331 = and i32 %conv330, 255, !dbg !4956
  %conv332 = trunc i32 %and331 to i8, !dbg !4957
  %idxprom333 = zext i8 %conv332 to i64, !dbg !4958
  %arrayidx334 = getelementptr [256 x i32], [256 x i32]* @_Py_ctype_table, i32 0, i64 %idxprom333, !dbg !4958
  %196 = load i32, i32* %arrayidx334, align 4, !dbg !4958, !tbaa !1042
  %and335 = and i32 %196, 8, !dbg !4959
  %tobool336 = icmp ne i32 %and335, 0, !dbg !4952
  br i1 %tobool336, label %while.body.337, label %while.end.339, !dbg !4952

while.body.337:                                   ; preds = %while.cond.329
  %197 = load i8*, i8** %s, align 8, !dbg !4960, !tbaa !1048
  %incdec.ptr338 = getelementptr i8, i8* %197, i32 1, !dbg !4960
  store i8* %incdec.ptr338, i8** %s, align 8, !dbg !4960, !tbaa !1048
  br label %while.cond.329, !dbg !4952

while.end.339:                                    ; preds = %while.cond.329
  %198 = load i8*, i8** %s, align 8, !dbg !4961, !tbaa !1048
  %199 = load i8*, i8** %s_end, align 8, !dbg !4963, !tbaa !1048
  %cmp340 = icmp ne i8* %198, %199, !dbg !4964
  br i1 %cmp340, label %if.then.342, label %if.end.343, !dbg !4965

if.then.342:                                      ; preds = %while.end.339
  br label %parse_error, !dbg !4966

if.end.343:                                       ; preds = %while.end.339
  %200 = load i32, i32* %negate, align 4, !dbg !4967, !tbaa !1042
  %tobool344 = icmp ne i32 %200, 0, !dbg !4967
  br i1 %tobool344, label %cond.true.345, label %cond.false.347, !dbg !4967

cond.true.345:                                    ; preds = %if.end.343
  %201 = load double, double* %x, align 8, !dbg !4968, !tbaa !1190
  %sub346 = fsub double -0.000000e+00, %201, !dbg !4969
  br label %cond.end.348, !dbg !4967

cond.false.347:                                   ; preds = %if.end.343
  %202 = load double, double* %x, align 8, !dbg !4970, !tbaa !1190
  br label %cond.end.348, !dbg !4967

cond.end.348:                                     ; preds = %cond.false.347, %cond.true.345
  %cond349 = phi double [ %sub346, %cond.true.345 ], [ %202, %cond.false.347 ], !dbg !4967
  %call350 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), double %cond349), !dbg !4971
  store %struct._object* %call350, %struct._object** %result_as_float, align 8, !dbg !4972, !tbaa !1048
  %203 = load %struct._object*, %struct._object** %result_as_float, align 8, !dbg !4973, !tbaa !1048
  %cmp351 = icmp eq %struct._object* %203, null, !dbg !4975
  br i1 %cmp351, label %if.then.353, label %if.end.354, !dbg !4976

if.then.353:                                      ; preds = %cond.end.348
  store %struct._object* null, %struct._object** %retval, !dbg !4977
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4977

if.end.354:                                       ; preds = %cond.end.348
  %204 = load %struct._object*, %struct._object** %cls.addr, align 8, !dbg !4978, !tbaa !1048
  %205 = load %struct._object*, %struct._object** %result_as_float, align 8, !dbg !4979, !tbaa !1048
  %call355 = call %struct._object* @PyObject_CallObject(%struct._object* %204, %struct._object* %205), !dbg !4980
  store %struct._object* %call355, %struct._object** %result, align 8, !dbg !4981, !tbaa !1048
  br label %do.body, !dbg !4982

do.body:                                          ; preds = %if.end.354
  %206 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4983
  call void @llvm.lifetime.start(i64 8, i8* %206) #1, !dbg !4983
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !808, metadata !1038), !dbg !4985
  %207 = load %struct._object*, %struct._object** %result_as_float, align 8, !dbg !4986, !tbaa !1048
  store %struct._object* %207, %struct._object** %_py_decref_tmp, align 8, !dbg !4985, !tbaa !1048
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4987, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %208, i32 0, i32 0, !dbg !4989
  %209 = load i64, i64* %ob_refcnt, align 8, !dbg !4990, !tbaa !1156
  %dec356 = add i64 %209, -1, !dbg !4990
  store i64 %dec356, i64* %ob_refcnt, align 8, !dbg !4990, !tbaa !1156
  %cmp357 = icmp ne i64 %dec356, 0, !dbg !4991
  br i1 %cmp357, label %if.then.359, label %if.else.360, !dbg !4992

if.then.359:                                      ; preds = %do.body
  br label %if.end.361, !dbg !4993

if.else.360:                                      ; preds = %do.body
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4995, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 1, !dbg !4997
  %211 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4997, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %211, i32 0, i32 4, !dbg !4998
  %212 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4998, !tbaa !1168
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4999, !tbaa !1048
  call void %212(%struct._object* %213), !dbg !5000
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.360, %if.then.359
  %214 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5001
  call void @llvm.lifetime.end(i64 8, i8* %214) #1, !dbg !5001
  br label %do.cond, !dbg !5002

do.cond:                                          ; preds = %if.end.361
  br label %do.end, !dbg !5003

do.end:                                           ; preds = %do.cond
  %215 = load %struct._object*, %struct._object** %result, align 8, !dbg !5005, !tbaa !1048
  store %struct._object* %215, %struct._object** %retval, !dbg !5006
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5006

overflow_error:                                   ; preds = %if.then.321, %if.then.165, %if.then.137
  %216 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5007, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %216, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.43, i32 0, i32 0)), !dbg !5008
  store %struct._object* null, %struct._object** %retval, !dbg !5009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5009

parse_error:                                      ; preds = %if.then.342, %if.then.94, %if.then.63
  %217 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5010, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %217, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i32 0, i32 0)), !dbg !5011
  store %struct._object* null, %struct._object** %retval, !dbg !5012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5012

insane_length_error:                              ; preds = %if.then.67
  %218 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5013, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.45, i32 0, i32 0)), !dbg !5014
  store %struct._object* null, %struct._object** %retval, !dbg !5015
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5015

cleanup:                                          ; preds = %insane_length_error, %parse_error, %overflow_error, %do.end, %if.then.353, %if.then
  %219 = bitcast i64* %i to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %219) #1, !dbg !5016
  %220 = bitcast i64* %fdigits to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %220) #1, !dbg !5016
  %221 = bitcast i64* %ndigits to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %221) #1, !dbg !5016
  %222 = bitcast i64* %length to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %222) #1, !dbg !5016
  %223 = bitcast i32* %negate to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 4, i8* %223) #1, !dbg !5016
  %224 = bitcast i32* %round_up to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 4, i8* %224) #1, !dbg !5016
  %225 = bitcast i32* %digit to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 4, i8* %225) #1, !dbg !5016
  %226 = bitcast i32* %half_eps to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 4, i8* %226) #1, !dbg !5016
  %227 = bitcast i8** %s_end to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %227) #1, !dbg !5016
  %228 = bitcast i8** %exp_start to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %228) #1, !dbg !5016
  %229 = bitcast i8** %coeff_end to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %229) #1, !dbg !5016
  %230 = bitcast i8** %s_store to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %230) #1, !dbg !5016
  %231 = bitcast i8** %coeff_start to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %231) #1, !dbg !5016
  %232 = bitcast i8** %s to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %232) #1, !dbg !5016
  %233 = bitcast i64* %key_digit to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %233) #1, !dbg !5016
  %234 = bitcast i64* %lsb to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %234) #1, !dbg !5016
  %235 = bitcast i64* %top_exp to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %235) #1, !dbg !5016
  %236 = bitcast i64* %exp to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %236) #1, !dbg !5016
  %237 = bitcast double* %x to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %237) #1, !dbg !5016
  %238 = bitcast %struct._object** %result to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %238) #1, !dbg !5016
  %239 = bitcast %struct._object** %result_as_float to i8*, !dbg !5016
  call void @llvm.lifetime.end(i64 8, i8* %239) #1, !dbg !5016
  %240 = load %struct._object*, %struct._object** %retval, !dbg !5016
  ret %struct._object* %240, !dbg !5016
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !818, metadata !1038), !dbg !5017
  %0 = bitcast double* %x to i8*, !dbg !5018
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5018
  call void @llvm.dbg.declare(metadata double* %x, metadata !819, metadata !1038), !dbg !5019
  %1 = bitcast double* %m to i8*, !dbg !5018
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5018
  call void @llvm.dbg.declare(metadata double* %m, metadata !820, metadata !1038), !dbg !5020
  %2 = bitcast i32* %e to i8*, !dbg !5021
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %e, metadata !821, metadata !1038), !dbg !5022
  %3 = bitcast i32* %shift to i8*, !dbg !5021
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %shift, metadata !822, metadata !1038), !dbg !5023
  %4 = bitcast i32* %i to i8*, !dbg !5021
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %i, metadata !823, metadata !1038), !dbg !5024
  %5 = bitcast i32* %si to i8*, !dbg !5021
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %si, metadata !824, metadata !1038), !dbg !5025
  %6 = bitcast i32* %esign to i8*, !dbg !5021
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %esign, metadata !825, metadata !1038), !dbg !5026
  %7 = bitcast [16 x i8]* %s to i8*, !dbg !5027
  call void @llvm.lifetime.start(i64 16, i8* %7) #1, !dbg !5027
  call void @llvm.dbg.declare(metadata [16 x i8]* %s, metadata !826, metadata !1038), !dbg !5028
  %8 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5029, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !5031
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5031, !tbaa !1166
  %cmp = icmp eq %struct._typeobject* %9, @PyFloat_Type, !dbg !5032
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5033

lor.lhs.false:                                    ; preds = %entry
  %10 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5034, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !5036
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5036, !tbaa !1166
  %call = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyFloat_Type), !dbg !5037
  %tobool = icmp ne i32 %call, 0, !dbg !5037
  br i1 %tobool, label %if.then, label %if.else, !dbg !5038

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5039, !tbaa !1048
  %13 = bitcast %struct._object* %12 to %struct.PyFloatObject*, !dbg !5042
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %13, i32 0, i32 1, !dbg !5043
  %14 = load double, double* %ob_fval, align 8, !dbg !5043, !tbaa !1230
  store double %14, double* %x, align 8, !dbg !5044, !tbaa !1190
  br label %if.end.5, !dbg !5045

if.else:                                          ; preds = %lor.lhs.false
  %call2 = call i32 @convert_to_double(%struct._object** %v.addr, double* %x), !dbg !5046
  %cmp3 = icmp slt i32 %call2, 0, !dbg !5049
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !5050

if.then.4:                                        ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5051, !tbaa !1048
  store %struct._object* %15, %struct._object** %retval, !dbg !5053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5053

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  br i1 false, label %cond.true, label %cond.false, !dbg !5054

cond.true:                                        ; preds = %if.end.5
  %16 = load double, double* %x, align 8, !dbg !5056, !tbaa !1190
  %conv = fptrunc double %16 to float, !dbg !5056
  %call6 = call i32 @__isnanf(float %conv) #2, !dbg !5058
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5058
  br i1 %tobool7, label %if.then.28, label %lor.lhs.false.15, !dbg !5059

cond.false:                                       ; preds = %if.end.5
  br i1 true, label %cond.true.8, label %cond.false.11, !dbg !5060

cond.true.8:                                      ; preds = %cond.false
  %17 = load double, double* %x, align 8, !dbg !5062, !tbaa !1190
  %call9 = call i32 @__isnan(double %17) #2, !dbg !5064
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5064
  br i1 %tobool10, label %if.then.28, label %lor.lhs.false.15, !dbg !5065

cond.false.11:                                    ; preds = %cond.false
  %18 = load double, double* %x, align 8, !dbg !5066, !tbaa !1190
  %conv12 = fpext double %18 to x86_fp80, !dbg !5066
  %call13 = call i32 @__isnanl(x86_fp80 %conv12) #2, !dbg !5068
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5068
  br i1 %tobool14, label %if.then.28, label %lor.lhs.false.15, !dbg !5054

lor.lhs.false.15:                                 ; preds = %cond.false.11, %cond.true.8, %cond.true
  br i1 false, label %cond.true.16, label %cond.false.20, !dbg !5069

cond.true.16:                                     ; preds = %lor.lhs.false.15
  %19 = load double, double* %x, align 8, !dbg !5073, !tbaa !1190
  %conv17 = fptrunc double %19 to float, !dbg !5073
  %call18 = call i32 @__isinff(float %conv17) #2, !dbg !5075
  %tobool19 = icmp ne i32 %call18, 0, !dbg !5075
  br i1 %tobool19, label %if.then.28, label %if.end.30, !dbg !5076

cond.false.20:                                    ; preds = %lor.lhs.false.15
  br i1 true, label %cond.true.21, label %cond.false.24, !dbg !5077

cond.true.21:                                     ; preds = %cond.false.20
  %20 = load double, double* %x, align 8, !dbg !5079, !tbaa !1190
  %call22 = call i32 @__isinf(double %20) #2, !dbg !5081
  %tobool23 = icmp ne i32 %call22, 0, !dbg !5081
  br i1 %tobool23, label %if.then.28, label %if.end.30, !dbg !5082

cond.false.24:                                    ; preds = %cond.false.20
  %21 = load double, double* %x, align 8, !dbg !5083, !tbaa !1190
  %conv25 = fpext double %21 to x86_fp80, !dbg !5083
  %call26 = call i32 @__isinfl(x86_fp80 %conv25) #2, !dbg !5085
  %tobool27 = icmp ne i32 %call26, 0, !dbg !5085
  br i1 %tobool27, label %if.then.28, label %if.end.30, !dbg !5086

if.then.28:                                       ; preds = %cond.false.24, %cond.true.21, %cond.true.16, %cond.false.11, %cond.true.8, %cond.true
  %22 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5087, !tbaa !1048
  %23 = bitcast %struct._object* %22 to %struct.PyFloatObject*, !dbg !5088
  %call29 = call %struct._object* @float_repr(%struct.PyFloatObject* %23), !dbg !5089
  store %struct._object* %call29, %struct._object** %retval, !dbg !5090
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5090

if.end.30:                                        ; preds = %cond.false.24, %cond.true.21, %cond.true.16
  %24 = load double, double* %x, align 8, !dbg !5091, !tbaa !1190
  %cmp31 = fcmp oeq double %24, 0.000000e+00, !dbg !5093
  br i1 %cmp31, label %if.then.33, label %if.end.41, !dbg !5094

if.then.33:                                       ; preds = %if.end.30
  %25 = load double, double* %x, align 8, !dbg !5095, !tbaa !1190
  %call34 = call double @copysign(double 1.000000e+00, double %25) #2, !dbg !5098
  %cmp35 = fcmp oeq double %call34, -1.000000e+00, !dbg !5099
  br i1 %cmp35, label %if.then.37, label %if.else.39, !dbg !5100

if.then.37:                                       ; preds = %if.then.33
  %call38 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0)), !dbg !5101
  store %struct._object* %call38, %struct._object** %retval, !dbg !5102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5102

if.else.39:                                       ; preds = %if.then.33
  %call40 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0)), !dbg !5103
  store %struct._object* %call40, %struct._object** %retval, !dbg !5104
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5104

if.end.41:                                        ; preds = %if.end.30
  %26 = load double, double* %x, align 8, !dbg !5105, !tbaa !1190
  %call42 = call double @fabs(double %26) #2, !dbg !5106
  %call43 = call double @frexp(double %call42, i32* %e) #1, !dbg !5107
  store double %call43, double* %m, align 8, !dbg !5108, !tbaa !1190
  %27 = load i32, i32* %e, align 4, !dbg !5109, !tbaa !1042
  %sub = sub i32 -1021, %27, !dbg !5110
  %cmp44 = icmp sgt i32 %sub, 0, !dbg !5111
  br i1 %cmp44, label %cond.true.46, label %cond.false.48, !dbg !5112

cond.true.46:                                     ; preds = %if.end.41
  %28 = load i32, i32* %e, align 4, !dbg !5113, !tbaa !1042
  %sub47 = sub i32 -1021, %28, !dbg !5115
  br label %cond.end, !dbg !5112

cond.false.48:                                    ; preds = %if.end.41
  br label %cond.end, !dbg !5116

cond.end:                                         ; preds = %cond.false.48, %cond.true.46
  %cond = phi i32 [ %sub47, %cond.true.46 ], [ 0, %cond.false.48 ], !dbg !5112
  %sub49 = sub i32 1, %cond, !dbg !5118
  store i32 %sub49, i32* %shift, align 4, !dbg !5120, !tbaa !1042
  %29 = load double, double* %m, align 8, !dbg !5121, !tbaa !1190
  %30 = load i32, i32* %shift, align 4, !dbg !5122, !tbaa !1042
  %call50 = call double @ldexp(double %29, i32 %30) #1, !dbg !5123
  store double %call50, double* %m, align 8, !dbg !5124, !tbaa !1190
  %31 = load i32, i32* %shift, align 4, !dbg !5125, !tbaa !1042
  %32 = load i32, i32* %e, align 4, !dbg !5126, !tbaa !1042
  %sub51 = sub i32 %32, %31, !dbg !5126
  store i32 %sub51, i32* %e, align 4, !dbg !5126, !tbaa !1042
  store i32 0, i32* %si, align 4, !dbg !5127, !tbaa !1042
  %33 = load double, double* %m, align 8, !dbg !5128, !tbaa !1190
  %conv52 = fptosi double %33 to i32, !dbg !5129
  %call53 = call signext i8 @char_from_hex(i32 %conv52), !dbg !5130
  %34 = load i32, i32* %si, align 4, !dbg !5131, !tbaa !1042
  %idxprom = sext i32 %34 to i64, !dbg !5132
  %arrayidx = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom, !dbg !5132
  store i8 %call53, i8* %arrayidx, align 1, !dbg !5133, !tbaa !1323
  %35 = load i32, i32* %si, align 4, !dbg !5134, !tbaa !1042
  %inc = add i32 %35, 1, !dbg !5134
  store i32 %inc, i32* %si, align 4, !dbg !5134, !tbaa !1042
  %36 = load double, double* %m, align 8, !dbg !5135, !tbaa !1190
  %conv54 = fptosi double %36 to i32, !dbg !5136
  %conv55 = sitofp i32 %conv54 to double, !dbg !5136
  %37 = load double, double* %m, align 8, !dbg !5137, !tbaa !1190
  %sub56 = fsub double %37, %conv55, !dbg !5137
  store double %sub56, double* %m, align 8, !dbg !5137, !tbaa !1190
  %38 = load i32, i32* %si, align 4, !dbg !5138, !tbaa !1042
  %idxprom57 = sext i32 %38 to i64, !dbg !5139
  %arrayidx58 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom57, !dbg !5139
  store i8 46, i8* %arrayidx58, align 1, !dbg !5140, !tbaa !1323
  %39 = load i32, i32* %si, align 4, !dbg !5141, !tbaa !1042
  %inc59 = add i32 %39, 1, !dbg !5141
  store i32 %inc59, i32* %si, align 4, !dbg !5141, !tbaa !1042
  store i32 0, i32* %i, align 4, !dbg !5142, !tbaa !1042
  br label %for.cond, !dbg !5144

for.cond:                                         ; preds = %for.inc, %cond.end
  %40 = load i32, i32* %i, align 4, !dbg !5145, !tbaa !1042
  %cmp60 = icmp slt i32 %40, 13, !dbg !5149
  br i1 %cmp60, label %for.body, label %for.end, !dbg !5150

for.body:                                         ; preds = %for.cond
  %41 = load double, double* %m, align 8, !dbg !5151, !tbaa !1190
  %mul = fmul double %41, 1.600000e+01, !dbg !5151
  store double %mul, double* %m, align 8, !dbg !5151, !tbaa !1190
  %42 = load double, double* %m, align 8, !dbg !5153, !tbaa !1190
  %conv62 = fptosi double %42 to i32, !dbg !5154
  %call63 = call signext i8 @char_from_hex(i32 %conv62), !dbg !5155
  %43 = load i32, i32* %si, align 4, !dbg !5156, !tbaa !1042
  %idxprom64 = sext i32 %43 to i64, !dbg !5157
  %arrayidx65 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom64, !dbg !5157
  store i8 %call63, i8* %arrayidx65, align 1, !dbg !5158, !tbaa !1323
  %44 = load i32, i32* %si, align 4, !dbg !5159, !tbaa !1042
  %inc66 = add i32 %44, 1, !dbg !5159
  store i32 %inc66, i32* %si, align 4, !dbg !5159, !tbaa !1042
  %45 = load double, double* %m, align 8, !dbg !5160, !tbaa !1190
  %conv67 = fptosi double %45 to i32, !dbg !5161
  %conv68 = sitofp i32 %conv67 to double, !dbg !5161
  %46 = load double, double* %m, align 8, !dbg !5162, !tbaa !1190
  %sub69 = fsub double %46, %conv68, !dbg !5162
  store double %sub69, double* %m, align 8, !dbg !5162, !tbaa !1190
  br label %for.inc, !dbg !5163

for.inc:                                          ; preds = %for.body
  %47 = load i32, i32* %i, align 4, !dbg !5164, !tbaa !1042
  %inc70 = add i32 %47, 1, !dbg !5164
  store i32 %inc70, i32* %i, align 4, !dbg !5164, !tbaa !1042
  br label %for.cond, !dbg !5165

for.end:                                          ; preds = %for.cond
  %48 = load i32, i32* %si, align 4, !dbg !5166, !tbaa !1042
  %idxprom71 = sext i32 %48 to i64, !dbg !5167
  %arrayidx72 = getelementptr [16 x i8], [16 x i8]* %s, i32 0, i64 %idxprom71, !dbg !5167
  store i8 0, i8* %arrayidx72, align 1, !dbg !5168, !tbaa !1323
  %49 = load i32, i32* %e, align 4, !dbg !5169, !tbaa !1042
  %cmp73 = icmp slt i32 %49, 0, !dbg !5171
  br i1 %cmp73, label %if.then.75, label %if.else.77, !dbg !5172

if.then.75:                                       ; preds = %for.end
  store i32 45, i32* %esign, align 4, !dbg !5173, !tbaa !1042
  %50 = load i32, i32* %e, align 4, !dbg !5175, !tbaa !1042
  %sub76 = sub i32 0, %50, !dbg !5176
  store i32 %sub76, i32* %e, align 4, !dbg !5177, !tbaa !1042
  br label %if.end.78, !dbg !5178

if.else.77:                                       ; preds = %for.end
  store i32 43, i32* %esign, align 4, !dbg !5179, !tbaa !1042
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.75
  %51 = load double, double* %x, align 8, !dbg !5180, !tbaa !1190
  %cmp79 = fcmp olt double %51, 0.000000e+00, !dbg !5182
  br i1 %cmp79, label %if.then.81, label %if.else.83, !dbg !5183

if.then.81:                                       ; preds = %if.end.78
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0, !dbg !5184
  %52 = load i32, i32* %esign, align 4, !dbg !5185, !tbaa !1042
  %53 = load i32, i32* %e, align 4, !dbg !5186, !tbaa !1042
  %call82 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8* %arraydecay, i32 %52, i32 %53), !dbg !5187
  store %struct._object* %call82, %struct._object** %retval, !dbg !5188
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5188

if.else.83:                                       ; preds = %if.end.78
  %arraydecay84 = getelementptr inbounds [16 x i8], [16 x i8]* %s, i32 0, i32 0, !dbg !5189
  %54 = load i32, i32* %esign, align 4, !dbg !5190, !tbaa !1042
  %55 = load i32, i32* %e, align 4, !dbg !5191, !tbaa !1042
  %call85 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay84, i32 %54, i32 %55), !dbg !5192
  store %struct._object* %call85, %struct._object** %retval, !dbg !5193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5193

cleanup:                                          ; preds = %if.else.83, %if.then.81, %if.else.39, %if.then.37, %if.then.28, %if.then.4
  %56 = bitcast [16 x i8]* %s to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 16, i8* %56) #1, !dbg !5194
  %57 = bitcast i32* %esign to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 4, i8* %57) #1, !dbg !5194
  %58 = bitcast i32* %si to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 4, i8* %58) #1, !dbg !5194
  %59 = bitcast i32* %i to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !5194
  %60 = bitcast i32* %shift to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !5194
  %61 = bitcast i32* %e to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 4, i8* %61) #1, !dbg !5194
  %62 = bitcast double* %m to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !5194
  %63 = bitcast double* %x to i8*, !dbg !5194
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !5194
  %64 = load %struct._object*, %struct._object** %retval, !dbg !5194
  ret %struct._object* %64, !dbg !5194
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_is_integer(%struct._object* %v) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %x = alloca double, align 8
  %o = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !837, metadata !1038), !dbg !5195
  %0 = bitcast double* %x to i8*, !dbg !5196
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5196
  call void @llvm.dbg.declare(metadata double* %x, metadata !838, metadata !1038), !dbg !5197
  %1 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !5198, !tbaa !1048
  %call = call double @PyFloat_AsDouble(%struct._object* %1), !dbg !5199
  store double %call, double* %x, align 8, !dbg !5197, !tbaa !1190
  %2 = bitcast %struct._object** %o to i8*, !dbg !5200
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !5200
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !839, metadata !1038), !dbg !5201
  %3 = load double, double* %x, align 8, !dbg !5202, !tbaa !1190
  %cmp = fcmp oeq double %3, -1.000000e+00, !dbg !5204
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5205

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !5206
  %tobool = icmp ne %struct._object* %call1, null, !dbg !5206
  br i1 %tobool, label %if.then, label %if.end, !dbg !5208

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval, !dbg !5209
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5209

if.end:                                           ; preds = %land.lhs.true, %entry
  br i1 false, label %cond.true, label %cond.false, !dbg !5210

cond.true:                                        ; preds = %if.end
  %4 = load double, double* %x, align 8, !dbg !5211, !tbaa !1190
  %conv = fptrunc double %4 to float, !dbg !5211
  %call2 = call i32 @__finitef(float %conv) #2, !dbg !5214
  %tobool3 = icmp ne i32 %call2, 0, !dbg !5214
  br i1 %tobool3, label %if.end.12, label %if.then.11, !dbg !5215

cond.false:                                       ; preds = %if.end
  br i1 true, label %cond.true.4, label %cond.false.7, !dbg !5216

cond.true.4:                                      ; preds = %cond.false
  %5 = load double, double* %x, align 8, !dbg !5218, !tbaa !1190
  %call5 = call i32 @__finite(double %5) #2, !dbg !5220
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5220
  br i1 %tobool6, label %if.end.12, label %if.then.11, !dbg !5221

cond.false.7:                                     ; preds = %cond.false
  %6 = load double, double* %x, align 8, !dbg !5222, !tbaa !1190
  %conv8 = fpext double %6 to x86_fp80, !dbg !5222
  %call9 = call i32 @__finitel(x86_fp80 %conv8) #2, !dbg !5224
  %tobool10 = icmp ne i32 %call9, 0, !dbg !5224
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !5210

if.then.11:                                       ; preds = %cond.false.7, %cond.true.4, %cond.true
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !5225, !tbaa !1156
  %inc = add i64 %7, 1, !dbg !5225
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !5225, !tbaa !1156
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !5226
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5226

if.end.12:                                        ; preds = %cond.false.7, %cond.true.4, %cond.true
  %call13 = call i32* @__errno_location() #2, !dbg !5227
  store i32 0, i32* %call13, align 4, !dbg !5228, !tbaa !1042
  %8 = load double, double* %x, align 8, !dbg !5229, !tbaa !1190
  %call14 = call double @floor(double %8) #2, !dbg !5230
  %9 = load double, double* %x, align 8, !dbg !5231, !tbaa !1190
  %cmp15 = fcmp oeq double %call14, %9, !dbg !5232
  %cond = select i1 %cmp15, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), !dbg !5233
  store %struct._object* %cond, %struct._object** %o, align 8, !dbg !5234, !tbaa !1048
  %call17 = call i32* @__errno_location() #2, !dbg !5235
  %10 = load i32, i32* %call17, align 4, !dbg !5237, !tbaa !1042
  %cmp18 = icmp ne i32 %10, 0, !dbg !5238
  br i1 %cmp18, label %if.then.20, label %if.end.28, !dbg !5239

if.then.20:                                       ; preds = %if.end.12
  %call21 = call i32* @__errno_location() #2, !dbg !5240
  %11 = load i32, i32* %call21, align 4, !dbg !5242, !tbaa !1042
  %cmp22 = icmp eq i32 %11, 34, !dbg !5243
  br i1 %cmp22, label %cond.true.24, label %cond.false.25, !dbg !5244

cond.true.24:                                     ; preds = %if.then.20
  %12 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !5245, !tbaa !1048
  br label %cond.end, !dbg !5244

cond.false.25:                                    ; preds = %if.then.20
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5247, !tbaa !1048
  br label %cond.end, !dbg !5244

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond26 = phi %struct._object* [ %12, %cond.true.24 ], [ %13, %cond.false.25 ], !dbg !5244
  %call27 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %cond26), !dbg !5248
  store %struct._object* null, %struct._object** %retval, !dbg !5251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5251

if.end.28:                                        ; preds = %if.end.12
  %14 = load %struct._object*, %struct._object** %o, align 8, !dbg !5252, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !5253
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !5254, !tbaa !1156
  %inc29 = add i64 %15, 1, !dbg !5254
  store i64 %inc29, i64* %ob_refcnt, align 8, !dbg !5254, !tbaa !1156
  %16 = load %struct._object*, %struct._object** %o, align 8, !dbg !5255, !tbaa !1048
  store %struct._object* %16, %struct._object** %retval, !dbg !5256
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5256

cleanup:                                          ; preds = %if.end.28, %cond.end, %if.then.11, %if.then
  %17 = bitcast %struct._object** %o to i8*, !dbg !5257
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !5257
  %18 = bitcast double* %x to i8*, !dbg !5257
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !5257
  %19 = load %struct._object*, %struct._object** %retval, !dbg !5257
  ret %struct._object* %19, !dbg !5257
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getnewargs(%struct.PyFloatObject* %v) #0 {
entry:
  %v.addr = alloca %struct.PyFloatObject*, align 8
  store %struct.PyFloatObject* %v, %struct.PyFloatObject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct.PyFloatObject** %v.addr, metadata !842, metadata !1038), !dbg !5258
  %0 = load %struct.PyFloatObject*, %struct.PyFloatObject** %v.addr, align 8, !dbg !5259, !tbaa !1048
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %0, i32 0, i32 1, !dbg !5260
  %1 = load double, double* %ob_fval, align 8, !dbg !5260, !tbaa !1230
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0), double %1), !dbg !5261
  ret %struct._object* %call, !dbg !5262
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getformat(%struct._typeobject* %v, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %v.addr = alloca %struct._typeobject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %s = alloca i8*, align 8
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp43 = alloca i32, align 4
  %__s1_len49 = alloca i64, align 8
  %__s2_len51 = alloca i64, align 8
  %tmp52 = alloca i32, align 4
  %__s158 = alloca i8*, align 8
  %__result60 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  store %struct._typeobject* %v, %struct._typeobject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._typeobject** %v.addr, metadata !849, metadata !1038), !dbg !5263
  store %struct._object* %arg, %struct._object** %arg.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %arg.addr, metadata !850, metadata !1038), !dbg !5264
  %0 = bitcast i8** %s to i8*, !dbg !5265
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5265
  call void @llvm.dbg.declare(metadata i8** %s, metadata !851, metadata !1038), !dbg !5266
  %1 = bitcast i32* %r to i8*, !dbg !5267
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !5267
  call void @llvm.dbg.declare(metadata i32* %r, metadata !852, metadata !1038), !dbg !5268
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5269, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1, !dbg !5271
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5271, !tbaa !1166
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19, !dbg !5272
  %4 = load i64, i64* %tp_flags, align 8, !dbg !5272, !tbaa !1252
  %and = and i64 %4, 268435456, !dbg !5273
  %cmp = icmp ne i64 %and, 0, !dbg !5274
  br i1 %cmp, label %if.end, label %if.then, !dbg !5275

if.then:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !5276, !tbaa !1048
  %6 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5278, !tbaa !1048
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !5279
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !5279, !tbaa !1166
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1, !dbg !5280
  %8 = load i8*, i8** %tp_name, align 8, !dbg !5280, !tbaa !1305
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.50, i32 0, i32 0), i8* %8), !dbg !5281
  store %struct._object* null, %struct._object** %retval, !dbg !5282
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5282

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %arg.addr, align 8, !dbg !5283, !tbaa !1048
  %call2 = call i8* @PyUnicode_AsUTF8(%struct._object* %9), !dbg !5284
  store i8* %call2, i8** %s, align 8, !dbg !5285, !tbaa !1048
  %10 = load i8*, i8** %s, align 8, !dbg !5286, !tbaa !1048
  %cmp3 = icmp eq i8* %10, null, !dbg !5288
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !5289

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !5290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5290

if.end.5:                                         ; preds = %if.end
  %11 = bitcast i64* %__s1_len to i8*, !dbg !5291
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !5291
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !854, metadata !1038), !dbg !5292
  %12 = bitcast i64* %__s2_len to i8*, !dbg !5291
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !5291
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !857, metadata !1038), !dbg !5293
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.51 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !5294

land.lhs.true:                                    ; preds = %if.end.5
  store i64 6, i64* %__s2_len, align 8, !dbg !5295, !tbaa !1310
  %13 = load i64, i64* %__s2_len, align 8, !dbg !5297, !tbaa !1310
  %cmp6 = icmp ult i64 %13, 4, !dbg !5298
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5299

cond.true:                                        ; preds = %land.lhs.true
  %14 = bitcast i8** %__s1 to i8*, !dbg !5300
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !5300
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !858, metadata !1038), !dbg !5302
  %15 = load i8*, i8** %s, align 8, !dbg !5303, !tbaa !1048
  store i8* %15, i8** %__s1, align 8, !dbg !5302, !tbaa !1048
  %16 = bitcast i32* %__result to i8*, !dbg !5304
  call void @llvm.lifetime.start(i64 4, i8* %16) #1, !dbg !5304
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !860, metadata !1038), !dbg !5305
  %17 = load i8*, i8** %__s1, align 8, !dbg !5306, !tbaa !1048
  %arrayidx = getelementptr i8, i8* %17, i64 0, !dbg !5306
  %18 = load i8, i8* %arrayidx, align 1, !dbg !5306, !tbaa !1323
  %conv = zext i8 %18 to i32, !dbg !5306
  %19 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), align 1, !dbg !5307, !tbaa !1323
  %conv9 = zext i8 %19 to i32, !dbg !5307
  %sub = sub i32 %conv, %conv9, !dbg !5308
  store i32 %sub, i32* %__result, align 4, !dbg !5305, !tbaa !1042
  %20 = load i64, i64* %__s2_len, align 8, !dbg !5309, !tbaa !1310
  %cmp10 = icmp ugt i64 %20, 0, !dbg !5311
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.42, !dbg !5312

land.lhs.true.12:                                 ; preds = %cond.true
  %21 = load i32, i32* %__result, align 4, !dbg !5313, !tbaa !1042
  %cmp13 = icmp eq i32 %21, 0, !dbg !5315
  br i1 %cmp13, label %if.then.15, label %if.end.42, !dbg !5316

if.then.15:                                       ; preds = %land.lhs.true.12
  %22 = load i8*, i8** %__s1, align 8, !dbg !5317, !tbaa !1048
  %arrayidx16 = getelementptr i8, i8* %22, i64 1, !dbg !5317
  %23 = load i8, i8* %arrayidx16, align 1, !dbg !5317, !tbaa !1323
  %conv17 = zext i8 %23 to i32, !dbg !5317
  %24 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 1), align 1, !dbg !5320, !tbaa !1323
  %conv18 = zext i8 %24 to i32, !dbg !5320
  %sub19 = sub i32 %conv17, %conv18, !dbg !5321
  store i32 %sub19, i32* %__result, align 4, !dbg !5322, !tbaa !1042
  %25 = load i64, i64* %__s2_len, align 8, !dbg !5323, !tbaa !1310
  %cmp20 = icmp ugt i64 %25, 1, !dbg !5325
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.41, !dbg !5326

land.lhs.true.22:                                 ; preds = %if.then.15
  %26 = load i32, i32* %__result, align 4, !dbg !5327, !tbaa !1042
  %cmp23 = icmp eq i32 %26, 0, !dbg !5329
  br i1 %cmp23, label %if.then.25, label %if.end.41, !dbg !5330

if.then.25:                                       ; preds = %land.lhs.true.22
  %27 = load i8*, i8** %__s1, align 8, !dbg !5331, !tbaa !1048
  %arrayidx26 = getelementptr i8, i8* %27, i64 2, !dbg !5331
  %28 = load i8, i8* %arrayidx26, align 1, !dbg !5331, !tbaa !1323
  %conv27 = zext i8 %28 to i32, !dbg !5331
  %29 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 2), align 1, !dbg !5334, !tbaa !1323
  %conv28 = zext i8 %29 to i32, !dbg !5334
  %sub29 = sub i32 %conv27, %conv28, !dbg !5335
  store i32 %sub29, i32* %__result, align 4, !dbg !5336, !tbaa !1042
  %30 = load i64, i64* %__s2_len, align 8, !dbg !5337, !tbaa !1310
  %cmp30 = icmp ugt i64 %30, 2, !dbg !5339
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.40, !dbg !5340

land.lhs.true.32:                                 ; preds = %if.then.25
  %31 = load i32, i32* %__result, align 4, !dbg !5341, !tbaa !1042
  %cmp33 = icmp eq i32 %31, 0, !dbg !5343
  br i1 %cmp33, label %if.then.35, label %if.end.40, !dbg !5344

if.then.35:                                       ; preds = %land.lhs.true.32
  %32 = load i8*, i8** %__s1, align 8, !dbg !5345, !tbaa !1048
  %arrayidx36 = getelementptr i8, i8* %32, i64 3, !dbg !5345
  %33 = load i8, i8* %arrayidx36, align 1, !dbg !5345, !tbaa !1323
  %conv37 = zext i8 %33 to i32, !dbg !5345
  %34 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 3), align 1, !dbg !5347, !tbaa !1323
  %conv38 = zext i8 %34 to i32, !dbg !5347
  %sub39 = sub i32 %conv37, %conv38, !dbg !5348
  store i32 %sub39, i32* %__result, align 4, !dbg !5349, !tbaa !1042
  br label %if.end.40, !dbg !5350

if.end.40:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.then.25
  br label %if.end.41, !dbg !5351

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true.22, %if.then.15
  br label %if.end.42, !dbg !5355

if.end.42:                                        ; preds = %if.end.41, %land.lhs.true.12, %cond.true
  %35 = load i32, i32* %__result, align 4, !dbg !5359, !tbaa !1042
  store i32 %35, i32* %tmp43, !dbg !5363, !tbaa !1042
  %36 = bitcast i32* %__result to i8*, !dbg !5364
  call void @llvm.lifetime.end(i64 4, i8* %36) #1, !dbg !5364
  %37 = bitcast i8** %__s1 to i8*, !dbg !5364
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !5364
  %38 = load i32, i32* %tmp43, !dbg !5365, !tbaa !1042
  br label %cond.end, !dbg !5299

cond.false:                                       ; preds = %land.lhs.true, %if.end.5
  %39 = load i8*, i8** %s, align 8, !dbg !5366, !tbaa !1048
  %call44 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #1, !dbg !5369
  br label %cond.end, !dbg !5299

cond.end:                                         ; preds = %cond.false, %if.end.42
  %cond = phi i32 [ %38, %if.end.42 ], [ %call44, %cond.false ], !dbg !5299
  store i32 %cond, i32* %tmp, !dbg !5370, !tbaa !1042
  %40 = bitcast i64* %__s2_len to i8*, !dbg !5373
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !5373
  %41 = bitcast i64* %__s1_len to i8*, !dbg !5373
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !5373
  %42 = load i32, i32* %tmp, !dbg !5374, !tbaa !1042
  %cmp45 = icmp eq i32 %42, 0, !dbg !5375
  br i1 %cmp45, label %if.then.47, label %if.else, !dbg !5376

if.then.47:                                       ; preds = %cond.end
  %43 = load i32, i32* @double_format, align 4, !dbg !5377, !tbaa !1323
  store i32 %43, i32* %r, align 4, !dbg !5379, !tbaa !1323
  br label %if.end.108, !dbg !5380

if.else:                                          ; preds = %cond.end
  %44 = bitcast i64* %__s1_len49 to i8*, !dbg !5381
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !5381
  call void @llvm.dbg.declare(metadata i64* %__s1_len49, metadata !861, metadata !1038), !dbg !5382
  %45 = bitcast i64* %__s2_len51 to i8*, !dbg !5381
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !5381
  call void @llvm.dbg.declare(metadata i64* %__s2_len51, metadata !864, metadata !1038), !dbg !5383
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.53, label %cond.false.99, !dbg !5384

land.lhs.true.53:                                 ; preds = %if.else
  store i64 5, i64* %__s2_len51, align 8, !dbg !5385, !tbaa !1310
  %46 = load i64, i64* %__s2_len51, align 8, !dbg !5387, !tbaa !1310
  %cmp54 = icmp ult i64 %46, 4, !dbg !5388
  br i1 %cmp54, label %cond.true.56, label %cond.false.99, !dbg !5389

cond.true.56:                                     ; preds = %land.lhs.true.53
  %47 = bitcast i8** %__s158 to i8*, !dbg !5390
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !5390
  call void @llvm.dbg.declare(metadata i8** %__s158, metadata !865, metadata !1038), !dbg !5392
  %48 = load i8*, i8** %s, align 8, !dbg !5393, !tbaa !1048
  store i8* %48, i8** %__s158, align 8, !dbg !5392, !tbaa !1048
  %49 = bitcast i32* %__result60 to i8*, !dbg !5394
  call void @llvm.lifetime.start(i64 4, i8* %49) #1, !dbg !5394
  call void @llvm.dbg.declare(metadata i32* %__result60, metadata !867, metadata !1038), !dbg !5395
  %50 = load i8*, i8** %__s158, align 8, !dbg !5396, !tbaa !1048
  %arrayidx61 = getelementptr i8, i8* %50, i64 0, !dbg !5396
  %51 = load i8, i8* %arrayidx61, align 1, !dbg !5396, !tbaa !1323
  %conv62 = zext i8 %51 to i32, !dbg !5396
  %52 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), align 1, !dbg !5397, !tbaa !1323
  %conv63 = zext i8 %52 to i32, !dbg !5397
  %sub64 = sub i32 %conv62, %conv63, !dbg !5398
  store i32 %sub64, i32* %__result60, align 4, !dbg !5395, !tbaa !1042
  %53 = load i64, i64* %__s2_len51, align 8, !dbg !5399, !tbaa !1310
  %cmp65 = icmp ugt i64 %53, 0, !dbg !5401
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.97, !dbg !5402

land.lhs.true.67:                                 ; preds = %cond.true.56
  %54 = load i32, i32* %__result60, align 4, !dbg !5403, !tbaa !1042
  %cmp68 = icmp eq i32 %54, 0, !dbg !5405
  br i1 %cmp68, label %if.then.70, label %if.end.97, !dbg !5406

if.then.70:                                       ; preds = %land.lhs.true.67
  %55 = load i8*, i8** %__s158, align 8, !dbg !5407, !tbaa !1048
  %arrayidx71 = getelementptr i8, i8* %55, i64 1, !dbg !5407
  %56 = load i8, i8* %arrayidx71, align 1, !dbg !5407, !tbaa !1323
  %conv72 = zext i8 %56 to i32, !dbg !5407
  %57 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1), align 1, !dbg !5410, !tbaa !1323
  %conv73 = zext i8 %57 to i32, !dbg !5410
  %sub74 = sub i32 %conv72, %conv73, !dbg !5411
  store i32 %sub74, i32* %__result60, align 4, !dbg !5412, !tbaa !1042
  %58 = load i64, i64* %__s2_len51, align 8, !dbg !5413, !tbaa !1310
  %cmp75 = icmp ugt i64 %58, 1, !dbg !5415
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.96, !dbg !5416

land.lhs.true.77:                                 ; preds = %if.then.70
  %59 = load i32, i32* %__result60, align 4, !dbg !5417, !tbaa !1042
  %cmp78 = icmp eq i32 %59, 0, !dbg !5419
  br i1 %cmp78, label %if.then.80, label %if.end.96, !dbg !5420

if.then.80:                                       ; preds = %land.lhs.true.77
  %60 = load i8*, i8** %__s158, align 8, !dbg !5421, !tbaa !1048
  %arrayidx81 = getelementptr i8, i8* %60, i64 2, !dbg !5421
  %61 = load i8, i8* %arrayidx81, align 1, !dbg !5421, !tbaa !1323
  %conv82 = zext i8 %61 to i32, !dbg !5421
  %62 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 2), align 1, !dbg !5424, !tbaa !1323
  %conv83 = zext i8 %62 to i32, !dbg !5424
  %sub84 = sub i32 %conv82, %conv83, !dbg !5425
  store i32 %sub84, i32* %__result60, align 4, !dbg !5426, !tbaa !1042
  %63 = load i64, i64* %__s2_len51, align 8, !dbg !5427, !tbaa !1310
  %cmp85 = icmp ugt i64 %63, 2, !dbg !5429
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.95, !dbg !5430

land.lhs.true.87:                                 ; preds = %if.then.80
  %64 = load i32, i32* %__result60, align 4, !dbg !5431, !tbaa !1042
  %cmp88 = icmp eq i32 %64, 0, !dbg !5433
  br i1 %cmp88, label %if.then.90, label %if.end.95, !dbg !5434

if.then.90:                                       ; preds = %land.lhs.true.87
  %65 = load i8*, i8** %__s158, align 8, !dbg !5435, !tbaa !1048
  %arrayidx91 = getelementptr i8, i8* %65, i64 3, !dbg !5435
  %66 = load i8, i8* %arrayidx91, align 1, !dbg !5435, !tbaa !1323
  %conv92 = zext i8 %66 to i32, !dbg !5435
  %67 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 3), align 1, !dbg !5437, !tbaa !1323
  %conv93 = zext i8 %67 to i32, !dbg !5437
  %sub94 = sub i32 %conv92, %conv93, !dbg !5438
  store i32 %sub94, i32* %__result60, align 4, !dbg !5439, !tbaa !1042
  br label %if.end.95, !dbg !5440

if.end.95:                                        ; preds = %if.then.90, %land.lhs.true.87, %if.then.80
  br label %if.end.96, !dbg !5441

if.end.96:                                        ; preds = %if.end.95, %land.lhs.true.77, %if.then.70
  br label %if.end.97, !dbg !5445

if.end.97:                                        ; preds = %if.end.96, %land.lhs.true.67, %cond.true.56
  %68 = load i32, i32* %__result60, align 4, !dbg !5449, !tbaa !1042
  store i32 %68, i32* %tmp98, !dbg !5453, !tbaa !1042
  %69 = bitcast i32* %__result60 to i8*, !dbg !5454
  call void @llvm.lifetime.end(i64 4, i8* %69) #1, !dbg !5454
  %70 = bitcast i8** %__s158 to i8*, !dbg !5454
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !5454
  %71 = load i32, i32* %tmp98, !dbg !5455, !tbaa !1042
  br label %cond.end.101, !dbg !5389

cond.false.99:                                    ; preds = %land.lhs.true.53, %if.else
  %72 = load i8*, i8** %s, align 8, !dbg !5456, !tbaa !1048
  %call100 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #1, !dbg !5459
  br label %cond.end.101, !dbg !5389

cond.end.101:                                     ; preds = %cond.false.99, %if.end.97
  %cond102 = phi i32 [ %71, %if.end.97 ], [ %call100, %cond.false.99 ], !dbg !5389
  store i32 %cond102, i32* %tmp52, !dbg !5460, !tbaa !1042
  %73 = bitcast i64* %__s2_len51 to i8*, !dbg !5463
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !5463
  %74 = bitcast i64* %__s1_len49 to i8*, !dbg !5463
  call void @llvm.lifetime.end(i64 8, i8* %74) #1, !dbg !5463
  %75 = load i32, i32* %tmp52, !dbg !5464, !tbaa !1042
  %cmp103 = icmp eq i32 %75, 0, !dbg !5465
  br i1 %cmp103, label %if.then.105, label %if.else.106, !dbg !5466

if.then.105:                                      ; preds = %cond.end.101
  %76 = load i32, i32* @float_format, align 4, !dbg !5467, !tbaa !1323
  store i32 %76, i32* %r, align 4, !dbg !5469, !tbaa !1323
  br label %if.end.107, !dbg !5470

if.else.106:                                      ; preds = %cond.end.101
  %77 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5471, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.52, i32 0, i32 0)), !dbg !5473
  store %struct._object* null, %struct._object** %retval, !dbg !5474
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5474

if.end.107:                                       ; preds = %if.then.105
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.47
  %78 = load i32, i32* %r, align 4, !dbg !5475, !tbaa !1323
  switch i32 %78, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.110
    i32 1, label %sw.bb.112
  ], !dbg !5476

sw.bb:                                            ; preds = %if.end.108
  %call109 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)), !dbg !5477
  store %struct._object* %call109, %struct._object** %retval, !dbg !5479
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5479

sw.bb.110:                                        ; preds = %if.end.108
  %call111 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)), !dbg !5480
  store %struct._object* %call111, %struct._object** %retval, !dbg !5481
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5481

sw.bb.112:                                        ; preds = %if.end.108
  %call113 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0)), !dbg !5482
  store %struct._object* %call113, %struct._object** %retval, !dbg !5483
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5483

sw.default:                                       ; preds = %if.end.108
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.56, i32 0, i32 0)) #9, !dbg !5484
  unreachable, !dbg !5484

cleanup:                                          ; preds = %sw.bb.112, %sw.bb.110, %sw.bb, %if.else.106, %if.then.4, %if.then
  %79 = bitcast i32* %r to i8*, !dbg !5485
  call void @llvm.lifetime.end(i64 4, i8* %79) #1, !dbg !5485
  %80 = bitcast i8** %s to i8*, !dbg !5485
  call void @llvm.lifetime.end(i64 8, i8* %80) #1, !dbg !5485
  %81 = load %struct._object*, %struct._object** %retval, !dbg !5485
  ret %struct._object* %81, !dbg !5485
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
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp37 = alloca i32, align 4
  %__s1_len43 = alloca i64, align 8
  %__s2_len45 = alloca i64, align 8
  %tmp46 = alloca i32, align 4
  %__s152 = alloca i8*, align 8
  %__result54 = alloca i32, align 4
  %tmp92 = alloca i32, align 4
  %__s1_len104 = alloca i64, align 8
  %__s2_len106 = alloca i64, align 8
  %tmp107 = alloca i32, align 4
  %__s1113 = alloca i8*, align 8
  %__result115 = alloca i32, align 4
  %tmp153 = alloca i32, align 4
  %__s1_len163 = alloca i64, align 8
  %__s2_len165 = alloca i64, align 8
  %tmp166 = alloca i32, align 4
  %__s1172 = alloca i8*, align 8
  %__result174 = alloca i32, align 4
  %tmp212 = alloca i32, align 4
  %__s1_len222 = alloca i64, align 8
  %__s2_len224 = alloca i64, align 8
  %tmp225 = alloca i32, align 4
  %__s1231 = alloca i8*, align 8
  %__result233 = alloca i32, align 4
  %tmp271 = alloca i32, align 4
  store %struct._typeobject* %v, %struct._typeobject** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._typeobject** %v.addr, metadata !870, metadata !1038), !dbg !5486
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !871, metadata !1038), !dbg !5487
  %0 = bitcast i8** %typestr to i8*, !dbg !5488
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5488
  call void @llvm.dbg.declare(metadata i8** %typestr, metadata !872, metadata !1038), !dbg !5489
  %1 = bitcast i8** %format to i8*, !dbg !5490
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !5490
  call void @llvm.dbg.declare(metadata i8** %format, metadata !873, metadata !1038), !dbg !5491
  %2 = bitcast i32* %f to i8*, !dbg !5492
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !5492
  call void @llvm.dbg.declare(metadata i32* %f, metadata !874, metadata !1038), !dbg !5493
  %3 = bitcast i32* %detected to i8*, !dbg !5494
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !5494
  call void @llvm.dbg.declare(metadata i32* %detected, metadata !875, metadata !1038), !dbg !5495
  %4 = bitcast i32** %p to i8*, !dbg !5496
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !5496
  call void @llvm.dbg.declare(metadata i32** %p, metadata !876, metadata !1038), !dbg !5497
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5498, !tbaa !1048
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8** %typestr, i8** %format), !dbg !5500
  %tobool = icmp ne i32 %call, 0, !dbg !5500
  br i1 %tobool, label %if.end, label %if.then, !dbg !5501

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5502

if.end:                                           ; preds = %entry
  %6 = bitcast i64* %__s1_len to i8*, !dbg !5503
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !878, metadata !1038), !dbg !5504
  %7 = bitcast i64* %__s2_len to i8*, !dbg !5503
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !5503
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !881, metadata !1038), !dbg !5505
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 1) to i64), i64 ptrtoint ([7 x i8]* @.str.51 to i64)), i64 1), label %land.lhs.true, label %cond.false, !dbg !5506

land.lhs.true:                                    ; preds = %if.end
  store i64 6, i64* %__s2_len, align 8, !dbg !5507, !tbaa !1310
  %8 = load i64, i64* %__s2_len, align 8, !dbg !5509, !tbaa !1310
  %cmp = icmp ult i64 %8, 4, !dbg !5510
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5511

cond.true:                                        ; preds = %land.lhs.true
  %9 = bitcast i8** %__s1 to i8*, !dbg !5512
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !5512
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !882, metadata !1038), !dbg !5514
  %10 = load i8*, i8** %typestr, align 8, !dbg !5515, !tbaa !1048
  store i8* %10, i8** %__s1, align 8, !dbg !5514, !tbaa !1048
  %11 = bitcast i32* %__result to i8*, !dbg !5516
  call void @llvm.lifetime.start(i64 4, i8* %11) #1, !dbg !5516
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !884, metadata !1038), !dbg !5517
  %12 = load i8*, i8** %__s1, align 8, !dbg !5518, !tbaa !1048
  %arrayidx = getelementptr i8, i8* %12, i64 0, !dbg !5518
  %13 = load i8, i8* %arrayidx, align 1, !dbg !5518, !tbaa !1323
  %conv = zext i8 %13 to i32, !dbg !5518
  %14 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), align 1, !dbg !5519, !tbaa !1323
  %conv3 = zext i8 %14 to i32, !dbg !5519
  %sub = sub i32 %conv, %conv3, !dbg !5520
  store i32 %sub, i32* %__result, align 4, !dbg !5517, !tbaa !1042
  %15 = load i64, i64* %__s2_len, align 8, !dbg !5521, !tbaa !1310
  %cmp4 = icmp ugt i64 %15, 0, !dbg !5523
  br i1 %cmp4, label %land.lhs.true.6, label %if.end.36, !dbg !5524

land.lhs.true.6:                                  ; preds = %cond.true
  %16 = load i32, i32* %__result, align 4, !dbg !5525, !tbaa !1042
  %cmp7 = icmp eq i32 %16, 0, !dbg !5527
  br i1 %cmp7, label %if.then.9, label %if.end.36, !dbg !5528

if.then.9:                                        ; preds = %land.lhs.true.6
  %17 = load i8*, i8** %__s1, align 8, !dbg !5529, !tbaa !1048
  %arrayidx10 = getelementptr i8, i8* %17, i64 1, !dbg !5529
  %18 = load i8, i8* %arrayidx10, align 1, !dbg !5529, !tbaa !1323
  %conv11 = zext i8 %18 to i32, !dbg !5529
  %19 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 1), align 1, !dbg !5532, !tbaa !1323
  %conv12 = zext i8 %19 to i32, !dbg !5532
  %sub13 = sub i32 %conv11, %conv12, !dbg !5533
  store i32 %sub13, i32* %__result, align 4, !dbg !5534, !tbaa !1042
  %20 = load i64, i64* %__s2_len, align 8, !dbg !5535, !tbaa !1310
  %cmp14 = icmp ugt i64 %20, 1, !dbg !5537
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.35, !dbg !5538

land.lhs.true.16:                                 ; preds = %if.then.9
  %21 = load i32, i32* %__result, align 4, !dbg !5539, !tbaa !1042
  %cmp17 = icmp eq i32 %21, 0, !dbg !5541
  br i1 %cmp17, label %if.then.19, label %if.end.35, !dbg !5542

if.then.19:                                       ; preds = %land.lhs.true.16
  %22 = load i8*, i8** %__s1, align 8, !dbg !5543, !tbaa !1048
  %arrayidx20 = getelementptr i8, i8* %22, i64 2, !dbg !5543
  %23 = load i8, i8* %arrayidx20, align 1, !dbg !5543, !tbaa !1323
  %conv21 = zext i8 %23 to i32, !dbg !5543
  %24 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 2), align 1, !dbg !5546, !tbaa !1323
  %conv22 = zext i8 %24 to i32, !dbg !5546
  %sub23 = sub i32 %conv21, %conv22, !dbg !5547
  store i32 %sub23, i32* %__result, align 4, !dbg !5548, !tbaa !1042
  %25 = load i64, i64* %__s2_len, align 8, !dbg !5549, !tbaa !1310
  %cmp24 = icmp ugt i64 %25, 2, !dbg !5551
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34, !dbg !5552

land.lhs.true.26:                                 ; preds = %if.then.19
  %26 = load i32, i32* %__result, align 4, !dbg !5553, !tbaa !1042
  %cmp27 = icmp eq i32 %26, 0, !dbg !5555
  br i1 %cmp27, label %if.then.29, label %if.end.34, !dbg !5556

if.then.29:                                       ; preds = %land.lhs.true.26
  %27 = load i8*, i8** %__s1, align 8, !dbg !5557, !tbaa !1048
  %arrayidx30 = getelementptr i8, i8* %27, i64 3, !dbg !5557
  %28 = load i8, i8* %arrayidx30, align 1, !dbg !5557, !tbaa !1323
  %conv31 = zext i8 %28 to i32, !dbg !5557
  %29 = load i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i64 3), align 1, !dbg !5559, !tbaa !1323
  %conv32 = zext i8 %29 to i32, !dbg !5559
  %sub33 = sub i32 %conv31, %conv32, !dbg !5560
  store i32 %sub33, i32* %__result, align 4, !dbg !5561, !tbaa !1042
  br label %if.end.34, !dbg !5562

if.end.34:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.then.19
  br label %if.end.35, !dbg !5563

if.end.35:                                        ; preds = %if.end.34, %land.lhs.true.16, %if.then.9
  br label %if.end.36, !dbg !5567

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true.6, %cond.true
  %30 = load i32, i32* %__result, align 4, !dbg !5571, !tbaa !1042
  store i32 %30, i32* %tmp37, !dbg !5575, !tbaa !1042
  %31 = bitcast i32* %__result to i8*, !dbg !5576
  call void @llvm.lifetime.end(i64 4, i8* %31) #1, !dbg !5576
  %32 = bitcast i8** %__s1 to i8*, !dbg !5576
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !5576
  %33 = load i32, i32* %tmp37, !dbg !5577, !tbaa !1042
  br label %cond.end, !dbg !5511

cond.false:                                       ; preds = %land.lhs.true, %if.end
  %34 = load i8*, i8** %typestr, align 8, !dbg !5578, !tbaa !1048
  %call38 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0)) #1, !dbg !5581
  br label %cond.end, !dbg !5511

cond.end:                                         ; preds = %cond.false, %if.end.36
  %cond = phi i32 [ %33, %if.end.36 ], [ %call38, %cond.false ], !dbg !5511
  store i32 %cond, i32* %tmp, !dbg !5582, !tbaa !1042
  %35 = bitcast i64* %__s2_len to i8*, !dbg !5585
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !5585
  %36 = bitcast i64* %__s1_len to i8*, !dbg !5585
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !5585
  %37 = load i32, i32* %tmp, !dbg !5586, !tbaa !1042
  %cmp39 = icmp eq i32 %37, 0, !dbg !5587
  br i1 %cmp39, label %if.then.41, label %if.else, !dbg !5588

if.then.41:                                       ; preds = %cond.end
  store i32* @double_format, i32** %p, align 8, !dbg !5589, !tbaa !1048
  %38 = load i32, i32* @detected_double_format, align 4, !dbg !5591, !tbaa !1323
  store i32 %38, i32* %detected, align 4, !dbg !5592, !tbaa !1323
  br label %if.end.102, !dbg !5593

if.else:                                          ; preds = %cond.end
  %39 = bitcast i64* %__s1_len43 to i8*, !dbg !5594
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !5594
  call void @llvm.dbg.declare(metadata i64* %__s1_len43, metadata !885, metadata !1038), !dbg !5595
  %40 = bitcast i64* %__s2_len45 to i8*, !dbg !5594
  call void @llvm.lifetime.start(i64 8, i8* %40) #1, !dbg !5594
  call void @llvm.dbg.declare(metadata i64* %__s2_len45, metadata !888, metadata !1038), !dbg !5596
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1) to i64), i64 ptrtoint ([6 x i8]* @.str.4 to i64)), i64 1), label %land.lhs.true.47, label %cond.false.93, !dbg !5597

land.lhs.true.47:                                 ; preds = %if.else
  store i64 5, i64* %__s2_len45, align 8, !dbg !5598, !tbaa !1310
  %41 = load i64, i64* %__s2_len45, align 8, !dbg !5600, !tbaa !1310
  %cmp48 = icmp ult i64 %41, 4, !dbg !5601
  br i1 %cmp48, label %cond.true.50, label %cond.false.93, !dbg !5602

cond.true.50:                                     ; preds = %land.lhs.true.47
  %42 = bitcast i8** %__s152 to i8*, !dbg !5603
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !5603
  call void @llvm.dbg.declare(metadata i8** %__s152, metadata !889, metadata !1038), !dbg !5605
  %43 = load i8*, i8** %typestr, align 8, !dbg !5606, !tbaa !1048
  store i8* %43, i8** %__s152, align 8, !dbg !5605, !tbaa !1048
  %44 = bitcast i32* %__result54 to i8*, !dbg !5607
  call void @llvm.lifetime.start(i64 4, i8* %44) #1, !dbg !5607
  call void @llvm.dbg.declare(metadata i32* %__result54, metadata !891, metadata !1038), !dbg !5608
  %45 = load i8*, i8** %__s152, align 8, !dbg !5609, !tbaa !1048
  %arrayidx55 = getelementptr i8, i8* %45, i64 0, !dbg !5609
  %46 = load i8, i8* %arrayidx55, align 1, !dbg !5609, !tbaa !1323
  %conv56 = zext i8 %46 to i32, !dbg !5609
  %47 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), align 1, !dbg !5610, !tbaa !1323
  %conv57 = zext i8 %47 to i32, !dbg !5610
  %sub58 = sub i32 %conv56, %conv57, !dbg !5611
  store i32 %sub58, i32* %__result54, align 4, !dbg !5608, !tbaa !1042
  %48 = load i64, i64* %__s2_len45, align 8, !dbg !5612, !tbaa !1310
  %cmp59 = icmp ugt i64 %48, 0, !dbg !5614
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.91, !dbg !5615

land.lhs.true.61:                                 ; preds = %cond.true.50
  %49 = load i32, i32* %__result54, align 4, !dbg !5616, !tbaa !1042
  %cmp62 = icmp eq i32 %49, 0, !dbg !5618
  br i1 %cmp62, label %if.then.64, label %if.end.91, !dbg !5619

if.then.64:                                       ; preds = %land.lhs.true.61
  %50 = load i8*, i8** %__s152, align 8, !dbg !5620, !tbaa !1048
  %arrayidx65 = getelementptr i8, i8* %50, i64 1, !dbg !5620
  %51 = load i8, i8* %arrayidx65, align 1, !dbg !5620, !tbaa !1323
  %conv66 = zext i8 %51 to i32, !dbg !5620
  %52 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 1), align 1, !dbg !5623, !tbaa !1323
  %conv67 = zext i8 %52 to i32, !dbg !5623
  %sub68 = sub i32 %conv66, %conv67, !dbg !5624
  store i32 %sub68, i32* %__result54, align 4, !dbg !5625, !tbaa !1042
  %53 = load i64, i64* %__s2_len45, align 8, !dbg !5626, !tbaa !1310
  %cmp69 = icmp ugt i64 %53, 1, !dbg !5628
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.90, !dbg !5629

land.lhs.true.71:                                 ; preds = %if.then.64
  %54 = load i32, i32* %__result54, align 4, !dbg !5630, !tbaa !1042
  %cmp72 = icmp eq i32 %54, 0, !dbg !5632
  br i1 %cmp72, label %if.then.74, label %if.end.90, !dbg !5633

if.then.74:                                       ; preds = %land.lhs.true.71
  %55 = load i8*, i8** %__s152, align 8, !dbg !5634, !tbaa !1048
  %arrayidx75 = getelementptr i8, i8* %55, i64 2, !dbg !5634
  %56 = load i8, i8* %arrayidx75, align 1, !dbg !5634, !tbaa !1323
  %conv76 = zext i8 %56 to i32, !dbg !5634
  %57 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 2), align 1, !dbg !5637, !tbaa !1323
  %conv77 = zext i8 %57 to i32, !dbg !5637
  %sub78 = sub i32 %conv76, %conv77, !dbg !5638
  store i32 %sub78, i32* %__result54, align 4, !dbg !5639, !tbaa !1042
  %58 = load i64, i64* %__s2_len45, align 8, !dbg !5640, !tbaa !1310
  %cmp79 = icmp ugt i64 %58, 2, !dbg !5642
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.89, !dbg !5643

land.lhs.true.81:                                 ; preds = %if.then.74
  %59 = load i32, i32* %__result54, align 4, !dbg !5644, !tbaa !1042
  %cmp82 = icmp eq i32 %59, 0, !dbg !5646
  br i1 %cmp82, label %if.then.84, label %if.end.89, !dbg !5647

if.then.84:                                       ; preds = %land.lhs.true.81
  %60 = load i8*, i8** %__s152, align 8, !dbg !5648, !tbaa !1048
  %arrayidx85 = getelementptr i8, i8* %60, i64 3, !dbg !5648
  %61 = load i8, i8* %arrayidx85, align 1, !dbg !5648, !tbaa !1323
  %conv86 = zext i8 %61 to i32, !dbg !5648
  %62 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i64 3), align 1, !dbg !5650, !tbaa !1323
  %conv87 = zext i8 %62 to i32, !dbg !5650
  %sub88 = sub i32 %conv86, %conv87, !dbg !5651
  store i32 %sub88, i32* %__result54, align 4, !dbg !5652, !tbaa !1042
  br label %if.end.89, !dbg !5653

if.end.89:                                        ; preds = %if.then.84, %land.lhs.true.81, %if.then.74
  br label %if.end.90, !dbg !5654

if.end.90:                                        ; preds = %if.end.89, %land.lhs.true.71, %if.then.64
  br label %if.end.91, !dbg !5658

if.end.91:                                        ; preds = %if.end.90, %land.lhs.true.61, %cond.true.50
  %63 = load i32, i32* %__result54, align 4, !dbg !5662, !tbaa !1042
  store i32 %63, i32* %tmp92, !dbg !5666, !tbaa !1042
  %64 = bitcast i32* %__result54 to i8*, !dbg !5667
  call void @llvm.lifetime.end(i64 4, i8* %64) #1, !dbg !5667
  %65 = bitcast i8** %__s152 to i8*, !dbg !5667
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !5667
  %66 = load i32, i32* %tmp92, !dbg !5668, !tbaa !1042
  br label %cond.end.95, !dbg !5602

cond.false.93:                                    ; preds = %land.lhs.true.47, %if.else
  %67 = load i8*, i8** %typestr, align 8, !dbg !5669, !tbaa !1048
  %call94 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #1, !dbg !5672
  br label %cond.end.95, !dbg !5602

cond.end.95:                                      ; preds = %cond.false.93, %if.end.91
  %cond96 = phi i32 [ %66, %if.end.91 ], [ %call94, %cond.false.93 ], !dbg !5602
  store i32 %cond96, i32* %tmp46, !dbg !5673, !tbaa !1042
  %68 = bitcast i64* %__s2_len45 to i8*, !dbg !5676
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !5676
  %69 = bitcast i64* %__s1_len43 to i8*, !dbg !5676
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !5676
  %70 = load i32, i32* %tmp46, !dbg !5677, !tbaa !1042
  %cmp97 = icmp eq i32 %70, 0, !dbg !5678
  br i1 %cmp97, label %if.then.99, label %if.else.100, !dbg !5679

if.then.99:                                       ; preds = %cond.end.95
  store i32* @float_format, i32** %p, align 8, !dbg !5680, !tbaa !1048
  %71 = load i32, i32* @detected_float_format, align 4, !dbg !5682, !tbaa !1323
  store i32 %71, i32* %detected, align 4, !dbg !5683, !tbaa !1323
  br label %if.end.101, !dbg !5684

if.else.100:                                      ; preds = %cond.end.95
  %72 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5685, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.58, i32 0, i32 0)), !dbg !5687
  store %struct._object* null, %struct._object** %retval, !dbg !5688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5688

if.end.101:                                       ; preds = %if.then.99
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.41
  %73 = bitcast i64* %__s1_len104 to i8*, !dbg !5689
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !5689
  call void @llvm.dbg.declare(metadata i64* %__s1_len104, metadata !892, metadata !1038), !dbg !5690
  %74 = bitcast i64* %__s2_len106 to i8*, !dbg !5689
  call void @llvm.lifetime.start(i64 8, i8* %74) #1, !dbg !5689
  call void @llvm.dbg.declare(metadata i64* %__s2_len106, metadata !895, metadata !1038), !dbg !5691
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i64 1) to i64), i64 ptrtoint ([8 x i8]* @.str.53 to i64)), i64 1), label %land.lhs.true.108, label %cond.false.154, !dbg !5692

land.lhs.true.108:                                ; preds = %if.end.102
  store i64 7, i64* %__s2_len106, align 8, !dbg !5693, !tbaa !1310
  %75 = load i64, i64* %__s2_len106, align 8, !dbg !5695, !tbaa !1310
  %cmp109 = icmp ult i64 %75, 4, !dbg !5696
  br i1 %cmp109, label %cond.true.111, label %cond.false.154, !dbg !5697

cond.true.111:                                    ; preds = %land.lhs.true.108
  %76 = bitcast i8** %__s1113 to i8*, !dbg !5698
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !5698
  call void @llvm.dbg.declare(metadata i8** %__s1113, metadata !896, metadata !1038), !dbg !5700
  %77 = load i8*, i8** %format, align 8, !dbg !5701, !tbaa !1048
  store i8* %77, i8** %__s1113, align 8, !dbg !5700, !tbaa !1048
  %78 = bitcast i32* %__result115 to i8*, !dbg !5702
  call void @llvm.lifetime.start(i64 4, i8* %78) #1, !dbg !5702
  call void @llvm.dbg.declare(metadata i32* %__result115, metadata !898, metadata !1038), !dbg !5703
  %79 = load i8*, i8** %__s1113, align 8, !dbg !5704, !tbaa !1048
  %arrayidx116 = getelementptr i8, i8* %79, i64 0, !dbg !5704
  %80 = load i8, i8* %arrayidx116, align 1, !dbg !5704, !tbaa !1323
  %conv117 = zext i8 %80 to i32, !dbg !5704
  %81 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), align 1, !dbg !5705, !tbaa !1323
  %conv118 = zext i8 %81 to i32, !dbg !5705
  %sub119 = sub i32 %conv117, %conv118, !dbg !5706
  store i32 %sub119, i32* %__result115, align 4, !dbg !5703, !tbaa !1042
  %82 = load i64, i64* %__s2_len106, align 8, !dbg !5707, !tbaa !1310
  %cmp120 = icmp ugt i64 %82, 0, !dbg !5709
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.152, !dbg !5710

land.lhs.true.122:                                ; preds = %cond.true.111
  %83 = load i32, i32* %__result115, align 4, !dbg !5711, !tbaa !1042
  %cmp123 = icmp eq i32 %83, 0, !dbg !5713
  br i1 %cmp123, label %if.then.125, label %if.end.152, !dbg !5714

if.then.125:                                      ; preds = %land.lhs.true.122
  %84 = load i8*, i8** %__s1113, align 8, !dbg !5715, !tbaa !1048
  %arrayidx126 = getelementptr i8, i8* %84, i64 1, !dbg !5715
  %85 = load i8, i8* %arrayidx126, align 1, !dbg !5715, !tbaa !1323
  %conv127 = zext i8 %85 to i32, !dbg !5715
  %86 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i64 1), align 1, !dbg !5718, !tbaa !1323
  %conv128 = zext i8 %86 to i32, !dbg !5718
  %sub129 = sub i32 %conv127, %conv128, !dbg !5719
  store i32 %sub129, i32* %__result115, align 4, !dbg !5720, !tbaa !1042
  %87 = load i64, i64* %__s2_len106, align 8, !dbg !5721, !tbaa !1310
  %cmp130 = icmp ugt i64 %87, 1, !dbg !5723
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.151, !dbg !5724

land.lhs.true.132:                                ; preds = %if.then.125
  %88 = load i32, i32* %__result115, align 4, !dbg !5725, !tbaa !1042
  %cmp133 = icmp eq i32 %88, 0, !dbg !5727
  br i1 %cmp133, label %if.then.135, label %if.end.151, !dbg !5728

if.then.135:                                      ; preds = %land.lhs.true.132
  %89 = load i8*, i8** %__s1113, align 8, !dbg !5729, !tbaa !1048
  %arrayidx136 = getelementptr i8, i8* %89, i64 2, !dbg !5729
  %90 = load i8, i8* %arrayidx136, align 1, !dbg !5729, !tbaa !1323
  %conv137 = zext i8 %90 to i32, !dbg !5729
  %91 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i64 2), align 1, !dbg !5732, !tbaa !1323
  %conv138 = zext i8 %91 to i32, !dbg !5732
  %sub139 = sub i32 %conv137, %conv138, !dbg !5733
  store i32 %sub139, i32* %__result115, align 4, !dbg !5734, !tbaa !1042
  %92 = load i64, i64* %__s2_len106, align 8, !dbg !5735, !tbaa !1310
  %cmp140 = icmp ugt i64 %92, 2, !dbg !5737
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.150, !dbg !5738

land.lhs.true.142:                                ; preds = %if.then.135
  %93 = load i32, i32* %__result115, align 4, !dbg !5739, !tbaa !1042
  %cmp143 = icmp eq i32 %93, 0, !dbg !5741
  br i1 %cmp143, label %if.then.145, label %if.end.150, !dbg !5742

if.then.145:                                      ; preds = %land.lhs.true.142
  %94 = load i8*, i8** %__s1113, align 8, !dbg !5743, !tbaa !1048
  %arrayidx146 = getelementptr i8, i8* %94, i64 3, !dbg !5743
  %95 = load i8, i8* %arrayidx146, align 1, !dbg !5743, !tbaa !1323
  %conv147 = zext i8 %95 to i32, !dbg !5743
  %96 = load i8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i64 3), align 1, !dbg !5745, !tbaa !1323
  %conv148 = zext i8 %96 to i32, !dbg !5745
  %sub149 = sub i32 %conv147, %conv148, !dbg !5746
  store i32 %sub149, i32* %__result115, align 4, !dbg !5747, !tbaa !1042
  br label %if.end.150, !dbg !5748

if.end.150:                                       ; preds = %if.then.145, %land.lhs.true.142, %if.then.135
  br label %if.end.151, !dbg !5749

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.132, %if.then.125
  br label %if.end.152, !dbg !5753

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true.122, %cond.true.111
  %97 = load i32, i32* %__result115, align 4, !dbg !5757, !tbaa !1042
  store i32 %97, i32* %tmp153, !dbg !5761, !tbaa !1042
  %98 = bitcast i32* %__result115 to i8*, !dbg !5762
  call void @llvm.lifetime.end(i64 4, i8* %98) #1, !dbg !5762
  %99 = bitcast i8** %__s1113 to i8*, !dbg !5762
  call void @llvm.lifetime.end(i64 8, i8* %99) #1, !dbg !5762
  %100 = load i32, i32* %tmp153, !dbg !5763, !tbaa !1042
  br label %cond.end.156, !dbg !5697

cond.false.154:                                   ; preds = %land.lhs.true.108, %if.end.102
  %101 = load i8*, i8** %format, align 8, !dbg !5764, !tbaa !1048
  %call155 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0)) #1, !dbg !5767
  br label %cond.end.156, !dbg !5697

cond.end.156:                                     ; preds = %cond.false.154, %if.end.152
  %cond157 = phi i32 [ %100, %if.end.152 ], [ %call155, %cond.false.154 ], !dbg !5697
  store i32 %cond157, i32* %tmp107, !dbg !5768, !tbaa !1042
  %102 = bitcast i64* %__s2_len106 to i8*, !dbg !5771
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !5771
  %103 = bitcast i64* %__s1_len104 to i8*, !dbg !5771
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !5771
  %104 = load i32, i32* %tmp107, !dbg !5772, !tbaa !1042
  %cmp158 = icmp eq i32 %104, 0, !dbg !5773
  br i1 %cmp158, label %if.then.160, label %if.else.161, !dbg !5774

if.then.160:                                      ; preds = %cond.end.156
  store i32 0, i32* %f, align 4, !dbg !5775, !tbaa !1323
  br label %if.end.282, !dbg !5777

if.else.161:                                      ; preds = %cond.end.156
  %105 = bitcast i64* %__s1_len163 to i8*, !dbg !5778
  call void @llvm.lifetime.start(i64 8, i8* %105) #1, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__s1_len163, metadata !899, metadata !1038), !dbg !5779
  %106 = bitcast i64* %__s2_len165 to i8*, !dbg !5778
  call void @llvm.lifetime.start(i64 8, i8* %106) #1, !dbg !5778
  call void @llvm.dbg.declare(metadata i64* %__s2_len165, metadata !902, metadata !1038), !dbg !5780
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i64 1) to i64), i64 ptrtoint ([20 x i8]* @.str.54 to i64)), i64 1), label %land.lhs.true.167, label %cond.false.213, !dbg !5781

land.lhs.true.167:                                ; preds = %if.else.161
  store i64 19, i64* %__s2_len165, align 8, !dbg !5782, !tbaa !1310
  %107 = load i64, i64* %__s2_len165, align 8, !dbg !5784, !tbaa !1310
  %cmp168 = icmp ult i64 %107, 4, !dbg !5785
  br i1 %cmp168, label %cond.true.170, label %cond.false.213, !dbg !5786

cond.true.170:                                    ; preds = %land.lhs.true.167
  %108 = bitcast i8** %__s1172 to i8*, !dbg !5787
  call void @llvm.lifetime.start(i64 8, i8* %108) #1, !dbg !5787
  call void @llvm.dbg.declare(metadata i8** %__s1172, metadata !903, metadata !1038), !dbg !5789
  %109 = load i8*, i8** %format, align 8, !dbg !5790, !tbaa !1048
  store i8* %109, i8** %__s1172, align 8, !dbg !5789, !tbaa !1048
  %110 = bitcast i32* %__result174 to i8*, !dbg !5791
  call void @llvm.lifetime.start(i64 4, i8* %110) #1, !dbg !5791
  call void @llvm.dbg.declare(metadata i32* %__result174, metadata !905, metadata !1038), !dbg !5792
  %111 = load i8*, i8** %__s1172, align 8, !dbg !5793, !tbaa !1048
  %arrayidx175 = getelementptr i8, i8* %111, i64 0, !dbg !5793
  %112 = load i8, i8* %arrayidx175, align 1, !dbg !5793, !tbaa !1323
  %conv176 = zext i8 %112 to i32, !dbg !5793
  %113 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0), align 1, !dbg !5794, !tbaa !1323
  %conv177 = zext i8 %113 to i32, !dbg !5794
  %sub178 = sub i32 %conv176, %conv177, !dbg !5795
  store i32 %sub178, i32* %__result174, align 4, !dbg !5792, !tbaa !1042
  %114 = load i64, i64* %__s2_len165, align 8, !dbg !5796, !tbaa !1310
  %cmp179 = icmp ugt i64 %114, 0, !dbg !5798
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.211, !dbg !5799

land.lhs.true.181:                                ; preds = %cond.true.170
  %115 = load i32, i32* %__result174, align 4, !dbg !5800, !tbaa !1042
  %cmp182 = icmp eq i32 %115, 0, !dbg !5802
  br i1 %cmp182, label %if.then.184, label %if.end.211, !dbg !5803

if.then.184:                                      ; preds = %land.lhs.true.181
  %116 = load i8*, i8** %__s1172, align 8, !dbg !5804, !tbaa !1048
  %arrayidx185 = getelementptr i8, i8* %116, i64 1, !dbg !5804
  %117 = load i8, i8* %arrayidx185, align 1, !dbg !5804, !tbaa !1323
  %conv186 = zext i8 %117 to i32, !dbg !5804
  %118 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i64 1), align 1, !dbg !5807, !tbaa !1323
  %conv187 = zext i8 %118 to i32, !dbg !5807
  %sub188 = sub i32 %conv186, %conv187, !dbg !5808
  store i32 %sub188, i32* %__result174, align 4, !dbg !5809, !tbaa !1042
  %119 = load i64, i64* %__s2_len165, align 8, !dbg !5810, !tbaa !1310
  %cmp189 = icmp ugt i64 %119, 1, !dbg !5812
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.210, !dbg !5813

land.lhs.true.191:                                ; preds = %if.then.184
  %120 = load i32, i32* %__result174, align 4, !dbg !5814, !tbaa !1042
  %cmp192 = icmp eq i32 %120, 0, !dbg !5816
  br i1 %cmp192, label %if.then.194, label %if.end.210, !dbg !5817

if.then.194:                                      ; preds = %land.lhs.true.191
  %121 = load i8*, i8** %__s1172, align 8, !dbg !5818, !tbaa !1048
  %arrayidx195 = getelementptr i8, i8* %121, i64 2, !dbg !5818
  %122 = load i8, i8* %arrayidx195, align 1, !dbg !5818, !tbaa !1323
  %conv196 = zext i8 %122 to i32, !dbg !5818
  %123 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i64 2), align 1, !dbg !5821, !tbaa !1323
  %conv197 = zext i8 %123 to i32, !dbg !5821
  %sub198 = sub i32 %conv196, %conv197, !dbg !5822
  store i32 %sub198, i32* %__result174, align 4, !dbg !5823, !tbaa !1042
  %124 = load i64, i64* %__s2_len165, align 8, !dbg !5824, !tbaa !1310
  %cmp199 = icmp ugt i64 %124, 2, !dbg !5826
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.209, !dbg !5827

land.lhs.true.201:                                ; preds = %if.then.194
  %125 = load i32, i32* %__result174, align 4, !dbg !5828, !tbaa !1042
  %cmp202 = icmp eq i32 %125, 0, !dbg !5830
  br i1 %cmp202, label %if.then.204, label %if.end.209, !dbg !5831

if.then.204:                                      ; preds = %land.lhs.true.201
  %126 = load i8*, i8** %__s1172, align 8, !dbg !5832, !tbaa !1048
  %arrayidx205 = getelementptr i8, i8* %126, i64 3, !dbg !5832
  %127 = load i8, i8* %arrayidx205, align 1, !dbg !5832, !tbaa !1323
  %conv206 = zext i8 %127 to i32, !dbg !5832
  %128 = load i8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i64 3), align 1, !dbg !5834, !tbaa !1323
  %conv207 = zext i8 %128 to i32, !dbg !5834
  %sub208 = sub i32 %conv206, %conv207, !dbg !5835
  store i32 %sub208, i32* %__result174, align 4, !dbg !5836, !tbaa !1042
  br label %if.end.209, !dbg !5837

if.end.209:                                       ; preds = %if.then.204, %land.lhs.true.201, %if.then.194
  br label %if.end.210, !dbg !5838

if.end.210:                                       ; preds = %if.end.209, %land.lhs.true.191, %if.then.184
  br label %if.end.211, !dbg !5842

if.end.211:                                       ; preds = %if.end.210, %land.lhs.true.181, %cond.true.170
  %129 = load i32, i32* %__result174, align 4, !dbg !5846, !tbaa !1042
  store i32 %129, i32* %tmp212, !dbg !5850, !tbaa !1042
  %130 = bitcast i32* %__result174 to i8*, !dbg !5851
  call void @llvm.lifetime.end(i64 4, i8* %130) #1, !dbg !5851
  %131 = bitcast i8** %__s1172 to i8*, !dbg !5851
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !5851
  %132 = load i32, i32* %tmp212, !dbg !5852, !tbaa !1042
  br label %cond.end.215, !dbg !5786

cond.false.213:                                   ; preds = %land.lhs.true.167, %if.else.161
  %133 = load i8*, i8** %format, align 8, !dbg !5853, !tbaa !1048
  %call214 = call i32 @strcmp(i8* %133, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.54, i32 0, i32 0)) #1, !dbg !5856
  br label %cond.end.215, !dbg !5786

cond.end.215:                                     ; preds = %cond.false.213, %if.end.211
  %cond216 = phi i32 [ %132, %if.end.211 ], [ %call214, %cond.false.213 ], !dbg !5786
  store i32 %cond216, i32* %tmp166, !dbg !5857, !tbaa !1042
  %134 = bitcast i64* %__s2_len165 to i8*, !dbg !5860
  call void @llvm.lifetime.end(i64 8, i8* %134) #1, !dbg !5860
  %135 = bitcast i64* %__s1_len163 to i8*, !dbg !5860
  call void @llvm.lifetime.end(i64 8, i8* %135) #1, !dbg !5860
  %136 = load i32, i32* %tmp166, !dbg !5861, !tbaa !1042
  %cmp217 = icmp eq i32 %136, 0, !dbg !5862
  br i1 %cmp217, label %if.then.219, label %if.else.220, !dbg !5863

if.then.219:                                      ; preds = %cond.end.215
  store i32 2, i32* %f, align 4, !dbg !5864, !tbaa !1323
  br label %if.end.281, !dbg !5866

if.else.220:                                      ; preds = %cond.end.215
  %137 = bitcast i64* %__s1_len222 to i8*, !dbg !5867
  call void @llvm.lifetime.start(i64 8, i8* %137) #1, !dbg !5867
  call void @llvm.dbg.declare(metadata i64* %__s1_len222, metadata !906, metadata !1038), !dbg !5868
  %138 = bitcast i64* %__s2_len224 to i8*, !dbg !5867
  call void @llvm.lifetime.start(i64 8, i8* %138) #1, !dbg !5867
  call void @llvm.dbg.declare(metadata i64* %__s2_len224, metadata !909, metadata !1038), !dbg !5869
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i64 1) to i64), i64 ptrtoint ([17 x i8]* @.str.55 to i64)), i64 1), label %land.lhs.true.226, label %cond.false.272, !dbg !5870

land.lhs.true.226:                                ; preds = %if.else.220
  store i64 16, i64* %__s2_len224, align 8, !dbg !5871, !tbaa !1310
  %139 = load i64, i64* %__s2_len224, align 8, !dbg !5873, !tbaa !1310
  %cmp227 = icmp ult i64 %139, 4, !dbg !5874
  br i1 %cmp227, label %cond.true.229, label %cond.false.272, !dbg !5875

cond.true.229:                                    ; preds = %land.lhs.true.226
  %140 = bitcast i8** %__s1231 to i8*, !dbg !5876
  call void @llvm.lifetime.start(i64 8, i8* %140) #1, !dbg !5876
  call void @llvm.dbg.declare(metadata i8** %__s1231, metadata !910, metadata !1038), !dbg !5878
  %141 = load i8*, i8** %format, align 8, !dbg !5879, !tbaa !1048
  store i8* %141, i8** %__s1231, align 8, !dbg !5878, !tbaa !1048
  %142 = bitcast i32* %__result233 to i8*, !dbg !5880
  call void @llvm.lifetime.start(i64 4, i8* %142) #1, !dbg !5880
  call void @llvm.dbg.declare(metadata i32* %__result233, metadata !912, metadata !1038), !dbg !5881
  %143 = load i8*, i8** %__s1231, align 8, !dbg !5882, !tbaa !1048
  %arrayidx234 = getelementptr i8, i8* %143, i64 0, !dbg !5882
  %144 = load i8, i8* %arrayidx234, align 1, !dbg !5882, !tbaa !1323
  %conv235 = zext i8 %144 to i32, !dbg !5882
  %145 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), align 1, !dbg !5883, !tbaa !1323
  %conv236 = zext i8 %145 to i32, !dbg !5883
  %sub237 = sub i32 %conv235, %conv236, !dbg !5884
  store i32 %sub237, i32* %__result233, align 4, !dbg !5881, !tbaa !1042
  %146 = load i64, i64* %__s2_len224, align 8, !dbg !5885, !tbaa !1310
  %cmp238 = icmp ugt i64 %146, 0, !dbg !5887
  br i1 %cmp238, label %land.lhs.true.240, label %if.end.270, !dbg !5888

land.lhs.true.240:                                ; preds = %cond.true.229
  %147 = load i32, i32* %__result233, align 4, !dbg !5889, !tbaa !1042
  %cmp241 = icmp eq i32 %147, 0, !dbg !5891
  br i1 %cmp241, label %if.then.243, label %if.end.270, !dbg !5892

if.then.243:                                      ; preds = %land.lhs.true.240
  %148 = load i8*, i8** %__s1231, align 8, !dbg !5893, !tbaa !1048
  %arrayidx244 = getelementptr i8, i8* %148, i64 1, !dbg !5893
  %149 = load i8, i8* %arrayidx244, align 1, !dbg !5893, !tbaa !1323
  %conv245 = zext i8 %149 to i32, !dbg !5893
  %150 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i64 1), align 1, !dbg !5896, !tbaa !1323
  %conv246 = zext i8 %150 to i32, !dbg !5896
  %sub247 = sub i32 %conv245, %conv246, !dbg !5897
  store i32 %sub247, i32* %__result233, align 4, !dbg !5898, !tbaa !1042
  %151 = load i64, i64* %__s2_len224, align 8, !dbg !5899, !tbaa !1310
  %cmp248 = icmp ugt i64 %151, 1, !dbg !5901
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.269, !dbg !5902

land.lhs.true.250:                                ; preds = %if.then.243
  %152 = load i32, i32* %__result233, align 4, !dbg !5903, !tbaa !1042
  %cmp251 = icmp eq i32 %152, 0, !dbg !5905
  br i1 %cmp251, label %if.then.253, label %if.end.269, !dbg !5906

if.then.253:                                      ; preds = %land.lhs.true.250
  %153 = load i8*, i8** %__s1231, align 8, !dbg !5907, !tbaa !1048
  %arrayidx254 = getelementptr i8, i8* %153, i64 2, !dbg !5907
  %154 = load i8, i8* %arrayidx254, align 1, !dbg !5907, !tbaa !1323
  %conv255 = zext i8 %154 to i32, !dbg !5907
  %155 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i64 2), align 1, !dbg !5910, !tbaa !1323
  %conv256 = zext i8 %155 to i32, !dbg !5910
  %sub257 = sub i32 %conv255, %conv256, !dbg !5911
  store i32 %sub257, i32* %__result233, align 4, !dbg !5912, !tbaa !1042
  %156 = load i64, i64* %__s2_len224, align 8, !dbg !5913, !tbaa !1310
  %cmp258 = icmp ugt i64 %156, 2, !dbg !5915
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.268, !dbg !5916

land.lhs.true.260:                                ; preds = %if.then.253
  %157 = load i32, i32* %__result233, align 4, !dbg !5917, !tbaa !1042
  %cmp261 = icmp eq i32 %157, 0, !dbg !5919
  br i1 %cmp261, label %if.then.263, label %if.end.268, !dbg !5920

if.then.263:                                      ; preds = %land.lhs.true.260
  %158 = load i8*, i8** %__s1231, align 8, !dbg !5921, !tbaa !1048
  %arrayidx264 = getelementptr i8, i8* %158, i64 3, !dbg !5921
  %159 = load i8, i8* %arrayidx264, align 1, !dbg !5921, !tbaa !1323
  %conv265 = zext i8 %159 to i32, !dbg !5921
  %160 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i64 3), align 1, !dbg !5923, !tbaa !1323
  %conv266 = zext i8 %160 to i32, !dbg !5923
  %sub267 = sub i32 %conv265, %conv266, !dbg !5924
  store i32 %sub267, i32* %__result233, align 4, !dbg !5925, !tbaa !1042
  br label %if.end.268, !dbg !5926

if.end.268:                                       ; preds = %if.then.263, %land.lhs.true.260, %if.then.253
  br label %if.end.269, !dbg !5927

if.end.269:                                       ; preds = %if.end.268, %land.lhs.true.250, %if.then.243
  br label %if.end.270, !dbg !5931

if.end.270:                                       ; preds = %if.end.269, %land.lhs.true.240, %cond.true.229
  %161 = load i32, i32* %__result233, align 4, !dbg !5935, !tbaa !1042
  store i32 %161, i32* %tmp271, !dbg !5939, !tbaa !1042
  %162 = bitcast i32* %__result233 to i8*, !dbg !5940
  call void @llvm.lifetime.end(i64 4, i8* %162) #1, !dbg !5940
  %163 = bitcast i8** %__s1231 to i8*, !dbg !5940
  call void @llvm.lifetime.end(i64 8, i8* %163) #1, !dbg !5940
  %164 = load i32, i32* %tmp271, !dbg !5941, !tbaa !1042
  br label %cond.end.274, !dbg !5875

cond.false.272:                                   ; preds = %land.lhs.true.226, %if.else.220
  %165 = load i8*, i8** %format, align 8, !dbg !5942, !tbaa !1048
  %call273 = call i32 @strcmp(i8* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0)) #1, !dbg !5945
  br label %cond.end.274, !dbg !5875

cond.end.274:                                     ; preds = %cond.false.272, %if.end.270
  %cond275 = phi i32 [ %164, %if.end.270 ], [ %call273, %cond.false.272 ], !dbg !5875
  store i32 %cond275, i32* %tmp225, !dbg !5946, !tbaa !1042
  %166 = bitcast i64* %__s2_len224 to i8*, !dbg !5949
  call void @llvm.lifetime.end(i64 8, i8* %166) #1, !dbg !5949
  %167 = bitcast i64* %__s1_len222 to i8*, !dbg !5949
  call void @llvm.lifetime.end(i64 8, i8* %167) #1, !dbg !5949
  %168 = load i32, i32* %tmp225, !dbg !5950, !tbaa !1042
  %cmp276 = icmp eq i32 %168, 0, !dbg !5951
  br i1 %cmp276, label %if.then.278, label %if.else.279, !dbg !5952

if.then.278:                                      ; preds = %cond.end.274
  store i32 1, i32* %f, align 4, !dbg !5953, !tbaa !1323
  br label %if.end.280, !dbg !5955

if.else.279:                                      ; preds = %cond.end.274
  %169 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5956, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %169, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.59, i32 0, i32 0)), !dbg !5958
  store %struct._object* null, %struct._object** %retval, !dbg !5959
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5959

if.end.280:                                       ; preds = %if.then.278
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %if.then.219
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.160
  %170 = load i32, i32* %f, align 4, !dbg !5960, !tbaa !1323
  %cmp283 = icmp ne i32 %170, 0, !dbg !5962
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.290, !dbg !5963

land.lhs.true.285:                                ; preds = %if.end.282
  %171 = load i32, i32* %f, align 4, !dbg !5964, !tbaa !1323
  %172 = load i32, i32* %detected, align 4, !dbg !5966, !tbaa !1323
  %cmp286 = icmp ne i32 %171, %172, !dbg !5967
  br i1 %cmp286, label %if.then.288, label %if.end.290, !dbg !5968

if.then.288:                                      ; preds = %land.lhs.true.285
  %173 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !5969, !tbaa !1048
  %174 = load i8*, i8** %typestr, align 8, !dbg !5971, !tbaa !1048
  %call289 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %173, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.60, i32 0, i32 0), i8* %174), !dbg !5972
  store %struct._object* null, %struct._object** %retval, !dbg !5973
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5973

if.end.290:                                       ; preds = %land.lhs.true.285, %if.end.282
  %175 = load i32, i32* %f, align 4, !dbg !5974, !tbaa !1323
  %176 = load i32*, i32** %p, align 8, !dbg !5975, !tbaa !1048
  store i32 %175, i32* %176, align 4, !dbg !5976, !tbaa !1323
  %177 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5977, !tbaa !1156
  %inc = add i64 %177, 1, !dbg !5977
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !5977, !tbaa !1156
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !5978
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5978

cleanup:                                          ; preds = %if.end.290, %if.then.288, %if.else.279, %if.else.100, %if.then
  %178 = bitcast i32** %p to i8*, !dbg !5979
  call void @llvm.lifetime.end(i64 8, i8* %178) #1, !dbg !5979
  %179 = bitcast i32* %detected to i8*, !dbg !5979
  call void @llvm.lifetime.end(i64 4, i8* %179) #1, !dbg !5979
  %180 = bitcast i32* %f to i8*, !dbg !5979
  call void @llvm.lifetime.end(i64 4, i8* %180) #1, !dbg !5979
  %181 = bitcast i8** %format to i8*, !dbg !5979
  call void @llvm.lifetime.end(i64 8, i8* %181) #1, !dbg !5979
  %182 = bitcast i8** %typestr to i8*, !dbg !5979
  call void @llvm.lifetime.end(i64 8, i8* %182) #1, !dbg !5979
  %183 = load %struct._object*, %struct._object** %retval, !dbg !5979
  ret %struct._object* %183, !dbg !5979
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !915, metadata !1038), !dbg !5980
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !916, metadata !1038), !dbg !5981
  %0 = bitcast %struct._object** %format_spec to i8*, !dbg !5982
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !5982
  call void @llvm.dbg.declare(metadata %struct._object** %format_spec, metadata !917, metadata !1038), !dbg !5983
  %1 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !5984
  call void @llvm.lifetime.start(i64 56, i8* %1) #1, !dbg !5984
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter* %writer, metadata !918, metadata !1038), !dbg !5985
  %2 = bitcast i32* %ret to i8*, !dbg !5986
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !5986
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !933, metadata !1038), !dbg !5987
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !5988, !tbaa !1048
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.61, i32 0, i32 0), %struct._object** %format_spec), !dbg !5990
  %tobool = icmp ne i32 %call, 0, !dbg !5990
  br i1 %tobool, label %if.end, label %if.then, !dbg !5991

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !5992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5992

if.end:                                           ; preds = %entry
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer), !dbg !5993
  %4 = load %struct._object*, %struct._object** %self.addr, align 8, !dbg !5994, !tbaa !1048
  %5 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !5995, !tbaa !1048
  %6 = load %struct._object*, %struct._object** %format_spec, align 8, !dbg !5996, !tbaa !1048
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !5997
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 1, !dbg !5998
  %8 = load i64, i64* %length, align 8, !dbg !5998, !tbaa !5999
  %call1 = call i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter* %writer, %struct._object* %4, %struct._object* %5, i64 0, i64 %8), !dbg !6002
  store i32 %call1, i32* %ret, align 4, !dbg !6003, !tbaa !1042
  %9 = load i32, i32* %ret, align 4, !dbg !6004, !tbaa !1042
  %cmp = icmp eq i32 %9, -1, !dbg !6006
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !6007

if.then.2:                                        ; preds = %if.end
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer), !dbg !6008
  store %struct._object* null, %struct._object** %retval, !dbg !6010
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6010

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer), !dbg !6011
  store %struct._object* %call4, %struct._object** %retval, !dbg !6012
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6012

cleanup:                                          ; preds = %if.end.3, %if.then.2, %if.then
  %10 = bitcast i32* %ret to i8*, !dbg !6013
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !6013
  %11 = bitcast %struct._PyUnicodeWriter* %writer to i8*, !dbg !6013
  call void @llvm.lifetime.end(i64 56, i8* %11) #1, !dbg !6013
  %12 = bitcast %struct._object** %format_spec to i8*, !dbg !6013
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !6013
  %13 = load %struct._object*, %struct._object** %retval, !dbg !6013
  ret %struct._object* %13, !dbg !6013
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare double @round(double) #6

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #3

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
  %cleanup.dest.slot = alloca i32
  store double %x, double* %x.addr, align 8, !tbaa !1190
  call void @llvm.dbg.declare(metadata double* %x.addr, metadata !728, metadata !1038), !dbg !6014
  store i32 %ndigits, i32* %ndigits.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %ndigits.addr, metadata !729, metadata !1038), !dbg !6015
  %0 = bitcast double* %rounded to i8*, !dbg !6016
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !6016
  call void @llvm.dbg.declare(metadata double* %rounded, metadata !730, metadata !1038), !dbg !6017
  %1 = bitcast i64* %buflen to i8*, !dbg !6018
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !6018
  call void @llvm.dbg.declare(metadata i64* %buflen, metadata !731, metadata !1038), !dbg !6019
  %2 = bitcast i64* %mybuflen to i8*, !dbg !6018
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !6018
  call void @llvm.dbg.declare(metadata i64* %mybuflen, metadata !732, metadata !1038), !dbg !6020
  store i64 100, i64* %mybuflen, align 8, !dbg !6020, !tbaa !1310
  %3 = bitcast i8** %buf to i8*, !dbg !6021
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !6021
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !733, metadata !1038), !dbg !6022
  %4 = bitcast i8** %buf_end to i8*, !dbg !6021
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !6021
  call void @llvm.dbg.declare(metadata i8** %buf_end, metadata !734, metadata !1038), !dbg !6023
  %5 = bitcast [100 x i8]* %shortbuf to i8*, !dbg !6021
  call void @llvm.lifetime.start(i64 100, i8* %5) #1, !dbg !6021
  call void @llvm.dbg.declare(metadata [100 x i8]* %shortbuf, metadata !735, metadata !1038), !dbg !6024
  %6 = bitcast i8** %mybuf to i8*, !dbg !6021
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !6021
  call void @llvm.dbg.declare(metadata i8** %mybuf, metadata !739, metadata !1038), !dbg !6025
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %shortbuf, i32 0, i32 0, !dbg !6026
  store i8* %arraydecay, i8** %mybuf, align 8, !dbg !6025, !tbaa !1048
  %7 = bitcast i32* %decpt to i8*, !dbg !6027
  call void @llvm.lifetime.start(i64 4, i8* %7) #1, !dbg !6027
  call void @llvm.dbg.declare(metadata i32* %decpt, metadata !740, metadata !1038), !dbg !6028
  %8 = bitcast i32* %sign to i8*, !dbg !6027
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !6027
  call void @llvm.dbg.declare(metadata i32* %sign, metadata !741, metadata !1038), !dbg !6029
  %9 = bitcast %struct._object** %result to i8*, !dbg !6030
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !6030
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !742, metadata !1038), !dbg !6031
  store %struct._object* null, %struct._object** %result, align 8, !dbg !6031, !tbaa !1048
  %10 = bitcast i16* %old_387controlword to i8*, !dbg !6032
  call void @llvm.lifetime.start(i64 2, i8* %10) #1, !dbg !6032
  call void @llvm.dbg.declare(metadata i16* %old_387controlword, metadata !743, metadata !1038), !dbg !6033
  %11 = bitcast i16* %new_387controlword to i8*, !dbg !6032
  call void @llvm.lifetime.start(i64 2, i8* %11) #1, !dbg !6032
  call void @llvm.dbg.declare(metadata i16* %new_387controlword, metadata !744, metadata !1038), !dbg !6034
  br label %do.body, !dbg !6035

do.body:                                          ; preds = %entry
  %call = call zeroext i16 @_Py_get_387controlword(), !dbg !6036
  store i16 %call, i16* %old_387controlword, align 2, !dbg !6039, !tbaa !6040
  %12 = load i16, i16* %old_387controlword, align 2, !dbg !6042, !tbaa !6040
  %conv = zext i16 %12 to i32, !dbg !6042
  %and = and i32 %conv, -3841, !dbg !6043
  %or = or i32 %and, 512, !dbg !6044
  %conv1 = trunc i32 %or to i16, !dbg !6045
  store i16 %conv1, i16* %new_387controlword, align 2, !dbg !6046, !tbaa !6040
  %13 = load i16, i16* %new_387controlword, align 2, !dbg !6047, !tbaa !6040
  %conv2 = zext i16 %13 to i32, !dbg !6047
  %14 = load i16, i16* %old_387controlword, align 2, !dbg !6049, !tbaa !6040
  %conv3 = zext i16 %14 to i32, !dbg !6049
  %cmp = icmp ne i32 %conv2, %conv3, !dbg !6050
  br i1 %cmp, label %if.then, label %if.end, !dbg !6051

if.then:                                          ; preds = %do.body
  %15 = load i16, i16* %new_387controlword, align 2, !dbg !6052, !tbaa !6040
  call void @_Py_set_387controlword(i16 zeroext %15), !dbg !6054
  br label %if.end, !dbg !6054

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond, !dbg !6055

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !6058

do.end:                                           ; preds = %do.cond
  %16 = load double, double* %x.addr, align 8, !dbg !6060, !tbaa !1190
  %17 = load i32, i32* %ndigits.addr, align 4, !dbg !6061, !tbaa !1042
  %call5 = call i8* @_Py_dg_dtoa(double %16, i32 3, i32 %17, i32* %decpt, i32* %sign, i8** %buf_end), !dbg !6062
  store i8* %call5, i8** %buf, align 8, !dbg !6063, !tbaa !1048
  %18 = load i16, i16* %new_387controlword, align 2, !dbg !6064, !tbaa !6040
  %conv6 = zext i16 %18 to i32, !dbg !6064
  %19 = load i16, i16* %old_387controlword, align 2, !dbg !6066, !tbaa !6040
  %conv7 = zext i16 %19 to i32, !dbg !6066
  %cmp8 = icmp ne i32 %conv6, %conv7, !dbg !6067
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !6068

if.then.10:                                       ; preds = %do.end
  %20 = load i16, i16* %old_387controlword, align 2, !dbg !6069, !tbaa !6040
  call void @_Py_set_387controlword(i16 zeroext %20), !dbg !6071
  br label %if.end.11, !dbg !6071

if.end.11:                                        ; preds = %if.then.10, %do.end
  %21 = load i8*, i8** %buf, align 8, !dbg !6072, !tbaa !1048
  %cmp12 = icmp eq i8* %21, null, !dbg !6074
  br i1 %cmp12, label %if.then.14, label %if.end.16, !dbg !6075

if.then.14:                                       ; preds = %if.end.11
  %call15 = call %struct._object* @PyErr_NoMemory(), !dbg !6076
  store %struct._object* null, %struct._object** %retval, !dbg !6078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6078

if.end.16:                                        ; preds = %if.end.11
  %22 = load i8*, i8** %buf_end, align 8, !dbg !6079, !tbaa !1048
  %23 = load i8*, i8** %buf, align 8, !dbg !6080, !tbaa !1048
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64, !dbg !6081
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64, !dbg !6081
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6081
  store i64 %sub.ptr.sub, i64* %buflen, align 8, !dbg !6082, !tbaa !1310
  %24 = load i64, i64* %buflen, align 8, !dbg !6083, !tbaa !1310
  %add = add i64 %24, 8, !dbg !6085
  %25 = load i64, i64* %mybuflen, align 8, !dbg !6086, !tbaa !1310
  %cmp17 = icmp sgt i64 %add, %25, !dbg !6087
  br i1 %cmp17, label %if.then.19, label %if.end.27, !dbg !6088

if.then.19:                                       ; preds = %if.end.16
  %26 = load i64, i64* %buflen, align 8, !dbg !6089, !tbaa !1310
  %add20 = add i64 %26, 8, !dbg !6091
  store i64 %add20, i64* %mybuflen, align 8, !dbg !6092, !tbaa !1310
  %27 = load i64, i64* %mybuflen, align 8, !dbg !6093, !tbaa !1310
  %call21 = call i8* @PyMem_Malloc(i64 %27), !dbg !6094
  store i8* %call21, i8** %mybuf, align 8, !dbg !6095, !tbaa !1048
  %28 = load i8*, i8** %mybuf, align 8, !dbg !6096, !tbaa !1048
  %cmp22 = icmp eq i8* %28, null, !dbg !6098
  br i1 %cmp22, label %if.then.24, label %if.end.26, !dbg !6099

if.then.24:                                       ; preds = %if.then.19
  %call25 = call %struct._object* @PyErr_NoMemory(), !dbg !6100
  br label %exit, !dbg !6102

if.end.26:                                        ; preds = %if.then.19
  br label %if.end.27, !dbg !6103

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  %29 = load i8*, i8** %mybuf, align 8, !dbg !6104, !tbaa !1048
  %30 = load i64, i64* %mybuflen, align 8, !dbg !6105, !tbaa !1310
  %31 = load i32, i32* %sign, align 4, !dbg !6106, !tbaa !1042
  %tobool = icmp ne i32 %31, 0, !dbg !6106
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.38, i32 0, i32 0), !dbg !6106
  %32 = load i8*, i8** %buf, align 8, !dbg !6107, !tbaa !1048
  %33 = load i32, i32* %decpt, align 4, !dbg !6108, !tbaa !1042
  %34 = load i64, i64* %buflen, align 8, !dbg !6109, !tbaa !1310
  %conv28 = trunc i64 %34 to i32, !dbg !6110
  %sub = sub i32 %33, %conv28, !dbg !6111
  %call29 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8* %cond, i8* %32, i32 %sub), !dbg !6112
  %call30 = call i32* @__errno_location() #2, !dbg !6113
  store i32 0, i32* %call30, align 4, !dbg !6114, !tbaa !1042
  br label %do.body.31, !dbg !6115

do.body.31:                                       ; preds = %if.end.27
  %call32 = call zeroext i16 @_Py_get_387controlword(), !dbg !6116
  store i16 %call32, i16* %old_387controlword, align 2, !dbg !6119, !tbaa !6040
  %35 = load i16, i16* %old_387controlword, align 2, !dbg !6120, !tbaa !6040
  %conv33 = zext i16 %35 to i32, !dbg !6120
  %and34 = and i32 %conv33, -3841, !dbg !6121
  %or35 = or i32 %and34, 512, !dbg !6122
  %conv36 = trunc i32 %or35 to i16, !dbg !6123
  store i16 %conv36, i16* %new_387controlword, align 2, !dbg !6124, !tbaa !6040
  %36 = load i16, i16* %new_387controlword, align 2, !dbg !6125, !tbaa !6040
  %conv37 = zext i16 %36 to i32, !dbg !6125
  %37 = load i16, i16* %old_387controlword, align 2, !dbg !6127, !tbaa !6040
  %conv38 = zext i16 %37 to i32, !dbg !6127
  %cmp39 = icmp ne i32 %conv37, %conv38, !dbg !6128
  br i1 %cmp39, label %if.then.41, label %if.end.42, !dbg !6129

if.then.41:                                       ; preds = %do.body.31
  %38 = load i16, i16* %new_387controlword, align 2, !dbg !6130, !tbaa !6040
  call void @_Py_set_387controlword(i16 zeroext %38), !dbg !6132
  br label %if.end.42, !dbg !6132

if.end.42:                                        ; preds = %if.then.41, %do.body.31
  br label %do.cond.43, !dbg !6133

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !6136

do.end.44:                                        ; preds = %do.cond.43
  %39 = load i8*, i8** %mybuf, align 8, !dbg !6138, !tbaa !1048
  %call45 = call double @_Py_dg_strtod(i8* %39, i8** null), !dbg !6139
  store double %call45, double* %rounded, align 8, !dbg !6140, !tbaa !1190
  %40 = load i16, i16* %new_387controlword, align 2, !dbg !6141, !tbaa !6040
  %conv46 = zext i16 %40 to i32, !dbg !6141
  %41 = load i16, i16* %old_387controlword, align 2, !dbg !6143, !tbaa !6040
  %conv47 = zext i16 %41 to i32, !dbg !6143
  %cmp48 = icmp ne i32 %conv46, %conv47, !dbg !6144
  br i1 %cmp48, label %if.then.50, label %if.end.51, !dbg !6145

if.then.50:                                       ; preds = %do.end.44
  %42 = load i16, i16* %old_387controlword, align 2, !dbg !6146, !tbaa !6040
  call void @_Py_set_387controlword(i16 zeroext %42), !dbg !6148
  br label %if.end.51, !dbg !6148

if.end.51:                                        ; preds = %if.then.50, %do.end.44
  %call52 = call i32* @__errno_location() #2, !dbg !6149
  %43 = load i32, i32* %call52, align 4, !dbg !6151, !tbaa !1042
  %cmp53 = icmp eq i32 %43, 34, !dbg !6152
  br i1 %cmp53, label %land.lhs.true, label %if.else, !dbg !6153

land.lhs.true:                                    ; preds = %if.end.51
  %44 = load double, double* %rounded, align 8, !dbg !6154, !tbaa !1190
  %call55 = call double @fabs(double %44) #2, !dbg !6156
  %cmp56 = fcmp oge double %call55, 1.000000e+00, !dbg !6157
  br i1 %cmp56, label %if.then.58, label %if.else, !dbg !6158

if.then.58:                                       ; preds = %land.lhs.true
  %45 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !6159, !tbaa !1048
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0)), !dbg !6160
  br label %if.end.60, !dbg !6160

if.else:                                          ; preds = %land.lhs.true, %if.end.51
  %46 = load double, double* %rounded, align 8, !dbg !6161, !tbaa !1190
  %call59 = call %struct._object* @PyFloat_FromDouble(double %46), !dbg !6162
  store %struct._object* %call59, %struct._object** %result, align 8, !dbg !6163, !tbaa !1048
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.58
  %47 = load i8*, i8** %mybuf, align 8, !dbg !6164, !tbaa !1048
  %arraydecay61 = getelementptr inbounds [100 x i8], [100 x i8]* %shortbuf, i32 0, i32 0, !dbg !6166
  %cmp62 = icmp ne i8* %47, %arraydecay61, !dbg !6167
  br i1 %cmp62, label %if.then.64, label %if.end.65, !dbg !6168

if.then.64:                                       ; preds = %if.end.60
  %48 = load i8*, i8** %mybuf, align 8, !dbg !6169, !tbaa !1048
  call void @PyMem_Free(i8* %48), !dbg !6170
  br label %if.end.65, !dbg !6170

if.end.65:                                        ; preds = %if.then.64, %if.end.60
  br label %exit, !dbg !6171

exit:                                             ; preds = %if.end.65, %if.then.24
  %49 = load i8*, i8** %buf, align 8, !dbg !6173, !tbaa !1048
  call void @_Py_dg_freedtoa(i8* %49), !dbg !6174
  %50 = load %struct._object*, %struct._object** %result, align 8, !dbg !6175, !tbaa !1048
  store %struct._object* %50, %struct._object** %retval, !dbg !6176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6176

cleanup:                                          ; preds = %exit, %if.then.14
  %51 = bitcast i16* %new_387controlword to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 2, i8* %51) #1, !dbg !6177
  %52 = bitcast i16* %old_387controlword to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 2, i8* %52) #1, !dbg !6177
  %53 = bitcast %struct._object** %result to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !6177
  %54 = bitcast i32* %sign to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 4, i8* %54) #1, !dbg !6177
  %55 = bitcast i32* %decpt to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 4, i8* %55) #1, !dbg !6177
  %56 = bitcast i8** %mybuf to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !6177
  %57 = bitcast [100 x i8]* %shortbuf to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 100, i8* %57) #1, !dbg !6177
  %58 = bitcast i8** %buf_end to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %58) #1, !dbg !6177
  %59 = bitcast i8** %buf to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !6177
  %60 = bitcast i64* %mybuflen to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !6177
  %61 = bitcast i64* %buflen to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !6177
  %62 = bitcast double* %rounded to i8*, !dbg !6177
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !6177
  %63 = load %struct._object*, %struct._object** %retval, !dbg !6177
  ret %struct._object* %63, !dbg !6177
}

declare zeroext i16 @_Py_get_387controlword() #3

declare void @_Py_set_387controlword(i16 zeroext) #3

declare i8* @_Py_dg_dtoa(double, i32, i32, i32*, i32*, i8**) #3

declare i8* @PyMem_Malloc(i64) #3

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

declare double @_Py_dg_strtod(i8*, i8**) #3

declare void @_Py_dg_freedtoa(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @labs(i64) #6

declare %struct._object* @PyTuple_Pack(i64, ...) #3

declare double @_Py_parse_inf_or_nan(i8*, i8**) #3

; Function Attrs: nounwind uwtable
define internal i32 @hex_from_char(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  %x = alloca i32, align 4
  store i8 %c, i8* %c.addr, align 1, !tbaa !1323
  call void @llvm.dbg.declare(metadata i8* %c.addr, metadata !814, metadata !1038), !dbg !6178
  %0 = bitcast i32* %x to i8*, !dbg !6179
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !6179
  call void @llvm.dbg.declare(metadata i32* %x, metadata !815, metadata !1038), !dbg !6180
  %1 = load i8, i8* %c.addr, align 1, !dbg !6181, !tbaa !1323
  %conv = sext i8 %1 to i32, !dbg !6181
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
  ], !dbg !6182

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %x, align 4, !dbg !6183, !tbaa !1042
  br label %sw.epilog, !dbg !6185

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %x, align 4, !dbg !6186, !tbaa !1042
  br label %sw.epilog, !dbg !6187

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %x, align 4, !dbg !6188, !tbaa !1042
  br label %sw.epilog, !dbg !6189

sw.bb.3:                                          ; preds = %entry
  store i32 3, i32* %x, align 4, !dbg !6190, !tbaa !1042
  br label %sw.epilog, !dbg !6191

sw.bb.4:                                          ; preds = %entry
  store i32 4, i32* %x, align 4, !dbg !6192, !tbaa !1042
  br label %sw.epilog, !dbg !6193

sw.bb.5:                                          ; preds = %entry
  store i32 5, i32* %x, align 4, !dbg !6194, !tbaa !1042
  br label %sw.epilog, !dbg !6195

sw.bb.6:                                          ; preds = %entry
  store i32 6, i32* %x, align 4, !dbg !6196, !tbaa !1042
  br label %sw.epilog, !dbg !6197

sw.bb.7:                                          ; preds = %entry
  store i32 7, i32* %x, align 4, !dbg !6198, !tbaa !1042
  br label %sw.epilog, !dbg !6199

sw.bb.8:                                          ; preds = %entry
  store i32 8, i32* %x, align 4, !dbg !6200, !tbaa !1042
  br label %sw.epilog, !dbg !6201

sw.bb.9:                                          ; preds = %entry
  store i32 9, i32* %x, align 4, !dbg !6202, !tbaa !1042
  br label %sw.epilog, !dbg !6203

sw.bb.10:                                         ; preds = %entry, %entry
  store i32 10, i32* %x, align 4, !dbg !6204, !tbaa !1042
  br label %sw.epilog, !dbg !6205

sw.bb.11:                                         ; preds = %entry, %entry
  store i32 11, i32* %x, align 4, !dbg !6206, !tbaa !1042
  br label %sw.epilog, !dbg !6207

sw.bb.12:                                         ; preds = %entry, %entry
  store i32 12, i32* %x, align 4, !dbg !6208, !tbaa !1042
  br label %sw.epilog, !dbg !6209

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 13, i32* %x, align 4, !dbg !6210, !tbaa !1042
  br label %sw.epilog, !dbg !6211

sw.bb.14:                                         ; preds = %entry, %entry
  store i32 14, i32* %x, align 4, !dbg !6212, !tbaa !1042
  br label %sw.epilog, !dbg !6213

sw.bb.15:                                         ; preds = %entry, %entry
  store i32 15, i32* %x, align 4, !dbg !6214, !tbaa !1042
  br label %sw.epilog, !dbg !6215

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %x, align 4, !dbg !6216, !tbaa !1042
  br label %sw.epilog, !dbg !6217

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %x, align 4, !dbg !6218, !tbaa !1042
  %3 = bitcast i32* %x to i8*, !dbg !6219
  call void @llvm.lifetime.end(i64 4, i8* %3) #1, !dbg !6219
  ret i32 %2, !dbg !6220
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #5

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define internal signext i8 @char_from_hex(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4, !tbaa !1042
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !834, metadata !1038), !dbg !6221
  %0 = load i32, i32* %x.addr, align 4, !dbg !6222, !tbaa !1042
  %idxprom = sext i32 %0 to i64, !dbg !6223
  %1 = load i8*, i8** @Py_hexdigits, align 8, !dbg !6223, !tbaa !1048
  %arrayidx = getelementptr i8, i8* %1, i64 %idxprom, !dbg !6223
  %2 = load i8, i8* %arrayidx, align 1, !dbg !6223, !tbaa !1323
  ret i8 %2, !dbg !6224
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #7

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #3

declare i32 @_PyFloat_FormatAdvancedWriter(%struct._PyUnicodeWriter*, %struct._object*, %struct._object*, i64, i64) #3

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #3

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @float_getzero(%struct._object* %v, i8* %closure) #0 {
entry:
  %v.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !936, metadata !1038), !dbg !6225
  store i8* %closure, i8** %closure.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata i8** %closure.addr, metadata !937, metadata !1038), !dbg !6226
  %call = call %struct._object* @PyFloat_FromDouble(double 0.000000e+00), !dbg !6227
  ret %struct._object* %call, !dbg !6228
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !948, metadata !1038), !dbg !6229
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !949, metadata !1038), !dbg !6230
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1048
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !950, metadata !1038), !dbg !6231
  %0 = bitcast %struct._object** %tmp to i8*, !dbg !6232
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !6232
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !951, metadata !1038), !dbg !6233
  %1 = bitcast %struct._object** %newobj to i8*, !dbg !6232
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !6232
  call void @llvm.dbg.declare(metadata %struct._object** %newobj, metadata !952, metadata !1038), !dbg !6234
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !6235, !tbaa !1048
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !6236, !tbaa !1048
  %call = call %struct._object* @float_new(%struct._typeobject* @PyFloat_Type, %struct._object* %2, %struct._object* %3), !dbg !6237
  store %struct._object* %call, %struct._object** %tmp, align 8, !dbg !6238, !tbaa !1048
  %4 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !6239, !tbaa !1048
  %cmp = icmp eq %struct._object* %4, null, !dbg !6241
  br i1 %cmp, label %if.then, label %if.end, !dbg !6242

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !6243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6243

if.end:                                           ; preds = %entry
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !6244, !tbaa !1048
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36, !dbg !6245
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !6245, !tbaa !6246
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !6247, !tbaa !1048
  %call2 = call %struct._object* %6(%struct._typeobject* %7, i64 0), !dbg !6244
  store %struct._object* %call2, %struct._object** %newobj, align 8, !dbg !6248, !tbaa !1048
  %8 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !6249, !tbaa !1048
  %cmp3 = icmp eq %struct._object* %8, null, !dbg !6250
  br i1 %cmp3, label %if.then.4, label %if.end.9, !dbg !6251

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !6252

do.body:                                          ; preds = %if.then.4
  %9 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6253
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !6253
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !953, metadata !1038), !dbg !6255
  %10 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !6256, !tbaa !1048
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !6255, !tbaa !1048
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6257, !tbaa !1048
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !6259
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !6260, !tbaa !1156
  %dec = add i64 %12, -1, !dbg !6260
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !6260, !tbaa !1156
  %cmp6 = icmp ne i64 %dec, 0, !dbg !6261
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !6262

if.then.7:                                        ; preds = %do.body
  br label %if.end.8, !dbg !6263

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6265, !tbaa !1048
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !6267
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !6267, !tbaa !1166
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !6268
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !6268, !tbaa !1168
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !6269, !tbaa !1048
  call void %15(%struct._object* %16), !dbg !6270
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !6271
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !6271
  br label %do.cond, !dbg !6273

do.cond:                                          ; preds = %if.end.8
  br label %do.end, !dbg !6274

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !6276
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6276

if.end.9:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !6277, !tbaa !1048
  %19 = bitcast %struct._object* %18 to %struct.PyFloatObject*, !dbg !6278
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %19, i32 0, i32 1, !dbg !6279
  %20 = load double, double* %ob_fval, align 8, !dbg !6279, !tbaa !1230
  %21 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !6280, !tbaa !1048
  %22 = bitcast %struct._object* %21 to %struct.PyFloatObject*, !dbg !6281
  %ob_fval10 = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %22, i32 0, i32 1, !dbg !6282
  store double %20, double* %ob_fval10, align 8, !dbg !6283, !tbaa !1230
  br label %do.body.11, !dbg !6284

do.body.11:                                       ; preds = %if.end.9
  %23 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !6285
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !6285
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp13, metadata !957, metadata !1038), !dbg !6287
  %24 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !6288, !tbaa !1048
  store %struct._object* %24, %struct._object** %_py_decref_tmp13, align 8, !dbg !6287, !tbaa !1048
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !6289, !tbaa !1048
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !6291
  %26 = load i64, i64* %ob_refcnt14, align 8, !dbg !6292, !tbaa !1156
  %dec15 = add i64 %26, -1, !dbg !6292
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !6292, !tbaa !1156
  %cmp16 = icmp ne i64 %dec15, 0, !dbg !6293
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !6294

if.then.17:                                       ; preds = %do.body.11
  br label %if.end.21, !dbg !6295

if.else.18:                                       ; preds = %do.body.11
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !6297, !tbaa !1048
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1, !dbg !6299
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !6299, !tbaa !1166
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4, !dbg !6300
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !6300, !tbaa !1168
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8, !dbg !6301, !tbaa !1048
  call void %29(%struct._object* %30), !dbg !6302
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  %31 = bitcast %struct._object** %_py_decref_tmp13 to i8*, !dbg !6303
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !6303
  br label %do.cond.22, !dbg !6305

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !6306

do.end.23:                                        ; preds = %do.cond.22
  %32 = load %struct._object*, %struct._object** %newobj, align 8, !dbg !6308, !tbaa !1048
  store %struct._object* %32, %struct._object** %retval, !dbg !6309
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !6309

cleanup:                                          ; preds = %do.end.23, %do.end, %if.then
  %33 = bitcast %struct._object** %newobj to i8*, !dbg !6310
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !6310
  %34 = bitcast %struct._object** %tmp to i8*, !dbg !6310
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !6310
  %35 = load %struct._object*, %struct._object** %retval, !dbg !6310
  ret %struct._object* %35, !dbg !6310
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare %struct._object* @PyNumber_Float(%struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1032, !1033}
!llvm.ident = !{!1034}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !16, subprograms: !397, globals: !959)
!1 = !DIFile(filename: "floatobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 1567, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Objects/floatobject.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "unknown_format", value: 0)
!7 = !DIEnumerator(name: "ieee_big_endian_format", value: 1)
!8 = !DIEnumerator(name: "ieee_little_endian_format", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !10, line: 451, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!13 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!14 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!15 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!16 = !{!17, !18, !56, !364, !372, !373, !359, !48, !374, !70, !371, !41, !39, !112, !62, !375, !377, !46, !379}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !20, line: 33, baseType: !21)
!20 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 25, size: 256, align: 64, elements: !22)
!22 = !{!23, !362}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !21, file: !20, line: 26, baseType: !24, size: 192, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !25, line: 114, baseType: !26)
!25 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 111, size: 192, align: 64, elements: !27)
!27 = !{!28, !361}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !26, file: !25, line: 112, baseType: !29, size: 128, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !25, line: 109, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !25, line: 105, size: 128, align: 64, elements: !31)
!31 = !{!32, !40}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !30, file: !25, line: 107, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !34, line: 177, baseType: !35)
!34 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !36, line: 102, baseType: !37)
!36 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !38, line: 181, baseType: !39)
!38 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!39 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !30, file: !25, line: 108, baseType: !41, size: 64, align: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !25, line: 334, size: 3200, align: 64, elements: !43)
!43 = !{!44, !45, !49, !50, !51, !57, !120, !125, !130, !131, !136, !188, !219, !231, !237, !238, !239, !241, !243, !274, !275, !276, !285, !286, !291, !292, !294, !296, !306, !309, !327, !328, !329, !331, !333, !334, !336, !341, !346, !351, !352, !353, !354, !355, !356, !357, !358, !360}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !42, file: !25, line: 335, baseType: !24, size: 192, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !42, file: !25, line: 336, baseType: !46, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !42, file: !25, line: 337, baseType: !33, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !42, file: !25, line: 337, baseType: !33, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !42, file: !25, line: 341, baseType: !52, size: 64, align: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !25, line: 308, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !42, file: !25, line: 342, baseType: !58, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !25, line: 314, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{!62, !56, !63, !62}
!62 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !36, line: 48, baseType: !65)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !66, line: 246, size: 1728, align: 64, elements: !67)
!66 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!67 = !{!68, !69, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !89, !90, !91, !92, !94, !96, !98, !102, !105, !107, !108, !109, !110, !111, !115, !116}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !65, file: !66, line: 247, baseType: !62, size: 32, align: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !65, file: !66, line: 252, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !65, file: !66, line: 253, baseType: !70, size: 64, align: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !65, file: !66, line: 254, baseType: !70, size: 64, align: 64, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !65, file: !66, line: 255, baseType: !70, size: 64, align: 64, offset: 256)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !65, file: !66, line: 256, baseType: !70, size: 64, align: 64, offset: 320)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !65, file: !66, line: 257, baseType: !70, size: 64, align: 64, offset: 384)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !65, file: !66, line: 258, baseType: !70, size: 64, align: 64, offset: 448)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !65, file: !66, line: 259, baseType: !70, size: 64, align: 64, offset: 512)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !65, file: !66, line: 261, baseType: !70, size: 64, align: 64, offset: 576)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !65, file: !66, line: 262, baseType: !70, size: 64, align: 64, offset: 640)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !65, file: !66, line: 263, baseType: !70, size: 64, align: 64, offset: 704)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !65, file: !66, line: 265, baseType: !82, size: 64, align: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !66, line: 161, size: 192, align: 64, elements: !84)
!84 = !{!85, !86, !88}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !83, file: !66, line: 162, baseType: !82, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !83, file: !66, line: 163, baseType: !87, size: 64, align: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !83, file: !66, line: 167, baseType: !62, size: 32, align: 32, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !65, file: !66, line: 267, baseType: !87, size: 64, align: 64, offset: 832)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !65, file: !66, line: 269, baseType: !62, size: 32, align: 32, offset: 896)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !65, file: !66, line: 273, baseType: !62, size: 32, align: 32, offset: 928)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !65, file: !66, line: 275, baseType: !93, size: 64, align: 64, offset: 960)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !38, line: 140, baseType: !39)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !65, file: !66, line: 279, baseType: !95, size: 16, align: 16, offset: 1024)
!95 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !65, file: !66, line: 280, baseType: !97, size: 8, align: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !65, file: !66, line: 281, baseType: !99, size: 8, align: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 8, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 285, baseType: !103, size: 64, align: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !66, line: 155, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !65, file: !66, line: 294, baseType: !106, size: 64, align: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !38, line: 141, baseType: !39)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !65, file: !66, line: 303, baseType: !17, size: 64, align: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !65, file: !66, line: 304, baseType: !17, size: 64, align: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !65, file: !66, line: 305, baseType: !17, size: 64, align: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !65, file: !66, line: 306, baseType: !17, size: 64, align: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !65, file: !66, line: 307, baseType: !112, size: 64, align: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 62, baseType: !114)
!113 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!114 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !65, file: !66, line: 309, baseType: !62, size: 32, align: 32, offset: 1536)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !65, file: !66, line: 311, baseType: !117, size: 160, align: 8, offset: 1568)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 160, align: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 20)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !42, file: !25, line: 343, baseType: !121, size: 64, align: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !25, line: 316, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!56, !56, !70}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !42, file: !25, line: 344, baseType: !126, size: 64, align: 64, offset: 576)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !25, line: 318, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!62, !56, !70, !56}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !42, file: !25, line: 345, baseType: !17, size: 64, align: 64, offset: 640)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !42, file: !25, line: 346, baseType: !132, size: 64, align: 64, offset: 704)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !25, line: 320, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!56, !56}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !42, file: !25, line: 350, baseType: !137, size: 64, align: 64, offset: 768)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !25, line: 278, baseType: !139)
!139 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 236, size: 2176, align: 64, elements: !140)
!140 = !{!141, !146, !147, !148, !149, !150, !155, !157, !158, !159, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !139, file: !25, line: 241, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !25, line: 166, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!56, !56, !56}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !139, file: !25, line: 242, baseType: !142, size: 64, align: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !139, file: !25, line: 243, baseType: !142, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !139, file: !25, line: 244, baseType: !142, size: 64, align: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !139, file: !25, line: 245, baseType: !142, size: 64, align: 64, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !139, file: !25, line: 246, baseType: !151, size: 64, align: 64, offset: 320)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !25, line: 167, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!56, !56, !56, !56}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !139, file: !25, line: 247, baseType: !156, size: 64, align: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !25, line: 165, baseType: !133)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !139, file: !25, line: 248, baseType: !156, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !139, file: !25, line: 249, baseType: !156, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !139, file: !25, line: 250, baseType: !160, size: 64, align: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !25, line: 168, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!62, !56}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !139, file: !25, line: 251, baseType: !156, size: 64, align: 64, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !139, file: !25, line: 252, baseType: !142, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !139, file: !25, line: 253, baseType: !142, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !139, file: !25, line: 254, baseType: !142, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !139, file: !25, line: 255, baseType: !142, size: 64, align: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !139, file: !25, line: 256, baseType: !142, size: 64, align: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !139, file: !25, line: 257, baseType: !156, size: 64, align: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !139, file: !25, line: 258, baseType: !17, size: 64, align: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !139, file: !25, line: 259, baseType: !156, size: 64, align: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !139, file: !25, line: 261, baseType: !142, size: 64, align: 64, offset: 1216)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !139, file: !25, line: 262, baseType: !142, size: 64, align: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !139, file: !25, line: 263, baseType: !142, size: 64, align: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !139, file: !25, line: 264, baseType: !142, size: 64, align: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !139, file: !25, line: 265, baseType: !151, size: 64, align: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !139, file: !25, line: 266, baseType: !142, size: 64, align: 64, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !139, file: !25, line: 267, baseType: !142, size: 64, align: 64, offset: 1600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !139, file: !25, line: 268, baseType: !142, size: 64, align: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !139, file: !25, line: 269, baseType: !142, size: 64, align: 64, offset: 1728)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !139, file: !25, line: 270, baseType: !142, size: 64, align: 64, offset: 1792)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !139, file: !25, line: 272, baseType: !142, size: 64, align: 64, offset: 1856)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !139, file: !25, line: 273, baseType: !142, size: 64, align: 64, offset: 1920)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !139, file: !25, line: 274, baseType: !142, size: 64, align: 64, offset: 1984)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !139, file: !25, line: 275, baseType: !142, size: 64, align: 64, offset: 2048)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !139, file: !25, line: 277, baseType: !156, size: 64, align: 64, offset: 2112)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !42, file: !25, line: 351, baseType: !189, size: 64, align: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !25, line: 292, baseType: !191)
!191 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 280, size: 640, align: 64, elements: !192)
!192 = !{!193, !198, !199, !204, !205, !206, !211, !212, !217, !218}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !191, file: !25, line: 281, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !25, line: 169, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!33, !56}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !191, file: !25, line: 282, baseType: !142, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !191, file: !25, line: 283, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !25, line: 170, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!56, !56, !33}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !191, file: !25, line: 284, baseType: !200, size: 64, align: 64, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !191, file: !25, line: 285, baseType: !17, size: 64, align: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !191, file: !25, line: 286, baseType: !207, size: 64, align: 64, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !25, line: 172, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!62, !56, !33, !56}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !191, file: !25, line: 287, baseType: !17, size: 64, align: 64, offset: 384)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !191, file: !25, line: 288, baseType: !213, size: 64, align: 64, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !25, line: 231, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!62, !56, !56}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !191, file: !25, line: 290, baseType: !142, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !191, file: !25, line: 291, baseType: !200, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !42, file: !25, line: 352, baseType: !220, size: 64, align: 64, offset: 896)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !25, line: 298, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 294, size: 192, align: 64, elements: !223)
!223 = !{!224, !225, !226}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !222, file: !25, line: 295, baseType: !194, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !222, file: !25, line: 296, baseType: !142, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !222, file: !25, line: 297, baseType: !227, size: 64, align: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !25, line: 174, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!62, !56, !56, !56}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !42, file: !25, line: 356, baseType: !232, size: 64, align: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !25, line: 321, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !56}
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !34, line: 186, baseType: !33)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !42, file: !25, line: 357, baseType: !151, size: 64, align: 64, offset: 1024)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !42, file: !25, line: 358, baseType: !132, size: 64, align: 64, offset: 1088)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !42, file: !25, line: 359, baseType: !240, size: 64, align: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !25, line: 317, baseType: !143)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !42, file: !25, line: 360, baseType: !242, size: 64, align: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !25, line: 319, baseType: !228)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !42, file: !25, line: 363, baseType: !244, size: 64, align: 64, offset: 1280)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !25, line: 304, baseType: !246)
!246 = !DICompositeType(tag: DW_TAG_structure_type, file: !25, line: 301, size: 128, align: 64, elements: !247)
!247 = !{!248, !269}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !246, file: !25, line: 302, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !25, line: 193, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!62, !56, !253, !62}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !25, line: 191, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !25, line: 178, size: 640, align: 64, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !266, !267, !268}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !255, file: !25, line: 179, baseType: !17, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !255, file: !25, line: 180, baseType: !56, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !255, file: !25, line: 181, baseType: !33, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !255, file: !25, line: 182, baseType: !33, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !255, file: !25, line: 184, baseType: !62, size: 32, align: 32, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !255, file: !25, line: 185, baseType: !62, size: 32, align: 32, offset: 288)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !255, file: !25, line: 186, baseType: !70, size: 64, align: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !255, file: !25, line: 187, baseType: !265, size: 64, align: 64, offset: 384)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !255, file: !25, line: 188, baseType: !265, size: 64, align: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !255, file: !25, line: 189, baseType: !265, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !255, file: !25, line: 190, baseType: !17, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !246, file: !25, line: 303, baseType: !270, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !25, line: 194, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !56, !253}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !42, file: !25, line: 366, baseType: !114, size: 64, align: 64, offset: 1344)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !42, file: !25, line: 368, baseType: !46, size: 64, align: 64, offset: 1408)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !42, file: !25, line: 372, baseType: !277, size: 64, align: 64, offset: 1472)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !25, line: 233, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!62, !56, !281, !17}
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !25, line: 232, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!62, !56, !17}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !42, file: !25, line: 375, baseType: !160, size: 64, align: 64, offset: 1536)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !42, file: !25, line: 379, baseType: !287, size: 64, align: 64, offset: 1600)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !25, line: 322, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!56, !56, !56, !62}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !42, file: !25, line: 382, baseType: !33, size: 64, align: 64, offset: 1664)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !42, file: !25, line: 385, baseType: !293, size: 64, align: 64, offset: 1728)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !25, line: 323, baseType: !133)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !42, file: !25, line: 386, baseType: !295, size: 64, align: 64, offset: 1792)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !25, line: 324, baseType: !133)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !42, file: !25, line: 389, baseType: !297, size: 64, align: 64, offset: 1856)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !299, line: 40, size: 256, align: 64, elements: !300)
!299 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!300 = !{!301, !302, !304, !305}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !298, file: !299, line: 41, baseType: !46, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !298, file: !299, line: 42, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !299, line: 18, baseType: !143)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !298, file: !299, line: 43, baseType: !62, size: 32, align: 32, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !298, file: !299, line: 45, baseType: !46, size: 64, align: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !42, file: !25, line: 390, baseType: !307, size: 64, align: 64, offset: 1920)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !25, line: 390, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !42, file: !25, line: 391, baseType: !310, size: 64, align: 64, offset: 1984)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !312, line: 11, size: 320, align: 64, elements: !313)
!312 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!313 = !{!314, !315, !320, !325, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 12, baseType: !70, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !311, file: !312, line: 13, baseType: !316, size: 64, align: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !312, line: 8, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!56, !56, !17}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !311, file: !312, line: 14, baseType: !321, size: 64, align: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !312, line: 9, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!62, !56, !56, !17}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !311, file: !312, line: 15, baseType: !70, size: 64, align: 64, offset: 192)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !311, file: !312, line: 16, baseType: !17, size: 64, align: 64, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !42, file: !25, line: 392, baseType: !41, size: 64, align: 64, offset: 2048)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !42, file: !25, line: 393, baseType: !56, size: 64, align: 64, offset: 2112)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !42, file: !25, line: 394, baseType: !330, size: 64, align: 64, offset: 2176)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !25, line: 325, baseType: !152)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !42, file: !25, line: 395, baseType: !332, size: 64, align: 64, offset: 2240)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !25, line: 326, baseType: !228)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !42, file: !25, line: 396, baseType: !33, size: 64, align: 64, offset: 2304)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !42, file: !25, line: 397, baseType: !335, size: 64, align: 64, offset: 2368)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !25, line: 327, baseType: !228)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !42, file: !25, line: 398, baseType: !337, size: 64, align: 64, offset: 2432)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !25, line: 329, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!56, !41, !33}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !42, file: !25, line: 399, baseType: !342, size: 64, align: 64, offset: 2496)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !25, line: 328, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!56, !41, !56, !56}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !42, file: !25, line: 400, baseType: !347, size: 64, align: 64, offset: 2560)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !25, line: 307, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !17}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !42, file: !25, line: 401, baseType: !160, size: 64, align: 64, offset: 2624)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !42, file: !25, line: 402, baseType: !56, size: 64, align: 64, offset: 2688)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !42, file: !25, line: 403, baseType: !56, size: 64, align: 64, offset: 2752)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !42, file: !25, line: 404, baseType: !56, size: 64, align: 64, offset: 2816)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !42, file: !25, line: 405, baseType: !56, size: 64, align: 64, offset: 2880)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !42, file: !25, line: 406, baseType: !56, size: 64, align: 64, offset: 2944)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !42, file: !25, line: 407, baseType: !52, size: 64, align: 64, offset: 3008)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !42, file: !25, line: 410, baseType: !359, size: 32, align: 32, offset: 3072)
!359 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !42, file: !25, line: 412, baseType: !52, size: 64, align: 64, offset: 3136)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !26, file: !25, line: 113, baseType: !33, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !21, file: !20, line: 27, baseType: !363, size: 64, align: 64, offset: 192)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, align: 64, elements: !100)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFloatObject", file: !366, line: 18, baseType: !367)
!366 = !DIFile(filename: "Include/floatobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 15, size: 192, align: 64, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !367, file: !366, line: 16, baseType: !29, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ob_fval", scope: !367, file: !366, line: 17, baseType: !371, size: 64, align: 64, offset: 128)
!371 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!372 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!374 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !10, line: 351, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 217, size: 384, align: 64, elements: !382)
!382 = !{!383, !384, !385, !386, !394}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !381, file: !10, line: 291, baseType: !29, size: 128, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !381, file: !10, line: 292, baseType: !33, size: 64, align: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !381, file: !10, line: 293, baseType: !236, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !381, file: !10, line: 349, baseType: !387, size: 32, align: 32, offset: 256)
!387 = !DICompositeType(tag: DW_TAG_structure_type, scope: !381, file: !10, line: 294, size: 32, align: 32, elements: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !387, file: !10, line: 303, baseType: !359, size: 2, align: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !387, file: !10, line: 331, baseType: !359, size: 3, align: 32, offset: 2)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !387, file: !10, line: 336, baseType: !359, size: 1, align: 32, offset: 5)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !387, file: !10, line: 340, baseType: !359, size: 1, align: 32, offset: 6)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !387, file: !10, line: 345, baseType: !359, size: 1, align: 32, offset: 7)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !381, file: !10, line: 350, baseType: !395, size: 64, align: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 90, baseType: !62)
!397 = !{!398, !402, !403, !417, !423, !444, !454, !462, !467, !470, !475, !495, !512, !535, !557, !562, !569, !575, !584, !590, !596, !603, !612, !627, !630, !633, !636, !641, !650, !658, !664, !669, !716, !724, !745, !783, !810, !816, !830, !835, !840, !843, !868, !913, !934, !938, !946}
!398 = !DISubprogram(name: "PyFloat_GetMax", scope: !4, file: !4, line: 25, type: !399, isLocal: false, isDefinition: true, scopeLine: 26, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @PyFloat_GetMax, variables: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!371}
!401 = !{}
!402 = !DISubprogram(name: "PyFloat_GetMin", scope: !4, file: !4, line: 31, type: !399, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: double ()* @PyFloat_GetMin, variables: !401)
!403 = !DISubprogram(name: "PyFloat_GetInfo", scope: !4, file: !4, line: 73, type: !404, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyFloat_GetInfo, variables: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{!56}
!406 = !{!407, !408, !409, !413}
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "floatinfo", scope: !403, file: !4, line: 75, type: !56)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !403, file: !4, line: 76, type: !62)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !410, file: !4, line: 103, type: !56)
!410 = distinct !DILexicalBlock(scope: !411, file: !4, line: 103, column: 12)
!411 = distinct !DILexicalBlock(scope: !412, file: !4, line: 102, column: 27)
!412 = distinct !DILexicalBlock(scope: !403, file: !4, line: 102, column: 9)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !414, file: !4, line: 103, type: !56)
!414 = distinct !DILexicalBlock(scope: !415, file: !4, line: 103, column: 117)
!415 = distinct !DILexicalBlock(scope: !416, file: !4, line: 103, column: 86)
!416 = distinct !DILexicalBlock(scope: !410, file: !4, line: 103, column: 63)
!417 = !DISubprogram(name: "PyFloat_FromDouble", scope: !4, file: !4, line: 110, type: !418, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double)* @PyFloat_FromDouble, variables: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!56, !371}
!420 = !{!421, !422}
!421 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fval", arg: 1, scope: !417, file: !4, line: 110, type: !371)
!422 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "op", scope: !417, file: !4, line: 112, type: !364)
!423 = !DISubprogram(name: "PyFloat_FromString", scope: !4, file: !4, line: 128, type: !134, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyFloat_FromString, variables: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !439, !441}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !423, file: !4, line: 128, type: !56)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !423, file: !4, line: 130, type: !46)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last", scope: !423, file: !4, line: 130, type: !46)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !423, file: !4, line: 130, type: !46)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !423, file: !4, line: 131, type: !371)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_buffer", scope: !423, file: !4, line: 132, type: !56)
!431 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !423, file: !4, line: 133, type: !33)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !423, file: !4, line: 134, type: !56)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !434, file: !4, line: 142, type: !56)
!434 = distinct !DILexicalBlock(scope: !435, file: !4, line: 142, column: 16)
!435 = distinct !DILexicalBlock(scope: !436, file: !4, line: 141, column: 30)
!436 = distinct !DILexicalBlock(scope: !437, file: !4, line: 141, column: 13)
!437 = distinct !DILexicalBlock(scope: !438, file: !4, line: 136, column: 75)
!438 = distinct !DILexicalBlock(scope: !423, file: !4, line: 136, column: 9)
!439 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !440, file: !4, line: 173, type: !56)
!440 = distinct !DILexicalBlock(scope: !423, file: !4, line: 173, column: 8)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !4, line: 173, type: !56)
!442 = distinct !DILexicalBlock(scope: !443, file: !4, line: 173, column: 100)
!443 = distinct !DILexicalBlock(scope: !440, file: !4, line: 173, column: 66)
!444 = !DISubprogram(name: "PyFloat_AsDouble", scope: !4, file: !4, line: 194, type: !445, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: double (%struct._object*)* @PyFloat_AsDouble, variables: !447)
!445 = !DISubroutineType(types: !446)
!446 = !{!371, !56}
!447 = !{!448, !449, !450, !451, !452}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !444, file: !4, line: 194, type: !56)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nb", scope: !444, file: !4, line: 196, type: !137)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fo", scope: !444, file: !4, line: 197, type: !364)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !444, file: !4, line: 198, type: !371)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !453, file: !4, line: 223, type: !56)
!453 = distinct !DILexicalBlock(scope: !444, file: !4, line: 223, column: 8)
!454 = !DISubprogram(name: "_PyFloat_Init", scope: !4, file: !4, line: 1858, type: !455, isLocal: false, isDefinition: true, scopeLine: 1859, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyFloat_Init, variables: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!62}
!457 = !{!458, !460}
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !459, file: !4, line: 1877, type: !371)
!459 = distinct !DILexicalBlock(scope: !454, file: !4, line: 1876, column: 5)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !461, file: !4, line: 1891, type: !374)
!461 = distinct !DILexicalBlock(scope: !454, file: !4, line: 1890, column: 5)
!462 = !DISubprogram(name: "PyFloat_ClearFreeList", scope: !4, file: !4, line: 1915, type: !455, isLocal: false, isDefinition: true, scopeLine: 1916, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @PyFloat_ClearFreeList, variables: !463)
!463 = !{!464, !465, !466}
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !462, file: !4, line: 1917, type: !364)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !462, file: !4, line: 1917, type: !364)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !462, file: !4, line: 1918, type: !62)
!467 = !DISubprogram(name: "PyFloat_Fini", scope: !4, file: !4, line: 1930, type: !468, isLocal: false, isDefinition: true, scopeLine: 1931, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyFloat_Fini, variables: !401)
!468 = !DISubroutineType(types: !469)
!469 = !{null}
!470 = !DISubprogram(name: "_PyFloat_DebugMallocStats", scope: !4, file: !4, line: 1937, type: !471, isLocal: false, isDefinition: true, scopeLine: 1938, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*)* @_PyFloat_DebugMallocStats, variables: !473)
!471 = !DISubroutineType(types: !472)
!472 = !{null, !63}
!473 = !{!474}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !470, file: !4, line: 1937, type: !63)
!475 = !DISubprogram(name: "_PyFloat_Pack4", scope: !4, file: !4, line: 1949, type: !476, isLocal: false, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i8*, i32)* @_PyFloat_Pack4, variables: !479)
!476 = !DISubroutineType(types: !477)
!477 = !{!62, !371, !478, !62}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!479 = !{!480, !481, !482, !483, !486, !487, !488, !489, !490, !492, !493, !494}
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !475, file: !4, line: 1949, type: !371)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !475, file: !4, line: 1949, type: !478)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 3, scope: !475, file: !4, line: 1949, type: !62)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !484, file: !4, line: 1952, type: !372)
!484 = distinct !DILexicalBlock(scope: !485, file: !4, line: 1951, column: 41)
!485 = distinct !DILexicalBlock(scope: !475, file: !4, line: 1951, column: 9)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !484, file: !4, line: 1953, type: !62)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !484, file: !4, line: 1954, type: !371)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fbits", scope: !484, file: !4, line: 1955, type: !359)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !484, file: !4, line: 1956, type: !62)
!490 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !491, file: !4, line: 2028, type: !374)
!491 = distinct !DILexicalBlock(scope: !485, file: !4, line: 2027, column: 10)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !491, file: !4, line: 2029, type: !46)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !491, file: !4, line: 2030, type: !62)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !491, file: !4, line: 2030, type: !62)
!495 = !DISubprogram(name: "_PyFloat_Pack8", scope: !4, file: !4, line: 2054, type: !476, isLocal: false, isDefinition: true, scopeLine: 2055, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double, i8*, i32)* @_PyFloat_Pack8, variables: !496)
!496 = !{!497, !498, !499, !500, !503, !504, !505, !506, !507, !508, !510, !511}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !495, file: !4, line: 2054, type: !371)
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 2, scope: !495, file: !4, line: 2054, type: !478)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 3, scope: !495, file: !4, line: 2054, type: !62)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !501, file: !4, line: 2057, type: !372)
!501 = distinct !DILexicalBlock(scope: !502, file: !4, line: 2056, column: 42)
!502 = distinct !DILexicalBlock(scope: !495, file: !4, line: 2056, column: 9)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !501, file: !4, line: 2058, type: !62)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !501, file: !4, line: 2059, type: !371)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fhi", scope: !501, file: !4, line: 2060, type: !359)
!506 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flo", scope: !501, file: !4, line: 2060, type: !359)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !501, file: !4, line: 2061, type: !62)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !509, file: !4, line: 2165, type: !46)
!509 = distinct !DILexicalBlock(scope: !502, file: !4, line: 2164, column: 10)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !509, file: !4, line: 2166, type: !62)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !509, file: !4, line: 2166, type: !62)
!512 = !DISubprogram(name: "_PyFloat_Unpack4", scope: !4, file: !4, line: 2183, type: !513, isLocal: false, isDefinition: true, scopeLine: 2184, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i32)* @_PyFloat_Unpack4, variables: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!371, !377, !62}
!515 = !{!516, !517, !518, !521, !522, !523, !524, !525, !527, !533, !534}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !512, file: !4, line: 2183, type: !377)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !512, file: !4, line: 2183, type: !62)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !519, file: !4, line: 2186, type: !372)
!519 = distinct !DILexicalBlock(scope: !520, file: !4, line: 2185, column: 41)
!520 = distinct !DILexicalBlock(scope: !512, file: !4, line: 2185, column: 9)
!521 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !519, file: !4, line: 2187, type: !62)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !519, file: !4, line: 2188, type: !359)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !519, file: !4, line: 2189, type: !371)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !519, file: !4, line: 2190, type: !62)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !526, file: !4, line: 2239, type: !374)
!526 = distinct !DILexicalBlock(scope: !520, file: !4, line: 2238, column: 10)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !528, file: !4, line: 2243, type: !530)
!528 = distinct !DILexicalBlock(scope: !529, file: !4, line: 2242, column: 64)
!529 = distinct !DILexicalBlock(scope: !526, file: !4, line: 2241, column: 13)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 32, align: 8, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 4)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !528, file: !4, line: 2244, type: !70)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !528, file: !4, line: 2245, type: !62)
!535 = !DISubprogram(name: "_PyFloat_Unpack8", scope: !4, file: !4, line: 2261, type: !513, isLocal: false, isDefinition: true, scopeLine: 2262, flags: DIFlagPrototyped, isOptimized: true, function: double (i8*, i32)* @_PyFloat_Unpack8, variables: !536)
!536 = !{!537, !538, !539, !542, !543, !544, !545, !546, !547, !549, !555, !556}
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !535, file: !4, line: 2261, type: !377)
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "le", arg: 2, scope: !535, file: !4, line: 2261, type: !62)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !540, file: !4, line: 2264, type: !372)
!540 = distinct !DILexicalBlock(scope: !541, file: !4, line: 2263, column: 42)
!541 = distinct !DILexicalBlock(scope: !535, file: !4, line: 2263, column: 9)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !540, file: !4, line: 2265, type: !62)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fhi", scope: !540, file: !4, line: 2266, type: !359)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flo", scope: !540, file: !4, line: 2266, type: !359)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !540, file: !4, line: 2267, type: !371)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "incr", scope: !540, file: !4, line: 2268, type: !62)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !548, file: !4, line: 2334, type: !371)
!548 = distinct !DILexicalBlock(scope: !541, file: !4, line: 2333, column: 10)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !550, file: !4, line: 2338, type: !552)
!550 = distinct !DILexicalBlock(scope: !551, file: !4, line: 2337, column: 65)
!551 = distinct !DILexicalBlock(scope: !548, file: !4, line: 2336, column: 13)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 64, align: 8, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 8)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !550, file: !4, line: 2339, type: !70)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !550, file: !4, line: 2340, type: !62)
!557 = !DISubprogram(name: "float_dealloc", scope: !4, file: !4, line: 178, type: !558, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyFloatObject*)* @float_dealloc, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !364}
!560 = !{!561}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 1, scope: !557, file: !4, line: 178, type: !364)
!562 = !DISubprogram(name: "float_repr", scope: !4, file: !4, line: 263, type: !563, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_repr, variables: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!56, !364}
!565 = !{!566, !567, !568}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !562, file: !4, line: 263, type: !364)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !562, file: !4, line: 265, type: !56)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !562, file: !4, line: 266, type: !70)
!569 = !DISubprogram(name: "float_add", scope: !4, file: !4, line: 488, type: !144, isLocal: true, isDefinition: true, scopeLine: 489, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_add, variables: !570)
!570 = !{!571, !572, !573, !574}
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !569, file: !4, line: 488, type: !56)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !569, file: !4, line: 488, type: !56)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !569, file: !4, line: 490, type: !371)
!574 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !569, file: !4, line: 490, type: !371)
!575 = !DISubprogram(name: "convert_to_double", scope: !4, file: !4, line: 243, type: !576, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object**, double*)* @convert_to_double, variables: !580)
!576 = !DISubroutineType(types: !577)
!577 = !{!62, !578, !579}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !575, file: !4, line: 243, type: !578)
!582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dbl", arg: 2, scope: !575, file: !4, line: 243, type: !579)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !575, file: !4, line: 245, type: !56)
!584 = !DISubprogram(name: "float_sub", scope: !4, file: !4, line: 500, type: !144, isLocal: true, isDefinition: true, scopeLine: 501, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_sub, variables: !585)
!585 = !{!586, !587, !588, !589}
!586 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !584, file: !4, line: 500, type: !56)
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !584, file: !4, line: 500, type: !56)
!588 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !584, file: !4, line: 502, type: !371)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !584, file: !4, line: 502, type: !371)
!590 = !DISubprogram(name: "float_mul", scope: !4, file: !4, line: 512, type: !144, isLocal: true, isDefinition: true, scopeLine: 513, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_mul, variables: !591)
!591 = !{!592, !593, !594, !595}
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !590, file: !4, line: 512, type: !56)
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !590, file: !4, line: 512, type: !56)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !590, file: !4, line: 514, type: !371)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !590, file: !4, line: 514, type: !371)
!596 = !DISubprogram(name: "float_rem", scope: !4, file: !4, line: 541, type: !144, isLocal: true, isDefinition: true, scopeLine: 542, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_rem, variables: !597)
!597 = !{!598, !599, !600, !601, !602}
!598 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !596, file: !4, line: 541, type: !56)
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !596, file: !4, line: 541, type: !56)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vx", scope: !596, file: !4, line: 543, type: !371)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wx", scope: !596, file: !4, line: 543, type: !371)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !596, file: !4, line: 544, type: !371)
!603 = !DISubprogram(name: "float_divmod", scope: !4, file: !4, line: 571, type: !144, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_divmod, variables: !604)
!604 = !{!605, !606, !607, !608, !609, !610, !611}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !603, file: !4, line: 571, type: !56)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !603, file: !4, line: 571, type: !56)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vx", scope: !603, file: !4, line: 573, type: !371)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wx", scope: !603, file: !4, line: 573, type: !371)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "div", scope: !603, file: !4, line: 574, type: !371)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !603, file: !4, line: 574, type: !371)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "floordiv", scope: !603, file: !4, line: 574, type: !371)
!612 = !DISubprogram(name: "float_pow", scope: !4, file: !4, line: 637, type: !153, isLocal: true, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @float_pow, variables: !613)
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !624}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !612, file: !4, line: 637, type: !56)
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !612, file: !4, line: 637, type: !56)
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "z", arg: 3, scope: !612, file: !4, line: 637, type: !56)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iv", scope: !612, file: !4, line: 639, type: !371)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw", scope: !612, file: !4, line: 639, type: !371)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !612, file: !4, line: 639, type: !371)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate_result", scope: !612, file: !4, line: 640, type: !62)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw_is_odd", scope: !622, file: !4, line: 681, type: !62)
!622 = distinct !DILexicalBlock(scope: !623, file: !4, line: 676, column: 122)
!623 = distinct !DILexicalBlock(scope: !612, file: !4, line: 676, column: 9)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iw_is_odd", scope: !625, file: !4, line: 691, type: !62)
!625 = distinct !DILexicalBlock(scope: !626, file: !4, line: 688, column: 20)
!626 = distinct !DILexicalBlock(scope: !612, file: !4, line: 688, column: 9)
!627 = !DISubprogram(name: "float_neg", scope: !4, file: !4, line: 761, type: !563, isLocal: true, isDefinition: true, scopeLine: 762, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_neg, variables: !628)
!628 = !{!629}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !627, file: !4, line: 761, type: !364)
!630 = !DISubprogram(name: "float_float", scope: !4, file: !4, line: 1019, type: !134, isLocal: true, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_float, variables: !631)
!631 = !{!632}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !630, file: !4, line: 1019, type: !56)
!633 = !DISubprogram(name: "float_abs", scope: !4, file: !4, line: 767, type: !563, isLocal: true, isDefinition: true, scopeLine: 768, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_abs, variables: !634)
!634 = !{!635}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !633, file: !4, line: 767, type: !364)
!636 = !DISubprogram(name: "float_bool", scope: !4, file: !4, line: 773, type: !637, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyFloatObject*)* @float_bool, variables: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!62, !364}
!639 = !{!640}
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !636, file: !4, line: 773, type: !364)
!641 = !DISubprogram(name: "float_trunc", scope: !4, file: !4, line: 831, type: !134, isLocal: true, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_trunc, variables: !642)
!642 = !{!643, !644, !645, !646}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !641, file: !4, line: 831, type: !56)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !641, file: !4, line: 833, type: !371)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wholepart", scope: !641, file: !4, line: 834, type: !371)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aslong", scope: !647, file: !4, line: 850, type: !649)
!647 = distinct !DILexicalBlock(scope: !648, file: !4, line: 849, column: 86)
!648 = distinct !DILexicalBlock(scope: !641, file: !4, line: 849, column: 9)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!650 = !DISubprogram(name: "float_floor_div", scope: !4, file: !4, line: 618, type: !144, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_floor_div, variables: !651)
!651 = !{!652, !653, !654, !655, !656}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !650, file: !4, line: 618, type: !56)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !650, file: !4, line: 618, type: !56)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !650, file: !4, line: 620, type: !56)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !650, file: !4, line: 620, type: !56)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !657, file: !4, line: 628, type: !56)
!657 = distinct !DILexicalBlock(scope: !650, file: !4, line: 628, column: 8)
!658 = !DISubprogram(name: "float_div", scope: !4, file: !4, line: 524, type: !144, isLocal: true, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_div, variables: !659)
!659 = !{!660, !661, !662, !663}
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !658, file: !4, line: 524, type: !56)
!661 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !658, file: !4, line: 524, type: !56)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !658, file: !4, line: 526, type: !371)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !658, file: !4, line: 526, type: !371)
!664 = !DISubprogram(name: "float_hash", scope: !4, file: !4, line: 482, type: !665, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct.PyFloatObject*)* @float_hash, variables: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!236, !364}
!667 = !{!668}
!668 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !664, file: !4, line: 482, type: !364)
!669 = !DISubprogram(name: "float_richcompare", scope: !4, file: !4, line: 295, type: !289, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i32)* @float_richcompare, variables: !670)
!670 = !{!671, !672, !673, !674, !675, !676, !677, !682, !683, !684, !685, !687, !688, !689, !690, !691, !692, !695, !697, !699, !701, !703, !706, !708, !711, !713}
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !669, file: !4, line: 295, type: !56)
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w", arg: 2, scope: !669, file: !4, line: 295, type: !56)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "op", arg: 3, scope: !669, file: !4, line: 295, type: !62)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !669, file: !4, line: 297, type: !371)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !669, file: !4, line: 297, type: !371)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !669, file: !4, line: 298, type: !62)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vsign", scope: !678, file: !4, line: 321, type: !62)
!678 = distinct !DILexicalBlock(scope: !679, file: !4, line: 320, column: 80)
!679 = distinct !DILexicalBlock(scope: !680, file: !4, line: 320, column: 14)
!680 = distinct !DILexicalBlock(scope: !681, file: !4, line: 309, column: 14)
!681 = distinct !DILexicalBlock(scope: !669, file: !4, line: 306, column: 9)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wsign", scope: !678, file: !4, line: 322, type: !62)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbits", scope: !678, file: !4, line: 323, type: !112)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !678, file: !4, line: 324, type: !62)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fracpart", scope: !686, file: !4, line: 388, type: !371)
!686 = distinct !DILexicalBlock(scope: !678, file: !4, line: 387, column: 9)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "intpart", scope: !686, file: !4, line: 389, type: !371)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !686, file: !4, line: 390, type: !56)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "one", scope: !686, file: !4, line: 391, type: !56)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vv", scope: !686, file: !4, line: 392, type: !56)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ww", scope: !686, file: !4, line: 393, type: !56)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !693, file: !4, line: 412, type: !56)
!693 = distinct !DILexicalBlock(scope: !694, file: !4, line: 408, column: 34)
!694 = distinct !DILexicalBlock(scope: !686, file: !4, line: 408, column: 17)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !696, file: !4, line: 421, type: !56)
!696 = distinct !DILexicalBlock(scope: !693, file: !4, line: 421, column: 20)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !698, file: !4, line: 427, type: !56)
!698 = distinct !DILexicalBlock(scope: !693, file: !4, line: 427, column: 20)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !700, file: !4, line: 433, type: !56)
!700 = distinct !DILexicalBlock(scope: !693, file: !4, line: 433, column: 20)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !702, file: !4, line: 442, type: !56)
!702 = distinct !DILexicalBlock(scope: !686, file: !4, line: 442, column: 16)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !4, line: 442, type: !56)
!704 = distinct !DILexicalBlock(scope: !705, file: !4, line: 442, column: 102)
!705 = distinct !DILexicalBlock(scope: !702, file: !4, line: 442, column: 68)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !707, file: !4, line: 443, type: !56)
!707 = distinct !DILexicalBlock(scope: !686, file: !4, line: 443, column: 16)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !709, file: !4, line: 443, type: !56)
!709 = distinct !DILexicalBlock(scope: !710, file: !4, line: 443, column: 102)
!710 = distinct !DILexicalBlock(scope: !707, file: !4, line: 443, column: 68)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !712, file: !4, line: 444, type: !56)
!712 = distinct !DILexicalBlock(scope: !686, file: !4, line: 444, column: 16)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !714, file: !4, line: 444, type: !56)
!714 = distinct !DILexicalBlock(scope: !715, file: !4, line: 444, column: 103)
!715 = distinct !DILexicalBlock(scope: !712, file: !4, line: 444, column: 69)
!716 = !DISubprogram(name: "float_round", scope: !4, file: !4, line: 973, type: !144, isLocal: true, isDefinition: true, scopeLine: 974, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_round, variables: !717)
!717 = !{!718, !719, !720, !721, !722, !723}
!718 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !716, file: !4, line: 973, type: !56)
!719 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !716, file: !4, line: 973, type: !56)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !716, file: !4, line: 975, type: !371)
!721 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rounded", scope: !716, file: !4, line: 975, type: !371)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o_ndigits", scope: !716, file: !4, line: 976, type: !56)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndigits", scope: !716, file: !4, line: 977, type: !33)
!724 = !DISubprogram(name: "double_round", scope: !4, file: !4, line: 866, type: !725, isLocal: true, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (double, i32)* @double_round, variables: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!56, !371, !62}
!727 = !{!728, !729, !730, !731, !732, !733, !734, !735, !739, !740, !741, !742, !743, !744}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !724, file: !4, line: 866, type: !371)
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ndigits", arg: 2, scope: !724, file: !4, line: 866, type: !62)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rounded", scope: !724, file: !4, line: 868, type: !371)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buflen", scope: !724, file: !4, line: 869, type: !33)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mybuflen", scope: !724, file: !4, line: 869, type: !33)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !724, file: !4, line: 870, type: !70)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf_end", scope: !724, file: !4, line: 870, type: !70)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shortbuf", scope: !724, file: !4, line: 870, type: !736)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 800, align: 8, elements: !737)
!737 = !{!738}
!738 = !DISubrange(count: 100)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mybuf", scope: !724, file: !4, line: 870, type: !70)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decpt", scope: !724, file: !4, line: 871, type: !62)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !724, file: !4, line: 871, type: !62)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !724, file: !4, line: 872, type: !56)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_387controlword", scope: !724, file: !4, line: 873, type: !95)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_387controlword", scope: !724, file: !4, line: 873, type: !95)
!745 = !DISubprogram(name: "float_as_integer_ratio", scope: !4, file: !4, line: 1424, type: !144, isLocal: true, isDefinition: true, scopeLine: 1425, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_as_integer_ratio, variables: !746)
!746 = !{!747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !761, !765, !768, !770, !773, !775, !778, !780}
!747 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !745, file: !4, line: 1424, type: !56)
!748 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unused", arg: 2, scope: !745, file: !4, line: 1424, type: !56)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !745, file: !4, line: 1426, type: !371)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "float_part", scope: !745, file: !4, line: 1427, type: !371)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exponent", scope: !745, file: !4, line: 1428, type: !62)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !745, file: !4, line: 1429, type: !62)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev", scope: !745, file: !4, line: 1431, type: !56)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "py_exponent", scope: !745, file: !4, line: 1432, type: !56)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "numerator", scope: !745, file: !4, line: 1433, type: !56)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "denominator", scope: !745, file: !4, line: 1434, type: !56)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_pair", scope: !745, file: !4, line: 1435, type: !56)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "long_methods", scope: !745, file: !4, line: 1436, type: !137)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !760, file: !4, line: 1475, type: !56)
!760 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1475, column: 93)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !762, file: !4, line: 1479, type: !56)
!762 = distinct !DILexicalBlock(scope: !763, file: !4, line: 1479, column: 93)
!763 = distinct !DILexicalBlock(scope: !764, file: !4, line: 1478, column: 23)
!764 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1478, column: 9)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !4, line: 1484, type: !56)
!766 = distinct !DILexicalBlock(scope: !767, file: !4, line: 1484, column: 12)
!767 = distinct !DILexicalBlock(scope: !764, file: !4, line: 1483, column: 10)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !769, file: !4, line: 1493, type: !56)
!769 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1493, column: 8)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !771, file: !4, line: 1493, type: !56)
!771 = distinct !DILexicalBlock(scope: !772, file: !4, line: 1493, column: 103)
!772 = distinct !DILexicalBlock(scope: !769, file: !4, line: 1493, column: 69)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !774, file: !4, line: 1494, type: !56)
!774 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1494, column: 8)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !776, file: !4, line: 1494, type: !56)
!776 = distinct !DILexicalBlock(scope: !777, file: !4, line: 1494, column: 103)
!777 = distinct !DILexicalBlock(scope: !774, file: !4, line: 1494, column: 69)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !779, file: !4, line: 1495, type: !56)
!779 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1495, column: 8)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !781, file: !4, line: 1495, type: !56)
!781 = distinct !DILexicalBlock(scope: !782, file: !4, line: 1495, column: 101)
!782 = distinct !DILexicalBlock(scope: !779, file: !4, line: 1495, column: 67)
!783 = !DISubprogram(name: "float_fromhex", scope: !4, file: !4, line: 1173, type: !144, isLocal: true, isDefinition: true, scopeLine: 1174, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float_fromhex, variables: !784)
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808}
!785 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cls", arg: 1, scope: !783, file: !4, line: 1173, type: !56)
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !783, file: !4, line: 1173, type: !56)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_as_float", scope: !783, file: !4, line: 1175, type: !56)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !783, file: !4, line: 1175, type: !56)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !783, file: !4, line: 1176, type: !371)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp", scope: !783, file: !4, line: 1177, type: !39)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top_exp", scope: !783, file: !4, line: 1177, type: !39)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lsb", scope: !783, file: !4, line: 1177, type: !39)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key_digit", scope: !783, file: !4, line: 1177, type: !39)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !783, file: !4, line: 1178, type: !70)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coeff_start", scope: !783, file: !4, line: 1178, type: !70)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_store", scope: !783, file: !4, line: 1178, type: !70)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "coeff_end", scope: !783, file: !4, line: 1178, type: !70)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exp_start", scope: !783, file: !4, line: 1178, type: !70)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s_end", scope: !783, file: !4, line: 1178, type: !70)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "half_eps", scope: !783, file: !4, line: 1179, type: !62)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "digit", scope: !783, file: !4, line: 1179, type: !62)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "round_up", scope: !783, file: !4, line: 1179, type: !62)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "negate", scope: !783, file: !4, line: 1179, type: !62)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !783, file: !4, line: 1180, type: !33)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ndigits", scope: !783, file: !4, line: 1180, type: !33)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fdigits", scope: !783, file: !4, line: 1180, type: !33)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !783, file: !4, line: 1180, type: !33)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !809, file: !4, line: 1394, type: !56)
!809 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1394, column: 8)
!810 = !DISubprogram(name: "hex_from_char", scope: !4, file: !4, line: 1038, type: !811, isLocal: true, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8)* @hex_from_char, variables: !813)
!811 = !DISubroutineType(types: !812)
!812 = !{!62, !48}
!813 = !{!814, !815}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 1, scope: !810, file: !4, line: 1038, type: !48)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !810, file: !4, line: 1039, type: !62)
!816 = !DISubprogram(name: "float_hex", scope: !4, file: !4, line: 1109, type: !134, isLocal: true, isDefinition: true, scopeLine: 1110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_hex, variables: !817)
!817 = !{!818, !819, !820, !821, !822, !823, !824, !825, !826}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !816, file: !4, line: 1109, type: !56)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !816, file: !4, line: 1111, type: !371)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !816, file: !4, line: 1111, type: !371)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !816, file: !4, line: 1112, type: !62)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "shift", scope: !816, file: !4, line: 1112, type: !62)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !816, file: !4, line: 1112, type: !62)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "si", scope: !816, file: !4, line: 1112, type: !62)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "esign", scope: !816, file: !4, line: 1112, type: !62)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !816, file: !4, line: 1115, type: !827)
!827 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 128, align: 8, elements: !828)
!828 = !{!829}
!829 = !DISubrange(count: 16)
!830 = !DISubprogram(name: "char_from_hex", scope: !4, file: !4, line: 1031, type: !831, isLocal: true, isDefinition: true, scopeLine: 1032, flags: DIFlagPrototyped, isOptimized: true, function: i8 (i32)* @char_from_hex, variables: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!48, !62}
!833 = !{!834}
!834 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !830, file: !4, line: 1031, type: !62)
!835 = !DISubprogram(name: "float_is_integer", scope: !4, file: !4, line: 779, type: !134, isLocal: true, isDefinition: true, scopeLine: 780, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @float_is_integer, variables: !836)
!836 = !{!837, !838, !839}
!837 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !835, file: !4, line: 779, type: !56)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !835, file: !4, line: 781, type: !371)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !835, file: !4, line: 782, type: !56)
!840 = !DISubprogram(name: "float_getnewargs", scope: !4, file: !4, line: 1560, type: !563, isLocal: true, isDefinition: true, scopeLine: 1561, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyFloatObject*)* @float_getnewargs, variables: !841)
!841 = !{!842}
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !840, file: !4, line: 1560, type: !364)
!843 = !DISubprogram(name: "float_getformat", scope: !4, file: !4, line: 1575, type: !844, isLocal: true, isDefinition: true, scopeLine: 1576, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @float_getformat, variables: !848)
!844 = !DISubroutineType(types: !845)
!845 = !{!56, !846, !56}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !25, line: 422, baseType: !42)
!848 = !{!849, !850, !851, !852, !854, !857, !858, !860, !861, !864, !865, !867}
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !843, file: !4, line: 1575, type: !846)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 2, scope: !843, file: !4, line: 1575, type: !56)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !843, file: !4, line: 1577, type: !70)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !843, file: !4, line: 1578, type: !853)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_format_type", file: !4, line: 1569, baseType: !3)
!854 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !855, file: !4, line: 1589, type: !112)
!855 = distinct !DILexicalBlock(scope: !856, file: !4, line: 1589, column: 24)
!856 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1589, column: 9)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !855, file: !4, line: 1589, type: !112)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !859, file: !4, line: 1589, type: !377)
!859 = distinct !DILexicalBlock(scope: !855, file: !4, line: 1589, column: 1531)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !859, file: !4, line: 1589, type: !62)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !862, file: !4, line: 1592, type: !112)
!862 = distinct !DILexicalBlock(scope: !863, file: !4, line: 1592, column: 29)
!863 = distinct !DILexicalBlock(scope: !856, file: !4, line: 1592, column: 14)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !862, file: !4, line: 1592, type: !112)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !866, file: !4, line: 1592, type: !377)
!866 = distinct !DILexicalBlock(scope: !862, file: !4, line: 1592, column: 1521)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !866, file: !4, line: 1592, type: !62)
!868 = !DISubprogram(name: "float_setformat", scope: !4, file: !4, line: 1626, type: !844, isLocal: true, isDefinition: true, scopeLine: 1627, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @float_setformat, variables: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !878, !881, !882, !884, !885, !888, !889, !891, !892, !895, !896, !898, !899, !902, !903, !905, !906, !909, !910, !912}
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !868, file: !4, line: 1626, type: !846)
!871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !868, file: !4, line: 1626, type: !56)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "typestr", scope: !868, file: !4, line: 1628, type: !70)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format", scope: !868, file: !4, line: 1629, type: !70)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f", scope: !868, file: !4, line: 1630, type: !853)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "detected", scope: !868, file: !4, line: 1631, type: !853)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !868, file: !4, line: 1632, type: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64, align: 64)
!878 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !879, file: !4, line: 1637, type: !112)
!879 = distinct !DILexicalBlock(scope: !880, file: !4, line: 1637, column: 24)
!880 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1637, column: 9)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !879, file: !4, line: 1637, type: !112)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !883, file: !4, line: 1637, type: !377)
!883 = distinct !DILexicalBlock(scope: !879, file: !4, line: 1637, column: 1639)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !883, file: !4, line: 1637, type: !62)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !886, file: !4, line: 1641, type: !112)
!886 = distinct !DILexicalBlock(scope: !887, file: !4, line: 1641, column: 29)
!887 = distinct !DILexicalBlock(scope: !880, file: !4, line: 1641, column: 14)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !886, file: !4, line: 1641, type: !112)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !890, file: !4, line: 1641, type: !377)
!890 = distinct !DILexicalBlock(scope: !886, file: !4, line: 1641, column: 1629)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !890, file: !4, line: 1641, type: !62)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !893, file: !4, line: 1652, type: !112)
!893 = distinct !DILexicalBlock(scope: !894, file: !4, line: 1652, column: 24)
!894 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1652, column: 9)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !893, file: !4, line: 1652, type: !112)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !897, file: !4, line: 1652, type: !377)
!897 = distinct !DILexicalBlock(scope: !893, file: !4, line: 1652, column: 1636)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !897, file: !4, line: 1652, type: !62)
!899 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !900, file: !4, line: 1655, type: !112)
!900 = distinct !DILexicalBlock(scope: !901, file: !4, line: 1655, column: 29)
!901 = distinct !DILexicalBlock(scope: !894, file: !4, line: 1655, column: 14)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !900, file: !4, line: 1655, type: !112)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !904, file: !4, line: 1655, type: !377)
!904 = distinct !DILexicalBlock(scope: !900, file: !4, line: 1655, column: 1821)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !904, file: !4, line: 1655, type: !62)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !907, file: !4, line: 1658, type: !112)
!907 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1658, column: 29)
!908 = distinct !DILexicalBlock(scope: !901, file: !4, line: 1658, column: 14)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !907, file: !4, line: 1658, type: !112)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !911, file: !4, line: 1658, type: !377)
!911 = distinct !DILexicalBlock(scope: !907, file: !4, line: 1658, column: 1776)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !911, file: !4, line: 1658, type: !62)
!913 = !DISubprogram(name: "float__format__", scope: !4, file: !4, line: 1701, type: !144, isLocal: true, isDefinition: true, scopeLine: 1702, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @float__format__, variables: !914)
!914 = !{!915, !916, !917, !918, !933}
!915 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !913, file: !4, line: 1701, type: !56)
!916 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !913, file: !4, line: 1701, type: !56)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "format_spec", scope: !913, file: !4, line: 1703, type: !56)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "writer", scope: !913, file: !4, line: 1704, type: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !10, line: 917, baseType: !920)
!920 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 897, size: 448, align: 64, elements: !921)
!921 = !{!922, !923, !924, !925, !927, !928, !929, !930, !931, !932}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !920, file: !10, line: 898, baseType: !56, size: 64, align: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !920, file: !10, line: 899, baseType: !17, size: 64, align: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !920, file: !10, line: 900, baseType: !9, size: 32, align: 32, offset: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !920, file: !10, line: 901, baseType: !926, size: 32, align: 32, offset: 160)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !10, line: 121, baseType: !359)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !920, file: !10, line: 902, baseType: !33, size: 64, align: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !920, file: !10, line: 903, baseType: !33, size: 64, align: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !920, file: !10, line: 906, baseType: !33, size: 64, align: 64, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !920, file: !10, line: 909, baseType: !926, size: 32, align: 32, offset: 384)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !920, file: !10, line: 912, baseType: !372, size: 8, align: 8, offset: 416)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !920, file: !10, line: 916, baseType: !372, size: 8, align: 8, offset: 424)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !913, file: !4, line: 1705, type: !62)
!934 = !DISubprogram(name: "float_getzero", scope: !4, file: !4, line: 1695, type: !318, isLocal: true, isDefinition: true, scopeLine: 1696, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i8*)* @float_getzero, variables: !935)
!935 = !{!936, !937}
!936 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !934, file: !4, line: 1695, type: !56)
!937 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "closure", arg: 2, scope: !934, file: !4, line: 1695, type: !17)
!938 = !DISubprogram(name: "float_new", scope: !4, file: !4, line: 1518, type: !939, isLocal: true, isDefinition: true, scopeLine: 1519, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @float_new, variables: !941)
!939 = !DISubroutineType(types: !940)
!940 = !{!56, !846, !56, !56}
!941 = !{!942, !943, !944, !945}
!942 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !938, file: !4, line: 1518, type: !846)
!943 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !938, file: !4, line: 1518, type: !56)
!944 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !938, file: !4, line: 1518, type: !56)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !938, file: !4, line: 1520, type: !56)
!946 = !DISubprogram(name: "float_subtype_new", scope: !4, file: !4, line: 1540, type: !939, isLocal: true, isDefinition: true, scopeLine: 1541, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @float_subtype_new, variables: !947)
!947 = !{!948, !949, !950, !951, !952, !953, !957}
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !946, file: !4, line: 1540, type: !846)
!949 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !946, file: !4, line: 1540, type: !56)
!950 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !946, file: !4, line: 1540, type: !56)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !946, file: !4, line: 1542, type: !56)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !946, file: !4, line: 1542, type: !56)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !954, file: !4, line: 1551, type: !56)
!954 = distinct !DILexicalBlock(scope: !955, file: !4, line: 1551, column: 12)
!955 = distinct !DILexicalBlock(scope: !956, file: !4, line: 1550, column: 31)
!956 = distinct !DILexicalBlock(scope: !946, file: !4, line: 1550, column: 9)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !958, file: !4, line: 1555, type: !56)
!958 = distinct !DILexicalBlock(scope: !946, file: !4, line: 1555, column: 8)
!959 = !{!960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !973, !978, !982, !986, !990, !994, !998, !1002, !1007, !1011, !1025, !1029}
!960 = !DIGlobalVariable(name: "PyFloat_Type", scope: !0, file: !4, line: 1816, type: !847, isLocal: false, isDefinition: true, variable: %struct._typeobject* @PyFloat_Type)
!961 = !DIGlobalVariable(name: "FloatInfoType", scope: !0, file: !4, line: 36, type: !847, isLocal: true, isDefinition: true, variable: %struct._typeobject* @FloatInfoType)
!962 = !DIGlobalVariable(name: "double_format", scope: !0, file: !4, line: 1571, type: !853, isLocal: true, isDefinition: true, variable: i32* @double_format)
!963 = !DIGlobalVariable(name: "float_format", scope: !0, file: !4, line: 1571, type: !853, isLocal: true, isDefinition: true, variable: i32* @float_format)
!964 = !DIGlobalVariable(name: "detected_double_format", scope: !0, file: !4, line: 1572, type: !853, isLocal: true, isDefinition: true, variable: i32* @detected_double_format)
!965 = !DIGlobalVariable(name: "detected_float_format", scope: !0, file: !4, line: 1572, type: !853, isLocal: true, isDefinition: true, variable: i32* @detected_float_format)
!966 = !DIGlobalVariable(name: "free_list", scope: !0, file: !4, line: 22, type: !364, isLocal: true, isDefinition: true, variable: %struct.PyFloatObject** @free_list)
!967 = !DIGlobalVariable(name: "numfree", scope: !0, file: !4, line: 21, type: !62, isLocal: true, isDefinition: true, variable: i32* @numfree)
!968 = !DIGlobalVariable(name: "float_as_number", scope: !0, file: !4, line: 1780, type: !138, isLocal: true, isDefinition: true, variable: %struct.PyNumberMethods* @float_as_number)
!969 = !DIGlobalVariable(name: "float_doc", scope: !0, file: !4, line: 1774, type: !970, isLocal: true, isDefinition: true, variable: [103 x i8]* @float_doc)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 824, align: 8, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 103)
!973 = !DIGlobalVariable(name: "float_methods", scope: !0, file: !4, line: 1728, type: !974, isLocal: true, isDefinition: true, variable: [12 x %struct.PyMethodDef]* @float_methods)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 3072, align: 64, elements: !976)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !299, line: 47, baseType: !298)
!976 = !{!977}
!977 = !DISubrange(count: 12)
!978 = !DIGlobalVariable(name: "float_as_integer_ratio_doc", scope: !0, file: !4, line: 1499, type: !979, isLocal: true, isDefinition: true, variable: [324 x i8]* @float_as_integer_ratio_doc)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2592, align: 8, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 324)
!982 = !DIGlobalVariable(name: "float_fromhex_doc", scope: !0, file: !4, line: 1413, type: !983, isLocal: true, isDefinition: true, variable: [175 x i8]* @float_fromhex_doc)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1400, align: 8, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 175)
!986 = !DIGlobalVariable(name: "float_hex_doc", scope: !0, file: !4, line: 1161, type: !987, isLocal: true, isDefinition: true, variable: [169 x i8]* @float_hex_doc)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1352, align: 8, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 169)
!990 = !DIGlobalVariable(name: "float_getformat_doc", scope: !0, file: !4, line: 1615, type: !991, isLocal: true, isDefinition: true, variable: [357 x i8]* @float_getformat_doc)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 2856, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 357)
!994 = !DIGlobalVariable(name: "float_setformat_doc", scope: !0, file: !4, line: 1681, type: !995, isLocal: true, isDefinition: true, variable: [491 x i8]* @float_setformat_doc)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 3928, align: 8, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 491)
!998 = !DIGlobalVariable(name: "float__format__doc", scope: !0, file: !4, line: 1722, type: !999, isLocal: true, isDefinition: true, variable: [85 x i8]* @float__format__doc)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 680, align: 8, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 85)
!1002 = !DIGlobalVariable(name: "float_getset", scope: !0, file: !4, line: 1762, type: !1003, isLocal: true, isDefinition: true, variable: [3 x %struct.PyGetSetDef]* @float_getset)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 960, align: 64, elements: !1005)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyGetSetDef", file: !312, line: 17, baseType: !311)
!1005 = !{!1006}
!1006 = !DISubrange(count: 3)
!1007 = !DIGlobalVariable(name: "kwlist", scope: !938, file: !4, line: 1521, type: !1008, isLocal: true, isDefinition: true, variable: [2 x i8*]* @float_new.kwlist)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 128, align: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 2)
!1011 = !DIGlobalVariable(name: "floatinfo_desc", scope: !0, file: !4, line: 65, type: !1012, isLocal: true, isDefinition: true, variable: %struct.PyStructSequence_Desc* @floatinfo_desc)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Desc", file: !1013, line: 20, baseType: !1014)
!1013 = !DIFile(filename: "Include/structseq.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Desc", file: !1013, line: 15, size: 256, align: 64, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1014, file: !1013, line: 16, baseType: !70, size: 64, align: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1014, file: !1013, line: 17, baseType: !70, size: 64, align: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1014, file: !1013, line: 18, baseType: !1019, size: 64, align: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64, align: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyStructSequence_Field", file: !1013, line: 10, size: 128, align: 64, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1020, file: !1013, line: 11, baseType: !70, size: 64, align: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !1020, file: !1013, line: 12, baseType: !70, size: 64, align: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "n_in_sequence", scope: !1014, file: !1013, line: 19, baseType: !62, size: 32, align: 32, offset: 192)
!1025 = !DIGlobalVariable(name: "floatinfo__doc__", scope: !0, file: !4, line: 38, type: !1026, isLocal: true, isDefinition: true, variable: [218 x i8]* @floatinfo__doc__)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 1744, align: 8, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 218)
!1029 = !DIGlobalVariable(name: "floatinfo_fields", scope: !0, file: !4, line: 45, type: !1030, isLocal: true, isDefinition: true, variable: [12 x %struct.PyStructSequence_Field]* @floatinfo_fields)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 1536, align: 64, elements: !976)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyStructSequence_Field", file: !1013, line: 13, baseType: !1020)
!1032 = !{i32 2, !"Dwarf Version", i32 4}
!1033 = !{i32 2, !"Debug Info Version", i32 3}
!1034 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1035 = !DILocation(line: 27, column: 5, scope: !398)
!1036 = !DILocation(line: 33, column: 5, scope: !402)
!1037 = !DILocation(line: 75, column: 5, scope: !403)
!1038 = !DIExpression()
!1039 = !DILocation(line: 75, column: 15, scope: !403)
!1040 = !DILocation(line: 76, column: 5, scope: !403)
!1041 = !DILocation(line: 76, column: 9, scope: !403)
!1042 = !{!1043, !1043, i64 0}
!1043 = !{!"int", !1044, i64 0}
!1044 = !{!"omnipotent char", !1045, i64 0}
!1045 = !{!"Simple C/C++ TBAA"}
!1046 = !DILocation(line: 78, column: 17, scope: !403)
!1047 = !DILocation(line: 78, column: 15, scope: !403)
!1048 = !{!1049, !1049, i64 0}
!1049 = !{!"any pointer", !1044, i64 0}
!1050 = !DILocation(line: 79, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !403, file: !4, line: 79, column: 9)
!1052 = !DILocation(line: 79, column: 19, scope: !1051)
!1053 = !DILocation(line: 79, column: 9, scope: !403)
!1054 = !DILocation(line: 80, column: 9, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !4, line: 79, column: 34)
!1056 = !DILocation(line: 88, column: 55, scope: !403)
!1057 = !DILocation(line: 88, column: 49, scope: !403)
!1058 = !DILocation(line: 88, column: 6, scope: !403)
!1059 = !DILocation(line: 88, column: 25, scope: !403)
!1060 = !DILocation(line: 88, column: 7, scope: !403)
!1061 = !DILocation(line: 88, column: 38, scope: !403)
!1062 = !DILocation(line: 88, column: 53, scope: !403)
!1063 = !DILocation(line: 89, column: 55, scope: !403)
!1064 = !DILocation(line: 89, column: 49, scope: !403)
!1065 = !DILocation(line: 89, column: 6, scope: !403)
!1066 = !DILocation(line: 89, column: 25, scope: !403)
!1067 = !DILocation(line: 89, column: 7, scope: !403)
!1068 = !DILocation(line: 89, column: 38, scope: !403)
!1069 = !DILocation(line: 89, column: 53, scope: !403)
!1070 = !DILocation(line: 90, column: 55, scope: !403)
!1071 = !DILocation(line: 90, column: 49, scope: !403)
!1072 = !DILocation(line: 90, column: 6, scope: !403)
!1073 = !DILocation(line: 90, column: 25, scope: !403)
!1074 = !DILocation(line: 90, column: 7, scope: !403)
!1075 = !DILocation(line: 90, column: 38, scope: !403)
!1076 = !DILocation(line: 90, column: 53, scope: !403)
!1077 = !DILocation(line: 91, column: 55, scope: !403)
!1078 = !DILocation(line: 91, column: 49, scope: !403)
!1079 = !DILocation(line: 91, column: 6, scope: !403)
!1080 = !DILocation(line: 91, column: 25, scope: !403)
!1081 = !DILocation(line: 91, column: 7, scope: !403)
!1082 = !DILocation(line: 91, column: 38, scope: !403)
!1083 = !DILocation(line: 91, column: 53, scope: !403)
!1084 = !DILocation(line: 92, column: 55, scope: !403)
!1085 = !DILocation(line: 92, column: 49, scope: !403)
!1086 = !DILocation(line: 92, column: 6, scope: !403)
!1087 = !DILocation(line: 92, column: 25, scope: !403)
!1088 = !DILocation(line: 92, column: 7, scope: !403)
!1089 = !DILocation(line: 92, column: 38, scope: !403)
!1090 = !DILocation(line: 92, column: 53, scope: !403)
!1091 = !DILocation(line: 93, column: 55, scope: !403)
!1092 = !DILocation(line: 93, column: 49, scope: !403)
!1093 = !DILocation(line: 93, column: 6, scope: !403)
!1094 = !DILocation(line: 93, column: 25, scope: !403)
!1095 = !DILocation(line: 93, column: 7, scope: !403)
!1096 = !DILocation(line: 93, column: 38, scope: !403)
!1097 = !DILocation(line: 93, column: 53, scope: !403)
!1098 = !DILocation(line: 94, column: 55, scope: !403)
!1099 = !DILocation(line: 94, column: 49, scope: !403)
!1100 = !DILocation(line: 94, column: 6, scope: !403)
!1101 = !DILocation(line: 94, column: 25, scope: !403)
!1102 = !DILocation(line: 94, column: 7, scope: !403)
!1103 = !DILocation(line: 94, column: 38, scope: !403)
!1104 = !DILocation(line: 94, column: 53, scope: !403)
!1105 = !DILocation(line: 95, column: 55, scope: !403)
!1106 = !DILocation(line: 95, column: 49, scope: !403)
!1107 = !DILocation(line: 95, column: 6, scope: !403)
!1108 = !DILocation(line: 95, column: 25, scope: !403)
!1109 = !DILocation(line: 95, column: 7, scope: !403)
!1110 = !DILocation(line: 95, column: 38, scope: !403)
!1111 = !DILocation(line: 95, column: 53, scope: !403)
!1112 = !DILocation(line: 96, column: 55, scope: !403)
!1113 = !DILocation(line: 96, column: 49, scope: !403)
!1114 = !DILocation(line: 96, column: 6, scope: !403)
!1115 = !DILocation(line: 96, column: 25, scope: !403)
!1116 = !DILocation(line: 96, column: 7, scope: !403)
!1117 = !DILocation(line: 96, column: 38, scope: !403)
!1118 = !DILocation(line: 96, column: 53, scope: !403)
!1119 = !DILocation(line: 97, column: 55, scope: !403)
!1120 = !DILocation(line: 97, column: 49, scope: !403)
!1121 = !DILocation(line: 97, column: 6, scope: !403)
!1122 = !DILocation(line: 97, column: 25, scope: !403)
!1123 = !DILocation(line: 97, column: 7, scope: !403)
!1124 = !DILocation(line: 97, column: 38, scope: !403)
!1125 = !DILocation(line: 97, column: 53, scope: !403)
!1126 = !DILocation(line: 98, column: 72, scope: !403)
!1127 = !DILocation(line: 98, column: 71, scope: !403)
!1128 = !DILocation(line: 98, column: 55, scope: !403)
!1129 = !DILocation(line: 98, column: 49, scope: !403)
!1130 = !DILocation(line: 98, column: 6, scope: !403)
!1131 = !DILocation(line: 98, column: 25, scope: !403)
!1132 = !DILocation(line: 98, column: 7, scope: !403)
!1133 = !DILocation(line: 98, column: 38, scope: !403)
!1134 = !DILocation(line: 98, column: 53, scope: !403)
!1135 = !DILocation(line: 102, column: 9, scope: !412)
!1136 = !DILocation(line: 102, column: 9, scope: !403)
!1137 = !DILocation(line: 103, column: 9, scope: !411)
!1138 = !DILocation(line: 103, column: 14, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !410, file: !4, discriminator: 1)
!1140 = !DILocation(line: 103, column: 24, scope: !410)
!1141 = !DILocation(line: 103, column: 47, scope: !410)
!1142 = !DILocation(line: 103, column: 63, scope: !416)
!1143 = !DILocation(line: 103, column: 71, scope: !416)
!1144 = !DILocation(line: 103, column: 63, scope: !410)
!1145 = !DILocation(line: 103, column: 100, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !415, file: !4, discriminator: 2)
!1147 = !DILocation(line: 103, column: 114, scope: !415)
!1148 = !DILocation(line: 103, column: 119, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !414, file: !4, discriminator: 4)
!1150 = !DILocation(line: 103, column: 129, scope: !414)
!1151 = !DILocation(line: 103, column: 159, scope: !414)
!1152 = !DILocation(line: 103, column: 177, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !414, file: !4, line: 103, column: 174)
!1154 = !DILocation(line: 103, column: 194, scope: !1153)
!1155 = !DILocation(line: 103, column: 174, scope: !1153)
!1156 = !{!1157, !1158, i64 0}
!1157 = !{!"_object", !1158, i64 0, !1049, i64 8}
!1158 = !{!"long", !1044, i64 0}
!1159 = !DILocation(line: 103, column: 204, scope: !1153)
!1160 = !DILocation(line: 103, column: 174, scope: !414)
!1161 = !DILocation(line: 103, column: 174, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !414, file: !4, discriminator: 5)
!1163 = !DILocation(line: 103, column: 235, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1153, file: !4, discriminator: 6)
!1165 = !DILocation(line: 103, column: 253, scope: !1153)
!1166 = !{!1157, !1049, i64 8}
!1167 = !DILocation(line: 103, column: 263, scope: !1153)
!1168 = !{!1169, !1049, i64 48}
!1169 = !{!"_typeobject", !1170, i64 0, !1049, i64 24, !1158, i64 32, !1158, i64 40, !1049, i64 48, !1049, i64 56, !1049, i64 64, !1049, i64 72, !1049, i64 80, !1049, i64 88, !1049, i64 96, !1049, i64 104, !1049, i64 112, !1049, i64 120, !1049, i64 128, !1049, i64 136, !1049, i64 144, !1049, i64 152, !1049, i64 160, !1158, i64 168, !1049, i64 176, !1049, i64 184, !1049, i64 192, !1049, i64 200, !1158, i64 208, !1049, i64 216, !1049, i64 224, !1049, i64 232, !1049, i64 240, !1049, i64 248, !1049, i64 256, !1049, i64 264, !1049, i64 272, !1049, i64 280, !1158, i64 288, !1049, i64 296, !1049, i64 304, !1049, i64 312, !1049, i64 320, !1049, i64 328, !1049, i64 336, !1049, i64 344, !1049, i64 352, !1049, i64 360, !1049, i64 368, !1049, i64 376, !1043, i64 384, !1049, i64 392}
!1170 = !{!"", !1157, i64 0, !1158, i64 16}
!1171 = !DILocation(line: 103, column: 288, scope: !1153)
!1172 = !DILocation(line: 103, column: 219, scope: !1153)
!1173 = !DILocation(line: 103, column: 307, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !415, file: !4, discriminator: 7)
!1175 = !DILocation(line: 103, column: 307, scope: !414)
!1176 = !DILocation(line: 103, column: 307, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !414, file: !4, discriminator: 8)
!1178 = !DILocation(line: 103, column: 320, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !415, file: !4, discriminator: 9)
!1180 = !DILocation(line: 103, column: 322, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !4, discriminator: 10)
!1182 = !DILexicalBlockFile(scope: !411, file: !4, discriminator: 3)
!1183 = !DILocation(line: 103, column: 322, scope: !410)
!1184 = !DILocation(line: 103, column: 322, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !410, file: !4, discriminator: 11)
!1186 = !DILocation(line: 104, column: 9, scope: !411)
!1187 = !DILocation(line: 106, column: 12, scope: !403)
!1188 = !DILocation(line: 106, column: 5, scope: !403)
!1189 = !DILocation(line: 107, column: 1, scope: !403)
!1190 = !{!1191, !1191, i64 0}
!1191 = !{!"double", !1044, i64 0}
!1192 = !DILocation(line: 110, column: 27, scope: !417)
!1193 = !DILocation(line: 112, column: 5, scope: !417)
!1194 = !DILocation(line: 112, column: 20, scope: !417)
!1195 = !DILocation(line: 112, column: 25, scope: !417)
!1196 = !DILocation(line: 113, column: 9, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !417, file: !4, line: 113, column: 9)
!1198 = !DILocation(line: 113, column: 12, scope: !1197)
!1199 = !DILocation(line: 113, column: 9, scope: !417)
!1200 = !DILocation(line: 114, column: 53, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !4, line: 113, column: 27)
!1202 = !DILocation(line: 114, column: 41, scope: !1201)
!1203 = !DILocation(line: 114, column: 59, scope: !1201)
!1204 = !DILocation(line: 114, column: 21, scope: !1201)
!1205 = !DILocation(line: 114, column: 19, scope: !1201)
!1206 = !DILocation(line: 115, column: 16, scope: !1201)
!1207 = !DILocation(line: 116, column: 5, scope: !1201)
!1208 = !DILocation(line: 117, column: 31, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1197, file: !4, line: 116, column: 12)
!1210 = !DILocation(line: 117, column: 14, scope: !1209)
!1211 = !DILocation(line: 117, column: 12, scope: !1209)
!1212 = !DILocation(line: 118, column: 14, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1209, file: !4, line: 118, column: 13)
!1214 = !DILocation(line: 118, column: 13, scope: !1209)
!1215 = !DILocation(line: 119, column: 20, scope: !1213)
!1216 = !DILocation(line: 119, column: 13, scope: !1213)
!1217 = !DILocation(line: 122, column: 27, scope: !417)
!1218 = !DILocation(line: 122, column: 15, scope: !417)
!1219 = !DILocation(line: 122, column: 33, scope: !417)
!1220 = !DILocation(line: 122, column: 42, scope: !417)
!1221 = !DILocation(line: 122, column: 90, scope: !417)
!1222 = !DILocation(line: 122, column: 77, scope: !417)
!1223 = !DILocation(line: 122, column: 97, scope: !417)
!1224 = !DILocation(line: 122, column: 108, scope: !417)
!1225 = !DILocation(line: 122, column: 115, scope: !417)
!1226 = !DILocation(line: 123, column: 19, scope: !417)
!1227 = !DILocation(line: 123, column: 5, scope: !417)
!1228 = !DILocation(line: 123, column: 9, scope: !417)
!1229 = !DILocation(line: 123, column: 17, scope: !417)
!1230 = !{!1231, !1191, i64 16}
!1231 = !{!"", !1157, i64 0, !1191, i64 16}
!1232 = !DILocation(line: 124, column: 25, scope: !417)
!1233 = !DILocation(line: 124, column: 12, scope: !417)
!1234 = !DILocation(line: 124, column: 5, scope: !417)
!1235 = !DILocation(line: 125, column: 1, scope: !417)
!1236 = !DILocation(line: 128, column: 30, scope: !423)
!1237 = !DILocation(line: 130, column: 5, scope: !423)
!1238 = !DILocation(line: 130, column: 17, scope: !423)
!1239 = !DILocation(line: 130, column: 21, scope: !423)
!1240 = !DILocation(line: 130, column: 28, scope: !423)
!1241 = !DILocation(line: 131, column: 5, scope: !423)
!1242 = !DILocation(line: 131, column: 12, scope: !423)
!1243 = !DILocation(line: 132, column: 5, scope: !423)
!1244 = !DILocation(line: 132, column: 15, scope: !423)
!1245 = !DILocation(line: 133, column: 5, scope: !423)
!1246 = !DILocation(line: 133, column: 16, scope: !423)
!1247 = !DILocation(line: 134, column: 5, scope: !423)
!1248 = !DILocation(line: 134, column: 15, scope: !423)
!1249 = !DILocation(line: 136, column: 26, scope: !438)
!1250 = !DILocation(line: 136, column: 31, scope: !438)
!1251 = !DILocation(line: 136, column: 42, scope: !438)
!1252 = !{!1169, !1158, i64 168}
!1253 = !DILocation(line: 136, column: 51, scope: !438)
!1254 = !DILocation(line: 136, column: 68, scope: !438)
!1255 = !DILocation(line: 136, column: 9, scope: !423)
!1256 = !DILocation(line: 137, column: 63, scope: !437)
!1257 = !DILocation(line: 137, column: 20, scope: !437)
!1258 = !DILocation(line: 137, column: 18, scope: !437)
!1259 = !DILocation(line: 138, column: 13, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !437, file: !4, line: 138, column: 13)
!1261 = !DILocation(line: 138, column: 22, scope: !1260)
!1262 = !DILocation(line: 138, column: 13, scope: !437)
!1263 = !DILocation(line: 139, column: 13, scope: !1260)
!1264 = !DILocation(line: 140, column: 37, scope: !437)
!1265 = !DILocation(line: 140, column: 13, scope: !437)
!1266 = !DILocation(line: 140, column: 11, scope: !437)
!1267 = !DILocation(line: 141, column: 13, scope: !436)
!1268 = !DILocation(line: 141, column: 15, scope: !436)
!1269 = !DILocation(line: 141, column: 13, scope: !437)
!1270 = !DILocation(line: 142, column: 13, scope: !435)
!1271 = !DILocation(line: 142, column: 18, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !434, file: !4, discriminator: 1)
!1273 = !DILocation(line: 142, column: 28, scope: !434)
!1274 = !DILocation(line: 142, column: 58, scope: !434)
!1275 = !DILocation(line: 142, column: 77, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !434, file: !4, line: 142, column: 74)
!1277 = !DILocation(line: 142, column: 94, scope: !1276)
!1278 = !DILocation(line: 142, column: 74, scope: !1276)
!1279 = !DILocation(line: 142, column: 104, scope: !1276)
!1280 = !DILocation(line: 142, column: 74, scope: !434)
!1281 = !DILocation(line: 142, column: 74, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !434, file: !4, discriminator: 2)
!1283 = !DILocation(line: 142, column: 135, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1276, file: !4, discriminator: 3)
!1285 = !DILocation(line: 142, column: 153, scope: !1276)
!1286 = !DILocation(line: 142, column: 163, scope: !1276)
!1287 = !DILocation(line: 142, column: 188, scope: !1276)
!1288 = !DILocation(line: 142, column: 119, scope: !1276)
!1289 = !DILocation(line: 142, column: 207, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !435, file: !4, discriminator: 4)
!1291 = !DILocation(line: 142, column: 207, scope: !434)
!1292 = !DILocation(line: 142, column: 207, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !434, file: !4, discriminator: 5)
!1294 = !DILocation(line: 143, column: 13, scope: !435)
!1295 = !DILocation(line: 145, column: 5, scope: !437)
!1296 = !DILocation(line: 146, column: 36, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !438, file: !4, line: 146, column: 14)
!1298 = !DILocation(line: 146, column: 14, scope: !1297)
!1299 = !DILocation(line: 146, column: 14, scope: !438)
!1300 = !DILocation(line: 147, column: 22, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !4, line: 146, column: 50)
!1302 = !DILocation(line: 149, column: 27, scope: !1301)
!1303 = !DILocation(line: 149, column: 32, scope: !1301)
!1304 = !DILocation(line: 149, column: 42, scope: !1301)
!1305 = !{!1169, !1049, i64 24}
!1306 = !DILocation(line: 147, column: 9, scope: !1301)
!1307 = !DILocation(line: 150, column: 9, scope: !1301)
!1308 = !DILocation(line: 152, column: 12, scope: !423)
!1309 = !DILocation(line: 152, column: 16, scope: !423)
!1310 = !{!1158, !1158, i64 0}
!1311 = !DILocation(line: 152, column: 14, scope: !423)
!1312 = !DILocation(line: 152, column: 10, scope: !423)
!1313 = !DILocation(line: 154, column: 5, scope: !423)
!1314 = !DILocation(line: 154, column: 12, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1316, file: !4, discriminator: 4)
!1316 = !DILexicalBlockFile(scope: !423, file: !4, discriminator: 1)
!1317 = !DILocation(line: 154, column: 16, scope: !423)
!1318 = !DILocation(line: 154, column: 14, scope: !423)
!1319 = !DILocation(line: 154, column: 21, scope: !423)
!1320 = !DILocation(line: 154, column: 60, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !423, file: !4, discriminator: 2)
!1322 = !DILocation(line: 154, column: 59, scope: !423)
!1323 = !{!1044, !1044, i64 0}
!1324 = !DILocation(line: 154, column: 58, scope: !423)
!1325 = !DILocation(line: 154, column: 63, scope: !423)
!1326 = !DILocation(line: 154, column: 42, scope: !423)
!1327 = !DILocation(line: 154, column: 25, scope: !423)
!1328 = !DILocation(line: 154, column: 73, scope: !423)
!1329 = !DILocation(line: 154, column: 5, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !423, file: !4, discriminator: 3)
!1331 = !DILocation(line: 155, column: 10, scope: !423)
!1332 = !DILocation(line: 156, column: 5, scope: !423)
!1333 = !DILocation(line: 156, column: 12, scope: !1315)
!1334 = !DILocation(line: 156, column: 16, scope: !423)
!1335 = !DILocation(line: 156, column: 21, scope: !423)
!1336 = !DILocation(line: 156, column: 14, scope: !423)
!1337 = !DILocation(line: 156, column: 25, scope: !423)
!1338 = !DILocation(line: 156, column: 63, scope: !1321)
!1339 = !DILocation(line: 156, column: 62, scope: !423)
!1340 = !DILocation(line: 156, column: 73, scope: !423)
!1341 = !DILocation(line: 156, column: 46, scope: !423)
!1342 = !DILocation(line: 156, column: 29, scope: !423)
!1343 = !DILocation(line: 156, column: 83, scope: !423)
!1344 = !DILocation(line: 156, column: 5, scope: !1330)
!1345 = !DILocation(line: 157, column: 13, scope: !423)
!1346 = !DILocation(line: 161, column: 31, scope: !423)
!1347 = !DILocation(line: 161, column: 9, scope: !423)
!1348 = !DILocation(line: 161, column: 7, scope: !423)
!1349 = !DILocation(line: 162, column: 9, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !423, file: !4, line: 162, column: 9)
!1351 = !DILocation(line: 162, column: 16, scope: !1350)
!1352 = !DILocation(line: 162, column: 13, scope: !1350)
!1353 = !DILocation(line: 162, column: 9, scope: !423)
!1354 = !DILocation(line: 163, column: 22, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !4, line: 162, column: 22)
!1356 = !DILocation(line: 165, column: 28, scope: !1355)
!1357 = !DILocation(line: 163, column: 9, scope: !1355)
!1358 = !DILocation(line: 166, column: 16, scope: !1355)
!1359 = !DILocation(line: 167, column: 5, scope: !1355)
!1360 = !DILocation(line: 168, column: 14, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1350, file: !4, line: 168, column: 14)
!1362 = !DILocation(line: 168, column: 16, scope: !1361)
!1363 = !DILocation(line: 168, column: 24, scope: !1361)
!1364 = !DILocation(line: 168, column: 27, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1361, file: !4, discriminator: 1)
!1366 = !DILocation(line: 168, column: 14, scope: !1350)
!1367 = !DILocation(line: 169, column: 16, scope: !1361)
!1368 = !DILocation(line: 169, column: 9, scope: !1361)
!1369 = !DILocation(line: 171, column: 37, scope: !1361)
!1370 = !DILocation(line: 171, column: 18, scope: !1361)
!1371 = !DILocation(line: 171, column: 16, scope: !1361)
!1372 = !DILocation(line: 173, column: 5, scope: !423)
!1373 = !DILocation(line: 173, column: 10, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !440, file: !4, discriminator: 1)
!1375 = !DILocation(line: 173, column: 20, scope: !440)
!1376 = !DILocation(line: 173, column: 51, scope: !440)
!1377 = !DILocation(line: 173, column: 66, scope: !443)
!1378 = !DILocation(line: 173, column: 82, scope: !443)
!1379 = !DILocation(line: 173, column: 66, scope: !440)
!1380 = !DILocation(line: 173, column: 97, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !443, file: !4, discriminator: 2)
!1382 = !DILocation(line: 173, column: 102, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !442, file: !4, discriminator: 4)
!1384 = !DILocation(line: 173, column: 112, scope: !442)
!1385 = !DILocation(line: 173, column: 142, scope: !442)
!1386 = !DILocation(line: 173, column: 168, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !442, file: !4, line: 173, column: 165)
!1388 = !DILocation(line: 173, column: 185, scope: !1387)
!1389 = !DILocation(line: 173, column: 165, scope: !1387)
!1390 = !DILocation(line: 173, column: 195, scope: !1387)
!1391 = !DILocation(line: 173, column: 165, scope: !442)
!1392 = !DILocation(line: 173, column: 165, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !442, file: !4, discriminator: 5)
!1394 = !DILocation(line: 173, column: 226, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1387, file: !4, discriminator: 6)
!1396 = !DILocation(line: 173, column: 244, scope: !1387)
!1397 = !DILocation(line: 173, column: 254, scope: !1387)
!1398 = !DILocation(line: 173, column: 279, scope: !1387)
!1399 = !DILocation(line: 173, column: 210, scope: !1387)
!1400 = !DILocation(line: 173, column: 298, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !443, file: !4, discriminator: 7)
!1402 = !DILocation(line: 173, column: 298, scope: !442)
!1403 = !DILocation(line: 173, column: 298, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !442, file: !4, discriminator: 8)
!1405 = !DILocation(line: 173, column: 298, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !442, file: !4, discriminator: 9)
!1407 = !DILocation(line: 173, column: 311, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1330, file: !4, discriminator: 10)
!1409 = !DILocation(line: 173, column: 311, scope: !440)
!1410 = !DILocation(line: 173, column: 311, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !440, file: !4, discriminator: 11)
!1412 = !DILocation(line: 174, column: 12, scope: !423)
!1413 = !DILocation(line: 174, column: 5, scope: !423)
!1414 = !DILocation(line: 175, column: 1, scope: !423)
!1415 = !DILocation(line: 194, column: 28, scope: !444)
!1416 = !DILocation(line: 196, column: 5, scope: !444)
!1417 = !DILocation(line: 196, column: 22, scope: !444)
!1418 = !DILocation(line: 197, column: 5, scope: !444)
!1419 = !DILocation(line: 197, column: 20, scope: !444)
!1420 = !DILocation(line: 198, column: 5, scope: !444)
!1421 = !DILocation(line: 198, column: 12, scope: !444)
!1422 = !DILocation(line: 200, column: 9, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !444, file: !4, line: 200, column: 9)
!1424 = !DILocation(line: 200, column: 12, scope: !1423)
!1425 = !DILocation(line: 200, column: 30, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1423, file: !4, discriminator: 1)
!1427 = !DILocation(line: 200, column: 36, scope: !1423)
!1428 = !DILocation(line: 200, column: 45, scope: !1423)
!1429 = !DILocation(line: 200, column: 64, scope: !1423)
!1430 = !DILocation(line: 200, column: 98, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1423, file: !4, discriminator: 2)
!1432 = !DILocation(line: 200, column: 104, scope: !1423)
!1433 = !DILocation(line: 200, column: 67, scope: !1423)
!1434 = !DILocation(line: 200, column: 9, scope: !444)
!1435 = !DILocation(line: 201, column: 53, scope: !1423)
!1436 = !DILocation(line: 201, column: 36, scope: !1423)
!1437 = !DILocation(line: 201, column: 59, scope: !1423)
!1438 = !DILocation(line: 201, column: 9, scope: !1423)
!1439 = !DILocation(line: 203, column: 9, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !444, file: !4, line: 203, column: 9)
!1441 = !DILocation(line: 203, column: 12, scope: !1440)
!1442 = !DILocation(line: 203, column: 9, scope: !444)
!1443 = !DILocation(line: 204, column: 9, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1440, file: !4, line: 203, column: 27)
!1445 = !DILocation(line: 205, column: 9, scope: !1444)
!1446 = !DILocation(line: 208, column: 29, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !444, file: !4, line: 208, column: 9)
!1448 = !DILocation(line: 208, column: 35, scope: !1447)
!1449 = !DILocation(line: 208, column: 45, scope: !1447)
!1450 = !{!1169, !1049, i64 96}
!1451 = !DILocation(line: 208, column: 13, scope: !1447)
!1452 = !DILocation(line: 208, column: 59, scope: !1447)
!1453 = !DILocation(line: 208, column: 73, scope: !1447)
!1454 = !DILocation(line: 208, column: 76, scope: !1455)
!1455 = !DILexicalBlockFile(scope: !1447, file: !4, discriminator: 1)
!1456 = !DILocation(line: 208, column: 80, scope: !1447)
!1457 = !{!1458, !1049, i64 144}
!1458 = !{!"", !1049, i64 0, !1049, i64 8, !1049, i64 16, !1049, i64 24, !1049, i64 32, !1049, i64 40, !1049, i64 48, !1049, i64 56, !1049, i64 64, !1049, i64 72, !1049, i64 80, !1049, i64 88, !1049, i64 96, !1049, i64 104, !1049, i64 112, !1049, i64 120, !1049, i64 128, !1049, i64 136, !1049, i64 144, !1049, i64 152, !1049, i64 160, !1049, i64 168, !1049, i64 176, !1049, i64 184, !1049, i64 192, !1049, i64 200, !1049, i64 208, !1049, i64 216, !1049, i64 224, !1049, i64 232, !1049, i64 240, !1049, i64 248, !1049, i64 256, !1049, i64 264}
!1459 = !DILocation(line: 208, column: 89, scope: !1447)
!1460 = !DILocation(line: 208, column: 9, scope: !444)
!1461 = !DILocation(line: 209, column: 25, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1447, file: !4, line: 208, column: 104)
!1463 = !DILocation(line: 209, column: 9, scope: !1462)
!1464 = !DILocation(line: 210, column: 9, scope: !1462)
!1465 = !DILocation(line: 213, column: 29, scope: !444)
!1466 = !DILocation(line: 213, column: 33, scope: !444)
!1467 = !DILocation(line: 213, column: 44, scope: !444)
!1468 = !DILocation(line: 213, column: 27, scope: !444)
!1469 = !DILocation(line: 213, column: 10, scope: !444)
!1470 = !DILocation(line: 213, column: 8, scope: !444)
!1471 = !DILocation(line: 214, column: 9, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !444, file: !4, line: 214, column: 9)
!1473 = !DILocation(line: 214, column: 12, scope: !1472)
!1474 = !DILocation(line: 214, column: 9, scope: !444)
!1475 = !DILocation(line: 215, column: 9, scope: !1472)
!1476 = !DILocation(line: 216, column: 25, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !444, file: !4, line: 216, column: 9)
!1478 = !DILocation(line: 216, column: 13, scope: !1477)
!1479 = !DILocation(line: 216, column: 31, scope: !1477)
!1480 = !DILocation(line: 216, column: 40, scope: !1477)
!1481 = !DILocation(line: 216, column: 59, scope: !1477)
!1482 = !DILocation(line: 216, column: 93, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !1477, file: !4, discriminator: 1)
!1484 = !DILocation(line: 216, column: 81, scope: !1477)
!1485 = !DILocation(line: 216, column: 99, scope: !1477)
!1486 = !DILocation(line: 216, column: 62, scope: !1477)
!1487 = !DILocation(line: 216, column: 9, scope: !444)
!1488 = !DILocation(line: 217, column: 25, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1477, file: !4, line: 216, column: 128)
!1490 = !DILocation(line: 217, column: 9, scope: !1489)
!1491 = !DILocation(line: 219, column: 9, scope: !1489)
!1492 = !DILocation(line: 222, column: 31, scope: !444)
!1493 = !DILocation(line: 222, column: 37, scope: !444)
!1494 = !DILocation(line: 222, column: 9, scope: !444)
!1495 = !DILocation(line: 223, column: 5, scope: !444)
!1496 = !DILocation(line: 223, column: 10, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !453, file: !4, discriminator: 1)
!1498 = !DILocation(line: 223, column: 20, scope: !453)
!1499 = !DILocation(line: 223, column: 50, scope: !453)
!1500 = !DILocation(line: 223, column: 37, scope: !453)
!1501 = !DILocation(line: 223, column: 63, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !453, file: !4, line: 223, column: 60)
!1503 = !DILocation(line: 223, column: 80, scope: !1502)
!1504 = !DILocation(line: 223, column: 60, scope: !1502)
!1505 = !DILocation(line: 223, column: 90, scope: !1502)
!1506 = !DILocation(line: 223, column: 60, scope: !453)
!1507 = !DILocation(line: 223, column: 60, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !453, file: !4, discriminator: 2)
!1509 = !DILocation(line: 223, column: 121, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1502, file: !4, discriminator: 3)
!1511 = !DILocation(line: 223, column: 139, scope: !1502)
!1512 = !DILocation(line: 223, column: 149, scope: !1502)
!1513 = !DILocation(line: 223, column: 174, scope: !1502)
!1514 = !DILocation(line: 223, column: 105, scope: !1502)
!1515 = !DILocation(line: 223, column: 193, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !444, file: !4, discriminator: 4)
!1517 = !DILocation(line: 223, column: 193, scope: !453)
!1518 = !DILocation(line: 223, column: 193, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !453, file: !4, discriminator: 5)
!1520 = !DILocation(line: 225, column: 12, scope: !444)
!1521 = !DILocation(line: 225, column: 5, scope: !444)
!1522 = !DILocation(line: 226, column: 1, scope: !444)
!1523 = !DILocation(line: 178, column: 30, scope: !557)
!1524 = !DILocation(line: 180, column: 24, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !557, file: !4, line: 180, column: 9)
!1526 = !DILocation(line: 180, column: 12, scope: !1525)
!1527 = !DILocation(line: 180, column: 30, scope: !1525)
!1528 = !DILocation(line: 180, column: 39, scope: !1525)
!1529 = !DILocation(line: 180, column: 9, scope: !557)
!1530 = !DILocation(line: 181, column: 13, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !4, line: 181, column: 13)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !4, line: 180, column: 58)
!1533 = !DILocation(line: 181, column: 21, scope: !1531)
!1534 = !DILocation(line: 181, column: 13, scope: !1532)
!1535 = !DILocation(line: 182, column: 27, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !4, line: 181, column: 29)
!1537 = !DILocation(line: 182, column: 13, scope: !1536)
!1538 = !DILocation(line: 183, column: 13, scope: !1536)
!1539 = !DILocation(line: 185, column: 16, scope: !1532)
!1540 = !DILocation(line: 186, column: 62, scope: !1532)
!1541 = !DILocation(line: 186, column: 40, scope: !1532)
!1542 = !DILocation(line: 186, column: 23, scope: !1532)
!1543 = !DILocation(line: 186, column: 11, scope: !1532)
!1544 = !DILocation(line: 186, column: 29, scope: !1532)
!1545 = !DILocation(line: 186, column: 38, scope: !1532)
!1546 = !DILocation(line: 187, column: 21, scope: !1532)
!1547 = !DILocation(line: 187, column: 19, scope: !1532)
!1548 = !DILocation(line: 188, column: 5, scope: !1532)
!1549 = !DILocation(line: 190, column: 23, scope: !1525)
!1550 = !DILocation(line: 190, column: 11, scope: !1525)
!1551 = !DILocation(line: 190, column: 29, scope: !1525)
!1552 = !DILocation(line: 190, column: 39, scope: !1525)
!1553 = !{!1169, !1049, i64 320}
!1554 = !DILocation(line: 190, column: 59, scope: !1525)
!1555 = !DILocation(line: 190, column: 47, scope: !1525)
!1556 = !DILocation(line: 190, column: 9, scope: !1525)
!1557 = !DILocation(line: 191, column: 1, scope: !557)
!1558 = !DILocation(line: 263, column: 27, scope: !562)
!1559 = !DILocation(line: 265, column: 5, scope: !562)
!1560 = !DILocation(line: 265, column: 15, scope: !562)
!1561 = !DILocation(line: 266, column: 5, scope: !562)
!1562 = !DILocation(line: 266, column: 11, scope: !562)
!1563 = !DILocation(line: 268, column: 53, scope: !562)
!1564 = !DILocation(line: 268, column: 58, scope: !562)
!1565 = !DILocation(line: 268, column: 11, scope: !562)
!1566 = !DILocation(line: 268, column: 9, scope: !562)
!1567 = !DILocation(line: 272, column: 10, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !562, file: !4, line: 272, column: 9)
!1569 = !DILocation(line: 272, column: 9, scope: !562)
!1570 = !DILocation(line: 273, column: 16, scope: !1568)
!1571 = !DILocation(line: 273, column: 9, scope: !1568)
!1572 = !DILocation(line: 274, column: 35, scope: !562)
!1573 = !DILocation(line: 274, column: 47, scope: !562)
!1574 = !DILocation(line: 274, column: 40, scope: !562)
!1575 = !DILocation(line: 274, column: 14, scope: !562)
!1576 = !DILocation(line: 274, column: 12, scope: !562)
!1577 = !DILocation(line: 275, column: 16, scope: !562)
!1578 = !DILocation(line: 275, column: 5, scope: !562)
!1579 = !DILocation(line: 276, column: 12, scope: !562)
!1580 = !DILocation(line: 276, column: 5, scope: !562)
!1581 = !DILocation(line: 277, column: 1, scope: !562)
!1582 = !DILocation(line: 482, column: 27, scope: !664)
!1583 = !DILocation(line: 484, column: 27, scope: !664)
!1584 = !DILocation(line: 484, column: 30, scope: !664)
!1585 = !DILocation(line: 484, column: 12, scope: !664)
!1586 = !DILocation(line: 484, column: 5, scope: !664)
!1587 = !DILocation(line: 295, column: 29, scope: !669)
!1588 = !DILocation(line: 295, column: 42, scope: !669)
!1589 = !DILocation(line: 295, column: 49, scope: !669)
!1590 = !DILocation(line: 297, column: 5, scope: !669)
!1591 = !DILocation(line: 297, column: 12, scope: !669)
!1592 = !DILocation(line: 297, column: 15, scope: !669)
!1593 = !DILocation(line: 298, column: 5, scope: !669)
!1594 = !DILocation(line: 298, column: 9, scope: !669)
!1595 = !DILocation(line: 301, column: 29, scope: !669)
!1596 = !DILocation(line: 301, column: 11, scope: !669)
!1597 = !DILocation(line: 301, column: 34, scope: !669)
!1598 = !DILocation(line: 301, column: 7, scope: !669)
!1599 = !DILocation(line: 306, column: 24, scope: !681)
!1600 = !DILocation(line: 306, column: 29, scope: !681)
!1601 = !DILocation(line: 306, column: 38, scope: !681)
!1602 = !DILocation(line: 306, column: 57, scope: !681)
!1603 = !DILocation(line: 306, column: 91, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 1)
!1605 = !DILocation(line: 306, column: 96, scope: !681)
!1606 = !DILocation(line: 306, column: 60, scope: !681)
!1607 = !DILocation(line: 306, column: 9, scope: !669)
!1608 = !DILocation(line: 307, column: 33, scope: !681)
!1609 = !DILocation(line: 307, column: 15, scope: !681)
!1610 = !DILocation(line: 307, column: 38, scope: !681)
!1611 = !DILocation(line: 307, column: 11, scope: !681)
!1612 = !DILocation(line: 307, column: 9, scope: !681)
!1613 = !DILocation(line: 309, column: 14, scope: !681)
!1614 = !DILocation(line: 309, column: 58, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !680, file: !4, discriminator: 1)
!1616 = !DILocation(line: 309, column: 47, scope: !680)
!1617 = !DILocation(line: 309, column: 16, scope: !680)
!1618 = !DILocation(line: 309, column: 14, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 2)
!1620 = !DILocation(line: 309, column: 105, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !680, file: !4, discriminator: 3)
!1622 = !DILocation(line: 309, column: 95, scope: !680)
!1623 = !DILocation(line: 309, column: 63, scope: !680)
!1624 = !DILocation(line: 309, column: 121, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !680, file: !4, discriminator: 4)
!1626 = !DILocation(line: 309, column: 110, scope: !680)
!1627 = !DILocation(line: 310, column: 30, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !4, line: 310, column: 13)
!1629 = distinct !DILexicalBlock(scope: !680, file: !4, line: 309, column: 126)
!1630 = !DILocation(line: 310, column: 35, scope: !1628)
!1631 = !DILocation(line: 310, column: 46, scope: !1628)
!1632 = !DILocation(line: 310, column: 55, scope: !1628)
!1633 = !DILocation(line: 310, column: 72, scope: !1628)
!1634 = !DILocation(line: 310, column: 13, scope: !1629)
!1635 = !DILocation(line: 315, column: 15, scope: !1628)
!1636 = !DILocation(line: 315, column: 13, scope: !1628)
!1637 = !DILocation(line: 317, column: 13, scope: !1628)
!1638 = !DILocation(line: 318, column: 5, scope: !1629)
!1639 = !DILocation(line: 320, column: 31, scope: !679)
!1640 = !DILocation(line: 320, column: 36, scope: !679)
!1641 = !DILocation(line: 320, column: 47, scope: !679)
!1642 = !DILocation(line: 320, column: 56, scope: !679)
!1643 = !DILocation(line: 320, column: 73, scope: !679)
!1644 = !DILocation(line: 320, column: 14, scope: !680)
!1645 = !DILocation(line: 321, column: 9, scope: !678)
!1646 = !DILocation(line: 321, column: 13, scope: !678)
!1647 = !DILocation(line: 321, column: 21, scope: !678)
!1648 = !DILocation(line: 321, column: 23, scope: !678)
!1649 = !DILocation(line: 321, column: 21, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !678, file: !4, discriminator: 1)
!1651 = !DILocation(line: 321, column: 36, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !678, file: !4, discriminator: 2)
!1653 = !DILocation(line: 321, column: 38, scope: !678)
!1654 = !DILocation(line: 321, column: 36, scope: !678)
!1655 = !DILocation(line: 321, column: 13, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1657, file: !4, discriminator: 4)
!1657 = !DILexicalBlockFile(scope: !678, file: !4, discriminator: 3)
!1658 = !DILocation(line: 322, column: 9, scope: !678)
!1659 = !DILocation(line: 322, column: 13, scope: !678)
!1660 = !DILocation(line: 322, column: 34, scope: !678)
!1661 = !DILocation(line: 322, column: 21, scope: !678)
!1662 = !DILocation(line: 323, column: 9, scope: !678)
!1663 = !DILocation(line: 323, column: 16, scope: !678)
!1664 = !DILocation(line: 324, column: 9, scope: !678)
!1665 = !DILocation(line: 324, column: 13, scope: !678)
!1666 = !DILocation(line: 326, column: 13, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !678, file: !4, line: 326, column: 13)
!1668 = !DILocation(line: 326, column: 22, scope: !1667)
!1669 = !DILocation(line: 326, column: 19, scope: !1667)
!1670 = !DILocation(line: 326, column: 13, scope: !678)
!1671 = !DILocation(line: 330, column: 25, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !4, line: 326, column: 29)
!1673 = !DILocation(line: 330, column: 17, scope: !1672)
!1674 = !DILocation(line: 330, column: 15, scope: !1672)
!1675 = !DILocation(line: 331, column: 25, scope: !1672)
!1676 = !DILocation(line: 331, column: 17, scope: !1672)
!1677 = !DILocation(line: 331, column: 15, scope: !1672)
!1678 = !DILocation(line: 332, column: 13, scope: !1672)
!1679 = !DILocation(line: 336, column: 33, scope: !678)
!1680 = !DILocation(line: 336, column: 17, scope: !678)
!1681 = !DILocation(line: 336, column: 15, scope: !678)
!1682 = !DILocation(line: 337, column: 13, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !678, file: !4, line: 337, column: 13)
!1684 = !DILocation(line: 337, column: 19, scope: !1683)
!1685 = !DILocation(line: 337, column: 33, scope: !1683)
!1686 = !DILocation(line: 337, column: 36, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1683, file: !4, discriminator: 1)
!1688 = !DILocation(line: 337, column: 13, scope: !678)
!1689 = !DILocation(line: 344, column: 13, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1683, file: !4, line: 337, column: 54)
!1691 = !DILocation(line: 345, column: 25, scope: !1690)
!1692 = !DILocation(line: 345, column: 17, scope: !1690)
!1693 = !DILocation(line: 345, column: 15, scope: !1690)
!1694 = !DILocation(line: 347, column: 17, scope: !1690)
!1695 = !DILocation(line: 347, column: 23, scope: !1690)
!1696 = !DILocation(line: 347, column: 15, scope: !1690)
!1697 = !DILocation(line: 348, column: 13, scope: !1690)
!1698 = !DILocation(line: 350, column: 13, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !678, file: !4, line: 350, column: 13)
!1700 = !DILocation(line: 350, column: 19, scope: !1699)
!1701 = !DILocation(line: 350, column: 13, scope: !678)
!1702 = !DILocation(line: 351, column: 33, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !4, line: 350, column: 26)
!1704 = !DILocation(line: 351, column: 17, scope: !1703)
!1705 = !DILocation(line: 351, column: 15, scope: !1703)
!1706 = !DILocation(line: 354, column: 13, scope: !1703)
!1707 = !DILocation(line: 361, column: 13, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !678, file: !4, line: 361, column: 13)
!1709 = !DILocation(line: 361, column: 19, scope: !1708)
!1710 = !DILocation(line: 361, column: 13, scope: !678)
!1711 = !DILocation(line: 365, column: 18, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1708, file: !4, line: 361, column: 24)
!1713 = !DILocation(line: 365, column: 17, scope: !1712)
!1714 = !DILocation(line: 365, column: 15, scope: !1712)
!1715 = !DILocation(line: 366, column: 32, scope: !1712)
!1716 = !DILocation(line: 366, column: 18, scope: !1712)
!1717 = !DILocation(line: 366, column: 16, scope: !1712)
!1718 = !DILocation(line: 367, column: 9, scope: !1712)
!1719 = !DILocation(line: 369, column: 22, scope: !678)
!1720 = !DILocation(line: 369, column: 16, scope: !678)
!1721 = !DILocation(line: 373, column: 13, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !678, file: !4, line: 373, column: 13)
!1723 = !DILocation(line: 373, column: 22, scope: !1722)
!1724 = !DILocation(line: 373, column: 26, scope: !1722)
!1725 = !DILocation(line: 373, column: 37, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1722, file: !4, discriminator: 1)
!1727 = !DILocation(line: 373, column: 29, scope: !1722)
!1728 = !DILocation(line: 373, column: 48, scope: !1722)
!1729 = !DILocation(line: 373, column: 46, scope: !1722)
!1730 = !DILocation(line: 373, column: 13, scope: !678)
!1731 = !DILocation(line: 374, column: 15, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1722, file: !4, line: 373, column: 55)
!1733 = !DILocation(line: 375, column: 15, scope: !1732)
!1734 = !DILocation(line: 376, column: 13, scope: !1732)
!1735 = !DILocation(line: 378, column: 21, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !678, file: !4, line: 378, column: 13)
!1737 = !DILocation(line: 378, column: 13, scope: !1736)
!1738 = !DILocation(line: 378, column: 32, scope: !1736)
!1739 = !DILocation(line: 378, column: 30, scope: !1736)
!1740 = !DILocation(line: 378, column: 13, scope: !678)
!1741 = !DILocation(line: 379, column: 15, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1736, file: !4, line: 378, column: 39)
!1743 = !DILocation(line: 380, column: 15, scope: !1742)
!1744 = !DILocation(line: 381, column: 13, scope: !1742)
!1745 = !DILocation(line: 388, column: 13, scope: !686)
!1746 = !DILocation(line: 388, column: 20, scope: !686)
!1747 = !DILocation(line: 389, column: 13, scope: !686)
!1748 = !DILocation(line: 389, column: 20, scope: !686)
!1749 = !DILocation(line: 390, column: 13, scope: !686)
!1750 = !DILocation(line: 390, column: 23, scope: !686)
!1751 = !DILocation(line: 391, column: 13, scope: !686)
!1752 = !DILocation(line: 391, column: 23, scope: !686)
!1753 = !DILocation(line: 392, column: 13, scope: !686)
!1754 = !DILocation(line: 392, column: 23, scope: !686)
!1755 = !DILocation(line: 393, column: 13, scope: !686)
!1756 = !DILocation(line: 393, column: 23, scope: !686)
!1757 = !DILocation(line: 393, column: 28, scope: !686)
!1758 = !DILocation(line: 395, column: 17, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !686, file: !4, line: 395, column: 17)
!1760 = !DILocation(line: 395, column: 23, scope: !1759)
!1761 = !DILocation(line: 395, column: 17, scope: !686)
!1762 = !DILocation(line: 396, column: 40, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !4, line: 395, column: 28)
!1764 = !DILocation(line: 396, column: 22, scope: !1763)
!1765 = !DILocation(line: 396, column: 20, scope: !1763)
!1766 = !DILocation(line: 397, column: 21, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !4, line: 397, column: 21)
!1768 = !DILocation(line: 397, column: 24, scope: !1767)
!1769 = !DILocation(line: 397, column: 21, scope: !1763)
!1770 = !DILocation(line: 398, column: 21, scope: !1767)
!1771 = !DILocation(line: 399, column: 13, scope: !1763)
!1772 = !DILocation(line: 401, column: 33, scope: !1759)
!1773 = !DILocation(line: 401, column: 39, scope: !1759)
!1774 = !DILocation(line: 401, column: 48, scope: !1759)
!1775 = !DILocation(line: 403, column: 29, scope: !686)
!1776 = !DILocation(line: 403, column: 24, scope: !686)
!1777 = !DILocation(line: 403, column: 22, scope: !686)
!1778 = !DILocation(line: 404, column: 36, scope: !686)
!1779 = !DILocation(line: 404, column: 18, scope: !686)
!1780 = !DILocation(line: 404, column: 16, scope: !686)
!1781 = !DILocation(line: 405, column: 17, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !686, file: !4, line: 405, column: 17)
!1783 = !DILocation(line: 405, column: 20, scope: !1782)
!1784 = !DILocation(line: 405, column: 17, scope: !686)
!1785 = !DILocation(line: 406, column: 17, scope: !1782)
!1786 = !DILocation(line: 408, column: 17, scope: !694)
!1787 = !DILocation(line: 408, column: 26, scope: !694)
!1788 = !DILocation(line: 408, column: 17, scope: !686)
!1789 = !DILocation(line: 412, column: 17, scope: !693)
!1790 = !DILocation(line: 412, column: 27, scope: !693)
!1791 = !DILocation(line: 414, column: 23, scope: !693)
!1792 = !DILocation(line: 414, column: 21, scope: !693)
!1793 = !DILocation(line: 415, column: 21, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !693, file: !4, line: 415, column: 21)
!1795 = !DILocation(line: 415, column: 25, scope: !1794)
!1796 = !DILocation(line: 415, column: 21, scope: !693)
!1797 = !DILocation(line: 416, column: 21, scope: !1794)
!1798 = !DILocation(line: 418, column: 40, scope: !693)
!1799 = !DILocation(line: 418, column: 44, scope: !693)
!1800 = !DILocation(line: 418, column: 24, scope: !693)
!1801 = !DILocation(line: 418, column: 22, scope: !693)
!1802 = !DILocation(line: 419, column: 21, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !693, file: !4, line: 419, column: 21)
!1804 = !DILocation(line: 419, column: 26, scope: !1803)
!1805 = !DILocation(line: 419, column: 21, scope: !693)
!1806 = !DILocation(line: 420, column: 21, scope: !1803)
!1807 = !DILocation(line: 421, column: 17, scope: !693)
!1808 = !DILocation(line: 421, column: 22, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !696, file: !4, discriminator: 1)
!1810 = !DILocation(line: 421, column: 32, scope: !696)
!1811 = !DILocation(line: 421, column: 62, scope: !696)
!1812 = !DILocation(line: 421, column: 75, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !696, file: !4, line: 421, column: 72)
!1814 = !DILocation(line: 421, column: 92, scope: !1813)
!1815 = !DILocation(line: 421, column: 72, scope: !1813)
!1816 = !DILocation(line: 421, column: 102, scope: !1813)
!1817 = !DILocation(line: 421, column: 72, scope: !696)
!1818 = !DILocation(line: 421, column: 72, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !696, file: !4, discriminator: 2)
!1820 = !DILocation(line: 421, column: 133, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1813, file: !4, discriminator: 3)
!1822 = !DILocation(line: 421, column: 151, scope: !1813)
!1823 = !DILocation(line: 421, column: 161, scope: !1813)
!1824 = !DILocation(line: 421, column: 186, scope: !1813)
!1825 = !DILocation(line: 421, column: 117, scope: !1813)
!1826 = !DILocation(line: 421, column: 205, scope: !1827)
!1827 = !DILexicalBlockFile(scope: !693, file: !4, discriminator: 4)
!1828 = !DILocation(line: 421, column: 205, scope: !696)
!1829 = !DILocation(line: 421, column: 205, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !696, file: !4, discriminator: 5)
!1831 = !DILocation(line: 422, column: 22, scope: !693)
!1832 = !DILocation(line: 422, column: 20, scope: !693)
!1833 = !DILocation(line: 424, column: 40, scope: !693)
!1834 = !DILocation(line: 424, column: 44, scope: !693)
!1835 = !DILocation(line: 424, column: 24, scope: !693)
!1836 = !DILocation(line: 424, column: 22, scope: !693)
!1837 = !DILocation(line: 425, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !693, file: !4, line: 425, column: 21)
!1839 = !DILocation(line: 425, column: 26, scope: !1838)
!1840 = !DILocation(line: 425, column: 21, scope: !693)
!1841 = !DILocation(line: 426, column: 21, scope: !1838)
!1842 = !DILocation(line: 427, column: 17, scope: !693)
!1843 = !DILocation(line: 427, column: 22, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !698, file: !4, discriminator: 1)
!1845 = !DILocation(line: 427, column: 32, scope: !698)
!1846 = !DILocation(line: 427, column: 62, scope: !698)
!1847 = !DILocation(line: 427, column: 75, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !698, file: !4, line: 427, column: 72)
!1849 = !DILocation(line: 427, column: 92, scope: !1848)
!1850 = !DILocation(line: 427, column: 72, scope: !1848)
!1851 = !DILocation(line: 427, column: 102, scope: !1848)
!1852 = !DILocation(line: 427, column: 72, scope: !698)
!1853 = !DILocation(line: 427, column: 72, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !698, file: !4, discriminator: 2)
!1855 = !DILocation(line: 427, column: 133, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1848, file: !4, discriminator: 3)
!1857 = !DILocation(line: 427, column: 151, scope: !1848)
!1858 = !DILocation(line: 427, column: 161, scope: !1848)
!1859 = !DILocation(line: 427, column: 186, scope: !1848)
!1860 = !DILocation(line: 427, column: 117, scope: !1848)
!1861 = !DILocation(line: 427, column: 205, scope: !1827)
!1862 = !DILocation(line: 427, column: 205, scope: !698)
!1863 = !DILocation(line: 427, column: 205, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !698, file: !4, discriminator: 5)
!1865 = !DILocation(line: 428, column: 22, scope: !693)
!1866 = !DILocation(line: 428, column: 20, scope: !693)
!1867 = !DILocation(line: 430, column: 36, scope: !693)
!1868 = !DILocation(line: 430, column: 40, scope: !693)
!1869 = !DILocation(line: 430, column: 24, scope: !693)
!1870 = !DILocation(line: 430, column: 22, scope: !693)
!1871 = !DILocation(line: 431, column: 21, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !693, file: !4, line: 431, column: 21)
!1873 = !DILocation(line: 431, column: 26, scope: !1872)
!1874 = !DILocation(line: 431, column: 21, scope: !693)
!1875 = !DILocation(line: 432, column: 21, scope: !1872)
!1876 = !DILocation(line: 433, column: 17, scope: !693)
!1877 = !DILocation(line: 433, column: 22, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !700, file: !4, discriminator: 1)
!1879 = !DILocation(line: 433, column: 32, scope: !700)
!1880 = !DILocation(line: 433, column: 62, scope: !700)
!1881 = !DILocation(line: 433, column: 75, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !700, file: !4, line: 433, column: 72)
!1883 = !DILocation(line: 433, column: 92, scope: !1882)
!1884 = !DILocation(line: 433, column: 72, scope: !1882)
!1885 = !DILocation(line: 433, column: 102, scope: !1882)
!1886 = !DILocation(line: 433, column: 72, scope: !700)
!1887 = !DILocation(line: 433, column: 72, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !700, file: !4, discriminator: 2)
!1889 = !DILocation(line: 433, column: 133, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1882, file: !4, discriminator: 3)
!1891 = !DILocation(line: 433, column: 151, scope: !1882)
!1892 = !DILocation(line: 433, column: 161, scope: !1882)
!1893 = !DILocation(line: 433, column: 186, scope: !1882)
!1894 = !DILocation(line: 433, column: 117, scope: !1882)
!1895 = !DILocation(line: 433, column: 205, scope: !1827)
!1896 = !DILocation(line: 433, column: 205, scope: !700)
!1897 = !DILocation(line: 433, column: 205, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !700, file: !4, discriminator: 5)
!1899 = !DILocation(line: 434, column: 22, scope: !693)
!1900 = !DILocation(line: 434, column: 20, scope: !693)
!1901 = !DILocation(line: 435, column: 13, scope: !694)
!1902 = !DILocation(line: 435, column: 13, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !694, file: !4, discriminator: 1)
!1904 = !DILocation(line: 435, column: 13, scope: !693)
!1905 = !DILocation(line: 437, column: 42, scope: !686)
!1906 = !DILocation(line: 437, column: 46, scope: !686)
!1907 = !DILocation(line: 437, column: 50, scope: !686)
!1908 = !DILocation(line: 437, column: 17, scope: !686)
!1909 = !DILocation(line: 437, column: 15, scope: !686)
!1910 = !DILocation(line: 438, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !686, file: !4, line: 438, column: 17)
!1912 = !DILocation(line: 438, column: 19, scope: !1911)
!1913 = !DILocation(line: 438, column: 17, scope: !686)
!1914 = !DILocation(line: 439, column: 17, scope: !1911)
!1915 = !DILocation(line: 440, column: 38, scope: !686)
!1916 = !DILocation(line: 440, column: 22, scope: !686)
!1917 = !DILocation(line: 440, column: 20, scope: !686)
!1918 = !DILocation(line: 440, column: 13, scope: !686)
!1919 = !DILocation(line: 442, column: 13, scope: !686)
!1920 = !DILocation(line: 442, column: 18, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !702, file: !4, discriminator: 1)
!1922 = !DILocation(line: 442, column: 28, scope: !702)
!1923 = !DILocation(line: 442, column: 59, scope: !702)
!1924 = !DILocation(line: 442, column: 68, scope: !705)
!1925 = !DILocation(line: 442, column: 84, scope: !705)
!1926 = !DILocation(line: 442, column: 68, scope: !702)
!1927 = !DILocation(line: 442, column: 99, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !705, file: !4, discriminator: 2)
!1929 = !DILocation(line: 442, column: 104, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 4)
!1931 = !DILocation(line: 442, column: 114, scope: !704)
!1932 = !DILocation(line: 442, column: 144, scope: !704)
!1933 = !DILocation(line: 442, column: 170, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !704, file: !4, line: 442, column: 167)
!1935 = !DILocation(line: 442, column: 187, scope: !1934)
!1936 = !DILocation(line: 442, column: 167, scope: !1934)
!1937 = !DILocation(line: 442, column: 197, scope: !1934)
!1938 = !DILocation(line: 442, column: 167, scope: !704)
!1939 = !DILocation(line: 442, column: 167, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 5)
!1941 = !DILocation(line: 442, column: 228, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1934, file: !4, discriminator: 6)
!1943 = !DILocation(line: 442, column: 246, scope: !1934)
!1944 = !DILocation(line: 442, column: 256, scope: !1934)
!1945 = !DILocation(line: 442, column: 281, scope: !1934)
!1946 = !DILocation(line: 442, column: 212, scope: !1934)
!1947 = !DILocation(line: 442, column: 300, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !705, file: !4, discriminator: 7)
!1949 = !DILocation(line: 442, column: 300, scope: !704)
!1950 = !DILocation(line: 442, column: 300, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 8)
!1952 = !DILocation(line: 442, column: 300, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 9)
!1954 = !DILocation(line: 442, column: 313, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !4, discriminator: 10)
!1956 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 3)
!1957 = !DILocation(line: 442, column: 313, scope: !702)
!1958 = !DILocation(line: 442, column: 313, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !702, file: !4, discriminator: 11)
!1960 = !DILocation(line: 443, column: 13, scope: !686)
!1961 = !DILocation(line: 443, column: 18, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !707, file: !4, discriminator: 1)
!1963 = !DILocation(line: 443, column: 28, scope: !707)
!1964 = !DILocation(line: 443, column: 59, scope: !707)
!1965 = !DILocation(line: 443, column: 68, scope: !710)
!1966 = !DILocation(line: 443, column: 84, scope: !710)
!1967 = !DILocation(line: 443, column: 68, scope: !707)
!1968 = !DILocation(line: 443, column: 99, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !710, file: !4, discriminator: 2)
!1970 = !DILocation(line: 443, column: 104, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 4)
!1972 = !DILocation(line: 443, column: 114, scope: !709)
!1973 = !DILocation(line: 443, column: 144, scope: !709)
!1974 = !DILocation(line: 443, column: 170, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !709, file: !4, line: 443, column: 167)
!1976 = !DILocation(line: 443, column: 187, scope: !1975)
!1977 = !DILocation(line: 443, column: 167, scope: !1975)
!1978 = !DILocation(line: 443, column: 197, scope: !1975)
!1979 = !DILocation(line: 443, column: 167, scope: !709)
!1980 = !DILocation(line: 443, column: 167, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 5)
!1982 = !DILocation(line: 443, column: 228, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1975, file: !4, discriminator: 6)
!1984 = !DILocation(line: 443, column: 246, scope: !1975)
!1985 = !DILocation(line: 443, column: 256, scope: !1975)
!1986 = !DILocation(line: 443, column: 281, scope: !1975)
!1987 = !DILocation(line: 443, column: 212, scope: !1975)
!1988 = !DILocation(line: 443, column: 300, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !710, file: !4, discriminator: 7)
!1990 = !DILocation(line: 443, column: 300, scope: !709)
!1991 = !DILocation(line: 443, column: 300, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 8)
!1993 = !DILocation(line: 443, column: 300, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 9)
!1995 = !DILocation(line: 443, column: 313, scope: !1955)
!1996 = !DILocation(line: 443, column: 313, scope: !707)
!1997 = !DILocation(line: 443, column: 313, scope: !1998)
!1998 = !DILexicalBlockFile(scope: !707, file: !4, discriminator: 11)
!1999 = !DILocation(line: 444, column: 13, scope: !686)
!2000 = !DILocation(line: 444, column: 18, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !712, file: !4, discriminator: 1)
!2002 = !DILocation(line: 444, column: 28, scope: !712)
!2003 = !DILocation(line: 444, column: 59, scope: !712)
!2004 = !DILocation(line: 444, column: 69, scope: !715)
!2005 = !DILocation(line: 444, column: 85, scope: !715)
!2006 = !DILocation(line: 444, column: 69, scope: !712)
!2007 = !DILocation(line: 444, column: 100, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !715, file: !4, discriminator: 2)
!2009 = !DILocation(line: 444, column: 105, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 4)
!2011 = !DILocation(line: 444, column: 115, scope: !714)
!2012 = !DILocation(line: 444, column: 145, scope: !714)
!2013 = !DILocation(line: 444, column: 171, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !714, file: !4, line: 444, column: 168)
!2015 = !DILocation(line: 444, column: 188, scope: !2014)
!2016 = !DILocation(line: 444, column: 168, scope: !2014)
!2017 = !DILocation(line: 444, column: 198, scope: !2014)
!2018 = !DILocation(line: 444, column: 168, scope: !714)
!2019 = !DILocation(line: 444, column: 168, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 5)
!2021 = !DILocation(line: 444, column: 229, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2014, file: !4, discriminator: 6)
!2023 = !DILocation(line: 444, column: 247, scope: !2014)
!2024 = !DILocation(line: 444, column: 257, scope: !2014)
!2025 = !DILocation(line: 444, column: 282, scope: !2014)
!2026 = !DILocation(line: 444, column: 213, scope: !2014)
!2027 = !DILocation(line: 444, column: 301, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !715, file: !4, discriminator: 7)
!2029 = !DILocation(line: 444, column: 301, scope: !714)
!2030 = !DILocation(line: 444, column: 301, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 8)
!2032 = !DILocation(line: 444, column: 301, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 9)
!2034 = !DILocation(line: 444, column: 314, scope: !1955)
!2035 = !DILocation(line: 444, column: 314, scope: !712)
!2036 = !DILocation(line: 444, column: 314, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !712, file: !4, discriminator: 11)
!2038 = !DILocation(line: 445, column: 20, scope: !686)
!2039 = !DILocation(line: 445, column: 13, scope: !686)
!2040 = !DILocation(line: 446, column: 9, scope: !678)
!2041 = !DILocation(line: 447, column: 5, scope: !679)
!2042 = !DILocation(line: 450, column: 9, scope: !679)
!2043 = !DILocation(line: 306, column: 122, scope: !681)
!2044 = !DILocation(line: 454, column: 13, scope: !669)
!2045 = !DILocation(line: 454, column: 5, scope: !669)
!2046 = !DILocation(line: 456, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !669, file: !4, line: 454, column: 17)
!2048 = !DILocation(line: 456, column: 18, scope: !2047)
!2049 = !DILocation(line: 456, column: 15, scope: !2047)
!2050 = !DILocation(line: 456, column: 11, scope: !2047)
!2051 = !DILocation(line: 457, column: 9, scope: !2047)
!2052 = !DILocation(line: 459, column: 13, scope: !2047)
!2053 = !DILocation(line: 459, column: 18, scope: !2047)
!2054 = !DILocation(line: 459, column: 15, scope: !2047)
!2055 = !DILocation(line: 459, column: 11, scope: !2047)
!2056 = !DILocation(line: 460, column: 9, scope: !2047)
!2057 = !DILocation(line: 462, column: 13, scope: !2047)
!2058 = !DILocation(line: 462, column: 18, scope: !2047)
!2059 = !DILocation(line: 462, column: 15, scope: !2047)
!2060 = !DILocation(line: 462, column: 11, scope: !2047)
!2061 = !DILocation(line: 463, column: 9, scope: !2047)
!2062 = !DILocation(line: 465, column: 13, scope: !2047)
!2063 = !DILocation(line: 465, column: 18, scope: !2047)
!2064 = !DILocation(line: 465, column: 15, scope: !2047)
!2065 = !DILocation(line: 465, column: 11, scope: !2047)
!2066 = !DILocation(line: 466, column: 9, scope: !2047)
!2067 = !DILocation(line: 468, column: 13, scope: !2047)
!2068 = !DILocation(line: 468, column: 17, scope: !2047)
!2069 = !DILocation(line: 468, column: 15, scope: !2047)
!2070 = !DILocation(line: 468, column: 11, scope: !2047)
!2071 = !DILocation(line: 469, column: 9, scope: !2047)
!2072 = !DILocation(line: 471, column: 13, scope: !2047)
!2073 = !DILocation(line: 471, column: 17, scope: !2047)
!2074 = !DILocation(line: 471, column: 15, scope: !2047)
!2075 = !DILocation(line: 471, column: 11, scope: !2047)
!2076 = !DILocation(line: 472, column: 9, scope: !2047)
!2077 = !DILocation(line: 475, column: 28, scope: !669)
!2078 = !DILocation(line: 475, column: 12, scope: !669)
!2079 = !DILocation(line: 475, column: 5, scope: !669)
!2080 = !DILocation(line: 478, column: 68, scope: !669)
!2081 = !DILocation(line: 478, column: 5, scope: !669)
!2082 = !DILocation(line: 479, column: 1, scope: !669)
!2083 = !DILocation(line: 1518, column: 25, scope: !938)
!2084 = !DILocation(line: 1518, column: 41, scope: !938)
!2085 = !DILocation(line: 1518, column: 57, scope: !938)
!2086 = !DILocation(line: 1520, column: 5, scope: !938)
!2087 = !DILocation(line: 1520, column: 15, scope: !938)
!2088 = !DILocation(line: 1523, column: 9, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1523, column: 9)
!2090 = !DILocation(line: 1523, column: 14, scope: !2089)
!2091 = !DILocation(line: 1523, column: 9, scope: !938)
!2092 = !DILocation(line: 1524, column: 34, scope: !2089)
!2093 = !DILocation(line: 1524, column: 40, scope: !2089)
!2094 = !DILocation(line: 1524, column: 46, scope: !2089)
!2095 = !DILocation(line: 1524, column: 16, scope: !2089)
!2096 = !DILocation(line: 1524, column: 9, scope: !2089)
!2097 = !DILocation(line: 1525, column: 38, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1525, column: 9)
!2099 = !DILocation(line: 1525, column: 44, scope: !2098)
!2100 = !DILocation(line: 1525, column: 10, scope: !2098)
!2101 = !DILocation(line: 1525, column: 9, scope: !938)
!2102 = !DILocation(line: 1526, column: 9, scope: !2098)
!2103 = !DILocation(line: 1529, column: 24, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !938, file: !4, line: 1529, column: 9)
!2105 = !DILocation(line: 1529, column: 29, scope: !2104)
!2106 = !DILocation(line: 1529, column: 38, scope: !2104)
!2107 = !DILocation(line: 1529, column: 9, scope: !938)
!2108 = !DILocation(line: 1530, column: 35, scope: !2104)
!2109 = !DILocation(line: 1530, column: 16, scope: !2104)
!2110 = !DILocation(line: 1530, column: 9, scope: !2104)
!2111 = !DILocation(line: 1531, column: 27, scope: !938)
!2112 = !DILocation(line: 1531, column: 12, scope: !938)
!2113 = !DILocation(line: 1531, column: 5, scope: !938)
!2114 = !DILocation(line: 1532, column: 1, scope: !938)
!2115 = !DILocation(line: 1877, column: 9, scope: !459)
!2116 = !DILocation(line: 1877, column: 16, scope: !459)
!2117 = !DILocation(line: 1878, column: 20, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !459, file: !4, line: 1878, column: 13)
!2119 = !DILocation(line: 1878, column: 13, scope: !2118)
!2120 = !DILocation(line: 1878, column: 63, scope: !2118)
!2121 = !DILocation(line: 1878, column: 13, scope: !459)
!2122 = !DILocation(line: 1879, column: 36, scope: !2118)
!2123 = !DILocation(line: 1879, column: 13, scope: !2118)
!2124 = !DILocation(line: 1880, column: 25, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2118, file: !4, line: 1880, column: 18)
!2126 = !DILocation(line: 1880, column: 18, scope: !2125)
!2127 = !DILocation(line: 1880, column: 68, scope: !2125)
!2128 = !DILocation(line: 1880, column: 18, scope: !2118)
!2129 = !DILocation(line: 1881, column: 36, scope: !2125)
!2130 = !DILocation(line: 1881, column: 13, scope: !2125)
!2131 = !DILocation(line: 1883, column: 36, scope: !2125)
!2132 = !DILocation(line: 1884, column: 5, scope: !454)
!2133 = !DILocation(line: 1891, column: 9, scope: !461)
!2134 = !DILocation(line: 1891, column: 15, scope: !461)
!2135 = !{!2136, !2136, i64 0}
!2136 = !{!"float", !1044, i64 0}
!2137 = !DILocation(line: 1892, column: 20, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !461, file: !4, line: 1892, column: 13)
!2139 = !DILocation(line: 1892, column: 13, scope: !2138)
!2140 = !DILocation(line: 1892, column: 47, scope: !2138)
!2141 = !DILocation(line: 1892, column: 13, scope: !461)
!2142 = !DILocation(line: 1893, column: 35, scope: !2138)
!2143 = !DILocation(line: 1893, column: 13, scope: !2138)
!2144 = !DILocation(line: 1894, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !4, line: 1894, column: 18)
!2146 = !DILocation(line: 1894, column: 18, scope: !2145)
!2147 = !DILocation(line: 1894, column: 52, scope: !2145)
!2148 = !DILocation(line: 1894, column: 18, scope: !2138)
!2149 = !DILocation(line: 1895, column: 35, scope: !2145)
!2150 = !DILocation(line: 1895, column: 13, scope: !2145)
!2151 = !DILocation(line: 1897, column: 35, scope: !2145)
!2152 = !DILocation(line: 1898, column: 5, scope: !454)
!2153 = !DILocation(line: 1903, column: 21, scope: !454)
!2154 = !DILocation(line: 1903, column: 19, scope: !454)
!2155 = !DILocation(line: 1904, column: 20, scope: !454)
!2156 = !DILocation(line: 1904, column: 18, scope: !454)
!2157 = !DILocation(line: 1907, column: 23, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !454, file: !4, line: 1907, column: 9)
!2159 = !DILocation(line: 1907, column: 31, scope: !2158)
!2160 = !DILocation(line: 1907, column: 9, scope: !454)
!2161 = !DILocation(line: 1908, column: 13, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !4, line: 1908, column: 13)
!2163 = distinct !DILexicalBlock(scope: !2158, file: !4, line: 1907, column: 46)
!2164 = !DILocation(line: 1908, column: 73, scope: !2162)
!2165 = !DILocation(line: 1908, column: 13, scope: !2163)
!2166 = !DILocation(line: 1909, column: 13, scope: !2162)
!2167 = !DILocation(line: 1910, column: 5, scope: !2163)
!2168 = !DILocation(line: 1911, column: 5, scope: !454)
!2169 = !DILocation(line: 1912, column: 1, scope: !454)
!2170 = !DILocation(line: 1917, column: 5, scope: !462)
!2171 = !DILocation(line: 1917, column: 20, scope: !462)
!2172 = !DILocation(line: 1917, column: 24, scope: !462)
!2173 = !DILocation(line: 1917, column: 36, scope: !462)
!2174 = !DILocation(line: 1918, column: 5, scope: !462)
!2175 = !DILocation(line: 1918, column: 9, scope: !462)
!2176 = !DILocation(line: 1918, column: 13, scope: !462)
!2177 = !DILocation(line: 1919, column: 5, scope: !462)
!2178 = !DILocation(line: 1919, column: 12, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2180, file: !4, discriminator: 2)
!2180 = !DILexicalBlockFile(scope: !462, file: !4, discriminator: 1)
!2181 = !DILocation(line: 1920, column: 47, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !462, file: !4, line: 1919, column: 15)
!2183 = !DILocation(line: 1920, column: 35, scope: !2182)
!2184 = !DILocation(line: 1920, column: 52, scope: !2182)
!2185 = !DILocation(line: 1920, column: 16, scope: !2182)
!2186 = !DILocation(line: 1920, column: 14, scope: !2182)
!2187 = !DILocation(line: 1921, column: 23, scope: !2182)
!2188 = !DILocation(line: 1921, column: 9, scope: !2182)
!2189 = !DILocation(line: 1922, column: 13, scope: !2182)
!2190 = !DILocation(line: 1922, column: 11, scope: !2182)
!2191 = !DILocation(line: 1924, column: 15, scope: !462)
!2192 = !DILocation(line: 1925, column: 13, scope: !462)
!2193 = !DILocation(line: 1926, column: 12, scope: !462)
!2194 = !DILocation(line: 1927, column: 1, scope: !462)
!2195 = !DILocation(line: 1926, column: 5, scope: !462)
!2196 = !DILocation(line: 1932, column: 11, scope: !467)
!2197 = !DILocation(line: 1933, column: 1, scope: !467)
!2198 = !DILocation(line: 1937, column: 33, scope: !470)
!2199 = !DILocation(line: 1939, column: 28, scope: !470)
!2200 = !DILocation(line: 1941, column: 28, scope: !470)
!2201 = !DILocation(line: 1939, column: 5, scope: !470)
!2202 = !DILocation(line: 1942, column: 1, scope: !470)
!2203 = !DILocation(line: 1949, column: 23, scope: !475)
!2204 = !DILocation(line: 1949, column: 41, scope: !475)
!2205 = !DILocation(line: 1949, column: 48, scope: !475)
!2206 = !DILocation(line: 1951, column: 9, scope: !485)
!2207 = !DILocation(line: 1951, column: 22, scope: !485)
!2208 = !DILocation(line: 1951, column: 9, scope: !475)
!2209 = !DILocation(line: 1952, column: 9, scope: !484)
!2210 = !DILocation(line: 1952, column: 23, scope: !484)
!2211 = !DILocation(line: 1953, column: 9, scope: !484)
!2212 = !DILocation(line: 1953, column: 13, scope: !484)
!2213 = !DILocation(line: 1954, column: 9, scope: !484)
!2214 = !DILocation(line: 1954, column: 16, scope: !484)
!2215 = !DILocation(line: 1955, column: 9, scope: !484)
!2216 = !DILocation(line: 1955, column: 22, scope: !484)
!2217 = !DILocation(line: 1956, column: 9, scope: !484)
!2218 = !DILocation(line: 1956, column: 13, scope: !484)
!2219 = !DILocation(line: 1958, column: 13, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !484, file: !4, line: 1958, column: 13)
!2221 = !DILocation(line: 1958, column: 13, scope: !484)
!2222 = !DILocation(line: 1959, column: 15, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2220, file: !4, line: 1958, column: 17)
!2224 = !DILocation(line: 1960, column: 18, scope: !2223)
!2225 = !DILocation(line: 1961, column: 9, scope: !2223)
!2226 = !DILocation(line: 1963, column: 13, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !484, file: !4, line: 1963, column: 13)
!2228 = !DILocation(line: 1963, column: 15, scope: !2227)
!2229 = !DILocation(line: 1963, column: 13, scope: !484)
!2230 = !DILocation(line: 1964, column: 18, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !4, line: 1963, column: 20)
!2232 = !DILocation(line: 1965, column: 18, scope: !2231)
!2233 = !DILocation(line: 1965, column: 17, scope: !2231)
!2234 = !DILocation(line: 1965, column: 15, scope: !2231)
!2235 = !DILocation(line: 1966, column: 9, scope: !2231)
!2236 = !DILocation(line: 1968, column: 18, scope: !2227)
!2237 = !DILocation(line: 1970, column: 19, scope: !484)
!2238 = !DILocation(line: 1970, column: 13, scope: !484)
!2239 = !DILocation(line: 1970, column: 11, scope: !484)
!2240 = !DILocation(line: 1973, column: 20, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !484, file: !4, line: 1973, column: 13)
!2242 = !DILocation(line: 1973, column: 17, scope: !2241)
!2243 = !DILocation(line: 1973, column: 22, scope: !2241)
!2244 = !DILocation(line: 1973, column: 25, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2241, file: !4, discriminator: 1)
!2246 = !DILocation(line: 1973, column: 27, scope: !2241)
!2247 = !DILocation(line: 1973, column: 13, scope: !484)
!2248 = !DILocation(line: 1974, column: 15, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2241, file: !4, line: 1973, column: 34)
!2250 = !DILocation(line: 1975, column: 14, scope: !2249)
!2251 = !DILocation(line: 1976, column: 9, scope: !2249)
!2252 = !DILocation(line: 1977, column: 18, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2241, file: !4, line: 1977, column: 18)
!2254 = !DILocation(line: 1977, column: 20, scope: !2253)
!2255 = !DILocation(line: 1977, column: 18, scope: !2241)
!2256 = !DILocation(line: 1978, column: 15, scope: !2253)
!2257 = !DILocation(line: 1978, column: 13, scope: !2253)
!2258 = !DILocation(line: 1980, column: 29, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !4, line: 1979, column: 14)
!2260 = !DILocation(line: 1980, column: 13, scope: !2259)
!2261 = !DILocation(line: 1982, column: 13, scope: !2259)
!2262 = !DILocation(line: 1985, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !484, file: !4, line: 1985, column: 13)
!2264 = !DILocation(line: 1985, column: 15, scope: !2263)
!2265 = !DILocation(line: 1985, column: 13, scope: !484)
!2266 = !DILocation(line: 1986, column: 13, scope: !2263)
!2267 = !DILocation(line: 1987, column: 18, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2263, file: !4, line: 1987, column: 18)
!2269 = !DILocation(line: 1987, column: 20, scope: !2268)
!2270 = !DILocation(line: 1987, column: 18, scope: !2263)
!2271 = !DILocation(line: 1989, column: 23, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !4, line: 1987, column: 28)
!2273 = !DILocation(line: 1989, column: 32, scope: !2272)
!2274 = !DILocation(line: 1989, column: 30, scope: !2272)
!2275 = !DILocation(line: 1989, column: 17, scope: !2272)
!2276 = !DILocation(line: 1989, column: 15, scope: !2272)
!2277 = !DILocation(line: 1990, column: 15, scope: !2272)
!2278 = !DILocation(line: 1991, column: 9, scope: !2272)
!2279 = !DILocation(line: 1992, column: 20, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2268, file: !4, line: 1992, column: 18)
!2281 = !DILocation(line: 1992, column: 22, scope: !2280)
!2282 = !DILocation(line: 1992, column: 27, scope: !2280)
!2283 = !DILocation(line: 1992, column: 30, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !2280, file: !4, discriminator: 1)
!2285 = !DILocation(line: 1992, column: 32, scope: !2280)
!2286 = !DILocation(line: 1992, column: 18, scope: !2268)
!2287 = !DILocation(line: 1993, column: 15, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2280, file: !4, line: 1992, column: 41)
!2289 = !DILocation(line: 1994, column: 15, scope: !2288)
!2290 = !DILocation(line: 1995, column: 9, scope: !2288)
!2291 = !DILocation(line: 1997, column: 11, scope: !484)
!2292 = !DILocation(line: 1998, column: 32, scope: !484)
!2293 = !DILocation(line: 1998, column: 34, scope: !484)
!2294 = !DILocation(line: 1998, column: 17, scope: !484)
!2295 = !DILocation(line: 1998, column: 15, scope: !484)
!2296 = !DILocation(line: 2000, column: 13, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !484, file: !4, line: 2000, column: 13)
!2298 = !DILocation(line: 2000, column: 19, scope: !2297)
!2299 = !DILocation(line: 2000, column: 13, scope: !484)
!2300 = !DILocation(line: 2002, column: 19, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2297, file: !4, line: 2000, column: 26)
!2302 = !DILocation(line: 2003, column: 13, scope: !2301)
!2303 = !DILocation(line: 2004, column: 17, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2301, file: !4, line: 2004, column: 17)
!2305 = !DILocation(line: 2004, column: 19, scope: !2304)
!2306 = !DILocation(line: 2004, column: 17, scope: !2301)
!2307 = !DILocation(line: 2005, column: 17, scope: !2304)
!2308 = !DILocation(line: 2006, column: 9, scope: !2301)
!2309 = !DILocation(line: 2009, column: 15, scope: !484)
!2310 = !DILocation(line: 2009, column: 20, scope: !484)
!2311 = !DILocation(line: 2009, column: 29, scope: !484)
!2312 = !DILocation(line: 2009, column: 31, scope: !484)
!2313 = !DILocation(line: 2009, column: 26, scope: !484)
!2314 = !DILocation(line: 2009, column: 14, scope: !484)
!2315 = !DILocation(line: 2009, column: 10, scope: !484)
!2316 = !DILocation(line: 2009, column: 12, scope: !484)
!2317 = !DILocation(line: 2010, column: 14, scope: !484)
!2318 = !DILocation(line: 2010, column: 11, scope: !484)
!2319 = !DILocation(line: 2013, column: 24, scope: !484)
!2320 = !DILocation(line: 2013, column: 26, scope: !484)
!2321 = !DILocation(line: 2013, column: 31, scope: !484)
!2322 = !DILocation(line: 2013, column: 40, scope: !484)
!2323 = !DILocation(line: 2013, column: 46, scope: !484)
!2324 = !DILocation(line: 2013, column: 37, scope: !484)
!2325 = !DILocation(line: 2013, column: 14, scope: !484)
!2326 = !DILocation(line: 2013, column: 10, scope: !484)
!2327 = !DILocation(line: 2013, column: 12, scope: !484)
!2328 = !DILocation(line: 2014, column: 14, scope: !484)
!2329 = !DILocation(line: 2014, column: 11, scope: !484)
!2330 = !DILocation(line: 2017, column: 15, scope: !484)
!2331 = !DILocation(line: 2017, column: 21, scope: !484)
!2332 = !DILocation(line: 2017, column: 27, scope: !484)
!2333 = !DILocation(line: 2017, column: 14, scope: !484)
!2334 = !DILocation(line: 2017, column: 10, scope: !484)
!2335 = !DILocation(line: 2017, column: 12, scope: !484)
!2336 = !DILocation(line: 2018, column: 14, scope: !484)
!2337 = !DILocation(line: 2018, column: 11, scope: !484)
!2338 = !DILocation(line: 2021, column: 14, scope: !484)
!2339 = !DILocation(line: 2021, column: 20, scope: !484)
!2340 = !DILocation(line: 2021, column: 10, scope: !484)
!2341 = !DILocation(line: 2021, column: 12, scope: !484)
!2342 = !DILocation(line: 2024, column: 9, scope: !484)
!2343 = !DILocation(line: 2026, column: 5, scope: !485)
!2344 = !DILocation(line: 2028, column: 9, scope: !491)
!2345 = !DILocation(line: 2028, column: 15, scope: !491)
!2346 = !DILocation(line: 2028, column: 26, scope: !491)
!2347 = !DILocation(line: 2028, column: 19, scope: !491)
!2348 = !DILocation(line: 2029, column: 9, scope: !491)
!2349 = !DILocation(line: 2029, column: 21, scope: !491)
!2350 = !DILocation(line: 2029, column: 25, scope: !491)
!2351 = !DILocation(line: 2030, column: 9, scope: !491)
!2352 = !DILocation(line: 2030, column: 13, scope: !491)
!2353 = !DILocation(line: 2030, column: 16, scope: !491)
!2354 = !DILocation(line: 2032, column: 120, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !491, file: !4, line: 2032, column: 13)
!2356 = !DILocation(line: 2032, column: 55, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 1)
!2358 = !DILocation(line: 2032, column: 45, scope: !2355)
!2359 = !DILocation(line: 2032, column: 14, scope: !2355)
!2360 = !DILocation(line: 2032, column: 120, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 2)
!2362 = !DILocation(line: 2032, column: 101, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 4)
!2364 = !DILocation(line: 2032, column: 92, scope: !2355)
!2365 = !DILocation(line: 2032, column: 60, scope: !2355)
!2366 = !DILocation(line: 2032, column: 116, scope: !2367)
!2367 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 5)
!2368 = !DILocation(line: 2032, column: 106, scope: !2355)
!2369 = !DILocation(line: 2032, column: 13, scope: !2370)
!2370 = !DILexicalBlockFile(scope: !2371, file: !4, discriminator: 7)
!2371 = !DILexicalBlockFile(scope: !2372, file: !4, discriminator: 6)
!2372 = !DILexicalBlockFile(scope: !491, file: !4, discriminator: 3)
!2373 = !DILocation(line: 2032, column: 166, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 8)
!2375 = !DILocation(line: 2032, column: 156, scope: !2355)
!2376 = !DILocation(line: 2032, column: 125, scope: !2355)
!2377 = !DILocation(line: 2032, column: 13, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !491, file: !4, discriminator: 9)
!2379 = !DILocation(line: 2032, column: 212, scope: !2380)
!2380 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 10)
!2381 = !DILocation(line: 2032, column: 203, scope: !2355)
!2382 = !DILocation(line: 2032, column: 171, scope: !2355)
!2383 = !DILocation(line: 2032, column: 227, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2355, file: !4, discriminator: 11)
!2385 = !DILocation(line: 2032, column: 217, scope: !2355)
!2386 = !DILocation(line: 2032, column: 13, scope: !491)
!2387 = !DILocation(line: 2033, column: 13, scope: !2355)
!2388 = !DILocation(line: 2035, column: 14, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !491, file: !4, line: 2035, column: 13)
!2390 = !DILocation(line: 2035, column: 27, scope: !2389)
!2391 = !DILocation(line: 2035, column: 56, scope: !2389)
!2392 = !DILocation(line: 2035, column: 60, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2389, file: !4, discriminator: 1)
!2394 = !DILocation(line: 2036, column: 13, scope: !2389)
!2395 = !DILocation(line: 2036, column: 17, scope: !2393)
!2396 = !DILocation(line: 2036, column: 30, scope: !2389)
!2397 = !DILocation(line: 2036, column: 56, scope: !2389)
!2398 = !DILocation(line: 2036, column: 59, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2389, file: !4, discriminator: 2)
!2400 = !DILocation(line: 2035, column: 13, scope: !491)
!2401 = !DILocation(line: 2037, column: 15, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2389, file: !4, line: 2036, column: 64)
!2403 = !DILocation(line: 2038, column: 18, scope: !2402)
!2404 = !DILocation(line: 2039, column: 9, scope: !2402)
!2405 = !DILocation(line: 2041, column: 16, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !491, file: !4, line: 2041, column: 9)
!2407 = !DILocation(line: 2041, column: 14, scope: !2406)
!2408 = !DILocation(line: 2041, column: 21, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !4, discriminator: 2)
!2410 = !DILexicalBlockFile(scope: !2411, file: !4, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !4, line: 2041, column: 9)
!2412 = !DILocation(line: 2041, column: 23, scope: !2411)
!2413 = !DILocation(line: 2041, column: 9, scope: !2406)
!2414 = !DILocation(line: 2042, column: 20, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !4, line: 2041, column: 33)
!2416 = !DILocation(line: 2042, column: 18, scope: !2415)
!2417 = !DILocation(line: 2042, column: 14, scope: !2415)
!2418 = !DILocation(line: 2042, column: 16, scope: !2415)
!2419 = !DILocation(line: 2043, column: 18, scope: !2415)
!2420 = !DILocation(line: 2043, column: 15, scope: !2415)
!2421 = !DILocation(line: 2044, column: 9, scope: !2415)
!2422 = !DILocation(line: 2041, column: 29, scope: !2411)
!2423 = !DILocation(line: 2041, column: 9, scope: !2411)
!2424 = !DILocation(line: 2045, column: 9, scope: !491)
!2425 = !DILocation(line: 2046, column: 5, scope: !485)
!2426 = !DILocation(line: 2048, column: 21, scope: !475)
!2427 = !DILocation(line: 2048, column: 5, scope: !475)
!2428 = !DILocation(line: 2050, column: 5, scope: !475)
!2429 = !DILocation(line: 2051, column: 1, scope: !475)
!2430 = !DILocation(line: 2054, column: 23, scope: !495)
!2431 = !DILocation(line: 2054, column: 41, scope: !495)
!2432 = !DILocation(line: 2054, column: 48, scope: !495)
!2433 = !DILocation(line: 2056, column: 9, scope: !502)
!2434 = !DILocation(line: 2056, column: 23, scope: !502)
!2435 = !DILocation(line: 2056, column: 9, scope: !495)
!2436 = !DILocation(line: 2057, column: 9, scope: !501)
!2437 = !DILocation(line: 2057, column: 23, scope: !501)
!2438 = !DILocation(line: 2058, column: 9, scope: !501)
!2439 = !DILocation(line: 2058, column: 13, scope: !501)
!2440 = !DILocation(line: 2059, column: 9, scope: !501)
!2441 = !DILocation(line: 2059, column: 16, scope: !501)
!2442 = !DILocation(line: 2060, column: 9, scope: !501)
!2443 = !DILocation(line: 2060, column: 22, scope: !501)
!2444 = !DILocation(line: 2060, column: 27, scope: !501)
!2445 = !DILocation(line: 2061, column: 9, scope: !501)
!2446 = !DILocation(line: 2061, column: 13, scope: !501)
!2447 = !DILocation(line: 2063, column: 13, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !501, file: !4, line: 2063, column: 13)
!2449 = !DILocation(line: 2063, column: 13, scope: !501)
!2450 = !DILocation(line: 2064, column: 15, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !4, line: 2063, column: 17)
!2452 = !DILocation(line: 2065, column: 18, scope: !2451)
!2453 = !DILocation(line: 2066, column: 9, scope: !2451)
!2454 = !DILocation(line: 2068, column: 13, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !501, file: !4, line: 2068, column: 13)
!2456 = !DILocation(line: 2068, column: 15, scope: !2455)
!2457 = !DILocation(line: 2068, column: 13, scope: !501)
!2458 = !DILocation(line: 2069, column: 18, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !4, line: 2068, column: 20)
!2460 = !DILocation(line: 2070, column: 18, scope: !2459)
!2461 = !DILocation(line: 2070, column: 17, scope: !2459)
!2462 = !DILocation(line: 2070, column: 15, scope: !2459)
!2463 = !DILocation(line: 2071, column: 9, scope: !2459)
!2464 = !DILocation(line: 2073, column: 18, scope: !2455)
!2465 = !DILocation(line: 2075, column: 19, scope: !501)
!2466 = !DILocation(line: 2075, column: 13, scope: !501)
!2467 = !DILocation(line: 2075, column: 11, scope: !501)
!2468 = !DILocation(line: 2078, column: 20, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !501, file: !4, line: 2078, column: 13)
!2470 = !DILocation(line: 2078, column: 17, scope: !2469)
!2471 = !DILocation(line: 2078, column: 22, scope: !2469)
!2472 = !DILocation(line: 2078, column: 25, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2469, file: !4, discriminator: 1)
!2474 = !DILocation(line: 2078, column: 27, scope: !2469)
!2475 = !DILocation(line: 2078, column: 13, scope: !501)
!2476 = !DILocation(line: 2079, column: 15, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2469, file: !4, line: 2078, column: 34)
!2478 = !DILocation(line: 2080, column: 14, scope: !2477)
!2479 = !DILocation(line: 2081, column: 9, scope: !2477)
!2480 = !DILocation(line: 2082, column: 18, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2469, file: !4, line: 2082, column: 18)
!2482 = !DILocation(line: 2082, column: 20, scope: !2481)
!2483 = !DILocation(line: 2082, column: 18, scope: !2469)
!2484 = !DILocation(line: 2083, column: 15, scope: !2481)
!2485 = !DILocation(line: 2083, column: 13, scope: !2481)
!2486 = !DILocation(line: 2085, column: 29, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2481, file: !4, line: 2084, column: 14)
!2488 = !DILocation(line: 2085, column: 13, scope: !2487)
!2489 = !DILocation(line: 2087, column: 13, scope: !2487)
!2490 = !DILocation(line: 2090, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !501, file: !4, line: 2090, column: 13)
!2492 = !DILocation(line: 2090, column: 15, scope: !2491)
!2493 = !DILocation(line: 2090, column: 13, scope: !501)
!2494 = !DILocation(line: 2091, column: 13, scope: !2491)
!2495 = !DILocation(line: 2092, column: 18, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2491, file: !4, line: 2092, column: 18)
!2497 = !DILocation(line: 2092, column: 20, scope: !2496)
!2498 = !DILocation(line: 2092, column: 18, scope: !2491)
!2499 = !DILocation(line: 2094, column: 23, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !4, line: 2092, column: 29)
!2501 = !DILocation(line: 2094, column: 33, scope: !2500)
!2502 = !DILocation(line: 2094, column: 31, scope: !2500)
!2503 = !DILocation(line: 2094, column: 17, scope: !2500)
!2504 = !DILocation(line: 2094, column: 15, scope: !2500)
!2505 = !DILocation(line: 2095, column: 15, scope: !2500)
!2506 = !DILocation(line: 2096, column: 9, scope: !2500)
!2507 = !DILocation(line: 2097, column: 20, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2496, file: !4, line: 2097, column: 18)
!2509 = !DILocation(line: 2097, column: 22, scope: !2508)
!2510 = !DILocation(line: 2097, column: 27, scope: !2508)
!2511 = !DILocation(line: 2097, column: 30, scope: !2512)
!2512 = !DILexicalBlockFile(scope: !2508, file: !4, discriminator: 1)
!2513 = !DILocation(line: 2097, column: 32, scope: !2508)
!2514 = !DILocation(line: 2097, column: 18, scope: !2496)
!2515 = !DILocation(line: 2098, column: 15, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2508, file: !4, line: 2097, column: 41)
!2517 = !DILocation(line: 2099, column: 15, scope: !2516)
!2518 = !DILocation(line: 2100, column: 9, scope: !2516)
!2519 = !DILocation(line: 2103, column: 11, scope: !501)
!2520 = !DILocation(line: 2104, column: 29, scope: !501)
!2521 = !DILocation(line: 2104, column: 15, scope: !501)
!2522 = !DILocation(line: 2104, column: 13, scope: !501)
!2523 = !DILocation(line: 2107, column: 22, scope: !501)
!2524 = !DILocation(line: 2107, column: 14, scope: !501)
!2525 = !DILocation(line: 2107, column: 11, scope: !501)
!2526 = !DILocation(line: 2108, column: 11, scope: !501)
!2527 = !DILocation(line: 2109, column: 30, scope: !501)
!2528 = !DILocation(line: 2109, column: 32, scope: !501)
!2529 = !DILocation(line: 2109, column: 15, scope: !501)
!2530 = !DILocation(line: 2109, column: 13, scope: !501)
!2531 = !DILocation(line: 2111, column: 13, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !501, file: !4, line: 2111, column: 13)
!2533 = !DILocation(line: 2111, column: 17, scope: !2532)
!2534 = !DILocation(line: 2111, column: 13, scope: !501)
!2535 = !DILocation(line: 2113, column: 17, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2532, file: !4, line: 2111, column: 24)
!2537 = !DILocation(line: 2114, column: 13, scope: !2536)
!2538 = !DILocation(line: 2115, column: 17, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2536, file: !4, line: 2115, column: 17)
!2540 = !DILocation(line: 2115, column: 21, scope: !2539)
!2541 = !DILocation(line: 2115, column: 17, scope: !2536)
!2542 = !DILocation(line: 2117, column: 21, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2539, file: !4, line: 2115, column: 28)
!2544 = !DILocation(line: 2118, column: 17, scope: !2543)
!2545 = !DILocation(line: 2119, column: 21, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2543, file: !4, line: 2119, column: 21)
!2547 = !DILocation(line: 2119, column: 23, scope: !2546)
!2548 = !DILocation(line: 2119, column: 21, scope: !2543)
!2549 = !DILocation(line: 2120, column: 21, scope: !2546)
!2550 = !DILocation(line: 2121, column: 13, scope: !2543)
!2551 = !DILocation(line: 2122, column: 9, scope: !2536)
!2552 = !DILocation(line: 2125, column: 15, scope: !501)
!2553 = !DILocation(line: 2125, column: 20, scope: !501)
!2554 = !DILocation(line: 2125, column: 29, scope: !501)
!2555 = !DILocation(line: 2125, column: 31, scope: !501)
!2556 = !DILocation(line: 2125, column: 26, scope: !501)
!2557 = !DILocation(line: 2125, column: 14, scope: !501)
!2558 = !DILocation(line: 2125, column: 10, scope: !501)
!2559 = !DILocation(line: 2125, column: 12, scope: !501)
!2560 = !DILocation(line: 2126, column: 14, scope: !501)
!2561 = !DILocation(line: 2126, column: 11, scope: !501)
!2562 = !DILocation(line: 2129, column: 33, scope: !501)
!2563 = !DILocation(line: 2129, column: 35, scope: !501)
!2564 = !DILocation(line: 2129, column: 42, scope: !501)
!2565 = !DILocation(line: 2129, column: 51, scope: !501)
!2566 = !DILocation(line: 2129, column: 55, scope: !501)
!2567 = !DILocation(line: 2129, column: 48, scope: !501)
!2568 = !DILocation(line: 2129, column: 14, scope: !501)
!2569 = !DILocation(line: 2129, column: 10, scope: !501)
!2570 = !DILocation(line: 2129, column: 12, scope: !501)
!2571 = !DILocation(line: 2130, column: 14, scope: !501)
!2572 = !DILocation(line: 2130, column: 11, scope: !501)
!2573 = !DILocation(line: 2133, column: 15, scope: !501)
!2574 = !DILocation(line: 2133, column: 19, scope: !501)
!2575 = !DILocation(line: 2133, column: 26, scope: !501)
!2576 = !DILocation(line: 2133, column: 14, scope: !501)
!2577 = !DILocation(line: 2133, column: 10, scope: !501)
!2578 = !DILocation(line: 2133, column: 12, scope: !501)
!2579 = !DILocation(line: 2134, column: 14, scope: !501)
!2580 = !DILocation(line: 2134, column: 11, scope: !501)
!2581 = !DILocation(line: 2137, column: 15, scope: !501)
!2582 = !DILocation(line: 2137, column: 19, scope: !501)
!2583 = !DILocation(line: 2137, column: 25, scope: !501)
!2584 = !DILocation(line: 2137, column: 14, scope: !501)
!2585 = !DILocation(line: 2137, column: 10, scope: !501)
!2586 = !DILocation(line: 2137, column: 12, scope: !501)
!2587 = !DILocation(line: 2138, column: 14, scope: !501)
!2588 = !DILocation(line: 2138, column: 11, scope: !501)
!2589 = !DILocation(line: 2141, column: 14, scope: !501)
!2590 = !DILocation(line: 2141, column: 18, scope: !501)
!2591 = !DILocation(line: 2141, column: 10, scope: !501)
!2592 = !DILocation(line: 2141, column: 12, scope: !501)
!2593 = !DILocation(line: 2142, column: 14, scope: !501)
!2594 = !DILocation(line: 2142, column: 11, scope: !501)
!2595 = !DILocation(line: 2145, column: 15, scope: !501)
!2596 = !DILocation(line: 2145, column: 19, scope: !501)
!2597 = !DILocation(line: 2145, column: 26, scope: !501)
!2598 = !DILocation(line: 2145, column: 14, scope: !501)
!2599 = !DILocation(line: 2145, column: 10, scope: !501)
!2600 = !DILocation(line: 2145, column: 12, scope: !501)
!2601 = !DILocation(line: 2146, column: 14, scope: !501)
!2602 = !DILocation(line: 2146, column: 11, scope: !501)
!2603 = !DILocation(line: 2149, column: 15, scope: !501)
!2604 = !DILocation(line: 2149, column: 19, scope: !501)
!2605 = !DILocation(line: 2149, column: 25, scope: !501)
!2606 = !DILocation(line: 2149, column: 14, scope: !501)
!2607 = !DILocation(line: 2149, column: 10, scope: !501)
!2608 = !DILocation(line: 2149, column: 12, scope: !501)
!2609 = !DILocation(line: 2150, column: 14, scope: !501)
!2610 = !DILocation(line: 2150, column: 11, scope: !501)
!2611 = !DILocation(line: 2153, column: 14, scope: !501)
!2612 = !DILocation(line: 2153, column: 18, scope: !501)
!2613 = !DILocation(line: 2153, column: 10, scope: !501)
!2614 = !DILocation(line: 2153, column: 12, scope: !501)
!2615 = !DILocation(line: 2157, column: 9, scope: !501)
!2616 = !DILocation(line: 2160, column: 25, scope: !501)
!2617 = !DILocation(line: 2160, column: 9, scope: !501)
!2618 = !DILocation(line: 2162, column: 9, scope: !501)
!2619 = !DILocation(line: 2163, column: 5, scope: !502)
!2620 = !DILocation(line: 2165, column: 9, scope: !509)
!2621 = !DILocation(line: 2165, column: 21, scope: !509)
!2622 = !DILocation(line: 2165, column: 25, scope: !509)
!2623 = !DILocation(line: 2166, column: 9, scope: !509)
!2624 = !DILocation(line: 2166, column: 13, scope: !509)
!2625 = !DILocation(line: 2166, column: 16, scope: !509)
!2626 = !DILocation(line: 2168, column: 14, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !509, file: !4, line: 2168, column: 13)
!2628 = !DILocation(line: 2168, column: 28, scope: !2627)
!2629 = !DILocation(line: 2168, column: 57, scope: !2627)
!2630 = !DILocation(line: 2168, column: 61, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2627, file: !4, discriminator: 1)
!2632 = !DILocation(line: 2169, column: 13, scope: !2627)
!2633 = !DILocation(line: 2169, column: 17, scope: !2631)
!2634 = !DILocation(line: 2169, column: 31, scope: !2627)
!2635 = !DILocation(line: 2169, column: 57, scope: !2627)
!2636 = !DILocation(line: 2169, column: 60, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2627, file: !4, discriminator: 2)
!2638 = !DILocation(line: 2168, column: 13, scope: !509)
!2639 = !DILocation(line: 2170, column: 15, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2627, file: !4, line: 2169, column: 65)
!2641 = !DILocation(line: 2171, column: 18, scope: !2640)
!2642 = !DILocation(line: 2172, column: 9, scope: !2640)
!2643 = !DILocation(line: 2174, column: 16, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !509, file: !4, line: 2174, column: 9)
!2645 = !DILocation(line: 2174, column: 14, scope: !2644)
!2646 = !DILocation(line: 2174, column: 21, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2648, file: !4, discriminator: 2)
!2648 = !DILexicalBlockFile(scope: !2649, file: !4, discriminator: 1)
!2649 = distinct !DILexicalBlock(scope: !2644, file: !4, line: 2174, column: 9)
!2650 = !DILocation(line: 2174, column: 23, scope: !2649)
!2651 = !DILocation(line: 2174, column: 9, scope: !2644)
!2652 = !DILocation(line: 2175, column: 20, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !4, line: 2174, column: 33)
!2654 = !DILocation(line: 2175, column: 18, scope: !2653)
!2655 = !DILocation(line: 2175, column: 14, scope: !2653)
!2656 = !DILocation(line: 2175, column: 16, scope: !2653)
!2657 = !DILocation(line: 2176, column: 18, scope: !2653)
!2658 = !DILocation(line: 2176, column: 15, scope: !2653)
!2659 = !DILocation(line: 2177, column: 9, scope: !2653)
!2660 = !DILocation(line: 2174, column: 29, scope: !2649)
!2661 = !DILocation(line: 2174, column: 9, scope: !2649)
!2662 = !DILocation(line: 2178, column: 9, scope: !509)
!2663 = !DILocation(line: 2179, column: 5, scope: !502)
!2664 = !DILocation(line: 2180, column: 1, scope: !495)
!2665 = !DILocation(line: 2183, column: 39, scope: !512)
!2666 = !DILocation(line: 2183, column: 46, scope: !512)
!2667 = !DILocation(line: 2185, column: 9, scope: !520)
!2668 = !DILocation(line: 2185, column: 22, scope: !520)
!2669 = !DILocation(line: 2185, column: 9, scope: !512)
!2670 = !DILocation(line: 2186, column: 9, scope: !519)
!2671 = !DILocation(line: 2186, column: 23, scope: !519)
!2672 = !DILocation(line: 2187, column: 9, scope: !519)
!2673 = !DILocation(line: 2187, column: 13, scope: !519)
!2674 = !DILocation(line: 2188, column: 9, scope: !519)
!2675 = !DILocation(line: 2188, column: 22, scope: !519)
!2676 = !DILocation(line: 2189, column: 9, scope: !519)
!2677 = !DILocation(line: 2189, column: 16, scope: !519)
!2678 = !DILocation(line: 2190, column: 9, scope: !519)
!2679 = !DILocation(line: 2190, column: 13, scope: !519)
!2680 = !DILocation(line: 2192, column: 13, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !519, file: !4, line: 2192, column: 13)
!2682 = !DILocation(line: 2192, column: 13, scope: !519)
!2683 = !DILocation(line: 2193, column: 15, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2681, file: !4, line: 2192, column: 17)
!2685 = !DILocation(line: 2194, column: 18, scope: !2684)
!2686 = !DILocation(line: 2195, column: 9, scope: !2684)
!2687 = !DILocation(line: 2198, column: 18, scope: !519)
!2688 = !DILocation(line: 2198, column: 17, scope: !519)
!2689 = !DILocation(line: 2198, column: 20, scope: !519)
!2690 = !DILocation(line: 2198, column: 26, scope: !519)
!2691 = !DILocation(line: 2198, column: 16, scope: !519)
!2692 = !DILocation(line: 2198, column: 14, scope: !519)
!2693 = !DILocation(line: 2199, column: 15, scope: !519)
!2694 = !DILocation(line: 2199, column: 14, scope: !519)
!2695 = !DILocation(line: 2199, column: 17, scope: !519)
!2696 = !DILocation(line: 2199, column: 25, scope: !519)
!2697 = !DILocation(line: 2199, column: 11, scope: !519)
!2698 = !DILocation(line: 2200, column: 14, scope: !519)
!2699 = !DILocation(line: 2200, column: 11, scope: !519)
!2700 = !DILocation(line: 2203, column: 16, scope: !519)
!2701 = !DILocation(line: 2203, column: 15, scope: !519)
!2702 = !DILocation(line: 2203, column: 18, scope: !519)
!2703 = !DILocation(line: 2203, column: 24, scope: !519)
!2704 = !DILocation(line: 2203, column: 11, scope: !519)
!2705 = !DILocation(line: 2204, column: 15, scope: !519)
!2706 = !DILocation(line: 2204, column: 14, scope: !519)
!2707 = !DILocation(line: 2204, column: 17, scope: !519)
!2708 = !DILocation(line: 2204, column: 25, scope: !519)
!2709 = !DILocation(line: 2204, column: 11, scope: !519)
!2710 = !DILocation(line: 2205, column: 14, scope: !519)
!2711 = !DILocation(line: 2205, column: 11, scope: !519)
!2712 = !DILocation(line: 2207, column: 13, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !519, file: !4, line: 2207, column: 13)
!2714 = !DILocation(line: 2207, column: 15, scope: !2713)
!2715 = !DILocation(line: 2207, column: 13, scope: !519)
!2716 = !DILocation(line: 2209, column: 17, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2713, file: !4, line: 2207, column: 23)
!2718 = !DILocation(line: 2208, column: 13, scope: !2717)
!2719 = !DILocation(line: 2212, column: 13, scope: !2717)
!2720 = !DILocation(line: 2216, column: 15, scope: !519)
!2721 = !DILocation(line: 2216, column: 14, scope: !519)
!2722 = !DILocation(line: 2216, column: 17, scope: !519)
!2723 = !DILocation(line: 2216, column: 11, scope: !519)
!2724 = !DILocation(line: 2217, column: 14, scope: !519)
!2725 = !DILocation(line: 2217, column: 11, scope: !519)
!2726 = !DILocation(line: 2220, column: 15, scope: !519)
!2727 = !DILocation(line: 2220, column: 14, scope: !519)
!2728 = !DILocation(line: 2220, column: 11, scope: !519)
!2729 = !DILocation(line: 2222, column: 21, scope: !519)
!2730 = !DILocation(line: 2222, column: 13, scope: !519)
!2731 = !DILocation(line: 2222, column: 23, scope: !519)
!2732 = !DILocation(line: 2222, column: 11, scope: !519)
!2733 = !DILocation(line: 2225, column: 13, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !519, file: !4, line: 2225, column: 13)
!2735 = !DILocation(line: 2225, column: 15, scope: !2734)
!2736 = !DILocation(line: 2225, column: 13, scope: !519)
!2737 = !DILocation(line: 2226, column: 15, scope: !2734)
!2738 = !DILocation(line: 2226, column: 13, scope: !2734)
!2739 = !DILocation(line: 2228, column: 15, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2734, file: !4, line: 2227, column: 14)
!2741 = !DILocation(line: 2229, column: 15, scope: !2740)
!2742 = !DILocation(line: 2231, column: 19, scope: !519)
!2743 = !DILocation(line: 2231, column: 22, scope: !519)
!2744 = !DILocation(line: 2231, column: 13, scope: !519)
!2745 = !DILocation(line: 2231, column: 11, scope: !519)
!2746 = !DILocation(line: 2233, column: 13, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !519, file: !4, line: 2233, column: 13)
!2748 = !DILocation(line: 2233, column: 13, scope: !519)
!2749 = !DILocation(line: 2234, column: 18, scope: !2747)
!2750 = !DILocation(line: 2234, column: 17, scope: !2747)
!2751 = !DILocation(line: 2234, column: 15, scope: !2747)
!2752 = !DILocation(line: 2234, column: 13, scope: !2747)
!2753 = !DILocation(line: 2236, column: 16, scope: !519)
!2754 = !DILocation(line: 2236, column: 9, scope: !519)
!2755 = !DILocation(line: 2237, column: 5, scope: !520)
!2756 = !DILocation(line: 2239, column: 9, scope: !526)
!2757 = !DILocation(line: 2239, column: 15, scope: !526)
!2758 = !DILocation(line: 2241, column: 14, scope: !529)
!2759 = !DILocation(line: 2241, column: 27, scope: !529)
!2760 = !DILocation(line: 2241, column: 56, scope: !529)
!2761 = !DILocation(line: 2241, column: 60, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !529, file: !4, discriminator: 1)
!2763 = !DILocation(line: 2242, column: 13, scope: !529)
!2764 = !DILocation(line: 2242, column: 17, scope: !2762)
!2765 = !DILocation(line: 2242, column: 30, scope: !529)
!2766 = !DILocation(line: 2242, column: 56, scope: !529)
!2767 = !DILocation(line: 2242, column: 59, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !529, file: !4, discriminator: 2)
!2769 = !DILocation(line: 2241, column: 13, scope: !526)
!2770 = !DILocation(line: 2243, column: 13, scope: !528)
!2771 = !DILocation(line: 2243, column: 18, scope: !528)
!2772 = !DILocation(line: 2244, column: 13, scope: !528)
!2773 = !DILocation(line: 2244, column: 19, scope: !528)
!2774 = !DILocation(line: 2244, column: 24, scope: !528)
!2775 = !DILocation(line: 2245, column: 13, scope: !528)
!2776 = !DILocation(line: 2245, column: 17, scope: !528)
!2777 = !DILocation(line: 2247, column: 20, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !528, file: !4, line: 2247, column: 13)
!2779 = !DILocation(line: 2247, column: 18, scope: !2778)
!2780 = !DILocation(line: 2247, column: 25, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2782, file: !4, discriminator: 2)
!2782 = !DILexicalBlockFile(scope: !2783, file: !4, discriminator: 1)
!2783 = distinct !DILexicalBlock(scope: !2778, file: !4, line: 2247, column: 13)
!2784 = !DILocation(line: 2247, column: 27, scope: !2783)
!2785 = !DILocation(line: 2247, column: 13, scope: !2778)
!2786 = !DILocation(line: 2248, column: 26, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2783, file: !4, line: 2247, column: 37)
!2788 = !DILocation(line: 2248, column: 24, scope: !2787)
!2789 = !DILocation(line: 2248, column: 19, scope: !2787)
!2790 = !DILocation(line: 2248, column: 22, scope: !2787)
!2791 = !DILocation(line: 2249, column: 13, scope: !2787)
!2792 = !DILocation(line: 2247, column: 33, scope: !2783)
!2793 = !DILocation(line: 2247, column: 13, scope: !2783)
!2794 = !DILocation(line: 2250, column: 13, scope: !528)
!2795 = !DILocation(line: 2251, column: 9, scope: !529)
!2796 = !DILocation(line: 2251, column: 9, scope: !528)
!2797 = !DILocation(line: 2253, column: 13, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !529, file: !4, line: 2252, column: 14)
!2799 = !DILocation(line: 2253, column: 24, scope: !2798)
!2800 = !DILocation(line: 2256, column: 16, scope: !526)
!2801 = !DILocation(line: 2256, column: 9, scope: !526)
!2802 = !DILocation(line: 2257, column: 5, scope: !520)
!2803 = !DILocation(line: 2258, column: 1, scope: !512)
!2804 = !DILocation(line: 2261, column: 39, scope: !535)
!2805 = !DILocation(line: 2261, column: 46, scope: !535)
!2806 = !DILocation(line: 2263, column: 9, scope: !541)
!2807 = !DILocation(line: 2263, column: 23, scope: !541)
!2808 = !DILocation(line: 2263, column: 9, scope: !535)
!2809 = !DILocation(line: 2264, column: 9, scope: !540)
!2810 = !DILocation(line: 2264, column: 23, scope: !540)
!2811 = !DILocation(line: 2265, column: 9, scope: !540)
!2812 = !DILocation(line: 2265, column: 13, scope: !540)
!2813 = !DILocation(line: 2266, column: 9, scope: !540)
!2814 = !DILocation(line: 2266, column: 22, scope: !540)
!2815 = !DILocation(line: 2266, column: 27, scope: !540)
!2816 = !DILocation(line: 2267, column: 9, scope: !540)
!2817 = !DILocation(line: 2267, column: 16, scope: !540)
!2818 = !DILocation(line: 2268, column: 9, scope: !540)
!2819 = !DILocation(line: 2268, column: 13, scope: !540)
!2820 = !DILocation(line: 2270, column: 13, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !540, file: !4, line: 2270, column: 13)
!2822 = !DILocation(line: 2270, column: 13, scope: !540)
!2823 = !DILocation(line: 2271, column: 15, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2821, file: !4, line: 2270, column: 17)
!2825 = !DILocation(line: 2272, column: 18, scope: !2824)
!2826 = !DILocation(line: 2273, column: 9, scope: !2824)
!2827 = !DILocation(line: 2276, column: 18, scope: !540)
!2828 = !DILocation(line: 2276, column: 17, scope: !540)
!2829 = !DILocation(line: 2276, column: 20, scope: !540)
!2830 = !DILocation(line: 2276, column: 26, scope: !540)
!2831 = !DILocation(line: 2276, column: 16, scope: !540)
!2832 = !DILocation(line: 2276, column: 14, scope: !540)
!2833 = !DILocation(line: 2277, column: 15, scope: !540)
!2834 = !DILocation(line: 2277, column: 14, scope: !540)
!2835 = !DILocation(line: 2277, column: 17, scope: !540)
!2836 = !DILocation(line: 2277, column: 25, scope: !540)
!2837 = !DILocation(line: 2277, column: 11, scope: !540)
!2838 = !DILocation(line: 2279, column: 14, scope: !540)
!2839 = !DILocation(line: 2279, column: 11, scope: !540)
!2840 = !DILocation(line: 2282, column: 16, scope: !540)
!2841 = !DILocation(line: 2282, column: 15, scope: !540)
!2842 = !DILocation(line: 2282, column: 18, scope: !540)
!2843 = !DILocation(line: 2282, column: 24, scope: !540)
!2844 = !DILocation(line: 2282, column: 11, scope: !540)
!2845 = !DILocation(line: 2283, column: 17, scope: !540)
!2846 = !DILocation(line: 2283, column: 16, scope: !540)
!2847 = !DILocation(line: 2283, column: 19, scope: !540)
!2848 = !DILocation(line: 2283, column: 26, scope: !540)
!2849 = !DILocation(line: 2283, column: 13, scope: !540)
!2850 = !DILocation(line: 2284, column: 14, scope: !540)
!2851 = !DILocation(line: 2284, column: 11, scope: !540)
!2852 = !DILocation(line: 2286, column: 13, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !540, file: !4, line: 2286, column: 13)
!2854 = !DILocation(line: 2286, column: 15, scope: !2853)
!2855 = !DILocation(line: 2286, column: 13, scope: !540)
!2856 = !DILocation(line: 2288, column: 17, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2853, file: !4, line: 2286, column: 24)
!2858 = !DILocation(line: 2287, column: 13, scope: !2857)
!2859 = !DILocation(line: 2291, column: 13, scope: !2857)
!2860 = !DILocation(line: 2295, column: 17, scope: !540)
!2861 = !DILocation(line: 2295, column: 16, scope: !540)
!2862 = !DILocation(line: 2295, column: 19, scope: !540)
!2863 = !DILocation(line: 2295, column: 13, scope: !540)
!2864 = !DILocation(line: 2296, column: 14, scope: !540)
!2865 = !DILocation(line: 2296, column: 11, scope: !540)
!2866 = !DILocation(line: 2299, column: 17, scope: !540)
!2867 = !DILocation(line: 2299, column: 16, scope: !540)
!2868 = !DILocation(line: 2299, column: 19, scope: !540)
!2869 = !DILocation(line: 2299, column: 13, scope: !540)
!2870 = !DILocation(line: 2300, column: 14, scope: !540)
!2871 = !DILocation(line: 2300, column: 11, scope: !540)
!2872 = !DILocation(line: 2303, column: 17, scope: !540)
!2873 = !DILocation(line: 2303, column: 16, scope: !540)
!2874 = !DILocation(line: 2303, column: 13, scope: !540)
!2875 = !DILocation(line: 2304, column: 14, scope: !540)
!2876 = !DILocation(line: 2304, column: 11, scope: !540)
!2877 = !DILocation(line: 2307, column: 16, scope: !540)
!2878 = !DILocation(line: 2307, column: 15, scope: !540)
!2879 = !DILocation(line: 2307, column: 18, scope: !540)
!2880 = !DILocation(line: 2307, column: 13, scope: !540)
!2881 = !DILocation(line: 2308, column: 14, scope: !540)
!2882 = !DILocation(line: 2308, column: 11, scope: !540)
!2883 = !DILocation(line: 2311, column: 17, scope: !540)
!2884 = !DILocation(line: 2311, column: 16, scope: !540)
!2885 = !DILocation(line: 2311, column: 19, scope: !540)
!2886 = !DILocation(line: 2311, column: 13, scope: !540)
!2887 = !DILocation(line: 2312, column: 14, scope: !540)
!2888 = !DILocation(line: 2312, column: 11, scope: !540)
!2889 = !DILocation(line: 2315, column: 17, scope: !540)
!2890 = !DILocation(line: 2315, column: 16, scope: !540)
!2891 = !DILocation(line: 2315, column: 13, scope: !540)
!2892 = !DILocation(line: 2317, column: 21, scope: !540)
!2893 = !DILocation(line: 2317, column: 13, scope: !540)
!2894 = !DILocation(line: 2317, column: 35, scope: !540)
!2895 = !DILocation(line: 2317, column: 27, scope: !540)
!2896 = !DILocation(line: 2317, column: 39, scope: !540)
!2897 = !DILocation(line: 2317, column: 25, scope: !540)
!2898 = !DILocation(line: 2317, column: 11, scope: !540)
!2899 = !DILocation(line: 2318, column: 11, scope: !540)
!2900 = !DILocation(line: 2320, column: 13, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !540, file: !4, line: 2320, column: 13)
!2902 = !DILocation(line: 2320, column: 15, scope: !2901)
!2903 = !DILocation(line: 2320, column: 13, scope: !540)
!2904 = !DILocation(line: 2321, column: 15, scope: !2901)
!2905 = !DILocation(line: 2321, column: 13, scope: !2901)
!2906 = !DILocation(line: 2323, column: 15, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2901, file: !4, line: 2322, column: 14)
!2908 = !DILocation(line: 2324, column: 15, scope: !2907)
!2909 = !DILocation(line: 2326, column: 19, scope: !540)
!2910 = !DILocation(line: 2326, column: 22, scope: !540)
!2911 = !DILocation(line: 2326, column: 13, scope: !540)
!2912 = !DILocation(line: 2326, column: 11, scope: !540)
!2913 = !DILocation(line: 2328, column: 13, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !540, file: !4, line: 2328, column: 13)
!2915 = !DILocation(line: 2328, column: 13, scope: !540)
!2916 = !DILocation(line: 2329, column: 18, scope: !2914)
!2917 = !DILocation(line: 2329, column: 17, scope: !2914)
!2918 = !DILocation(line: 2329, column: 15, scope: !2914)
!2919 = !DILocation(line: 2329, column: 13, scope: !2914)
!2920 = !DILocation(line: 2331, column: 16, scope: !540)
!2921 = !DILocation(line: 2331, column: 9, scope: !540)
!2922 = !DILocation(line: 2332, column: 5, scope: !541)
!2923 = !DILocation(line: 2334, column: 9, scope: !548)
!2924 = !DILocation(line: 2334, column: 16, scope: !548)
!2925 = !DILocation(line: 2336, column: 14, scope: !551)
!2926 = !DILocation(line: 2336, column: 28, scope: !551)
!2927 = !DILocation(line: 2336, column: 57, scope: !551)
!2928 = !DILocation(line: 2336, column: 61, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !551, file: !4, discriminator: 1)
!2930 = !DILocation(line: 2337, column: 13, scope: !551)
!2931 = !DILocation(line: 2337, column: 17, scope: !2929)
!2932 = !DILocation(line: 2337, column: 31, scope: !551)
!2933 = !DILocation(line: 2337, column: 57, scope: !551)
!2934 = !DILocation(line: 2337, column: 60, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !551, file: !4, discriminator: 2)
!2936 = !DILocation(line: 2336, column: 13, scope: !548)
!2937 = !DILocation(line: 2338, column: 13, scope: !550)
!2938 = !DILocation(line: 2338, column: 18, scope: !550)
!2939 = !DILocation(line: 2339, column: 13, scope: !550)
!2940 = !DILocation(line: 2339, column: 19, scope: !550)
!2941 = !DILocation(line: 2339, column: 24, scope: !550)
!2942 = !DILocation(line: 2340, column: 13, scope: !550)
!2943 = !DILocation(line: 2340, column: 17, scope: !550)
!2944 = !DILocation(line: 2342, column: 20, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !550, file: !4, line: 2342, column: 13)
!2946 = !DILocation(line: 2342, column: 18, scope: !2945)
!2947 = !DILocation(line: 2342, column: 25, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2949, file: !4, discriminator: 2)
!2949 = !DILexicalBlockFile(scope: !2950, file: !4, discriminator: 1)
!2950 = distinct !DILexicalBlock(scope: !2945, file: !4, line: 2342, column: 13)
!2951 = !DILocation(line: 2342, column: 27, scope: !2950)
!2952 = !DILocation(line: 2342, column: 13, scope: !2945)
!2953 = !DILocation(line: 2343, column: 26, scope: !2954)
!2954 = distinct !DILexicalBlock(scope: !2950, file: !4, line: 2342, column: 37)
!2955 = !DILocation(line: 2343, column: 24, scope: !2954)
!2956 = !DILocation(line: 2343, column: 19, scope: !2954)
!2957 = !DILocation(line: 2343, column: 22, scope: !2954)
!2958 = !DILocation(line: 2344, column: 13, scope: !2954)
!2959 = !DILocation(line: 2342, column: 33, scope: !2950)
!2960 = !DILocation(line: 2342, column: 13, scope: !2950)
!2961 = !DILocation(line: 2345, column: 13, scope: !550)
!2962 = !DILocation(line: 2346, column: 9, scope: !551)
!2963 = !DILocation(line: 2346, column: 9, scope: !550)
!2964 = !DILocation(line: 2348, column: 13, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !551, file: !4, line: 2347, column: 14)
!2966 = !DILocation(line: 2348, column: 24, scope: !2965)
!2967 = !DILocation(line: 2351, column: 16, scope: !548)
!2968 = !DILocation(line: 2351, column: 9, scope: !548)
!2969 = !DILocation(line: 2352, column: 5, scope: !541)
!2970 = !DILocation(line: 2353, column: 1, scope: !535)
!2971 = !DILocation(line: 488, column: 21, scope: !569)
!2972 = !DILocation(line: 488, column: 34, scope: !569)
!2973 = !DILocation(line: 490, column: 5, scope: !569)
!2974 = !DILocation(line: 490, column: 12, scope: !569)
!2975 = !DILocation(line: 490, column: 14, scope: !569)
!2976 = !DILocation(line: 491, column: 24, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !569, file: !4, line: 491, column: 9)
!2978 = !DILocation(line: 491, column: 29, scope: !2977)
!2979 = !DILocation(line: 491, column: 38, scope: !2977)
!2980 = !DILocation(line: 491, column: 57, scope: !2977)
!2981 = !DILocation(line: 491, column: 91, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !2977, file: !4, discriminator: 2)
!2983 = !DILocation(line: 491, column: 96, scope: !2977)
!2984 = !DILocation(line: 491, column: 60, scope: !2977)
!2985 = !DILocation(line: 491, column: 9, scope: !569)
!2986 = !DILocation(line: 491, column: 149, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2988, file: !4, discriminator: 3)
!2988 = !DILexicalBlockFile(scope: !2977, file: !4, discriminator: 1)
!2989 = !DILocation(line: 491, column: 131, scope: !2977)
!2990 = !DILocation(line: 491, column: 154, scope: !2977)
!2991 = !DILocation(line: 491, column: 127, scope: !2977)
!2992 = !DILocation(line: 491, column: 125, scope: !2977)
!2993 = !DILocation(line: 491, column: 173, scope: !2994)
!2994 = !DILexicalBlockFile(scope: !2995, file: !4, discriminator: 4)
!2995 = distinct !DILexicalBlock(scope: !2977, file: !4, line: 491, column: 173)
!2996 = !DILocation(line: 491, column: 203, scope: !2995)
!2997 = !DILocation(line: 491, column: 173, scope: !2977)
!2998 = !DILocation(line: 491, column: 215, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2995, file: !4, discriminator: 5)
!3000 = !DILocation(line: 491, column: 208, scope: !2995)
!3001 = !DILocation(line: 492, column: 24, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !569, file: !4, line: 492, column: 9)
!3003 = !DILocation(line: 492, column: 29, scope: !3002)
!3004 = !DILocation(line: 492, column: 38, scope: !3002)
!3005 = !DILocation(line: 492, column: 57, scope: !3002)
!3006 = !DILocation(line: 492, column: 91, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3002, file: !4, discriminator: 2)
!3008 = !DILocation(line: 492, column: 96, scope: !3002)
!3009 = !DILocation(line: 492, column: 60, scope: !3002)
!3010 = !DILocation(line: 492, column: 9, scope: !569)
!3011 = !DILocation(line: 492, column: 149, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3013, file: !4, discriminator: 3)
!3013 = !DILexicalBlockFile(scope: !3002, file: !4, discriminator: 1)
!3014 = !DILocation(line: 492, column: 131, scope: !3002)
!3015 = !DILocation(line: 492, column: 154, scope: !3002)
!3016 = !DILocation(line: 492, column: 127, scope: !3002)
!3017 = !DILocation(line: 492, column: 125, scope: !3002)
!3018 = !DILocation(line: 492, column: 173, scope: !3019)
!3019 = !DILexicalBlockFile(scope: !3020, file: !4, discriminator: 4)
!3020 = distinct !DILexicalBlock(scope: !3002, file: !4, line: 492, column: 173)
!3021 = !DILocation(line: 492, column: 203, scope: !3020)
!3022 = !DILocation(line: 492, column: 173, scope: !3002)
!3023 = !DILocation(line: 492, column: 215, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3020, file: !4, discriminator: 5)
!3025 = !DILocation(line: 492, column: 208, scope: !3020)
!3026 = !DILocation(line: 494, column: 9, scope: !569)
!3027 = !DILocation(line: 494, column: 13, scope: !569)
!3028 = !DILocation(line: 494, column: 11, scope: !569)
!3029 = !DILocation(line: 494, column: 7, scope: !569)
!3030 = !DILocation(line: 496, column: 31, scope: !569)
!3031 = !DILocation(line: 496, column: 12, scope: !569)
!3032 = !DILocation(line: 496, column: 5, scope: !569)
!3033 = !DILocation(line: 497, column: 1, scope: !569)
!3034 = !DILocation(line: 500, column: 21, scope: !584)
!3035 = !DILocation(line: 500, column: 34, scope: !584)
!3036 = !DILocation(line: 502, column: 5, scope: !584)
!3037 = !DILocation(line: 502, column: 12, scope: !584)
!3038 = !DILocation(line: 502, column: 14, scope: !584)
!3039 = !DILocation(line: 503, column: 24, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !584, file: !4, line: 503, column: 9)
!3041 = !DILocation(line: 503, column: 29, scope: !3040)
!3042 = !DILocation(line: 503, column: 38, scope: !3040)
!3043 = !DILocation(line: 503, column: 57, scope: !3040)
!3044 = !DILocation(line: 503, column: 91, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3040, file: !4, discriminator: 2)
!3046 = !DILocation(line: 503, column: 96, scope: !3040)
!3047 = !DILocation(line: 503, column: 60, scope: !3040)
!3048 = !DILocation(line: 503, column: 9, scope: !584)
!3049 = !DILocation(line: 503, column: 149, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3051, file: !4, discriminator: 3)
!3051 = !DILexicalBlockFile(scope: !3040, file: !4, discriminator: 1)
!3052 = !DILocation(line: 503, column: 131, scope: !3040)
!3053 = !DILocation(line: 503, column: 154, scope: !3040)
!3054 = !DILocation(line: 503, column: 127, scope: !3040)
!3055 = !DILocation(line: 503, column: 125, scope: !3040)
!3056 = !DILocation(line: 503, column: 173, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3058, file: !4, discriminator: 4)
!3058 = distinct !DILexicalBlock(scope: !3040, file: !4, line: 503, column: 173)
!3059 = !DILocation(line: 503, column: 203, scope: !3058)
!3060 = !DILocation(line: 503, column: 173, scope: !3040)
!3061 = !DILocation(line: 503, column: 215, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3058, file: !4, discriminator: 5)
!3063 = !DILocation(line: 503, column: 208, scope: !3058)
!3064 = !DILocation(line: 504, column: 24, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !584, file: !4, line: 504, column: 9)
!3066 = !DILocation(line: 504, column: 29, scope: !3065)
!3067 = !DILocation(line: 504, column: 38, scope: !3065)
!3068 = !DILocation(line: 504, column: 57, scope: !3065)
!3069 = !DILocation(line: 504, column: 91, scope: !3070)
!3070 = !DILexicalBlockFile(scope: !3065, file: !4, discriminator: 2)
!3071 = !DILocation(line: 504, column: 96, scope: !3065)
!3072 = !DILocation(line: 504, column: 60, scope: !3065)
!3073 = !DILocation(line: 504, column: 9, scope: !584)
!3074 = !DILocation(line: 504, column: 149, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !3076, file: !4, discriminator: 3)
!3076 = !DILexicalBlockFile(scope: !3065, file: !4, discriminator: 1)
!3077 = !DILocation(line: 504, column: 131, scope: !3065)
!3078 = !DILocation(line: 504, column: 154, scope: !3065)
!3079 = !DILocation(line: 504, column: 127, scope: !3065)
!3080 = !DILocation(line: 504, column: 125, scope: !3065)
!3081 = !DILocation(line: 504, column: 173, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !3083, file: !4, discriminator: 4)
!3083 = distinct !DILexicalBlock(scope: !3065, file: !4, line: 504, column: 173)
!3084 = !DILocation(line: 504, column: 203, scope: !3083)
!3085 = !DILocation(line: 504, column: 173, scope: !3065)
!3086 = !DILocation(line: 504, column: 215, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3083, file: !4, discriminator: 5)
!3088 = !DILocation(line: 504, column: 208, scope: !3083)
!3089 = !DILocation(line: 506, column: 9, scope: !584)
!3090 = !DILocation(line: 506, column: 13, scope: !584)
!3091 = !DILocation(line: 506, column: 11, scope: !584)
!3092 = !DILocation(line: 506, column: 7, scope: !584)
!3093 = !DILocation(line: 508, column: 31, scope: !584)
!3094 = !DILocation(line: 508, column: 12, scope: !584)
!3095 = !DILocation(line: 508, column: 5, scope: !584)
!3096 = !DILocation(line: 509, column: 1, scope: !584)
!3097 = !DILocation(line: 512, column: 21, scope: !590)
!3098 = !DILocation(line: 512, column: 34, scope: !590)
!3099 = !DILocation(line: 514, column: 5, scope: !590)
!3100 = !DILocation(line: 514, column: 12, scope: !590)
!3101 = !DILocation(line: 514, column: 14, scope: !590)
!3102 = !DILocation(line: 515, column: 24, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !590, file: !4, line: 515, column: 9)
!3104 = !DILocation(line: 515, column: 29, scope: !3103)
!3105 = !DILocation(line: 515, column: 38, scope: !3103)
!3106 = !DILocation(line: 515, column: 57, scope: !3103)
!3107 = !DILocation(line: 515, column: 91, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3103, file: !4, discriminator: 2)
!3109 = !DILocation(line: 515, column: 96, scope: !3103)
!3110 = !DILocation(line: 515, column: 60, scope: !3103)
!3111 = !DILocation(line: 515, column: 9, scope: !590)
!3112 = !DILocation(line: 515, column: 149, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !3114, file: !4, discriminator: 3)
!3114 = !DILexicalBlockFile(scope: !3103, file: !4, discriminator: 1)
!3115 = !DILocation(line: 515, column: 131, scope: !3103)
!3116 = !DILocation(line: 515, column: 154, scope: !3103)
!3117 = !DILocation(line: 515, column: 127, scope: !3103)
!3118 = !DILocation(line: 515, column: 125, scope: !3103)
!3119 = !DILocation(line: 515, column: 173, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3121, file: !4, discriminator: 4)
!3121 = distinct !DILexicalBlock(scope: !3103, file: !4, line: 515, column: 173)
!3122 = !DILocation(line: 515, column: 203, scope: !3121)
!3123 = !DILocation(line: 515, column: 173, scope: !3103)
!3124 = !DILocation(line: 515, column: 215, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3121, file: !4, discriminator: 5)
!3126 = !DILocation(line: 515, column: 208, scope: !3121)
!3127 = !DILocation(line: 516, column: 24, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !590, file: !4, line: 516, column: 9)
!3129 = !DILocation(line: 516, column: 29, scope: !3128)
!3130 = !DILocation(line: 516, column: 38, scope: !3128)
!3131 = !DILocation(line: 516, column: 57, scope: !3128)
!3132 = !DILocation(line: 516, column: 91, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !3128, file: !4, discriminator: 2)
!3134 = !DILocation(line: 516, column: 96, scope: !3128)
!3135 = !DILocation(line: 516, column: 60, scope: !3128)
!3136 = !DILocation(line: 516, column: 9, scope: !590)
!3137 = !DILocation(line: 516, column: 149, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !3139, file: !4, discriminator: 3)
!3139 = !DILexicalBlockFile(scope: !3128, file: !4, discriminator: 1)
!3140 = !DILocation(line: 516, column: 131, scope: !3128)
!3141 = !DILocation(line: 516, column: 154, scope: !3128)
!3142 = !DILocation(line: 516, column: 127, scope: !3128)
!3143 = !DILocation(line: 516, column: 125, scope: !3128)
!3144 = !DILocation(line: 516, column: 173, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3146, file: !4, discriminator: 4)
!3146 = distinct !DILexicalBlock(scope: !3128, file: !4, line: 516, column: 173)
!3147 = !DILocation(line: 516, column: 203, scope: !3146)
!3148 = !DILocation(line: 516, column: 173, scope: !3128)
!3149 = !DILocation(line: 516, column: 215, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3146, file: !4, discriminator: 5)
!3151 = !DILocation(line: 516, column: 208, scope: !3146)
!3152 = !DILocation(line: 518, column: 9, scope: !590)
!3153 = !DILocation(line: 518, column: 13, scope: !590)
!3154 = !DILocation(line: 518, column: 11, scope: !590)
!3155 = !DILocation(line: 518, column: 7, scope: !590)
!3156 = !DILocation(line: 520, column: 31, scope: !590)
!3157 = !DILocation(line: 520, column: 12, scope: !590)
!3158 = !DILocation(line: 520, column: 5, scope: !590)
!3159 = !DILocation(line: 521, column: 1, scope: !590)
!3160 = !DILocation(line: 541, column: 21, scope: !596)
!3161 = !DILocation(line: 541, column: 34, scope: !596)
!3162 = !DILocation(line: 543, column: 5, scope: !596)
!3163 = !DILocation(line: 543, column: 12, scope: !596)
!3164 = !DILocation(line: 543, column: 16, scope: !596)
!3165 = !DILocation(line: 544, column: 5, scope: !596)
!3166 = !DILocation(line: 544, column: 12, scope: !596)
!3167 = !DILocation(line: 545, column: 24, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !596, file: !4, line: 545, column: 9)
!3169 = !DILocation(line: 545, column: 29, scope: !3168)
!3170 = !DILocation(line: 545, column: 38, scope: !3168)
!3171 = !DILocation(line: 545, column: 57, scope: !3168)
!3172 = !DILocation(line: 545, column: 91, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3168, file: !4, discriminator: 2)
!3174 = !DILocation(line: 545, column: 96, scope: !3168)
!3175 = !DILocation(line: 545, column: 60, scope: !3168)
!3176 = !DILocation(line: 545, column: 9, scope: !596)
!3177 = !DILocation(line: 545, column: 150, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3179, file: !4, discriminator: 3)
!3179 = !DILexicalBlockFile(scope: !3168, file: !4, discriminator: 1)
!3180 = !DILocation(line: 545, column: 132, scope: !3168)
!3181 = !DILocation(line: 545, column: 155, scope: !3168)
!3182 = !DILocation(line: 545, column: 128, scope: !3168)
!3183 = !DILocation(line: 545, column: 125, scope: !3168)
!3184 = !DILocation(line: 545, column: 174, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3186, file: !4, discriminator: 4)
!3186 = distinct !DILexicalBlock(scope: !3168, file: !4, line: 545, column: 174)
!3187 = !DILocation(line: 545, column: 205, scope: !3186)
!3188 = !DILocation(line: 545, column: 174, scope: !3168)
!3189 = !DILocation(line: 545, column: 217, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3186, file: !4, discriminator: 5)
!3191 = !DILocation(line: 545, column: 210, scope: !3186)
!3192 = !DILocation(line: 546, column: 24, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !596, file: !4, line: 546, column: 9)
!3194 = !DILocation(line: 546, column: 29, scope: !3193)
!3195 = !DILocation(line: 546, column: 38, scope: !3193)
!3196 = !DILocation(line: 546, column: 57, scope: !3193)
!3197 = !DILocation(line: 546, column: 91, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3193, file: !4, discriminator: 2)
!3199 = !DILocation(line: 546, column: 96, scope: !3193)
!3200 = !DILocation(line: 546, column: 60, scope: !3193)
!3201 = !DILocation(line: 546, column: 9, scope: !596)
!3202 = !DILocation(line: 546, column: 150, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3204, file: !4, discriminator: 3)
!3204 = !DILexicalBlockFile(scope: !3193, file: !4, discriminator: 1)
!3205 = !DILocation(line: 546, column: 132, scope: !3193)
!3206 = !DILocation(line: 546, column: 155, scope: !3193)
!3207 = !DILocation(line: 546, column: 128, scope: !3193)
!3208 = !DILocation(line: 546, column: 125, scope: !3193)
!3209 = !DILocation(line: 546, column: 174, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !4, discriminator: 4)
!3211 = distinct !DILexicalBlock(scope: !3193, file: !4, line: 546, column: 174)
!3212 = !DILocation(line: 546, column: 205, scope: !3211)
!3213 = !DILocation(line: 546, column: 174, scope: !3193)
!3214 = !DILocation(line: 546, column: 217, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3211, file: !4, discriminator: 5)
!3216 = !DILocation(line: 546, column: 210, scope: !3211)
!3217 = !DILocation(line: 547, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !596, file: !4, line: 547, column: 9)
!3219 = !DILocation(line: 547, column: 12, scope: !3218)
!3220 = !DILocation(line: 547, column: 9, scope: !596)
!3221 = !DILocation(line: 548, column: 25, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !4, line: 547, column: 20)
!3223 = !DILocation(line: 548, column: 9, scope: !3222)
!3224 = !DILocation(line: 550, column: 9, scope: !3222)
!3225 = !DILocation(line: 553, column: 16, scope: !596)
!3226 = !DILocation(line: 553, column: 20, scope: !596)
!3227 = !DILocation(line: 553, column: 11, scope: !596)
!3228 = !DILocation(line: 553, column: 9, scope: !596)
!3229 = !DILocation(line: 554, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !596, file: !4, line: 554, column: 9)
!3231 = !DILocation(line: 554, column: 9, scope: !596)
!3232 = !DILocation(line: 556, column: 14, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !4, line: 556, column: 13)
!3234 = distinct !DILexicalBlock(scope: !3230, file: !4, line: 554, column: 14)
!3235 = !DILocation(line: 556, column: 17, scope: !3233)
!3236 = !DILocation(line: 556, column: 26, scope: !3233)
!3237 = !DILocation(line: 556, column: 30, scope: !3233)
!3238 = !DILocation(line: 556, column: 22, scope: !3233)
!3239 = !DILocation(line: 556, column: 13, scope: !3234)
!3240 = !DILocation(line: 557, column: 20, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3233, file: !4, line: 556, column: 36)
!3242 = !DILocation(line: 557, column: 17, scope: !3241)
!3243 = !DILocation(line: 558, column: 9, scope: !3241)
!3244 = !DILocation(line: 559, column: 5, scope: !3234)
!3245 = !DILocation(line: 564, column: 29, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3230, file: !4, line: 560, column: 10)
!3247 = !DILocation(line: 564, column: 15, scope: !3246)
!3248 = !DILocation(line: 564, column: 13, scope: !3246)
!3249 = !DILocation(line: 567, column: 31, scope: !596)
!3250 = !DILocation(line: 567, column: 12, scope: !596)
!3251 = !DILocation(line: 567, column: 5, scope: !596)
!3252 = !DILocation(line: 568, column: 1, scope: !596)
!3253 = !DILocation(line: 571, column: 24, scope: !603)
!3254 = !DILocation(line: 571, column: 37, scope: !603)
!3255 = !DILocation(line: 573, column: 5, scope: !603)
!3256 = !DILocation(line: 573, column: 12, scope: !603)
!3257 = !DILocation(line: 573, column: 16, scope: !603)
!3258 = !DILocation(line: 574, column: 5, scope: !603)
!3259 = !DILocation(line: 574, column: 12, scope: !603)
!3260 = !DILocation(line: 574, column: 17, scope: !603)
!3261 = !DILocation(line: 574, column: 22, scope: !603)
!3262 = !DILocation(line: 575, column: 24, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !603, file: !4, line: 575, column: 9)
!3264 = !DILocation(line: 575, column: 29, scope: !3263)
!3265 = !DILocation(line: 575, column: 38, scope: !3263)
!3266 = !DILocation(line: 575, column: 57, scope: !3263)
!3267 = !DILocation(line: 575, column: 91, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3263, file: !4, discriminator: 2)
!3269 = !DILocation(line: 575, column: 96, scope: !3263)
!3270 = !DILocation(line: 575, column: 60, scope: !3263)
!3271 = !DILocation(line: 575, column: 9, scope: !603)
!3272 = !DILocation(line: 575, column: 150, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3274, file: !4, discriminator: 3)
!3274 = !DILexicalBlockFile(scope: !3263, file: !4, discriminator: 1)
!3275 = !DILocation(line: 575, column: 132, scope: !3263)
!3276 = !DILocation(line: 575, column: 155, scope: !3263)
!3277 = !DILocation(line: 575, column: 128, scope: !3263)
!3278 = !DILocation(line: 575, column: 125, scope: !3263)
!3279 = !DILocation(line: 575, column: 174, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3281, file: !4, discriminator: 4)
!3281 = distinct !DILexicalBlock(scope: !3263, file: !4, line: 575, column: 174)
!3282 = !DILocation(line: 575, column: 205, scope: !3281)
!3283 = !DILocation(line: 575, column: 174, scope: !3263)
!3284 = !DILocation(line: 575, column: 217, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3281, file: !4, discriminator: 5)
!3286 = !DILocation(line: 575, column: 210, scope: !3281)
!3287 = !DILocation(line: 576, column: 24, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !603, file: !4, line: 576, column: 9)
!3289 = !DILocation(line: 576, column: 29, scope: !3288)
!3290 = !DILocation(line: 576, column: 38, scope: !3288)
!3291 = !DILocation(line: 576, column: 57, scope: !3288)
!3292 = !DILocation(line: 576, column: 91, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3288, file: !4, discriminator: 2)
!3294 = !DILocation(line: 576, column: 96, scope: !3288)
!3295 = !DILocation(line: 576, column: 60, scope: !3288)
!3296 = !DILocation(line: 576, column: 9, scope: !603)
!3297 = !DILocation(line: 576, column: 150, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !3299, file: !4, discriminator: 3)
!3299 = !DILexicalBlockFile(scope: !3288, file: !4, discriminator: 1)
!3300 = !DILocation(line: 576, column: 132, scope: !3288)
!3301 = !DILocation(line: 576, column: 155, scope: !3288)
!3302 = !DILocation(line: 576, column: 128, scope: !3288)
!3303 = !DILocation(line: 576, column: 125, scope: !3288)
!3304 = !DILocation(line: 576, column: 174, scope: !3305)
!3305 = !DILexicalBlockFile(scope: !3306, file: !4, discriminator: 4)
!3306 = distinct !DILexicalBlock(scope: !3288, file: !4, line: 576, column: 174)
!3307 = !DILocation(line: 576, column: 205, scope: !3306)
!3308 = !DILocation(line: 576, column: 174, scope: !3288)
!3309 = !DILocation(line: 576, column: 217, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3306, file: !4, discriminator: 5)
!3311 = !DILocation(line: 576, column: 210, scope: !3306)
!3312 = !DILocation(line: 577, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !603, file: !4, line: 577, column: 9)
!3314 = !DILocation(line: 577, column: 12, scope: !3313)
!3315 = !DILocation(line: 577, column: 9, scope: !603)
!3316 = !DILocation(line: 578, column: 25, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3313, file: !4, line: 577, column: 20)
!3318 = !DILocation(line: 578, column: 9, scope: !3317)
!3319 = !DILocation(line: 579, column: 9, scope: !3317)
!3320 = !DILocation(line: 582, column: 16, scope: !603)
!3321 = !DILocation(line: 582, column: 20, scope: !603)
!3322 = !DILocation(line: 582, column: 11, scope: !603)
!3323 = !DILocation(line: 582, column: 9, scope: !603)
!3324 = !DILocation(line: 589, column: 12, scope: !603)
!3325 = !DILocation(line: 589, column: 17, scope: !603)
!3326 = !DILocation(line: 589, column: 15, scope: !603)
!3327 = !DILocation(line: 589, column: 24, scope: !603)
!3328 = !DILocation(line: 589, column: 22, scope: !603)
!3329 = !DILocation(line: 589, column: 9, scope: !603)
!3330 = !DILocation(line: 590, column: 9, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !603, file: !4, line: 590, column: 9)
!3332 = !DILocation(line: 590, column: 9, scope: !603)
!3333 = !DILocation(line: 592, column: 14, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !4, line: 592, column: 13)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !4, line: 590, column: 14)
!3336 = !DILocation(line: 592, column: 17, scope: !3334)
!3337 = !DILocation(line: 592, column: 26, scope: !3334)
!3338 = !DILocation(line: 592, column: 30, scope: !3334)
!3339 = !DILocation(line: 592, column: 22, scope: !3334)
!3340 = !DILocation(line: 592, column: 13, scope: !3335)
!3341 = !DILocation(line: 593, column: 20, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3334, file: !4, line: 592, column: 36)
!3343 = !DILocation(line: 593, column: 17, scope: !3342)
!3344 = !DILocation(line: 594, column: 17, scope: !3342)
!3345 = !DILocation(line: 595, column: 9, scope: !3342)
!3346 = !DILocation(line: 596, column: 5, scope: !3335)
!3347 = !DILocation(line: 601, column: 29, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3331, file: !4, line: 597, column: 10)
!3349 = !DILocation(line: 601, column: 15, scope: !3348)
!3350 = !DILocation(line: 601, column: 13, scope: !3348)
!3351 = !DILocation(line: 604, column: 9, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !603, file: !4, line: 604, column: 9)
!3353 = !DILocation(line: 604, column: 9, scope: !603)
!3354 = !DILocation(line: 605, column: 26, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3352, file: !4, line: 604, column: 14)
!3356 = !DILocation(line: 605, column: 20, scope: !3355)
!3357 = !DILocation(line: 605, column: 18, scope: !3355)
!3358 = !DILocation(line: 606, column: 13, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3355, file: !4, line: 606, column: 13)
!3360 = !DILocation(line: 606, column: 19, scope: !3359)
!3361 = !DILocation(line: 606, column: 17, scope: !3359)
!3362 = !DILocation(line: 606, column: 28, scope: !3359)
!3363 = !DILocation(line: 606, column: 13, scope: !3355)
!3364 = !DILocation(line: 607, column: 22, scope: !3359)
!3365 = !DILocation(line: 607, column: 13, scope: !3359)
!3366 = !DILocation(line: 608, column: 5, scope: !3355)
!3367 = !DILocation(line: 611, column: 34, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3352, file: !4, line: 609, column: 10)
!3369 = !DILocation(line: 611, column: 39, scope: !3368)
!3370 = !DILocation(line: 611, column: 37, scope: !3368)
!3371 = !DILocation(line: 611, column: 20, scope: !3368)
!3372 = !DILocation(line: 611, column: 18, scope: !3368)
!3373 = !DILocation(line: 614, column: 34, scope: !603)
!3374 = !DILocation(line: 614, column: 44, scope: !603)
!3375 = !DILocation(line: 614, column: 12, scope: !603)
!3376 = !DILocation(line: 614, column: 5, scope: !603)
!3377 = !DILocation(line: 615, column: 1, scope: !603)
!3378 = !DILocation(line: 637, column: 21, scope: !612)
!3379 = !DILocation(line: 637, column: 34, scope: !612)
!3380 = !DILocation(line: 637, column: 47, scope: !612)
!3381 = !DILocation(line: 639, column: 5, scope: !612)
!3382 = !DILocation(line: 639, column: 12, scope: !612)
!3383 = !DILocation(line: 639, column: 16, scope: !612)
!3384 = !DILocation(line: 639, column: 20, scope: !612)
!3385 = !DILocation(line: 640, column: 5, scope: !612)
!3386 = !DILocation(line: 640, column: 9, scope: !612)
!3387 = !DILocation(line: 642, column: 21, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !612, file: !4, line: 642, column: 9)
!3389 = !DILocation(line: 642, column: 23, scope: !3388)
!3390 = !DILocation(line: 642, column: 9, scope: !612)
!3391 = !DILocation(line: 643, column: 25, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !4, line: 642, column: 45)
!3393 = !DILocation(line: 643, column: 9, scope: !3392)
!3394 = !DILocation(line: 645, column: 9, scope: !3392)
!3395 = !DILocation(line: 648, column: 24, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !612, file: !4, line: 648, column: 9)
!3397 = !DILocation(line: 648, column: 29, scope: !3396)
!3398 = !DILocation(line: 648, column: 38, scope: !3396)
!3399 = !DILocation(line: 648, column: 57, scope: !3396)
!3400 = !DILocation(line: 648, column: 91, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !3396, file: !4, discriminator: 2)
!3402 = !DILocation(line: 648, column: 96, scope: !3396)
!3403 = !DILocation(line: 648, column: 60, scope: !3396)
!3404 = !DILocation(line: 648, column: 9, scope: !612)
!3405 = !DILocation(line: 648, column: 150, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3407, file: !4, discriminator: 3)
!3407 = !DILexicalBlockFile(scope: !3396, file: !4, discriminator: 1)
!3408 = !DILocation(line: 648, column: 132, scope: !3396)
!3409 = !DILocation(line: 648, column: 155, scope: !3396)
!3410 = !DILocation(line: 648, column: 128, scope: !3396)
!3411 = !DILocation(line: 648, column: 125, scope: !3396)
!3412 = !DILocation(line: 648, column: 174, scope: !3413)
!3413 = !DILexicalBlockFile(scope: !3414, file: !4, discriminator: 4)
!3414 = distinct !DILexicalBlock(scope: !3396, file: !4, line: 648, column: 174)
!3415 = !DILocation(line: 648, column: 205, scope: !3414)
!3416 = !DILocation(line: 648, column: 174, scope: !3396)
!3417 = !DILocation(line: 648, column: 217, scope: !3418)
!3418 = !DILexicalBlockFile(scope: !3414, file: !4, discriminator: 5)
!3419 = !DILocation(line: 648, column: 210, scope: !3414)
!3420 = !DILocation(line: 649, column: 24, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !612, file: !4, line: 649, column: 9)
!3422 = !DILocation(line: 649, column: 29, scope: !3421)
!3423 = !DILocation(line: 649, column: 38, scope: !3421)
!3424 = !DILocation(line: 649, column: 57, scope: !3421)
!3425 = !DILocation(line: 649, column: 91, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3421, file: !4, discriminator: 2)
!3427 = !DILocation(line: 649, column: 96, scope: !3421)
!3428 = !DILocation(line: 649, column: 60, scope: !3421)
!3429 = !DILocation(line: 649, column: 9, scope: !612)
!3430 = !DILocation(line: 649, column: 150, scope: !3431)
!3431 = !DILexicalBlockFile(scope: !3432, file: !4, discriminator: 3)
!3432 = !DILexicalBlockFile(scope: !3421, file: !4, discriminator: 1)
!3433 = !DILocation(line: 649, column: 132, scope: !3421)
!3434 = !DILocation(line: 649, column: 155, scope: !3421)
!3435 = !DILocation(line: 649, column: 128, scope: !3421)
!3436 = !DILocation(line: 649, column: 125, scope: !3421)
!3437 = !DILocation(line: 649, column: 174, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !3439, file: !4, discriminator: 4)
!3439 = distinct !DILexicalBlock(scope: !3421, file: !4, line: 649, column: 174)
!3440 = !DILocation(line: 649, column: 205, scope: !3439)
!3441 = !DILocation(line: 649, column: 174, scope: !3421)
!3442 = !DILocation(line: 649, column: 217, scope: !3443)
!3443 = !DILexicalBlockFile(scope: !3439, file: !4, discriminator: 5)
!3444 = !DILocation(line: 649, column: 210, scope: !3439)
!3445 = !DILocation(line: 652, column: 9, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !612, file: !4, line: 652, column: 9)
!3447 = !DILocation(line: 652, column: 12, scope: !3446)
!3448 = !DILocation(line: 652, column: 9, scope: !612)
!3449 = !DILocation(line: 653, column: 16, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3446, file: !4, line: 652, column: 18)
!3451 = !DILocation(line: 653, column: 9, scope: !3450)
!3452 = !DILocation(line: 655, column: 9, scope: !612)
!3453 = !DILocation(line: 655, column: 52, scope: !3454)
!3454 = !DILexicalBlockFile(scope: !3455, file: !4, discriminator: 1)
!3455 = distinct !DILexicalBlock(scope: !612, file: !4, line: 655, column: 9)
!3456 = !DILocation(line: 655, column: 42, scope: !3455)
!3457 = !DILocation(line: 655, column: 10, scope: !3455)
!3458 = !DILocation(line: 655, column: 9, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 2)
!3460 = !DILocation(line: 655, column: 100, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3455, file: !4, discriminator: 3)
!3462 = !DILocation(line: 655, column: 91, scope: !3455)
!3463 = !DILocation(line: 655, column: 58, scope: !3455)
!3464 = !DILocation(line: 655, column: 116, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3455, file: !4, discriminator: 4)
!3466 = !DILocation(line: 655, column: 106, scope: !3455)
!3467 = !DILocation(line: 656, column: 35, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3455, file: !4, line: 655, column: 122)
!3469 = !DILocation(line: 656, column: 16, scope: !3468)
!3470 = !DILocation(line: 656, column: 9, scope: !3468)
!3471 = !DILocation(line: 658, column: 9, scope: !612)
!3472 = !DILocation(line: 658, column: 52, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !3474, file: !4, discriminator: 1)
!3474 = distinct !DILexicalBlock(scope: !612, file: !4, line: 658, column: 9)
!3475 = !DILocation(line: 658, column: 42, scope: !3474)
!3476 = !DILocation(line: 658, column: 10, scope: !3474)
!3477 = !DILocation(line: 658, column: 9, scope: !3459)
!3478 = !DILocation(line: 658, column: 100, scope: !3479)
!3479 = !DILexicalBlockFile(scope: !3474, file: !4, discriminator: 3)
!3480 = !DILocation(line: 658, column: 91, scope: !3474)
!3481 = !DILocation(line: 658, column: 58, scope: !3474)
!3482 = !DILocation(line: 658, column: 116, scope: !3483)
!3483 = !DILexicalBlockFile(scope: !3474, file: !4, discriminator: 4)
!3484 = !DILocation(line: 658, column: 106, scope: !3474)
!3485 = !DILocation(line: 659, column: 35, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3474, file: !4, line: 658, column: 122)
!3487 = !DILocation(line: 659, column: 38, scope: !3486)
!3488 = !DILocation(line: 659, column: 35, scope: !3489)
!3489 = !DILexicalBlockFile(scope: !3486, file: !4, discriminator: 1)
!3490 = !DILocation(line: 659, column: 53, scope: !3491)
!3491 = !DILexicalBlockFile(scope: !3486, file: !4, discriminator: 2)
!3492 = !DILocation(line: 659, column: 16, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3494, file: !4, discriminator: 4)
!3494 = !DILexicalBlockFile(scope: !3486, file: !4, discriminator: 3)
!3495 = !DILocation(line: 659, column: 9, scope: !3486)
!3496 = !DILocation(line: 661, column: 9, scope: !612)
!3497 = !DILocation(line: 661, column: 52, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3499, file: !4, discriminator: 1)
!3499 = distinct !DILexicalBlock(scope: !612, file: !4, line: 661, column: 9)
!3500 = !DILocation(line: 661, column: 42, scope: !3499)
!3501 = !DILocation(line: 661, column: 10, scope: !3499)
!3502 = !DILocation(line: 661, column: 9, scope: !3459)
!3503 = !DILocation(line: 661, column: 100, scope: !3504)
!3504 = !DILexicalBlockFile(scope: !3499, file: !4, discriminator: 3)
!3505 = !DILocation(line: 661, column: 91, scope: !3499)
!3506 = !DILocation(line: 661, column: 58, scope: !3499)
!3507 = !DILocation(line: 661, column: 116, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3499, file: !4, discriminator: 4)
!3509 = !DILocation(line: 661, column: 106, scope: !3499)
!3510 = !DILocation(line: 668, column: 19, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3499, file: !4, line: 661, column: 122)
!3512 = !DILocation(line: 668, column: 14, scope: !3511)
!3513 = !DILocation(line: 668, column: 12, scope: !3511)
!3514 = !DILocation(line: 669, column: 13, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !4, line: 669, column: 13)
!3516 = !DILocation(line: 669, column: 16, scope: !3515)
!3517 = !DILocation(line: 669, column: 13, scope: !3511)
!3518 = !DILocation(line: 670, column: 20, scope: !3515)
!3519 = !DILocation(line: 670, column: 13, scope: !3515)
!3520 = !DILocation(line: 671, column: 19, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3515, file: !4, line: 671, column: 18)
!3522 = !DILocation(line: 671, column: 22, scope: !3521)
!3523 = !DILocation(line: 671, column: 33, scope: !3521)
!3524 = !DILocation(line: 671, column: 36, scope: !3521)
!3525 = !DILocation(line: 671, column: 29, scope: !3521)
!3526 = !DILocation(line: 671, column: 18, scope: !3515)
!3527 = !DILocation(line: 672, column: 44, scope: !3521)
!3528 = !DILocation(line: 672, column: 39, scope: !3521)
!3529 = !DILocation(line: 672, column: 20, scope: !3521)
!3530 = !DILocation(line: 672, column: 13, scope: !3521)
!3531 = !DILocation(line: 674, column: 20, scope: !3521)
!3532 = !DILocation(line: 674, column: 13, scope: !3521)
!3533 = !DILocation(line: 676, column: 9, scope: !612)
!3534 = !DILocation(line: 676, column: 52, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !623, file: !4, discriminator: 1)
!3536 = !DILocation(line: 676, column: 42, scope: !623)
!3537 = !DILocation(line: 676, column: 10, scope: !623)
!3538 = !DILocation(line: 676, column: 9, scope: !3459)
!3539 = !DILocation(line: 676, column: 100, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !623, file: !4, discriminator: 3)
!3541 = !DILocation(line: 676, column: 91, scope: !623)
!3542 = !DILocation(line: 676, column: 58, scope: !623)
!3543 = !DILocation(line: 676, column: 116, scope: !3544)
!3544 = !DILexicalBlockFile(scope: !623, file: !4, discriminator: 4)
!3545 = !DILocation(line: 676, column: 106, scope: !623)
!3546 = !DILocation(line: 681, column: 9, scope: !622)
!3547 = !DILocation(line: 681, column: 13, scope: !622)
!3548 = !DILocation(line: 681, column: 36, scope: !622)
!3549 = !DILocation(line: 681, column: 31, scope: !622)
!3550 = !DILocation(line: 681, column: 26, scope: !622)
!3551 = !DILocation(line: 681, column: 46, scope: !622)
!3552 = !DILocation(line: 682, column: 13, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !622, file: !4, line: 682, column: 13)
!3554 = !DILocation(line: 682, column: 16, scope: !3553)
!3555 = !DILocation(line: 682, column: 13, scope: !622)
!3556 = !DILocation(line: 683, column: 39, scope: !3553)
!3557 = !DILocation(line: 683, column: 51, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3553, file: !4, discriminator: 1)
!3559 = !DILocation(line: 683, column: 61, scope: !3560)
!3560 = !DILexicalBlockFile(scope: !3553, file: !4, discriminator: 2)
!3561 = !DILocation(line: 683, column: 56, scope: !3553)
!3562 = !DILocation(line: 683, column: 20, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3564, file: !4, discriminator: 4)
!3564 = !DILexicalBlockFile(scope: !3553, file: !4, discriminator: 3)
!3565 = !DILocation(line: 683, column: 13, scope: !3553)
!3566 = !DILocation(line: 685, column: 39, scope: !3553)
!3567 = !DILocation(line: 686, column: 53, scope: !3553)
!3568 = !DILocation(line: 686, column: 39, scope: !3553)
!3569 = !DILocation(line: 685, column: 39, scope: !3558)
!3570 = !DILocation(line: 685, column: 20, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3560, file: !4, discriminator: 3)
!3572 = !DILocation(line: 685, column: 13, scope: !3553)
!3573 = !DILocation(line: 687, column: 5, scope: !623)
!3574 = !DILocation(line: 688, column: 9, scope: !626)
!3575 = !DILocation(line: 688, column: 12, scope: !626)
!3576 = !DILocation(line: 688, column: 9, scope: !612)
!3577 = !DILocation(line: 691, column: 9, scope: !625)
!3578 = !DILocation(line: 691, column: 13, scope: !625)
!3579 = !DILocation(line: 691, column: 36, scope: !625)
!3580 = !DILocation(line: 691, column: 31, scope: !625)
!3581 = !DILocation(line: 691, column: 26, scope: !625)
!3582 = !DILocation(line: 691, column: 46, scope: !625)
!3583 = !DILocation(line: 692, column: 13, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !625, file: !4, line: 692, column: 13)
!3585 = !DILocation(line: 692, column: 16, scope: !3584)
!3586 = !DILocation(line: 692, column: 13, scope: !625)
!3587 = !DILocation(line: 693, column: 29, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3584, file: !4, line: 692, column: 23)
!3589 = !DILocation(line: 693, column: 13, scope: !3588)
!3590 = !DILocation(line: 696, column: 13, scope: !3588)
!3591 = !DILocation(line: 699, column: 35, scope: !625)
!3592 = !DILocation(line: 699, column: 47, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !625, file: !4, discriminator: 1)
!3594 = !DILocation(line: 699, column: 35, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !625, file: !4, discriminator: 2)
!3596 = !DILocation(line: 699, column: 16, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3598, file: !4, discriminator: 4)
!3598 = !DILexicalBlockFile(scope: !625, file: !4, discriminator: 3)
!3599 = !DILocation(line: 699, column: 9, scope: !625)
!3600 = !DILocation(line: 700, column: 5, scope: !626)
!3601 = !DILocation(line: 702, column: 9, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !612, file: !4, line: 702, column: 9)
!3603 = !DILocation(line: 702, column: 12, scope: !3602)
!3604 = !DILocation(line: 702, column: 9, scope: !612)
!3605 = !DILocation(line: 706, column: 13, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !4, line: 706, column: 13)
!3607 = distinct !DILexicalBlock(scope: !3602, file: !4, line: 702, column: 19)
!3608 = !DILocation(line: 706, column: 25, scope: !3606)
!3609 = !DILocation(line: 706, column: 19, scope: !3606)
!3610 = !DILocation(line: 706, column: 16, scope: !3606)
!3611 = !DILocation(line: 706, column: 13, scope: !3607)
!3612 = !DILocation(line: 710, column: 35, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !4, line: 706, column: 30)
!3614 = !DILocation(line: 710, column: 49, scope: !3613)
!3615 = !{!1458, !1049, i64 40}
!3616 = !DILocation(line: 710, column: 58, scope: !3613)
!3617 = !DILocation(line: 710, column: 61, scope: !3613)
!3618 = !DILocation(line: 710, column: 64, scope: !3613)
!3619 = !DILocation(line: 710, column: 20, scope: !3613)
!3620 = !DILocation(line: 710, column: 13, scope: !3613)
!3621 = !DILocation(line: 716, column: 15, scope: !3607)
!3622 = !DILocation(line: 716, column: 14, scope: !3607)
!3623 = !DILocation(line: 716, column: 12, scope: !3607)
!3624 = !DILocation(line: 717, column: 36, scope: !3607)
!3625 = !DILocation(line: 717, column: 31, scope: !3607)
!3626 = !DILocation(line: 717, column: 26, scope: !3607)
!3627 = !DILocation(line: 717, column: 46, scope: !3607)
!3628 = !DILocation(line: 717, column: 23, scope: !3607)
!3629 = !DILocation(line: 718, column: 5, scope: !3607)
!3630 = !DILocation(line: 720, column: 9, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !612, file: !4, line: 720, column: 9)
!3632 = !DILocation(line: 720, column: 12, scope: !3631)
!3633 = !DILocation(line: 720, column: 9, scope: !612)
!3634 = !DILocation(line: 732, column: 35, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3631, file: !4, line: 720, column: 20)
!3636 = !DILocation(line: 732, column: 16, scope: !3635)
!3637 = !DILocation(line: 732, column: 9, scope: !3635)
!3638 = !DILocation(line: 739, column: 7, scope: !612)
!3639 = !DILocation(line: 739, column: 28, scope: !612)
!3640 = !DILocation(line: 741, column: 14, scope: !612)
!3641 = !DILocation(line: 741, column: 18, scope: !612)
!3642 = !DILocation(line: 741, column: 10, scope: !612)
!3643 = !DILocation(line: 741, column: 8, scope: !612)
!3644 = !DILocation(line: 743, column: 5, scope: !612)
!3645 = !DILocation(line: 743, column: 16, scope: !3646)
!3646 = !DILexicalBlockFile(scope: !3647, file: !4, discriminator: 1)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !4, line: 743, column: 14)
!3648 = distinct !DILexicalBlock(scope: !612, file: !4, line: 743, column: 8)
!3649 = !DILocation(line: 743, column: 15, scope: !3647)
!3650 = !DILocation(line: 743, column: 37, scope: !3647)
!3651 = !DILocation(line: 743, column: 14, scope: !3648)
!3652 = !DILocation(line: 743, column: 50, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !3654, file: !4, discriminator: 2)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !4, line: 743, column: 49)
!3655 = distinct !DILexicalBlock(scope: !3647, file: !4, line: 743, column: 43)
!3656 = !DILocation(line: 743, column: 54, scope: !3654)
!3657 = !DILocation(line: 743, column: 80, scope: !3654)
!3658 = !DILocation(line: 743, column: 84, scope: !3659)
!3659 = !DILexicalBlockFile(scope: !3654, file: !4, discriminator: 5)
!3660 = !DILocation(line: 743, column: 88, scope: !3654)
!3661 = !DILocation(line: 743, column: 49, scope: !3655)
!3662 = !DILocation(line: 743, column: 118, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3664, file: !4, discriminator: 6)
!3664 = !DILexicalBlockFile(scope: !3654, file: !4, discriminator: 4)
!3665 = !DILocation(line: 743, column: 139, scope: !3654)
!3666 = !DILocation(line: 743, column: 116, scope: !3654)
!3667 = !DILocation(line: 743, column: 145, scope: !3668)
!3668 = !DILexicalBlockFile(scope: !3669, file: !4, discriminator: 8)
!3669 = !DILexicalBlockFile(scope: !3655, file: !4, discriminator: 7)
!3670 = !DILocation(line: 743, column: 158, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3672, file: !4, discriminator: 3)
!3672 = distinct !DILexicalBlock(scope: !3647, file: !4, line: 743, column: 156)
!3673 = !DILocation(line: 743, column: 157, scope: !3672)
!3674 = !DILocation(line: 743, column: 179, scope: !3672)
!3675 = !DILocation(line: 743, column: 185, scope: !3672)
!3676 = !DILocation(line: 743, column: 189, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !3672, file: !4, discriminator: 10)
!3678 = !DILocation(line: 743, column: 193, scope: !3672)
!3679 = !DILocation(line: 743, column: 156, scope: !3647)
!3680 = !DILocation(line: 743, column: 203, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !3672, file: !4, discriminator: 11)
!3682 = !DILocation(line: 743, column: 224, scope: !3672)
!3683 = !DILocation(line: 743, column: 201, scope: !3672)
!3684 = !DILocation(line: 743, column: 229, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3648, file: !4, discriminator: 9)
!3686 = !DILocation(line: 743, column: 229, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3648, file: !4, discriminator: 12)
!3688 = !DILocation(line: 744, column: 9, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !612, file: !4, line: 744, column: 9)
!3690 = !DILocation(line: 744, column: 9, scope: !612)
!3691 = !DILocation(line: 745, column: 15, scope: !3689)
!3692 = !DILocation(line: 745, column: 14, scope: !3689)
!3693 = !DILocation(line: 745, column: 12, scope: !3689)
!3694 = !DILocation(line: 745, column: 9, scope: !3689)
!3695 = !DILocation(line: 747, column: 11, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !612, file: !4, line: 747, column: 9)
!3697 = !DILocation(line: 747, column: 10, scope: !3696)
!3698 = !DILocation(line: 747, column: 32, scope: !3696)
!3699 = !DILocation(line: 747, column: 9, scope: !612)
!3700 = !DILocation(line: 751, column: 30, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3696, file: !4, line: 747, column: 38)
!3702 = !DILocation(line: 751, column: 29, scope: !3701)
!3703 = !DILocation(line: 751, column: 51, scope: !3701)
!3704 = !DILocation(line: 751, column: 28, scope: !3701)
!3705 = !DILocation(line: 751, column: 59, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3701, file: !4, discriminator: 1)
!3707 = !DILocation(line: 752, column: 30, scope: !3701)
!3708 = !DILocation(line: 751, column: 9, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3710, file: !4, discriminator: 3)
!3710 = !DILexicalBlockFile(scope: !3701, file: !4, discriminator: 2)
!3711 = !DILocation(line: 753, column: 9, scope: !3701)
!3712 = !DILocation(line: 755, column: 31, scope: !612)
!3713 = !DILocation(line: 755, column: 12, scope: !612)
!3714 = !DILocation(line: 755, column: 5, scope: !612)
!3715 = !DILocation(line: 756, column: 1, scope: !612)
!3716 = !DILocation(line: 761, column: 26, scope: !627)
!3717 = !DILocation(line: 763, column: 32, scope: !627)
!3718 = !DILocation(line: 763, column: 35, scope: !627)
!3719 = !DILocation(line: 763, column: 31, scope: !627)
!3720 = !DILocation(line: 763, column: 12, scope: !627)
!3721 = !DILocation(line: 763, column: 5, scope: !627)
!3722 = !DILocation(line: 1019, column: 23, scope: !630)
!3723 = !DILocation(line: 1021, column: 24, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !630, file: !4, line: 1021, column: 9)
!3725 = !DILocation(line: 1021, column: 29, scope: !3724)
!3726 = !DILocation(line: 1021, column: 38, scope: !3724)
!3727 = !DILocation(line: 1021, column: 9, scope: !630)
!3728 = !DILocation(line: 1022, column: 25, scope: !3724)
!3729 = !DILocation(line: 1022, column: 30, scope: !3724)
!3730 = !DILocation(line: 1022, column: 39, scope: !3724)
!3731 = !DILocation(line: 1022, column: 9, scope: !3724)
!3732 = !DILocation(line: 1024, column: 50, scope: !3724)
!3733 = !DILocation(line: 1024, column: 33, scope: !3724)
!3734 = !DILocation(line: 1024, column: 54, scope: !3724)
!3735 = !DILocation(line: 1024, column: 13, scope: !3724)
!3736 = !DILocation(line: 1024, column: 11, scope: !3724)
!3737 = !DILocation(line: 1025, column: 12, scope: !630)
!3738 = !DILocation(line: 1025, column: 5, scope: !630)
!3739 = !DILocation(line: 767, column: 26, scope: !633)
!3740 = !DILocation(line: 769, column: 36, scope: !633)
!3741 = !DILocation(line: 769, column: 39, scope: !633)
!3742 = !DILocation(line: 769, column: 31, scope: !633)
!3743 = !DILocation(line: 769, column: 12, scope: !633)
!3744 = !DILocation(line: 769, column: 5, scope: !633)
!3745 = !DILocation(line: 773, column: 27, scope: !636)
!3746 = !DILocation(line: 775, column: 12, scope: !636)
!3747 = !DILocation(line: 775, column: 15, scope: !636)
!3748 = !DILocation(line: 775, column: 23, scope: !636)
!3749 = !DILocation(line: 775, column: 5, scope: !636)
!3750 = !DILocation(line: 831, column: 23, scope: !641)
!3751 = !DILocation(line: 833, column: 5, scope: !641)
!3752 = !DILocation(line: 833, column: 12, scope: !641)
!3753 = !DILocation(line: 833, column: 33, scope: !641)
!3754 = !DILocation(line: 833, column: 16, scope: !641)
!3755 = !DILocation(line: 834, column: 5, scope: !641)
!3756 = !DILocation(line: 834, column: 12, scope: !641)
!3757 = !DILocation(line: 836, column: 16, scope: !641)
!3758 = !DILocation(line: 836, column: 11, scope: !641)
!3759 = !DILocation(line: 849, column: 39, scope: !648)
!3760 = !DILocation(line: 849, column: 37, scope: !648)
!3761 = !DILocation(line: 849, column: 49, scope: !648)
!3762 = !DILocation(line: 849, column: 52, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !648, file: !4, discriminator: 1)
!3764 = !DILocation(line: 849, column: 62, scope: !648)
!3765 = !DILocation(line: 849, column: 9, scope: !641)
!3766 = !DILocation(line: 850, column: 9, scope: !647)
!3767 = !DILocation(line: 850, column: 20, scope: !647)
!3768 = !DILocation(line: 850, column: 35, scope: !647)
!3769 = !DILocation(line: 850, column: 29, scope: !647)
!3770 = !DILocation(line: 851, column: 32, scope: !647)
!3771 = !DILocation(line: 851, column: 16, scope: !647)
!3772 = !DILocation(line: 851, column: 9, scope: !647)
!3773 = !DILocation(line: 852, column: 5, scope: !648)
!3774 = !DILocation(line: 853, column: 30, scope: !641)
!3775 = !DILocation(line: 853, column: 12, scope: !641)
!3776 = !DILocation(line: 853, column: 5, scope: !641)
!3777 = !DILocation(line: 854, column: 1, scope: !641)
!3778 = !DILocation(line: 618, column: 27, scope: !650)
!3779 = !DILocation(line: 618, column: 40, scope: !650)
!3780 = !DILocation(line: 620, column: 5, scope: !650)
!3781 = !DILocation(line: 620, column: 15, scope: !650)
!3782 = !DILocation(line: 620, column: 19, scope: !650)
!3783 = !DILocation(line: 622, column: 22, scope: !650)
!3784 = !DILocation(line: 622, column: 25, scope: !650)
!3785 = !DILocation(line: 622, column: 9, scope: !650)
!3786 = !DILocation(line: 622, column: 7, scope: !650)
!3787 = !DILocation(line: 623, column: 9, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !650, file: !4, line: 623, column: 9)
!3789 = !DILocation(line: 623, column: 11, scope: !3788)
!3790 = !DILocation(line: 623, column: 25, scope: !3788)
!3791 = !DILocation(line: 623, column: 28, scope: !3792)
!3792 = !DILexicalBlockFile(scope: !3788, file: !4, discriminator: 1)
!3793 = !DILocation(line: 623, column: 30, scope: !3788)
!3794 = !DILocation(line: 623, column: 9, scope: !650)
!3795 = !DILocation(line: 624, column: 16, scope: !3788)
!3796 = !DILocation(line: 624, column: 9, scope: !3788)
!3797 = !DILocation(line: 626, column: 29, scope: !650)
!3798 = !DILocation(line: 626, column: 11, scope: !650)
!3799 = !DILocation(line: 626, column: 34, scope: !650)
!3800 = !DILocation(line: 626, column: 10, scope: !650)
!3801 = !DILocation(line: 626, column: 7, scope: !650)
!3802 = !DILocation(line: 627, column: 21, scope: !650)
!3803 = !DILocation(line: 627, column: 26, scope: !650)
!3804 = !DILocation(line: 627, column: 35, scope: !650)
!3805 = !DILocation(line: 628, column: 5, scope: !650)
!3806 = !DILocation(line: 628, column: 10, scope: !3807)
!3807 = !DILexicalBlockFile(scope: !657, file: !4, discriminator: 1)
!3808 = !DILocation(line: 628, column: 20, scope: !657)
!3809 = !DILocation(line: 628, column: 50, scope: !657)
!3810 = !DILocation(line: 628, column: 62, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !657, file: !4, line: 628, column: 59)
!3812 = !DILocation(line: 628, column: 79, scope: !3811)
!3813 = !DILocation(line: 628, column: 59, scope: !3811)
!3814 = !DILocation(line: 628, column: 89, scope: !3811)
!3815 = !DILocation(line: 628, column: 59, scope: !657)
!3816 = !DILocation(line: 628, column: 59, scope: !3817)
!3817 = !DILexicalBlockFile(scope: !657, file: !4, discriminator: 2)
!3818 = !DILocation(line: 628, column: 120, scope: !3819)
!3819 = !DILexicalBlockFile(scope: !3811, file: !4, discriminator: 3)
!3820 = !DILocation(line: 628, column: 138, scope: !3811)
!3821 = !DILocation(line: 628, column: 148, scope: !3811)
!3822 = !DILocation(line: 628, column: 173, scope: !3811)
!3823 = !DILocation(line: 628, column: 104, scope: !3811)
!3824 = !DILocation(line: 628, column: 192, scope: !3825)
!3825 = !DILexicalBlockFile(scope: !650, file: !4, discriminator: 4)
!3826 = !DILocation(line: 628, column: 192, scope: !657)
!3827 = !DILocation(line: 628, column: 192, scope: !3828)
!3828 = !DILexicalBlockFile(scope: !657, file: !4, discriminator: 5)
!3829 = !DILocation(line: 629, column: 12, scope: !650)
!3830 = !DILocation(line: 629, column: 5, scope: !650)
!3831 = !DILocation(line: 630, column: 1, scope: !650)
!3832 = !DILocation(line: 524, column: 21, scope: !658)
!3833 = !DILocation(line: 524, column: 34, scope: !658)
!3834 = !DILocation(line: 526, column: 5, scope: !658)
!3835 = !DILocation(line: 526, column: 12, scope: !658)
!3836 = !DILocation(line: 526, column: 14, scope: !658)
!3837 = !DILocation(line: 527, column: 24, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !658, file: !4, line: 527, column: 9)
!3839 = !DILocation(line: 527, column: 29, scope: !3838)
!3840 = !DILocation(line: 527, column: 38, scope: !3838)
!3841 = !DILocation(line: 527, column: 57, scope: !3838)
!3842 = !DILocation(line: 527, column: 91, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !3838, file: !4, discriminator: 2)
!3844 = !DILocation(line: 527, column: 96, scope: !3838)
!3845 = !DILocation(line: 527, column: 60, scope: !3838)
!3846 = !DILocation(line: 527, column: 9, scope: !658)
!3847 = !DILocation(line: 527, column: 149, scope: !3848)
!3848 = !DILexicalBlockFile(scope: !3849, file: !4, discriminator: 3)
!3849 = !DILexicalBlockFile(scope: !3838, file: !4, discriminator: 1)
!3850 = !DILocation(line: 527, column: 131, scope: !3838)
!3851 = !DILocation(line: 527, column: 154, scope: !3838)
!3852 = !DILocation(line: 527, column: 127, scope: !3838)
!3853 = !DILocation(line: 527, column: 125, scope: !3838)
!3854 = !DILocation(line: 527, column: 173, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !3856, file: !4, discriminator: 4)
!3856 = distinct !DILexicalBlock(scope: !3838, file: !4, line: 527, column: 173)
!3857 = !DILocation(line: 527, column: 203, scope: !3856)
!3858 = !DILocation(line: 527, column: 173, scope: !3838)
!3859 = !DILocation(line: 527, column: 215, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3856, file: !4, discriminator: 5)
!3861 = !DILocation(line: 527, column: 208, scope: !3856)
!3862 = !DILocation(line: 528, column: 24, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !658, file: !4, line: 528, column: 9)
!3864 = !DILocation(line: 528, column: 29, scope: !3863)
!3865 = !DILocation(line: 528, column: 38, scope: !3863)
!3866 = !DILocation(line: 528, column: 57, scope: !3863)
!3867 = !DILocation(line: 528, column: 91, scope: !3868)
!3868 = !DILexicalBlockFile(scope: !3863, file: !4, discriminator: 2)
!3869 = !DILocation(line: 528, column: 96, scope: !3863)
!3870 = !DILocation(line: 528, column: 60, scope: !3863)
!3871 = !DILocation(line: 528, column: 9, scope: !658)
!3872 = !DILocation(line: 528, column: 149, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3874, file: !4, discriminator: 3)
!3874 = !DILexicalBlockFile(scope: !3863, file: !4, discriminator: 1)
!3875 = !DILocation(line: 528, column: 131, scope: !3863)
!3876 = !DILocation(line: 528, column: 154, scope: !3863)
!3877 = !DILocation(line: 528, column: 127, scope: !3863)
!3878 = !DILocation(line: 528, column: 125, scope: !3863)
!3879 = !DILocation(line: 528, column: 173, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3881, file: !4, discriminator: 4)
!3881 = distinct !DILexicalBlock(scope: !3863, file: !4, line: 528, column: 173)
!3882 = !DILocation(line: 528, column: 203, scope: !3881)
!3883 = !DILocation(line: 528, column: 173, scope: !3863)
!3884 = !DILocation(line: 528, column: 215, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3881, file: !4, discriminator: 5)
!3886 = !DILocation(line: 528, column: 208, scope: !3881)
!3887 = !DILocation(line: 529, column: 9, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !658, file: !4, line: 529, column: 9)
!3889 = !DILocation(line: 529, column: 11, scope: !3888)
!3890 = !DILocation(line: 529, column: 9, scope: !658)
!3891 = !DILocation(line: 530, column: 25, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3888, file: !4, line: 529, column: 19)
!3893 = !DILocation(line: 530, column: 9, scope: !3892)
!3894 = !DILocation(line: 532, column: 9, scope: !3892)
!3895 = !DILocation(line: 535, column: 9, scope: !658)
!3896 = !DILocation(line: 535, column: 13, scope: !658)
!3897 = !DILocation(line: 535, column: 11, scope: !658)
!3898 = !DILocation(line: 535, column: 7, scope: !658)
!3899 = !DILocation(line: 537, column: 31, scope: !658)
!3900 = !DILocation(line: 537, column: 12, scope: !658)
!3901 = !DILocation(line: 537, column: 5, scope: !658)
!3902 = !DILocation(line: 538, column: 1, scope: !658)
!3903 = !DILocation(line: 243, column: 30, scope: !575)
!3904 = !DILocation(line: 243, column: 41, scope: !575)
!3905 = !DILocation(line: 245, column: 5, scope: !575)
!3906 = !DILocation(line: 245, column: 15, scope: !575)
!3907 = !DILocation(line: 245, column: 22, scope: !575)
!3908 = !DILocation(line: 245, column: 21, scope: !575)
!3909 = !DILocation(line: 247, column: 26, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !575, file: !4, line: 247, column: 9)
!3911 = !DILocation(line: 247, column: 33, scope: !3910)
!3912 = !DILocation(line: 247, column: 44, scope: !3910)
!3913 = !DILocation(line: 247, column: 53, scope: !3910)
!3914 = !DILocation(line: 247, column: 70, scope: !3910)
!3915 = !DILocation(line: 247, column: 9, scope: !575)
!3916 = !DILocation(line: 248, column: 32, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3910, file: !4, line: 247, column: 77)
!3918 = !DILocation(line: 248, column: 16, scope: !3917)
!3919 = !DILocation(line: 248, column: 10, scope: !3917)
!3920 = !DILocation(line: 248, column: 14, scope: !3917)
!3921 = !DILocation(line: 249, column: 14, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3917, file: !4, line: 249, column: 13)
!3923 = !DILocation(line: 249, column: 13, scope: !3922)
!3924 = !DILocation(line: 249, column: 18, scope: !3922)
!3925 = !DILocation(line: 249, column: 26, scope: !3922)
!3926 = !DILocation(line: 249, column: 29, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3922, file: !4, discriminator: 1)
!3928 = !DILocation(line: 249, column: 13, scope: !3917)
!3929 = !DILocation(line: 250, column: 14, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3922, file: !4, line: 249, column: 47)
!3931 = !DILocation(line: 250, column: 16, scope: !3930)
!3932 = !DILocation(line: 251, column: 13, scope: !3930)
!3933 = !DILocation(line: 253, column: 5, scope: !3917)
!3934 = !DILocation(line: 255, column: 65, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3910, file: !4, line: 254, column: 10)
!3936 = !DILocation(line: 256, column: 10, scope: !3935)
!3937 = !DILocation(line: 256, column: 12, scope: !3935)
!3938 = !DILocation(line: 257, column: 9, scope: !3935)
!3939 = !DILocation(line: 259, column: 5, scope: !575)
!3940 = !DILocation(line: 260, column: 1, scope: !575)
!3941 = !DILocation(line: 973, column: 23, scope: !716)
!3942 = !DILocation(line: 973, column: 36, scope: !716)
!3943 = !DILocation(line: 975, column: 5, scope: !716)
!3944 = !DILocation(line: 975, column: 12, scope: !716)
!3945 = !DILocation(line: 975, column: 15, scope: !716)
!3946 = !DILocation(line: 976, column: 5, scope: !716)
!3947 = !DILocation(line: 976, column: 15, scope: !716)
!3948 = !DILocation(line: 977, column: 5, scope: !716)
!3949 = !DILocation(line: 977, column: 16, scope: !716)
!3950 = !DILocation(line: 979, column: 26, scope: !716)
!3951 = !DILocation(line: 979, column: 9, scope: !716)
!3952 = !DILocation(line: 979, column: 7, scope: !716)
!3953 = !DILocation(line: 980, column: 27, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !716, file: !4, line: 980, column: 9)
!3955 = !DILocation(line: 980, column: 10, scope: !3954)
!3956 = !DILocation(line: 980, column: 9, scope: !716)
!3957 = !DILocation(line: 981, column: 9, scope: !3954)
!3958 = !DILocation(line: 982, column: 9, scope: !3959)
!3959 = distinct !DILexicalBlock(scope: !716, file: !4, line: 982, column: 9)
!3960 = !DILocation(line: 982, column: 19, scope: !3959)
!3961 = !DILocation(line: 982, column: 9, scope: !716)
!3962 = !DILocation(line: 984, column: 25, scope: !3963)
!3963 = distinct !DILexicalBlock(scope: !3959, file: !4, line: 982, column: 34)
!3964 = !DILocation(line: 984, column: 19, scope: !3963)
!3965 = !DILocation(line: 984, column: 17, scope: !3963)
!3966 = !DILocation(line: 985, column: 18, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3963, file: !4, line: 985, column: 13)
!3968 = !DILocation(line: 985, column: 20, scope: !3967)
!3969 = !DILocation(line: 985, column: 19, scope: !3967)
!3970 = !DILocation(line: 985, column: 13, scope: !3967)
!3971 = !DILocation(line: 985, column: 29, scope: !3967)
!3972 = !DILocation(line: 985, column: 13, scope: !3963)
!3973 = !DILocation(line: 987, column: 33, scope: !3967)
!3974 = !DILocation(line: 987, column: 34, scope: !3967)
!3975 = !DILocation(line: 987, column: 27, scope: !3967)
!3976 = !DILocation(line: 987, column: 26, scope: !3967)
!3977 = !DILocation(line: 987, column: 21, scope: !3967)
!3978 = !DILocation(line: 987, column: 13, scope: !3967)
!3979 = !DILocation(line: 988, column: 34, scope: !3963)
!3980 = !DILocation(line: 988, column: 16, scope: !3963)
!3981 = !DILocation(line: 988, column: 9, scope: !3963)
!3982 = !DILocation(line: 992, column: 34, scope: !716)
!3983 = !DILocation(line: 992, column: 15, scope: !716)
!3984 = !DILocation(line: 992, column: 13, scope: !716)
!3985 = !DILocation(line: 993, column: 9, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !716, file: !4, line: 993, column: 9)
!3987 = !DILocation(line: 993, column: 17, scope: !3986)
!3988 = !DILocation(line: 993, column: 23, scope: !3986)
!3989 = !DILocation(line: 993, column: 26, scope: !3990)
!3990 = !DILexicalBlockFile(scope: !3986, file: !4, discriminator: 1)
!3991 = !DILocation(line: 993, column: 9, scope: !716)
!3992 = !DILocation(line: 994, column: 9, scope: !3986)
!3993 = !DILocation(line: 997, column: 9, scope: !716)
!3994 = !DILocation(line: 997, column: 53, scope: !3995)
!3995 = !DILexicalBlockFile(scope: !3996, file: !4, discriminator: 1)
!3996 = distinct !DILexicalBlock(scope: !716, file: !4, line: 997, column: 9)
!3997 = !DILocation(line: 997, column: 42, scope: !3996)
!3998 = !DILocation(line: 997, column: 11, scope: !3996)
!3999 = !DILocation(line: 997, column: 9, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 2)
!4001 = !DILocation(line: 997, column: 100, scope: !4002)
!4002 = !DILexicalBlockFile(scope: !3996, file: !4, discriminator: 3)
!4003 = !DILocation(line: 997, column: 90, scope: !3996)
!4004 = !DILocation(line: 997, column: 58, scope: !3996)
!4005 = !DILocation(line: 997, column: 116, scope: !4006)
!4006 = !DILexicalBlockFile(scope: !3996, file: !4, discriminator: 4)
!4007 = !DILocation(line: 997, column: 105, scope: !3996)
!4008 = !DILocation(line: 998, column: 35, scope: !3996)
!4009 = !DILocation(line: 998, column: 16, scope: !3996)
!4010 = !DILocation(line: 998, column: 9, scope: !3996)
!4011 = !DILocation(line: 1005, column: 9, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1005, column: 9)
!4013 = !DILocation(line: 1005, column: 17, scope: !4012)
!4014 = !DILocation(line: 1005, column: 9, scope: !716)
!4015 = !DILocation(line: 1007, column: 35, scope: !4012)
!4016 = !DILocation(line: 1007, column: 16, scope: !4012)
!4017 = !DILocation(line: 1007, column: 9, scope: !4012)
!4018 = !DILocation(line: 1008, column: 14, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !4, line: 1008, column: 14)
!4020 = !DILocation(line: 1008, column: 22, scope: !4019)
!4021 = !DILocation(line: 1008, column: 14, scope: !4012)
!4022 = !DILocation(line: 1010, column: 39, scope: !4019)
!4023 = !DILocation(line: 1010, column: 38, scope: !4019)
!4024 = !DILocation(line: 1010, column: 16, scope: !4019)
!4025 = !DILocation(line: 1010, column: 9, scope: !4019)
!4026 = !DILocation(line: 1013, column: 29, scope: !4019)
!4027 = !DILocation(line: 1013, column: 37, scope: !4019)
!4028 = !DILocation(line: 1013, column: 32, scope: !4019)
!4029 = !DILocation(line: 1013, column: 16, scope: !4019)
!4030 = !DILocation(line: 1013, column: 9, scope: !4019)
!4031 = !DILocation(line: 1016, column: 1, scope: !716)
!4032 = !DILocation(line: 1424, column: 34, scope: !745)
!4033 = !DILocation(line: 1424, column: 47, scope: !745)
!4034 = !DILocation(line: 1426, column: 5, scope: !745)
!4035 = !DILocation(line: 1426, column: 12, scope: !745)
!4036 = !DILocation(line: 1427, column: 5, scope: !745)
!4037 = !DILocation(line: 1427, column: 12, scope: !745)
!4038 = !DILocation(line: 1428, column: 5, scope: !745)
!4039 = !DILocation(line: 1428, column: 9, scope: !745)
!4040 = !DILocation(line: 1429, column: 5, scope: !745)
!4041 = !DILocation(line: 1429, column: 9, scope: !745)
!4042 = !DILocation(line: 1431, column: 5, scope: !745)
!4043 = !DILocation(line: 1431, column: 15, scope: !745)
!4044 = !DILocation(line: 1432, column: 5, scope: !745)
!4045 = !DILocation(line: 1432, column: 15, scope: !745)
!4046 = !DILocation(line: 1433, column: 5, scope: !745)
!4047 = !DILocation(line: 1433, column: 15, scope: !745)
!4048 = !DILocation(line: 1434, column: 5, scope: !745)
!4049 = !DILocation(line: 1434, column: 15, scope: !745)
!4050 = !DILocation(line: 1435, column: 5, scope: !745)
!4051 = !DILocation(line: 1435, column: 15, scope: !745)
!4052 = !DILocation(line: 1436, column: 5, scope: !745)
!4053 = !DILocation(line: 1436, column: 22, scope: !745)
!4054 = !DILocation(line: 1436, column: 49, scope: !745)
!4055 = !DILocation(line: 1443, column: 24, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1443, column: 9)
!4057 = !DILocation(line: 1443, column: 29, scope: !4056)
!4058 = !DILocation(line: 1443, column: 38, scope: !4056)
!4059 = !DILocation(line: 1443, column: 57, scope: !4056)
!4060 = !DILocation(line: 1443, column: 91, scope: !4061)
!4061 = !DILexicalBlockFile(scope: !4056, file: !4, discriminator: 2)
!4062 = !DILocation(line: 1443, column: 96, scope: !4056)
!4063 = !DILocation(line: 1443, column: 60, scope: !4056)
!4064 = !DILocation(line: 1443, column: 9, scope: !745)
!4065 = !DILocation(line: 1443, column: 152, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !4067, file: !4, discriminator: 3)
!4067 = !DILexicalBlockFile(scope: !4056, file: !4, discriminator: 1)
!4068 = !DILocation(line: 1443, column: 134, scope: !4056)
!4069 = !DILocation(line: 1443, column: 157, scope: !4056)
!4070 = !DILocation(line: 1443, column: 130, scope: !4056)
!4071 = !DILocation(line: 1443, column: 125, scope: !4056)
!4072 = !DILocation(line: 1443, column: 176, scope: !4073)
!4073 = !DILexicalBlockFile(scope: !4074, file: !4, discriminator: 4)
!4074 = distinct !DILexicalBlock(scope: !4056, file: !4, line: 1443, column: 176)
!4075 = !DILocation(line: 1443, column: 209, scope: !4074)
!4076 = !DILocation(line: 1443, column: 176, scope: !4056)
!4077 = !DILocation(line: 1443, column: 221, scope: !4078)
!4078 = !DILexicalBlockFile(scope: !4074, file: !4, discriminator: 5)
!4079 = !DILocation(line: 1443, column: 214, scope: !4074)
!4080 = !DILocation(line: 1445, column: 9, scope: !745)
!4081 = !DILocation(line: 1445, column: 54, scope: !4082)
!4082 = !DILexicalBlockFile(scope: !4083, file: !4, discriminator: 1)
!4083 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1445, column: 9)
!4084 = !DILocation(line: 1445, column: 44, scope: !4083)
!4085 = !DILocation(line: 1445, column: 10, scope: !4083)
!4086 = !DILocation(line: 1445, column: 9, scope: !4087)
!4087 = !DILexicalBlockFile(scope: !745, file: !4, discriminator: 2)
!4088 = !DILocation(line: 1445, column: 106, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !4083, file: !4, discriminator: 3)
!4090 = !DILocation(line: 1445, column: 97, scope: !4083)
!4091 = !DILocation(line: 1445, column: 62, scope: !4083)
!4092 = !DILocation(line: 1445, column: 124, scope: !4093)
!4093 = !DILexicalBlockFile(scope: !4083, file: !4, discriminator: 4)
!4094 = !DILocation(line: 1445, column: 114, scope: !4083)
!4095 = !DILocation(line: 1446, column: 23, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4083, file: !4, line: 1445, column: 132)
!4097 = !DILocation(line: 1446, column: 7, scope: !4096)
!4098 = !DILocation(line: 1448, column: 7, scope: !4096)
!4099 = !DILocation(line: 1450, column: 9, scope: !745)
!4100 = !DILocation(line: 1450, column: 54, scope: !4101)
!4101 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 1)
!4102 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1450, column: 9)
!4103 = !DILocation(line: 1450, column: 44, scope: !4102)
!4104 = !DILocation(line: 1450, column: 10, scope: !4102)
!4105 = !DILocation(line: 1450, column: 9, scope: !4087)
!4106 = !DILocation(line: 1450, column: 106, scope: !4107)
!4107 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 3)
!4108 = !DILocation(line: 1450, column: 97, scope: !4102)
!4109 = !DILocation(line: 1450, column: 62, scope: !4102)
!4110 = !DILocation(line: 1450, column: 124, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !4102, file: !4, discriminator: 4)
!4112 = !DILocation(line: 1450, column: 114, scope: !4102)
!4113 = !DILocation(line: 1451, column: 23, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4102, file: !4, line: 1450, column: 132)
!4115 = !DILocation(line: 1451, column: 7, scope: !4114)
!4116 = !DILocation(line: 1453, column: 7, scope: !4114)
!4117 = !DILocation(line: 1457, column: 24, scope: !745)
!4118 = !DILocation(line: 1457, column: 18, scope: !745)
!4119 = !DILocation(line: 1457, column: 16, scope: !745)
!4120 = !DILocation(line: 1460, column: 11, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1460, column: 5)
!4122 = !DILocation(line: 1460, column: 10, scope: !4121)
!4123 = !DILocation(line: 1460, column: 15, scope: !4124)
!4124 = !DILexicalBlockFile(scope: !4125, file: !4, discriminator: 4)
!4125 = !DILexicalBlockFile(scope: !4126, file: !4, discriminator: 1)
!4126 = distinct !DILexicalBlock(scope: !4121, file: !4, line: 1460, column: 5)
!4127 = !DILocation(line: 1460, column: 16, scope: !4126)
!4128 = !DILocation(line: 1460, column: 21, scope: !4126)
!4129 = !DILocation(line: 1460, column: 24, scope: !4130)
!4130 = !DILexicalBlockFile(scope: !4126, file: !4, discriminator: 2)
!4131 = !DILocation(line: 1460, column: 44, scope: !4126)
!4132 = !DILocation(line: 1460, column: 38, scope: !4126)
!4133 = !DILocation(line: 1460, column: 35, scope: !4126)
!4134 = !DILocation(line: 1460, column: 5, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !4121, file: !4, discriminator: 3)
!4136 = !DILocation(line: 1461, column: 20, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4126, file: !4, line: 1460, column: 63)
!4138 = !DILocation(line: 1462, column: 17, scope: !4137)
!4139 = !DILocation(line: 1463, column: 5, scope: !4137)
!4140 = !DILocation(line: 1460, column: 59, scope: !4126)
!4141 = !DILocation(line: 1460, column: 5, scope: !4126)
!4142 = !DILocation(line: 1468, column: 35, scope: !745)
!4143 = !DILocation(line: 1468, column: 17, scope: !745)
!4144 = !DILocation(line: 1468, column: 15, scope: !745)
!4145 = !DILocation(line: 1469, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1469, column: 9)
!4147 = !DILocation(line: 1469, column: 19, scope: !4146)
!4148 = !DILocation(line: 1469, column: 9, scope: !745)
!4149 = !DILocation(line: 1469, column: 34, scope: !4150)
!4150 = !DILexicalBlockFile(scope: !4146, file: !4, discriminator: 1)
!4151 = !DILocation(line: 1472, column: 19, scope: !745)
!4152 = !DILocation(line: 1472, column: 17, scope: !745)
!4153 = !DILocation(line: 1473, column: 46, scope: !745)
!4154 = !DILocation(line: 1473, column: 40, scope: !745)
!4155 = !DILocation(line: 1473, column: 35, scope: !745)
!4156 = !DILocation(line: 1473, column: 19, scope: !745)
!4157 = !DILocation(line: 1473, column: 17, scope: !745)
!4158 = !DILocation(line: 1474, column: 9, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1474, column: 9)
!4160 = !DILocation(line: 1474, column: 21, scope: !4159)
!4161 = !DILocation(line: 1474, column: 9, scope: !745)
!4162 = !DILocation(line: 1474, column: 36, scope: !4163)
!4163 = !DILexicalBlockFile(scope: !4159, file: !4, discriminator: 1)
!4164 = !DILocation(line: 1475, column: 12, scope: !745)
!4165 = !DILocation(line: 1475, column: 10, scope: !745)
!4166 = !DILocation(line: 1475, column: 39, scope: !745)
!4167 = !DILocation(line: 1475, column: 53, scope: !745)
!4168 = !{!1458, !1049, i64 88}
!4169 = !DILocation(line: 1475, column: 63, scope: !745)
!4170 = !DILocation(line: 1475, column: 76, scope: !745)
!4171 = !DILocation(line: 1475, column: 37, scope: !745)
!4172 = !DILocation(line: 1475, column: 90, scope: !745)
!4173 = !DILocation(line: 1475, column: 95, scope: !4174)
!4174 = !DILexicalBlockFile(scope: !760, file: !4, discriminator: 1)
!4175 = !DILocation(line: 1475, column: 105, scope: !760)
!4176 = !DILocation(line: 1475, column: 135, scope: !760)
!4177 = !DILocation(line: 1475, column: 150, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !760, file: !4, line: 1475, column: 147)
!4179 = !DILocation(line: 1475, column: 167, scope: !4178)
!4180 = !DILocation(line: 1475, column: 147, scope: !4178)
!4181 = !DILocation(line: 1475, column: 177, scope: !4178)
!4182 = !DILocation(line: 1475, column: 147, scope: !760)
!4183 = !DILocation(line: 1475, column: 147, scope: !4184)
!4184 = !DILexicalBlockFile(scope: !760, file: !4, discriminator: 2)
!4185 = !DILocation(line: 1475, column: 208, scope: !4186)
!4186 = !DILexicalBlockFile(scope: !4178, file: !4, discriminator: 3)
!4187 = !DILocation(line: 1475, column: 226, scope: !4178)
!4188 = !DILocation(line: 1475, column: 236, scope: !4178)
!4189 = !DILocation(line: 1475, column: 261, scope: !4178)
!4190 = !DILocation(line: 1475, column: 192, scope: !4178)
!4191 = !DILocation(line: 1475, column: 280, scope: !4192)
!4192 = !DILexicalBlockFile(scope: !745, file: !4, discriminator: 4)
!4193 = !DILocation(line: 1475, column: 280, scope: !760)
!4194 = !DILocation(line: 1475, column: 280, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !760, file: !4, discriminator: 5)
!4196 = !DILocation(line: 1477, column: 9, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !745, file: !4, line: 1477, column: 9)
!4198 = !DILocation(line: 1477, column: 21, scope: !4197)
!4199 = !DILocation(line: 1477, column: 9, scope: !745)
!4200 = !DILocation(line: 1477, column: 36, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4197, file: !4, discriminator: 1)
!4202 = !DILocation(line: 1478, column: 9, scope: !764)
!4203 = !DILocation(line: 1478, column: 18, scope: !764)
!4204 = !DILocation(line: 1478, column: 9, scope: !745)
!4205 = !DILocation(line: 1479, column: 16, scope: !763)
!4206 = !DILocation(line: 1479, column: 14, scope: !763)
!4207 = !DILocation(line: 1479, column: 39, scope: !763)
!4208 = !DILocation(line: 1479, column: 53, scope: !763)
!4209 = !{!1458, !1049, i64 16}
!4210 = !DILocation(line: 1479, column: 65, scope: !763)
!4211 = !DILocation(line: 1479, column: 76, scope: !763)
!4212 = !DILocation(line: 1479, column: 37, scope: !763)
!4213 = !DILocation(line: 1479, column: 90, scope: !763)
!4214 = !DILocation(line: 1479, column: 95, scope: !4215)
!4215 = !DILexicalBlockFile(scope: !762, file: !4, discriminator: 1)
!4216 = !DILocation(line: 1479, column: 105, scope: !762)
!4217 = !DILocation(line: 1479, column: 135, scope: !762)
!4218 = !DILocation(line: 1479, column: 150, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !762, file: !4, line: 1479, column: 147)
!4220 = !DILocation(line: 1479, column: 167, scope: !4219)
!4221 = !DILocation(line: 1479, column: 147, scope: !4219)
!4222 = !DILocation(line: 1479, column: 177, scope: !4219)
!4223 = !DILocation(line: 1479, column: 147, scope: !762)
!4224 = !DILocation(line: 1479, column: 147, scope: !4225)
!4225 = !DILexicalBlockFile(scope: !762, file: !4, discriminator: 2)
!4226 = !DILocation(line: 1479, column: 208, scope: !4227)
!4227 = !DILexicalBlockFile(scope: !4219, file: !4, discriminator: 3)
!4228 = !DILocation(line: 1479, column: 226, scope: !4219)
!4229 = !DILocation(line: 1479, column: 236, scope: !4219)
!4230 = !DILocation(line: 1479, column: 261, scope: !4219)
!4231 = !DILocation(line: 1479, column: 192, scope: !4219)
!4232 = !DILocation(line: 1479, column: 280, scope: !4233)
!4233 = !DILexicalBlockFile(scope: !763, file: !4, discriminator: 4)
!4234 = !DILocation(line: 1479, column: 280, scope: !762)
!4235 = !DILocation(line: 1479, column: 280, scope: !4236)
!4236 = !DILexicalBlockFile(scope: !762, file: !4, discriminator: 5)
!4237 = !DILocation(line: 1481, column: 13, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !763, file: !4, line: 1481, column: 13)
!4239 = !DILocation(line: 1481, column: 23, scope: !4238)
!4240 = !DILocation(line: 1481, column: 13, scope: !763)
!4241 = !DILocation(line: 1481, column: 38, scope: !4242)
!4242 = !DILexicalBlockFile(scope: !4238, file: !4, discriminator: 1)
!4243 = !DILocation(line: 1482, column: 5, scope: !763)
!4244 = !DILocation(line: 1484, column: 9, scope: !767)
!4245 = !DILocation(line: 1484, column: 14, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 1)
!4247 = !DILocation(line: 1484, column: 24, scope: !766)
!4248 = !DILocation(line: 1484, column: 54, scope: !766)
!4249 = !DILocation(line: 1484, column: 76, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !766, file: !4, line: 1484, column: 73)
!4251 = !DILocation(line: 1484, column: 93, scope: !4250)
!4252 = !DILocation(line: 1484, column: 73, scope: !4250)
!4253 = !DILocation(line: 1484, column: 103, scope: !4250)
!4254 = !DILocation(line: 1484, column: 73, scope: !766)
!4255 = !DILocation(line: 1484, column: 73, scope: !4256)
!4256 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 2)
!4257 = !DILocation(line: 1484, column: 134, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4250, file: !4, discriminator: 3)
!4259 = !DILocation(line: 1484, column: 152, scope: !4250)
!4260 = !DILocation(line: 1484, column: 162, scope: !4250)
!4261 = !DILocation(line: 1484, column: 187, scope: !4250)
!4262 = !DILocation(line: 1484, column: 118, scope: !4250)
!4263 = !DILocation(line: 1484, column: 206, scope: !4264)
!4264 = !DILexicalBlockFile(scope: !767, file: !4, discriminator: 4)
!4265 = !DILocation(line: 1484, column: 206, scope: !766)
!4266 = !DILocation(line: 1484, column: 206, scope: !4267)
!4267 = !DILexicalBlockFile(scope: !766, file: !4, discriminator: 5)
!4268 = !DILocation(line: 1485, column: 23, scope: !767)
!4269 = !DILocation(line: 1485, column: 21, scope: !767)
!4270 = !DILocation(line: 1486, column: 21, scope: !767)
!4271 = !DILocation(line: 1489, column: 35, scope: !745)
!4272 = !DILocation(line: 1489, column: 46, scope: !745)
!4273 = !DILocation(line: 1489, column: 19, scope: !745)
!4274 = !DILocation(line: 1489, column: 17, scope: !745)
!4275 = !DILocation(line: 1489, column: 5, scope: !745)
!4276 = !DILocation(line: 1493, column: 5, scope: !745)
!4277 = !DILocation(line: 1493, column: 10, scope: !4278)
!4278 = !DILexicalBlockFile(scope: !769, file: !4, discriminator: 1)
!4279 = !DILocation(line: 1493, column: 20, scope: !769)
!4280 = !DILocation(line: 1493, column: 51, scope: !769)
!4281 = !DILocation(line: 1493, column: 69, scope: !772)
!4282 = !DILocation(line: 1493, column: 85, scope: !772)
!4283 = !DILocation(line: 1493, column: 69, scope: !769)
!4284 = !DILocation(line: 1493, column: 100, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !772, file: !4, discriminator: 2)
!4286 = !DILocation(line: 1493, column: 105, scope: !4287)
!4287 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 4)
!4288 = !DILocation(line: 1493, column: 115, scope: !771)
!4289 = !DILocation(line: 1493, column: 145, scope: !771)
!4290 = !DILocation(line: 1493, column: 171, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1493, column: 168)
!4292 = !DILocation(line: 1493, column: 188, scope: !4291)
!4293 = !DILocation(line: 1493, column: 168, scope: !4291)
!4294 = !DILocation(line: 1493, column: 198, scope: !4291)
!4295 = !DILocation(line: 1493, column: 168, scope: !771)
!4296 = !DILocation(line: 1493, column: 168, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 5)
!4298 = !DILocation(line: 1493, column: 229, scope: !4299)
!4299 = !DILexicalBlockFile(scope: !4291, file: !4, discriminator: 6)
!4300 = !DILocation(line: 1493, column: 247, scope: !4291)
!4301 = !DILocation(line: 1493, column: 257, scope: !4291)
!4302 = !DILocation(line: 1493, column: 282, scope: !4291)
!4303 = !DILocation(line: 1493, column: 213, scope: !4291)
!4304 = !DILocation(line: 1493, column: 301, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !772, file: !4, discriminator: 7)
!4306 = !DILocation(line: 1493, column: 301, scope: !771)
!4307 = !DILocation(line: 1493, column: 301, scope: !4308)
!4308 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 8)
!4309 = !DILocation(line: 1493, column: 301, scope: !4310)
!4310 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 9)
!4311 = !DILocation(line: 1493, column: 314, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !4313, file: !4, discriminator: 10)
!4313 = !DILexicalBlockFile(scope: !745, file: !4, discriminator: 3)
!4314 = !DILocation(line: 1493, column: 314, scope: !769)
!4315 = !DILocation(line: 1493, column: 314, scope: !4316)
!4316 = !DILexicalBlockFile(scope: !769, file: !4, discriminator: 11)
!4317 = !DILocation(line: 1494, column: 5, scope: !745)
!4318 = !DILocation(line: 1494, column: 10, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !774, file: !4, discriminator: 1)
!4320 = !DILocation(line: 1494, column: 20, scope: !774)
!4321 = !DILocation(line: 1494, column: 51, scope: !774)
!4322 = !DILocation(line: 1494, column: 69, scope: !777)
!4323 = !DILocation(line: 1494, column: 85, scope: !777)
!4324 = !DILocation(line: 1494, column: 69, scope: !774)
!4325 = !DILocation(line: 1494, column: 100, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !777, file: !4, discriminator: 2)
!4327 = !DILocation(line: 1494, column: 105, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !776, file: !4, discriminator: 4)
!4329 = !DILocation(line: 1494, column: 115, scope: !776)
!4330 = !DILocation(line: 1494, column: 145, scope: !776)
!4331 = !DILocation(line: 1494, column: 171, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !776, file: !4, line: 1494, column: 168)
!4333 = !DILocation(line: 1494, column: 188, scope: !4332)
!4334 = !DILocation(line: 1494, column: 168, scope: !4332)
!4335 = !DILocation(line: 1494, column: 198, scope: !4332)
!4336 = !DILocation(line: 1494, column: 168, scope: !776)
!4337 = !DILocation(line: 1494, column: 168, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !776, file: !4, discriminator: 5)
!4339 = !DILocation(line: 1494, column: 229, scope: !4340)
!4340 = !DILexicalBlockFile(scope: !4332, file: !4, discriminator: 6)
!4341 = !DILocation(line: 1494, column: 247, scope: !4332)
!4342 = !DILocation(line: 1494, column: 257, scope: !4332)
!4343 = !DILocation(line: 1494, column: 282, scope: !4332)
!4344 = !DILocation(line: 1494, column: 213, scope: !4332)
!4345 = !DILocation(line: 1494, column: 301, scope: !4346)
!4346 = !DILexicalBlockFile(scope: !777, file: !4, discriminator: 7)
!4347 = !DILocation(line: 1494, column: 301, scope: !776)
!4348 = !DILocation(line: 1494, column: 301, scope: !4349)
!4349 = !DILexicalBlockFile(scope: !776, file: !4, discriminator: 8)
!4350 = !DILocation(line: 1494, column: 301, scope: !4351)
!4351 = !DILexicalBlockFile(scope: !776, file: !4, discriminator: 9)
!4352 = !DILocation(line: 1494, column: 314, scope: !4312)
!4353 = !DILocation(line: 1494, column: 314, scope: !774)
!4354 = !DILocation(line: 1494, column: 314, scope: !4355)
!4355 = !DILexicalBlockFile(scope: !774, file: !4, discriminator: 11)
!4356 = !DILocation(line: 1495, column: 5, scope: !745)
!4357 = !DILocation(line: 1495, column: 10, scope: !4358)
!4358 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 1)
!4359 = !DILocation(line: 1495, column: 20, scope: !779)
!4360 = !DILocation(line: 1495, column: 51, scope: !779)
!4361 = !DILocation(line: 1495, column: 67, scope: !782)
!4362 = !DILocation(line: 1495, column: 83, scope: !782)
!4363 = !DILocation(line: 1495, column: 67, scope: !779)
!4364 = !DILocation(line: 1495, column: 98, scope: !4365)
!4365 = !DILexicalBlockFile(scope: !782, file: !4, discriminator: 2)
!4366 = !DILocation(line: 1495, column: 103, scope: !4367)
!4367 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 4)
!4368 = !DILocation(line: 1495, column: 113, scope: !781)
!4369 = !DILocation(line: 1495, column: 143, scope: !781)
!4370 = !DILocation(line: 1495, column: 169, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !781, file: !4, line: 1495, column: 166)
!4372 = !DILocation(line: 1495, column: 186, scope: !4371)
!4373 = !DILocation(line: 1495, column: 166, scope: !4371)
!4374 = !DILocation(line: 1495, column: 196, scope: !4371)
!4375 = !DILocation(line: 1495, column: 166, scope: !781)
!4376 = !DILocation(line: 1495, column: 166, scope: !4377)
!4377 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 5)
!4378 = !DILocation(line: 1495, column: 227, scope: !4379)
!4379 = !DILexicalBlockFile(scope: !4371, file: !4, discriminator: 6)
!4380 = !DILocation(line: 1495, column: 245, scope: !4371)
!4381 = !DILocation(line: 1495, column: 255, scope: !4371)
!4382 = !DILocation(line: 1495, column: 280, scope: !4371)
!4383 = !DILocation(line: 1495, column: 211, scope: !4371)
!4384 = !DILocation(line: 1495, column: 299, scope: !4385)
!4385 = !DILexicalBlockFile(scope: !782, file: !4, discriminator: 7)
!4386 = !DILocation(line: 1495, column: 299, scope: !781)
!4387 = !DILocation(line: 1495, column: 299, scope: !4388)
!4388 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 8)
!4389 = !DILocation(line: 1495, column: 299, scope: !4390)
!4390 = !DILexicalBlockFile(scope: !781, file: !4, discriminator: 9)
!4391 = !DILocation(line: 1495, column: 312, scope: !4312)
!4392 = !DILocation(line: 1495, column: 312, scope: !779)
!4393 = !DILocation(line: 1495, column: 312, scope: !4394)
!4394 = !DILexicalBlockFile(scope: !779, file: !4, discriminator: 11)
!4395 = !DILocation(line: 1496, column: 12, scope: !745)
!4396 = !DILocation(line: 1496, column: 5, scope: !745)
!4397 = !DILocation(line: 1497, column: 1, scope: !745)
!4398 = !DILocation(line: 1173, column: 25, scope: !783)
!4399 = !DILocation(line: 1173, column: 40, scope: !783)
!4400 = !DILocation(line: 1175, column: 5, scope: !783)
!4401 = !DILocation(line: 1175, column: 15, scope: !783)
!4402 = !DILocation(line: 1175, column: 33, scope: !783)
!4403 = !DILocation(line: 1176, column: 5, scope: !783)
!4404 = !DILocation(line: 1176, column: 12, scope: !783)
!4405 = !DILocation(line: 1177, column: 5, scope: !783)
!4406 = !DILocation(line: 1177, column: 10, scope: !783)
!4407 = !DILocation(line: 1177, column: 15, scope: !783)
!4408 = !DILocation(line: 1177, column: 24, scope: !783)
!4409 = !DILocation(line: 1177, column: 29, scope: !783)
!4410 = !DILocation(line: 1178, column: 5, scope: !783)
!4411 = !DILocation(line: 1178, column: 11, scope: !783)
!4412 = !DILocation(line: 1178, column: 15, scope: !783)
!4413 = !DILocation(line: 1178, column: 29, scope: !783)
!4414 = !DILocation(line: 1178, column: 39, scope: !783)
!4415 = !DILocation(line: 1178, column: 51, scope: !783)
!4416 = !DILocation(line: 1178, column: 63, scope: !783)
!4417 = !DILocation(line: 1179, column: 5, scope: !783)
!4418 = !DILocation(line: 1179, column: 9, scope: !783)
!4419 = !DILocation(line: 1179, column: 19, scope: !783)
!4420 = !DILocation(line: 1179, column: 26, scope: !783)
!4421 = !DILocation(line: 1179, column: 36, scope: !783)
!4422 = !DILocation(line: 1180, column: 5, scope: !783)
!4423 = !DILocation(line: 1180, column: 16, scope: !783)
!4424 = !DILocation(line: 1180, column: 24, scope: !783)
!4425 = !DILocation(line: 1180, column: 33, scope: !783)
!4426 = !DILocation(line: 1180, column: 42, scope: !783)
!4427 = !DILocation(line: 1227, column: 33, scope: !783)
!4428 = !DILocation(line: 1227, column: 9, scope: !783)
!4429 = !DILocation(line: 1227, column: 7, scope: !783)
!4430 = !DILocation(line: 1228, column: 9, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1228, column: 9)
!4432 = !DILocation(line: 1228, column: 11, scope: !4431)
!4433 = !DILocation(line: 1228, column: 9, scope: !783)
!4434 = !DILocation(line: 1229, column: 9, scope: !4431)
!4435 = !DILocation(line: 1230, column: 13, scope: !783)
!4436 = !DILocation(line: 1230, column: 17, scope: !783)
!4437 = !DILocation(line: 1230, column: 15, scope: !783)
!4438 = !DILocation(line: 1230, column: 11, scope: !783)
!4439 = !DILocation(line: 1237, column: 5, scope: !783)
!4440 = !DILocation(line: 1237, column: 48, scope: !4441)
!4441 = !DILexicalBlockFile(scope: !4442, file: !4, discriminator: 2)
!4442 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 1)
!4443 = !DILocation(line: 1237, column: 47, scope: !783)
!4444 = !DILocation(line: 1237, column: 46, scope: !783)
!4445 = !DILocation(line: 1237, column: 51, scope: !783)
!4446 = !DILocation(line: 1237, column: 30, scope: !783)
!4447 = !DILocation(line: 1237, column: 13, scope: !783)
!4448 = !DILocation(line: 1237, column: 61, scope: !783)
!4449 = !DILocation(line: 1238, column: 10, scope: !783)
!4450 = !DILocation(line: 1241, column: 30, scope: !783)
!4451 = !DILocation(line: 1241, column: 9, scope: !783)
!4452 = !DILocation(line: 1241, column: 7, scope: !783)
!4453 = !DILocation(line: 1242, column: 9, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1242, column: 9)
!4455 = !DILocation(line: 1242, column: 22, scope: !4454)
!4456 = !DILocation(line: 1242, column: 19, scope: !4454)
!4457 = !DILocation(line: 1242, column: 9, scope: !783)
!4458 = !DILocation(line: 1243, column: 13, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4454, file: !4, line: 1242, column: 25)
!4460 = !DILocation(line: 1243, column: 11, scope: !4459)
!4461 = !DILocation(line: 1244, column: 9, scope: !4459)
!4462 = !DILocation(line: 1248, column: 10, scope: !4463)
!4463 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1248, column: 9)
!4464 = !DILocation(line: 1248, column: 9, scope: !4463)
!4465 = !DILocation(line: 1248, column: 12, scope: !4463)
!4466 = !DILocation(line: 1248, column: 9, scope: !783)
!4467 = !DILocation(line: 1249, column: 10, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4463, file: !4, line: 1248, column: 20)
!4469 = !DILocation(line: 1250, column: 16, scope: !4468)
!4470 = !DILocation(line: 1251, column: 5, scope: !4468)
!4471 = !DILocation(line: 1252, column: 15, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4463, file: !4, line: 1252, column: 14)
!4473 = !DILocation(line: 1252, column: 14, scope: !4472)
!4474 = !DILocation(line: 1252, column: 17, scope: !4472)
!4475 = !DILocation(line: 1252, column: 14, scope: !4463)
!4476 = !DILocation(line: 1253, column: 10, scope: !4472)
!4477 = !DILocation(line: 1253, column: 9, scope: !4472)
!4478 = !DILocation(line: 1256, column: 15, scope: !783)
!4479 = !DILocation(line: 1256, column: 13, scope: !783)
!4480 = !DILocation(line: 1257, column: 10, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1257, column: 9)
!4482 = !DILocation(line: 1257, column: 9, scope: !4481)
!4483 = !DILocation(line: 1257, column: 12, scope: !4481)
!4484 = !DILocation(line: 1257, column: 9, scope: !783)
!4485 = !DILocation(line: 1258, column: 10, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4481, file: !4, line: 1257, column: 20)
!4487 = !DILocation(line: 1259, column: 14, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4486, file: !4, line: 1259, column: 13)
!4489 = !DILocation(line: 1259, column: 13, scope: !4488)
!4490 = !DILocation(line: 1259, column: 16, scope: !4488)
!4491 = !DILocation(line: 1259, column: 23, scope: !4488)
!4492 = !DILocation(line: 1259, column: 27, scope: !4493)
!4493 = !DILexicalBlockFile(scope: !4488, file: !4, discriminator: 1)
!4494 = !DILocation(line: 1259, column: 26, scope: !4488)
!4495 = !DILocation(line: 1259, column: 29, scope: !4488)
!4496 = !DILocation(line: 1259, column: 13, scope: !4486)
!4497 = !DILocation(line: 1260, column: 14, scope: !4488)
!4498 = !DILocation(line: 1260, column: 13, scope: !4488)
!4499 = !DILocation(line: 1262, column: 17, scope: !4488)
!4500 = !DILocation(line: 1262, column: 15, scope: !4488)
!4501 = !DILocation(line: 1263, column: 5, scope: !4486)
!4502 = !DILocation(line: 1266, column: 19, scope: !783)
!4503 = !DILocation(line: 1266, column: 17, scope: !783)
!4504 = !DILocation(line: 1267, column: 5, scope: !783)
!4505 = !DILocation(line: 1267, column: 27, scope: !4441)
!4506 = !DILocation(line: 1267, column: 26, scope: !783)
!4507 = !DILocation(line: 1267, column: 12, scope: !783)
!4508 = !DILocation(line: 1267, column: 30, scope: !783)
!4509 = !DILocation(line: 1268, column: 10, scope: !783)
!4510 = !DILocation(line: 1269, column: 15, scope: !783)
!4511 = !DILocation(line: 1269, column: 13, scope: !783)
!4512 = !DILocation(line: 1270, column: 10, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1270, column: 9)
!4514 = !DILocation(line: 1270, column: 9, scope: !4513)
!4515 = !DILocation(line: 1270, column: 12, scope: !4513)
!4516 = !DILocation(line: 1270, column: 9, scope: !783)
!4517 = !DILocation(line: 1271, column: 10, scope: !4518)
!4518 = distinct !DILexicalBlock(scope: !4513, file: !4, line: 1270, column: 20)
!4519 = !DILocation(line: 1272, column: 9, scope: !4518)
!4520 = !DILocation(line: 1272, column: 31, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !4522, file: !4, discriminator: 2)
!4522 = !DILexicalBlockFile(scope: !4518, file: !4, discriminator: 1)
!4523 = !DILocation(line: 1272, column: 30, scope: !4518)
!4524 = !DILocation(line: 1272, column: 16, scope: !4518)
!4525 = !DILocation(line: 1272, column: 34, scope: !4518)
!4526 = !DILocation(line: 1273, column: 14, scope: !4518)
!4527 = !DILocation(line: 1274, column: 21, scope: !4518)
!4528 = !DILocation(line: 1274, column: 22, scope: !4518)
!4529 = !DILocation(line: 1274, column: 19, scope: !4518)
!4530 = !DILocation(line: 1275, column: 5, scope: !4518)
!4531 = !DILocation(line: 1277, column: 21, scope: !4513)
!4532 = !DILocation(line: 1277, column: 19, scope: !4513)
!4533 = !DILocation(line: 1280, column: 15, scope: !783)
!4534 = !DILocation(line: 1280, column: 27, scope: !783)
!4535 = !DILocation(line: 1280, column: 25, scope: !783)
!4536 = !DILocation(line: 1280, column: 13, scope: !783)
!4537 = !DILocation(line: 1281, column: 15, scope: !783)
!4538 = !DILocation(line: 1281, column: 27, scope: !783)
!4539 = !DILocation(line: 1281, column: 25, scope: !783)
!4540 = !DILocation(line: 1281, column: 13, scope: !783)
!4541 = !DILocation(line: 1282, column: 9, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1282, column: 9)
!4543 = !DILocation(line: 1282, column: 17, scope: !4542)
!4544 = !DILocation(line: 1282, column: 9, scope: !783)
!4545 = !DILocation(line: 1283, column: 9, scope: !4542)
!4546 = !DILocation(line: 1284, column: 9, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1284, column: 9)
!4548 = !DILocation(line: 1284, column: 17, scope: !4547)
!4549 = !DILocation(line: 1284, column: 9, scope: !783)
!4550 = !DILocation(line: 1286, column: 9, scope: !4547)
!4551 = !DILocation(line: 1289, column: 10, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1289, column: 9)
!4553 = !DILocation(line: 1289, column: 9, scope: !4552)
!4554 = !DILocation(line: 1289, column: 12, scope: !4552)
!4555 = !DILocation(line: 1289, column: 19, scope: !4552)
!4556 = !DILocation(line: 1289, column: 23, scope: !4557)
!4557 = !DILexicalBlockFile(scope: !4552, file: !4, discriminator: 1)
!4558 = !DILocation(line: 1289, column: 22, scope: !4552)
!4559 = !DILocation(line: 1289, column: 25, scope: !4552)
!4560 = !DILocation(line: 1289, column: 9, scope: !783)
!4561 = !DILocation(line: 1290, column: 10, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4552, file: !4, line: 1289, column: 33)
!4563 = !DILocation(line: 1291, column: 21, scope: !4562)
!4564 = !DILocation(line: 1291, column: 19, scope: !4562)
!4565 = !DILocation(line: 1292, column: 14, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4562, file: !4, line: 1292, column: 13)
!4567 = !DILocation(line: 1292, column: 13, scope: !4566)
!4568 = !DILocation(line: 1292, column: 16, scope: !4566)
!4569 = !DILocation(line: 1292, column: 23, scope: !4566)
!4570 = !DILocation(line: 1292, column: 27, scope: !4571)
!4571 = !DILexicalBlockFile(scope: !4566, file: !4, discriminator: 1)
!4572 = !DILocation(line: 1292, column: 26, scope: !4566)
!4573 = !DILocation(line: 1292, column: 29, scope: !4566)
!4574 = !DILocation(line: 1292, column: 13, scope: !4562)
!4575 = !DILocation(line: 1293, column: 14, scope: !4566)
!4576 = !DILocation(line: 1293, column: 13, scope: !4566)
!4577 = !DILocation(line: 1294, column: 23, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4562, file: !4, line: 1294, column: 13)
!4579 = !DILocation(line: 1294, column: 22, scope: !4578)
!4580 = !DILocation(line: 1294, column: 19, scope: !4578)
!4581 = !DILocation(line: 1294, column: 25, scope: !4578)
!4582 = !DILocation(line: 1294, column: 29, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !4578, file: !4, discriminator: 1)
!4584 = !DILocation(line: 1294, column: 28, scope: !4578)
!4585 = !DILocation(line: 1294, column: 31, scope: !4578)
!4586 = !DILocation(line: 1294, column: 13, scope: !4562)
!4587 = !DILocation(line: 1295, column: 13, scope: !4578)
!4588 = !DILocation(line: 1296, column: 10, scope: !4562)
!4589 = !DILocation(line: 1297, column: 9, scope: !4562)
!4590 = !DILocation(line: 1297, column: 24, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4592, file: !4, discriminator: 4)
!4592 = !DILexicalBlockFile(scope: !4562, file: !4, discriminator: 1)
!4593 = !DILocation(line: 1297, column: 23, scope: !4562)
!4594 = !DILocation(line: 1297, column: 20, scope: !4562)
!4595 = !DILocation(line: 1297, column: 26, scope: !4562)
!4596 = !DILocation(line: 1297, column: 30, scope: !4597)
!4597 = !DILexicalBlockFile(scope: !4562, file: !4, discriminator: 2)
!4598 = !DILocation(line: 1297, column: 29, scope: !4562)
!4599 = !DILocation(line: 1297, column: 32, scope: !4562)
!4600 = !DILocation(line: 1297, column: 9, scope: !4601)
!4601 = !DILexicalBlockFile(scope: !4562, file: !4, discriminator: 3)
!4602 = !DILocation(line: 1298, column: 14, scope: !4562)
!4603 = !DILocation(line: 1299, column: 22, scope: !4562)
!4604 = !DILocation(line: 1299, column: 15, scope: !4562)
!4605 = !DILocation(line: 1299, column: 13, scope: !4562)
!4606 = !DILocation(line: 1300, column: 5, scope: !4562)
!4607 = !DILocation(line: 1302, column: 13, scope: !4552)
!4608 = !DILocation(line: 1314, column: 5, scope: !783)
!4609 = !DILocation(line: 1314, column: 12, scope: !4610)
!4610 = !DILexicalBlockFile(scope: !4442, file: !4, discriminator: 8)
!4611 = !DILocation(line: 1314, column: 20, scope: !783)
!4612 = !DILocation(line: 1314, column: 24, scope: !783)
!4613 = !DILocation(line: 1314, column: 44, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 2)
!4615 = !DILocation(line: 1314, column: 51, scope: !783)
!4616 = !DILocation(line: 1314, column: 57, scope: !783)
!4617 = !DILocation(line: 1314, column: 55, scope: !783)
!4618 = !DILocation(line: 1314, column: 43, scope: !783)
!4619 = !DILocation(line: 1314, column: 67, scope: !4620)
!4620 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 4)
!4621 = !DILocation(line: 1314, column: 78, scope: !783)
!4622 = !DILocation(line: 1314, column: 85, scope: !783)
!4623 = !DILocation(line: 1314, column: 76, scope: !783)
!4624 = !DILocation(line: 1314, column: 91, scope: !4625)
!4625 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 5)
!4626 = !DILocation(line: 1314, column: 100, scope: !783)
!4627 = !DILocation(line: 1314, column: 104, scope: !783)
!4628 = !DILocation(line: 1314, column: 111, scope: !783)
!4629 = !DILocation(line: 1314, column: 102, scope: !783)
!4630 = !DILocation(line: 1314, column: 41, scope: !4631)
!4631 = !DILexicalBlockFile(scope: !4632, file: !4, discriminator: 7)
!4632 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 6)
!4633 = !DILocation(line: 1314, column: 27, scope: !783)
!4634 = !DILocation(line: 1314, column: 117, scope: !783)
!4635 = !DILocation(line: 1314, column: 5, scope: !4636)
!4636 = !DILexicalBlockFile(scope: !783, file: !4, discriminator: 3)
!4637 = !DILocation(line: 1315, column: 16, scope: !783)
!4638 = !DILocation(line: 1316, column: 9, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1316, column: 9)
!4640 = !DILocation(line: 1316, column: 17, scope: !4639)
!4641 = !DILocation(line: 1316, column: 22, scope: !4639)
!4642 = !DILocation(line: 1316, column: 25, scope: !4643)
!4643 = !DILexicalBlockFile(scope: !4639, file: !4, discriminator: 1)
!4644 = !DILocation(line: 1316, column: 29, scope: !4639)
!4645 = !DILocation(line: 1316, column: 9, scope: !783)
!4646 = !DILocation(line: 1317, column: 11, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4639, file: !4, line: 1316, column: 62)
!4648 = !DILocation(line: 1318, column: 9, scope: !4647)
!4649 = !DILocation(line: 1320, column: 9, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1320, column: 9)
!4651 = !DILocation(line: 1320, column: 13, scope: !4650)
!4652 = !DILocation(line: 1320, column: 9, scope: !783)
!4653 = !DILocation(line: 1321, column: 9, scope: !4650)
!4654 = !DILocation(line: 1324, column: 11, scope: !783)
!4655 = !DILocation(line: 1324, column: 26, scope: !783)
!4656 = !DILocation(line: 1324, column: 18, scope: !783)
!4657 = !DILocation(line: 1324, column: 15, scope: !783)
!4658 = !DILocation(line: 1324, column: 9, scope: !783)
!4659 = !DILocation(line: 1327, column: 15, scope: !783)
!4660 = !DILocation(line: 1327, column: 30, scope: !783)
!4661 = !DILocation(line: 1327, column: 38, scope: !783)
!4662 = !DILocation(line: 1327, column: 22, scope: !783)
!4663 = !DILocation(line: 1327, column: 19, scope: !783)
!4664 = !DILocation(line: 1327, column: 13, scope: !783)
!4665 = !DILocation(line: 1328, column: 35, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1328, column: 5)
!4667 = !DILocation(line: 1328, column: 42, scope: !4666)
!4668 = !DILocation(line: 1328, column: 48, scope: !4666)
!4669 = !DILocation(line: 1328, column: 46, scope: !4666)
!4670 = !DILocation(line: 1328, column: 34, scope: !4666)
!4671 = !DILocation(line: 1328, column: 58, scope: !4672)
!4672 = !DILexicalBlockFile(scope: !4666, file: !4, discriminator: 1)
!4673 = !DILocation(line: 1328, column: 69, scope: !4666)
!4674 = !DILocation(line: 1328, column: 76, scope: !4666)
!4675 = !DILocation(line: 1328, column: 67, scope: !4666)
!4676 = !DILocation(line: 1328, column: 82, scope: !4677)
!4677 = !DILexicalBlockFile(scope: !4666, file: !4, discriminator: 2)
!4678 = !DILocation(line: 1328, column: 91, scope: !4666)
!4679 = !DILocation(line: 1328, column: 95, scope: !4666)
!4680 = !DILocation(line: 1328, column: 102, scope: !4666)
!4681 = !DILocation(line: 1328, column: 93, scope: !4666)
!4682 = !DILocation(line: 1328, column: 32, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !4684, file: !4, discriminator: 4)
!4684 = !DILexicalBlockFile(scope: !4666, file: !4, discriminator: 3)
!4685 = !DILocation(line: 1328, column: 18, scope: !4666)
!4686 = !DILocation(line: 1328, column: 16, scope: !4666)
!4687 = !DILocation(line: 1328, column: 10, scope: !4666)
!4688 = !DILocation(line: 1328, column: 109, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !4690, file: !4, discriminator: 6)
!4690 = !DILexicalBlockFile(scope: !4691, file: !4, discriminator: 5)
!4691 = distinct !DILexicalBlock(scope: !4666, file: !4, line: 1328, column: 5)
!4692 = !DILocation(line: 1328, column: 115, scope: !4691)
!4693 = !DILocation(line: 1328, column: 5, scope: !4666)
!4694 = !DILocation(line: 1329, column: 16, scope: !4691)
!4695 = !DILocation(line: 1329, column: 9, scope: !4691)
!4696 = !DILocation(line: 1328, column: 127, scope: !4691)
!4697 = !DILocation(line: 1328, column: 5, scope: !4691)
!4698 = !DILocation(line: 1332, column: 9, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1332, column: 9)
!4700 = !DILocation(line: 1332, column: 17, scope: !4699)
!4701 = !DILocation(line: 1332, column: 9, scope: !783)
!4702 = !DILocation(line: 1333, column: 11, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4699, file: !4, line: 1332, column: 33)
!4704 = !DILocation(line: 1334, column: 9, scope: !4703)
!4705 = !DILocation(line: 1336, column: 9, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1336, column: 9)
!4707 = !DILocation(line: 1336, column: 17, scope: !4706)
!4708 = !DILocation(line: 1336, column: 9, scope: !783)
!4709 = !DILocation(line: 1337, column: 9, scope: !4706)
!4710 = !DILocation(line: 1341, column: 14, scope: !783)
!4711 = !DILocation(line: 1341, column: 23, scope: !783)
!4712 = !DILocation(line: 1341, column: 12, scope: !783)
!4713 = !DILocation(line: 1341, column: 45, scope: !4442)
!4714 = !DILocation(line: 1341, column: 12, scope: !4614)
!4715 = !DILocation(line: 1341, column: 73, scope: !4716)
!4716 = !DILexicalBlockFile(scope: !4636, file: !4, discriminator: 4)
!4717 = !DILocation(line: 1341, column: 9, scope: !783)
!4718 = !DILocation(line: 1343, column: 7, scope: !783)
!4719 = !DILocation(line: 1344, column: 9, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1344, column: 9)
!4721 = !DILocation(line: 1344, column: 16, scope: !4720)
!4722 = !DILocation(line: 1344, column: 13, scope: !4720)
!4723 = !DILocation(line: 1344, column: 9, scope: !783)
!4724 = !DILocation(line: 1346, column: 18, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4726, file: !4, line: 1346, column: 9)
!4726 = distinct !DILexicalBlock(scope: !4720, file: !4, line: 1344, column: 21)
!4727 = !DILocation(line: 1346, column: 25, scope: !4725)
!4728 = !DILocation(line: 1346, column: 16, scope: !4725)
!4729 = !DILocation(line: 1346, column: 14, scope: !4725)
!4730 = !DILocation(line: 1346, column: 29, scope: !4731)
!4731 = !DILexicalBlockFile(scope: !4732, file: !4, discriminator: 2)
!4732 = !DILexicalBlockFile(scope: !4733, file: !4, discriminator: 1)
!4733 = distinct !DILexicalBlock(scope: !4725, file: !4, line: 1346, column: 9)
!4734 = !DILocation(line: 1346, column: 31, scope: !4733)
!4735 = !DILocation(line: 1346, column: 9, scope: !4725)
!4736 = !DILocation(line: 1347, column: 22, scope: !4733)
!4737 = !DILocation(line: 1347, column: 21, scope: !4733)
!4738 = !DILocation(line: 1347, column: 43, scope: !4733)
!4739 = !DILocation(line: 1347, column: 48, scope: !4733)
!4740 = !DILocation(line: 1347, column: 46, scope: !4733)
!4741 = !DILocation(line: 1347, column: 42, scope: !4733)
!4742 = !DILocation(line: 1347, column: 58, scope: !4732)
!4743 = !DILocation(line: 1347, column: 69, scope: !4733)
!4744 = !DILocation(line: 1347, column: 67, scope: !4733)
!4745 = !DILocation(line: 1347, column: 74, scope: !4746)
!4746 = !DILexicalBlockFile(scope: !4733, file: !4, discriminator: 2)
!4747 = !DILocation(line: 1347, column: 83, scope: !4733)
!4748 = !DILocation(line: 1347, column: 87, scope: !4733)
!4749 = !DILocation(line: 1347, column: 85, scope: !4733)
!4750 = !DILocation(line: 1347, column: 40, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !4752, file: !4, discriminator: 4)
!4752 = !DILexicalBlockFile(scope: !4733, file: !4, discriminator: 3)
!4753 = !DILocation(line: 1347, column: 26, scope: !4733)
!4754 = !DILocation(line: 1347, column: 24, scope: !4733)
!4755 = !DILocation(line: 1347, column: 15, scope: !4733)
!4756 = !DILocation(line: 1347, column: 13, scope: !4733)
!4757 = !DILocation(line: 1346, column: 38, scope: !4733)
!4758 = !DILocation(line: 1346, column: 9, scope: !4733)
!4759 = !DILocation(line: 1348, column: 19, scope: !4726)
!4760 = !DILocation(line: 1348, column: 28, scope: !4726)
!4761 = !DILocation(line: 1348, column: 22, scope: !4726)
!4762 = !DILocation(line: 1348, column: 13, scope: !4726)
!4763 = !DILocation(line: 1348, column: 11, scope: !4726)
!4764 = !DILocation(line: 1349, column: 9, scope: !4726)
!4765 = !DILocation(line: 1353, column: 28, scope: !783)
!4766 = !DILocation(line: 1353, column: 34, scope: !783)
!4767 = !DILocation(line: 1353, column: 32, scope: !783)
!4768 = !DILocation(line: 1353, column: 38, scope: !783)
!4769 = !DILocation(line: 1353, column: 43, scope: !783)
!4770 = !DILocation(line: 1353, column: 21, scope: !783)
!4771 = !DILocation(line: 1353, column: 18, scope: !783)
!4772 = !DILocation(line: 1353, column: 14, scope: !783)
!4773 = !DILocation(line: 1354, column: 18, scope: !783)
!4774 = !DILocation(line: 1354, column: 24, scope: !783)
!4775 = !DILocation(line: 1354, column: 22, scope: !783)
!4776 = !DILocation(line: 1354, column: 28, scope: !783)
!4777 = !DILocation(line: 1354, column: 33, scope: !783)
!4778 = !DILocation(line: 1354, column: 15, scope: !783)
!4779 = !DILocation(line: 1355, column: 14, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1355, column: 5)
!4781 = !DILocation(line: 1355, column: 21, scope: !4780)
!4782 = !DILocation(line: 1355, column: 12, scope: !4780)
!4783 = !DILocation(line: 1355, column: 10, scope: !4780)
!4784 = !DILocation(line: 1355, column: 25, scope: !4785)
!4785 = !DILexicalBlockFile(scope: !4786, file: !4, discriminator: 2)
!4786 = !DILexicalBlockFile(scope: !4787, file: !4, discriminator: 1)
!4787 = distinct !DILexicalBlock(scope: !4780, file: !4, line: 1355, column: 5)
!4788 = !DILocation(line: 1355, column: 29, scope: !4787)
!4789 = !DILocation(line: 1355, column: 27, scope: !4787)
!4790 = !DILocation(line: 1355, column: 5, scope: !4780)
!4791 = !DILocation(line: 1356, column: 18, scope: !4787)
!4792 = !DILocation(line: 1356, column: 17, scope: !4787)
!4793 = !DILocation(line: 1356, column: 39, scope: !4787)
!4794 = !DILocation(line: 1356, column: 44, scope: !4787)
!4795 = !DILocation(line: 1356, column: 42, scope: !4787)
!4796 = !DILocation(line: 1356, column: 38, scope: !4787)
!4797 = !DILocation(line: 1356, column: 54, scope: !4786)
!4798 = !DILocation(line: 1356, column: 65, scope: !4787)
!4799 = !DILocation(line: 1356, column: 63, scope: !4787)
!4800 = !DILocation(line: 1356, column: 70, scope: !4801)
!4801 = !DILexicalBlockFile(scope: !4787, file: !4, discriminator: 2)
!4802 = !DILocation(line: 1356, column: 79, scope: !4787)
!4803 = !DILocation(line: 1356, column: 83, scope: !4787)
!4804 = !DILocation(line: 1356, column: 81, scope: !4787)
!4805 = !DILocation(line: 1356, column: 36, scope: !4806)
!4806 = !DILexicalBlockFile(scope: !4807, file: !4, discriminator: 4)
!4807 = !DILexicalBlockFile(scope: !4787, file: !4, discriminator: 3)
!4808 = !DILocation(line: 1356, column: 22, scope: !4787)
!4809 = !DILocation(line: 1356, column: 20, scope: !4787)
!4810 = !DILocation(line: 1356, column: 11, scope: !4787)
!4811 = !DILocation(line: 1356, column: 9, scope: !4787)
!4812 = !DILocation(line: 1355, column: 41, scope: !4787)
!4813 = !DILocation(line: 1355, column: 5, scope: !4787)
!4814 = !DILocation(line: 1357, column: 30, scope: !783)
!4815 = !DILocation(line: 1357, column: 43, scope: !783)
!4816 = !DILocation(line: 1357, column: 41, scope: !783)
!4817 = !DILocation(line: 1357, column: 29, scope: !783)
!4818 = !DILocation(line: 1357, column: 53, scope: !4442)
!4819 = !DILocation(line: 1357, column: 64, scope: !783)
!4820 = !DILocation(line: 1357, column: 62, scope: !783)
!4821 = !DILocation(line: 1357, column: 77, scope: !4614)
!4822 = !DILocation(line: 1357, column: 86, scope: !783)
!4823 = !DILocation(line: 1357, column: 90, scope: !783)
!4824 = !DILocation(line: 1357, column: 88, scope: !783)
!4825 = !DILocation(line: 1357, column: 27, scope: !4716)
!4826 = !DILocation(line: 1357, column: 13, scope: !783)
!4827 = !DILocation(line: 1357, column: 11, scope: !783)
!4828 = !DILocation(line: 1358, column: 14, scope: !783)
!4829 = !DILocation(line: 1358, column: 13, scope: !783)
!4830 = !DILocation(line: 1358, column: 27, scope: !783)
!4831 = !DILocation(line: 1358, column: 41, scope: !783)
!4832 = !DILocation(line: 1358, column: 40, scope: !783)
!4833 = !DILocation(line: 1358, column: 38, scope: !783)
!4834 = !DILocation(line: 1358, column: 33, scope: !783)
!4835 = !DILocation(line: 1358, column: 18, scope: !783)
!4836 = !DILocation(line: 1358, column: 16, scope: !783)
!4837 = !DILocation(line: 1358, column: 7, scope: !783)
!4838 = !DILocation(line: 1362, column: 10, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1362, column: 9)
!4840 = !DILocation(line: 1362, column: 18, scope: !4839)
!4841 = !DILocation(line: 1362, column: 16, scope: !4839)
!4842 = !DILocation(line: 1362, column: 28, scope: !4839)
!4843 = !DILocation(line: 1362, column: 9, scope: !783)
!4844 = !DILocation(line: 1363, column: 18, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4839, file: !4, line: 1362, column: 34)
!4846 = !DILocation(line: 1364, column: 14, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4845, file: !4, line: 1364, column: 13)
!4848 = !DILocation(line: 1364, column: 25, scope: !4847)
!4849 = !DILocation(line: 1364, column: 24, scope: !4847)
!4850 = !DILocation(line: 1364, column: 33, scope: !4847)
!4851 = !DILocation(line: 1364, column: 20, scope: !4847)
!4852 = !DILocation(line: 1364, column: 38, scope: !4847)
!4853 = !DILocation(line: 1364, column: 43, scope: !4847)
!4854 = !DILocation(line: 1365, column: 14, scope: !4847)
!4855 = !DILocation(line: 1365, column: 23, scope: !4847)
!4856 = !DILocation(line: 1365, column: 28, scope: !4847)
!4857 = !DILocation(line: 1365, column: 49, scope: !4858)
!4858 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 1)
!4859 = !DILocation(line: 1365, column: 58, scope: !4847)
!4860 = !DILocation(line: 1365, column: 64, scope: !4847)
!4861 = !DILocation(line: 1365, column: 62, scope: !4847)
!4862 = !DILocation(line: 1365, column: 48, scope: !4847)
!4863 = !DILocation(line: 1365, column: 74, scope: !4864)
!4864 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 2)
!4865 = !DILocation(line: 1365, column: 85, scope: !4847)
!4866 = !DILocation(line: 1365, column: 94, scope: !4847)
!4867 = !DILocation(line: 1365, column: 83, scope: !4847)
!4868 = !DILocation(line: 1365, column: 100, scope: !4869)
!4869 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 3)
!4870 = !DILocation(line: 1365, column: 109, scope: !4847)
!4871 = !DILocation(line: 1365, column: 113, scope: !4847)
!4872 = !DILocation(line: 1365, column: 122, scope: !4847)
!4873 = !DILocation(line: 1365, column: 111, scope: !4847)
!4874 = !DILocation(line: 1365, column: 46, scope: !4875)
!4875 = !DILexicalBlockFile(scope: !4876, file: !4, discriminator: 5)
!4876 = !DILexicalBlockFile(scope: !4847, file: !4, discriminator: 4)
!4877 = !DILocation(line: 1365, column: 32, scope: !4847)
!4878 = !DILocation(line: 1365, column: 128, scope: !4847)
!4879 = !DILocation(line: 1365, column: 133, scope: !4847)
!4880 = !DILocation(line: 1364, column: 13, scope: !4845)
!4881 = !DILocation(line: 1366, column: 22, scope: !4847)
!4882 = !DILocation(line: 1366, column: 13, scope: !4847)
!4883 = !DILocation(line: 1368, column: 22, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4847, file: !4, line: 1368, column: 13)
!4885 = !DILocation(line: 1368, column: 31, scope: !4884)
!4886 = !DILocation(line: 1368, column: 20, scope: !4884)
!4887 = !DILocation(line: 1368, column: 18, scope: !4884)
!4888 = !DILocation(line: 1368, column: 35, scope: !4889)
!4889 = !DILexicalBlockFile(scope: !4890, file: !4, discriminator: 2)
!4890 = !DILexicalBlockFile(scope: !4891, file: !4, discriminator: 1)
!4891 = distinct !DILexicalBlock(scope: !4884, file: !4, line: 1368, column: 13)
!4892 = !DILocation(line: 1368, column: 37, scope: !4891)
!4893 = !DILocation(line: 1368, column: 13, scope: !4884)
!4894 = !DILocation(line: 1369, column: 38, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4891, file: !4, line: 1369, column: 21)
!4896 = !DILocation(line: 1369, column: 43, scope: !4895)
!4897 = !DILocation(line: 1369, column: 41, scope: !4895)
!4898 = !DILocation(line: 1369, column: 37, scope: !4895)
!4899 = !DILocation(line: 1369, column: 53, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4895, file: !4, discriminator: 1)
!4901 = !DILocation(line: 1369, column: 64, scope: !4895)
!4902 = !DILocation(line: 1369, column: 62, scope: !4895)
!4903 = !DILocation(line: 1369, column: 69, scope: !4904)
!4904 = !DILexicalBlockFile(scope: !4895, file: !4, discriminator: 2)
!4905 = !DILocation(line: 1369, column: 78, scope: !4895)
!4906 = !DILocation(line: 1369, column: 82, scope: !4895)
!4907 = !DILocation(line: 1369, column: 80, scope: !4895)
!4908 = !DILocation(line: 1369, column: 35, scope: !4909)
!4909 = !DILexicalBlockFile(scope: !4910, file: !4, discriminator: 4)
!4910 = !DILexicalBlockFile(scope: !4895, file: !4, discriminator: 3)
!4911 = !DILocation(line: 1369, column: 21, scope: !4895)
!4912 = !DILocation(line: 1369, column: 87, scope: !4895)
!4913 = !DILocation(line: 1369, column: 21, scope: !4891)
!4914 = !DILocation(line: 1370, column: 30, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4895, file: !4, line: 1369, column: 93)
!4916 = !DILocation(line: 1371, column: 21, scope: !4915)
!4917 = !DILocation(line: 1369, column: 90, scope: !4918)
!4918 = !DILexicalBlockFile(scope: !4895, file: !4, discriminator: 5)
!4919 = !DILocation(line: 1368, column: 44, scope: !4891)
!4920 = !DILocation(line: 1368, column: 13, scope: !4891)
!4921 = !DILocation(line: 1373, column: 13, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4845, file: !4, line: 1373, column: 13)
!4923 = !DILocation(line: 1373, column: 13, scope: !4845)
!4924 = !DILocation(line: 1374, column: 20, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4922, file: !4, line: 1373, column: 23)
!4926 = !DILocation(line: 1374, column: 19, scope: !4925)
!4927 = !DILocation(line: 1374, column: 18, scope: !4925)
!4928 = !DILocation(line: 1374, column: 15, scope: !4925)
!4929 = !DILocation(line: 1375, column: 17, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4925, file: !4, line: 1375, column: 17)
!4931 = !DILocation(line: 1375, column: 25, scope: !4930)
!4932 = !DILocation(line: 1375, column: 33, scope: !4930)
!4933 = !DILocation(line: 1376, column: 17, scope: !4930)
!4934 = !DILocation(line: 1376, column: 39, scope: !4930)
!4935 = !DILocation(line: 1376, column: 38, scope: !4930)
!4936 = !DILocation(line: 1376, column: 28, scope: !4930)
!4937 = !DILocation(line: 1376, column: 22, scope: !4930)
!4938 = !DILocation(line: 1376, column: 19, scope: !4930)
!4939 = !DILocation(line: 1375, column: 17, scope: !4925)
!4940 = !DILocation(line: 1379, column: 17, scope: !4930)
!4941 = !DILocation(line: 1380, column: 9, scope: !4925)
!4942 = !DILocation(line: 1381, column: 5, scope: !4845)
!4943 = !DILocation(line: 1382, column: 15, scope: !783)
!4944 = !DILocation(line: 1382, column: 24, scope: !783)
!4945 = !DILocation(line: 1382, column: 30, scope: !783)
!4946 = !DILocation(line: 1382, column: 29, scope: !783)
!4947 = !DILocation(line: 1382, column: 27, scope: !783)
!4948 = !DILocation(line: 1382, column: 18, scope: !783)
!4949 = !DILocation(line: 1382, column: 9, scope: !783)
!4950 = !DILocation(line: 1382, column: 7, scope: !783)
!4951 = !DILocation(line: 1382, column: 5, scope: !783)
!4952 = !DILocation(line: 1386, column: 5, scope: !783)
!4953 = !DILocation(line: 1386, column: 48, scope: !4441)
!4954 = !DILocation(line: 1386, column: 47, scope: !783)
!4955 = !DILocation(line: 1386, column: 46, scope: !783)
!4956 = !DILocation(line: 1386, column: 51, scope: !783)
!4957 = !DILocation(line: 1386, column: 30, scope: !783)
!4958 = !DILocation(line: 1386, column: 13, scope: !783)
!4959 = !DILocation(line: 1386, column: 61, scope: !783)
!4960 = !DILocation(line: 1387, column: 10, scope: !783)
!4961 = !DILocation(line: 1388, column: 9, scope: !4962)
!4962 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1388, column: 9)
!4963 = !DILocation(line: 1388, column: 14, scope: !4962)
!4964 = !DILocation(line: 1388, column: 11, scope: !4962)
!4965 = !DILocation(line: 1388, column: 9, scope: !783)
!4966 = !DILocation(line: 1389, column: 9, scope: !4962)
!4967 = !DILocation(line: 1390, column: 44, scope: !783)
!4968 = !DILocation(line: 1390, column: 54, scope: !4442)
!4969 = !DILocation(line: 1390, column: 53, scope: !783)
!4970 = !DILocation(line: 1390, column: 58, scope: !4614)
!4971 = !DILocation(line: 1390, column: 23, scope: !4716)
!4972 = !DILocation(line: 1390, column: 21, scope: !783)
!4973 = !DILocation(line: 1391, column: 9, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !783, file: !4, line: 1391, column: 9)
!4975 = !DILocation(line: 1391, column: 25, scope: !4974)
!4976 = !DILocation(line: 1391, column: 9, scope: !783)
!4977 = !DILocation(line: 1392, column: 9, scope: !4974)
!4978 = !DILocation(line: 1393, column: 34, scope: !783)
!4979 = !DILocation(line: 1393, column: 39, scope: !783)
!4980 = !DILocation(line: 1393, column: 14, scope: !783)
!4981 = !DILocation(line: 1393, column: 12, scope: !783)
!4982 = !DILocation(line: 1394, column: 5, scope: !783)
!4983 = !DILocation(line: 1394, column: 10, scope: !4984)
!4984 = !DILexicalBlockFile(scope: !809, file: !4, discriminator: 1)
!4985 = !DILocation(line: 1394, column: 20, scope: !809)
!4986 = !DILocation(line: 1394, column: 50, scope: !809)
!4987 = !DILocation(line: 1394, column: 76, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !809, file: !4, line: 1394, column: 73)
!4989 = !DILocation(line: 1394, column: 93, scope: !4988)
!4990 = !DILocation(line: 1394, column: 73, scope: !4988)
!4991 = !DILocation(line: 1394, column: 103, scope: !4988)
!4992 = !DILocation(line: 1394, column: 73, scope: !809)
!4993 = !DILocation(line: 1394, column: 73, scope: !4994)
!4994 = !DILexicalBlockFile(scope: !809, file: !4, discriminator: 2)
!4995 = !DILocation(line: 1394, column: 134, scope: !4996)
!4996 = !DILexicalBlockFile(scope: !4988, file: !4, discriminator: 3)
!4997 = !DILocation(line: 1394, column: 152, scope: !4988)
!4998 = !DILocation(line: 1394, column: 162, scope: !4988)
!4999 = !DILocation(line: 1394, column: 187, scope: !4988)
!5000 = !DILocation(line: 1394, column: 118, scope: !4988)
!5001 = !DILocation(line: 1394, column: 206, scope: !4620)
!5002 = !DILocation(line: 1394, column: 206, scope: !809)
!5003 = !DILocation(line: 1394, column: 206, scope: !5004)
!5004 = !DILexicalBlockFile(scope: !809, file: !4, discriminator: 5)
!5005 = !DILocation(line: 1395, column: 12, scope: !783)
!5006 = !DILocation(line: 1395, column: 5, scope: !783)
!5007 = !DILocation(line: 1398, column: 21, scope: !783)
!5008 = !DILocation(line: 1398, column: 5, scope: !783)
!5009 = !DILocation(line: 1400, column: 5, scope: !783)
!5010 = !DILocation(line: 1403, column: 21, scope: !783)
!5011 = !DILocation(line: 1403, column: 5, scope: !783)
!5012 = !DILocation(line: 1405, column: 5, scope: !783)
!5013 = !DILocation(line: 1408, column: 21, scope: !783)
!5014 = !DILocation(line: 1408, column: 5, scope: !783)
!5015 = !DILocation(line: 1410, column: 5, scope: !783)
!5016 = !DILocation(line: 1411, column: 1, scope: !783)
!5017 = !DILocation(line: 1109, column: 21, scope: !816)
!5018 = !DILocation(line: 1111, column: 5, scope: !816)
!5019 = !DILocation(line: 1111, column: 12, scope: !816)
!5020 = !DILocation(line: 1111, column: 15, scope: !816)
!5021 = !DILocation(line: 1112, column: 5, scope: !816)
!5022 = !DILocation(line: 1112, column: 9, scope: !816)
!5023 = !DILocation(line: 1112, column: 12, scope: !816)
!5024 = !DILocation(line: 1112, column: 19, scope: !816)
!5025 = !DILocation(line: 1112, column: 22, scope: !816)
!5026 = !DILocation(line: 1112, column: 26, scope: !816)
!5027 = !DILocation(line: 1115, column: 5, scope: !816)
!5028 = !DILocation(line: 1115, column: 10, scope: !816)
!5029 = !DILocation(line: 1117, column: 24, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1117, column: 9)
!5031 = !DILocation(line: 1117, column: 29, scope: !5030)
!5032 = !DILocation(line: 1117, column: 38, scope: !5030)
!5033 = !DILocation(line: 1117, column: 57, scope: !5030)
!5034 = !DILocation(line: 1117, column: 91, scope: !5035)
!5035 = !DILexicalBlockFile(scope: !5030, file: !4, discriminator: 2)
!5036 = !DILocation(line: 1117, column: 96, scope: !5030)
!5037 = !DILocation(line: 1117, column: 60, scope: !5030)
!5038 = !DILocation(line: 1117, column: 9, scope: !816)
!5039 = !DILocation(line: 1117, column: 149, scope: !5040)
!5040 = !DILexicalBlockFile(scope: !5041, file: !4, discriminator: 3)
!5041 = !DILexicalBlockFile(scope: !5030, file: !4, discriminator: 1)
!5042 = !DILocation(line: 1117, column: 131, scope: !5030)
!5043 = !DILocation(line: 1117, column: 154, scope: !5030)
!5044 = !DILocation(line: 1117, column: 127, scope: !5030)
!5045 = !DILocation(line: 1117, column: 125, scope: !5030)
!5046 = !DILocation(line: 1117, column: 173, scope: !5047)
!5047 = !DILexicalBlockFile(scope: !5048, file: !4, discriminator: 4)
!5048 = distinct !DILexicalBlock(scope: !5030, file: !4, line: 1117, column: 173)
!5049 = !DILocation(line: 1117, column: 203, scope: !5048)
!5050 = !DILocation(line: 1117, column: 173, scope: !5030)
!5051 = !DILocation(line: 1117, column: 215, scope: !5052)
!5052 = !DILexicalBlockFile(scope: !5048, file: !4, discriminator: 5)
!5053 = !DILocation(line: 1117, column: 208, scope: !5048)
!5054 = !DILocation(line: 1119, column: 116, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1119, column: 9)
!5056 = !DILocation(line: 1119, column: 51, scope: !5057)
!5057 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 1)
!5058 = !DILocation(line: 1119, column: 41, scope: !5055)
!5059 = !DILocation(line: 1119, column: 10, scope: !5055)
!5060 = !DILocation(line: 1119, column: 116, scope: !5061)
!5061 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 2)
!5062 = !DILocation(line: 1119, column: 97, scope: !5063)
!5063 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 4)
!5064 = !DILocation(line: 1119, column: 88, scope: !5055)
!5065 = !DILocation(line: 1119, column: 56, scope: !5055)
!5066 = !DILocation(line: 1119, column: 112, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 5)
!5068 = !DILocation(line: 1119, column: 102, scope: !5055)
!5069 = !DILocation(line: 1119, column: 9, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !5071, file: !4, discriminator: 7)
!5071 = !DILexicalBlockFile(scope: !5072, file: !4, discriminator: 6)
!5072 = !DILexicalBlockFile(scope: !816, file: !4, discriminator: 3)
!5073 = !DILocation(line: 1119, column: 161, scope: !5074)
!5074 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 8)
!5075 = !DILocation(line: 1119, column: 151, scope: !5055)
!5076 = !DILocation(line: 1119, column: 120, scope: !5055)
!5077 = !DILocation(line: 1119, column: 9, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !816, file: !4, discriminator: 9)
!5079 = !DILocation(line: 1119, column: 207, scope: !5080)
!5080 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 10)
!5081 = !DILocation(line: 1119, column: 198, scope: !5055)
!5082 = !DILocation(line: 1119, column: 166, scope: !5055)
!5083 = !DILocation(line: 1119, column: 222, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5055, file: !4, discriminator: 11)
!5085 = !DILocation(line: 1119, column: 212, scope: !5055)
!5086 = !DILocation(line: 1119, column: 9, scope: !816)
!5087 = !DILocation(line: 1120, column: 44, scope: !5055)
!5088 = !DILocation(line: 1120, column: 27, scope: !5055)
!5089 = !DILocation(line: 1120, column: 16, scope: !5055)
!5090 = !DILocation(line: 1120, column: 9, scope: !5055)
!5091 = !DILocation(line: 1122, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1122, column: 9)
!5093 = !DILocation(line: 1122, column: 11, scope: !5092)
!5094 = !DILocation(line: 1122, column: 9, scope: !816)
!5095 = !DILocation(line: 1123, column: 27, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5097, file: !4, line: 1123, column: 13)
!5097 = distinct !DILexicalBlock(scope: !5092, file: !4, line: 1122, column: 19)
!5098 = !DILocation(line: 1123, column: 13, scope: !5096)
!5099 = !DILocation(line: 1123, column: 30, scope: !5096)
!5100 = !DILocation(line: 1123, column: 13, scope: !5097)
!5101 = !DILocation(line: 1124, column: 20, scope: !5096)
!5102 = !DILocation(line: 1124, column: 13, scope: !5096)
!5103 = !DILocation(line: 1126, column: 20, scope: !5096)
!5104 = !DILocation(line: 1126, column: 13, scope: !5096)
!5105 = !DILocation(line: 1129, column: 20, scope: !816)
!5106 = !DILocation(line: 1129, column: 15, scope: !816)
!5107 = !DILocation(line: 1129, column: 9, scope: !816)
!5108 = !DILocation(line: 1129, column: 7, scope: !816)
!5109 = !DILocation(line: 1130, column: 30, scope: !816)
!5110 = !DILocation(line: 1130, column: 28, scope: !816)
!5111 = !DILocation(line: 1130, column: 33, scope: !816)
!5112 = !DILocation(line: 1130, column: 18, scope: !816)
!5113 = !DILocation(line: 1130, column: 53, scope: !5114)
!5114 = !DILexicalBlockFile(scope: !816, file: !4, discriminator: 1)
!5115 = !DILocation(line: 1130, column: 51, scope: !816)
!5116 = !DILocation(line: 1130, column: 18, scope: !5117)
!5117 = !DILexicalBlockFile(scope: !816, file: !4, discriminator: 2)
!5118 = !DILocation(line: 1130, column: 15, scope: !5119)
!5119 = !DILexicalBlockFile(scope: !5072, file: !4, discriminator: 4)
!5120 = !DILocation(line: 1130, column: 11, scope: !816)
!5121 = !DILocation(line: 1131, column: 15, scope: !816)
!5122 = !DILocation(line: 1131, column: 18, scope: !816)
!5123 = !DILocation(line: 1131, column: 9, scope: !816)
!5124 = !DILocation(line: 1131, column: 7, scope: !816)
!5125 = !DILocation(line: 1132, column: 10, scope: !816)
!5126 = !DILocation(line: 1132, column: 7, scope: !816)
!5127 = !DILocation(line: 1134, column: 8, scope: !816)
!5128 = !DILocation(line: 1135, column: 32, scope: !816)
!5129 = !DILocation(line: 1135, column: 27, scope: !816)
!5130 = !DILocation(line: 1135, column: 13, scope: !816)
!5131 = !DILocation(line: 1135, column: 7, scope: !816)
!5132 = !DILocation(line: 1135, column: 5, scope: !816)
!5133 = !DILocation(line: 1135, column: 11, scope: !816)
!5134 = !DILocation(line: 1136, column: 7, scope: !816)
!5135 = !DILocation(line: 1137, column: 15, scope: !816)
!5136 = !DILocation(line: 1137, column: 10, scope: !816)
!5137 = !DILocation(line: 1137, column: 7, scope: !816)
!5138 = !DILocation(line: 1138, column: 7, scope: !816)
!5139 = !DILocation(line: 1138, column: 5, scope: !816)
!5140 = !DILocation(line: 1138, column: 11, scope: !816)
!5141 = !DILocation(line: 1139, column: 7, scope: !816)
!5142 = !DILocation(line: 1140, column: 11, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1140, column: 5)
!5144 = !DILocation(line: 1140, column: 10, scope: !5143)
!5145 = !DILocation(line: 1140, column: 15, scope: !5146)
!5146 = !DILexicalBlockFile(scope: !5147, file: !4, discriminator: 2)
!5147 = !DILexicalBlockFile(scope: !5148, file: !4, discriminator: 1)
!5148 = distinct !DILexicalBlock(scope: !5143, file: !4, line: 1140, column: 5)
!5149 = !DILocation(line: 1140, column: 17, scope: !5148)
!5150 = !DILocation(line: 1140, column: 5, scope: !5143)
!5151 = !DILocation(line: 1141, column: 11, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !4, line: 1140, column: 51)
!5153 = !DILocation(line: 1142, column: 36, scope: !5152)
!5154 = !DILocation(line: 1142, column: 31, scope: !5152)
!5155 = !DILocation(line: 1142, column: 17, scope: !5152)
!5156 = !DILocation(line: 1142, column: 11, scope: !5152)
!5157 = !DILocation(line: 1142, column: 9, scope: !5152)
!5158 = !DILocation(line: 1142, column: 15, scope: !5152)
!5159 = !DILocation(line: 1143, column: 11, scope: !5152)
!5160 = !DILocation(line: 1144, column: 19, scope: !5152)
!5161 = !DILocation(line: 1144, column: 14, scope: !5152)
!5162 = !DILocation(line: 1144, column: 11, scope: !5152)
!5163 = !DILocation(line: 1145, column: 5, scope: !5152)
!5164 = !DILocation(line: 1140, column: 47, scope: !5148)
!5165 = !DILocation(line: 1140, column: 5, scope: !5148)
!5166 = !DILocation(line: 1146, column: 7, scope: !816)
!5167 = !DILocation(line: 1146, column: 5, scope: !816)
!5168 = !DILocation(line: 1146, column: 11, scope: !816)
!5169 = !DILocation(line: 1148, column: 9, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1148, column: 9)
!5171 = !DILocation(line: 1148, column: 11, scope: !5170)
!5172 = !DILocation(line: 1148, column: 9, scope: !816)
!5173 = !DILocation(line: 1149, column: 15, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5170, file: !4, line: 1148, column: 16)
!5175 = !DILocation(line: 1150, column: 14, scope: !5174)
!5176 = !DILocation(line: 1150, column: 13, scope: !5174)
!5177 = !DILocation(line: 1150, column: 11, scope: !5174)
!5178 = !DILocation(line: 1151, column: 5, scope: !5174)
!5179 = !DILocation(line: 1153, column: 15, scope: !5170)
!5180 = !DILocation(line: 1155, column: 9, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !816, file: !4, line: 1155, column: 9)
!5182 = !DILocation(line: 1155, column: 11, scope: !5181)
!5183 = !DILocation(line: 1155, column: 9, scope: !816)
!5184 = !DILocation(line: 1156, column: 51, scope: !5181)
!5185 = !DILocation(line: 1156, column: 54, scope: !5181)
!5186 = !DILocation(line: 1156, column: 61, scope: !5181)
!5187 = !DILocation(line: 1156, column: 16, scope: !5181)
!5188 = !DILocation(line: 1156, column: 9, scope: !5181)
!5189 = !DILocation(line: 1158, column: 50, scope: !5181)
!5190 = !DILocation(line: 1158, column: 53, scope: !5181)
!5191 = !DILocation(line: 1158, column: 60, scope: !5181)
!5192 = !DILocation(line: 1158, column: 16, scope: !5181)
!5193 = !DILocation(line: 1158, column: 9, scope: !5181)
!5194 = !DILocation(line: 1159, column: 1, scope: !816)
!5195 = !DILocation(line: 779, column: 28, scope: !835)
!5196 = !DILocation(line: 781, column: 5, scope: !835)
!5197 = !DILocation(line: 781, column: 12, scope: !835)
!5198 = !DILocation(line: 781, column: 33, scope: !835)
!5199 = !DILocation(line: 781, column: 16, scope: !835)
!5200 = !DILocation(line: 782, column: 5, scope: !835)
!5201 = !DILocation(line: 782, column: 15, scope: !835)
!5202 = !DILocation(line: 784, column: 9, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !835, file: !4, line: 784, column: 9)
!5204 = !DILocation(line: 784, column: 11, scope: !5203)
!5205 = !DILocation(line: 784, column: 19, scope: !5203)
!5206 = !DILocation(line: 784, column: 22, scope: !5207)
!5207 = !DILexicalBlockFile(scope: !5203, file: !4, discriminator: 1)
!5208 = !DILocation(line: 784, column: 9, scope: !835)
!5209 = !DILocation(line: 785, column: 9, scope: !5203)
!5210 = !DILocation(line: 786, column: 9, scope: !835)
!5211 = !DILocation(line: 786, column: 53, scope: !5212)
!5212 = !DILexicalBlockFile(scope: !5213, file: !4, discriminator: 1)
!5213 = distinct !DILexicalBlock(scope: !835, file: !4, line: 786, column: 9)
!5214 = !DILocation(line: 786, column: 42, scope: !5213)
!5215 = !DILocation(line: 786, column: 11, scope: !5213)
!5216 = !DILocation(line: 786, column: 9, scope: !5217)
!5217 = !DILexicalBlockFile(scope: !835, file: !4, discriminator: 2)
!5218 = !DILocation(line: 786, column: 100, scope: !5219)
!5219 = !DILexicalBlockFile(scope: !5213, file: !4, discriminator: 3)
!5220 = !DILocation(line: 786, column: 90, scope: !5213)
!5221 = !DILocation(line: 786, column: 58, scope: !5213)
!5222 = !DILocation(line: 786, column: 116, scope: !5223)
!5223 = !DILexicalBlockFile(scope: !5213, file: !4, discriminator: 4)
!5224 = !DILocation(line: 786, column: 105, scope: !5213)
!5225 = !DILocation(line: 787, column: 76, scope: !5213)
!5226 = !DILocation(line: 787, column: 9, scope: !5213)
!5227 = !DILocation(line: 788, column: 7, scope: !835)
!5228 = !DILocation(line: 788, column: 28, scope: !835)
!5229 = !DILocation(line: 790, column: 16, scope: !835)
!5230 = !DILocation(line: 790, column: 10, scope: !835)
!5231 = !DILocation(line: 790, column: 22, scope: !835)
!5232 = !DILocation(line: 790, column: 19, scope: !835)
!5233 = !DILocation(line: 790, column: 9, scope: !835)
!5234 = !DILocation(line: 790, column: 7, scope: !835)
!5235 = !DILocation(line: 792, column: 11, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !835, file: !4, line: 792, column: 9)
!5237 = !DILocation(line: 792, column: 10, scope: !5236)
!5238 = !DILocation(line: 792, column: 32, scope: !5236)
!5239 = !DILocation(line: 792, column: 9, scope: !835)
!5240 = !DILocation(line: 793, column: 30, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5236, file: !4, line: 792, column: 38)
!5242 = !DILocation(line: 793, column: 29, scope: !5241)
!5243 = !DILocation(line: 793, column: 51, scope: !5241)
!5244 = !DILocation(line: 793, column: 28, scope: !5241)
!5245 = !DILocation(line: 793, column: 59, scope: !5246)
!5246 = !DILexicalBlockFile(scope: !5241, file: !4, discriminator: 1)
!5247 = !DILocation(line: 794, column: 30, scope: !5241)
!5248 = !DILocation(line: 793, column: 9, scope: !5249)
!5249 = !DILexicalBlockFile(scope: !5250, file: !4, discriminator: 3)
!5250 = !DILexicalBlockFile(scope: !5241, file: !4, discriminator: 2)
!5251 = !DILocation(line: 795, column: 9, scope: !5241)
!5252 = !DILocation(line: 797, column: 21, scope: !835)
!5253 = !DILocation(line: 797, column: 26, scope: !835)
!5254 = !DILocation(line: 797, column: 35, scope: !835)
!5255 = !DILocation(line: 798, column: 12, scope: !835)
!5256 = !DILocation(line: 798, column: 5, scope: !835)
!5257 = !DILocation(line: 799, column: 1, scope: !835)
!5258 = !DILocation(line: 1560, column: 33, scope: !840)
!5259 = !DILocation(line: 1562, column: 33, scope: !840)
!5260 = !DILocation(line: 1562, column: 36, scope: !840)
!5261 = !DILocation(line: 1562, column: 12, scope: !840)
!5262 = !DILocation(line: 1562, column: 5, scope: !840)
!5263 = !DILocation(line: 1575, column: 31, scope: !843)
!5264 = !DILocation(line: 1575, column: 44, scope: !843)
!5265 = !DILocation(line: 1577, column: 5, scope: !843)
!5266 = !DILocation(line: 1577, column: 11, scope: !843)
!5267 = !DILocation(line: 1578, column: 5, scope: !843)
!5268 = !DILocation(line: 1578, column: 23, scope: !843)
!5269 = !DILocation(line: 1580, column: 27, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1580, column: 9)
!5271 = !DILocation(line: 1580, column: 34, scope: !5270)
!5272 = !DILocation(line: 1580, column: 45, scope: !5270)
!5273 = !DILocation(line: 1580, column: 54, scope: !5270)
!5274 = !DILocation(line: 1580, column: 71, scope: !5270)
!5275 = !DILocation(line: 1580, column: 9, scope: !843)
!5276 = !DILocation(line: 1581, column: 22, scope: !5277)
!5277 = distinct !DILexicalBlock(scope: !5270, file: !4, line: 1580, column: 78)
!5278 = !DILocation(line: 1583, column: 40, scope: !5277)
!5279 = !DILocation(line: 1583, column: 47, scope: !5277)
!5280 = !DILocation(line: 1583, column: 57, scope: !5277)
!5281 = !DILocation(line: 1581, column: 9, scope: !5277)
!5282 = !DILocation(line: 1584, column: 9, scope: !5277)
!5283 = !DILocation(line: 1586, column: 26, scope: !843)
!5284 = !DILocation(line: 1586, column: 9, scope: !843)
!5285 = !DILocation(line: 1586, column: 7, scope: !843)
!5286 = !DILocation(line: 1587, column: 9, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1587, column: 9)
!5288 = !DILocation(line: 1587, column: 11, scope: !5287)
!5289 = !DILocation(line: 1587, column: 9, scope: !843)
!5290 = !DILocation(line: 1588, column: 9, scope: !5287)
!5291 = !DILocation(line: 1589, column: 26, scope: !855)
!5292 = !DILocation(line: 1589, column: 33, scope: !855)
!5293 = !DILocation(line: 1589, column: 43, scope: !855)
!5294 = !DILocation(line: 1589, column: 1334, scope: !855)
!5295 = !DILocation(line: 1589, column: 1347, scope: !5296)
!5296 = !DILexicalBlockFile(scope: !855, file: !4, discriminator: 1)
!5297 = !DILocation(line: 1589, column: 1368, scope: !855)
!5298 = !DILocation(line: 1589, column: 1377, scope: !855)
!5299 = !DILocation(line: 1589, column: 1218, scope: !855)
!5300 = !DILocation(line: 1589, column: 1533, scope: !5301)
!5301 = !DILexicalBlockFile(scope: !859, file: !4, discriminator: 3)
!5302 = !DILocation(line: 1589, column: 1554, scope: !859)
!5303 = !DILocation(line: 1589, column: 1601, scope: !859)
!5304 = !DILocation(line: 1589, column: 1605, scope: !859)
!5305 = !DILocation(line: 1589, column: 1618, scope: !859)
!5306 = !DILocation(line: 1589, column: 1629, scope: !859)
!5307 = !DILocation(line: 1589, column: 1639, scope: !859)
!5308 = !DILocation(line: 1589, column: 1637, scope: !859)
!5309 = !DILocation(line: 1589, column: 1699, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !859, file: !4, line: 1589, column: 1699)
!5311 = !DILocation(line: 1589, column: 1708, scope: !5310)
!5312 = !DILocation(line: 1589, column: 1712, scope: !5310)
!5313 = !DILocation(line: 1589, column: 1715, scope: !5314)
!5314 = !DILexicalBlockFile(scope: !5310, file: !4, discriminator: 5)
!5315 = !DILocation(line: 1589, column: 1724, scope: !5310)
!5316 = !DILocation(line: 1589, column: 1699, scope: !859)
!5317 = !DILocation(line: 1589, column: 1744, scope: !5318)
!5318 = !DILexicalBlockFile(scope: !5319, file: !4, discriminator: 7)
!5319 = distinct !DILexicalBlock(scope: !5310, file: !4, line: 1589, column: 1730)
!5320 = !DILocation(line: 1589, column: 1754, scope: !5319)
!5321 = !DILocation(line: 1589, column: 1752, scope: !5319)
!5322 = !DILocation(line: 1589, column: 1741, scope: !5319)
!5323 = !DILocation(line: 1589, column: 1815, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5319, file: !4, line: 1589, column: 1815)
!5325 = !DILocation(line: 1589, column: 1824, scope: !5324)
!5326 = !DILocation(line: 1589, column: 1828, scope: !5324)
!5327 = !DILocation(line: 1589, column: 1831, scope: !5328)
!5328 = !DILexicalBlockFile(scope: !5324, file: !4, discriminator: 9)
!5329 = !DILocation(line: 1589, column: 1840, scope: !5324)
!5330 = !DILocation(line: 1589, column: 1815, scope: !5319)
!5331 = !DILocation(line: 1589, column: 1860, scope: !5332)
!5332 = !DILexicalBlockFile(scope: !5333, file: !4, discriminator: 11)
!5333 = distinct !DILexicalBlock(scope: !5324, file: !4, line: 1589, column: 1846)
!5334 = !DILocation(line: 1589, column: 1870, scope: !5333)
!5335 = !DILocation(line: 1589, column: 1868, scope: !5333)
!5336 = !DILocation(line: 1589, column: 1857, scope: !5333)
!5337 = !DILocation(line: 1589, column: 1931, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5333, file: !4, line: 1589, column: 1931)
!5339 = !DILocation(line: 1589, column: 1940, scope: !5338)
!5340 = !DILocation(line: 1589, column: 1944, scope: !5338)
!5341 = !DILocation(line: 1589, column: 1947, scope: !5342)
!5342 = !DILexicalBlockFile(scope: !5338, file: !4, discriminator: 13)
!5343 = !DILocation(line: 1589, column: 1956, scope: !5338)
!5344 = !DILocation(line: 1589, column: 1931, scope: !5333)
!5345 = !DILocation(line: 1589, column: 1974, scope: !5346)
!5346 = !DILexicalBlockFile(scope: !5338, file: !4, discriminator: 15)
!5347 = !DILocation(line: 1589, column: 1984, scope: !5338)
!5348 = !DILocation(line: 1589, column: 1982, scope: !5338)
!5349 = !DILocation(line: 1589, column: 1971, scope: !5338)
!5350 = !DILocation(line: 1589, column: 1962, scope: !5338)
!5351 = !DILocation(line: 1589, column: 2041, scope: !5352)
!5352 = !DILexicalBlockFile(scope: !5353, file: !4, discriminator: 17)
!5353 = !DILexicalBlockFile(scope: !5354, file: !4, discriminator: 16)
!5354 = !DILexicalBlockFile(scope: !5333, file: !4, discriminator: 14)
!5355 = !DILocation(line: 1589, column: 2043, scope: !5356)
!5356 = !DILexicalBlockFile(scope: !5357, file: !4, discriminator: 18)
!5357 = !DILexicalBlockFile(scope: !5358, file: !4, discriminator: 12)
!5358 = !DILexicalBlockFile(scope: !5319, file: !4, discriminator: 10)
!5359 = !DILocation(line: 1589, column: 2045, scope: !5360)
!5360 = !DILexicalBlockFile(scope: !5361, file: !4, discriminator: 19)
!5361 = !DILexicalBlockFile(scope: !5362, file: !4, discriminator: 8)
!5362 = !DILexicalBlockFile(scope: !859, file: !4, discriminator: 6)
!5363 = !DILocation(line: 1589, column: 1727, scope: !5310)
!5364 = !DILocation(line: 1589, column: 2055, scope: !855)
!5365 = !DILocation(line: 1589, column: 2055, scope: !859)
!5366 = !DILocation(line: 1589, column: 2080, scope: !5367)
!5367 = !DILexicalBlockFile(scope: !5368, file: !4, discriminator: 4)
!5368 = !DILexicalBlockFile(scope: !855, file: !4, discriminator: 2)
!5369 = !DILocation(line: 1589, column: 2062, scope: !855)
!5370 = !DILocation(line: 1589, column: 26, scope: !5371)
!5371 = !DILexicalBlockFile(scope: !5372, file: !4, discriminator: 21)
!5372 = !DILexicalBlockFile(scope: !855, file: !4, discriminator: 20)
!5373 = !DILocation(line: 1589, column: 2097, scope: !856)
!5374 = !DILocation(line: 1589, column: 2097, scope: !855)
!5375 = !DILocation(line: 1589, column: 2100, scope: !856)
!5376 = !DILocation(line: 1589, column: 9, scope: !843)
!5377 = !DILocation(line: 1590, column: 13, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !856, file: !4, line: 1589, column: 2106)
!5379 = !DILocation(line: 1590, column: 11, scope: !5378)
!5380 = !DILocation(line: 1591, column: 5, scope: !5378)
!5381 = !DILocation(line: 1592, column: 31, scope: !862)
!5382 = !DILocation(line: 1592, column: 38, scope: !862)
!5383 = !DILocation(line: 1592, column: 48, scope: !862)
!5384 = !DILocation(line: 1592, column: 1326, scope: !862)
!5385 = !DILocation(line: 1592, column: 1339, scope: !5386)
!5386 = !DILexicalBlockFile(scope: !862, file: !4, discriminator: 1)
!5387 = !DILocation(line: 1592, column: 1359, scope: !862)
!5388 = !DILocation(line: 1592, column: 1368, scope: !862)
!5389 = !DILocation(line: 1592, column: 1213, scope: !862)
!5390 = !DILocation(line: 1592, column: 1523, scope: !5391)
!5391 = !DILexicalBlockFile(scope: !866, file: !4, discriminator: 3)
!5392 = !DILocation(line: 1592, column: 1544, scope: !866)
!5393 = !DILocation(line: 1592, column: 1591, scope: !866)
!5394 = !DILocation(line: 1592, column: 1595, scope: !866)
!5395 = !DILocation(line: 1592, column: 1608, scope: !866)
!5396 = !DILocation(line: 1592, column: 1619, scope: !866)
!5397 = !DILocation(line: 1592, column: 1629, scope: !866)
!5398 = !DILocation(line: 1592, column: 1627, scope: !866)
!5399 = !DILocation(line: 1592, column: 1688, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !866, file: !4, line: 1592, column: 1688)
!5401 = !DILocation(line: 1592, column: 1697, scope: !5400)
!5402 = !DILocation(line: 1592, column: 1701, scope: !5400)
!5403 = !DILocation(line: 1592, column: 1704, scope: !5404)
!5404 = !DILexicalBlockFile(scope: !5400, file: !4, discriminator: 5)
!5405 = !DILocation(line: 1592, column: 1713, scope: !5400)
!5406 = !DILocation(line: 1592, column: 1688, scope: !866)
!5407 = !DILocation(line: 1592, column: 1733, scope: !5408)
!5408 = !DILexicalBlockFile(scope: !5409, file: !4, discriminator: 7)
!5409 = distinct !DILexicalBlock(scope: !5400, file: !4, line: 1592, column: 1719)
!5410 = !DILocation(line: 1592, column: 1743, scope: !5409)
!5411 = !DILocation(line: 1592, column: 1741, scope: !5409)
!5412 = !DILocation(line: 1592, column: 1730, scope: !5409)
!5413 = !DILocation(line: 1592, column: 1803, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5409, file: !4, line: 1592, column: 1803)
!5415 = !DILocation(line: 1592, column: 1812, scope: !5414)
!5416 = !DILocation(line: 1592, column: 1816, scope: !5414)
!5417 = !DILocation(line: 1592, column: 1819, scope: !5418)
!5418 = !DILexicalBlockFile(scope: !5414, file: !4, discriminator: 9)
!5419 = !DILocation(line: 1592, column: 1828, scope: !5414)
!5420 = !DILocation(line: 1592, column: 1803, scope: !5409)
!5421 = !DILocation(line: 1592, column: 1848, scope: !5422)
!5422 = !DILexicalBlockFile(scope: !5423, file: !4, discriminator: 11)
!5423 = distinct !DILexicalBlock(scope: !5414, file: !4, line: 1592, column: 1834)
!5424 = !DILocation(line: 1592, column: 1858, scope: !5423)
!5425 = !DILocation(line: 1592, column: 1856, scope: !5423)
!5426 = !DILocation(line: 1592, column: 1845, scope: !5423)
!5427 = !DILocation(line: 1592, column: 1918, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5423, file: !4, line: 1592, column: 1918)
!5429 = !DILocation(line: 1592, column: 1927, scope: !5428)
!5430 = !DILocation(line: 1592, column: 1931, scope: !5428)
!5431 = !DILocation(line: 1592, column: 1934, scope: !5432)
!5432 = !DILexicalBlockFile(scope: !5428, file: !4, discriminator: 13)
!5433 = !DILocation(line: 1592, column: 1943, scope: !5428)
!5434 = !DILocation(line: 1592, column: 1918, scope: !5423)
!5435 = !DILocation(line: 1592, column: 1961, scope: !5436)
!5436 = !DILexicalBlockFile(scope: !5428, file: !4, discriminator: 15)
!5437 = !DILocation(line: 1592, column: 1971, scope: !5428)
!5438 = !DILocation(line: 1592, column: 1969, scope: !5428)
!5439 = !DILocation(line: 1592, column: 1958, scope: !5428)
!5440 = !DILocation(line: 1592, column: 1949, scope: !5428)
!5441 = !DILocation(line: 1592, column: 2027, scope: !5442)
!5442 = !DILexicalBlockFile(scope: !5443, file: !4, discriminator: 17)
!5443 = !DILexicalBlockFile(scope: !5444, file: !4, discriminator: 16)
!5444 = !DILexicalBlockFile(scope: !5423, file: !4, discriminator: 14)
!5445 = !DILocation(line: 1592, column: 2029, scope: !5446)
!5446 = !DILexicalBlockFile(scope: !5447, file: !4, discriminator: 18)
!5447 = !DILexicalBlockFile(scope: !5448, file: !4, discriminator: 12)
!5448 = !DILexicalBlockFile(scope: !5409, file: !4, discriminator: 10)
!5449 = !DILocation(line: 1592, column: 2031, scope: !5450)
!5450 = !DILexicalBlockFile(scope: !5451, file: !4, discriminator: 19)
!5451 = !DILexicalBlockFile(scope: !5452, file: !4, discriminator: 8)
!5452 = !DILexicalBlockFile(scope: !866, file: !4, discriminator: 6)
!5453 = !DILocation(line: 1592, column: 1716, scope: !5400)
!5454 = !DILocation(line: 1592, column: 2041, scope: !862)
!5455 = !DILocation(line: 1592, column: 2041, scope: !866)
!5456 = !DILocation(line: 1592, column: 2066, scope: !5457)
!5457 = !DILexicalBlockFile(scope: !5458, file: !4, discriminator: 4)
!5458 = !DILexicalBlockFile(scope: !862, file: !4, discriminator: 2)
!5459 = !DILocation(line: 1592, column: 2048, scope: !862)
!5460 = !DILocation(line: 1592, column: 31, scope: !5461)
!5461 = !DILexicalBlockFile(scope: !5462, file: !4, discriminator: 21)
!5462 = !DILexicalBlockFile(scope: !862, file: !4, discriminator: 20)
!5463 = !DILocation(line: 1592, column: 2082, scope: !863)
!5464 = !DILocation(line: 1592, column: 2082, scope: !862)
!5465 = !DILocation(line: 1592, column: 2085, scope: !863)
!5466 = !DILocation(line: 1592, column: 14, scope: !856)
!5467 = !DILocation(line: 1593, column: 13, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !863, file: !4, line: 1592, column: 2091)
!5469 = !DILocation(line: 1593, column: 11, scope: !5468)
!5470 = !DILocation(line: 1594, column: 5, scope: !5468)
!5471 = !DILocation(line: 1596, column: 25, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !863, file: !4, line: 1595, column: 10)
!5473 = !DILocation(line: 1596, column: 9, scope: !5472)
!5474 = !DILocation(line: 1599, column: 9, scope: !5472)
!5475 = !DILocation(line: 1602, column: 13, scope: !843)
!5476 = !DILocation(line: 1602, column: 5, scope: !843)
!5477 = !DILocation(line: 1604, column: 16, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !843, file: !4, line: 1602, column: 16)
!5479 = !DILocation(line: 1604, column: 9, scope: !5478)
!5480 = !DILocation(line: 1606, column: 16, scope: !5478)
!5481 = !DILocation(line: 1606, column: 9, scope: !5478)
!5482 = !DILocation(line: 1608, column: 16, scope: !5478)
!5483 = !DILocation(line: 1608, column: 9, scope: !5478)
!5484 = !DILocation(line: 1610, column: 9, scope: !5478)
!5485 = !DILocation(line: 1613, column: 1, scope: !843)
!5486 = !DILocation(line: 1626, column: 31, scope: !868)
!5487 = !DILocation(line: 1626, column: 44, scope: !868)
!5488 = !DILocation(line: 1628, column: 5, scope: !868)
!5489 = !DILocation(line: 1628, column: 11, scope: !868)
!5490 = !DILocation(line: 1629, column: 5, scope: !868)
!5491 = !DILocation(line: 1629, column: 11, scope: !868)
!5492 = !DILocation(line: 1630, column: 5, scope: !868)
!5493 = !DILocation(line: 1630, column: 23, scope: !868)
!5494 = !DILocation(line: 1631, column: 5, scope: !868)
!5495 = !DILocation(line: 1631, column: 23, scope: !868)
!5496 = !DILocation(line: 1632, column: 5, scope: !868)
!5497 = !DILocation(line: 1632, column: 24, scope: !868)
!5498 = !DILocation(line: 1634, column: 27, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1634, column: 9)
!5500 = !DILocation(line: 1634, column: 10, scope: !5499)
!5501 = !DILocation(line: 1634, column: 9, scope: !868)
!5502 = !DILocation(line: 1635, column: 9, scope: !5499)
!5503 = !DILocation(line: 1637, column: 26, scope: !879)
!5504 = !DILocation(line: 1637, column: 33, scope: !879)
!5505 = !DILocation(line: 1637, column: 43, scope: !879)
!5506 = !DILocation(line: 1637, column: 1418, scope: !879)
!5507 = !DILocation(line: 1637, column: 1431, scope: !5508)
!5508 = !DILexicalBlockFile(scope: !879, file: !4, discriminator: 1)
!5509 = !DILocation(line: 1637, column: 1452, scope: !879)
!5510 = !DILocation(line: 1637, column: 1461, scope: !879)
!5511 = !DILocation(line: 1637, column: 1302, scope: !879)
!5512 = !DILocation(line: 1637, column: 1641, scope: !5513)
!5513 = !DILexicalBlockFile(scope: !883, file: !4, discriminator: 3)
!5514 = !DILocation(line: 1637, column: 1662, scope: !883)
!5515 = !DILocation(line: 1637, column: 1709, scope: !883)
!5516 = !DILocation(line: 1637, column: 1719, scope: !883)
!5517 = !DILocation(line: 1637, column: 1732, scope: !883)
!5518 = !DILocation(line: 1637, column: 1743, scope: !883)
!5519 = !DILocation(line: 1637, column: 1753, scope: !883)
!5520 = !DILocation(line: 1637, column: 1751, scope: !883)
!5521 = !DILocation(line: 1637, column: 1813, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !883, file: !4, line: 1637, column: 1813)
!5523 = !DILocation(line: 1637, column: 1822, scope: !5522)
!5524 = !DILocation(line: 1637, column: 1826, scope: !5522)
!5525 = !DILocation(line: 1637, column: 1829, scope: !5526)
!5526 = !DILexicalBlockFile(scope: !5522, file: !4, discriminator: 5)
!5527 = !DILocation(line: 1637, column: 1838, scope: !5522)
!5528 = !DILocation(line: 1637, column: 1813, scope: !883)
!5529 = !DILocation(line: 1637, column: 1858, scope: !5530)
!5530 = !DILexicalBlockFile(scope: !5531, file: !4, discriminator: 7)
!5531 = distinct !DILexicalBlock(scope: !5522, file: !4, line: 1637, column: 1844)
!5532 = !DILocation(line: 1637, column: 1868, scope: !5531)
!5533 = !DILocation(line: 1637, column: 1866, scope: !5531)
!5534 = !DILocation(line: 1637, column: 1855, scope: !5531)
!5535 = !DILocation(line: 1637, column: 1929, scope: !5536)
!5536 = distinct !DILexicalBlock(scope: !5531, file: !4, line: 1637, column: 1929)
!5537 = !DILocation(line: 1637, column: 1938, scope: !5536)
!5538 = !DILocation(line: 1637, column: 1942, scope: !5536)
!5539 = !DILocation(line: 1637, column: 1945, scope: !5540)
!5540 = !DILexicalBlockFile(scope: !5536, file: !4, discriminator: 9)
!5541 = !DILocation(line: 1637, column: 1954, scope: !5536)
!5542 = !DILocation(line: 1637, column: 1929, scope: !5531)
!5543 = !DILocation(line: 1637, column: 1974, scope: !5544)
!5544 = !DILexicalBlockFile(scope: !5545, file: !4, discriminator: 11)
!5545 = distinct !DILexicalBlock(scope: !5536, file: !4, line: 1637, column: 1960)
!5546 = !DILocation(line: 1637, column: 1984, scope: !5545)
!5547 = !DILocation(line: 1637, column: 1982, scope: !5545)
!5548 = !DILocation(line: 1637, column: 1971, scope: !5545)
!5549 = !DILocation(line: 1637, column: 2045, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5545, file: !4, line: 1637, column: 2045)
!5551 = !DILocation(line: 1637, column: 2054, scope: !5550)
!5552 = !DILocation(line: 1637, column: 2058, scope: !5550)
!5553 = !DILocation(line: 1637, column: 2061, scope: !5554)
!5554 = !DILexicalBlockFile(scope: !5550, file: !4, discriminator: 13)
!5555 = !DILocation(line: 1637, column: 2070, scope: !5550)
!5556 = !DILocation(line: 1637, column: 2045, scope: !5545)
!5557 = !DILocation(line: 1637, column: 2088, scope: !5558)
!5558 = !DILexicalBlockFile(scope: !5550, file: !4, discriminator: 15)
!5559 = !DILocation(line: 1637, column: 2098, scope: !5550)
!5560 = !DILocation(line: 1637, column: 2096, scope: !5550)
!5561 = !DILocation(line: 1637, column: 2085, scope: !5550)
!5562 = !DILocation(line: 1637, column: 2076, scope: !5550)
!5563 = !DILocation(line: 1637, column: 2155, scope: !5564)
!5564 = !DILexicalBlockFile(scope: !5565, file: !4, discriminator: 17)
!5565 = !DILexicalBlockFile(scope: !5566, file: !4, discriminator: 16)
!5566 = !DILexicalBlockFile(scope: !5545, file: !4, discriminator: 14)
!5567 = !DILocation(line: 1637, column: 2157, scope: !5568)
!5568 = !DILexicalBlockFile(scope: !5569, file: !4, discriminator: 18)
!5569 = !DILexicalBlockFile(scope: !5570, file: !4, discriminator: 12)
!5570 = !DILexicalBlockFile(scope: !5531, file: !4, discriminator: 10)
!5571 = !DILocation(line: 1637, column: 2159, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5573, file: !4, discriminator: 19)
!5573 = !DILexicalBlockFile(scope: !5574, file: !4, discriminator: 8)
!5574 = !DILexicalBlockFile(scope: !883, file: !4, discriminator: 6)
!5575 = !DILocation(line: 1637, column: 1841, scope: !5522)
!5576 = !DILocation(line: 1637, column: 2169, scope: !879)
!5577 = !DILocation(line: 1637, column: 2169, scope: !883)
!5578 = !DILocation(line: 1637, column: 2194, scope: !5579)
!5579 = !DILexicalBlockFile(scope: !5580, file: !4, discriminator: 4)
!5580 = !DILexicalBlockFile(scope: !879, file: !4, discriminator: 2)
!5581 = !DILocation(line: 1637, column: 2176, scope: !879)
!5582 = !DILocation(line: 1637, column: 26, scope: !5583)
!5583 = !DILexicalBlockFile(scope: !5584, file: !4, discriminator: 21)
!5584 = !DILexicalBlockFile(scope: !879, file: !4, discriminator: 20)
!5585 = !DILocation(line: 1637, column: 2217, scope: !880)
!5586 = !DILocation(line: 1637, column: 2217, scope: !879)
!5587 = !DILocation(line: 1637, column: 2220, scope: !880)
!5588 = !DILocation(line: 1637, column: 9, scope: !868)
!5589 = !DILocation(line: 1638, column: 11, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !880, file: !4, line: 1637, column: 2226)
!5591 = !DILocation(line: 1639, column: 20, scope: !5590)
!5592 = !DILocation(line: 1639, column: 18, scope: !5590)
!5593 = !DILocation(line: 1640, column: 5, scope: !5590)
!5594 = !DILocation(line: 1641, column: 31, scope: !886)
!5595 = !DILocation(line: 1641, column: 38, scope: !886)
!5596 = !DILocation(line: 1641, column: 48, scope: !886)
!5597 = !DILocation(line: 1641, column: 1410, scope: !886)
!5598 = !DILocation(line: 1641, column: 1423, scope: !5599)
!5599 = !DILexicalBlockFile(scope: !886, file: !4, discriminator: 1)
!5600 = !DILocation(line: 1641, column: 1443, scope: !886)
!5601 = !DILocation(line: 1641, column: 1452, scope: !886)
!5602 = !DILocation(line: 1641, column: 1297, scope: !886)
!5603 = !DILocation(line: 1641, column: 1631, scope: !5604)
!5604 = !DILexicalBlockFile(scope: !890, file: !4, discriminator: 3)
!5605 = !DILocation(line: 1641, column: 1652, scope: !890)
!5606 = !DILocation(line: 1641, column: 1699, scope: !890)
!5607 = !DILocation(line: 1641, column: 1709, scope: !890)
!5608 = !DILocation(line: 1641, column: 1722, scope: !890)
!5609 = !DILocation(line: 1641, column: 1733, scope: !890)
!5610 = !DILocation(line: 1641, column: 1743, scope: !890)
!5611 = !DILocation(line: 1641, column: 1741, scope: !890)
!5612 = !DILocation(line: 1641, column: 1802, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !890, file: !4, line: 1641, column: 1802)
!5614 = !DILocation(line: 1641, column: 1811, scope: !5613)
!5615 = !DILocation(line: 1641, column: 1815, scope: !5613)
!5616 = !DILocation(line: 1641, column: 1818, scope: !5617)
!5617 = !DILexicalBlockFile(scope: !5613, file: !4, discriminator: 5)
!5618 = !DILocation(line: 1641, column: 1827, scope: !5613)
!5619 = !DILocation(line: 1641, column: 1802, scope: !890)
!5620 = !DILocation(line: 1641, column: 1847, scope: !5621)
!5621 = !DILexicalBlockFile(scope: !5622, file: !4, discriminator: 7)
!5622 = distinct !DILexicalBlock(scope: !5613, file: !4, line: 1641, column: 1833)
!5623 = !DILocation(line: 1641, column: 1857, scope: !5622)
!5624 = !DILocation(line: 1641, column: 1855, scope: !5622)
!5625 = !DILocation(line: 1641, column: 1844, scope: !5622)
!5626 = !DILocation(line: 1641, column: 1917, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5622, file: !4, line: 1641, column: 1917)
!5628 = !DILocation(line: 1641, column: 1926, scope: !5627)
!5629 = !DILocation(line: 1641, column: 1930, scope: !5627)
!5630 = !DILocation(line: 1641, column: 1933, scope: !5631)
!5631 = !DILexicalBlockFile(scope: !5627, file: !4, discriminator: 9)
!5632 = !DILocation(line: 1641, column: 1942, scope: !5627)
!5633 = !DILocation(line: 1641, column: 1917, scope: !5622)
!5634 = !DILocation(line: 1641, column: 1962, scope: !5635)
!5635 = !DILexicalBlockFile(scope: !5636, file: !4, discriminator: 11)
!5636 = distinct !DILexicalBlock(scope: !5627, file: !4, line: 1641, column: 1948)
!5637 = !DILocation(line: 1641, column: 1972, scope: !5636)
!5638 = !DILocation(line: 1641, column: 1970, scope: !5636)
!5639 = !DILocation(line: 1641, column: 1959, scope: !5636)
!5640 = !DILocation(line: 1641, column: 2032, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5636, file: !4, line: 1641, column: 2032)
!5642 = !DILocation(line: 1641, column: 2041, scope: !5641)
!5643 = !DILocation(line: 1641, column: 2045, scope: !5641)
!5644 = !DILocation(line: 1641, column: 2048, scope: !5645)
!5645 = !DILexicalBlockFile(scope: !5641, file: !4, discriminator: 13)
!5646 = !DILocation(line: 1641, column: 2057, scope: !5641)
!5647 = !DILocation(line: 1641, column: 2032, scope: !5636)
!5648 = !DILocation(line: 1641, column: 2075, scope: !5649)
!5649 = !DILexicalBlockFile(scope: !5641, file: !4, discriminator: 15)
!5650 = !DILocation(line: 1641, column: 2085, scope: !5641)
!5651 = !DILocation(line: 1641, column: 2083, scope: !5641)
!5652 = !DILocation(line: 1641, column: 2072, scope: !5641)
!5653 = !DILocation(line: 1641, column: 2063, scope: !5641)
!5654 = !DILocation(line: 1641, column: 2141, scope: !5655)
!5655 = !DILexicalBlockFile(scope: !5656, file: !4, discriminator: 17)
!5656 = !DILexicalBlockFile(scope: !5657, file: !4, discriminator: 16)
!5657 = !DILexicalBlockFile(scope: !5636, file: !4, discriminator: 14)
!5658 = !DILocation(line: 1641, column: 2143, scope: !5659)
!5659 = !DILexicalBlockFile(scope: !5660, file: !4, discriminator: 18)
!5660 = !DILexicalBlockFile(scope: !5661, file: !4, discriminator: 12)
!5661 = !DILexicalBlockFile(scope: !5622, file: !4, discriminator: 10)
!5662 = !DILocation(line: 1641, column: 2145, scope: !5663)
!5663 = !DILexicalBlockFile(scope: !5664, file: !4, discriminator: 19)
!5664 = !DILexicalBlockFile(scope: !5665, file: !4, discriminator: 8)
!5665 = !DILexicalBlockFile(scope: !890, file: !4, discriminator: 6)
!5666 = !DILocation(line: 1641, column: 1830, scope: !5613)
!5667 = !DILocation(line: 1641, column: 2155, scope: !886)
!5668 = !DILocation(line: 1641, column: 2155, scope: !890)
!5669 = !DILocation(line: 1641, column: 2180, scope: !5670)
!5670 = !DILexicalBlockFile(scope: !5671, file: !4, discriminator: 4)
!5671 = !DILexicalBlockFile(scope: !886, file: !4, discriminator: 2)
!5672 = !DILocation(line: 1641, column: 2162, scope: !886)
!5673 = !DILocation(line: 1641, column: 31, scope: !5674)
!5674 = !DILexicalBlockFile(scope: !5675, file: !4, discriminator: 21)
!5675 = !DILexicalBlockFile(scope: !886, file: !4, discriminator: 20)
!5676 = !DILocation(line: 1641, column: 2202, scope: !887)
!5677 = !DILocation(line: 1641, column: 2202, scope: !886)
!5678 = !DILocation(line: 1641, column: 2205, scope: !887)
!5679 = !DILocation(line: 1641, column: 14, scope: !880)
!5680 = !DILocation(line: 1642, column: 11, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !887, file: !4, line: 1641, column: 2211)
!5682 = !DILocation(line: 1643, column: 20, scope: !5681)
!5683 = !DILocation(line: 1643, column: 18, scope: !5681)
!5684 = !DILocation(line: 1644, column: 5, scope: !5681)
!5685 = !DILocation(line: 1646, column: 25, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !887, file: !4, line: 1645, column: 10)
!5687 = !DILocation(line: 1646, column: 9, scope: !5686)
!5688 = !DILocation(line: 1649, column: 9, scope: !5686)
!5689 = !DILocation(line: 1652, column: 26, scope: !893)
!5690 = !DILocation(line: 1652, column: 33, scope: !893)
!5691 = !DILocation(line: 1652, column: 43, scope: !893)
!5692 = !DILocation(line: 1652, column: 1417, scope: !893)
!5693 = !DILocation(line: 1652, column: 1430, scope: !5694)
!5694 = !DILexicalBlockFile(scope: !893, file: !4, discriminator: 1)
!5695 = !DILocation(line: 1652, column: 1452, scope: !893)
!5696 = !DILocation(line: 1652, column: 1461, scope: !893)
!5697 = !DILocation(line: 1652, column: 1298, scope: !893)
!5698 = !DILocation(line: 1652, column: 1638, scope: !5699)
!5699 = !DILexicalBlockFile(scope: !897, file: !4, discriminator: 3)
!5700 = !DILocation(line: 1652, column: 1659, scope: !897)
!5701 = !DILocation(line: 1652, column: 1706, scope: !897)
!5702 = !DILocation(line: 1652, column: 1715, scope: !897)
!5703 = !DILocation(line: 1652, column: 1728, scope: !897)
!5704 = !DILocation(line: 1652, column: 1739, scope: !897)
!5705 = !DILocation(line: 1652, column: 1749, scope: !897)
!5706 = !DILocation(line: 1652, column: 1747, scope: !897)
!5707 = !DILocation(line: 1652, column: 1810, scope: !5708)
!5708 = distinct !DILexicalBlock(scope: !897, file: !4, line: 1652, column: 1810)
!5709 = !DILocation(line: 1652, column: 1819, scope: !5708)
!5710 = !DILocation(line: 1652, column: 1823, scope: !5708)
!5711 = !DILocation(line: 1652, column: 1826, scope: !5712)
!5712 = !DILexicalBlockFile(scope: !5708, file: !4, discriminator: 5)
!5713 = !DILocation(line: 1652, column: 1835, scope: !5708)
!5714 = !DILocation(line: 1652, column: 1810, scope: !897)
!5715 = !DILocation(line: 1652, column: 1855, scope: !5716)
!5716 = !DILexicalBlockFile(scope: !5717, file: !4, discriminator: 7)
!5717 = distinct !DILexicalBlock(scope: !5708, file: !4, line: 1652, column: 1841)
!5718 = !DILocation(line: 1652, column: 1865, scope: !5717)
!5719 = !DILocation(line: 1652, column: 1863, scope: !5717)
!5720 = !DILocation(line: 1652, column: 1852, scope: !5717)
!5721 = !DILocation(line: 1652, column: 1927, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5717, file: !4, line: 1652, column: 1927)
!5723 = !DILocation(line: 1652, column: 1936, scope: !5722)
!5724 = !DILocation(line: 1652, column: 1940, scope: !5722)
!5725 = !DILocation(line: 1652, column: 1943, scope: !5726)
!5726 = !DILexicalBlockFile(scope: !5722, file: !4, discriminator: 9)
!5727 = !DILocation(line: 1652, column: 1952, scope: !5722)
!5728 = !DILocation(line: 1652, column: 1927, scope: !5717)
!5729 = !DILocation(line: 1652, column: 1972, scope: !5730)
!5730 = !DILexicalBlockFile(scope: !5731, file: !4, discriminator: 11)
!5731 = distinct !DILexicalBlock(scope: !5722, file: !4, line: 1652, column: 1958)
!5732 = !DILocation(line: 1652, column: 1982, scope: !5731)
!5733 = !DILocation(line: 1652, column: 1980, scope: !5731)
!5734 = !DILocation(line: 1652, column: 1969, scope: !5731)
!5735 = !DILocation(line: 1652, column: 2044, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5731, file: !4, line: 1652, column: 2044)
!5737 = !DILocation(line: 1652, column: 2053, scope: !5736)
!5738 = !DILocation(line: 1652, column: 2057, scope: !5736)
!5739 = !DILocation(line: 1652, column: 2060, scope: !5740)
!5740 = !DILexicalBlockFile(scope: !5736, file: !4, discriminator: 13)
!5741 = !DILocation(line: 1652, column: 2069, scope: !5736)
!5742 = !DILocation(line: 1652, column: 2044, scope: !5731)
!5743 = !DILocation(line: 1652, column: 2087, scope: !5744)
!5744 = !DILexicalBlockFile(scope: !5736, file: !4, discriminator: 15)
!5745 = !DILocation(line: 1652, column: 2097, scope: !5736)
!5746 = !DILocation(line: 1652, column: 2095, scope: !5736)
!5747 = !DILocation(line: 1652, column: 2084, scope: !5736)
!5748 = !DILocation(line: 1652, column: 2075, scope: !5736)
!5749 = !DILocation(line: 1652, column: 2155, scope: !5750)
!5750 = !DILexicalBlockFile(scope: !5751, file: !4, discriminator: 17)
!5751 = !DILexicalBlockFile(scope: !5752, file: !4, discriminator: 16)
!5752 = !DILexicalBlockFile(scope: !5731, file: !4, discriminator: 14)
!5753 = !DILocation(line: 1652, column: 2157, scope: !5754)
!5754 = !DILexicalBlockFile(scope: !5755, file: !4, discriminator: 18)
!5755 = !DILexicalBlockFile(scope: !5756, file: !4, discriminator: 12)
!5756 = !DILexicalBlockFile(scope: !5717, file: !4, discriminator: 10)
!5757 = !DILocation(line: 1652, column: 2159, scope: !5758)
!5758 = !DILexicalBlockFile(scope: !5759, file: !4, discriminator: 19)
!5759 = !DILexicalBlockFile(scope: !5760, file: !4, discriminator: 8)
!5760 = !DILexicalBlockFile(scope: !897, file: !4, discriminator: 6)
!5761 = !DILocation(line: 1652, column: 1838, scope: !5708)
!5762 = !DILocation(line: 1652, column: 2169, scope: !893)
!5763 = !DILocation(line: 1652, column: 2169, scope: !897)
!5764 = !DILocation(line: 1652, column: 2194, scope: !5765)
!5765 = !DILexicalBlockFile(scope: !5766, file: !4, discriminator: 4)
!5766 = !DILexicalBlockFile(scope: !893, file: !4, discriminator: 2)
!5767 = !DILocation(line: 1652, column: 2176, scope: !893)
!5768 = !DILocation(line: 1652, column: 26, scope: !5769)
!5769 = !DILexicalBlockFile(scope: !5770, file: !4, discriminator: 21)
!5770 = !DILexicalBlockFile(scope: !893, file: !4, discriminator: 20)
!5771 = !DILocation(line: 1652, column: 2217, scope: !894)
!5772 = !DILocation(line: 1652, column: 2217, scope: !893)
!5773 = !DILocation(line: 1652, column: 2220, scope: !894)
!5774 = !DILocation(line: 1652, column: 9, scope: !868)
!5775 = !DILocation(line: 1653, column: 11, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !894, file: !4, line: 1652, column: 2226)
!5777 = !DILocation(line: 1654, column: 5, scope: !5776)
!5778 = !DILocation(line: 1655, column: 31, scope: !900)
!5779 = !DILocation(line: 1655, column: 38, scope: !900)
!5780 = !DILocation(line: 1655, column: 48, scope: !900)
!5781 = !DILocation(line: 1655, column: 1578, scope: !900)
!5782 = !DILocation(line: 1655, column: 1591, scope: !5783)
!5783 = !DILexicalBlockFile(scope: !900, file: !4, discriminator: 1)
!5784 = !DILocation(line: 1655, column: 1625, scope: !900)
!5785 = !DILocation(line: 1655, column: 1634, scope: !900)
!5786 = !DILocation(line: 1655, column: 1423, scope: !900)
!5787 = !DILocation(line: 1655, column: 1823, scope: !5788)
!5788 = !DILexicalBlockFile(scope: !904, file: !4, discriminator: 3)
!5789 = !DILocation(line: 1655, column: 1844, scope: !904)
!5790 = !DILocation(line: 1655, column: 1891, scope: !904)
!5791 = !DILocation(line: 1655, column: 1900, scope: !904)
!5792 = !DILocation(line: 1655, column: 1913, scope: !904)
!5793 = !DILocation(line: 1655, column: 1924, scope: !904)
!5794 = !DILocation(line: 1655, column: 1934, scope: !904)
!5795 = !DILocation(line: 1655, column: 1932, scope: !904)
!5796 = !DILocation(line: 1655, column: 2007, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !904, file: !4, line: 1655, column: 2007)
!5798 = !DILocation(line: 1655, column: 2016, scope: !5797)
!5799 = !DILocation(line: 1655, column: 2020, scope: !5797)
!5800 = !DILocation(line: 1655, column: 2023, scope: !5801)
!5801 = !DILexicalBlockFile(scope: !5797, file: !4, discriminator: 5)
!5802 = !DILocation(line: 1655, column: 2032, scope: !5797)
!5803 = !DILocation(line: 1655, column: 2007, scope: !904)
!5804 = !DILocation(line: 1655, column: 2052, scope: !5805)
!5805 = !DILexicalBlockFile(scope: !5806, file: !4, discriminator: 7)
!5806 = distinct !DILexicalBlock(scope: !5797, file: !4, line: 1655, column: 2038)
!5807 = !DILocation(line: 1655, column: 2062, scope: !5806)
!5808 = !DILocation(line: 1655, column: 2060, scope: !5806)
!5809 = !DILocation(line: 1655, column: 2049, scope: !5806)
!5810 = !DILocation(line: 1655, column: 2136, scope: !5811)
!5811 = distinct !DILexicalBlock(scope: !5806, file: !4, line: 1655, column: 2136)
!5812 = !DILocation(line: 1655, column: 2145, scope: !5811)
!5813 = !DILocation(line: 1655, column: 2149, scope: !5811)
!5814 = !DILocation(line: 1655, column: 2152, scope: !5815)
!5815 = !DILexicalBlockFile(scope: !5811, file: !4, discriminator: 9)
!5816 = !DILocation(line: 1655, column: 2161, scope: !5811)
!5817 = !DILocation(line: 1655, column: 2136, scope: !5806)
!5818 = !DILocation(line: 1655, column: 2181, scope: !5819)
!5819 = !DILexicalBlockFile(scope: !5820, file: !4, discriminator: 11)
!5820 = distinct !DILexicalBlock(scope: !5811, file: !4, line: 1655, column: 2167)
!5821 = !DILocation(line: 1655, column: 2191, scope: !5820)
!5822 = !DILocation(line: 1655, column: 2189, scope: !5820)
!5823 = !DILocation(line: 1655, column: 2178, scope: !5820)
!5824 = !DILocation(line: 1655, column: 2265, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5820, file: !4, line: 1655, column: 2265)
!5826 = !DILocation(line: 1655, column: 2274, scope: !5825)
!5827 = !DILocation(line: 1655, column: 2278, scope: !5825)
!5828 = !DILocation(line: 1655, column: 2281, scope: !5829)
!5829 = !DILexicalBlockFile(scope: !5825, file: !4, discriminator: 13)
!5830 = !DILocation(line: 1655, column: 2290, scope: !5825)
!5831 = !DILocation(line: 1655, column: 2265, scope: !5820)
!5832 = !DILocation(line: 1655, column: 2308, scope: !5833)
!5833 = !DILexicalBlockFile(scope: !5825, file: !4, discriminator: 15)
!5834 = !DILocation(line: 1655, column: 2318, scope: !5825)
!5835 = !DILocation(line: 1655, column: 2316, scope: !5825)
!5836 = !DILocation(line: 1655, column: 2305, scope: !5825)
!5837 = !DILocation(line: 1655, column: 2296, scope: !5825)
!5838 = !DILocation(line: 1655, column: 2388, scope: !5839)
!5839 = !DILexicalBlockFile(scope: !5840, file: !4, discriminator: 17)
!5840 = !DILexicalBlockFile(scope: !5841, file: !4, discriminator: 16)
!5841 = !DILexicalBlockFile(scope: !5820, file: !4, discriminator: 14)
!5842 = !DILocation(line: 1655, column: 2390, scope: !5843)
!5843 = !DILexicalBlockFile(scope: !5844, file: !4, discriminator: 18)
!5844 = !DILexicalBlockFile(scope: !5845, file: !4, discriminator: 12)
!5845 = !DILexicalBlockFile(scope: !5806, file: !4, discriminator: 10)
!5846 = !DILocation(line: 1655, column: 2392, scope: !5847)
!5847 = !DILexicalBlockFile(scope: !5848, file: !4, discriminator: 19)
!5848 = !DILexicalBlockFile(scope: !5849, file: !4, discriminator: 8)
!5849 = !DILexicalBlockFile(scope: !904, file: !4, discriminator: 6)
!5850 = !DILocation(line: 1655, column: 2035, scope: !5797)
!5851 = !DILocation(line: 1655, column: 2402, scope: !900)
!5852 = !DILocation(line: 1655, column: 2402, scope: !904)
!5853 = !DILocation(line: 1655, column: 2427, scope: !5854)
!5854 = !DILexicalBlockFile(scope: !5855, file: !4, discriminator: 4)
!5855 = !DILexicalBlockFile(scope: !900, file: !4, discriminator: 2)
!5856 = !DILocation(line: 1655, column: 2409, scope: !900)
!5857 = !DILocation(line: 1655, column: 31, scope: !5858)
!5858 = !DILexicalBlockFile(scope: !5859, file: !4, discriminator: 21)
!5859 = !DILexicalBlockFile(scope: !900, file: !4, discriminator: 20)
!5860 = !DILocation(line: 1655, column: 2462, scope: !901)
!5861 = !DILocation(line: 1655, column: 2462, scope: !900)
!5862 = !DILocation(line: 1655, column: 2465, scope: !901)
!5863 = !DILocation(line: 1655, column: 14, scope: !894)
!5864 = !DILocation(line: 1656, column: 11, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !901, file: !4, line: 1655, column: 2471)
!5866 = !DILocation(line: 1657, column: 5, scope: !5865)
!5867 = !DILocation(line: 1658, column: 31, scope: !907)
!5868 = !DILocation(line: 1658, column: 38, scope: !907)
!5869 = !DILocation(line: 1658, column: 48, scope: !907)
!5870 = !DILocation(line: 1658, column: 1539, scope: !907)
!5871 = !DILocation(line: 1658, column: 1552, scope: !5872)
!5872 = !DILexicalBlockFile(scope: !907, file: !4, discriminator: 1)
!5873 = !DILocation(line: 1658, column: 1583, scope: !907)
!5874 = !DILocation(line: 1658, column: 1592, scope: !907)
!5875 = !DILocation(line: 1658, column: 1393, scope: !907)
!5876 = !DILocation(line: 1658, column: 1778, scope: !5877)
!5877 = !DILexicalBlockFile(scope: !911, file: !4, discriminator: 3)
!5878 = !DILocation(line: 1658, column: 1799, scope: !911)
!5879 = !DILocation(line: 1658, column: 1846, scope: !911)
!5880 = !DILocation(line: 1658, column: 1855, scope: !911)
!5881 = !DILocation(line: 1658, column: 1868, scope: !911)
!5882 = !DILocation(line: 1658, column: 1879, scope: !911)
!5883 = !DILocation(line: 1658, column: 1889, scope: !911)
!5884 = !DILocation(line: 1658, column: 1887, scope: !911)
!5885 = !DILocation(line: 1658, column: 1959, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !911, file: !4, line: 1658, column: 1959)
!5887 = !DILocation(line: 1658, column: 1968, scope: !5886)
!5888 = !DILocation(line: 1658, column: 1972, scope: !5886)
!5889 = !DILocation(line: 1658, column: 1975, scope: !5890)
!5890 = !DILexicalBlockFile(scope: !5886, file: !4, discriminator: 5)
!5891 = !DILocation(line: 1658, column: 1984, scope: !5886)
!5892 = !DILocation(line: 1658, column: 1959, scope: !911)
!5893 = !DILocation(line: 1658, column: 2004, scope: !5894)
!5894 = !DILexicalBlockFile(scope: !5895, file: !4, discriminator: 7)
!5895 = distinct !DILexicalBlock(scope: !5886, file: !4, line: 1658, column: 1990)
!5896 = !DILocation(line: 1658, column: 2014, scope: !5895)
!5897 = !DILocation(line: 1658, column: 2012, scope: !5895)
!5898 = !DILocation(line: 1658, column: 2001, scope: !5895)
!5899 = !DILocation(line: 1658, column: 2085, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5895, file: !4, line: 1658, column: 2085)
!5901 = !DILocation(line: 1658, column: 2094, scope: !5900)
!5902 = !DILocation(line: 1658, column: 2098, scope: !5900)
!5903 = !DILocation(line: 1658, column: 2101, scope: !5904)
!5904 = !DILexicalBlockFile(scope: !5900, file: !4, discriminator: 9)
!5905 = !DILocation(line: 1658, column: 2110, scope: !5900)
!5906 = !DILocation(line: 1658, column: 2085, scope: !5895)
!5907 = !DILocation(line: 1658, column: 2130, scope: !5908)
!5908 = !DILexicalBlockFile(scope: !5909, file: !4, discriminator: 11)
!5909 = distinct !DILexicalBlock(scope: !5900, file: !4, line: 1658, column: 2116)
!5910 = !DILocation(line: 1658, column: 2140, scope: !5909)
!5911 = !DILocation(line: 1658, column: 2138, scope: !5909)
!5912 = !DILocation(line: 1658, column: 2127, scope: !5909)
!5913 = !DILocation(line: 1658, column: 2211, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5909, file: !4, line: 1658, column: 2211)
!5915 = !DILocation(line: 1658, column: 2220, scope: !5914)
!5916 = !DILocation(line: 1658, column: 2224, scope: !5914)
!5917 = !DILocation(line: 1658, column: 2227, scope: !5918)
!5918 = !DILexicalBlockFile(scope: !5914, file: !4, discriminator: 13)
!5919 = !DILocation(line: 1658, column: 2236, scope: !5914)
!5920 = !DILocation(line: 1658, column: 2211, scope: !5909)
!5921 = !DILocation(line: 1658, column: 2254, scope: !5922)
!5922 = !DILexicalBlockFile(scope: !5914, file: !4, discriminator: 15)
!5923 = !DILocation(line: 1658, column: 2264, scope: !5914)
!5924 = !DILocation(line: 1658, column: 2262, scope: !5914)
!5925 = !DILocation(line: 1658, column: 2251, scope: !5914)
!5926 = !DILocation(line: 1658, column: 2242, scope: !5914)
!5927 = !DILocation(line: 1658, column: 2331, scope: !5928)
!5928 = !DILexicalBlockFile(scope: !5929, file: !4, discriminator: 17)
!5929 = !DILexicalBlockFile(scope: !5930, file: !4, discriminator: 16)
!5930 = !DILexicalBlockFile(scope: !5909, file: !4, discriminator: 14)
!5931 = !DILocation(line: 1658, column: 2333, scope: !5932)
!5932 = !DILexicalBlockFile(scope: !5933, file: !4, discriminator: 18)
!5933 = !DILexicalBlockFile(scope: !5934, file: !4, discriminator: 12)
!5934 = !DILexicalBlockFile(scope: !5895, file: !4, discriminator: 10)
!5935 = !DILocation(line: 1658, column: 2335, scope: !5936)
!5936 = !DILexicalBlockFile(scope: !5937, file: !4, discriminator: 19)
!5937 = !DILexicalBlockFile(scope: !5938, file: !4, discriminator: 8)
!5938 = !DILexicalBlockFile(scope: !911, file: !4, discriminator: 6)
!5939 = !DILocation(line: 1658, column: 1987, scope: !5886)
!5940 = !DILocation(line: 1658, column: 2345, scope: !907)
!5941 = !DILocation(line: 1658, column: 2345, scope: !911)
!5942 = !DILocation(line: 1658, column: 2370, scope: !5943)
!5943 = !DILexicalBlockFile(scope: !5944, file: !4, discriminator: 4)
!5944 = !DILexicalBlockFile(scope: !907, file: !4, discriminator: 2)
!5945 = !DILocation(line: 1658, column: 2352, scope: !907)
!5946 = !DILocation(line: 1658, column: 31, scope: !5947)
!5947 = !DILexicalBlockFile(scope: !5948, file: !4, discriminator: 21)
!5948 = !DILexicalBlockFile(scope: !907, file: !4, discriminator: 20)
!5949 = !DILocation(line: 1658, column: 2402, scope: !908)
!5950 = !DILocation(line: 1658, column: 2402, scope: !907)
!5951 = !DILocation(line: 1658, column: 2405, scope: !908)
!5952 = !DILocation(line: 1658, column: 14, scope: !901)
!5953 = !DILocation(line: 1659, column: 11, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1658, column: 2411)
!5955 = !DILocation(line: 1660, column: 5, scope: !5954)
!5956 = !DILocation(line: 1662, column: 25, scope: !5957)
!5957 = distinct !DILexicalBlock(scope: !908, file: !4, line: 1661, column: 10)
!5958 = !DILocation(line: 1662, column: 9, scope: !5957)
!5959 = !DILocation(line: 1666, column: 9, scope: !5957)
!5960 = !DILocation(line: 1670, column: 9, scope: !5961)
!5961 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1670, column: 9)
!5962 = !DILocation(line: 1670, column: 11, scope: !5961)
!5963 = !DILocation(line: 1670, column: 29, scope: !5961)
!5964 = !DILocation(line: 1670, column: 32, scope: !5965)
!5965 = !DILexicalBlockFile(scope: !5961, file: !4, discriminator: 1)
!5966 = !DILocation(line: 1670, column: 37, scope: !5961)
!5967 = !DILocation(line: 1670, column: 34, scope: !5961)
!5968 = !DILocation(line: 1670, column: 9, scope: !868)
!5969 = !DILocation(line: 1671, column: 22, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5961, file: !4, line: 1670, column: 47)
!5971 = !DILocation(line: 1673, column: 49, scope: !5970)
!5972 = !DILocation(line: 1671, column: 9, scope: !5970)
!5973 = !DILocation(line: 1674, column: 9, scope: !5970)
!5974 = !DILocation(line: 1677, column: 10, scope: !868)
!5975 = !DILocation(line: 1677, column: 6, scope: !868)
!5976 = !DILocation(line: 1677, column: 8, scope: !868)
!5977 = !DILocation(line: 1678, column: 58, scope: !868)
!5978 = !DILocation(line: 1678, column: 5, scope: !868)
!5979 = !DILocation(line: 1679, column: 1, scope: !868)
!5980 = !DILocation(line: 1701, column: 27, scope: !913)
!5981 = !DILocation(line: 1701, column: 43, scope: !913)
!5982 = !DILocation(line: 1703, column: 5, scope: !913)
!5983 = !DILocation(line: 1703, column: 15, scope: !913)
!5984 = !DILocation(line: 1704, column: 5, scope: !913)
!5985 = !DILocation(line: 1704, column: 22, scope: !913)
!5986 = !DILocation(line: 1705, column: 5, scope: !913)
!5987 = !DILocation(line: 1705, column: 9, scope: !913)
!5988 = !DILocation(line: 1707, column: 27, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !913, file: !4, line: 1707, column: 9)
!5990 = !DILocation(line: 1707, column: 10, scope: !5989)
!5991 = !DILocation(line: 1707, column: 9, scope: !913)
!5992 = !DILocation(line: 1708, column: 9, scope: !5989)
!5993 = !DILocation(line: 1710, column: 5, scope: !913)
!5994 = !DILocation(line: 1713, column: 9, scope: !913)
!5995 = !DILocation(line: 1714, column: 9, scope: !913)
!5996 = !DILocation(line: 1714, column: 73, scope: !913)
!5997 = !DILocation(line: 1714, column: 55, scope: !913)
!5998 = !DILocation(line: 1714, column: 88, scope: !913)
!5999 = !{!6000, !1158, i64 16}
!6000 = !{!"", !1157, i64 0, !1158, i64 16, !1158, i64 24, !6001, i64 32, !1049, i64 40}
!6001 = !{!"", !1043, i64 0, !1043, i64 0, !1043, i64 0, !1043, i64 0, !1043, i64 0, !1043, i64 1}
!6002 = !DILocation(line: 1711, column: 11, scope: !913)
!6003 = !DILocation(line: 1711, column: 9, scope: !913)
!6004 = !DILocation(line: 1715, column: 9, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !913, file: !4, line: 1715, column: 9)
!6006 = !DILocation(line: 1715, column: 13, scope: !6005)
!6007 = !DILocation(line: 1715, column: 9, scope: !913)
!6008 = !DILocation(line: 1716, column: 9, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6005, file: !4, line: 1715, column: 20)
!6010 = !DILocation(line: 1717, column: 9, scope: !6009)
!6011 = !DILocation(line: 1719, column: 12, scope: !913)
!6012 = !DILocation(line: 1719, column: 5, scope: !913)
!6013 = !DILocation(line: 1720, column: 1, scope: !913)
!6014 = !DILocation(line: 866, column: 21, scope: !724)
!6015 = !DILocation(line: 866, column: 28, scope: !724)
!6016 = !DILocation(line: 868, column: 5, scope: !724)
!6017 = !DILocation(line: 868, column: 12, scope: !724)
!6018 = !DILocation(line: 869, column: 5, scope: !724)
!6019 = !DILocation(line: 869, column: 16, scope: !724)
!6020 = !DILocation(line: 869, column: 24, scope: !724)
!6021 = !DILocation(line: 870, column: 5, scope: !724)
!6022 = !DILocation(line: 870, column: 11, scope: !724)
!6023 = !DILocation(line: 870, column: 17, scope: !724)
!6024 = !DILocation(line: 870, column: 26, scope: !724)
!6025 = !DILocation(line: 870, column: 42, scope: !724)
!6026 = !DILocation(line: 870, column: 48, scope: !724)
!6027 = !DILocation(line: 871, column: 5, scope: !724)
!6028 = !DILocation(line: 871, column: 9, scope: !724)
!6029 = !DILocation(line: 871, column: 16, scope: !724)
!6030 = !DILocation(line: 872, column: 5, scope: !724)
!6031 = !DILocation(line: 872, column: 15, scope: !724)
!6032 = !DILocation(line: 873, column: 5, scope: !724)
!6033 = !DILocation(line: 873, column: 20, scope: !724)
!6034 = !DILocation(line: 873, column: 40, scope: !724)
!6035 = !DILocation(line: 876, column: 5, scope: !724)
!6036 = !DILocation(line: 876, column: 31, scope: !6037)
!6037 = !DILexicalBlockFile(scope: !6038, file: !4, discriminator: 1)
!6038 = distinct !DILexicalBlock(scope: !724, file: !4, line: 876, column: 8)
!6039 = !DILocation(line: 876, column: 29, scope: !6038)
!6040 = !{!6041, !6041, i64 0}
!6041 = !{!"short", !1044, i64 0}
!6042 = !DILocation(line: 876, column: 79, scope: !6038)
!6043 = !DILocation(line: 876, column: 98, scope: !6038)
!6044 = !DILocation(line: 876, column: 109, scope: !6038)
!6045 = !DILocation(line: 876, column: 78, scope: !6038)
!6046 = !DILocation(line: 876, column: 76, scope: !6038)
!6047 = !DILocation(line: 876, column: 123, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6038, file: !4, line: 876, column: 123)
!6049 = !DILocation(line: 876, column: 145, scope: !6048)
!6050 = !DILocation(line: 876, column: 142, scope: !6048)
!6051 = !DILocation(line: 876, column: 123, scope: !6038)
!6052 = !DILocation(line: 876, column: 188, scope: !6053)
!6053 = !DILexicalBlockFile(scope: !6048, file: !4, discriminator: 2)
!6054 = !DILocation(line: 876, column: 165, scope: !6048)
!6055 = !DILocation(line: 876, column: 209, scope: !6056)
!6056 = !DILexicalBlockFile(scope: !6057, file: !4, discriminator: 4)
!6057 = !DILexicalBlockFile(scope: !6038, file: !4, discriminator: 3)
!6058 = !DILocation(line: 876, column: 209, scope: !6059)
!6059 = !DILexicalBlockFile(scope: !6038, file: !4, discriminator: 5)
!6060 = !DILocation(line: 877, column: 23, scope: !724)
!6061 = !DILocation(line: 877, column: 29, scope: !724)
!6062 = !DILocation(line: 877, column: 11, scope: !724)
!6063 = !DILocation(line: 877, column: 9, scope: !724)
!6064 = !DILocation(line: 878, column: 9, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !724, file: !4, line: 878, column: 9)
!6066 = !DILocation(line: 878, column: 31, scope: !6065)
!6067 = !DILocation(line: 878, column: 28, scope: !6065)
!6068 = !DILocation(line: 878, column: 9, scope: !724)
!6069 = !DILocation(line: 878, column: 74, scope: !6070)
!6070 = !DILexicalBlockFile(scope: !6065, file: !4, discriminator: 1)
!6071 = !DILocation(line: 878, column: 51, scope: !6065)
!6072 = !DILocation(line: 879, column: 9, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !724, file: !4, line: 879, column: 9)
!6074 = !DILocation(line: 879, column: 13, scope: !6073)
!6075 = !DILocation(line: 879, column: 9, scope: !724)
!6076 = !DILocation(line: 880, column: 9, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6073, file: !4, line: 879, column: 28)
!6078 = !DILocation(line: 881, column: 9, scope: !6077)
!6079 = !DILocation(line: 886, column: 14, scope: !724)
!6080 = !DILocation(line: 886, column: 24, scope: !724)
!6081 = !DILocation(line: 886, column: 22, scope: !724)
!6082 = !DILocation(line: 886, column: 12, scope: !724)
!6083 = !DILocation(line: 887, column: 9, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !724, file: !4, line: 887, column: 9)
!6085 = !DILocation(line: 887, column: 16, scope: !6084)
!6086 = !DILocation(line: 887, column: 22, scope: !6084)
!6087 = !DILocation(line: 887, column: 20, scope: !6084)
!6088 = !DILocation(line: 887, column: 9, scope: !724)
!6089 = !DILocation(line: 888, column: 20, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6084, file: !4, line: 887, column: 32)
!6091 = !DILocation(line: 888, column: 26, scope: !6090)
!6092 = !DILocation(line: 888, column: 18, scope: !6090)
!6093 = !DILocation(line: 889, column: 38, scope: !6090)
!6094 = !DILocation(line: 889, column: 25, scope: !6090)
!6095 = !DILocation(line: 889, column: 15, scope: !6090)
!6096 = !DILocation(line: 890, column: 13, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6090, file: !4, line: 890, column: 13)
!6098 = !DILocation(line: 890, column: 19, scope: !6097)
!6099 = !DILocation(line: 890, column: 13, scope: !6090)
!6100 = !DILocation(line: 891, column: 13, scope: !6101)
!6101 = distinct !DILexicalBlock(scope: !6097, file: !4, line: 890, column: 34)
!6102 = !DILocation(line: 892, column: 13, scope: !6101)
!6103 = !DILocation(line: 894, column: 5, scope: !6090)
!6104 = !DILocation(line: 896, column: 19, scope: !724)
!6105 = !DILocation(line: 896, column: 26, scope: !724)
!6106 = !DILocation(line: 896, column: 49, scope: !724)
!6107 = !DILocation(line: 897, column: 19, scope: !724)
!6108 = !DILocation(line: 897, column: 24, scope: !724)
!6109 = !DILocation(line: 897, column: 37, scope: !724)
!6110 = !DILocation(line: 897, column: 32, scope: !724)
!6111 = !DILocation(line: 897, column: 30, scope: !724)
!6112 = !DILocation(line: 896, column: 5, scope: !724)
!6113 = !DILocation(line: 900, column: 7, scope: !724)
!6114 = !DILocation(line: 900, column: 28, scope: !724)
!6115 = !DILocation(line: 901, column: 5, scope: !724)
!6116 = !DILocation(line: 901, column: 31, scope: !6117)
!6117 = !DILexicalBlockFile(scope: !6118, file: !4, discriminator: 1)
!6118 = distinct !DILexicalBlock(scope: !724, file: !4, line: 901, column: 8)
!6119 = !DILocation(line: 901, column: 29, scope: !6118)
!6120 = !DILocation(line: 901, column: 79, scope: !6118)
!6121 = !DILocation(line: 901, column: 98, scope: !6118)
!6122 = !DILocation(line: 901, column: 109, scope: !6118)
!6123 = !DILocation(line: 901, column: 78, scope: !6118)
!6124 = !DILocation(line: 901, column: 76, scope: !6118)
!6125 = !DILocation(line: 901, column: 123, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6118, file: !4, line: 901, column: 123)
!6127 = !DILocation(line: 901, column: 145, scope: !6126)
!6128 = !DILocation(line: 901, column: 142, scope: !6126)
!6129 = !DILocation(line: 901, column: 123, scope: !6118)
!6130 = !DILocation(line: 901, column: 188, scope: !6131)
!6131 = !DILexicalBlockFile(scope: !6126, file: !4, discriminator: 2)
!6132 = !DILocation(line: 901, column: 165, scope: !6126)
!6133 = !DILocation(line: 901, column: 209, scope: !6134)
!6134 = !DILexicalBlockFile(scope: !6135, file: !4, discriminator: 4)
!6135 = !DILexicalBlockFile(scope: !6118, file: !4, discriminator: 3)
!6136 = !DILocation(line: 901, column: 209, scope: !6137)
!6137 = !DILexicalBlockFile(scope: !6118, file: !4, discriminator: 5)
!6138 = !DILocation(line: 902, column: 29, scope: !724)
!6139 = !DILocation(line: 902, column: 15, scope: !724)
!6140 = !DILocation(line: 902, column: 13, scope: !724)
!6141 = !DILocation(line: 903, column: 9, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !724, file: !4, line: 903, column: 9)
!6143 = !DILocation(line: 903, column: 31, scope: !6142)
!6144 = !DILocation(line: 903, column: 28, scope: !6142)
!6145 = !DILocation(line: 903, column: 9, scope: !724)
!6146 = !DILocation(line: 903, column: 74, scope: !6147)
!6147 = !DILexicalBlockFile(scope: !6142, file: !4, discriminator: 1)
!6148 = !DILocation(line: 903, column: 51, scope: !6142)
!6149 = !DILocation(line: 904, column: 11, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !724, file: !4, line: 904, column: 9)
!6151 = !DILocation(line: 904, column: 10, scope: !6150)
!6152 = !DILocation(line: 904, column: 32, scope: !6150)
!6153 = !DILocation(line: 904, column: 38, scope: !6150)
!6154 = !DILocation(line: 904, column: 46, scope: !6155)
!6155 = !DILexicalBlockFile(scope: !6150, file: !4, discriminator: 1)
!6156 = !DILocation(line: 904, column: 41, scope: !6150)
!6157 = !DILocation(line: 904, column: 55, scope: !6150)
!6158 = !DILocation(line: 904, column: 9, scope: !724)
!6159 = !DILocation(line: 905, column: 25, scope: !6150)
!6160 = !DILocation(line: 905, column: 9, scope: !6150)
!6161 = !DILocation(line: 908, column: 37, scope: !6150)
!6162 = !DILocation(line: 908, column: 18, scope: !6150)
!6163 = !DILocation(line: 908, column: 16, scope: !6150)
!6164 = !DILocation(line: 911, column: 9, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !724, file: !4, line: 911, column: 9)
!6166 = !DILocation(line: 911, column: 18, scope: !6165)
!6167 = !DILocation(line: 911, column: 15, scope: !6165)
!6168 = !DILocation(line: 911, column: 9, scope: !724)
!6169 = !DILocation(line: 912, column: 20, scope: !6165)
!6170 = !DILocation(line: 912, column: 9, scope: !6165)
!6171 = !DILocation(line: 911, column: 18, scope: !6172)
!6172 = !DILexicalBlockFile(scope: !6165, file: !4, discriminator: 1)
!6173 = !DILocation(line: 914, column: 21, scope: !724)
!6174 = !DILocation(line: 914, column: 5, scope: !724)
!6175 = !DILocation(line: 915, column: 12, scope: !724)
!6176 = !DILocation(line: 915, column: 5, scope: !724)
!6177 = !DILocation(line: 916, column: 1, scope: !724)
!6178 = !DILocation(line: 1038, column: 20, scope: !810)
!6179 = !DILocation(line: 1039, column: 5, scope: !810)
!6180 = !DILocation(line: 1039, column: 9, scope: !810)
!6181 = !DILocation(line: 1040, column: 12, scope: !810)
!6182 = !DILocation(line: 1040, column: 5, scope: !810)
!6183 = !DILocation(line: 1042, column: 11, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !810, file: !4, line: 1040, column: 15)
!6185 = !DILocation(line: 1043, column: 9, scope: !6184)
!6186 = !DILocation(line: 1045, column: 11, scope: !6184)
!6187 = !DILocation(line: 1046, column: 9, scope: !6184)
!6188 = !DILocation(line: 1048, column: 11, scope: !6184)
!6189 = !DILocation(line: 1049, column: 9, scope: !6184)
!6190 = !DILocation(line: 1051, column: 11, scope: !6184)
!6191 = !DILocation(line: 1052, column: 9, scope: !6184)
!6192 = !DILocation(line: 1054, column: 11, scope: !6184)
!6193 = !DILocation(line: 1055, column: 9, scope: !6184)
!6194 = !DILocation(line: 1057, column: 11, scope: !6184)
!6195 = !DILocation(line: 1058, column: 9, scope: !6184)
!6196 = !DILocation(line: 1060, column: 11, scope: !6184)
!6197 = !DILocation(line: 1061, column: 9, scope: !6184)
!6198 = !DILocation(line: 1063, column: 11, scope: !6184)
!6199 = !DILocation(line: 1064, column: 9, scope: !6184)
!6200 = !DILocation(line: 1066, column: 11, scope: !6184)
!6201 = !DILocation(line: 1067, column: 9, scope: !6184)
!6202 = !DILocation(line: 1069, column: 11, scope: !6184)
!6203 = !DILocation(line: 1070, column: 9, scope: !6184)
!6204 = !DILocation(line: 1073, column: 11, scope: !6184)
!6205 = !DILocation(line: 1074, column: 9, scope: !6184)
!6206 = !DILocation(line: 1077, column: 11, scope: !6184)
!6207 = !DILocation(line: 1078, column: 9, scope: !6184)
!6208 = !DILocation(line: 1081, column: 11, scope: !6184)
!6209 = !DILocation(line: 1082, column: 9, scope: !6184)
!6210 = !DILocation(line: 1085, column: 11, scope: !6184)
!6211 = !DILocation(line: 1086, column: 9, scope: !6184)
!6212 = !DILocation(line: 1089, column: 11, scope: !6184)
!6213 = !DILocation(line: 1090, column: 9, scope: !6184)
!6214 = !DILocation(line: 1093, column: 11, scope: !6184)
!6215 = !DILocation(line: 1094, column: 9, scope: !6184)
!6216 = !DILocation(line: 1096, column: 11, scope: !6184)
!6217 = !DILocation(line: 1097, column: 9, scope: !6184)
!6218 = !DILocation(line: 1099, column: 12, scope: !810)
!6219 = !DILocation(line: 1100, column: 1, scope: !810)
!6220 = !DILocation(line: 1099, column: 5, scope: !810)
!6221 = !DILocation(line: 1031, column: 19, scope: !830)
!6222 = !DILocation(line: 1034, column: 25, scope: !830)
!6223 = !DILocation(line: 1034, column: 12, scope: !830)
!6224 = !DILocation(line: 1034, column: 5, scope: !830)
!6225 = !DILocation(line: 1695, column: 25, scope: !934)
!6226 = !DILocation(line: 1695, column: 34, scope: !934)
!6227 = !DILocation(line: 1697, column: 12, scope: !934)
!6228 = !DILocation(line: 1697, column: 5, scope: !934)
!6229 = !DILocation(line: 1540, column: 33, scope: !946)
!6230 = !DILocation(line: 1540, column: 49, scope: !946)
!6231 = !DILocation(line: 1540, column: 65, scope: !946)
!6232 = !DILocation(line: 1542, column: 5, scope: !946)
!6233 = !DILocation(line: 1542, column: 15, scope: !946)
!6234 = !DILocation(line: 1542, column: 21, scope: !946)
!6235 = !DILocation(line: 1545, column: 36, scope: !946)
!6236 = !DILocation(line: 1545, column: 42, scope: !946)
!6237 = !DILocation(line: 1545, column: 11, scope: !946)
!6238 = !DILocation(line: 1545, column: 9, scope: !946)
!6239 = !DILocation(line: 1546, column: 9, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !946, file: !4, line: 1546, column: 9)
!6241 = !DILocation(line: 1546, column: 13, scope: !6240)
!6242 = !DILocation(line: 1546, column: 9, scope: !946)
!6243 = !DILocation(line: 1547, column: 9, scope: !6240)
!6244 = !DILocation(line: 1549, column: 14, scope: !946)
!6245 = !DILocation(line: 1549, column: 20, scope: !946)
!6246 = !{!1169, !1049, i64 304}
!6247 = !DILocation(line: 1549, column: 29, scope: !946)
!6248 = !DILocation(line: 1549, column: 12, scope: !946)
!6249 = !DILocation(line: 1550, column: 9, scope: !956)
!6250 = !DILocation(line: 1550, column: 16, scope: !956)
!6251 = !DILocation(line: 1550, column: 9, scope: !946)
!6252 = !DILocation(line: 1551, column: 9, scope: !955)
!6253 = !DILocation(line: 1551, column: 14, scope: !6254)
!6254 = !DILexicalBlockFile(scope: !954, file: !4, discriminator: 1)
!6255 = !DILocation(line: 1551, column: 24, scope: !954)
!6256 = !DILocation(line: 1551, column: 54, scope: !954)
!6257 = !DILocation(line: 1551, column: 68, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !954, file: !4, line: 1551, column: 65)
!6259 = !DILocation(line: 1551, column: 85, scope: !6258)
!6260 = !DILocation(line: 1551, column: 65, scope: !6258)
!6261 = !DILocation(line: 1551, column: 95, scope: !6258)
!6262 = !DILocation(line: 1551, column: 65, scope: !954)
!6263 = !DILocation(line: 1551, column: 65, scope: !6264)
!6264 = !DILexicalBlockFile(scope: !954, file: !4, discriminator: 2)
!6265 = !DILocation(line: 1551, column: 126, scope: !6266)
!6266 = !DILexicalBlockFile(scope: !6258, file: !4, discriminator: 3)
!6267 = !DILocation(line: 1551, column: 144, scope: !6258)
!6268 = !DILocation(line: 1551, column: 154, scope: !6258)
!6269 = !DILocation(line: 1551, column: 179, scope: !6258)
!6270 = !DILocation(line: 1551, column: 110, scope: !6258)
!6271 = !DILocation(line: 1551, column: 198, scope: !6272)
!6272 = !DILexicalBlockFile(scope: !955, file: !4, discriminator: 4)
!6273 = !DILocation(line: 1551, column: 198, scope: !954)
!6274 = !DILocation(line: 1551, column: 198, scope: !6275)
!6275 = !DILexicalBlockFile(scope: !954, file: !4, discriminator: 5)
!6276 = !DILocation(line: 1552, column: 9, scope: !955)
!6277 = !DILocation(line: 1554, column: 60, scope: !946)
!6278 = !DILocation(line: 1554, column: 43, scope: !946)
!6279 = !DILocation(line: 1554, column: 66, scope: !946)
!6280 = !DILocation(line: 1554, column: 23, scope: !946)
!6281 = !DILocation(line: 1554, column: 6, scope: !946)
!6282 = !DILocation(line: 1554, column: 32, scope: !946)
!6283 = !DILocation(line: 1554, column: 40, scope: !946)
!6284 = !DILocation(line: 1555, column: 5, scope: !946)
!6285 = !DILocation(line: 1555, column: 10, scope: !6286)
!6286 = !DILexicalBlockFile(scope: !958, file: !4, discriminator: 1)
!6287 = !DILocation(line: 1555, column: 20, scope: !958)
!6288 = !DILocation(line: 1555, column: 50, scope: !958)
!6289 = !DILocation(line: 1555, column: 64, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !958, file: !4, line: 1555, column: 61)
!6291 = !DILocation(line: 1555, column: 81, scope: !6290)
!6292 = !DILocation(line: 1555, column: 61, scope: !6290)
!6293 = !DILocation(line: 1555, column: 91, scope: !6290)
!6294 = !DILocation(line: 1555, column: 61, scope: !958)
!6295 = !DILocation(line: 1555, column: 61, scope: !6296)
!6296 = !DILexicalBlockFile(scope: !958, file: !4, discriminator: 2)
!6297 = !DILocation(line: 1555, column: 122, scope: !6298)
!6298 = !DILexicalBlockFile(scope: !6290, file: !4, discriminator: 3)
!6299 = !DILocation(line: 1555, column: 140, scope: !6290)
!6300 = !DILocation(line: 1555, column: 150, scope: !6290)
!6301 = !DILocation(line: 1555, column: 175, scope: !6290)
!6302 = !DILocation(line: 1555, column: 106, scope: !6290)
!6303 = !DILocation(line: 1555, column: 194, scope: !6304)
!6304 = !DILexicalBlockFile(scope: !946, file: !4, discriminator: 4)
!6305 = !DILocation(line: 1555, column: 194, scope: !958)
!6306 = !DILocation(line: 1555, column: 194, scope: !6307)
!6307 = !DILexicalBlockFile(scope: !958, file: !4, discriminator: 5)
!6308 = !DILocation(line: 1556, column: 12, scope: !946)
!6309 = !DILocation(line: 1556, column: 5, scope: !946)
!6310 = !DILocation(line: 1557, column: 1, scope: !946)
