; ModuleID = '_codecsmodule.o.bc'
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
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@codecsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([41 x %struct.PyMethodDef], [41 x %struct.PyMethodDef]* @_codecs_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"_codecs\00", align 1
@_codecs_functions = internal global [41 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_register, i32 8, i8* getelementptr inbounds ([264 x i8], [264 x i8]* @register__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_lookup, i32 1, i8* getelementptr inbounds ([115 x i8], [115 x i8]* @lookup__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_encode, i32 1, i8* getelementptr inbounds ([434 x i8], [434 x i8]* @encode__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @codec_decode, i32 1, i8* getelementptr inbounds ([420 x i8], [420 x i8]* @decode__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @escape_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @escape_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_8_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_8_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_7_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_7_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_16_ex_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @utf_32_ex_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @latin_1_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @latin_1_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ascii_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @ascii_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @charmap_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @charmap_decode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @charmap_build, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @readbuffer_encode, i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @register_error, i32 1, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @register_error__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @lookup_error, i32 1, i8* getelementptr inbounds ([158 x i8], [158 x i8]* @lookup_error__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@register__doc__ = internal global [264 x i8] c"register(search_function)\0A\0ARegister a codec search function. Search functions are expected to take\0Aone argument, the encoding name in all lower case letters, and return\0Aa tuple of functions (encoder, decoder, stream_reader, stream_writer)\0A(or a CodecInfo object).\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@lookup__doc__ = internal global [115 x i8] c"lookup(encoding) -> CodecInfo\0A\0ALooks up a codec tuple in the Python codec registry and returns\0Aa CodecInfo object.\00", align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@encode__doc__ = internal global [434 x i8] c"encode(obj, [encoding[,errors]]) -> object\0A\0AEncodes obj using the codec registered for encoding. encoding defaults\0Ato the default encoding. errors may be given to set a different error\0Ahandling scheme. Default is 'strict' meaning that encoding errors raise\0Aa ValueError. Other possible values are 'ignore', 'replace' and\0A'xmlcharrefreplace' as well as any other name registered with\0Acodecs.register_error that can handle ValueErrors.\00", align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@decode__doc__ = internal global [420 x i8] c"decode(obj, [encoding[,errors]]) -> object\0A\0ADecodes obj using the codec registered for encoding. encoding defaults\0Ato the default encoding. errors may be given to set a different error\0Ahandling scheme. Default is 'strict' meaning that encoding errors raise\0Aa ValueError. Other possible values are 'ignore' and 'replace'\0Aas well as any other name registered with codecs.register_error that is\0Aable to handle ValueErrors.\00", align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"escape_encode\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"escape_decode\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"utf_8_encode\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"utf_8_decode\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"utf_7_encode\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"utf_7_decode\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"utf_16_encode\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"utf_16_le_encode\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"utf_16_be_encode\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"utf_16_decode\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"utf_16_le_decode\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"utf_16_be_decode\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"utf_16_ex_decode\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"utf_32_encode\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"utf_32_le_encode\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"utf_32_be_encode\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"utf_32_decode\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"utf_32_le_decode\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"utf_32_be_decode\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"utf_32_ex_decode\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"unicode_escape_encode\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"unicode_escape_decode\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"unicode_internal_encode\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"unicode_internal_decode\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"raw_unicode_escape_encode\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"raw_unicode_escape_decode\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"latin_1_encode\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"latin_1_decode\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"ascii_encode\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"ascii_decode\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"charmap_encode\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"charmap_decode\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"charmap_build\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"readbuffer_encode\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"register_error\00", align 1
@register_error__doc__ = internal global [301 x i8] c"register_error(errors, handler)\0A\0ARegister the specified error handler under the name\0Aerrors. handler must be a callable object, that\0Awill be called with an exception instance containing\0Ainformation about the location of the encoding/decoding\0Aerror and must return a (replacement, new position) tuple.\00", align 16
@.str.40 = private unnamed_addr constant [13 x i8] c"lookup_error\00", align 1
@lookup_error__doc__ = internal global [158 x i8] c"lookup_error(errors) -> handler\0A\0AReturn the error handler for the specified error handling name\0Aor raise a LookupError, if no handler exists under this name.\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"s:lookup\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"O|ss:encode\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"O|ss:decode\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"O!|z:escape_encode\00", align 1
@PyBytes_Type = external global %struct._typeobject, align 8
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.45 = private unnamed_addr constant [30 x i8] c"string is too large to encode\00", align 1
@Py_hexdigits = external global i8*, align 8
@.str.46 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"s#|z:escape_decode\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"O|z:utf_8_encode\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"y*|zi:utf_8_decode\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"O|z:utf_7_encode\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"y*|zi:utf_7_decode\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"O|zi:utf_16_encode\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"O|z:utf_16_le_encode\00", align 1
@.str.55 = private unnamed_addr constant [21 x i8] c"O|z:utf_16_be_encode\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"y*|zi:utf_16_decode\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"y*|zi:utf_16_le_decode\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"y*|zi:utf_16_be_decode\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"y*|zii:utf_16_ex_decode\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"Oni\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"O|zi:utf_32_encode\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"O|z:utf_32_le_encode\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"O|z:utf_32_be_encode\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"y*|zi:utf_32_decode\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"y*|zi:utf_32_le_decode\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"y*|zi:utf_32_be_decode\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"y*|zii:utf_32_ex_decode\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"O|z:unicode_escape_encode\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"s*|z:unicode_escape_decode\00", align 1
@PyExc_DeprecationWarning = external global %struct._object*, align 8
@.str.70 = private unnamed_addr constant [43 x i8] c"unicode_internal codec has been deprecated\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"O|z:unicode_internal_encode\00", align 1
@.str.72 = private unnamed_addr constant [28 x i8] c"O|z:unicode_internal_decode\00", align 1
@.str.73 = private unnamed_addr constant [30 x i8] c"O|z:raw_unicode_escape_encode\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"s*|z:raw_unicode_escape_decode\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"O|z:latin_1_encode\00", align 1
@.str.76 = private unnamed_addr constant [20 x i8] c"y*|z:latin_1_decode\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"O|z:ascii_encode\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"y*|z:ascii_decode\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"O|zO:charmap_encode\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"y*|zO:charmap_decode\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"U:charmap_build\00", align 1
@.str.82 = private unnamed_addr constant [23 x i8] c"s*|z:readbuffer_encode\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"sO:register_error\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"s:lookup_error\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__codecs() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @codecsmodule, i32 1013) #2, !dbg !882
  ret %struct._object* %call, !dbg !883
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_register(%struct._object* nocapture readnone %self, %struct._object* %search_function) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !380, metadata !884), !dbg !885
  tail call void @llvm.dbg.value(metadata %struct._object* %search_function, i64 0, metadata !381, metadata !884), !dbg !886
  %call = tail call i32 @PyCodec_Register(%struct._object* %search_function) #2, !dbg !887
  %tobool = icmp eq i32 %call, 0, !dbg !887
  br i1 %tobool, label %if.end, label %return, !dbg !889

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !890, !tbaa !891
  %inc = add i64 %0, 1, !dbg !890
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !890, !tbaa !891
  br label %return, !dbg !890

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !897
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_lookup(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %encoding = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !384, metadata !884), !dbg !898
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !385, metadata !884), !dbg !899
  %0 = bitcast i8** %encoding to i8*, !dbg !900
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !900
  tail call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !386, metadata !884), !dbg !901
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0), i8** nonnull %encoding) #2, !dbg !902
  %tobool = icmp eq i32 %call, 0, !dbg !902
  br i1 %tobool, label %cleanup, label %if.end, !dbg !904

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !386, metadata !884), !dbg !901
  %1 = load i8*, i8** %encoding, align 8, !dbg !905, !tbaa !906
  %call1 = call %struct._object* @_PyCodec_Lookup(i8* %1) #2, !dbg !907
  br label %cleanup, !dbg !908

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !909
  ret %struct._object* %retval.0, !dbg !909
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !389, metadata !884), !dbg !910
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !390, metadata !884), !dbg !911
  %0 = bitcast i8** %encoding to i8*, !dbg !912
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !912
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !391, metadata !884), !dbg !913
  store i8* null, i8** %encoding, align 8, !dbg !913, !tbaa !906
  %1 = bitcast i8** %errors to i8*, !dbg !914
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !914
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !392, metadata !884), !dbg !915
  store i8* null, i8** %errors, align 8, !dbg !915, !tbaa !906
  %2 = bitcast %struct._object** %v to i8*, !dbg !916
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !916
  tail call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !391, metadata !884), !dbg !913
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !392, metadata !884), !dbg !915
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !393, metadata !884), !dbg !917
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), %struct._object** nonnull %v, i8** nonnull %encoding, i8** nonnull %errors) #2, !dbg !918
  %tobool = icmp eq i32 %call, 0, !dbg !918
  br i1 %tobool, label %cleanup, label %if.end, !dbg !920

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !391, metadata !884), !dbg !913
  %3 = load i8*, i8** %encoding, align 8, !dbg !921, !tbaa !906
  %cmp = icmp eq i8* %3, null, !dbg !923
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !924

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding() #2, !dbg !925
  call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !391, metadata !884), !dbg !913
  store i8* %call2, i8** %encoding, align 8, !dbg !926, !tbaa !906
  br label %if.end.3, !dbg !927

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = phi i8* [ %call2, %if.then.1 ], [ %3, %if.end ], !dbg !928
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !393, metadata !884), !dbg !917
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !929, !tbaa !906
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !391, metadata !884), !dbg !913
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !392, metadata !884), !dbg !915
  %6 = load i8*, i8** %errors, align 8, !dbg !930, !tbaa !906
  %call4 = call %struct._object* @PyCodec_Encode(%struct._object* %5, i8* %4, i8* %6) #2, !dbg !931
  br label %cleanup, !dbg !932

cleanup:                                          ; preds = %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !933
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !933
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !933
  ret %struct._object* %retval.0, !dbg !933
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !396, metadata !884), !dbg !934
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !397, metadata !884), !dbg !935
  %0 = bitcast i8** %encoding to i8*, !dbg !936
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !936
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !398, metadata !884), !dbg !937
  store i8* null, i8** %encoding, align 8, !dbg !937, !tbaa !906
  %1 = bitcast i8** %errors to i8*, !dbg !938
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !938
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !399, metadata !884), !dbg !939
  store i8* null, i8** %errors, align 8, !dbg !939, !tbaa !906
  %2 = bitcast %struct._object** %v to i8*, !dbg !940
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !940
  tail call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !398, metadata !884), !dbg !937
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !399, metadata !884), !dbg !939
  tail call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !400, metadata !884), !dbg !941
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i64 0, i64 0), %struct._object** nonnull %v, i8** nonnull %encoding, i8** nonnull %errors) #2, !dbg !942
  %tobool = icmp eq i32 %call, 0, !dbg !942
  br i1 %tobool, label %cleanup, label %if.end, !dbg !944

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !398, metadata !884), !dbg !937
  %3 = load i8*, i8** %encoding, align 8, !dbg !945, !tbaa !906
  %cmp = icmp eq i8* %3, null, !dbg !947
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !948

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding() #2, !dbg !949
  call void @llvm.dbg.value(metadata i8* %call2, i64 0, metadata !398, metadata !884), !dbg !937
  store i8* %call2, i8** %encoding, align 8, !dbg !950, !tbaa !906
  br label %if.end.3, !dbg !951

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = phi i8* [ %call2, %if.then.1 ], [ %3, %if.end ], !dbg !952
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !400, metadata !884), !dbg !941
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !953, !tbaa !906
  call void @llvm.dbg.value(metadata i8** %encoding, i64 0, metadata !398, metadata !884), !dbg !937
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !399, metadata !884), !dbg !939
  %6 = load i8*, i8** %errors, align 8, !dbg !954, !tbaa !906
  %call4 = call %struct._object* @PyCodec_Decode(%struct._object* %5, i8* %4, i8* %6) #2, !dbg !955
  br label %cleanup, !dbg !956

cleanup:                                          ; preds = %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !957
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !957
  ret %struct._object* %retval.0, !dbg !957
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @escape_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !403, metadata !884), !dbg !958
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !404, metadata !884), !dbg !959
  %0 = bitcast %struct._object** %str to i8*, !dbg !960
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !960
  %1 = bitcast i8** %errors to i8*, !dbg !961
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !961
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !408, metadata !884), !dbg !962
  store i8* null, i8** %errors, align 8, !dbg !962, !tbaa !906
  %2 = bitcast %struct._object** %v to i8*, !dbg !963
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !963
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !405, metadata !884), !dbg !964
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !408, metadata !884), !dbg !962
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0), %struct._typeobject* nonnull @PyBytes_Type, %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !965
  %tobool = icmp eq i32 %call, 0, !dbg !965
  br i1 %tobool, label %cleanup.73, label %if.end, !dbg !967

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !405, metadata !884), !dbg !964
  %3 = bitcast %struct._object** %str to %struct.PyVarObject**, !dbg !968
  %4 = load %struct.PyVarObject*, %struct.PyVarObject** %3, align 8, !dbg !968, !tbaa !906
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i64 0, i32 1, !dbg !968
  %5 = load i64, i64* %ob_size, align 8, !dbg !968, !tbaa !969
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !406, metadata !884), !dbg !971
  %cmp = icmp sgt i64 %5, 2305843009213693951, !dbg !972
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !974

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !975, !tbaa !906
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i64 0, i64 0)) #2, !dbg !977
  br label %cleanup.73, !dbg !978

if.end.2:                                         ; preds = %if.end
  %mul = shl i64 %5, 2, !dbg !979
  call void @llvm.dbg.value(metadata i64 %mul, i64 0, metadata !407, metadata !884), !dbg !980
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %mul) #2, !dbg !981
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !409, metadata !884), !dbg !982
  store %struct._object* %call3, %struct._object** %v, align 8, !dbg !983, !tbaa !906
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !984
  br i1 %cmp4, label %cleanup.73, label %if.else, !dbg !985

if.else:                                          ; preds = %if.end.2
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, !dbg !986
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !986
  call void @llvm.dbg.value(metadata i8* %arraydecay, i64 0, metadata !414, metadata !884), !dbg !987
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !410, metadata !884), !dbg !988
  %cmp6.114 = icmp sgt i64 %5, 0, !dbg !989
  br i1 %cmp6.114, label %for.body.lr.ph, label %for.end, !dbg !992

for.body.lr.ph:                                   ; preds = %if.else
  %7 = bitcast %struct._object** %str to %struct.PyBytesObject**, !dbg !993
  br label %for.body, !dbg !992

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %p.0116 = phi i8* [ %arraydecay, %for.body.lr.ph ], [ %p.1, %for.inc ]
  %i.0115 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !405, metadata !884), !dbg !964
  %8 = load %struct.PyBytesObject*, %struct.PyBytesObject** %7, align 8, !dbg !993, !tbaa !906
  %arrayidx = getelementptr %struct.PyBytesObject, %struct.PyBytesObject* %8, i64 0, i32 2, i64 %i.0115, !dbg !993
  %9 = load i8, i8* %arrayidx, align 1, !dbg !993, !tbaa !995
  call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !413, metadata !884), !dbg !996
  %conv = sext i8 %9 to i32, !dbg !997
  switch i8 %9, label %if.else.37 [
    i8 39, label %if.then.14
    i8 92, label %if.then.14
    i8 9, label %if.then.20
    i8 10, label %if.then.27
    i8 13, label %if.then.34
  ], !dbg !999

if.then.14:                                       ; preds = %for.body, %for.body
  %incdec.ptr = getelementptr i8, i8* %p.0116, i64 1, !dbg !1000
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 92, i8* %p.0116, align 1, !dbg !1001, !tbaa !995
  %incdec.ptr15 = getelementptr i8, i8* %p.0116, i64 2, !dbg !1002
  call void @llvm.dbg.value(metadata i8* %incdec.ptr15, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 %9, i8* %incdec.ptr, align 1, !dbg !1003, !tbaa !995
  br label %for.inc, !dbg !1004

if.then.20:                                       ; preds = %for.body
  %incdec.ptr21 = getelementptr i8, i8* %p.0116, i64 1, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %incdec.ptr21, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 92, i8* %p.0116, align 1, !dbg !1007, !tbaa !995
  %incdec.ptr22 = getelementptr i8, i8* %p.0116, i64 2, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %incdec.ptr22, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 116, i8* %incdec.ptr21, align 1, !dbg !1009, !tbaa !995
  br label %for.inc, !dbg !1010

if.then.27:                                       ; preds = %for.body
  %incdec.ptr28 = getelementptr i8, i8* %p.0116, i64 1, !dbg !1011
  call void @llvm.dbg.value(metadata i8* %incdec.ptr28, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 92, i8* %p.0116, align 1, !dbg !1013, !tbaa !995
  %incdec.ptr29 = getelementptr i8, i8* %p.0116, i64 2, !dbg !1014
  call void @llvm.dbg.value(metadata i8* %incdec.ptr29, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 110, i8* %incdec.ptr28, align 1, !dbg !1015, !tbaa !995
  br label %for.inc, !dbg !1016

if.then.34:                                       ; preds = %for.body
  %incdec.ptr35 = getelementptr i8, i8* %p.0116, i64 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8* %incdec.ptr35, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 92, i8* %p.0116, align 1, !dbg !1019, !tbaa !995
  %incdec.ptr36 = getelementptr i8, i8* %p.0116, i64 2, !dbg !1020
  call void @llvm.dbg.value(metadata i8* %incdec.ptr36, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 114, i8* %incdec.ptr35, align 1, !dbg !1021, !tbaa !995
  br label %for.inc, !dbg !1022

if.else.37:                                       ; preds = %for.body
  %cmp39 = icmp slt i8 %9, 32, !dbg !1023
  %cmp43 = icmp eq i8 %9, 127, !dbg !1025
  %or.cond = or i1 %cmp39, %cmp43, !dbg !1026
  %incdec.ptr46 = getelementptr i8, i8* %p.0116, i64 1, !dbg !1027
  call void @llvm.dbg.value(metadata i8* %incdec.ptr46, i64 0, metadata !414, metadata !884), !dbg !987
  br i1 %or.cond, label %if.then.45, label %if.else.56, !dbg !1026

if.then.45:                                       ; preds = %if.else.37
  store i8 92, i8* %p.0116, align 1, !dbg !1029, !tbaa !995
  %incdec.ptr47 = getelementptr i8, i8* %p.0116, i64 2, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %incdec.ptr47, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 120, i8* %incdec.ptr46, align 1, !dbg !1031, !tbaa !995
  %and = lshr i32 %conv, 4, !dbg !1032
  %shr.111 = and i32 %and, 15, !dbg !1032
  %idxprom.112 = zext i32 %shr.111 to i64, !dbg !1033
  %10 = load i8*, i8** @Py_hexdigits, align 8, !dbg !1033, !tbaa !906
  %arrayidx49 = getelementptr i8, i8* %10, i64 %idxprom.112, !dbg !1033
  %11 = load i8, i8* %arrayidx49, align 1, !dbg !1033, !tbaa !995
  %incdec.ptr50 = getelementptr i8, i8* %p.0116, i64 3, !dbg !1034
  call void @llvm.dbg.value(metadata i8* %incdec.ptr50, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 %11, i8* %incdec.ptr47, align 1, !dbg !1035, !tbaa !995
  %and52 = and i32 %conv, 15, !dbg !1036
  %idxprom53.113 = zext i32 %and52 to i64, !dbg !1037
  %12 = load i8*, i8** @Py_hexdigits, align 8, !dbg !1037, !tbaa !906
  %arrayidx54 = getelementptr i8, i8* %12, i64 %idxprom53.113, !dbg !1037
  %13 = load i8, i8* %arrayidx54, align 1, !dbg !1037, !tbaa !995
  %incdec.ptr55 = getelementptr i8, i8* %p.0116, i64 4, !dbg !1038
  call void @llvm.dbg.value(metadata i8* %incdec.ptr55, i64 0, metadata !414, metadata !884), !dbg !987
  store i8 %13, i8* %incdec.ptr50, align 1, !dbg !1039, !tbaa !995
  br label %for.inc, !dbg !1040

if.else.56:                                       ; preds = %if.else.37
  store i8 %9, i8* %p.0116, align 1, !dbg !1041, !tbaa !995
  br label %for.inc

for.inc:                                          ; preds = %if.then.14, %if.then.27, %if.then.45, %if.else.56, %if.then.34, %if.then.20
  %p.1 = phi i8* [ %incdec.ptr15, %if.then.14 ], [ %incdec.ptr22, %if.then.20 ], [ %incdec.ptr29, %if.then.27 ], [ %incdec.ptr36, %if.then.34 ], [ %incdec.ptr55, %if.then.45 ], [ %incdec.ptr46, %if.else.56 ]
  %inc = add nuw nsw i64 %i.0115, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !410, metadata !884), !dbg !988
  %exitcond = icmp eq i64 %inc, %5, !dbg !992
  br i1 %exitcond, label %for.end.loopexit, label %for.body, !dbg !992

for.end.loopexit:                                 ; preds = %for.inc
  %p.1.lcssa = phi i8* [ %p.1, %for.inc ]
  br label %for.end, !dbg !1043

for.end:                                          ; preds = %for.end.loopexit, %if.else
  %p.0.lcssa = phi i8* [ %arraydecay, %if.else ], [ %p.1.lcssa, %for.end.loopexit ]
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !1043, !tbaa !995
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !409, metadata !884), !dbg !982
  %14 = bitcast %struct._object** %v to %struct.PyBytesObject**, !dbg !1044
  %15 = load %struct.PyBytesObject*, %struct.PyBytesObject** %14, align 8, !dbg !1044, !tbaa !906
  %arraydecay64 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i64 0, i32 2, i64 0, !dbg !1044
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0.lcssa to i64, !dbg !1046
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay64 to i64, !dbg !1046
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1046
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !409, metadata !884), !dbg !982
  %call65 = call i32 @_PyBytes_Resize(%struct._object** nonnull %v, i64 %sub.ptr.sub) #2, !dbg !1047
  %tobool66 = icmp eq i32 %call65, 0, !dbg !1047
  br i1 %tobool66, label %if.end.71, label %cleanup.73

if.end.71:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata %struct._object** %v, i64 0, metadata !409, metadata !884), !dbg !982
  %16 = load %struct._object*, %struct._object** %v, align 8, !dbg !1048, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !417, metadata !884) #2, !dbg !1049
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !418, metadata !884) #2, !dbg !1051
  %cmp.i = icmp eq %struct._object* %16, null, !dbg !1052
  br i1 %cmp.i, label %cleanup.73, label %if.end.i, !dbg !1054

if.end.i:                                         ; preds = %if.end.71
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %16, i64 %5) #2, !dbg !1055
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1056
  call void @llvm.dbg.value(metadata %struct._object* %16, i64 0, metadata !420, metadata !884) #2, !dbg !1057
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 0, !dbg !1059
  %17 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1059, !tbaa !891
  %dec.i = add i64 %17, -1, !dbg !1059
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1059, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1059
  br i1 %cmp1.i, label %if.else.i, label %cleanup.73, !dbg !1061

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %16, i64 0, i32 1, !dbg !1062
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1062, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !1062
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1062, !tbaa !1065
  call void %19(%struct._object* %16) #2, !dbg !1062
  br label %cleanup.73, !dbg !1068

cleanup.73:                                       ; preds = %if.else.i, %if.end.i, %if.end.71, %if.end.2, %entry, %for.end, %if.then.1
  %retval.1 = phi %struct._object* [ null, %if.then.1 ], [ null, %for.end ], [ null, %entry ], [ null, %if.end.2 ], [ null, %if.end.71 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1069
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1069
  ret %struct._object* %retval.1, !dbg !1069
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @escape_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !424, metadata !884), !dbg !1070
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !425, metadata !884), !dbg !1071
  %0 = bitcast i8** %errors to i8*, !dbg !1072
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1072
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !426, metadata !884), !dbg !1073
  store i8* null, i8** %errors, align 8, !dbg !1073, !tbaa !906
  %1 = bitcast i8** %data to i8*, !dbg !1074
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1074
  %2 = bitcast i64* %size to i8*, !dbg !1075
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !1075
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !426, metadata !884), !dbg !1073
  tail call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !427, metadata !884), !dbg !1076
  tail call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !428, metadata !884), !dbg !1077
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i8** nonnull %data, i64* nonnull %size, i8** nonnull %errors) #2, !dbg !1078
  %tobool = icmp eq i32 %call, 0, !dbg !1078
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1080

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !427, metadata !884), !dbg !1076
  %3 = load i8*, i8** %data, align 8, !dbg !1081, !tbaa !906
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !428, metadata !884), !dbg !1077
  %4 = load i64, i64* %size, align 8, !dbg !1082, !tbaa !1083
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !426, metadata !884), !dbg !1073
  %5 = load i8*, i8** %errors, align 8, !dbg !1084, !tbaa !906
  %call1 = call %struct._object* @PyBytes_DecodeEscape(i8* %3, i64 %4, i8* %5, i64 0, i8* null) #2, !dbg !1085
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !428, metadata !884), !dbg !1077
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !418, metadata !884) #2, !dbg !1088
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !1089
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !1090

if.end.i:                                         ; preds = %if.end
  %6 = load i64, i64* %size, align 8, !dbg !1091, !tbaa !1083
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %6) #2, !dbg !1092
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1093
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !1094
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1095
  %7 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1095, !tbaa !891
  %dec.i = add i64 %7, -1, !dbg !1095
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1095, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1095
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1096

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1097
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1097, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !1097
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1097, !tbaa !1065
  call void %9(%struct._object* %call1) #2, !dbg !1097
  br label %cleanup, !dbg !1098

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !1099
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1099
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1099
  ret %struct._object* %retval.0, !dbg !1099
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_8_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !431, metadata !884), !dbg !1100
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !432, metadata !884), !dbg !1101
  %0 = bitcast %struct._object** %str to i8*, !dbg !1102
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1102
  %1 = bitcast i8** %errors to i8*, !dbg !1103
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1103
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !435, metadata !884), !dbg !1104
  store i8* null, i8** %errors, align 8, !dbg !1104, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !435, metadata !884), !dbg !1104
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1106
  %tobool = icmp eq i32 %call, 0, !dbg !1106
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1108

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1109, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1110
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !433, metadata !884), !dbg !1105
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1111, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1112
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1113

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1114
  %3 = bitcast %struct._object* %state to i32*, !dbg !1114
  %bf.load = load i32, i32* %3, align 4, !dbg !1114
  %bf.clear = and i32 %bf.load, 128, !dbg !1114
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1114
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1114

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1116
  %phitmp = icmp slt i32 %call3, 0, !dbg !1116
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1118, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1120

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !436, metadata !884), !dbg !1118
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1121
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1122

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !440, metadata !884), !dbg !1123
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1125
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1125, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1125
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1125, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1125
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1127

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1128
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1128, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1128
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1128, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1128
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1130
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !435, metadata !884), !dbg !1104
  %8 = load i8*, i8** %errors, align 8, !dbg !1131, !tbaa !906
  %call16 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i8* %8) #2, !dbg !1132
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1135
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1136
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1137

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1138
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1138, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1138
  %11 = load i64, i64* %length, align 8, !dbg !1138, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1142
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1143
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1144
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1145
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1145, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1145
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1145, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1145
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1146

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1147
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1147, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1147
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1147, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1147
  br label %codec_tuple.exit, !dbg !1148

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1148
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !434, metadata !884), !dbg !1149
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !433, metadata !884), !dbg !1105
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1150, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !443, metadata !884), !dbg !1150
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1152
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1152, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1152
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1152, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1152
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1154

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1155
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1155, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1155
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1155, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1155
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1157
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1157
  ret %struct._object* %retval.0, !dbg !1157
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_8_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !447, metadata !884), !dbg !1158
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !448, metadata !884), !dbg !1159
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1160
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1160
  %1 = bitcast i8** %errors to i8*, !dbg !1161
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1161
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !450, metadata !884), !dbg !1162
  store i8* null, i8** %errors, align 8, !dbg !1162, !tbaa !906
  %2 = bitcast i32* %final to i8*, !dbg !1163
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1163
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !451, metadata !884), !dbg !1164
  store i32 0, i32* %final, align 4, !dbg !1164, !tbaa !1165
  %3 = bitcast i64* %consumed to i8*, !dbg !1166
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1166
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !453, metadata !884), !dbg !1167
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !449, metadata !884), !dbg !1168
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !450, metadata !884), !dbg !1162
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !451, metadata !884), !dbg !1164
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1169
  %tobool = icmp eq i32 %call, 0, !dbg !1169
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1171

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1172
  %4 = load i64, i64* %len, align 8, !dbg !1172, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !452, metadata !884), !dbg !1175
  store i64 %4, i64* %consumed, align 8, !dbg !1176, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1177
  %5 = load i8*, i8** %buf, align 8, !dbg !1177, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !450, metadata !884), !dbg !1162
  %6 = load i8*, i8** %errors, align 8, !dbg !1179, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !451, metadata !884), !dbg !1164
  %7 = load i32, i32* %final, align 4, !dbg !1180, !tbaa !1165
  %tobool2 = icmp ne i32 %7, 0, !dbg !1180
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1181
  %call3 = call %struct._object* @PyUnicode_DecodeUTF8Stateful(i8* %5, i64 %4, i8* %6, i64* %.consumed) #2, !dbg !1183
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !453, metadata !884), !dbg !1167
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !449, metadata !884), !dbg !1168
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1184
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1185
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1187

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !452, metadata !884), !dbg !1175
  %8 = load i64, i64* %consumed, align 8, !dbg !1188, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !418, metadata !884) #2, !dbg !1191
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %8) #2, !dbg !1192
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1193
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1194
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1195
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1195, !tbaa !891
  %dec.i = add i64 %9, -1, !dbg !1195
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1195, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1195
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1196

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1197
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1197, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1197
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1197, !tbaa !1065
  call void %11(%struct._object* %call3) #2, !dbg !1197
  br label %cleanup, !dbg !1198

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !1199
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1199
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1199
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1199
  ret %struct._object* %retval.0, !dbg !1199
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_7_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !456, metadata !884), !dbg !1200
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !457, metadata !884), !dbg !1201
  %0 = bitcast %struct._object** %str to i8*, !dbg !1202
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1202
  %1 = bitcast i8** %errors to i8*, !dbg !1203
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1203
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !460, metadata !884), !dbg !1204
  store i8* null, i8** %errors, align 8, !dbg !1204, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !460, metadata !884), !dbg !1204
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1206
  %tobool = icmp eq i32 %call, 0, !dbg !1206
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1208

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1209, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1210
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !458, metadata !884), !dbg !1205
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1211, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1212
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1213

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1214
  %3 = bitcast %struct._object* %state to i32*, !dbg !1214
  %bf.load = load i32, i32* %3, align 4, !dbg !1214
  %bf.clear = and i32 %bf.load, 128, !dbg !1214
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1214
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1214

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1216
  %phitmp = icmp slt i32 %call3, 0, !dbg !1216
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1218, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1220

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !461, metadata !884), !dbg !1218
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1221
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1222

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !465, metadata !884), !dbg !1223
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1225
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1225
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1225, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1225
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1227

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1228
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1228, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1228
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1228, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1228
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1230
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !460, metadata !884), !dbg !1204
  %8 = load i8*, i8** %errors, align 8, !dbg !1231, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF7(%struct._object* %7, i32 0, i32 0, i8* %8) #2, !dbg !1232
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1235
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1236
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1237

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1238
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1238, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1238
  %11 = load i64, i64* %length, align 8, !dbg !1238, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1239
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1240
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1241
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1242
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1242, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1242
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1242, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1242
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1243

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1244
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1244, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1244
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1244, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1244
  br label %codec_tuple.exit, !dbg !1245

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1245
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !459, metadata !884), !dbg !1246
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !458, metadata !884), !dbg !1205
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1247, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !468, metadata !884), !dbg !1247
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1249
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1249, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1249
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1249, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1249
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1251

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1252
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1252, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1252
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1252, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1252
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1254
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1254
  ret %struct._object* %retval.0, !dbg !1254
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_7_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !472, metadata !884), !dbg !1255
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !473, metadata !884), !dbg !1256
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1257
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1257
  %1 = bitcast i8** %errors to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1258
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !475, metadata !884), !dbg !1259
  store i8* null, i8** %errors, align 8, !dbg !1259, !tbaa !906
  %2 = bitcast i32* %final to i8*, !dbg !1260
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1260
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !476, metadata !884), !dbg !1261
  store i32 0, i32* %final, align 4, !dbg !1261, !tbaa !1165
  %3 = bitcast i64* %consumed to i8*, !dbg !1262
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1262
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !478, metadata !884), !dbg !1263
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !474, metadata !884), !dbg !1264
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !475, metadata !884), !dbg !1259
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !476, metadata !884), !dbg !1261
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1265
  %tobool = icmp eq i32 %call, 0, !dbg !1265
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1267

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1268
  %4 = load i64, i64* %len, align 8, !dbg !1268, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %4, i64 0, metadata !477, metadata !884), !dbg !1269
  store i64 %4, i64* %consumed, align 8, !dbg !1270, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1271
  %5 = load i8*, i8** %buf, align 8, !dbg !1271, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !475, metadata !884), !dbg !1259
  %6 = load i8*, i8** %errors, align 8, !dbg !1272, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !476, metadata !884), !dbg !1261
  %7 = load i32, i32* %final, align 4, !dbg !1273, !tbaa !1165
  %tobool2 = icmp ne i32 %7, 0, !dbg !1273
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1274
  %call3 = call %struct._object* @PyUnicode_DecodeUTF7Stateful(i8* %5, i64 %4, i8* %6, i64* %.consumed) #2, !dbg !1276
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !478, metadata !884), !dbg !1263
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !474, metadata !884), !dbg !1264
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1277
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1278
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1280

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !477, metadata !884), !dbg !1269
  %8 = load i64, i64* %consumed, align 8, !dbg !1281, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1282
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !418, metadata !884) #2, !dbg !1284
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %8) #2, !dbg !1285
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1286
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1287
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1288
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1288, !tbaa !891
  %dec.i = add i64 %9, -1, !dbg !1288
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1288, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1288
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1289

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1290
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1290, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1290
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1290, !tbaa !1065
  call void %11(%struct._object* %call3) #2, !dbg !1290
  br label %cleanup, !dbg !1291

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1292
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1292
  ret %struct._object* %retval.0, !dbg !1292
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !481, metadata !884), !dbg !1293
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !482, metadata !884), !dbg !1294
  %0 = bitcast %struct._object** %str to i8*, !dbg !1295
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1295
  %1 = bitcast i8** %errors to i8*, !dbg !1296
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1296
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !485, metadata !884), !dbg !1297
  store i8* null, i8** %errors, align 8, !dbg !1297, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1298
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !486, metadata !884), !dbg !1299
  store i32 0, i32* %byteorder, align 4, !dbg !1299, !tbaa !1165
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !485, metadata !884), !dbg !1297
  tail call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !486, metadata !884), !dbg !1299
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors, i32* nonnull %byteorder) #2, !dbg !1301
  %tobool = icmp eq i32 %call, 0, !dbg !1301
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1303

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  %3 = load %struct._object*, %struct._object** %str, align 8, !dbg !1304, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %3) #2, !dbg !1305
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !483, metadata !884), !dbg !1300
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1306, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1307
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1308

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1309
  %4 = bitcast %struct._object* %state to i32*, !dbg !1309
  %bf.load = load i32, i32* %4, align 4, !dbg !1309
  %bf.clear = and i32 %bf.load, 128, !dbg !1309
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1309
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1309

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1311
  %phitmp = icmp slt i32 %call3, 0, !dbg !1311
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1313, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1315

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !487, metadata !884), !dbg !1313
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1316
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1317

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !491, metadata !884), !dbg !1318
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1320
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1320, !tbaa !891
  %dec = add i64 %5, -1, !dbg !1320
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1320, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1320
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1322

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1323
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1323, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1323
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1323, !tbaa !1065
  call void %7(%struct._object* %.pr) #2, !dbg !1323
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %8 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1325
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !485, metadata !884), !dbg !1297
  %9 = load i8*, i8** %errors, align 8, !dbg !1326, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !486, metadata !884), !dbg !1299
  %10 = load i32, i32* %byteorder, align 4, !dbg !1327, !tbaa !1165
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %8, i8* %9, i32 %10) #2, !dbg !1328
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1329
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !418, metadata !884) #2, !dbg !1331
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1332
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1333

if.end.i:                                         ; preds = %if.end.15
  %11 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1334
  %12 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %11, align 8, !dbg !1334, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i64 0, i32 1, !dbg !1334
  %13 = load i64, i64* %length, align 8, !dbg !1334, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %13) #2, !dbg !1335
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1336
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1337
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1338
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1338, !tbaa !891
  %dec.i = add i64 %14, -1, !dbg !1338
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1338, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1338
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1339

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1340
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1340, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1340
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1340, !tbaa !1065
  call void %16(%struct._object* %call16) #2, !dbg !1340
  br label %codec_tuple.exit, !dbg !1341

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1341
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !484, metadata !884), !dbg !1342
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !483, metadata !884), !dbg !1300
  %17 = load %struct._object*, %struct._object** %str, align 8, !dbg !1343, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !494, metadata !884), !dbg !1343
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !1345
  %18 = load i64, i64* %ob_refcnt20, align 8, !dbg !1345, !tbaa !891
  %dec21 = add i64 %18, -1, !dbg !1345
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1345, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1345
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1347

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !1348
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1348, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1348
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1348, !tbaa !1065
  call void %20(%struct._object* %17) #2, !dbg !1348
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1350
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1350
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1350
  ret %struct._object* %retval.0, !dbg !1350
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_le_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !498, metadata !884), !dbg !1351
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !499, metadata !884), !dbg !1352
  %0 = bitcast %struct._object** %str to i8*, !dbg !1353
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1353
  %1 = bitcast i8** %errors to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1354
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !502, metadata !884), !dbg !1355
  store i8* null, i8** %errors, align 8, !dbg !1355, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !502, metadata !884), !dbg !1355
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1357
  %tobool = icmp eq i32 %call, 0, !dbg !1357
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1359

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1360, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1361
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !500, metadata !884), !dbg !1356
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1362, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1363
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1364

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1365
  %3 = bitcast %struct._object* %state to i32*, !dbg !1365
  %bf.load = load i32, i32* %3, align 4, !dbg !1365
  %bf.clear = and i32 %bf.load, 128, !dbg !1365
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1365
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1365

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1367
  %phitmp = icmp slt i32 %call3, 0, !dbg !1367
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1369, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1371

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !503, metadata !884), !dbg !1369
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1372
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1373

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !507, metadata !884), !dbg !1374
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1376
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1376, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1376
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1376, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1376
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1378

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1379
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1379, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1379
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1379, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1379
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1381
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !502, metadata !884), !dbg !1355
  %8 = load i8*, i8** %errors, align 8, !dbg !1382, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %7, i8* %8, i32 -1) #2, !dbg !1383
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1386
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1387
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1388

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1389
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1389, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1389
  %11 = load i64, i64* %length, align 8, !dbg !1389, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1390
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1391
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1392
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1393
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1393, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1393
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1393, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1393
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1394

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1395
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1395, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1395
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1395, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1395
  br label %codec_tuple.exit, !dbg !1396

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1396
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !501, metadata !884), !dbg !1397
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !500, metadata !884), !dbg !1356
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1398, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !510, metadata !884), !dbg !1398
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1400
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1400, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1400
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1400, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1400
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1402

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1403
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1403, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1403
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1403, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1403
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1405
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1405
  ret %struct._object* %retval.0, !dbg !1405
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_be_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !514, metadata !884), !dbg !1406
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !515, metadata !884), !dbg !1407
  %0 = bitcast %struct._object** %str to i8*, !dbg !1408
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1408
  %1 = bitcast i8** %errors to i8*, !dbg !1409
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1409
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !518, metadata !884), !dbg !1410
  store i8* null, i8** %errors, align 8, !dbg !1410, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !518, metadata !884), !dbg !1410
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1412
  %tobool = icmp eq i32 %call, 0, !dbg !1412
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1414

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1415, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1416
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !516, metadata !884), !dbg !1411
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1417, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1418
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1419

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1420
  %3 = bitcast %struct._object* %state to i32*, !dbg !1420
  %bf.load = load i32, i32* %3, align 4, !dbg !1420
  %bf.clear = and i32 %bf.load, 128, !dbg !1420
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1420
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1420

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1422
  %phitmp = icmp slt i32 %call3, 0, !dbg !1422
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1424, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1426

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !519, metadata !884), !dbg !1424
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1427
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1428

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !523, metadata !884), !dbg !1429
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1431
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1431, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1431
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1431, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1431
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1433

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1434
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1434, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1434
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1434, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1434
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1436
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !518, metadata !884), !dbg !1410
  %8 = load i8*, i8** %errors, align 8, !dbg !1437, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %7, i8* %8, i32 1) #2, !dbg !1438
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1441
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1442
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1443

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1444
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1444, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1444
  %11 = load i64, i64* %length, align 8, !dbg !1444, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1445
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1446
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1447
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1448
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1448, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1448
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1448, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1448
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1449

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1450
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1450, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1450
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1450, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1450
  br label %codec_tuple.exit, !dbg !1451

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1451
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !517, metadata !884), !dbg !1452
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !516, metadata !884), !dbg !1411
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1453, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !526, metadata !884), !dbg !1453
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1455
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1455, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1455
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1455, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1455
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1457

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1458
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1458, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1458
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1458, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1458
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1460
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1460
  ret %struct._object* %retval.0, !dbg !1460
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !530, metadata !884), !dbg !1461
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !531, metadata !884), !dbg !1462
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1463
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1463
  %1 = bitcast i8** %errors to i8*, !dbg !1464
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1464
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !533, metadata !884), !dbg !1465
  store i8* null, i8** %errors, align 8, !dbg !1465, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1466
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1466
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !534, metadata !884), !dbg !1467
  store i32 0, i32* %byteorder, align 4, !dbg !1467, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1468
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1468
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !535, metadata !884), !dbg !1469
  store i32 0, i32* %final, align 4, !dbg !1469, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1470
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !532, metadata !884), !dbg !1471
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !533, metadata !884), !dbg !1465
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !535, metadata !884), !dbg !1469
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1472
  %tobool = icmp eq i32 %call, 0, !dbg !1472
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1474

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1475
  %5 = load i64, i64* %len, align 8, !dbg !1475, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !536, metadata !884), !dbg !1476
  store i64 %5, i64* %consumed, align 8, !dbg !1477, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1478
  %6 = load i8*, i8** %buf, align 8, !dbg !1478, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !533, metadata !884), !dbg !1465
  %7 = load i8*, i8** %errors, align 8, !dbg !1479, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !535, metadata !884), !dbg !1469
  %8 = load i32, i32* %final, align 4, !dbg !1480, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1480
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1481
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !534, metadata !884), !dbg !1467
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1483
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !537, metadata !884), !dbg !1484
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !532, metadata !884), !dbg !1471
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1485
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1486
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1488

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !536, metadata !884), !dbg !1476
  %9 = load i64, i64* %consumed, align 8, !dbg !1489, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1492
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1493
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1494
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1495
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1496
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1496, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1496
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1496, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1496
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1497

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1498
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1498, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1498
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1498, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1498
  br label %cleanup, !dbg !1499

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1500
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1500
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1500
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1500
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1500
  ret %struct._object* %retval.0, !dbg !1500
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_le_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !540, metadata !884), !dbg !1501
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !541, metadata !884), !dbg !1502
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1503
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1503
  %1 = bitcast i8** %errors to i8*, !dbg !1504
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1504
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !543, metadata !884), !dbg !1505
  store i8* null, i8** %errors, align 8, !dbg !1505, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1506
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !544, metadata !884), !dbg !1507
  store i32 -1, i32* %byteorder, align 4, !dbg !1507, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1508
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !545, metadata !884), !dbg !1509
  store i32 0, i32* %final, align 4, !dbg !1509, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1510
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1510
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !547, metadata !884), !dbg !1511
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !542, metadata !884), !dbg !1512
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !543, metadata !884), !dbg !1505
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !545, metadata !884), !dbg !1509
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1513
  %tobool = icmp eq i32 %call, 0, !dbg !1513
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1515

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1516
  %5 = load i64, i64* %len, align 8, !dbg !1516, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !546, metadata !884), !dbg !1517
  store i64 %5, i64* %consumed, align 8, !dbg !1518, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1519
  %6 = load i8*, i8** %buf, align 8, !dbg !1519, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !543, metadata !884), !dbg !1505
  %7 = load i8*, i8** %errors, align 8, !dbg !1520, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !545, metadata !884), !dbg !1509
  %8 = load i32, i32* %final, align 4, !dbg !1521, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1521
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1522
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !544, metadata !884), !dbg !1507
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1524
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !547, metadata !884), !dbg !1511
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !542, metadata !884), !dbg !1512
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1525
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1526
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1528

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !546, metadata !884), !dbg !1517
  %9 = load i64, i64* %consumed, align 8, !dbg !1529, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1532
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1533
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1534
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1535
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1536
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1536, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1536
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1536, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1536
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1537

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1538
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1538, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1538
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1538, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1538
  br label %cleanup, !dbg !1539

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1540
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1540
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1540
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1540
  ret %struct._object* %retval.0, !dbg !1540
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_be_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !550, metadata !884), !dbg !1541
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !551, metadata !884), !dbg !1542
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1543
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1543
  %1 = bitcast i8** %errors to i8*, !dbg !1544
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1544
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !553, metadata !884), !dbg !1545
  store i8* null, i8** %errors, align 8, !dbg !1545, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1546
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1546
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !554, metadata !884), !dbg !1547
  store i32 1, i32* %byteorder, align 4, !dbg !1547, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1548
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !555, metadata !884), !dbg !1549
  store i32 0, i32* %final, align 4, !dbg !1549, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1550
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1550
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !557, metadata !884), !dbg !1551
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !552, metadata !884), !dbg !1552
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !553, metadata !884), !dbg !1545
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !555, metadata !884), !dbg !1549
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1553
  %tobool = icmp eq i32 %call, 0, !dbg !1553
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1555

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1556
  %5 = load i64, i64* %len, align 8, !dbg !1556, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !556, metadata !884), !dbg !1557
  store i64 %5, i64* %consumed, align 8, !dbg !1558, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1559
  %6 = load i8*, i8** %buf, align 8, !dbg !1559, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !553, metadata !884), !dbg !1545
  %7 = load i8*, i8** %errors, align 8, !dbg !1560, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !555, metadata !884), !dbg !1549
  %8 = load i32, i32* %final, align 4, !dbg !1561, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1561
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1562
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !554, metadata !884), !dbg !1547
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1564
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !557, metadata !884), !dbg !1551
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !552, metadata !884), !dbg !1552
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1565
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1566
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1568

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !556, metadata !884), !dbg !1557
  %9 = load i64, i64* %consumed, align 8, !dbg !1569, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1572
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1573
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1574
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1575
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1576
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1576, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1576
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1576, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1576
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1577

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1578
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1578, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1578
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1578, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1578
  br label %cleanup, !dbg !1579

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1580
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1580
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1580
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1580
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1580
  ret %struct._object* %retval.0, !dbg !1580
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_ex_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !560, metadata !884), !dbg !1581
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !561, metadata !884), !dbg !1582
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1583
  %1 = bitcast i8** %errors to i8*, !dbg !1584
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1584
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !563, metadata !884), !dbg !1585
  store i8* null, i8** %errors, align 8, !dbg !1585, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1586
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !564, metadata !884), !dbg !1587
  store i32 0, i32* %byteorder, align 4, !dbg !1587, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1588
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !567, metadata !884), !dbg !1589
  store i32 0, i32* %final, align 4, !dbg !1589, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1590
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1590
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !562, metadata !884), !dbg !1591
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !563, metadata !884), !dbg !1585
  tail call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !564, metadata !884), !dbg !1587
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !567, metadata !884), !dbg !1589
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %byteorder, i32* nonnull %final) #2, !dbg !1592
  %tobool = icmp eq i32 %call, 0, !dbg !1592
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1594

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1595
  %5 = load i64, i64* %len, align 8, !dbg !1595, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !568, metadata !884), !dbg !1596
  store i64 %5, i64* %consumed, align 8, !dbg !1597, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1598
  %6 = load i8*, i8** %buf, align 8, !dbg !1598, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !563, metadata !884), !dbg !1585
  %7 = load i8*, i8** %errors, align 8, !dbg !1599, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !567, metadata !884), !dbg !1589
  %8 = load i32, i32* %final, align 4, !dbg !1600, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1600
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1601
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !564, metadata !884), !dbg !1587
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1603
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !565, metadata !884), !dbg !1604
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !562, metadata !884), !dbg !1591
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1605
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1606
  br i1 %cmp, label %cleanup, label %if.end.5, !dbg !1608

if.end.5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !568, metadata !884), !dbg !1596
  %9 = load i64, i64* %consumed, align 8, !dbg !1609, !tbaa !1083
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !564, metadata !884), !dbg !1587
  %10 = load i32, i32* %byteorder, align 4, !dbg !1610, !tbaa !1165
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), %struct._object* %call3, i64 %9, i32 %10) #2, !dbg !1611
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !566, metadata !884), !dbg !1612
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !569, metadata !884), !dbg !1613
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1615
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1615, !tbaa !891
  %dec = add i64 %11, -1, !dbg !1615
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1615, !tbaa !891
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1615
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !1617

if.else:                                          ; preds = %if.end.5
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1618
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1618, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1618
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1618, !tbaa !1065
  call void %13(%struct._object* %call3) #2, !dbg !1618
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.5, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call6, %if.end.5 ], [ %call6, %if.else ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1620
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1620
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1620
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1620
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1620
  ret %struct._object* %retval.0, !dbg !1620
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !573, metadata !884), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !574, metadata !884), !dbg !1622
  %0 = bitcast %struct._object** %str to i8*, !dbg !1623
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1623
  %1 = bitcast i8** %errors to i8*, !dbg !1624
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1624
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !577, metadata !884), !dbg !1625
  store i8* null, i8** %errors, align 8, !dbg !1625, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1626
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1626
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !578, metadata !884), !dbg !1627
  store i32 0, i32* %byteorder, align 4, !dbg !1627, !tbaa !1165
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !577, metadata !884), !dbg !1625
  tail call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !578, metadata !884), !dbg !1627
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors, i32* nonnull %byteorder) #2, !dbg !1629
  %tobool = icmp eq i32 %call, 0, !dbg !1629
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1631

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  %3 = load %struct._object*, %struct._object** %str, align 8, !dbg !1632, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %3) #2, !dbg !1633
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !575, metadata !884), !dbg !1628
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1634, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1635
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1636

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1637
  %4 = bitcast %struct._object* %state to i32*, !dbg !1637
  %bf.load = load i32, i32* %4, align 4, !dbg !1637
  %bf.clear = and i32 %bf.load, 128, !dbg !1637
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1637
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1637

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1639
  %phitmp = icmp slt i32 %call3, 0, !dbg !1639
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1641, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1643

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !579, metadata !884), !dbg !1641
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1644
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1645

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !583, metadata !884), !dbg !1646
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1648
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1648, !tbaa !891
  %dec = add i64 %5, -1, !dbg !1648
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1648, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1648
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1650

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1651
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1651, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1651
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1651, !tbaa !1065
  call void %7(%struct._object* %.pr) #2, !dbg !1651
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %8 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1653
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !577, metadata !884), !dbg !1625
  %9 = load i8*, i8** %errors, align 8, !dbg !1654, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !578, metadata !884), !dbg !1627
  %10 = load i32, i32* %byteorder, align 4, !dbg !1655, !tbaa !1165
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %8, i8* %9, i32 %10) #2, !dbg !1656
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1657
  call void @llvm.dbg.value(metadata i64 %13, i64 0, metadata !418, metadata !884) #2, !dbg !1659
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1660
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1661

if.end.i:                                         ; preds = %if.end.15
  %11 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1662
  %12 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %11, align 8, !dbg !1662, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i64 0, i32 1, !dbg !1662
  %13 = load i64, i64* %length, align 8, !dbg !1662, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %13) #2, !dbg !1663
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1664
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1665
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1666
  %14 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1666, !tbaa !891
  %dec.i = add i64 %14, -1, !dbg !1666
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1666, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1666
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1667

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1668
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1668, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1668
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1668, !tbaa !1065
  call void %16(%struct._object* %call16) #2, !dbg !1668
  br label %codec_tuple.exit, !dbg !1669

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1669
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !576, metadata !884), !dbg !1670
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !575, metadata !884), !dbg !1628
  %17 = load %struct._object*, %struct._object** %str, align 8, !dbg !1671, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !586, metadata !884), !dbg !1671
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 0, !dbg !1673
  %18 = load i64, i64* %ob_refcnt20, align 8, !dbg !1673, !tbaa !891
  %dec21 = add i64 %18, -1, !dbg !1673
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1673, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1673
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1675

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %17, i64 0, i32 1, !dbg !1676
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1676, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1676
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1676, !tbaa !1065
  call void %20(%struct._object* %17) #2, !dbg !1676
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1678
  ret %struct._object* %retval.0, !dbg !1678
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_le_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !590, metadata !884), !dbg !1679
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !591, metadata !884), !dbg !1680
  %0 = bitcast %struct._object** %str to i8*, !dbg !1681
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1681
  %1 = bitcast i8** %errors to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1682
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !594, metadata !884), !dbg !1683
  store i8* null, i8** %errors, align 8, !dbg !1683, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !594, metadata !884), !dbg !1683
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1685
  %tobool = icmp eq i32 %call, 0, !dbg !1685
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1687

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1688, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1689
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !592, metadata !884), !dbg !1684
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1690, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1691
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1692

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1693
  %3 = bitcast %struct._object* %state to i32*, !dbg !1693
  %bf.load = load i32, i32* %3, align 4, !dbg !1693
  %bf.clear = and i32 %bf.load, 128, !dbg !1693
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1693
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1693

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1695
  %phitmp = icmp slt i32 %call3, 0, !dbg !1695
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1697, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1699

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !595, metadata !884), !dbg !1697
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1700
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1701

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !599, metadata !884), !dbg !1702
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1704
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1704, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1704
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1704, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1704
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1706

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1707
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1707, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1707
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1707, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1707
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1709
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !594, metadata !884), !dbg !1683
  %8 = load i8*, i8** %errors, align 8, !dbg !1710, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %7, i8* %8, i32 -1) #2, !dbg !1711
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1714
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1715
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1716

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1717
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1717, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1717
  %11 = load i64, i64* %length, align 8, !dbg !1717, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1718
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1719
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1720
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1721
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1721, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1721
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1721, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1721
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1722

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1723
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1723, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1723
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1723, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1723
  br label %codec_tuple.exit, !dbg !1724

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1724
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !593, metadata !884), !dbg !1725
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !592, metadata !884), !dbg !1684
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1726, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !602, metadata !884), !dbg !1726
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1728
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1728, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1728
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1728, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1728
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1730

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1731
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1731, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1731
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1731, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1731
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1733
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1733
  ret %struct._object* %retval.0, !dbg !1733
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_be_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !606, metadata !884), !dbg !1734
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !607, metadata !884), !dbg !1735
  %0 = bitcast %struct._object** %str to i8*, !dbg !1736
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1736
  %1 = bitcast i8** %errors to i8*, !dbg !1737
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1737
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !610, metadata !884), !dbg !1738
  store i8* null, i8** %errors, align 8, !dbg !1738, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !610, metadata !884), !dbg !1738
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1740
  %tobool = icmp eq i32 %call, 0, !dbg !1740
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1742

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1743, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1744
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !608, metadata !884), !dbg !1739
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1745, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1746
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1747

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1748
  %3 = bitcast %struct._object* %state to i32*, !dbg !1748
  %bf.load = load i32, i32* %3, align 4, !dbg !1748
  %bf.clear = and i32 %bf.load, 128, !dbg !1748
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1748
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1748

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1750
  %phitmp = icmp slt i32 %call3, 0, !dbg !1750
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1752, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1754

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !611, metadata !884), !dbg !1752
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1755
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1756

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !615, metadata !884), !dbg !1757
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1759
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1759, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1759
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1759, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1759
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1761

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1762
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1762, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1762
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1762, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1762
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1764
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !610, metadata !884), !dbg !1738
  %8 = load i8*, i8** %errors, align 8, !dbg !1765, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %7, i8* %8, i32 1) #2, !dbg !1766
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !1769
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1770
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1771

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1772
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !1772, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !1772
  %11 = load i64, i64* %length, align 8, !dbg !1772, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !1773
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1774
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1775
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1776
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1776, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !1776
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1776, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1776
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1777

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1778
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1778, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1778
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1778, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !1778
  br label %codec_tuple.exit, !dbg !1779

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1779
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !609, metadata !884), !dbg !1780
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !608, metadata !884), !dbg !1739
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !1781, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !618, metadata !884), !dbg !1781
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !1783
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !1783, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !1783
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1783, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1783
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1785

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !1786
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1786, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1786
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1786, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !1786
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1788
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !1788
  ret %struct._object* %retval.0, !dbg !1788
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !622, metadata !884), !dbg !1789
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !623, metadata !884), !dbg !1790
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1791
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1791
  %1 = bitcast i8** %errors to i8*, !dbg !1792
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1792
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !625, metadata !884), !dbg !1793
  store i8* null, i8** %errors, align 8, !dbg !1793, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1794
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1794
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !626, metadata !884), !dbg !1795
  store i32 0, i32* %byteorder, align 4, !dbg !1795, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1796
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1796
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !627, metadata !884), !dbg !1797
  store i32 0, i32* %final, align 4, !dbg !1797, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1798
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1798
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !624, metadata !884), !dbg !1799
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !625, metadata !884), !dbg !1793
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !627, metadata !884), !dbg !1797
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1800
  %tobool = icmp eq i32 %call, 0, !dbg !1800
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1802

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1803
  %5 = load i64, i64* %len, align 8, !dbg !1803, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !628, metadata !884), !dbg !1804
  store i64 %5, i64* %consumed, align 8, !dbg !1805, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1806
  %6 = load i8*, i8** %buf, align 8, !dbg !1806, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !625, metadata !884), !dbg !1793
  %7 = load i8*, i8** %errors, align 8, !dbg !1807, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !627, metadata !884), !dbg !1797
  %8 = load i32, i32* %final, align 4, !dbg !1808, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1808
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1809
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !626, metadata !884), !dbg !1795
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1811
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !629, metadata !884), !dbg !1812
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !624, metadata !884), !dbg !1799
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1813
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1814
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1816

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !628, metadata !884), !dbg !1804
  %9 = load i64, i64* %consumed, align 8, !dbg !1817, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1820
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1821
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1822
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1823
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1824
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1824, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1824
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1824, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1824
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1825

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1826
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1826, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1826
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1826, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1826
  br label %cleanup, !dbg !1827

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1828
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1828
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1828
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1828
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1828
  ret %struct._object* %retval.0, !dbg !1828
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_le_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !632, metadata !884), !dbg !1829
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !633, metadata !884), !dbg !1830
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1831
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1831
  %1 = bitcast i8** %errors to i8*, !dbg !1832
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1832
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !635, metadata !884), !dbg !1833
  store i8* null, i8** %errors, align 8, !dbg !1833, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1834
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !636, metadata !884), !dbg !1835
  store i32 -1, i32* %byteorder, align 4, !dbg !1835, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1836
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1836
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !637, metadata !884), !dbg !1837
  store i32 0, i32* %final, align 4, !dbg !1837, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1838
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1838
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !634, metadata !884), !dbg !1839
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !635, metadata !884), !dbg !1833
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !637, metadata !884), !dbg !1837
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1840
  %tobool = icmp eq i32 %call, 0, !dbg !1840
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1842

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1843
  %5 = load i64, i64* %len, align 8, !dbg !1843, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !638, metadata !884), !dbg !1844
  store i64 %5, i64* %consumed, align 8, !dbg !1845, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1846
  %6 = load i8*, i8** %buf, align 8, !dbg !1846, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !635, metadata !884), !dbg !1833
  %7 = load i8*, i8** %errors, align 8, !dbg !1847, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !637, metadata !884), !dbg !1837
  %8 = load i32, i32* %final, align 4, !dbg !1848, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1848
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1849
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !636, metadata !884), !dbg !1835
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1851
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !639, metadata !884), !dbg !1852
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !634, metadata !884), !dbg !1839
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1853
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1854
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1856

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !638, metadata !884), !dbg !1844
  %9 = load i64, i64* %consumed, align 8, !dbg !1857, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1860
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1861
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1862
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1863
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1864
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1864, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1864
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1864, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1864
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1865

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1866
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1866, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1866
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1866, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1866
  br label %cleanup, !dbg !1867

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1868
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1868
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1868
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1868
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1868
  ret %struct._object* %retval.0, !dbg !1868
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_be_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !642, metadata !884), !dbg !1869
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !643, metadata !884), !dbg !1870
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1871
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1871
  %1 = bitcast i8** %errors to i8*, !dbg !1872
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1872
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !645, metadata !884), !dbg !1873
  store i8* null, i8** %errors, align 8, !dbg !1873, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1874
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1874
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !646, metadata !884), !dbg !1875
  store i32 1, i32* %byteorder, align 4, !dbg !1875, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1876
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1876
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !647, metadata !884), !dbg !1877
  store i32 0, i32* %final, align 4, !dbg !1877, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1878
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1878
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !644, metadata !884), !dbg !1879
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !645, metadata !884), !dbg !1873
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !647, metadata !884), !dbg !1877
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %final) #2, !dbg !1880
  %tobool = icmp eq i32 %call, 0, !dbg !1880
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1882

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1883
  %5 = load i64, i64* %len, align 8, !dbg !1883, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !648, metadata !884), !dbg !1884
  store i64 %5, i64* %consumed, align 8, !dbg !1885, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1886
  %6 = load i8*, i8** %buf, align 8, !dbg !1886, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !645, metadata !884), !dbg !1873
  %7 = load i8*, i8** %errors, align 8, !dbg !1887, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !647, metadata !884), !dbg !1877
  %8 = load i32, i32* %final, align 4, !dbg !1888, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1888
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1889
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !646, metadata !884), !dbg !1875
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1891
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !649, metadata !884), !dbg !1892
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !644, metadata !884), !dbg !1879
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1893
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1894
  br i1 %cmp, label %cleanup, label %if.end.i, !dbg !1896

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !648, metadata !884), !dbg !1884
  %9 = load i64, i64* %consumed, align 8, !dbg !1897, !tbaa !1083
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !418, metadata !884) #2, !dbg !1900
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %9) #2, !dbg !1901
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1902
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !1903
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1904
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1904, !tbaa !891
  %dec.i = add i64 %10, -1, !dbg !1904
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1904, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1904
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !1905

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1906
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1906, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1906
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1906, !tbaa !1065
  call void %12(%struct._object* %call3) #2, !dbg !1906
  br label %cleanup, !dbg !1907

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1908
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1908
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1908
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1908
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1908
  ret %struct._object* %retval.0, !dbg !1908
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_ex_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !652, metadata !884), !dbg !1909
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !653, metadata !884), !dbg !1910
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1911
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !1911
  %1 = bitcast i8** %errors to i8*, !dbg !1912
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1912
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !655, metadata !884), !dbg !1913
  store i8* null, i8** %errors, align 8, !dbg !1913, !tbaa !906
  %2 = bitcast i32* %byteorder to i8*, !dbg !1914
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1914
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !656, metadata !884), !dbg !1915
  store i32 0, i32* %byteorder, align 4, !dbg !1915, !tbaa !1165
  %3 = bitcast i32* %final to i8*, !dbg !1916
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !1916
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !659, metadata !884), !dbg !1917
  store i32 0, i32* %final, align 4, !dbg !1917, !tbaa !1165
  %4 = bitcast i64* %consumed to i8*, !dbg !1918
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1918
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !654, metadata !884), !dbg !1919
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !655, metadata !884), !dbg !1913
  tail call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !656, metadata !884), !dbg !1915
  tail call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !659, metadata !884), !dbg !1917
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, i32* nonnull %byteorder, i32* nonnull %final) #2, !dbg !1920
  %tobool = icmp eq i32 %call, 0, !dbg !1920
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1922

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !1923
  %5 = load i64, i64* %len, align 8, !dbg !1923, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !660, metadata !884), !dbg !1924
  store i64 %5, i64* %consumed, align 8, !dbg !1925, !tbaa !1083
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !1926
  %6 = load i8*, i8** %buf, align 8, !dbg !1926, !tbaa !1178
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !655, metadata !884), !dbg !1913
  %7 = load i8*, i8** %errors, align 8, !dbg !1927, !tbaa !906
  call void @llvm.dbg.value(metadata i32* %final, i64 0, metadata !659, metadata !884), !dbg !1917
  %8 = load i32, i32* %final, align 4, !dbg !1928, !tbaa !1165
  %tobool2 = icmp ne i32 %8, 0, !dbg !1928
  %.consumed = select i1 %tobool2, i64* null, i64* %consumed, !dbg !1929
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !656, metadata !884), !dbg !1915
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %6, i64 %5, i8* %7, i32* nonnull %byteorder, i64* %.consumed) #2, !dbg !1931
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !657, metadata !884), !dbg !1932
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !654, metadata !884), !dbg !1919
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !1933
  %cmp = icmp eq %struct._object* %call3, null, !dbg !1934
  br i1 %cmp, label %cleanup, label %if.end.5, !dbg !1936

if.end.5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %consumed, i64 0, metadata !660, metadata !884), !dbg !1924
  %9 = load i64, i64* %consumed, align 8, !dbg !1937, !tbaa !1083
  call void @llvm.dbg.value(metadata i32* %byteorder, i64 0, metadata !656, metadata !884), !dbg !1915
  %10 = load i32, i32* %byteorder, align 4, !dbg !1938, !tbaa !1165
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), %struct._object* %call3, i64 %9, i32 %10) #2, !dbg !1939
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !658, metadata !884), !dbg !1940
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !661, metadata !884), !dbg !1941
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !1943
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !1943, !tbaa !891
  %dec = add i64 %11, -1, !dbg !1943
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1943, !tbaa !891
  %cmp7 = icmp eq i64 %dec, 0, !dbg !1943
  br i1 %cmp7, label %if.else, label %cleanup, !dbg !1945

if.else:                                          ; preds = %if.end.5
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !1946
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1946, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1946
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1946, !tbaa !1065
  call void %13(%struct._object* %call3) #2, !dbg !1946
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.5, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call6, %if.end.5 ], [ %call6, %if.else ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !1948
  call void @llvm.lifetime.end(i64 4, i8* %3) #2, !dbg !1948
  call void @llvm.lifetime.end(i64 4, i8* %2) #2, !dbg !1948
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !1948
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !1948
  ret %struct._object* %retval.0, !dbg !1948
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_escape_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !665, metadata !884), !dbg !1949
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !666, metadata !884), !dbg !1950
  %0 = bitcast %struct._object** %str to i8*, !dbg !1951
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1951
  %1 = bitcast i8** %errors to i8*, !dbg !1952
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !1952
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !669, metadata !884), !dbg !1953
  store i8* null, i8** %errors, align 8, !dbg !1953, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !669, metadata !884), !dbg !1953
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !1955
  %tobool = icmp eq i32 %call, 0, !dbg !1955
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1957

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !1958, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !1959
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !667, metadata !884), !dbg !1954
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1960, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !1961
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !1962

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !1963
  %3 = bitcast %struct._object* %state to i32*, !dbg !1963
  %bf.load = load i32, i32* %3, align 4, !dbg !1963
  %bf.clear = and i32 %bf.load, 128, !dbg !1963
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !1963
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !1963

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !1965
  %phitmp = icmp slt i32 %call3, 0, !dbg !1965
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !1967, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !1969

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !670, metadata !884), !dbg !1967
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !1970
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !1971

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !674, metadata !884), !dbg !1972
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !1974
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !891
  %dec = add i64 %4, -1, !dbg !1974
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1974, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !1974
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !1976

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !1977
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1977, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1977
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1977, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !1977
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !1979
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  %call16 = call %struct._object* @PyUnicode_AsUnicodeEscapeString(%struct._object* %7) #2, !dbg !1980
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !418, metadata !884) #2, !dbg !1983
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !1984
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !1985

if.end.i:                                         ; preds = %if.end.15
  %8 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !1986
  %9 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %8, align 8, !dbg !1986, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i64 0, i32 1, !dbg !1986
  %10 = load i64, i64* %length, align 8, !dbg !1986, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %10) #2, !dbg !1987
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !1988
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !1989
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !1990
  %11 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1990, !tbaa !891
  %dec.i = add i64 %11, -1, !dbg !1990
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1990, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !1990
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !1991

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !1992
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1992, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !1992
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1992, !tbaa !1065
  call void %13(%struct._object* %call16) #2, !dbg !1992
  br label %codec_tuple.exit, !dbg !1993

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !1993
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !668, metadata !884), !dbg !1994
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !667, metadata !884), !dbg !1954
  %14 = load %struct._object*, %struct._object** %str, align 8, !dbg !1995, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !677, metadata !884), !dbg !1995
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !1997
  %15 = load i64, i64* %ob_refcnt20, align 8, !dbg !1997, !tbaa !891
  %dec21 = add i64 %15, -1, !dbg !1997
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1997, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !1997
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !1999

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !2000
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2000, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2000
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2000, !tbaa !1065
  call void %17(%struct._object* %14) #2, !dbg !2000
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2002
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2002
  ret %struct._object* %retval.0, !dbg !2002
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_escape_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !681, metadata !884), !dbg !2003
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !682, metadata !884), !dbg !2004
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2005
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2005
  %1 = bitcast i8** %errors to i8*, !dbg !2006
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2006
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !684, metadata !884), !dbg !2007
  store i8* null, i8** %errors, align 8, !dbg !2007, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !683, metadata !884), !dbg !2008
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !684, metadata !884), !dbg !2007
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors) #2, !dbg !2009
  %tobool = icmp eq i32 %call, 0, !dbg !2009
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2011

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !2012
  %2 = load i8*, i8** %buf, align 8, !dbg !2012, !tbaa !1178
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !2013
  %3 = load i64, i64* %len, align 8, !dbg !2013, !tbaa !1173
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !684, metadata !884), !dbg !2007
  %4 = load i8*, i8** %errors, align 8, !dbg !2014, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_DecodeUnicodeEscape(i8* %2, i64 %3, i8* %4) #2, !dbg !2015
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !685, metadata !884), !dbg !2016
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !683, metadata !884), !dbg !2008
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !2017
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !418, metadata !884) #2, !dbg !2020
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !2021
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2022

if.end.i:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8, !dbg !2023, !tbaa !1173
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %5) #2, !dbg !2024
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2025
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !2026
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2027
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2027, !tbaa !891
  %dec.i = add i64 %6, -1, !dbg !2027
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2027, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2027
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2028

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2029
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2029, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2029
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2029, !tbaa !1065
  call void %8(%struct._object* %call1) #2, !dbg !2029
  br label %cleanup, !dbg !2030

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2031
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2031
  ret %struct._object* %retval.0, !dbg !2031
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_internal_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %size = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !688, metadata !884), !dbg !2032
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !689, metadata !884), !dbg !2033
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2034
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2034
  %1 = bitcast i8** %errors to i8*, !dbg !2035
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2035
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !691, metadata !884), !dbg !2036
  store i8* null, i8** %errors, align 8, !dbg !2036, !tbaa !906
  %2 = bitcast i8** %data to i8*, !dbg !2037
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2037
  %3 = bitcast i64* %len to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2038
  %4 = bitcast i64* %size to i8*, !dbg !2038
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !2038
  %5 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8, !dbg !2039, !tbaa !906
  %call = tail call i32 @PyErr_WarnEx(%struct._object* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i64 0, i64 0), i64 1) #2, !dbg !2041
  %tobool = icmp eq i32 %call, 0, !dbg !2041
  br i1 %tobool, label %if.end, label %cleanup.27, !dbg !2042

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !690, metadata !884), !dbg !2043
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !691, metadata !884), !dbg !2036
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i64 0, i64 0), %struct._object** nonnull %obj, i8** nonnull %errors) #2, !dbg !2044
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2044
  br i1 %tobool2, label %cleanup.27, label %if.end.4, !dbg !2046

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !690, metadata !884), !dbg !2043
  %6 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2047, !tbaa !906
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !2047
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2047, !tbaa !1064
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !2047
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2047, !tbaa !2048
  %and = and i64 %8, 268435456, !dbg !2047
  %cmp = icmp eq i64 %and, 0, !dbg !2047
  br i1 %cmp, label %if.else, label %if.then.5, !dbg !2049

if.then.5:                                        ; preds = %if.end.4
  %state = getelementptr inbounds %struct._object, %struct._object* %6, i64 2, !dbg !2050
  %9 = bitcast %struct._object* %state to i32*, !dbg !2050
  %bf.load = load i32, i32* %9, align 4, !dbg !2050
  %bf.clear = and i32 %bf.load, 128, !dbg !2050
  %tobool6 = icmp eq i32 %bf.clear, 0, !dbg !2050
  br i1 %tobool6, label %cond.false, label %if.end.10, !dbg !2050

cond.false:                                       ; preds = %if.then.5
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %6) #2, !dbg !2052
  %phitmp = icmp slt i32 %call7, 0, !dbg !2052
  br i1 %phitmp, label %cleanup.27, label %cond.false.if.end.10_crit_edge, !dbg !2054

cond.false.if.end.10_crit_edge:                   ; preds = %cond.false
  %.pre = load %struct._object*, %struct._object** %obj, align 8, !dbg !2055, !tbaa !906
  br label %if.end.10, !dbg !2054

if.end.10:                                        ; preds = %cond.false.if.end.10_crit_edge, %if.then.5
  %10 = phi %struct._object* [ %.pre, %cond.false.if.end.10_crit_edge ], [ %6, %if.then.5 ], !dbg !2055
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !690, metadata !884), !dbg !2043
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !693, metadata !884), !dbg !2056
  %call11 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %10, i64* nonnull %len) #2, !dbg !2057
  call void @llvm.dbg.value(metadata i32* %call11, i64 0, metadata !695, metadata !884), !dbg !2058
  %cmp12 = icmp eq i32* %call11, null, !dbg !2059
  br i1 %cmp12, label %cleanup.27, label %if.end.14, !dbg !2061

if.end.14:                                        ; preds = %if.end.10
  call void @llvm.dbg.value(metadata i64* %len, i64 0, metadata !693, metadata !884), !dbg !2056
  %11 = load i64, i64* %len, align 8, !dbg !2062, !tbaa !1083
  %cmp15 = icmp ugt i64 %11, 2305843009213693951, !dbg !2064
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !2065

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct._object* @PyErr_NoMemory() #2, !dbg !2066
  br label %cleanup.27, !dbg !2067

if.end.18:                                        ; preds = %if.end.14
  %mul = shl i64 %11, 2, !dbg !2068
  call void @llvm.dbg.value(metadata i64 %mul, i64 0, metadata !694, metadata !884), !dbg !2069
  store i64 %mul, i64* %size, align 8, !dbg !2070, !tbaa !1083
  %12 = bitcast i32* %call11 to i8*, !dbg !2071
  %call19 = call %struct._object* @PyBytes_FromStringAndSize(i8* %12, i64 %mul) #2, !dbg !2072
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !690, metadata !884), !dbg !2043
  call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !417, metadata !884) #2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %15, i64 0, metadata !418, metadata !884) #2, !dbg !2075
  %cmp.i = icmp eq %struct._object* %call19, null, !dbg !2076
  br i1 %cmp.i, label %cleanup.27, label %if.end.i, !dbg !2077

if.end.i:                                         ; preds = %if.end.18
  %13 = bitcast %struct._object** %obj to %struct.PyASCIIObject**, !dbg !2078
  %14 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %13, align 8, !dbg !2078, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 0, i32 1, !dbg !2078
  %15 = load i64, i64* %length, align 8, !dbg !2078, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call19, i64 %15) #2, !dbg !2079
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2080
  call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !420, metadata !884) #2, !dbg !2081
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 0, !dbg !2082
  %16 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2082, !tbaa !891
  %dec.i = add i64 %16, -1, !dbg !2082
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2082, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2082
  br i1 %cmp1.i, label %if.else.i, label %cleanup.27, !dbg !2083

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 1, !dbg !2084
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2084, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2084
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2084, !tbaa !1065
  call void %18(%struct._object* %call19) #2, !dbg !2084
  br label %cleanup.27, !dbg !2085

if.else:                                          ; preds = %if.end.4
  call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !692, metadata !884), !dbg !2086
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !694, metadata !884), !dbg !2069
  %call21 = call i32 @PyObject_AsReadBuffer(%struct._object* %6, i8** nonnull %data, i64* nonnull %size) #2, !dbg !2087
  %tobool22 = icmp eq i32 %call21, 0, !dbg !2087
  br i1 %tobool22, label %if.end.24, label %cleanup.27, !dbg !2090

if.end.24:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !692, metadata !884), !dbg !2086
  %19 = load i8*, i8** %data, align 8, !dbg !2091, !tbaa !906
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !694, metadata !884), !dbg !2069
  %20 = load i64, i64* %size, align 8, !dbg !2092, !tbaa !1083
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %19, i64 %20) #2, !dbg !2093
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !694, metadata !884), !dbg !2069
  call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !417, metadata !884) #2, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %21, i64 0, metadata !418, metadata !884) #2, !dbg !2096
  %cmp.i.34 = icmp eq %struct._object* %call25, null, !dbg !2097
  br i1 %cmp.i.34, label %cleanup.27, label %if.end.i.39, !dbg !2098

if.end.i.39:                                      ; preds = %if.end.24
  %21 = load i64, i64* %size, align 8, !dbg !2099, !tbaa !1083
  %call.i.35 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call25, i64 %21) #2, !dbg !2100
  call void @llvm.dbg.value(metadata %struct._object* %call.i.35, i64 0, metadata !419, metadata !884) #2, !dbg !2101
  call void @llvm.dbg.value(metadata %struct._object* %call25, i64 0, metadata !420, metadata !884) #2, !dbg !2102
  %ob_refcnt.i.36 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 0, !dbg !2103
  %22 = load i64, i64* %ob_refcnt.i.36, align 8, !dbg !2103, !tbaa !891
  %dec.i.37 = add i64 %22, -1, !dbg !2103
  store i64 %dec.i.37, i64* %ob_refcnt.i.36, align 8, !dbg !2103, !tbaa !891
  %cmp1.i.38 = icmp eq i64 %dec.i.37, 0, !dbg !2103
  br i1 %cmp1.i.38, label %if.else.i.42, label %cleanup.27, !dbg !2104

if.else.i.42:                                     ; preds = %if.end.i.39
  %ob_type.i.40 = getelementptr inbounds %struct._object, %struct._object* %call25, i64 0, i32 1, !dbg !2105
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.40, align 8, !dbg !2105, !tbaa !1064
  %tp_dealloc.i.41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !2105
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.41, align 8, !dbg !2105, !tbaa !1065
  call void %24(%struct._object* %call25) #2, !dbg !2105
  br label %cleanup.27, !dbg !2106

cleanup.27:                                       ; preds = %if.else.i.42, %if.end.i.39, %if.end.24, %if.else.i, %if.end.i, %if.end.18, %if.else, %if.then.16, %cond.false, %if.end.10, %if.end, %entry
  %retval.1 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call17, %if.then.16 ], [ null, %cond.false ], [ null, %if.end.10 ], [ null, %if.else ], [ null, %if.end.18 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], [ null, %if.end.24 ], [ %call.i.35, %if.end.i.39 ], [ %call.i.35, %if.else.i.42 ]
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2107
  ret %struct._object* %retval.1, !dbg !2107
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_internal_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !702, metadata !884), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !703, metadata !884), !dbg !2109
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2110
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2110
  %1 = bitcast i8** %errors to i8*, !dbg !2111
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2111
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !705, metadata !884), !dbg !2112
  store i8* null, i8** %errors, align 8, !dbg !2112, !tbaa !906
  %2 = bitcast i8** %data to i8*, !dbg !2113
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2113
  %3 = bitcast i64* %size to i8*, !dbg !2114
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !2114
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !705, metadata !884), !dbg !2112
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i64 0, i64 0), %struct._object** nonnull %obj, i8** nonnull %errors) #2, !dbg !2116
  %tobool = icmp eq i32 %call, 0, !dbg !2116
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2118

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  %4 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2119, !tbaa !906
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !2119
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2119, !tbaa !1064
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 19, !dbg !2119
  %6 = load i64, i64* %tp_flags, align 8, !dbg !2119, !tbaa !2048
  %and = and i64 %6, 268435456, !dbg !2119
  %cmp = icmp eq i64 %and, 0, !dbg !2119
  br i1 %cmp, label %if.else, label %if.then.1, !dbg !2121

if.then.1:                                        ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %4, i64 2, !dbg !2122
  %7 = bitcast %struct._object* %state to i32*, !dbg !2122
  %bf.load = load i32, i32* %7, align 4, !dbg !2122
  %bf.clear = and i32 %bf.load, 128, !dbg !2122
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !2122
  br i1 %tobool2, label %cond.false, label %if.end.6.thread, !dbg !2122

if.end.6.thread:                                  ; preds = %if.then.1
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  %ob_refcnt.28 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !2125
  %8 = load i64, i64* %ob_refcnt.28, align 8, !dbg !2125, !tbaa !891
  %inc.29 = add i64 %8, 1, !dbg !2125
  store i64 %inc.29, i64* %ob_refcnt.28, align 8, !dbg !2125, !tbaa !891
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  call void @llvm.dbg.value(metadata %struct._object* %.pre, i64 0, metadata !417, metadata !884) #2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !418, metadata !884) #2, !dbg !2128
  br label %if.end.i, !dbg !2129

cond.false:                                       ; preds = %if.then.1
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %4) #2, !dbg !2130
  %phitmp = icmp slt i32 %call3, 0, !dbg !2130
  br i1 %phitmp, label %cleanup, label %if.end.6, !dbg !2132

if.end.6:                                         ; preds = %cond.false
  %.pre = load %struct._object*, %struct._object** %obj, align 8, !dbg !2125, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pre, i64 0, i32 0, !dbg !2125
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2125, !tbaa !891
  %inc = add i64 %9, 1, !dbg !2125
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2125, !tbaa !891
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !704, metadata !884), !dbg !2115
  call void @llvm.dbg.value(metadata %struct._object* %.pre, i64 0, metadata !417, metadata !884) #2, !dbg !2126
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !418, metadata !884) #2, !dbg !2128
  %cmp.i = icmp eq %struct._object* %.pre, null, !dbg !2133
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2129

if.end.i:                                         ; preds = %if.end.6.thread, %if.end.6
  %ob_refcnt31 = phi i64* [ %ob_refcnt.28, %if.end.6.thread ], [ %ob_refcnt, %if.end.6 ]
  %10 = phi %struct._object* [ %4, %if.end.6.thread ], [ %.pre, %if.end.6 ]
  %11 = getelementptr inbounds %struct._object, %struct._object* %10, i64 1, i32 0, !dbg !2134
  %12 = load i64, i64* %11, align 8, !dbg !2134, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %10, i64 %12) #2, !dbg !2135
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2136
  call void @llvm.dbg.value(metadata %struct._object* %.pre, i64 0, metadata !420, metadata !884) #2, !dbg !2137
  %13 = load i64, i64* %ob_refcnt31, align 8, !dbg !2138, !tbaa !891
  %dec.i = add i64 %13, -1, !dbg !2138
  store i64 %dec.i, i64* %ob_refcnt31, align 8, !dbg !2138, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2138
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2139

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !2140
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2140, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2140
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2140, !tbaa !1065
  call void %15(%struct._object* %10) #2, !dbg !2140
  br label %cleanup, !dbg !2141

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !706, metadata !884), !dbg !2142
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !707, metadata !884), !dbg !2143
  %call8 = call i32 @PyObject_AsReadBuffer(%struct._object* %4, i8** nonnull %data, i64* nonnull %size) #2, !dbg !2144
  %tobool9 = icmp eq i32 %call8, 0, !dbg !2144
  br i1 %tobool9, label %if.end.11, label %cleanup, !dbg !2147

if.end.11:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8** %data, i64 0, metadata !706, metadata !884), !dbg !2142
  %16 = load i8*, i8** %data, align 8, !dbg !2148, !tbaa !906
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !707, metadata !884), !dbg !2143
  %17 = load i64, i64* %size, align 8, !dbg !2149, !tbaa !1083
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !705, metadata !884), !dbg !2112
  %18 = load i8*, i8** %errors, align 8, !dbg !2150, !tbaa !906
  %call12 = call %struct._object* @_PyUnicode_DecodeUnicodeInternal(i8* %16, i64 %17, i8* %18) #2, !dbg !2151
  call void @llvm.dbg.value(metadata i64* %size, i64 0, metadata !707, metadata !884), !dbg !2143
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !417, metadata !884) #2, !dbg !2152
  call void @llvm.dbg.value(metadata i64 %19, i64 0, metadata !418, metadata !884) #2, !dbg !2154
  %cmp.i.17 = icmp eq %struct._object* %call12, null, !dbg !2155
  br i1 %cmp.i.17, label %cleanup, label %if.end.i.22, !dbg !2156

if.end.i.22:                                      ; preds = %if.end.11
  %19 = load i64, i64* %size, align 8, !dbg !2157, !tbaa !1083
  %call.i.18 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call12, i64 %19) #2, !dbg !2158
  call void @llvm.dbg.value(metadata %struct._object* %call.i.18, i64 0, metadata !419, metadata !884) #2, !dbg !2159
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !420, metadata !884) #2, !dbg !2160
  %ob_refcnt.i.19 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2161
  %20 = load i64, i64* %ob_refcnt.i.19, align 8, !dbg !2161, !tbaa !891
  %dec.i.20 = add i64 %20, -1, !dbg !2161
  store i64 %dec.i.20, i64* %ob_refcnt.i.19, align 8, !dbg !2161, !tbaa !891
  %cmp1.i.21 = icmp eq i64 %dec.i.20, 0, !dbg !2161
  br i1 %cmp1.i.21, label %if.else.i.25, label %cleanup, !dbg !2162

if.else.i.25:                                     ; preds = %if.end.i.22
  %ob_type.i.23 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2163
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.23, align 8, !dbg !2163, !tbaa !1064
  %tp_dealloc.i.24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !2163
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.24, align 8, !dbg !2163, !tbaa !1065
  call void %22(%struct._object* %call12) #2, !dbg !2163
  br label %cleanup, !dbg !2164

cleanup:                                          ; preds = %if.else.i.25, %if.end.i.22, %if.end.11, %if.else.i, %if.end.i, %if.end.6, %if.else, %cond.false, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %cond.false ], [ null, %if.else ], [ null, %if.end.6 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], [ null, %if.end.11 ], [ %call.i.18, %if.end.i.22 ], [ %call.i.18, %if.else.i.25 ]
  call void @llvm.lifetime.end(i64 8, i8* %3) #2, !dbg !2165
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2165
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2165
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2165
  ret %struct._object* %retval.0, !dbg !2165
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raw_unicode_escape_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !710, metadata !884), !dbg !2166
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !711, metadata !884), !dbg !2167
  %0 = bitcast %struct._object** %str to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2168
  %1 = bitcast i8** %errors to i8*, !dbg !2169
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2169
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !714, metadata !884), !dbg !2170
  store i8* null, i8** %errors, align 8, !dbg !2170, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !714, metadata !884), !dbg !2170
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !2172
  %tobool = icmp eq i32 %call, 0, !dbg !2172
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2174

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !2175, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !2176
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !712, metadata !884), !dbg !2171
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2177, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2178
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2179

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !2180
  %3 = bitcast %struct._object* %state to i32*, !dbg !2180
  %bf.load = load i32, i32* %3, align 4, !dbg !2180
  %bf.clear = and i32 %bf.load, 128, !dbg !2180
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !2180
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !2180

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !2182
  %phitmp = icmp slt i32 %call3, 0, !dbg !2182
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !2184, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !2186

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !715, metadata !884), !dbg !2184
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !2187
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !2188

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !719, metadata !884), !dbg !2189
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !2191
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2191, !tbaa !891
  %dec = add i64 %4, -1, !dbg !2191
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2191, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2191
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !2193

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !2194
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2194, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2194
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2194, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !2194
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !2196
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  %call16 = call %struct._object* @PyUnicode_AsRawUnicodeEscapeString(%struct._object* %7) #2, !dbg !2197
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !418, metadata !884) #2, !dbg !2200
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !2201
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !2202

if.end.i:                                         ; preds = %if.end.15
  %8 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !2203
  %9 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %8, align 8, !dbg !2203, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i64 0, i32 1, !dbg !2203
  %10 = load i64, i64* %length, align 8, !dbg !2203, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %10) #2, !dbg !2204
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2205
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !2206
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !2207
  %11 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2207, !tbaa !891
  %dec.i = add i64 %11, -1, !dbg !2207
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2207, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2207
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !2208

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !2209
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2209, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !2209
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2209, !tbaa !1065
  call void %13(%struct._object* %call16) #2, !dbg !2209
  br label %codec_tuple.exit, !dbg !2210

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !2210
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !713, metadata !884), !dbg !2211
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !712, metadata !884), !dbg !2171
  %14 = load %struct._object*, %struct._object** %str, align 8, !dbg !2212, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %14, i64 0, metadata !722, metadata !884), !dbg !2212
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 0, !dbg !2214
  %15 = load i64, i64* %ob_refcnt20, align 8, !dbg !2214, !tbaa !891
  %dec21 = add i64 %15, -1, !dbg !2214
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2214, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !2214
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !2216

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %14, i64 0, i32 1, !dbg !2217
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2217, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2217
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2217, !tbaa !1065
  call void %17(%struct._object* %14) #2, !dbg !2217
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2219
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2219
  ret %struct._object* %retval.0, !dbg !2219
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raw_unicode_escape_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !726, metadata !884), !dbg !2220
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !727, metadata !884), !dbg !2221
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2222
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2222
  %1 = bitcast i8** %errors to i8*, !dbg !2223
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2223
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !729, metadata !884), !dbg !2224
  store i8* null, i8** %errors, align 8, !dbg !2224, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !728, metadata !884), !dbg !2225
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !729, metadata !884), !dbg !2224
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors) #2, !dbg !2226
  %tobool = icmp eq i32 %call, 0, !dbg !2226
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2228

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !2229
  %2 = load i8*, i8** %buf, align 8, !dbg !2229, !tbaa !1178
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !2230
  %3 = load i64, i64* %len, align 8, !dbg !2230, !tbaa !1173
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !729, metadata !884), !dbg !2224
  %4 = load i8*, i8** %errors, align 8, !dbg !2231, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8* %2, i64 %3, i8* %4) #2, !dbg !2232
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !730, metadata !884), !dbg !2233
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !728, metadata !884), !dbg !2225
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !2234
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !2235
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !418, metadata !884) #2, !dbg !2237
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !2238
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2239

if.end.i:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8, !dbg !2240, !tbaa !1173
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %5) #2, !dbg !2241
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2242
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !2243
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2244
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2244, !tbaa !891
  %dec.i = add i64 %6, -1, !dbg !2244
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2244, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2244
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2245

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2246
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2246, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2246
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2246, !tbaa !1065
  call void %8(%struct._object* %call1) #2, !dbg !2246
  br label %cleanup, !dbg !2247

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2248
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2248
  ret %struct._object* %retval.0, !dbg !2248
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @latin_1_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !733, metadata !884), !dbg !2249
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !734, metadata !884), !dbg !2250
  %0 = bitcast %struct._object** %str to i8*, !dbg !2251
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2251
  %1 = bitcast i8** %errors to i8*, !dbg !2252
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2252
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !737, metadata !884), !dbg !2253
  store i8* null, i8** %errors, align 8, !dbg !2253, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !737, metadata !884), !dbg !2253
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !2255
  %tobool = icmp eq i32 %call, 0, !dbg !2255
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2257

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !2258, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !2259
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !735, metadata !884), !dbg !2254
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2260, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2261
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2262

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !2263
  %3 = bitcast %struct._object* %state to i32*, !dbg !2263
  %bf.load = load i32, i32* %3, align 4, !dbg !2263
  %bf.clear = and i32 %bf.load, 128, !dbg !2263
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !2263
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !2263

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !2265
  %phitmp = icmp slt i32 %call3, 0, !dbg !2265
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !2267, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !2269

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !738, metadata !884), !dbg !2267
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !2270
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !2271

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !742, metadata !884), !dbg !2272
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !2274
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !891
  %dec = add i64 %4, -1, !dbg !2274
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2274
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !2276

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !2277
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2277, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2277
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2277, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !2277
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !2279
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !737, metadata !884), !dbg !2253
  %8 = load i8*, i8** %errors, align 8, !dbg !2280, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_AsLatin1String(%struct._object* %7, i8* %8) #2, !dbg !2281
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !2284
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !2285
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !2286

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !2287
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !2287, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !2287
  %11 = load i64, i64* %length, align 8, !dbg !2287, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !2288
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2289
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !2290
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !2291
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2291, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !2291
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2291, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2291
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !2292

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !2293
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2293, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2293
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2293, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !2293
  br label %codec_tuple.exit, !dbg !2294

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !2294
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !736, metadata !884), !dbg !2295
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !735, metadata !884), !dbg !2254
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !2296, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !745, metadata !884), !dbg !2296
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2298
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !2298, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !2298
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2298, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !2298
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !2300

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !2301
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2301, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2301
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2301, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !2301
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2303
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2303
  ret %struct._object* %retval.0, !dbg !2303
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @latin_1_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !749, metadata !884), !dbg !2304
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !750, metadata !884), !dbg !2305
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2306
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2306
  %1 = bitcast i8** %errors to i8*, !dbg !2307
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2307
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !753, metadata !884), !dbg !2308
  store i8* null, i8** %errors, align 8, !dbg !2308, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !751, metadata !884), !dbg !2309
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !753, metadata !884), !dbg !2308
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors) #2, !dbg !2310
  %tobool = icmp eq i32 %call, 0, !dbg !2310
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2312

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !2313
  %2 = load i8*, i8** %buf, align 8, !dbg !2313, !tbaa !1178
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !2314
  %3 = load i64, i64* %len, align 8, !dbg !2314, !tbaa !1173
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !753, metadata !884), !dbg !2308
  %4 = load i8*, i8** %errors, align 8, !dbg !2315, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_DecodeLatin1(i8* %2, i64 %3, i8* %4) #2, !dbg !2316
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !752, metadata !884), !dbg !2317
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !751, metadata !884), !dbg !2309
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !2318
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !2319
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !418, metadata !884) #2, !dbg !2321
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !2322
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2323

if.end.i:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8, !dbg !2324, !tbaa !1173
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %5) #2, !dbg !2325
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2326
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !2327
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2328
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2328, !tbaa !891
  %dec.i = add i64 %6, -1, !dbg !2328
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2328, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2328
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2329

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2330
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2330, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2330
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2330, !tbaa !1065
  call void %8(%struct._object* %call1) #2, !dbg !2330
  br label %cleanup, !dbg !2331

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2332
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2332
  ret %struct._object* %retval.0, !dbg !2332
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !756, metadata !884), !dbg !2333
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !757, metadata !884), !dbg !2334
  %0 = bitcast %struct._object** %str to i8*, !dbg !2335
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2335
  %1 = bitcast i8** %errors to i8*, !dbg !2336
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2336
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !760, metadata !884), !dbg !2337
  store i8* null, i8** %errors, align 8, !dbg !2337, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !760, metadata !884), !dbg !2337
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors) #2, !dbg !2339
  %tobool = icmp eq i32 %call, 0, !dbg !2339
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2341

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  %2 = load %struct._object*, %struct._object** %str, align 8, !dbg !2342, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2) #2, !dbg !2343
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !758, metadata !884), !dbg !2338
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2344, !tbaa !906
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2345
  br i1 %cmp, label %cleanup, label %lor.lhs.false, !dbg !2346

lor.lhs.false:                                    ; preds = %if.end
  %state = getelementptr inbounds %struct._object, %struct._object* %call1, i64 2, !dbg !2347
  %3 = bitcast %struct._object* %state to i32*, !dbg !2347
  %bf.load = load i32, i32* %3, align 4, !dbg !2347
  %bf.clear = and i32 %bf.load, 128, !dbg !2347
  %tobool2 = icmp eq i32 %bf.clear, 0, !dbg !2347
  br i1 %tobool2, label %cond.false, label %if.end.15, !dbg !2347

cond.false:                                       ; preds = %lor.lhs.false
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %call1) #2, !dbg !2349
  %phitmp = icmp slt i32 %call3, 0, !dbg !2349
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !2351, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.15, !dbg !2353

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !761, metadata !884), !dbg !2351
  %cmp6 = icmp eq %struct._object* %.pr, null, !dbg !2354
  br i1 %cmp6, label %cleanup, label %do.body.8, !dbg !2355

do.body.8:                                        ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !765, metadata !884), !dbg !2356
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !2358
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2358, !tbaa !891
  %dec = add i64 %4, -1, !dbg !2358
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2358, !tbaa !891
  %cmp9 = icmp eq i64 %dec, 0, !dbg !2358
  br i1 %cmp9, label %if.else, label %cleanup, !dbg !2360

if.else:                                          ; preds = %do.body.8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !2361
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2361, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2361
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2361, !tbaa !1065
  call void %6(%struct._object* %.pr) #2, !dbg !2361
  br label %cleanup

if.end.15:                                        ; preds = %cond.false, %lor.lhs.false
  %7 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !2363
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !760, metadata !884), !dbg !2337
  %8 = load i8*, i8** %errors, align 8, !dbg !2364, !tbaa !906
  %call16 = call %struct._object* @_PyUnicode_AsASCIIString(%struct._object* %7, i8* %8) #2, !dbg !2365
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !417, metadata !884) #2, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %11, i64 0, metadata !418, metadata !884) #2, !dbg !2368
  %cmp.i = icmp eq %struct._object* %call16, null, !dbg !2369
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !2370

if.end.i:                                         ; preds = %if.end.15
  %9 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !2371
  %10 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %9, align 8, !dbg !2371, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i64 0, i32 1, !dbg !2371
  %11 = load i64, i64* %length, align 8, !dbg !2371, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call16, i64 %11) #2, !dbg !2372
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2373
  call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !420, metadata !884) #2, !dbg !2374
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 0, !dbg !2375
  %12 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2375, !tbaa !891
  %dec.i = add i64 %12, -1, !dbg !2375
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2375, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2375
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !2376

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call16, i64 0, i32 1, !dbg !2377
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2377, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2377
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2377, !tbaa !1065
  call void %14(%struct._object* %call16) #2, !dbg !2377
  br label %codec_tuple.exit, !dbg !2378

codec_tuple.exit:                                 ; preds = %if.end.15, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.15 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !2378
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !759, metadata !884), !dbg !2379
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !758, metadata !884), !dbg !2338
  %15 = load %struct._object*, %struct._object** %str, align 8, !dbg !2380, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !768, metadata !884), !dbg !2380
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 0, !dbg !2382
  %16 = load i64, i64* %ob_refcnt20, align 8, !dbg !2382, !tbaa !891
  %dec21 = add i64 %16, -1, !dbg !2382
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2382, !tbaa !891
  %cmp22 = icmp eq i64 %dec21, 0, !dbg !2382
  br i1 %cmp22, label %if.else.24, label %cleanup, !dbg !2384

if.else.24:                                       ; preds = %codec_tuple.exit
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %15, i64 0, i32 1, !dbg !2385
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2385, !tbaa !1064
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2385
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2385, !tbaa !1065
  call void %18(%struct._object* %15) #2, !dbg !2385
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.24, %codec_tuple.exit, %do.body, %do.body.8, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.8 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.24 ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2387
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2387
  ret %struct._object* %retval.0, !dbg !2387
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !772, metadata !884), !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !773, metadata !884), !dbg !2389
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2390
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2390
  %1 = bitcast i8** %errors to i8*, !dbg !2391
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2391
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !776, metadata !884), !dbg !2392
  store i8* null, i8** %errors, align 8, !dbg !2392, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !774, metadata !884), !dbg !2393
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !776, metadata !884), !dbg !2392
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors) #2, !dbg !2394
  %tobool = icmp eq i32 %call, 0, !dbg !2394
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2396

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !2397
  %2 = load i8*, i8** %buf, align 8, !dbg !2397, !tbaa !1178
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !2398
  %3 = load i64, i64* %len, align 8, !dbg !2398, !tbaa !1173
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !776, metadata !884), !dbg !2392
  %4 = load i8*, i8** %errors, align 8, !dbg !2399, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_DecodeASCII(i8* %2, i64 %3, i8* %4) #2, !dbg !2400
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !775, metadata !884), !dbg !2401
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !774, metadata !884), !dbg !2393
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !2402
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !418, metadata !884) #2, !dbg !2405
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !2406
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2407

if.end.i:                                         ; preds = %if.end
  %5 = load i64, i64* %len, align 8, !dbg !2408, !tbaa !1173
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %5) #2, !dbg !2409
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2410
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !2411
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2412
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2412, !tbaa !891
  %dec.i = add i64 %6, -1, !dbg !2412
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2412, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2412
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2413

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2414
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2414, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2414
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2414, !tbaa !1065
  call void %8(%struct._object* %call1) #2, !dbg !2414
  br label %cleanup, !dbg !2415

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2416
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2416
  ret %struct._object* %retval.0, !dbg !2416
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %str = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %mapping = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !779, metadata !884), !dbg !2417
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !780, metadata !884), !dbg !2418
  %0 = bitcast %struct._object** %str to i8*, !dbg !2419
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2419
  %1 = bitcast i8** %errors to i8*, !dbg !2420
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2420
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !783, metadata !884), !dbg !2421
  store i8* null, i8** %errors, align 8, !dbg !2421, !tbaa !906
  %2 = bitcast %struct._object** %mapping to i8*, !dbg !2422
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2422
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !784, metadata !884), !dbg !2423
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !2423, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !783, metadata !884), !dbg !2421
  tail call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !784, metadata !884), !dbg !2423
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i64 0, i64 0), %struct._object** nonnull %str, i8** nonnull %errors, %struct._object** nonnull %mapping) #2, !dbg !2425
  %tobool = icmp eq i32 %call, 0, !dbg !2425
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2427

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !784, metadata !884), !dbg !2423
  %3 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2428, !tbaa !906
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !2430
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2431

if.then.1:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !784, metadata !884), !dbg !2423
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !2432, !tbaa !906
  br label %if.end.2, !dbg !2433

if.end.2:                                         ; preds = %if.then.1, %if.end
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2434, !tbaa !906
  %call3 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4) #2, !dbg !2435
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !781, metadata !884), !dbg !2424
  store %struct._object* %call3, %struct._object** %str, align 8, !dbg !2436, !tbaa !906
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !2437
  br i1 %cmp4, label %cleanup, label %lor.lhs.false, !dbg !2438

lor.lhs.false:                                    ; preds = %if.end.2
  %state = getelementptr inbounds %struct._object, %struct._object* %call3, i64 2, !dbg !2439
  %5 = bitcast %struct._object* %state to i32*, !dbg !2439
  %bf.load = load i32, i32* %5, align 4, !dbg !2439
  %bf.clear = and i32 %bf.load, 128, !dbg !2439
  %tobool5 = icmp eq i32 %bf.clear, 0, !dbg !2439
  br i1 %tobool5, label %cond.false, label %if.end.18, !dbg !2439

cond.false:                                       ; preds = %lor.lhs.false
  %call6 = call i32 @_PyUnicode_Ready(%struct._object* %call3) #2, !dbg !2441
  %phitmp = icmp slt i32 %call6, 0, !dbg !2441
  %.pr = load %struct._object*, %struct._object** %str, align 8, !dbg !2443, !tbaa !906
  br i1 %phitmp, label %do.body, label %if.end.18, !dbg !2445

do.body:                                          ; preds = %cond.false
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !785, metadata !884), !dbg !2443
  %cmp9 = icmp eq %struct._object* %.pr, null, !dbg !2446
  br i1 %cmp9, label %cleanup, label %do.body.11, !dbg !2447

do.body.11:                                       ; preds = %do.body
  call void @llvm.dbg.value(metadata %struct._object* %.pr, i64 0, metadata !789, metadata !884), !dbg !2448
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 0, !dbg !2450
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2450, !tbaa !891
  %dec = add i64 %6, -1, !dbg !2450
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2450, !tbaa !891
  %cmp12 = icmp eq i64 %dec, 0, !dbg !2450
  br i1 %cmp12, label %if.else, label %cleanup, !dbg !2452

if.else:                                          ; preds = %do.body.11
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %.pr, i64 0, i32 1, !dbg !2453
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2453, !tbaa !1064
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2453
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2453, !tbaa !1065
  call void %8(%struct._object* %.pr) #2, !dbg !2453
  br label %cleanup

if.end.18:                                        ; preds = %cond.false, %lor.lhs.false
  %9 = phi %struct._object* [ %call3, %lor.lhs.false ], [ %.pr, %cond.false ], !dbg !2455
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !784, metadata !884), !dbg !2423
  %10 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2456, !tbaa !906
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !783, metadata !884), !dbg !2421
  %11 = load i8*, i8** %errors, align 8, !dbg !2457, !tbaa !906
  %call19 = call %struct._object* @_PyUnicode_EncodeCharmap(%struct._object* %9, %struct._object* %10, i8* %11) #2, !dbg !2458
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !417, metadata !884) #2, !dbg !2459
  call void @llvm.dbg.value(metadata i64 %14, i64 0, metadata !418, metadata !884) #2, !dbg !2461
  %cmp.i = icmp eq %struct._object* %call19, null, !dbg !2462
  br i1 %cmp.i, label %codec_tuple.exit, label %if.end.i, !dbg !2463

if.end.i:                                         ; preds = %if.end.18
  %12 = bitcast %struct._object** %str to %struct.PyASCIIObject**, !dbg !2464
  %13 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %12, align 8, !dbg !2464, !tbaa !906
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i64 0, i32 1, !dbg !2464
  %14 = load i64, i64* %length, align 8, !dbg !2464, !tbaa !1139
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call19, i64 %14) #2, !dbg !2465
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2466
  call void @llvm.dbg.value(metadata %struct._object* %call19, i64 0, metadata !420, metadata !884) #2, !dbg !2467
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 0, !dbg !2468
  %15 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2468, !tbaa !891
  %dec.i = add i64 %15, -1, !dbg !2468
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2468, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2468
  br i1 %cmp1.i, label %if.else.i, label %codec_tuple.exit, !dbg !2469

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call19, i64 0, i32 1, !dbg !2470
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2470, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2470
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2470, !tbaa !1065
  call void %17(%struct._object* %call19) #2, !dbg !2470
  br label %codec_tuple.exit, !dbg !2471

codec_tuple.exit:                                 ; preds = %if.end.18, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %if.end.18 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ], !dbg !2471
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !782, metadata !884), !dbg !2472
  call void @llvm.dbg.value(metadata %struct._object** %str, i64 0, metadata !781, metadata !884), !dbg !2424
  %18 = load %struct._object*, %struct._object** %str, align 8, !dbg !2473, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !792, metadata !884), !dbg !2473
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !2475
  %19 = load i64, i64* %ob_refcnt23, align 8, !dbg !2475, !tbaa !891
  %dec24 = add i64 %19, -1, !dbg !2475
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !2475, !tbaa !891
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !2475
  br i1 %cmp25, label %if.else.27, label %cleanup, !dbg !2477

if.else.27:                                       ; preds = %codec_tuple.exit
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !2478
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !2478, !tbaa !1064
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2478
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !2478, !tbaa !1065
  call void %21(%struct._object* %18) #2, !dbg !2478
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.else.27, %codec_tuple.exit, %do.body, %do.body.11, %if.else, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.else ], [ null, %do.body.11 ], [ null, %do.body ], [ %retval.0.i, %codec_tuple.exit ], [ %retval.0.i, %if.else.27 ], [ null, %if.end.2 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2480
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2480
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2480
  ret %struct._object* %retval.0, !dbg !2480
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_decode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %mapping = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !796, metadata !884), !dbg !2481
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !797, metadata !884), !dbg !2482
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2483
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2483
  %1 = bitcast i8** %errors to i8*, !dbg !2484
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2484
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !800, metadata !884), !dbg !2485
  store i8* null, i8** %errors, align 8, !dbg !2485, !tbaa !906
  %2 = bitcast %struct._object** %mapping to i8*, !dbg !2486
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !801, metadata !884), !dbg !2487
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !2487, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !798, metadata !884), !dbg !2488
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !800, metadata !884), !dbg !2485
  tail call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !801, metadata !884), !dbg !2487
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i64 0, i64 0), %struct.bufferinfo* nonnull %pbuf, i8** nonnull %errors, %struct._object** nonnull %mapping) #2, !dbg !2489
  %tobool = icmp eq i32 %call, 0, !dbg !2489
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2491

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !801, metadata !884), !dbg !2487
  %3 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !2492, !tbaa !906
  %cmp = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !2494
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2495

if.then.1:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !801, metadata !884), !dbg !2487
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !2496, !tbaa !906
  br label %if.end.2, !dbg !2497

if.end.2:                                         ; preds = %if.then.1, %if.end
  %4 = phi %struct._object* [ null, %if.then.1 ], [ %3, %if.end ], !dbg !2498
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 0, !dbg !2499
  %5 = load i8*, i8** %buf, align 8, !dbg !2499, !tbaa !1178
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i64 0, i32 2, !dbg !2500
  %6 = load i64, i64* %len, align 8, !dbg !2500, !tbaa !1173
  call void @llvm.dbg.value(metadata %struct._object** %mapping, i64 0, metadata !801, metadata !884), !dbg !2487
  call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !800, metadata !884), !dbg !2485
  %7 = load i8*, i8** %errors, align 8, !dbg !2501, !tbaa !906
  %call3 = call %struct._object* @PyUnicode_DecodeCharmap(i8* %5, i64 %6, %struct._object* %4, i8* %7) #2, !dbg !2502
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !799, metadata !884), !dbg !2503
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pbuf, i64 0, metadata !798, metadata !884), !dbg !2488
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pbuf) #2, !dbg !2504
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !417, metadata !884) #2, !dbg !2505
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !418, metadata !884) #2, !dbg !2507
  %cmp.i = icmp eq %struct._object* %call3, null, !dbg !2508
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2509

if.end.i:                                         ; preds = %if.end.2
  %8 = load i64, i64* %len, align 8, !dbg !2510, !tbaa !1173
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call3, i64 %8) #2, !dbg !2511
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2512
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !420, metadata !884) #2, !dbg !2513
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 0, !dbg !2514
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2514, !tbaa !891
  %dec.i = add i64 %9, -1, !dbg !2514
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2514, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2514
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2515

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call3, i64 0, i32 1, !dbg !2516
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2516, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2516
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2516, !tbaa !1065
  call void %11(%struct._object* %call3) #2, !dbg !2516
  br label %cleanup, !dbg !2517

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end.2, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end.2 ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #2, !dbg !2518
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2518
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2518
  ret %struct._object* %retval.0, !dbg !2518
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_build(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %map = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !804, metadata !884), !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !805, metadata !884), !dbg !2520
  %0 = bitcast %struct._object** %map to i8*, !dbg !2521
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2521
  tail call void @llvm.dbg.value(metadata %struct._object** %map, i64 0, metadata !806, metadata !884), !dbg !2522
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0), %struct._object** nonnull %map) #2, !dbg !2523
  %tobool = icmp eq i32 %call, 0, !dbg !2523
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2525

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %map, i64 0, metadata !806, metadata !884), !dbg !2522
  %1 = load %struct._object*, %struct._object** %map, align 8, !dbg !2526, !tbaa !906
  %call1 = call %struct._object* @PyUnicode_BuildEncodingMap(%struct._object* %1) #2, !dbg !2527
  br label %cleanup, !dbg !2528

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2529
  ret %struct._object* %retval.0, !dbg !2529
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @readbuffer_encode(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %pdata = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !809, metadata !884), !dbg !2530
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !810, metadata !884), !dbg !2531
  %0 = bitcast %struct.bufferinfo* %pdata to i8*, !dbg !2532
  call void @llvm.lifetime.start(i64 80, i8* %0) #2, !dbg !2532
  %1 = bitcast i8** %errors to i8*, !dbg !2533
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2533
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !814, metadata !884), !dbg !2534
  store i8* null, i8** %errors, align 8, !dbg !2534, !tbaa !906
  tail call void @llvm.dbg.value(metadata %struct.bufferinfo* %pdata, i64 0, metadata !811, metadata !884), !dbg !2535
  tail call void @llvm.dbg.value(metadata i8** %errors, i64 0, metadata !814, metadata !884), !dbg !2534
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i64 0, i64 0), %struct.bufferinfo* nonnull %pdata, i8** nonnull %errors) #2, !dbg !2536
  %tobool = icmp eq i32 %call, 0, !dbg !2536
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2538

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i64 0, i32 0, !dbg !2539
  %2 = load i8*, i8** %buf, align 8, !dbg !2539, !tbaa !1178
  call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !812, metadata !884), !dbg !2540
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i64 0, i32 2, !dbg !2541
  %3 = load i64, i64* %len, align 8, !dbg !2541, !tbaa !1173
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !813, metadata !884), !dbg !2542
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %2, i64 %3) #2, !dbg !2543
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !815, metadata !884), !dbg !2544
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %pdata, i64 0, metadata !811, metadata !884), !dbg !2535
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %pdata) #2, !dbg !2545
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !417, metadata !884) #2, !dbg !2546
  call void @llvm.dbg.value(metadata i64 %3, i64 0, metadata !418, metadata !884) #2, !dbg !2548
  %cmp.i = icmp eq %struct._object* %call1, null, !dbg !2549
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2550

if.end.i:                                         ; preds = %if.end
  %call.i = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._object* %call1, i64 %3) #2, !dbg !2551
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !419, metadata !884) #2, !dbg !2552
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !420, metadata !884) #2, !dbg !2553
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2554
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2554, !tbaa !891
  %dec.i = add i64 %4, -1, !dbg !2554
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2554, !tbaa !891
  %cmp1.i = icmp eq i64 %dec.i, 0, !dbg !2554
  br i1 %cmp1.i, label %if.else.i, label %cleanup, !dbg !2555

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2556
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2556, !tbaa !1064
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2556
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2556, !tbaa !1065
  call void %6(%struct._object* %call1) #2, !dbg !2556
  br label %cleanup, !dbg !2557

cleanup:                                          ; preds = %if.else.i, %if.end.i, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call.i, %if.end.i ], [ %call.i, %if.else.i ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2558
  call void @llvm.lifetime.end(i64 80, i8* %0) #2, !dbg !2558
  ret %struct._object* %retval.0, !dbg !2558
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @register_error(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %name = alloca i8*, align 8
  %handler = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !818, metadata !884), !dbg !2559
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !819, metadata !884), !dbg !2560
  %0 = bitcast i8** %name to i8*, !dbg !2561
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2561
  %1 = bitcast %struct._object** %handler to i8*, !dbg !2562
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !2562
  tail call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !820, metadata !884), !dbg !2563
  tail call void @llvm.dbg.value(metadata %struct._object** %handler, i64 0, metadata !821, metadata !884), !dbg !2564
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0), i8** nonnull %name, %struct._object** nonnull %handler) #2, !dbg !2565
  %tobool = icmp eq i32 %call, 0, !dbg !2565
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2567

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !820, metadata !884), !dbg !2563
  %2 = load i8*, i8** %name, align 8, !dbg !2568, !tbaa !906
  call void @llvm.dbg.value(metadata %struct._object** %handler, i64 0, metadata !821, metadata !884), !dbg !2564
  %3 = load %struct._object*, %struct._object** %handler, align 8, !dbg !2570, !tbaa !906
  %call1 = call i32 @PyCodec_RegisterError(i8* %2, %struct._object* %3) #2, !dbg !2571
  %tobool2 = icmp eq i32 %call1, 0, !dbg !2571
  br i1 %tobool2, label %if.end.4, label %cleanup, !dbg !2572

if.end.4:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2573, !tbaa !891
  %inc = add i64 %4, 1, !dbg !2573
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2573, !tbaa !891
  br label %cleanup, !dbg !2573

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #2, !dbg !2574
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2574
  ret %struct._object* %retval.0, !dbg !2574
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lookup_error(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %name = alloca i8*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !824, metadata !884), !dbg !2575
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !825, metadata !884), !dbg !2576
  %0 = bitcast i8** %name to i8*, !dbg !2577
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !2577
  tail call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !826, metadata !884), !dbg !2578
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %args, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i64 0, i64 0), i8** nonnull %name) #2, !dbg !2579
  %tobool = icmp eq i32 %call, 0, !dbg !2579
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2581

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i8** %name, i64 0, metadata !826, metadata !884), !dbg !2578
  %1 = load i8*, i8** %name, align 8, !dbg !2582, !tbaa !906
  %call1 = call %struct._object* @PyCodec_LookupError(i8* %1) #2, !dbg !2583
  br label %cleanup, !dbg !2584

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #2, !dbg !2585
  ret %struct._object* %retval.0, !dbg !2585
}

declare i32 @PyCodec_Register(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyCodec_Lookup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i8* @PyUnicode_GetDefaultEncoding() #1

declare %struct._object* @PyCodec_Encode(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyCodec_Decode(%struct._object*, i8*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare %struct._object* @_Py_BuildValue_SizeT(i8*, ...) #1

declare %struct._object* @PyBytes_DecodeEscape(i8*, i64, i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_FromObject(%struct._object*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare %struct._object* @PyUnicode_AsEncodedString(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyUnicode_DecodeUTF8Stateful(i8*, i64, i8*, i64*) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare %struct._object* @_PyUnicode_EncodeUTF7(%struct._object*, i32, i32, i8*) #1

declare %struct._object* @PyUnicode_DecodeUTF7Stateful(i8*, i64, i8*, i64*) #1

declare %struct._object* @_PyUnicode_EncodeUTF16(%struct._object*, i8*, i32) #1

declare %struct._object* @PyUnicode_DecodeUTF16Stateful(i8*, i64, i8*, i32*, i64*) #1

declare %struct._object* @_PyUnicode_EncodeUTF32(%struct._object*, i8*, i32) #1

declare %struct._object* @PyUnicode_DecodeUTF32Stateful(i8*, i64, i8*, i32*, i64*) #1

declare %struct._object* @PyUnicode_AsUnicodeEscapeString(%struct._object*) #1

declare %struct._object* @PyUnicode_DecodeUnicodeEscape(i8*, i64, i8*) #1

declare i32 @PyErr_WarnEx(%struct._object*, i8*, i64) #1

declare i32* @PyUnicode_AsUnicodeAndSize(%struct._object*, i64*) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32 @PyObject_AsReadBuffer(%struct._object*, i8**, i64*) #1

declare %struct._object* @_PyUnicode_DecodeUnicodeInternal(i8*, i64, i8*) #1

declare %struct._object* @PyUnicode_AsRawUnicodeEscapeString(%struct._object*) #1

declare %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8*, i64, i8*) #1

declare %struct._object* @_PyUnicode_AsLatin1String(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_DecodeLatin1(i8*, i64, i8*) #1

declare %struct._object* @_PyUnicode_AsASCIIString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_DecodeASCII(i8*, i64, i8*) #1

declare %struct._object* @_PyUnicode_EncodeCharmap(%struct._object*, %struct._object*, i8*) #1

declare %struct._object* @PyUnicode_DecodeCharmap(i8*, i64, %struct._object*, i8*) #1

declare %struct._object* @PyUnicode_BuildEncodingMap(%struct._object*) #1

declare i32 @PyCodec_RegisterError(i8*, %struct._object*) #1

declare %struct._object* @PyCodec_LookupError(i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!879, !880}
!llvm.ident = !{!881}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !374, globals: !827)
!1 = !DIFile(filename: "./Modules/_codecsmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !343, !10, !94, !344, !352, !28, !371}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !7, file: !6, line: 108, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !6, line: 334, size: 3200, align: 64, elements: !20)
!20 = !{!21, !27, !31, !32, !33, !38, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !291, !309, !310, !311, !313, !315, !316, !318, !323, !328, !333, !334, !335, !336, !337, !338, !339, !340, !342}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !19, file: !6, line: 335, baseType: !22, size: 192, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !6, line: 114, baseType: !23)
!23 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 111, size: 192, align: 64, elements: !24)
!24 = !{!25, !26}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !6, line: 112, baseType: !5, size: 128, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !23, file: !6, line: 113, baseType: !10, size: 64, align: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !19, file: !6, line: 336, baseType: !28, size: 64, align: 64, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 256)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !19, file: !6, line: 337, baseType: !10, size: 64, align: 64, offset: 320)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !19, file: !6, line: 341, baseType: !34, size: 64, align: 64, offset: 384)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !6, line: 308, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !4}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !19, file: !6, line: 342, baseType: !39, size: 64, align: 64, offset: 448)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !6, line: 314, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{!43, !4, !44, !43}
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 48, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 246, size: 1728, align: 64, elements: !48)
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!48 = !{!49, !50, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !70, !71, !72, !73, !75, !77, !79, !83, !86, !88, !90, !91, !92, !93, !97, !98}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 247, baseType: !43, size: 32, align: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 252, baseType: !51, size: 64, align: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 253, baseType: !51, size: 64, align: 64, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 254, baseType: !51, size: 64, align: 64, offset: 192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 255, baseType: !51, size: 64, align: 64, offset: 256)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 256, baseType: !51, size: 64, align: 64, offset: 320)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 257, baseType: !51, size: 64, align: 64, offset: 384)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 258, baseType: !51, size: 64, align: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 259, baseType: !51, size: 64, align: 64, offset: 512)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 261, baseType: !51, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 262, baseType: !51, size: 64, align: 64, offset: 640)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 263, baseType: !51, size: 64, align: 64, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 265, baseType: !63, size: 64, align: 64, offset: 768)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 161, size: 192, align: 64, elements: !65)
!65 = !{!66, !67, !69}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !64, file: !47, line: 162, baseType: !63, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !64, file: !47, line: 163, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !64, file: !47, line: 167, baseType: !43, size: 32, align: 32, offset: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 267, baseType: !68, size: 64, align: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 269, baseType: !43, size: 32, align: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 273, baseType: !43, size: 32, align: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 275, baseType: !74, size: 64, align: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !15, line: 140, baseType: !16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 279, baseType: !76, size: 16, align: 16, offset: 1024)
!76 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 280, baseType: !78, size: 8, align: 8, offset: 1040)
!78 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 281, baseType: !80, size: 8, align: 8, offset: 1048)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8, align: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 285, baseType: !84, size: 64, align: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 155, baseType: null)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 294, baseType: !87, size: 64, align: 64, offset: 1152)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !15, line: 141, baseType: !16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !46, file: !47, line: 303, baseType: !89, size: 64, align: 64, offset: 1216)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !46, file: !47, line: 304, baseType: !89, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !46, file: !47, line: 305, baseType: !89, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !46, file: !47, line: 306, baseType: !89, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 309, baseType: !43, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !19, file: !6, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !6, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!4, !4, !51}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !19, file: !6, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !6, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!43, !4, !51, !4}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !19, file: !6, line: 345, baseType: !89, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !19, file: !6, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !6, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!4, !4}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !19, file: !6, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !6, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !6, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !6, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !4, !4}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !6, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !6, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !6, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !6, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !6, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !6, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!4, !4, !4, !4}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !6, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !6, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !6, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !6, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !6, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !6, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!43, !4}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !6, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !6, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !6, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !6, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !6, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !6, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !6, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !6, line: 258, baseType: !89, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !6, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !6, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !6, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !6, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !6, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !6, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !6, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !6, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !6, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !6, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !6, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !6, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !6, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !6, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !6, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !6, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !19, file: !6, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !6, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !6, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !6, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!10, !4}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !6, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !6, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !6, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!4, !4, !10}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !6, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !6, line: 285, baseType: !89, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !6, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !6, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!43, !4, !10, !4}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !6, line: 287, baseType: !89, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !6, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !6, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!43, !4, !4}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !6, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !6, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !19, file: !6, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !6, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !6, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !6, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !6, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !6, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!43, !4, !4, !4}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !19, file: !6, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !6, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !4}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !11, line: 186, baseType: !10)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !19, file: !6, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !19, file: !6, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !19, file: !6, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !6, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !19, file: !6, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !6, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !19, file: !6, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !6, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !6, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !6, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!43, !4, !235, !43}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !6, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !6, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !6, line: 179, baseType: !89, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !6, line: 180, baseType: !4, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !6, line: 181, baseType: !10, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !6, line: 182, baseType: !10, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !6, line: 184, baseType: !43, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !6, line: 185, baseType: !43, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !6, line: 186, baseType: !51, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !6, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !6, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !6, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !6, line: 190, baseType: !89, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !6, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !6, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !4, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !19, file: !6, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !19, file: !6, line: 368, baseType: !28, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !19, file: !6, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !6, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!43, !4, !263, !89}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !6, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!43, !4, !89}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !19, file: !6, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !19, file: !6, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !6, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!4, !4, !4, !43}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !19, file: !6, line: 382, baseType: !10, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !19, file: !6, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !6, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !19, file: !6, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !6, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !19, file: !6, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !28, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !43, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !28, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !19, file: !6, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !6, line: 390, flags: DIFlagFwdDecl)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !19, file: !6, line: 391, baseType: !292, size: 64, align: 64, offset: 1984)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !294, line: 11, size: 320, align: 64, elements: !295)
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!295 = !{!296, !297, !302, !307, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !294, line: 12, baseType: !51, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !293, file: !294, line: 13, baseType: !298, size: 64, align: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !294, line: 8, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!4, !4, !89}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !293, file: !294, line: 14, baseType: !303, size: 64, align: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !294, line: 9, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!43, !4, !4, !89}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !293, file: !294, line: 15, baseType: !51, size: 64, align: 64, offset: 192)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !293, file: !294, line: 16, baseType: !89, size: 64, align: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !19, file: !6, line: 392, baseType: !18, size: 64, align: 64, offset: 2048)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !19, file: !6, line: 393, baseType: !4, size: 64, align: 64, offset: 2112)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !19, file: !6, line: 394, baseType: !312, size: 64, align: 64, offset: 2176)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !6, line: 325, baseType: !134)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !19, file: !6, line: 395, baseType: !314, size: 64, align: 64, offset: 2240)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !6, line: 326, baseType: !210)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !19, file: !6, line: 396, baseType: !10, size: 64, align: 64, offset: 2304)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !19, file: !6, line: 397, baseType: !317, size: 64, align: 64, offset: 2368)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !6, line: 327, baseType: !210)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !19, file: !6, line: 398, baseType: !319, size: 64, align: 64, offset: 2432)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !6, line: 329, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!4, !18, !10}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !19, file: !6, line: 399, baseType: !324, size: 64, align: 64, offset: 2496)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !6, line: 328, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!4, !18, !4, !4}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !19, file: !6, line: 400, baseType: !329, size: 64, align: 64, offset: 2560)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !6, line: 307, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !89}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !19, file: !6, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !19, file: !6, line: 402, baseType: !4, size: 64, align: 64, offset: 2688)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !19, file: !6, line: 403, baseType: !4, size: 64, align: 64, offset: 2752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !19, file: !6, line: 404, baseType: !4, size: 64, align: 64, offset: 2816)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !19, file: !6, line: 405, baseType: !4, size: 64, align: 64, offset: 2880)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !19, file: !6, line: 406, baseType: !4, size: 64, align: 64, offset: 2944)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !19, file: !6, line: 407, baseType: !34, size: 64, align: 64, offset: 3008)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !19, file: !6, line: 410, baseType: !341, size: 32, align: 32, offset: 3072)
!341 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !19, file: !6, line: 412, baseType: !34, size: 64, align: 64, offset: 3136)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !346, line: 41, baseType: !347)
!346 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 31, size: 320, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 32, baseType: !22, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !347, file: !346, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !347, file: !346, line: 34, baseType: !80, size: 8, align: 8, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !354, line: 351, baseType: !355)
!354 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!355 = !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 217, size: 384, align: 64, elements: !356)
!356 = !{!357, !358, !359, !360, !368}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !355, file: !354, line: 291, baseType: !5, size: 128, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !355, file: !354, line: 292, baseType: !10, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !355, file: !354, line: 293, baseType: !218, size: 64, align: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !355, file: !354, line: 349, baseType: !361, size: 32, align: 32, offset: 256)
!361 = !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !354, line: 294, size: 32, align: 32, elements: !362)
!362 = !{!363, !364, !365, !366, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !361, file: !354, line: 303, baseType: !341, size: 2, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !361, file: !354, line: 331, baseType: !341, size: 3, align: 32, offset: 2)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !361, file: !354, line: 336, baseType: !341, size: 1, align: 32, offset: 5)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !361, file: !354, line: 340, baseType: !341, size: 1, align: 32, offset: 6)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !361, file: !354, line: 345, baseType: !341, size: 1, align: 32, offset: 7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !355, file: !354, line: 350, baseType: !369, size: 64, align: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !95, line: 90, baseType: !43)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!374 = !{!375, !378, !382, !387, !394, !401, !415, !422, !429, !445, !454, !470, !479, !496, !512, !528, !538, !548, !558, !571, !588, !604, !620, !630, !640, !650, !663, !679, !686, !700, !708, !724, !731, !747, !754, !770, !777, !794, !802, !807, !816, !822}
!375 = !DISubprogram(name: "PyInit__codecs", scope: !1, file: !1, line: 1187, type: !376, isLocal: false, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__codecs, variables: !2)
!376 = !DISubroutineType(types: !377)
!377 = !{!4}
!378 = !DISubprogram(name: "codec_register", scope: !1, file: !1, line: 56, type: !126, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_register, variables: !379)
!379 = !{!380, !381}
!380 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !378, file: !1, line: 56, type: !4)
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search_function", arg: 2, scope: !378, file: !1, line: 56, type: !4)
!382 = !DISubprogram(name: "codec_lookup", scope: !1, file: !1, line: 71, type: !126, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_lookup, variables: !383)
!383 = !{!384, !385, !386}
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !382, file: !1, line: 71, type: !4)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !382, file: !1, line: 71, type: !4)
!386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !382, file: !1, line: 73, type: !51)
!387 = !DISubprogram(name: "codec_encode", scope: !1, file: !1, line: 92, type: !126, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_encode, variables: !388)
!388 = !{!389, !390, !391, !392, !393}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !387, file: !1, line: 92, type: !4)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !387, file: !1, line: 92, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !387, file: !1, line: 94, type: !28)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !387, file: !1, line: 95, type: !28)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !387, file: !1, line: 96, type: !4)
!394 = !DISubprogram(name: "codec_decode", scope: !1, file: !1, line: 119, type: !126, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_decode, variables: !395)
!395 = !{!396, !397, !398, !399, !400}
!396 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !394, file: !1, line: 119, type: !4)
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !394, file: !1, line: 119, type: !4)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !394, file: !1, line: 121, type: !28)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !394, file: !1, line: 122, type: !28)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !394, file: !1, line: 123, type: !4)
!401 = !DISubprogram(name: "escape_encode", scope: !1, file: !1, line: 166, type: !126, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @escape_encode, variables: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !413, !414}
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !401, file: !1, line: 166, type: !4)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !401, file: !1, line: 167, type: !4)
!405 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !401, file: !1, line: 169, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !401, file: !1, line: 170, type: !10)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newsize", scope: !401, file: !1, line: 171, type: !10)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !401, file: !1, line: 172, type: !28)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !401, file: !1, line: 173, type: !4)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !411, file: !1, line: 192, type: !10)
!411 = distinct !DILexicalBlock(scope: !412, file: !1, line: 191, column: 10)
!412 = distinct !DILexicalBlock(scope: !401, file: !1, line: 188, column: 9)
!413 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !411, file: !1, line: 193, type: !30)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !411, file: !1, line: 194, type: !51)
!415 = !DISubprogram(name: "codec_tuple", scope: !1, file: !1, line: 138, type: !184, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, variables: !416)
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unicode", arg: 1, scope: !415, file: !1, line: 138, type: !4)
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !415, file: !1, line: 139, type: !10)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !415, file: !1, line: 141, type: !4)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !421, file: !1, line: 145, type: !4)
!421 = distinct !DILexicalBlock(scope: !415, file: !1, line: 145, column: 5)
!422 = !DISubprogram(name: "escape_decode", scope: !1, file: !1, line: 151, type: !126, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @escape_decode, variables: !423)
!423 = !{!424, !425, !426, !427, !428}
!424 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !422, file: !1, line: 151, type: !4)
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !422, file: !1, line: 152, type: !4)
!426 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !422, file: !1, line: 154, type: !28)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !422, file: !1, line: 155, type: !28)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !422, file: !1, line: 156, type: !10)
!429 = !DISubprogram(name: "utf_8_encode", scope: !1, file: !1, line: 734, type: !126, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_8_encode, variables: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !440, !443}
!431 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !429, file: !1, line: 734, type: !4)
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !429, file: !1, line: 735, type: !4)
!433 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !429, file: !1, line: 737, type: !4)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !429, file: !1, line: 737, type: !4)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !429, file: !1, line: 738, type: !28)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !437, file: !1, line: 746, type: !4)
!437 = distinct !DILexicalBlock(scope: !438, file: !1, line: 746, column: 9)
!438 = distinct !DILexicalBlock(scope: !439, file: !1, line: 745, column: 50)
!439 = distinct !DILexicalBlock(scope: !429, file: !1, line: 745, column: 9)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !441, file: !1, line: 746, type: !4)
!441 = distinct !DILexicalBlock(scope: !442, file: !1, line: 746, column: 9)
!442 = distinct !DILexicalBlock(scope: !437, file: !1, line: 746, column: 9)
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !444, file: !1, line: 751, type: !4)
!444 = distinct !DILexicalBlock(scope: !429, file: !1, line: 751, column: 5)
!445 = !DISubprogram(name: "utf_8_decode", scope: !1, file: !1, line: 280, type: !126, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_8_decode, variables: !446)
!446 = !{!447, !448, !449, !450, !451, !452, !453}
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !445, file: !1, line: 280, type: !4)
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !445, file: !1, line: 281, type: !4)
!449 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !445, file: !1, line: 283, type: !236)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !445, file: !1, line: 284, type: !28)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !445, file: !1, line: 285, type: !43)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !445, file: !1, line: 286, type: !10)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !445, file: !1, line: 287, type: !4)
!454 = !DISubprogram(name: "utf_7_encode", scope: !1, file: !1, line: 712, type: !126, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_7_encode, variables: !455)
!455 = !{!456, !457, !458, !459, !460, !461, !465, !468}
!456 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !454, file: !1, line: 712, type: !4)
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !454, file: !1, line: 713, type: !4)
!458 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !454, file: !1, line: 715, type: !4)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !454, file: !1, line: 715, type: !4)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !454, file: !1, line: 716, type: !28)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !462, file: !1, line: 724, type: !4)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 724, column: 9)
!463 = distinct !DILexicalBlock(scope: !464, file: !1, line: 723, column: 50)
!464 = distinct !DILexicalBlock(scope: !454, file: !1, line: 723, column: 9)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !466, file: !1, line: 724, type: !4)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 724, column: 9)
!467 = distinct !DILexicalBlock(scope: !462, file: !1, line: 724, column: 9)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !469, file: !1, line: 729, type: !4)
!469 = distinct !DILexicalBlock(scope: !454, file: !1, line: 729, column: 5)
!470 = !DISubprogram(name: "utf_7_decode", scope: !1, file: !1, line: 257, type: !126, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_7_decode, variables: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !470, file: !1, line: 257, type: !4)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !470, file: !1, line: 258, type: !4)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !470, file: !1, line: 260, type: !236)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !470, file: !1, line: 261, type: !28)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !470, file: !1, line: 262, type: !43)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !470, file: !1, line: 263, type: !10)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !470, file: !1, line: 264, type: !4)
!479 = !DISubprogram(name: "utf_16_encode", scope: !1, file: !1, line: 763, type: !126, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_encode, variables: !480)
!480 = !{!481, !482, !483, !484, !485, !486, !487, !491, !494}
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !479, file: !1, line: 763, type: !4)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !479, file: !1, line: 764, type: !4)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !479, file: !1, line: 766, type: !4)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !479, file: !1, line: 766, type: !4)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !479, file: !1, line: 767, type: !28)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !479, file: !1, line: 768, type: !43)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !488, file: !1, line: 776, type: !4)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 776, column: 9)
!489 = distinct !DILexicalBlock(scope: !490, file: !1, line: 775, column: 50)
!490 = distinct !DILexicalBlock(scope: !479, file: !1, line: 775, column: 9)
!491 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !492, file: !1, line: 776, type: !4)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 776, column: 9)
!493 = distinct !DILexicalBlock(scope: !488, file: !1, line: 776, column: 9)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !495, file: !1, line: 781, type: !4)
!495 = distinct !DILexicalBlock(scope: !479, file: !1, line: 781, column: 5)
!496 = !DISubprogram(name: "utf_16_le_encode", scope: !1, file: !1, line: 786, type: !126, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_encode, variables: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !507, !510}
!498 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !496, file: !1, line: 786, type: !4)
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !496, file: !1, line: 787, type: !4)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !496, file: !1, line: 789, type: !4)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !496, file: !1, line: 789, type: !4)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !496, file: !1, line: 790, type: !28)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !504, file: !1, line: 798, type: !4)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 798, column: 9)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 797, column: 50)
!506 = distinct !DILexicalBlock(scope: !496, file: !1, line: 797, column: 9)
!507 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !508, file: !1, line: 798, type: !4)
!508 = distinct !DILexicalBlock(scope: !509, file: !1, line: 798, column: 9)
!509 = distinct !DILexicalBlock(scope: !504, file: !1, line: 798, column: 9)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !511, file: !1, line: 803, type: !4)
!511 = distinct !DILexicalBlock(scope: !496, file: !1, line: 803, column: 5)
!512 = !DISubprogram(name: "utf_16_be_encode", scope: !1, file: !1, line: 808, type: !126, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_encode, variables: !513)
!513 = !{!514, !515, !516, !517, !518, !519, !523, !526}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !512, file: !1, line: 808, type: !4)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !512, file: !1, line: 809, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !512, file: !1, line: 811, type: !4)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !512, file: !1, line: 811, type: !4)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !512, file: !1, line: 812, type: !28)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !520, file: !1, line: 820, type: !4)
!520 = distinct !DILexicalBlock(scope: !521, file: !1, line: 820, column: 9)
!521 = distinct !DILexicalBlock(scope: !522, file: !1, line: 819, column: 50)
!522 = distinct !DILexicalBlock(scope: !512, file: !1, line: 819, column: 9)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !524, file: !1, line: 820, type: !4)
!524 = distinct !DILexicalBlock(scope: !525, file: !1, line: 820, column: 9)
!525 = distinct !DILexicalBlock(scope: !520, file: !1, line: 820, column: 9)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !527, file: !1, line: 825, type: !4)
!527 = distinct !DILexicalBlock(scope: !512, file: !1, line: 825, column: 5)
!528 = !DISubprogram(name: "utf_16_decode", scope: !1, file: !1, line: 303, type: !126, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_decode, variables: !529)
!529 = !{!530, !531, !532, !533, !534, !535, !536, !537}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !528, file: !1, line: 303, type: !4)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !528, file: !1, line: 304, type: !4)
!532 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !528, file: !1, line: 306, type: !236)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !528, file: !1, line: 307, type: !28)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !528, file: !1, line: 308, type: !43)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !528, file: !1, line: 309, type: !43)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !528, file: !1, line: 310, type: !10)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !528, file: !1, line: 311, type: !4)
!538 = !DISubprogram(name: "utf_16_le_decode", scope: !1, file: !1, line: 326, type: !126, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_decode, variables: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547}
!540 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !538, file: !1, line: 326, type: !4)
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !538, file: !1, line: 327, type: !4)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !538, file: !1, line: 329, type: !236)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !538, file: !1, line: 330, type: !28)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !538, file: !1, line: 331, type: !43)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !538, file: !1, line: 332, type: !43)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !538, file: !1, line: 333, type: !10)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !538, file: !1, line: 334, type: !4)
!548 = !DISubprogram(name: "utf_16_be_decode", scope: !1, file: !1, line: 350, type: !126, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_decode, variables: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557}
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !548, file: !1, line: 350, type: !4)
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !548, file: !1, line: 351, type: !4)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !548, file: !1, line: 353, type: !236)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !548, file: !1, line: 354, type: !28)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !548, file: !1, line: 355, type: !43)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !548, file: !1, line: 356, type: !43)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !548, file: !1, line: 357, type: !10)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !548, file: !1, line: 358, type: !4)
!558 = !DISubprogram(name: "utf_16_ex_decode", scope: !1, file: !1, line: 382, type: !126, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_ex_decode, variables: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !558, file: !1, line: 382, type: !4)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !558, file: !1, line: 383, type: !4)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !558, file: !1, line: 385, type: !236)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !558, file: !1, line: 386, type: !28)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !558, file: !1, line: 387, type: !43)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !558, file: !1, line: 388, type: !4)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !558, file: !1, line: 388, type: !4)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !558, file: !1, line: 389, type: !43)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !558, file: !1, line: 390, type: !10)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !570, file: !1, line: 402, type: !4)
!570 = distinct !DILexicalBlock(scope: !558, file: !1, line: 402, column: 5)
!571 = !DISubprogram(name: "utf_32_encode", scope: !1, file: !1, line: 837, type: !126, isLocal: true, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_encode, variables: !572)
!572 = !{!573, !574, !575, !576, !577, !578, !579, !583, !586}
!573 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !571, file: !1, line: 837, type: !4)
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !571, file: !1, line: 838, type: !4)
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !571, file: !1, line: 840, type: !4)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !571, file: !1, line: 840, type: !4)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !571, file: !1, line: 841, type: !28)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !571, file: !1, line: 842, type: !43)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !580, file: !1, line: 850, type: !4)
!580 = distinct !DILexicalBlock(scope: !581, file: !1, line: 850, column: 9)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 849, column: 50)
!582 = distinct !DILexicalBlock(scope: !571, file: !1, line: 849, column: 9)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 850, type: !4)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 850, column: 9)
!585 = distinct !DILexicalBlock(scope: !580, file: !1, line: 850, column: 9)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !587, file: !1, line: 855, type: !4)
!587 = distinct !DILexicalBlock(scope: !571, file: !1, line: 855, column: 5)
!588 = !DISubprogram(name: "utf_32_le_encode", scope: !1, file: !1, line: 860, type: !126, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_encode, variables: !589)
!589 = !{!590, !591, !592, !593, !594, !595, !599, !602}
!590 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !588, file: !1, line: 860, type: !4)
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !588, file: !1, line: 861, type: !4)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !588, file: !1, line: 863, type: !4)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !588, file: !1, line: 863, type: !4)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !588, file: !1, line: 864, type: !28)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !596, file: !1, line: 872, type: !4)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 872, column: 9)
!597 = distinct !DILexicalBlock(scope: !598, file: !1, line: 871, column: 50)
!598 = distinct !DILexicalBlock(scope: !588, file: !1, line: 871, column: 9)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !1, line: 872, type: !4)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 872, column: 9)
!601 = distinct !DILexicalBlock(scope: !596, file: !1, line: 872, column: 9)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !1, line: 877, type: !4)
!603 = distinct !DILexicalBlock(scope: !588, file: !1, line: 877, column: 5)
!604 = !DISubprogram(name: "utf_32_be_encode", scope: !1, file: !1, line: 882, type: !126, isLocal: true, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_encode, variables: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !615, !618}
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !604, file: !1, line: 882, type: !4)
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !604, file: !1, line: 883, type: !4)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !604, file: !1, line: 885, type: !4)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !604, file: !1, line: 885, type: !4)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !604, file: !1, line: 886, type: !28)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !612, file: !1, line: 894, type: !4)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 894, column: 9)
!613 = distinct !DILexicalBlock(scope: !614, file: !1, line: 893, column: 50)
!614 = distinct !DILexicalBlock(scope: !604, file: !1, line: 893, column: 9)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !616, file: !1, line: 894, type: !4)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 894, column: 9)
!617 = distinct !DILexicalBlock(scope: !612, file: !1, line: 894, column: 9)
!618 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !619, file: !1, line: 899, type: !4)
!619 = distinct !DILexicalBlock(scope: !604, file: !1, line: 899, column: 5)
!620 = !DISubprogram(name: "utf_32_decode", scope: !1, file: !1, line: 407, type: !126, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_decode, variables: !621)
!621 = !{!622, !623, !624, !625, !626, !627, !628, !629}
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !620, file: !1, line: 407, type: !4)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !620, file: !1, line: 408, type: !4)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !620, file: !1, line: 410, type: !236)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !620, file: !1, line: 411, type: !28)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !620, file: !1, line: 412, type: !43)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !620, file: !1, line: 413, type: !43)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !620, file: !1, line: 414, type: !10)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !620, file: !1, line: 415, type: !4)
!630 = !DISubprogram(name: "utf_32_le_decode", scope: !1, file: !1, line: 430, type: !126, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_decode, variables: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639}
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !630, file: !1, line: 430, type: !4)
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !630, file: !1, line: 431, type: !4)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !630, file: !1, line: 433, type: !236)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !630, file: !1, line: 434, type: !28)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !630, file: !1, line: 435, type: !43)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !630, file: !1, line: 436, type: !43)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !630, file: !1, line: 437, type: !10)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !630, file: !1, line: 438, type: !4)
!640 = !DISubprogram(name: "utf_32_be_decode", scope: !1, file: !1, line: 453, type: !126, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_decode, variables: !641)
!641 = !{!642, !643, !644, !645, !646, !647, !648, !649}
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !640, file: !1, line: 453, type: !4)
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !640, file: !1, line: 454, type: !4)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !640, file: !1, line: 456, type: !236)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !640, file: !1, line: 457, type: !28)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !640, file: !1, line: 458, type: !43)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !640, file: !1, line: 459, type: !43)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !640, file: !1, line: 460, type: !10)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !640, file: !1, line: 461, type: !4)
!650 = !DISubprogram(name: "utf_32_ex_decode", scope: !1, file: !1, line: 484, type: !126, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_ex_decode, variables: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661}
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !650, file: !1, line: 484, type: !4)
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !650, file: !1, line: 485, type: !4)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !650, file: !1, line: 487, type: !236)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !650, file: !1, line: 488, type: !28)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !650, file: !1, line: 489, type: !43)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !650, file: !1, line: 490, type: !4)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !650, file: !1, line: 490, type: !4)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !650, file: !1, line: 491, type: !43)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !650, file: !1, line: 492, type: !10)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !662, file: !1, line: 504, type: !4)
!662 = distinct !DILexicalBlock(scope: !650, file: !1, line: 504, column: 5)
!663 = !DISubprogram(name: "unicode_escape_encode", scope: !1, file: !1, line: 904, type: !126, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_encode, variables: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !674, !677}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !663, file: !1, line: 904, type: !4)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !663, file: !1, line: 905, type: !4)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !663, file: !1, line: 907, type: !4)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !663, file: !1, line: 907, type: !4)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !663, file: !1, line: 908, type: !28)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !671, file: !1, line: 916, type: !4)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 916, column: 9)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 915, column: 50)
!673 = distinct !DILexicalBlock(scope: !663, file: !1, line: 915, column: 9)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !675, file: !1, line: 916, type: !4)
!675 = distinct !DILexicalBlock(scope: !676, file: !1, line: 916, column: 9)
!676 = distinct !DILexicalBlock(scope: !671, file: !1, line: 916, column: 9)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !1, line: 921, type: !4)
!678 = distinct !DILexicalBlock(scope: !663, file: !1, line: 921, column: 5)
!679 = !DISubprogram(name: "unicode_escape_decode", scope: !1, file: !1, line: 509, type: !126, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_decode, variables: !680)
!680 = !{!681, !682, !683, !684, !685}
!681 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !679, file: !1, line: 509, type: !4)
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !679, file: !1, line: 510, type: !4)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !679, file: !1, line: 512, type: !236)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !679, file: !1, line: 513, type: !28)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !679, file: !1, line: 514, type: !4)
!686 = !DISubprogram(name: "unicode_internal_encode", scope: !1, file: !1, line: 672, type: !126, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_encode, variables: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695}
!688 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !686, file: !1, line: 672, type: !4)
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !686, file: !1, line: 673, type: !4)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !686, file: !1, line: 675, type: !4)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !686, file: !1, line: 676, type: !28)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !686, file: !1, line: 677, type: !28)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !686, file: !1, line: 678, type: !10)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !686, file: !1, line: 678, type: !10)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !696, file: !1, line: 690, type: !698)
!696 = distinct !DILexicalBlock(scope: !697, file: !1, line: 689, column: 31)
!697 = distinct !DILexicalBlock(scope: !686, file: !1, line: 689, column: 9)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !354, line: 93, baseType: !370)
!700 = !DISubprogram(name: "unicode_internal_decode", scope: !1, file: !1, line: 229, type: !126, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_decode, variables: !701)
!701 = !{!702, !703, !704, !705, !706, !707}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !700, file: !1, line: 229, type: !4)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !700, file: !1, line: 230, type: !4)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !700, file: !1, line: 232, type: !4)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !700, file: !1, line: 233, type: !28)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !700, file: !1, line: 234, type: !28)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !700, file: !1, line: 235, type: !10)
!708 = !DISubprogram(name: "raw_unicode_escape_encode", scope: !1, file: !1, line: 926, type: !126, isLocal: true, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_encode, variables: !709)
!709 = !{!710, !711, !712, !713, !714, !715, !719, !722}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !708, file: !1, line: 926, type: !4)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !708, file: !1, line: 927, type: !4)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !708, file: !1, line: 929, type: !4)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !708, file: !1, line: 929, type: !4)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !708, file: !1, line: 930, type: !28)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !716, file: !1, line: 938, type: !4)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 938, column: 9)
!717 = distinct !DILexicalBlock(scope: !718, file: !1, line: 937, column: 50)
!718 = distinct !DILexicalBlock(scope: !708, file: !1, line: 937, column: 9)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !720, file: !1, line: 938, type: !4)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 938, column: 9)
!721 = distinct !DILexicalBlock(scope: !716, file: !1, line: 938, column: 9)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !723, file: !1, line: 943, type: !4)
!723 = distinct !DILexicalBlock(scope: !708, file: !1, line: 943, column: 5)
!724 = !DISubprogram(name: "raw_unicode_escape_decode", scope: !1, file: !1, line: 526, type: !126, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_decode, variables: !725)
!725 = !{!726, !727, !728, !729, !730}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !724, file: !1, line: 526, type: !4)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !724, file: !1, line: 527, type: !4)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !724, file: !1, line: 529, type: !236)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !724, file: !1, line: 530, type: !28)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !724, file: !1, line: 531, type: !4)
!731 = !DISubprogram(name: "latin_1_encode", scope: !1, file: !1, line: 948, type: !126, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @latin_1_encode, variables: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !742, !745}
!733 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !731, file: !1, line: 948, type: !4)
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !731, file: !1, line: 949, type: !4)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !731, file: !1, line: 951, type: !4)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !731, file: !1, line: 951, type: !4)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !731, file: !1, line: 952, type: !28)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !739, file: !1, line: 960, type: !4)
!739 = distinct !DILexicalBlock(scope: !740, file: !1, line: 960, column: 9)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 959, column: 50)
!741 = distinct !DILexicalBlock(scope: !731, file: !1, line: 959, column: 9)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !743, file: !1, line: 960, type: !4)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 960, column: 9)
!744 = distinct !DILexicalBlock(scope: !739, file: !1, line: 960, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !1, line: 965, type: !4)
!746 = distinct !DILexicalBlock(scope: !731, file: !1, line: 965, column: 5)
!747 = !DISubprogram(name: "latin_1_decode", scope: !1, file: !1, line: 543, type: !126, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @latin_1_decode, variables: !748)
!748 = !{!749, !750, !751, !752, !753}
!749 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !747, file: !1, line: 543, type: !4)
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !747, file: !1, line: 544, type: !4)
!751 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !747, file: !1, line: 546, type: !236)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !747, file: !1, line: 547, type: !4)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !747, file: !1, line: 548, type: !28)
!754 = !DISubprogram(name: "ascii_encode", scope: !1, file: !1, line: 970, type: !126, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ascii_encode, variables: !755)
!755 = !{!756, !757, !758, !759, !760, !761, !765, !768}
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !754, file: !1, line: 970, type: !4)
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !754, file: !1, line: 971, type: !4)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !754, file: !1, line: 973, type: !4)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !754, file: !1, line: 973, type: !4)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !754, file: !1, line: 974, type: !28)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !762, file: !1, line: 982, type: !4)
!762 = distinct !DILexicalBlock(scope: !763, file: !1, line: 982, column: 9)
!763 = distinct !DILexicalBlock(scope: !764, file: !1, line: 981, column: 50)
!764 = distinct !DILexicalBlock(scope: !754, file: !1, line: 981, column: 9)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !1, line: 982, type: !4)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 982, column: 9)
!767 = distinct !DILexicalBlock(scope: !762, file: !1, line: 982, column: 9)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !1, line: 987, type: !4)
!769 = distinct !DILexicalBlock(scope: !754, file: !1, line: 987, column: 5)
!770 = !DISubprogram(name: "ascii_decode", scope: !1, file: !1, line: 560, type: !126, isLocal: true, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ascii_decode, variables: !771)
!771 = !{!772, !773, !774, !775, !776}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !770, file: !1, line: 560, type: !4)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !770, file: !1, line: 561, type: !4)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !770, file: !1, line: 563, type: !236)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !770, file: !1, line: 564, type: !4)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !770, file: !1, line: 565, type: !28)
!777 = !DISubprogram(name: "charmap_encode", scope: !1, file: !1, line: 992, type: !126, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_encode, variables: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !789, !792}
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !777, file: !1, line: 992, type: !4)
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !777, file: !1, line: 993, type: !4)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !777, file: !1, line: 995, type: !4)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !777, file: !1, line: 995, type: !4)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !777, file: !1, line: 996, type: !28)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !777, file: !1, line: 997, type: !4)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !786, file: !1, line: 1007, type: !4)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 1007, column: 9)
!787 = distinct !DILexicalBlock(scope: !788, file: !1, line: 1006, column: 50)
!788 = distinct !DILexicalBlock(scope: !777, file: !1, line: 1006, column: 9)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !790, file: !1, line: 1007, type: !4)
!790 = distinct !DILexicalBlock(scope: !791, file: !1, line: 1007, column: 9)
!791 = distinct !DILexicalBlock(scope: !786, file: !1, line: 1007, column: 9)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !793, file: !1, line: 1012, type: !4)
!793 = distinct !DILexicalBlock(scope: !777, file: !1, line: 1012, column: 5)
!794 = !DISubprogram(name: "charmap_decode", scope: !1, file: !1, line: 577, type: !126, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_decode, variables: !795)
!795 = !{!796, !797, !798, !799, !800, !801}
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !794, file: !1, line: 577, type: !4)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !794, file: !1, line: 578, type: !4)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !794, file: !1, line: 580, type: !236)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !794, file: !1, line: 581, type: !4)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !794, file: !1, line: 582, type: !28)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !794, file: !1, line: 583, type: !4)
!802 = !DISubprogram(name: "charmap_build", scope: !1, file: !1, line: 1017, type: !126, isLocal: true, isDefinition: true, scopeLine: 1018, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_build, variables: !803)
!803 = !{!804, !805, !806}
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !802, file: !1, line: 1017, type: !4)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !802, file: !1, line: 1017, type: !4)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !802, file: !1, line: 1019, type: !4)
!807 = !DISubprogram(name: "readbuffer_encode", scope: !1, file: !1, line: 651, type: !126, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @readbuffer_encode, variables: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !807, file: !1, line: 651, type: !4)
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !807, file: !1, line: 652, type: !4)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pdata", scope: !807, file: !1, line: 654, type: !236)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !807, file: !1, line: 655, type: !28)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !807, file: !1, line: 656, type: !10)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !807, file: !1, line: 657, type: !28)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !807, file: !1, line: 658, type: !4)
!816 = !DISubprogram(name: "register_error", scope: !1, file: !1, line: 1087, type: !126, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @register_error, variables: !817)
!817 = !{!818, !819, !820, !821}
!818 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !816, file: !1, line: 1087, type: !4)
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !816, file: !1, line: 1087, type: !4)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !816, file: !1, line: 1089, type: !28)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !816, file: !1, line: 1090, type: !4)
!822 = !DISubprogram(name: "lookup_error", scope: !1, file: !1, line: 1106, type: !126, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @lookup_error, variables: !823)
!823 = !{!824, !825, !826}
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !822, file: !1, line: 1106, type: !4)
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !822, file: !1, line: 1106, type: !4)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !822, file: !1, line: 1108, type: !28)
!827 = !{!828, !851, !855, !859, !863, !867, !871, !875}
!828 = !DIGlobalVariable(name: "codecsmodule", scope: !0, file: !1, line: 1174, type: !829, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @codecsmodule)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !830, line: 47, size: 832, align: 64, elements: !831)
!830 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!831 = !{!832, !841, !842, !843, !844, !847, !848, !849, !850}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !829, file: !830, line: 48, baseType: !833, size: 320, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !830, line: 38, baseType: !834)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !830, line: 33, size: 320, align: 64, elements: !835)
!835 = !{!836, !837, !839, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !834, file: !830, line: 34, baseType: !5, size: 128, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !834, file: !830, line: 35, baseType: !838, size: 64, align: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !834, file: !830, line: 36, baseType: !10, size: 64, align: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !834, file: !830, line: 37, baseType: !4, size: 64, align: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !829, file: !830, line: 49, baseType: !28, size: 64, align: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !829, file: !830, line: 50, baseType: !28, size: 64, align: 64, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !829, file: !830, line: 51, baseType: !10, size: 64, align: 64, offset: 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !829, file: !830, line: 52, baseType: !845, size: 64, align: 64, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !829, file: !830, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !829, file: !830, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !829, file: !830, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !829, file: !830, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!851 = !DIGlobalVariable(name: "_codecs_functions", scope: !0, file: !1, line: 1118, type: !852, isLocal: true, isDefinition: true, variable: [41 x %struct.PyMethodDef]* @_codecs_functions)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 10496, align: 64, elements: !853)
!853 = !{!854}
!854 = !DISubrange(count: 41)
!855 = !DIGlobalVariable(name: "register__doc__", scope: !0, file: !1, line: 47, type: !856, isLocal: true, isDefinition: true, variable: [264 x i8]* @register__doc__)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2112, align: 8, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 264)
!859 = !DIGlobalVariable(name: "lookup__doc__", scope: !0, file: !1, line: 64, type: !860, isLocal: true, isDefinition: true, variable: [115 x i8]* @lookup__doc__)
!860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 920, align: 8, elements: !861)
!861 = !{!862}
!862 = !DISubrange(count: 115)
!863 = !DIGlobalVariable(name: "encode__doc__", scope: !0, file: !1, line: 81, type: !864, isLocal: true, isDefinition: true, variable: [434 x i8]* @encode__doc__)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3472, align: 8, elements: !865)
!865 = !{!866}
!866 = !DISubrange(count: 434)
!867 = !DIGlobalVariable(name: "decode__doc__", scope: !0, file: !1, line: 108, type: !868, isLocal: true, isDefinition: true, variable: [420 x i8]* @decode__doc__)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3360, align: 8, elements: !869)
!869 = !{!870}
!870 = !DISubrange(count: 420)
!871 = !DIGlobalVariable(name: "register_error__doc__", scope: !0, file: !1, line: 1078, type: !872, isLocal: true, isDefinition: true, variable: [301 x i8]* @register_error__doc__)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2408, align: 8, elements: !873)
!873 = !{!874}
!874 = !DISubrange(count: 301)
!875 = !DIGlobalVariable(name: "lookup_error__doc__", scope: !0, file: !1, line: 1100, type: !876, isLocal: true, isDefinition: true, variable: [158 x i8]* @lookup_error__doc__)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1264, align: 8, elements: !877)
!877 = !{!878}
!878 = !DISubrange(count: 158)
!879 = !{i32 2, !"Dwarf Version", i32 4}
!880 = !{i32 2, !"Debug Info Version", i32 3}
!881 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!882 = !DILocation(line: 1189, column: 16, scope: !375)
!883 = !DILocation(line: 1189, column: 9, scope: !375)
!884 = !DIExpression()
!885 = !DILocation(line: 56, column: 36, scope: !378)
!886 = !DILocation(line: 56, column: 52, scope: !378)
!887 = !DILocation(line: 58, column: 9, scope: !888)
!888 = distinct !DILexicalBlock(scope: !378, file: !1, line: 58, column: 9)
!889 = !DILocation(line: 58, column: 9, scope: !378)
!890 = !DILocation(line: 61, column: 5, scope: !378)
!891 = !{!892, !893, i64 0}
!892 = !{!"_object", !893, i64 0, !896, i64 8}
!893 = !{!"long", !894, i64 0}
!894 = !{!"omnipotent char", !895, i64 0}
!895 = !{!"Simple C/C++ TBAA"}
!896 = !{!"any pointer", !894, i64 0}
!897 = !DILocation(line: 62, column: 1, scope: !378)
!898 = !DILocation(line: 71, column: 34, scope: !382)
!899 = !DILocation(line: 71, column: 50, scope: !382)
!900 = !DILocation(line: 73, column: 5, scope: !382)
!901 = !DILocation(line: 73, column: 11, scope: !382)
!902 = !DILocation(line: 75, column: 10, scope: !903)
!903 = distinct !DILexicalBlock(scope: !382, file: !1, line: 75, column: 9)
!904 = !DILocation(line: 75, column: 9, scope: !382)
!905 = !DILocation(line: 78, column: 28, scope: !382)
!906 = !{!896, !896, i64 0}
!907 = !DILocation(line: 78, column: 12, scope: !382)
!908 = !DILocation(line: 78, column: 5, scope: !382)
!909 = !DILocation(line: 79, column: 1, scope: !382)
!910 = !DILocation(line: 92, column: 24, scope: !387)
!911 = !DILocation(line: 92, column: 40, scope: !387)
!912 = !DILocation(line: 94, column: 5, scope: !387)
!913 = !DILocation(line: 94, column: 17, scope: !387)
!914 = !DILocation(line: 95, column: 5, scope: !387)
!915 = !DILocation(line: 95, column: 17, scope: !387)
!916 = !DILocation(line: 96, column: 5, scope: !387)
!917 = !DILocation(line: 96, column: 15, scope: !387)
!918 = !DILocation(line: 98, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !387, file: !1, line: 98, column: 9)
!920 = !DILocation(line: 98, column: 9, scope: !387)
!921 = !DILocation(line: 101, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !387, file: !1, line: 101, column: 9)
!923 = !DILocation(line: 101, column: 18, scope: !922)
!924 = !DILocation(line: 101, column: 9, scope: !387)
!925 = !DILocation(line: 102, column: 20, scope: !922)
!926 = !DILocation(line: 102, column: 18, scope: !922)
!927 = !DILocation(line: 102, column: 9, scope: !922)
!928 = !DILocation(line: 105, column: 30, scope: !387)
!929 = !DILocation(line: 105, column: 27, scope: !387)
!930 = !DILocation(line: 105, column: 40, scope: !387)
!931 = !DILocation(line: 105, column: 12, scope: !387)
!932 = !DILocation(line: 105, column: 5, scope: !387)
!933 = !DILocation(line: 106, column: 1, scope: !387)
!934 = !DILocation(line: 119, column: 24, scope: !394)
!935 = !DILocation(line: 119, column: 40, scope: !394)
!936 = !DILocation(line: 121, column: 5, scope: !394)
!937 = !DILocation(line: 121, column: 17, scope: !394)
!938 = !DILocation(line: 122, column: 5, scope: !394)
!939 = !DILocation(line: 122, column: 17, scope: !394)
!940 = !DILocation(line: 123, column: 5, scope: !394)
!941 = !DILocation(line: 123, column: 15, scope: !394)
!942 = !DILocation(line: 125, column: 10, scope: !943)
!943 = distinct !DILexicalBlock(scope: !394, file: !1, line: 125, column: 9)
!944 = !DILocation(line: 125, column: 9, scope: !394)
!945 = !DILocation(line: 128, column: 9, scope: !946)
!946 = distinct !DILexicalBlock(scope: !394, file: !1, line: 128, column: 9)
!947 = !DILocation(line: 128, column: 18, scope: !946)
!948 = !DILocation(line: 128, column: 9, scope: !394)
!949 = !DILocation(line: 129, column: 20, scope: !946)
!950 = !DILocation(line: 129, column: 18, scope: !946)
!951 = !DILocation(line: 129, column: 9, scope: !946)
!952 = !DILocation(line: 132, column: 30, scope: !394)
!953 = !DILocation(line: 132, column: 27, scope: !394)
!954 = !DILocation(line: 132, column: 40, scope: !394)
!955 = !DILocation(line: 132, column: 12, scope: !394)
!956 = !DILocation(line: 132, column: 5, scope: !394)
!957 = !DILocation(line: 133, column: 1, scope: !394)
!958 = !DILocation(line: 166, column: 25, scope: !401)
!959 = !DILocation(line: 167, column: 25, scope: !401)
!960 = !DILocation(line: 169, column: 5, scope: !401)
!961 = !DILocation(line: 172, column: 5, scope: !401)
!962 = !DILocation(line: 172, column: 17, scope: !401)
!963 = !DILocation(line: 173, column: 5, scope: !401)
!964 = !DILocation(line: 169, column: 15, scope: !401)
!965 = !DILocation(line: 175, column: 10, scope: !966)
!966 = distinct !DILexicalBlock(scope: !401, file: !1, line: 175, column: 9)
!967 = !DILocation(line: 175, column: 9, scope: !401)
!968 = !DILocation(line: 179, column: 12, scope: !401)
!969 = !{!970, !893, i64 16}
!970 = !{!"", !892, i64 0, !893, i64 16}
!971 = !DILocation(line: 170, column: 16, scope: !401)
!972 = !DILocation(line: 180, column: 14, scope: !973)
!973 = distinct !DILexicalBlock(scope: !401, file: !1, line: 180, column: 9)
!974 = !DILocation(line: 180, column: 9, scope: !401)
!975 = !DILocation(line: 181, column: 25, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !1, line: 180, column: 36)
!977 = !DILocation(line: 181, column: 9, scope: !976)
!978 = !DILocation(line: 183, column: 13, scope: !976)
!979 = !DILocation(line: 185, column: 16, scope: !401)
!980 = !DILocation(line: 171, column: 16, scope: !401)
!981 = !DILocation(line: 186, column: 9, scope: !401)
!982 = !DILocation(line: 173, column: 15, scope: !401)
!983 = !DILocation(line: 186, column: 7, scope: !401)
!984 = !DILocation(line: 188, column: 11, scope: !412)
!985 = !DILocation(line: 188, column: 9, scope: !401)
!986 = !DILocation(line: 194, column: 19, scope: !411)
!987 = !DILocation(line: 194, column: 15, scope: !411)
!988 = !DILocation(line: 192, column: 20, scope: !411)
!989 = !DILocation(line: 196, column: 23, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !1, line: 196, column: 9)
!991 = distinct !DILexicalBlock(scope: !411, file: !1, line: 196, column: 9)
!992 = !DILocation(line: 196, column: 9, scope: !991)
!993 = !DILocation(line: 199, column: 17, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !1, line: 196, column: 36)
!995 = !{!894, !894, i64 0}
!996 = !DILocation(line: 193, column: 14, scope: !411)
!997 = !DILocation(line: 200, column: 17, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !1, line: 200, column: 17)
!999 = !DILocation(line: 200, column: 27, scope: !998)
!1000 = !DILocation(line: 201, column: 19, scope: !998)
!1001 = !DILocation(line: 201, column: 22, scope: !998)
!1002 = !DILocation(line: 201, column: 32, scope: !998)
!1003 = !DILocation(line: 201, column: 35, scope: !998)
!1004 = !DILocation(line: 201, column: 17, scope: !998)
!1005 = !DILocation(line: 203, column: 19, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !998, file: !1, line: 202, column: 22)
!1007 = !DILocation(line: 203, column: 22, scope: !1006)
!1008 = !DILocation(line: 203, column: 32, scope: !1006)
!1009 = !DILocation(line: 203, column: 35, scope: !1006)
!1010 = !DILocation(line: 203, column: 17, scope: !1006)
!1011 = !DILocation(line: 205, column: 19, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 204, column: 22)
!1013 = !DILocation(line: 205, column: 22, scope: !1012)
!1014 = !DILocation(line: 205, column: 32, scope: !1012)
!1015 = !DILocation(line: 205, column: 35, scope: !1012)
!1016 = !DILocation(line: 205, column: 17, scope: !1012)
!1017 = !DILocation(line: 207, column: 19, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 206, column: 22)
!1019 = !DILocation(line: 207, column: 22, scope: !1018)
!1020 = !DILocation(line: 207, column: 32, scope: !1018)
!1021 = !DILocation(line: 207, column: 35, scope: !1018)
!1022 = !DILocation(line: 207, column: 17, scope: !1018)
!1023 = !DILocation(line: 208, column: 24, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 208, column: 22)
!1025 = !DILocation(line: 208, column: 35, scope: !1024)
!1026 = !DILocation(line: 208, column: 30, scope: !1024)
!1027 = !DILocation(line: 209, column: 19, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 208, column: 44)
!1029 = !DILocation(line: 209, column: 22, scope: !1028)
!1030 = !DILocation(line: 210, column: 19, scope: !1028)
!1031 = !DILocation(line: 210, column: 22, scope: !1028)
!1032 = !DILocation(line: 211, column: 48, scope: !1028)
!1033 = !DILocation(line: 211, column: 24, scope: !1028)
!1034 = !DILocation(line: 211, column: 19, scope: !1028)
!1035 = !DILocation(line: 211, column: 22, scope: !1028)
!1036 = !DILocation(line: 212, column: 39, scope: !1028)
!1037 = !DILocation(line: 212, column: 24, scope: !1028)
!1038 = !DILocation(line: 212, column: 19, scope: !1028)
!1039 = !DILocation(line: 212, column: 22, scope: !1028)
!1040 = !DILocation(line: 213, column: 13, scope: !1028)
!1041 = !DILocation(line: 215, column: 22, scope: !1024)
!1042 = !DILocation(line: 196, column: 32, scope: !990)
!1043 = !DILocation(line: 217, column: 12, scope: !411)
!1044 = !DILocation(line: 218, column: 38, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !411, file: !1, line: 218, column: 13)
!1046 = !DILocation(line: 218, column: 36, scope: !1045)
!1047 = !DILocation(line: 218, column: 13, scope: !1045)
!1048 = !DILocation(line: 223, column: 24, scope: !401)
!1049 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 223, column: 12, scope: !401)
!1051 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1050)
!1052 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1050)
!1053 = distinct !DILexicalBlock(scope: !415, file: !1, line: 142, column: 9)
!1054 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1050)
!1055 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1050)
!1056 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1050)
!1057 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1050)
!1058 = !DILexicalBlockFile(scope: !421, file: !1, discriminator: 1)
!1059 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1050)
!1060 = distinct !DILexicalBlock(scope: !421, file: !1, line: 145, column: 5)
!1061 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1050)
!1062 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1050)
!1063 = !DILexicalBlockFile(scope: !1060, file: !1, discriminator: 3)
!1064 = !{!892, !896, i64 8}
!1065 = !{!1066, !896, i64 48}
!1066 = !{!"_typeobject", !970, i64 0, !896, i64 24, !893, i64 32, !893, i64 40, !896, i64 48, !896, i64 56, !896, i64 64, !896, i64 72, !896, i64 80, !896, i64 88, !896, i64 96, !896, i64 104, !896, i64 112, !896, i64 120, !896, i64 128, !896, i64 136, !896, i64 144, !896, i64 152, !896, i64 160, !893, i64 168, !896, i64 176, !896, i64 184, !896, i64 192, !896, i64 200, !893, i64 208, !896, i64 216, !896, i64 224, !896, i64 232, !896, i64 240, !896, i64 248, !896, i64 256, !896, i64 264, !896, i64 272, !896, i64 280, !893, i64 288, !896, i64 296, !896, i64 304, !896, i64 312, !896, i64 320, !896, i64 328, !896, i64 336, !896, i64 344, !896, i64 352, !896, i64 360, !896, i64 368, !896, i64 376, !1067, i64 384, !896, i64 392}
!1067 = !{!"int", !894, i64 0}
!1068 = !DILocation(line: 223, column: 12, scope: !401)
!1069 = !DILocation(line: 224, column: 1, scope: !401)
!1070 = !DILocation(line: 151, column: 25, scope: !422)
!1071 = !DILocation(line: 152, column: 25, scope: !422)
!1072 = !DILocation(line: 154, column: 5, scope: !422)
!1073 = !DILocation(line: 154, column: 17, scope: !422)
!1074 = !DILocation(line: 155, column: 5, scope: !422)
!1075 = !DILocation(line: 156, column: 5, scope: !422)
!1076 = !DILocation(line: 155, column: 17, scope: !422)
!1077 = !DILocation(line: 156, column: 16, scope: !422)
!1078 = !DILocation(line: 158, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !422, file: !1, line: 158, column: 9)
!1080 = !DILocation(line: 158, column: 9, scope: !422)
!1081 = !DILocation(line: 161, column: 45, scope: !422)
!1082 = !DILocation(line: 161, column: 51, scope: !422)
!1083 = !{!893, !893, i64 0}
!1084 = !DILocation(line: 161, column: 57, scope: !422)
!1085 = !DILocation(line: 161, column: 24, scope: !422)
!1086 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1087)
!1087 = distinct !DILocation(line: 161, column: 12, scope: !422)
!1088 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1087)
!1089 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1087)
!1090 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1087)
!1091 = !DILocation(line: 162, column: 24, scope: !422)
!1092 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1087)
!1093 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1087)
!1094 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1087)
!1095 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1087)
!1096 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1087)
!1097 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1087)
!1098 = !DILocation(line: 161, column: 12, scope: !422)
!1099 = !DILocation(line: 163, column: 1, scope: !422)
!1100 = !DILocation(line: 734, column: 24, scope: !429)
!1101 = !DILocation(line: 735, column: 23, scope: !429)
!1102 = !DILocation(line: 737, column: 5, scope: !429)
!1103 = !DILocation(line: 738, column: 5, scope: !429)
!1104 = !DILocation(line: 738, column: 17, scope: !429)
!1105 = !DILocation(line: 737, column: 15, scope: !429)
!1106 = !DILocation(line: 740, column: 10, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !429, file: !1, line: 740, column: 9)
!1108 = !DILocation(line: 740, column: 9, scope: !429)
!1109 = !DILocation(line: 744, column: 32, scope: !429)
!1110 = !DILocation(line: 744, column: 11, scope: !429)
!1111 = !DILocation(line: 744, column: 9, scope: !429)
!1112 = !DILocation(line: 745, column: 13, scope: !439)
!1113 = !DILocation(line: 745, column: 21, scope: !439)
!1114 = !DILocation(line: 745, column: 24, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 1)
!1116 = !DILocation(line: 745, column: 24, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !439, file: !1, discriminator: 3)
!1118 = !DILocation(line: 746, column: 9, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !437, file: !1, discriminator: 1)
!1120 = !DILocation(line: 745, column: 9, scope: !429)
!1121 = !DILocation(line: 746, column: 9, scope: !442)
!1122 = !DILocation(line: 746, column: 9, scope: !437)
!1123 = !DILocation(line: 746, column: 9, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !441, file: !1, discriminator: 4)
!1125 = !DILocation(line: 746, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !441, file: !1, line: 746, column: 9)
!1127 = !DILocation(line: 746, column: 9, scope: !441)
!1128 = !DILocation(line: 746, column: 9, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1126, file: !1, discriminator: 6)
!1130 = !DILocation(line: 749, column: 47, scope: !429)
!1131 = !DILocation(line: 749, column: 61, scope: !429)
!1132 = !DILocation(line: 749, column: 21, scope: !429)
!1133 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 749, column: 9, scope: !429)
!1135 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1134)
!1136 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1134)
!1137 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1134)
!1138 = !DILocation(line: 750, column: 21, scope: !429)
!1139 = !{!1140, !893, i64 16}
!1140 = !{!"", !892, i64 0, !893, i64 16, !893, i64 24, !1141, i64 32, !896, i64 40}
!1141 = !{!"", !1067, i64 0, !1067, i64 0, !1067, i64 0, !1067, i64 0, !1067, i64 0, !1067, i64 1}
!1142 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1134)
!1143 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1134)
!1144 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1134)
!1145 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1134)
!1146 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1134)
!1147 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1134)
!1148 = !DILocation(line: 749, column: 9, scope: !429)
!1149 = !DILocation(line: 737, column: 21, scope: !429)
!1150 = !DILocation(line: 751, column: 5, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 1)
!1152 = !DILocation(line: 751, column: 5, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !444, file: !1, line: 751, column: 5)
!1154 = !DILocation(line: 751, column: 5, scope: !444)
!1155 = !DILocation(line: 751, column: 5, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1153, file: !1, discriminator: 3)
!1157 = !DILocation(line: 753, column: 1, scope: !429)
!1158 = !DILocation(line: 280, column: 24, scope: !445)
!1159 = !DILocation(line: 281, column: 23, scope: !445)
!1160 = !DILocation(line: 283, column: 5, scope: !445)
!1161 = !DILocation(line: 284, column: 5, scope: !445)
!1162 = !DILocation(line: 284, column: 17, scope: !445)
!1163 = !DILocation(line: 285, column: 5, scope: !445)
!1164 = !DILocation(line: 285, column: 9, scope: !445)
!1165 = !{!1067, !1067, i64 0}
!1166 = !DILocation(line: 286, column: 5, scope: !445)
!1167 = !DILocation(line: 287, column: 15, scope: !445)
!1168 = !DILocation(line: 283, column: 15, scope: !445)
!1169 = !DILocation(line: 289, column: 10, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !445, file: !1, line: 289, column: 9)
!1171 = !DILocation(line: 289, column: 9, scope: !445)
!1172 = !DILocation(line: 292, column: 21, scope: !445)
!1173 = !{!1174, !893, i64 16}
!1174 = !{!"bufferinfo", !896, i64 0, !896, i64 8, !893, i64 16, !893, i64 24, !1067, i64 32, !1067, i64 36, !896, i64 40, !896, i64 48, !896, i64 56, !896, i64 64, !896, i64 72}
!1175 = !DILocation(line: 286, column: 16, scope: !445)
!1176 = !DILocation(line: 292, column: 14, scope: !445)
!1177 = !DILocation(line: 294, column: 49, scope: !445)
!1178 = !{!1174, !896, i64 0}
!1179 = !DILocation(line: 294, column: 64, scope: !445)
!1180 = !DILocation(line: 295, column: 44, scope: !445)
!1181 = !DILocation(line: 295, column: 44, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !445, file: !1, discriminator: 1)
!1183 = !DILocation(line: 294, column: 15, scope: !445)
!1184 = !DILocation(line: 296, column: 5, scope: !445)
!1185 = !DILocation(line: 297, column: 17, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !445, file: !1, line: 297, column: 9)
!1187 = !DILocation(line: 297, column: 9, scope: !445)
!1188 = !DILocation(line: 299, column: 33, scope: !445)
!1189 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 299, column: 12, scope: !445)
!1191 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1190)
!1192 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1190)
!1193 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1190)
!1194 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1190)
!1195 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1190)
!1196 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1190)
!1197 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1190)
!1198 = !DILocation(line: 299, column: 12, scope: !445)
!1199 = !DILocation(line: 300, column: 1, scope: !445)
!1200 = !DILocation(line: 712, column: 24, scope: !454)
!1201 = !DILocation(line: 713, column: 23, scope: !454)
!1202 = !DILocation(line: 715, column: 5, scope: !454)
!1203 = !DILocation(line: 716, column: 5, scope: !454)
!1204 = !DILocation(line: 716, column: 17, scope: !454)
!1205 = !DILocation(line: 715, column: 15, scope: !454)
!1206 = !DILocation(line: 718, column: 10, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !454, file: !1, line: 718, column: 9)
!1208 = !DILocation(line: 718, column: 9, scope: !454)
!1209 = !DILocation(line: 722, column: 32, scope: !454)
!1210 = !DILocation(line: 722, column: 11, scope: !454)
!1211 = !DILocation(line: 722, column: 9, scope: !454)
!1212 = !DILocation(line: 723, column: 13, scope: !464)
!1213 = !DILocation(line: 723, column: 21, scope: !464)
!1214 = !DILocation(line: 723, column: 24, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 1)
!1216 = !DILocation(line: 723, column: 24, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !464, file: !1, discriminator: 3)
!1218 = !DILocation(line: 724, column: 9, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !462, file: !1, discriminator: 1)
!1220 = !DILocation(line: 723, column: 9, scope: !454)
!1221 = !DILocation(line: 724, column: 9, scope: !467)
!1222 = !DILocation(line: 724, column: 9, scope: !462)
!1223 = !DILocation(line: 724, column: 9, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !466, file: !1, discriminator: 4)
!1225 = !DILocation(line: 724, column: 9, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !466, file: !1, line: 724, column: 9)
!1227 = !DILocation(line: 724, column: 9, scope: !466)
!1228 = !DILocation(line: 724, column: 9, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1226, file: !1, discriminator: 6)
!1230 = !DILocation(line: 727, column: 43, scope: !454)
!1231 = !DILocation(line: 727, column: 54, scope: !454)
!1232 = !DILocation(line: 727, column: 21, scope: !454)
!1233 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 727, column: 9, scope: !454)
!1235 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1234)
!1236 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1234)
!1237 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1234)
!1238 = !DILocation(line: 728, column: 21, scope: !454)
!1239 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1234)
!1240 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1234)
!1241 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1234)
!1242 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1234)
!1243 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1234)
!1244 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1234)
!1245 = !DILocation(line: 727, column: 9, scope: !454)
!1246 = !DILocation(line: 715, column: 21, scope: !454)
!1247 = !DILocation(line: 729, column: 5, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !469, file: !1, discriminator: 1)
!1249 = !DILocation(line: 729, column: 5, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !469, file: !1, line: 729, column: 5)
!1251 = !DILocation(line: 729, column: 5, scope: !469)
!1252 = !DILocation(line: 729, column: 5, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1250, file: !1, discriminator: 3)
!1254 = !DILocation(line: 731, column: 1, scope: !454)
!1255 = !DILocation(line: 257, column: 24, scope: !470)
!1256 = !DILocation(line: 258, column: 24, scope: !470)
!1257 = !DILocation(line: 260, column: 5, scope: !470)
!1258 = !DILocation(line: 261, column: 5, scope: !470)
!1259 = !DILocation(line: 261, column: 17, scope: !470)
!1260 = !DILocation(line: 262, column: 5, scope: !470)
!1261 = !DILocation(line: 262, column: 9, scope: !470)
!1262 = !DILocation(line: 263, column: 5, scope: !470)
!1263 = !DILocation(line: 264, column: 15, scope: !470)
!1264 = !DILocation(line: 260, column: 15, scope: !470)
!1265 = !DILocation(line: 266, column: 10, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !470, file: !1, line: 266, column: 9)
!1267 = !DILocation(line: 266, column: 9, scope: !470)
!1268 = !DILocation(line: 269, column: 21, scope: !470)
!1269 = !DILocation(line: 263, column: 16, scope: !470)
!1270 = !DILocation(line: 269, column: 14, scope: !470)
!1271 = !DILocation(line: 271, column: 49, scope: !470)
!1272 = !DILocation(line: 271, column: 64, scope: !470)
!1273 = !DILocation(line: 272, column: 44, scope: !470)
!1274 = !DILocation(line: 272, column: 44, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !470, file: !1, discriminator: 1)
!1276 = !DILocation(line: 271, column: 15, scope: !470)
!1277 = !DILocation(line: 273, column: 5, scope: !470)
!1278 = !DILocation(line: 274, column: 17, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !470, file: !1, line: 274, column: 9)
!1280 = !DILocation(line: 274, column: 9, scope: !470)
!1281 = !DILocation(line: 276, column: 33, scope: !470)
!1282 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 276, column: 12, scope: !470)
!1284 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1283)
!1285 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1283)
!1286 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1283)
!1287 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1283)
!1288 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1283)
!1289 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1283)
!1290 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1283)
!1291 = !DILocation(line: 276, column: 12, scope: !470)
!1292 = !DILocation(line: 277, column: 1, scope: !470)
!1293 = !DILocation(line: 763, column: 25, scope: !479)
!1294 = !DILocation(line: 764, column: 23, scope: !479)
!1295 = !DILocation(line: 766, column: 5, scope: !479)
!1296 = !DILocation(line: 767, column: 5, scope: !479)
!1297 = !DILocation(line: 767, column: 17, scope: !479)
!1298 = !DILocation(line: 768, column: 5, scope: !479)
!1299 = !DILocation(line: 768, column: 9, scope: !479)
!1300 = !DILocation(line: 766, column: 15, scope: !479)
!1301 = !DILocation(line: 770, column: 10, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !479, file: !1, line: 770, column: 9)
!1303 = !DILocation(line: 770, column: 9, scope: !479)
!1304 = !DILocation(line: 774, column: 32, scope: !479)
!1305 = !DILocation(line: 774, column: 11, scope: !479)
!1306 = !DILocation(line: 774, column: 9, scope: !479)
!1307 = !DILocation(line: 775, column: 13, scope: !490)
!1308 = !DILocation(line: 775, column: 21, scope: !490)
!1309 = !DILocation(line: 775, column: 24, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 1)
!1311 = !DILocation(line: 775, column: 24, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !490, file: !1, discriminator: 3)
!1313 = !DILocation(line: 776, column: 9, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!1315 = !DILocation(line: 775, column: 9, scope: !479)
!1316 = !DILocation(line: 776, column: 9, scope: !493)
!1317 = !DILocation(line: 776, column: 9, scope: !488)
!1318 = !DILocation(line: 776, column: 9, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !492, file: !1, discriminator: 4)
!1320 = !DILocation(line: 776, column: 9, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !492, file: !1, line: 776, column: 9)
!1322 = !DILocation(line: 776, column: 9, scope: !492)
!1323 = !DILocation(line: 776, column: 9, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1321, file: !1, discriminator: 6)
!1325 = !DILocation(line: 779, column: 44, scope: !479)
!1326 = !DILocation(line: 779, column: 49, scope: !479)
!1327 = !DILocation(line: 779, column: 57, scope: !479)
!1328 = !DILocation(line: 779, column: 21, scope: !479)
!1329 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 779, column: 9, scope: !479)
!1331 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1330)
!1332 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1330)
!1333 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1330)
!1334 = !DILocation(line: 780, column: 21, scope: !479)
!1335 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1330)
!1336 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1330)
!1337 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1330)
!1338 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1330)
!1339 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1330)
!1340 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1330)
!1341 = !DILocation(line: 779, column: 9, scope: !479)
!1342 = !DILocation(line: 766, column: 21, scope: !479)
!1343 = !DILocation(line: 781, column: 5, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !495, file: !1, discriminator: 1)
!1345 = !DILocation(line: 781, column: 5, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !495, file: !1, line: 781, column: 5)
!1347 = !DILocation(line: 781, column: 5, scope: !495)
!1348 = !DILocation(line: 781, column: 5, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1346, file: !1, discriminator: 3)
!1350 = !DILocation(line: 783, column: 1, scope: !479)
!1351 = !DILocation(line: 786, column: 28, scope: !496)
!1352 = !DILocation(line: 787, column: 28, scope: !496)
!1353 = !DILocation(line: 789, column: 5, scope: !496)
!1354 = !DILocation(line: 790, column: 5, scope: !496)
!1355 = !DILocation(line: 790, column: 17, scope: !496)
!1356 = !DILocation(line: 789, column: 15, scope: !496)
!1357 = !DILocation(line: 792, column: 10, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !496, file: !1, line: 792, column: 9)
!1359 = !DILocation(line: 792, column: 9, scope: !496)
!1360 = !DILocation(line: 796, column: 32, scope: !496)
!1361 = !DILocation(line: 796, column: 11, scope: !496)
!1362 = !DILocation(line: 796, column: 9, scope: !496)
!1363 = !DILocation(line: 797, column: 13, scope: !506)
!1364 = !DILocation(line: 797, column: 21, scope: !506)
!1365 = !DILocation(line: 797, column: 24, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!1367 = !DILocation(line: 797, column: 24, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 3)
!1369 = !DILocation(line: 798, column: 9, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !504, file: !1, discriminator: 1)
!1371 = !DILocation(line: 797, column: 9, scope: !496)
!1372 = !DILocation(line: 798, column: 9, scope: !509)
!1373 = !DILocation(line: 798, column: 9, scope: !504)
!1374 = !DILocation(line: 798, column: 9, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !508, file: !1, discriminator: 4)
!1376 = !DILocation(line: 798, column: 9, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !508, file: !1, line: 798, column: 9)
!1378 = !DILocation(line: 798, column: 9, scope: !508)
!1379 = !DILocation(line: 798, column: 9, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1377, file: !1, discriminator: 6)
!1381 = !DILocation(line: 801, column: 44, scope: !496)
!1382 = !DILocation(line: 801, column: 49, scope: !496)
!1383 = !DILocation(line: 801, column: 21, scope: !496)
!1384 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1385)
!1385 = distinct !DILocation(line: 801, column: 9, scope: !496)
!1386 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1385)
!1387 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1385)
!1388 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1385)
!1389 = !DILocation(line: 802, column: 21, scope: !496)
!1390 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1385)
!1391 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1385)
!1392 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1385)
!1393 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1385)
!1394 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1385)
!1395 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1385)
!1396 = !DILocation(line: 801, column: 9, scope: !496)
!1397 = !DILocation(line: 789, column: 21, scope: !496)
!1398 = !DILocation(line: 803, column: 5, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !511, file: !1, discriminator: 1)
!1400 = !DILocation(line: 803, column: 5, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !511, file: !1, line: 803, column: 5)
!1402 = !DILocation(line: 803, column: 5, scope: !511)
!1403 = !DILocation(line: 803, column: 5, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1401, file: !1, discriminator: 3)
!1405 = !DILocation(line: 805, column: 1, scope: !496)
!1406 = !DILocation(line: 808, column: 28, scope: !512)
!1407 = !DILocation(line: 809, column: 28, scope: !512)
!1408 = !DILocation(line: 811, column: 5, scope: !512)
!1409 = !DILocation(line: 812, column: 5, scope: !512)
!1410 = !DILocation(line: 812, column: 17, scope: !512)
!1411 = !DILocation(line: 811, column: 15, scope: !512)
!1412 = !DILocation(line: 814, column: 10, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !512, file: !1, line: 814, column: 9)
!1414 = !DILocation(line: 814, column: 9, scope: !512)
!1415 = !DILocation(line: 818, column: 32, scope: !512)
!1416 = !DILocation(line: 818, column: 11, scope: !512)
!1417 = !DILocation(line: 818, column: 9, scope: !512)
!1418 = !DILocation(line: 819, column: 13, scope: !522)
!1419 = !DILocation(line: 819, column: 21, scope: !522)
!1420 = !DILocation(line: 819, column: 24, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 1)
!1422 = !DILocation(line: 819, column: 24, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !522, file: !1, discriminator: 3)
!1424 = !DILocation(line: 820, column: 9, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !520, file: !1, discriminator: 1)
!1426 = !DILocation(line: 819, column: 9, scope: !512)
!1427 = !DILocation(line: 820, column: 9, scope: !525)
!1428 = !DILocation(line: 820, column: 9, scope: !520)
!1429 = !DILocation(line: 820, column: 9, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !524, file: !1, discriminator: 4)
!1431 = !DILocation(line: 820, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !524, file: !1, line: 820, column: 9)
!1433 = !DILocation(line: 820, column: 9, scope: !524)
!1434 = !DILocation(line: 820, column: 9, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1432, file: !1, discriminator: 6)
!1436 = !DILocation(line: 823, column: 44, scope: !512)
!1437 = !DILocation(line: 823, column: 49, scope: !512)
!1438 = !DILocation(line: 823, column: 21, scope: !512)
!1439 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 823, column: 9, scope: !512)
!1441 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1440)
!1442 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1440)
!1443 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1440)
!1444 = !DILocation(line: 824, column: 21, scope: !512)
!1445 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1440)
!1446 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1440)
!1447 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1440)
!1448 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1440)
!1449 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1440)
!1450 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1440)
!1451 = !DILocation(line: 823, column: 9, scope: !512)
!1452 = !DILocation(line: 811, column: 21, scope: !512)
!1453 = !DILocation(line: 825, column: 5, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !527, file: !1, discriminator: 1)
!1455 = !DILocation(line: 825, column: 5, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !527, file: !1, line: 825, column: 5)
!1457 = !DILocation(line: 825, column: 5, scope: !527)
!1458 = !DILocation(line: 825, column: 5, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1456, file: !1, discriminator: 3)
!1460 = !DILocation(line: 827, column: 1, scope: !512)
!1461 = !DILocation(line: 303, column: 25, scope: !528)
!1462 = !DILocation(line: 304, column: 23, scope: !528)
!1463 = !DILocation(line: 306, column: 5, scope: !528)
!1464 = !DILocation(line: 307, column: 5, scope: !528)
!1465 = !DILocation(line: 307, column: 17, scope: !528)
!1466 = !DILocation(line: 308, column: 5, scope: !528)
!1467 = !DILocation(line: 308, column: 9, scope: !528)
!1468 = !DILocation(line: 309, column: 5, scope: !528)
!1469 = !DILocation(line: 309, column: 9, scope: !528)
!1470 = !DILocation(line: 310, column: 5, scope: !528)
!1471 = !DILocation(line: 306, column: 15, scope: !528)
!1472 = !DILocation(line: 313, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !528, file: !1, line: 313, column: 9)
!1474 = !DILocation(line: 313, column: 9, scope: !528)
!1475 = !DILocation(line: 316, column: 21, scope: !528)
!1476 = !DILocation(line: 310, column: 16, scope: !528)
!1477 = !DILocation(line: 316, column: 14, scope: !528)
!1478 = !DILocation(line: 317, column: 50, scope: !528)
!1479 = !DILocation(line: 317, column: 65, scope: !528)
!1480 = !DILocation(line: 318, column: 53, scope: !528)
!1481 = !DILocation(line: 318, column: 53, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 1)
!1483 = !DILocation(line: 317, column: 15, scope: !528)
!1484 = !DILocation(line: 311, column: 15, scope: !528)
!1485 = !DILocation(line: 319, column: 5, scope: !528)
!1486 = !DILocation(line: 320, column: 17, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !528, file: !1, line: 320, column: 9)
!1488 = !DILocation(line: 320, column: 9, scope: !528)
!1489 = !DILocation(line: 322, column: 33, scope: !528)
!1490 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 322, column: 12, scope: !528)
!1492 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1491)
!1493 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1491)
!1494 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1491)
!1495 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1491)
!1496 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1491)
!1497 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1491)
!1498 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1491)
!1499 = !DILocation(line: 322, column: 12, scope: !528)
!1500 = !DILocation(line: 323, column: 1, scope: !528)
!1501 = !DILocation(line: 326, column: 28, scope: !538)
!1502 = !DILocation(line: 327, column: 28, scope: !538)
!1503 = !DILocation(line: 329, column: 5, scope: !538)
!1504 = !DILocation(line: 330, column: 5, scope: !538)
!1505 = !DILocation(line: 330, column: 17, scope: !538)
!1506 = !DILocation(line: 331, column: 5, scope: !538)
!1507 = !DILocation(line: 331, column: 9, scope: !538)
!1508 = !DILocation(line: 332, column: 5, scope: !538)
!1509 = !DILocation(line: 332, column: 9, scope: !538)
!1510 = !DILocation(line: 333, column: 5, scope: !538)
!1511 = !DILocation(line: 334, column: 15, scope: !538)
!1512 = !DILocation(line: 329, column: 15, scope: !538)
!1513 = !DILocation(line: 336, column: 10, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !538, file: !1, line: 336, column: 9)
!1515 = !DILocation(line: 336, column: 9, scope: !538)
!1516 = !DILocation(line: 340, column: 21, scope: !538)
!1517 = !DILocation(line: 333, column: 16, scope: !538)
!1518 = !DILocation(line: 340, column: 14, scope: !538)
!1519 = !DILocation(line: 341, column: 50, scope: !538)
!1520 = !DILocation(line: 341, column: 65, scope: !538)
!1521 = !DILocation(line: 342, column: 21, scope: !538)
!1522 = !DILocation(line: 342, column: 21, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !538, file: !1, discriminator: 1)
!1524 = !DILocation(line: 341, column: 15, scope: !538)
!1525 = !DILocation(line: 343, column: 5, scope: !538)
!1526 = !DILocation(line: 344, column: 17, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !538, file: !1, line: 344, column: 9)
!1528 = !DILocation(line: 344, column: 9, scope: !538)
!1529 = !DILocation(line: 346, column: 33, scope: !538)
!1530 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 346, column: 12, scope: !538)
!1532 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1531)
!1533 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1531)
!1534 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1531)
!1535 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1531)
!1536 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1531)
!1537 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1531)
!1538 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1531)
!1539 = !DILocation(line: 346, column: 12, scope: !538)
!1540 = !DILocation(line: 347, column: 1, scope: !538)
!1541 = !DILocation(line: 350, column: 28, scope: !548)
!1542 = !DILocation(line: 351, column: 28, scope: !548)
!1543 = !DILocation(line: 353, column: 5, scope: !548)
!1544 = !DILocation(line: 354, column: 5, scope: !548)
!1545 = !DILocation(line: 354, column: 17, scope: !548)
!1546 = !DILocation(line: 355, column: 5, scope: !548)
!1547 = !DILocation(line: 355, column: 9, scope: !548)
!1548 = !DILocation(line: 356, column: 5, scope: !548)
!1549 = !DILocation(line: 356, column: 9, scope: !548)
!1550 = !DILocation(line: 357, column: 5, scope: !548)
!1551 = !DILocation(line: 358, column: 15, scope: !548)
!1552 = !DILocation(line: 353, column: 15, scope: !548)
!1553 = !DILocation(line: 360, column: 10, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !548, file: !1, line: 360, column: 9)
!1555 = !DILocation(line: 360, column: 9, scope: !548)
!1556 = !DILocation(line: 364, column: 21, scope: !548)
!1557 = !DILocation(line: 357, column: 16, scope: !548)
!1558 = !DILocation(line: 364, column: 14, scope: !548)
!1559 = !DILocation(line: 365, column: 50, scope: !548)
!1560 = !DILocation(line: 365, column: 65, scope: !548)
!1561 = !DILocation(line: 366, column: 21, scope: !548)
!1562 = !DILocation(line: 366, column: 21, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !548, file: !1, discriminator: 1)
!1564 = !DILocation(line: 365, column: 15, scope: !548)
!1565 = !DILocation(line: 367, column: 5, scope: !548)
!1566 = !DILocation(line: 368, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !548, file: !1, line: 368, column: 9)
!1568 = !DILocation(line: 368, column: 9, scope: !548)
!1569 = !DILocation(line: 370, column: 33, scope: !548)
!1570 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 370, column: 12, scope: !548)
!1572 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1571)
!1573 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1571)
!1574 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1571)
!1575 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1571)
!1576 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1571)
!1577 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1571)
!1578 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1571)
!1579 = !DILocation(line: 370, column: 12, scope: !548)
!1580 = !DILocation(line: 371, column: 1, scope: !548)
!1581 = !DILocation(line: 382, column: 28, scope: !558)
!1582 = !DILocation(line: 383, column: 28, scope: !558)
!1583 = !DILocation(line: 385, column: 5, scope: !558)
!1584 = !DILocation(line: 386, column: 5, scope: !558)
!1585 = !DILocation(line: 386, column: 17, scope: !558)
!1586 = !DILocation(line: 387, column: 5, scope: !558)
!1587 = !DILocation(line: 387, column: 9, scope: !558)
!1588 = !DILocation(line: 389, column: 5, scope: !558)
!1589 = !DILocation(line: 389, column: 9, scope: !558)
!1590 = !DILocation(line: 390, column: 5, scope: !558)
!1591 = !DILocation(line: 385, column: 15, scope: !558)
!1592 = !DILocation(line: 392, column: 10, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !558, file: !1, line: 392, column: 9)
!1594 = !DILocation(line: 392, column: 9, scope: !558)
!1595 = !DILocation(line: 395, column: 21, scope: !558)
!1596 = !DILocation(line: 390, column: 16, scope: !558)
!1597 = !DILocation(line: 395, column: 14, scope: !558)
!1598 = !DILocation(line: 396, column: 50, scope: !558)
!1599 = !DILocation(line: 396, column: 65, scope: !558)
!1600 = !DILocation(line: 397, column: 53, scope: !558)
!1601 = !DILocation(line: 397, column: 53, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !558, file: !1, discriminator: 1)
!1603 = !DILocation(line: 396, column: 15, scope: !558)
!1604 = !DILocation(line: 388, column: 15, scope: !558)
!1605 = !DILocation(line: 398, column: 5, scope: !558)
!1606 = !DILocation(line: 399, column: 17, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !558, file: !1, line: 399, column: 9)
!1608 = !DILocation(line: 399, column: 9, scope: !558)
!1609 = !DILocation(line: 401, column: 43, scope: !558)
!1610 = !DILocation(line: 401, column: 53, scope: !558)
!1611 = !DILocation(line: 401, column: 13, scope: !558)
!1612 = !DILocation(line: 388, column: 25, scope: !558)
!1613 = !DILocation(line: 402, column: 5, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 1)
!1615 = !DILocation(line: 402, column: 5, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !570, file: !1, line: 402, column: 5)
!1617 = !DILocation(line: 402, column: 5, scope: !570)
!1618 = !DILocation(line: 402, column: 5, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1616, file: !1, discriminator: 3)
!1620 = !DILocation(line: 404, column: 1, scope: !558)
!1621 = !DILocation(line: 837, column: 25, scope: !571)
!1622 = !DILocation(line: 838, column: 23, scope: !571)
!1623 = !DILocation(line: 840, column: 5, scope: !571)
!1624 = !DILocation(line: 841, column: 5, scope: !571)
!1625 = !DILocation(line: 841, column: 17, scope: !571)
!1626 = !DILocation(line: 842, column: 5, scope: !571)
!1627 = !DILocation(line: 842, column: 9, scope: !571)
!1628 = !DILocation(line: 840, column: 15, scope: !571)
!1629 = !DILocation(line: 844, column: 10, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !571, file: !1, line: 844, column: 9)
!1631 = !DILocation(line: 844, column: 9, scope: !571)
!1632 = !DILocation(line: 848, column: 32, scope: !571)
!1633 = !DILocation(line: 848, column: 11, scope: !571)
!1634 = !DILocation(line: 848, column: 9, scope: !571)
!1635 = !DILocation(line: 849, column: 13, scope: !582)
!1636 = !DILocation(line: 849, column: 21, scope: !582)
!1637 = !DILocation(line: 849, column: 24, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1639 = !DILocation(line: 849, column: 24, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 3)
!1641 = !DILocation(line: 850, column: 9, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !580, file: !1, discriminator: 1)
!1643 = !DILocation(line: 849, column: 9, scope: !571)
!1644 = !DILocation(line: 850, column: 9, scope: !585)
!1645 = !DILocation(line: 850, column: 9, scope: !580)
!1646 = !DILocation(line: 850, column: 9, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 4)
!1648 = !DILocation(line: 850, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !584, file: !1, line: 850, column: 9)
!1650 = !DILocation(line: 850, column: 9, scope: !584)
!1651 = !DILocation(line: 850, column: 9, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1649, file: !1, discriminator: 6)
!1653 = !DILocation(line: 853, column: 44, scope: !571)
!1654 = !DILocation(line: 853, column: 49, scope: !571)
!1655 = !DILocation(line: 853, column: 57, scope: !571)
!1656 = !DILocation(line: 853, column: 21, scope: !571)
!1657 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1658)
!1658 = distinct !DILocation(line: 853, column: 9, scope: !571)
!1659 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1658)
!1660 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1658)
!1661 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1658)
!1662 = !DILocation(line: 854, column: 21, scope: !571)
!1663 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1658)
!1664 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1658)
!1665 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1658)
!1666 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1658)
!1667 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1658)
!1668 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1658)
!1669 = !DILocation(line: 853, column: 9, scope: !571)
!1670 = !DILocation(line: 840, column: 21, scope: !571)
!1671 = !DILocation(line: 855, column: 5, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !587, file: !1, discriminator: 1)
!1673 = !DILocation(line: 855, column: 5, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !587, file: !1, line: 855, column: 5)
!1675 = !DILocation(line: 855, column: 5, scope: !587)
!1676 = !DILocation(line: 855, column: 5, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1674, file: !1, discriminator: 3)
!1678 = !DILocation(line: 857, column: 1, scope: !571)
!1679 = !DILocation(line: 860, column: 28, scope: !588)
!1680 = !DILocation(line: 861, column: 28, scope: !588)
!1681 = !DILocation(line: 863, column: 5, scope: !588)
!1682 = !DILocation(line: 864, column: 5, scope: !588)
!1683 = !DILocation(line: 864, column: 17, scope: !588)
!1684 = !DILocation(line: 863, column: 15, scope: !588)
!1685 = !DILocation(line: 866, column: 10, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !588, file: !1, line: 866, column: 9)
!1687 = !DILocation(line: 866, column: 9, scope: !588)
!1688 = !DILocation(line: 870, column: 32, scope: !588)
!1689 = !DILocation(line: 870, column: 11, scope: !588)
!1690 = !DILocation(line: 870, column: 9, scope: !588)
!1691 = !DILocation(line: 871, column: 13, scope: !598)
!1692 = !DILocation(line: 871, column: 21, scope: !598)
!1693 = !DILocation(line: 871, column: 24, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!1695 = !DILocation(line: 871, column: 24, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 3)
!1697 = !DILocation(line: 872, column: 9, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!1699 = !DILocation(line: 871, column: 9, scope: !588)
!1700 = !DILocation(line: 872, column: 9, scope: !601)
!1701 = !DILocation(line: 872, column: 9, scope: !596)
!1702 = !DILocation(line: 872, column: 9, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 4)
!1704 = !DILocation(line: 872, column: 9, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !600, file: !1, line: 872, column: 9)
!1706 = !DILocation(line: 872, column: 9, scope: !600)
!1707 = !DILocation(line: 872, column: 9, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1705, file: !1, discriminator: 6)
!1709 = !DILocation(line: 875, column: 44, scope: !588)
!1710 = !DILocation(line: 875, column: 49, scope: !588)
!1711 = !DILocation(line: 875, column: 21, scope: !588)
!1712 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 875, column: 9, scope: !588)
!1714 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1713)
!1715 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1713)
!1716 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1713)
!1717 = !DILocation(line: 876, column: 21, scope: !588)
!1718 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1713)
!1719 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1713)
!1720 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1713)
!1721 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1713)
!1722 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1713)
!1723 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1713)
!1724 = !DILocation(line: 875, column: 9, scope: !588)
!1725 = !DILocation(line: 863, column: 21, scope: !588)
!1726 = !DILocation(line: 877, column: 5, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!1728 = !DILocation(line: 877, column: 5, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !603, file: !1, line: 877, column: 5)
!1730 = !DILocation(line: 877, column: 5, scope: !603)
!1731 = !DILocation(line: 877, column: 5, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1729, file: !1, discriminator: 3)
!1733 = !DILocation(line: 879, column: 1, scope: !588)
!1734 = !DILocation(line: 882, column: 28, scope: !604)
!1735 = !DILocation(line: 883, column: 28, scope: !604)
!1736 = !DILocation(line: 885, column: 5, scope: !604)
!1737 = !DILocation(line: 886, column: 5, scope: !604)
!1738 = !DILocation(line: 886, column: 17, scope: !604)
!1739 = !DILocation(line: 885, column: 15, scope: !604)
!1740 = !DILocation(line: 888, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !604, file: !1, line: 888, column: 9)
!1742 = !DILocation(line: 888, column: 9, scope: !604)
!1743 = !DILocation(line: 892, column: 32, scope: !604)
!1744 = !DILocation(line: 892, column: 11, scope: !604)
!1745 = !DILocation(line: 892, column: 9, scope: !604)
!1746 = !DILocation(line: 893, column: 13, scope: !614)
!1747 = !DILocation(line: 893, column: 21, scope: !614)
!1748 = !DILocation(line: 893, column: 24, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 1)
!1750 = !DILocation(line: 893, column: 24, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !614, file: !1, discriminator: 3)
!1752 = !DILocation(line: 894, column: 9, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 1)
!1754 = !DILocation(line: 893, column: 9, scope: !604)
!1755 = !DILocation(line: 894, column: 9, scope: !617)
!1756 = !DILocation(line: 894, column: 9, scope: !612)
!1757 = !DILocation(line: 894, column: 9, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !616, file: !1, discriminator: 4)
!1759 = !DILocation(line: 894, column: 9, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !616, file: !1, line: 894, column: 9)
!1761 = !DILocation(line: 894, column: 9, scope: !616)
!1762 = !DILocation(line: 894, column: 9, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1760, file: !1, discriminator: 6)
!1764 = !DILocation(line: 897, column: 44, scope: !604)
!1765 = !DILocation(line: 897, column: 49, scope: !604)
!1766 = !DILocation(line: 897, column: 21, scope: !604)
!1767 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 897, column: 9, scope: !604)
!1769 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1768)
!1770 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1768)
!1771 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1768)
!1772 = !DILocation(line: 898, column: 21, scope: !604)
!1773 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1768)
!1774 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1768)
!1775 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1768)
!1776 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1768)
!1777 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1768)
!1778 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1768)
!1779 = !DILocation(line: 897, column: 9, scope: !604)
!1780 = !DILocation(line: 885, column: 21, scope: !604)
!1781 = !DILocation(line: 899, column: 5, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !619, file: !1, discriminator: 1)
!1783 = !DILocation(line: 899, column: 5, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !619, file: !1, line: 899, column: 5)
!1785 = !DILocation(line: 899, column: 5, scope: !619)
!1786 = !DILocation(line: 899, column: 5, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1784, file: !1, discriminator: 3)
!1788 = !DILocation(line: 901, column: 1, scope: !604)
!1789 = !DILocation(line: 407, column: 25, scope: !620)
!1790 = !DILocation(line: 408, column: 23, scope: !620)
!1791 = !DILocation(line: 410, column: 5, scope: !620)
!1792 = !DILocation(line: 411, column: 5, scope: !620)
!1793 = !DILocation(line: 411, column: 17, scope: !620)
!1794 = !DILocation(line: 412, column: 5, scope: !620)
!1795 = !DILocation(line: 412, column: 9, scope: !620)
!1796 = !DILocation(line: 413, column: 5, scope: !620)
!1797 = !DILocation(line: 413, column: 9, scope: !620)
!1798 = !DILocation(line: 414, column: 5, scope: !620)
!1799 = !DILocation(line: 410, column: 15, scope: !620)
!1800 = !DILocation(line: 417, column: 10, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !620, file: !1, line: 417, column: 9)
!1802 = !DILocation(line: 417, column: 9, scope: !620)
!1803 = !DILocation(line: 420, column: 21, scope: !620)
!1804 = !DILocation(line: 414, column: 16, scope: !620)
!1805 = !DILocation(line: 420, column: 14, scope: !620)
!1806 = !DILocation(line: 421, column: 50, scope: !620)
!1807 = !DILocation(line: 421, column: 65, scope: !620)
!1808 = !DILocation(line: 422, column: 53, scope: !620)
!1809 = !DILocation(line: 422, column: 53, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !620, file: !1, discriminator: 1)
!1811 = !DILocation(line: 421, column: 15, scope: !620)
!1812 = !DILocation(line: 415, column: 15, scope: !620)
!1813 = !DILocation(line: 423, column: 5, scope: !620)
!1814 = !DILocation(line: 424, column: 17, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !620, file: !1, line: 424, column: 9)
!1816 = !DILocation(line: 424, column: 9, scope: !620)
!1817 = !DILocation(line: 426, column: 33, scope: !620)
!1818 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1819)
!1819 = distinct !DILocation(line: 426, column: 12, scope: !620)
!1820 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1819)
!1821 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1819)
!1822 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1819)
!1823 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1819)
!1824 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1819)
!1825 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1819)
!1826 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1819)
!1827 = !DILocation(line: 426, column: 12, scope: !620)
!1828 = !DILocation(line: 427, column: 1, scope: !620)
!1829 = !DILocation(line: 430, column: 28, scope: !630)
!1830 = !DILocation(line: 431, column: 28, scope: !630)
!1831 = !DILocation(line: 433, column: 5, scope: !630)
!1832 = !DILocation(line: 434, column: 5, scope: !630)
!1833 = !DILocation(line: 434, column: 17, scope: !630)
!1834 = !DILocation(line: 435, column: 5, scope: !630)
!1835 = !DILocation(line: 435, column: 9, scope: !630)
!1836 = !DILocation(line: 436, column: 5, scope: !630)
!1837 = !DILocation(line: 436, column: 9, scope: !630)
!1838 = !DILocation(line: 437, column: 5, scope: !630)
!1839 = !DILocation(line: 433, column: 15, scope: !630)
!1840 = !DILocation(line: 440, column: 10, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !630, file: !1, line: 440, column: 9)
!1842 = !DILocation(line: 440, column: 9, scope: !630)
!1843 = !DILocation(line: 443, column: 21, scope: !630)
!1844 = !DILocation(line: 437, column: 16, scope: !630)
!1845 = !DILocation(line: 443, column: 14, scope: !630)
!1846 = !DILocation(line: 444, column: 50, scope: !630)
!1847 = !DILocation(line: 444, column: 65, scope: !630)
!1848 = !DILocation(line: 445, column: 53, scope: !630)
!1849 = !DILocation(line: 445, column: 53, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!1851 = !DILocation(line: 444, column: 15, scope: !630)
!1852 = !DILocation(line: 438, column: 15, scope: !630)
!1853 = !DILocation(line: 446, column: 5, scope: !630)
!1854 = !DILocation(line: 447, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !630, file: !1, line: 447, column: 9)
!1856 = !DILocation(line: 447, column: 9, scope: !630)
!1857 = !DILocation(line: 449, column: 33, scope: !630)
!1858 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1859)
!1859 = distinct !DILocation(line: 449, column: 12, scope: !630)
!1860 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1859)
!1861 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1859)
!1862 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1859)
!1863 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1859)
!1864 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1859)
!1865 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1859)
!1866 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1859)
!1867 = !DILocation(line: 449, column: 12, scope: !630)
!1868 = !DILocation(line: 450, column: 1, scope: !630)
!1869 = !DILocation(line: 453, column: 28, scope: !640)
!1870 = !DILocation(line: 454, column: 28, scope: !640)
!1871 = !DILocation(line: 456, column: 5, scope: !640)
!1872 = !DILocation(line: 457, column: 5, scope: !640)
!1873 = !DILocation(line: 457, column: 17, scope: !640)
!1874 = !DILocation(line: 458, column: 5, scope: !640)
!1875 = !DILocation(line: 458, column: 9, scope: !640)
!1876 = !DILocation(line: 459, column: 5, scope: !640)
!1877 = !DILocation(line: 459, column: 9, scope: !640)
!1878 = !DILocation(line: 460, column: 5, scope: !640)
!1879 = !DILocation(line: 456, column: 15, scope: !640)
!1880 = !DILocation(line: 463, column: 10, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !640, file: !1, line: 463, column: 9)
!1882 = !DILocation(line: 463, column: 9, scope: !640)
!1883 = !DILocation(line: 466, column: 21, scope: !640)
!1884 = !DILocation(line: 460, column: 16, scope: !640)
!1885 = !DILocation(line: 466, column: 14, scope: !640)
!1886 = !DILocation(line: 467, column: 50, scope: !640)
!1887 = !DILocation(line: 467, column: 65, scope: !640)
!1888 = !DILocation(line: 468, column: 53, scope: !640)
!1889 = !DILocation(line: 468, column: 53, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !640, file: !1, discriminator: 1)
!1891 = !DILocation(line: 467, column: 15, scope: !640)
!1892 = !DILocation(line: 461, column: 15, scope: !640)
!1893 = !DILocation(line: 469, column: 5, scope: !640)
!1894 = !DILocation(line: 470, column: 17, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !640, file: !1, line: 470, column: 9)
!1896 = !DILocation(line: 470, column: 9, scope: !640)
!1897 = !DILocation(line: 472, column: 33, scope: !640)
!1898 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 472, column: 12, scope: !640)
!1900 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1899)
!1901 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1899)
!1902 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1899)
!1903 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1899)
!1904 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1899)
!1905 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1899)
!1906 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1899)
!1907 = !DILocation(line: 472, column: 12, scope: !640)
!1908 = !DILocation(line: 473, column: 1, scope: !640)
!1909 = !DILocation(line: 484, column: 28, scope: !650)
!1910 = !DILocation(line: 485, column: 28, scope: !650)
!1911 = !DILocation(line: 487, column: 5, scope: !650)
!1912 = !DILocation(line: 488, column: 5, scope: !650)
!1913 = !DILocation(line: 488, column: 17, scope: !650)
!1914 = !DILocation(line: 489, column: 5, scope: !650)
!1915 = !DILocation(line: 489, column: 9, scope: !650)
!1916 = !DILocation(line: 491, column: 5, scope: !650)
!1917 = !DILocation(line: 491, column: 9, scope: !650)
!1918 = !DILocation(line: 492, column: 5, scope: !650)
!1919 = !DILocation(line: 487, column: 15, scope: !650)
!1920 = !DILocation(line: 494, column: 10, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !650, file: !1, line: 494, column: 9)
!1922 = !DILocation(line: 494, column: 9, scope: !650)
!1923 = !DILocation(line: 497, column: 21, scope: !650)
!1924 = !DILocation(line: 492, column: 16, scope: !650)
!1925 = !DILocation(line: 497, column: 14, scope: !650)
!1926 = !DILocation(line: 498, column: 50, scope: !650)
!1927 = !DILocation(line: 498, column: 65, scope: !650)
!1928 = !DILocation(line: 499, column: 53, scope: !650)
!1929 = !DILocation(line: 499, column: 53, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 1)
!1931 = !DILocation(line: 498, column: 15, scope: !650)
!1932 = !DILocation(line: 490, column: 15, scope: !650)
!1933 = !DILocation(line: 500, column: 5, scope: !650)
!1934 = !DILocation(line: 501, column: 17, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !650, file: !1, line: 501, column: 9)
!1936 = !DILocation(line: 501, column: 9, scope: !650)
!1937 = !DILocation(line: 503, column: 43, scope: !650)
!1938 = !DILocation(line: 503, column: 53, scope: !650)
!1939 = !DILocation(line: 503, column: 13, scope: !650)
!1940 = !DILocation(line: 490, column: 25, scope: !650)
!1941 = !DILocation(line: 504, column: 5, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !662, file: !1, discriminator: 1)
!1943 = !DILocation(line: 504, column: 5, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !662, file: !1, line: 504, column: 5)
!1945 = !DILocation(line: 504, column: 5, scope: !662)
!1946 = !DILocation(line: 504, column: 5, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1944, file: !1, discriminator: 3)
!1948 = !DILocation(line: 506, column: 1, scope: !650)
!1949 = !DILocation(line: 904, column: 33, scope: !663)
!1950 = !DILocation(line: 905, column: 32, scope: !663)
!1951 = !DILocation(line: 907, column: 5, scope: !663)
!1952 = !DILocation(line: 908, column: 5, scope: !663)
!1953 = !DILocation(line: 908, column: 17, scope: !663)
!1954 = !DILocation(line: 907, column: 15, scope: !663)
!1955 = !DILocation(line: 910, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !663, file: !1, line: 910, column: 9)
!1957 = !DILocation(line: 910, column: 9, scope: !663)
!1958 = !DILocation(line: 914, column: 32, scope: !663)
!1959 = !DILocation(line: 914, column: 11, scope: !663)
!1960 = !DILocation(line: 914, column: 9, scope: !663)
!1961 = !DILocation(line: 915, column: 13, scope: !673)
!1962 = !DILocation(line: 915, column: 21, scope: !673)
!1963 = !DILocation(line: 915, column: 24, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 1)
!1965 = !DILocation(line: 915, column: 24, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !673, file: !1, discriminator: 3)
!1967 = !DILocation(line: 916, column: 9, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !671, file: !1, discriminator: 1)
!1969 = !DILocation(line: 915, column: 9, scope: !663)
!1970 = !DILocation(line: 916, column: 9, scope: !676)
!1971 = !DILocation(line: 916, column: 9, scope: !671)
!1972 = !DILocation(line: 916, column: 9, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !675, file: !1, discriminator: 4)
!1974 = !DILocation(line: 916, column: 9, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !675, file: !1, line: 916, column: 9)
!1976 = !DILocation(line: 916, column: 9, scope: !675)
!1977 = !DILocation(line: 916, column: 9, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1975, file: !1, discriminator: 6)
!1979 = !DILocation(line: 919, column: 53, scope: !663)
!1980 = !DILocation(line: 919, column: 21, scope: !663)
!1981 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 919, column: 9, scope: !663)
!1983 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !1982)
!1984 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !1982)
!1985 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !1982)
!1986 = !DILocation(line: 920, column: 21, scope: !663)
!1987 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !1982)
!1988 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !1982)
!1989 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !1982)
!1990 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !1982)
!1991 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !1982)
!1992 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !1982)
!1993 = !DILocation(line: 919, column: 9, scope: !663)
!1994 = !DILocation(line: 907, column: 21, scope: !663)
!1995 = !DILocation(line: 921, column: 5, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !678, file: !1, discriminator: 1)
!1997 = !DILocation(line: 921, column: 5, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !678, file: !1, line: 921, column: 5)
!1999 = !DILocation(line: 921, column: 5, scope: !678)
!2000 = !DILocation(line: 921, column: 5, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 3)
!2002 = !DILocation(line: 923, column: 1, scope: !663)
!2003 = !DILocation(line: 509, column: 33, scope: !679)
!2004 = !DILocation(line: 510, column: 32, scope: !679)
!2005 = !DILocation(line: 512, column: 5, scope: !679)
!2006 = !DILocation(line: 513, column: 5, scope: !679)
!2007 = !DILocation(line: 513, column: 17, scope: !679)
!2008 = !DILocation(line: 512, column: 15, scope: !679)
!2009 = !DILocation(line: 516, column: 10, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !679, file: !1, line: 516, column: 9)
!2011 = !DILocation(line: 516, column: 9, scope: !679)
!2012 = !DILocation(line: 520, column: 50, scope: !679)
!2013 = !DILocation(line: 520, column: 60, scope: !679)
!2014 = !DILocation(line: 520, column: 65, scope: !679)
!2015 = !DILocation(line: 520, column: 15, scope: !679)
!2016 = !DILocation(line: 514, column: 19, scope: !679)
!2017 = !DILocation(line: 521, column: 5, scope: !679)
!2018 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 522, column: 12, scope: !679)
!2020 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2019)
!2021 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2019)
!2022 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2019)
!2023 = !DILocation(line: 522, column: 38, scope: !679)
!2024 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2019)
!2025 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2019)
!2026 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2019)
!2027 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2019)
!2028 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2019)
!2029 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2019)
!2030 = !DILocation(line: 522, column: 12, scope: !679)
!2031 = !DILocation(line: 523, column: 1, scope: !679)
!2032 = !DILocation(line: 672, column: 35, scope: !686)
!2033 = !DILocation(line: 673, column: 35, scope: !686)
!2034 = !DILocation(line: 675, column: 5, scope: !686)
!2035 = !DILocation(line: 676, column: 5, scope: !686)
!2036 = !DILocation(line: 676, column: 17, scope: !686)
!2037 = !DILocation(line: 677, column: 5, scope: !686)
!2038 = !DILocation(line: 678, column: 5, scope: !686)
!2039 = !DILocation(line: 680, column: 22, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !686, file: !1, line: 680, column: 9)
!2041 = !DILocation(line: 680, column: 9, scope: !2040)
!2042 = !DILocation(line: 680, column: 9, scope: !686)
!2043 = !DILocation(line: 675, column: 15, scope: !686)
!2044 = !DILocation(line: 685, column: 10, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !686, file: !1, line: 685, column: 9)
!2046 = !DILocation(line: 685, column: 9, scope: !686)
!2047 = !DILocation(line: 689, column: 9, scope: !697)
!2048 = !{!1066, !893, i64 168}
!2049 = !DILocation(line: 689, column: 9, scope: !686)
!2050 = !DILocation(line: 692, column: 13, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !696, file: !1, line: 692, column: 13)
!2052 = !DILocation(line: 692, column: 13, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2051, file: !1, discriminator: 2)
!2054 = !DILocation(line: 692, column: 13, scope: !696)
!2055 = !DILocation(line: 695, column: 40, scope: !696)
!2056 = !DILocation(line: 678, column: 16, scope: !686)
!2057 = !DILocation(line: 695, column: 13, scope: !696)
!2058 = !DILocation(line: 690, column: 21, scope: !696)
!2059 = !DILocation(line: 696, column: 15, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !696, file: !1, line: 696, column: 13)
!2061 = !DILocation(line: 696, column: 13, scope: !696)
!2062 = !DILocation(line: 698, column: 13, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !696, file: !1, line: 698, column: 13)
!2064 = !DILocation(line: 698, column: 17, scope: !2063)
!2065 = !DILocation(line: 698, column: 13, scope: !696)
!2066 = !DILocation(line: 699, column: 20, scope: !2063)
!2067 = !DILocation(line: 699, column: 13, scope: !2063)
!2068 = !DILocation(line: 700, column: 20, scope: !696)
!2069 = !DILocation(line: 678, column: 21, scope: !686)
!2070 = !DILocation(line: 700, column: 14, scope: !696)
!2071 = !DILocation(line: 701, column: 54, scope: !696)
!2072 = !DILocation(line: 701, column: 28, scope: !696)
!2073 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2074)
!2074 = distinct !DILocation(line: 701, column: 16, scope: !696)
!2075 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2074)
!2076 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2074)
!2077 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2074)
!2078 = !DILocation(line: 702, column: 28, scope: !696)
!2079 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2074)
!2080 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2074)
!2081 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2074)
!2082 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2074)
!2083 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2074)
!2084 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2074)
!2085 = !DILocation(line: 701, column: 16, scope: !696)
!2086 = !DILocation(line: 677, column: 17, scope: !686)
!2087 = !DILocation(line: 705, column: 13, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !1, line: 705, column: 13)
!2089 = distinct !DILexicalBlock(scope: !697, file: !1, line: 704, column: 10)
!2090 = !DILocation(line: 705, column: 13, scope: !2089)
!2091 = !DILocation(line: 707, column: 54, scope: !2089)
!2092 = !DILocation(line: 707, column: 60, scope: !2089)
!2093 = !DILocation(line: 707, column: 28, scope: !2089)
!2094 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 707, column: 16, scope: !2089)
!2096 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2095)
!2097 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2095)
!2098 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2095)
!2099 = !DILocation(line: 707, column: 67, scope: !2089)
!2100 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2095)
!2101 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2095)
!2102 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2095)
!2103 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2095)
!2104 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2095)
!2105 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2095)
!2106 = !DILocation(line: 707, column: 16, scope: !2089)
!2107 = !DILocation(line: 709, column: 1, scope: !686)
!2108 = !DILocation(line: 229, column: 35, scope: !700)
!2109 = !DILocation(line: 230, column: 35, scope: !700)
!2110 = !DILocation(line: 232, column: 5, scope: !700)
!2111 = !DILocation(line: 233, column: 5, scope: !700)
!2112 = !DILocation(line: 233, column: 17, scope: !700)
!2113 = !DILocation(line: 234, column: 5, scope: !700)
!2114 = !DILocation(line: 235, column: 5, scope: !700)
!2115 = !DILocation(line: 232, column: 15, scope: !700)
!2116 = !DILocation(line: 237, column: 10, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !700, file: !1, line: 237, column: 9)
!2118 = !DILocation(line: 237, column: 9, scope: !700)
!2119 = !DILocation(line: 241, column: 9, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !700, file: !1, line: 241, column: 9)
!2121 = !DILocation(line: 241, column: 9, scope: !700)
!2122 = !DILocation(line: 242, column: 13, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !1, line: 242, column: 13)
!2124 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 241, column: 31)
!2125 = !DILocation(line: 244, column: 9, scope: !2124)
!2126 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 245, column: 16, scope: !2124)
!2128 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2127)
!2129 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2127)
!2130 = !DILocation(line: 242, column: 13, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2123, file: !1, discriminator: 2)
!2132 = !DILocation(line: 242, column: 13, scope: !2124)
!2133 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2127)
!2134 = !DILocation(line: 245, column: 33, scope: !2124)
!2135 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2127)
!2136 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2127)
!2137 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2127)
!2138 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2127)
!2139 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2127)
!2140 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2127)
!2141 = !DILocation(line: 245, column: 16, scope: !2124)
!2142 = !DILocation(line: 234, column: 17, scope: !700)
!2143 = !DILocation(line: 235, column: 16, scope: !700)
!2144 = !DILocation(line: 248, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 248, column: 13)
!2146 = distinct !DILexicalBlock(scope: !2120, file: !1, line: 247, column: 10)
!2147 = !DILocation(line: 248, column: 13, scope: !2146)
!2148 = !DILocation(line: 251, column: 61, scope: !2146)
!2149 = !DILocation(line: 251, column: 67, scope: !2146)
!2150 = !DILocation(line: 251, column: 73, scope: !2146)
!2151 = !DILocation(line: 251, column: 28, scope: !2146)
!2152 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 251, column: 16, scope: !2146)
!2154 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2153)
!2155 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2153)
!2156 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2153)
!2157 = !DILocation(line: 252, column: 28, scope: !2146)
!2158 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2153)
!2159 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2153)
!2160 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2153)
!2161 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2153)
!2162 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2153)
!2163 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2153)
!2164 = !DILocation(line: 251, column: 16, scope: !2146)
!2165 = !DILocation(line: 254, column: 1, scope: !700)
!2166 = !DILocation(line: 926, column: 37, scope: !708)
!2167 = !DILocation(line: 927, column: 35, scope: !708)
!2168 = !DILocation(line: 929, column: 5, scope: !708)
!2169 = !DILocation(line: 930, column: 5, scope: !708)
!2170 = !DILocation(line: 930, column: 17, scope: !708)
!2171 = !DILocation(line: 929, column: 15, scope: !708)
!2172 = !DILocation(line: 932, column: 10, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !708, file: !1, line: 932, column: 9)
!2174 = !DILocation(line: 932, column: 9, scope: !708)
!2175 = !DILocation(line: 936, column: 32, scope: !708)
!2176 = !DILocation(line: 936, column: 11, scope: !708)
!2177 = !DILocation(line: 936, column: 9, scope: !708)
!2178 = !DILocation(line: 937, column: 13, scope: !718)
!2179 = !DILocation(line: 937, column: 21, scope: !718)
!2180 = !DILocation(line: 937, column: 24, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 1)
!2182 = !DILocation(line: 937, column: 24, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 3)
!2184 = !DILocation(line: 938, column: 9, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !716, file: !1, discriminator: 1)
!2186 = !DILocation(line: 937, column: 9, scope: !708)
!2187 = !DILocation(line: 938, column: 9, scope: !721)
!2188 = !DILocation(line: 938, column: 9, scope: !716)
!2189 = !DILocation(line: 938, column: 9, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !720, file: !1, discriminator: 4)
!2191 = !DILocation(line: 938, column: 9, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !720, file: !1, line: 938, column: 9)
!2193 = !DILocation(line: 938, column: 9, scope: !720)
!2194 = !DILocation(line: 938, column: 9, scope: !2195)
!2195 = !DILexicalBlockFile(scope: !2192, file: !1, discriminator: 6)
!2196 = !DILocation(line: 941, column: 56, scope: !708)
!2197 = !DILocation(line: 941, column: 21, scope: !708)
!2198 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 941, column: 9, scope: !708)
!2200 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2199)
!2201 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2199)
!2202 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2199)
!2203 = !DILocation(line: 942, column: 21, scope: !708)
!2204 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2199)
!2205 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2199)
!2206 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2199)
!2207 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2199)
!2208 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2199)
!2209 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2199)
!2210 = !DILocation(line: 941, column: 9, scope: !708)
!2211 = !DILocation(line: 929, column: 21, scope: !708)
!2212 = !DILocation(line: 943, column: 5, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 1)
!2214 = !DILocation(line: 943, column: 5, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !723, file: !1, line: 943, column: 5)
!2216 = !DILocation(line: 943, column: 5, scope: !723)
!2217 = !DILocation(line: 943, column: 5, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !2215, file: !1, discriminator: 3)
!2219 = !DILocation(line: 945, column: 1, scope: !708)
!2220 = !DILocation(line: 526, column: 37, scope: !724)
!2221 = !DILocation(line: 527, column: 35, scope: !724)
!2222 = !DILocation(line: 529, column: 5, scope: !724)
!2223 = !DILocation(line: 530, column: 5, scope: !724)
!2224 = !DILocation(line: 530, column: 17, scope: !724)
!2225 = !DILocation(line: 529, column: 15, scope: !724)
!2226 = !DILocation(line: 533, column: 10, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !724, file: !1, line: 533, column: 9)
!2228 = !DILocation(line: 533, column: 9, scope: !724)
!2229 = !DILocation(line: 537, column: 53, scope: !724)
!2230 = !DILocation(line: 537, column: 63, scope: !724)
!2231 = !DILocation(line: 537, column: 68, scope: !724)
!2232 = !DILocation(line: 537, column: 15, scope: !724)
!2233 = !DILocation(line: 531, column: 15, scope: !724)
!2234 = !DILocation(line: 538, column: 5, scope: !724)
!2235 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 539, column: 12, scope: !724)
!2237 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2236)
!2238 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2236)
!2239 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2236)
!2240 = !DILocation(line: 539, column: 38, scope: !724)
!2241 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2236)
!2242 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2236)
!2243 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2236)
!2244 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2236)
!2245 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2236)
!2246 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2236)
!2247 = !DILocation(line: 539, column: 12, scope: !724)
!2248 = !DILocation(line: 540, column: 1, scope: !724)
!2249 = !DILocation(line: 948, column: 26, scope: !731)
!2250 = !DILocation(line: 949, column: 26, scope: !731)
!2251 = !DILocation(line: 951, column: 5, scope: !731)
!2252 = !DILocation(line: 952, column: 5, scope: !731)
!2253 = !DILocation(line: 952, column: 17, scope: !731)
!2254 = !DILocation(line: 951, column: 15, scope: !731)
!2255 = !DILocation(line: 954, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !731, file: !1, line: 954, column: 9)
!2257 = !DILocation(line: 954, column: 9, scope: !731)
!2258 = !DILocation(line: 958, column: 32, scope: !731)
!2259 = !DILocation(line: 958, column: 11, scope: !731)
!2260 = !DILocation(line: 958, column: 9, scope: !731)
!2261 = !DILocation(line: 959, column: 13, scope: !741)
!2262 = !DILocation(line: 959, column: 21, scope: !741)
!2263 = !DILocation(line: 959, column: 24, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !741, file: !1, discriminator: 1)
!2265 = !DILocation(line: 959, column: 24, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !741, file: !1, discriminator: 3)
!2267 = !DILocation(line: 960, column: 9, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !739, file: !1, discriminator: 1)
!2269 = !DILocation(line: 959, column: 9, scope: !731)
!2270 = !DILocation(line: 960, column: 9, scope: !744)
!2271 = !DILocation(line: 960, column: 9, scope: !739)
!2272 = !DILocation(line: 960, column: 9, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !743, file: !1, discriminator: 4)
!2274 = !DILocation(line: 960, column: 9, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !743, file: !1, line: 960, column: 9)
!2276 = !DILocation(line: 960, column: 9, scope: !743)
!2277 = !DILocation(line: 960, column: 9, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !2275, file: !1, discriminator: 6)
!2279 = !DILocation(line: 963, column: 47, scope: !731)
!2280 = !DILocation(line: 963, column: 52, scope: !731)
!2281 = !DILocation(line: 963, column: 21, scope: !731)
!2282 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 963, column: 9, scope: !731)
!2284 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2283)
!2285 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2283)
!2286 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2283)
!2287 = !DILocation(line: 964, column: 21, scope: !731)
!2288 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2283)
!2289 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2283)
!2290 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2283)
!2291 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2283)
!2292 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2283)
!2293 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2283)
!2294 = !DILocation(line: 963, column: 9, scope: !731)
!2295 = !DILocation(line: 951, column: 21, scope: !731)
!2296 = !DILocation(line: 965, column: 5, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!2298 = !DILocation(line: 965, column: 5, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !746, file: !1, line: 965, column: 5)
!2300 = !DILocation(line: 965, column: 5, scope: !746)
!2301 = !DILocation(line: 965, column: 5, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2299, file: !1, discriminator: 3)
!2303 = !DILocation(line: 967, column: 1, scope: !731)
!2304 = !DILocation(line: 543, column: 26, scope: !747)
!2305 = !DILocation(line: 544, column: 26, scope: !747)
!2306 = !DILocation(line: 546, column: 5, scope: !747)
!2307 = !DILocation(line: 548, column: 5, scope: !747)
!2308 = !DILocation(line: 548, column: 17, scope: !747)
!2309 = !DILocation(line: 546, column: 15, scope: !747)
!2310 = !DILocation(line: 550, column: 10, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !747, file: !1, line: 550, column: 9)
!2312 = !DILocation(line: 550, column: 9, scope: !747)
!2313 = !DILocation(line: 554, column: 43, scope: !747)
!2314 = !DILocation(line: 554, column: 53, scope: !747)
!2315 = !DILocation(line: 554, column: 58, scope: !747)
!2316 = !DILocation(line: 554, column: 15, scope: !747)
!2317 = !DILocation(line: 547, column: 15, scope: !747)
!2318 = !DILocation(line: 555, column: 5, scope: !747)
!2319 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 556, column: 12, scope: !747)
!2321 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2320)
!2322 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2320)
!2323 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2320)
!2324 = !DILocation(line: 556, column: 38, scope: !747)
!2325 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2320)
!2326 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2320)
!2327 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2320)
!2328 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2320)
!2329 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2320)
!2330 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2320)
!2331 = !DILocation(line: 556, column: 12, scope: !747)
!2332 = !DILocation(line: 557, column: 1, scope: !747)
!2333 = !DILocation(line: 970, column: 24, scope: !754)
!2334 = !DILocation(line: 971, column: 24, scope: !754)
!2335 = !DILocation(line: 973, column: 5, scope: !754)
!2336 = !DILocation(line: 974, column: 5, scope: !754)
!2337 = !DILocation(line: 974, column: 17, scope: !754)
!2338 = !DILocation(line: 973, column: 15, scope: !754)
!2339 = !DILocation(line: 976, column: 10, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !754, file: !1, line: 976, column: 9)
!2341 = !DILocation(line: 976, column: 9, scope: !754)
!2342 = !DILocation(line: 980, column: 32, scope: !754)
!2343 = !DILocation(line: 980, column: 11, scope: !754)
!2344 = !DILocation(line: 980, column: 9, scope: !754)
!2345 = !DILocation(line: 981, column: 13, scope: !764)
!2346 = !DILocation(line: 981, column: 21, scope: !764)
!2347 = !DILocation(line: 981, column: 24, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 1)
!2349 = !DILocation(line: 981, column: 24, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 3)
!2351 = !DILocation(line: 982, column: 9, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!2353 = !DILocation(line: 981, column: 9, scope: !754)
!2354 = !DILocation(line: 982, column: 9, scope: !767)
!2355 = !DILocation(line: 982, column: 9, scope: !762)
!2356 = !DILocation(line: 982, column: 9, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !766, file: !1, discriminator: 4)
!2358 = !DILocation(line: 982, column: 9, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !766, file: !1, line: 982, column: 9)
!2360 = !DILocation(line: 982, column: 9, scope: !766)
!2361 = !DILocation(line: 982, column: 9, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2359, file: !1, discriminator: 6)
!2363 = !DILocation(line: 985, column: 46, scope: !754)
!2364 = !DILocation(line: 985, column: 51, scope: !754)
!2365 = !DILocation(line: 985, column: 21, scope: !754)
!2366 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2367)
!2367 = distinct !DILocation(line: 985, column: 9, scope: !754)
!2368 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2367)
!2369 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2367)
!2370 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2367)
!2371 = !DILocation(line: 986, column: 21, scope: !754)
!2372 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2367)
!2373 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2367)
!2374 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2367)
!2375 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2367)
!2376 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2367)
!2377 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2367)
!2378 = !DILocation(line: 985, column: 9, scope: !754)
!2379 = !DILocation(line: 973, column: 21, scope: !754)
!2380 = !DILocation(line: 987, column: 5, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !769, file: !1, discriminator: 1)
!2382 = !DILocation(line: 987, column: 5, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !769, file: !1, line: 987, column: 5)
!2384 = !DILocation(line: 987, column: 5, scope: !769)
!2385 = !DILocation(line: 987, column: 5, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2383, file: !1, discriminator: 3)
!2387 = !DILocation(line: 989, column: 1, scope: !754)
!2388 = !DILocation(line: 560, column: 24, scope: !770)
!2389 = !DILocation(line: 561, column: 24, scope: !770)
!2390 = !DILocation(line: 563, column: 5, scope: !770)
!2391 = !DILocation(line: 565, column: 5, scope: !770)
!2392 = !DILocation(line: 565, column: 17, scope: !770)
!2393 = !DILocation(line: 563, column: 15, scope: !770)
!2394 = !DILocation(line: 567, column: 10, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !770, file: !1, line: 567, column: 9)
!2396 = !DILocation(line: 567, column: 9, scope: !770)
!2397 = !DILocation(line: 571, column: 42, scope: !770)
!2398 = !DILocation(line: 571, column: 52, scope: !770)
!2399 = !DILocation(line: 571, column: 57, scope: !770)
!2400 = !DILocation(line: 571, column: 15, scope: !770)
!2401 = !DILocation(line: 564, column: 15, scope: !770)
!2402 = !DILocation(line: 572, column: 5, scope: !770)
!2403 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 573, column: 12, scope: !770)
!2405 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2404)
!2406 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2404)
!2407 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2404)
!2408 = !DILocation(line: 573, column: 38, scope: !770)
!2409 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2404)
!2410 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2404)
!2411 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2404)
!2412 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2404)
!2413 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2404)
!2414 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2404)
!2415 = !DILocation(line: 573, column: 12, scope: !770)
!2416 = !DILocation(line: 574, column: 1, scope: !770)
!2417 = !DILocation(line: 992, column: 26, scope: !777)
!2418 = !DILocation(line: 993, column: 24, scope: !777)
!2419 = !DILocation(line: 995, column: 5, scope: !777)
!2420 = !DILocation(line: 996, column: 5, scope: !777)
!2421 = !DILocation(line: 996, column: 17, scope: !777)
!2422 = !DILocation(line: 997, column: 5, scope: !777)
!2423 = !DILocation(line: 997, column: 15, scope: !777)
!2424 = !DILocation(line: 995, column: 15, scope: !777)
!2425 = !DILocation(line: 999, column: 10, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !777, file: !1, line: 999, column: 9)
!2427 = !DILocation(line: 999, column: 9, scope: !777)
!2428 = !DILocation(line: 1002, column: 9, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !777, file: !1, line: 1002, column: 9)
!2430 = !DILocation(line: 1002, column: 17, scope: !2429)
!2431 = !DILocation(line: 1002, column: 9, scope: !777)
!2432 = !DILocation(line: 1003, column: 17, scope: !2429)
!2433 = !DILocation(line: 1003, column: 9, scope: !2429)
!2434 = !DILocation(line: 1005, column: 32, scope: !777)
!2435 = !DILocation(line: 1005, column: 11, scope: !777)
!2436 = !DILocation(line: 1005, column: 9, scope: !777)
!2437 = !DILocation(line: 1006, column: 13, scope: !788)
!2438 = !DILocation(line: 1006, column: 21, scope: !788)
!2439 = !DILocation(line: 1006, column: 24, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 1)
!2441 = !DILocation(line: 1006, column: 24, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !788, file: !1, discriminator: 3)
!2443 = !DILocation(line: 1007, column: 9, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !786, file: !1, discriminator: 1)
!2445 = !DILocation(line: 1006, column: 9, scope: !777)
!2446 = !DILocation(line: 1007, column: 9, scope: !791)
!2447 = !DILocation(line: 1007, column: 9, scope: !786)
!2448 = !DILocation(line: 1007, column: 9, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !790, file: !1, discriminator: 4)
!2450 = !DILocation(line: 1007, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !790, file: !1, line: 1007, column: 9)
!2452 = !DILocation(line: 1007, column: 9, scope: !790)
!2453 = !DILocation(line: 1007, column: 9, scope: !2454)
!2454 = !DILexicalBlockFile(scope: !2451, file: !1, discriminator: 6)
!2455 = !DILocation(line: 1010, column: 46, scope: !777)
!2456 = !DILocation(line: 1010, column: 51, scope: !777)
!2457 = !DILocation(line: 1010, column: 60, scope: !777)
!2458 = !DILocation(line: 1010, column: 21, scope: !777)
!2459 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1010, column: 9, scope: !777)
!2461 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2460)
!2462 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2460)
!2463 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2460)
!2464 = !DILocation(line: 1011, column: 21, scope: !777)
!2465 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2460)
!2466 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2460)
!2467 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2460)
!2468 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2460)
!2469 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2460)
!2470 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2460)
!2471 = !DILocation(line: 1010, column: 9, scope: !777)
!2472 = !DILocation(line: 995, column: 21, scope: !777)
!2473 = !DILocation(line: 1012, column: 5, scope: !2474)
!2474 = !DILexicalBlockFile(scope: !793, file: !1, discriminator: 1)
!2475 = !DILocation(line: 1012, column: 5, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !793, file: !1, line: 1012, column: 5)
!2477 = !DILocation(line: 1012, column: 5, scope: !793)
!2478 = !DILocation(line: 1012, column: 5, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2476, file: !1, discriminator: 3)
!2480 = !DILocation(line: 1014, column: 1, scope: !777)
!2481 = !DILocation(line: 577, column: 26, scope: !794)
!2482 = !DILocation(line: 578, column: 26, scope: !794)
!2483 = !DILocation(line: 580, column: 5, scope: !794)
!2484 = !DILocation(line: 582, column: 5, scope: !794)
!2485 = !DILocation(line: 582, column: 17, scope: !794)
!2486 = !DILocation(line: 583, column: 5, scope: !794)
!2487 = !DILocation(line: 583, column: 15, scope: !794)
!2488 = !DILocation(line: 580, column: 15, scope: !794)
!2489 = !DILocation(line: 585, column: 10, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !794, file: !1, line: 585, column: 9)
!2491 = !DILocation(line: 585, column: 9, scope: !794)
!2492 = !DILocation(line: 588, column: 9, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !794, file: !1, line: 588, column: 9)
!2494 = !DILocation(line: 588, column: 17, scope: !2493)
!2495 = !DILocation(line: 588, column: 9, scope: !794)
!2496 = !DILocation(line: 589, column: 17, scope: !2493)
!2497 = !DILocation(line: 589, column: 9, scope: !2493)
!2498 = !DILocation(line: 591, column: 59, scope: !794)
!2499 = !DILocation(line: 591, column: 44, scope: !794)
!2500 = !DILocation(line: 591, column: 54, scope: !794)
!2501 = !DILocation(line: 591, column: 68, scope: !794)
!2502 = !DILocation(line: 591, column: 15, scope: !794)
!2503 = !DILocation(line: 581, column: 15, scope: !794)
!2504 = !DILocation(line: 592, column: 5, scope: !794)
!2505 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 593, column: 12, scope: !794)
!2507 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2506)
!2508 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2506)
!2509 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2506)
!2510 = !DILocation(line: 593, column: 38, scope: !794)
!2511 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2506)
!2512 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2506)
!2513 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2506)
!2514 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2506)
!2515 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2506)
!2516 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2506)
!2517 = !DILocation(line: 593, column: 12, scope: !794)
!2518 = !DILocation(line: 594, column: 1, scope: !794)
!2519 = !DILocation(line: 1017, column: 25, scope: !802)
!2520 = !DILocation(line: 1017, column: 41, scope: !802)
!2521 = !DILocation(line: 1019, column: 5, scope: !802)
!2522 = !DILocation(line: 1019, column: 15, scope: !802)
!2523 = !DILocation(line: 1020, column: 10, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !802, file: !1, line: 1020, column: 9)
!2525 = !DILocation(line: 1020, column: 9, scope: !802)
!2526 = !DILocation(line: 1022, column: 39, scope: !802)
!2527 = !DILocation(line: 1022, column: 12, scope: !802)
!2528 = !DILocation(line: 1022, column: 5, scope: !802)
!2529 = !DILocation(line: 1023, column: 1, scope: !802)
!2530 = !DILocation(line: 651, column: 29, scope: !807)
!2531 = !DILocation(line: 652, column: 29, scope: !807)
!2532 = !DILocation(line: 654, column: 5, scope: !807)
!2533 = !DILocation(line: 657, column: 5, scope: !807)
!2534 = !DILocation(line: 657, column: 17, scope: !807)
!2535 = !DILocation(line: 654, column: 15, scope: !807)
!2536 = !DILocation(line: 660, column: 10, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !807, file: !1, line: 660, column: 9)
!2538 = !DILocation(line: 660, column: 9, scope: !807)
!2539 = !DILocation(line: 663, column: 18, scope: !807)
!2540 = !DILocation(line: 655, column: 17, scope: !807)
!2541 = !DILocation(line: 664, column: 18, scope: !807)
!2542 = !DILocation(line: 656, column: 16, scope: !807)
!2543 = !DILocation(line: 666, column: 14, scope: !807)
!2544 = !DILocation(line: 658, column: 15, scope: !807)
!2545 = !DILocation(line: 667, column: 5, scope: !807)
!2546 = !DILocation(line: 138, column: 33, scope: !415, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 668, column: 12, scope: !807)
!2548 = !DILocation(line: 139, column: 34, scope: !415, inlinedAt: !2547)
!2549 = !DILocation(line: 142, column: 17, scope: !1053, inlinedAt: !2547)
!2550 = !DILocation(line: 142, column: 9, scope: !415, inlinedAt: !2547)
!2551 = !DILocation(line: 144, column: 9, scope: !415, inlinedAt: !2547)
!2552 = !DILocation(line: 141, column: 15, scope: !415, inlinedAt: !2547)
!2553 = !DILocation(line: 145, column: 5, scope: !1058, inlinedAt: !2547)
!2554 = !DILocation(line: 145, column: 5, scope: !1060, inlinedAt: !2547)
!2555 = !DILocation(line: 145, column: 5, scope: !421, inlinedAt: !2547)
!2556 = !DILocation(line: 145, column: 5, scope: !1063, inlinedAt: !2547)
!2557 = !DILocation(line: 668, column: 12, scope: !807)
!2558 = !DILocation(line: 669, column: 1, scope: !807)
!2559 = !DILocation(line: 1087, column: 43, scope: !816)
!2560 = !DILocation(line: 1087, column: 59, scope: !816)
!2561 = !DILocation(line: 1089, column: 5, scope: !816)
!2562 = !DILocation(line: 1090, column: 5, scope: !816)
!2563 = !DILocation(line: 1089, column: 17, scope: !816)
!2564 = !DILocation(line: 1090, column: 15, scope: !816)
!2565 = !DILocation(line: 1092, column: 10, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1092, column: 9)
!2567 = !DILocation(line: 1092, column: 9, scope: !816)
!2568 = !DILocation(line: 1095, column: 31, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1095, column: 9)
!2570 = !DILocation(line: 1095, column: 37, scope: !2569)
!2571 = !DILocation(line: 1095, column: 9, scope: !2569)
!2572 = !DILocation(line: 1095, column: 9, scope: !816)
!2573 = !DILocation(line: 1097, column: 5, scope: !816)
!2574 = !DILocation(line: 1098, column: 1, scope: !816)
!2575 = !DILocation(line: 1106, column: 41, scope: !822)
!2576 = !DILocation(line: 1106, column: 57, scope: !822)
!2577 = !DILocation(line: 1108, column: 5, scope: !822)
!2578 = !DILocation(line: 1108, column: 17, scope: !822)
!2579 = !DILocation(line: 1110, column: 10, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !822, file: !1, line: 1110, column: 9)
!2581 = !DILocation(line: 1110, column: 9, scope: !822)
!2582 = !DILocation(line: 1113, column: 32, scope: !822)
!2583 = !DILocation(line: 1113, column: 12, scope: !822)
!2584 = !DILocation(line: 1113, column: 5, scope: !822)
!2585 = !DILocation(line: 1114, column: 1, scope: !822)
