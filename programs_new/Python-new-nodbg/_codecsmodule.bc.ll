; ModuleID = './_codecsmodule.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @codecsmodule, i32 1013)
  ret %struct._object* %call
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_register(%struct._object* %self, %struct._object* %search_function) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %search_function.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %search_function, %struct._object** %search_function.addr, align 8
  %0 = load %struct._object*, %struct._object** %search_function.addr, align 8
  %call = call i32 @PyCodec_Register(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_lookup(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8** %encoding)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8
  %call1 = call %struct._object* @_PyCodec_Lookup(i8* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct._object** %v, i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding()
  store i8* %call2, i8** %encoding, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %2 = load %struct._object*, %struct._object** %v, align 8
  %3 = load i8*, i8** %encoding, align 8
  %4 = load i8*, i8** %errors, align 8
  %call4 = call %struct._object* @PyCodec_Encode(%struct._object* %2, i8* %3, i8* %4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), %struct._object** %v, i8** %encoding, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %encoding, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding()
  store i8* %call2, i8** %encoding, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %2 = load %struct._object*, %struct._object** %v, align 8
  %3 = load i8*, i8** %encoding, align 8
  %4 = load i8*, i8** %errors, align 8
  %call4 = call %struct._object* @PyCodec_Decode(%struct._object* %2, i8* %3, i8* %4)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @escape_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %newsize = alloca i64, align 8
  %errors = alloca i8*, align 8
  %v = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), %struct._typeobject* @PyBytes_Type, %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %size, align 8
  %4 = load i64, i64* %size, align 8
  %cmp = icmp sgt i64 %4, 2305843009213693951
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load i64, i64* %size, align 8
  %mul = mul i64 4, %6
  store i64 %mul, i64* %newsize, align 8
  %7 = load i64, i64* %newsize, align 8
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %7)
  store %struct._object* %call3, %struct._object** %v, align 8
  %8 = load %struct._object*, %struct._object** %v, align 8
  %cmp4 = icmp eq %struct._object* %8, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** %v, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %10, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %size, align 8
  %cmp6 = icmp slt i64 %11, %12
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %str, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyBytesObject*
  %ob_sval7 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %15, i32 0, i32 2
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval7, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay8, i64 %13
  %16 = load i8, i8* %arrayidx, align 1
  store i8 %16, i8* %c, align 1
  %17 = load i8, i8* %c, align 1
  %conv = sext i8 %17 to i32
  %cmp9 = icmp eq i32 %conv, 39
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %18 = load i8, i8* %c, align 1
  %conv11 = sext i8 %18 to i32
  %cmp12 = icmp eq i32 %conv11, 92
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %19 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 92, i8* %19, align 1
  %20 = load i8, i8* %c, align 1
  %21 = load i8*, i8** %p, align 8
  %incdec.ptr15 = getelementptr i8, i8* %21, i32 1
  store i8* %incdec.ptr15, i8** %p, align 8
  store i8 %20, i8* %21, align 1
  br label %if.end.62

if.else.16:                                       ; preds = %lor.lhs.false
  %22 = load i8, i8* %c, align 1
  %conv17 = sext i8 %22 to i32
  %cmp18 = icmp eq i32 %conv17, 9
  br i1 %cmp18, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.else.16
  %23 = load i8*, i8** %p, align 8
  %incdec.ptr21 = getelementptr i8, i8* %23, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8
  store i8 92, i8* %23, align 1
  %24 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr i8, i8* %24, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  store i8 116, i8* %24, align 1
  br label %if.end.61

if.else.23:                                       ; preds = %if.else.16
  %25 = load i8, i8* %c, align 1
  %conv24 = sext i8 %25 to i32
  %cmp25 = icmp eq i32 %conv24, 10
  br i1 %cmp25, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else.23
  %26 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr i8, i8* %26, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  store i8 92, i8* %26, align 1
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr29 = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr29, i8** %p, align 8
  store i8 110, i8* %27, align 1
  br label %if.end.60

if.else.30:                                       ; preds = %if.else.23
  %28 = load i8, i8* %c, align 1
  %conv31 = sext i8 %28 to i32
  %cmp32 = icmp eq i32 %conv31, 13
  br i1 %cmp32, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else.30
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr35 = getelementptr i8, i8* %29, i32 1
  store i8* %incdec.ptr35, i8** %p, align 8
  store i8 92, i8* %29, align 1
  %30 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr i8, i8* %30, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  store i8 114, i8* %30, align 1
  br label %if.end.59

if.else.37:                                       ; preds = %if.else.30
  %31 = load i8, i8* %c, align 1
  %conv38 = sext i8 %31 to i32
  %cmp39 = icmp slt i32 %conv38, 32
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.else.37
  %32 = load i8, i8* %c, align 1
  %conv42 = sext i8 %32 to i32
  %cmp43 = icmp sge i32 %conv42, 127
  br i1 %cmp43, label %if.then.45, label %if.else.56

if.then.45:                                       ; preds = %lor.lhs.false.41, %if.else.37
  %33 = load i8*, i8** %p, align 8
  %incdec.ptr46 = getelementptr i8, i8* %33, i32 1
  store i8* %incdec.ptr46, i8** %p, align 8
  store i8 92, i8* %33, align 1
  %34 = load i8*, i8** %p, align 8
  %incdec.ptr47 = getelementptr i8, i8* %34, i32 1
  store i8* %incdec.ptr47, i8** %p, align 8
  store i8 120, i8* %34, align 1
  %35 = load i8, i8* %c, align 1
  %conv48 = sext i8 %35 to i32
  %and = and i32 %conv48, 240
  %shr = ashr i32 %and, 4
  %idxprom = sext i32 %shr to i64
  %36 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx49 = getelementptr i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx49, align 1
  %38 = load i8*, i8** %p, align 8
  %incdec.ptr50 = getelementptr i8, i8* %38, i32 1
  store i8* %incdec.ptr50, i8** %p, align 8
  store i8 %37, i8* %38, align 1
  %39 = load i8, i8* %c, align 1
  %conv51 = sext i8 %39 to i32
  %and52 = and i32 %conv51, 15
  %idxprom53 = sext i32 %and52 to i64
  %40 = load i8*, i8** @Py_hexdigits, align 8
  %arrayidx54 = getelementptr i8, i8* %40, i64 %idxprom53
  %41 = load i8, i8* %arrayidx54, align 1
  %42 = load i8*, i8** %p, align 8
  %incdec.ptr55 = getelementptr i8, i8* %42, i32 1
  store i8* %incdec.ptr55, i8** %p, align 8
  store i8 %41, i8* %42, align 1
  br label %if.end.58

if.else.56:                                       ; preds = %lor.lhs.false.41
  %43 = load i8, i8* %c, align 1
  %44 = load i8*, i8** %p, align 8
  %incdec.ptr57 = getelementptr i8, i8* %44, i32 1
  store i8* %incdec.ptr57, i8** %p, align 8
  store i8 %43, i8* %44, align 1
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.56, %if.then.45
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.34
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.27
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.20
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %45 = load i64, i64* %i, align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load i8*, i8** %p, align 8
  store i8 0, i8* %46, align 1
  %47 = load i8*, i8** %p, align 8
  %48 = load %struct._object*, %struct._object** %v, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyBytesObject*
  %ob_sval63 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %49, i32 0, i32 2
  %arraydecay64 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval63, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay64 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call65 = call i32 @_PyBytes_Resize(%struct._object** %v, i64 %sub.ptr.sub)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %for.end
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  %50 = load %struct._object*, %struct._object** %v, align 8
  %51 = load i64, i64* %size, align 8
  %call70 = call %struct._object* @codec_tuple(%struct._object* %50, i64 %51)
  store %struct._object* %call70, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.67, %if.then.5, %if.then.1, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @escape_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i8** %data, i64* %size, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data, align 8
  %2 = load i64, i64* %size, align 8
  %3 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyBytes_DecodeEscape(i8* %1, i64 %2, i8* %3, i64 0, i8* null)
  %4 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @codec_tuple(%struct._object* %call1, i64 %4)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_8_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* %17)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_8_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %final, align 4
  store %struct._object* null, %struct._object** %decoded, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF8Stateful(i8* %2, i64 %3, i8* %4, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_7_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF7(%struct._object* %16, i32 0, i32 0, i8* %17)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_7_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %final, align 4
  store %struct._object* null, %struct._object** %decoded, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF7Stateful(i8* %2, i64 %3, i8* %4, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct._object** %str, i8** %errors, i32* %byteorder)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %18 = load i32, i32* %byteorder, align 4
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %16, i8* %17, i32 %18)
  %19 = load %struct._object*, %struct._object** %str, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 1
  %21 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %21)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %22 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp18, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %24, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %27(%struct._object* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %29 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_le_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %16, i8* %17, i32 -1)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_be_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %16, i8* %17, i32 1)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_le_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 -1, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  store %struct._object* null, %struct._object** %decoded, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_be_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 1, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  store %struct._object* null, %struct._object** %decoded, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_16_ex_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %unicode = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %byteorder, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %unicode, align 8
  %8 = load i64, i64* %consumed, align 8
  %9 = load i32, i32* %byteorder, align 4
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), %struct._object* %7, i64 %8, i32 %9)
  store %struct._object* %call6, %struct._object** %tuple, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), %struct._object** %str, i8** %errors, i32* %byteorder)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %18 = load i32, i32* %byteorder, align 4
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %16, i8* %17, i32 %18)
  %19 = load %struct._object*, %struct._object** %str, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i32 0, i32 1
  %21 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %21)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %22 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp18, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %24, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %27(%struct._object* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %29 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_le_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %16, i8* %17, i32 -1)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_be_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %16, i8* %17, i32 1)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_le_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 -1, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_be_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %decoded = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 1, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %decoded, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %decoded, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %decoded, align 8
  %8 = load i64, i64* %consumed, align 8
  %call6 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @utf_32_ex_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %byteorder = alloca i32, align 4
  %unicode = alloca %struct._object*, align 8
  %tuple = alloca %struct._object*, align 8
  %final = alloca i32, align 4
  %consumed = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store i32 0, i32* %byteorder, align 4
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %byteorder, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %consumed, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len1, align 8
  %4 = load i8*, i8** %errors, align 8
  %5 = load i32, i32* %final, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ]
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %2, i64 %3, i8* %4, i32* %byteorder, i64* %cond)
  store %struct._object* %call3, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %unicode, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %unicode, align 8
  %8 = load i64, i64* %consumed, align 8
  %9 = load i32, i32* %byteorder, align 4
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), %struct._object* %7, i64 %8, i32 %9)
  store %struct._object* %call6, %struct._object** %tuple, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %10 = load %struct._object*, %struct._object** %unicode, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** %tuple, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.4, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_escape_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %call15 = call %struct._object* @PyUnicode_AsUnicodeEscapeString(%struct._object* %16)
  %17 = load %struct._object*, %struct._object** %str, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 1
  %19 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %19)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %22, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %25(%struct._object* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %27 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_escape_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %unicode = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeUnicodeEscape(i8* %1, i64 %2, i8* %3)
  store %struct._object* %call1, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %5 = load i64, i64* %len2, align 8
  %call3 = call %struct._object* @codec_tuple(%struct._object* %4, i64 %5)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_internal_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %len = alloca i64, align 8
  %size = alloca i64, align 8
  %u = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call = call i32 @PyErr_WarnEx(%struct._object* %0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i32 0, i32 0), i64 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), %struct._object** %obj, i8** %errors)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool6 = icmp ne i32 %bf.clear, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.5
  br label %cond.end

cond.false:                                       ; preds = %if.then.5
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ]
  %cmp8 = icmp slt i32 %cond, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %call11 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %9, i64* %len)
  store i32* %call11, i32** %u, align 8
  %10 = load i32*, i32** %u, align 8
  %cmp12 = icmp eq i32* %10, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %11 = load i64, i64* %len, align 8
  %cmp15 = icmp ugt i64 %11, 2305843009213693951
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %12 = load i64, i64* %len, align 8
  %mul = mul i64 %12, 4
  store i64 %mul, i64* %size, align 8
  %13 = load i32*, i32** %u, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i64, i64* %size, align 8
  %call19 = call %struct._object* @PyBytes_FromStringAndSize(i8* %14, i64 %15)
  %16 = load %struct._object*, %struct._object** %obj, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 1
  %18 = load i64, i64* %length, align 8
  %call20 = call %struct._object* @codec_tuple(%struct._object* %call19, i64 %18)
  store %struct._object* %call20, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end.4
  %19 = load %struct._object*, %struct._object** %obj, align 8
  %call21 = call i32 @PyObject_AsReadBuffer(%struct._object* %19, i8** %data, i64* %size)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.else
  %20 = load i8*, i8** %data, align 8
  %21 = load i64, i64* %size, align 8
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %20, i64 %21)
  %22 = load i64, i64* %size, align 8
  %call26 = call %struct._object* @codec_tuple(%struct._object* %call25, i64 %22)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.end.18, %if.then.16, %if.then.13, %if.then.9, %if.then.3, %if.then
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unicode_internal_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0), %struct._object** %obj, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.1
  br label %cond.end

cond.false:                                       ; preds = %if.then.1
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %cond.end
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %obj, align 8
  %11 = load %struct._object*, %struct._object** %obj, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 1
  %13 = load i64, i64* %length, align 8
  %call7 = call %struct._object* @codec_tuple(%struct._object* %10, i64 %13)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %obj, align 8
  %call8 = call i32 @PyObject_AsReadBuffer(%struct._object* %14, i8** %data, i64* %size)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  %15 = load i8*, i8** %data, align 8
  %16 = load i64, i64* %size, align 8
  %17 = load i8*, i8** %errors, align 8
  %call12 = call %struct._object* @_PyUnicode_DecodeUnicodeInternal(i8* %15, i64 %16, i8* %17)
  %18 = load i64, i64* %size, align 8
  %call13 = call %struct._object* @codec_tuple(%struct._object* %call12, i64 %18)
  store %struct._object* %call13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.end.6, %if.then.5, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raw_unicode_escape_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %call15 = call %struct._object* @PyUnicode_AsRawUnicodeEscapeString(%struct._object* %16)
  %17 = load %struct._object*, %struct._object** %str, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 1
  %19 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %19)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %20 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %22, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %25(%struct._object* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %27 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @raw_unicode_escape_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %errors = alloca i8*, align 8
  %unicode = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8* %1, i64 %2, i8* %3)
  store %struct._object* %call1, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %5 = load i64, i64* %len2, align 8
  %call3 = call %struct._object* @codec_tuple(%struct._object* %4, i64 %5)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @latin_1_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_AsLatin1String(%struct._object* %16, i8* %17)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @latin_1_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %unicode = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeLatin1(i8* %1, i64 %2, i8* %3)
  store %struct._object* %call1, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %5 = load i64, i64* %len2, align 8
  %call3 = call %struct._object* @codec_tuple(%struct._object* %4, i64 %5)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), %struct._object** %str, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %str, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool2 = icmp ne i32 %bf.clear, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ]
  %cmp4 = icmp slt i32 %cond, 0
  br i1 %cmp4, label %if.then.5, label %if.end.14

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp6 = icmp ne %struct._object* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11

if.else:                                          ; preds = %do.body.8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %str, align 8
  %17 = load i8*, i8** %errors, align 8
  %call15 = call %struct._object* @_PyUnicode_AsASCIIString(%struct._object* %16, i8* %17)
  %18 = load %struct._object*, %struct._object** %str, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length, align 8
  %call16 = call %struct._object* @codec_tuple(%struct._object* %call15, i64 %20)
  store %struct._object* %call16, %struct._object** %v, align 8
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp18, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %23, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %26(%struct._object* %27)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %28 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end.13, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ascii_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %unicode = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  %3 = load i8*, i8** %errors, align 8
  %call1 = call %struct._object* @PyUnicode_DecodeASCII(i8* %1, i64 %2, i8* %3)
  store %struct._object* %call1, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %4 = load %struct._object*, %struct._object** %unicode, align 8
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %5 = load i64, i64* %len2, align 8
  %call3 = call %struct._object* @codec_tuple(%struct._object* %4, i64 %5)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %mapping = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store %struct._object* null, %struct._object** %mapping, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), %struct._object** %str, i8** %errors, %struct._object** %mapping)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %mapping, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %2 = load %struct._object*, %struct._object** %str, align 8
  %call3 = call %struct._object* @PyUnicode_FromObject(%struct._object* %2)
  store %struct._object* %call3, %struct._object** %str, align 8
  %3 = load %struct._object*, %struct._object** %str, align 8
  %cmp4 = icmp eq %struct._object* %3, null
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %4 = load %struct._object*, %struct._object** %str, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool5 = icmp ne i32 %bf.clear, 0
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %str, align 8
  %call6 = call i32 @_PyUnicode_Ready(%struct._object* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call6, %cond.false ]
  %cmp7 = icmp slt i32 %cond, 0
  br i1 %cmp7, label %if.then.8, label %if.end.17

if.then.8:                                        ; preds = %cond.end, %if.end.2
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %8 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %9, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14

if.else:                                          ; preds = %do.body.11
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %cond.end
  %17 = load %struct._object*, %struct._object** %str, align 8
  %18 = load %struct._object*, %struct._object** %mapping, align 8
  %19 = load i8*, i8** %errors, align 8
  %call18 = call %struct._object* @_PyUnicode_EncodeCharmap(%struct._object* %17, %struct._object* %18, i8* %19)
  %20 = load %struct._object*, %struct._object** %str, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 1
  %22 = load i64, i64* %length, align 8
  %call19 = call %struct._object* @codec_tuple(%struct._object* %call18, i64 %22)
  store %struct._object* %call19, %struct._object** %v, align 8
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.17
  %23 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp21, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %25, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %28(%struct._object* %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %30 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %30, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.30, %do.end.16, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_decode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pbuf = alloca %struct.bufferinfo, align 8
  %unicode = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %mapping = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  store %struct._object* null, %struct._object** %mapping, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, %struct._object** %mapping)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %mapping, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %mapping, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0
  %2 = load i8*, i8** %buf, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %4 = load %struct._object*, %struct._object** %mapping, align 8
  %5 = load i8*, i8** %errors, align 8
  %call3 = call %struct._object* @PyUnicode_DecodeCharmap(i8* %2, i64 %3, %struct._object* %4, i8* %5)
  store %struct._object* %call3, %struct._object** %unicode, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf)
  %6 = load %struct._object*, %struct._object** %unicode, align 8
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2
  %7 = load i64, i64* %len4, align 8
  %call5 = call %struct._object* @codec_tuple(%struct._object* %6, i64 %7)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_build(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %map = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), %struct._object** %map)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %map, align 8
  %call1 = call %struct._object* @PyUnicode_BuildEncodingMap(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @readbuffer_encode(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %pdata = alloca %struct.bufferinfo, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  %errors = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0), %struct.bufferinfo* %pdata, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  store i8* %1, i8** %data, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 2
  %2 = load i64, i64* %len, align 8
  store i64 %2, i64* %size, align 8
  %3 = load i8*, i8** %data, align 8
  %4 = load i64, i64* %size, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %3, i64 %4)
  store %struct._object* %call1, %struct._object** %result, align 8
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  %5 = load %struct._object*, %struct._object** %result, align 8
  %6 = load i64, i64* %size, align 8
  %call2 = call %struct._object* @codec_tuple(%struct._object* %5, i64 %6)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @register_error(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %handler = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8** %name, %struct._object** %handler)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct._object*, %struct._object** %handler, align 8
  %call1 = call i32 @PyCodec_RegisterError(i8* %1, %struct._object* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lookup_error(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %call1 = call %struct._object* @PyCodec_LookupError(i8* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare i32 @PyCodec_Register(%struct._object*) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyCodec_Lookup(i8*) #1

declare i8* @PyUnicode_GetDefaultEncoding() #1

declare %struct._object* @PyCodec_Encode(%struct._object*, i8*, i8*) #1

declare %struct._object* @PyCodec_Decode(%struct._object*, i8*, i8*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_tuple(%struct._object* %unicode, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %unicode.addr = alloca %struct._object*, align 8
  %len.addr = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %unicode, %struct._object** %unicode.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct._object*, %struct._object** %unicode.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %unicode.addr, align 8
  %2 = load i64, i64* %len.addr, align 8
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), %struct._object* %1, i64 %2)
  store %struct._object* %call, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %unicode.addr, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
