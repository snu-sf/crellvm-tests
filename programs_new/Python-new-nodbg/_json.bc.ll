; ModuleID = './_json.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._PyScannerObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct._PyEncoderObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32 }
%struct._PyAccu = type { %struct._object*, %struct._object* }
%struct.PyFloatObject = type { %struct._object, double }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@jsonmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @speedups_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyScannerType = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* @scanner_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @scanner_call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @scanner_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @scanner_traverse, i32 (%struct._object*)* @scanner_clear, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([7 x %struct.PyMemberDef], [7 x %struct.PyMemberDef]* @scanner_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @scanner_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @scanner_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyEncoderType = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i32 0, i32 0), i64 88, i64 0, void (%struct._object*)* @encoder_dealloc, i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* @encoder_call, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @encoder_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @encoder_traverse, i32 (%struct._object*)* @encoder_clear, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([9 x %struct.PyMemberDef], [9 x %struct.PyMemberDef]* @encoder_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @encoder_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @encoder_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [13 x i8] c"make_scanner\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"make_encoder\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"_json\00", align 1
@module_doc = internal global [15 x i8] c"json speedups\0A\00", align 1
@speedups_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_encode_basestring_ascii, i32 8, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @pydoc_encode_basestring_ascii, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @py_scanstring, i32 1, i8* getelementptr inbounds ([462 x i8], [462 x i8]* @pydoc_scanstring, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [24 x i8] c"encode_basestring_ascii\00", align 1
@pydoc_encode_basestring_ascii = internal global [103 x i8] c"encode_basestring_ascii(string) -> string\0A\0AReturn an ASCII-only JSON representation of a Python string\00", align 16
@.str.4 = private unnamed_addr constant [11 x i8] c"scanstring\00", align 1
@pydoc_scanstring = internal global [462 x i8] c"scanstring(string, end, strict=True) -> (string, end)\0A\0AScan the string s for a JSON string. End is the index of the\0Acharacter in s after the quote that started the JSON string.\0AUnescapes all valid JSON string escape sequences and raises ValueError\0Aon attempt to decode an invalid string. If strict is False then literal\0Acontrol characters are allowed in the string.\0A\0AReturns a tuple of the decoded string and the index of the character in s\0Aafter the end quote.\00", align 16
@PyExc_TypeError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"first argument must be a string, not %.80s\00", align 1
@Py_hexdigits = external global i8*, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"On|i:scanstring\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"end is out of bounds\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Invalid control character at\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unterminated string starting at\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Invalid \5Cescape\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Invalid \5CuXXXX escape\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@raise_errmsg.errmsg_fn = internal global %struct._object* null, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"json.decoder\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"errmsg\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"(zOn)\00", align 1
@join_list_unicode.sep = internal global %struct._object* null, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c"_json.Scanner\00", align 1
@scanner_doc = internal global [20 x i8] c"JSON scanner object\00", align 16
@scanner_members = internal global [7 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 6, i64 16, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i32 6, i64 24, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0), i32 6, i64 40, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 6, i64 48, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i32 6, i64 56, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@scanner_call.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"On:scan_once\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"idx cannot be negative\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@_Py_CheckRecursionLimit = external global i32, align 4
@.str.21 = private unnamed_addr constant [52 x i8] c" while decoding a JSON object from a unicode string\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c" while decoding a JSON array from a unicode string\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.23 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"-Infinity\00", align 1
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [50 x i8] c"Expecting property name enclosed in double quotes\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Expecting ':' delimiter\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Expecting ',' delimiter\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Expecting value\00", align 1
@PyFloat_Type = external global %struct._typeobject, align 8
@PyLong_Type = external global %struct._typeobject, align 8
@.str.30 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"object_hook\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"object_pairs_hook\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"parse_float\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"parse_int\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"parse_constant\00", align 1
@scanner_init.kwlist = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8* null], align 16
@.str.36 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"O:make_scanner\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"_json.Encoder\00", align 1
@encoder_doc = internal global [52 x i8] c"_iterencode(obj, _current_indent_level) -> iterable\00", align 16
@encoder_members = internal global [9 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 6, i64 16, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i32 6, i64 24, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 6, i64 32, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i32 6, i64 40, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i32 6, i64 48, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i32 6, i64 56, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i32 6, i64 64, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i32 6, i64 72, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@encoder_call.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0), i8* null], align 16
@.str.39 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"_current_indent_level\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"On:_iterencode\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c" while encoding a JSON object\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"Circular reference detected\00", align 1
@_encoded_const.s_null = internal global %struct._object* null, align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@_encoded_const.s_true = internal global %struct._object* null, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_encoded_const.s_false = internal global %struct._object* null, align 8
@.str.46 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"not a const\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"Unable to coerce int subclass to int\00", align 1
@.str.49 = private unnamed_addr constant [49 x i8] c"Out of range float values are not JSON compliant\00", align 1
@.str.50 = private unnamed_addr constant [41 x i8] c"Unable to coerce float subclass to float\00", align 1
@encoder_listencode_list.open_array = internal global %struct._object* null, align 8
@encoder_listencode_list.close_array = internal global %struct._object* null, align 8
@encoder_listencode_list.empty_array = internal global %struct._object* null, align 8
@.str.51 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"_iterencode_list needs a sequence\00", align 1
@encoder_listencode_dict.open_dict = internal global %struct._object* null, align 8
@encoder_listencode_dict.close_dict = internal global %struct._object* null, align 8
@encoder_listencode_dict.empty_dict = internal global %struct._object* null, align 8
@.str.55 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"keys must return list\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"items must return 2-tuples\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"keys must be a string\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"markers\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"key_separator\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"item_separator\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"sort_keys\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"skipkeys\00", align 1
@encoder_init.kwlist = internal global [10 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i8* null], align 16
@.str.69 = private unnamed_addr constant [10 x i8] c"allow_nan\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"OOOOOOOOO:make_encoder\00", align 1
@PyCFunction_Type = external global %struct._typeobject, align 8

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__json() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @jsonmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyScannerType, i32 0, i32 37), align 8
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @PyScannerType)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %fail

if.end.3:                                         ; preds = %if.end
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEncoderType, i32 0, i32 37), align 8
  %call4 = call i32 @PyType_Ready(%struct._typeobject* @PyEncoderType)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %fail

if.end.7:                                         ; preds = %if.end.3
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyScannerType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyScannerType, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyScannerType, i32 0, i32 0, i32 0))
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.10
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyScannerType, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %fail

if.end.14:                                        ; preds = %if.end.7
  %9 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEncoderType, i32 0, i32 0, i32 0, i32 0), align 8
  %inc15 = add i64 %9, 1
  store i64 %inc15, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEncoderType, i32 0, i32 0, i32 0, i32 0), align 8
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddObject(%struct._object* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEncoderType, i32 0, i32 0, i32 0))
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.end.14
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyEncoderType, i32 0, i32 0, i32 0), %struct._object** %_py_decref_tmp20, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %12, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %15(%struct._object* %16)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %fail

if.end.30:                                        ; preds = %if.end.14
  %17 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

fail:                                             ; preds = %do.end.29, %do.end, %if.then.6, %if.then.2
  br label %do.body.31

do.body.31:                                       ; preds = %fail
  %18 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp32, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %20, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %23(%struct._object* %24)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.41, %if.end.30, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_encode_basestring_ascii(%struct._object* %self, %struct._object* %pystr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  %0 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call = call %struct._object* @ascii_escape_unicode(%struct._object* %3)
  store %struct._object* %call, %struct._object** %rval, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %5 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 1
  %7 = load i8*, i8** %tp_name, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @py_scanstring(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pystr = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  %end = alloca i64, align 8
  %next_end = alloca i64, align 8
  %strict = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 -1, i64* %next_end, align 8
  store i32 1, i32* %strict, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), %struct._object** %pystr, i64* %end, i32* %strict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %pystr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %pystr, align 8
  %5 = load i64, i64* %end, align 8
  %6 = load i32, i32* %strict, align 4
  %call2 = call %struct._object* @scanstring_unicode(%struct._object* %4, i64 %5, i32 %6, i64* %next_end)
  store %struct._object* %call2, %struct._object** %rval, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %8 = load %struct._object*, %struct._object** %pystr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %tp_name, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %10)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %11 = load %struct._object*, %struct._object** %rval, align 8
  %12 = load i64, i64* %next_end, align 8
  %call6 = call %struct._object* @_build_rval_index_tuple(%struct._object* %11, i64 %12)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.else, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_escape_unicode(%struct._object* %pystr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %input_chars = alloca i64, align 8
  %output_size = alloca i64, align 8
  %chars = alloca i64, align 8
  %rval = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %output = alloca i8*, align 8
  %kind = alloca i32, align 4
  %c = alloca i32, align 4
  %c90 = alloca i32, align 4
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  %0 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  store i64 %6, i64* %input_chars, align 8
  %7 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %9, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 5
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.17

cond.true.6:                                      ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %12, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.6
  %13 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 1
  %15 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.true.6
  %16 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyCompactUnicodeObject*
  %add.ptr14 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %17, i64 1
  %18 = bitcast %struct.PyCompactUnicodeObject* %add.ptr14 to i8*
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i8* [ %15, %cond.true.12 ], [ %18, %cond.false.13 ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %20, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %21 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end.15
  %cond19 = phi i8* [ %cond16, %cond.end.15 ], [ %21, %cond.false.17 ]
  store i8* %cond19, i8** %input, align 8
  %22 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 3
  %24 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %24, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  store i32 %bf.clear23, i32* %kind, align 4
  store i64 0, i64* %i, align 8
  store i64 2, i64* %output_size, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.18
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %input_chars, align 8
  %cmp24 = icmp slt i64 %25, %26
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %kind, align 4
  %cmp25 = icmp eq i32 %27, 1
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load i8*, i8** %input, align 8
  %arrayidx = getelementptr i8, i8* %29, i64 %28
  %30 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %30 to i32
  br label %cond.end.37

cond.false.27:                                    ; preds = %for.body
  %31 = load i32, i32* %kind, align 4
  %cmp28 = icmp eq i32 %31, 2
  br i1 %cmp28, label %cond.true.30, label %cond.false.33

cond.true.30:                                     ; preds = %cond.false.27
  %32 = load i64, i64* %i, align 8
  %33 = load i8*, i8** %input, align 8
  %34 = bitcast i8* %33 to i16*
  %arrayidx31 = getelementptr i16, i16* %34, i64 %32
  %35 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %35 to i32
  br label %cond.end.35

cond.false.33:                                    ; preds = %cond.false.27
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** %input, align 8
  %38 = bitcast i8* %37 to i32*
  %arrayidx34 = getelementptr i32, i32* %38, i64 %36
  %39 = load i32, i32* %arrayidx34, align 4
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.33, %cond.true.30
  %cond36 = phi i32 [ %conv32, %cond.true.30 ], [ %39, %cond.false.33 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end.35, %cond.true.26
  %cond38 = phi i32 [ %conv, %cond.true.26 ], [ %cond36, %cond.end.35 ]
  store i32 %cond38, i32* %c, align 4
  %40 = load i32, i32* %c, align 4
  %cmp39 = icmp uge i32 %40, 32
  br i1 %cmp39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.37
  %41 = load i32, i32* %c, align 4
  %cmp41 = icmp ule i32 %41, 126
  br i1 %cmp41, label %land.lhs.true.43, label %if.else

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %42 = load i32, i32* %c, align 4
  %cmp44 = icmp ne i32 %42, 92
  br i1 %cmp44, label %land.lhs.true.46, label %if.else

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %43 = load i32, i32* %c, align 4
  %cmp47 = icmp ne i32 %43, 34
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.46
  %44 = load i64, i64* %output_size, align 8
  %inc = add i64 %44, 1
  store i64 %inc, i64* %output_size, align 8
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true.46, %land.lhs.true.43, %land.lhs.true, %cond.end.37
  %45 = load i32, i32* %c, align 4
  switch i32 %45, label %sw.default [
    i32 92, label %sw.bb
    i32 34, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 10, label %sw.bb
    i32 13, label %sw.bb
    i32 9, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else, %if.else, %if.else, %if.else, %if.else
  %46 = load i64, i64* %output_size, align 8
  %add = add i64 %46, 2
  store i64 %add, i64* %output_size, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %47 = load i32, i32* %c, align 4
  %cmp50 = icmp uge i32 %47, 65536
  %cond52 = select i1 %cmp50, i32 12, i32 6
  %conv53 = sext i32 %cond52 to i64
  %48 = load i64, i64* %output_size, align 8
  %add54 = add i64 %48, %conv53
  store i64 %add54, i64* %output_size, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %if.end.55

if.end.55:                                        ; preds = %sw.epilog, %if.then.49
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %49 = load i64, i64* %i, align 8
  %inc56 = add i64 %49, 1
  store i64 %inc56, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i64, i64* %output_size, align 8
  %call57 = call %struct._object* @PyUnicode_New(i64 %50, i32 127)
  store %struct._object* %call57, %struct._object** %rval, align 8
  %51 = load %struct._object*, %struct._object** %rval, align 8
  %cmp58 = icmp eq %struct._object* %51, null
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %for.end
  %52 = load %struct._object*, %struct._object** %rval, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyASCIIObject*
  %state62 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %53, i32 0, i32 3
  %54 = bitcast %struct.anon* %state62 to i32*
  %bf.load63 = load i32, i32* %54, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 5
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %cond.true.67, label %cond.false.79

cond.true.67:                                     ; preds = %if.end.61
  %55 = load %struct._object*, %struct._object** %rval, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %56, i32 0, i32 3
  %57 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %57, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 6
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.75

cond.true.73:                                     ; preds = %cond.true.67
  %58 = load %struct._object*, %struct._object** %rval, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyASCIIObject*
  %add.ptr74 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %59, i64 1
  %60 = bitcast %struct.PyASCIIObject* %add.ptr74 to i8*
  br label %cond.end.77

cond.false.75:                                    ; preds = %cond.true.67
  %61 = load %struct._object*, %struct._object** %rval, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyCompactUnicodeObject*
  %add.ptr76 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %62, i64 1
  %63 = bitcast %struct.PyCompactUnicodeObject* %add.ptr76 to i8*
  br label %cond.end.77

cond.end.77:                                      ; preds = %cond.false.75, %cond.true.73
  %cond78 = phi i8* [ %60, %cond.true.73 ], [ %63, %cond.false.75 ]
  br label %cond.end.82

cond.false.79:                                    ; preds = %if.end.61
  %64 = load %struct._object*, %struct._object** %rval, align 8
  %65 = bitcast %struct._object* %64 to %struct.PyUnicodeObject*
  %data80 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %65, i32 0, i32 1
  %any81 = bitcast %union.anon* %data80 to i8**
  %66 = load i8*, i8** %any81, align 8
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.end.77
  %cond83 = phi i8* [ %cond78, %cond.end.77 ], [ %66, %cond.false.79 ]
  store i8* %cond83, i8** %output, align 8
  store i64 0, i64* %chars, align 8
  %67 = load i64, i64* %chars, align 8
  %inc84 = add i64 %67, 1
  store i64 %inc84, i64* %chars, align 8
  %68 = load i8*, i8** %output, align 8
  %arrayidx85 = getelementptr i8, i8* %68, i64 %67
  store i8 34, i8* %arrayidx85, align 1
  store i64 0, i64* %i, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.126, %cond.end.82
  %69 = load i64, i64* %i, align 8
  %70 = load i64, i64* %input_chars, align 8
  %cmp87 = icmp slt i64 %69, %70
  br i1 %cmp87, label %for.body.89, label %for.end.128

for.body.89:                                      ; preds = %for.cond.86
  %71 = load i32, i32* %kind, align 4
  %cmp91 = icmp eq i32 %71, 1
  br i1 %cmp91, label %cond.true.93, label %cond.false.96

cond.true.93:                                     ; preds = %for.body.89
  %72 = load i64, i64* %i, align 8
  %73 = load i8*, i8** %input, align 8
  %arrayidx94 = getelementptr i8, i8* %73, i64 %72
  %74 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %74 to i32
  br label %cond.end.106

cond.false.96:                                    ; preds = %for.body.89
  %75 = load i32, i32* %kind, align 4
  %cmp97 = icmp eq i32 %75, 2
  br i1 %cmp97, label %cond.true.99, label %cond.false.102

cond.true.99:                                     ; preds = %cond.false.96
  %76 = load i64, i64* %i, align 8
  %77 = load i8*, i8** %input, align 8
  %78 = bitcast i8* %77 to i16*
  %arrayidx100 = getelementptr i16, i16* %78, i64 %76
  %79 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %79 to i32
  br label %cond.end.104

cond.false.102:                                   ; preds = %cond.false.96
  %80 = load i64, i64* %i, align 8
  %81 = load i8*, i8** %input, align 8
  %82 = bitcast i8* %81 to i32*
  %arrayidx103 = getelementptr i32, i32* %82, i64 %80
  %83 = load i32, i32* %arrayidx103, align 4
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.false.102, %cond.true.99
  %cond105 = phi i32 [ %conv101, %cond.true.99 ], [ %83, %cond.false.102 ]
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.end.104, %cond.true.93
  %cond107 = phi i32 [ %conv95, %cond.true.93 ], [ %cond105, %cond.end.104 ]
  store i32 %cond107, i32* %c90, align 4
  %84 = load i32, i32* %c90, align 4
  %cmp108 = icmp uge i32 %84, 32
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.123

land.lhs.true.110:                                ; preds = %cond.end.106
  %85 = load i32, i32* %c90, align 4
  %cmp111 = icmp ule i32 %85, 126
  br i1 %cmp111, label %land.lhs.true.113, label %if.else.123

land.lhs.true.113:                                ; preds = %land.lhs.true.110
  %86 = load i32, i32* %c90, align 4
  %cmp114 = icmp ne i32 %86, 92
  br i1 %cmp114, label %land.lhs.true.116, label %if.else.123

land.lhs.true.116:                                ; preds = %land.lhs.true.113
  %87 = load i32, i32* %c90, align 4
  %cmp117 = icmp ne i32 %87, 34
  br i1 %cmp117, label %if.then.119, label %if.else.123

if.then.119:                                      ; preds = %land.lhs.true.116
  %88 = load i32, i32* %c90, align 4
  %conv120 = trunc i32 %88 to i8
  %89 = load i64, i64* %chars, align 8
  %inc121 = add i64 %89, 1
  store i64 %inc121, i64* %chars, align 8
  %90 = load i8*, i8** %output, align 8
  %arrayidx122 = getelementptr i8, i8* %90, i64 %89
  store i8 %conv120, i8* %arrayidx122, align 1
  br label %if.end.125

if.else.123:                                      ; preds = %land.lhs.true.116, %land.lhs.true.113, %land.lhs.true.110, %cond.end.106
  %91 = load i32, i32* %c90, align 4
  %92 = load i8*, i8** %output, align 8
  %93 = load i64, i64* %chars, align 8
  %call124 = call i64 @ascii_escape_unichar(i32 %91, i8* %92, i64 %93)
  store i64 %call124, i64* %chars, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.123, %if.then.119
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %94 = load i64, i64* %i, align 8
  %inc127 = add i64 %94, 1
  store i64 %inc127, i64* %i, align 8
  br label %for.cond.86

for.end.128:                                      ; preds = %for.cond.86
  %95 = load i64, i64* %chars, align 8
  %inc129 = add i64 %95, 1
  store i64 %inc129, i64* %chars, align 8
  %96 = load i8*, i8** %output, align 8
  %arrayidx130 = getelementptr i8, i8* %96, i64 %95
  store i8 34, i8* %arrayidx130, align 1
  %97 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %97, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.128, %if.then.60, %if.then
  %98 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %98
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare %struct._object* @PyUnicode_New(i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @ascii_escape_unichar(i32 %c, i8* %output, i64 %chars) #0 {
entry:
  %c.addr = alloca i32, align 4
  %output.addr = alloca i8*, align 8
  %chars.addr = alloca i64, align 8
  %v = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i8* %output, i8** %output.addr, align 8
  store i64 %chars, i64* %chars.addr, align 8
  %0 = load i64, i64* %chars.addr, align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* %chars.addr, align 8
  %1 = load i8*, i8** %output.addr, align 8
  %arrayidx = getelementptr i8, i8* %1, i64 %0
  store i8 92, i8* %arrayidx, align 1
  %2 = load i32, i32* %c.addr, align 4
  switch i32 %2, label %sw.default [
    i32 92, label %sw.bb
    i32 34, label %sw.bb.3
    i32 8, label %sw.bb.7
    i32 12, label %sw.bb.10
    i32 10, label %sw.bb.13
    i32 13, label %sw.bb.16
    i32 9, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry
  %3 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %3 to i8
  %4 = load i64, i64* %chars.addr, align 8
  %inc1 = add i64 %4, 1
  store i64 %inc1, i64* %chars.addr, align 8
  %5 = load i8*, i8** %output.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %5, i64 %4
  store i8 %conv, i8* %arrayidx2, align 1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load i32, i32* %c.addr, align 4
  %conv4 = trunc i32 %6 to i8
  %7 = load i64, i64* %chars.addr, align 8
  %inc5 = add i64 %7, 1
  store i64 %inc5, i64* %chars.addr, align 8
  %8 = load i8*, i8** %output.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %8, i64 %7
  store i8 %conv4, i8* %arrayidx6, align 1
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %9 = load i64, i64* %chars.addr, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, i64* %chars.addr, align 8
  %10 = load i8*, i8** %output.addr, align 8
  %arrayidx9 = getelementptr i8, i8* %10, i64 %9
  store i8 98, i8* %arrayidx9, align 1
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %11 = load i64, i64* %chars.addr, align 8
  %inc11 = add i64 %11, 1
  store i64 %inc11, i64* %chars.addr, align 8
  %12 = load i8*, i8** %output.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %12, i64 %11
  store i8 102, i8* %arrayidx12, align 1
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %13 = load i64, i64* %chars.addr, align 8
  %inc14 = add i64 %13, 1
  store i64 %inc14, i64* %chars.addr, align 8
  %14 = load i8*, i8** %output.addr, align 8
  %arrayidx15 = getelementptr i8, i8* %14, i64 %13
  store i8 110, i8* %arrayidx15, align 1
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %15 = load i64, i64* %chars.addr, align 8
  %inc17 = add i64 %15, 1
  store i64 %inc17, i64* %chars.addr, align 8
  %16 = load i8*, i8** %output.addr, align 8
  %arrayidx18 = getelementptr i8, i8* %16, i64 %15
  store i8 114, i8* %arrayidx18, align 1
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %17 = load i64, i64* %chars.addr, align 8
  %inc20 = add i64 %17, 1
  store i64 %inc20, i64* %chars.addr, align 8
  %18 = load i8*, i8** %output.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %18, i64 %17
  store i8 116, i8* %arrayidx21, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %19 = load i32, i32* %c.addr, align 4
  %cmp = icmp uge i32 %19, 65536
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.default
  %20 = load i32, i32* %c.addr, align 4
  %shr = lshr i32 %20, 10
  %add = add i32 55232, %shr
  store i32 %add, i32* %v, align 4
  %21 = load i64, i64* %chars.addr, align 8
  %inc23 = add i64 %21, 1
  store i64 %inc23, i64* %chars.addr, align 8
  %22 = load i8*, i8** %output.addr, align 8
  %arrayidx24 = getelementptr i8, i8* %22, i64 %21
  store i8 117, i8* %arrayidx24, align 1
  %23 = load i32, i32* %v, align 4
  %shr25 = lshr i32 %23, 12
  %and = and i32 %shr25, 15
  %idxprom = zext i32 %and to i64
  %24 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx26 = getelementptr i8, i8* %24, i64 %idxprom
  %25 = load i8, i8* %arrayidx26, align 1
  %26 = load i64, i64* %chars.addr, align 8
  %inc27 = add i64 %26, 1
  store i64 %inc27, i64* %chars.addr, align 8
  %27 = load i8*, i8** %output.addr, align 8
  %arrayidx28 = getelementptr i8, i8* %27, i64 %26
  store i8 %25, i8* %arrayidx28, align 1
  %28 = load i32, i32* %v, align 4
  %shr29 = lshr i32 %28, 8
  %and30 = and i32 %shr29, 15
  %idxprom31 = zext i32 %and30 to i64
  %29 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx32 = getelementptr i8, i8* %29, i64 %idxprom31
  %30 = load i8, i8* %arrayidx32, align 1
  %31 = load i64, i64* %chars.addr, align 8
  %inc33 = add i64 %31, 1
  store i64 %inc33, i64* %chars.addr, align 8
  %32 = load i8*, i8** %output.addr, align 8
  %arrayidx34 = getelementptr i8, i8* %32, i64 %31
  store i8 %30, i8* %arrayidx34, align 1
  %33 = load i32, i32* %v, align 4
  %shr35 = lshr i32 %33, 4
  %and36 = and i32 %shr35, 15
  %idxprom37 = zext i32 %and36 to i64
  %34 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx38 = getelementptr i8, i8* %34, i64 %idxprom37
  %35 = load i8, i8* %arrayidx38, align 1
  %36 = load i64, i64* %chars.addr, align 8
  %inc39 = add i64 %36, 1
  store i64 %inc39, i64* %chars.addr, align 8
  %37 = load i8*, i8** %output.addr, align 8
  %arrayidx40 = getelementptr i8, i8* %37, i64 %36
  store i8 %35, i8* %arrayidx40, align 1
  %38 = load i32, i32* %v, align 4
  %and41 = and i32 %38, 15
  %idxprom42 = zext i32 %and41 to i64
  %39 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx43 = getelementptr i8, i8* %39, i64 %idxprom42
  %40 = load i8, i8* %arrayidx43, align 1
  %41 = load i64, i64* %chars.addr, align 8
  %inc44 = add i64 %41, 1
  store i64 %inc44, i64* %chars.addr, align 8
  %42 = load i8*, i8** %output.addr, align 8
  %arrayidx45 = getelementptr i8, i8* %42, i64 %41
  store i8 %40, i8* %arrayidx45, align 1
  %43 = load i32, i32* %c.addr, align 4
  %and46 = and i32 %43, 1023
  %add47 = add i32 56320, %and46
  store i32 %add47, i32* %c.addr, align 4
  %44 = load i64, i64* %chars.addr, align 8
  %inc48 = add i64 %44, 1
  store i64 %inc48, i64* %chars.addr, align 8
  %45 = load i8*, i8** %output.addr, align 8
  %arrayidx49 = getelementptr i8, i8* %45, i64 %44
  store i8 92, i8* %arrayidx49, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.default
  %46 = load i64, i64* %chars.addr, align 8
  %inc50 = add i64 %46, 1
  store i64 %inc50, i64* %chars.addr, align 8
  %47 = load i8*, i8** %output.addr, align 8
  %arrayidx51 = getelementptr i8, i8* %47, i64 %46
  store i8 117, i8* %arrayidx51, align 1
  %48 = load i32, i32* %c.addr, align 4
  %shr52 = lshr i32 %48, 12
  %and53 = and i32 %shr52, 15
  %idxprom54 = zext i32 %and53 to i64
  %49 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx55 = getelementptr i8, i8* %49, i64 %idxprom54
  %50 = load i8, i8* %arrayidx55, align 1
  %51 = load i64, i64* %chars.addr, align 8
  %inc56 = add i64 %51, 1
  store i64 %inc56, i64* %chars.addr, align 8
  %52 = load i8*, i8** %output.addr, align 8
  %arrayidx57 = getelementptr i8, i8* %52, i64 %51
  store i8 %50, i8* %arrayidx57, align 1
  %53 = load i32, i32* %c.addr, align 4
  %shr58 = lshr i32 %53, 8
  %and59 = and i32 %shr58, 15
  %idxprom60 = zext i32 %and59 to i64
  %54 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx61 = getelementptr i8, i8* %54, i64 %idxprom60
  %55 = load i8, i8* %arrayidx61, align 1
  %56 = load i64, i64* %chars.addr, align 8
  %inc62 = add i64 %56, 1
  store i64 %inc62, i64* %chars.addr, align 8
  %57 = load i8*, i8** %output.addr, align 8
  %arrayidx63 = getelementptr i8, i8* %57, i64 %56
  store i8 %55, i8* %arrayidx63, align 1
  %58 = load i32, i32* %c.addr, align 4
  %shr64 = lshr i32 %58, 4
  %and65 = and i32 %shr64, 15
  %idxprom66 = zext i32 %and65 to i64
  %59 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx67 = getelementptr i8, i8* %59, i64 %idxprom66
  %60 = load i8, i8* %arrayidx67, align 1
  %61 = load i64, i64* %chars.addr, align 8
  %inc68 = add i64 %61, 1
  store i64 %inc68, i64* %chars.addr, align 8
  %62 = load i8*, i8** %output.addr, align 8
  %arrayidx69 = getelementptr i8, i8* %62, i64 %61
  store i8 %60, i8* %arrayidx69, align 1
  %63 = load i32, i32* %c.addr, align 4
  %and70 = and i32 %63, 15
  %idxprom71 = zext i32 %and70 to i64
  %64 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx72 = getelementptr i8, i8* %64, i64 %idxprom71
  %65 = load i8, i8* %arrayidx72, align 1
  %66 = load i64, i64* %chars.addr, align 8
  %inc73 = add i64 %66, 1
  store i64 %inc73, i64* %chars.addr, align 8
  %67 = load i8*, i8** %output.addr, align 8
  %arrayidx74 = getelementptr i8, i8* %67, i64 %66
  store i8 %65, i8* %arrayidx74, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.19, %sw.bb.16, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.3, %sw.bb
  %68 = load i64, i64* %chars.addr, align 8
  ret i64 %68
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @scanstring_unicode(%struct._object* %pystr, i64 %end, i32 %strict, i64* %next_end_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64, align 8
  %strict.addr = alloca i32, align 4
  %next_end_ptr.addr = alloca i64*, align 8
  %rval = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %begin = alloca i64, align 8
  %next = alloca i64, align 8
  %buf = alloca i8*, align 8
  %kind = alloca i32, align 4
  %chunks = alloca %struct._object*, align 8
  %chunk = alloca %struct._object*, align 8
  %c = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  %digit = alloca i32, align 4
  %c2 = alloca i32, align 4
  %digit261 = alloca i32, align 4
  %_py_decref_tmp328 = alloca %struct._object*, align 8
  %_py_tmp341 = alloca %struct._object*, align 8
  %_py_decref_tmp346 = alloca %struct._object*, align 8
  %_py_decref_tmp391 = alloca %struct._object*, align 8
  %_py_tmp404 = alloca %struct._object*, align 8
  %_py_decref_tmp409 = alloca %struct._object*, align 8
  %_py_tmp429 = alloca %struct._object*, align 8
  %_py_decref_tmp434 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp453 = alloca %struct._object*, align 8
  %_py_xdecref_tmp467 = alloca %struct._object*, align 8
  %_py_decref_tmp472 = alloca %struct._object*, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i32 %strict, i32* %strict.addr, align 4
  store i64* %next_end_ptr, i64** %next_end_ptr.addr, align 8
  store %struct._object* null, %struct._object** %rval, align 8
  %0 = load i64, i64* %end.addr, align 8
  %sub = sub i64 %0, 1
  store i64 %sub, i64* %begin, align 8
  store %struct._object* null, %struct._object** %chunks, align 8
  store %struct._object* null, %struct._object** %chunk, align 8
  %1 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 3
  %3 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  store i64 %7, i64* %len, align 8
  %8 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %10, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 5
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.17

cond.true.6:                                      ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %13, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.6
  %14 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.true.6
  %17 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr14 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr14 to i8*
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i8* [ %16, %cond.true.12 ], [ %19, %cond.false.13 ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end.15
  %cond19 = phi i8* [ %cond16, %cond.end.15 ], [ %22, %cond.false.17 ]
  store i8* %cond19, i8** %buf, align 8
  %23 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %25, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  store i32 %bf.clear23, i32* %kind, align 4
  %26 = load i64, i64* %end.addr, align 8
  %cmp24 = icmp slt i64 %26, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.18
  %27 = load i64, i64* %len, align 8
  %28 = load i64, i64* %end.addr, align 8
  %cmp25 = icmp slt i64 %27, %28
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %cond.end.18
  %29 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %bail

if.end.27:                                        ; preds = %lor.lhs.false
  br label %while.body

while.body:                                       ; preds = %if.end.27, %if.end.364
  store i32 0, i32* %c, align 4
  %30 = load i64, i64* %end.addr, align 8
  store i64 %30, i64* %next, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %31 = load i64, i64* %next, align 8
  %32 = load i64, i64* %len, align 8
  %cmp28 = icmp slt i64 %31, %32
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %kind, align 4
  %cmp29 = icmp eq i32 %33, 1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %for.body
  %34 = load i64, i64* %next, align 8
  %35 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %35, i64 %34
  %36 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %36 to i32
  br label %cond.end.41

cond.false.31:                                    ; preds = %for.body
  %37 = load i32, i32* %kind, align 4
  %cmp32 = icmp eq i32 %37, 2
  br i1 %cmp32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.false.31
  %38 = load i64, i64* %next, align 8
  %39 = load i8*, i8** %buf, align 8
  %40 = bitcast i8* %39 to i16*
  %arrayidx35 = getelementptr i16, i16* %40, i64 %38
  %41 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %41 to i32
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.false.31
  %42 = load i64, i64* %next, align 8
  %43 = load i8*, i8** %buf, align 8
  %44 = bitcast i8* %43 to i32*
  %arrayidx38 = getelementptr i32, i32* %44, i64 %42
  %45 = load i32, i32* %arrayidx38, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.34
  %cond40 = phi i32 [ %conv36, %cond.true.34 ], [ %45, %cond.false.37 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.30
  %cond42 = phi i32 [ %conv, %cond.true.30 ], [ %cond40, %cond.end.39 ]
  store i32 %cond42, i32* %c, align 4
  %46 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %46, 34
  br i1 %cmp43, label %if.then.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %cond.end.41
  %47 = load i32, i32* %c, align 4
  %cmp46 = icmp eq i32 %47, 92
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %lor.lhs.false.45, %cond.end.41
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false.45
  %48 = load i32, i32* %strict.addr, align 4
  %tobool49 = icmp ne i32 %48, 0
  br i1 %tobool49, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.else
  %49 = load i32, i32* %c, align 4
  %cmp50 = icmp ule i32 %49, 31
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true
  %50 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %51 = load i64, i64* %next, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), %struct._object* %50, i64 %51)
  br label %bail

if.end.53:                                        ; preds = %land.lhs.true, %if.else
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %52 = load i64, i64* %next, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %next, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.48, %for.cond
  %53 = load i32, i32* %c, align 4
  %cmp55 = icmp eq i32 %53, 34
  br i1 %cmp55, label %if.end.61, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %for.end
  %54 = load i32, i32* %c, align 4
  %cmp58 = icmp eq i32 %54, 92
  br i1 %cmp58, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %lor.lhs.false.57
  %55 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %56 = load i64, i64* %begin, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), %struct._object* %55, i64 %56)
  br label %bail

if.end.61:                                        ; preds = %lor.lhs.false.57, %for.end
  %57 = load i64, i64* %next, align 8
  %58 = load i64, i64* %end.addr, align 8
  %cmp62 = icmp ne i64 %57, %58
  br i1 %cmp62, label %if.then.64, label %if.end.113

if.then.64:                                       ; preds = %if.end.61
  %59 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp65 = icmp ne %struct._object* %59, null
  br i1 %cmp65, label %if.then.67, label %if.end.104

if.then.67:                                       ; preds = %if.then.64
  %60 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp68 = icmp eq %struct._object* %60, null
  br i1 %cmp68, label %if.then.70, label %if.end.76

if.then.70:                                       ; preds = %if.then.67
  %call71 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call71, %struct._object** %chunks, align 8
  %61 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp72 = icmp eq %struct._object* %61, null
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.70
  br label %bail

if.end.75:                                        ; preds = %if.then.70
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.67
  %62 = load %struct._object*, %struct._object** %chunks, align 8
  %63 = load %struct._object*, %struct._object** %chunk, align 8
  %call77 = call i32 @PyList_Append(%struct._object* %62, %struct._object* %63)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %if.end.76
  br label %do.body

do.body:                                          ; preds = %if.then.79
  %64 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %66, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp80 = icmp ne i64 %dec, 0
  br i1 %cmp80, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body
  br label %if.end.84

if.else.83:                                       ; preds = %do.body
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %69(%struct._object* %70)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end

do.end:                                           ; preds = %if.end.84
  br label %bail

if.end.85:                                        ; preds = %if.end.76
  br label %do.body.86

do.body.86:                                       ; preds = %if.end.85
  %71 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %71, %struct._object** %_py_tmp, align 8
  %72 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp87 = icmp ne %struct._object* %72, null
  br i1 %cmp87, label %if.then.89, label %if.end.102

if.then.89:                                       ; preds = %do.body.86
  store %struct._object* null, %struct._object** %chunk, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %73 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp91, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %75, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.90
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.90
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %78(%struct._object* %79)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.86
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %if.then.64
  %80 = load i32, i32* %kind, align 4
  %81 = load i8*, i8** %buf, align 8
  %82 = load i32, i32* %kind, align 4
  %conv105 = sext i32 %82 to i64
  %83 = load i64, i64* %end.addr, align 8
  %mul = mul i64 %conv105, %83
  %add.ptr106 = getelementptr i8, i8* %81, i64 %mul
  %84 = load i64, i64* %next, align 8
  %85 = load i64, i64* %end.addr, align 8
  %sub107 = sub i64 %84, %85
  %call108 = call %struct._object* @PyUnicode_FromKindAndData(i32 %80, i8* %add.ptr106, i64 %sub107)
  store %struct._object* %call108, %struct._object** %chunk, align 8
  %86 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp109 = icmp eq %struct._object* %86, null
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.104
  br label %bail

if.end.112:                                       ; preds = %if.end.104
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.61
  %87 = load i64, i64* %next, align 8
  %inc114 = add i64 %87, 1
  store i64 %inc114, i64* %next, align 8
  %88 = load i32, i32* %c, align 4
  %cmp115 = icmp eq i32 %88, 34
  br i1 %cmp115, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %if.end.113
  %89 = load i64, i64* %next, align 8
  store i64 %89, i64* %end.addr, align 8
  br label %while.end

if.end.118:                                       ; preds = %if.end.113
  %90 = load i64, i64* %next, align 8
  %91 = load i64, i64* %len, align 8
  %cmp119 = icmp eq i64 %90, %91
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.118
  %92 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %93 = load i64, i64* %begin, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0), %struct._object* %92, i64 %93)
  br label %bail

if.end.122:                                       ; preds = %if.end.118
  %94 = load i32, i32* %kind, align 4
  %cmp123 = icmp eq i32 %94, 1
  br i1 %cmp123, label %cond.true.125, label %cond.false.128

cond.true.125:                                    ; preds = %if.end.122
  %95 = load i64, i64* %next, align 8
  %96 = load i8*, i8** %buf, align 8
  %arrayidx126 = getelementptr i8, i8* %96, i64 %95
  %97 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %97 to i32
  br label %cond.end.138

cond.false.128:                                   ; preds = %if.end.122
  %98 = load i32, i32* %kind, align 4
  %cmp129 = icmp eq i32 %98, 2
  br i1 %cmp129, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %cond.false.128
  %99 = load i64, i64* %next, align 8
  %100 = load i8*, i8** %buf, align 8
  %101 = bitcast i8* %100 to i16*
  %arrayidx132 = getelementptr i16, i16* %101, i64 %99
  %102 = load i16, i16* %arrayidx132, align 2
  %conv133 = zext i16 %102 to i32
  br label %cond.end.136

cond.false.134:                                   ; preds = %cond.false.128
  %103 = load i64, i64* %next, align 8
  %104 = load i8*, i8** %buf, align 8
  %105 = bitcast i8* %104 to i32*
  %arrayidx135 = getelementptr i32, i32* %105, i64 %103
  %106 = load i32, i32* %arrayidx135, align 4
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.131
  %cond137 = phi i32 [ %conv133, %cond.true.131 ], [ %106, %cond.false.134 ]
  br label %cond.end.138

cond.end.138:                                     ; preds = %cond.end.136, %cond.true.125
  %cond139 = phi i32 [ %conv127, %cond.true.125 ], [ %cond137, %cond.end.136 ]
  store i32 %cond139, i32* %c, align 4
  %107 = load i32, i32* %c, align 4
  %cmp140 = icmp ne i32 %107, 117
  br i1 %cmp140, label %if.then.142, label %if.else.155

if.then.142:                                      ; preds = %cond.end.138
  %108 = load i64, i64* %next, align 8
  %add = add i64 %108, 1
  store i64 %add, i64* %end.addr, align 8
  %109 = load i32, i32* %c, align 4
  switch i32 %109, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb.143
    i32 47, label %sw.bb.144
    i32 98, label %sw.bb.145
    i32 102, label %sw.bb.146
    i32 110, label %sw.bb.147
    i32 114, label %sw.bb.148
    i32 116, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %if.then.142
  br label %sw.epilog

sw.bb.143:                                        ; preds = %if.then.142
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.then.142
  br label %sw.epilog

sw.bb.145:                                        ; preds = %if.then.142
  store i32 8, i32* %c, align 4
  br label %sw.epilog

sw.bb.146:                                        ; preds = %if.then.142
  store i32 12, i32* %c, align 4
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.then.142
  store i32 10, i32* %c, align 4
  br label %sw.epilog

sw.bb.148:                                        ; preds = %if.then.142
  store i32 13, i32* %c, align 4
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.then.142
  store i32 9, i32* %c, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.142
  store i32 0, i32* %c, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.149, %sw.bb.148, %sw.bb.147, %sw.bb.146, %sw.bb.145, %sw.bb.144, %sw.bb.143, %sw.bb
  %110 = load i32, i32* %c, align 4
  %cmp150 = icmp eq i32 %110, 0
  br i1 %cmp150, label %if.then.152, label %if.end.154

if.then.152:                                      ; preds = %sw.epilog
  %111 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %112 = load i64, i64* %end.addr, align 8
  %sub153 = sub i64 %112, 2
  call void @raise_errmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), %struct._object* %111, i64 %sub153)
  br label %bail

if.end.154:                                       ; preds = %sw.epilog
  br label %if.end.311

if.else.155:                                      ; preds = %cond.end.138
  store i32 0, i32* %c, align 4
  %113 = load i64, i64* %next, align 8
  %inc156 = add i64 %113, 1
  store i64 %inc156, i64* %next, align 8
  %114 = load i64, i64* %next, align 8
  %add157 = add i64 %114, 4
  store i64 %add157, i64* %end.addr, align 8
  %115 = load i64, i64* %end.addr, align 8
  %116 = load i64, i64* %len, align 8
  %cmp158 = icmp sge i64 %115, %116
  br i1 %cmp158, label %if.then.160, label %if.end.162

if.then.160:                                      ; preds = %if.else.155
  %117 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %118 = load i64, i64* %next, align 8
  %sub161 = sub i64 %118, 1
  call void @raise_errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), %struct._object* %117, i64 %sub161)
  br label %bail

if.end.162:                                       ; preds = %if.else.155
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.197, %if.end.162
  %119 = load i64, i64* %next, align 8
  %120 = load i64, i64* %end.addr, align 8
  %cmp164 = icmp slt i64 %119, %120
  br i1 %cmp164, label %for.body.166, label %for.end.199

for.body.166:                                     ; preds = %for.cond.163
  %121 = load i32, i32* %kind, align 4
  %cmp167 = icmp eq i32 %121, 1
  br i1 %cmp167, label %cond.true.169, label %cond.false.172

cond.true.169:                                    ; preds = %for.body.166
  %122 = load i64, i64* %next, align 8
  %123 = load i8*, i8** %buf, align 8
  %arrayidx170 = getelementptr i8, i8* %123, i64 %122
  %124 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %124 to i32
  br label %cond.end.182

cond.false.172:                                   ; preds = %for.body.166
  %125 = load i32, i32* %kind, align 4
  %cmp173 = icmp eq i32 %125, 2
  br i1 %cmp173, label %cond.true.175, label %cond.false.178

cond.true.175:                                    ; preds = %cond.false.172
  %126 = load i64, i64* %next, align 8
  %127 = load i8*, i8** %buf, align 8
  %128 = bitcast i8* %127 to i16*
  %arrayidx176 = getelementptr i16, i16* %128, i64 %126
  %129 = load i16, i16* %arrayidx176, align 2
  %conv177 = zext i16 %129 to i32
  br label %cond.end.180

cond.false.178:                                   ; preds = %cond.false.172
  %130 = load i64, i64* %next, align 8
  %131 = load i8*, i8** %buf, align 8
  %132 = bitcast i8* %131 to i32*
  %arrayidx179 = getelementptr i32, i32* %132, i64 %130
  %133 = load i32, i32* %arrayidx179, align 4
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.false.178, %cond.true.175
  %cond181 = phi i32 [ %conv177, %cond.true.175 ], [ %133, %cond.false.178 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %cond.true.169
  %cond183 = phi i32 [ %conv171, %cond.true.169 ], [ %cond181, %cond.end.180 ]
  store i32 %cond183, i32* %digit, align 4
  %134 = load i32, i32* %c, align 4
  %shl = shl i32 %134, 4
  store i32 %shl, i32* %c, align 4
  %135 = load i32, i32* %digit, align 4
  switch i32 %135, label %sw.default.194 [
    i32 48, label %sw.bb.184
    i32 49, label %sw.bb.184
    i32 50, label %sw.bb.184
    i32 51, label %sw.bb.184
    i32 52, label %sw.bb.184
    i32 53, label %sw.bb.184
    i32 54, label %sw.bb.184
    i32 55, label %sw.bb.184
    i32 56, label %sw.bb.184
    i32 57, label %sw.bb.184
    i32 97, label %sw.bb.186
    i32 98, label %sw.bb.186
    i32 99, label %sw.bb.186
    i32 100, label %sw.bb.186
    i32 101, label %sw.bb.186
    i32 102, label %sw.bb.186
    i32 65, label %sw.bb.190
    i32 66, label %sw.bb.190
    i32 67, label %sw.bb.190
    i32 68, label %sw.bb.190
    i32 69, label %sw.bb.190
    i32 70, label %sw.bb.190
  ]

sw.bb.184:                                        ; preds = %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182
  %136 = load i32, i32* %digit, align 4
  %sub185 = sub i32 %136, 48
  %137 = load i32, i32* %c, align 4
  %or = or i32 %137, %sub185
  store i32 %or, i32* %c, align 4
  br label %sw.epilog.196

sw.bb.186:                                        ; preds = %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182
  %138 = load i32, i32* %digit, align 4
  %sub187 = sub i32 %138, 97
  %add188 = add i32 %sub187, 10
  %139 = load i32, i32* %c, align 4
  %or189 = or i32 %139, %add188
  store i32 %or189, i32* %c, align 4
  br label %sw.epilog.196

sw.bb.190:                                        ; preds = %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182, %cond.end.182
  %140 = load i32, i32* %digit, align 4
  %sub191 = sub i32 %140, 65
  %add192 = add i32 %sub191, 10
  %141 = load i32, i32* %c, align 4
  %or193 = or i32 %141, %add192
  store i32 %or193, i32* %c, align 4
  br label %sw.epilog.196

sw.default.194:                                   ; preds = %cond.end.182
  %142 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %143 = load i64, i64* %end.addr, align 8
  %sub195 = sub i64 %143, 5
  call void @raise_errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), %struct._object* %142, i64 %sub195)
  br label %bail

sw.epilog.196:                                    ; preds = %sw.bb.190, %sw.bb.186, %sw.bb.184
  br label %for.inc.197

for.inc.197:                                      ; preds = %sw.epilog.196
  %144 = load i64, i64* %next, align 8
  %inc198 = add i64 %144, 1
  store i64 %inc198, i64* %next, align 8
  br label %for.cond.163

for.end.199:                                      ; preds = %for.cond.163
  %145 = load i32, i32* %c, align 4
  %cmp200 = icmp ule i32 55296, %145
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.310

land.lhs.true.202:                                ; preds = %for.end.199
  %146 = load i32, i32* %c, align 4
  %cmp203 = icmp ule i32 %146, 56319
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.310

land.lhs.true.205:                                ; preds = %land.lhs.true.202
  %147 = load i64, i64* %end.addr, align 8
  %add206 = add i64 %147, 6
  %148 = load i64, i64* %len, align 8
  %cmp207 = icmp slt i64 %add206, %148
  br i1 %cmp207, label %land.lhs.true.209, label %if.end.310

land.lhs.true.209:                                ; preds = %land.lhs.true.205
  %149 = load i32, i32* %kind, align 4
  %cmp210 = icmp eq i32 %149, 1
  br i1 %cmp210, label %cond.true.212, label %cond.false.216

cond.true.212:                                    ; preds = %land.lhs.true.209
  %150 = load i64, i64* %next, align 8
  %inc213 = add i64 %150, 1
  store i64 %inc213, i64* %next, align 8
  %151 = load i8*, i8** %buf, align 8
  %arrayidx214 = getelementptr i8, i8* %151, i64 %150
  %152 = load i8, i8* %arrayidx214, align 1
  %conv215 = zext i8 %152 to i32
  br label %cond.end.228

cond.false.216:                                   ; preds = %land.lhs.true.209
  %153 = load i32, i32* %kind, align 4
  %cmp217 = icmp eq i32 %153, 2
  br i1 %cmp217, label %cond.true.219, label %cond.false.223

cond.true.219:                                    ; preds = %cond.false.216
  %154 = load i64, i64* %next, align 8
  %inc220 = add i64 %154, 1
  store i64 %inc220, i64* %next, align 8
  %155 = load i8*, i8** %buf, align 8
  %156 = bitcast i8* %155 to i16*
  %arrayidx221 = getelementptr i16, i16* %156, i64 %154
  %157 = load i16, i16* %arrayidx221, align 2
  %conv222 = zext i16 %157 to i32
  br label %cond.end.226

cond.false.223:                                   ; preds = %cond.false.216
  %158 = load i64, i64* %next, align 8
  %inc224 = add i64 %158, 1
  store i64 %inc224, i64* %next, align 8
  %159 = load i8*, i8** %buf, align 8
  %160 = bitcast i8* %159 to i32*
  %arrayidx225 = getelementptr i32, i32* %160, i64 %158
  %161 = load i32, i32* %arrayidx225, align 4
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.223, %cond.true.219
  %cond227 = phi i32 [ %conv222, %cond.true.219 ], [ %161, %cond.false.223 ]
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.end.226, %cond.true.212
  %cond229 = phi i32 [ %conv215, %cond.true.212 ], [ %cond227, %cond.end.226 ]
  %cmp230 = icmp eq i32 %cond229, 92
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.310

land.lhs.true.232:                                ; preds = %cond.end.228
  %162 = load i32, i32* %kind, align 4
  %cmp233 = icmp eq i32 %162, 1
  br i1 %cmp233, label %cond.true.235, label %cond.false.239

cond.true.235:                                    ; preds = %land.lhs.true.232
  %163 = load i64, i64* %next, align 8
  %inc236 = add i64 %163, 1
  store i64 %inc236, i64* %next, align 8
  %164 = load i8*, i8** %buf, align 8
  %arrayidx237 = getelementptr i8, i8* %164, i64 %163
  %165 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %165 to i32
  br label %cond.end.251

cond.false.239:                                   ; preds = %land.lhs.true.232
  %166 = load i32, i32* %kind, align 4
  %cmp240 = icmp eq i32 %166, 2
  br i1 %cmp240, label %cond.true.242, label %cond.false.246

cond.true.242:                                    ; preds = %cond.false.239
  %167 = load i64, i64* %next, align 8
  %inc243 = add i64 %167, 1
  store i64 %inc243, i64* %next, align 8
  %168 = load i8*, i8** %buf, align 8
  %169 = bitcast i8* %168 to i16*
  %arrayidx244 = getelementptr i16, i16* %169, i64 %167
  %170 = load i16, i16* %arrayidx244, align 2
  %conv245 = zext i16 %170 to i32
  br label %cond.end.249

cond.false.246:                                   ; preds = %cond.false.239
  %171 = load i64, i64* %next, align 8
  %inc247 = add i64 %171, 1
  store i64 %inc247, i64* %next, align 8
  %172 = load i8*, i8** %buf, align 8
  %173 = bitcast i8* %172 to i32*
  %arrayidx248 = getelementptr i32, i32* %173, i64 %171
  %174 = load i32, i32* %arrayidx248, align 4
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.246, %cond.true.242
  %cond250 = phi i32 [ %conv245, %cond.true.242 ], [ %174, %cond.false.246 ]
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.end.249, %cond.true.235
  %cond252 = phi i32 [ %conv238, %cond.true.235 ], [ %cond250, %cond.end.249 ]
  %cmp253 = icmp eq i32 %cond252, 117
  br i1 %cmp253, label %if.then.255, label %if.end.310

if.then.255:                                      ; preds = %cond.end.251
  store i32 0, i32* %c2, align 4
  %175 = load i64, i64* %end.addr, align 8
  %add256 = add i64 %175, 6
  store i64 %add256, i64* %end.addr, align 8
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.294, %if.then.255
  %176 = load i64, i64* %next, align 8
  %177 = load i64, i64* %end.addr, align 8
  %cmp258 = icmp slt i64 %176, %177
  br i1 %cmp258, label %for.body.260, label %for.end.296

for.body.260:                                     ; preds = %for.cond.257
  %178 = load i32, i32* %kind, align 4
  %cmp262 = icmp eq i32 %178, 1
  br i1 %cmp262, label %cond.true.264, label %cond.false.267

cond.true.264:                                    ; preds = %for.body.260
  %179 = load i64, i64* %next, align 8
  %180 = load i8*, i8** %buf, align 8
  %arrayidx265 = getelementptr i8, i8* %180, i64 %179
  %181 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %181 to i32
  br label %cond.end.277

cond.false.267:                                   ; preds = %for.body.260
  %182 = load i32, i32* %kind, align 4
  %cmp268 = icmp eq i32 %182, 2
  br i1 %cmp268, label %cond.true.270, label %cond.false.273

cond.true.270:                                    ; preds = %cond.false.267
  %183 = load i64, i64* %next, align 8
  %184 = load i8*, i8** %buf, align 8
  %185 = bitcast i8* %184 to i16*
  %arrayidx271 = getelementptr i16, i16* %185, i64 %183
  %186 = load i16, i16* %arrayidx271, align 2
  %conv272 = zext i16 %186 to i32
  br label %cond.end.275

cond.false.273:                                   ; preds = %cond.false.267
  %187 = load i64, i64* %next, align 8
  %188 = load i8*, i8** %buf, align 8
  %189 = bitcast i8* %188 to i32*
  %arrayidx274 = getelementptr i32, i32* %189, i64 %187
  %190 = load i32, i32* %arrayidx274, align 4
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.273, %cond.true.270
  %cond276 = phi i32 [ %conv272, %cond.true.270 ], [ %190, %cond.false.273 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.264
  %cond278 = phi i32 [ %conv266, %cond.true.264 ], [ %cond276, %cond.end.275 ]
  store i32 %cond278, i32* %digit261, align 4
  %191 = load i32, i32* %c2, align 4
  %shl279 = shl i32 %191, 4
  store i32 %shl279, i32* %c2, align 4
  %192 = load i32, i32* %digit261, align 4
  switch i32 %192, label %sw.default.291 [
    i32 48, label %sw.bb.280
    i32 49, label %sw.bb.280
    i32 50, label %sw.bb.280
    i32 51, label %sw.bb.280
    i32 52, label %sw.bb.280
    i32 53, label %sw.bb.280
    i32 54, label %sw.bb.280
    i32 55, label %sw.bb.280
    i32 56, label %sw.bb.280
    i32 57, label %sw.bb.280
    i32 97, label %sw.bb.283
    i32 98, label %sw.bb.283
    i32 99, label %sw.bb.283
    i32 100, label %sw.bb.283
    i32 101, label %sw.bb.283
    i32 102, label %sw.bb.283
    i32 65, label %sw.bb.287
    i32 66, label %sw.bb.287
    i32 67, label %sw.bb.287
    i32 68, label %sw.bb.287
    i32 69, label %sw.bb.287
    i32 70, label %sw.bb.287
  ]

sw.bb.280:                                        ; preds = %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277
  %193 = load i32, i32* %digit261, align 4
  %sub281 = sub i32 %193, 48
  %194 = load i32, i32* %c2, align 4
  %or282 = or i32 %194, %sub281
  store i32 %or282, i32* %c2, align 4
  br label %sw.epilog.293

sw.bb.283:                                        ; preds = %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277
  %195 = load i32, i32* %digit261, align 4
  %sub284 = sub i32 %195, 97
  %add285 = add i32 %sub284, 10
  %196 = load i32, i32* %c2, align 4
  %or286 = or i32 %196, %add285
  store i32 %or286, i32* %c2, align 4
  br label %sw.epilog.293

sw.bb.287:                                        ; preds = %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277, %cond.end.277
  %197 = load i32, i32* %digit261, align 4
  %sub288 = sub i32 %197, 65
  %add289 = add i32 %sub288, 10
  %198 = load i32, i32* %c2, align 4
  %or290 = or i32 %198, %add289
  store i32 %or290, i32* %c2, align 4
  br label %sw.epilog.293

sw.default.291:                                   ; preds = %cond.end.277
  %199 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %200 = load i64, i64* %end.addr, align 8
  %sub292 = sub i64 %200, 5
  call void @raise_errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), %struct._object* %199, i64 %sub292)
  br label %bail

sw.epilog.293:                                    ; preds = %sw.bb.287, %sw.bb.283, %sw.bb.280
  br label %for.inc.294

for.inc.294:                                      ; preds = %sw.epilog.293
  %201 = load i64, i64* %next, align 8
  %inc295 = add i64 %201, 1
  store i64 %inc295, i64* %next, align 8
  br label %for.cond.257

for.end.296:                                      ; preds = %for.cond.257
  %202 = load i32, i32* %c2, align 4
  %cmp297 = icmp ule i32 56320, %202
  br i1 %cmp297, label %land.lhs.true.299, label %if.else.307

land.lhs.true.299:                                ; preds = %for.end.296
  %203 = load i32, i32* %c2, align 4
  %cmp300 = icmp ule i32 %203, 57343
  br i1 %cmp300, label %if.then.302, label %if.else.307

if.then.302:                                      ; preds = %land.lhs.true.299
  %204 = load i32, i32* %c, align 4
  %and = and i32 %204, 1023
  %shl303 = shl i32 %and, 10
  %205 = load i32, i32* %c2, align 4
  %and304 = and i32 %205, 1023
  %or305 = or i32 %shl303, %and304
  %add306 = add i32 %or305, 65536
  store i32 %add306, i32* %c, align 4
  br label %if.end.309

if.else.307:                                      ; preds = %land.lhs.true.299, %for.end.296
  %206 = load i64, i64* %end.addr, align 8
  %sub308 = sub i64 %206, 6
  store i64 %sub308, i64* %end.addr, align 8
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.307, %if.then.302
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %cond.end.251, %cond.end.228, %land.lhs.true.205, %land.lhs.true.202, %for.end.199
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.154
  %207 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp312 = icmp ne %struct._object* %207, null
  br i1 %cmp312, label %if.then.314, label %if.end.359

if.then.314:                                      ; preds = %if.end.311
  %208 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp315 = icmp eq %struct._object* %208, null
  br i1 %cmp315, label %if.then.317, label %if.end.323

if.then.317:                                      ; preds = %if.then.314
  %call318 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call318, %struct._object** %chunks, align 8
  %209 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp319 = icmp eq %struct._object* %209, null
  br i1 %cmp319, label %if.then.321, label %if.end.322

if.then.321:                                      ; preds = %if.then.317
  br label %bail

if.end.322:                                       ; preds = %if.then.317
  br label %if.end.323

if.end.323:                                       ; preds = %if.end.322, %if.then.314
  %210 = load %struct._object*, %struct._object** %chunks, align 8
  %211 = load %struct._object*, %struct._object** %chunk, align 8
  %call324 = call i32 @PyList_Append(%struct._object* %210, %struct._object* %211)
  %tobool325 = icmp ne i32 %call324, 0
  br i1 %tobool325, label %if.then.326, label %if.end.339

if.then.326:                                      ; preds = %if.end.323
  br label %do.body.327

do.body.327:                                      ; preds = %if.then.326
  %212 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %212, %struct._object** %_py_decref_tmp328, align 8
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_refcnt329 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 0
  %214 = load i64, i64* %ob_refcnt329, align 8
  %dec330 = add i64 %214, -1
  store i64 %dec330, i64* %ob_refcnt329, align 8
  %cmp331 = icmp ne i64 %dec330, 0
  br i1 %cmp331, label %if.then.333, label %if.else.334

if.then.333:                                      ; preds = %do.body.327
  br label %if.end.337

if.else.334:                                      ; preds = %do.body.327
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_type335 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 1
  %216 = load %struct._typeobject*, %struct._typeobject** %ob_type335, align 8
  %tp_dealloc336 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %216, i32 0, i32 4
  %217 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc336, align 8
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  call void %217(%struct._object* %218)
  br label %if.end.337

if.end.337:                                       ; preds = %if.else.334, %if.then.333
  br label %do.end.338

do.end.338:                                       ; preds = %if.end.337
  br label %bail

if.end.339:                                       ; preds = %if.end.323
  br label %do.body.340

do.body.340:                                      ; preds = %if.end.339
  %219 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %219, %struct._object** %_py_tmp341, align 8
  %220 = load %struct._object*, %struct._object** %_py_tmp341, align 8
  %cmp342 = icmp ne %struct._object* %220, null
  br i1 %cmp342, label %if.then.344, label %if.end.357

if.then.344:                                      ; preds = %do.body.340
  store %struct._object* null, %struct._object** %chunk, align 8
  br label %do.body.345

do.body.345:                                      ; preds = %if.then.344
  %221 = load %struct._object*, %struct._object** %_py_tmp341, align 8
  store %struct._object* %221, %struct._object** %_py_decref_tmp346, align 8
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  %ob_refcnt347 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 0
  %223 = load i64, i64* %ob_refcnt347, align 8
  %dec348 = add i64 %223, -1
  store i64 %dec348, i64* %ob_refcnt347, align 8
  %cmp349 = icmp ne i64 %dec348, 0
  br i1 %cmp349, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %do.body.345
  br label %if.end.355

if.else.352:                                      ; preds = %do.body.345
  %224 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  %ob_type353 = getelementptr inbounds %struct._object, %struct._object* %224, i32 0, i32 1
  %225 = load %struct._typeobject*, %struct._typeobject** %ob_type353, align 8
  %tp_dealloc354 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %225, i32 0, i32 4
  %226 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc354, align 8
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp346, align 8
  call void %226(%struct._object* %227)
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.352, %if.then.351
  br label %do.end.356

do.end.356:                                       ; preds = %if.end.355
  br label %if.end.357

if.end.357:                                       ; preds = %do.end.356, %do.body.340
  br label %do.end.358

do.end.358:                                       ; preds = %if.end.357
  br label %if.end.359

if.end.359:                                       ; preds = %do.end.358, %if.end.311
  %228 = bitcast i32* %c to i8*
  %call360 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %228, i64 1)
  store %struct._object* %call360, %struct._object** %chunk, align 8
  %229 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp361 = icmp eq %struct._object* %229, null
  br i1 %cmp361, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.359
  br label %bail

if.end.364:                                       ; preds = %if.end.359
  br label %while.body

while.end:                                        ; preds = %if.then.117
  %230 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp365 = icmp eq %struct._object* %230, null
  br i1 %cmp365, label %if.then.367, label %if.else.374

if.then.367:                                      ; preds = %while.end
  %231 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp368 = icmp ne %struct._object* %231, null
  br i1 %cmp368, label %if.then.370, label %if.else.371

if.then.370:                                      ; preds = %if.then.367
  %232 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %232, %struct._object** %rval, align 8
  br label %if.end.373

if.else.371:                                      ; preds = %if.then.367
  %call372 = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i64 0)
  store %struct._object* %call372, %struct._object** %rval, align 8
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.371, %if.then.370
  br label %if.end.447

if.else.374:                                      ; preds = %while.end
  %233 = load %struct._object*, %struct._object** %chunk, align 8
  %cmp375 = icmp ne %struct._object* %233, null
  br i1 %cmp375, label %if.then.377, label %if.end.422

if.then.377:                                      ; preds = %if.else.374
  %234 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp378 = icmp eq %struct._object* %234, null
  br i1 %cmp378, label %if.then.380, label %if.end.386

if.then.380:                                      ; preds = %if.then.377
  %call381 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call381, %struct._object** %chunks, align 8
  %235 = load %struct._object*, %struct._object** %chunks, align 8
  %cmp382 = icmp eq %struct._object* %235, null
  br i1 %cmp382, label %if.then.384, label %if.end.385

if.then.384:                                      ; preds = %if.then.380
  br label %bail

if.end.385:                                       ; preds = %if.then.380
  br label %if.end.386

if.end.386:                                       ; preds = %if.end.385, %if.then.377
  %236 = load %struct._object*, %struct._object** %chunks, align 8
  %237 = load %struct._object*, %struct._object** %chunk, align 8
  %call387 = call i32 @PyList_Append(%struct._object* %236, %struct._object* %237)
  %tobool388 = icmp ne i32 %call387, 0
  br i1 %tobool388, label %if.then.389, label %if.end.402

if.then.389:                                      ; preds = %if.end.386
  br label %do.body.390

do.body.390:                                      ; preds = %if.then.389
  %238 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %238, %struct._object** %_py_decref_tmp391, align 8
  %239 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  %ob_refcnt392 = getelementptr inbounds %struct._object, %struct._object* %239, i32 0, i32 0
  %240 = load i64, i64* %ob_refcnt392, align 8
  %dec393 = add i64 %240, -1
  store i64 %dec393, i64* %ob_refcnt392, align 8
  %cmp394 = icmp ne i64 %dec393, 0
  br i1 %cmp394, label %if.then.396, label %if.else.397

if.then.396:                                      ; preds = %do.body.390
  br label %if.end.400

if.else.397:                                      ; preds = %do.body.390
  %241 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  %ob_type398 = getelementptr inbounds %struct._object, %struct._object* %241, i32 0, i32 1
  %242 = load %struct._typeobject*, %struct._typeobject** %ob_type398, align 8
  %tp_dealloc399 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %242, i32 0, i32 4
  %243 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc399, align 8
  %244 = load %struct._object*, %struct._object** %_py_decref_tmp391, align 8
  call void %243(%struct._object* %244)
  br label %if.end.400

if.end.400:                                       ; preds = %if.else.397, %if.then.396
  br label %do.end.401

do.end.401:                                       ; preds = %if.end.400
  br label %bail

if.end.402:                                       ; preds = %if.end.386
  br label %do.body.403

do.body.403:                                      ; preds = %if.end.402
  %245 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %245, %struct._object** %_py_tmp404, align 8
  %246 = load %struct._object*, %struct._object** %_py_tmp404, align 8
  %cmp405 = icmp ne %struct._object* %246, null
  br i1 %cmp405, label %if.then.407, label %if.end.420

if.then.407:                                      ; preds = %do.body.403
  store %struct._object* null, %struct._object** %chunk, align 8
  br label %do.body.408

do.body.408:                                      ; preds = %if.then.407
  %247 = load %struct._object*, %struct._object** %_py_tmp404, align 8
  store %struct._object* %247, %struct._object** %_py_decref_tmp409, align 8
  %248 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  %ob_refcnt410 = getelementptr inbounds %struct._object, %struct._object* %248, i32 0, i32 0
  %249 = load i64, i64* %ob_refcnt410, align 8
  %dec411 = add i64 %249, -1
  store i64 %dec411, i64* %ob_refcnt410, align 8
  %cmp412 = icmp ne i64 %dec411, 0
  br i1 %cmp412, label %if.then.414, label %if.else.415

if.then.414:                                      ; preds = %do.body.408
  br label %if.end.418

if.else.415:                                      ; preds = %do.body.408
  %250 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  %ob_type416 = getelementptr inbounds %struct._object, %struct._object* %250, i32 0, i32 1
  %251 = load %struct._typeobject*, %struct._typeobject** %ob_type416, align 8
  %tp_dealloc417 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %251, i32 0, i32 4
  %252 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc417, align 8
  %253 = load %struct._object*, %struct._object** %_py_decref_tmp409, align 8
  call void %252(%struct._object* %253)
  br label %if.end.418

if.end.418:                                       ; preds = %if.else.415, %if.then.414
  br label %do.end.419

do.end.419:                                       ; preds = %if.end.418
  br label %if.end.420

if.end.420:                                       ; preds = %do.end.419, %do.body.403
  br label %do.end.421

do.end.421:                                       ; preds = %if.end.420
  br label %if.end.422

if.end.422:                                       ; preds = %do.end.421, %if.else.374
  %254 = load %struct._object*, %struct._object** %chunks, align 8
  %call423 = call %struct._object* @join_list_unicode(%struct._object* %254)
  store %struct._object* %call423, %struct._object** %rval, align 8
  %255 = load %struct._object*, %struct._object** %rval, align 8
  %cmp424 = icmp eq %struct._object* %255, null
  br i1 %cmp424, label %if.then.426, label %if.end.427

if.then.426:                                      ; preds = %if.end.422
  br label %bail

if.end.427:                                       ; preds = %if.end.422
  br label %do.body.428

do.body.428:                                      ; preds = %if.end.427
  %256 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %256, %struct._object** %_py_tmp429, align 8
  %257 = load %struct._object*, %struct._object** %_py_tmp429, align 8
  %cmp430 = icmp ne %struct._object* %257, null
  br i1 %cmp430, label %if.then.432, label %if.end.445

if.then.432:                                      ; preds = %do.body.428
  store %struct._object* null, %struct._object** %chunks, align 8
  br label %do.body.433

do.body.433:                                      ; preds = %if.then.432
  %258 = load %struct._object*, %struct._object** %_py_tmp429, align 8
  store %struct._object* %258, %struct._object** %_py_decref_tmp434, align 8
  %259 = load %struct._object*, %struct._object** %_py_decref_tmp434, align 8
  %ob_refcnt435 = getelementptr inbounds %struct._object, %struct._object* %259, i32 0, i32 0
  %260 = load i64, i64* %ob_refcnt435, align 8
  %dec436 = add i64 %260, -1
  store i64 %dec436, i64* %ob_refcnt435, align 8
  %cmp437 = icmp ne i64 %dec436, 0
  br i1 %cmp437, label %if.then.439, label %if.else.440

if.then.439:                                      ; preds = %do.body.433
  br label %if.end.443

if.else.440:                                      ; preds = %do.body.433
  %261 = load %struct._object*, %struct._object** %_py_decref_tmp434, align 8
  %ob_type441 = getelementptr inbounds %struct._object, %struct._object* %261, i32 0, i32 1
  %262 = load %struct._typeobject*, %struct._typeobject** %ob_type441, align 8
  %tp_dealloc442 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %262, i32 0, i32 4
  %263 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc442, align 8
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp434, align 8
  call void %263(%struct._object* %264)
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.440, %if.then.439
  br label %do.end.444

do.end.444:                                       ; preds = %if.end.443
  br label %if.end.445

if.end.445:                                       ; preds = %do.end.444, %do.body.428
  br label %do.end.446

do.end.446:                                       ; preds = %if.end.445
  br label %if.end.447

if.end.447:                                       ; preds = %do.end.446, %if.end.373
  %265 = load i64, i64* %end.addr, align 8
  %266 = load i64*, i64** %next_end_ptr.addr, align 8
  store i64 %265, i64* %266, align 8
  %267 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %267, %struct._object** %retval
  br label %return

bail:                                             ; preds = %if.then.426, %do.end.401, %if.then.384, %if.then.363, %do.end.338, %if.then.321, %sw.default.291, %sw.default.194, %if.then.160, %if.then.152, %if.then.121, %if.then.111, %do.end, %if.then.74, %if.then.60, %if.then.52, %if.then.26
  %268 = load i64*, i64** %next_end_ptr.addr, align 8
  store i64 -1, i64* %268, align 8
  br label %do.body.448

do.body.448:                                      ; preds = %bail
  %269 = load %struct._object*, %struct._object** %chunks, align 8
  store %struct._object* %269, %struct._object** %_py_xdecref_tmp, align 8
  %270 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp449 = icmp ne %struct._object* %270, null
  br i1 %cmp449, label %if.then.451, label %if.end.464

if.then.451:                                      ; preds = %do.body.448
  br label %do.body.452

do.body.452:                                      ; preds = %if.then.451
  %271 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %271, %struct._object** %_py_decref_tmp453, align 8
  %272 = load %struct._object*, %struct._object** %_py_decref_tmp453, align 8
  %ob_refcnt454 = getelementptr inbounds %struct._object, %struct._object* %272, i32 0, i32 0
  %273 = load i64, i64* %ob_refcnt454, align 8
  %dec455 = add i64 %273, -1
  store i64 %dec455, i64* %ob_refcnt454, align 8
  %cmp456 = icmp ne i64 %dec455, 0
  br i1 %cmp456, label %if.then.458, label %if.else.459

if.then.458:                                      ; preds = %do.body.452
  br label %if.end.462

if.else.459:                                      ; preds = %do.body.452
  %274 = load %struct._object*, %struct._object** %_py_decref_tmp453, align 8
  %ob_type460 = getelementptr inbounds %struct._object, %struct._object* %274, i32 0, i32 1
  %275 = load %struct._typeobject*, %struct._typeobject** %ob_type460, align 8
  %tp_dealloc461 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %275, i32 0, i32 4
  %276 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc461, align 8
  %277 = load %struct._object*, %struct._object** %_py_decref_tmp453, align 8
  call void %276(%struct._object* %277)
  br label %if.end.462

if.end.462:                                       ; preds = %if.else.459, %if.then.458
  br label %do.end.463

do.end.463:                                       ; preds = %if.end.462
  br label %if.end.464

if.end.464:                                       ; preds = %do.end.463, %do.body.448
  br label %do.end.465

do.end.465:                                       ; preds = %if.end.464
  br label %do.body.466

do.body.466:                                      ; preds = %do.end.465
  %278 = load %struct._object*, %struct._object** %chunk, align 8
  store %struct._object* %278, %struct._object** %_py_xdecref_tmp467, align 8
  %279 = load %struct._object*, %struct._object** %_py_xdecref_tmp467, align 8
  %cmp468 = icmp ne %struct._object* %279, null
  br i1 %cmp468, label %if.then.470, label %if.end.483

if.then.470:                                      ; preds = %do.body.466
  br label %do.body.471

do.body.471:                                      ; preds = %if.then.470
  %280 = load %struct._object*, %struct._object** %_py_xdecref_tmp467, align 8
  store %struct._object* %280, %struct._object** %_py_decref_tmp472, align 8
  %281 = load %struct._object*, %struct._object** %_py_decref_tmp472, align 8
  %ob_refcnt473 = getelementptr inbounds %struct._object, %struct._object* %281, i32 0, i32 0
  %282 = load i64, i64* %ob_refcnt473, align 8
  %dec474 = add i64 %282, -1
  store i64 %dec474, i64* %ob_refcnt473, align 8
  %cmp475 = icmp ne i64 %dec474, 0
  br i1 %cmp475, label %if.then.477, label %if.else.478

if.then.477:                                      ; preds = %do.body.471
  br label %if.end.481

if.else.478:                                      ; preds = %do.body.471
  %283 = load %struct._object*, %struct._object** %_py_decref_tmp472, align 8
  %ob_type479 = getelementptr inbounds %struct._object, %struct._object* %283, i32 0, i32 1
  %284 = load %struct._typeobject*, %struct._typeobject** %ob_type479, align 8
  %tp_dealloc480 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %284, i32 0, i32 4
  %285 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc480, align 8
  %286 = load %struct._object*, %struct._object** %_py_decref_tmp472, align 8
  call void %285(%struct._object* %286)
  br label %if.end.481

if.end.481:                                       ; preds = %if.else.478, %if.then.477
  br label %do.end.482

do.end.482:                                       ; preds = %if.end.481
  br label %if.end.483

if.end.483:                                       ; preds = %do.end.482, %do.body.466
  br label %do.end.484

do.end.484:                                       ; preds = %if.end.483
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.484, %if.end.447, %if.then
  %287 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %287
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_build_rval_index_tuple(%struct._object* %rval, i64 %idx) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %rval.addr = alloca %struct._object*, align 8
  %idx.addr = alloca i64, align 8
  %tpl = alloca %struct._object*, align 8
  %pyidx = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct._object* %rval, %struct._object** %rval.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load %struct._object*, %struct._object** %rval.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %idx.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %1)
  store %struct._object* %call, %struct._object** %pyidx, align 8
  %2 = load %struct._object*, %struct._object** %pyidx, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %rval.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call7, %struct._object** %tpl, align 8
  %10 = load %struct._object*, %struct._object** %tpl, align 8
  %cmp8 = icmp eq %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.32

if.then.9:                                        ; preds = %if.end.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %pyidx, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp11, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %13, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %16(%struct._object* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %do.body.21

do.body.21:                                       ; preds = %do.end.20
  %18 = load %struct._object*, %struct._object** %rval.addr, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %20, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %23(%struct._object* %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.6
  %25 = load %struct._object*, %struct._object** %rval.addr, align 8
  %26 = load %struct._object*, %struct._object** %tpl, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %25, %struct._object** %arrayidx, align 8
  %28 = load %struct._object*, %struct._object** %pyidx, align 8
  %29 = load %struct._object*, %struct._object** %tpl, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %30, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 1
  store %struct._object* %28, %struct._object** %arrayidx34, align 8
  %31 = load %struct._object*, %struct._object** %tpl, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %do.end.31, %do.end, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @raise_errmsg(i8* %msg, %struct._object* %s, i64 %end) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %s.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64, align 8
  %pymsg = alloca %struct._object*, align 8
  %decoder = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store %struct._object* %s, %struct._object** %s.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load %struct._object*, %struct._object** @raise_errmsg.errmsg_fn, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %decoder, align 8
  %1 = load %struct._object*, %struct._object** %decoder, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %if.end.24

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %decoder, align 8
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** @raise_errmsg.errmsg_fn, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %decoder, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** @raise_errmsg.errmsg_fn, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  br label %if.end.24

if.end.9:                                         ; preds = %do.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  %11 = load %struct._object*, %struct._object** @raise_errmsg.errmsg_fn, align 8
  %12 = load i8*, i8** %msg.addr, align 8
  %13 = load %struct._object*, %struct._object** %s.addr, align 8
  %14 = load i64, i64* %end.addr, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %12, %struct._object* %13, i64 %14)
  store %struct._object* %call11, %struct._object** %pymsg, align 8
  %15 = load %struct._object*, %struct._object** %pymsg, align 8
  %tobool = icmp ne %struct._object* %15, null
  br i1 %tobool, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %17 = load %struct._object*, %struct._object** %pymsg, align 8
  call void @PyErr_SetObject(%struct._object* %16, %struct._object* %17)
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %18 = load %struct._object*, %struct._object** %pymsg, align 8
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
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.2, %if.then.8, %do.end.23, %if.end.10
  ret void
}

declare %struct._object* @PyList_New(i64) #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @join_list_unicode(%struct._object* %lst) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lst.addr = alloca %struct._object*, align 8
  store %struct._object* %lst, %struct._object** %lst.addr, align 8
  %0 = load %struct._object*, %struct._object** @join_list_unicode.sep, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0), i64 0)
  store %struct._object* %call, %struct._object** @join_list_unicode.sep, align 8
  %1 = load %struct._object*, %struct._object** @join_list_unicode.sep, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** @join_list_unicode.sep, align 8
  %3 = load %struct._object*, %struct._object** %lst.addr, align 8
  %call4 = call %struct._object* @PyUnicode_Join(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal void @scanner_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @scanner_clear(%struct._object* %0)
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 38
  %3 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to i8*
  call void %3(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @scanner_call(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %pystr = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  %idx = alloca i64, align 8
  %next_idx = alloca i64, align 8
  %s = alloca %struct._PyScannerObject*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 -1, i64* %next_idx, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyScannerObject*
  store %struct._PyScannerObject* %1, %struct._PyScannerObject** %s, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @scanner_call.kwlist, i32 0, i32 0), %struct._object** %pystr, i64* %idx)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %pystr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %7 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %8 = load %struct._object*, %struct._object** %pystr, align 8
  %9 = load i64, i64* %idx, align 8
  %call2 = call %struct._object* @scan_once_unicode(%struct._PyScannerObject* %7, %struct._object* %8, i64 %9, i64* %next_idx)
  store %struct._object* %call2, %struct._object** %rval, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %11 = load %struct._object*, %struct._object** %pystr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %14 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %14, i32 0, i32 7
  %15 = load %struct._object*, %struct._object** %memo, align 8
  call void @PyDict_Clear(%struct._object* %15)
  %16 = load %struct._object*, %struct._object** %rval, align 8
  %cmp6 = icmp eq %struct._object* %16, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %17 = load %struct._object*, %struct._object** %rval, align 8
  %18 = load i64, i64* %next_idx, align 8
  %call9 = call %struct._object* @_build_rval_index_tuple(%struct._object* %17, i64 %18)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @scanner_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %s = alloca %struct._PyScannerObject*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyScannerObject*
  store %struct._PyScannerObject* %1, %struct._PyScannerObject** %s, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %strict, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict1 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %strict1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %object_hook, align 8
  %tobool6 = icmp ne %struct._object* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook9 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %object_hook9, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call10, i32* %vret8, align 4
  %16 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %17 = load i32, i32* %vret8, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %18 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %object_pairs_hook, align 8
  %tobool17 = icmp ne %struct._object* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook20 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %object_pairs_hook20, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call21, i32* %vret19, align 4
  %24 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %25 = load i32, i32* %vret19, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %26 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %parse_float, align 8
  %tobool28 = icmp ne %struct._object* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float31 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %29, i32 0, i32 4
  %30 = load %struct._object*, %struct._object** %parse_float31, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call32, i32* %vret30, align 4
  %32 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %33 = load i32, i32* %vret30, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %34 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %34, i32 0, i32 5
  %35 = load %struct._object*, %struct._object** %parse_int, align 8
  %tobool39 = icmp ne %struct._object* %35, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %37 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int42 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %37, i32 0, i32 5
  %38 = load %struct._object*, %struct._object** %parse_int42, align 8
  %39 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %36(%struct._object* %38, i8* %39)
  store i32 %call43, i32* %vret41, align 4
  %40 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %41 = load i32, i32* %vret41, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %42 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %42, i32 0, i32 6
  %43 = load %struct._object*, %struct._object** %parse_constant, align 8
  %tobool50 = icmp ne %struct._object* %43, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %44 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %45 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant53 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %45, i32 0, i32 6
  %46 = load %struct._object*, %struct._object** %parse_constant53, align 8
  %47 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %44(%struct._object* %46, i8* %47)
  store i32 %call54, i32* %vret52, align 4
  %48 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %48, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %49 = load i32, i32* %vret52, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.59, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @scanner_clear(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %s = alloca %struct._PyScannerObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyScannerObject*
  store %struct._PyScannerObject* %1, %struct._PyScannerObject** %s, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %strict, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict1 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %strict1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %13 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %object_hook, align 8
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook11 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %16, i32 0, i32 2
  store %struct._object* null, %struct._object** %object_hook11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %24 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %object_pairs_hook, align 8
  store %struct._object* %25, %struct._object** %_py_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %27 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook29 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %27, i32 0, i32 3
  store %struct._object* null, %struct._object** %object_pairs_hook29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %28 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %30, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %33(%struct._object* %34)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %35 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %35, i32 0, i32 4
  %36 = load %struct._object*, %struct._object** %parse_float, align 8
  store %struct._object* %36, %struct._object** %_py_tmp44, align 8
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %37, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %38 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float47 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %38, i32 0, i32 4
  store %struct._object* null, %struct._object** %parse_float47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %39 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp49, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %41, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %44(%struct._object* %45)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %46 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %46, i32 0, i32 5
  %47 = load %struct._object*, %struct._object** %parse_int, align 8
  store %struct._object* %47, %struct._object** %_py_tmp62, align 8
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %48, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %49 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int65 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %49, i32 0, i32 5
  store %struct._object* null, %struct._object** %parse_int65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %50 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp67, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %52, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %55(%struct._object* %56)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %57 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %57, i32 0, i32 6
  %58 = load %struct._object*, %struct._object** %parse_constant, align 8
  store %struct._object* %58, %struct._object** %_py_tmp80, align 8
  %59 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %59, null
  br i1 %cmp81, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.79
  %60 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant83 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %60, i32 0, i32 6
  store %struct._object* null, %struct._object** %parse_constant83, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %61 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp85, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %63, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %66(%struct._object* %67)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %68 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %68, i32 0, i32 7
  %69 = load %struct._object*, %struct._object** %memo, align 8
  store %struct._object* %69, %struct._object** %_py_tmp98, align 8
  %70 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  %cmp99 = icmp ne %struct._object* %70, null
  br i1 %cmp99, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %do.body.97
  %71 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo101 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %71, i32 0, i32 7
  store %struct._object* null, %struct._object** %memo101, align 8
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.100
  %72 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp103, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %74, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %77(%struct._object* %78)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.97
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @scanner_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ctx = alloca %struct._object*, align 8
  %s = alloca %struct._PyScannerObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp50 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_tmp69 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp132 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyScannerObject*
  store %struct._PyScannerObject* %1, %struct._PyScannerObject** %s, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @scanner_init.kwlist, i32 0, i32 0), %struct._object** %ctx)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %4, i32 0, i32 7
  %5 = load %struct._object*, %struct._object** %memo, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.1, label %if.end.8

if.then.1:                                        ; preds = %if.end
  %call2 = call %struct._object* @PyDict_New()
  %6 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo3 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %6, i32 0, i32 7
  store %struct._object* %call2, %struct._object** %memo3, align 8
  %7 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %memo4 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %7, i32 0, i32 7
  %8 = load %struct._object*, %struct._object** %memo4, align 8
  %cmp5 = icmp eq %struct._object* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.1
  br label %bail

if.end.7:                                         ; preds = %if.then.1
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.end
  %9 = load %struct._object*, %struct._object** %ctx, align 8
  %call9 = call %struct._object* @PyObject_GetAttrString(%struct._object* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0))
  %10 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %10, i32 0, i32 1
  store %struct._object* %call9, %struct._object** %strict, align 8
  %11 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict10 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %strict10, align 8
  %cmp11 = icmp eq %struct._object* %12, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  br label %bail

if.end.13:                                        ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %ctx, align 8
  %call14 = call %struct._object* @PyObject_GetAttrString(%struct._object* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0))
  %14 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %14, i32 0, i32 2
  store %struct._object* %call14, %struct._object** %object_hook, align 8
  %15 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook15 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %15, i32 0, i32 2
  %16 = load %struct._object*, %struct._object** %object_hook15, align 8
  %cmp16 = icmp eq %struct._object* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  br label %bail

if.end.18:                                        ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %ctx, align 8
  %call19 = call %struct._object* @PyObject_GetAttrString(%struct._object* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0))
  %18 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %18, i32 0, i32 3
  store %struct._object* %call19, %struct._object** %object_pairs_hook, align 8
  %19 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook20 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %object_pairs_hook20, align 8
  %cmp21 = icmp eq %struct._object* %20, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  br label %bail

if.end.23:                                        ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %ctx, align 8
  %call24 = call %struct._object* @PyObject_GetAttrString(%struct._object* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0))
  %22 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %22, i32 0, i32 4
  store %struct._object* %call24, %struct._object** %parse_float, align 8
  %23 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float25 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %23, i32 0, i32 4
  %24 = load %struct._object*, %struct._object** %parse_float25, align 8
  %cmp26 = icmp eq %struct._object* %24, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %bail

if.end.28:                                        ; preds = %if.end.23
  %25 = load %struct._object*, %struct._object** %ctx, align 8
  %call29 = call %struct._object* @PyObject_GetAttrString(%struct._object* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0))
  %26 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %26, i32 0, i32 5
  store %struct._object* %call29, %struct._object** %parse_int, align 8
  %27 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int30 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %27, i32 0, i32 5
  %28 = load %struct._object*, %struct._object** %parse_int30, align 8
  %cmp31 = icmp eq %struct._object* %28, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  br label %bail

if.end.33:                                        ; preds = %if.end.28
  %29 = load %struct._object*, %struct._object** %ctx, align 8
  %call34 = call %struct._object* @PyObject_GetAttrString(%struct._object* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  %30 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %30, i32 0, i32 6
  store %struct._object* %call34, %struct._object** %parse_constant, align 8
  %31 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant35 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %31, i32 0, i32 6
  %32 = load %struct._object*, %struct._object** %parse_constant35, align 8
  %cmp36 = icmp eq %struct._object* %32, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.33
  br label %bail

if.end.38:                                        ; preds = %if.end.33
  store i32 0, i32* %retval
  br label %return

bail:                                             ; preds = %if.then.37, %if.then.32, %if.then.27, %if.then.22, %if.then.17, %if.then.12, %if.then.6
  br label %do.body

do.body:                                          ; preds = %bail
  %33 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict39 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %33, i32 0, i32 1
  %34 = load %struct._object*, %struct._object** %strict39, align 8
  store %struct._object* %34, %struct._object** %_py_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp40 = icmp ne %struct._object* %35, null
  br i1 %cmp40, label %if.then.41, label %if.end.47

if.then.41:                                       ; preds = %do.body
  %36 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict42 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %36, i32 0, i32 1
  store %struct._object* null, %struct._object** %strict42, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.41
  %37 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp44 = icmp ne i64 %dec, 0
  br i1 %cmp44, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %do.body.43
  br label %if.end.46

if.else:                                          ; preds = %do.body.43
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.45
  br label %do.end

do.end:                                           ; preds = %if.end.46
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %do.body
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %44 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook51 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %44, i32 0, i32 2
  %45 = load %struct._object*, %struct._object** %object_hook51, align 8
  store %struct._object* %45, %struct._object** %_py_tmp50, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp50, align 8
  %cmp52 = icmp ne %struct._object* %46, null
  br i1 %cmp52, label %if.then.53, label %if.end.66

if.then.53:                                       ; preds = %do.body.49
  %47 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook54 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %47, i32 0, i32 2
  store %struct._object* null, %struct._object** %object_hook54, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.53
  %48 = load %struct._object*, %struct._object** %_py_tmp50, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp56, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %50, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %53(%struct._object* %54)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.body.49
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %55 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook70 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %55, i32 0, i32 3
  %56 = load %struct._object*, %struct._object** %object_pairs_hook70, align 8
  store %struct._object* %56, %struct._object** %_py_tmp69, align 8
  %57 = load %struct._object*, %struct._object** %_py_tmp69, align 8
  %cmp71 = icmp ne %struct._object* %57, null
  br i1 %cmp71, label %if.then.72, label %if.end.85

if.then.72:                                       ; preds = %do.body.68
  %58 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook73 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %58, i32 0, i32 3
  store %struct._object* null, %struct._object** %object_pairs_hook73, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.72
  %59 = load %struct._object*, %struct._object** %_py_tmp69, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp75, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %61, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %64(%struct._object* %65)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.68
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %66 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float89 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %66, i32 0, i32 4
  %67 = load %struct._object*, %struct._object** %parse_float89, align 8
  store %struct._object* %67, %struct._object** %_py_tmp88, align 8
  %68 = load %struct._object*, %struct._object** %_py_tmp88, align 8
  %cmp90 = icmp ne %struct._object* %68, null
  br i1 %cmp90, label %if.then.91, label %if.end.104

if.then.91:                                       ; preds = %do.body.87
  %69 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float92 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %69, i32 0, i32 4
  store %struct._object* null, %struct._object** %parse_float92, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.91
  %70 = load %struct._object*, %struct._object** %_py_tmp88, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp94, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %72, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.93
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.93
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %75(%struct._object* %76)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  br label %if.end.104

if.end.104:                                       ; preds = %do.end.103, %do.body.87
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %do.body.106

do.body.106:                                      ; preds = %do.end.105
  %77 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int108 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %77, i32 0, i32 5
  %78 = load %struct._object*, %struct._object** %parse_int108, align 8
  store %struct._object* %78, %struct._object** %_py_tmp107, align 8
  %79 = load %struct._object*, %struct._object** %_py_tmp107, align 8
  %cmp109 = icmp ne %struct._object* %79, null
  br i1 %cmp109, label %if.then.110, label %if.end.123

if.then.110:                                      ; preds = %do.body.106
  %80 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int111 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %80, i32 0, i32 5
  store %struct._object* null, %struct._object** %parse_int111, align 8
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.110
  %81 = load %struct._object*, %struct._object** %_py_tmp107, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp113, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %83, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.112
  br label %if.end.121

if.else.118:                                      ; preds = %do.body.112
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %86(%struct._object* %87)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %if.end.123

if.end.123:                                       ; preds = %do.end.122, %do.body.106
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %do.body.125

do.body.125:                                      ; preds = %do.end.124
  %88 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant127 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %88, i32 0, i32 6
  %89 = load %struct._object*, %struct._object** %parse_constant127, align 8
  store %struct._object* %89, %struct._object** %_py_tmp126, align 8
  %90 = load %struct._object*, %struct._object** %_py_tmp126, align 8
  %cmp128 = icmp ne %struct._object* %90, null
  br i1 %cmp128, label %if.then.129, label %if.end.142

if.then.129:                                      ; preds = %do.body.125
  %91 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant130 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %91, i32 0, i32 6
  store %struct._object* null, %struct._object** %parse_constant130, align 8
  br label %do.body.131

do.body.131:                                      ; preds = %if.then.129
  %92 = load %struct._object*, %struct._object** %_py_tmp126, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp132, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt133, align 8
  %dec134 = add i64 %94, -1
  store i64 %dec134, i64* %ob_refcnt133, align 8
  %cmp135 = icmp ne i64 %dec134, 0
  br i1 %cmp135, label %if.then.136, label %if.else.137

if.then.136:                                      ; preds = %do.body.131
  br label %if.end.140

if.else.137:                                      ; preds = %do.body.131
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  %ob_type138 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type138, align 8
  %tp_dealloc139 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc139, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp132, align 8
  call void %97(%struct._object* %98)
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.137, %if.then.136
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  br label %if.end.142

if.end.142:                                       ; preds = %do.end.141, %do.body.125
  br label %do.end.143

do.end.143:                                       ; preds = %if.end.142
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.143, %if.end.38, %if.then
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @scanner_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %s = alloca %struct._PyScannerObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct._PyScannerObject*
  store %struct._PyScannerObject* %3, %struct._PyScannerObject** %s, align 8
  %4 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %cmp = icmp ne %struct._PyScannerObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %strict = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %strict, align 8
  %6 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %6, i32 0, i32 2
  store %struct._object* null, %struct._object** %object_hook, align 8
  %7 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %object_pairs_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %7, i32 0, i32 3
  store %struct._object* null, %struct._object** %object_pairs_hook, align 8
  %8 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_float = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %8, i32 0, i32 4
  store %struct._object* null, %struct._object** %parse_float, align 8
  %9 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_int = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %9, i32 0, i32 5
  store %struct._object* null, %struct._object** %parse_int, align 8
  %10 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %parse_constant = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %10, i32 0, i32 6
  store %struct._object* null, %struct._object** %parse_constant, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s, align 8
  %12 = bitcast %struct._PyScannerObject* %11 to %struct._object*
  ret %struct._object* %12
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @scan_once_unicode(%struct._PyScannerObject* %s, %struct._object* %pystr, i64 %idx, i64* %next_idx_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyScannerObject*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %idx.addr = alloca i64, align 8
  %next_idx_ptr.addr = alloca i64*, align 8
  %res = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %kind = alloca i32, align 4
  %length = alloca i64, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val61 = alloca %struct._Py_atomic_address*, align 8
  %result63 = alloca i8*, align 8
  %volatile_data65 = alloca i8**, align 8
  %order68 = alloca i32, align 4
  %tmp75 = alloca i8*, align 8
  %atomic_val87 = alloca %struct._Py_atomic_address*, align 8
  %result89 = alloca i8*, align 8
  %volatile_data91 = alloca i8**, align 8
  %order94 = alloca i32, align 4
  %tmp101 = alloca i8*, align 8
  %atomic_val105 = alloca %struct._Py_atomic_address*, align 8
  %result107 = alloca i8*, align 8
  %volatile_data109 = alloca i8**, align 8
  %order112 = alloca i32, align 4
  %tmp119 = alloca i8*, align 8
  %atomic_val133 = alloca %struct._Py_atomic_address*, align 8
  %result135 = alloca i8*, align 8
  %volatile_data137 = alloca i8**, align 8
  %order140 = alloca i32, align 4
  %tmp147 = alloca i8*, align 8
  %atomic_val163 = alloca %struct._Py_atomic_address*, align 8
  %result165 = alloca i8*, align 8
  %volatile_data167 = alloca i8**, align 8
  %order170 = alloca i32, align 4
  %tmp177 = alloca i8*, align 8
  store %struct._PyScannerObject* %s, %struct._PyScannerObject** %s.addr, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64* %next_idx_ptr, i64** %next_idx_ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %6, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 5
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.17

cond.true.6:                                      ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %9, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.6
  %10 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i64 1
  %12 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.true.6
  %13 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCompactUnicodeObject*
  %add.ptr14 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %14, i64 1
  %15 = bitcast %struct.PyCompactUnicodeObject* %add.ptr14 to i8*
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i8* [ %12, %cond.true.12 ], [ %15, %cond.false.13 ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %17, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %18 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end.15
  %cond19 = phi i8* [ %cond16, %cond.end.15 ], [ %18, %cond.false.17 ]
  store i8* %cond19, i8** %str, align 8
  %19 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 3
  %21 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %21, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  store i32 %bf.clear23, i32* %kind, align 4
  %22 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %length24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 1
  %24 = load i64, i64* %length24, align 8
  store i64 %24, i64* %length, align 8
  %25 = load i64, i64* %idx.addr, align 8
  %cmp25 = icmp slt i64 %25, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end.18
  %26 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %cond.end.18
  %27 = load i64, i64* %idx.addr, align 8
  %28 = load i64, i64* %length, align 8
  %cmp28 = icmp sge i64 %27, %28
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %29 = load i64, i64* %idx.addr, align 8
  call void @raise_stop_iteration(i64 %29)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.27
  %30 = load i32, i32* %kind, align 4
  %cmp31 = icmp eq i32 %30, 1
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %if.end.30
  %31 = load i64, i64* %idx.addr, align 8
  %32 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %32, i64 %31
  %33 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %33 to i32
  br label %cond.end.43

cond.false.33:                                    ; preds = %if.end.30
  %34 = load i32, i32* %kind, align 4
  %cmp34 = icmp eq i32 %34, 2
  br i1 %cmp34, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.false.33
  %35 = load i64, i64* %idx.addr, align 8
  %36 = load i8*, i8** %str, align 8
  %37 = bitcast i8* %36 to i16*
  %arrayidx37 = getelementptr i16, i16* %37, i64 %35
  %38 = load i16, i16* %arrayidx37, align 2
  %conv38 = zext i16 %38 to i32
  br label %cond.end.41

cond.false.39:                                    ; preds = %cond.false.33
  %39 = load i64, i64* %idx.addr, align 8
  %40 = load i8*, i8** %str, align 8
  %41 = bitcast i8* %40 to i32*
  %arrayidx40 = getelementptr i32, i32* %41, i64 %39
  %42 = load i32, i32* %arrayidx40, align 4
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.39, %cond.true.36
  %cond42 = phi i32 [ %conv38, %cond.true.36 ], [ %42, %cond.false.39 ]
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.end.41, %cond.true.32
  %cond44 = phi i32 [ %conv, %cond.true.32 ], [ %cond42, %cond.end.41 ]
  switch i32 %cond44, label %sw.epilog.847 [
    i32 34, label %sw.bb
    i32 123, label %sw.bb.47
    i32 91, label %sw.bb.103
    i32 110, label %sw.bb.181
    i32 116, label %sw.bb.258
    i32 102, label %sw.bb.335
    i32 78, label %sw.bb.435
    i32 73, label %sw.bb.488
    i32 45, label %sw.bb.656
  ]

sw.bb:                                            ; preds = %cond.end.43
  %43 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %44 = load i64, i64* %idx.addr, align 8
  %add = add i64 %44, 1
  %45 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %strict = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %45, i32 0, i32 1
  %46 = load %struct._object*, %struct._object** %strict, align 8
  %call45 = call i32 @PyObject_IsTrue(%struct._object* %46)
  %47 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call46 = call %struct._object* @scanstring_unicode(%struct._object* %43, i64 %add, i32 %call45, i64* %47)
  store %struct._object* %call46, %struct._object** %retval
  br label %return

sw.bb.47:                                         ; preds = %cond.end.43
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %48 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %48, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %49 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %50 = bitcast %struct._Py_atomic_address* %49 to i8*
  %51 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %50, i32 %51)
  %52 = load i32, i32* %order, align 4
  switch i32 %52, label %sw.default [
    i32 2, label %sw.bb.48
    i32 3, label %sw.bb.48
    i32 4, label %sw.bb.48
  ]

sw.bb.48:                                         ; preds = %sw.bb.47, %sw.bb.47, %sw.bb.47
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.47
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48
  %53 = load i8**, i8*** %volatile_data, align 8
  %54 = load volatile i8*, i8** %53, align 8
  store i8* %54, i8** %result, align 8
  %55 = load i32, i32* %order, align 4
  switch i32 %55, label %sw.default.50 [
    i32 1, label %sw.bb.49
    i32 3, label %sw.bb.49
    i32 4, label %sw.bb.49
  ]

sw.bb.49:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.51

sw.default.50:                                    ; preds = %sw.epilog
  br label %sw.epilog.51

sw.epilog.51:                                     ; preds = %sw.default.50, %sw.bb.49
  %56 = load i8*, i8** %result, align 8
  store i8* %56, i8** %tmp
  %57 = load i8*, i8** %tmp
  %58 = bitcast i8* %57 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %58, i32 0, i32 4
  %59 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %59, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %60 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp52 = icmp sgt i32 %inc, %60
  br i1 %cmp52, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %sw.epilog.51
  %call54 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i32 0, i32 0))
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.57:                                        ; preds = %land.lhs.true, %sw.epilog.51
  %61 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %62 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %63 = load i64, i64* %idx.addr, align 8
  %add58 = add i64 %63, 1
  %64 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call59 = call %struct._object* @_parse_object_unicode(%struct._PyScannerObject* %61, %struct._object* %62, i64 %add58, i64* %64)
  store %struct._object* %call59, %struct._object** %res, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.57
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val61, align 8
  %65 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val61, align 8
  %_value66 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %65, i32 0, i32 0
  store i8** %_value66, i8*** %volatile_data65, align 8
  store i32 0, i32* %order68, align 4
  %66 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val61, align 8
  %67 = bitcast %struct._Py_atomic_address* %66 to i8*
  %68 = load i32, i32* %order68, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %67, i32 %68)
  %69 = load i32, i32* %order68, align 4
  switch i32 %69, label %sw.default.70 [
    i32 2, label %sw.bb.69
    i32 3, label %sw.bb.69
    i32 4, label %sw.bb.69
  ]

sw.bb.69:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.71

sw.default.70:                                    ; preds = %do.body
  br label %sw.epilog.71

sw.epilog.71:                                     ; preds = %sw.default.70, %sw.bb.69
  %70 = load i8**, i8*** %volatile_data65, align 8
  %71 = load volatile i8*, i8** %70, align 8
  store i8* %71, i8** %result63, align 8
  %72 = load i32, i32* %order68, align 4
  switch i32 %72, label %sw.default.73 [
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
  %73 = load i8*, i8** %result63, align 8
  store i8* %73, i8** %tmp75
  %74 = load i8*, i8** %tmp75
  %75 = bitcast i8* %74 to %struct._ts*
  %recursion_depth76 = getelementptr inbounds %struct._ts, %struct._ts* %75, i32 0, i32 4
  %76 = load i32, i32* %recursion_depth76, align 4
  %dec = add i32 %76, -1
  store i32 %dec, i32* %recursion_depth76, align 4
  %77 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp77 = icmp sgt i32 %77, 100
  br i1 %cmp77, label %cond.true.79, label %cond.false.80

cond.true.79:                                     ; preds = %sw.epilog.74
  %78 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %78, 50
  br label %cond.end.81

cond.false.80:                                    ; preds = %sw.epilog.74
  %79 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %79, 2
  %mul = mul i32 3, %shr
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.true.79
  %cond82 = phi i32 [ %sub, %cond.true.79 ], [ %mul, %cond.false.80 ]
  %cmp83 = icmp slt i32 %dec, %cond82
  br i1 %cmp83, label %if.then.85, label %if.end.102

if.then.85:                                       ; preds = %cond.end.81
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val87, align 8
  %80 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val87, align 8
  %_value92 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %80, i32 0, i32 0
  store i8** %_value92, i8*** %volatile_data91, align 8
  store i32 0, i32* %order94, align 4
  %81 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val87, align 8
  %82 = bitcast %struct._Py_atomic_address* %81 to i8*
  %83 = load i32, i32* %order94, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %82, i32 %83)
  %84 = load i32, i32* %order94, align 4
  switch i32 %84, label %sw.default.96 [
    i32 2, label %sw.bb.95
    i32 3, label %sw.bb.95
    i32 4, label %sw.bb.95
  ]

sw.bb.95:                                         ; preds = %if.then.85, %if.then.85, %if.then.85
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.97

sw.default.96:                                    ; preds = %if.then.85
  br label %sw.epilog.97

sw.epilog.97:                                     ; preds = %sw.default.96, %sw.bb.95
  %85 = load i8**, i8*** %volatile_data91, align 8
  %86 = load volatile i8*, i8** %85, align 8
  store i8* %86, i8** %result89, align 8
  %87 = load i32, i32* %order94, align 4
  switch i32 %87, label %sw.default.99 [
    i32 1, label %sw.bb.98
    i32 3, label %sw.bb.98
    i32 4, label %sw.bb.98
  ]

sw.bb.98:                                         ; preds = %sw.epilog.97, %sw.epilog.97, %sw.epilog.97
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.100

sw.default.99:                                    ; preds = %sw.epilog.97
  br label %sw.epilog.100

sw.epilog.100:                                    ; preds = %sw.default.99, %sw.bb.98
  %88 = load i8*, i8** %result89, align 8
  store i8* %88, i8** %tmp101
  %89 = load i8*, i8** %tmp101
  %90 = bitcast i8* %89 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %90, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %sw.epilog.100, %cond.end.81
  br label %do.end

do.end:                                           ; preds = %if.end.102
  %91 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %91, %struct._object** %retval
  br label %return

sw.bb.103:                                        ; preds = %cond.end.43
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val105, align 8
  %92 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val105, align 8
  %_value110 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %92, i32 0, i32 0
  store i8** %_value110, i8*** %volatile_data109, align 8
  store i32 0, i32* %order112, align 4
  %93 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val105, align 8
  %94 = bitcast %struct._Py_atomic_address* %93 to i8*
  %95 = load i32, i32* %order112, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %94, i32 %95)
  %96 = load i32, i32* %order112, align 4
  switch i32 %96, label %sw.default.114 [
    i32 2, label %sw.bb.113
    i32 3, label %sw.bb.113
    i32 4, label %sw.bb.113
  ]

sw.bb.113:                                        ; preds = %sw.bb.103, %sw.bb.103, %sw.bb.103
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.115

sw.default.114:                                   ; preds = %sw.bb.103
  br label %sw.epilog.115

sw.epilog.115:                                    ; preds = %sw.default.114, %sw.bb.113
  %97 = load i8**, i8*** %volatile_data109, align 8
  %98 = load volatile i8*, i8** %97, align 8
  store i8* %98, i8** %result107, align 8
  %99 = load i32, i32* %order112, align 4
  switch i32 %99, label %sw.default.117 [
    i32 1, label %sw.bb.116
    i32 3, label %sw.bb.116
    i32 4, label %sw.bb.116
  ]

sw.bb.116:                                        ; preds = %sw.epilog.115, %sw.epilog.115, %sw.epilog.115
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.118

sw.default.117:                                   ; preds = %sw.epilog.115
  br label %sw.epilog.118

sw.epilog.118:                                    ; preds = %sw.default.117, %sw.bb.116
  %100 = load i8*, i8** %result107, align 8
  store i8* %100, i8** %tmp119
  %101 = load i8*, i8** %tmp119
  %102 = bitcast i8* %101 to %struct._ts*
  %recursion_depth120 = getelementptr inbounds %struct._ts, %struct._ts* %102, i32 0, i32 4
  %103 = load i32, i32* %recursion_depth120, align 4
  %inc121 = add i32 %103, 1
  store i32 %inc121, i32* %recursion_depth120, align 4
  %104 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp122 = icmp sgt i32 %inc121, %104
  br i1 %cmp122, label %land.lhs.true.124, label %if.end.128

land.lhs.true.124:                                ; preds = %sw.epilog.118
  %call125 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i32 0, i32 0))
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %land.lhs.true.124
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.128:                                       ; preds = %land.lhs.true.124, %sw.epilog.118
  %105 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %106 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %107 = load i64, i64* %idx.addr, align 8
  %add129 = add i64 %107, 1
  %108 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call130 = call %struct._object* @_parse_array_unicode(%struct._PyScannerObject* %105, %struct._object* %106, i64 %add129, i64* %108)
  store %struct._object* %call130, %struct._object** %res, align 8
  br label %do.body.131

do.body.131:                                      ; preds = %if.end.128
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val133, align 8
  %109 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val133, align 8
  %_value138 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %109, i32 0, i32 0
  store i8** %_value138, i8*** %volatile_data137, align 8
  store i32 0, i32* %order140, align 4
  %110 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val133, align 8
  %111 = bitcast %struct._Py_atomic_address* %110 to i8*
  %112 = load i32, i32* %order140, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %111, i32 %112)
  %113 = load i32, i32* %order140, align 4
  switch i32 %113, label %sw.default.142 [
    i32 2, label %sw.bb.141
    i32 3, label %sw.bb.141
    i32 4, label %sw.bb.141
  ]

sw.bb.141:                                        ; preds = %do.body.131, %do.body.131, %do.body.131
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.143

sw.default.142:                                   ; preds = %do.body.131
  br label %sw.epilog.143

sw.epilog.143:                                    ; preds = %sw.default.142, %sw.bb.141
  %114 = load i8**, i8*** %volatile_data137, align 8
  %115 = load volatile i8*, i8** %114, align 8
  store i8* %115, i8** %result135, align 8
  %116 = load i32, i32* %order140, align 4
  switch i32 %116, label %sw.default.145 [
    i32 1, label %sw.bb.144
    i32 3, label %sw.bb.144
    i32 4, label %sw.bb.144
  ]

sw.bb.144:                                        ; preds = %sw.epilog.143, %sw.epilog.143, %sw.epilog.143
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.146

sw.default.145:                                   ; preds = %sw.epilog.143
  br label %sw.epilog.146

sw.epilog.146:                                    ; preds = %sw.default.145, %sw.bb.144
  %117 = load i8*, i8** %result135, align 8
  store i8* %117, i8** %tmp147
  %118 = load i8*, i8** %tmp147
  %119 = bitcast i8* %118 to %struct._ts*
  %recursion_depth148 = getelementptr inbounds %struct._ts, %struct._ts* %119, i32 0, i32 4
  %120 = load i32, i32* %recursion_depth148, align 4
  %dec149 = add i32 %120, -1
  store i32 %dec149, i32* %recursion_depth148, align 4
  %121 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp150 = icmp sgt i32 %121, 100
  br i1 %cmp150, label %cond.true.152, label %cond.false.154

cond.true.152:                                    ; preds = %sw.epilog.146
  %122 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub153 = sub i32 %122, 50
  br label %cond.end.157

cond.false.154:                                   ; preds = %sw.epilog.146
  %123 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr155 = ashr i32 %123, 2
  %mul156 = mul i32 3, %shr155
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.154, %cond.true.152
  %cond158 = phi i32 [ %sub153, %cond.true.152 ], [ %mul156, %cond.false.154 ]
  %cmp159 = icmp slt i32 %dec149, %cond158
  br i1 %cmp159, label %if.then.161, label %if.end.179

if.then.161:                                      ; preds = %cond.end.157
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val163, align 8
  %124 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val163, align 8
  %_value168 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %124, i32 0, i32 0
  store i8** %_value168, i8*** %volatile_data167, align 8
  store i32 0, i32* %order170, align 4
  %125 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val163, align 8
  %126 = bitcast %struct._Py_atomic_address* %125 to i8*
  %127 = load i32, i32* %order170, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %126, i32 %127)
  %128 = load i32, i32* %order170, align 4
  switch i32 %128, label %sw.default.172 [
    i32 2, label %sw.bb.171
    i32 3, label %sw.bb.171
    i32 4, label %sw.bb.171
  ]

sw.bb.171:                                        ; preds = %if.then.161, %if.then.161, %if.then.161
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.173

sw.default.172:                                   ; preds = %if.then.161
  br label %sw.epilog.173

sw.epilog.173:                                    ; preds = %sw.default.172, %sw.bb.171
  %129 = load i8**, i8*** %volatile_data167, align 8
  %130 = load volatile i8*, i8** %129, align 8
  store i8* %130, i8** %result165, align 8
  %131 = load i32, i32* %order170, align 4
  switch i32 %131, label %sw.default.175 [
    i32 1, label %sw.bb.174
    i32 3, label %sw.bb.174
    i32 4, label %sw.bb.174
  ]

sw.bb.174:                                        ; preds = %sw.epilog.173, %sw.epilog.173, %sw.epilog.173
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.176

sw.default.175:                                   ; preds = %sw.epilog.173
  br label %sw.epilog.176

sw.epilog.176:                                    ; preds = %sw.default.175, %sw.bb.174
  %132 = load i8*, i8** %result165, align 8
  store i8* %132, i8** %tmp177
  %133 = load i8*, i8** %tmp177
  %134 = bitcast i8* %133 to %struct._ts*
  %overflowed178 = getelementptr inbounds %struct._ts, %struct._ts* %134, i32 0, i32 5
  store i8 0, i8* %overflowed178, align 1
  br label %if.end.179

if.end.179:                                       ; preds = %sw.epilog.176, %cond.end.157
  br label %do.end.180

do.end.180:                                       ; preds = %if.end.179
  %135 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %135, %struct._object** %retval
  br label %return

sw.bb.181:                                        ; preds = %cond.end.43
  %136 = load i64, i64* %idx.addr, align 8
  %add182 = add i64 %136, 3
  %137 = load i64, i64* %length, align 8
  %cmp183 = icmp slt i64 %add182, %137
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.257

land.lhs.true.185:                                ; preds = %sw.bb.181
  %138 = load i32, i32* %kind, align 4
  %cmp186 = icmp eq i32 %138, 1
  br i1 %cmp186, label %cond.true.188, label %cond.false.192

cond.true.188:                                    ; preds = %land.lhs.true.185
  %139 = load i64, i64* %idx.addr, align 8
  %add189 = add i64 %139, 1
  %140 = load i8*, i8** %str, align 8
  %arrayidx190 = getelementptr i8, i8* %140, i64 %add189
  %141 = load i8, i8* %arrayidx190, align 1
  %conv191 = zext i8 %141 to i32
  br label %cond.end.204

cond.false.192:                                   ; preds = %land.lhs.true.185
  %142 = load i32, i32* %kind, align 4
  %cmp193 = icmp eq i32 %142, 2
  br i1 %cmp193, label %cond.true.195, label %cond.false.199

cond.true.195:                                    ; preds = %cond.false.192
  %143 = load i64, i64* %idx.addr, align 8
  %add196 = add i64 %143, 1
  %144 = load i8*, i8** %str, align 8
  %145 = bitcast i8* %144 to i16*
  %arrayidx197 = getelementptr i16, i16* %145, i64 %add196
  %146 = load i16, i16* %arrayidx197, align 2
  %conv198 = zext i16 %146 to i32
  br label %cond.end.202

cond.false.199:                                   ; preds = %cond.false.192
  %147 = load i64, i64* %idx.addr, align 8
  %add200 = add i64 %147, 1
  %148 = load i8*, i8** %str, align 8
  %149 = bitcast i8* %148 to i32*
  %arrayidx201 = getelementptr i32, i32* %149, i64 %add200
  %150 = load i32, i32* %arrayidx201, align 4
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.199, %cond.true.195
  %cond203 = phi i32 [ %conv198, %cond.true.195 ], [ %150, %cond.false.199 ]
  br label %cond.end.204

cond.end.204:                                     ; preds = %cond.end.202, %cond.true.188
  %cond205 = phi i32 [ %conv191, %cond.true.188 ], [ %cond203, %cond.end.202 ]
  %cmp206 = icmp eq i32 %cond205, 117
  br i1 %cmp206, label %land.lhs.true.208, label %if.end.257

land.lhs.true.208:                                ; preds = %cond.end.204
  %151 = load i32, i32* %kind, align 4
  %cmp209 = icmp eq i32 %151, 1
  br i1 %cmp209, label %cond.true.211, label %cond.false.215

cond.true.211:                                    ; preds = %land.lhs.true.208
  %152 = load i64, i64* %idx.addr, align 8
  %add212 = add i64 %152, 2
  %153 = load i8*, i8** %str, align 8
  %arrayidx213 = getelementptr i8, i8* %153, i64 %add212
  %154 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %154 to i32
  br label %cond.end.227

cond.false.215:                                   ; preds = %land.lhs.true.208
  %155 = load i32, i32* %kind, align 4
  %cmp216 = icmp eq i32 %155, 2
  br i1 %cmp216, label %cond.true.218, label %cond.false.222

cond.true.218:                                    ; preds = %cond.false.215
  %156 = load i64, i64* %idx.addr, align 8
  %add219 = add i64 %156, 2
  %157 = load i8*, i8** %str, align 8
  %158 = bitcast i8* %157 to i16*
  %arrayidx220 = getelementptr i16, i16* %158, i64 %add219
  %159 = load i16, i16* %arrayidx220, align 2
  %conv221 = zext i16 %159 to i32
  br label %cond.end.225

cond.false.222:                                   ; preds = %cond.false.215
  %160 = load i64, i64* %idx.addr, align 8
  %add223 = add i64 %160, 2
  %161 = load i8*, i8** %str, align 8
  %162 = bitcast i8* %161 to i32*
  %arrayidx224 = getelementptr i32, i32* %162, i64 %add223
  %163 = load i32, i32* %arrayidx224, align 4
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.222, %cond.true.218
  %cond226 = phi i32 [ %conv221, %cond.true.218 ], [ %163, %cond.false.222 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.true.211
  %cond228 = phi i32 [ %conv214, %cond.true.211 ], [ %cond226, %cond.end.225 ]
  %cmp229 = icmp eq i32 %cond228, 108
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.257

land.lhs.true.231:                                ; preds = %cond.end.227
  %164 = load i32, i32* %kind, align 4
  %cmp232 = icmp eq i32 %164, 1
  br i1 %cmp232, label %cond.true.234, label %cond.false.238

cond.true.234:                                    ; preds = %land.lhs.true.231
  %165 = load i64, i64* %idx.addr, align 8
  %add235 = add i64 %165, 3
  %166 = load i8*, i8** %str, align 8
  %arrayidx236 = getelementptr i8, i8* %166, i64 %add235
  %167 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %167 to i32
  br label %cond.end.250

cond.false.238:                                   ; preds = %land.lhs.true.231
  %168 = load i32, i32* %kind, align 4
  %cmp239 = icmp eq i32 %168, 2
  br i1 %cmp239, label %cond.true.241, label %cond.false.245

cond.true.241:                                    ; preds = %cond.false.238
  %169 = load i64, i64* %idx.addr, align 8
  %add242 = add i64 %169, 3
  %170 = load i8*, i8** %str, align 8
  %171 = bitcast i8* %170 to i16*
  %arrayidx243 = getelementptr i16, i16* %171, i64 %add242
  %172 = load i16, i16* %arrayidx243, align 2
  %conv244 = zext i16 %172 to i32
  br label %cond.end.248

cond.false.245:                                   ; preds = %cond.false.238
  %173 = load i64, i64* %idx.addr, align 8
  %add246 = add i64 %173, 3
  %174 = load i8*, i8** %str, align 8
  %175 = bitcast i8* %174 to i32*
  %arrayidx247 = getelementptr i32, i32* %175, i64 %add246
  %176 = load i32, i32* %arrayidx247, align 4
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.false.245, %cond.true.241
  %cond249 = phi i32 [ %conv244, %cond.true.241 ], [ %176, %cond.false.245 ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %cond.true.234
  %cond251 = phi i32 [ %conv237, %cond.true.234 ], [ %cond249, %cond.end.248 ]
  %cmp252 = icmp eq i32 %cond251, 108
  br i1 %cmp252, label %if.then.254, label %if.end.257

if.then.254:                                      ; preds = %cond.end.250
  %177 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc255 = add i64 %177, 1
  store i64 %inc255, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %178 = load i64, i64* %idx.addr, align 8
  %add256 = add i64 %178, 4
  %179 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %add256, i64* %179, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.257:                                       ; preds = %cond.end.250, %cond.end.227, %cond.end.204, %sw.bb.181
  br label %sw.epilog.847

sw.bb.258:                                        ; preds = %cond.end.43
  %180 = load i64, i64* %idx.addr, align 8
  %add259 = add i64 %180, 3
  %181 = load i64, i64* %length, align 8
  %cmp260 = icmp slt i64 %add259, %181
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.334

land.lhs.true.262:                                ; preds = %sw.bb.258
  %182 = load i32, i32* %kind, align 4
  %cmp263 = icmp eq i32 %182, 1
  br i1 %cmp263, label %cond.true.265, label %cond.false.269

cond.true.265:                                    ; preds = %land.lhs.true.262
  %183 = load i64, i64* %idx.addr, align 8
  %add266 = add i64 %183, 1
  %184 = load i8*, i8** %str, align 8
  %arrayidx267 = getelementptr i8, i8* %184, i64 %add266
  %185 = load i8, i8* %arrayidx267, align 1
  %conv268 = zext i8 %185 to i32
  br label %cond.end.281

cond.false.269:                                   ; preds = %land.lhs.true.262
  %186 = load i32, i32* %kind, align 4
  %cmp270 = icmp eq i32 %186, 2
  br i1 %cmp270, label %cond.true.272, label %cond.false.276

cond.true.272:                                    ; preds = %cond.false.269
  %187 = load i64, i64* %idx.addr, align 8
  %add273 = add i64 %187, 1
  %188 = load i8*, i8** %str, align 8
  %189 = bitcast i8* %188 to i16*
  %arrayidx274 = getelementptr i16, i16* %189, i64 %add273
  %190 = load i16, i16* %arrayidx274, align 2
  %conv275 = zext i16 %190 to i32
  br label %cond.end.279

cond.false.276:                                   ; preds = %cond.false.269
  %191 = load i64, i64* %idx.addr, align 8
  %add277 = add i64 %191, 1
  %192 = load i8*, i8** %str, align 8
  %193 = bitcast i8* %192 to i32*
  %arrayidx278 = getelementptr i32, i32* %193, i64 %add277
  %194 = load i32, i32* %arrayidx278, align 4
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.276, %cond.true.272
  %cond280 = phi i32 [ %conv275, %cond.true.272 ], [ %194, %cond.false.276 ]
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.end.279, %cond.true.265
  %cond282 = phi i32 [ %conv268, %cond.true.265 ], [ %cond280, %cond.end.279 ]
  %cmp283 = icmp eq i32 %cond282, 114
  br i1 %cmp283, label %land.lhs.true.285, label %if.end.334

land.lhs.true.285:                                ; preds = %cond.end.281
  %195 = load i32, i32* %kind, align 4
  %cmp286 = icmp eq i32 %195, 1
  br i1 %cmp286, label %cond.true.288, label %cond.false.292

cond.true.288:                                    ; preds = %land.lhs.true.285
  %196 = load i64, i64* %idx.addr, align 8
  %add289 = add i64 %196, 2
  %197 = load i8*, i8** %str, align 8
  %arrayidx290 = getelementptr i8, i8* %197, i64 %add289
  %198 = load i8, i8* %arrayidx290, align 1
  %conv291 = zext i8 %198 to i32
  br label %cond.end.304

cond.false.292:                                   ; preds = %land.lhs.true.285
  %199 = load i32, i32* %kind, align 4
  %cmp293 = icmp eq i32 %199, 2
  br i1 %cmp293, label %cond.true.295, label %cond.false.299

cond.true.295:                                    ; preds = %cond.false.292
  %200 = load i64, i64* %idx.addr, align 8
  %add296 = add i64 %200, 2
  %201 = load i8*, i8** %str, align 8
  %202 = bitcast i8* %201 to i16*
  %arrayidx297 = getelementptr i16, i16* %202, i64 %add296
  %203 = load i16, i16* %arrayidx297, align 2
  %conv298 = zext i16 %203 to i32
  br label %cond.end.302

cond.false.299:                                   ; preds = %cond.false.292
  %204 = load i64, i64* %idx.addr, align 8
  %add300 = add i64 %204, 2
  %205 = load i8*, i8** %str, align 8
  %206 = bitcast i8* %205 to i32*
  %arrayidx301 = getelementptr i32, i32* %206, i64 %add300
  %207 = load i32, i32* %arrayidx301, align 4
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.299, %cond.true.295
  %cond303 = phi i32 [ %conv298, %cond.true.295 ], [ %207, %cond.false.299 ]
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.end.302, %cond.true.288
  %cond305 = phi i32 [ %conv291, %cond.true.288 ], [ %cond303, %cond.end.302 ]
  %cmp306 = icmp eq i32 %cond305, 117
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.334

land.lhs.true.308:                                ; preds = %cond.end.304
  %208 = load i32, i32* %kind, align 4
  %cmp309 = icmp eq i32 %208, 1
  br i1 %cmp309, label %cond.true.311, label %cond.false.315

cond.true.311:                                    ; preds = %land.lhs.true.308
  %209 = load i64, i64* %idx.addr, align 8
  %add312 = add i64 %209, 3
  %210 = load i8*, i8** %str, align 8
  %arrayidx313 = getelementptr i8, i8* %210, i64 %add312
  %211 = load i8, i8* %arrayidx313, align 1
  %conv314 = zext i8 %211 to i32
  br label %cond.end.327

cond.false.315:                                   ; preds = %land.lhs.true.308
  %212 = load i32, i32* %kind, align 4
  %cmp316 = icmp eq i32 %212, 2
  br i1 %cmp316, label %cond.true.318, label %cond.false.322

cond.true.318:                                    ; preds = %cond.false.315
  %213 = load i64, i64* %idx.addr, align 8
  %add319 = add i64 %213, 3
  %214 = load i8*, i8** %str, align 8
  %215 = bitcast i8* %214 to i16*
  %arrayidx320 = getelementptr i16, i16* %215, i64 %add319
  %216 = load i16, i16* %arrayidx320, align 2
  %conv321 = zext i16 %216 to i32
  br label %cond.end.325

cond.false.322:                                   ; preds = %cond.false.315
  %217 = load i64, i64* %idx.addr, align 8
  %add323 = add i64 %217, 3
  %218 = load i8*, i8** %str, align 8
  %219 = bitcast i8* %218 to i32*
  %arrayidx324 = getelementptr i32, i32* %219, i64 %add323
  %220 = load i32, i32* %arrayidx324, align 4
  br label %cond.end.325

cond.end.325:                                     ; preds = %cond.false.322, %cond.true.318
  %cond326 = phi i32 [ %conv321, %cond.true.318 ], [ %220, %cond.false.322 ]
  br label %cond.end.327

cond.end.327:                                     ; preds = %cond.end.325, %cond.true.311
  %cond328 = phi i32 [ %conv314, %cond.true.311 ], [ %cond326, %cond.end.325 ]
  %cmp329 = icmp eq i32 %cond328, 101
  br i1 %cmp329, label %if.then.331, label %if.end.334

if.then.331:                                      ; preds = %cond.end.327
  %221 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc332 = add i64 %221, 1
  store i64 %inc332, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %222 = load i64, i64* %idx.addr, align 8
  %add333 = add i64 %222, 4
  %223 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %add333, i64* %223, align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.334:                                       ; preds = %cond.end.327, %cond.end.304, %cond.end.281, %sw.bb.258
  br label %sw.epilog.847

sw.bb.335:                                        ; preds = %cond.end.43
  %224 = load i64, i64* %idx.addr, align 8
  %add336 = add i64 %224, 4
  %225 = load i64, i64* %length, align 8
  %cmp337 = icmp slt i64 %add336, %225
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.434

land.lhs.true.339:                                ; preds = %sw.bb.335
  %226 = load i32, i32* %kind, align 4
  %cmp340 = icmp eq i32 %226, 1
  br i1 %cmp340, label %cond.true.342, label %cond.false.346

cond.true.342:                                    ; preds = %land.lhs.true.339
  %227 = load i64, i64* %idx.addr, align 8
  %add343 = add i64 %227, 1
  %228 = load i8*, i8** %str, align 8
  %arrayidx344 = getelementptr i8, i8* %228, i64 %add343
  %229 = load i8, i8* %arrayidx344, align 1
  %conv345 = zext i8 %229 to i32
  br label %cond.end.358

cond.false.346:                                   ; preds = %land.lhs.true.339
  %230 = load i32, i32* %kind, align 4
  %cmp347 = icmp eq i32 %230, 2
  br i1 %cmp347, label %cond.true.349, label %cond.false.353

cond.true.349:                                    ; preds = %cond.false.346
  %231 = load i64, i64* %idx.addr, align 8
  %add350 = add i64 %231, 1
  %232 = load i8*, i8** %str, align 8
  %233 = bitcast i8* %232 to i16*
  %arrayidx351 = getelementptr i16, i16* %233, i64 %add350
  %234 = load i16, i16* %arrayidx351, align 2
  %conv352 = zext i16 %234 to i32
  br label %cond.end.356

cond.false.353:                                   ; preds = %cond.false.346
  %235 = load i64, i64* %idx.addr, align 8
  %add354 = add i64 %235, 1
  %236 = load i8*, i8** %str, align 8
  %237 = bitcast i8* %236 to i32*
  %arrayidx355 = getelementptr i32, i32* %237, i64 %add354
  %238 = load i32, i32* %arrayidx355, align 4
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.353, %cond.true.349
  %cond357 = phi i32 [ %conv352, %cond.true.349 ], [ %238, %cond.false.353 ]
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.end.356, %cond.true.342
  %cond359 = phi i32 [ %conv345, %cond.true.342 ], [ %cond357, %cond.end.356 ]
  %cmp360 = icmp eq i32 %cond359, 97
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.434

land.lhs.true.362:                                ; preds = %cond.end.358
  %239 = load i32, i32* %kind, align 4
  %cmp363 = icmp eq i32 %239, 1
  br i1 %cmp363, label %cond.true.365, label %cond.false.369

cond.true.365:                                    ; preds = %land.lhs.true.362
  %240 = load i64, i64* %idx.addr, align 8
  %add366 = add i64 %240, 2
  %241 = load i8*, i8** %str, align 8
  %arrayidx367 = getelementptr i8, i8* %241, i64 %add366
  %242 = load i8, i8* %arrayidx367, align 1
  %conv368 = zext i8 %242 to i32
  br label %cond.end.381

cond.false.369:                                   ; preds = %land.lhs.true.362
  %243 = load i32, i32* %kind, align 4
  %cmp370 = icmp eq i32 %243, 2
  br i1 %cmp370, label %cond.true.372, label %cond.false.376

cond.true.372:                                    ; preds = %cond.false.369
  %244 = load i64, i64* %idx.addr, align 8
  %add373 = add i64 %244, 2
  %245 = load i8*, i8** %str, align 8
  %246 = bitcast i8* %245 to i16*
  %arrayidx374 = getelementptr i16, i16* %246, i64 %add373
  %247 = load i16, i16* %arrayidx374, align 2
  %conv375 = zext i16 %247 to i32
  br label %cond.end.379

cond.false.376:                                   ; preds = %cond.false.369
  %248 = load i64, i64* %idx.addr, align 8
  %add377 = add i64 %248, 2
  %249 = load i8*, i8** %str, align 8
  %250 = bitcast i8* %249 to i32*
  %arrayidx378 = getelementptr i32, i32* %250, i64 %add377
  %251 = load i32, i32* %arrayidx378, align 4
  br label %cond.end.379

cond.end.379:                                     ; preds = %cond.false.376, %cond.true.372
  %cond380 = phi i32 [ %conv375, %cond.true.372 ], [ %251, %cond.false.376 ]
  br label %cond.end.381

cond.end.381:                                     ; preds = %cond.end.379, %cond.true.365
  %cond382 = phi i32 [ %conv368, %cond.true.365 ], [ %cond380, %cond.end.379 ]
  %cmp383 = icmp eq i32 %cond382, 108
  br i1 %cmp383, label %land.lhs.true.385, label %if.end.434

land.lhs.true.385:                                ; preds = %cond.end.381
  %252 = load i32, i32* %kind, align 4
  %cmp386 = icmp eq i32 %252, 1
  br i1 %cmp386, label %cond.true.388, label %cond.false.392

cond.true.388:                                    ; preds = %land.lhs.true.385
  %253 = load i64, i64* %idx.addr, align 8
  %add389 = add i64 %253, 3
  %254 = load i8*, i8** %str, align 8
  %arrayidx390 = getelementptr i8, i8* %254, i64 %add389
  %255 = load i8, i8* %arrayidx390, align 1
  %conv391 = zext i8 %255 to i32
  br label %cond.end.404

cond.false.392:                                   ; preds = %land.lhs.true.385
  %256 = load i32, i32* %kind, align 4
  %cmp393 = icmp eq i32 %256, 2
  br i1 %cmp393, label %cond.true.395, label %cond.false.399

cond.true.395:                                    ; preds = %cond.false.392
  %257 = load i64, i64* %idx.addr, align 8
  %add396 = add i64 %257, 3
  %258 = load i8*, i8** %str, align 8
  %259 = bitcast i8* %258 to i16*
  %arrayidx397 = getelementptr i16, i16* %259, i64 %add396
  %260 = load i16, i16* %arrayidx397, align 2
  %conv398 = zext i16 %260 to i32
  br label %cond.end.402

cond.false.399:                                   ; preds = %cond.false.392
  %261 = load i64, i64* %idx.addr, align 8
  %add400 = add i64 %261, 3
  %262 = load i8*, i8** %str, align 8
  %263 = bitcast i8* %262 to i32*
  %arrayidx401 = getelementptr i32, i32* %263, i64 %add400
  %264 = load i32, i32* %arrayidx401, align 4
  br label %cond.end.402

cond.end.402:                                     ; preds = %cond.false.399, %cond.true.395
  %cond403 = phi i32 [ %conv398, %cond.true.395 ], [ %264, %cond.false.399 ]
  br label %cond.end.404

cond.end.404:                                     ; preds = %cond.end.402, %cond.true.388
  %cond405 = phi i32 [ %conv391, %cond.true.388 ], [ %cond403, %cond.end.402 ]
  %cmp406 = icmp eq i32 %cond405, 115
  br i1 %cmp406, label %land.lhs.true.408, label %if.end.434

land.lhs.true.408:                                ; preds = %cond.end.404
  %265 = load i32, i32* %kind, align 4
  %cmp409 = icmp eq i32 %265, 1
  br i1 %cmp409, label %cond.true.411, label %cond.false.415

cond.true.411:                                    ; preds = %land.lhs.true.408
  %266 = load i64, i64* %idx.addr, align 8
  %add412 = add i64 %266, 4
  %267 = load i8*, i8** %str, align 8
  %arrayidx413 = getelementptr i8, i8* %267, i64 %add412
  %268 = load i8, i8* %arrayidx413, align 1
  %conv414 = zext i8 %268 to i32
  br label %cond.end.427

cond.false.415:                                   ; preds = %land.lhs.true.408
  %269 = load i32, i32* %kind, align 4
  %cmp416 = icmp eq i32 %269, 2
  br i1 %cmp416, label %cond.true.418, label %cond.false.422

cond.true.418:                                    ; preds = %cond.false.415
  %270 = load i64, i64* %idx.addr, align 8
  %add419 = add i64 %270, 4
  %271 = load i8*, i8** %str, align 8
  %272 = bitcast i8* %271 to i16*
  %arrayidx420 = getelementptr i16, i16* %272, i64 %add419
  %273 = load i16, i16* %arrayidx420, align 2
  %conv421 = zext i16 %273 to i32
  br label %cond.end.425

cond.false.422:                                   ; preds = %cond.false.415
  %274 = load i64, i64* %idx.addr, align 8
  %add423 = add i64 %274, 4
  %275 = load i8*, i8** %str, align 8
  %276 = bitcast i8* %275 to i32*
  %arrayidx424 = getelementptr i32, i32* %276, i64 %add423
  %277 = load i32, i32* %arrayidx424, align 4
  br label %cond.end.425

cond.end.425:                                     ; preds = %cond.false.422, %cond.true.418
  %cond426 = phi i32 [ %conv421, %cond.true.418 ], [ %277, %cond.false.422 ]
  br label %cond.end.427

cond.end.427:                                     ; preds = %cond.end.425, %cond.true.411
  %cond428 = phi i32 [ %conv414, %cond.true.411 ], [ %cond426, %cond.end.425 ]
  %cmp429 = icmp eq i32 %cond428, 101
  br i1 %cmp429, label %if.then.431, label %if.end.434

if.then.431:                                      ; preds = %cond.end.427
  %278 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc432 = add i64 %278, 1
  store i64 %inc432, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %279 = load i64, i64* %idx.addr, align 8
  %add433 = add i64 %279, 5
  %280 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %add433, i64* %280, align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.434:                                       ; preds = %cond.end.427, %cond.end.404, %cond.end.381, %cond.end.358, %sw.bb.335
  br label %sw.epilog.847

sw.bb.435:                                        ; preds = %cond.end.43
  %281 = load i64, i64* %idx.addr, align 8
  %add436 = add i64 %281, 2
  %282 = load i64, i64* %length, align 8
  %cmp437 = icmp slt i64 %add436, %282
  br i1 %cmp437, label %land.lhs.true.439, label %if.end.487

land.lhs.true.439:                                ; preds = %sw.bb.435
  %283 = load i32, i32* %kind, align 4
  %cmp440 = icmp eq i32 %283, 1
  br i1 %cmp440, label %cond.true.442, label %cond.false.446

cond.true.442:                                    ; preds = %land.lhs.true.439
  %284 = load i64, i64* %idx.addr, align 8
  %add443 = add i64 %284, 1
  %285 = load i8*, i8** %str, align 8
  %arrayidx444 = getelementptr i8, i8* %285, i64 %add443
  %286 = load i8, i8* %arrayidx444, align 1
  %conv445 = zext i8 %286 to i32
  br label %cond.end.458

cond.false.446:                                   ; preds = %land.lhs.true.439
  %287 = load i32, i32* %kind, align 4
  %cmp447 = icmp eq i32 %287, 2
  br i1 %cmp447, label %cond.true.449, label %cond.false.453

cond.true.449:                                    ; preds = %cond.false.446
  %288 = load i64, i64* %idx.addr, align 8
  %add450 = add i64 %288, 1
  %289 = load i8*, i8** %str, align 8
  %290 = bitcast i8* %289 to i16*
  %arrayidx451 = getelementptr i16, i16* %290, i64 %add450
  %291 = load i16, i16* %arrayidx451, align 2
  %conv452 = zext i16 %291 to i32
  br label %cond.end.456

cond.false.453:                                   ; preds = %cond.false.446
  %292 = load i64, i64* %idx.addr, align 8
  %add454 = add i64 %292, 1
  %293 = load i8*, i8** %str, align 8
  %294 = bitcast i8* %293 to i32*
  %arrayidx455 = getelementptr i32, i32* %294, i64 %add454
  %295 = load i32, i32* %arrayidx455, align 4
  br label %cond.end.456

cond.end.456:                                     ; preds = %cond.false.453, %cond.true.449
  %cond457 = phi i32 [ %conv452, %cond.true.449 ], [ %295, %cond.false.453 ]
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.end.456, %cond.true.442
  %cond459 = phi i32 [ %conv445, %cond.true.442 ], [ %cond457, %cond.end.456 ]
  %cmp460 = icmp eq i32 %cond459, 97
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.487

land.lhs.true.462:                                ; preds = %cond.end.458
  %296 = load i32, i32* %kind, align 4
  %cmp463 = icmp eq i32 %296, 1
  br i1 %cmp463, label %cond.true.465, label %cond.false.469

cond.true.465:                                    ; preds = %land.lhs.true.462
  %297 = load i64, i64* %idx.addr, align 8
  %add466 = add i64 %297, 2
  %298 = load i8*, i8** %str, align 8
  %arrayidx467 = getelementptr i8, i8* %298, i64 %add466
  %299 = load i8, i8* %arrayidx467, align 1
  %conv468 = zext i8 %299 to i32
  br label %cond.end.481

cond.false.469:                                   ; preds = %land.lhs.true.462
  %300 = load i32, i32* %kind, align 4
  %cmp470 = icmp eq i32 %300, 2
  br i1 %cmp470, label %cond.true.472, label %cond.false.476

cond.true.472:                                    ; preds = %cond.false.469
  %301 = load i64, i64* %idx.addr, align 8
  %add473 = add i64 %301, 2
  %302 = load i8*, i8** %str, align 8
  %303 = bitcast i8* %302 to i16*
  %arrayidx474 = getelementptr i16, i16* %303, i64 %add473
  %304 = load i16, i16* %arrayidx474, align 2
  %conv475 = zext i16 %304 to i32
  br label %cond.end.479

cond.false.476:                                   ; preds = %cond.false.469
  %305 = load i64, i64* %idx.addr, align 8
  %add477 = add i64 %305, 2
  %306 = load i8*, i8** %str, align 8
  %307 = bitcast i8* %306 to i32*
  %arrayidx478 = getelementptr i32, i32* %307, i64 %add477
  %308 = load i32, i32* %arrayidx478, align 4
  br label %cond.end.479

cond.end.479:                                     ; preds = %cond.false.476, %cond.true.472
  %cond480 = phi i32 [ %conv475, %cond.true.472 ], [ %308, %cond.false.476 ]
  br label %cond.end.481

cond.end.481:                                     ; preds = %cond.end.479, %cond.true.465
  %cond482 = phi i32 [ %conv468, %cond.true.465 ], [ %cond480, %cond.end.479 ]
  %cmp483 = icmp eq i32 %cond482, 78
  br i1 %cmp483, label %if.then.485, label %if.end.487

if.then.485:                                      ; preds = %cond.end.481
  %309 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %310 = load i64, i64* %idx.addr, align 8
  %311 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call486 = call %struct._object* @_parse_constant(%struct._PyScannerObject* %309, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i64 %310, i64* %311)
  store %struct._object* %call486, %struct._object** %retval
  br label %return

if.end.487:                                       ; preds = %cond.end.481, %cond.end.458, %sw.bb.435
  br label %sw.epilog.847

sw.bb.488:                                        ; preds = %cond.end.43
  %312 = load i64, i64* %idx.addr, align 8
  %add489 = add i64 %312, 7
  %313 = load i64, i64* %length, align 8
  %cmp490 = icmp slt i64 %add489, %313
  br i1 %cmp490, label %land.lhs.true.492, label %if.end.655

land.lhs.true.492:                                ; preds = %sw.bb.488
  %314 = load i32, i32* %kind, align 4
  %cmp493 = icmp eq i32 %314, 1
  br i1 %cmp493, label %cond.true.495, label %cond.false.499

cond.true.495:                                    ; preds = %land.lhs.true.492
  %315 = load i64, i64* %idx.addr, align 8
  %add496 = add i64 %315, 1
  %316 = load i8*, i8** %str, align 8
  %arrayidx497 = getelementptr i8, i8* %316, i64 %add496
  %317 = load i8, i8* %arrayidx497, align 1
  %conv498 = zext i8 %317 to i32
  br label %cond.end.511

cond.false.499:                                   ; preds = %land.lhs.true.492
  %318 = load i32, i32* %kind, align 4
  %cmp500 = icmp eq i32 %318, 2
  br i1 %cmp500, label %cond.true.502, label %cond.false.506

cond.true.502:                                    ; preds = %cond.false.499
  %319 = load i64, i64* %idx.addr, align 8
  %add503 = add i64 %319, 1
  %320 = load i8*, i8** %str, align 8
  %321 = bitcast i8* %320 to i16*
  %arrayidx504 = getelementptr i16, i16* %321, i64 %add503
  %322 = load i16, i16* %arrayidx504, align 2
  %conv505 = zext i16 %322 to i32
  br label %cond.end.509

cond.false.506:                                   ; preds = %cond.false.499
  %323 = load i64, i64* %idx.addr, align 8
  %add507 = add i64 %323, 1
  %324 = load i8*, i8** %str, align 8
  %325 = bitcast i8* %324 to i32*
  %arrayidx508 = getelementptr i32, i32* %325, i64 %add507
  %326 = load i32, i32* %arrayidx508, align 4
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.506, %cond.true.502
  %cond510 = phi i32 [ %conv505, %cond.true.502 ], [ %326, %cond.false.506 ]
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.end.509, %cond.true.495
  %cond512 = phi i32 [ %conv498, %cond.true.495 ], [ %cond510, %cond.end.509 ]
  %cmp513 = icmp eq i32 %cond512, 110
  br i1 %cmp513, label %land.lhs.true.515, label %if.end.655

land.lhs.true.515:                                ; preds = %cond.end.511
  %327 = load i32, i32* %kind, align 4
  %cmp516 = icmp eq i32 %327, 1
  br i1 %cmp516, label %cond.true.518, label %cond.false.522

cond.true.518:                                    ; preds = %land.lhs.true.515
  %328 = load i64, i64* %idx.addr, align 8
  %add519 = add i64 %328, 2
  %329 = load i8*, i8** %str, align 8
  %arrayidx520 = getelementptr i8, i8* %329, i64 %add519
  %330 = load i8, i8* %arrayidx520, align 1
  %conv521 = zext i8 %330 to i32
  br label %cond.end.534

cond.false.522:                                   ; preds = %land.lhs.true.515
  %331 = load i32, i32* %kind, align 4
  %cmp523 = icmp eq i32 %331, 2
  br i1 %cmp523, label %cond.true.525, label %cond.false.529

cond.true.525:                                    ; preds = %cond.false.522
  %332 = load i64, i64* %idx.addr, align 8
  %add526 = add i64 %332, 2
  %333 = load i8*, i8** %str, align 8
  %334 = bitcast i8* %333 to i16*
  %arrayidx527 = getelementptr i16, i16* %334, i64 %add526
  %335 = load i16, i16* %arrayidx527, align 2
  %conv528 = zext i16 %335 to i32
  br label %cond.end.532

cond.false.529:                                   ; preds = %cond.false.522
  %336 = load i64, i64* %idx.addr, align 8
  %add530 = add i64 %336, 2
  %337 = load i8*, i8** %str, align 8
  %338 = bitcast i8* %337 to i32*
  %arrayidx531 = getelementptr i32, i32* %338, i64 %add530
  %339 = load i32, i32* %arrayidx531, align 4
  br label %cond.end.532

cond.end.532:                                     ; preds = %cond.false.529, %cond.true.525
  %cond533 = phi i32 [ %conv528, %cond.true.525 ], [ %339, %cond.false.529 ]
  br label %cond.end.534

cond.end.534:                                     ; preds = %cond.end.532, %cond.true.518
  %cond535 = phi i32 [ %conv521, %cond.true.518 ], [ %cond533, %cond.end.532 ]
  %cmp536 = icmp eq i32 %cond535, 102
  br i1 %cmp536, label %land.lhs.true.538, label %if.end.655

land.lhs.true.538:                                ; preds = %cond.end.534
  %340 = load i32, i32* %kind, align 4
  %cmp539 = icmp eq i32 %340, 1
  br i1 %cmp539, label %cond.true.541, label %cond.false.545

cond.true.541:                                    ; preds = %land.lhs.true.538
  %341 = load i64, i64* %idx.addr, align 8
  %add542 = add i64 %341, 3
  %342 = load i8*, i8** %str, align 8
  %arrayidx543 = getelementptr i8, i8* %342, i64 %add542
  %343 = load i8, i8* %arrayidx543, align 1
  %conv544 = zext i8 %343 to i32
  br label %cond.end.557

cond.false.545:                                   ; preds = %land.lhs.true.538
  %344 = load i32, i32* %kind, align 4
  %cmp546 = icmp eq i32 %344, 2
  br i1 %cmp546, label %cond.true.548, label %cond.false.552

cond.true.548:                                    ; preds = %cond.false.545
  %345 = load i64, i64* %idx.addr, align 8
  %add549 = add i64 %345, 3
  %346 = load i8*, i8** %str, align 8
  %347 = bitcast i8* %346 to i16*
  %arrayidx550 = getelementptr i16, i16* %347, i64 %add549
  %348 = load i16, i16* %arrayidx550, align 2
  %conv551 = zext i16 %348 to i32
  br label %cond.end.555

cond.false.552:                                   ; preds = %cond.false.545
  %349 = load i64, i64* %idx.addr, align 8
  %add553 = add i64 %349, 3
  %350 = load i8*, i8** %str, align 8
  %351 = bitcast i8* %350 to i32*
  %arrayidx554 = getelementptr i32, i32* %351, i64 %add553
  %352 = load i32, i32* %arrayidx554, align 4
  br label %cond.end.555

cond.end.555:                                     ; preds = %cond.false.552, %cond.true.548
  %cond556 = phi i32 [ %conv551, %cond.true.548 ], [ %352, %cond.false.552 ]
  br label %cond.end.557

cond.end.557:                                     ; preds = %cond.end.555, %cond.true.541
  %cond558 = phi i32 [ %conv544, %cond.true.541 ], [ %cond556, %cond.end.555 ]
  %cmp559 = icmp eq i32 %cond558, 105
  br i1 %cmp559, label %land.lhs.true.561, label %if.end.655

land.lhs.true.561:                                ; preds = %cond.end.557
  %353 = load i32, i32* %kind, align 4
  %cmp562 = icmp eq i32 %353, 1
  br i1 %cmp562, label %cond.true.564, label %cond.false.568

cond.true.564:                                    ; preds = %land.lhs.true.561
  %354 = load i64, i64* %idx.addr, align 8
  %add565 = add i64 %354, 4
  %355 = load i8*, i8** %str, align 8
  %arrayidx566 = getelementptr i8, i8* %355, i64 %add565
  %356 = load i8, i8* %arrayidx566, align 1
  %conv567 = zext i8 %356 to i32
  br label %cond.end.580

cond.false.568:                                   ; preds = %land.lhs.true.561
  %357 = load i32, i32* %kind, align 4
  %cmp569 = icmp eq i32 %357, 2
  br i1 %cmp569, label %cond.true.571, label %cond.false.575

cond.true.571:                                    ; preds = %cond.false.568
  %358 = load i64, i64* %idx.addr, align 8
  %add572 = add i64 %358, 4
  %359 = load i8*, i8** %str, align 8
  %360 = bitcast i8* %359 to i16*
  %arrayidx573 = getelementptr i16, i16* %360, i64 %add572
  %361 = load i16, i16* %arrayidx573, align 2
  %conv574 = zext i16 %361 to i32
  br label %cond.end.578

cond.false.575:                                   ; preds = %cond.false.568
  %362 = load i64, i64* %idx.addr, align 8
  %add576 = add i64 %362, 4
  %363 = load i8*, i8** %str, align 8
  %364 = bitcast i8* %363 to i32*
  %arrayidx577 = getelementptr i32, i32* %364, i64 %add576
  %365 = load i32, i32* %arrayidx577, align 4
  br label %cond.end.578

cond.end.578:                                     ; preds = %cond.false.575, %cond.true.571
  %cond579 = phi i32 [ %conv574, %cond.true.571 ], [ %365, %cond.false.575 ]
  br label %cond.end.580

cond.end.580:                                     ; preds = %cond.end.578, %cond.true.564
  %cond581 = phi i32 [ %conv567, %cond.true.564 ], [ %cond579, %cond.end.578 ]
  %cmp582 = icmp eq i32 %cond581, 110
  br i1 %cmp582, label %land.lhs.true.584, label %if.end.655

land.lhs.true.584:                                ; preds = %cond.end.580
  %366 = load i32, i32* %kind, align 4
  %cmp585 = icmp eq i32 %366, 1
  br i1 %cmp585, label %cond.true.587, label %cond.false.591

cond.true.587:                                    ; preds = %land.lhs.true.584
  %367 = load i64, i64* %idx.addr, align 8
  %add588 = add i64 %367, 5
  %368 = load i8*, i8** %str, align 8
  %arrayidx589 = getelementptr i8, i8* %368, i64 %add588
  %369 = load i8, i8* %arrayidx589, align 1
  %conv590 = zext i8 %369 to i32
  br label %cond.end.603

cond.false.591:                                   ; preds = %land.lhs.true.584
  %370 = load i32, i32* %kind, align 4
  %cmp592 = icmp eq i32 %370, 2
  br i1 %cmp592, label %cond.true.594, label %cond.false.598

cond.true.594:                                    ; preds = %cond.false.591
  %371 = load i64, i64* %idx.addr, align 8
  %add595 = add i64 %371, 5
  %372 = load i8*, i8** %str, align 8
  %373 = bitcast i8* %372 to i16*
  %arrayidx596 = getelementptr i16, i16* %373, i64 %add595
  %374 = load i16, i16* %arrayidx596, align 2
  %conv597 = zext i16 %374 to i32
  br label %cond.end.601

cond.false.598:                                   ; preds = %cond.false.591
  %375 = load i64, i64* %idx.addr, align 8
  %add599 = add i64 %375, 5
  %376 = load i8*, i8** %str, align 8
  %377 = bitcast i8* %376 to i32*
  %arrayidx600 = getelementptr i32, i32* %377, i64 %add599
  %378 = load i32, i32* %arrayidx600, align 4
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.598, %cond.true.594
  %cond602 = phi i32 [ %conv597, %cond.true.594 ], [ %378, %cond.false.598 ]
  br label %cond.end.603

cond.end.603:                                     ; preds = %cond.end.601, %cond.true.587
  %cond604 = phi i32 [ %conv590, %cond.true.587 ], [ %cond602, %cond.end.601 ]
  %cmp605 = icmp eq i32 %cond604, 105
  br i1 %cmp605, label %land.lhs.true.607, label %if.end.655

land.lhs.true.607:                                ; preds = %cond.end.603
  %379 = load i32, i32* %kind, align 4
  %cmp608 = icmp eq i32 %379, 1
  br i1 %cmp608, label %cond.true.610, label %cond.false.614

cond.true.610:                                    ; preds = %land.lhs.true.607
  %380 = load i64, i64* %idx.addr, align 8
  %add611 = add i64 %380, 6
  %381 = load i8*, i8** %str, align 8
  %arrayidx612 = getelementptr i8, i8* %381, i64 %add611
  %382 = load i8, i8* %arrayidx612, align 1
  %conv613 = zext i8 %382 to i32
  br label %cond.end.626

cond.false.614:                                   ; preds = %land.lhs.true.607
  %383 = load i32, i32* %kind, align 4
  %cmp615 = icmp eq i32 %383, 2
  br i1 %cmp615, label %cond.true.617, label %cond.false.621

cond.true.617:                                    ; preds = %cond.false.614
  %384 = load i64, i64* %idx.addr, align 8
  %add618 = add i64 %384, 6
  %385 = load i8*, i8** %str, align 8
  %386 = bitcast i8* %385 to i16*
  %arrayidx619 = getelementptr i16, i16* %386, i64 %add618
  %387 = load i16, i16* %arrayidx619, align 2
  %conv620 = zext i16 %387 to i32
  br label %cond.end.624

cond.false.621:                                   ; preds = %cond.false.614
  %388 = load i64, i64* %idx.addr, align 8
  %add622 = add i64 %388, 6
  %389 = load i8*, i8** %str, align 8
  %390 = bitcast i8* %389 to i32*
  %arrayidx623 = getelementptr i32, i32* %390, i64 %add622
  %391 = load i32, i32* %arrayidx623, align 4
  br label %cond.end.624

cond.end.624:                                     ; preds = %cond.false.621, %cond.true.617
  %cond625 = phi i32 [ %conv620, %cond.true.617 ], [ %391, %cond.false.621 ]
  br label %cond.end.626

cond.end.626:                                     ; preds = %cond.end.624, %cond.true.610
  %cond627 = phi i32 [ %conv613, %cond.true.610 ], [ %cond625, %cond.end.624 ]
  %cmp628 = icmp eq i32 %cond627, 116
  br i1 %cmp628, label %land.lhs.true.630, label %if.end.655

land.lhs.true.630:                                ; preds = %cond.end.626
  %392 = load i32, i32* %kind, align 4
  %cmp631 = icmp eq i32 %392, 1
  br i1 %cmp631, label %cond.true.633, label %cond.false.637

cond.true.633:                                    ; preds = %land.lhs.true.630
  %393 = load i64, i64* %idx.addr, align 8
  %add634 = add i64 %393, 7
  %394 = load i8*, i8** %str, align 8
  %arrayidx635 = getelementptr i8, i8* %394, i64 %add634
  %395 = load i8, i8* %arrayidx635, align 1
  %conv636 = zext i8 %395 to i32
  br label %cond.end.649

cond.false.637:                                   ; preds = %land.lhs.true.630
  %396 = load i32, i32* %kind, align 4
  %cmp638 = icmp eq i32 %396, 2
  br i1 %cmp638, label %cond.true.640, label %cond.false.644

cond.true.640:                                    ; preds = %cond.false.637
  %397 = load i64, i64* %idx.addr, align 8
  %add641 = add i64 %397, 7
  %398 = load i8*, i8** %str, align 8
  %399 = bitcast i8* %398 to i16*
  %arrayidx642 = getelementptr i16, i16* %399, i64 %add641
  %400 = load i16, i16* %arrayidx642, align 2
  %conv643 = zext i16 %400 to i32
  br label %cond.end.647

cond.false.644:                                   ; preds = %cond.false.637
  %401 = load i64, i64* %idx.addr, align 8
  %add645 = add i64 %401, 7
  %402 = load i8*, i8** %str, align 8
  %403 = bitcast i8* %402 to i32*
  %arrayidx646 = getelementptr i32, i32* %403, i64 %add645
  %404 = load i32, i32* %arrayidx646, align 4
  br label %cond.end.647

cond.end.647:                                     ; preds = %cond.false.644, %cond.true.640
  %cond648 = phi i32 [ %conv643, %cond.true.640 ], [ %404, %cond.false.644 ]
  br label %cond.end.649

cond.end.649:                                     ; preds = %cond.end.647, %cond.true.633
  %cond650 = phi i32 [ %conv636, %cond.true.633 ], [ %cond648, %cond.end.647 ]
  %cmp651 = icmp eq i32 %cond650, 121
  br i1 %cmp651, label %if.then.653, label %if.end.655

if.then.653:                                      ; preds = %cond.end.649
  %405 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %406 = load i64, i64* %idx.addr, align 8
  %407 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call654 = call %struct._object* @_parse_constant(%struct._PyScannerObject* %405, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i64 %406, i64* %407)
  store %struct._object* %call654, %struct._object** %retval
  br label %return

if.end.655:                                       ; preds = %cond.end.649, %cond.end.626, %cond.end.603, %cond.end.580, %cond.end.557, %cond.end.534, %cond.end.511, %sw.bb.488
  br label %sw.epilog.847

sw.bb.656:                                        ; preds = %cond.end.43
  %408 = load i64, i64* %idx.addr, align 8
  %add657 = add i64 %408, 8
  %409 = load i64, i64* %length, align 8
  %cmp658 = icmp slt i64 %add657, %409
  br i1 %cmp658, label %land.lhs.true.660, label %if.end.846

land.lhs.true.660:                                ; preds = %sw.bb.656
  %410 = load i32, i32* %kind, align 4
  %cmp661 = icmp eq i32 %410, 1
  br i1 %cmp661, label %cond.true.663, label %cond.false.667

cond.true.663:                                    ; preds = %land.lhs.true.660
  %411 = load i64, i64* %idx.addr, align 8
  %add664 = add i64 %411, 1
  %412 = load i8*, i8** %str, align 8
  %arrayidx665 = getelementptr i8, i8* %412, i64 %add664
  %413 = load i8, i8* %arrayidx665, align 1
  %conv666 = zext i8 %413 to i32
  br label %cond.end.679

cond.false.667:                                   ; preds = %land.lhs.true.660
  %414 = load i32, i32* %kind, align 4
  %cmp668 = icmp eq i32 %414, 2
  br i1 %cmp668, label %cond.true.670, label %cond.false.674

cond.true.670:                                    ; preds = %cond.false.667
  %415 = load i64, i64* %idx.addr, align 8
  %add671 = add i64 %415, 1
  %416 = load i8*, i8** %str, align 8
  %417 = bitcast i8* %416 to i16*
  %arrayidx672 = getelementptr i16, i16* %417, i64 %add671
  %418 = load i16, i16* %arrayidx672, align 2
  %conv673 = zext i16 %418 to i32
  br label %cond.end.677

cond.false.674:                                   ; preds = %cond.false.667
  %419 = load i64, i64* %idx.addr, align 8
  %add675 = add i64 %419, 1
  %420 = load i8*, i8** %str, align 8
  %421 = bitcast i8* %420 to i32*
  %arrayidx676 = getelementptr i32, i32* %421, i64 %add675
  %422 = load i32, i32* %arrayidx676, align 4
  br label %cond.end.677

cond.end.677:                                     ; preds = %cond.false.674, %cond.true.670
  %cond678 = phi i32 [ %conv673, %cond.true.670 ], [ %422, %cond.false.674 ]
  br label %cond.end.679

cond.end.679:                                     ; preds = %cond.end.677, %cond.true.663
  %cond680 = phi i32 [ %conv666, %cond.true.663 ], [ %cond678, %cond.end.677 ]
  %cmp681 = icmp eq i32 %cond680, 73
  br i1 %cmp681, label %land.lhs.true.683, label %if.end.846

land.lhs.true.683:                                ; preds = %cond.end.679
  %423 = load i32, i32* %kind, align 4
  %cmp684 = icmp eq i32 %423, 1
  br i1 %cmp684, label %cond.true.686, label %cond.false.690

cond.true.686:                                    ; preds = %land.lhs.true.683
  %424 = load i64, i64* %idx.addr, align 8
  %add687 = add i64 %424, 2
  %425 = load i8*, i8** %str, align 8
  %arrayidx688 = getelementptr i8, i8* %425, i64 %add687
  %426 = load i8, i8* %arrayidx688, align 1
  %conv689 = zext i8 %426 to i32
  br label %cond.end.702

cond.false.690:                                   ; preds = %land.lhs.true.683
  %427 = load i32, i32* %kind, align 4
  %cmp691 = icmp eq i32 %427, 2
  br i1 %cmp691, label %cond.true.693, label %cond.false.697

cond.true.693:                                    ; preds = %cond.false.690
  %428 = load i64, i64* %idx.addr, align 8
  %add694 = add i64 %428, 2
  %429 = load i8*, i8** %str, align 8
  %430 = bitcast i8* %429 to i16*
  %arrayidx695 = getelementptr i16, i16* %430, i64 %add694
  %431 = load i16, i16* %arrayidx695, align 2
  %conv696 = zext i16 %431 to i32
  br label %cond.end.700

cond.false.697:                                   ; preds = %cond.false.690
  %432 = load i64, i64* %idx.addr, align 8
  %add698 = add i64 %432, 2
  %433 = load i8*, i8** %str, align 8
  %434 = bitcast i8* %433 to i32*
  %arrayidx699 = getelementptr i32, i32* %434, i64 %add698
  %435 = load i32, i32* %arrayidx699, align 4
  br label %cond.end.700

cond.end.700:                                     ; preds = %cond.false.697, %cond.true.693
  %cond701 = phi i32 [ %conv696, %cond.true.693 ], [ %435, %cond.false.697 ]
  br label %cond.end.702

cond.end.702:                                     ; preds = %cond.end.700, %cond.true.686
  %cond703 = phi i32 [ %conv689, %cond.true.686 ], [ %cond701, %cond.end.700 ]
  %cmp704 = icmp eq i32 %cond703, 110
  br i1 %cmp704, label %land.lhs.true.706, label %if.end.846

land.lhs.true.706:                                ; preds = %cond.end.702
  %436 = load i32, i32* %kind, align 4
  %cmp707 = icmp eq i32 %436, 1
  br i1 %cmp707, label %cond.true.709, label %cond.false.713

cond.true.709:                                    ; preds = %land.lhs.true.706
  %437 = load i64, i64* %idx.addr, align 8
  %add710 = add i64 %437, 3
  %438 = load i8*, i8** %str, align 8
  %arrayidx711 = getelementptr i8, i8* %438, i64 %add710
  %439 = load i8, i8* %arrayidx711, align 1
  %conv712 = zext i8 %439 to i32
  br label %cond.end.725

cond.false.713:                                   ; preds = %land.lhs.true.706
  %440 = load i32, i32* %kind, align 4
  %cmp714 = icmp eq i32 %440, 2
  br i1 %cmp714, label %cond.true.716, label %cond.false.720

cond.true.716:                                    ; preds = %cond.false.713
  %441 = load i64, i64* %idx.addr, align 8
  %add717 = add i64 %441, 3
  %442 = load i8*, i8** %str, align 8
  %443 = bitcast i8* %442 to i16*
  %arrayidx718 = getelementptr i16, i16* %443, i64 %add717
  %444 = load i16, i16* %arrayidx718, align 2
  %conv719 = zext i16 %444 to i32
  br label %cond.end.723

cond.false.720:                                   ; preds = %cond.false.713
  %445 = load i64, i64* %idx.addr, align 8
  %add721 = add i64 %445, 3
  %446 = load i8*, i8** %str, align 8
  %447 = bitcast i8* %446 to i32*
  %arrayidx722 = getelementptr i32, i32* %447, i64 %add721
  %448 = load i32, i32* %arrayidx722, align 4
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.720, %cond.true.716
  %cond724 = phi i32 [ %conv719, %cond.true.716 ], [ %448, %cond.false.720 ]
  br label %cond.end.725

cond.end.725:                                     ; preds = %cond.end.723, %cond.true.709
  %cond726 = phi i32 [ %conv712, %cond.true.709 ], [ %cond724, %cond.end.723 ]
  %cmp727 = icmp eq i32 %cond726, 102
  br i1 %cmp727, label %land.lhs.true.729, label %if.end.846

land.lhs.true.729:                                ; preds = %cond.end.725
  %449 = load i32, i32* %kind, align 4
  %cmp730 = icmp eq i32 %449, 1
  br i1 %cmp730, label %cond.true.732, label %cond.false.736

cond.true.732:                                    ; preds = %land.lhs.true.729
  %450 = load i64, i64* %idx.addr, align 8
  %add733 = add i64 %450, 4
  %451 = load i8*, i8** %str, align 8
  %arrayidx734 = getelementptr i8, i8* %451, i64 %add733
  %452 = load i8, i8* %arrayidx734, align 1
  %conv735 = zext i8 %452 to i32
  br label %cond.end.748

cond.false.736:                                   ; preds = %land.lhs.true.729
  %453 = load i32, i32* %kind, align 4
  %cmp737 = icmp eq i32 %453, 2
  br i1 %cmp737, label %cond.true.739, label %cond.false.743

cond.true.739:                                    ; preds = %cond.false.736
  %454 = load i64, i64* %idx.addr, align 8
  %add740 = add i64 %454, 4
  %455 = load i8*, i8** %str, align 8
  %456 = bitcast i8* %455 to i16*
  %arrayidx741 = getelementptr i16, i16* %456, i64 %add740
  %457 = load i16, i16* %arrayidx741, align 2
  %conv742 = zext i16 %457 to i32
  br label %cond.end.746

cond.false.743:                                   ; preds = %cond.false.736
  %458 = load i64, i64* %idx.addr, align 8
  %add744 = add i64 %458, 4
  %459 = load i8*, i8** %str, align 8
  %460 = bitcast i8* %459 to i32*
  %arrayidx745 = getelementptr i32, i32* %460, i64 %add744
  %461 = load i32, i32* %arrayidx745, align 4
  br label %cond.end.746

cond.end.746:                                     ; preds = %cond.false.743, %cond.true.739
  %cond747 = phi i32 [ %conv742, %cond.true.739 ], [ %461, %cond.false.743 ]
  br label %cond.end.748

cond.end.748:                                     ; preds = %cond.end.746, %cond.true.732
  %cond749 = phi i32 [ %conv735, %cond.true.732 ], [ %cond747, %cond.end.746 ]
  %cmp750 = icmp eq i32 %cond749, 105
  br i1 %cmp750, label %land.lhs.true.752, label %if.end.846

land.lhs.true.752:                                ; preds = %cond.end.748
  %462 = load i32, i32* %kind, align 4
  %cmp753 = icmp eq i32 %462, 1
  br i1 %cmp753, label %cond.true.755, label %cond.false.759

cond.true.755:                                    ; preds = %land.lhs.true.752
  %463 = load i64, i64* %idx.addr, align 8
  %add756 = add i64 %463, 5
  %464 = load i8*, i8** %str, align 8
  %arrayidx757 = getelementptr i8, i8* %464, i64 %add756
  %465 = load i8, i8* %arrayidx757, align 1
  %conv758 = zext i8 %465 to i32
  br label %cond.end.771

cond.false.759:                                   ; preds = %land.lhs.true.752
  %466 = load i32, i32* %kind, align 4
  %cmp760 = icmp eq i32 %466, 2
  br i1 %cmp760, label %cond.true.762, label %cond.false.766

cond.true.762:                                    ; preds = %cond.false.759
  %467 = load i64, i64* %idx.addr, align 8
  %add763 = add i64 %467, 5
  %468 = load i8*, i8** %str, align 8
  %469 = bitcast i8* %468 to i16*
  %arrayidx764 = getelementptr i16, i16* %469, i64 %add763
  %470 = load i16, i16* %arrayidx764, align 2
  %conv765 = zext i16 %470 to i32
  br label %cond.end.769

cond.false.766:                                   ; preds = %cond.false.759
  %471 = load i64, i64* %idx.addr, align 8
  %add767 = add i64 %471, 5
  %472 = load i8*, i8** %str, align 8
  %473 = bitcast i8* %472 to i32*
  %arrayidx768 = getelementptr i32, i32* %473, i64 %add767
  %474 = load i32, i32* %arrayidx768, align 4
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.false.766, %cond.true.762
  %cond770 = phi i32 [ %conv765, %cond.true.762 ], [ %474, %cond.false.766 ]
  br label %cond.end.771

cond.end.771:                                     ; preds = %cond.end.769, %cond.true.755
  %cond772 = phi i32 [ %conv758, %cond.true.755 ], [ %cond770, %cond.end.769 ]
  %cmp773 = icmp eq i32 %cond772, 110
  br i1 %cmp773, label %land.lhs.true.775, label %if.end.846

land.lhs.true.775:                                ; preds = %cond.end.771
  %475 = load i32, i32* %kind, align 4
  %cmp776 = icmp eq i32 %475, 1
  br i1 %cmp776, label %cond.true.778, label %cond.false.782

cond.true.778:                                    ; preds = %land.lhs.true.775
  %476 = load i64, i64* %idx.addr, align 8
  %add779 = add i64 %476, 6
  %477 = load i8*, i8** %str, align 8
  %arrayidx780 = getelementptr i8, i8* %477, i64 %add779
  %478 = load i8, i8* %arrayidx780, align 1
  %conv781 = zext i8 %478 to i32
  br label %cond.end.794

cond.false.782:                                   ; preds = %land.lhs.true.775
  %479 = load i32, i32* %kind, align 4
  %cmp783 = icmp eq i32 %479, 2
  br i1 %cmp783, label %cond.true.785, label %cond.false.789

cond.true.785:                                    ; preds = %cond.false.782
  %480 = load i64, i64* %idx.addr, align 8
  %add786 = add i64 %480, 6
  %481 = load i8*, i8** %str, align 8
  %482 = bitcast i8* %481 to i16*
  %arrayidx787 = getelementptr i16, i16* %482, i64 %add786
  %483 = load i16, i16* %arrayidx787, align 2
  %conv788 = zext i16 %483 to i32
  br label %cond.end.792

cond.false.789:                                   ; preds = %cond.false.782
  %484 = load i64, i64* %idx.addr, align 8
  %add790 = add i64 %484, 6
  %485 = load i8*, i8** %str, align 8
  %486 = bitcast i8* %485 to i32*
  %arrayidx791 = getelementptr i32, i32* %486, i64 %add790
  %487 = load i32, i32* %arrayidx791, align 4
  br label %cond.end.792

cond.end.792:                                     ; preds = %cond.false.789, %cond.true.785
  %cond793 = phi i32 [ %conv788, %cond.true.785 ], [ %487, %cond.false.789 ]
  br label %cond.end.794

cond.end.794:                                     ; preds = %cond.end.792, %cond.true.778
  %cond795 = phi i32 [ %conv781, %cond.true.778 ], [ %cond793, %cond.end.792 ]
  %cmp796 = icmp eq i32 %cond795, 105
  br i1 %cmp796, label %land.lhs.true.798, label %if.end.846

land.lhs.true.798:                                ; preds = %cond.end.794
  %488 = load i32, i32* %kind, align 4
  %cmp799 = icmp eq i32 %488, 1
  br i1 %cmp799, label %cond.true.801, label %cond.false.805

cond.true.801:                                    ; preds = %land.lhs.true.798
  %489 = load i64, i64* %idx.addr, align 8
  %add802 = add i64 %489, 7
  %490 = load i8*, i8** %str, align 8
  %arrayidx803 = getelementptr i8, i8* %490, i64 %add802
  %491 = load i8, i8* %arrayidx803, align 1
  %conv804 = zext i8 %491 to i32
  br label %cond.end.817

cond.false.805:                                   ; preds = %land.lhs.true.798
  %492 = load i32, i32* %kind, align 4
  %cmp806 = icmp eq i32 %492, 2
  br i1 %cmp806, label %cond.true.808, label %cond.false.812

cond.true.808:                                    ; preds = %cond.false.805
  %493 = load i64, i64* %idx.addr, align 8
  %add809 = add i64 %493, 7
  %494 = load i8*, i8** %str, align 8
  %495 = bitcast i8* %494 to i16*
  %arrayidx810 = getelementptr i16, i16* %495, i64 %add809
  %496 = load i16, i16* %arrayidx810, align 2
  %conv811 = zext i16 %496 to i32
  br label %cond.end.815

cond.false.812:                                   ; preds = %cond.false.805
  %497 = load i64, i64* %idx.addr, align 8
  %add813 = add i64 %497, 7
  %498 = load i8*, i8** %str, align 8
  %499 = bitcast i8* %498 to i32*
  %arrayidx814 = getelementptr i32, i32* %499, i64 %add813
  %500 = load i32, i32* %arrayidx814, align 4
  br label %cond.end.815

cond.end.815:                                     ; preds = %cond.false.812, %cond.true.808
  %cond816 = phi i32 [ %conv811, %cond.true.808 ], [ %500, %cond.false.812 ]
  br label %cond.end.817

cond.end.817:                                     ; preds = %cond.end.815, %cond.true.801
  %cond818 = phi i32 [ %conv804, %cond.true.801 ], [ %cond816, %cond.end.815 ]
  %cmp819 = icmp eq i32 %cond818, 116
  br i1 %cmp819, label %land.lhs.true.821, label %if.end.846

land.lhs.true.821:                                ; preds = %cond.end.817
  %501 = load i32, i32* %kind, align 4
  %cmp822 = icmp eq i32 %501, 1
  br i1 %cmp822, label %cond.true.824, label %cond.false.828

cond.true.824:                                    ; preds = %land.lhs.true.821
  %502 = load i64, i64* %idx.addr, align 8
  %add825 = add i64 %502, 8
  %503 = load i8*, i8** %str, align 8
  %arrayidx826 = getelementptr i8, i8* %503, i64 %add825
  %504 = load i8, i8* %arrayidx826, align 1
  %conv827 = zext i8 %504 to i32
  br label %cond.end.840

cond.false.828:                                   ; preds = %land.lhs.true.821
  %505 = load i32, i32* %kind, align 4
  %cmp829 = icmp eq i32 %505, 2
  br i1 %cmp829, label %cond.true.831, label %cond.false.835

cond.true.831:                                    ; preds = %cond.false.828
  %506 = load i64, i64* %idx.addr, align 8
  %add832 = add i64 %506, 8
  %507 = load i8*, i8** %str, align 8
  %508 = bitcast i8* %507 to i16*
  %arrayidx833 = getelementptr i16, i16* %508, i64 %add832
  %509 = load i16, i16* %arrayidx833, align 2
  %conv834 = zext i16 %509 to i32
  br label %cond.end.838

cond.false.835:                                   ; preds = %cond.false.828
  %510 = load i64, i64* %idx.addr, align 8
  %add836 = add i64 %510, 8
  %511 = load i8*, i8** %str, align 8
  %512 = bitcast i8* %511 to i32*
  %arrayidx837 = getelementptr i32, i32* %512, i64 %add836
  %513 = load i32, i32* %arrayidx837, align 4
  br label %cond.end.838

cond.end.838:                                     ; preds = %cond.false.835, %cond.true.831
  %cond839 = phi i32 [ %conv834, %cond.true.831 ], [ %513, %cond.false.835 ]
  br label %cond.end.840

cond.end.840:                                     ; preds = %cond.end.838, %cond.true.824
  %cond841 = phi i32 [ %conv827, %cond.true.824 ], [ %cond839, %cond.end.838 ]
  %cmp842 = icmp eq i32 %cond841, 121
  br i1 %cmp842, label %if.then.844, label %if.end.846

if.then.844:                                      ; preds = %cond.end.840
  %514 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %515 = load i64, i64* %idx.addr, align 8
  %516 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call845 = call %struct._object* @_parse_constant(%struct._PyScannerObject* %514, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i64 %515, i64* %516)
  store %struct._object* %call845, %struct._object** %retval
  br label %return

if.end.846:                                       ; preds = %cond.end.840, %cond.end.817, %cond.end.794, %cond.end.771, %cond.end.748, %cond.end.725, %cond.end.702, %cond.end.679, %sw.bb.656
  br label %sw.epilog.847

sw.epilog.847:                                    ; preds = %cond.end.43, %if.end.846, %if.end.655, %if.end.487, %if.end.434, %if.end.334, %if.end.257
  %517 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %518 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %519 = load i64, i64* %idx.addr, align 8
  %520 = load i64*, i64** %next_idx_ptr.addr, align 8
  %call848 = call %struct._object* @_match_number_unicode(%struct._PyScannerObject* %517, %struct._object* %518, i64 %519, i64* %520)
  store %struct._object* %call848, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog.847, %if.then.844, %if.then.653, %if.then.485, %if.then.431, %if.then.331, %if.then.254, %do.end.180, %if.then.127, %do.end, %if.then.56, %sw.bb, %if.then.29, %if.then.26, %if.then
  %521 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %521
}

declare void @PyDict_Clear(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @raise_stop_iteration(i64 %idx) #0 {
entry:
  %idx.addr = alloca i64, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i64 %idx, i64* %idx.addr, align 8
  %0 = load i64, i64* %idx.addr, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %0)
  store %struct._object* %call, %struct._object** %value, align 8
  %1 = load %struct._object*, %struct._object** %value, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %3 = load %struct._object*, %struct._object** %value, align 8
  call void @PyErr_SetObject(%struct._object* %2, %struct._object* %3)
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %value, align 8
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
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  ret void
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #2 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @_Py_CheckRecursiveCall(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_parse_object_unicode(%struct._PyScannerObject* %s, %struct._object* %pystr, i64 %idx, i64* %next_idx_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyScannerObject*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %idx.addr = alloca i64, align 8
  %next_idx_ptr.addr = alloca i64*, align 8
  %str = alloca i8*, align 8
  %kind = alloca i32, align 4
  %end_idx = alloca i64, align 8
  %val = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %strict = alloca i32, align 4
  %has_pairs_hook = alloca i32, align 4
  %next_idx = alloca i64, align 8
  %memokey = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp406 = alloca %struct._object*, align 8
  %_py_tmp420 = alloca %struct._object*, align 8
  %_py_decref_tmp425 = alloca %struct._object*, align 8
  %_py_decref_tmp443 = alloca %struct._object*, align 8
  %_py_decref_tmp456 = alloca %struct._object*, align 8
  %_py_tmp474 = alloca %struct._object*, align 8
  %_py_decref_tmp479 = alloca %struct._object*, align 8
  %_py_tmp493 = alloca %struct._object*, align 8
  %_py_decref_tmp498 = alloca %struct._object*, align 8
  %_py_decref_tmp744 = alloca %struct._object*, align 8
  %_py_decref_tmp762 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp779 = alloca %struct._object*, align 8
  %_py_xdecref_tmp793 = alloca %struct._object*, align 8
  %_py_decref_tmp798 = alloca %struct._object*, align 8
  %_py_xdecref_tmp812 = alloca %struct._object*, align 8
  %_py_decref_tmp817 = alloca %struct._object*, align 8
  store %struct._PyScannerObject* %s, %struct._PyScannerObject** %s.addr, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64* %next_idx_ptr, i64** %next_idx_ptr.addr, align 8
  store %struct._object* null, %struct._object** %val, align 8
  store %struct._object* null, %struct._object** %rval, align 8
  store %struct._object* null, %struct._object** %key, align 8
  %0 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %strict1 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %strict1, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %1)
  store i32 %call, i32* %strict, align 4
  %2 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %object_pairs_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %object_pairs_hook, align 8
  %cmp = icmp ne %struct._object* %3, @_Py_NoneStruct
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %has_pairs_hook, align 4
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ]
  %cmp3 = icmp eq i32 %cond, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %8 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %10, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 5
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.21

cond.true.10:                                     ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state11 to i32*
  %bf.load12 = load i32, i32* %13, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 6
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.true.10
  %14 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i64 1
  %16 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.true.10
  %17 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyCompactUnicodeObject*
  %add.ptr18 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %18, i64 1
  %19 = bitcast %struct.PyCompactUnicodeObject* %add.ptr18 to i8*
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i8* [ %16, %cond.true.16 ], [ %19, %cond.false.17 ]
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %21, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %22 = load i8*, i8** %any, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.end.19
  %cond23 = phi i8* [ %cond20, %cond.end.19 ], [ %22, %cond.false.21 ]
  store i8* %cond23, i8** %str, align 8
  %23 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon* %state24 to i32*
  %bf.load25 = load i32, i32* %25, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 2
  %bf.clear27 = and i32 %bf.lshr26, 7
  store i32 %bf.clear27, i32* %kind, align 4
  %26 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i32 0, i32 1
  %28 = load i64, i64* %length, align 8
  %sub = sub i64 %28, 1
  store i64 %sub, i64* %end_idx, align 8
  %29 = load i32, i32* %has_pairs_hook, align 4
  %tobool28 = icmp ne i32 %29, 0
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %cond.end.22
  %call30 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call30, %struct._object** %rval, align 8
  br label %if.end.32

if.else:                                          ; preds = %cond.end.22
  %call31 = call %struct._object* @PyDict_New()
  store %struct._object* %call31, %struct._object** %rval, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.29
  %30 = load %struct._object*, %struct._object** %rval, align 8
  %cmp33 = icmp eq %struct._object* %30, null
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %if.end.32
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.36
  %31 = load i64, i64* %idx.addr, align 8
  %32 = load i64, i64* %end_idx, align 8
  %cmp37 = icmp sle i64 %31, %32
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %33 = load i32, i32* %kind, align 4
  %cmp39 = icmp eq i32 %33, 1
  br i1 %cmp39, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %land.rhs
  %34 = load i64, i64* %idx.addr, align 8
  %35 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %35, i64 %34
  %36 = load i8, i8* %arrayidx, align 1
  %conv42 = zext i8 %36 to i32
  br label %cond.end.53

cond.false.43:                                    ; preds = %land.rhs
  %37 = load i32, i32* %kind, align 4
  %cmp44 = icmp eq i32 %37, 2
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %cond.false.43
  %38 = load i64, i64* %idx.addr, align 8
  %39 = load i8*, i8** %str, align 8
  %40 = bitcast i8* %39 to i16*
  %arrayidx47 = getelementptr i16, i16* %40, i64 %38
  %41 = load i16, i16* %arrayidx47, align 2
  %conv48 = zext i16 %41 to i32
  br label %cond.end.51

cond.false.49:                                    ; preds = %cond.false.43
  %42 = load i64, i64* %idx.addr, align 8
  %43 = load i8*, i8** %str, align 8
  %44 = bitcast i8* %43 to i32*
  %arrayidx50 = getelementptr i32, i32* %44, i64 %42
  %45 = load i32, i32* %arrayidx50, align 4
  br label %cond.end.51

cond.end.51:                                      ; preds = %cond.false.49, %cond.true.46
  %cond52 = phi i32 [ %conv48, %cond.true.46 ], [ %45, %cond.false.49 ]
  br label %cond.end.53

cond.end.53:                                      ; preds = %cond.end.51, %cond.true.41
  %cond54 = phi i32 [ %conv42, %cond.true.41 ], [ %cond52, %cond.end.51 ]
  %cmp55 = icmp eq i32 %cond54, 32
  br i1 %cmp55, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.53
  %46 = load i32, i32* %kind, align 4
  %cmp57 = icmp eq i32 %46, 1
  br i1 %cmp57, label %cond.true.59, label %cond.false.62

cond.true.59:                                     ; preds = %lor.lhs.false
  %47 = load i64, i64* %idx.addr, align 8
  %48 = load i8*, i8** %str, align 8
  %arrayidx60 = getelementptr i8, i8* %48, i64 %47
  %49 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %49 to i32
  br label %cond.end.72

cond.false.62:                                    ; preds = %lor.lhs.false
  %50 = load i32, i32* %kind, align 4
  %cmp63 = icmp eq i32 %50, 2
  br i1 %cmp63, label %cond.true.65, label %cond.false.68

cond.true.65:                                     ; preds = %cond.false.62
  %51 = load i64, i64* %idx.addr, align 8
  %52 = load i8*, i8** %str, align 8
  %53 = bitcast i8* %52 to i16*
  %arrayidx66 = getelementptr i16, i16* %53, i64 %51
  %54 = load i16, i16* %arrayidx66, align 2
  %conv67 = zext i16 %54 to i32
  br label %cond.end.70

cond.false.68:                                    ; preds = %cond.false.62
  %55 = load i64, i64* %idx.addr, align 8
  %56 = load i8*, i8** %str, align 8
  %57 = bitcast i8* %56 to i32*
  %arrayidx69 = getelementptr i32, i32* %57, i64 %55
  %58 = load i32, i32* %arrayidx69, align 4
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.68, %cond.true.65
  %cond71 = phi i32 [ %conv67, %cond.true.65 ], [ %58, %cond.false.68 ]
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.end.70, %cond.true.59
  %cond73 = phi i32 [ %conv61, %cond.true.59 ], [ %cond71, %cond.end.70 ]
  %cmp74 = icmp eq i32 %cond73, 9
  br i1 %cmp74, label %lor.end, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %cond.end.72
  %59 = load i32, i32* %kind, align 4
  %cmp77 = icmp eq i32 %59, 1
  br i1 %cmp77, label %cond.true.79, label %cond.false.82

cond.true.79:                                     ; preds = %lor.lhs.false.76
  %60 = load i64, i64* %idx.addr, align 8
  %61 = load i8*, i8** %str, align 8
  %arrayidx80 = getelementptr i8, i8* %61, i64 %60
  %62 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %62 to i32
  br label %cond.end.92

cond.false.82:                                    ; preds = %lor.lhs.false.76
  %63 = load i32, i32* %kind, align 4
  %cmp83 = icmp eq i32 %63, 2
  br i1 %cmp83, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.false.82
  %64 = load i64, i64* %idx.addr, align 8
  %65 = load i8*, i8** %str, align 8
  %66 = bitcast i8* %65 to i16*
  %arrayidx86 = getelementptr i16, i16* %66, i64 %64
  %67 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %67 to i32
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.false.82
  %68 = load i64, i64* %idx.addr, align 8
  %69 = load i8*, i8** %str, align 8
  %70 = bitcast i8* %69 to i32*
  %arrayidx89 = getelementptr i32, i32* %70, i64 %68
  %71 = load i32, i32* %arrayidx89, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.85
  %cond91 = phi i32 [ %conv87, %cond.true.85 ], [ %71, %cond.false.88 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.true.79
  %cond93 = phi i32 [ %conv81, %cond.true.79 ], [ %cond91, %cond.end.90 ]
  %cmp94 = icmp eq i32 %cond93, 10
  br i1 %cmp94, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.92
  %72 = load i32, i32* %kind, align 4
  %cmp96 = icmp eq i32 %72, 1
  br i1 %cmp96, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %lor.rhs
  %73 = load i64, i64* %idx.addr, align 8
  %74 = load i8*, i8** %str, align 8
  %arrayidx99 = getelementptr i8, i8* %74, i64 %73
  %75 = load i8, i8* %arrayidx99, align 1
  %conv100 = zext i8 %75 to i32
  br label %cond.end.111

cond.false.101:                                   ; preds = %lor.rhs
  %76 = load i32, i32* %kind, align 4
  %cmp102 = icmp eq i32 %76, 2
  br i1 %cmp102, label %cond.true.104, label %cond.false.107

cond.true.104:                                    ; preds = %cond.false.101
  %77 = load i64, i64* %idx.addr, align 8
  %78 = load i8*, i8** %str, align 8
  %79 = bitcast i8* %78 to i16*
  %arrayidx105 = getelementptr i16, i16* %79, i64 %77
  %80 = load i16, i16* %arrayidx105, align 2
  %conv106 = zext i16 %80 to i32
  br label %cond.end.109

cond.false.107:                                   ; preds = %cond.false.101
  %81 = load i64, i64* %idx.addr, align 8
  %82 = load i8*, i8** %str, align 8
  %83 = bitcast i8* %82 to i32*
  %arrayidx108 = getelementptr i32, i32* %83, i64 %81
  %84 = load i32, i32* %arrayidx108, align 4
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.107, %cond.true.104
  %cond110 = phi i32 [ %conv106, %cond.true.104 ], [ %84, %cond.false.107 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.98
  %cond112 = phi i32 [ %conv100, %cond.true.98 ], [ %cond110, %cond.end.109 ]
  %cmp113 = icmp eq i32 %cond112, 13
  br label %lor.end

lor.end:                                          ; preds = %cond.end.111, %cond.end.92, %cond.end.72, %cond.end.53
  %85 = phi i1 [ true, %cond.end.92 ], [ true, %cond.end.72 ], [ true, %cond.end.53 ], [ %cmp113, %cond.end.111 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %86 = phi i1 [ false, %while.cond ], [ %85, %lor.end ]
  br i1 %86, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %87 = load i64, i64* %idx.addr, align 8
  %inc = add i64 %87, 1
  store i64 %inc, i64* %idx.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %88 = load i64, i64* %idx.addr, align 8
  %89 = load i64, i64* %end_idx, align 8
  %cmp115 = icmp sgt i64 %88, %89
  br i1 %cmp115, label %if.then.137, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %while.end
  %90 = load i32, i32* %kind, align 4
  %cmp118 = icmp eq i32 %90, 1
  br i1 %cmp118, label %cond.true.120, label %cond.false.123

cond.true.120:                                    ; preds = %lor.lhs.false.117
  %91 = load i64, i64* %idx.addr, align 8
  %92 = load i8*, i8** %str, align 8
  %arrayidx121 = getelementptr i8, i8* %92, i64 %91
  %93 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %93 to i32
  br label %cond.end.133

cond.false.123:                                   ; preds = %lor.lhs.false.117
  %94 = load i32, i32* %kind, align 4
  %cmp124 = icmp eq i32 %94, 2
  br i1 %cmp124, label %cond.true.126, label %cond.false.129

cond.true.126:                                    ; preds = %cond.false.123
  %95 = load i64, i64* %idx.addr, align 8
  %96 = load i8*, i8** %str, align 8
  %97 = bitcast i8* %96 to i16*
  %arrayidx127 = getelementptr i16, i16* %97, i64 %95
  %98 = load i16, i16* %arrayidx127, align 2
  %conv128 = zext i16 %98 to i32
  br label %cond.end.131

cond.false.129:                                   ; preds = %cond.false.123
  %99 = load i64, i64* %idx.addr, align 8
  %100 = load i8*, i8** %str, align 8
  %101 = bitcast i8* %100 to i32*
  %arrayidx130 = getelementptr i32, i32* %101, i64 %99
  %102 = load i32, i32* %arrayidx130, align 4
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.129, %cond.true.126
  %cond132 = phi i32 [ %conv128, %cond.true.126 ], [ %102, %cond.false.129 ]
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.end.131, %cond.true.120
  %cond134 = phi i32 [ %conv122, %cond.true.120 ], [ %cond132, %cond.end.131 ]
  %cmp135 = icmp ne i32 %cond134, 125
  br i1 %cmp135, label %if.then.137, label %if.end.737

if.then.137:                                      ; preds = %cond.end.133, %while.end
  br label %while.body.139

while.body.139:                                   ; preds = %if.then.137, %while.end.735
  %103 = load i64, i64* %idx.addr, align 8
  %104 = load i64, i64* %end_idx, align 8
  %cmp140 = icmp sgt i64 %103, %104
  br i1 %cmp140, label %if.then.162, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %while.body.139
  %105 = load i32, i32* %kind, align 4
  %cmp143 = icmp eq i32 %105, 1
  br i1 %cmp143, label %cond.true.145, label %cond.false.148

cond.true.145:                                    ; preds = %lor.lhs.false.142
  %106 = load i64, i64* %idx.addr, align 8
  %107 = load i8*, i8** %str, align 8
  %arrayidx146 = getelementptr i8, i8* %107, i64 %106
  %108 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %108 to i32
  br label %cond.end.158

cond.false.148:                                   ; preds = %lor.lhs.false.142
  %109 = load i32, i32* %kind, align 4
  %cmp149 = icmp eq i32 %109, 2
  br i1 %cmp149, label %cond.true.151, label %cond.false.154

cond.true.151:                                    ; preds = %cond.false.148
  %110 = load i64, i64* %idx.addr, align 8
  %111 = load i8*, i8** %str, align 8
  %112 = bitcast i8* %111 to i16*
  %arrayidx152 = getelementptr i16, i16* %112, i64 %110
  %113 = load i16, i16* %arrayidx152, align 2
  %conv153 = zext i16 %113 to i32
  br label %cond.end.156

cond.false.154:                                   ; preds = %cond.false.148
  %114 = load i64, i64* %idx.addr, align 8
  %115 = load i8*, i8** %str, align 8
  %116 = bitcast i8* %115 to i32*
  %arrayidx155 = getelementptr i32, i32* %116, i64 %114
  %117 = load i32, i32* %arrayidx155, align 4
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.154, %cond.true.151
  %cond157 = phi i32 [ %conv153, %cond.true.151 ], [ %117, %cond.false.154 ]
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.end.156, %cond.true.145
  %cond159 = phi i32 [ %conv147, %cond.true.145 ], [ %cond157, %cond.end.156 ]
  %cmp160 = icmp ne i32 %cond159, 34
  br i1 %cmp160, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %cond.end.158, %while.body.139
  %118 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %119 = load i64, i64* %idx.addr, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i32 0, i32 0), %struct._object* %118, i64 %119)
  br label %bail

if.end.163:                                       ; preds = %cond.end.158
  %120 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %121 = load i64, i64* %idx.addr, align 8
  %add = add i64 %121, 1
  %122 = load i32, i32* %strict, align 4
  %call164 = call %struct._object* @scanstring_unicode(%struct._object* %120, i64 %add, i32 %122, i64* %next_idx)
  store %struct._object* %call164, %struct._object** %key, align 8
  %123 = load %struct._object*, %struct._object** %key, align 8
  %cmp165 = icmp eq %struct._object* %123, null
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.end.163
  br label %bail

if.end.168:                                       ; preds = %if.end.163
  %124 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %memo = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %124, i32 0, i32 7
  %125 = load %struct._object*, %struct._object** %memo, align 8
  %126 = load %struct._object*, %struct._object** %key, align 8
  %call169 = call %struct._object* @PyDict_GetItem(%struct._object* %125, %struct._object* %126)
  store %struct._object* %call169, %struct._object** %memokey, align 8
  %127 = load %struct._object*, %struct._object** %memokey, align 8
  %cmp170 = icmp ne %struct._object* %127, null
  br i1 %cmp170, label %if.then.172, label %if.else.180

if.then.172:                                      ; preds = %if.end.168
  %128 = load %struct._object*, %struct._object** %memokey, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt, align 8
  %inc173 = add i64 %129, 1
  store i64 %inc173, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.172
  %130 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt174 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt174, align 8
  %dec = add i64 %132, -1
  store i64 %dec, i64* %ob_refcnt174, align 8
  %cmp175 = icmp ne i64 %dec, 0
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %do.body
  br label %if.end.179

if.else.178:                                      ; preds = %do.body
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %135(%struct._object* %136)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.177
  br label %do.end

do.end:                                           ; preds = %if.end.179
  %137 = load %struct._object*, %struct._object** %memokey, align 8
  store %struct._object* %137, %struct._object** %key, align 8
  br label %if.end.187

if.else.180:                                      ; preds = %if.end.168
  %138 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %memo181 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %138, i32 0, i32 7
  %139 = load %struct._object*, %struct._object** %memo181, align 8
  %140 = load %struct._object*, %struct._object** %key, align 8
  %141 = load %struct._object*, %struct._object** %key, align 8
  %call182 = call i32 @PyDict_SetItem(%struct._object* %139, %struct._object* %140, %struct._object* %141)
  %cmp183 = icmp slt i32 %call182, 0
  br i1 %cmp183, label %if.then.185, label %if.end.186

if.then.185:                                      ; preds = %if.else.180
  br label %bail

if.end.186:                                       ; preds = %if.else.180
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %do.end
  %142 = load i64, i64* %next_idx, align 8
  store i64 %142, i64* %idx.addr, align 8
  br label %while.cond.188

while.cond.188:                                   ; preds = %while.body.273, %if.end.187
  %143 = load i64, i64* %idx.addr, align 8
  %144 = load i64, i64* %end_idx, align 8
  %cmp189 = icmp sle i64 %143, %144
  br i1 %cmp189, label %land.rhs.191, label %land.end.272

land.rhs.191:                                     ; preds = %while.cond.188
  %145 = load i32, i32* %kind, align 4
  %cmp192 = icmp eq i32 %145, 1
  br i1 %cmp192, label %cond.true.194, label %cond.false.197

cond.true.194:                                    ; preds = %land.rhs.191
  %146 = load i64, i64* %idx.addr, align 8
  %147 = load i8*, i8** %str, align 8
  %arrayidx195 = getelementptr i8, i8* %147, i64 %146
  %148 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %148 to i32
  br label %cond.end.207

cond.false.197:                                   ; preds = %land.rhs.191
  %149 = load i32, i32* %kind, align 4
  %cmp198 = icmp eq i32 %149, 2
  br i1 %cmp198, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %cond.false.197
  %150 = load i64, i64* %idx.addr, align 8
  %151 = load i8*, i8** %str, align 8
  %152 = bitcast i8* %151 to i16*
  %arrayidx201 = getelementptr i16, i16* %152, i64 %150
  %153 = load i16, i16* %arrayidx201, align 2
  %conv202 = zext i16 %153 to i32
  br label %cond.end.205

cond.false.203:                                   ; preds = %cond.false.197
  %154 = load i64, i64* %idx.addr, align 8
  %155 = load i8*, i8** %str, align 8
  %156 = bitcast i8* %155 to i32*
  %arrayidx204 = getelementptr i32, i32* %156, i64 %154
  %157 = load i32, i32* %arrayidx204, align 4
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %cond.true.200
  %cond206 = phi i32 [ %conv202, %cond.true.200 ], [ %157, %cond.false.203 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.194
  %cond208 = phi i32 [ %conv196, %cond.true.194 ], [ %cond206, %cond.end.205 ]
  %cmp209 = icmp eq i32 %cond208, 32
  br i1 %cmp209, label %lor.end.271, label %lor.lhs.false.211

lor.lhs.false.211:                                ; preds = %cond.end.207
  %158 = load i32, i32* %kind, align 4
  %cmp212 = icmp eq i32 %158, 1
  br i1 %cmp212, label %cond.true.214, label %cond.false.217

cond.true.214:                                    ; preds = %lor.lhs.false.211
  %159 = load i64, i64* %idx.addr, align 8
  %160 = load i8*, i8** %str, align 8
  %arrayidx215 = getelementptr i8, i8* %160, i64 %159
  %161 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %161 to i32
  br label %cond.end.227

cond.false.217:                                   ; preds = %lor.lhs.false.211
  %162 = load i32, i32* %kind, align 4
  %cmp218 = icmp eq i32 %162, 2
  br i1 %cmp218, label %cond.true.220, label %cond.false.223

cond.true.220:                                    ; preds = %cond.false.217
  %163 = load i64, i64* %idx.addr, align 8
  %164 = load i8*, i8** %str, align 8
  %165 = bitcast i8* %164 to i16*
  %arrayidx221 = getelementptr i16, i16* %165, i64 %163
  %166 = load i16, i16* %arrayidx221, align 2
  %conv222 = zext i16 %166 to i32
  br label %cond.end.225

cond.false.223:                                   ; preds = %cond.false.217
  %167 = load i64, i64* %idx.addr, align 8
  %168 = load i8*, i8** %str, align 8
  %169 = bitcast i8* %168 to i32*
  %arrayidx224 = getelementptr i32, i32* %169, i64 %167
  %170 = load i32, i32* %arrayidx224, align 4
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.220
  %cond226 = phi i32 [ %conv222, %cond.true.220 ], [ %170, %cond.false.223 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.true.214
  %cond228 = phi i32 [ %conv216, %cond.true.214 ], [ %cond226, %cond.end.225 ]
  %cmp229 = icmp eq i32 %cond228, 9
  br i1 %cmp229, label %lor.end.271, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %cond.end.227
  %171 = load i32, i32* %kind, align 4
  %cmp232 = icmp eq i32 %171, 1
  br i1 %cmp232, label %cond.true.234, label %cond.false.237

cond.true.234:                                    ; preds = %lor.lhs.false.231
  %172 = load i64, i64* %idx.addr, align 8
  %173 = load i8*, i8** %str, align 8
  %arrayidx235 = getelementptr i8, i8* %173, i64 %172
  %174 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %174 to i32
  br label %cond.end.247

cond.false.237:                                   ; preds = %lor.lhs.false.231
  %175 = load i32, i32* %kind, align 4
  %cmp238 = icmp eq i32 %175, 2
  br i1 %cmp238, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %cond.false.237
  %176 = load i64, i64* %idx.addr, align 8
  %177 = load i8*, i8** %str, align 8
  %178 = bitcast i8* %177 to i16*
  %arrayidx241 = getelementptr i16, i16* %178, i64 %176
  %179 = load i16, i16* %arrayidx241, align 2
  %conv242 = zext i16 %179 to i32
  br label %cond.end.245

cond.false.243:                                   ; preds = %cond.false.237
  %180 = load i64, i64* %idx.addr, align 8
  %181 = load i8*, i8** %str, align 8
  %182 = bitcast i8* %181 to i32*
  %arrayidx244 = getelementptr i32, i32* %182, i64 %180
  %183 = load i32, i32* %arrayidx244, align 4
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.243, %cond.true.240
  %cond246 = phi i32 [ %conv242, %cond.true.240 ], [ %183, %cond.false.243 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.234
  %cond248 = phi i32 [ %conv236, %cond.true.234 ], [ %cond246, %cond.end.245 ]
  %cmp249 = icmp eq i32 %cond248, 10
  br i1 %cmp249, label %lor.end.271, label %lor.rhs.251

lor.rhs.251:                                      ; preds = %cond.end.247
  %184 = load i32, i32* %kind, align 4
  %cmp252 = icmp eq i32 %184, 1
  br i1 %cmp252, label %cond.true.254, label %cond.false.257

cond.true.254:                                    ; preds = %lor.rhs.251
  %185 = load i64, i64* %idx.addr, align 8
  %186 = load i8*, i8** %str, align 8
  %arrayidx255 = getelementptr i8, i8* %186, i64 %185
  %187 = load i8, i8* %arrayidx255, align 1
  %conv256 = zext i8 %187 to i32
  br label %cond.end.267

cond.false.257:                                   ; preds = %lor.rhs.251
  %188 = load i32, i32* %kind, align 4
  %cmp258 = icmp eq i32 %188, 2
  br i1 %cmp258, label %cond.true.260, label %cond.false.263

cond.true.260:                                    ; preds = %cond.false.257
  %189 = load i64, i64* %idx.addr, align 8
  %190 = load i8*, i8** %str, align 8
  %191 = bitcast i8* %190 to i16*
  %arrayidx261 = getelementptr i16, i16* %191, i64 %189
  %192 = load i16, i16* %arrayidx261, align 2
  %conv262 = zext i16 %192 to i32
  br label %cond.end.265

cond.false.263:                                   ; preds = %cond.false.257
  %193 = load i64, i64* %idx.addr, align 8
  %194 = load i8*, i8** %str, align 8
  %195 = bitcast i8* %194 to i32*
  %arrayidx264 = getelementptr i32, i32* %195, i64 %193
  %196 = load i32, i32* %arrayidx264, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.263, %cond.true.260
  %cond266 = phi i32 [ %conv262, %cond.true.260 ], [ %196, %cond.false.263 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %cond.true.254
  %cond268 = phi i32 [ %conv256, %cond.true.254 ], [ %cond266, %cond.end.265 ]
  %cmp269 = icmp eq i32 %cond268, 13
  br label %lor.end.271

lor.end.271:                                      ; preds = %cond.end.267, %cond.end.247, %cond.end.227, %cond.end.207
  %197 = phi i1 [ true, %cond.end.247 ], [ true, %cond.end.227 ], [ true, %cond.end.207 ], [ %cmp269, %cond.end.267 ]
  br label %land.end.272

land.end.272:                                     ; preds = %lor.end.271, %while.cond.188
  %198 = phi i1 [ false, %while.cond.188 ], [ %197, %lor.end.271 ]
  br i1 %198, label %while.body.273, label %while.end.275

while.body.273:                                   ; preds = %land.end.272
  %199 = load i64, i64* %idx.addr, align 8
  %inc274 = add i64 %199, 1
  store i64 %inc274, i64* %idx.addr, align 8
  br label %while.cond.188

while.end.275:                                    ; preds = %land.end.272
  %200 = load i64, i64* %idx.addr, align 8
  %201 = load i64, i64* %end_idx, align 8
  %cmp276 = icmp sgt i64 %200, %201
  br i1 %cmp276, label %if.then.298, label %lor.lhs.false.278

lor.lhs.false.278:                                ; preds = %while.end.275
  %202 = load i32, i32* %kind, align 4
  %cmp279 = icmp eq i32 %202, 1
  br i1 %cmp279, label %cond.true.281, label %cond.false.284

cond.true.281:                                    ; preds = %lor.lhs.false.278
  %203 = load i64, i64* %idx.addr, align 8
  %204 = load i8*, i8** %str, align 8
  %arrayidx282 = getelementptr i8, i8* %204, i64 %203
  %205 = load i8, i8* %arrayidx282, align 1
  %conv283 = zext i8 %205 to i32
  br label %cond.end.294

cond.false.284:                                   ; preds = %lor.lhs.false.278
  %206 = load i32, i32* %kind, align 4
  %cmp285 = icmp eq i32 %206, 2
  br i1 %cmp285, label %cond.true.287, label %cond.false.290

cond.true.287:                                    ; preds = %cond.false.284
  %207 = load i64, i64* %idx.addr, align 8
  %208 = load i8*, i8** %str, align 8
  %209 = bitcast i8* %208 to i16*
  %arrayidx288 = getelementptr i16, i16* %209, i64 %207
  %210 = load i16, i16* %arrayidx288, align 2
  %conv289 = zext i16 %210 to i32
  br label %cond.end.292

cond.false.290:                                   ; preds = %cond.false.284
  %211 = load i64, i64* %idx.addr, align 8
  %212 = load i8*, i8** %str, align 8
  %213 = bitcast i8* %212 to i32*
  %arrayidx291 = getelementptr i32, i32* %213, i64 %211
  %214 = load i32, i32* %arrayidx291, align 4
  br label %cond.end.292

cond.end.292:                                     ; preds = %cond.false.290, %cond.true.287
  %cond293 = phi i32 [ %conv289, %cond.true.287 ], [ %214, %cond.false.290 ]
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.end.292, %cond.true.281
  %cond295 = phi i32 [ %conv283, %cond.true.281 ], [ %cond293, %cond.end.292 ]
  %cmp296 = icmp ne i32 %cond295, 58
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %cond.end.294, %while.end.275
  %215 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %216 = load i64, i64* %idx.addr, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), %struct._object* %215, i64 %216)
  br label %bail

if.end.299:                                       ; preds = %cond.end.294
  %217 = load i64, i64* %idx.addr, align 8
  %inc300 = add i64 %217, 1
  store i64 %inc300, i64* %idx.addr, align 8
  br label %while.cond.301

while.cond.301:                                   ; preds = %while.body.386, %if.end.299
  %218 = load i64, i64* %idx.addr, align 8
  %219 = load i64, i64* %end_idx, align 8
  %cmp302 = icmp sle i64 %218, %219
  br i1 %cmp302, label %land.rhs.304, label %land.end.385

land.rhs.304:                                     ; preds = %while.cond.301
  %220 = load i32, i32* %kind, align 4
  %cmp305 = icmp eq i32 %220, 1
  br i1 %cmp305, label %cond.true.307, label %cond.false.310

cond.true.307:                                    ; preds = %land.rhs.304
  %221 = load i64, i64* %idx.addr, align 8
  %222 = load i8*, i8** %str, align 8
  %arrayidx308 = getelementptr i8, i8* %222, i64 %221
  %223 = load i8, i8* %arrayidx308, align 1
  %conv309 = zext i8 %223 to i32
  br label %cond.end.320

cond.false.310:                                   ; preds = %land.rhs.304
  %224 = load i32, i32* %kind, align 4
  %cmp311 = icmp eq i32 %224, 2
  br i1 %cmp311, label %cond.true.313, label %cond.false.316

cond.true.313:                                    ; preds = %cond.false.310
  %225 = load i64, i64* %idx.addr, align 8
  %226 = load i8*, i8** %str, align 8
  %227 = bitcast i8* %226 to i16*
  %arrayidx314 = getelementptr i16, i16* %227, i64 %225
  %228 = load i16, i16* %arrayidx314, align 2
  %conv315 = zext i16 %228 to i32
  br label %cond.end.318

cond.false.316:                                   ; preds = %cond.false.310
  %229 = load i64, i64* %idx.addr, align 8
  %230 = load i8*, i8** %str, align 8
  %231 = bitcast i8* %230 to i32*
  %arrayidx317 = getelementptr i32, i32* %231, i64 %229
  %232 = load i32, i32* %arrayidx317, align 4
  br label %cond.end.318

cond.end.318:                                     ; preds = %cond.false.316, %cond.true.313
  %cond319 = phi i32 [ %conv315, %cond.true.313 ], [ %232, %cond.false.316 ]
  br label %cond.end.320

cond.end.320:                                     ; preds = %cond.end.318, %cond.true.307
  %cond321 = phi i32 [ %conv309, %cond.true.307 ], [ %cond319, %cond.end.318 ]
  %cmp322 = icmp eq i32 %cond321, 32
  br i1 %cmp322, label %lor.end.384, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %cond.end.320
  %233 = load i32, i32* %kind, align 4
  %cmp325 = icmp eq i32 %233, 1
  br i1 %cmp325, label %cond.true.327, label %cond.false.330

cond.true.327:                                    ; preds = %lor.lhs.false.324
  %234 = load i64, i64* %idx.addr, align 8
  %235 = load i8*, i8** %str, align 8
  %arrayidx328 = getelementptr i8, i8* %235, i64 %234
  %236 = load i8, i8* %arrayidx328, align 1
  %conv329 = zext i8 %236 to i32
  br label %cond.end.340

cond.false.330:                                   ; preds = %lor.lhs.false.324
  %237 = load i32, i32* %kind, align 4
  %cmp331 = icmp eq i32 %237, 2
  br i1 %cmp331, label %cond.true.333, label %cond.false.336

cond.true.333:                                    ; preds = %cond.false.330
  %238 = load i64, i64* %idx.addr, align 8
  %239 = load i8*, i8** %str, align 8
  %240 = bitcast i8* %239 to i16*
  %arrayidx334 = getelementptr i16, i16* %240, i64 %238
  %241 = load i16, i16* %arrayidx334, align 2
  %conv335 = zext i16 %241 to i32
  br label %cond.end.338

cond.false.336:                                   ; preds = %cond.false.330
  %242 = load i64, i64* %idx.addr, align 8
  %243 = load i8*, i8** %str, align 8
  %244 = bitcast i8* %243 to i32*
  %arrayidx337 = getelementptr i32, i32* %244, i64 %242
  %245 = load i32, i32* %arrayidx337, align 4
  br label %cond.end.338

cond.end.338:                                     ; preds = %cond.false.336, %cond.true.333
  %cond339 = phi i32 [ %conv335, %cond.true.333 ], [ %245, %cond.false.336 ]
  br label %cond.end.340

cond.end.340:                                     ; preds = %cond.end.338, %cond.true.327
  %cond341 = phi i32 [ %conv329, %cond.true.327 ], [ %cond339, %cond.end.338 ]
  %cmp342 = icmp eq i32 %cond341, 9
  br i1 %cmp342, label %lor.end.384, label %lor.lhs.false.344

lor.lhs.false.344:                                ; preds = %cond.end.340
  %246 = load i32, i32* %kind, align 4
  %cmp345 = icmp eq i32 %246, 1
  br i1 %cmp345, label %cond.true.347, label %cond.false.350

cond.true.347:                                    ; preds = %lor.lhs.false.344
  %247 = load i64, i64* %idx.addr, align 8
  %248 = load i8*, i8** %str, align 8
  %arrayidx348 = getelementptr i8, i8* %248, i64 %247
  %249 = load i8, i8* %arrayidx348, align 1
  %conv349 = zext i8 %249 to i32
  br label %cond.end.360

cond.false.350:                                   ; preds = %lor.lhs.false.344
  %250 = load i32, i32* %kind, align 4
  %cmp351 = icmp eq i32 %250, 2
  br i1 %cmp351, label %cond.true.353, label %cond.false.356

cond.true.353:                                    ; preds = %cond.false.350
  %251 = load i64, i64* %idx.addr, align 8
  %252 = load i8*, i8** %str, align 8
  %253 = bitcast i8* %252 to i16*
  %arrayidx354 = getelementptr i16, i16* %253, i64 %251
  %254 = load i16, i16* %arrayidx354, align 2
  %conv355 = zext i16 %254 to i32
  br label %cond.end.358

cond.false.356:                                   ; preds = %cond.false.350
  %255 = load i64, i64* %idx.addr, align 8
  %256 = load i8*, i8** %str, align 8
  %257 = bitcast i8* %256 to i32*
  %arrayidx357 = getelementptr i32, i32* %257, i64 %255
  %258 = load i32, i32* %arrayidx357, align 4
  br label %cond.end.358

cond.end.358:                                     ; preds = %cond.false.356, %cond.true.353
  %cond359 = phi i32 [ %conv355, %cond.true.353 ], [ %258, %cond.false.356 ]
  br label %cond.end.360

cond.end.360:                                     ; preds = %cond.end.358, %cond.true.347
  %cond361 = phi i32 [ %conv349, %cond.true.347 ], [ %cond359, %cond.end.358 ]
  %cmp362 = icmp eq i32 %cond361, 10
  br i1 %cmp362, label %lor.end.384, label %lor.rhs.364

lor.rhs.364:                                      ; preds = %cond.end.360
  %259 = load i32, i32* %kind, align 4
  %cmp365 = icmp eq i32 %259, 1
  br i1 %cmp365, label %cond.true.367, label %cond.false.370

cond.true.367:                                    ; preds = %lor.rhs.364
  %260 = load i64, i64* %idx.addr, align 8
  %261 = load i8*, i8** %str, align 8
  %arrayidx368 = getelementptr i8, i8* %261, i64 %260
  %262 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %262 to i32
  br label %cond.end.380

cond.false.370:                                   ; preds = %lor.rhs.364
  %263 = load i32, i32* %kind, align 4
  %cmp371 = icmp eq i32 %263, 2
  br i1 %cmp371, label %cond.true.373, label %cond.false.376

cond.true.373:                                    ; preds = %cond.false.370
  %264 = load i64, i64* %idx.addr, align 8
  %265 = load i8*, i8** %str, align 8
  %266 = bitcast i8* %265 to i16*
  %arrayidx374 = getelementptr i16, i16* %266, i64 %264
  %267 = load i16, i16* %arrayidx374, align 2
  %conv375 = zext i16 %267 to i32
  br label %cond.end.378

cond.false.376:                                   ; preds = %cond.false.370
  %268 = load i64, i64* %idx.addr, align 8
  %269 = load i8*, i8** %str, align 8
  %270 = bitcast i8* %269 to i32*
  %arrayidx377 = getelementptr i32, i32* %270, i64 %268
  %271 = load i32, i32* %arrayidx377, align 4
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.false.376, %cond.true.373
  %cond379 = phi i32 [ %conv375, %cond.true.373 ], [ %271, %cond.false.376 ]
  br label %cond.end.380

cond.end.380:                                     ; preds = %cond.end.378, %cond.true.367
  %cond381 = phi i32 [ %conv369, %cond.true.367 ], [ %cond379, %cond.end.378 ]
  %cmp382 = icmp eq i32 %cond381, 13
  br label %lor.end.384

lor.end.384:                                      ; preds = %cond.end.380, %cond.end.360, %cond.end.340, %cond.end.320
  %272 = phi i1 [ true, %cond.end.360 ], [ true, %cond.end.340 ], [ true, %cond.end.320 ], [ %cmp382, %cond.end.380 ]
  br label %land.end.385

land.end.385:                                     ; preds = %lor.end.384, %while.cond.301
  %273 = phi i1 [ false, %while.cond.301 ], [ %272, %lor.end.384 ]
  br i1 %273, label %while.body.386, label %while.end.388

while.body.386:                                   ; preds = %land.end.385
  %274 = load i64, i64* %idx.addr, align 8
  %inc387 = add i64 %274, 1
  store i64 %inc387, i64* %idx.addr, align 8
  br label %while.cond.301

while.end.388:                                    ; preds = %land.end.385
  %275 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %276 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %277 = load i64, i64* %idx.addr, align 8
  %call389 = call %struct._object* @scan_once_unicode(%struct._PyScannerObject* %275, %struct._object* %276, i64 %277, i64* %next_idx)
  store %struct._object* %call389, %struct._object** %val, align 8
  %278 = load %struct._object*, %struct._object** %val, align 8
  %cmp390 = icmp eq %struct._object* %278, null
  br i1 %cmp390, label %if.then.392, label %if.end.393

if.then.392:                                      ; preds = %while.end.388
  br label %bail

if.end.393:                                       ; preds = %while.end.388
  %279 = load i32, i32* %has_pairs_hook, align 4
  %tobool394 = icmp ne i32 %279, 0
  br i1 %tobool394, label %if.then.395, label %if.else.467

if.then.395:                                      ; preds = %if.end.393
  %280 = load %struct._object*, %struct._object** %key, align 8
  %281 = load %struct._object*, %struct._object** %val, align 8
  %call396 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %280, %struct._object* %281)
  store %struct._object* %call396, %struct._object** %item, align 8
  %282 = load %struct._object*, %struct._object** %item, align 8
  %cmp397 = icmp eq %struct._object* %282, null
  br i1 %cmp397, label %if.then.399, label %if.end.400

if.then.399:                                      ; preds = %if.then.395
  br label %bail

if.end.400:                                       ; preds = %if.then.395
  br label %do.body.401

do.body.401:                                      ; preds = %if.end.400
  %283 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %283, %struct._object** %_py_tmp, align 8
  %284 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp402 = icmp ne %struct._object* %284, null
  br i1 %cmp402, label %if.then.404, label %if.end.417

if.then.404:                                      ; preds = %do.body.401
  store %struct._object* null, %struct._object** %key, align 8
  br label %do.body.405

do.body.405:                                      ; preds = %if.then.404
  %285 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %285, %struct._object** %_py_decref_tmp406, align 8
  %286 = load %struct._object*, %struct._object** %_py_decref_tmp406, align 8
  %ob_refcnt407 = getelementptr inbounds %struct._object, %struct._object* %286, i32 0, i32 0
  %287 = load i64, i64* %ob_refcnt407, align 8
  %dec408 = add i64 %287, -1
  store i64 %dec408, i64* %ob_refcnt407, align 8
  %cmp409 = icmp ne i64 %dec408, 0
  br i1 %cmp409, label %if.then.411, label %if.else.412

if.then.411:                                      ; preds = %do.body.405
  br label %if.end.415

if.else.412:                                      ; preds = %do.body.405
  %288 = load %struct._object*, %struct._object** %_py_decref_tmp406, align 8
  %ob_type413 = getelementptr inbounds %struct._object, %struct._object* %288, i32 0, i32 1
  %289 = load %struct._typeobject*, %struct._typeobject** %ob_type413, align 8
  %tp_dealloc414 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %289, i32 0, i32 4
  %290 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc414, align 8
  %291 = load %struct._object*, %struct._object** %_py_decref_tmp406, align 8
  call void %290(%struct._object* %291)
  br label %if.end.415

if.end.415:                                       ; preds = %if.else.412, %if.then.411
  br label %do.end.416

do.end.416:                                       ; preds = %if.end.415
  br label %if.end.417

if.end.417:                                       ; preds = %do.end.416, %do.body.401
  br label %do.end.418

do.end.418:                                       ; preds = %if.end.417
  br label %do.body.419

do.body.419:                                      ; preds = %do.end.418
  %292 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %292, %struct._object** %_py_tmp420, align 8
  %293 = load %struct._object*, %struct._object** %_py_tmp420, align 8
  %cmp421 = icmp ne %struct._object* %293, null
  br i1 %cmp421, label %if.then.423, label %if.end.436

if.then.423:                                      ; preds = %do.body.419
  store %struct._object* null, %struct._object** %val, align 8
  br label %do.body.424

do.body.424:                                      ; preds = %if.then.423
  %294 = load %struct._object*, %struct._object** %_py_tmp420, align 8
  store %struct._object* %294, %struct._object** %_py_decref_tmp425, align 8
  %295 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  %ob_refcnt426 = getelementptr inbounds %struct._object, %struct._object* %295, i32 0, i32 0
  %296 = load i64, i64* %ob_refcnt426, align 8
  %dec427 = add i64 %296, -1
  store i64 %dec427, i64* %ob_refcnt426, align 8
  %cmp428 = icmp ne i64 %dec427, 0
  br i1 %cmp428, label %if.then.430, label %if.else.431

if.then.430:                                      ; preds = %do.body.424
  br label %if.end.434

if.else.431:                                      ; preds = %do.body.424
  %297 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  %ob_type432 = getelementptr inbounds %struct._object, %struct._object* %297, i32 0, i32 1
  %298 = load %struct._typeobject*, %struct._typeobject** %ob_type432, align 8
  %tp_dealloc433 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %298, i32 0, i32 4
  %299 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc433, align 8
  %300 = load %struct._object*, %struct._object** %_py_decref_tmp425, align 8
  call void %299(%struct._object* %300)
  br label %if.end.434

if.end.434:                                       ; preds = %if.else.431, %if.then.430
  br label %do.end.435

do.end.435:                                       ; preds = %if.end.434
  br label %if.end.436

if.end.436:                                       ; preds = %do.end.435, %do.body.419
  br label %do.end.437

do.end.437:                                       ; preds = %if.end.436
  %301 = load %struct._object*, %struct._object** %rval, align 8
  %302 = load %struct._object*, %struct._object** %item, align 8
  %call438 = call i32 @PyList_Append(%struct._object* %301, %struct._object* %302)
  %cmp439 = icmp eq i32 %call438, -1
  br i1 %cmp439, label %if.then.441, label %if.end.454

if.then.441:                                      ; preds = %do.end.437
  br label %do.body.442

do.body.442:                                      ; preds = %if.then.441
  %303 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %303, %struct._object** %_py_decref_tmp443, align 8
  %304 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8
  %ob_refcnt444 = getelementptr inbounds %struct._object, %struct._object* %304, i32 0, i32 0
  %305 = load i64, i64* %ob_refcnt444, align 8
  %dec445 = add i64 %305, -1
  store i64 %dec445, i64* %ob_refcnt444, align 8
  %cmp446 = icmp ne i64 %dec445, 0
  br i1 %cmp446, label %if.then.448, label %if.else.449

if.then.448:                                      ; preds = %do.body.442
  br label %if.end.452

if.else.449:                                      ; preds = %do.body.442
  %306 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8
  %ob_type450 = getelementptr inbounds %struct._object, %struct._object* %306, i32 0, i32 1
  %307 = load %struct._typeobject*, %struct._typeobject** %ob_type450, align 8
  %tp_dealloc451 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %307, i32 0, i32 4
  %308 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc451, align 8
  %309 = load %struct._object*, %struct._object** %_py_decref_tmp443, align 8
  call void %308(%struct._object* %309)
  br label %if.end.452

if.end.452:                                       ; preds = %if.else.449, %if.then.448
  br label %do.end.453

do.end.453:                                       ; preds = %if.end.452
  br label %bail

if.end.454:                                       ; preds = %do.end.437
  br label %do.body.455

do.body.455:                                      ; preds = %if.end.454
  %310 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %310, %struct._object** %_py_decref_tmp456, align 8
  %311 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  %ob_refcnt457 = getelementptr inbounds %struct._object, %struct._object* %311, i32 0, i32 0
  %312 = load i64, i64* %ob_refcnt457, align 8
  %dec458 = add i64 %312, -1
  store i64 %dec458, i64* %ob_refcnt457, align 8
  %cmp459 = icmp ne i64 %dec458, 0
  br i1 %cmp459, label %if.then.461, label %if.else.462

if.then.461:                                      ; preds = %do.body.455
  br label %if.end.465

if.else.462:                                      ; preds = %do.body.455
  %313 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  %ob_type463 = getelementptr inbounds %struct._object, %struct._object* %313, i32 0, i32 1
  %314 = load %struct._typeobject*, %struct._typeobject** %ob_type463, align 8
  %tp_dealloc464 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %314, i32 0, i32 4
  %315 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc464, align 8
  %316 = load %struct._object*, %struct._object** %_py_decref_tmp456, align 8
  call void %315(%struct._object* %316)
  br label %if.end.465

if.end.465:                                       ; preds = %if.else.462, %if.then.461
  br label %do.end.466

do.end.466:                                       ; preds = %if.end.465
  br label %if.end.511

if.else.467:                                      ; preds = %if.end.393
  %317 = load %struct._object*, %struct._object** %rval, align 8
  %318 = load %struct._object*, %struct._object** %key, align 8
  %319 = load %struct._object*, %struct._object** %val, align 8
  %call468 = call i32 @PyDict_SetItem(%struct._object* %317, %struct._object* %318, %struct._object* %319)
  %cmp469 = icmp slt i32 %call468, 0
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.else.467
  br label %bail

if.end.472:                                       ; preds = %if.else.467
  br label %do.body.473

do.body.473:                                      ; preds = %if.end.472
  %320 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %320, %struct._object** %_py_tmp474, align 8
  %321 = load %struct._object*, %struct._object** %_py_tmp474, align 8
  %cmp475 = icmp ne %struct._object* %321, null
  br i1 %cmp475, label %if.then.477, label %if.end.490

if.then.477:                                      ; preds = %do.body.473
  store %struct._object* null, %struct._object** %key, align 8
  br label %do.body.478

do.body.478:                                      ; preds = %if.then.477
  %322 = load %struct._object*, %struct._object** %_py_tmp474, align 8
  store %struct._object* %322, %struct._object** %_py_decref_tmp479, align 8
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  %ob_refcnt480 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 0
  %324 = load i64, i64* %ob_refcnt480, align 8
  %dec481 = add i64 %324, -1
  store i64 %dec481, i64* %ob_refcnt480, align 8
  %cmp482 = icmp ne i64 %dec481, 0
  br i1 %cmp482, label %if.then.484, label %if.else.485

if.then.484:                                      ; preds = %do.body.478
  br label %if.end.488

if.else.485:                                      ; preds = %do.body.478
  %325 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  %ob_type486 = getelementptr inbounds %struct._object, %struct._object* %325, i32 0, i32 1
  %326 = load %struct._typeobject*, %struct._typeobject** %ob_type486, align 8
  %tp_dealloc487 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %326, i32 0, i32 4
  %327 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc487, align 8
  %328 = load %struct._object*, %struct._object** %_py_decref_tmp479, align 8
  call void %327(%struct._object* %328)
  br label %if.end.488

if.end.488:                                       ; preds = %if.else.485, %if.then.484
  br label %do.end.489

do.end.489:                                       ; preds = %if.end.488
  br label %if.end.490

if.end.490:                                       ; preds = %do.end.489, %do.body.473
  br label %do.end.491

do.end.491:                                       ; preds = %if.end.490
  br label %do.body.492

do.body.492:                                      ; preds = %do.end.491
  %329 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %329, %struct._object** %_py_tmp493, align 8
  %330 = load %struct._object*, %struct._object** %_py_tmp493, align 8
  %cmp494 = icmp ne %struct._object* %330, null
  br i1 %cmp494, label %if.then.496, label %if.end.509

if.then.496:                                      ; preds = %do.body.492
  store %struct._object* null, %struct._object** %val, align 8
  br label %do.body.497

do.body.497:                                      ; preds = %if.then.496
  %331 = load %struct._object*, %struct._object** %_py_tmp493, align 8
  store %struct._object* %331, %struct._object** %_py_decref_tmp498, align 8
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_refcnt499 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 0
  %333 = load i64, i64* %ob_refcnt499, align 8
  %dec500 = add i64 %333, -1
  store i64 %dec500, i64* %ob_refcnt499, align 8
  %cmp501 = icmp ne i64 %dec500, 0
  br i1 %cmp501, label %if.then.503, label %if.else.504

if.then.503:                                      ; preds = %do.body.497
  br label %if.end.507

if.else.504:                                      ; preds = %do.body.497
  %334 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  %ob_type505 = getelementptr inbounds %struct._object, %struct._object* %334, i32 0, i32 1
  %335 = load %struct._typeobject*, %struct._typeobject** %ob_type505, align 8
  %tp_dealloc506 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %335, i32 0, i32 4
  %336 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc506, align 8
  %337 = load %struct._object*, %struct._object** %_py_decref_tmp498, align 8
  call void %336(%struct._object* %337)
  br label %if.end.507

if.end.507:                                       ; preds = %if.else.504, %if.then.503
  br label %do.end.508

do.end.508:                                       ; preds = %if.end.507
  br label %if.end.509

if.end.509:                                       ; preds = %do.end.508, %do.body.492
  br label %do.end.510

do.end.510:                                       ; preds = %if.end.509
  br label %if.end.511

if.end.511:                                       ; preds = %do.end.510, %do.end.466
  %338 = load i64, i64* %next_idx, align 8
  store i64 %338, i64* %idx.addr, align 8
  br label %while.cond.512

while.cond.512:                                   ; preds = %while.body.597, %if.end.511
  %339 = load i64, i64* %idx.addr, align 8
  %340 = load i64, i64* %end_idx, align 8
  %cmp513 = icmp sle i64 %339, %340
  br i1 %cmp513, label %land.rhs.515, label %land.end.596

land.rhs.515:                                     ; preds = %while.cond.512
  %341 = load i32, i32* %kind, align 4
  %cmp516 = icmp eq i32 %341, 1
  br i1 %cmp516, label %cond.true.518, label %cond.false.521

cond.true.518:                                    ; preds = %land.rhs.515
  %342 = load i64, i64* %idx.addr, align 8
  %343 = load i8*, i8** %str, align 8
  %arrayidx519 = getelementptr i8, i8* %343, i64 %342
  %344 = load i8, i8* %arrayidx519, align 1
  %conv520 = zext i8 %344 to i32
  br label %cond.end.531

cond.false.521:                                   ; preds = %land.rhs.515
  %345 = load i32, i32* %kind, align 4
  %cmp522 = icmp eq i32 %345, 2
  br i1 %cmp522, label %cond.true.524, label %cond.false.527

cond.true.524:                                    ; preds = %cond.false.521
  %346 = load i64, i64* %idx.addr, align 8
  %347 = load i8*, i8** %str, align 8
  %348 = bitcast i8* %347 to i16*
  %arrayidx525 = getelementptr i16, i16* %348, i64 %346
  %349 = load i16, i16* %arrayidx525, align 2
  %conv526 = zext i16 %349 to i32
  br label %cond.end.529

cond.false.527:                                   ; preds = %cond.false.521
  %350 = load i64, i64* %idx.addr, align 8
  %351 = load i8*, i8** %str, align 8
  %352 = bitcast i8* %351 to i32*
  %arrayidx528 = getelementptr i32, i32* %352, i64 %350
  %353 = load i32, i32* %arrayidx528, align 4
  br label %cond.end.529

cond.end.529:                                     ; preds = %cond.false.527, %cond.true.524
  %cond530 = phi i32 [ %conv526, %cond.true.524 ], [ %353, %cond.false.527 ]
  br label %cond.end.531

cond.end.531:                                     ; preds = %cond.end.529, %cond.true.518
  %cond532 = phi i32 [ %conv520, %cond.true.518 ], [ %cond530, %cond.end.529 ]
  %cmp533 = icmp eq i32 %cond532, 32
  br i1 %cmp533, label %lor.end.595, label %lor.lhs.false.535

lor.lhs.false.535:                                ; preds = %cond.end.531
  %354 = load i32, i32* %kind, align 4
  %cmp536 = icmp eq i32 %354, 1
  br i1 %cmp536, label %cond.true.538, label %cond.false.541

cond.true.538:                                    ; preds = %lor.lhs.false.535
  %355 = load i64, i64* %idx.addr, align 8
  %356 = load i8*, i8** %str, align 8
  %arrayidx539 = getelementptr i8, i8* %356, i64 %355
  %357 = load i8, i8* %arrayidx539, align 1
  %conv540 = zext i8 %357 to i32
  br label %cond.end.551

cond.false.541:                                   ; preds = %lor.lhs.false.535
  %358 = load i32, i32* %kind, align 4
  %cmp542 = icmp eq i32 %358, 2
  br i1 %cmp542, label %cond.true.544, label %cond.false.547

cond.true.544:                                    ; preds = %cond.false.541
  %359 = load i64, i64* %idx.addr, align 8
  %360 = load i8*, i8** %str, align 8
  %361 = bitcast i8* %360 to i16*
  %arrayidx545 = getelementptr i16, i16* %361, i64 %359
  %362 = load i16, i16* %arrayidx545, align 2
  %conv546 = zext i16 %362 to i32
  br label %cond.end.549

cond.false.547:                                   ; preds = %cond.false.541
  %363 = load i64, i64* %idx.addr, align 8
  %364 = load i8*, i8** %str, align 8
  %365 = bitcast i8* %364 to i32*
  %arrayidx548 = getelementptr i32, i32* %365, i64 %363
  %366 = load i32, i32* %arrayidx548, align 4
  br label %cond.end.549

cond.end.549:                                     ; preds = %cond.false.547, %cond.true.544
  %cond550 = phi i32 [ %conv546, %cond.true.544 ], [ %366, %cond.false.547 ]
  br label %cond.end.551

cond.end.551:                                     ; preds = %cond.end.549, %cond.true.538
  %cond552 = phi i32 [ %conv540, %cond.true.538 ], [ %cond550, %cond.end.549 ]
  %cmp553 = icmp eq i32 %cond552, 9
  br i1 %cmp553, label %lor.end.595, label %lor.lhs.false.555

lor.lhs.false.555:                                ; preds = %cond.end.551
  %367 = load i32, i32* %kind, align 4
  %cmp556 = icmp eq i32 %367, 1
  br i1 %cmp556, label %cond.true.558, label %cond.false.561

cond.true.558:                                    ; preds = %lor.lhs.false.555
  %368 = load i64, i64* %idx.addr, align 8
  %369 = load i8*, i8** %str, align 8
  %arrayidx559 = getelementptr i8, i8* %369, i64 %368
  %370 = load i8, i8* %arrayidx559, align 1
  %conv560 = zext i8 %370 to i32
  br label %cond.end.571

cond.false.561:                                   ; preds = %lor.lhs.false.555
  %371 = load i32, i32* %kind, align 4
  %cmp562 = icmp eq i32 %371, 2
  br i1 %cmp562, label %cond.true.564, label %cond.false.567

cond.true.564:                                    ; preds = %cond.false.561
  %372 = load i64, i64* %idx.addr, align 8
  %373 = load i8*, i8** %str, align 8
  %374 = bitcast i8* %373 to i16*
  %arrayidx565 = getelementptr i16, i16* %374, i64 %372
  %375 = load i16, i16* %arrayidx565, align 2
  %conv566 = zext i16 %375 to i32
  br label %cond.end.569

cond.false.567:                                   ; preds = %cond.false.561
  %376 = load i64, i64* %idx.addr, align 8
  %377 = load i8*, i8** %str, align 8
  %378 = bitcast i8* %377 to i32*
  %arrayidx568 = getelementptr i32, i32* %378, i64 %376
  %379 = load i32, i32* %arrayidx568, align 4
  br label %cond.end.569

cond.end.569:                                     ; preds = %cond.false.567, %cond.true.564
  %cond570 = phi i32 [ %conv566, %cond.true.564 ], [ %379, %cond.false.567 ]
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.end.569, %cond.true.558
  %cond572 = phi i32 [ %conv560, %cond.true.558 ], [ %cond570, %cond.end.569 ]
  %cmp573 = icmp eq i32 %cond572, 10
  br i1 %cmp573, label %lor.end.595, label %lor.rhs.575

lor.rhs.575:                                      ; preds = %cond.end.571
  %380 = load i32, i32* %kind, align 4
  %cmp576 = icmp eq i32 %380, 1
  br i1 %cmp576, label %cond.true.578, label %cond.false.581

cond.true.578:                                    ; preds = %lor.rhs.575
  %381 = load i64, i64* %idx.addr, align 8
  %382 = load i8*, i8** %str, align 8
  %arrayidx579 = getelementptr i8, i8* %382, i64 %381
  %383 = load i8, i8* %arrayidx579, align 1
  %conv580 = zext i8 %383 to i32
  br label %cond.end.591

cond.false.581:                                   ; preds = %lor.rhs.575
  %384 = load i32, i32* %kind, align 4
  %cmp582 = icmp eq i32 %384, 2
  br i1 %cmp582, label %cond.true.584, label %cond.false.587

cond.true.584:                                    ; preds = %cond.false.581
  %385 = load i64, i64* %idx.addr, align 8
  %386 = load i8*, i8** %str, align 8
  %387 = bitcast i8* %386 to i16*
  %arrayidx585 = getelementptr i16, i16* %387, i64 %385
  %388 = load i16, i16* %arrayidx585, align 2
  %conv586 = zext i16 %388 to i32
  br label %cond.end.589

cond.false.587:                                   ; preds = %cond.false.581
  %389 = load i64, i64* %idx.addr, align 8
  %390 = load i8*, i8** %str, align 8
  %391 = bitcast i8* %390 to i32*
  %arrayidx588 = getelementptr i32, i32* %391, i64 %389
  %392 = load i32, i32* %arrayidx588, align 4
  br label %cond.end.589

cond.end.589:                                     ; preds = %cond.false.587, %cond.true.584
  %cond590 = phi i32 [ %conv586, %cond.true.584 ], [ %392, %cond.false.587 ]
  br label %cond.end.591

cond.end.591:                                     ; preds = %cond.end.589, %cond.true.578
  %cond592 = phi i32 [ %conv580, %cond.true.578 ], [ %cond590, %cond.end.589 ]
  %cmp593 = icmp eq i32 %cond592, 13
  br label %lor.end.595

lor.end.595:                                      ; preds = %cond.end.591, %cond.end.571, %cond.end.551, %cond.end.531
  %393 = phi i1 [ true, %cond.end.571 ], [ true, %cond.end.551 ], [ true, %cond.end.531 ], [ %cmp593, %cond.end.591 ]
  br label %land.end.596

land.end.596:                                     ; preds = %lor.end.595, %while.cond.512
  %394 = phi i1 [ false, %while.cond.512 ], [ %393, %lor.end.595 ]
  br i1 %394, label %while.body.597, label %while.end.599

while.body.597:                                   ; preds = %land.end.596
  %395 = load i64, i64* %idx.addr, align 8
  %inc598 = add i64 %395, 1
  store i64 %inc598, i64* %idx.addr, align 8
  br label %while.cond.512

while.end.599:                                    ; preds = %land.end.596
  %396 = load i64, i64* %idx.addr, align 8
  %397 = load i64, i64* %end_idx, align 8
  %cmp600 = icmp sle i64 %396, %397
  br i1 %cmp600, label %land.lhs.true, label %if.end.622

land.lhs.true:                                    ; preds = %while.end.599
  %398 = load i32, i32* %kind, align 4
  %cmp602 = icmp eq i32 %398, 1
  br i1 %cmp602, label %cond.true.604, label %cond.false.607

cond.true.604:                                    ; preds = %land.lhs.true
  %399 = load i64, i64* %idx.addr, align 8
  %400 = load i8*, i8** %str, align 8
  %arrayidx605 = getelementptr i8, i8* %400, i64 %399
  %401 = load i8, i8* %arrayidx605, align 1
  %conv606 = zext i8 %401 to i32
  br label %cond.end.617

cond.false.607:                                   ; preds = %land.lhs.true
  %402 = load i32, i32* %kind, align 4
  %cmp608 = icmp eq i32 %402, 2
  br i1 %cmp608, label %cond.true.610, label %cond.false.613

cond.true.610:                                    ; preds = %cond.false.607
  %403 = load i64, i64* %idx.addr, align 8
  %404 = load i8*, i8** %str, align 8
  %405 = bitcast i8* %404 to i16*
  %arrayidx611 = getelementptr i16, i16* %405, i64 %403
  %406 = load i16, i16* %arrayidx611, align 2
  %conv612 = zext i16 %406 to i32
  br label %cond.end.615

cond.false.613:                                   ; preds = %cond.false.607
  %407 = load i64, i64* %idx.addr, align 8
  %408 = load i8*, i8** %str, align 8
  %409 = bitcast i8* %408 to i32*
  %arrayidx614 = getelementptr i32, i32* %409, i64 %407
  %410 = load i32, i32* %arrayidx614, align 4
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.false.613, %cond.true.610
  %cond616 = phi i32 [ %conv612, %cond.true.610 ], [ %410, %cond.false.613 ]
  br label %cond.end.617

cond.end.617:                                     ; preds = %cond.end.615, %cond.true.604
  %cond618 = phi i32 [ %conv606, %cond.true.604 ], [ %cond616, %cond.end.615 ]
  %cmp619 = icmp eq i32 %cond618, 125
  br i1 %cmp619, label %if.then.621, label %if.end.622

if.then.621:                                      ; preds = %cond.end.617
  br label %while.end.736

if.end.622:                                       ; preds = %cond.end.617, %while.end.599
  %411 = load i64, i64* %idx.addr, align 8
  %412 = load i64, i64* %end_idx, align 8
  %cmp623 = icmp sgt i64 %411, %412
  br i1 %cmp623, label %if.then.645, label %lor.lhs.false.625

lor.lhs.false.625:                                ; preds = %if.end.622
  %413 = load i32, i32* %kind, align 4
  %cmp626 = icmp eq i32 %413, 1
  br i1 %cmp626, label %cond.true.628, label %cond.false.631

cond.true.628:                                    ; preds = %lor.lhs.false.625
  %414 = load i64, i64* %idx.addr, align 8
  %415 = load i8*, i8** %str, align 8
  %arrayidx629 = getelementptr i8, i8* %415, i64 %414
  %416 = load i8, i8* %arrayidx629, align 1
  %conv630 = zext i8 %416 to i32
  br label %cond.end.641

cond.false.631:                                   ; preds = %lor.lhs.false.625
  %417 = load i32, i32* %kind, align 4
  %cmp632 = icmp eq i32 %417, 2
  br i1 %cmp632, label %cond.true.634, label %cond.false.637

cond.true.634:                                    ; preds = %cond.false.631
  %418 = load i64, i64* %idx.addr, align 8
  %419 = load i8*, i8** %str, align 8
  %420 = bitcast i8* %419 to i16*
  %arrayidx635 = getelementptr i16, i16* %420, i64 %418
  %421 = load i16, i16* %arrayidx635, align 2
  %conv636 = zext i16 %421 to i32
  br label %cond.end.639

cond.false.637:                                   ; preds = %cond.false.631
  %422 = load i64, i64* %idx.addr, align 8
  %423 = load i8*, i8** %str, align 8
  %424 = bitcast i8* %423 to i32*
  %arrayidx638 = getelementptr i32, i32* %424, i64 %422
  %425 = load i32, i32* %arrayidx638, align 4
  br label %cond.end.639

cond.end.639:                                     ; preds = %cond.false.637, %cond.true.634
  %cond640 = phi i32 [ %conv636, %cond.true.634 ], [ %425, %cond.false.637 ]
  br label %cond.end.641

cond.end.641:                                     ; preds = %cond.end.639, %cond.true.628
  %cond642 = phi i32 [ %conv630, %cond.true.628 ], [ %cond640, %cond.end.639 ]
  %cmp643 = icmp ne i32 %cond642, 44
  br i1 %cmp643, label %if.then.645, label %if.end.646

if.then.645:                                      ; preds = %cond.end.641, %if.end.622
  %426 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %427 = load i64, i64* %idx.addr, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), %struct._object* %426, i64 %427)
  br label %bail

if.end.646:                                       ; preds = %cond.end.641
  %428 = load i64, i64* %idx.addr, align 8
  %inc647 = add i64 %428, 1
  store i64 %inc647, i64* %idx.addr, align 8
  br label %while.cond.648

while.cond.648:                                   ; preds = %while.body.733, %if.end.646
  %429 = load i64, i64* %idx.addr, align 8
  %430 = load i64, i64* %end_idx, align 8
  %cmp649 = icmp sle i64 %429, %430
  br i1 %cmp649, label %land.rhs.651, label %land.end.732

land.rhs.651:                                     ; preds = %while.cond.648
  %431 = load i32, i32* %kind, align 4
  %cmp652 = icmp eq i32 %431, 1
  br i1 %cmp652, label %cond.true.654, label %cond.false.657

cond.true.654:                                    ; preds = %land.rhs.651
  %432 = load i64, i64* %idx.addr, align 8
  %433 = load i8*, i8** %str, align 8
  %arrayidx655 = getelementptr i8, i8* %433, i64 %432
  %434 = load i8, i8* %arrayidx655, align 1
  %conv656 = zext i8 %434 to i32
  br label %cond.end.667

cond.false.657:                                   ; preds = %land.rhs.651
  %435 = load i32, i32* %kind, align 4
  %cmp658 = icmp eq i32 %435, 2
  br i1 %cmp658, label %cond.true.660, label %cond.false.663

cond.true.660:                                    ; preds = %cond.false.657
  %436 = load i64, i64* %idx.addr, align 8
  %437 = load i8*, i8** %str, align 8
  %438 = bitcast i8* %437 to i16*
  %arrayidx661 = getelementptr i16, i16* %438, i64 %436
  %439 = load i16, i16* %arrayidx661, align 2
  %conv662 = zext i16 %439 to i32
  br label %cond.end.665

cond.false.663:                                   ; preds = %cond.false.657
  %440 = load i64, i64* %idx.addr, align 8
  %441 = load i8*, i8** %str, align 8
  %442 = bitcast i8* %441 to i32*
  %arrayidx664 = getelementptr i32, i32* %442, i64 %440
  %443 = load i32, i32* %arrayidx664, align 4
  br label %cond.end.665

cond.end.665:                                     ; preds = %cond.false.663, %cond.true.660
  %cond666 = phi i32 [ %conv662, %cond.true.660 ], [ %443, %cond.false.663 ]
  br label %cond.end.667

cond.end.667:                                     ; preds = %cond.end.665, %cond.true.654
  %cond668 = phi i32 [ %conv656, %cond.true.654 ], [ %cond666, %cond.end.665 ]
  %cmp669 = icmp eq i32 %cond668, 32
  br i1 %cmp669, label %lor.end.731, label %lor.lhs.false.671

lor.lhs.false.671:                                ; preds = %cond.end.667
  %444 = load i32, i32* %kind, align 4
  %cmp672 = icmp eq i32 %444, 1
  br i1 %cmp672, label %cond.true.674, label %cond.false.677

cond.true.674:                                    ; preds = %lor.lhs.false.671
  %445 = load i64, i64* %idx.addr, align 8
  %446 = load i8*, i8** %str, align 8
  %arrayidx675 = getelementptr i8, i8* %446, i64 %445
  %447 = load i8, i8* %arrayidx675, align 1
  %conv676 = zext i8 %447 to i32
  br label %cond.end.687

cond.false.677:                                   ; preds = %lor.lhs.false.671
  %448 = load i32, i32* %kind, align 4
  %cmp678 = icmp eq i32 %448, 2
  br i1 %cmp678, label %cond.true.680, label %cond.false.683

cond.true.680:                                    ; preds = %cond.false.677
  %449 = load i64, i64* %idx.addr, align 8
  %450 = load i8*, i8** %str, align 8
  %451 = bitcast i8* %450 to i16*
  %arrayidx681 = getelementptr i16, i16* %451, i64 %449
  %452 = load i16, i16* %arrayidx681, align 2
  %conv682 = zext i16 %452 to i32
  br label %cond.end.685

cond.false.683:                                   ; preds = %cond.false.677
  %453 = load i64, i64* %idx.addr, align 8
  %454 = load i8*, i8** %str, align 8
  %455 = bitcast i8* %454 to i32*
  %arrayidx684 = getelementptr i32, i32* %455, i64 %453
  %456 = load i32, i32* %arrayidx684, align 4
  br label %cond.end.685

cond.end.685:                                     ; preds = %cond.false.683, %cond.true.680
  %cond686 = phi i32 [ %conv682, %cond.true.680 ], [ %456, %cond.false.683 ]
  br label %cond.end.687

cond.end.687:                                     ; preds = %cond.end.685, %cond.true.674
  %cond688 = phi i32 [ %conv676, %cond.true.674 ], [ %cond686, %cond.end.685 ]
  %cmp689 = icmp eq i32 %cond688, 9
  br i1 %cmp689, label %lor.end.731, label %lor.lhs.false.691

lor.lhs.false.691:                                ; preds = %cond.end.687
  %457 = load i32, i32* %kind, align 4
  %cmp692 = icmp eq i32 %457, 1
  br i1 %cmp692, label %cond.true.694, label %cond.false.697

cond.true.694:                                    ; preds = %lor.lhs.false.691
  %458 = load i64, i64* %idx.addr, align 8
  %459 = load i8*, i8** %str, align 8
  %arrayidx695 = getelementptr i8, i8* %459, i64 %458
  %460 = load i8, i8* %arrayidx695, align 1
  %conv696 = zext i8 %460 to i32
  br label %cond.end.707

cond.false.697:                                   ; preds = %lor.lhs.false.691
  %461 = load i32, i32* %kind, align 4
  %cmp698 = icmp eq i32 %461, 2
  br i1 %cmp698, label %cond.true.700, label %cond.false.703

cond.true.700:                                    ; preds = %cond.false.697
  %462 = load i64, i64* %idx.addr, align 8
  %463 = load i8*, i8** %str, align 8
  %464 = bitcast i8* %463 to i16*
  %arrayidx701 = getelementptr i16, i16* %464, i64 %462
  %465 = load i16, i16* %arrayidx701, align 2
  %conv702 = zext i16 %465 to i32
  br label %cond.end.705

cond.false.703:                                   ; preds = %cond.false.697
  %466 = load i64, i64* %idx.addr, align 8
  %467 = load i8*, i8** %str, align 8
  %468 = bitcast i8* %467 to i32*
  %arrayidx704 = getelementptr i32, i32* %468, i64 %466
  %469 = load i32, i32* %arrayidx704, align 4
  br label %cond.end.705

cond.end.705:                                     ; preds = %cond.false.703, %cond.true.700
  %cond706 = phi i32 [ %conv702, %cond.true.700 ], [ %469, %cond.false.703 ]
  br label %cond.end.707

cond.end.707:                                     ; preds = %cond.end.705, %cond.true.694
  %cond708 = phi i32 [ %conv696, %cond.true.694 ], [ %cond706, %cond.end.705 ]
  %cmp709 = icmp eq i32 %cond708, 10
  br i1 %cmp709, label %lor.end.731, label %lor.rhs.711

lor.rhs.711:                                      ; preds = %cond.end.707
  %470 = load i32, i32* %kind, align 4
  %cmp712 = icmp eq i32 %470, 1
  br i1 %cmp712, label %cond.true.714, label %cond.false.717

cond.true.714:                                    ; preds = %lor.rhs.711
  %471 = load i64, i64* %idx.addr, align 8
  %472 = load i8*, i8** %str, align 8
  %arrayidx715 = getelementptr i8, i8* %472, i64 %471
  %473 = load i8, i8* %arrayidx715, align 1
  %conv716 = zext i8 %473 to i32
  br label %cond.end.727

cond.false.717:                                   ; preds = %lor.rhs.711
  %474 = load i32, i32* %kind, align 4
  %cmp718 = icmp eq i32 %474, 2
  br i1 %cmp718, label %cond.true.720, label %cond.false.723

cond.true.720:                                    ; preds = %cond.false.717
  %475 = load i64, i64* %idx.addr, align 8
  %476 = load i8*, i8** %str, align 8
  %477 = bitcast i8* %476 to i16*
  %arrayidx721 = getelementptr i16, i16* %477, i64 %475
  %478 = load i16, i16* %arrayidx721, align 2
  %conv722 = zext i16 %478 to i32
  br label %cond.end.725

cond.false.723:                                   ; preds = %cond.false.717
  %479 = load i64, i64* %idx.addr, align 8
  %480 = load i8*, i8** %str, align 8
  %481 = bitcast i8* %480 to i32*
  %arrayidx724 = getelementptr i32, i32* %481, i64 %479
  %482 = load i32, i32* %arrayidx724, align 4
  br label %cond.end.725

cond.end.725:                                     ; preds = %cond.false.723, %cond.true.720
  %cond726 = phi i32 [ %conv722, %cond.true.720 ], [ %482, %cond.false.723 ]
  br label %cond.end.727

cond.end.727:                                     ; preds = %cond.end.725, %cond.true.714
  %cond728 = phi i32 [ %conv716, %cond.true.714 ], [ %cond726, %cond.end.725 ]
  %cmp729 = icmp eq i32 %cond728, 13
  br label %lor.end.731

lor.end.731:                                      ; preds = %cond.end.727, %cond.end.707, %cond.end.687, %cond.end.667
  %483 = phi i1 [ true, %cond.end.707 ], [ true, %cond.end.687 ], [ true, %cond.end.667 ], [ %cmp729, %cond.end.727 ]
  br label %land.end.732

land.end.732:                                     ; preds = %lor.end.731, %while.cond.648
  %484 = phi i1 [ false, %while.cond.648 ], [ %483, %lor.end.731 ]
  br i1 %484, label %while.body.733, label %while.end.735

while.body.733:                                   ; preds = %land.end.732
  %485 = load i64, i64* %idx.addr, align 8
  %inc734 = add i64 %485, 1
  store i64 %inc734, i64* %idx.addr, align 8
  br label %while.cond.648

while.end.735:                                    ; preds = %land.end.732
  br label %while.body.139

while.end.736:                                    ; preds = %if.then.621
  br label %if.end.737

if.end.737:                                       ; preds = %while.end.736, %cond.end.133
  %486 = load i64, i64* %idx.addr, align 8
  %add738 = add i64 %486, 1
  %487 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %add738, i64* %487, align 8
  %488 = load i32, i32* %has_pairs_hook, align 4
  %tobool739 = icmp ne i32 %488, 0
  br i1 %tobool739, label %if.then.740, label %if.end.755

if.then.740:                                      ; preds = %if.end.737
  %489 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %object_pairs_hook741 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %489, i32 0, i32 3
  %490 = load %struct._object*, %struct._object** %object_pairs_hook741, align 8
  %491 = load %struct._object*, %struct._object** %rval, align 8
  %call742 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %490, %struct._object* %491, i8* null)
  store %struct._object* %call742, %struct._object** %val, align 8
  br label %do.body.743

do.body.743:                                      ; preds = %if.then.740
  %492 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %492, %struct._object** %_py_decref_tmp744, align 8
  %493 = load %struct._object*, %struct._object** %_py_decref_tmp744, align 8
  %ob_refcnt745 = getelementptr inbounds %struct._object, %struct._object* %493, i32 0, i32 0
  %494 = load i64, i64* %ob_refcnt745, align 8
  %dec746 = add i64 %494, -1
  store i64 %dec746, i64* %ob_refcnt745, align 8
  %cmp747 = icmp ne i64 %dec746, 0
  br i1 %cmp747, label %if.then.749, label %if.else.750

if.then.749:                                      ; preds = %do.body.743
  br label %if.end.753

if.else.750:                                      ; preds = %do.body.743
  %495 = load %struct._object*, %struct._object** %_py_decref_tmp744, align 8
  %ob_type751 = getelementptr inbounds %struct._object, %struct._object* %495, i32 0, i32 1
  %496 = load %struct._typeobject*, %struct._typeobject** %ob_type751, align 8
  %tp_dealloc752 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %496, i32 0, i32 4
  %497 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc752, align 8
  %498 = load %struct._object*, %struct._object** %_py_decref_tmp744, align 8
  call void %497(%struct._object* %498)
  br label %if.end.753

if.end.753:                                       ; preds = %if.else.750, %if.then.749
  br label %do.end.754

do.end.754:                                       ; preds = %if.end.753
  %499 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %499, %struct._object** %retval
  br label %return

if.end.755:                                       ; preds = %if.end.737
  %500 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %object_hook = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %500, i32 0, i32 2
  %501 = load %struct._object*, %struct._object** %object_hook, align 8
  %cmp756 = icmp ne %struct._object* %501, @_Py_NoneStruct
  br i1 %cmp756, label %if.then.758, label %if.end.773

if.then.758:                                      ; preds = %if.end.755
  %502 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %object_hook759 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %502, i32 0, i32 2
  %503 = load %struct._object*, %struct._object** %object_hook759, align 8
  %504 = load %struct._object*, %struct._object** %rval, align 8
  %call760 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %503, %struct._object* %504, i8* null)
  store %struct._object* %call760, %struct._object** %val, align 8
  br label %do.body.761

do.body.761:                                      ; preds = %if.then.758
  %505 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %505, %struct._object** %_py_decref_tmp762, align 8
  %506 = load %struct._object*, %struct._object** %_py_decref_tmp762, align 8
  %ob_refcnt763 = getelementptr inbounds %struct._object, %struct._object* %506, i32 0, i32 0
  %507 = load i64, i64* %ob_refcnt763, align 8
  %dec764 = add i64 %507, -1
  store i64 %dec764, i64* %ob_refcnt763, align 8
  %cmp765 = icmp ne i64 %dec764, 0
  br i1 %cmp765, label %if.then.767, label %if.else.768

if.then.767:                                      ; preds = %do.body.761
  br label %if.end.771

if.else.768:                                      ; preds = %do.body.761
  %508 = load %struct._object*, %struct._object** %_py_decref_tmp762, align 8
  %ob_type769 = getelementptr inbounds %struct._object, %struct._object* %508, i32 0, i32 1
  %509 = load %struct._typeobject*, %struct._typeobject** %ob_type769, align 8
  %tp_dealloc770 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %509, i32 0, i32 4
  %510 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc770, align 8
  %511 = load %struct._object*, %struct._object** %_py_decref_tmp762, align 8
  call void %510(%struct._object* %511)
  br label %if.end.771

if.end.771:                                       ; preds = %if.else.768, %if.then.767
  br label %do.end.772

do.end.772:                                       ; preds = %if.end.771
  %512 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %512, %struct._object** %retval
  br label %return

if.end.773:                                       ; preds = %if.end.755
  %513 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %513, %struct._object** %retval
  br label %return

bail:                                             ; preds = %if.then.645, %if.then.471, %do.end.453, %if.then.399, %if.then.392, %if.then.298, %if.then.185, %if.then.167, %if.then.162
  br label %do.body.774

do.body.774:                                      ; preds = %bail
  %514 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %514, %struct._object** %_py_xdecref_tmp, align 8
  %515 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp775 = icmp ne %struct._object* %515, null
  br i1 %cmp775, label %if.then.777, label %if.end.790

if.then.777:                                      ; preds = %do.body.774
  br label %do.body.778

do.body.778:                                      ; preds = %if.then.777
  %516 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %516, %struct._object** %_py_decref_tmp779, align 8
  %517 = load %struct._object*, %struct._object** %_py_decref_tmp779, align 8
  %ob_refcnt780 = getelementptr inbounds %struct._object, %struct._object* %517, i32 0, i32 0
  %518 = load i64, i64* %ob_refcnt780, align 8
  %dec781 = add i64 %518, -1
  store i64 %dec781, i64* %ob_refcnt780, align 8
  %cmp782 = icmp ne i64 %dec781, 0
  br i1 %cmp782, label %if.then.784, label %if.else.785

if.then.784:                                      ; preds = %do.body.778
  br label %if.end.788

if.else.785:                                      ; preds = %do.body.778
  %519 = load %struct._object*, %struct._object** %_py_decref_tmp779, align 8
  %ob_type786 = getelementptr inbounds %struct._object, %struct._object* %519, i32 0, i32 1
  %520 = load %struct._typeobject*, %struct._typeobject** %ob_type786, align 8
  %tp_dealloc787 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %520, i32 0, i32 4
  %521 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc787, align 8
  %522 = load %struct._object*, %struct._object** %_py_decref_tmp779, align 8
  call void %521(%struct._object* %522)
  br label %if.end.788

if.end.788:                                       ; preds = %if.else.785, %if.then.784
  br label %do.end.789

do.end.789:                                       ; preds = %if.end.788
  br label %if.end.790

if.end.790:                                       ; preds = %do.end.789, %do.body.774
  br label %do.end.791

do.end.791:                                       ; preds = %if.end.790
  br label %do.body.792

do.body.792:                                      ; preds = %do.end.791
  %523 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %523, %struct._object** %_py_xdecref_tmp793, align 8
  %524 = load %struct._object*, %struct._object** %_py_xdecref_tmp793, align 8
  %cmp794 = icmp ne %struct._object* %524, null
  br i1 %cmp794, label %if.then.796, label %if.end.809

if.then.796:                                      ; preds = %do.body.792
  br label %do.body.797

do.body.797:                                      ; preds = %if.then.796
  %525 = load %struct._object*, %struct._object** %_py_xdecref_tmp793, align 8
  store %struct._object* %525, %struct._object** %_py_decref_tmp798, align 8
  %526 = load %struct._object*, %struct._object** %_py_decref_tmp798, align 8
  %ob_refcnt799 = getelementptr inbounds %struct._object, %struct._object* %526, i32 0, i32 0
  %527 = load i64, i64* %ob_refcnt799, align 8
  %dec800 = add i64 %527, -1
  store i64 %dec800, i64* %ob_refcnt799, align 8
  %cmp801 = icmp ne i64 %dec800, 0
  br i1 %cmp801, label %if.then.803, label %if.else.804

if.then.803:                                      ; preds = %do.body.797
  br label %if.end.807

if.else.804:                                      ; preds = %do.body.797
  %528 = load %struct._object*, %struct._object** %_py_decref_tmp798, align 8
  %ob_type805 = getelementptr inbounds %struct._object, %struct._object* %528, i32 0, i32 1
  %529 = load %struct._typeobject*, %struct._typeobject** %ob_type805, align 8
  %tp_dealloc806 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %529, i32 0, i32 4
  %530 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc806, align 8
  %531 = load %struct._object*, %struct._object** %_py_decref_tmp798, align 8
  call void %530(%struct._object* %531)
  br label %if.end.807

if.end.807:                                       ; preds = %if.else.804, %if.then.803
  br label %do.end.808

do.end.808:                                       ; preds = %if.end.807
  br label %if.end.809

if.end.809:                                       ; preds = %do.end.808, %do.body.792
  br label %do.end.810

do.end.810:                                       ; preds = %if.end.809
  br label %do.body.811

do.body.811:                                      ; preds = %do.end.810
  %532 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %532, %struct._object** %_py_xdecref_tmp812, align 8
  %533 = load %struct._object*, %struct._object** %_py_xdecref_tmp812, align 8
  %cmp813 = icmp ne %struct._object* %533, null
  br i1 %cmp813, label %if.then.815, label %if.end.828

if.then.815:                                      ; preds = %do.body.811
  br label %do.body.816

do.body.816:                                      ; preds = %if.then.815
  %534 = load %struct._object*, %struct._object** %_py_xdecref_tmp812, align 8
  store %struct._object* %534, %struct._object** %_py_decref_tmp817, align 8
  %535 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  %ob_refcnt818 = getelementptr inbounds %struct._object, %struct._object* %535, i32 0, i32 0
  %536 = load i64, i64* %ob_refcnt818, align 8
  %dec819 = add i64 %536, -1
  store i64 %dec819, i64* %ob_refcnt818, align 8
  %cmp820 = icmp ne i64 %dec819, 0
  br i1 %cmp820, label %if.then.822, label %if.else.823

if.then.822:                                      ; preds = %do.body.816
  br label %if.end.826

if.else.823:                                      ; preds = %do.body.816
  %537 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  %ob_type824 = getelementptr inbounds %struct._object, %struct._object* %537, i32 0, i32 1
  %538 = load %struct._typeobject*, %struct._typeobject** %ob_type824, align 8
  %tp_dealloc825 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %538, i32 0, i32 4
  %539 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc825, align 8
  %540 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  call void %539(%struct._object* %540)
  br label %if.end.826

if.end.826:                                       ; preds = %if.else.823, %if.then.822
  br label %do.end.827

do.end.827:                                       ; preds = %if.end.826
  br label %if.end.828

if.end.828:                                       ; preds = %do.end.827, %do.body.811
  br label %do.end.829

do.end.829:                                       ; preds = %if.end.828
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.829, %if.end.773, %do.end.772, %do.end.754, %if.then.35, %if.then
  %541 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %541
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_parse_array_unicode(%struct._PyScannerObject* %s, %struct._object* %pystr, i64 %idx, i64* %next_idx_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyScannerObject*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %idx.addr = alloca i64, align 8
  %next_idx_ptr.addr = alloca i64*, align 8
  %str = alloca i8*, align 8
  %kind = alloca i32, align 4
  %end_idx = alloca i64, align 8
  %val = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  %next_idx = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp403 = alloca %struct._object*, align 8
  %_py_decref_tmp417 = alloca %struct._object*, align 8
  store %struct._PyScannerObject* %s, %struct._PyScannerObject** %s.addr, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64* %next_idx_ptr, i64** %next_idx_ptr.addr, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %rval, align 8
  %0 = load %struct._object*, %struct._object** %rval, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 3
  %3 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call1 = call i32 @_PyUnicode_Ready(%struct._object* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call1, %cond.false ]
  %cmp2 = icmp eq i32 %cond, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %7, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 5
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.21

cond.true.10:                                     ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state11 to i32*
  %bf.load12 = load i32, i32* %10, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 6
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.true.10
  %11 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i64 1
  %13 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.true.10
  %14 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyCompactUnicodeObject*
  %add.ptr18 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %15, i64 1
  %16 = bitcast %struct.PyCompactUnicodeObject* %add.ptr18 to i8*
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i8* [ %13, %cond.true.16 ], [ %16, %cond.false.17 ]
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %18, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %19 = load i8*, i8** %any, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.end.19
  %cond23 = phi i8* [ %cond20, %cond.end.19 ], [ %19, %cond.false.21 ]
  store i8* %cond23, i8** %str, align 8
  %20 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state24 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state24 to i32*
  %bf.load25 = load i32, i32* %22, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 2
  %bf.clear27 = and i32 %bf.lshr26, 7
  store i32 %bf.clear27, i32* %kind, align 4
  %23 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 1
  %25 = load i64, i64* %length, align 8
  %sub = sub i64 %25, 1
  store i64 %sub, i64* %end_idx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.22
  %26 = load i64, i64* %idx.addr, align 8
  %27 = load i64, i64* %end_idx, align 8
  %cmp28 = icmp sle i64 %26, %27
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %28 = load i32, i32* %kind, align 4
  %cmp29 = icmp eq i32 %28, 1
  br i1 %cmp29, label %cond.true.30, label %cond.false.31

cond.true.30:                                     ; preds = %land.rhs
  %29 = load i64, i64* %idx.addr, align 8
  %30 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %30, i64 %29
  %31 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %31 to i32
  br label %cond.end.41

cond.false.31:                                    ; preds = %land.rhs
  %32 = load i32, i32* %kind, align 4
  %cmp32 = icmp eq i32 %32, 2
  br i1 %cmp32, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %cond.false.31
  %33 = load i64, i64* %idx.addr, align 8
  %34 = load i8*, i8** %str, align 8
  %35 = bitcast i8* %34 to i16*
  %arrayidx35 = getelementptr i16, i16* %35, i64 %33
  %36 = load i16, i16* %arrayidx35, align 2
  %conv36 = zext i16 %36 to i32
  br label %cond.end.39

cond.false.37:                                    ; preds = %cond.false.31
  %37 = load i64, i64* %idx.addr, align 8
  %38 = load i8*, i8** %str, align 8
  %39 = bitcast i8* %38 to i32*
  %arrayidx38 = getelementptr i32, i32* %39, i64 %37
  %40 = load i32, i32* %arrayidx38, align 4
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.37, %cond.true.34
  %cond40 = phi i32 [ %conv36, %cond.true.34 ], [ %40, %cond.false.37 ]
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end.39, %cond.true.30
  %cond42 = phi i32 [ %conv, %cond.true.30 ], [ %cond40, %cond.end.39 ]
  %cmp43 = icmp eq i32 %cond42, 32
  br i1 %cmp43, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.41
  %41 = load i32, i32* %kind, align 4
  %cmp45 = icmp eq i32 %41, 1
  br i1 %cmp45, label %cond.true.47, label %cond.false.50

cond.true.47:                                     ; preds = %lor.lhs.false
  %42 = load i64, i64* %idx.addr, align 8
  %43 = load i8*, i8** %str, align 8
  %arrayidx48 = getelementptr i8, i8* %43, i64 %42
  %44 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %44 to i32
  br label %cond.end.60

cond.false.50:                                    ; preds = %lor.lhs.false
  %45 = load i32, i32* %kind, align 4
  %cmp51 = icmp eq i32 %45, 2
  br i1 %cmp51, label %cond.true.53, label %cond.false.56

cond.true.53:                                     ; preds = %cond.false.50
  %46 = load i64, i64* %idx.addr, align 8
  %47 = load i8*, i8** %str, align 8
  %48 = bitcast i8* %47 to i16*
  %arrayidx54 = getelementptr i16, i16* %48, i64 %46
  %49 = load i16, i16* %arrayidx54, align 2
  %conv55 = zext i16 %49 to i32
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.false.50
  %50 = load i64, i64* %idx.addr, align 8
  %51 = load i8*, i8** %str, align 8
  %52 = bitcast i8* %51 to i32*
  %arrayidx57 = getelementptr i32, i32* %52, i64 %50
  %53 = load i32, i32* %arrayidx57, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.53
  %cond59 = phi i32 [ %conv55, %cond.true.53 ], [ %53, %cond.false.56 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end.58, %cond.true.47
  %cond61 = phi i32 [ %conv49, %cond.true.47 ], [ %cond59, %cond.end.58 ]
  %cmp62 = icmp eq i32 %cond61, 9
  br i1 %cmp62, label %lor.end, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %cond.end.60
  %54 = load i32, i32* %kind, align 4
  %cmp65 = icmp eq i32 %54, 1
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %lor.lhs.false.64
  %55 = load i64, i64* %idx.addr, align 8
  %56 = load i8*, i8** %str, align 8
  %arrayidx68 = getelementptr i8, i8* %56, i64 %55
  %57 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %57 to i32
  br label %cond.end.80

cond.false.70:                                    ; preds = %lor.lhs.false.64
  %58 = load i32, i32* %kind, align 4
  %cmp71 = icmp eq i32 %58, 2
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %cond.false.70
  %59 = load i64, i64* %idx.addr, align 8
  %60 = load i8*, i8** %str, align 8
  %61 = bitcast i8* %60 to i16*
  %arrayidx74 = getelementptr i16, i16* %61, i64 %59
  %62 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %62 to i32
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.70
  %63 = load i64, i64* %idx.addr, align 8
  %64 = load i8*, i8** %str, align 8
  %65 = bitcast i8* %64 to i32*
  %arrayidx77 = getelementptr i32, i32* %65, i64 %63
  %66 = load i32, i32* %arrayidx77, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.73
  %cond79 = phi i32 [ %conv75, %cond.true.73 ], [ %66, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.67
  %cond81 = phi i32 [ %conv69, %cond.true.67 ], [ %cond79, %cond.end.78 ]
  %cmp82 = icmp eq i32 %cond81, 10
  br i1 %cmp82, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end.80
  %67 = load i32, i32* %kind, align 4
  %cmp84 = icmp eq i32 %67, 1
  br i1 %cmp84, label %cond.true.86, label %cond.false.89

cond.true.86:                                     ; preds = %lor.rhs
  %68 = load i64, i64* %idx.addr, align 8
  %69 = load i8*, i8** %str, align 8
  %arrayidx87 = getelementptr i8, i8* %69, i64 %68
  %70 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %70 to i32
  br label %cond.end.99

cond.false.89:                                    ; preds = %lor.rhs
  %71 = load i32, i32* %kind, align 4
  %cmp90 = icmp eq i32 %71, 2
  br i1 %cmp90, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %cond.false.89
  %72 = load i64, i64* %idx.addr, align 8
  %73 = load i8*, i8** %str, align 8
  %74 = bitcast i8* %73 to i16*
  %arrayidx93 = getelementptr i16, i16* %74, i64 %72
  %75 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %75 to i32
  br label %cond.end.97

cond.false.95:                                    ; preds = %cond.false.89
  %76 = load i64, i64* %idx.addr, align 8
  %77 = load i8*, i8** %str, align 8
  %78 = bitcast i8* %77 to i32*
  %arrayidx96 = getelementptr i32, i32* %78, i64 %76
  %79 = load i32, i32* %arrayidx96, align 4
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.95, %cond.true.92
  %cond98 = phi i32 [ %conv94, %cond.true.92 ], [ %79, %cond.false.95 ]
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.end.97, %cond.true.86
  %cond100 = phi i32 [ %conv88, %cond.true.86 ], [ %cond98, %cond.end.97 ]
  %cmp101 = icmp eq i32 %cond100, 13
  br label %lor.end

lor.end:                                          ; preds = %cond.end.99, %cond.end.80, %cond.end.60, %cond.end.41
  %80 = phi i1 [ true, %cond.end.80 ], [ true, %cond.end.60 ], [ true, %cond.end.41 ], [ %cmp101, %cond.end.99 ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %81 = phi i1 [ false, %while.cond ], [ %80, %lor.end ]
  br i1 %81, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %82 = load i64, i64* %idx.addr, align 8
  %inc = add i64 %82, 1
  store i64 %inc, i64* %idx.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %83 = load i64, i64* %idx.addr, align 8
  %84 = load i64, i64* %end_idx, align 8
  %cmp103 = icmp sgt i64 %83, %84
  br i1 %cmp103, label %if.then.125, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %while.end
  %85 = load i32, i32* %kind, align 4
  %cmp106 = icmp eq i32 %85, 1
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %lor.lhs.false.105
  %86 = load i64, i64* %idx.addr, align 8
  %87 = load i8*, i8** %str, align 8
  %arrayidx109 = getelementptr i8, i8* %87, i64 %86
  %88 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %88 to i32
  br label %cond.end.121

cond.false.111:                                   ; preds = %lor.lhs.false.105
  %89 = load i32, i32* %kind, align 4
  %cmp112 = icmp eq i32 %89, 2
  br i1 %cmp112, label %cond.true.114, label %cond.false.117

cond.true.114:                                    ; preds = %cond.false.111
  %90 = load i64, i64* %idx.addr, align 8
  %91 = load i8*, i8** %str, align 8
  %92 = bitcast i8* %91 to i16*
  %arrayidx115 = getelementptr i16, i16* %92, i64 %90
  %93 = load i16, i16* %arrayidx115, align 2
  %conv116 = zext i16 %93 to i32
  br label %cond.end.119

cond.false.117:                                   ; preds = %cond.false.111
  %94 = load i64, i64* %idx.addr, align 8
  %95 = load i8*, i8** %str, align 8
  %96 = bitcast i8* %95 to i32*
  %arrayidx118 = getelementptr i32, i32* %96, i64 %94
  %97 = load i32, i32* %arrayidx118, align 4
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.117, %cond.true.114
  %cond120 = phi i32 [ %conv116, %cond.true.114 ], [ %97, %cond.false.117 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.108
  %cond122 = phi i32 [ %conv110, %cond.true.108 ], [ %cond120, %cond.end.119 ]
  %cmp123 = icmp ne i32 %cond122, 93
  br i1 %cmp123, label %if.then.125, label %if.end.373

if.then.125:                                      ; preds = %cond.end.121, %while.end
  br label %while.body.127

while.body.127:                                   ; preds = %if.then.125, %while.end.371
  %98 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %99 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %100 = load i64, i64* %idx.addr, align 8
  %call128 = call %struct._object* @scan_once_unicode(%struct._PyScannerObject* %98, %struct._object* %99, i64 %100, i64* %next_idx)
  store %struct._object* %call128, %struct._object** %val, align 8
  %101 = load %struct._object*, %struct._object** %val, align 8
  %cmp129 = icmp eq %struct._object* %101, null
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %while.body.127
  br label %bail

if.end.132:                                       ; preds = %while.body.127
  %102 = load %struct._object*, %struct._object** %rval, align 8
  %103 = load %struct._object*, %struct._object** %val, align 8
  %call133 = call i32 @PyList_Append(%struct._object* %102, %struct._object* %103)
  %cmp134 = icmp eq i32 %call133, -1
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.end.132
  br label %bail

if.end.137:                                       ; preds = %if.end.132
  br label %do.body

do.body:                                          ; preds = %if.end.137
  %104 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %104, %struct._object** %_py_tmp, align 8
  %105 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp138 = icmp ne %struct._object* %105, null
  br i1 %cmp138, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %do.body
  store %struct._object* null, %struct._object** %val, align 8
  br label %do.body.141

do.body.141:                                      ; preds = %if.then.140
  %106 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %108, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp142 = icmp ne i64 %dec, 0
  br i1 %cmp142, label %if.then.144, label %if.else

if.then.144:                                      ; preds = %do.body.141
  br label %if.end.145

if.else:                                          ; preds = %do.body.141
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %111(%struct._object* %112)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else, %if.then.144
  br label %do.end

do.end:                                           ; preds = %if.end.145
  br label %if.end.146

if.end.146:                                       ; preds = %do.end, %do.body
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  %113 = load i64, i64* %next_idx, align 8
  store i64 %113, i64* %idx.addr, align 8
  br label %while.cond.148

while.cond.148:                                   ; preds = %while.body.233, %do.end.147
  %114 = load i64, i64* %idx.addr, align 8
  %115 = load i64, i64* %end_idx, align 8
  %cmp149 = icmp sle i64 %114, %115
  br i1 %cmp149, label %land.rhs.151, label %land.end.232

land.rhs.151:                                     ; preds = %while.cond.148
  %116 = load i32, i32* %kind, align 4
  %cmp152 = icmp eq i32 %116, 1
  br i1 %cmp152, label %cond.true.154, label %cond.false.157

cond.true.154:                                    ; preds = %land.rhs.151
  %117 = load i64, i64* %idx.addr, align 8
  %118 = load i8*, i8** %str, align 8
  %arrayidx155 = getelementptr i8, i8* %118, i64 %117
  %119 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %119 to i32
  br label %cond.end.167

cond.false.157:                                   ; preds = %land.rhs.151
  %120 = load i32, i32* %kind, align 4
  %cmp158 = icmp eq i32 %120, 2
  br i1 %cmp158, label %cond.true.160, label %cond.false.163

cond.true.160:                                    ; preds = %cond.false.157
  %121 = load i64, i64* %idx.addr, align 8
  %122 = load i8*, i8** %str, align 8
  %123 = bitcast i8* %122 to i16*
  %arrayidx161 = getelementptr i16, i16* %123, i64 %121
  %124 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %124 to i32
  br label %cond.end.165

cond.false.163:                                   ; preds = %cond.false.157
  %125 = load i64, i64* %idx.addr, align 8
  %126 = load i8*, i8** %str, align 8
  %127 = bitcast i8* %126 to i32*
  %arrayidx164 = getelementptr i32, i32* %127, i64 %125
  %128 = load i32, i32* %arrayidx164, align 4
  br label %cond.end.165

cond.end.165:                                     ; preds = %cond.false.163, %cond.true.160
  %cond166 = phi i32 [ %conv162, %cond.true.160 ], [ %128, %cond.false.163 ]
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.end.165, %cond.true.154
  %cond168 = phi i32 [ %conv156, %cond.true.154 ], [ %cond166, %cond.end.165 ]
  %cmp169 = icmp eq i32 %cond168, 32
  br i1 %cmp169, label %lor.end.231, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %cond.end.167
  %129 = load i32, i32* %kind, align 4
  %cmp172 = icmp eq i32 %129, 1
  br i1 %cmp172, label %cond.true.174, label %cond.false.177

cond.true.174:                                    ; preds = %lor.lhs.false.171
  %130 = load i64, i64* %idx.addr, align 8
  %131 = load i8*, i8** %str, align 8
  %arrayidx175 = getelementptr i8, i8* %131, i64 %130
  %132 = load i8, i8* %arrayidx175, align 1
  %conv176 = zext i8 %132 to i32
  br label %cond.end.187

cond.false.177:                                   ; preds = %lor.lhs.false.171
  %133 = load i32, i32* %kind, align 4
  %cmp178 = icmp eq i32 %133, 2
  br i1 %cmp178, label %cond.true.180, label %cond.false.183

cond.true.180:                                    ; preds = %cond.false.177
  %134 = load i64, i64* %idx.addr, align 8
  %135 = load i8*, i8** %str, align 8
  %136 = bitcast i8* %135 to i16*
  %arrayidx181 = getelementptr i16, i16* %136, i64 %134
  %137 = load i16, i16* %arrayidx181, align 2
  %conv182 = zext i16 %137 to i32
  br label %cond.end.185

cond.false.183:                                   ; preds = %cond.false.177
  %138 = load i64, i64* %idx.addr, align 8
  %139 = load i8*, i8** %str, align 8
  %140 = bitcast i8* %139 to i32*
  %arrayidx184 = getelementptr i32, i32* %140, i64 %138
  %141 = load i32, i32* %arrayidx184, align 4
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.183, %cond.true.180
  %cond186 = phi i32 [ %conv182, %cond.true.180 ], [ %141, %cond.false.183 ]
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.185, %cond.true.174
  %cond188 = phi i32 [ %conv176, %cond.true.174 ], [ %cond186, %cond.end.185 ]
  %cmp189 = icmp eq i32 %cond188, 9
  br i1 %cmp189, label %lor.end.231, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %cond.end.187
  %142 = load i32, i32* %kind, align 4
  %cmp192 = icmp eq i32 %142, 1
  br i1 %cmp192, label %cond.true.194, label %cond.false.197

cond.true.194:                                    ; preds = %lor.lhs.false.191
  %143 = load i64, i64* %idx.addr, align 8
  %144 = load i8*, i8** %str, align 8
  %arrayidx195 = getelementptr i8, i8* %144, i64 %143
  %145 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %145 to i32
  br label %cond.end.207

cond.false.197:                                   ; preds = %lor.lhs.false.191
  %146 = load i32, i32* %kind, align 4
  %cmp198 = icmp eq i32 %146, 2
  br i1 %cmp198, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %cond.false.197
  %147 = load i64, i64* %idx.addr, align 8
  %148 = load i8*, i8** %str, align 8
  %149 = bitcast i8* %148 to i16*
  %arrayidx201 = getelementptr i16, i16* %149, i64 %147
  %150 = load i16, i16* %arrayidx201, align 2
  %conv202 = zext i16 %150 to i32
  br label %cond.end.205

cond.false.203:                                   ; preds = %cond.false.197
  %151 = load i64, i64* %idx.addr, align 8
  %152 = load i8*, i8** %str, align 8
  %153 = bitcast i8* %152 to i32*
  %arrayidx204 = getelementptr i32, i32* %153, i64 %151
  %154 = load i32, i32* %arrayidx204, align 4
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %cond.true.200
  %cond206 = phi i32 [ %conv202, %cond.true.200 ], [ %154, %cond.false.203 ]
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.end.205, %cond.true.194
  %cond208 = phi i32 [ %conv196, %cond.true.194 ], [ %cond206, %cond.end.205 ]
  %cmp209 = icmp eq i32 %cond208, 10
  br i1 %cmp209, label %lor.end.231, label %lor.rhs.211

lor.rhs.211:                                      ; preds = %cond.end.207
  %155 = load i32, i32* %kind, align 4
  %cmp212 = icmp eq i32 %155, 1
  br i1 %cmp212, label %cond.true.214, label %cond.false.217

cond.true.214:                                    ; preds = %lor.rhs.211
  %156 = load i64, i64* %idx.addr, align 8
  %157 = load i8*, i8** %str, align 8
  %arrayidx215 = getelementptr i8, i8* %157, i64 %156
  %158 = load i8, i8* %arrayidx215, align 1
  %conv216 = zext i8 %158 to i32
  br label %cond.end.227

cond.false.217:                                   ; preds = %lor.rhs.211
  %159 = load i32, i32* %kind, align 4
  %cmp218 = icmp eq i32 %159, 2
  br i1 %cmp218, label %cond.true.220, label %cond.false.223

cond.true.220:                                    ; preds = %cond.false.217
  %160 = load i64, i64* %idx.addr, align 8
  %161 = load i8*, i8** %str, align 8
  %162 = bitcast i8* %161 to i16*
  %arrayidx221 = getelementptr i16, i16* %162, i64 %160
  %163 = load i16, i16* %arrayidx221, align 2
  %conv222 = zext i16 %163 to i32
  br label %cond.end.225

cond.false.223:                                   ; preds = %cond.false.217
  %164 = load i64, i64* %idx.addr, align 8
  %165 = load i8*, i8** %str, align 8
  %166 = bitcast i8* %165 to i32*
  %arrayidx224 = getelementptr i32, i32* %166, i64 %164
  %167 = load i32, i32* %arrayidx224, align 4
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.223, %cond.true.220
  %cond226 = phi i32 [ %conv222, %cond.true.220 ], [ %167, %cond.false.223 ]
  br label %cond.end.227

cond.end.227:                                     ; preds = %cond.end.225, %cond.true.214
  %cond228 = phi i32 [ %conv216, %cond.true.214 ], [ %cond226, %cond.end.225 ]
  %cmp229 = icmp eq i32 %cond228, 13
  br label %lor.end.231

lor.end.231:                                      ; preds = %cond.end.227, %cond.end.207, %cond.end.187, %cond.end.167
  %168 = phi i1 [ true, %cond.end.207 ], [ true, %cond.end.187 ], [ true, %cond.end.167 ], [ %cmp229, %cond.end.227 ]
  br label %land.end.232

land.end.232:                                     ; preds = %lor.end.231, %while.cond.148
  %169 = phi i1 [ false, %while.cond.148 ], [ %168, %lor.end.231 ]
  br i1 %169, label %while.body.233, label %while.end.235

while.body.233:                                   ; preds = %land.end.232
  %170 = load i64, i64* %idx.addr, align 8
  %inc234 = add i64 %170, 1
  store i64 %inc234, i64* %idx.addr, align 8
  br label %while.cond.148

while.end.235:                                    ; preds = %land.end.232
  %171 = load i64, i64* %idx.addr, align 8
  %172 = load i64, i64* %end_idx, align 8
  %cmp236 = icmp sle i64 %171, %172
  br i1 %cmp236, label %land.lhs.true, label %if.end.258

land.lhs.true:                                    ; preds = %while.end.235
  %173 = load i32, i32* %kind, align 4
  %cmp238 = icmp eq i32 %173, 1
  br i1 %cmp238, label %cond.true.240, label %cond.false.243

cond.true.240:                                    ; preds = %land.lhs.true
  %174 = load i64, i64* %idx.addr, align 8
  %175 = load i8*, i8** %str, align 8
  %arrayidx241 = getelementptr i8, i8* %175, i64 %174
  %176 = load i8, i8* %arrayidx241, align 1
  %conv242 = zext i8 %176 to i32
  br label %cond.end.253

cond.false.243:                                   ; preds = %land.lhs.true
  %177 = load i32, i32* %kind, align 4
  %cmp244 = icmp eq i32 %177, 2
  br i1 %cmp244, label %cond.true.246, label %cond.false.249

cond.true.246:                                    ; preds = %cond.false.243
  %178 = load i64, i64* %idx.addr, align 8
  %179 = load i8*, i8** %str, align 8
  %180 = bitcast i8* %179 to i16*
  %arrayidx247 = getelementptr i16, i16* %180, i64 %178
  %181 = load i16, i16* %arrayidx247, align 2
  %conv248 = zext i16 %181 to i32
  br label %cond.end.251

cond.false.249:                                   ; preds = %cond.false.243
  %182 = load i64, i64* %idx.addr, align 8
  %183 = load i8*, i8** %str, align 8
  %184 = bitcast i8* %183 to i32*
  %arrayidx250 = getelementptr i32, i32* %184, i64 %182
  %185 = load i32, i32* %arrayidx250, align 4
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.249, %cond.true.246
  %cond252 = phi i32 [ %conv248, %cond.true.246 ], [ %185, %cond.false.249 ]
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.end.251, %cond.true.240
  %cond254 = phi i32 [ %conv242, %cond.true.240 ], [ %cond252, %cond.end.251 ]
  %cmp255 = icmp eq i32 %cond254, 93
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %cond.end.253
  br label %while.end.372

if.end.258:                                       ; preds = %cond.end.253, %while.end.235
  %186 = load i64, i64* %idx.addr, align 8
  %187 = load i64, i64* %end_idx, align 8
  %cmp259 = icmp sgt i64 %186, %187
  br i1 %cmp259, label %if.then.281, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %if.end.258
  %188 = load i32, i32* %kind, align 4
  %cmp262 = icmp eq i32 %188, 1
  br i1 %cmp262, label %cond.true.264, label %cond.false.267

cond.true.264:                                    ; preds = %lor.lhs.false.261
  %189 = load i64, i64* %idx.addr, align 8
  %190 = load i8*, i8** %str, align 8
  %arrayidx265 = getelementptr i8, i8* %190, i64 %189
  %191 = load i8, i8* %arrayidx265, align 1
  %conv266 = zext i8 %191 to i32
  br label %cond.end.277

cond.false.267:                                   ; preds = %lor.lhs.false.261
  %192 = load i32, i32* %kind, align 4
  %cmp268 = icmp eq i32 %192, 2
  br i1 %cmp268, label %cond.true.270, label %cond.false.273

cond.true.270:                                    ; preds = %cond.false.267
  %193 = load i64, i64* %idx.addr, align 8
  %194 = load i8*, i8** %str, align 8
  %195 = bitcast i8* %194 to i16*
  %arrayidx271 = getelementptr i16, i16* %195, i64 %193
  %196 = load i16, i16* %arrayidx271, align 2
  %conv272 = zext i16 %196 to i32
  br label %cond.end.275

cond.false.273:                                   ; preds = %cond.false.267
  %197 = load i64, i64* %idx.addr, align 8
  %198 = load i8*, i8** %str, align 8
  %199 = bitcast i8* %198 to i32*
  %arrayidx274 = getelementptr i32, i32* %199, i64 %197
  %200 = load i32, i32* %arrayidx274, align 4
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.false.273, %cond.true.270
  %cond276 = phi i32 [ %conv272, %cond.true.270 ], [ %200, %cond.false.273 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.264
  %cond278 = phi i32 [ %conv266, %cond.true.264 ], [ %cond276, %cond.end.275 ]
  %cmp279 = icmp ne i32 %cond278, 44
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %cond.end.277, %if.end.258
  %201 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %202 = load i64, i64* %idx.addr, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), %struct._object* %201, i64 %202)
  br label %bail

if.end.282:                                       ; preds = %cond.end.277
  %203 = load i64, i64* %idx.addr, align 8
  %inc283 = add i64 %203, 1
  store i64 %inc283, i64* %idx.addr, align 8
  br label %while.cond.284

while.cond.284:                                   ; preds = %while.body.369, %if.end.282
  %204 = load i64, i64* %idx.addr, align 8
  %205 = load i64, i64* %end_idx, align 8
  %cmp285 = icmp sle i64 %204, %205
  br i1 %cmp285, label %land.rhs.287, label %land.end.368

land.rhs.287:                                     ; preds = %while.cond.284
  %206 = load i32, i32* %kind, align 4
  %cmp288 = icmp eq i32 %206, 1
  br i1 %cmp288, label %cond.true.290, label %cond.false.293

cond.true.290:                                    ; preds = %land.rhs.287
  %207 = load i64, i64* %idx.addr, align 8
  %208 = load i8*, i8** %str, align 8
  %arrayidx291 = getelementptr i8, i8* %208, i64 %207
  %209 = load i8, i8* %arrayidx291, align 1
  %conv292 = zext i8 %209 to i32
  br label %cond.end.303

cond.false.293:                                   ; preds = %land.rhs.287
  %210 = load i32, i32* %kind, align 4
  %cmp294 = icmp eq i32 %210, 2
  br i1 %cmp294, label %cond.true.296, label %cond.false.299

cond.true.296:                                    ; preds = %cond.false.293
  %211 = load i64, i64* %idx.addr, align 8
  %212 = load i8*, i8** %str, align 8
  %213 = bitcast i8* %212 to i16*
  %arrayidx297 = getelementptr i16, i16* %213, i64 %211
  %214 = load i16, i16* %arrayidx297, align 2
  %conv298 = zext i16 %214 to i32
  br label %cond.end.301

cond.false.299:                                   ; preds = %cond.false.293
  %215 = load i64, i64* %idx.addr, align 8
  %216 = load i8*, i8** %str, align 8
  %217 = bitcast i8* %216 to i32*
  %arrayidx300 = getelementptr i32, i32* %217, i64 %215
  %218 = load i32, i32* %arrayidx300, align 4
  br label %cond.end.301

cond.end.301:                                     ; preds = %cond.false.299, %cond.true.296
  %cond302 = phi i32 [ %conv298, %cond.true.296 ], [ %218, %cond.false.299 ]
  br label %cond.end.303

cond.end.303:                                     ; preds = %cond.end.301, %cond.true.290
  %cond304 = phi i32 [ %conv292, %cond.true.290 ], [ %cond302, %cond.end.301 ]
  %cmp305 = icmp eq i32 %cond304, 32
  br i1 %cmp305, label %lor.end.367, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %cond.end.303
  %219 = load i32, i32* %kind, align 4
  %cmp308 = icmp eq i32 %219, 1
  br i1 %cmp308, label %cond.true.310, label %cond.false.313

cond.true.310:                                    ; preds = %lor.lhs.false.307
  %220 = load i64, i64* %idx.addr, align 8
  %221 = load i8*, i8** %str, align 8
  %arrayidx311 = getelementptr i8, i8* %221, i64 %220
  %222 = load i8, i8* %arrayidx311, align 1
  %conv312 = zext i8 %222 to i32
  br label %cond.end.323

cond.false.313:                                   ; preds = %lor.lhs.false.307
  %223 = load i32, i32* %kind, align 4
  %cmp314 = icmp eq i32 %223, 2
  br i1 %cmp314, label %cond.true.316, label %cond.false.319

cond.true.316:                                    ; preds = %cond.false.313
  %224 = load i64, i64* %idx.addr, align 8
  %225 = load i8*, i8** %str, align 8
  %226 = bitcast i8* %225 to i16*
  %arrayidx317 = getelementptr i16, i16* %226, i64 %224
  %227 = load i16, i16* %arrayidx317, align 2
  %conv318 = zext i16 %227 to i32
  br label %cond.end.321

cond.false.319:                                   ; preds = %cond.false.313
  %228 = load i64, i64* %idx.addr, align 8
  %229 = load i8*, i8** %str, align 8
  %230 = bitcast i8* %229 to i32*
  %arrayidx320 = getelementptr i32, i32* %230, i64 %228
  %231 = load i32, i32* %arrayidx320, align 4
  br label %cond.end.321

cond.end.321:                                     ; preds = %cond.false.319, %cond.true.316
  %cond322 = phi i32 [ %conv318, %cond.true.316 ], [ %231, %cond.false.319 ]
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.end.321, %cond.true.310
  %cond324 = phi i32 [ %conv312, %cond.true.310 ], [ %cond322, %cond.end.321 ]
  %cmp325 = icmp eq i32 %cond324, 9
  br i1 %cmp325, label %lor.end.367, label %lor.lhs.false.327

lor.lhs.false.327:                                ; preds = %cond.end.323
  %232 = load i32, i32* %kind, align 4
  %cmp328 = icmp eq i32 %232, 1
  br i1 %cmp328, label %cond.true.330, label %cond.false.333

cond.true.330:                                    ; preds = %lor.lhs.false.327
  %233 = load i64, i64* %idx.addr, align 8
  %234 = load i8*, i8** %str, align 8
  %arrayidx331 = getelementptr i8, i8* %234, i64 %233
  %235 = load i8, i8* %arrayidx331, align 1
  %conv332 = zext i8 %235 to i32
  br label %cond.end.343

cond.false.333:                                   ; preds = %lor.lhs.false.327
  %236 = load i32, i32* %kind, align 4
  %cmp334 = icmp eq i32 %236, 2
  br i1 %cmp334, label %cond.true.336, label %cond.false.339

cond.true.336:                                    ; preds = %cond.false.333
  %237 = load i64, i64* %idx.addr, align 8
  %238 = load i8*, i8** %str, align 8
  %239 = bitcast i8* %238 to i16*
  %arrayidx337 = getelementptr i16, i16* %239, i64 %237
  %240 = load i16, i16* %arrayidx337, align 2
  %conv338 = zext i16 %240 to i32
  br label %cond.end.341

cond.false.339:                                   ; preds = %cond.false.333
  %241 = load i64, i64* %idx.addr, align 8
  %242 = load i8*, i8** %str, align 8
  %243 = bitcast i8* %242 to i32*
  %arrayidx340 = getelementptr i32, i32* %243, i64 %241
  %244 = load i32, i32* %arrayidx340, align 4
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.339, %cond.true.336
  %cond342 = phi i32 [ %conv338, %cond.true.336 ], [ %244, %cond.false.339 ]
  br label %cond.end.343

cond.end.343:                                     ; preds = %cond.end.341, %cond.true.330
  %cond344 = phi i32 [ %conv332, %cond.true.330 ], [ %cond342, %cond.end.341 ]
  %cmp345 = icmp eq i32 %cond344, 10
  br i1 %cmp345, label %lor.end.367, label %lor.rhs.347

lor.rhs.347:                                      ; preds = %cond.end.343
  %245 = load i32, i32* %kind, align 4
  %cmp348 = icmp eq i32 %245, 1
  br i1 %cmp348, label %cond.true.350, label %cond.false.353

cond.true.350:                                    ; preds = %lor.rhs.347
  %246 = load i64, i64* %idx.addr, align 8
  %247 = load i8*, i8** %str, align 8
  %arrayidx351 = getelementptr i8, i8* %247, i64 %246
  %248 = load i8, i8* %arrayidx351, align 1
  %conv352 = zext i8 %248 to i32
  br label %cond.end.363

cond.false.353:                                   ; preds = %lor.rhs.347
  %249 = load i32, i32* %kind, align 4
  %cmp354 = icmp eq i32 %249, 2
  br i1 %cmp354, label %cond.true.356, label %cond.false.359

cond.true.356:                                    ; preds = %cond.false.353
  %250 = load i64, i64* %idx.addr, align 8
  %251 = load i8*, i8** %str, align 8
  %252 = bitcast i8* %251 to i16*
  %arrayidx357 = getelementptr i16, i16* %252, i64 %250
  %253 = load i16, i16* %arrayidx357, align 2
  %conv358 = zext i16 %253 to i32
  br label %cond.end.361

cond.false.359:                                   ; preds = %cond.false.353
  %254 = load i64, i64* %idx.addr, align 8
  %255 = load i8*, i8** %str, align 8
  %256 = bitcast i8* %255 to i32*
  %arrayidx360 = getelementptr i32, i32* %256, i64 %254
  %257 = load i32, i32* %arrayidx360, align 4
  br label %cond.end.361

cond.end.361:                                     ; preds = %cond.false.359, %cond.true.356
  %cond362 = phi i32 [ %conv358, %cond.true.356 ], [ %257, %cond.false.359 ]
  br label %cond.end.363

cond.end.363:                                     ; preds = %cond.end.361, %cond.true.350
  %cond364 = phi i32 [ %conv352, %cond.true.350 ], [ %cond362, %cond.end.361 ]
  %cmp365 = icmp eq i32 %cond364, 13
  br label %lor.end.367

lor.end.367:                                      ; preds = %cond.end.363, %cond.end.343, %cond.end.323, %cond.end.303
  %258 = phi i1 [ true, %cond.end.343 ], [ true, %cond.end.323 ], [ true, %cond.end.303 ], [ %cmp365, %cond.end.363 ]
  br label %land.end.368

land.end.368:                                     ; preds = %lor.end.367, %while.cond.284
  %259 = phi i1 [ false, %while.cond.284 ], [ %258, %lor.end.367 ]
  br i1 %259, label %while.body.369, label %while.end.371

while.body.369:                                   ; preds = %land.end.368
  %260 = load i64, i64* %idx.addr, align 8
  %inc370 = add i64 %260, 1
  store i64 %inc370, i64* %idx.addr, align 8
  br label %while.cond.284

while.end.371:                                    ; preds = %land.end.368
  br label %while.body.127

while.end.372:                                    ; preds = %if.then.257
  br label %if.end.373

if.end.373:                                       ; preds = %while.end.372, %cond.end.121
  %261 = load i64, i64* %idx.addr, align 8
  %262 = load i64, i64* %end_idx, align 8
  %cmp374 = icmp sgt i64 %261, %262
  br i1 %cmp374, label %if.then.396, label %lor.lhs.false.376

lor.lhs.false.376:                                ; preds = %if.end.373
  %263 = load i32, i32* %kind, align 4
  %cmp377 = icmp eq i32 %263, 1
  br i1 %cmp377, label %cond.true.379, label %cond.false.382

cond.true.379:                                    ; preds = %lor.lhs.false.376
  %264 = load i64, i64* %idx.addr, align 8
  %265 = load i8*, i8** %str, align 8
  %arrayidx380 = getelementptr i8, i8* %265, i64 %264
  %266 = load i8, i8* %arrayidx380, align 1
  %conv381 = zext i8 %266 to i32
  br label %cond.end.392

cond.false.382:                                   ; preds = %lor.lhs.false.376
  %267 = load i32, i32* %kind, align 4
  %cmp383 = icmp eq i32 %267, 2
  br i1 %cmp383, label %cond.true.385, label %cond.false.388

cond.true.385:                                    ; preds = %cond.false.382
  %268 = load i64, i64* %idx.addr, align 8
  %269 = load i8*, i8** %str, align 8
  %270 = bitcast i8* %269 to i16*
  %arrayidx386 = getelementptr i16, i16* %270, i64 %268
  %271 = load i16, i16* %arrayidx386, align 2
  %conv387 = zext i16 %271 to i32
  br label %cond.end.390

cond.false.388:                                   ; preds = %cond.false.382
  %272 = load i64, i64* %idx.addr, align 8
  %273 = load i8*, i8** %str, align 8
  %274 = bitcast i8* %273 to i32*
  %arrayidx389 = getelementptr i32, i32* %274, i64 %272
  %275 = load i32, i32* %arrayidx389, align 4
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.388, %cond.true.385
  %cond391 = phi i32 [ %conv387, %cond.true.385 ], [ %275, %cond.false.388 ]
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.end.390, %cond.true.379
  %cond393 = phi i32 [ %conv381, %cond.true.379 ], [ %cond391, %cond.end.390 ]
  %cmp394 = icmp ne i32 %cond393, 93
  br i1 %cmp394, label %if.then.396, label %if.end.397

if.then.396:                                      ; preds = %cond.end.392, %if.end.373
  %276 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %277 = load i64, i64* %end_idx, align 8
  call void @raise_errmsg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), %struct._object* %276, i64 %277)
  br label %bail

if.end.397:                                       ; preds = %cond.end.392
  %278 = load i64, i64* %idx.addr, align 8
  %add = add i64 %278, 1
  %279 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %add, i64* %279, align 8
  %280 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %280, %struct._object** %retval
  br label %return

bail:                                             ; preds = %if.then.396, %if.then.281, %if.then.136, %if.then.131
  br label %do.body.398

do.body.398:                                      ; preds = %bail
  %281 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %281, %struct._object** %_py_xdecref_tmp, align 8
  %282 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp399 = icmp ne %struct._object* %282, null
  br i1 %cmp399, label %if.then.401, label %if.end.414

if.then.401:                                      ; preds = %do.body.398
  br label %do.body.402

do.body.402:                                      ; preds = %if.then.401
  %283 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %283, %struct._object** %_py_decref_tmp403, align 8
  %284 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_refcnt404 = getelementptr inbounds %struct._object, %struct._object* %284, i32 0, i32 0
  %285 = load i64, i64* %ob_refcnt404, align 8
  %dec405 = add i64 %285, -1
  store i64 %dec405, i64* %ob_refcnt404, align 8
  %cmp406 = icmp ne i64 %dec405, 0
  br i1 %cmp406, label %if.then.408, label %if.else.409

if.then.408:                                      ; preds = %do.body.402
  br label %if.end.412

if.else.409:                                      ; preds = %do.body.402
  %286 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  %ob_type410 = getelementptr inbounds %struct._object, %struct._object* %286, i32 0, i32 1
  %287 = load %struct._typeobject*, %struct._typeobject** %ob_type410, align 8
  %tp_dealloc411 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %287, i32 0, i32 4
  %288 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc411, align 8
  %289 = load %struct._object*, %struct._object** %_py_decref_tmp403, align 8
  call void %288(%struct._object* %289)
  br label %if.end.412

if.end.412:                                       ; preds = %if.else.409, %if.then.408
  br label %do.end.413

do.end.413:                                       ; preds = %if.end.412
  br label %if.end.414

if.end.414:                                       ; preds = %do.end.413, %do.body.398
  br label %do.end.415

do.end.415:                                       ; preds = %if.end.414
  br label %do.body.416

do.body.416:                                      ; preds = %do.end.415
  %290 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %290, %struct._object** %_py_decref_tmp417, align 8
  %291 = load %struct._object*, %struct._object** %_py_decref_tmp417, align 8
  %ob_refcnt418 = getelementptr inbounds %struct._object, %struct._object* %291, i32 0, i32 0
  %292 = load i64, i64* %ob_refcnt418, align 8
  %dec419 = add i64 %292, -1
  store i64 %dec419, i64* %ob_refcnt418, align 8
  %cmp420 = icmp ne i64 %dec419, 0
  br i1 %cmp420, label %if.then.422, label %if.else.423

if.then.422:                                      ; preds = %do.body.416
  br label %if.end.426

if.else.423:                                      ; preds = %do.body.416
  %293 = load %struct._object*, %struct._object** %_py_decref_tmp417, align 8
  %ob_type424 = getelementptr inbounds %struct._object, %struct._object* %293, i32 0, i32 1
  %294 = load %struct._typeobject*, %struct._typeobject** %ob_type424, align 8
  %tp_dealloc425 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %294, i32 0, i32 4
  %295 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc425, align 8
  %296 = load %struct._object*, %struct._object** %_py_decref_tmp417, align 8
  call void %295(%struct._object* %296)
  br label %if.end.426

if.end.426:                                       ; preds = %if.else.423, %if.then.422
  br label %do.end.427

do.end.427:                                       ; preds = %if.end.426
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.427, %if.end.397, %if.then.3, %if.then
  %297 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %297
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_parse_constant(%struct._PyScannerObject* %s, i8* %constant, i64 %idx, i64* %next_idx_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyScannerObject*, align 8
  %constant.addr = alloca i8*, align 8
  %idx.addr = alloca i64, align 8
  %next_idx_ptr.addr = alloca i64*, align 8
  %cstr = alloca %struct._object*, align 8
  %rval = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyScannerObject* %s, %struct._PyScannerObject** %s.addr, align 8
  store i8* %constant, i8** %constant.addr, align 8
  store i64 %idx, i64* %idx.addr, align 8
  store i64* %next_idx_ptr, i64** %next_idx_ptr.addr, align 8
  %0 = load i8*, i8** %constant.addr, align 8
  %call = call %struct._object* @PyUnicode_InternFromString(i8* %0)
  store %struct._object* %call, %struct._object** %cstr, align 8
  %1 = load %struct._object*, %struct._object** %cstr, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %parse_constant = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %2, i32 0, i32 6
  %3 = load %struct._object*, %struct._object** %parse_constant, align 8
  %4 = load %struct._object*, %struct._object** %cstr, align 8
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %3, %struct._object* %4, i8* null)
  store %struct._object* %call1, %struct._object** %rval, align 8
  %5 = load %struct._object*, %struct._object** %cstr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %8 = load i64, i64* %idx.addr, align 8
  %add = add i64 %8, %7
  store i64 %add, i64* %idx.addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %cstr, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %16 = load i64, i64* %idx.addr, align 8
  %17 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %16, i64* %17, align 8
  %18 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_match_number_unicode(%struct._PyScannerObject* %s, %struct._object* %pystr, i64 %start, i64* %next_idx_ptr) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyScannerObject*, align 8
  %pystr.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %next_idx_ptr.addr = alloca i64*, align 8
  %str = alloca i8*, align 8
  %kind = alloca i32, align 4
  %end_idx = alloca i64, align 8
  %idx = alloca i64, align 8
  %is_float = alloca i32, align 4
  %rval = alloca %struct._object*, align 8
  %numstr = alloca %struct._object*, align 8
  %custom_func = alloca %struct._object*, align 8
  %e_start = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %buf = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyScannerObject* %s, %struct._PyScannerObject** %s.addr, align 8
  store %struct._object* %pystr, %struct._object** %pystr.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64* %next_idx_ptr, i64** %next_idx_ptr.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  store i64 %0, i64* %idx, align 8
  store i32 0, i32* %is_float, align 4
  store %struct._object* null, %struct._object** %numstr, align 8
  %1 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %2, i32 0, i32 3
  %3 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %3, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %5 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %7, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 5
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %cond.true.6, label %cond.false.17

cond.true.6:                                      ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %state7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3
  %10 = bitcast %struct.anon* %state7 to i32*
  %bf.load8 = load i32, i32* %10, align 4
  %bf.lshr9 = lshr i32 %bf.load8, 6
  %bf.clear10 = and i32 %bf.lshr9, 1
  %tobool11 = icmp ne i32 %bf.clear10, 0
  br i1 %tobool11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.true.6
  %11 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i64 1
  %13 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.15

cond.false.13:                                    ; preds = %cond.true.6
  %14 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyCompactUnicodeObject*
  %add.ptr14 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %15, i64 1
  %16 = bitcast %struct.PyCompactUnicodeObject* %add.ptr14 to i8*
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.13, %cond.true.12
  %cond16 = phi i8* [ %13, %cond.true.12 ], [ %16, %cond.false.13 ]
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %18, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %19 = load i8*, i8** %any, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.end.15
  %cond19 = phi i8* [ %cond16, %cond.end.15 ], [ %19, %cond.false.17 ]
  store i8* %cond19, i8** %str, align 8
  %20 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %22, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 2
  %bf.clear23 = and i32 %bf.lshr22, 7
  store i32 %bf.clear23, i32* %kind, align 4
  %23 = load %struct._object*, %struct._object** %pystr.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 1
  %25 = load i64, i64* %length, align 8
  %sub = sub i64 %25, 1
  store i64 %sub, i64* %end_idx, align 8
  %26 = load i32, i32* %kind, align 4
  %cmp24 = icmp eq i32 %26, 1
  br i1 %cmp24, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %cond.end.18
  %27 = load i64, i64* %idx, align 8
  %28 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr i8, i8* %28, i64 %27
  %29 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %29 to i32
  br label %cond.end.36

cond.false.26:                                    ; preds = %cond.end.18
  %30 = load i32, i32* %kind, align 4
  %cmp27 = icmp eq i32 %30, 2
  br i1 %cmp27, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.false.26
  %31 = load i64, i64* %idx, align 8
  %32 = load i8*, i8** %str, align 8
  %33 = bitcast i8* %32 to i16*
  %arrayidx30 = getelementptr i16, i16* %33, i64 %31
  %34 = load i16, i16* %arrayidx30, align 2
  %conv31 = zext i16 %34 to i32
  br label %cond.end.34

cond.false.32:                                    ; preds = %cond.false.26
  %35 = load i64, i64* %idx, align 8
  %36 = load i8*, i8** %str, align 8
  %37 = bitcast i8* %36 to i32*
  %arrayidx33 = getelementptr i32, i32* %37, i64 %35
  %38 = load i32, i32* %arrayidx33, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.32, %cond.true.29
  %cond35 = phi i32 [ %conv31, %cond.true.29 ], [ %38, %cond.false.32 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.25
  %cond37 = phi i32 [ %conv, %cond.true.25 ], [ %cond35, %cond.end.34 ]
  %cmp38 = icmp eq i32 %cond37, 45
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %cond.end.36
  %39 = load i64, i64* %idx, align 8
  %inc = add i64 %39, 1
  store i64 %inc, i64* %idx, align 8
  %40 = load i64, i64* %idx, align 8
  %41 = load i64, i64* %end_idx, align 8
  %cmp41 = icmp sgt i64 %40, %41
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %42 = load i64, i64* %start.addr, align 8
  call void @raise_stop_iteration(i64 %42)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %cond.end.36
  %43 = load i32, i32* %kind, align 4
  %cmp46 = icmp eq i32 %43, 1
  br i1 %cmp46, label %cond.true.48, label %cond.false.51

cond.true.48:                                     ; preds = %if.end.45
  %44 = load i64, i64* %idx, align 8
  %45 = load i8*, i8** %str, align 8
  %arrayidx49 = getelementptr i8, i8* %45, i64 %44
  %46 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %46 to i32
  br label %cond.end.61

cond.false.51:                                    ; preds = %if.end.45
  %47 = load i32, i32* %kind, align 4
  %cmp52 = icmp eq i32 %47, 2
  br i1 %cmp52, label %cond.true.54, label %cond.false.57

cond.true.54:                                     ; preds = %cond.false.51
  %48 = load i64, i64* %idx, align 8
  %49 = load i8*, i8** %str, align 8
  %50 = bitcast i8* %49 to i16*
  %arrayidx55 = getelementptr i16, i16* %50, i64 %48
  %51 = load i16, i16* %arrayidx55, align 2
  %conv56 = zext i16 %51 to i32
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.false.51
  %52 = load i64, i64* %idx, align 8
  %53 = load i8*, i8** %str, align 8
  %54 = bitcast i8* %53 to i32*
  %arrayidx58 = getelementptr i32, i32* %54, i64 %52
  %55 = load i32, i32* %arrayidx58, align 4
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.54
  %cond60 = phi i32 [ %conv56, %cond.true.54 ], [ %55, %cond.false.57 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.48
  %cond62 = phi i32 [ %conv50, %cond.true.48 ], [ %cond60, %cond.end.59 ]
  %cmp63 = icmp uge i32 %cond62, 49
  br i1 %cmp63, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end.61
  %56 = load i32, i32* %kind, align 4
  %cmp65 = icmp eq i32 %56, 1
  br i1 %cmp65, label %cond.true.67, label %cond.false.70

cond.true.67:                                     ; preds = %land.lhs.true
  %57 = load i64, i64* %idx, align 8
  %58 = load i8*, i8** %str, align 8
  %arrayidx68 = getelementptr i8, i8* %58, i64 %57
  %59 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %59 to i32
  br label %cond.end.80

cond.false.70:                                    ; preds = %land.lhs.true
  %60 = load i32, i32* %kind, align 4
  %cmp71 = icmp eq i32 %60, 2
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %cond.false.70
  %61 = load i64, i64* %idx, align 8
  %62 = load i8*, i8** %str, align 8
  %63 = bitcast i8* %62 to i16*
  %arrayidx74 = getelementptr i16, i16* %63, i64 %61
  %64 = load i16, i16* %arrayidx74, align 2
  %conv75 = zext i16 %64 to i32
  br label %cond.end.78

cond.false.76:                                    ; preds = %cond.false.70
  %65 = load i64, i64* %idx, align 8
  %66 = load i8*, i8** %str, align 8
  %67 = bitcast i8* %66 to i32*
  %arrayidx77 = getelementptr i32, i32* %67, i64 %65
  %68 = load i32, i32* %arrayidx77, align 4
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.73
  %cond79 = phi i32 [ %conv75, %cond.true.73 ], [ %68, %cond.false.76 ]
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.end.78, %cond.true.67
  %cond81 = phi i32 [ %conv69, %cond.true.67 ], [ %cond79, %cond.end.78 ]
  %cmp82 = icmp ule i32 %cond81, 57
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %cond.end.80
  %69 = load i64, i64* %idx, align 8
  %inc85 = add i64 %69, 1
  store i64 %inc85, i64* %idx, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.84
  %70 = load i64, i64* %idx, align 8
  %71 = load i64, i64* %end_idx, align 8
  %cmp86 = icmp sle i64 %70, %71
  br i1 %cmp86, label %land.lhs.true.88, label %land.end

land.lhs.true.88:                                 ; preds = %while.cond
  %72 = load i32, i32* %kind, align 4
  %cmp89 = icmp eq i32 %72, 1
  br i1 %cmp89, label %cond.true.91, label %cond.false.94

cond.true.91:                                     ; preds = %land.lhs.true.88
  %73 = load i64, i64* %idx, align 8
  %74 = load i8*, i8** %str, align 8
  %arrayidx92 = getelementptr i8, i8* %74, i64 %73
  %75 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %75 to i32
  br label %cond.end.104

cond.false.94:                                    ; preds = %land.lhs.true.88
  %76 = load i32, i32* %kind, align 4
  %cmp95 = icmp eq i32 %76, 2
  br i1 %cmp95, label %cond.true.97, label %cond.false.100

cond.true.97:                                     ; preds = %cond.false.94
  %77 = load i64, i64* %idx, align 8
  %78 = load i8*, i8** %str, align 8
  %79 = bitcast i8* %78 to i16*
  %arrayidx98 = getelementptr i16, i16* %79, i64 %77
  %80 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %80 to i32
  br label %cond.end.102

cond.false.100:                                   ; preds = %cond.false.94
  %81 = load i64, i64* %idx, align 8
  %82 = load i8*, i8** %str, align 8
  %83 = bitcast i8* %82 to i32*
  %arrayidx101 = getelementptr i32, i32* %83, i64 %81
  %84 = load i32, i32* %arrayidx101, align 4
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.100, %cond.true.97
  %cond103 = phi i32 [ %conv99, %cond.true.97 ], [ %84, %cond.false.100 ]
  br label %cond.end.104

cond.end.104:                                     ; preds = %cond.end.102, %cond.true.91
  %cond105 = phi i32 [ %conv93, %cond.true.91 ], [ %cond103, %cond.end.102 ]
  %cmp106 = icmp uge i32 %cond105, 48
  br i1 %cmp106, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.104
  %85 = load i32, i32* %kind, align 4
  %cmp108 = icmp eq i32 %85, 1
  br i1 %cmp108, label %cond.true.110, label %cond.false.113

cond.true.110:                                    ; preds = %land.rhs
  %86 = load i64, i64* %idx, align 8
  %87 = load i8*, i8** %str, align 8
  %arrayidx111 = getelementptr i8, i8* %87, i64 %86
  %88 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %88 to i32
  br label %cond.end.123

cond.false.113:                                   ; preds = %land.rhs
  %89 = load i32, i32* %kind, align 4
  %cmp114 = icmp eq i32 %89, 2
  br i1 %cmp114, label %cond.true.116, label %cond.false.119

cond.true.116:                                    ; preds = %cond.false.113
  %90 = load i64, i64* %idx, align 8
  %91 = load i8*, i8** %str, align 8
  %92 = bitcast i8* %91 to i16*
  %arrayidx117 = getelementptr i16, i16* %92, i64 %90
  %93 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %93 to i32
  br label %cond.end.121

cond.false.119:                                   ; preds = %cond.false.113
  %94 = load i64, i64* %idx, align 8
  %95 = load i8*, i8** %str, align 8
  %96 = bitcast i8* %95 to i32*
  %arrayidx120 = getelementptr i32, i32* %96, i64 %94
  %97 = load i32, i32* %arrayidx120, align 4
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.119, %cond.true.116
  %cond122 = phi i32 [ %conv118, %cond.true.116 ], [ %97, %cond.false.119 ]
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.end.121, %cond.true.110
  %cond124 = phi i32 [ %conv112, %cond.true.110 ], [ %cond122, %cond.end.121 ]
  %cmp125 = icmp ule i32 %cond124, 57
  br label %land.end

land.end:                                         ; preds = %cond.end.123, %cond.end.104, %while.cond
  %98 = phi i1 [ false, %cond.end.104 ], [ false, %while.cond ], [ %cmp125, %cond.end.123 ]
  br i1 %98, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %99 = load i64, i64* %idx, align 8
  %inc127 = add i64 %99, 1
  store i64 %inc127, i64* %idx, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.151

if.else:                                          ; preds = %cond.end.80, %cond.end.61
  %100 = load i32, i32* %kind, align 4
  %cmp128 = icmp eq i32 %100, 1
  br i1 %cmp128, label %cond.true.130, label %cond.false.133

cond.true.130:                                    ; preds = %if.else
  %101 = load i64, i64* %idx, align 8
  %102 = load i8*, i8** %str, align 8
  %arrayidx131 = getelementptr i8, i8* %102, i64 %101
  %103 = load i8, i8* %arrayidx131, align 1
  %conv132 = zext i8 %103 to i32
  br label %cond.end.143

cond.false.133:                                   ; preds = %if.else
  %104 = load i32, i32* %kind, align 4
  %cmp134 = icmp eq i32 %104, 2
  br i1 %cmp134, label %cond.true.136, label %cond.false.139

cond.true.136:                                    ; preds = %cond.false.133
  %105 = load i64, i64* %idx, align 8
  %106 = load i8*, i8** %str, align 8
  %107 = bitcast i8* %106 to i16*
  %arrayidx137 = getelementptr i16, i16* %107, i64 %105
  %108 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %108 to i32
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.false.133
  %109 = load i64, i64* %idx, align 8
  %110 = load i8*, i8** %str, align 8
  %111 = bitcast i8* %110 to i32*
  %arrayidx140 = getelementptr i32, i32* %111, i64 %109
  %112 = load i32, i32* %arrayidx140, align 4
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.136
  %cond142 = phi i32 [ %conv138, %cond.true.136 ], [ %112, %cond.false.139 ]
  br label %cond.end.143

cond.end.143:                                     ; preds = %cond.end.141, %cond.true.130
  %cond144 = phi i32 [ %conv132, %cond.true.130 ], [ %cond142, %cond.end.141 ]
  %cmp145 = icmp eq i32 %cond144, 48
  br i1 %cmp145, label %if.then.147, label %if.else.149

if.then.147:                                      ; preds = %cond.end.143
  %113 = load i64, i64* %idx, align 8
  %inc148 = add i64 %113, 1
  store i64 %inc148, i64* %idx, align 8
  br label %if.end.150

if.else.149:                                      ; preds = %cond.end.143
  %114 = load i64, i64* %start.addr, align 8
  call void @raise_stop_iteration(i64 %114)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.150:                                       ; preds = %if.then.147
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %while.end
  %115 = load i64, i64* %idx, align 8
  %116 = load i64, i64* %end_idx, align 8
  %cmp152 = icmp slt i64 %115, %116
  br i1 %cmp152, label %land.lhs.true.154, label %if.end.268

land.lhs.true.154:                                ; preds = %if.end.151
  %117 = load i32, i32* %kind, align 4
  %cmp155 = icmp eq i32 %117, 1
  br i1 %cmp155, label %cond.true.157, label %cond.false.160

cond.true.157:                                    ; preds = %land.lhs.true.154
  %118 = load i64, i64* %idx, align 8
  %119 = load i8*, i8** %str, align 8
  %arrayidx158 = getelementptr i8, i8* %119, i64 %118
  %120 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %120 to i32
  br label %cond.end.170

cond.false.160:                                   ; preds = %land.lhs.true.154
  %121 = load i32, i32* %kind, align 4
  %cmp161 = icmp eq i32 %121, 2
  br i1 %cmp161, label %cond.true.163, label %cond.false.166

cond.true.163:                                    ; preds = %cond.false.160
  %122 = load i64, i64* %idx, align 8
  %123 = load i8*, i8** %str, align 8
  %124 = bitcast i8* %123 to i16*
  %arrayidx164 = getelementptr i16, i16* %124, i64 %122
  %125 = load i16, i16* %arrayidx164, align 2
  %conv165 = zext i16 %125 to i32
  br label %cond.end.168

cond.false.166:                                   ; preds = %cond.false.160
  %126 = load i64, i64* %idx, align 8
  %127 = load i8*, i8** %str, align 8
  %128 = bitcast i8* %127 to i32*
  %arrayidx167 = getelementptr i32, i32* %128, i64 %126
  %129 = load i32, i32* %arrayidx167, align 4
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.166, %cond.true.163
  %cond169 = phi i32 [ %conv165, %cond.true.163 ], [ %129, %cond.false.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.157
  %cond171 = phi i32 [ %conv159, %cond.true.157 ], [ %cond169, %cond.end.168 ]
  %cmp172 = icmp eq i32 %cond171, 46
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.268

land.lhs.true.174:                                ; preds = %cond.end.170
  %130 = load i32, i32* %kind, align 4
  %cmp175 = icmp eq i32 %130, 1
  br i1 %cmp175, label %cond.true.177, label %cond.false.180

cond.true.177:                                    ; preds = %land.lhs.true.174
  %131 = load i64, i64* %idx, align 8
  %add = add i64 %131, 1
  %132 = load i8*, i8** %str, align 8
  %arrayidx178 = getelementptr i8, i8* %132, i64 %add
  %133 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %133 to i32
  br label %cond.end.192

cond.false.180:                                   ; preds = %land.lhs.true.174
  %134 = load i32, i32* %kind, align 4
  %cmp181 = icmp eq i32 %134, 2
  br i1 %cmp181, label %cond.true.183, label %cond.false.187

cond.true.183:                                    ; preds = %cond.false.180
  %135 = load i64, i64* %idx, align 8
  %add184 = add i64 %135, 1
  %136 = load i8*, i8** %str, align 8
  %137 = bitcast i8* %136 to i16*
  %arrayidx185 = getelementptr i16, i16* %137, i64 %add184
  %138 = load i16, i16* %arrayidx185, align 2
  %conv186 = zext i16 %138 to i32
  br label %cond.end.190

cond.false.187:                                   ; preds = %cond.false.180
  %139 = load i64, i64* %idx, align 8
  %add188 = add i64 %139, 1
  %140 = load i8*, i8** %str, align 8
  %141 = bitcast i8* %140 to i32*
  %arrayidx189 = getelementptr i32, i32* %141, i64 %add188
  %142 = load i32, i32* %arrayidx189, align 4
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.false.187, %cond.true.183
  %cond191 = phi i32 [ %conv186, %cond.true.183 ], [ %142, %cond.false.187 ]
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.end.190, %cond.true.177
  %cond193 = phi i32 [ %conv179, %cond.true.177 ], [ %cond191, %cond.end.190 ]
  %cmp194 = icmp uge i32 %cond193, 48
  br i1 %cmp194, label %land.lhs.true.196, label %if.end.268

land.lhs.true.196:                                ; preds = %cond.end.192
  %143 = load i32, i32* %kind, align 4
  %cmp197 = icmp eq i32 %143, 1
  br i1 %cmp197, label %cond.true.199, label %cond.false.203

cond.true.199:                                    ; preds = %land.lhs.true.196
  %144 = load i64, i64* %idx, align 8
  %add200 = add i64 %144, 1
  %145 = load i8*, i8** %str, align 8
  %arrayidx201 = getelementptr i8, i8* %145, i64 %add200
  %146 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %146 to i32
  br label %cond.end.215

cond.false.203:                                   ; preds = %land.lhs.true.196
  %147 = load i32, i32* %kind, align 4
  %cmp204 = icmp eq i32 %147, 2
  br i1 %cmp204, label %cond.true.206, label %cond.false.210

cond.true.206:                                    ; preds = %cond.false.203
  %148 = load i64, i64* %idx, align 8
  %add207 = add i64 %148, 1
  %149 = load i8*, i8** %str, align 8
  %150 = bitcast i8* %149 to i16*
  %arrayidx208 = getelementptr i16, i16* %150, i64 %add207
  %151 = load i16, i16* %arrayidx208, align 2
  %conv209 = zext i16 %151 to i32
  br label %cond.end.213

cond.false.210:                                   ; preds = %cond.false.203
  %152 = load i64, i64* %idx, align 8
  %add211 = add i64 %152, 1
  %153 = load i8*, i8** %str, align 8
  %154 = bitcast i8* %153 to i32*
  %arrayidx212 = getelementptr i32, i32* %154, i64 %add211
  %155 = load i32, i32* %arrayidx212, align 4
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.210, %cond.true.206
  %cond214 = phi i32 [ %conv209, %cond.true.206 ], [ %155, %cond.false.210 ]
  br label %cond.end.215

cond.end.215:                                     ; preds = %cond.end.213, %cond.true.199
  %cond216 = phi i32 [ %conv202, %cond.true.199 ], [ %cond214, %cond.end.213 ]
  %cmp217 = icmp ule i32 %cond216, 57
  br i1 %cmp217, label %if.then.219, label %if.end.268

if.then.219:                                      ; preds = %cond.end.215
  store i32 1, i32* %is_float, align 4
  %156 = load i64, i64* %idx, align 8
  %add220 = add i64 %156, 2
  store i64 %add220, i64* %idx, align 8
  br label %while.cond.221

while.cond.221:                                   ; preds = %while.body.265, %if.then.219
  %157 = load i64, i64* %idx, align 8
  %158 = load i64, i64* %end_idx, align 8
  %cmp222 = icmp sle i64 %157, %158
  br i1 %cmp222, label %land.lhs.true.224, label %land.end.264

land.lhs.true.224:                                ; preds = %while.cond.221
  %159 = load i32, i32* %kind, align 4
  %cmp225 = icmp eq i32 %159, 1
  br i1 %cmp225, label %cond.true.227, label %cond.false.230

cond.true.227:                                    ; preds = %land.lhs.true.224
  %160 = load i64, i64* %idx, align 8
  %161 = load i8*, i8** %str, align 8
  %arrayidx228 = getelementptr i8, i8* %161, i64 %160
  %162 = load i8, i8* %arrayidx228, align 1
  %conv229 = zext i8 %162 to i32
  br label %cond.end.240

cond.false.230:                                   ; preds = %land.lhs.true.224
  %163 = load i32, i32* %kind, align 4
  %cmp231 = icmp eq i32 %163, 2
  br i1 %cmp231, label %cond.true.233, label %cond.false.236

cond.true.233:                                    ; preds = %cond.false.230
  %164 = load i64, i64* %idx, align 8
  %165 = load i8*, i8** %str, align 8
  %166 = bitcast i8* %165 to i16*
  %arrayidx234 = getelementptr i16, i16* %166, i64 %164
  %167 = load i16, i16* %arrayidx234, align 2
  %conv235 = zext i16 %167 to i32
  br label %cond.end.238

cond.false.236:                                   ; preds = %cond.false.230
  %168 = load i64, i64* %idx, align 8
  %169 = load i8*, i8** %str, align 8
  %170 = bitcast i8* %169 to i32*
  %arrayidx237 = getelementptr i32, i32* %170, i64 %168
  %171 = load i32, i32* %arrayidx237, align 4
  br label %cond.end.238

cond.end.238:                                     ; preds = %cond.false.236, %cond.true.233
  %cond239 = phi i32 [ %conv235, %cond.true.233 ], [ %171, %cond.false.236 ]
  br label %cond.end.240

cond.end.240:                                     ; preds = %cond.end.238, %cond.true.227
  %cond241 = phi i32 [ %conv229, %cond.true.227 ], [ %cond239, %cond.end.238 ]
  %cmp242 = icmp uge i32 %cond241, 48
  br i1 %cmp242, label %land.rhs.244, label %land.end.264

land.rhs.244:                                     ; preds = %cond.end.240
  %172 = load i32, i32* %kind, align 4
  %cmp245 = icmp eq i32 %172, 1
  br i1 %cmp245, label %cond.true.247, label %cond.false.250

cond.true.247:                                    ; preds = %land.rhs.244
  %173 = load i64, i64* %idx, align 8
  %174 = load i8*, i8** %str, align 8
  %arrayidx248 = getelementptr i8, i8* %174, i64 %173
  %175 = load i8, i8* %arrayidx248, align 1
  %conv249 = zext i8 %175 to i32
  br label %cond.end.260

cond.false.250:                                   ; preds = %land.rhs.244
  %176 = load i32, i32* %kind, align 4
  %cmp251 = icmp eq i32 %176, 2
  br i1 %cmp251, label %cond.true.253, label %cond.false.256

cond.true.253:                                    ; preds = %cond.false.250
  %177 = load i64, i64* %idx, align 8
  %178 = load i8*, i8** %str, align 8
  %179 = bitcast i8* %178 to i16*
  %arrayidx254 = getelementptr i16, i16* %179, i64 %177
  %180 = load i16, i16* %arrayidx254, align 2
  %conv255 = zext i16 %180 to i32
  br label %cond.end.258

cond.false.256:                                   ; preds = %cond.false.250
  %181 = load i64, i64* %idx, align 8
  %182 = load i8*, i8** %str, align 8
  %183 = bitcast i8* %182 to i32*
  %arrayidx257 = getelementptr i32, i32* %183, i64 %181
  %184 = load i32, i32* %arrayidx257, align 4
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.false.256, %cond.true.253
  %cond259 = phi i32 [ %conv255, %cond.true.253 ], [ %184, %cond.false.256 ]
  br label %cond.end.260

cond.end.260:                                     ; preds = %cond.end.258, %cond.true.247
  %cond261 = phi i32 [ %conv249, %cond.true.247 ], [ %cond259, %cond.end.258 ]
  %cmp262 = icmp ule i32 %cond261, 57
  br label %land.end.264

land.end.264:                                     ; preds = %cond.end.260, %cond.end.240, %while.cond.221
  %185 = phi i1 [ false, %cond.end.240 ], [ false, %while.cond.221 ], [ %cmp262, %cond.end.260 ]
  br i1 %185, label %while.body.265, label %while.end.267

while.body.265:                                   ; preds = %land.end.264
  %186 = load i64, i64* %idx, align 8
  %inc266 = add i64 %186, 1
  store i64 %inc266, i64* %idx, align 8
  br label %while.cond.221

while.end.267:                                    ; preds = %land.end.264
  br label %if.end.268

if.end.268:                                       ; preds = %while.end.267, %cond.end.215, %cond.end.192, %cond.end.170, %if.end.151
  %187 = load i64, i64* %idx, align 8
  %188 = load i64, i64* %end_idx, align 8
  %cmp269 = icmp slt i64 %187, %188
  br i1 %cmp269, label %land.lhs.true.271, label %if.end.452

land.lhs.true.271:                                ; preds = %if.end.268
  %189 = load i32, i32* %kind, align 4
  %cmp272 = icmp eq i32 %189, 1
  br i1 %cmp272, label %cond.true.274, label %cond.false.277

cond.true.274:                                    ; preds = %land.lhs.true.271
  %190 = load i64, i64* %idx, align 8
  %191 = load i8*, i8** %str, align 8
  %arrayidx275 = getelementptr i8, i8* %191, i64 %190
  %192 = load i8, i8* %arrayidx275, align 1
  %conv276 = zext i8 %192 to i32
  br label %cond.end.287

cond.false.277:                                   ; preds = %land.lhs.true.271
  %193 = load i32, i32* %kind, align 4
  %cmp278 = icmp eq i32 %193, 2
  br i1 %cmp278, label %cond.true.280, label %cond.false.283

cond.true.280:                                    ; preds = %cond.false.277
  %194 = load i64, i64* %idx, align 8
  %195 = load i8*, i8** %str, align 8
  %196 = bitcast i8* %195 to i16*
  %arrayidx281 = getelementptr i16, i16* %196, i64 %194
  %197 = load i16, i16* %arrayidx281, align 2
  %conv282 = zext i16 %197 to i32
  br label %cond.end.285

cond.false.283:                                   ; preds = %cond.false.277
  %198 = load i64, i64* %idx, align 8
  %199 = load i8*, i8** %str, align 8
  %200 = bitcast i8* %199 to i32*
  %arrayidx284 = getelementptr i32, i32* %200, i64 %198
  %201 = load i32, i32* %arrayidx284, align 4
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.283, %cond.true.280
  %cond286 = phi i32 [ %conv282, %cond.true.280 ], [ %201, %cond.false.283 ]
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.end.285, %cond.true.274
  %cond288 = phi i32 [ %conv276, %cond.true.274 ], [ %cond286, %cond.end.285 ]
  %cmp289 = icmp eq i32 %cond288, 101
  br i1 %cmp289, label %if.then.310, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.287
  %202 = load i32, i32* %kind, align 4
  %cmp291 = icmp eq i32 %202, 1
  br i1 %cmp291, label %cond.true.293, label %cond.false.296

cond.true.293:                                    ; preds = %lor.lhs.false
  %203 = load i64, i64* %idx, align 8
  %204 = load i8*, i8** %str, align 8
  %arrayidx294 = getelementptr i8, i8* %204, i64 %203
  %205 = load i8, i8* %arrayidx294, align 1
  %conv295 = zext i8 %205 to i32
  br label %cond.end.306

cond.false.296:                                   ; preds = %lor.lhs.false
  %206 = load i32, i32* %kind, align 4
  %cmp297 = icmp eq i32 %206, 2
  br i1 %cmp297, label %cond.true.299, label %cond.false.302

cond.true.299:                                    ; preds = %cond.false.296
  %207 = load i64, i64* %idx, align 8
  %208 = load i8*, i8** %str, align 8
  %209 = bitcast i8* %208 to i16*
  %arrayidx300 = getelementptr i16, i16* %209, i64 %207
  %210 = load i16, i16* %arrayidx300, align 2
  %conv301 = zext i16 %210 to i32
  br label %cond.end.304

cond.false.302:                                   ; preds = %cond.false.296
  %211 = load i64, i64* %idx, align 8
  %212 = load i8*, i8** %str, align 8
  %213 = bitcast i8* %212 to i32*
  %arrayidx303 = getelementptr i32, i32* %213, i64 %211
  %214 = load i32, i32* %arrayidx303, align 4
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.302, %cond.true.299
  %cond305 = phi i32 [ %conv301, %cond.true.299 ], [ %214, %cond.false.302 ]
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.end.304, %cond.true.293
  %cond307 = phi i32 [ %conv295, %cond.true.293 ], [ %cond305, %cond.end.304 ]
  %cmp308 = icmp eq i32 %cond307, 69
  br i1 %cmp308, label %if.then.310, label %if.end.452

if.then.310:                                      ; preds = %cond.end.306, %cond.end.287
  %215 = load i64, i64* %idx, align 8
  store i64 %215, i64* %e_start, align 8
  %216 = load i64, i64* %idx, align 8
  %inc311 = add i64 %216, 1
  store i64 %inc311, i64* %idx, align 8
  %217 = load i64, i64* %idx, align 8
  %218 = load i64, i64* %end_idx, align 8
  %cmp312 = icmp slt i64 %217, %218
  br i1 %cmp312, label %land.lhs.true.314, label %if.end.356

land.lhs.true.314:                                ; preds = %if.then.310
  %219 = load i32, i32* %kind, align 4
  %cmp315 = icmp eq i32 %219, 1
  br i1 %cmp315, label %cond.true.317, label %cond.false.320

cond.true.317:                                    ; preds = %land.lhs.true.314
  %220 = load i64, i64* %idx, align 8
  %221 = load i8*, i8** %str, align 8
  %arrayidx318 = getelementptr i8, i8* %221, i64 %220
  %222 = load i8, i8* %arrayidx318, align 1
  %conv319 = zext i8 %222 to i32
  br label %cond.end.330

cond.false.320:                                   ; preds = %land.lhs.true.314
  %223 = load i32, i32* %kind, align 4
  %cmp321 = icmp eq i32 %223, 2
  br i1 %cmp321, label %cond.true.323, label %cond.false.326

cond.true.323:                                    ; preds = %cond.false.320
  %224 = load i64, i64* %idx, align 8
  %225 = load i8*, i8** %str, align 8
  %226 = bitcast i8* %225 to i16*
  %arrayidx324 = getelementptr i16, i16* %226, i64 %224
  %227 = load i16, i16* %arrayidx324, align 2
  %conv325 = zext i16 %227 to i32
  br label %cond.end.328

cond.false.326:                                   ; preds = %cond.false.320
  %228 = load i64, i64* %idx, align 8
  %229 = load i8*, i8** %str, align 8
  %230 = bitcast i8* %229 to i32*
  %arrayidx327 = getelementptr i32, i32* %230, i64 %228
  %231 = load i32, i32* %arrayidx327, align 4
  br label %cond.end.328

cond.end.328:                                     ; preds = %cond.false.326, %cond.true.323
  %cond329 = phi i32 [ %conv325, %cond.true.323 ], [ %231, %cond.false.326 ]
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.end.328, %cond.true.317
  %cond331 = phi i32 [ %conv319, %cond.true.317 ], [ %cond329, %cond.end.328 ]
  %cmp332 = icmp eq i32 %cond331, 45
  br i1 %cmp332, label %if.then.354, label %lor.lhs.false.334

lor.lhs.false.334:                                ; preds = %cond.end.330
  %232 = load i32, i32* %kind, align 4
  %cmp335 = icmp eq i32 %232, 1
  br i1 %cmp335, label %cond.true.337, label %cond.false.340

cond.true.337:                                    ; preds = %lor.lhs.false.334
  %233 = load i64, i64* %idx, align 8
  %234 = load i8*, i8** %str, align 8
  %arrayidx338 = getelementptr i8, i8* %234, i64 %233
  %235 = load i8, i8* %arrayidx338, align 1
  %conv339 = zext i8 %235 to i32
  br label %cond.end.350

cond.false.340:                                   ; preds = %lor.lhs.false.334
  %236 = load i32, i32* %kind, align 4
  %cmp341 = icmp eq i32 %236, 2
  br i1 %cmp341, label %cond.true.343, label %cond.false.346

cond.true.343:                                    ; preds = %cond.false.340
  %237 = load i64, i64* %idx, align 8
  %238 = load i8*, i8** %str, align 8
  %239 = bitcast i8* %238 to i16*
  %arrayidx344 = getelementptr i16, i16* %239, i64 %237
  %240 = load i16, i16* %arrayidx344, align 2
  %conv345 = zext i16 %240 to i32
  br label %cond.end.348

cond.false.346:                                   ; preds = %cond.false.340
  %241 = load i64, i64* %idx, align 8
  %242 = load i8*, i8** %str, align 8
  %243 = bitcast i8* %242 to i32*
  %arrayidx347 = getelementptr i32, i32* %243, i64 %241
  %244 = load i32, i32* %arrayidx347, align 4
  br label %cond.end.348

cond.end.348:                                     ; preds = %cond.false.346, %cond.true.343
  %cond349 = phi i32 [ %conv345, %cond.true.343 ], [ %244, %cond.false.346 ]
  br label %cond.end.350

cond.end.350:                                     ; preds = %cond.end.348, %cond.true.337
  %cond351 = phi i32 [ %conv339, %cond.true.337 ], [ %cond349, %cond.end.348 ]
  %cmp352 = icmp eq i32 %cond351, 43
  br i1 %cmp352, label %if.then.354, label %if.end.356

if.then.354:                                      ; preds = %cond.end.350, %cond.end.330
  %245 = load i64, i64* %idx, align 8
  %inc355 = add i64 %245, 1
  store i64 %inc355, i64* %idx, align 8
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.354, %cond.end.350, %if.then.310
  br label %while.cond.357

while.cond.357:                                   ; preds = %while.body.401, %if.end.356
  %246 = load i64, i64* %idx, align 8
  %247 = load i64, i64* %end_idx, align 8
  %cmp358 = icmp sle i64 %246, %247
  br i1 %cmp358, label %land.lhs.true.360, label %land.end.400

land.lhs.true.360:                                ; preds = %while.cond.357
  %248 = load i32, i32* %kind, align 4
  %cmp361 = icmp eq i32 %248, 1
  br i1 %cmp361, label %cond.true.363, label %cond.false.366

cond.true.363:                                    ; preds = %land.lhs.true.360
  %249 = load i64, i64* %idx, align 8
  %250 = load i8*, i8** %str, align 8
  %arrayidx364 = getelementptr i8, i8* %250, i64 %249
  %251 = load i8, i8* %arrayidx364, align 1
  %conv365 = zext i8 %251 to i32
  br label %cond.end.376

cond.false.366:                                   ; preds = %land.lhs.true.360
  %252 = load i32, i32* %kind, align 4
  %cmp367 = icmp eq i32 %252, 2
  br i1 %cmp367, label %cond.true.369, label %cond.false.372

cond.true.369:                                    ; preds = %cond.false.366
  %253 = load i64, i64* %idx, align 8
  %254 = load i8*, i8** %str, align 8
  %255 = bitcast i8* %254 to i16*
  %arrayidx370 = getelementptr i16, i16* %255, i64 %253
  %256 = load i16, i16* %arrayidx370, align 2
  %conv371 = zext i16 %256 to i32
  br label %cond.end.374

cond.false.372:                                   ; preds = %cond.false.366
  %257 = load i64, i64* %idx, align 8
  %258 = load i8*, i8** %str, align 8
  %259 = bitcast i8* %258 to i32*
  %arrayidx373 = getelementptr i32, i32* %259, i64 %257
  %260 = load i32, i32* %arrayidx373, align 4
  br label %cond.end.374

cond.end.374:                                     ; preds = %cond.false.372, %cond.true.369
  %cond375 = phi i32 [ %conv371, %cond.true.369 ], [ %260, %cond.false.372 ]
  br label %cond.end.376

cond.end.376:                                     ; preds = %cond.end.374, %cond.true.363
  %cond377 = phi i32 [ %conv365, %cond.true.363 ], [ %cond375, %cond.end.374 ]
  %cmp378 = icmp uge i32 %cond377, 48
  br i1 %cmp378, label %land.rhs.380, label %land.end.400

land.rhs.380:                                     ; preds = %cond.end.376
  %261 = load i32, i32* %kind, align 4
  %cmp381 = icmp eq i32 %261, 1
  br i1 %cmp381, label %cond.true.383, label %cond.false.386

cond.true.383:                                    ; preds = %land.rhs.380
  %262 = load i64, i64* %idx, align 8
  %263 = load i8*, i8** %str, align 8
  %arrayidx384 = getelementptr i8, i8* %263, i64 %262
  %264 = load i8, i8* %arrayidx384, align 1
  %conv385 = zext i8 %264 to i32
  br label %cond.end.396

cond.false.386:                                   ; preds = %land.rhs.380
  %265 = load i32, i32* %kind, align 4
  %cmp387 = icmp eq i32 %265, 2
  br i1 %cmp387, label %cond.true.389, label %cond.false.392

cond.true.389:                                    ; preds = %cond.false.386
  %266 = load i64, i64* %idx, align 8
  %267 = load i8*, i8** %str, align 8
  %268 = bitcast i8* %267 to i16*
  %arrayidx390 = getelementptr i16, i16* %268, i64 %266
  %269 = load i16, i16* %arrayidx390, align 2
  %conv391 = zext i16 %269 to i32
  br label %cond.end.394

cond.false.392:                                   ; preds = %cond.false.386
  %270 = load i64, i64* %idx, align 8
  %271 = load i8*, i8** %str, align 8
  %272 = bitcast i8* %271 to i32*
  %arrayidx393 = getelementptr i32, i32* %272, i64 %270
  %273 = load i32, i32* %arrayidx393, align 4
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.false.392, %cond.true.389
  %cond395 = phi i32 [ %conv391, %cond.true.389 ], [ %273, %cond.false.392 ]
  br label %cond.end.396

cond.end.396:                                     ; preds = %cond.end.394, %cond.true.383
  %cond397 = phi i32 [ %conv385, %cond.true.383 ], [ %cond395, %cond.end.394 ]
  %cmp398 = icmp ule i32 %cond397, 57
  br label %land.end.400

land.end.400:                                     ; preds = %cond.end.396, %cond.end.376, %while.cond.357
  %274 = phi i1 [ false, %cond.end.376 ], [ false, %while.cond.357 ], [ %cmp398, %cond.end.396 ]
  br i1 %274, label %while.body.401, label %while.end.403

while.body.401:                                   ; preds = %land.end.400
  %275 = load i64, i64* %idx, align 8
  %inc402 = add i64 %275, 1
  store i64 %inc402, i64* %idx, align 8
  br label %while.cond.357

while.end.403:                                    ; preds = %land.end.400
  %276 = load i32, i32* %kind, align 4
  %cmp404 = icmp eq i32 %276, 1
  br i1 %cmp404, label %cond.true.406, label %cond.false.410

cond.true.406:                                    ; preds = %while.end.403
  %277 = load i64, i64* %idx, align 8
  %sub407 = sub i64 %277, 1
  %278 = load i8*, i8** %str, align 8
  %arrayidx408 = getelementptr i8, i8* %278, i64 %sub407
  %279 = load i8, i8* %arrayidx408, align 1
  %conv409 = zext i8 %279 to i32
  br label %cond.end.422

cond.false.410:                                   ; preds = %while.end.403
  %280 = load i32, i32* %kind, align 4
  %cmp411 = icmp eq i32 %280, 2
  br i1 %cmp411, label %cond.true.413, label %cond.false.417

cond.true.413:                                    ; preds = %cond.false.410
  %281 = load i64, i64* %idx, align 8
  %sub414 = sub i64 %281, 1
  %282 = load i8*, i8** %str, align 8
  %283 = bitcast i8* %282 to i16*
  %arrayidx415 = getelementptr i16, i16* %283, i64 %sub414
  %284 = load i16, i16* %arrayidx415, align 2
  %conv416 = zext i16 %284 to i32
  br label %cond.end.420

cond.false.417:                                   ; preds = %cond.false.410
  %285 = load i64, i64* %idx, align 8
  %sub418 = sub i64 %285, 1
  %286 = load i8*, i8** %str, align 8
  %287 = bitcast i8* %286 to i32*
  %arrayidx419 = getelementptr i32, i32* %287, i64 %sub418
  %288 = load i32, i32* %arrayidx419, align 4
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.false.417, %cond.true.413
  %cond421 = phi i32 [ %conv416, %cond.true.413 ], [ %288, %cond.false.417 ]
  br label %cond.end.422

cond.end.422:                                     ; preds = %cond.end.420, %cond.true.406
  %cond423 = phi i32 [ %conv409, %cond.true.406 ], [ %cond421, %cond.end.420 ]
  %cmp424 = icmp uge i32 %cond423, 48
  br i1 %cmp424, label %land.lhs.true.426, label %if.else.450

land.lhs.true.426:                                ; preds = %cond.end.422
  %289 = load i32, i32* %kind, align 4
  %cmp427 = icmp eq i32 %289, 1
  br i1 %cmp427, label %cond.true.429, label %cond.false.433

cond.true.429:                                    ; preds = %land.lhs.true.426
  %290 = load i64, i64* %idx, align 8
  %sub430 = sub i64 %290, 1
  %291 = load i8*, i8** %str, align 8
  %arrayidx431 = getelementptr i8, i8* %291, i64 %sub430
  %292 = load i8, i8* %arrayidx431, align 1
  %conv432 = zext i8 %292 to i32
  br label %cond.end.445

cond.false.433:                                   ; preds = %land.lhs.true.426
  %293 = load i32, i32* %kind, align 4
  %cmp434 = icmp eq i32 %293, 2
  br i1 %cmp434, label %cond.true.436, label %cond.false.440

cond.true.436:                                    ; preds = %cond.false.433
  %294 = load i64, i64* %idx, align 8
  %sub437 = sub i64 %294, 1
  %295 = load i8*, i8** %str, align 8
  %296 = bitcast i8* %295 to i16*
  %arrayidx438 = getelementptr i16, i16* %296, i64 %sub437
  %297 = load i16, i16* %arrayidx438, align 2
  %conv439 = zext i16 %297 to i32
  br label %cond.end.443

cond.false.440:                                   ; preds = %cond.false.433
  %298 = load i64, i64* %idx, align 8
  %sub441 = sub i64 %298, 1
  %299 = load i8*, i8** %str, align 8
  %300 = bitcast i8* %299 to i32*
  %arrayidx442 = getelementptr i32, i32* %300, i64 %sub441
  %301 = load i32, i32* %arrayidx442, align 4
  br label %cond.end.443

cond.end.443:                                     ; preds = %cond.false.440, %cond.true.436
  %cond444 = phi i32 [ %conv439, %cond.true.436 ], [ %301, %cond.false.440 ]
  br label %cond.end.445

cond.end.445:                                     ; preds = %cond.end.443, %cond.true.429
  %cond446 = phi i32 [ %conv432, %cond.true.429 ], [ %cond444, %cond.end.443 ]
  %cmp447 = icmp ule i32 %cond446, 57
  br i1 %cmp447, label %if.then.449, label %if.else.450

if.then.449:                                      ; preds = %cond.end.445
  store i32 1, i32* %is_float, align 4
  br label %if.end.451

if.else.450:                                      ; preds = %cond.end.445, %cond.end.422
  %302 = load i64, i64* %e_start, align 8
  store i64 %302, i64* %idx, align 8
  br label %if.end.451

if.end.451:                                       ; preds = %if.else.450, %if.then.449
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %cond.end.306, %if.end.268
  %303 = load i32, i32* %is_float, align 4
  %tobool453 = icmp ne i32 %303, 0
  br i1 %tobool453, label %land.lhs.true.454, label %if.else.459

land.lhs.true.454:                                ; preds = %if.end.452
  %304 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %parse_float = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %304, i32 0, i32 4
  %305 = load %struct._object*, %struct._object** %parse_float, align 8
  %cmp455 = icmp ne %struct._object* %305, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyFloat_Type, i32 0, i32 0, i32 0)
  br i1 %cmp455, label %if.then.457, label %if.else.459

if.then.457:                                      ; preds = %land.lhs.true.454
  %306 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %parse_float458 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %306, i32 0, i32 4
  %307 = load %struct._object*, %struct._object** %parse_float458, align 8
  store %struct._object* %307, %struct._object** %custom_func, align 8
  br label %if.end.468

if.else.459:                                      ; preds = %land.lhs.true.454, %if.end.452
  %308 = load i32, i32* %is_float, align 4
  %tobool460 = icmp ne i32 %308, 0
  br i1 %tobool460, label %if.else.466, label %land.lhs.true.461

land.lhs.true.461:                                ; preds = %if.else.459
  %309 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %parse_int = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %309, i32 0, i32 5
  %310 = load %struct._object*, %struct._object** %parse_int, align 8
  %cmp462 = icmp ne %struct._object* %310, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyLong_Type, i32 0, i32 0, i32 0)
  br i1 %cmp462, label %if.then.464, label %if.else.466

if.then.464:                                      ; preds = %land.lhs.true.461
  %311 = load %struct._PyScannerObject*, %struct._PyScannerObject** %s.addr, align 8
  %parse_int465 = getelementptr inbounds %struct._PyScannerObject, %struct._PyScannerObject* %311, i32 0, i32 5
  %312 = load %struct._object*, %struct._object** %parse_int465, align 8
  store %struct._object* %312, %struct._object** %custom_func, align 8
  br label %if.end.467

if.else.466:                                      ; preds = %land.lhs.true.461, %if.else.459
  store %struct._object* null, %struct._object** %custom_func, align 8
  br label %if.end.467

if.end.467:                                       ; preds = %if.else.466, %if.then.464
  br label %if.end.468

if.end.468:                                       ; preds = %if.end.467, %if.then.457
  %313 = load %struct._object*, %struct._object** %custom_func, align 8
  %tobool469 = icmp ne %struct._object* %313, null
  br i1 %tobool469, label %if.then.470, label %if.else.480

if.then.470:                                      ; preds = %if.end.468
  %314 = load i32, i32* %kind, align 4
  %315 = load i8*, i8** %str, align 8
  %316 = load i32, i32* %kind, align 4
  %conv471 = sext i32 %316 to i64
  %317 = load i64, i64* %start.addr, align 8
  %mul = mul i64 %conv471, %317
  %add.ptr472 = getelementptr i8, i8* %315, i64 %mul
  %318 = load i64, i64* %idx, align 8
  %319 = load i64, i64* %start.addr, align 8
  %sub473 = sub i64 %318, %319
  %call474 = call %struct._object* @PyUnicode_FromKindAndData(i32 %314, i8* %add.ptr472, i64 %sub473)
  store %struct._object* %call474, %struct._object** %numstr, align 8
  %320 = load %struct._object*, %struct._object** %numstr, align 8
  %cmp475 = icmp eq %struct._object* %320, null
  br i1 %cmp475, label %if.then.477, label %if.end.478

if.then.477:                                      ; preds = %if.then.470
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.478:                                       ; preds = %if.then.470
  %321 = load %struct._object*, %struct._object** %custom_func, align 8
  %322 = load %struct._object*, %struct._object** %numstr, align 8
  %call479 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %321, %struct._object* %322, i8* null)
  store %struct._object* %call479, %struct._object** %rval, align 8
  br label %if.end.518

if.else.480:                                      ; preds = %if.end.468
  %323 = load i64, i64* %idx, align 8
  %324 = load i64, i64* %start.addr, align 8
  %sub481 = sub i64 %323, %324
  store i64 %sub481, i64* %n, align 8
  %325 = load i64, i64* %n, align 8
  %call482 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %325)
  store %struct._object* %call482, %struct._object** %numstr, align 8
  %326 = load %struct._object*, %struct._object** %numstr, align 8
  %cmp483 = icmp eq %struct._object* %326, null
  br i1 %cmp483, label %if.then.485, label %if.end.486

if.then.485:                                      ; preds = %if.else.480
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.486:                                       ; preds = %if.else.480
  %327 = load %struct._object*, %struct._object** %numstr, align 8
  %328 = bitcast %struct._object* %327 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %328, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %buf, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.486
  %329 = load i64, i64* %i, align 8
  %330 = load i64, i64* %n, align 8
  %cmp487 = icmp slt i64 %329, %330
  br i1 %cmp487, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %331 = load i32, i32* %kind, align 4
  %cmp489 = icmp eq i32 %331, 1
  br i1 %cmp489, label %cond.true.491, label %cond.false.495

cond.true.491:                                    ; preds = %for.body
  %332 = load i64, i64* %i, align 8
  %333 = load i64, i64* %start.addr, align 8
  %add492 = add i64 %332, %333
  %334 = load i8*, i8** %str, align 8
  %arrayidx493 = getelementptr i8, i8* %334, i64 %add492
  %335 = load i8, i8* %arrayidx493, align 1
  %conv494 = zext i8 %335 to i32
  br label %cond.end.507

cond.false.495:                                   ; preds = %for.body
  %336 = load i32, i32* %kind, align 4
  %cmp496 = icmp eq i32 %336, 2
  br i1 %cmp496, label %cond.true.498, label %cond.false.502

cond.true.498:                                    ; preds = %cond.false.495
  %337 = load i64, i64* %i, align 8
  %338 = load i64, i64* %start.addr, align 8
  %add499 = add i64 %337, %338
  %339 = load i8*, i8** %str, align 8
  %340 = bitcast i8* %339 to i16*
  %arrayidx500 = getelementptr i16, i16* %340, i64 %add499
  %341 = load i16, i16* %arrayidx500, align 2
  %conv501 = zext i16 %341 to i32
  br label %cond.end.505

cond.false.502:                                   ; preds = %cond.false.495
  %342 = load i64, i64* %i, align 8
  %343 = load i64, i64* %start.addr, align 8
  %add503 = add i64 %342, %343
  %344 = load i8*, i8** %str, align 8
  %345 = bitcast i8* %344 to i32*
  %arrayidx504 = getelementptr i32, i32* %345, i64 %add503
  %346 = load i32, i32* %arrayidx504, align 4
  br label %cond.end.505

cond.end.505:                                     ; preds = %cond.false.502, %cond.true.498
  %cond506 = phi i32 [ %conv501, %cond.true.498 ], [ %346, %cond.false.502 ]
  br label %cond.end.507

cond.end.507:                                     ; preds = %cond.end.505, %cond.true.491
  %cond508 = phi i32 [ %conv494, %cond.true.491 ], [ %cond506, %cond.end.505 ]
  %conv509 = trunc i32 %cond508 to i8
  %347 = load i64, i64* %i, align 8
  %348 = load i8*, i8** %buf, align 8
  %arrayidx510 = getelementptr i8, i8* %348, i64 %347
  store i8 %conv509, i8* %arrayidx510, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.507
  %349 = load i64, i64* %i, align 8
  %inc511 = add i64 %349, 1
  store i64 %inc511, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %350 = load i32, i32* %is_float, align 4
  %tobool512 = icmp ne i32 %350, 0
  br i1 %tobool512, label %if.then.513, label %if.else.515

if.then.513:                                      ; preds = %for.end
  %351 = load %struct._object*, %struct._object** %numstr, align 8
  %call514 = call %struct._object* @PyFloat_FromString(%struct._object* %351)
  store %struct._object* %call514, %struct._object** %rval, align 8
  br label %if.end.517

if.else.515:                                      ; preds = %for.end
  %352 = load i8*, i8** %buf, align 8
  %call516 = call %struct._object* @PyLong_FromString(i8* %352, i8** null, i32 10)
  store %struct._object* %call516, %struct._object** %rval, align 8
  br label %if.end.517

if.end.517:                                       ; preds = %if.else.515, %if.then.513
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %if.end.478
  br label %do.body

do.body:                                          ; preds = %if.end.518
  %353 = load %struct._object*, %struct._object** %numstr, align 8
  store %struct._object* %353, %struct._object** %_py_decref_tmp, align 8
  %354 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %354, i32 0, i32 0
  %355 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %355, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp519 = icmp ne i64 %dec, 0
  br i1 %cmp519, label %if.then.521, label %if.else.522

if.then.521:                                      ; preds = %do.body
  br label %if.end.523

if.else.522:                                      ; preds = %do.body
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %356, i32 0, i32 1
  %357 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %357, i32 0, i32 4
  %358 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %359 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %358(%struct._object* %359)
  br label %if.end.523

if.end.523:                                       ; preds = %if.else.522, %if.then.521
  br label %do.end

do.end:                                           ; preds = %if.end.523
  %360 = load i64, i64* %idx, align 8
  %361 = load i64*, i64** %next_idx_ptr.addr, align 8
  store i64 %360, i64* %361, align 8
  %362 = load %struct._object*, %struct._object** %rval, align 8
  store %struct._object* %362, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.485, %if.then.477, %if.else.149, %if.then.43, %if.then
  %363 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %363
}

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyFloat_FromString(%struct._object*) #1

declare %struct._object* @PyLong_FromString(i8*, i8**, i32) #1

; Function Attrs: nounwind uwtable
define internal void @encoder_dealloc(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i32 @encoder_clear(%struct._object* %0)
  %1 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 38
  %3 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to i8*
  call void %3(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_call(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %indent_level = alloca i64, align 8
  %s = alloca %struct._PyEncoderObject*, align 8
  %acc = alloca %struct._PyAccu, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyEncoderObject*
  store %struct._PyEncoderObject* %1, %struct._PyEncoderObject** %s, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @encoder_call.kwlist, i32 0, i32 0), %struct._object** %obj, i64* %indent_level)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @_PyAccu_Init(%struct._PyAccu* %acc)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %6 = load i64, i64* %indent_level, align 8
  %call5 = call i32 @encoder_listencode_obj(%struct._PyEncoderObject* %4, %struct._PyAccu* %acc, %struct._object* %5, i64 %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  call void @_PyAccu_Destroy(%struct._PyAccu* %acc)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @_PyAccu_FinishAsList(%struct._PyAccu* %acc)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @encoder_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %s = alloca %struct._PyEncoderObject*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  %vret63 = alloca i32, align 4
  %vret74 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyEncoderObject*
  store %struct._PyEncoderObject* %1, %struct._PyEncoderObject** %s, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %markers, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers1 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %markers1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %defaultfn, align 8
  %tobool6 = icmp ne %struct._object* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn9 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %defaultfn9, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call10, i32* %vret8, align 4
  %16 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %17 = load i32, i32* %vret8, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %18 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %encoder, align 8
  %tobool17 = icmp ne %struct._object* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder20 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %encoder20, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call21, i32* %vret19, align 4
  %24 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %25 = load i32, i32* %vret19, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %26 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %indent, align 8
  %tobool28 = icmp ne %struct._object* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent31 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %29, i32 0, i32 4
  %30 = load %struct._object*, %struct._object** %indent31, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call32, i32* %vret30, align 4
  %32 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %33 = load i32, i32* %vret30, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %34 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %34, i32 0, i32 5
  %35 = load %struct._object*, %struct._object** %key_separator, align 8
  %tobool39 = icmp ne %struct._object* %35, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %37 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator42 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %37, i32 0, i32 5
  %38 = load %struct._object*, %struct._object** %key_separator42, align 8
  %39 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %36(%struct._object* %38, i8* %39)
  store i32 %call43, i32* %vret41, align 4
  %40 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %41 = load i32, i32* %vret41, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %42 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %42, i32 0, i32 6
  %43 = load %struct._object*, %struct._object** %item_separator, align 8
  %tobool50 = icmp ne %struct._object* %43, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %44 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %45 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator53 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %45, i32 0, i32 6
  %46 = load %struct._object*, %struct._object** %item_separator53, align 8
  %47 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %44(%struct._object* %46, i8* %47)
  store i32 %call54, i32* %vret52, align 4
  %48 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %48, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %49 = load i32, i32* %vret52, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %50 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %50, i32 0, i32 7
  %51 = load %struct._object*, %struct._object** %sort_keys, align 8
  %tobool61 = icmp ne %struct._object* %51, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %do.body.60
  %52 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %53 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys64 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %53, i32 0, i32 7
  %54 = load %struct._object*, %struct._object** %sort_keys64, align 8
  %55 = load i8*, i8** %arg.addr, align 8
  %call65 = call i32 %52(%struct._object* %54, i8* %55)
  store i32 %call65, i32* %vret63, align 4
  %56 = load i32, i32* %vret63, align 4
  %tobool66 = icmp ne i32 %56, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.62
  %57 = load i32, i32* %vret63, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body.60
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %58 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %58, i32 0, i32 8
  %59 = load %struct._object*, %struct._object** %skipkeys, align 8
  %tobool72 = icmp ne %struct._object* %59, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %do.body.71
  %60 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %61 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys75 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %61, i32 0, i32 8
  %62 = load %struct._object*, %struct._object** %skipkeys75, align 8
  %63 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 %60(%struct._object* %62, i8* %63)
  store i32 %call76, i32* %vret74, align 4
  %64 = load i32, i32* %vret74, align 4
  %tobool77 = icmp ne i32 %64, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  %65 = load i32, i32* %vret74, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.body.71
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.81, %if.then.78, %if.then.67, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @encoder_clear(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %s = alloca %struct._PyEncoderObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_tmp98 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %_py_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyEncoderObject*
  store %struct._PyEncoderObject* %1, %struct._PyEncoderObject** %s, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %markers, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %5 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers1 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %markers1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %13 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %defaultfn, align 8
  store %struct._object* %14, %struct._object** %_py_tmp8, align 8
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %15, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %16 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn11 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %16, i32 0, i32 2
  store %struct._object* null, %struct._object** %defaultfn11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %17 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp13, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %19, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %22(%struct._object* %23)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %24 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %encoder, align 8
  store %struct._object* %25, %struct._object** %_py_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %26, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %27 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder29 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %27, i32 0, i32 3
  store %struct._object* null, %struct._object** %encoder29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %28 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp31, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %30, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %33(%struct._object* %34)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %35 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %35, i32 0, i32 4
  %36 = load %struct._object*, %struct._object** %indent, align 8
  store %struct._object* %36, %struct._object** %_py_tmp44, align 8
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %37, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %38 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent47 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %38, i32 0, i32 4
  store %struct._object* null, %struct._object** %indent47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %39 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp49, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %41, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %44(%struct._object* %45)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %46 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %46, i32 0, i32 5
  %47 = load %struct._object*, %struct._object** %key_separator, align 8
  store %struct._object* %47, %struct._object** %_py_tmp62, align 8
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %48, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %49 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator65 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %49, i32 0, i32 5
  store %struct._object* null, %struct._object** %key_separator65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %50 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp67, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %52, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %55(%struct._object* %56)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %57 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %57, i32 0, i32 6
  %58 = load %struct._object*, %struct._object** %item_separator, align 8
  store %struct._object* %58, %struct._object** %_py_tmp80, align 8
  %59 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %59, null
  br i1 %cmp81, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.79
  %60 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator83 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %60, i32 0, i32 6
  store %struct._object* null, %struct._object** %item_separator83, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %61 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp85, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %63, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %66(%struct._object* %67)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %do.body.97

do.body.97:                                       ; preds = %do.end.96
  %68 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %68, i32 0, i32 7
  %69 = load %struct._object*, %struct._object** %sort_keys, align 8
  store %struct._object* %69, %struct._object** %_py_tmp98, align 8
  %70 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  %cmp99 = icmp ne %struct._object* %70, null
  br i1 %cmp99, label %if.then.100, label %if.end.113

if.then.100:                                      ; preds = %do.body.97
  %71 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys101 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %71, i32 0, i32 7
  store %struct._object* null, %struct._object** %sort_keys101, align 8
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.100
  %72 = load %struct._object*, %struct._object** %_py_tmp98, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp103, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %74, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %77(%struct._object* %78)
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
  %79 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %79, i32 0, i32 8
  %80 = load %struct._object*, %struct._object** %skipkeys, align 8
  store %struct._object* %80, %struct._object** %_py_tmp116, align 8
  %81 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %81, null
  br i1 %cmp117, label %if.then.118, label %if.end.131

if.then.118:                                      ; preds = %do.body.115
  %82 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys119 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %82, i32 0, i32 8
  store %struct._object* null, %struct._object** %skipkeys119, align 8
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.118
  %83 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp121, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %85, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.120
  br label %if.end.129

if.else.126:                                      ; preds = %do.body.120
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type127 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type127, align 8
  %tp_dealloc128 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc128, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %88(%struct._object* %89)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end.130

do.end.130:                                       ; preds = %if.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %do.end.130, %do.body.115
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @encoder_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %s = alloca %struct._PyEncoderObject*, align 8
  %markers = alloca %struct._object*, align 8
  %defaultfn = alloca %struct._object*, align 8
  %encoder = alloca %struct._object*, align 8
  %indent = alloca %struct._object*, align 8
  %key_separator = alloca %struct._object*, align 8
  %item_separator = alloca %struct._object*, align 8
  %sort_keys = alloca %struct._object*, align 8
  %skipkeys = alloca %struct._object*, align 8
  %allow_nan = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyEncoderObject*
  store %struct._PyEncoderObject* %1, %struct._PyEncoderObject** %s, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %2, %struct._object* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0), i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @encoder_init.kwlist, i32 0, i32 0), %struct._object** %markers, %struct._object** %defaultfn, %struct._object** %encoder, %struct._object** %indent, %struct._object** %key_separator, %struct._object** %item_separator, %struct._object** %sort_keys, %struct._object** %skipkeys, %struct._object** %allow_nan)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %markers, align 8
  %5 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers1 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %5, i32 0, i32 1
  store %struct._object* %4, %struct._object** %markers1, align 8
  %6 = load %struct._object*, %struct._object** %defaultfn, align 8
  %7 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn2 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %7, i32 0, i32 2
  store %struct._object* %6, %struct._object** %defaultfn2, align 8
  %8 = load %struct._object*, %struct._object** %encoder, align 8
  %9 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder3 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %9, i32 0, i32 3
  store %struct._object* %8, %struct._object** %encoder3, align 8
  %10 = load %struct._object*, %struct._object** %indent, align 8
  %11 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent4 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %11, i32 0, i32 4
  store %struct._object* %10, %struct._object** %indent4, align 8
  %12 = load %struct._object*, %struct._object** %key_separator, align 8
  %13 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator5 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %13, i32 0, i32 5
  store %struct._object* %12, %struct._object** %key_separator5, align 8
  %14 = load %struct._object*, %struct._object** %item_separator, align 8
  %15 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator6 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %15, i32 0, i32 6
  store %struct._object* %14, %struct._object** %item_separator6, align 8
  %16 = load %struct._object*, %struct._object** %sort_keys, align 8
  %17 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys7 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %17, i32 0, i32 7
  store %struct._object* %16, %struct._object** %sort_keys7, align 8
  %18 = load %struct._object*, %struct._object** %skipkeys, align 8
  %19 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys8 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %19, i32 0, i32 8
  store %struct._object* %18, %struct._object** %skipkeys8, align 8
  %20 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder9 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %encoder9, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %22, @PyCFunction_Type
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %23 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder10 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %23, i32 0, i32 3
  %24 = load %struct._object*, %struct._object** %encoder10, align 8
  %call11 = call %struct._object* (%struct._object*, %struct._object*)* @PyCFunction_GetFunction(%struct._object* %24)
  %cmp12 = icmp eq %struct._object* (%struct._object*, %struct._object*)* %call11, @py_encode_basestring_ascii
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %25 = phi i1 [ false, %if.end ], [ %cmp12, %land.rhs ]
  %land.ext = zext i1 %25 to i32
  %26 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %fast_encode = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %26, i32 0, i32 9
  store i32 %land.ext, i32* %fast_encode, align 4
  %27 = load %struct._object*, %struct._object** %allow_nan, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %27)
  %28 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %allow_nan14 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %28, i32 0, i32 10
  store i32 %call13, i32* %allow_nan14, align 4
  %29 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers15 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %29, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %markers15, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %32 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn16 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %32, i32 0, i32 2
  %33 = load %struct._object*, %struct._object** %defaultfn16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %34, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %35 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder19 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %35, i32 0, i32 3
  %36 = load %struct._object*, %struct._object** %encoder19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt20, align 8
  %inc21 = add i64 %37, 1
  store i64 %inc21, i64* %ob_refcnt20, align 8
  %38 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent22 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %38, i32 0, i32 4
  %39 = load %struct._object*, %struct._object** %indent22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt23, align 8
  %inc24 = add i64 %40, 1
  store i64 %inc24, i64* %ob_refcnt23, align 8
  %41 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator25 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %41, i32 0, i32 5
  %42 = load %struct._object*, %struct._object** %key_separator25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt26, align 8
  %inc27 = add i64 %43, 1
  store i64 %inc27, i64* %ob_refcnt26, align 8
  %44 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator28 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %44, i32 0, i32 6
  %45 = load %struct._object*, %struct._object** %item_separator28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %46, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  %47 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys31 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %47, i32 0, i32 7
  %48 = load %struct._object*, %struct._object** %sort_keys31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %49, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  %50 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys34 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %50, i32 0, i32 8
  %51 = load %struct._object*, %struct._object** %skipkeys34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt35, align 8
  %inc36 = add i64 %52, 1
  store i64 %inc36, i64* %ob_refcnt35, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %s = alloca %struct._PyEncoderObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct._PyEncoderObject*
  store %struct._PyEncoderObject* %3, %struct._PyEncoderObject** %s, align 8
  %4 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %cmp = icmp ne %struct._PyEncoderObject* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %markers, align 8
  %6 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %defaultfn = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %6, i32 0, i32 2
  store %struct._object* null, %struct._object** %defaultfn, align 8
  %7 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %encoder = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %7, i32 0, i32 3
  store %struct._object* null, %struct._object** %encoder, align 8
  %8 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %indent = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %8, i32 0, i32 4
  store %struct._object* null, %struct._object** %indent, align 8
  %9 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %key_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %9, i32 0, i32 5
  store %struct._object* null, %struct._object** %key_separator, align 8
  %10 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %item_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %10, i32 0, i32 6
  store %struct._object* null, %struct._object** %item_separator, align 8
  %11 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %sort_keys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %11, i32 0, i32 7
  store %struct._object* null, %struct._object** %sort_keys, align 8
  %12 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %skipkeys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %12, i32 0, i32 8
  store %struct._object* null, %struct._object** %skipkeys, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s, align 8
  %14 = bitcast %struct._PyEncoderObject* %13 to %struct._object*
  ret %struct._object* %14
}

declare i32 @_PyAccu_Init(%struct._PyAccu*) #1

; Function Attrs: nounwind uwtable
define internal i32 @encoder_listencode_obj(%struct._PyEncoderObject* %s, %struct._PyAccu* %acc, %struct._object* %obj, i64 %indent_level) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %acc.addr = alloca %struct._PyAccu*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %indent_level.addr = alloca i64, align 8
  %newobj = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %cstr = alloca %struct._object*, align 8
  %encoded = alloca %struct._object*, align 8
  %encoded20 = alloca %struct._object*, align 8
  %encoded33 = alloca %struct._object*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %atomic_val60 = alloca %struct._Py_atomic_address*, align 8
  %result62 = alloca i8*, align 8
  %volatile_data64 = alloca i8**, align 8
  %order67 = alloca i32, align 4
  %tmp74 = alloca i8*, align 8
  %atomic_val80 = alloca %struct._Py_atomic_address*, align 8
  %result82 = alloca i8*, align 8
  %volatile_data84 = alloca i8**, align 8
  %order87 = alloca i32, align 4
  %tmp94 = alloca i8*, align 8
  %atomic_val103 = alloca %struct._Py_atomic_address*, align 8
  %result105 = alloca i8*, align 8
  %volatile_data107 = alloca i8**, align 8
  %order110 = alloca i32, align 4
  %tmp117 = alloca i8*, align 8
  %atomic_val129 = alloca %struct._Py_atomic_address*, align 8
  %result131 = alloca i8*, align 8
  %volatile_data133 = alloca i8**, align 8
  %order136 = alloca i32, align 4
  %tmp143 = alloca i8*, align 8
  %atomic_val157 = alloca %struct._Py_atomic_address*, align 8
  %result159 = alloca i8*, align 8
  %volatile_data161 = alloca i8**, align 8
  %order164 = alloca i32, align 4
  %tmp171 = alloca i8*, align 8
  %ident = alloca %struct._object*, align 8
  %has_key = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp207 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp228 = alloca %struct._object*, align 8
  %atomic_val242 = alloca %struct._Py_atomic_address*, align 8
  %result244 = alloca i8*, align 8
  %volatile_data246 = alloca i8**, align 8
  %order249 = alloca i32, align 4
  %tmp256 = alloca i8*, align 8
  %atomic_val268 = alloca %struct._Py_atomic_address*, align 8
  %result270 = alloca i8*, align 8
  %volatile_data272 = alloca i8**, align 8
  %order275 = alloca i32, align 4
  %tmp282 = alloca i8*, align 8
  %atomic_val296 = alloca %struct._Py_atomic_address*, align 8
  %result298 = alloca i8*, align 8
  %volatile_data300 = alloca i8**, align 8
  %order303 = alloca i32, align 4
  %tmp310 = alloca i8*, align 8
  %_py_decref_tmp316 = alloca %struct._object*, align 8
  %_py_xdecref_tmp330 = alloca %struct._object*, align 8
  %_py_decref_tmp335 = alloca %struct._object*, align 8
  %_py_xdecref_tmp356 = alloca %struct._object*, align 8
  %_py_decref_tmp361 = alloca %struct._object*, align 8
  %_py_xdecref_tmp376 = alloca %struct._object*, align 8
  %_py_decref_tmp381 = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i64 %indent_level, i64* %indent_level.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp3 = icmp eq %struct._object* %2, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @_encoded_const(%struct._object* %3)
  store %struct._object* %call, %struct._object** %cstr, align 8
  %4 = load %struct._object*, %struct._object** %cstr, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %6 = load %struct._object*, %struct._object** %cstr, align 8
  %call6 = call i32 @_steal_accumulate(%struct._PyAccu* %5, %struct._object* %6)
  store i32 %call6, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.2
  %7 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 268435456
  %cmp7 = icmp ne i64 %and, 0
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else
  %10 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call9 = call %struct._object* @encoder_encode_string(%struct._PyEncoderObject* %10, %struct._object* %11)
  store %struct._object* %call9, %struct._object** %encoded, align 8
  %12 = load %struct._object*, %struct._object** %encoded, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  %13 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %14 = load %struct._object*, %struct._object** %encoded, align 8
  %call13 = call i32 @_steal_accumulate(%struct._PyAccu* %13, %struct._object* %14)
  store i32 %call13, i32* %retval
  br label %return

if.else.14:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_flags16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags16, align 8
  %and17 = and i64 %17, 16777216
  %cmp18 = icmp ne i64 %and17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.26

if.then.19:                                       ; preds = %if.else.14
  %18 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %19 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call21 = call %struct._object* @encoder_encode_long(%struct._PyEncoderObject* %18, %struct._object* %19)
  store %struct._object* %call21, %struct._object** %encoded20, align 8
  %20 = load %struct._object*, %struct._object** %encoded20, align 8
  %cmp22 = icmp eq %struct._object* %20, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.19
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.19
  %21 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %22 = load %struct._object*, %struct._object** %encoded20, align 8
  %call25 = call i32 @_steal_accumulate(%struct._PyAccu* %21, %struct._object* %22)
  store i32 %call25, i32* %retval
  br label %return

if.else.26:                                       ; preds = %if.else.14
  %23 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %cmp28 = icmp eq %struct._typeobject* %24, @PyFloat_Type
  br i1 %cmp28, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %if.else.26
  %25 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %call31 = call i32 @PyType_IsSubtype(%struct._typeobject* %26, %struct._typeobject* @PyFloat_Type)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.then.32, label %if.else.39

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.else.26
  %27 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %28 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call34 = call %struct._object* @encoder_encode_float(%struct._PyEncoderObject* %27, %struct._object* %28)
  store %struct._object* %call34, %struct._object** %encoded33, align 8
  %29 = load %struct._object*, %struct._object** %encoded33, align 8
  %cmp35 = icmp eq %struct._object* %29, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.32
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.32
  %30 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %31 = load %struct._object*, %struct._object** %encoded33, align 8
  %call38 = call i32 @_steal_accumulate(%struct._PyAccu* %30, %struct._object* %31)
  store i32 %call38, i32* %retval
  br label %return

if.else.39:                                       ; preds = %lor.lhs.false.29
  %32 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_flags41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 19
  %34 = load i64, i64* %tp_flags41, align 8
  %and42 = and i64 %34, 33554432
  %cmp43 = icmp ne i64 %and42, 0
  br i1 %cmp43, label %if.then.49, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else.39
  %35 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_flags46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags46, align 8
  %and47 = and i64 %37, 67108864
  %cmp48 = icmp ne i64 %and47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.96

if.then.49:                                       ; preds = %lor.lhs.false.44, %if.else.39
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %38 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %38, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %39 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %40 = bitcast %struct._Py_atomic_address* %39 to i8*
  %41 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %40, i32 %41)
  %42 = load i32, i32* %order, align 4
  switch i32 %42, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.49, %if.then.49, %if.then.49
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %43 = load i8**, i8*** %volatile_data, align 8
  %44 = load volatile i8*, i8** %43, align 8
  store i8* %44, i8** %result, align 8
  %45 = load i32, i32* %order, align 4
  switch i32 %45, label %sw.default.51 [
    i32 1, label %sw.bb.50
    i32 3, label %sw.bb.50
    i32 4, label %sw.bb.50
  ]

sw.bb.50:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.52

sw.default.51:                                    ; preds = %sw.epilog
  br label %sw.epilog.52

sw.epilog.52:                                     ; preds = %sw.default.51, %sw.bb.50
  %46 = load i8*, i8** %result, align 8
  store i8* %46, i8** %tmp
  %47 = load i8*, i8** %tmp
  %48 = bitcast i8* %47 to %struct._ts*
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %48, i32 0, i32 4
  %49 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %50 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp53 = icmp sgt i32 %inc, %50
  br i1 %cmp53, label %land.lhs.true, label %if.end.57

land.lhs.true:                                    ; preds = %sw.epilog.52
  %call54 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %land.lhs.true, %sw.epilog.52
  %51 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %52 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %53 = load %struct._object*, %struct._object** %obj.addr, align 8
  %54 = load i64, i64* %indent_level.addr, align 8
  %call58 = call i32 @encoder_listencode_list(%struct._PyEncoderObject* %51, %struct._PyAccu* %52, %struct._object* %53, i64 %54)
  store i32 %call58, i32* %rv, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.57
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val60, align 8
  %55 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val60, align 8
  %_value65 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %55, i32 0, i32 0
  store i8** %_value65, i8*** %volatile_data64, align 8
  store i32 0, i32* %order67, align 4
  %56 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val60, align 8
  %57 = bitcast %struct._Py_atomic_address* %56 to i8*
  %58 = load i32, i32* %order67, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %57, i32 %58)
  %59 = load i32, i32* %order67, align 4
  switch i32 %59, label %sw.default.69 [
    i32 2, label %sw.bb.68
    i32 3, label %sw.bb.68
    i32 4, label %sw.bb.68
  ]

sw.bb.68:                                         ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.70

sw.default.69:                                    ; preds = %do.body
  br label %sw.epilog.70

sw.epilog.70:                                     ; preds = %sw.default.69, %sw.bb.68
  %60 = load i8**, i8*** %volatile_data64, align 8
  %61 = load volatile i8*, i8** %60, align 8
  store i8* %61, i8** %result62, align 8
  %62 = load i32, i32* %order67, align 4
  switch i32 %62, label %sw.default.72 [
    i32 1, label %sw.bb.71
    i32 3, label %sw.bb.71
    i32 4, label %sw.bb.71
  ]

sw.bb.71:                                         ; preds = %sw.epilog.70, %sw.epilog.70, %sw.epilog.70
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.73

sw.default.72:                                    ; preds = %sw.epilog.70
  br label %sw.epilog.73

sw.epilog.73:                                     ; preds = %sw.default.72, %sw.bb.71
  %63 = load i8*, i8** %result62, align 8
  store i8* %63, i8** %tmp74
  %64 = load i8*, i8** %tmp74
  %65 = bitcast i8* %64 to %struct._ts*
  %recursion_depth75 = getelementptr inbounds %struct._ts, %struct._ts* %65, i32 0, i32 4
  %66 = load i32, i32* %recursion_depth75, align 4
  %dec = add i32 %66, -1
  store i32 %dec, i32* %recursion_depth75, align 4
  %67 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp76 = icmp sgt i32 %67, 100
  br i1 %cmp76, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog.73
  %68 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub = sub i32 %68, 50
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog.73
  %69 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr = ashr i32 %69, 2
  %mul = mul i32 3, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %mul, %cond.false ]
  %cmp77 = icmp slt i32 %dec, %cond
  br i1 %cmp77, label %if.then.78, label %if.end.95

if.then.78:                                       ; preds = %cond.end
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val80, align 8
  %70 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val80, align 8
  %_value85 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %70, i32 0, i32 0
  store i8** %_value85, i8*** %volatile_data84, align 8
  store i32 0, i32* %order87, align 4
  %71 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val80, align 8
  %72 = bitcast %struct._Py_atomic_address* %71 to i8*
  %73 = load i32, i32* %order87, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %72, i32 %73)
  %74 = load i32, i32* %order87, align 4
  switch i32 %74, label %sw.default.89 [
    i32 2, label %sw.bb.88
    i32 3, label %sw.bb.88
    i32 4, label %sw.bb.88
  ]

sw.bb.88:                                         ; preds = %if.then.78, %if.then.78, %if.then.78
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.90

sw.default.89:                                    ; preds = %if.then.78
  br label %sw.epilog.90

sw.epilog.90:                                     ; preds = %sw.default.89, %sw.bb.88
  %75 = load i8**, i8*** %volatile_data84, align 8
  %76 = load volatile i8*, i8** %75, align 8
  store i8* %76, i8** %result82, align 8
  %77 = load i32, i32* %order87, align 4
  switch i32 %77, label %sw.default.92 [
    i32 1, label %sw.bb.91
    i32 3, label %sw.bb.91
    i32 4, label %sw.bb.91
  ]

sw.bb.91:                                         ; preds = %sw.epilog.90, %sw.epilog.90, %sw.epilog.90
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.93

sw.default.92:                                    ; preds = %sw.epilog.90
  br label %sw.epilog.93

sw.epilog.93:                                     ; preds = %sw.default.92, %sw.bb.91
  %78 = load i8*, i8** %result82, align 8
  store i8* %78, i8** %tmp94
  %79 = load i8*, i8** %tmp94
  %80 = bitcast i8* %79 to %struct._ts*
  %overflowed = getelementptr inbounds %struct._ts, %struct._ts* %80, i32 0, i32 5
  store i8 0, i8* %overflowed, align 1
  br label %if.end.95

if.end.95:                                        ; preds = %sw.epilog.93, %cond.end
  br label %do.end

do.end:                                           ; preds = %if.end.95
  %81 = load i32, i32* %rv, align 4
  store i32 %81, i32* %retval
  br label %return

if.else.96:                                       ; preds = %lor.lhs.false.44
  %82 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_flags98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 19
  %84 = load i64, i64* %tp_flags98, align 8
  %and99 = and i64 %84, 536870912
  %cmp100 = icmp ne i64 %and99, 0
  br i1 %cmp100, label %if.then.101, label %if.else.175

if.then.101:                                      ; preds = %if.else.96
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val103, align 8
  %85 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val103, align 8
  %_value108 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %85, i32 0, i32 0
  store i8** %_value108, i8*** %volatile_data107, align 8
  store i32 0, i32* %order110, align 4
  %86 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val103, align 8
  %87 = bitcast %struct._Py_atomic_address* %86 to i8*
  %88 = load i32, i32* %order110, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %87, i32 %88)
  %89 = load i32, i32* %order110, align 4
  switch i32 %89, label %sw.default.112 [
    i32 2, label %sw.bb.111
    i32 3, label %sw.bb.111
    i32 4, label %sw.bb.111
  ]

sw.bb.111:                                        ; preds = %if.then.101, %if.then.101, %if.then.101
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.113

sw.default.112:                                   ; preds = %if.then.101
  br label %sw.epilog.113

sw.epilog.113:                                    ; preds = %sw.default.112, %sw.bb.111
  %90 = load i8**, i8*** %volatile_data107, align 8
  %91 = load volatile i8*, i8** %90, align 8
  store i8* %91, i8** %result105, align 8
  %92 = load i32, i32* %order110, align 4
  switch i32 %92, label %sw.default.115 [
    i32 1, label %sw.bb.114
    i32 3, label %sw.bb.114
    i32 4, label %sw.bb.114
  ]

sw.bb.114:                                        ; preds = %sw.epilog.113, %sw.epilog.113, %sw.epilog.113
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.116

sw.default.115:                                   ; preds = %sw.epilog.113
  br label %sw.epilog.116

sw.epilog.116:                                    ; preds = %sw.default.115, %sw.bb.114
  %93 = load i8*, i8** %result105, align 8
  store i8* %93, i8** %tmp117
  %94 = load i8*, i8** %tmp117
  %95 = bitcast i8* %94 to %struct._ts*
  %recursion_depth118 = getelementptr inbounds %struct._ts, %struct._ts* %95, i32 0, i32 4
  %96 = load i32, i32* %recursion_depth118, align 4
  %inc119 = add i32 %96, 1
  store i32 %inc119, i32* %recursion_depth118, align 4
  %97 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp120 = icmp sgt i32 %inc119, %97
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.125

land.lhs.true.121:                                ; preds = %sw.epilog.116
  %call122 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %land.lhs.true.121
  store i32 -1, i32* %retval
  br label %return

if.end.125:                                       ; preds = %land.lhs.true.121, %sw.epilog.116
  %98 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %99 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %100 = load %struct._object*, %struct._object** %obj.addr, align 8
  %101 = load i64, i64* %indent_level.addr, align 8
  %call126 = call i32 @encoder_listencode_dict(%struct._PyEncoderObject* %98, %struct._PyAccu* %99, %struct._object* %100, i64 %101)
  store i32 %call126, i32* %rv, align 4
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.125
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val129, align 8
  %102 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val129, align 8
  %_value134 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %102, i32 0, i32 0
  store i8** %_value134, i8*** %volatile_data133, align 8
  store i32 0, i32* %order136, align 4
  %103 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val129, align 8
  %104 = bitcast %struct._Py_atomic_address* %103 to i8*
  %105 = load i32, i32* %order136, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %104, i32 %105)
  %106 = load i32, i32* %order136, align 4
  switch i32 %106, label %sw.default.138 [
    i32 2, label %sw.bb.137
    i32 3, label %sw.bb.137
    i32 4, label %sw.bb.137
  ]

sw.bb.137:                                        ; preds = %do.body.127, %do.body.127, %do.body.127
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.139

sw.default.138:                                   ; preds = %do.body.127
  br label %sw.epilog.139

sw.epilog.139:                                    ; preds = %sw.default.138, %sw.bb.137
  %107 = load i8**, i8*** %volatile_data133, align 8
  %108 = load volatile i8*, i8** %107, align 8
  store i8* %108, i8** %result131, align 8
  %109 = load i32, i32* %order136, align 4
  switch i32 %109, label %sw.default.141 [
    i32 1, label %sw.bb.140
    i32 3, label %sw.bb.140
    i32 4, label %sw.bb.140
  ]

sw.bb.140:                                        ; preds = %sw.epilog.139, %sw.epilog.139, %sw.epilog.139
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.142

sw.default.141:                                   ; preds = %sw.epilog.139
  br label %sw.epilog.142

sw.epilog.142:                                    ; preds = %sw.default.141, %sw.bb.140
  %110 = load i8*, i8** %result131, align 8
  store i8* %110, i8** %tmp143
  %111 = load i8*, i8** %tmp143
  %112 = bitcast i8* %111 to %struct._ts*
  %recursion_depth144 = getelementptr inbounds %struct._ts, %struct._ts* %112, i32 0, i32 4
  %113 = load i32, i32* %recursion_depth144, align 4
  %dec145 = add i32 %113, -1
  store i32 %dec145, i32* %recursion_depth144, align 4
  %114 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp146 = icmp sgt i32 %114, 100
  br i1 %cmp146, label %cond.true.147, label %cond.false.149

cond.true.147:                                    ; preds = %sw.epilog.142
  %115 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub148 = sub i32 %115, 50
  br label %cond.end.152

cond.false.149:                                   ; preds = %sw.epilog.142
  %116 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr150 = ashr i32 %116, 2
  %mul151 = mul i32 3, %shr150
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.149, %cond.true.147
  %cond153 = phi i32 [ %sub148, %cond.true.147 ], [ %mul151, %cond.false.149 ]
  %cmp154 = icmp slt i32 %dec145, %cond153
  br i1 %cmp154, label %if.then.155, label %if.end.173

if.then.155:                                      ; preds = %cond.end.152
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val157, align 8
  %117 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val157, align 8
  %_value162 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %117, i32 0, i32 0
  store i8** %_value162, i8*** %volatile_data161, align 8
  store i32 0, i32* %order164, align 4
  %118 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val157, align 8
  %119 = bitcast %struct._Py_atomic_address* %118 to i8*
  %120 = load i32, i32* %order164, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %119, i32 %120)
  %121 = load i32, i32* %order164, align 4
  switch i32 %121, label %sw.default.166 [
    i32 2, label %sw.bb.165
    i32 3, label %sw.bb.165
    i32 4, label %sw.bb.165
  ]

sw.bb.165:                                        ; preds = %if.then.155, %if.then.155, %if.then.155
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.167

sw.default.166:                                   ; preds = %if.then.155
  br label %sw.epilog.167

sw.epilog.167:                                    ; preds = %sw.default.166, %sw.bb.165
  %122 = load i8**, i8*** %volatile_data161, align 8
  %123 = load volatile i8*, i8** %122, align 8
  store i8* %123, i8** %result159, align 8
  %124 = load i32, i32* %order164, align 4
  switch i32 %124, label %sw.default.169 [
    i32 1, label %sw.bb.168
    i32 3, label %sw.bb.168
    i32 4, label %sw.bb.168
  ]

sw.bb.168:                                        ; preds = %sw.epilog.167, %sw.epilog.167, %sw.epilog.167
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.170

sw.default.169:                                   ; preds = %sw.epilog.167
  br label %sw.epilog.170

sw.epilog.170:                                    ; preds = %sw.default.169, %sw.bb.168
  %125 = load i8*, i8** %result159, align 8
  store i8* %125, i8** %tmp171
  %126 = load i8*, i8** %tmp171
  %127 = bitcast i8* %126 to %struct._ts*
  %overflowed172 = getelementptr inbounds %struct._ts, %struct._ts* %127, i32 0, i32 5
  store i8 0, i8* %overflowed172, align 1
  br label %if.end.173

if.end.173:                                       ; preds = %sw.epilog.170, %cond.end.152
  br label %do.end.174

do.end.174:                                       ; preds = %if.end.173
  %128 = load i32, i32* %rv, align 4
  store i32 %128, i32* %retval
  br label %return

if.else.175:                                      ; preds = %if.else.96
  store %struct._object* null, %struct._object** %ident, align 8
  %129 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %129, i32 0, i32 1
  %130 = load %struct._object*, %struct._object** %markers, align 8
  %cmp177 = icmp ne %struct._object* %130, @_Py_NoneStruct
  br i1 %cmp177, label %if.then.178, label %if.end.218

if.then.178:                                      ; preds = %if.else.175
  %131 = load %struct._object*, %struct._object** %obj.addr, align 8
  %132 = bitcast %struct._object* %131 to i8*
  %call180 = call %struct._object* @PyLong_FromVoidPtr(i8* %132)
  store %struct._object* %call180, %struct._object** %ident, align 8
  %133 = load %struct._object*, %struct._object** %ident, align 8
  %cmp181 = icmp eq %struct._object* %133, null
  br i1 %cmp181, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.178
  store i32 -1, i32* %retval
  br label %return

if.end.183:                                       ; preds = %if.then.178
  %134 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers184 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %134, i32 0, i32 1
  %135 = load %struct._object*, %struct._object** %markers184, align 8
  %136 = load %struct._object*, %struct._object** %ident, align 8
  %call185 = call i32 @PyDict_Contains(%struct._object* %135, %struct._object* %136)
  store i32 %call185, i32* %has_key, align 4
  %137 = load i32, i32* %has_key, align 4
  %tobool186 = icmp ne i32 %137, 0
  br i1 %tobool186, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %if.end.183
  %138 = load i32, i32* %has_key, align 4
  %cmp188 = icmp ne i32 %138, -1
  br i1 %cmp188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.187
  %139 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %139, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %if.then.187
  br label %do.body.191

do.body.191:                                      ; preds = %if.end.190
  %140 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %140, %struct._object** %_py_decref_tmp, align 8
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0
  %142 = load i64, i64* %ob_refcnt, align 8
  %dec193 = add i64 %142, -1
  store i64 %dec193, i64* %ob_refcnt, align 8
  %cmp194 = icmp ne i64 %dec193, 0
  br i1 %cmp194, label %if.then.195, label %if.else.196

if.then.195:                                      ; preds = %do.body.191
  br label %if.end.198

if.else.196:                                      ; preds = %do.body.191
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type197 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 1
  %144 = load %struct._typeobject*, %struct._typeobject** %ob_type197, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %144, i32 0, i32 4
  %145 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %145(%struct._object* %146)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.196, %if.then.195
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  store i32 -1, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.end.183
  %147 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers201 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %147, i32 0, i32 1
  %148 = load %struct._object*, %struct._object** %markers201, align 8
  %149 = load %struct._object*, %struct._object** %ident, align 8
  %150 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call202 = call i32 @PyDict_SetItem(%struct._object* %148, %struct._object* %149, %struct._object* %150)
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.then.204, label %if.end.217

if.then.204:                                      ; preds = %if.end.200
  br label %do.body.205

do.body.205:                                      ; preds = %if.then.204
  %151 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %151, %struct._object** %_py_decref_tmp207, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 0
  %153 = load i64, i64* %ob_refcnt208, align 8
  %dec209 = add i64 %153, -1
  store i64 %dec209, i64* %ob_refcnt208, align 8
  %cmp210 = icmp ne i64 %dec209, 0
  br i1 %cmp210, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %do.body.205
  br label %if.end.215

if.else.212:                                      ; preds = %do.body.205
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  %ob_type213 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 1
  %155 = load %struct._typeobject*, %struct._typeobject** %ob_type213, align 8
  %tp_dealloc214 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %155, i32 0, i32 4
  %156 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc214, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp207, align 8
  call void %156(%struct._object* %157)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.211
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  store i32 -1, i32* %retval
  br label %return

if.end.217:                                       ; preds = %if.end.200
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %if.else.175
  %158 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %defaultfn = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %158, i32 0, i32 2
  %159 = load %struct._object*, %struct._object** %defaultfn, align 8
  %160 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call219 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %159, %struct._object* %160, i8* null)
  store %struct._object* %call219, %struct._object** %newobj, align 8
  %161 = load %struct._object*, %struct._object** %newobj, align 8
  %cmp220 = icmp eq %struct._object* %161, null
  br i1 %cmp220, label %if.then.221, label %if.end.240

if.then.221:                                      ; preds = %if.end.218
  br label %do.body.222

do.body.222:                                      ; preds = %if.then.221
  %162 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %162, %struct._object** %_py_xdecref_tmp, align 8
  %163 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp224 = icmp ne %struct._object* %163, null
  br i1 %cmp224, label %if.then.225, label %if.end.238

if.then.225:                                      ; preds = %do.body.222
  br label %do.body.226

do.body.226:                                      ; preds = %if.then.225
  %164 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %164, %struct._object** %_py_decref_tmp228, align 8
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_refcnt229 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 0
  %166 = load i64, i64* %ob_refcnt229, align 8
  %dec230 = add i64 %166, -1
  store i64 %dec230, i64* %ob_refcnt229, align 8
  %cmp231 = icmp ne i64 %dec230, 0
  br i1 %cmp231, label %if.then.232, label %if.else.233

if.then.232:                                      ; preds = %do.body.226
  br label %if.end.236

if.else.233:                                      ; preds = %do.body.226
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 1
  %168 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %168, i32 0, i32 4
  %169 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  call void %169(%struct._object* %170)
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.then.232
  br label %do.end.237

do.end.237:                                       ; preds = %if.end.236
  br label %if.end.238

if.end.238:                                       ; preds = %do.end.237, %do.body.222
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.238
  store i32 -1, i32* %retval
  br label %return

if.end.240:                                       ; preds = %if.end.218
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val242, align 8
  %171 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val242, align 8
  %_value247 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %171, i32 0, i32 0
  store i8** %_value247, i8*** %volatile_data246, align 8
  store i32 0, i32* %order249, align 4
  %172 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val242, align 8
  %173 = bitcast %struct._Py_atomic_address* %172 to i8*
  %174 = load i32, i32* %order249, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %173, i32 %174)
  %175 = load i32, i32* %order249, align 4
  switch i32 %175, label %sw.default.251 [
    i32 2, label %sw.bb.250
    i32 3, label %sw.bb.250
    i32 4, label %sw.bb.250
  ]

sw.bb.250:                                        ; preds = %if.end.240, %if.end.240, %if.end.240
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.252

sw.default.251:                                   ; preds = %if.end.240
  br label %sw.epilog.252

sw.epilog.252:                                    ; preds = %sw.default.251, %sw.bb.250
  %176 = load i8**, i8*** %volatile_data246, align 8
  %177 = load volatile i8*, i8** %176, align 8
  store i8* %177, i8** %result244, align 8
  %178 = load i32, i32* %order249, align 4
  switch i32 %178, label %sw.default.254 [
    i32 1, label %sw.bb.253
    i32 3, label %sw.bb.253
    i32 4, label %sw.bb.253
  ]

sw.bb.253:                                        ; preds = %sw.epilog.252, %sw.epilog.252, %sw.epilog.252
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.255

sw.default.254:                                   ; preds = %sw.epilog.252
  br label %sw.epilog.255

sw.epilog.255:                                    ; preds = %sw.default.254, %sw.bb.253
  %179 = load i8*, i8** %result244, align 8
  store i8* %179, i8** %tmp256
  %180 = load i8*, i8** %tmp256
  %181 = bitcast i8* %180 to %struct._ts*
  %recursion_depth257 = getelementptr inbounds %struct._ts, %struct._ts* %181, i32 0, i32 4
  %182 = load i32, i32* %recursion_depth257, align 4
  %inc258 = add i32 %182, 1
  store i32 %inc258, i32* %recursion_depth257, align 4
  %183 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp259 = icmp sgt i32 %inc258, %183
  br i1 %cmp259, label %land.lhs.true.260, label %if.end.264

land.lhs.true.260:                                ; preds = %sw.epilog.255
  %call261 = call i32 @_Py_CheckRecursiveCall(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  %tobool262 = icmp ne i32 %call261, 0
  br i1 %tobool262, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %land.lhs.true.260
  store i32 -1, i32* %retval
  br label %return

if.end.264:                                       ; preds = %land.lhs.true.260, %sw.epilog.255
  %184 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %185 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %186 = load %struct._object*, %struct._object** %newobj, align 8
  %187 = load i64, i64* %indent_level.addr, align 8
  %call265 = call i32 @encoder_listencode_obj(%struct._PyEncoderObject* %184, %struct._PyAccu* %185, %struct._object* %186, i64 %187)
  store i32 %call265, i32* %rv, align 4
  br label %do.body.266

do.body.266:                                      ; preds = %if.end.264
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val268, align 8
  %188 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val268, align 8
  %_value273 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %188, i32 0, i32 0
  store i8** %_value273, i8*** %volatile_data272, align 8
  store i32 0, i32* %order275, align 4
  %189 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val268, align 8
  %190 = bitcast %struct._Py_atomic_address* %189 to i8*
  %191 = load i32, i32* %order275, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %190, i32 %191)
  %192 = load i32, i32* %order275, align 4
  switch i32 %192, label %sw.default.277 [
    i32 2, label %sw.bb.276
    i32 3, label %sw.bb.276
    i32 4, label %sw.bb.276
  ]

sw.bb.276:                                        ; preds = %do.body.266, %do.body.266, %do.body.266
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.278

sw.default.277:                                   ; preds = %do.body.266
  br label %sw.epilog.278

sw.epilog.278:                                    ; preds = %sw.default.277, %sw.bb.276
  %193 = load i8**, i8*** %volatile_data272, align 8
  %194 = load volatile i8*, i8** %193, align 8
  store i8* %194, i8** %result270, align 8
  %195 = load i32, i32* %order275, align 4
  switch i32 %195, label %sw.default.280 [
    i32 1, label %sw.bb.279
    i32 3, label %sw.bb.279
    i32 4, label %sw.bb.279
  ]

sw.bb.279:                                        ; preds = %sw.epilog.278, %sw.epilog.278, %sw.epilog.278
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.281

sw.default.280:                                   ; preds = %sw.epilog.278
  br label %sw.epilog.281

sw.epilog.281:                                    ; preds = %sw.default.280, %sw.bb.279
  %196 = load i8*, i8** %result270, align 8
  store i8* %196, i8** %tmp282
  %197 = load i8*, i8** %tmp282
  %198 = bitcast i8* %197 to %struct._ts*
  %recursion_depth283 = getelementptr inbounds %struct._ts, %struct._ts* %198, i32 0, i32 4
  %199 = load i32, i32* %recursion_depth283, align 4
  %dec284 = add i32 %199, -1
  store i32 %dec284, i32* %recursion_depth283, align 4
  %200 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %cmp285 = icmp sgt i32 %200, 100
  br i1 %cmp285, label %cond.true.286, label %cond.false.288

cond.true.286:                                    ; preds = %sw.epilog.281
  %201 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %sub287 = sub i32 %201, 50
  br label %cond.end.291

cond.false.288:                                   ; preds = %sw.epilog.281
  %202 = load i32, i32* @_Py_CheckRecursionLimit, align 4
  %shr289 = ashr i32 %202, 2
  %mul290 = mul i32 3, %shr289
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.288, %cond.true.286
  %cond292 = phi i32 [ %sub287, %cond.true.286 ], [ %mul290, %cond.false.288 ]
  %cmp293 = icmp slt i32 %dec284, %cond292
  br i1 %cmp293, label %if.then.294, label %if.end.312

if.then.294:                                      ; preds = %cond.end.291
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val296, align 8
  %203 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val296, align 8
  %_value301 = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %203, i32 0, i32 0
  store i8** %_value301, i8*** %volatile_data300, align 8
  store i32 0, i32* %order303, align 4
  %204 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val296, align 8
  %205 = bitcast %struct._Py_atomic_address* %204 to i8*
  %206 = load i32, i32* %order303, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %205, i32 %206)
  %207 = load i32, i32* %order303, align 4
  switch i32 %207, label %sw.default.305 [
    i32 2, label %sw.bb.304
    i32 3, label %sw.bb.304
    i32 4, label %sw.bb.304
  ]

sw.bb.304:                                        ; preds = %if.then.294, %if.then.294, %if.then.294
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog.306

sw.default.305:                                   ; preds = %if.then.294
  br label %sw.epilog.306

sw.epilog.306:                                    ; preds = %sw.default.305, %sw.bb.304
  %208 = load i8**, i8*** %volatile_data300, align 8
  %209 = load volatile i8*, i8** %208, align 8
  store i8* %209, i8** %result298, align 8
  %210 = load i32, i32* %order303, align 4
  switch i32 %210, label %sw.default.308 [
    i32 1, label %sw.bb.307
    i32 3, label %sw.bb.307
    i32 4, label %sw.bb.307
  ]

sw.bb.307:                                        ; preds = %sw.epilog.306, %sw.epilog.306, %sw.epilog.306
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.309

sw.default.308:                                   ; preds = %sw.epilog.306
  br label %sw.epilog.309

sw.epilog.309:                                    ; preds = %sw.default.308, %sw.bb.307
  %211 = load i8*, i8** %result298, align 8
  store i8* %211, i8** %tmp310
  %212 = load i8*, i8** %tmp310
  %213 = bitcast i8* %212 to %struct._ts*
  %overflowed311 = getelementptr inbounds %struct._ts, %struct._ts* %213, i32 0, i32 5
  store i8 0, i8* %overflowed311, align 1
  br label %if.end.312

if.end.312:                                       ; preds = %sw.epilog.309, %cond.end.291
  br label %do.end.313

do.end.313:                                       ; preds = %if.end.312
  br label %do.body.314

do.body.314:                                      ; preds = %do.end.313
  %214 = load %struct._object*, %struct._object** %newobj, align 8
  store %struct._object* %214, %struct._object** %_py_decref_tmp316, align 8
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  %ob_refcnt317 = getelementptr inbounds %struct._object, %struct._object* %215, i32 0, i32 0
  %216 = load i64, i64* %ob_refcnt317, align 8
  %dec318 = add i64 %216, -1
  store i64 %dec318, i64* %ob_refcnt317, align 8
  %cmp319 = icmp ne i64 %dec318, 0
  br i1 %cmp319, label %if.then.320, label %if.else.321

if.then.320:                                      ; preds = %do.body.314
  br label %if.end.324

if.else.321:                                      ; preds = %do.body.314
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  %ob_type322 = getelementptr inbounds %struct._object, %struct._object* %217, i32 0, i32 1
  %218 = load %struct._typeobject*, %struct._typeobject** %ob_type322, align 8
  %tp_dealloc323 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %218, i32 0, i32 4
  %219 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc323, align 8
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp316, align 8
  call void %219(%struct._object* %220)
  br label %if.end.324

if.end.324:                                       ; preds = %if.else.321, %if.then.320
  br label %do.end.325

do.end.325:                                       ; preds = %if.end.324
  %221 = load i32, i32* %rv, align 4
  %tobool326 = icmp ne i32 %221, 0
  br i1 %tobool326, label %if.then.327, label %if.end.347

if.then.327:                                      ; preds = %do.end.325
  br label %do.body.328

do.body.328:                                      ; preds = %if.then.327
  %222 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %222, %struct._object** %_py_xdecref_tmp330, align 8
  %223 = load %struct._object*, %struct._object** %_py_xdecref_tmp330, align 8
  %cmp331 = icmp ne %struct._object* %223, null
  br i1 %cmp331, label %if.then.332, label %if.end.345

if.then.332:                                      ; preds = %do.body.328
  br label %do.body.333

do.body.333:                                      ; preds = %if.then.332
  %224 = load %struct._object*, %struct._object** %_py_xdecref_tmp330, align 8
  store %struct._object* %224, %struct._object** %_py_decref_tmp335, align 8
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_refcnt336 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 0
  %226 = load i64, i64* %ob_refcnt336, align 8
  %dec337 = add i64 %226, -1
  store i64 %dec337, i64* %ob_refcnt336, align 8
  %cmp338 = icmp ne i64 %dec337, 0
  br i1 %cmp338, label %if.then.339, label %if.else.340

if.then.339:                                      ; preds = %do.body.333
  br label %if.end.343

if.else.340:                                      ; preds = %do.body.333
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_type341 = getelementptr inbounds %struct._object, %struct._object* %227, i32 0, i32 1
  %228 = load %struct._typeobject*, %struct._typeobject** %ob_type341, align 8
  %tp_dealloc342 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %228, i32 0, i32 4
  %229 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc342, align 8
  %230 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  call void %229(%struct._object* %230)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  br label %if.end.345

if.end.345:                                       ; preds = %do.end.344, %do.body.328
  br label %do.end.346

do.end.346:                                       ; preds = %if.end.345
  store i32 -1, i32* %retval
  br label %return

if.end.347:                                       ; preds = %do.end.325
  %231 = load %struct._object*, %struct._object** %ident, align 8
  %cmp348 = icmp ne %struct._object* %231, null
  br i1 %cmp348, label %if.then.349, label %if.end.393

if.then.349:                                      ; preds = %if.end.347
  %232 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers350 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %232, i32 0, i32 1
  %233 = load %struct._object*, %struct._object** %markers350, align 8
  %234 = load %struct._object*, %struct._object** %ident, align 8
  %call351 = call i32 @PyDict_DelItem(%struct._object* %233, %struct._object* %234)
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.then.353, label %if.end.373

if.then.353:                                      ; preds = %if.then.349
  br label %do.body.354

do.body.354:                                      ; preds = %if.then.353
  %235 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %235, %struct._object** %_py_xdecref_tmp356, align 8
  %236 = load %struct._object*, %struct._object** %_py_xdecref_tmp356, align 8
  %cmp357 = icmp ne %struct._object* %236, null
  br i1 %cmp357, label %if.then.358, label %if.end.371

if.then.358:                                      ; preds = %do.body.354
  br label %do.body.359

do.body.359:                                      ; preds = %if.then.358
  %237 = load %struct._object*, %struct._object** %_py_xdecref_tmp356, align 8
  store %struct._object* %237, %struct._object** %_py_decref_tmp361, align 8
  %238 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_refcnt362 = getelementptr inbounds %struct._object, %struct._object* %238, i32 0, i32 0
  %239 = load i64, i64* %ob_refcnt362, align 8
  %dec363 = add i64 %239, -1
  store i64 %dec363, i64* %ob_refcnt362, align 8
  %cmp364 = icmp ne i64 %dec363, 0
  br i1 %cmp364, label %if.then.365, label %if.else.366

if.then.365:                                      ; preds = %do.body.359
  br label %if.end.369

if.else.366:                                      ; preds = %do.body.359
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  %ob_type367 = getelementptr inbounds %struct._object, %struct._object* %240, i32 0, i32 1
  %241 = load %struct._typeobject*, %struct._typeobject** %ob_type367, align 8
  %tp_dealloc368 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %241, i32 0, i32 4
  %242 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc368, align 8
  %243 = load %struct._object*, %struct._object** %_py_decref_tmp361, align 8
  call void %242(%struct._object* %243)
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.366, %if.then.365
  br label %do.end.370

do.end.370:                                       ; preds = %if.end.369
  br label %if.end.371

if.end.371:                                       ; preds = %do.end.370, %do.body.354
  br label %do.end.372

do.end.372:                                       ; preds = %if.end.371
  store i32 -1, i32* %retval
  br label %return

if.end.373:                                       ; preds = %if.then.349
  br label %do.body.374

do.body.374:                                      ; preds = %if.end.373
  %244 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %244, %struct._object** %_py_xdecref_tmp376, align 8
  %245 = load %struct._object*, %struct._object** %_py_xdecref_tmp376, align 8
  %cmp377 = icmp ne %struct._object* %245, null
  br i1 %cmp377, label %if.then.378, label %if.end.391

if.then.378:                                      ; preds = %do.body.374
  br label %do.body.379

do.body.379:                                      ; preds = %if.then.378
  %246 = load %struct._object*, %struct._object** %_py_xdecref_tmp376, align 8
  store %struct._object* %246, %struct._object** %_py_decref_tmp381, align 8
  %247 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  %ob_refcnt382 = getelementptr inbounds %struct._object, %struct._object* %247, i32 0, i32 0
  %248 = load i64, i64* %ob_refcnt382, align 8
  %dec383 = add i64 %248, -1
  store i64 %dec383, i64* %ob_refcnt382, align 8
  %cmp384 = icmp ne i64 %dec383, 0
  br i1 %cmp384, label %if.then.385, label %if.else.386

if.then.385:                                      ; preds = %do.body.379
  br label %if.end.389

if.else.386:                                      ; preds = %do.body.379
  %249 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  %ob_type387 = getelementptr inbounds %struct._object, %struct._object* %249, i32 0, i32 1
  %250 = load %struct._typeobject*, %struct._typeobject** %ob_type387, align 8
  %tp_dealloc388 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %250, i32 0, i32 4
  %251 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc388, align 8
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp381, align 8
  call void %251(%struct._object* %252)
  br label %if.end.389

if.end.389:                                       ; preds = %if.else.386, %if.then.385
  br label %do.end.390

do.end.390:                                       ; preds = %if.end.389
  br label %if.end.391

if.end.391:                                       ; preds = %do.end.390, %do.body.374
  br label %do.end.392

do.end.392:                                       ; preds = %if.end.391
  br label %if.end.393

if.end.393:                                       ; preds = %do.end.392, %if.end.347
  %253 = load i32, i32* %rv, align 4
  store i32 %253, i32* %retval
  br label %return

return:                                           ; preds = %if.end.393, %do.end.372, %do.end.346, %if.then.263, %do.end.239, %do.end.216, %do.end.199, %if.then.182, %do.end.174, %if.then.124, %do.end, %if.then.56, %if.end.37, %if.then.36, %if.end.24, %if.then.23, %if.end.12, %if.then.11, %if.end, %if.then.5
  %254 = load i32, i32* %retval
  ret i32 %254
}

declare void @_PyAccu_Destroy(%struct._PyAccu*) #1

declare %struct._object* @_PyAccu_FinishAsList(%struct._PyAccu*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_encoded_const(%struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp = icmp eq %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @_encoded_const.s_null, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @_encoded_const.s_null, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %2 = load %struct._object*, %struct._object** @_encoded_const.s_null, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** @_encoded_const.s_null, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp3 = icmp eq %struct._object* %5, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp3, label %if.then.4, label %if.else.11

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @_encoded_const.s_true, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.4
  %call7 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** @_encoded_const.s_true, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.4
  %7 = load %struct._object*, %struct._object** @_encoded_const.s_true, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt9, align 8
  %inc10 = add i64 %8, 1
  store i64 %inc10, i64* %ob_refcnt9, align 8
  %9 = load %struct._object*, %struct._object** @_encoded_const.s_true, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.else.11:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %obj.addr, align 8
  %cmp12 = icmp eq %struct._object* %10, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp12, label %if.then.13, label %if.else.20

if.then.13:                                       ; preds = %if.else.11
  %11 = load %struct._object*, %struct._object** @_encoded_const.s_false, align 8
  %cmp14 = icmp eq %struct._object* %11, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.13
  %call16 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** @_encoded_const.s_false, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.13
  %12 = load %struct._object*, %struct._object** @_encoded_const.s_false, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt18, align 8
  %inc19 = add i64 %13, 1
  store i64 %inc19, i64* %ob_refcnt18, align 8
  %14 = load %struct._object*, %struct._object** @_encoded_const.s_false, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.else.20:                                       ; preds = %if.else.11
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.20, %if.end.17, %if.end.8, %if.end
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal i32 @_steal_accumulate(%struct._PyAccu* %acc, %struct._object* %stolen) #0 {
entry:
  %acc.addr = alloca %struct._PyAccu*, align 8
  %stolen.addr = alloca %struct._object*, align 8
  %rval = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  store %struct._object* %stolen, %struct._object** %stolen.addr, align 8
  %0 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %1 = load %struct._object*, %struct._object** %stolen.addr, align 8
  %call = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %0, %struct._object* %1)
  store i32 %call, i32* %rval, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %stolen.addr, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %9 = load i32, i32* %rval, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_encode_string(%struct._PyEncoderObject* %s, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %fast_encode = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %0, i32 0, i32 9
  %1 = load i32, i32* %fast_encode, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @py_encode_basestring_ascii(%struct._object* null, %struct._object* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %encoder = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %encoder, align 8
  %5 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %4, %struct._object* %5, i8* null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_encode_long(%struct._PyEncoderObject* %s, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %encoded = alloca %struct._object*, align 8
  %longobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call %struct._object* @PyObject_Str(%struct._object* %2)
  store %struct._object* %call, %struct._object** %encoded, align 8
  br label %if.end.10

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call1 = call %struct._object* @PyNumber_Long(%struct._object* %3)
  store %struct._object* %call1, %struct._object** %longobj, align 8
  %4 = load %struct._object*, %struct._object** %longobj, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.48, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %longobj, align 8
  %call4 = call %struct._object* @PyObject_Str(%struct._object* %6)
  store %struct._object* %call4, %struct._object** %encoded, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %longobj, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.9

if.else.7:                                        ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then
  %14 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.3
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_encode_float(%struct._PyEncoderObject* %s, %struct._object* %obj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %encoded = alloca %struct._object*, align 8
  %floatobj = alloca %struct._object*, align 8
  %i = alloca double, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyFloatObject*
  %ob_fval = getelementptr inbounds %struct.PyFloatObject, %struct.PyFloatObject* %1, i32 0, i32 1
  %2 = load double, double* %ob_fval, align 8
  store double %2, double* %i, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load double, double* %i, align 8
  %conv = fptrunc double %3 to float
  %call = call i32 @__finitef(float %conv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.19, label %if.then

cond.false:                                       ; preds = %entry
  br i1 true, label %cond.true.1, label %cond.false.4

cond.true.1:                                      ; preds = %cond.false
  %4 = load double, double* %i, align 8
  %call2 = call i32 @__finite(double %4) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.19, label %if.then

cond.false.4:                                     ; preds = %cond.false
  %5 = load double, double* %i, align 8
  %conv5 = fpext double %5 to x86_fp80
  %call6 = call i32 @__finitel(x86_fp80 %conv5) #5
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.19, label %if.then

if.then:                                          ; preds = %cond.false.4, %cond.true.1, %cond.true
  %6 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %allow_nan = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %6, i32 0, i32 10
  %7 = load i32, i32* %allow_nan, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.49, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load double, double* %i, align 8
  %cmp = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %call12 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0))
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %10 = load double, double* %i, align 8
  %cmp13 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp13, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else
  %call16 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0))
  store %struct._object* %call16, %struct._object** %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  %call18 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call18, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %cond.false.4, %cond.true.1, %cond.true
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp20 = icmp eq %struct._typeobject* %12, @PyFloat_Type
  br i1 %cmp20, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.end.19
  %13 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call23 = call %struct._object* @PyObject_Repr(%struct._object* %13)
  store %struct._object* %call23, %struct._object** %encoded, align 8
  br label %if.end.37

if.else.24:                                       ; preds = %if.end.19
  %14 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call25 = call %struct._object* @PyNumber_Float(%struct._object* %14)
  store %struct._object* %call25, %struct._object** %floatobj, align 8
  %15 = load %struct._object*, %struct._object** %floatobj, align 8
  %cmp26 = icmp eq %struct._object* %15, null
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else.24
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.50, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.else.24
  %17 = load %struct._object*, %struct._object** %floatobj, align 8
  %call30 = call %struct._object* @PyObject_Repr(%struct._object* %17)
  store %struct._object* %call30, %struct._object** %encoded, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.29
  %18 = load %struct._object*, %struct._object** %floatobj, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body
  br label %if.end.36

if.else.34:                                       ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %if.then.22
  %25 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.28, %if.else.17, %if.then.15, %if.then.11, %if.then.9
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal i32 @encoder_listencode_list(%struct._PyEncoderObject* %s, %struct._PyAccu* %acc, %struct._object* %seq, i64 %indent_level) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %acc.addr = alloca %struct._PyAccu*, align 8
  %seq.addr = alloca %struct._object*, align 8
  %indent_level.addr = alloca i64, align 8
  %ident = alloca %struct._object*, align 8
  %s_fast = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %has_key = alloca i32, align 4
  %obj = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  store %struct._object* %seq, %struct._object** %seq.addr, align 8
  store i64 %indent_level, i64* %indent_level.addr, align 8
  store %struct._object* null, %struct._object** %ident, align 8
  store %struct._object* null, %struct._object** %s_fast, align 8
  %0 = load %struct._object*, %struct._object** @encoder_listencode_list.open_array, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @encoder_listencode_list.close_array, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** @encoder_listencode_list.empty_array, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @encoder_listencode_list.open_array, align 8
  %call4 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** @encoder_listencode_list.close_array, align 8
  %call5 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** @encoder_listencode_list.empty_array, align 8
  %3 = load %struct._object*, %struct._object** @encoder_listencode_list.open_array, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @encoder_listencode_list.close_array, align 8
  %cmp8 = icmp eq %struct._object* %4, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %5 = load %struct._object*, %struct._object** @encoder_listencode_list.empty_array, align 8
  %cmp10 = icmp eq %struct._object* %5, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %lor.lhs.false.2
  store %struct._object* null, %struct._object** %ident, align 8
  %6 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call13 = call %struct._object* @PySequence_Fast(%struct._object* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* %call13, %struct._object** %s_fast, align 8
  %7 = load %struct._object*, %struct._object** %s_fast, align 8
  %cmp14 = icmp eq %struct._object* %7, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %8 = load %struct._object*, %struct._object** %s_fast, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and = and i64 %10, 33554432
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.16
  %11 = load %struct._object*, %struct._object** %s_fast, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %12, i32 0, i32 1
  %13 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.16
  %14 = load %struct._object*, %struct._object** %s_fast, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1
  %16 = load i64, i64* %ob_size18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %16, %cond.false ]
  %cmp19 = icmp eq i64 %cond, 0
  br i1 %cmp19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %cond.end
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %17 = load %struct._object*, %struct._object** %s_fast, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %24 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %25 = load %struct._object*, %struct._object** @encoder_listencode_list.empty_array, align 8
  %call25 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %24, %struct._object* %25)
  store i32 %call25, i32* %retval
  br label %return

if.end.26:                                        ; preds = %cond.end
  %26 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %26, i32 0, i32 1
  %27 = load %struct._object*, %struct._object** %markers, align 8
  %cmp27 = icmp ne %struct._object* %27, @_Py_NoneStruct
  br i1 %cmp27, label %if.then.28, label %if.end.45

if.then.28:                                       ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %seq.addr, align 8
  %29 = bitcast %struct._object* %28 to i8*
  %call29 = call %struct._object* @PyLong_FromVoidPtr(i8* %29)
  store %struct._object* %call29, %struct._object** %ident, align 8
  %30 = load %struct._object*, %struct._object** %ident, align 8
  %cmp30 = icmp eq %struct._object* %30, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  br label %bail

if.end.32:                                        ; preds = %if.then.28
  %31 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers33 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %31, i32 0, i32 1
  %32 = load %struct._object*, %struct._object** %markers33, align 8
  %33 = load %struct._object*, %struct._object** %ident, align 8
  %call34 = call i32 @PyDict_Contains(%struct._object* %32, %struct._object* %33)
  store i32 %call34, i32* %has_key, align 4
  %34 = load i32, i32* %has_key, align 4
  %tobool = icmp ne i32 %34, 0
  br i1 %tobool, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %if.end.32
  %35 = load i32, i32* %has_key, align 4
  %cmp36 = icmp ne i32 %35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.35
  %36 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.then.35
  br label %bail

if.end.39:                                        ; preds = %if.end.32
  %37 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers40 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %37, i32 0, i32 1
  %38 = load %struct._object*, %struct._object** %markers40, align 8
  %39 = load %struct._object*, %struct._object** %ident, align 8
  %40 = load %struct._object*, %struct._object** %seq.addr, align 8
  %call41 = call i32 @PyDict_SetItem(%struct._object* %38, %struct._object* %39, %struct._object* %40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.39
  br label %bail

if.end.44:                                        ; preds = %if.end.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.26
  %41 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %42 = load %struct._object*, %struct._object** @encoder_listencode_list.open_array, align 8
  %call46 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %41, %struct._object* %42)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.45
  br label %bail

if.end.49:                                        ; preds = %if.end.45
  %43 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %indent = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %43, i32 0, i32 4
  %44 = load %struct._object*, %struct._object** %indent, align 8
  %cmp50 = icmp ne %struct._object* %44, @_Py_NoneStruct
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.49
  %45 = load i64, i64* %indent_level.addr, align 8
  %add = add i64 %45, 1
  store i64 %add, i64* %indent_level.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.49
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.52
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._object*, %struct._object** %s_fast, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_flags54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 19
  %49 = load i64, i64* %tp_flags54, align 8
  %and55 = and i64 %49, 33554432
  %cmp56 = icmp ne i64 %and55, 0
  br i1 %cmp56, label %cond.true.57, label %cond.false.59

cond.true.57:                                     ; preds = %for.cond
  %50 = load %struct._object*, %struct._object** %s_fast, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyVarObject*
  %ob_size58 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size58, align 8
  br label %cond.end.61

cond.false.59:                                    ; preds = %for.cond
  %53 = load %struct._object*, %struct._object** %s_fast, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyVarObject*
  %ob_size60 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %54, i32 0, i32 1
  %55 = load i64, i64* %ob_size60, align 8
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.59, %cond.true.57
  %cond62 = phi i64 [ %52, %cond.true.57 ], [ %55, %cond.false.59 ]
  %cmp63 = icmp slt i64 %46, %cond62
  br i1 %cmp63, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.61
  %56 = load %struct._object*, %struct._object** %s_fast, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_flags65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 19
  %58 = load i64, i64* %tp_flags65, align 8
  %and66 = and i64 %58, 33554432
  %cmp67 = icmp ne i64 %and66, 0
  br i1 %cmp67, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %for.body
  %59 = load i64, i64* %i, align 8
  %60 = load %struct._object*, %struct._object** %s_fast, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %61, i32 0, i32 1
  %62 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %62, i64 %59
  %63 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.72

cond.false.69:                                    ; preds = %for.body
  %64 = load i64, i64* %i, align 8
  %65 = load %struct._object*, %struct._object** %s_fast, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyTupleObject*
  %ob_item70 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %66, i32 0, i32 1
  %arrayidx71 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item70, i32 0, i64 %64
  %67 = load %struct._object*, %struct._object** %arrayidx71, align 8
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.true.68
  %cond73 = phi %struct._object* [ %63, %cond.true.68 ], [ %67, %cond.false.69 ]
  store %struct._object* %cond73, %struct._object** %obj, align 8
  %68 = load i64, i64* %i, align 8
  %tobool74 = icmp ne i64 %68, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %cond.end.72
  %69 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %70 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %item_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %70, i32 0, i32 6
  %71 = load %struct._object*, %struct._object** %item_separator, align 8
  %call76 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %69, %struct._object* %71)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  br label %bail

if.end.79:                                        ; preds = %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %cond.end.72
  %72 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %73 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %74 = load %struct._object*, %struct._object** %obj, align 8
  %75 = load i64, i64* %indent_level.addr, align 8
  %call81 = call i32 @encoder_listencode_obj(%struct._PyEncoderObject* %72, %struct._PyAccu* %73, %struct._object* %74, i64 %75)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  br label %bail

if.end.84:                                        ; preds = %if.end.80
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %76 = load i64, i64* %i, align 8
  %inc = add i64 %76, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.61
  %77 = load %struct._object*, %struct._object** %ident, align 8
  %cmp85 = icmp ne %struct._object* %77, null
  br i1 %cmp85, label %if.then.86, label %if.end.108

if.then.86:                                       ; preds = %for.end
  %78 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers87 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %78, i32 0, i32 1
  %79 = load %struct._object*, %struct._object** %markers87, align 8
  %80 = load %struct._object*, %struct._object** %ident, align 8
  %call88 = call i32 @PyDict_DelItem(%struct._object* %79, %struct._object* %80)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.then.86
  br label %bail

if.end.91:                                        ; preds = %if.then.86
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.91
  %81 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %81, %struct._object** %_py_tmp, align 8
  %82 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp93 = icmp ne %struct._object* %82, null
  br i1 %cmp93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %do.body.92
  store %struct._object* null, %struct._object** %ident, align 8
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %83 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp96, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %85, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.95
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %88(%struct._object* %89)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %do.body.92
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %if.end.108

if.end.108:                                       ; preds = %do.end.107, %for.end
  %90 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %91 = load %struct._object*, %struct._object** @encoder_listencode_list.close_array, align 8
  %call109 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %90, %struct._object* %91)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.end.108
  br label %bail

if.end.112:                                       ; preds = %if.end.108
  br label %do.body.113

do.body.113:                                      ; preds = %if.end.112
  %92 = load %struct._object*, %struct._object** %s_fast, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp114, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %94, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.113
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %97(%struct._object* %98)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  store i32 0, i32* %retval
  br label %return

bail:                                             ; preds = %if.then.111, %if.then.90, %if.then.83, %if.then.78, %if.then.48, %if.then.43, %if.end.38, %if.then.31
  br label %do.body.124

do.body.124:                                      ; preds = %bail
  %99 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %99, %struct._object** %_py_xdecref_tmp, align 8
  %100 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp125 = icmp ne %struct._object* %100, null
  br i1 %cmp125, label %if.then.126, label %if.end.138

if.then.126:                                      ; preds = %do.body.124
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp128, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %103, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.127
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.127
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %106(%struct._object* %107)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.137, %do.body.124
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %do.body.140

do.body.140:                                      ; preds = %do.end.139
  %108 = load %struct._object*, %struct._object** %s_fast, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp141, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %110, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %do.body.140
  br label %if.end.149

if.else.146:                                      ; preds = %do.body.140
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_dealloc148 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc148, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %113(%struct._object* %114)
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.146, %if.then.145
  br label %do.end.150

do.end.150:                                       ; preds = %if.end.149
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.150, %do.end.123, %do.end, %if.then.15, %if.then.11
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal i32 @encoder_listencode_dict(%struct._PyEncoderObject* %s, %struct._PyAccu* %acc, %struct._object* %dct, i64 %indent_level) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct._PyEncoderObject*, align 8
  %acc.addr = alloca %struct._PyAccu*, align 8
  %dct.addr = alloca %struct._object*, align 8
  %indent_level.addr = alloca i64, align 8
  %kstr = alloca %struct._object*, align 8
  %ident = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %items = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %skipkeys = alloca i32, align 4
  %idx = alloca i64, align 8
  %has_key = alloca i32, align 4
  %i = alloca i64, align 8
  %nitems = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %encoded = alloca %struct._object*, align 8
  %key95 = alloca %struct._object*, align 8
  %value96 = alloca %struct._object*, align 8
  %_py_decref_tmp152 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  %_py_decref_tmp210 = alloca %struct._object*, align 8
  %_py_decref_tmp232 = alloca %struct._object*, align 8
  %_py_tmp247 = alloca %struct._object*, align 8
  %_py_decref_tmp251 = alloca %struct._object*, align 8
  %_py_tmp271 = alloca %struct._object*, align 8
  %_py_decref_tmp275 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp296 = alloca %struct._object*, align 8
  %_py_xdecref_tmp309 = alloca %struct._object*, align 8
  %_py_decref_tmp313 = alloca %struct._object*, align 8
  %_py_xdecref_tmp326 = alloca %struct._object*, align 8
  %_py_decref_tmp330 = alloca %struct._object*, align 8
  %_py_xdecref_tmp343 = alloca %struct._object*, align 8
  %_py_decref_tmp347 = alloca %struct._object*, align 8
  store %struct._PyEncoderObject* %s, %struct._PyEncoderObject** %s.addr, align 8
  store %struct._PyAccu* %acc, %struct._PyAccu** %acc.addr, align 8
  store %struct._object* %dct, %struct._object** %dct.addr, align 8
  store i64 %indent_level, i64* %indent_level.addr, align 8
  store %struct._object* null, %struct._object** %kstr, align 8
  store %struct._object* null, %struct._object** %ident, align 8
  store %struct._object* null, %struct._object** %it, align 8
  store %struct._object* null, %struct._object** %item, align 8
  %0 = load %struct._object*, %struct._object** @encoder_listencode_dict.open_dict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** @encoder_listencode_dict.close_dict, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._object*, %struct._object** @encoder_listencode_dict.empty_dict, align 8
  %cmp3 = icmp eq %struct._object* %2, null
  br i1 %cmp3, label %if.then, label %if.end.12

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @encoder_listencode_dict.open_dict, align 8
  %call4 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** @encoder_listencode_dict.close_dict, align 8
  %call5 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** @encoder_listencode_dict.empty_dict, align 8
  %3 = load %struct._object*, %struct._object** @encoder_listencode_dict.open_dict, align 8
  %cmp6 = icmp eq %struct._object* %3, null
  br i1 %cmp6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @encoder_listencode_dict.close_dict, align 8
  %cmp8 = icmp eq %struct._object* %4, null
  br i1 %cmp8, label %if.then.11, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.7
  %5 = load %struct._object*, %struct._object** @encoder_listencode_dict.empty_dict, align 8
  %cmp10 = icmp eq %struct._object* %5, null
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false.9, %lor.lhs.false.7, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %lor.lhs.false.2
  %6 = load %struct._object*, %struct._object** %dct.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  %cmp13 = icmp eq i64 %8, 0
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %9 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %10 = load %struct._object*, %struct._object** @encoder_listencode_dict.empty_dict, align 8
  %call15 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %9, %struct._object* %10)
  store i32 %call15, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %11 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %markers, align 8
  %cmp17 = icmp ne %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp17, label %if.then.18, label %if.end.35

if.then.18:                                       ; preds = %if.end.16
  %13 = load %struct._object*, %struct._object** %dct.addr, align 8
  %14 = bitcast %struct._object* %13 to i8*
  %call19 = call %struct._object* @PyLong_FromVoidPtr(i8* %14)
  store %struct._object* %call19, %struct._object** %ident, align 8
  %15 = load %struct._object*, %struct._object** %ident, align 8
  %cmp20 = icmp eq %struct._object* %15, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  br label %bail

if.end.22:                                        ; preds = %if.then.18
  %16 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers23 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %markers23, align 8
  %18 = load %struct._object*, %struct._object** %ident, align 8
  %call24 = call i32 @PyDict_Contains(%struct._object* %17, %struct._object* %18)
  store i32 %call24, i32* %has_key, align 4
  %19 = load i32, i32* %has_key, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.end.22
  %20 = load i32, i32* %has_key, align 4
  %cmp26 = icmp ne i32 %20, -1
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  %21 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.then.25
  br label %bail

if.end.29:                                        ; preds = %if.end.22
  %22 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers30 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %markers30, align 8
  %24 = load %struct._object*, %struct._object** %ident, align 8
  %25 = load %struct._object*, %struct._object** %dct.addr, align 8
  %call31 = call i32 @PyDict_SetItem(%struct._object* %23, %struct._object* %24, %struct._object* %25)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.29
  br label %bail

if.end.34:                                        ; preds = %if.end.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.16
  %26 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %27 = load %struct._object*, %struct._object** @encoder_listencode_dict.open_dict, align 8
  %call36 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %26, %struct._object* %27)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  br label %bail

if.end.39:                                        ; preds = %if.end.35
  %28 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %indent = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %28, i32 0, i32 4
  %29 = load %struct._object*, %struct._object** %indent, align 8
  %cmp40 = icmp ne %struct._object* %29, @_Py_NoneStruct
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.39
  %30 = load i64, i64* %indent_level.addr, align 8
  %add = add i64 %30, 1
  store i64 %add, i64* %indent_level.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.end.39
  %31 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %sort_keys = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %31, i32 0, i32 7
  %32 = load %struct._object*, %struct._object** %sort_keys, align 8
  %call43 = call i32 @PyObject_IsTrue(%struct._object* %32)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.70

if.then.45:                                       ; preds = %if.end.42
  %33 = load %struct._object*, %struct._object** %dct.addr, align 8
  %call46 = call %struct._object* @PyMapping_Keys(%struct._object* %33)
  store %struct._object* %call46, %struct._object** %items, align 8
  %34 = load %struct._object*, %struct._object** %items, align 8
  %cmp47 = icmp eq %struct._object* %34, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  br label %bail

if.end.49:                                        ; preds = %if.then.45
  %35 = load %struct._object*, %struct._object** %items, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 19
  %37 = load i64, i64* %tp_flags, align 8
  %and = and i64 %37, 33554432
  %cmp50 = icmp ne i64 %and, 0
  br i1 %cmp50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %if.end.49
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i32 0, i32 0))
  br label %bail

if.end.52:                                        ; preds = %if.end.49
  %39 = load %struct._object*, %struct._object** %items, align 8
  %call53 = call i32 @PyList_Sort(%struct._object* %39)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  br label %bail

if.end.56:                                        ; preds = %if.end.52
  %40 = load %struct._object*, %struct._object** %items, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyVarObject*
  %ob_size57 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %41, i32 0, i32 1
  %42 = load i64, i64* %ob_size57, align 8
  store i64 %42, i64* %nitems, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.56
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %nitems, align 8
  %cmp58 = icmp slt i64 %43, %44
  br i1 %cmp58, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %45 = load i64, i64* %i, align 8
  %46 = load %struct._object*, %struct._object** %items, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %47, i32 0, i32 1
  %48 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %48, i64 %45
  %49 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %49, %struct._object** %key, align 8
  %50 = load %struct._object*, %struct._object** %dct.addr, align 8
  %51 = load %struct._object*, %struct._object** %key, align 8
  %call59 = call %struct._object* @PyDict_GetItem(%struct._object* %50, %struct._object* %51)
  store %struct._object* %call59, %struct._object** %value, align 8
  %52 = load %struct._object*, %struct._object** %key, align 8
  %53 = load %struct._object*, %struct._object** %value, align 8
  %call60 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %52, %struct._object* %53)
  store %struct._object* %call60, %struct._object** %item, align 8
  %54 = load %struct._object*, %struct._object** %item, align 8
  %cmp61 = icmp eq %struct._object* %54, null
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body
  br label %bail

if.end.63:                                        ; preds = %for.body
  %55 = load %struct._object*, %struct._object** %item, align 8
  %56 = load i64, i64* %i, align 8
  %57 = load %struct._object*, %struct._object** %items, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyListObject*
  %ob_item64 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %58, i32 0, i32 1
  %59 = load %struct._object**, %struct._object*** %ob_item64, align 8
  %arrayidx65 = getelementptr %struct._object*, %struct._object** %59, i64 %56
  store %struct._object* %55, %struct._object** %arrayidx65, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.63
  %60 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %62, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp66 = icmp ne i64 %dec, 0
  br i1 %cmp66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %do.body
  br label %if.end.69

if.else:                                          ; preds = %do.body
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %65(%struct._object* %66)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.67
  br label %do.end

do.end:                                           ; preds = %if.end.69
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %67 = load i64, i64* %i, align 8
  %inc = add i64 %67, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.else.70:                                       ; preds = %if.end.42
  %68 = load %struct._object*, %struct._object** %dct.addr, align 8
  %call71 = call %struct._object* @PyMapping_Items(%struct._object* %68)
  store %struct._object* %call71, %struct._object** %items, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %for.end
  %69 = load %struct._object*, %struct._object** %items, align 8
  %cmp73 = icmp eq %struct._object* %69, null
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.72
  br label %bail

if.end.75:                                        ; preds = %if.end.72
  %70 = load %struct._object*, %struct._object** %items, align 8
  %call76 = call %struct._object* @PyObject_GetIter(%struct._object* %70)
  store %struct._object* %call76, %struct._object** %it, align 8
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.75
  %71 = load %struct._object*, %struct._object** %items, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp78, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %73, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %76(%struct._object* %77)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  %78 = load %struct._object*, %struct._object** %it, align 8
  %cmp88 = icmp eq %struct._object* %78, null
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.end.87
  br label %bail

if.end.90:                                        ; preds = %do.end.87
  %79 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %skipkeys91 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %79, i32 0, i32 8
  %80 = load %struct._object*, %struct._object** %skipkeys91, align 8
  %call92 = call i32 @PyObject_IsTrue(%struct._object* %80)
  store i32 %call92, i32* %skipkeys, align 4
  store i64 0, i64* %idx, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.241, %do.end.161, %if.end.90
  %81 = load %struct._object*, %struct._object** %it, align 8
  %call93 = call %struct._object* @PyIter_Next(%struct._object* %81)
  store %struct._object* %call93, %struct._object** %item, align 8
  %cmp94 = icmp ne %struct._object* %call93, null
  br i1 %cmp94, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %82 = load %struct._object*, %struct._object** %item, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_flags98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 19
  %84 = load i64, i64* %tp_flags98, align 8
  %and99 = and i64 %84, 67108864
  %cmp100 = icmp ne i64 %and99, 0
  br i1 %cmp100, label %lor.lhs.false.101, label %if.then.104

lor.lhs.false.101:                                ; preds = %while.body
  %85 = load %struct._object*, %struct._object** %item, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyVarObject*
  %ob_size102 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %86, i32 0, i32 1
  %87 = load i64, i64* %ob_size102, align 8
  %cmp103 = icmp ne i64 %87, 2
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %lor.lhs.false.101, %while.body
  %88 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0))
  br label %bail

if.end.105:                                       ; preds = %lor.lhs.false.101
  %89 = load %struct._object*, %struct._object** %item, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyTupleObject*
  %ob_item106 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %90, i32 0, i32 1
  %arrayidx107 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item106, i32 0, i64 0
  %91 = load %struct._object*, %struct._object** %arrayidx107, align 8
  store %struct._object* %91, %struct._object** %key95, align 8
  %92 = load %struct._object*, %struct._object** %key95, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_flags109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 19
  %94 = load i64, i64* %tp_flags109, align 8
  %and110 = and i64 %94, 268435456
  %cmp111 = icmp ne i64 %and110, 0
  br i1 %cmp111, label %if.then.112, label %if.else.115

if.then.112:                                      ; preds = %if.end.105
  %95 = load %struct._object*, %struct._object** %key95, align 8
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt113, align 8
  %inc114 = add i64 %96, 1
  store i64 %inc114, i64* %ob_refcnt113, align 8
  %97 = load %struct._object*, %struct._object** %key95, align 8
  store %struct._object* %97, %struct._object** %kstr, align 8
  br label %if.end.166

if.else.115:                                      ; preds = %if.end.105
  %98 = load %struct._object*, %struct._object** %key95, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 1
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %cmp117 = icmp eq %struct._typeobject* %99, @PyFloat_Type
  br i1 %cmp117, label %if.then.122, label %lor.lhs.false.118

lor.lhs.false.118:                                ; preds = %if.else.115
  %100 = load %struct._object*, %struct._object** %key95, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %call120 = call i32 @PyType_IsSubtype(%struct._typeobject* %101, %struct._typeobject* @PyFloat_Type)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.else.127

if.then.122:                                      ; preds = %lor.lhs.false.118, %if.else.115
  %102 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %103 = load %struct._object*, %struct._object** %key95, align 8
  %call123 = call %struct._object* @encoder_encode_float(%struct._PyEncoderObject* %102, %struct._object* %103)
  store %struct._object* %call123, %struct._object** %kstr, align 8
  %104 = load %struct._object*, %struct._object** %kstr, align 8
  %cmp124 = icmp eq %struct._object* %104, null
  br i1 %cmp124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %if.then.122
  br label %bail

if.end.126:                                       ; preds = %if.then.122
  br label %if.end.165

if.else.127:                                      ; preds = %lor.lhs.false.118
  %105 = load %struct._object*, %struct._object** %key95, align 8
  %cmp128 = icmp eq %struct._object* %105, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0)
  br i1 %cmp128, label %if.then.133, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.else.127
  %106 = load %struct._object*, %struct._object** %key95, align 8
  %cmp130 = icmp eq %struct._object* %106, getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  br i1 %cmp130, label %if.then.133, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %lor.lhs.false.129
  %107 = load %struct._object*, %struct._object** %key95, align 8
  %cmp132 = icmp eq %struct._object* %107, @_Py_NoneStruct
  br i1 %cmp132, label %if.then.133, label %if.else.138

if.then.133:                                      ; preds = %lor.lhs.false.131, %lor.lhs.false.129, %if.else.127
  %108 = load %struct._object*, %struct._object** %key95, align 8
  %call134 = call %struct._object* @_encoded_const(%struct._object* %108)
  store %struct._object* %call134, %struct._object** %kstr, align 8
  %109 = load %struct._object*, %struct._object** %kstr, align 8
  %cmp135 = icmp eq %struct._object* %109, null
  br i1 %cmp135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.then.133
  br label %bail

if.end.137:                                       ; preds = %if.then.133
  br label %if.end.164

if.else.138:                                      ; preds = %lor.lhs.false.131
  %110 = load %struct._object*, %struct._object** %key95, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_flags140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 19
  %112 = load i64, i64* %tp_flags140, align 8
  %and141 = and i64 %112, 16777216
  %cmp142 = icmp ne i64 %and141, 0
  br i1 %cmp142, label %if.then.143, label %if.else.148

if.then.143:                                      ; preds = %if.else.138
  %113 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %114 = load %struct._object*, %struct._object** %key95, align 8
  %call144 = call %struct._object* @encoder_encode_long(%struct._PyEncoderObject* %113, %struct._object* %114)
  store %struct._object* %call144, %struct._object** %kstr, align 8
  %115 = load %struct._object*, %struct._object** %kstr, align 8
  %cmp145 = icmp eq %struct._object* %115, null
  br i1 %cmp145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.then.143
  br label %bail

if.end.147:                                       ; preds = %if.then.143
  br label %if.end.163

if.else.148:                                      ; preds = %if.else.138
  %116 = load i32, i32* %skipkeys, align 4
  %tobool149 = icmp ne i32 %116, 0
  br i1 %tobool149, label %if.then.150, label %if.else.162

if.then.150:                                      ; preds = %if.else.148
  br label %do.body.151

do.body.151:                                      ; preds = %if.then.150
  %117 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %117, %struct._object** %_py_decref_tmp152, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt153, align 8
  %dec154 = add i64 %119, -1
  store i64 %dec154, i64* %ob_refcnt153, align 8
  %cmp155 = icmp ne i64 %dec154, 0
  br i1 %cmp155, label %if.then.156, label %if.else.157

if.then.156:                                      ; preds = %do.body.151
  br label %if.end.160

if.else.157:                                      ; preds = %do.body.151
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  %ob_type158 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type158, align 8
  %tp_dealloc159 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc159, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp152, align 8
  call void %122(%struct._object* %123)
  br label %if.end.160

if.end.160:                                       ; preds = %if.else.157, %if.then.156
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  br label %while.cond

if.else.162:                                      ; preds = %if.else.148
  %124 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %bail

if.end.163:                                       ; preds = %if.end.147
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.137
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.126
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.then.112
  %125 = load i64, i64* %idx, align 8
  %tobool167 = icmp ne i64 %125, 0
  br i1 %tobool167, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %if.end.166
  %126 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %127 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %item_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %127, i32 0, i32 6
  %128 = load %struct._object*, %struct._object** %item_separator, align 8
  %call169 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %126, %struct._object* %128)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %if.then.168
  br label %bail

if.end.172:                                       ; preds = %if.then.168
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.end.166
  %129 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %130 = load %struct._object*, %struct._object** %kstr, align 8
  %call174 = call %struct._object* @encoder_encode_string(%struct._PyEncoderObject* %129, %struct._object* %130)
  store %struct._object* %call174, %struct._object** %encoded, align 8
  br label %do.body.175

do.body.175:                                      ; preds = %if.end.173
  %131 = load %struct._object*, %struct._object** %kstr, align 8
  store %struct._object* %131, %struct._object** %_py_tmp, align 8
  %132 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp176 = icmp ne %struct._object* %132, null
  br i1 %cmp176, label %if.then.177, label %if.end.189

if.then.177:                                      ; preds = %do.body.175
  store %struct._object* null, %struct._object** %kstr, align 8
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.177
  %133 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %133, %struct._object** %_py_decref_tmp179, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %134, i32 0, i32 0
  %135 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %135, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %do.body.178
  br label %if.end.187

if.else.184:                                      ; preds = %do.body.178
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 1
  %137 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %137, i32 0, i32 4
  %138 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %138(%struct._object* %139)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %if.end.189

if.end.189:                                       ; preds = %do.end.188, %do.body.175
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  %140 = load %struct._object*, %struct._object** %encoded, align 8
  %cmp191 = icmp eq %struct._object* %140, null
  br i1 %cmp191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %do.end.190
  br label %bail

if.end.193:                                       ; preds = %do.end.190
  %141 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %142 = load %struct._object*, %struct._object** %encoded, align 8
  %call194 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %141, %struct._object* %142)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.208

if.then.196:                                      ; preds = %if.end.193
  br label %do.body.197

do.body.197:                                      ; preds = %if.then.196
  %143 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %143, %struct._object** %_py_decref_tmp198, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0
  %145 = load i64, i64* %ob_refcnt199, align 8
  %dec200 = add i64 %145, -1
  store i64 %dec200, i64* %ob_refcnt199, align 8
  %cmp201 = icmp ne i64 %dec200, 0
  br i1 %cmp201, label %if.then.202, label %if.else.203

if.then.202:                                      ; preds = %do.body.197
  br label %if.end.206

if.else.203:                                      ; preds = %do.body.197
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_type204 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type204, align 8
  %tp_dealloc205 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  call void %148(%struct._object* %149)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.203, %if.then.202
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %bail

if.end.208:                                       ; preds = %if.end.193
  br label %do.body.209

do.body.209:                                      ; preds = %if.end.208
  %150 = load %struct._object*, %struct._object** %encoded, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp210, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_refcnt211 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt211, align 8
  %dec212 = add i64 %152, -1
  store i64 %dec212, i64* %ob_refcnt211, align 8
  %cmp213 = icmp ne i64 %dec212, 0
  br i1 %cmp213, label %if.then.214, label %if.else.215

if.then.214:                                      ; preds = %do.body.209
  br label %if.end.218

if.else.215:                                      ; preds = %do.body.209
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  %ob_type216 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type216, align 8
  %tp_dealloc217 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc217, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp210, align 8
  call void %155(%struct._object* %156)
  br label %if.end.218

if.end.218:                                       ; preds = %if.else.215, %if.then.214
  br label %do.end.219

do.end.219:                                       ; preds = %if.end.218
  %157 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %158 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %key_separator = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %158, i32 0, i32 5
  %159 = load %struct._object*, %struct._object** %key_separator, align 8
  %call220 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %157, %struct._object* %159)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %do.end.219
  br label %bail

if.end.223:                                       ; preds = %do.end.219
  %160 = load %struct._object*, %struct._object** %item, align 8
  %161 = bitcast %struct._object* %160 to %struct.PyTupleObject*
  %ob_item224 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %161, i32 0, i32 1
  %arrayidx225 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item224, i32 0, i64 1
  %162 = load %struct._object*, %struct._object** %arrayidx225, align 8
  store %struct._object* %162, %struct._object** %value96, align 8
  %163 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %164 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %165 = load %struct._object*, %struct._object** %value96, align 8
  %166 = load i64, i64* %indent_level.addr, align 8
  %call226 = call i32 @encoder_listencode_obj(%struct._PyEncoderObject* %163, %struct._PyAccu* %164, %struct._object* %165, i64 %166)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.end.223
  br label %bail

if.end.229:                                       ; preds = %if.end.223
  %167 = load i64, i64* %idx, align 8
  %add230 = add i64 %167, 1
  store i64 %add230, i64* %idx, align 8
  br label %do.body.231

do.body.231:                                      ; preds = %if.end.229
  %168 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp232, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_refcnt233 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt233, align 8
  %dec234 = add i64 %170, -1
  store i64 %dec234, i64* %ob_refcnt233, align 8
  %cmp235 = icmp ne i64 %dec234, 0
  br i1 %cmp235, label %if.then.236, label %if.else.237

if.then.236:                                      ; preds = %do.body.231
  br label %if.end.240

if.else.237:                                      ; preds = %do.body.231
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  %ob_type238 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type238, align 8
  %tp_dealloc239 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc239, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp232, align 8
  call void %173(%struct._object* %174)
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.237, %if.then.236
  br label %do.end.241

do.end.241:                                       ; preds = %if.end.240
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call242 = call %struct._object* @PyErr_Occurred()
  %tobool243 = icmp ne %struct._object* %call242, null
  br i1 %tobool243, label %if.then.244, label %if.end.245

if.then.244:                                      ; preds = %while.end
  br label %bail

if.end.245:                                       ; preds = %while.end
  br label %do.body.246

do.body.246:                                      ; preds = %if.end.245
  %175 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %175, %struct._object** %_py_tmp247, align 8
  %176 = load %struct._object*, %struct._object** %_py_tmp247, align 8
  %cmp248 = icmp ne %struct._object* %176, null
  br i1 %cmp248, label %if.then.249, label %if.end.261

if.then.249:                                      ; preds = %do.body.246
  store %struct._object* null, %struct._object** %it, align 8
  br label %do.body.250

do.body.250:                                      ; preds = %if.then.249
  %177 = load %struct._object*, %struct._object** %_py_tmp247, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp251, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_refcnt252 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt252, align 8
  %dec253 = add i64 %179, -1
  store i64 %dec253, i64* %ob_refcnt252, align 8
  %cmp254 = icmp ne i64 %dec253, 0
  br i1 %cmp254, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %do.body.250
  br label %if.end.259

if.else.256:                                      ; preds = %do.body.250
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  %ob_type257 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type257, align 8
  %tp_dealloc258 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc258, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp251, align 8
  call void %182(%struct._object* %183)
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.255
  br label %do.end.260

do.end.260:                                       ; preds = %if.end.259
  br label %if.end.261

if.end.261:                                       ; preds = %do.end.260, %do.body.246
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  %184 = load %struct._object*, %struct._object** %ident, align 8
  %cmp263 = icmp ne %struct._object* %184, null
  br i1 %cmp263, label %if.then.264, label %if.end.287

if.then.264:                                      ; preds = %do.end.262
  %185 = load %struct._PyEncoderObject*, %struct._PyEncoderObject** %s.addr, align 8
  %markers265 = getelementptr inbounds %struct._PyEncoderObject, %struct._PyEncoderObject* %185, i32 0, i32 1
  %186 = load %struct._object*, %struct._object** %markers265, align 8
  %187 = load %struct._object*, %struct._object** %ident, align 8
  %call266 = call i32 @PyDict_DelItem(%struct._object* %186, %struct._object* %187)
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.then.264
  br label %bail

if.end.269:                                       ; preds = %if.then.264
  br label %do.body.270

do.body.270:                                      ; preds = %if.end.269
  %188 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %188, %struct._object** %_py_tmp271, align 8
  %189 = load %struct._object*, %struct._object** %_py_tmp271, align 8
  %cmp272 = icmp ne %struct._object* %189, null
  br i1 %cmp272, label %if.then.273, label %if.end.285

if.then.273:                                      ; preds = %do.body.270
  store %struct._object* null, %struct._object** %ident, align 8
  br label %do.body.274

do.body.274:                                      ; preds = %if.then.273
  %190 = load %struct._object*, %struct._object** %_py_tmp271, align 8
  store %struct._object* %190, %struct._object** %_py_decref_tmp275, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  %ob_refcnt276 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 0
  %192 = load i64, i64* %ob_refcnt276, align 8
  %dec277 = add i64 %192, -1
  store i64 %dec277, i64* %ob_refcnt276, align 8
  %cmp278 = icmp ne i64 %dec277, 0
  br i1 %cmp278, label %if.then.279, label %if.else.280

if.then.279:                                      ; preds = %do.body.274
  br label %if.end.283

if.else.280:                                      ; preds = %do.body.274
  %193 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  %ob_type281 = getelementptr inbounds %struct._object, %struct._object* %193, i32 0, i32 1
  %194 = load %struct._typeobject*, %struct._typeobject** %ob_type281, align 8
  %tp_dealloc282 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %194, i32 0, i32 4
  %195 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc282, align 8
  %196 = load %struct._object*, %struct._object** %_py_decref_tmp275, align 8
  call void %195(%struct._object* %196)
  br label %if.end.283

if.end.283:                                       ; preds = %if.else.280, %if.then.279
  br label %do.end.284

do.end.284:                                       ; preds = %if.end.283
  br label %if.end.285

if.end.285:                                       ; preds = %do.end.284, %do.body.270
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  br label %if.end.287

if.end.287:                                       ; preds = %do.end.286, %do.end.262
  %197 = load %struct._PyAccu*, %struct._PyAccu** %acc.addr, align 8
  %198 = load %struct._object*, %struct._object** @encoder_listencode_dict.close_dict, align 8
  %call288 = call i32 @_PyAccu_Accumulate(%struct._PyAccu* %197, %struct._object* %198)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.287
  br label %bail

if.end.291:                                       ; preds = %if.end.287
  store i32 0, i32* %retval
  br label %return

bail:                                             ; preds = %if.then.290, %if.then.268, %if.then.244, %if.then.228, %if.then.222, %do.end.207, %if.then.192, %if.then.171, %if.else.162, %if.then.146, %if.then.136, %if.then.125, %if.then.104, %if.then.89, %if.then.74, %if.then.62, %if.then.55, %if.then.51, %if.then.48, %if.then.38, %if.then.33, %if.end.28, %if.then.21
  br label %do.body.292

do.body.292:                                      ; preds = %bail
  %199 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %199, %struct._object** %_py_xdecref_tmp, align 8
  %200 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp293 = icmp ne %struct._object* %200, null
  br i1 %cmp293, label %if.then.294, label %if.end.306

if.then.294:                                      ; preds = %do.body.292
  br label %do.body.295

do.body.295:                                      ; preds = %if.then.294
  %201 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %201, %struct._object** %_py_decref_tmp296, align 8
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_refcnt297 = getelementptr inbounds %struct._object, %struct._object* %202, i32 0, i32 0
  %203 = load i64, i64* %ob_refcnt297, align 8
  %dec298 = add i64 %203, -1
  store i64 %dec298, i64* %ob_refcnt297, align 8
  %cmp299 = icmp ne i64 %dec298, 0
  br i1 %cmp299, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %do.body.295
  br label %if.end.304

if.else.301:                                      ; preds = %do.body.295
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  %ob_type302 = getelementptr inbounds %struct._object, %struct._object* %204, i32 0, i32 1
  %205 = load %struct._typeobject*, %struct._typeobject** %ob_type302, align 8
  %tp_dealloc303 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %205, i32 0, i32 4
  %206 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc303, align 8
  %207 = load %struct._object*, %struct._object** %_py_decref_tmp296, align 8
  call void %206(%struct._object* %207)
  br label %if.end.304

if.end.304:                                       ; preds = %if.else.301, %if.then.300
  br label %do.end.305

do.end.305:                                       ; preds = %if.end.304
  br label %if.end.306

if.end.306:                                       ; preds = %do.end.305, %do.body.292
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.306
  br label %do.body.308

do.body.308:                                      ; preds = %do.end.307
  %208 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %208, %struct._object** %_py_xdecref_tmp309, align 8
  %209 = load %struct._object*, %struct._object** %_py_xdecref_tmp309, align 8
  %cmp310 = icmp ne %struct._object* %209, null
  br i1 %cmp310, label %if.then.311, label %if.end.323

if.then.311:                                      ; preds = %do.body.308
  br label %do.body.312

do.body.312:                                      ; preds = %if.then.311
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp309, align 8
  store %struct._object* %210, %struct._object** %_py_decref_tmp313, align 8
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp313, align 8
  %ob_refcnt314 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 0
  %212 = load i64, i64* %ob_refcnt314, align 8
  %dec315 = add i64 %212, -1
  store i64 %dec315, i64* %ob_refcnt314, align 8
  %cmp316 = icmp ne i64 %dec315, 0
  br i1 %cmp316, label %if.then.317, label %if.else.318

if.then.317:                                      ; preds = %do.body.312
  br label %if.end.321

if.else.318:                                      ; preds = %do.body.312
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp313, align 8
  %ob_type319 = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 1
  %214 = load %struct._typeobject*, %struct._typeobject** %ob_type319, align 8
  %tp_dealloc320 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %214, i32 0, i32 4
  %215 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc320, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp313, align 8
  call void %215(%struct._object* %216)
  br label %if.end.321

if.end.321:                                       ; preds = %if.else.318, %if.then.317
  br label %do.end.322

do.end.322:                                       ; preds = %if.end.321
  br label %if.end.323

if.end.323:                                       ; preds = %do.end.322, %do.body.308
  br label %do.end.324

do.end.324:                                       ; preds = %if.end.323
  br label %do.body.325

do.body.325:                                      ; preds = %do.end.324
  %217 = load %struct._object*, %struct._object** %kstr, align 8
  store %struct._object* %217, %struct._object** %_py_xdecref_tmp326, align 8
  %218 = load %struct._object*, %struct._object** %_py_xdecref_tmp326, align 8
  %cmp327 = icmp ne %struct._object* %218, null
  br i1 %cmp327, label %if.then.328, label %if.end.340

if.then.328:                                      ; preds = %do.body.325
  br label %do.body.329

do.body.329:                                      ; preds = %if.then.328
  %219 = load %struct._object*, %struct._object** %_py_xdecref_tmp326, align 8
  store %struct._object* %219, %struct._object** %_py_decref_tmp330, align 8
  %220 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  %ob_refcnt331 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 0
  %221 = load i64, i64* %ob_refcnt331, align 8
  %dec332 = add i64 %221, -1
  store i64 %dec332, i64* %ob_refcnt331, align 8
  %cmp333 = icmp ne i64 %dec332, 0
  br i1 %cmp333, label %if.then.334, label %if.else.335

if.then.334:                                      ; preds = %do.body.329
  br label %if.end.338

if.else.335:                                      ; preds = %do.body.329
  %222 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  %ob_type336 = getelementptr inbounds %struct._object, %struct._object* %222, i32 0, i32 1
  %223 = load %struct._typeobject*, %struct._typeobject** %ob_type336, align 8
  %tp_dealloc337 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %223, i32 0, i32 4
  %224 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc337, align 8
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp330, align 8
  call void %224(%struct._object* %225)
  br label %if.end.338

if.end.338:                                       ; preds = %if.else.335, %if.then.334
  br label %do.end.339

do.end.339:                                       ; preds = %if.end.338
  br label %if.end.340

if.end.340:                                       ; preds = %do.end.339, %do.body.325
  br label %do.end.341

do.end.341:                                       ; preds = %if.end.340
  br label %do.body.342

do.body.342:                                      ; preds = %do.end.341
  %226 = load %struct._object*, %struct._object** %ident, align 8
  store %struct._object* %226, %struct._object** %_py_xdecref_tmp343, align 8
  %227 = load %struct._object*, %struct._object** %_py_xdecref_tmp343, align 8
  %cmp344 = icmp ne %struct._object* %227, null
  br i1 %cmp344, label %if.then.345, label %if.end.357

if.then.345:                                      ; preds = %do.body.342
  br label %do.body.346

do.body.346:                                      ; preds = %if.then.345
  %228 = load %struct._object*, %struct._object** %_py_xdecref_tmp343, align 8
  store %struct._object* %228, %struct._object** %_py_decref_tmp347, align 8
  %229 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_refcnt348 = getelementptr inbounds %struct._object, %struct._object* %229, i32 0, i32 0
  %230 = load i64, i64* %ob_refcnt348, align 8
  %dec349 = add i64 %230, -1
  store i64 %dec349, i64* %ob_refcnt348, align 8
  %cmp350 = icmp ne i64 %dec349, 0
  br i1 %cmp350, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %do.body.346
  br label %if.end.355

if.else.352:                                      ; preds = %do.body.346
  %231 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_type353 = getelementptr inbounds %struct._object, %struct._object* %231, i32 0, i32 1
  %232 = load %struct._typeobject*, %struct._typeobject** %ob_type353, align 8
  %tp_dealloc354 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %232, i32 0, i32 4
  %233 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc354, align 8
  %234 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  call void %233(%struct._object* %234)
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.352, %if.then.351
  br label %do.end.356

do.end.356:                                       ; preds = %if.end.355
  br label %if.end.357

if.end.357:                                       ; preds = %do.end.356, %do.body.342
  br label %do.end.358

do.end.358:                                       ; preds = %if.end.357
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.358, %if.end.291, %if.then.14, %if.then.11
  %235 = load i32, i32* %retval
  ret i32 %235
}

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare i32 @_PyAccu_Accumulate(%struct._PyAccu*, %struct._object*) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

declare %struct._object* @PyNumber_Long(%struct._object*) #1

; Function Attrs: nounwind readnone
declare i32 @__finitef(float) #3

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #3

; Function Attrs: nounwind readnone
declare i32 @__finitel(x86_fp80) #3

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyObject_Repr(%struct._object*) #1

declare %struct._object* @PyNumber_Float(%struct._object*) #1

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #1

declare %struct._object* @PyMapping_Keys(%struct._object*) #1

declare i32 @PyList_Sort(%struct._object*) #1

declare %struct._object* @PyMapping_Items(%struct._object*) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* (%struct._object*, %struct._object*)* @PyCFunction_GetFunction(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 139832}
!3 = !{i32 139672}
