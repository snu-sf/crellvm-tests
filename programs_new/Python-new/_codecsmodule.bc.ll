; ModuleID = 'irs-onlybc/_codecsmodule.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @codecsmodule, i32 1013), !dbg !883
  ret %struct._object* %call, !dbg !884
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_register(%struct._object* %self, %struct._object* %search_function) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %search_function.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !381, metadata !889), !dbg !890
  store %struct._object* %search_function, %struct._object** %search_function.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %search_function.addr, metadata !382, metadata !889), !dbg !891
  %0 = load %struct._object*, %struct._object** %search_function.addr, align 8, !dbg !892, !tbaa !885
  %call = call i32 @PyCodec_Register(%struct._object* %0), !dbg !894
  %tobool = icmp ne i32 %call, 0, !dbg !894
  br i1 %tobool, label %if.then, label %if.end, !dbg !895

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !896
  br label %return, !dbg !896

if.end:                                           ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !897, !tbaa !898
  %inc = add i64 %1, 1, !dbg !897
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !897, !tbaa !898
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !901
  br label %return, !dbg !901

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval, !dbg !902
  ret %struct._object* %2, !dbg !902
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @codec_lookup(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !385, metadata !889), !dbg !903
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !386, metadata !889), !dbg !904
  %0 = bitcast i8** %encoding to i8*, !dbg !905
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !905
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !387, metadata !889), !dbg !906
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !907, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8** %encoding), !dbg !909
  %tobool = icmp ne i32 %call, 0, !dbg !909
  br i1 %tobool, label %if.end, label %if.then, !dbg !910

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !911
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !911

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %encoding, align 8, !dbg !912, !tbaa !885
  %call1 = call %struct._object* @_PyCodec_Lookup(i8* %2), !dbg !913
  store %struct._object* %call1, %struct._object** %retval, !dbg !914
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !914

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i8** %encoding to i8*, !dbg !915
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !915
  %4 = load %struct._object*, %struct._object** %retval, !dbg !915
  ret %struct._object* %4, !dbg !915
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !390, metadata !889), !dbg !916
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !391, metadata !889), !dbg !917
  %0 = bitcast i8** %encoding to i8*, !dbg !918
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !918
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !392, metadata !889), !dbg !919
  store i8* null, i8** %encoding, align 8, !dbg !919, !tbaa !885
  %1 = bitcast i8** %errors to i8*, !dbg !920
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !920
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !393, metadata !889), !dbg !921
  store i8* null, i8** %errors, align 8, !dbg !921, !tbaa !885
  %2 = bitcast %struct._object** %v to i8*, !dbg !922
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !922
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !394, metadata !889), !dbg !923
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !924, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct._object** %v, i8** %encoding, i8** %errors), !dbg !926
  %tobool = icmp ne i32 %call, 0, !dbg !926
  br i1 %tobool, label %if.end, label %if.then, !dbg !927

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !928
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !928

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %encoding, align 8, !dbg !929, !tbaa !885
  %cmp = icmp eq i8* %4, null, !dbg !931
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !932

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding(), !dbg !933
  store i8* %call2, i8** %encoding, align 8, !dbg !934, !tbaa !885
  br label %if.end.3, !dbg !935

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !936, !tbaa !885
  %6 = load i8*, i8** %encoding, align 8, !dbg !937, !tbaa !885
  %7 = load i8*, i8** %errors, align 8, !dbg !938, !tbaa !885
  %call4 = call %struct._object* @PyCodec_Encode(%struct._object* %5, i8* %6, i8* %7), !dbg !939
  store %struct._object* %call4, %struct._object** %retval, !dbg !940
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !940

cleanup:                                          ; preds = %if.end.3, %if.then
  %8 = bitcast %struct._object** %v to i8*, !dbg !941
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !941
  %9 = bitcast i8** %errors to i8*, !dbg !941
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !941
  %10 = bitcast i8** %encoding to i8*, !dbg !941
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !941
  %11 = load %struct._object*, %struct._object** %retval, !dbg !941
  ret %struct._object* %11, !dbg !941
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !397, metadata !889), !dbg !942
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !398, metadata !889), !dbg !943
  %0 = bitcast i8** %encoding to i8*, !dbg !944
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !944
  call void @llvm.dbg.declare(metadata i8** %encoding, metadata !399, metadata !889), !dbg !945
  store i8* null, i8** %encoding, align 8, !dbg !945, !tbaa !885
  %1 = bitcast i8** %errors to i8*, !dbg !946
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !946
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !400, metadata !889), !dbg !947
  store i8* null, i8** %errors, align 8, !dbg !947, !tbaa !885
  %2 = bitcast %struct._object** %v to i8*, !dbg !948
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !948
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !401, metadata !889), !dbg !949
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !950, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.43, i32 0, i32 0), %struct._object** %v, i8** %encoding, i8** %errors), !dbg !952
  %tobool = icmp ne i32 %call, 0, !dbg !952
  br i1 %tobool, label %if.end, label %if.then, !dbg !953

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !954

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %encoding, align 8, !dbg !955, !tbaa !885
  %cmp = icmp eq i8* %4, null, !dbg !957
  br i1 %cmp, label %if.then.1, label %if.end.3, !dbg !958

if.then.1:                                        ; preds = %if.end
  %call2 = call i8* @PyUnicode_GetDefaultEncoding(), !dbg !959
  store i8* %call2, i8** %encoding, align 8, !dbg !960, !tbaa !885
  br label %if.end.3, !dbg !961

if.end.3:                                         ; preds = %if.then.1, %if.end
  %5 = load %struct._object*, %struct._object** %v, align 8, !dbg !962, !tbaa !885
  %6 = load i8*, i8** %encoding, align 8, !dbg !963, !tbaa !885
  %7 = load i8*, i8** %errors, align 8, !dbg !964, !tbaa !885
  %call4 = call %struct._object* @PyCodec_Decode(%struct._object* %5, i8* %6, i8* %7), !dbg !965
  store %struct._object* %call4, %struct._object** %retval, !dbg !966
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !966

cleanup:                                          ; preds = %if.end.3, %if.then
  %8 = bitcast %struct._object** %v to i8*, !dbg !967
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !967
  %9 = bitcast i8** %errors to i8*, !dbg !967
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !967
  %10 = bitcast i8** %encoding to i8*, !dbg !967
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !967
  %11 = load %struct._object*, %struct._object** %retval, !dbg !967
  ret %struct._object* %11, !dbg !967
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
  %cleanup.dest.slot = alloca i32
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %p = alloca i8*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !404, metadata !889), !dbg !968
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !405, metadata !889), !dbg !969
  %0 = bitcast %struct._object** %str to i8*, !dbg !970
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !970
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !406, metadata !889), !dbg !971
  %1 = bitcast i64* %size to i8*, !dbg !972
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !972
  call void @llvm.dbg.declare(metadata i64* %size, metadata !407, metadata !889), !dbg !973
  %2 = bitcast i64* %newsize to i8*, !dbg !974
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !974
  call void @llvm.dbg.declare(metadata i64* %newsize, metadata !408, metadata !889), !dbg !975
  %3 = bitcast i8** %errors to i8*, !dbg !976
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !976
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !409, metadata !889), !dbg !977
  store i8* null, i8** %errors, align 8, !dbg !977, !tbaa !885
  %4 = bitcast %struct._object** %v to i8*, !dbg !978
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !978
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !410, metadata !889), !dbg !979
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !980, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), %struct._typeobject* @PyBytes_Type, %struct._object** %str, i8** %errors), !dbg !982
  %tobool = icmp ne i32 %call, 0, !dbg !982
  br i1 %tobool, label %if.end, label %if.then, !dbg !983

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !984
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73, !dbg !984

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !985, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*, !dbg !986
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1, !dbg !987
  %8 = load i64, i64* %ob_size, align 8, !dbg !987, !tbaa !988
  store i64 %8, i64* %size, align 8, !dbg !990, !tbaa !991
  %9 = load i64, i64* %size, align 8, !dbg !992, !tbaa !991
  %cmp = icmp sgt i64 %9, 2305843009213693951, !dbg !994
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !995

if.then.1:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !996, !tbaa !885
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0)), !dbg !998
  store %struct._object* null, %struct._object** %retval, !dbg !999
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73, !dbg !999

if.end.2:                                         ; preds = %if.end
  %11 = load i64, i64* %size, align 8, !dbg !1000, !tbaa !991
  %mul = mul i64 4, %11, !dbg !1001
  store i64 %mul, i64* %newsize, align 8, !dbg !1002, !tbaa !991
  %12 = load i64, i64* %newsize, align 8, !dbg !1003, !tbaa !991
  %call3 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %12), !dbg !1004
  store %struct._object* %call3, %struct._object** %v, align 8, !dbg !1005, !tbaa !885
  %13 = load %struct._object*, %struct._object** %v, align 8, !dbg !1006, !tbaa !885
  %cmp4 = icmp eq %struct._object* %13, null, !dbg !1007
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1008

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !1009
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73, !dbg !1009

if.else:                                          ; preds = %if.end.2
  %14 = bitcast i64* %i to i8*, !dbg !1011
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !1011
  call void @llvm.dbg.declare(metadata i64* %i, metadata !411, metadata !889), !dbg !1012
  call void @llvm.lifetime.start(i64 1, i8* %c) #3, !dbg !1013
  call void @llvm.dbg.declare(metadata i8* %c, metadata !414, metadata !889), !dbg !1014
  %15 = bitcast i8** %p to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !1015
  call void @llvm.dbg.declare(metadata i8** %p, metadata !415, metadata !889), !dbg !1016
  %16 = load %struct._object*, %struct._object** %v, align 8, !dbg !1017, !tbaa !885
  %17 = bitcast %struct._object* %16 to %struct.PyBytesObject*, !dbg !1018
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %17, i32 0, i32 2, !dbg !1019
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1020
  store i8* %arraydecay, i8** %p, align 8, !dbg !1016, !tbaa !885
  store i64 0, i64* %i, align 8, !dbg !1021, !tbaa !991
  br label %for.cond, !dbg !1023

for.cond:                                         ; preds = %for.inc, %if.else
  %18 = load i64, i64* %i, align 8, !dbg !1024, !tbaa !991
  %19 = load i64, i64* %size, align 8, !dbg !1028, !tbaa !991
  %cmp6 = icmp slt i64 %18, %19, !dbg !1029
  br i1 %cmp6, label %for.body, label %for.end, !dbg !1030

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8, !dbg !1031, !tbaa !991
  %21 = load %struct._object*, %struct._object** %str, align 8, !dbg !1033, !tbaa !885
  %22 = bitcast %struct._object* %21 to %struct.PyBytesObject*, !dbg !1034
  %ob_sval7 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2, !dbg !1035
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval7, i32 0, i32 0, !dbg !1036
  %arrayidx = getelementptr i8, i8* %arraydecay8, i64 %20, !dbg !1037
  %23 = load i8, i8* %arrayidx, align 1, !dbg !1037, !tbaa !1038
  store i8 %23, i8* %c, align 1, !dbg !1039, !tbaa !1038
  %24 = load i8, i8* %c, align 1, !dbg !1040, !tbaa !1038
  %conv = sext i8 %24 to i32, !dbg !1040
  %cmp9 = icmp eq i32 %conv, 39, !dbg !1042
  br i1 %cmp9, label %if.then.14, label %lor.lhs.false, !dbg !1043

lor.lhs.false:                                    ; preds = %for.body
  %25 = load i8, i8* %c, align 1, !dbg !1044, !tbaa !1038
  %conv11 = sext i8 %25 to i32, !dbg !1044
  %cmp12 = icmp eq i32 %conv11, 92, !dbg !1046
  br i1 %cmp12, label %if.then.14, label %if.else.16, !dbg !1047

if.then.14:                                       ; preds = %lor.lhs.false, %for.body
  %26 = load i8*, i8** %p, align 8, !dbg !1048, !tbaa !885
  %incdec.ptr = getelementptr i8, i8* %26, i32 1, !dbg !1048
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !1048, !tbaa !885
  store i8 92, i8* %26, align 1, !dbg !1049, !tbaa !1038
  %27 = load i8, i8* %c, align 1, !dbg !1050, !tbaa !1038
  %28 = load i8*, i8** %p, align 8, !dbg !1051, !tbaa !885
  %incdec.ptr15 = getelementptr i8, i8* %28, i32 1, !dbg !1051
  store i8* %incdec.ptr15, i8** %p, align 8, !dbg !1051, !tbaa !885
  store i8 %27, i8* %28, align 1, !dbg !1052, !tbaa !1038
  br label %if.end.62, !dbg !1053

if.else.16:                                       ; preds = %lor.lhs.false
  %29 = load i8, i8* %c, align 1, !dbg !1054, !tbaa !1038
  %conv17 = sext i8 %29 to i32, !dbg !1054
  %cmp18 = icmp eq i32 %conv17, 9, !dbg !1056
  br i1 %cmp18, label %if.then.20, label %if.else.23, !dbg !1057

if.then.20:                                       ; preds = %if.else.16
  %30 = load i8*, i8** %p, align 8, !dbg !1058, !tbaa !885
  %incdec.ptr21 = getelementptr i8, i8* %30, i32 1, !dbg !1058
  store i8* %incdec.ptr21, i8** %p, align 8, !dbg !1058, !tbaa !885
  store i8 92, i8* %30, align 1, !dbg !1059, !tbaa !1038
  %31 = load i8*, i8** %p, align 8, !dbg !1060, !tbaa !885
  %incdec.ptr22 = getelementptr i8, i8* %31, i32 1, !dbg !1060
  store i8* %incdec.ptr22, i8** %p, align 8, !dbg !1060, !tbaa !885
  store i8 116, i8* %31, align 1, !dbg !1061, !tbaa !1038
  br label %if.end.61, !dbg !1062

if.else.23:                                       ; preds = %if.else.16
  %32 = load i8, i8* %c, align 1, !dbg !1063, !tbaa !1038
  %conv24 = sext i8 %32 to i32, !dbg !1063
  %cmp25 = icmp eq i32 %conv24, 10, !dbg !1065
  br i1 %cmp25, label %if.then.27, label %if.else.30, !dbg !1066

if.then.27:                                       ; preds = %if.else.23
  %33 = load i8*, i8** %p, align 8, !dbg !1067, !tbaa !885
  %incdec.ptr28 = getelementptr i8, i8* %33, i32 1, !dbg !1067
  store i8* %incdec.ptr28, i8** %p, align 8, !dbg !1067, !tbaa !885
  store i8 92, i8* %33, align 1, !dbg !1068, !tbaa !1038
  %34 = load i8*, i8** %p, align 8, !dbg !1069, !tbaa !885
  %incdec.ptr29 = getelementptr i8, i8* %34, i32 1, !dbg !1069
  store i8* %incdec.ptr29, i8** %p, align 8, !dbg !1069, !tbaa !885
  store i8 110, i8* %34, align 1, !dbg !1070, !tbaa !1038
  br label %if.end.60, !dbg !1071

if.else.30:                                       ; preds = %if.else.23
  %35 = load i8, i8* %c, align 1, !dbg !1072, !tbaa !1038
  %conv31 = sext i8 %35 to i32, !dbg !1072
  %cmp32 = icmp eq i32 %conv31, 13, !dbg !1074
  br i1 %cmp32, label %if.then.34, label %if.else.37, !dbg !1075

if.then.34:                                       ; preds = %if.else.30
  %36 = load i8*, i8** %p, align 8, !dbg !1076, !tbaa !885
  %incdec.ptr35 = getelementptr i8, i8* %36, i32 1, !dbg !1076
  store i8* %incdec.ptr35, i8** %p, align 8, !dbg !1076, !tbaa !885
  store i8 92, i8* %36, align 1, !dbg !1077, !tbaa !1038
  %37 = load i8*, i8** %p, align 8, !dbg !1078, !tbaa !885
  %incdec.ptr36 = getelementptr i8, i8* %37, i32 1, !dbg !1078
  store i8* %incdec.ptr36, i8** %p, align 8, !dbg !1078, !tbaa !885
  store i8 114, i8* %37, align 1, !dbg !1079, !tbaa !1038
  br label %if.end.59, !dbg !1080

if.else.37:                                       ; preds = %if.else.30
  %38 = load i8, i8* %c, align 1, !dbg !1081, !tbaa !1038
  %conv38 = sext i8 %38 to i32, !dbg !1081
  %cmp39 = icmp slt i32 %conv38, 32, !dbg !1083
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false.41, !dbg !1084

lor.lhs.false.41:                                 ; preds = %if.else.37
  %39 = load i8, i8* %c, align 1, !dbg !1085, !tbaa !1038
  %conv42 = sext i8 %39 to i32, !dbg !1085
  %cmp43 = icmp sge i32 %conv42, 127, !dbg !1087
  br i1 %cmp43, label %if.then.45, label %if.else.56, !dbg !1088

if.then.45:                                       ; preds = %lor.lhs.false.41, %if.else.37
  %40 = load i8*, i8** %p, align 8, !dbg !1089, !tbaa !885
  %incdec.ptr46 = getelementptr i8, i8* %40, i32 1, !dbg !1089
  store i8* %incdec.ptr46, i8** %p, align 8, !dbg !1089, !tbaa !885
  store i8 92, i8* %40, align 1, !dbg !1091, !tbaa !1038
  %41 = load i8*, i8** %p, align 8, !dbg !1092, !tbaa !885
  %incdec.ptr47 = getelementptr i8, i8* %41, i32 1, !dbg !1092
  store i8* %incdec.ptr47, i8** %p, align 8, !dbg !1092, !tbaa !885
  store i8 120, i8* %41, align 1, !dbg !1093, !tbaa !1038
  %42 = load i8, i8* %c, align 1, !dbg !1094, !tbaa !1038
  %conv48 = sext i8 %42 to i32, !dbg !1094
  %and = and i32 %conv48, 240, !dbg !1095
  %shr = ashr i32 %and, 4, !dbg !1096
  %idxprom = sext i32 %shr to i64, !dbg !1097
  %43 = load i8*, i8** @Py_hexdigits, align 8, !dbg !1097, !tbaa !885
  %arrayidx49 = getelementptr i8, i8* %43, i64 %idxprom, !dbg !1097
  %44 = load i8, i8* %arrayidx49, align 1, !dbg !1097, !tbaa !1038
  %45 = load i8*, i8** %p, align 8, !dbg !1098, !tbaa !885
  %incdec.ptr50 = getelementptr i8, i8* %45, i32 1, !dbg !1098
  store i8* %incdec.ptr50, i8** %p, align 8, !dbg !1098, !tbaa !885
  store i8 %44, i8* %45, align 1, !dbg !1099, !tbaa !1038
  %46 = load i8, i8* %c, align 1, !dbg !1100, !tbaa !1038
  %conv51 = sext i8 %46 to i32, !dbg !1100
  %and52 = and i32 %conv51, 15, !dbg !1101
  %idxprom53 = sext i32 %and52 to i64, !dbg !1102
  %47 = load i8*, i8** @Py_hexdigits, align 8, !dbg !1102, !tbaa !885
  %arrayidx54 = getelementptr i8, i8* %47, i64 %idxprom53, !dbg !1102
  %48 = load i8, i8* %arrayidx54, align 1, !dbg !1102, !tbaa !1038
  %49 = load i8*, i8** %p, align 8, !dbg !1103, !tbaa !885
  %incdec.ptr55 = getelementptr i8, i8* %49, i32 1, !dbg !1103
  store i8* %incdec.ptr55, i8** %p, align 8, !dbg !1103, !tbaa !885
  store i8 %48, i8* %49, align 1, !dbg !1104, !tbaa !1038
  br label %if.end.58, !dbg !1105

if.else.56:                                       ; preds = %lor.lhs.false.41
  %50 = load i8, i8* %c, align 1, !dbg !1106, !tbaa !1038
  %51 = load i8*, i8** %p, align 8, !dbg !1107, !tbaa !885
  %incdec.ptr57 = getelementptr i8, i8* %51, i32 1, !dbg !1107
  store i8* %incdec.ptr57, i8** %p, align 8, !dbg !1107, !tbaa !885
  store i8 %50, i8* %51, align 1, !dbg !1108, !tbaa !1038
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
  br label %for.inc, !dbg !1109

for.inc:                                          ; preds = %if.end.62
  %52 = load i64, i64* %i, align 8, !dbg !1110, !tbaa !991
  %inc = add i64 %52, 1, !dbg !1110
  store i64 %inc, i64* %i, align 8, !dbg !1110, !tbaa !991
  br label %for.cond, !dbg !1111

for.end:                                          ; preds = %for.cond
  %53 = load i8*, i8** %p, align 8, !dbg !1112, !tbaa !885
  store i8 0, i8* %53, align 1, !dbg !1113, !tbaa !1038
  %54 = load i8*, i8** %p, align 8, !dbg !1114, !tbaa !885
  %55 = load %struct._object*, %struct._object** %v, align 8, !dbg !1116, !tbaa !885
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*, !dbg !1117
  %ob_sval63 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2, !dbg !1118
  %arraydecay64 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval63, i32 0, i32 0, !dbg !1119
  %sub.ptr.lhs.cast = ptrtoint i8* %54 to i64, !dbg !1120
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay64 to i64, !dbg !1120
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1120
  %call65 = call i32 @_PyBytes_Resize(%struct._object** %v, i64 %sub.ptr.sub), !dbg !1121
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1121
  br i1 %tobool66, label %if.then.67, label %if.end.68, !dbg !1122

if.then.67:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval, !dbg !1123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1123

if.end.68:                                        ; preds = %for.end
  store i32 0, i32* %cleanup.dest.slot, !dbg !1125
  br label %cleanup, !dbg !1125

cleanup:                                          ; preds = %if.end.68, %if.then.67
  %57 = bitcast i8** %p to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 8, i8* %57) #3, !dbg !1126
  call void @llvm.lifetime.end(i64 1, i8* %c) #3, !dbg !1126
  %58 = bitcast i64* %i to i8*, !dbg !1126
  call void @llvm.lifetime.end(i64 8, i8* %58) #3, !dbg !1126
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.73 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.71

if.end.71:                                        ; preds = %cleanup.cont
  %59 = load %struct._object*, %struct._object** %v, align 8, !dbg !1128, !tbaa !885
  %60 = load i64, i64* %size, align 8, !dbg !1129, !tbaa !991
  %call72 = call %struct._object* @codec_tuple(%struct._object* %59, i64 %60), !dbg !1130
  store %struct._object* %call72, %struct._object** %retval, !dbg !1131
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.73, !dbg !1131

cleanup.73:                                       ; preds = %if.end.71, %cleanup, %if.then.5, %if.then.1, %if.then
  %61 = bitcast %struct._object** %v to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %61) #3, !dbg !1132
  %62 = bitcast i8** %errors to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %62) #3, !dbg !1132
  %63 = bitcast i64* %newsize to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %63) #3, !dbg !1132
  %64 = bitcast i64* %size to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %64) #3, !dbg !1132
  %65 = bitcast %struct._object** %str to i8*, !dbg !1132
  call void @llvm.lifetime.end(i64 8, i8* %65) #3, !dbg !1132
  %66 = load %struct._object*, %struct._object** %retval, !dbg !1132
  ret %struct._object* %66, !dbg !1132
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !425, metadata !889), !dbg !1133
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !426, metadata !889), !dbg !1134
  %0 = bitcast i8** %errors to i8*, !dbg !1135
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1135
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !427, metadata !889), !dbg !1136
  store i8* null, i8** %errors, align 8, !dbg !1136, !tbaa !885
  %1 = bitcast i8** %data to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1137
  call void @llvm.dbg.declare(metadata i8** %data, metadata !428, metadata !889), !dbg !1138
  %2 = bitcast i64* %size to i8*, !dbg !1139
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1139
  call void @llvm.dbg.declare(metadata i64* %size, metadata !429, metadata !889), !dbg !1140
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1141, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i8** %data, i64* %size, i8** %errors), !dbg !1143
  %tobool = icmp ne i32 %call, 0, !dbg !1143
  br i1 %tobool, label %if.end, label %if.then, !dbg !1144

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1145

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %data, align 8, !dbg !1146, !tbaa !885
  %5 = load i64, i64* %size, align 8, !dbg !1147, !tbaa !991
  %6 = load i8*, i8** %errors, align 8, !dbg !1148, !tbaa !885
  %call1 = call %struct._object* @PyBytes_DecodeEscape(i8* %4, i64 %5, i8* %6, i64 0, i8* null), !dbg !1149
  %7 = load i64, i64* %size, align 8, !dbg !1150, !tbaa !991
  %call2 = call %struct._object* @codec_tuple(%struct._object* %call1, i64 %7), !dbg !1151
  store %struct._object* %call2, %struct._object** %retval, !dbg !1152
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1152

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i64* %size to i8*, !dbg !1153
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !1153
  %9 = bitcast i8** %data to i8*, !dbg !1153
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !1153
  %10 = bitcast i8** %errors to i8*, !dbg !1153
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !1153
  %11 = load %struct._object*, %struct._object** %retval, !dbg !1153
  ret %struct._object* %11, !dbg !1153
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !432, metadata !889), !dbg !1154
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !433, metadata !889), !dbg !1155
  %0 = bitcast %struct._object** %str to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !434, metadata !889), !dbg !1157
  %1 = bitcast %struct._object** %v to i8*, !dbg !1156
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1156
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !435, metadata !889), !dbg !1158
  %2 = bitcast i8** %errors to i8*, !dbg !1159
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1159
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !436, metadata !889), !dbg !1160
  store i8* null, i8** %errors, align 8, !dbg !1160, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1161, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !1163
  %tobool = icmp ne i32 %call, 0, !dbg !1163
  br i1 %tobool, label %if.end, label %if.then, !dbg !1164

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1165
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1165

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !1166, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !1167
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1168, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !1169, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !1170
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1171

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !1172, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !1174
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !1175
  %8 = bitcast %struct.anon* %state to i32*, !dbg !1176
  %bf.load = load i32, i32* %8, align 4, !dbg !1176
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1176
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1176
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !1177
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1177

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !1178

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !1180, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !1182
  br label %cond.end, !dbg !1177

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !1177
  %cmp4 = icmp slt i32 %cond, 0, !dbg !1183
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1186

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !1187

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1188
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1188
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !437, metadata !889), !dbg !1190
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !1191, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1190, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1192, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !1193
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1194

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !1195

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1197
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !441, metadata !889), !dbg !1199
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1200, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1199, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1201, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1203
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1204, !tbaa !898
  %dec = add i64 %16, -1, !dbg !1204
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1204, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1205
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1206

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !1207

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1209, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1211
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1211, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1213
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1213, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1217, !tbaa !885
  call void %19(%struct._object* %20), !dbg !1218
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1219
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1219
  br label %do.cond, !dbg !1221

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1222

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !1224

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1226
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1226
  br label %do.cond.13, !dbg !1229

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !1230

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !1232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1232

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !1233, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !1234, !tbaa !885
  %call16 = call %struct._object* @PyUnicode_AsEncodedString(%struct._object* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i8* %24), !dbg !1235
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !1236, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !1237
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !1238
  %27 = load i64, i64* %length, align 8, !dbg !1238, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !1242
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !1243, !tbaa !885
  br label %do.body.18, !dbg !1244

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1245
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1245
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !444, metadata !889), !dbg !1247
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !1248, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !1247, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1249, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1251
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !1252, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !1252
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1252, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1253
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1254

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1255

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1257, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1259
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1259, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1260
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1260, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1261, !tbaa !885
  call void %34(%struct._object* %35), !dbg !1262
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1263
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1263
  br label %do.cond.28, !dbg !1265

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1266

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !1268, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !1269
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1269

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !1270
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1270
  %39 = bitcast %struct._object** %v to i8*, !dbg !1270
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1270
  %40 = bitcast %struct._object** %str to i8*, !dbg !1270
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1270
  %41 = load %struct._object*, %struct._object** %retval, !dbg !1270
  ret %struct._object* %41, !dbg !1270
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !448, metadata !889), !dbg !1271
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !449, metadata !889), !dbg !1272
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1273
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !450, metadata !889), !dbg !1274
  %1 = bitcast i8** %errors to i8*, !dbg !1275
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1275
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !451, metadata !889), !dbg !1276
  store i8* null, i8** %errors, align 8, !dbg !1276, !tbaa !885
  %2 = bitcast i32* %final to i8*, !dbg !1277
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1277
  call void @llvm.dbg.declare(metadata i32* %final, metadata !452, metadata !889), !dbg !1278
  store i32 0, i32* %final, align 4, !dbg !1278, !tbaa !1279
  %3 = bitcast i64* %consumed to i8*, !dbg !1280
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1280
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !453, metadata !889), !dbg !1281
  %4 = bitcast %struct._object** %decoded to i8*, !dbg !1282
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1282
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !454, metadata !889), !dbg !1283
  store %struct._object* null, %struct._object** %decoded, align 8, !dbg !1283, !tbaa !885
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1284, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !1286
  %tobool = icmp ne i32 %call, 0, !dbg !1286
  br i1 %tobool, label %if.end, label %if.then, !dbg !1287

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1288
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1288

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1289
  %6 = load i64, i64* %len, align 8, !dbg !1289, !tbaa !1290
  store i64 %6, i64* %consumed, align 8, !dbg !1292, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1293
  %7 = load i8*, i8** %buf, align 8, !dbg !1293, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1295
  %8 = load i64, i64* %len1, align 8, !dbg !1295, !tbaa !1290
  %9 = load i8*, i8** %errors, align 8, !dbg !1296, !tbaa !885
  %10 = load i32, i32* %final, align 4, !dbg !1297, !tbaa !1279
  %tobool2 = icmp ne i32 %10, 0, !dbg !1297
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1297

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1298

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1300

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1297
  %call3 = call %struct._object* @PyUnicode_DecodeUTF8Stateful(i8* %7, i64 %8, i8* %9, i64* %cond), !dbg !1302
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !1303, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1304
  %11 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1305, !tbaa !885
  %cmp = icmp eq %struct._object* %11, null, !dbg !1307
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1308

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1309
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1309

if.end.5:                                         ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1310, !tbaa !885
  %13 = load i64, i64* %consumed, align 8, !dbg !1311, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %12, i64 %13), !dbg !1312
  store %struct._object* %call6, %struct._object** %retval, !dbg !1313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %14 = bitcast %struct._object** %decoded to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1314
  %15 = bitcast i64* %consumed to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1314
  %16 = bitcast i32* %final to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !1314
  %17 = bitcast i8** %errors to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1314
  %18 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 80, i8* %18) #3, !dbg !1314
  %19 = load %struct._object*, %struct._object** %retval, !dbg !1314
  ret %struct._object* %19, !dbg !1314
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !457, metadata !889), !dbg !1315
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !458, metadata !889), !dbg !1316
  %0 = bitcast %struct._object** %str to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1317
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !459, metadata !889), !dbg !1318
  %1 = bitcast %struct._object** %v to i8*, !dbg !1317
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1317
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !460, metadata !889), !dbg !1319
  %2 = bitcast i8** %errors to i8*, !dbg !1320
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1320
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !461, metadata !889), !dbg !1321
  store i8* null, i8** %errors, align 8, !dbg !1321, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1322, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !1324
  %tobool = icmp ne i32 %call, 0, !dbg !1324
  br i1 %tobool, label %if.end, label %if.then, !dbg !1325

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1326

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !1327, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !1328
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1329, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !1330, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !1331
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1332

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !1333, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !1335
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !1336
  %8 = bitcast %struct.anon* %state to i32*, !dbg !1337
  %bf.load = load i32, i32* %8, align 4, !dbg !1337
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1337
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1337
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !1338
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1338

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !1339

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !1341, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !1343
  br label %cond.end, !dbg !1338

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !1338
  %cmp4 = icmp slt i32 %cond, 0, !dbg !1344
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1347

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !1348

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1349
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1349
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !462, metadata !889), !dbg !1351
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !1352, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1351, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1353, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !1354
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1355

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !1356

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1358
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1358
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !466, metadata !889), !dbg !1360
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1361, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1360, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1362, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1364
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1365, !tbaa !898
  %dec = add i64 %16, -1, !dbg !1365
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1365, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1366
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1367

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !1368

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1370, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1372
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1372, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1373
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1373, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1374, !tbaa !885
  call void %19(%struct._object* %20), !dbg !1375
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1376
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1376
  br label %do.cond, !dbg !1378

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1379

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !1381

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1383
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1383
  br label %do.cond.13, !dbg !1386

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !1387

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !1389
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1389

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !1390, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !1391, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF7(%struct._object* %23, i32 0, i32 0, i8* %24), !dbg !1392
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !1393, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !1394
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !1395
  %27 = load i64, i64* %length, align 8, !dbg !1395, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !1396
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !1397, !tbaa !885
  br label %do.body.18, !dbg !1398

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1399
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !469, metadata !889), !dbg !1401
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !1402, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !1401, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1403, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1405
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !1406, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !1406
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1406, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1407
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1408

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1409

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1411, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1413
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1413, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1414
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1414, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1415, !tbaa !885
  call void %34(%struct._object* %35), !dbg !1416
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1417
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1417
  br label %do.cond.28, !dbg !1419

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1420

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !1422, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !1423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1423

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !1424
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1424
  %39 = bitcast %struct._object** %v to i8*, !dbg !1424
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1424
  %40 = bitcast %struct._object** %str to i8*, !dbg !1424
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1424
  %41 = load %struct._object*, %struct._object** %retval, !dbg !1424
  ret %struct._object* %41, !dbg !1424
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !473, metadata !889), !dbg !1425
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !474, metadata !889), !dbg !1426
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1427
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1427
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !475, metadata !889), !dbg !1428
  %1 = bitcast i8** %errors to i8*, !dbg !1429
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1429
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !476, metadata !889), !dbg !1430
  store i8* null, i8** %errors, align 8, !dbg !1430, !tbaa !885
  %2 = bitcast i32* %final to i8*, !dbg !1431
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1431
  call void @llvm.dbg.declare(metadata i32* %final, metadata !477, metadata !889), !dbg !1432
  store i32 0, i32* %final, align 4, !dbg !1432, !tbaa !1279
  %3 = bitcast i64* %consumed to i8*, !dbg !1433
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1433
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !478, metadata !889), !dbg !1434
  %4 = bitcast %struct._object** %decoded to i8*, !dbg !1435
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1435
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !479, metadata !889), !dbg !1436
  store %struct._object* null, %struct._object** %decoded, align 8, !dbg !1436, !tbaa !885
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1437, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !1439
  %tobool = icmp ne i32 %call, 0, !dbg !1439
  br i1 %tobool, label %if.end, label %if.then, !dbg !1440

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1441
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1441

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1442
  %6 = load i64, i64* %len, align 8, !dbg !1442, !tbaa !1290
  store i64 %6, i64* %consumed, align 8, !dbg !1443, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1444
  %7 = load i8*, i8** %buf, align 8, !dbg !1444, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1445
  %8 = load i64, i64* %len1, align 8, !dbg !1445, !tbaa !1290
  %9 = load i8*, i8** %errors, align 8, !dbg !1446, !tbaa !885
  %10 = load i32, i32* %final, align 4, !dbg !1447, !tbaa !1279
  %tobool2 = icmp ne i32 %10, 0, !dbg !1447
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1447

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1448

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1450

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1447
  %call3 = call %struct._object* @PyUnicode_DecodeUTF7Stateful(i8* %7, i64 %8, i8* %9, i64* %cond), !dbg !1452
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !1453, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1454
  %11 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1455, !tbaa !885
  %cmp = icmp eq %struct._object* %11, null, !dbg !1457
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1458

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1459
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1459

if.end.5:                                         ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1460, !tbaa !885
  %13 = load i64, i64* %consumed, align 8, !dbg !1461, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %12, i64 %13), !dbg !1462
  store %struct._object* %call6, %struct._object** %retval, !dbg !1463
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1463

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %14 = bitcast %struct._object** %decoded to i8*, !dbg !1464
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !1464
  %15 = bitcast i64* %consumed to i8*, !dbg !1464
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1464
  %16 = bitcast i32* %final to i8*, !dbg !1464
  call void @llvm.lifetime.end(i64 4, i8* %16) #3, !dbg !1464
  %17 = bitcast i8** %errors to i8*, !dbg !1464
  call void @llvm.lifetime.end(i64 8, i8* %17) #3, !dbg !1464
  %18 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1464
  call void @llvm.lifetime.end(i64 80, i8* %18) #3, !dbg !1464
  %19 = load %struct._object*, %struct._object** %retval, !dbg !1464
  ret %struct._object* %19, !dbg !1464
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !482, metadata !889), !dbg !1465
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !483, metadata !889), !dbg !1466
  %0 = bitcast %struct._object** %str to i8*, !dbg !1467
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1467
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !484, metadata !889), !dbg !1468
  %1 = bitcast %struct._object** %v to i8*, !dbg !1467
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1467
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !485, metadata !889), !dbg !1469
  %2 = bitcast i8** %errors to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !486, metadata !889), !dbg !1471
  store i8* null, i8** %errors, align 8, !dbg !1471, !tbaa !885
  %3 = bitcast i32* %byteorder to i8*, !dbg !1472
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !487, metadata !889), !dbg !1473
  store i32 0, i32* %byteorder, align 4, !dbg !1473, !tbaa !1279
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1474, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i32 0, i32 0), %struct._object** %str, i8** %errors, i32* %byteorder), !dbg !1476
  %tobool = icmp ne i32 %call, 0, !dbg !1476
  br i1 %tobool, label %if.end, label %if.then, !dbg !1477

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1478
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1478

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !1479, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %5), !dbg !1480
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1481, !tbaa !885
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !1482, !tbaa !885
  %cmp = icmp eq %struct._object* %6, null, !dbg !1483
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1484

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %str, align 8, !dbg !1485, !tbaa !885
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*, !dbg !1487
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3, !dbg !1488
  %9 = bitcast %struct.anon* %state to i32*, !dbg !1489
  %bf.load = load i32, i32* %9, align 4, !dbg !1489
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1489
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1489
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !1490
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1490

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !1491

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %str, align 8, !dbg !1493, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %10), !dbg !1495
  br label %cond.end, !dbg !1490

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !1490
  %cmp4 = icmp slt i32 %cond, 0, !dbg !1496
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1499

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !1500

do.body:                                          ; preds = %if.then.5
  %11 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1501
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !1501
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !488, metadata !889), !dbg !1503
  %12 = load %struct._object*, %struct._object** %str, align 8, !dbg !1504, !tbaa !885
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1503, !tbaa !885
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1505, !tbaa !885
  %cmp6 = icmp ne %struct._object* %13, null, !dbg !1506
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1507

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !1508

do.body.8:                                        ; preds = %if.then.7
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1510
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !1510
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !492, metadata !889), !dbg !1512
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1513, !tbaa !885
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !1512, !tbaa !885
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1514, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !1516
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !1517, !tbaa !898
  %dec = add i64 %17, -1, !dbg !1517
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1517, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1518
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1519

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !1520

if.else:                                          ; preds = %do.body.8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1522, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !1524
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1524, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !1525
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1525, !tbaa !1214
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1526, !tbaa !885
  call void %20(%struct._object* %21), !dbg !1527
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1528
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1528
  br label %do.cond, !dbg !1530

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1531

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !1533

if.end.12:                                        ; preds = %do.end, %do.body
  %23 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1535
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !1535
  br label %do.cond.13, !dbg !1538

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !1539

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !1541
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1541

if.end.15:                                        ; preds = %cond.end
  %24 = load %struct._object*, %struct._object** %str, align 8, !dbg !1542, !tbaa !885
  %25 = load i8*, i8** %errors, align 8, !dbg !1543, !tbaa !885
  %26 = load i32, i32* %byteorder, align 4, !dbg !1544, !tbaa !1279
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %24, i8* %25, i32 %26), !dbg !1545
  %27 = load %struct._object*, %struct._object** %str, align 8, !dbg !1546, !tbaa !885
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !1547
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 1, !dbg !1548
  %29 = load i64, i64* %length, align 8, !dbg !1548, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %29), !dbg !1549
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !1550, !tbaa !885
  br label %do.body.18, !dbg !1551

do.body.18:                                       ; preds = %if.end.15
  %30 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1552
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !1552
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !495, metadata !889), !dbg !1554
  %31 = load %struct._object*, %struct._object** %str, align 8, !dbg !1555, !tbaa !885
  store %struct._object* %31, %struct._object** %_py_decref_tmp19, align 8, !dbg !1554, !tbaa !885
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1556, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !1558
  %33 = load i64, i64* %ob_refcnt20, align 8, !dbg !1559, !tbaa !898
  %dec21 = add i64 %33, -1, !dbg !1559
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1559, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1560
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1561

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1562

if.else.24:                                       ; preds = %do.body.18
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1564, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1566
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1566, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !1567
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1567, !tbaa !1214
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1568, !tbaa !885
  call void %36(%struct._object* %37), !dbg !1569
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %38 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1570
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1570
  br label %do.cond.28, !dbg !1572

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1573

do.end.29:                                        ; preds = %do.cond.28
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !1575, !tbaa !885
  store %struct._object* %39, %struct._object** %retval, !dbg !1576
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1576

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %40 = bitcast i32* %byteorder to i8*, !dbg !1577
  call void @llvm.lifetime.end(i64 4, i8* %40) #3, !dbg !1577
  %41 = bitcast i8** %errors to i8*, !dbg !1577
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !1577
  %42 = bitcast %struct._object** %v to i8*, !dbg !1577
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !1577
  %43 = bitcast %struct._object** %str to i8*, !dbg !1577
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !1577
  %44 = load %struct._object*, %struct._object** %retval, !dbg !1577
  ret %struct._object* %44, !dbg !1577
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !499, metadata !889), !dbg !1578
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !500, metadata !889), !dbg !1579
  %0 = bitcast %struct._object** %str to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !501, metadata !889), !dbg !1581
  %1 = bitcast %struct._object** %v to i8*, !dbg !1580
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1580
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !502, metadata !889), !dbg !1582
  %2 = bitcast i8** %errors to i8*, !dbg !1583
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1583
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !503, metadata !889), !dbg !1584
  store i8* null, i8** %errors, align 8, !dbg !1584, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1585, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !1587
  %tobool = icmp ne i32 %call, 0, !dbg !1587
  br i1 %tobool, label %if.end, label %if.then, !dbg !1588

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1589
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1589

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !1590, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !1591
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1592, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !1593, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !1594
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1595

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !1596, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !1598
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !1599
  %8 = bitcast %struct.anon* %state to i32*, !dbg !1600
  %bf.load = load i32, i32* %8, align 4, !dbg !1600
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1600
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1600
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !1601
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1601

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !1602

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !1604, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !1606
  br label %cond.end, !dbg !1601

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !1601
  %cmp4 = icmp slt i32 %cond, 0, !dbg !1607
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1610

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !1611

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1612
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1612
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !504, metadata !889), !dbg !1614
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !1615, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1614, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1616, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !1617
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1618

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !1619

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !508, metadata !889), !dbg !1623
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1624, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1623, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1625, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1627
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1628, !tbaa !898
  %dec = add i64 %16, -1, !dbg !1628
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1628, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1629
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1630

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !1631

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1633, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1635
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1635, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1636
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1636, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1637, !tbaa !885
  call void %19(%struct._object* %20), !dbg !1638
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1639
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1639
  br label %do.cond, !dbg !1641

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1642

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !1644

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1646
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1646
  br label %do.cond.13, !dbg !1649

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !1650

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !1652
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1652

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !1653, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !1654, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %23, i8* %24, i32 -1), !dbg !1655
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !1656, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !1657
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !1658
  %27 = load i64, i64* %length, align 8, !dbg !1658, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !1659
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !1660, !tbaa !885
  br label %do.body.18, !dbg !1661

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !511, metadata !889), !dbg !1664
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !1665, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !1664, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1666, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1668
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !1669, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !1669
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1669, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1670
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1671

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1672

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1674, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1676
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1676, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1677
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1677, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1678, !tbaa !885
  call void %34(%struct._object* %35), !dbg !1679
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1680
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1680
  br label %do.cond.28, !dbg !1682

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1683

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !1685, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !1686
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1686

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !1687
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1687
  %39 = bitcast %struct._object** %v to i8*, !dbg !1687
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1687
  %40 = bitcast %struct._object** %str to i8*, !dbg !1687
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1687
  %41 = load %struct._object*, %struct._object** %retval, !dbg !1687
  ret %struct._object* %41, !dbg !1687
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !515, metadata !889), !dbg !1688
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !516, metadata !889), !dbg !1689
  %0 = bitcast %struct._object** %str to i8*, !dbg !1690
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1690
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !517, metadata !889), !dbg !1691
  %1 = bitcast %struct._object** %v to i8*, !dbg !1690
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1690
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !518, metadata !889), !dbg !1692
  %2 = bitcast i8** %errors to i8*, !dbg !1693
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1693
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !519, metadata !889), !dbg !1694
  store i8* null, i8** %errors, align 8, !dbg !1694, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1695, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.55, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !1697
  %tobool = icmp ne i32 %call, 0, !dbg !1697
  br i1 %tobool, label %if.end, label %if.then, !dbg !1698

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1699
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1699

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !1700, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !1701
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !1702, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !1703, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !1704
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !1705

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !1706, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !1708
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !1709
  %8 = bitcast %struct.anon* %state to i32*, !dbg !1710
  %bf.load = load i32, i32* %8, align 4, !dbg !1710
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1710
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1710
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !1711
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1711

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !1712

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !1714, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !1716
  br label %cond.end, !dbg !1711

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !1711
  %cmp4 = icmp slt i32 %cond, 0, !dbg !1717
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !1720

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !1721

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1722
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !520, metadata !889), !dbg !1724
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !1725, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1724, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1726, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !1727
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !1728

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !1729

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1731
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !1731
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !524, metadata !889), !dbg !1733
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1734, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !1733, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1735, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !1737
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !898
  %dec = add i64 %16, -1, !dbg !1738
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1738, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !1739
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !1740

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !1741

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1743, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1745
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1745, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !1746
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1746, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1747, !tbaa !885
  call void %19(%struct._object* %20), !dbg !1748
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1749
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !1749
  br label %do.cond, !dbg !1751

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !1752

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !1754

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1756
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !1756
  br label %do.cond.13, !dbg !1759

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !1760

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !1762
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1762

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !1763, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !1764, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF16(%struct._object* %23, i8* %24, i32 1), !dbg !1765
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !1766, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !1767
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !1768
  %27 = load i64, i64* %length, align 8, !dbg !1768, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !1769
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !1770, !tbaa !885
  br label %do.body.18, !dbg !1771

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1772
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !1772
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !527, metadata !889), !dbg !1774
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !1775, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !1774, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1776, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !1778
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !1779, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !1779
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !1779, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !1780
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !1781

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !1782

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1784, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !1786
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !1786, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !1787
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !1787, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !1788, !tbaa !885
  call void %34(%struct._object* %35), !dbg !1789
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !1790
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !1790
  br label %do.cond.28, !dbg !1792

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !1793

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !1795, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !1796
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1796

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !1797
  %39 = bitcast %struct._object** %v to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !1797
  %40 = bitcast %struct._object** %str to i8*, !dbg !1797
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !1797
  %41 = load %struct._object*, %struct._object** %retval, !dbg !1797
  ret %struct._object* %41, !dbg !1797
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !531, metadata !889), !dbg !1798
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !532, metadata !889), !dbg !1799
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1800
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1800
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !533, metadata !889), !dbg !1801
  %1 = bitcast i8** %errors to i8*, !dbg !1802
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1802
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !534, metadata !889), !dbg !1803
  store i8* null, i8** %errors, align 8, !dbg !1803, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !1804
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1804
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !535, metadata !889), !dbg !1805
  store i32 0, i32* %byteorder, align 4, !dbg !1805, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !1806
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1806
  call void @llvm.dbg.declare(metadata i32* %final, metadata !536, metadata !889), !dbg !1807
  store i32 0, i32* %final, align 4, !dbg !1807, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !1808
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1808
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !537, metadata !889), !dbg !1809
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !1810
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1810
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !538, metadata !889), !dbg !1811
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1812, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.56, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !1814
  %tobool = icmp ne i32 %call, 0, !dbg !1814
  br i1 %tobool, label %if.end, label %if.then, !dbg !1815

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1816
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1816

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1817
  %7 = load i64, i64* %len, align 8, !dbg !1817, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !1818, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1819
  %8 = load i8*, i8** %buf, align 8, !dbg !1819, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1820
  %9 = load i64, i64* %len1, align 8, !dbg !1820, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !1821, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !1822, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !1822
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1822

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1823

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1825

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1822
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !1827
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !1828, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1829
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1830, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !1832
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1833

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1834

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1835, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !1836, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !1837
  store %struct._object* %call6, %struct._object** %retval, !dbg !1838
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1838

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1839
  %16 = bitcast i64* %consumed to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1839
  %17 = bitcast i32* %final to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !1839
  %18 = bitcast i32* %byteorder to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !1839
  %19 = bitcast i8** %errors to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1839
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1839
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !1839
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1839
  ret %struct._object* %21, !dbg !1839
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !541, metadata !889), !dbg !1840
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !542, metadata !889), !dbg !1841
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1842
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1842
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !543, metadata !889), !dbg !1843
  %1 = bitcast i8** %errors to i8*, !dbg !1844
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1844
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !544, metadata !889), !dbg !1845
  store i8* null, i8** %errors, align 8, !dbg !1845, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !1846
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1846
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !545, metadata !889), !dbg !1847
  store i32 -1, i32* %byteorder, align 4, !dbg !1847, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !1848
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1848
  call void @llvm.dbg.declare(metadata i32* %final, metadata !546, metadata !889), !dbg !1849
  store i32 0, i32* %final, align 4, !dbg !1849, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !1850
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1850
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !547, metadata !889), !dbg !1851
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !1852
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1852
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !548, metadata !889), !dbg !1853
  store %struct._object* null, %struct._object** %decoded, align 8, !dbg !1853, !tbaa !885
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1854, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !1856
  %tobool = icmp ne i32 %call, 0, !dbg !1856
  br i1 %tobool, label %if.end, label %if.then, !dbg !1857

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1858
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1858

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1859
  %7 = load i64, i64* %len, align 8, !dbg !1859, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !1860, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1861
  %8 = load i8*, i8** %buf, align 8, !dbg !1861, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1862
  %9 = load i64, i64* %len1, align 8, !dbg !1862, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !1863, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !1864, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !1864
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1864

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1865

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1867

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1864
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !1869
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !1870, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1871
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1872, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !1874
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1875

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1876
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1876

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1877, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !1878, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !1879
  store %struct._object* %call6, %struct._object** %retval, !dbg !1880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1880

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1881
  %16 = bitcast i64* %consumed to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1881
  %17 = bitcast i32* %final to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !1881
  %18 = bitcast i32* %byteorder to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !1881
  %19 = bitcast i8** %errors to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1881
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !1881
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1881
  ret %struct._object* %21, !dbg !1881
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !551, metadata !889), !dbg !1882
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !552, metadata !889), !dbg !1883
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1884
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1884
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !553, metadata !889), !dbg !1885
  %1 = bitcast i8** %errors to i8*, !dbg !1886
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1886
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !554, metadata !889), !dbg !1887
  store i8* null, i8** %errors, align 8, !dbg !1887, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !1888
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1888
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !555, metadata !889), !dbg !1889
  store i32 1, i32* %byteorder, align 4, !dbg !1889, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !1890
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !1890
  call void @llvm.dbg.declare(metadata i32* %final, metadata !556, metadata !889), !dbg !1891
  store i32 0, i32* %final, align 4, !dbg !1891, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !1892
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1892
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !557, metadata !889), !dbg !1893
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !1894
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !1894
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !558, metadata !889), !dbg !1895
  store %struct._object* null, %struct._object** %decoded, align 8, !dbg !1895, !tbaa !885
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1896, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.58, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !1898
  %tobool = icmp ne i32 %call, 0, !dbg !1898
  br i1 %tobool, label %if.end, label %if.then, !dbg !1899

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1900
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1900

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1901
  %7 = load i64, i64* %len, align 8, !dbg !1901, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !1902, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1903
  %8 = load i8*, i8** %buf, align 8, !dbg !1903, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1904
  %9 = load i64, i64* %len1, align 8, !dbg !1904, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !1905, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !1906, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !1906
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1906

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1907

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1906
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !1911
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !1912, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1913
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1914, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !1916
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1917

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1918

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !1919, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !1920, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !1921
  store %struct._object* %call6, %struct._object** %retval, !dbg !1922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1922

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !1923
  %16 = bitcast i64* %consumed to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !1923
  %17 = bitcast i32* %final to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !1923
  %18 = bitcast i32* %byteorder to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !1923
  %19 = bitcast i8** %errors to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !1923
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !1923
  %21 = load %struct._object*, %struct._object** %retval, !dbg !1923
  ret %struct._object* %21, !dbg !1923
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !561, metadata !889), !dbg !1924
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !562, metadata !889), !dbg !1925
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1926
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !1926
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !563, metadata !889), !dbg !1927
  %1 = bitcast i8** %errors to i8*, !dbg !1928
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1928
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !564, metadata !889), !dbg !1929
  store i8* null, i8** %errors, align 8, !dbg !1929, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !1930
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !1930
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !565, metadata !889), !dbg !1931
  store i32 0, i32* %byteorder, align 4, !dbg !1931, !tbaa !1279
  %3 = bitcast %struct._object** %unicode to i8*, !dbg !1932
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !1932
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !566, metadata !889), !dbg !1933
  %4 = bitcast %struct._object** %tuple to i8*, !dbg !1932
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !1932
  call void @llvm.dbg.declare(metadata %struct._object** %tuple, metadata !567, metadata !889), !dbg !1934
  %5 = bitcast i32* %final to i8*, !dbg !1935
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !1935
  call void @llvm.dbg.declare(metadata i32* %final, metadata !568, metadata !889), !dbg !1936
  store i32 0, i32* %final, align 4, !dbg !1936, !tbaa !1279
  %6 = bitcast i64* %consumed to i8*, !dbg !1937
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !1937
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !569, metadata !889), !dbg !1938
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1939, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.59, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %byteorder, i32* %final), !dbg !1941
  %tobool = icmp ne i32 %call, 0, !dbg !1941
  br i1 %tobool, label %if.end, label %if.then, !dbg !1942

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1943
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1943

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1944
  %8 = load i64, i64* %len, align 8, !dbg !1944, !tbaa !1290
  store i64 %8, i64* %consumed, align 8, !dbg !1945, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !1946
  %9 = load i8*, i8** %buf, align 8, !dbg !1946, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !1947
  %10 = load i64, i64* %len1, align 8, !dbg !1947, !tbaa !1290
  %11 = load i8*, i8** %errors, align 8, !dbg !1948, !tbaa !885
  %12 = load i32, i32* %final, align 4, !dbg !1949, !tbaa !1279
  %tobool2 = icmp ne i32 %12, 0, !dbg !1949
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !1949

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !1950

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !1952

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !1949
  %call3 = call %struct._object* @PyUnicode_DecodeUTF16Stateful(i8* %9, i64 %10, i8* %11, i32* %byteorder, i64* %cond), !dbg !1954
  store %struct._object* %call3, %struct._object** %unicode, align 8, !dbg !1955, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !1956
  %13 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !1957, !tbaa !885
  %cmp = icmp eq %struct._object* %13, null, !dbg !1959
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !1960

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !1961
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1961

if.end.5:                                         ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !1962, !tbaa !885
  %15 = load i64, i64* %consumed, align 8, !dbg !1963, !tbaa !991
  %16 = load i32, i32* %byteorder, align 4, !dbg !1964, !tbaa !1279
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), %struct._object* %14, i64 %15, i32 %16), !dbg !1965
  store %struct._object* %call6, %struct._object** %tuple, align 8, !dbg !1966, !tbaa !885
  br label %do.body, !dbg !1967

do.body:                                          ; preds = %if.end.5
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1968
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !1968
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !570, metadata !889), !dbg !1970
  %18 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !1971, !tbaa !885
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !1970, !tbaa !885
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1972, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !1974
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !1975, !tbaa !898
  %dec = add i64 %20, -1, !dbg !1975
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1975, !tbaa !898
  %cmp7 = icmp ne i64 %dec, 0, !dbg !1976
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !1977

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !1978

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1980, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !1982
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1982, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !1983
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1983, !tbaa !1214
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1984, !tbaa !885
  call void %23(%struct._object* %24), !dbg !1985
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1986
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !1986
  br label %do.cond, !dbg !1988

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !1989

do.end:                                           ; preds = %do.cond
  %26 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !1991, !tbaa !885
  store %struct._object* %26, %struct._object** %retval, !dbg !1992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1992

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %27 = bitcast i64* %consumed to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !1993
  %28 = bitcast i32* %final to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 4, i8* %28) #3, !dbg !1993
  %29 = bitcast %struct._object** %tuple to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !1993
  %30 = bitcast %struct._object** %unicode to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !1993
  %31 = bitcast i32* %byteorder to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 4, i8* %31) #3, !dbg !1993
  %32 = bitcast i8** %errors to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !1993
  %33 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !1993
  call void @llvm.lifetime.end(i64 80, i8* %33) #3, !dbg !1993
  %34 = load %struct._object*, %struct._object** %retval, !dbg !1993
  ret %struct._object* %34, !dbg !1993
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !574, metadata !889), !dbg !1994
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !575, metadata !889), !dbg !1995
  %0 = bitcast %struct._object** %str to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !576, metadata !889), !dbg !1997
  %1 = bitcast %struct._object** %v to i8*, !dbg !1996
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !1996
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !577, metadata !889), !dbg !1998
  %2 = bitcast i8** %errors to i8*, !dbg !1999
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !1999
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !578, metadata !889), !dbg !2000
  store i8* null, i8** %errors, align 8, !dbg !2000, !tbaa !885
  %3 = bitcast i32* %byteorder to i8*, !dbg !2001
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2001
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !579, metadata !889), !dbg !2002
  store i32 0, i32* %byteorder, align 4, !dbg !2002, !tbaa !1279
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2003, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.61, i32 0, i32 0), %struct._object** %str, i8** %errors, i32* %byteorder), !dbg !2005
  %tobool = icmp ne i32 %call, 0, !dbg !2005
  br i1 %tobool, label %if.end, label %if.then, !dbg !2006

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2007
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2007

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2008, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %5), !dbg !2009
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2010, !tbaa !885
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2011, !tbaa !885
  %cmp = icmp eq %struct._object* %6, null, !dbg !2012
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2013

lor.lhs.false:                                    ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %str, align 8, !dbg !2014, !tbaa !885
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*, !dbg !2016
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3, !dbg !2017
  %9 = bitcast %struct.anon* %state to i32*, !dbg !2018
  %bf.load = load i32, i32* %9, align 4, !dbg !2018
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2018
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2018
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2019
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2019

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2020

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %str, align 8, !dbg !2022, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %10), !dbg !2024
  br label %cond.end, !dbg !2019

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2019
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2025
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2028

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2029

do.body:                                          ; preds = %if.then.5
  %11 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2030
  call void @llvm.lifetime.start(i64 8, i8* %11) #3, !dbg !2030
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !580, metadata !889), !dbg !2032
  %12 = load %struct._object*, %struct._object** %str, align 8, !dbg !2033, !tbaa !885
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2032, !tbaa !885
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2034, !tbaa !885
  %cmp6 = icmp ne %struct._object* %13, null, !dbg !2035
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2036

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2037

do.body.8:                                        ; preds = %if.then.7
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2039
  call void @llvm.lifetime.start(i64 8, i8* %14) #3, !dbg !2039
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !584, metadata !889), !dbg !2041
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2042, !tbaa !885
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !2041, !tbaa !885
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2043, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !2045
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !2046, !tbaa !898
  %dec = add i64 %17, -1, !dbg !2046
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2046, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2047
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2048

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2049

if.else:                                          ; preds = %do.body.8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2051, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !2053
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2053, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !2054
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2054, !tbaa !1214
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2055, !tbaa !885
  call void %20(%struct._object* %21), !dbg !2056
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2057
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2057
  br label %do.cond, !dbg !2059

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2060

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2062

if.end.12:                                        ; preds = %do.end, %do.body
  %23 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2064
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !2064
  br label %do.cond.13, !dbg !2067

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2068

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !2070
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2070

if.end.15:                                        ; preds = %cond.end
  %24 = load %struct._object*, %struct._object** %str, align 8, !dbg !2071, !tbaa !885
  %25 = load i8*, i8** %errors, align 8, !dbg !2072, !tbaa !885
  %26 = load i32, i32* %byteorder, align 4, !dbg !2073, !tbaa !1279
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %24, i8* %25, i32 %26), !dbg !2074
  %27 = load %struct._object*, %struct._object** %str, align 8, !dbg !2075, !tbaa !885
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !2076
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 1, !dbg !2077
  %29 = load i64, i64* %length, align 8, !dbg !2077, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %29), !dbg !2078
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !2079, !tbaa !885
  br label %do.body.18, !dbg !2080

do.body.18:                                       ; preds = %if.end.15
  %30 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2081
  call void @llvm.lifetime.start(i64 8, i8* %30) #3, !dbg !2081
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !587, metadata !889), !dbg !2083
  %31 = load %struct._object*, %struct._object** %str, align 8, !dbg !2084, !tbaa !885
  store %struct._object* %31, %struct._object** %_py_decref_tmp19, align 8, !dbg !2083, !tbaa !885
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2085, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !2087
  %33 = load i64, i64* %ob_refcnt20, align 8, !dbg !2088, !tbaa !898
  %dec21 = add i64 %33, -1, !dbg !2088
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2088, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2089
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2090

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2091

if.else.24:                                       ; preds = %do.body.18
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2093, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !2095
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2095, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !2096
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2096, !tbaa !1214
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2097, !tbaa !885
  call void %36(%struct._object* %37), !dbg !2098
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %38 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2099
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2099
  br label %do.cond.28, !dbg !2101

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2102

do.end.29:                                        ; preds = %do.cond.28
  %39 = load %struct._object*, %struct._object** %v, align 8, !dbg !2104, !tbaa !885
  store %struct._object* %39, %struct._object** %retval, !dbg !2105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2105

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %40 = bitcast i32* %byteorder to i8*, !dbg !2106
  call void @llvm.lifetime.end(i64 4, i8* %40) #3, !dbg !2106
  %41 = bitcast i8** %errors to i8*, !dbg !2106
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !2106
  %42 = bitcast %struct._object** %v to i8*, !dbg !2106
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !2106
  %43 = bitcast %struct._object** %str to i8*, !dbg !2106
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !2106
  %44 = load %struct._object*, %struct._object** %retval, !dbg !2106
  ret %struct._object* %44, !dbg !2106
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !591, metadata !889), !dbg !2107
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !592, metadata !889), !dbg !2108
  %0 = bitcast %struct._object** %str to i8*, !dbg !2109
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !593, metadata !889), !dbg !2110
  %1 = bitcast %struct._object** %v to i8*, !dbg !2109
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2109
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !594, metadata !889), !dbg !2111
  %2 = bitcast i8** %errors to i8*, !dbg !2112
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2112
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !595, metadata !889), !dbg !2113
  store i8* null, i8** %errors, align 8, !dbg !2113, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2114, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.62, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !2116
  %tobool = icmp ne i32 %call, 0, !dbg !2116
  br i1 %tobool, label %if.end, label %if.then, !dbg !2117

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2118

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2119, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !2120
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2121, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2122, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !2123
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2124

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2125, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2127
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !2128
  %8 = bitcast %struct.anon* %state to i32*, !dbg !2129
  %bf.load = load i32, i32* %8, align 4, !dbg !2129
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2129
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2129
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2130
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2130

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2131

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !2133, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !2135
  br label %cond.end, !dbg !2130

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2130
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2136
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2139

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2140

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2141
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2141
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !596, metadata !889), !dbg !2143
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !2144, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2143, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2145, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !2146
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2147

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2148

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2150
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !600, metadata !889), !dbg !2152
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2153, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2152, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2154, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2156
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2157, !tbaa !898
  %dec = add i64 %16, -1, !dbg !2157
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2157, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2158
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2159

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2160

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2162, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2164
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2164, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2165
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2165, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2166, !tbaa !885
  call void %19(%struct._object* %20), !dbg !2167
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2168
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2168
  br label %do.cond, !dbg !2170

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2171

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2173

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2175
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2175
  br label %do.cond.13, !dbg !2178

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2179

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !2181
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2181

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !2182, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !2183, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %23, i8* %24, i32 -1), !dbg !2184
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !2185, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !2186
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !2187
  %27 = load i64, i64* %length, align 8, !dbg !2187, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !2188
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !2189, !tbaa !885
  br label %do.body.18, !dbg !2190

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2191
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !2191
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !603, metadata !889), !dbg !2193
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !2194, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !2193, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2195, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !2197
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !2198, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !2198
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2198, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2199
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2200

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2201

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2203, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2205
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2205, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !2206
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2206, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2207, !tbaa !885
  call void %34(%struct._object* %35), !dbg !2208
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2209
  br label %do.cond.28, !dbg !2211

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2212

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !2214, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !2215
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2215

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2216
  %39 = bitcast %struct._object** %v to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2216
  %40 = bitcast %struct._object** %str to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !2216
  %41 = load %struct._object*, %struct._object** %retval, !dbg !2216
  ret %struct._object* %41, !dbg !2216
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !607, metadata !889), !dbg !2217
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !608, metadata !889), !dbg !2218
  %0 = bitcast %struct._object** %str to i8*, !dbg !2219
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2219
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !609, metadata !889), !dbg !2220
  %1 = bitcast %struct._object** %v to i8*, !dbg !2219
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2219
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !610, metadata !889), !dbg !2221
  %2 = bitcast i8** %errors to i8*, !dbg !2222
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2222
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !611, metadata !889), !dbg !2223
  store i8* null, i8** %errors, align 8, !dbg !2223, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2224, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.63, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !2226
  %tobool = icmp ne i32 %call, 0, !dbg !2226
  br i1 %tobool, label %if.end, label %if.then, !dbg !2227

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2228

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2229, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !2230
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2231, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2232, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !2233
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2234

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2235, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2237
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !2238
  %8 = bitcast %struct.anon* %state to i32*, !dbg !2239
  %bf.load = load i32, i32* %8, align 4, !dbg !2239
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2239
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2239
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2240
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2240

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2241

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !2243, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !2245
  br label %cond.end, !dbg !2240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2240
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2246
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2249

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2250

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2251
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2251
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !612, metadata !889), !dbg !2253
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !2254, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2253, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2255, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !2256
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2257

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2258

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2260
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2260
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !616, metadata !889), !dbg !2262
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2263, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2262, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2264, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2266
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2267, !tbaa !898
  %dec = add i64 %16, -1, !dbg !2267
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2267, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2268
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2269

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2270

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2272, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2274
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2274, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2275
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2275, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2276, !tbaa !885
  call void %19(%struct._object* %20), !dbg !2277
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2278
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2278
  br label %do.cond, !dbg !2280

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2281

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2283

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2285
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2285
  br label %do.cond.13, !dbg !2288

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2289

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !2291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2291

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !2292, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !2293, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_EncodeUTF32(%struct._object* %23, i8* %24, i32 1), !dbg !2294
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !2295, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !2296
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !2297
  %27 = load i64, i64* %length, align 8, !dbg !2297, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !2298
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !2299, !tbaa !885
  br label %do.body.18, !dbg !2300

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2301
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !619, metadata !889), !dbg !2303
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !2304, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !2303, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2305, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !2307
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !2308, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !2308
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2308, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2309
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2310

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2311

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2313, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !2315
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2315, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !2316
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2316, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2317, !tbaa !885
  call void %34(%struct._object* %35), !dbg !2318
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2319
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !2319
  br label %do.cond.28, !dbg !2321

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2322

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !2324, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !2325
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2325

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2326
  %39 = bitcast %struct._object** %v to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2326
  %40 = bitcast %struct._object** %str to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !2326
  %41 = load %struct._object*, %struct._object** %retval, !dbg !2326
  ret %struct._object* %41, !dbg !2326
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !623, metadata !889), !dbg !2327
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !624, metadata !889), !dbg !2328
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2329
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2329
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !625, metadata !889), !dbg !2330
  %1 = bitcast i8** %errors to i8*, !dbg !2331
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2331
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !626, metadata !889), !dbg !2332
  store i8* null, i8** %errors, align 8, !dbg !2332, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !2333
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2333
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !627, metadata !889), !dbg !2334
  store i32 0, i32* %byteorder, align 4, !dbg !2334, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !2335
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2335
  call void @llvm.dbg.declare(metadata i32* %final, metadata !628, metadata !889), !dbg !2336
  store i32 0, i32* %final, align 4, !dbg !2336, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !2337
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2337
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !629, metadata !889), !dbg !2338
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !2339
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2339
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !630, metadata !889), !dbg !2340
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2341, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !2343
  %tobool = icmp ne i32 %call, 0, !dbg !2343
  br i1 %tobool, label %if.end, label %if.then, !dbg !2344

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2345
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2345

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2346
  %7 = load i64, i64* %len, align 8, !dbg !2346, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !2347, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2348
  %8 = load i8*, i8** %buf, align 8, !dbg !2348, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2349
  %9 = load i64, i64* %len1, align 8, !dbg !2349, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !2350, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !2351, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !2351
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2351

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2352

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2354

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !2351
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !2356
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !2357, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2358
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2359, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !2361
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !2362

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2363

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2364, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !2365, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !2366
  store %struct._object* %call6, %struct._object** %retval, !dbg !2367
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2367

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2368
  %16 = bitcast i64* %consumed to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2368
  %17 = bitcast i32* %final to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !2368
  %18 = bitcast i32* %byteorder to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !2368
  %19 = bitcast i8** %errors to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2368
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2368
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !2368
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2368
  ret %struct._object* %21, !dbg !2368
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !633, metadata !889), !dbg !2369
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !634, metadata !889), !dbg !2370
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2371
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2371
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !635, metadata !889), !dbg !2372
  %1 = bitcast i8** %errors to i8*, !dbg !2373
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2373
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !636, metadata !889), !dbg !2374
  store i8* null, i8** %errors, align 8, !dbg !2374, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !2375
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !637, metadata !889), !dbg !2376
  store i32 -1, i32* %byteorder, align 4, !dbg !2376, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !2377
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2377
  call void @llvm.dbg.declare(metadata i32* %final, metadata !638, metadata !889), !dbg !2378
  store i32 0, i32* %final, align 4, !dbg !2378, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !2379
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2379
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !639, metadata !889), !dbg !2380
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !2381
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2381
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !640, metadata !889), !dbg !2382
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2383, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !2385
  %tobool = icmp ne i32 %call, 0, !dbg !2385
  br i1 %tobool, label %if.end, label %if.then, !dbg !2386

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2387
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2387

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2388
  %7 = load i64, i64* %len, align 8, !dbg !2388, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !2389, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2390
  %8 = load i8*, i8** %buf, align 8, !dbg !2390, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2391
  %9 = load i64, i64* %len1, align 8, !dbg !2391, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !2392, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !2393, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !2393
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2393

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2394

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !2393
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !2398
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !2399, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2400
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2401, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !2403
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !2404

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2405
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2405

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2406, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !2407, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !2408
  store %struct._object* %call6, %struct._object** %retval, !dbg !2409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2409

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2410
  %16 = bitcast i64* %consumed to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2410
  %17 = bitcast i32* %final to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !2410
  %18 = bitcast i32* %byteorder to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !2410
  %19 = bitcast i8** %errors to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2410
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2410
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !2410
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2410
  ret %struct._object* %21, !dbg !2410
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !643, metadata !889), !dbg !2411
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !644, metadata !889), !dbg !2412
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2413
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2413
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !645, metadata !889), !dbg !2414
  %1 = bitcast i8** %errors to i8*, !dbg !2415
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2415
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !646, metadata !889), !dbg !2416
  store i8* null, i8** %errors, align 8, !dbg !2416, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !2417
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2417
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !647, metadata !889), !dbg !2418
  store i32 1, i32* %byteorder, align 4, !dbg !2418, !tbaa !1279
  %3 = bitcast i32* %final to i8*, !dbg !2419
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !2419
  call void @llvm.dbg.declare(metadata i32* %final, metadata !648, metadata !889), !dbg !2420
  store i32 0, i32* %final, align 4, !dbg !2420, !tbaa !1279
  %4 = bitcast i64* %consumed to i8*, !dbg !2421
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2421
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !649, metadata !889), !dbg !2422
  %5 = bitcast %struct._object** %decoded to i8*, !dbg !2423
  call void @llvm.lifetime.start(i64 8, i8* %5) #3, !dbg !2423
  call void @llvm.dbg.declare(metadata %struct._object** %decoded, metadata !650, metadata !889), !dbg !2424
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2425, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.66, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %final), !dbg !2427
  %tobool = icmp ne i32 %call, 0, !dbg !2427
  br i1 %tobool, label %if.end, label %if.then, !dbg !2428

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2429

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2430
  %7 = load i64, i64* %len, align 8, !dbg !2430, !tbaa !1290
  store i64 %7, i64* %consumed, align 8, !dbg !2431, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2432
  %8 = load i8*, i8** %buf, align 8, !dbg !2432, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2433
  %9 = load i64, i64* %len1, align 8, !dbg !2433, !tbaa !1290
  %10 = load i8*, i8** %errors, align 8, !dbg !2434, !tbaa !885
  %11 = load i32, i32* %final, align 4, !dbg !2435, !tbaa !1279
  %tobool2 = icmp ne i32 %11, 0, !dbg !2435
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2435

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2436

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !2435
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %8, i64 %9, i8* %10, i32* %byteorder, i64* %cond), !dbg !2440
  store %struct._object* %call3, %struct._object** %decoded, align 8, !dbg !2441, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2442
  %12 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2443, !tbaa !885
  %cmp = icmp eq %struct._object* %12, null, !dbg !2445
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !2446

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2447

if.end.5:                                         ; preds = %cond.end
  %13 = load %struct._object*, %struct._object** %decoded, align 8, !dbg !2448, !tbaa !885
  %14 = load i64, i64* %consumed, align 8, !dbg !2449, !tbaa !991
  %call6 = call %struct._object* @codec_tuple(%struct._object* %13, i64 %14), !dbg !2450
  store %struct._object* %call6, %struct._object** %retval, !dbg !2451
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2451

cleanup:                                          ; preds = %if.end.5, %if.then.4, %if.then
  %15 = bitcast %struct._object** %decoded to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !2452
  %16 = bitcast i64* %consumed to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 8, i8* %16) #3, !dbg !2452
  %17 = bitcast i32* %final to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 4, i8* %17) #3, !dbg !2452
  %18 = bitcast i32* %byteorder to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 4, i8* %18) #3, !dbg !2452
  %19 = bitcast i8** %errors to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 8, i8* %19) #3, !dbg !2452
  %20 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2452
  call void @llvm.lifetime.end(i64 80, i8* %20) #3, !dbg !2452
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2452
  ret %struct._object* %21, !dbg !2452
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !653, metadata !889), !dbg !2453
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !654, metadata !889), !dbg !2454
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2455
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !655, metadata !889), !dbg !2456
  %1 = bitcast i8** %errors to i8*, !dbg !2457
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2457
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !656, metadata !889), !dbg !2458
  store i8* null, i8** %errors, align 8, !dbg !2458, !tbaa !885
  %2 = bitcast i32* %byteorder to i8*, !dbg !2459
  call void @llvm.lifetime.start(i64 4, i8* %2) #3, !dbg !2459
  call void @llvm.dbg.declare(metadata i32* %byteorder, metadata !657, metadata !889), !dbg !2460
  store i32 0, i32* %byteorder, align 4, !dbg !2460, !tbaa !1279
  %3 = bitcast %struct._object** %unicode to i8*, !dbg !2461
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !658, metadata !889), !dbg !2462
  %4 = bitcast %struct._object** %tuple to i8*, !dbg !2461
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct._object** %tuple, metadata !659, metadata !889), !dbg !2463
  %5 = bitcast i32* %final to i8*, !dbg !2464
  call void @llvm.lifetime.start(i64 4, i8* %5) #3, !dbg !2464
  call void @llvm.dbg.declare(metadata i32* %final, metadata !660, metadata !889), !dbg !2465
  store i32 0, i32* %final, align 4, !dbg !2465, !tbaa !1279
  %6 = bitcast i64* %consumed to i8*, !dbg !2466
  call void @llvm.lifetime.start(i64 8, i8* %6) #3, !dbg !2466
  call void @llvm.dbg.declare(metadata i64* %consumed, metadata !661, metadata !889), !dbg !2467
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2468, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.67, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, i32* %byteorder, i32* %final), !dbg !2470
  %tobool = icmp ne i32 %call, 0, !dbg !2470
  br i1 %tobool, label %if.end, label %if.then, !dbg !2471

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2472

if.end:                                           ; preds = %entry
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2473
  %8 = load i64, i64* %len, align 8, !dbg !2473, !tbaa !1290
  store i64 %8, i64* %consumed, align 8, !dbg !2474, !tbaa !991
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2475
  %9 = load i8*, i8** %buf, align 8, !dbg !2475, !tbaa !1294
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2476
  %10 = load i64, i64* %len1, align 8, !dbg !2476, !tbaa !1290
  %11 = load i8*, i8** %errors, align 8, !dbg !2477, !tbaa !885
  %12 = load i32, i32* %final, align 4, !dbg !2478, !tbaa !1279
  %tobool2 = icmp ne i32 %12, 0, !dbg !2478
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2478

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2479

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2481

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64* [ null, %cond.true ], [ %consumed, %cond.false ], !dbg !2478
  %call3 = call %struct._object* @PyUnicode_DecodeUTF32Stateful(i8* %9, i64 %10, i8* %11, i32* %byteorder, i64* %cond), !dbg !2483
  store %struct._object* %call3, %struct._object** %unicode, align 8, !dbg !2484, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2485
  %13 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !2486, !tbaa !885
  %cmp = icmp eq %struct._object* %13, null, !dbg !2488
  br i1 %cmp, label %if.then.4, label %if.end.5, !dbg !2489

if.then.4:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2490

if.end.5:                                         ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !2491, !tbaa !885
  %15 = load i64, i64* %consumed, align 8, !dbg !2492, !tbaa !991
  %16 = load i32, i32* %byteorder, align 4, !dbg !2493, !tbaa !1279
  %call6 = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0), %struct._object* %14, i64 %15, i32 %16), !dbg !2494
  store %struct._object* %call6, %struct._object** %tuple, align 8, !dbg !2495, !tbaa !885
  br label %do.body, !dbg !2496

do.body:                                          ; preds = %if.end.5
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2497
  call void @llvm.lifetime.start(i64 8, i8* %17) #3, !dbg !2497
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !662, metadata !889), !dbg !2499
  %18 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !2500, !tbaa !885
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8, !dbg !2499, !tbaa !885
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2501, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !2503
  %20 = load i64, i64* %ob_refcnt, align 8, !dbg !2504, !tbaa !898
  %dec = add i64 %20, -1, !dbg !2504
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2504, !tbaa !898
  %cmp7 = icmp ne i64 %dec, 0, !dbg !2505
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !2506

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2507

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2509, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1, !dbg !2511
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2511, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4, !dbg !2512
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2512, !tbaa !1214
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2513, !tbaa !885
  call void %23(%struct._object* %24), !dbg !2514
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %25 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2515
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2515
  br label %do.cond, !dbg !2517

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2518

do.end:                                           ; preds = %do.cond
  %26 = load %struct._object*, %struct._object** %tuple, align 8, !dbg !2520, !tbaa !885
  store %struct._object* %26, %struct._object** %retval, !dbg !2521
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2521

cleanup:                                          ; preds = %do.end, %if.then.4, %if.then
  %27 = bitcast i64* %consumed to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 8, i8* %27) #3, !dbg !2522
  %28 = bitcast i32* %final to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 4, i8* %28) #3, !dbg !2522
  %29 = bitcast %struct._object** %tuple to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 8, i8* %29) #3, !dbg !2522
  %30 = bitcast %struct._object** %unicode to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2522
  %31 = bitcast i32* %byteorder to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 4, i8* %31) #3, !dbg !2522
  %32 = bitcast i8** %errors to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2522
  %33 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2522
  call void @llvm.lifetime.end(i64 80, i8* %33) #3, !dbg !2522
  %34 = load %struct._object*, %struct._object** %retval, !dbg !2522
  ret %struct._object* %34, !dbg !2522
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !666, metadata !889), !dbg !2523
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !667, metadata !889), !dbg !2524
  %0 = bitcast %struct._object** %str to i8*, !dbg !2525
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2525
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !668, metadata !889), !dbg !2526
  %1 = bitcast %struct._object** %v to i8*, !dbg !2525
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2525
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !669, metadata !889), !dbg !2527
  %2 = bitcast i8** %errors to i8*, !dbg !2528
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2528
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !670, metadata !889), !dbg !2529
  store i8* null, i8** %errors, align 8, !dbg !2529, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2530, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !2532
  %tobool = icmp ne i32 %call, 0, !dbg !2532
  br i1 %tobool, label %if.end, label %if.then, !dbg !2533

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2534
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2534

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2535, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !2536
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2537, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2538, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !2539
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2540

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2541, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2543
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !2544
  %8 = bitcast %struct.anon* %state to i32*, !dbg !2545
  %bf.load = load i32, i32* %8, align 4, !dbg !2545
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2545
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2545
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2546
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2546

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2547

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !2549, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !2551
  br label %cond.end, !dbg !2546

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2546
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2552
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2555

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2556

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2557
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2557
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !671, metadata !889), !dbg !2559
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !2560, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2559, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2561, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !2562
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2563

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2564

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2566
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2566
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !675, metadata !889), !dbg !2568
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2569, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2568, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2570, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2572
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2573, !tbaa !898
  %dec = add i64 %16, -1, !dbg !2573
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2573, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2574
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2575

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2576

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2578, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2580
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2580, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2581
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2581, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2582, !tbaa !885
  call void %19(%struct._object* %20), !dbg !2583
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2584
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2584
  br label %do.cond, !dbg !2586

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2587

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2589

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2591
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2591
  br label %do.cond.13, !dbg !2594

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2595

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !2597
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2597

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !2598, !tbaa !885
  %call16 = call %struct._object* @PyUnicode_AsUnicodeEscapeString(%struct._object* %23), !dbg !2599
  %24 = load %struct._object*, %struct._object** %str, align 8, !dbg !2600, !tbaa !885
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*, !dbg !2601
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 1, !dbg !2602
  %26 = load i64, i64* %length, align 8, !dbg !2602, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %26), !dbg !2603
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !2604, !tbaa !885
  br label %do.body.18, !dbg !2605

do.body.18:                                       ; preds = %if.end.15
  %27 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2606
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !678, metadata !889), !dbg !2608
  %28 = load %struct._object*, %struct._object** %str, align 8, !dbg !2609, !tbaa !885
  store %struct._object* %28, %struct._object** %_py_decref_tmp19, align 8, !dbg !2608, !tbaa !885
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2610, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2612
  %30 = load i64, i64* %ob_refcnt20, align 8, !dbg !2613, !tbaa !898
  %dec21 = add i64 %30, -1, !dbg !2613
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2613, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2614
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2615

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2616

if.else.24:                                       ; preds = %do.body.18
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2618, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2620
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2620, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2621
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2621, !tbaa !1214
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2622, !tbaa !885
  call void %33(%struct._object* %34), !dbg !2623
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %35 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2624
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2624
  br label %do.cond.28, !dbg !2626

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2627

do.end.29:                                        ; preds = %do.cond.28
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !2629, !tbaa !885
  store %struct._object* %36, %struct._object** %retval, !dbg !2630
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2630

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %37 = bitcast i8** %errors to i8*, !dbg !2631
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !2631
  %38 = bitcast %struct._object** %v to i8*, !dbg !2631
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2631
  %39 = bitcast %struct._object** %str to i8*, !dbg !2631
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2631
  %40 = load %struct._object*, %struct._object** %retval, !dbg !2631
  ret %struct._object* %40, !dbg !2631
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !682, metadata !889), !dbg !2632
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !683, metadata !889), !dbg !2633
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2634
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2634
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !684, metadata !889), !dbg !2635
  %1 = bitcast i8** %errors to i8*, !dbg !2636
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2636
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !685, metadata !889), !dbg !2637
  store i8* null, i8** %errors, align 8, !dbg !2637, !tbaa !885
  %2 = bitcast %struct._object** %unicode to i8*, !dbg !2638
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2638
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !686, metadata !889), !dbg !2639
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2640, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors), !dbg !2642
  %tobool = icmp ne i32 %call, 0, !dbg !2642
  br i1 %tobool, label %if.end, label %if.then, !dbg !2643

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2644
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2644

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2645
  %4 = load i8*, i8** %buf, align 8, !dbg !2645, !tbaa !1294
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2646
  %5 = load i64, i64* %len, align 8, !dbg !2646, !tbaa !1290
  %6 = load i8*, i8** %errors, align 8, !dbg !2647, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_DecodeUnicodeEscape(i8* %4, i64 %5, i8* %6), !dbg !2648
  store %struct._object* %call1, %struct._object** %unicode, align 8, !dbg !2649, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2650
  %7 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !2651, !tbaa !885
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2652
  %8 = load i64, i64* %len2, align 8, !dbg !2652, !tbaa !1290
  %call3 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8), !dbg !2653
  store %struct._object* %call3, %struct._object** %retval, !dbg !2654
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2654

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._object** %unicode to i8*, !dbg !2655
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !2655
  %10 = bitcast i8** %errors to i8*, !dbg !2655
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2655
  %11 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2655
  call void @llvm.lifetime.end(i64 80, i8* %11) #3, !dbg !2655
  %12 = load %struct._object*, %struct._object** %retval, !dbg !2655
  ret %struct._object* %12, !dbg !2655
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
  %cleanup.dest.slot = alloca i32
  %u = alloca i32*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !689, metadata !889), !dbg !2656
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !690, metadata !889), !dbg !2657
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2658
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !691, metadata !889), !dbg !2659
  %1 = bitcast i8** %errors to i8*, !dbg !2660
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2660
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !692, metadata !889), !dbg !2661
  store i8* null, i8** %errors, align 8, !dbg !2661, !tbaa !885
  %2 = bitcast i8** %data to i8*, !dbg !2662
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2662
  call void @llvm.dbg.declare(metadata i8** %data, metadata !693, metadata !889), !dbg !2663
  %3 = bitcast i64* %len to i8*, !dbg !2664
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2664
  call void @llvm.dbg.declare(metadata i64* %len, metadata !694, metadata !889), !dbg !2665
  %4 = bitcast i64* %size to i8*, !dbg !2664
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !2664
  call void @llvm.dbg.declare(metadata i64* %size, metadata !695, metadata !889), !dbg !2666
  %5 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8, !dbg !2667, !tbaa !885
  %call = call i32 @PyErr_WarnEx(%struct._object* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.70, i32 0, i32 0), i64 1), !dbg !2669
  %tobool = icmp ne i32 %call, 0, !dbg !2669
  br i1 %tobool, label %if.then, label %if.end, !dbg !2670

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2671
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !2671

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2672, !tbaa !885
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.71, i32 0, i32 0), %struct._object** %obj, i8** %errors), !dbg !2674
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2674
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2675

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !2676

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2677, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1, !dbg !2678
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2678, !tbaa !1212
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19, !dbg !2679
  %9 = load i64, i64* %tp_flags, align 8, !dbg !2679, !tbaa !2680
  %and = and i64 %9, 268435456, !dbg !2681
  %cmp = icmp ne i64 %and, 0, !dbg !2682
  br i1 %cmp, label %if.then.5, label %if.else, !dbg !2683

if.then.5:                                        ; preds = %if.end.4
  %10 = bitcast i32** %u to i8*, !dbg !2684
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2684
  call void @llvm.dbg.declare(metadata i32** %u, metadata !696, metadata !889), !dbg !2685
  %11 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2686, !tbaa !885
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*, !dbg !2688
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3, !dbg !2689
  %13 = bitcast %struct.anon* %state to i32*, !dbg !2690
  %bf.load = load i32, i32* %13, align 4, !dbg !2690
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2690
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2690
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !2691
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !2691

cond.true:                                        ; preds = %if.then.5
  br label %cond.end, !dbg !2692

cond.false:                                       ; preds = %if.then.5
  %14 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2694, !tbaa !885
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %14), !dbg !2696
  br label %cond.end, !dbg !2691

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call7, %cond.false ], !dbg !2691
  %cmp8 = icmp slt i32 %cond, 0, !dbg !2697
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2700

if.then.9:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2701
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2701

if.end.10:                                        ; preds = %cond.end
  %15 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2702, !tbaa !885
  %call11 = call i32* @PyUnicode_AsUnicodeAndSize(%struct._object* %15, i64* %len), !dbg !2703
  store i32* %call11, i32** %u, align 8, !dbg !2704, !tbaa !885
  %16 = load i32*, i32** %u, align 8, !dbg !2705, !tbaa !885
  %cmp12 = icmp eq i32* %16, null, !dbg !2707
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2708

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval, !dbg !2709
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2709

if.end.14:                                        ; preds = %if.end.10
  %17 = load i64, i64* %len, align 8, !dbg !2710, !tbaa !991
  %cmp15 = icmp ugt i64 %17, 2305843009213693951, !dbg !2712
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !2713

if.then.16:                                       ; preds = %if.end.14
  %call17 = call %struct._object* @PyErr_NoMemory(), !dbg !2714
  store %struct._object* %call17, %struct._object** %retval, !dbg !2715
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2715

if.end.18:                                        ; preds = %if.end.14
  %18 = load i64, i64* %len, align 8, !dbg !2716, !tbaa !991
  %mul = mul i64 %18, 4, !dbg !2717
  store i64 %mul, i64* %size, align 8, !dbg !2718, !tbaa !991
  %19 = load i32*, i32** %u, align 8, !dbg !2719, !tbaa !885
  %20 = bitcast i32* %19 to i8*, !dbg !2720
  %21 = load i64, i64* %size, align 8, !dbg !2721, !tbaa !991
  %call19 = call %struct._object* @PyBytes_FromStringAndSize(i8* %20, i64 %21), !dbg !2722
  %22 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2723, !tbaa !885
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*, !dbg !2724
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 1, !dbg !2725
  %24 = load i64, i64* %length, align 8, !dbg !2725, !tbaa !1239
  %call20 = call %struct._object* @codec_tuple(%struct._object* %call19, i64 %24), !dbg !2726
  store %struct._object* %call20, %struct._object** %retval, !dbg !2727
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2727

cleanup:                                          ; preds = %if.end.18, %if.then.16, %if.then.13, %if.then.9
  %25 = bitcast i32** %u to i8*, !dbg !2728
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2728
  br label %cleanup.27

if.else:                                          ; preds = %if.end.4
  %26 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2729, !tbaa !885
  %call21 = call i32 @PyObject_AsReadBuffer(%struct._object* %26, i8** %data, i64* %size), !dbg !2732
  %tobool22 = icmp ne i32 %call21, 0, !dbg !2732
  br i1 %tobool22, label %if.then.23, label %if.end.24, !dbg !2733

if.then.23:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !2734
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !2734

if.end.24:                                        ; preds = %if.else
  %27 = load i8*, i8** %data, align 8, !dbg !2735, !tbaa !885
  %28 = load i64, i64* %size, align 8, !dbg !2736, !tbaa !991
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %27, i64 %28), !dbg !2737
  %29 = load i64, i64* %size, align 8, !dbg !2738, !tbaa !991
  %call26 = call %struct._object* @codec_tuple(%struct._object* %call25, i64 %29), !dbg !2739
  store %struct._object* %call26, %struct._object** %retval, !dbg !2740
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.27, !dbg !2740

cleanup.27:                                       ; preds = %if.end.24, %if.then.23, %cleanup, %if.then.3, %if.then
  %30 = bitcast i64* %size to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %30) #3, !dbg !2741
  %31 = bitcast i64* %len to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %31) #3, !dbg !2741
  %32 = bitcast i8** %data to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %32) #3, !dbg !2741
  %33 = bitcast i8** %errors to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %33) #3, !dbg !2741
  %34 = bitcast %struct._object** %obj to i8*, !dbg !2741
  call void @llvm.lifetime.end(i64 8, i8* %34) #3, !dbg !2741
  %35 = load %struct._object*, %struct._object** %retval, !dbg !2741
  ret %struct._object* %35, !dbg !2741
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !703, metadata !889), !dbg !2742
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !704, metadata !889), !dbg !2743
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2744
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2744
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !705, metadata !889), !dbg !2745
  %1 = bitcast i8** %errors to i8*, !dbg !2746
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2746
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !706, metadata !889), !dbg !2747
  store i8* null, i8** %errors, align 8, !dbg !2747, !tbaa !885
  %2 = bitcast i8** %data to i8*, !dbg !2748
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2748
  call void @llvm.dbg.declare(metadata i8** %data, metadata !707, metadata !889), !dbg !2749
  %3 = bitcast i64* %size to i8*, !dbg !2750
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !2750
  call void @llvm.dbg.declare(metadata i64* %size, metadata !708, metadata !889), !dbg !2751
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2752, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.72, i32 0, i32 0), %struct._object** %obj, i8** %errors), !dbg !2754
  %tobool = icmp ne i32 %call, 0, !dbg !2754
  br i1 %tobool, label %if.end, label %if.then, !dbg !2755

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2756
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2756

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2757, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !2759
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2759, !tbaa !1212
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !2760
  %7 = load i64, i64* %tp_flags, align 8, !dbg !2760, !tbaa !2680
  %and = and i64 %7, 268435456, !dbg !2761
  %cmp = icmp ne i64 %and, 0, !dbg !2762
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !2763

if.then.1:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2764, !tbaa !885
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*, !dbg !2767
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3, !dbg !2768
  %10 = bitcast %struct.anon* %state to i32*, !dbg !2769
  %bf.load = load i32, i32* %10, align 4, !dbg !2769
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2769
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2769
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2770
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2770

cond.true:                                        ; preds = %if.then.1
  br label %cond.end, !dbg !2771

cond.false:                                       ; preds = %if.then.1
  %11 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2773, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %11), !dbg !2775
  br label %cond.end, !dbg !2770

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2770
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2776
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !2779

if.then.5:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2780
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2780

if.end.6:                                         ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2781, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2782
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2783, !tbaa !898
  %inc = add i64 %13, 1, !dbg !2783
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2783, !tbaa !898
  %14 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2784, !tbaa !885
  %15 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2785, !tbaa !885
  %16 = bitcast %struct._object* %15 to %struct.PyASCIIObject*, !dbg !2786
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %16, i32 0, i32 1, !dbg !2787
  %17 = load i64, i64* %length, align 8, !dbg !2787, !tbaa !1239
  %call7 = call %struct._object* @codec_tuple(%struct._object* %14, i64 %17), !dbg !2788
  store %struct._object* %call7, %struct._object** %retval, !dbg !2789
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2789

if.else:                                          ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2790, !tbaa !885
  %call8 = call i32 @PyObject_AsReadBuffer(%struct._object* %18, i8** %data, i64* %size), !dbg !2793
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2793
  br i1 %tobool9, label %if.then.10, label %if.end.11, !dbg !2794

if.then.10:                                       ; preds = %if.else
  store %struct._object* null, %struct._object** %retval, !dbg !2795
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2795

if.end.11:                                        ; preds = %if.else
  %19 = load i8*, i8** %data, align 8, !dbg !2796, !tbaa !885
  %20 = load i64, i64* %size, align 8, !dbg !2797, !tbaa !991
  %21 = load i8*, i8** %errors, align 8, !dbg !2798, !tbaa !885
  %call12 = call %struct._object* @_PyUnicode_DecodeUnicodeInternal(i8* %19, i64 %20, i8* %21), !dbg !2799
  %22 = load i64, i64* %size, align 8, !dbg !2800, !tbaa !991
  %call13 = call %struct._object* @codec_tuple(%struct._object* %call12, i64 %22), !dbg !2801
  store %struct._object* %call13, %struct._object** %retval, !dbg !2802
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2802

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.end.6, %if.then.5, %if.then
  %23 = bitcast i64* %size to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !2803
  %24 = bitcast i8** %data to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !2803
  %25 = bitcast i8** %errors to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %25) #3, !dbg !2803
  %26 = bitcast %struct._object** %obj to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %26) #3, !dbg !2803
  %27 = load %struct._object*, %struct._object** %retval, !dbg !2803
  ret %struct._object* %27, !dbg !2803
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !711, metadata !889), !dbg !2804
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !712, metadata !889), !dbg !2805
  %0 = bitcast %struct._object** %str to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2806
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !713, metadata !889), !dbg !2807
  %1 = bitcast %struct._object** %v to i8*, !dbg !2806
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2806
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !714, metadata !889), !dbg !2808
  %2 = bitcast i8** %errors to i8*, !dbg !2809
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2809
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !715, metadata !889), !dbg !2810
  store i8* null, i8** %errors, align 8, !dbg !2810, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2811, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.73, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !2813
  %tobool = icmp ne i32 %call, 0, !dbg !2813
  br i1 %tobool, label %if.end, label %if.then, !dbg !2814

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2815
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2815

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2816, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !2817
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2818, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2819, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !2820
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2821

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2822, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2824
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !2825
  %8 = bitcast %struct.anon* %state to i32*, !dbg !2826
  %bf.load = load i32, i32* %8, align 4, !dbg !2826
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2826
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2826
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2827
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2827

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2828

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !2830, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !2832
  br label %cond.end, !dbg !2827

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2827
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2833
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2836

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2837

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !716, metadata !889), !dbg !2840
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !2841, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2840, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2842, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !2843
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2844

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2845

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2847
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2847
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !720, metadata !889), !dbg !2849
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2850, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2849, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2851, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2853
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2854, !tbaa !898
  %dec = add i64 %16, -1, !dbg !2854
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2854, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2855
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2856

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2857

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2859, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2861
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2861, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2862
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2862, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2863, !tbaa !885
  call void %19(%struct._object* %20), !dbg !2864
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2865
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2865
  br label %do.cond, !dbg !2867

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !2868

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !2870

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2872
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !2872
  br label %do.cond.13, !dbg !2875

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !2876

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !2878
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2878

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !2879, !tbaa !885
  %call16 = call %struct._object* @PyUnicode_AsRawUnicodeEscapeString(%struct._object* %23), !dbg !2880
  %24 = load %struct._object*, %struct._object** %str, align 8, !dbg !2881, !tbaa !885
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*, !dbg !2882
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 1, !dbg !2883
  %26 = load i64, i64* %length, align 8, !dbg !2883, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %26), !dbg !2884
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !2885, !tbaa !885
  br label %do.body.18, !dbg !2886

do.body.18:                                       ; preds = %if.end.15
  %27 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2887
  call void @llvm.lifetime.start(i64 8, i8* %27) #3, !dbg !2887
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !723, metadata !889), !dbg !2889
  %28 = load %struct._object*, %struct._object** %str, align 8, !dbg !2890, !tbaa !885
  store %struct._object* %28, %struct._object** %_py_decref_tmp19, align 8, !dbg !2889, !tbaa !885
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2891, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2893
  %30 = load i64, i64* %ob_refcnt20, align 8, !dbg !2894, !tbaa !898
  %dec21 = add i64 %30, -1, !dbg !2894
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !2894, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !2895
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !2896

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !2897

if.else.24:                                       ; preds = %do.body.18
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2899, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2901
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !2901, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2902
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !2902, !tbaa !1214
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !2903, !tbaa !885
  call void %33(%struct._object* %34), !dbg !2904
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %35 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !2905
  call void @llvm.lifetime.end(i64 8, i8* %35) #3, !dbg !2905
  br label %do.cond.28, !dbg !2907

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !2908

do.end.29:                                        ; preds = %do.cond.28
  %36 = load %struct._object*, %struct._object** %v, align 8, !dbg !2910, !tbaa !885
  store %struct._object* %36, %struct._object** %retval, !dbg !2911
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2911

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %37 = bitcast i8** %errors to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %37) #3, !dbg !2912
  %38 = bitcast %struct._object** %v to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !2912
  %39 = bitcast %struct._object** %str to i8*, !dbg !2912
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !2912
  %40 = load %struct._object*, %struct._object** %retval, !dbg !2912
  ret %struct._object* %40, !dbg !2912
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !727, metadata !889), !dbg !2913
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !728, metadata !889), !dbg !2914
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2915
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !2915
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !729, metadata !889), !dbg !2916
  %1 = bitcast i8** %errors to i8*, !dbg !2917
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2917
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !730, metadata !889), !dbg !2918
  store i8* null, i8** %errors, align 8, !dbg !2918, !tbaa !885
  %2 = bitcast %struct._object** %unicode to i8*, !dbg !2919
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2919
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !731, metadata !889), !dbg !2920
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2921, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.74, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors), !dbg !2923
  %tobool = icmp ne i32 %call, 0, !dbg !2923
  br i1 %tobool, label %if.end, label %if.then, !dbg !2924

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2925
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2925

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !2926
  %4 = load i8*, i8** %buf, align 8, !dbg !2926, !tbaa !1294
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2927
  %5 = load i64, i64* %len, align 8, !dbg !2927, !tbaa !1290
  %6 = load i8*, i8** %errors, align 8, !dbg !2928, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_DecodeRawUnicodeEscape(i8* %4, i64 %5, i8* %6), !dbg !2929
  store %struct._object* %call1, %struct._object** %unicode, align 8, !dbg !2930, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !2931
  %7 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !2932, !tbaa !885
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !2933
  %8 = load i64, i64* %len2, align 8, !dbg !2933, !tbaa !1290
  %call3 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8), !dbg !2934
  store %struct._object* %call3, %struct._object** %retval, !dbg !2935
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2935

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct._object** %unicode to i8*, !dbg !2936
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !2936
  %10 = bitcast i8** %errors to i8*, !dbg !2936
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !2936
  %11 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !2936
  call void @llvm.lifetime.end(i64 80, i8* %11) #3, !dbg !2936
  %12 = load %struct._object*, %struct._object** %retval, !dbg !2936
  ret %struct._object* %12, !dbg !2936
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !734, metadata !889), !dbg !2937
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !735, metadata !889), !dbg !2938
  %0 = bitcast %struct._object** %str to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !736, metadata !889), !dbg !2940
  %1 = bitcast %struct._object** %v to i8*, !dbg !2939
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !2939
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !737, metadata !889), !dbg !2941
  %2 = bitcast i8** %errors to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !2942
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !738, metadata !889), !dbg !2943
  store i8* null, i8** %errors, align 8, !dbg !2943, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2944, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !2946
  %tobool = icmp ne i32 %call, 0, !dbg !2946
  br i1 %tobool, label %if.end, label %if.then, !dbg !2947

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2948

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !2949, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !2950
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !2951, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !2952, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !2953
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !2954

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !2955, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !2957
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !2958
  %8 = bitcast %struct.anon* %state to i32*, !dbg !2959
  %bf.load = load i32, i32* %8, align 4, !dbg !2959
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2959
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2959
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !2960
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !2960

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !2961

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !2963, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !2965
  br label %cond.end, !dbg !2960

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !2960
  %cmp4 = icmp slt i32 %cond, 0, !dbg !2966
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !2969

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !2970

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2971
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !739, metadata !889), !dbg !2973
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !2974, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2973, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2975, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !2976
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !2977

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !2978

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !2980
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !743, metadata !889), !dbg !2982
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2983, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2982, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2984, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2986
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2987, !tbaa !898
  %dec = add i64 %16, -1, !dbg !2987
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2987, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !2988
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !2989

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !2990

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2992, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2994
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2994, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2995
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2995, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2996, !tbaa !885
  call void %19(%struct._object* %20), !dbg !2997
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2998
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !2998
  br label %do.cond, !dbg !3000

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !3001

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !3003

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3005
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !3005
  br label %do.cond.13, !dbg !3008

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !3009

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !3011
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3011

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !3012, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !3013, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_AsLatin1String(%struct._object* %23, i8* %24), !dbg !3014
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !3015, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !3016
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !3017
  %27 = load i64, i64* %length, align 8, !dbg !3017, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !3018
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !3019, !tbaa !885
  br label %do.body.18, !dbg !3020

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3021
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !3021
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !746, metadata !889), !dbg !3023
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !3024, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !3023, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3025, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !3027
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !3028, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !3028
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !3028, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !3029
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3030

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !3031

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3033, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !3035
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !3035, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !3036
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !3036, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3037, !tbaa !885
  call void %34(%struct._object* %35), !dbg !3038
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3039
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !3039
  br label %do.cond.28, !dbg !3041

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !3042

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !3044, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !3045
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3045

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !3046
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !3046
  %39 = bitcast %struct._object** %v to i8*, !dbg !3046
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !3046
  %40 = bitcast %struct._object** %str to i8*, !dbg !3046
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !3046
  %41 = load %struct._object*, %struct._object** %retval, !dbg !3046
  ret %struct._object* %41, !dbg !3046
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !750, metadata !889), !dbg !3047
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !751, metadata !889), !dbg !3048
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3049
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !3049
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !752, metadata !889), !dbg !3050
  %1 = bitcast %struct._object** %unicode to i8*, !dbg !3051
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3051
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !753, metadata !889), !dbg !3052
  %2 = bitcast i8** %errors to i8*, !dbg !3053
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3053
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !754, metadata !889), !dbg !3054
  store i8* null, i8** %errors, align 8, !dbg !3054, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3055, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.76, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors), !dbg !3057
  %tobool = icmp ne i32 %call, 0, !dbg !3057
  br i1 %tobool, label %if.end, label %if.then, !dbg !3058

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3059

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !3060
  %4 = load i8*, i8** %buf, align 8, !dbg !3060, !tbaa !1294
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3061
  %5 = load i64, i64* %len, align 8, !dbg !3061, !tbaa !1290
  %6 = load i8*, i8** %errors, align 8, !dbg !3062, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_DecodeLatin1(i8* %4, i64 %5, i8* %6), !dbg !3063
  store %struct._object* %call1, %struct._object** %unicode, align 8, !dbg !3064, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !3065
  %7 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !3066, !tbaa !885
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3067
  %8 = load i64, i64* %len2, align 8, !dbg !3067, !tbaa !1290
  %call3 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8), !dbg !3068
  store %struct._object* %call3, %struct._object** %retval, !dbg !3069
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3069

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %errors to i8*, !dbg !3070
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !3070
  %10 = bitcast %struct._object** %unicode to i8*, !dbg !3070
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !3070
  %11 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3070
  call void @llvm.lifetime.end(i64 80, i8* %11) #3, !dbg !3070
  %12 = load %struct._object*, %struct._object** %retval, !dbg !3070
  ret %struct._object* %12, !dbg !3070
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !757, metadata !889), !dbg !3071
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !758, metadata !889), !dbg !3072
  %0 = bitcast %struct._object** %str to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3073
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !759, metadata !889), !dbg !3074
  %1 = bitcast %struct._object** %v to i8*, !dbg !3073
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3073
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !760, metadata !889), !dbg !3075
  %2 = bitcast i8** %errors to i8*, !dbg !3076
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3076
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !761, metadata !889), !dbg !3077
  store i8* null, i8** %errors, align 8, !dbg !3077, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3078, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i32 0, i32 0), %struct._object** %str, i8** %errors), !dbg !3080
  %tobool = icmp ne i32 %call, 0, !dbg !3080
  br i1 %tobool, label %if.end, label %if.then, !dbg !3081

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3082
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3082

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %str, align 8, !dbg !3083, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_FromObject(%struct._object* %4), !dbg !3084
  store %struct._object* %call1, %struct._object** %str, align 8, !dbg !3085, !tbaa !885
  %5 = load %struct._object*, %struct._object** %str, align 8, !dbg !3086, !tbaa !885
  %cmp = icmp eq %struct._object* %5, null, !dbg !3087
  br i1 %cmp, label %if.then.5, label %lor.lhs.false, !dbg !3088

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !3089, !tbaa !885
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !3091
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 3, !dbg !3092
  %8 = bitcast %struct.anon* %state to i32*, !dbg !3093
  %bf.load = load i32, i32* %8, align 4, !dbg !3093
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3093
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3093
  %tobool2 = icmp ne i32 %bf.clear, 0, !dbg !3094
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !3094

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !3095

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load %struct._object*, %struct._object** %str, align 8, !dbg !3097, !tbaa !885
  %call3 = call i32 @_PyUnicode_Ready(%struct._object* %9), !dbg !3099
  br label %cond.end, !dbg !3094

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call3, %cond.false ], !dbg !3094
  %cmp4 = icmp slt i32 %cond, 0, !dbg !3100
  br i1 %cmp4, label %if.then.5, label %if.end.15, !dbg !3103

if.then.5:                                        ; preds = %cond.end, %if.end
  br label %do.body, !dbg !3104

do.body:                                          ; preds = %if.then.5
  %10 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3105
  call void @llvm.lifetime.start(i64 8, i8* %10) #3, !dbg !3105
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !762, metadata !889), !dbg !3107
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !3108, !tbaa !885
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3107, !tbaa !885
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3109, !tbaa !885
  %cmp6 = icmp ne %struct._object* %12, null, !dbg !3110
  br i1 %cmp6, label %if.then.7, label %if.end.12, !dbg !3111

if.then.7:                                        ; preds = %do.body
  br label %do.body.8, !dbg !3112

do.body.8:                                        ; preds = %if.then.7
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3114
  call void @llvm.lifetime.start(i64 8, i8* %13) #3, !dbg !3114
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !766, metadata !889), !dbg !3116
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3117, !tbaa !885
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !3116, !tbaa !885
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3118, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !3120
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !3121, !tbaa !898
  %dec = add i64 %16, -1, !dbg !3121
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3121, !tbaa !898
  %cmp9 = icmp ne i64 %dec, 0, !dbg !3122
  br i1 %cmp9, label %if.then.10, label %if.else, !dbg !3123

if.then.10:                                       ; preds = %do.body.8
  br label %if.end.11, !dbg !3124

if.else:                                          ; preds = %do.body.8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3126, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !3128
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3128, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !3129
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3129, !tbaa !1214
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3130, !tbaa !885
  call void %19(%struct._object* %20), !dbg !3131
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3132
  call void @llvm.lifetime.end(i64 8, i8* %21) #3, !dbg !3132
  br label %do.cond, !dbg !3134

do.cond:                                          ; preds = %if.end.11
  br label %do.end, !dbg !3135

do.end:                                           ; preds = %do.cond
  br label %if.end.12, !dbg !3137

if.end.12:                                        ; preds = %do.end, %do.body
  %22 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3139
  call void @llvm.lifetime.end(i64 8, i8* %22) #3, !dbg !3139
  br label %do.cond.13, !dbg !3142

do.cond.13:                                       ; preds = %if.end.12
  br label %do.end.14, !dbg !3143

do.end.14:                                        ; preds = %do.cond.13
  store %struct._object* null, %struct._object** %retval, !dbg !3145
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3145

if.end.15:                                        ; preds = %cond.end
  %23 = load %struct._object*, %struct._object** %str, align 8, !dbg !3146, !tbaa !885
  %24 = load i8*, i8** %errors, align 8, !dbg !3147, !tbaa !885
  %call16 = call %struct._object* @_PyUnicode_AsASCIIString(%struct._object* %23, i8* %24), !dbg !3148
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !3149, !tbaa !885
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !3150
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !3151
  %27 = load i64, i64* %length, align 8, !dbg !3151, !tbaa !1239
  %call17 = call %struct._object* @codec_tuple(%struct._object* %call16, i64 %27), !dbg !3152
  store %struct._object* %call17, %struct._object** %v, align 8, !dbg !3153, !tbaa !885
  br label %do.body.18, !dbg !3154

do.body.18:                                       ; preds = %if.end.15
  %28 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3155
  call void @llvm.lifetime.start(i64 8, i8* %28) #3, !dbg !3155
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp19, metadata !769, metadata !889), !dbg !3157
  %29 = load %struct._object*, %struct._object** %str, align 8, !dbg !3158, !tbaa !885
  store %struct._object* %29, %struct._object** %_py_decref_tmp19, align 8, !dbg !3157, !tbaa !885
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3159, !tbaa !885
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0, !dbg !3161
  %31 = load i64, i64* %ob_refcnt20, align 8, !dbg !3162, !tbaa !898
  %dec21 = add i64 %31, -1, !dbg !3162
  store i64 %dec21, i64* %ob_refcnt20, align 8, !dbg !3162, !tbaa !898
  %cmp22 = icmp ne i64 %dec21, 0, !dbg !3163
  br i1 %cmp22, label %if.then.23, label %if.else.24, !dbg !3164

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27, !dbg !3165

if.else.24:                                       ; preds = %do.body.18
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3167, !tbaa !885
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1, !dbg !3169
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !3169, !tbaa !1212
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4, !dbg !3170
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8, !dbg !3170, !tbaa !1214
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8, !dbg !3171, !tbaa !885
  call void %34(%struct._object* %35), !dbg !3172
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  %36 = bitcast %struct._object** %_py_decref_tmp19 to i8*, !dbg !3173
  call void @llvm.lifetime.end(i64 8, i8* %36) #3, !dbg !3173
  br label %do.cond.28, !dbg !3175

do.cond.28:                                       ; preds = %if.end.27
  br label %do.end.29, !dbg !3176

do.end.29:                                        ; preds = %do.cond.28
  %37 = load %struct._object*, %struct._object** %v, align 8, !dbg !3178, !tbaa !885
  store %struct._object* %37, %struct._object** %retval, !dbg !3179
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3179

cleanup:                                          ; preds = %do.end.29, %do.end.14, %if.then
  %38 = bitcast i8** %errors to i8*, !dbg !3180
  call void @llvm.lifetime.end(i64 8, i8* %38) #3, !dbg !3180
  %39 = bitcast %struct._object** %v to i8*, !dbg !3180
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !3180
  %40 = bitcast %struct._object** %str to i8*, !dbg !3180
  call void @llvm.lifetime.end(i64 8, i8* %40) #3, !dbg !3180
  %41 = load %struct._object*, %struct._object** %retval, !dbg !3180
  ret %struct._object* %41, !dbg !3180
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !773, metadata !889), !dbg !3181
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !774, metadata !889), !dbg !3182
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3183
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !3183
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !775, metadata !889), !dbg !3184
  %1 = bitcast %struct._object** %unicode to i8*, !dbg !3185
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3185
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !776, metadata !889), !dbg !3186
  %2 = bitcast i8** %errors to i8*, !dbg !3187
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3187
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !777, metadata !889), !dbg !3188
  store i8* null, i8** %errors, align 8, !dbg !3188, !tbaa !885
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3189, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.78, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors), !dbg !3191
  %tobool = icmp ne i32 %call, 0, !dbg !3191
  br i1 %tobool, label %if.end, label %if.then, !dbg !3192

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3193
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3193

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !3194
  %4 = load i8*, i8** %buf, align 8, !dbg !3194, !tbaa !1294
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3195
  %5 = load i64, i64* %len, align 8, !dbg !3195, !tbaa !1290
  %6 = load i8*, i8** %errors, align 8, !dbg !3196, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_DecodeASCII(i8* %4, i64 %5, i8* %6), !dbg !3197
  store %struct._object* %call1, %struct._object** %unicode, align 8, !dbg !3198, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !3199
  %7 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !3200, !tbaa !885
  %len2 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3201
  %8 = load i64, i64* %len2, align 8, !dbg !3201, !tbaa !1290
  %call3 = call %struct._object* @codec_tuple(%struct._object* %7, i64 %8), !dbg !3202
  store %struct._object* %call3, %struct._object** %retval, !dbg !3203
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3203

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i8** %errors to i8*, !dbg !3204
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !3204
  %10 = bitcast %struct._object** %unicode to i8*, !dbg !3204
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !3204
  %11 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3204
  call void @llvm.lifetime.end(i64 80, i8* %11) #3, !dbg !3204
  %12 = load %struct._object*, %struct._object** %retval, !dbg !3204
  ret %struct._object* %12, !dbg !3204
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
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !780, metadata !889), !dbg !3205
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !781, metadata !889), !dbg !3206
  %0 = bitcast %struct._object** %str to i8*, !dbg !3207
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3207
  call void @llvm.dbg.declare(metadata %struct._object** %str, metadata !782, metadata !889), !dbg !3208
  %1 = bitcast %struct._object** %v to i8*, !dbg !3207
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3207
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !783, metadata !889), !dbg !3209
  %2 = bitcast i8** %errors to i8*, !dbg !3210
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3210
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !784, metadata !889), !dbg !3211
  store i8* null, i8** %errors, align 8, !dbg !3211, !tbaa !885
  %3 = bitcast %struct._object** %mapping to i8*, !dbg !3212
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3212
  call void @llvm.dbg.declare(metadata %struct._object** %mapping, metadata !785, metadata !889), !dbg !3213
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !3213, !tbaa !885
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3214, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i32 0, i32 0), %struct._object** %str, i8** %errors, %struct._object** %mapping), !dbg !3216
  %tobool = icmp ne i32 %call, 0, !dbg !3216
  br i1 %tobool, label %if.end, label %if.then, !dbg !3217

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3218
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3218

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !3219, !tbaa !885
  %cmp = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !3221
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !3222

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !3223, !tbaa !885
  br label %if.end.2, !dbg !3224

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8, !dbg !3225, !tbaa !885
  %call3 = call %struct._object* @PyUnicode_FromObject(%struct._object* %6), !dbg !3226
  store %struct._object* %call3, %struct._object** %str, align 8, !dbg !3227, !tbaa !885
  %7 = load %struct._object*, %struct._object** %str, align 8, !dbg !3228, !tbaa !885
  %cmp4 = icmp eq %struct._object* %7, null, !dbg !3229
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false, !dbg !3230

lor.lhs.false:                                    ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %str, align 8, !dbg !3231, !tbaa !885
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*, !dbg !3233
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3, !dbg !3234
  %10 = bitcast %struct.anon* %state to i32*, !dbg !3235
  %bf.load = load i32, i32* %10, align 4, !dbg !3235
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3235
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3235
  %tobool5 = icmp ne i32 %bf.clear, 0, !dbg !3236
  br i1 %tobool5, label %cond.true, label %cond.false, !dbg !3236

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end, !dbg !3237

cond.false:                                       ; preds = %lor.lhs.false
  %11 = load %struct._object*, %struct._object** %str, align 8, !dbg !3239, !tbaa !885
  %call6 = call i32 @_PyUnicode_Ready(%struct._object* %11), !dbg !3241
  br label %cond.end, !dbg !3236

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call6, %cond.false ], !dbg !3236
  %cmp7 = icmp slt i32 %cond, 0, !dbg !3242
  br i1 %cmp7, label %if.then.8, label %if.end.18, !dbg !3245

if.then.8:                                        ; preds = %cond.end, %if.end.2
  br label %do.body, !dbg !3246

do.body:                                          ; preds = %if.then.8
  %12 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3247
  call void @llvm.lifetime.start(i64 8, i8* %12) #3, !dbg !3247
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !786, metadata !889), !dbg !3249
  %13 = load %struct._object*, %struct._object** %str, align 8, !dbg !3250, !tbaa !885
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3249, !tbaa !885
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3251, !tbaa !885
  %cmp9 = icmp ne %struct._object* %14, null, !dbg !3252
  br i1 %cmp9, label %if.then.10, label %if.end.15, !dbg !3253

if.then.10:                                       ; preds = %do.body
  br label %do.body.11, !dbg !3254

do.body.11:                                       ; preds = %if.then.10
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3256
  call void @llvm.lifetime.start(i64 8, i8* %15) #3, !dbg !3256
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !790, metadata !889), !dbg !3258
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3259, !tbaa !885
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8, !dbg !3258, !tbaa !885
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3260, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0, !dbg !3262
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !3263, !tbaa !898
  %dec = add i64 %18, -1, !dbg !3263
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3263, !tbaa !898
  %cmp12 = icmp ne i64 %dec, 0, !dbg !3264
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !3265

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.14, !dbg !3266

if.else:                                          ; preds = %do.body.11
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3268, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1, !dbg !3270
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3270, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4, !dbg !3271
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3271, !tbaa !1214
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3272, !tbaa !885
  call void %21(%struct._object* %22), !dbg !3273
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  %23 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3274
  call void @llvm.lifetime.end(i64 8, i8* %23) #3, !dbg !3274
  br label %do.cond, !dbg !3276

do.cond:                                          ; preds = %if.end.14
  br label %do.end, !dbg !3277

do.end:                                           ; preds = %do.cond
  br label %if.end.15, !dbg !3279

if.end.15:                                        ; preds = %do.end, %do.body
  %24 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3281
  call void @llvm.lifetime.end(i64 8, i8* %24) #3, !dbg !3281
  br label %do.cond.16, !dbg !3284

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !3285

do.end.17:                                        ; preds = %do.cond.16
  store %struct._object* null, %struct._object** %retval, !dbg !3287
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3287

if.end.18:                                        ; preds = %cond.end
  %25 = load %struct._object*, %struct._object** %str, align 8, !dbg !3288, !tbaa !885
  %26 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !3289, !tbaa !885
  %27 = load i8*, i8** %errors, align 8, !dbg !3290, !tbaa !885
  %call19 = call %struct._object* @_PyUnicode_EncodeCharmap(%struct._object* %25, %struct._object* %26, i8* %27), !dbg !3291
  %28 = load %struct._object*, %struct._object** %str, align 8, !dbg !3292, !tbaa !885
  %29 = bitcast %struct._object* %28 to %struct.PyASCIIObject*, !dbg !3293
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 1, !dbg !3294
  %30 = load i64, i64* %length, align 8, !dbg !3294, !tbaa !1239
  %call20 = call %struct._object* @codec_tuple(%struct._object* %call19, i64 %30), !dbg !3295
  store %struct._object* %call20, %struct._object** %v, align 8, !dbg !3296, !tbaa !885
  br label %do.body.21, !dbg !3297

do.body.21:                                       ; preds = %if.end.18
  %31 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3298
  call void @llvm.lifetime.start(i64 8, i8* %31) #3, !dbg !3298
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !793, metadata !889), !dbg !3300
  %32 = load %struct._object*, %struct._object** %str, align 8, !dbg !3301, !tbaa !885
  store %struct._object* %32, %struct._object** %_py_decref_tmp22, align 8, !dbg !3300, !tbaa !885
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3302, !tbaa !885
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0, !dbg !3304
  %34 = load i64, i64* %ob_refcnt23, align 8, !dbg !3305, !tbaa !898
  %dec24 = add i64 %34, -1, !dbg !3305
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !3305, !tbaa !898
  %cmp25 = icmp ne i64 %dec24, 0, !dbg !3306
  br i1 %cmp25, label %if.then.26, label %if.else.27, !dbg !3307

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30, !dbg !3308

if.else.27:                                       ; preds = %do.body.21
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3310, !tbaa !885
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1, !dbg !3312
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !3312, !tbaa !1212
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4, !dbg !3313
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !3313, !tbaa !1214
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3314, !tbaa !885
  call void %37(%struct._object* %38), !dbg !3315
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  %39 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3316
  call void @llvm.lifetime.end(i64 8, i8* %39) #3, !dbg !3316
  br label %do.cond.31, !dbg !3318

do.cond.31:                                       ; preds = %if.end.30
  br label %do.end.32, !dbg !3319

do.end.32:                                        ; preds = %do.cond.31
  %40 = load %struct._object*, %struct._object** %v, align 8, !dbg !3321, !tbaa !885
  store %struct._object* %40, %struct._object** %retval, !dbg !3322
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3322

cleanup:                                          ; preds = %do.end.32, %do.end.17, %if.then
  %41 = bitcast %struct._object** %mapping to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %41) #3, !dbg !3323
  %42 = bitcast i8** %errors to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %42) #3, !dbg !3323
  %43 = bitcast %struct._object** %v to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %43) #3, !dbg !3323
  %44 = bitcast %struct._object** %str to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %44) #3, !dbg !3323
  %45 = load %struct._object*, %struct._object** %retval, !dbg !3323
  ret %struct._object* %45, !dbg !3323
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !797, metadata !889), !dbg !3324
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !798, metadata !889), !dbg !3325
  %0 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3326
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !3326
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pbuf, metadata !799, metadata !889), !dbg !3327
  %1 = bitcast %struct._object** %unicode to i8*, !dbg !3328
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3328
  call void @llvm.dbg.declare(metadata %struct._object** %unicode, metadata !800, metadata !889), !dbg !3329
  %2 = bitcast i8** %errors to i8*, !dbg !3330
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3330
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !801, metadata !889), !dbg !3331
  store i8* null, i8** %errors, align 8, !dbg !3331, !tbaa !885
  %3 = bitcast %struct._object** %mapping to i8*, !dbg !3332
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3332
  call void @llvm.dbg.declare(metadata %struct._object** %mapping, metadata !802, metadata !889), !dbg !3333
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !3333, !tbaa !885
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3334, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.80, i32 0, i32 0), %struct.bufferinfo* %pbuf, i8** %errors, %struct._object** %mapping), !dbg !3336
  %tobool = icmp ne i32 %call, 0, !dbg !3336
  br i1 %tobool, label %if.end, label %if.then, !dbg !3337

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3338
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3338

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !3339, !tbaa !885
  %cmp = icmp eq %struct._object* %5, @_Py_NoneStruct, !dbg !3341
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !3342

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %mapping, align 8, !dbg !3343, !tbaa !885
  br label %if.end.2, !dbg !3344

if.end.2:                                         ; preds = %if.then.1, %if.end
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 0, !dbg !3345
  %6 = load i8*, i8** %buf, align 8, !dbg !3345, !tbaa !1294
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3346
  %7 = load i64, i64* %len, align 8, !dbg !3346, !tbaa !1290
  %8 = load %struct._object*, %struct._object** %mapping, align 8, !dbg !3347, !tbaa !885
  %9 = load i8*, i8** %errors, align 8, !dbg !3348, !tbaa !885
  %call3 = call %struct._object* @PyUnicode_DecodeCharmap(i8* %6, i64 %7, %struct._object* %8, i8* %9), !dbg !3349
  store %struct._object* %call3, %struct._object** %unicode, align 8, !dbg !3350, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pbuf), !dbg !3351
  %10 = load %struct._object*, %struct._object** %unicode, align 8, !dbg !3352, !tbaa !885
  %len4 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pbuf, i32 0, i32 2, !dbg !3353
  %11 = load i64, i64* %len4, align 8, !dbg !3353, !tbaa !1290
  %call5 = call %struct._object* @codec_tuple(%struct._object* %10, i64 %11), !dbg !3354
  store %struct._object* %call5, %struct._object** %retval, !dbg !3355
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3355

cleanup:                                          ; preds = %if.end.2, %if.then
  %12 = bitcast %struct._object** %mapping to i8*, !dbg !3356
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !3356
  %13 = bitcast i8** %errors to i8*, !dbg !3356
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !3356
  %14 = bitcast %struct._object** %unicode to i8*, !dbg !3356
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !3356
  %15 = bitcast %struct.bufferinfo* %pbuf to i8*, !dbg !3356
  call void @llvm.lifetime.end(i64 80, i8* %15) #3, !dbg !3356
  %16 = load %struct._object*, %struct._object** %retval, !dbg !3356
  ret %struct._object* %16, !dbg !3356
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @charmap_build(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %map = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !805, metadata !889), !dbg !3357
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !806, metadata !889), !dbg !3358
  %0 = bitcast %struct._object** %map to i8*, !dbg !3359
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3359
  call void @llvm.dbg.declare(metadata %struct._object** %map, metadata !807, metadata !889), !dbg !3360
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3361, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i32 0, i32 0), %struct._object** %map), !dbg !3363
  %tobool = icmp ne i32 %call, 0, !dbg !3363
  br i1 %tobool, label %if.end, label %if.then, !dbg !3364

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3365
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3365

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %map, align 8, !dbg !3366, !tbaa !885
  %call1 = call %struct._object* @PyUnicode_BuildEncodingMap(%struct._object* %2), !dbg !3367
  store %struct._object* %call1, %struct._object** %retval, !dbg !3368
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3368

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast %struct._object** %map to i8*, !dbg !3369
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !3369
  %4 = load %struct._object*, %struct._object** %retval, !dbg !3369
  ret %struct._object* %4, !dbg !3369
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !810, metadata !889), !dbg !3370
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !811, metadata !889), !dbg !3371
  %0 = bitcast %struct.bufferinfo* %pdata to i8*, !dbg !3372
  call void @llvm.lifetime.start(i64 80, i8* %0) #3, !dbg !3372
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %pdata, metadata !812, metadata !889), !dbg !3373
  %1 = bitcast i8** %data to i8*, !dbg !3374
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3374
  call void @llvm.dbg.declare(metadata i8** %data, metadata !813, metadata !889), !dbg !3375
  %2 = bitcast i64* %size to i8*, !dbg !3376
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !3376
  call void @llvm.dbg.declare(metadata i64* %size, metadata !814, metadata !889), !dbg !3377
  %3 = bitcast i8** %errors to i8*, !dbg !3378
  call void @llvm.lifetime.start(i64 8, i8* %3) #3, !dbg !3378
  call void @llvm.dbg.declare(metadata i8** %errors, metadata !815, metadata !889), !dbg !3379
  store i8* null, i8** %errors, align 8, !dbg !3379, !tbaa !885
  %4 = bitcast %struct._object** %result to i8*, !dbg !3380
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3380
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !816, metadata !889), !dbg !3381
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3382, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.82, i32 0, i32 0), %struct.bufferinfo* %pdata, i8** %errors), !dbg !3384
  %tobool = icmp ne i32 %call, 0, !dbg !3384
  br i1 %tobool, label %if.end, label %if.then, !dbg !3385

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3386
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3386

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 0, !dbg !3387
  %6 = load i8*, i8** %buf, align 8, !dbg !3387, !tbaa !1294
  store i8* %6, i8** %data, align 8, !dbg !3388, !tbaa !885
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 2, !dbg !3389
  %7 = load i64, i64* %len, align 8, !dbg !3389, !tbaa !1290
  store i64 %7, i64* %size, align 8, !dbg !3390, !tbaa !991
  %8 = load i8*, i8** %data, align 8, !dbg !3391, !tbaa !885
  %9 = load i64, i64* %size, align 8, !dbg !3392, !tbaa !991
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* %8, i64 %9), !dbg !3393
  store %struct._object* %call1, %struct._object** %result, align 8, !dbg !3394, !tbaa !885
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata), !dbg !3395
  %10 = load %struct._object*, %struct._object** %result, align 8, !dbg !3396, !tbaa !885
  %11 = load i64, i64* %size, align 8, !dbg !3397, !tbaa !991
  %call2 = call %struct._object* @codec_tuple(%struct._object* %10, i64 %11), !dbg !3398
  store %struct._object* %call2, %struct._object** %retval, !dbg !3399
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3399

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct._object** %result to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !3400
  %13 = bitcast i8** %errors to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 8, i8* %13) #3, !dbg !3400
  %14 = bitcast i64* %size to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !3400
  %15 = bitcast i8** %data to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 8, i8* %15) #3, !dbg !3400
  %16 = bitcast %struct.bufferinfo* %pdata to i8*, !dbg !3400
  call void @llvm.lifetime.end(i64 80, i8* %16) #3, !dbg !3400
  %17 = load %struct._object*, %struct._object** %retval, !dbg !3400
  ret %struct._object* %17, !dbg !3400
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @register_error(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %handler = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !819, metadata !889), !dbg !3401
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !820, metadata !889), !dbg !3402
  %0 = bitcast i8** %name to i8*, !dbg !3403
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3403
  call void @llvm.dbg.declare(metadata i8** %name, metadata !821, metadata !889), !dbg !3404
  %1 = bitcast %struct._object** %handler to i8*, !dbg !3405
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !3405
  call void @llvm.dbg.declare(metadata %struct._object** %handler, metadata !822, metadata !889), !dbg !3406
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3407, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8** %name, %struct._object** %handler), !dbg !3409
  %tobool = icmp ne i32 %call, 0, !dbg !3409
  br i1 %tobool, label %if.end, label %if.then, !dbg !3410

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3411
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3411

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name, align 8, !dbg !3412, !tbaa !885
  %4 = load %struct._object*, %struct._object** %handler, align 8, !dbg !3414, !tbaa !885
  %call1 = call i32 @PyCodec_RegisterError(i8* %3, %struct._object* %4), !dbg !3415
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3415
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3416

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3417
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3417

if.end.4:                                         ; preds = %if.end
  %5 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3418, !tbaa !898
  %inc = add i64 %5, 1, !dbg !3418
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3418, !tbaa !898
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3419
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3419

cleanup:                                          ; preds = %if.end.4, %if.then.3, %if.then
  %6 = bitcast %struct._object** %handler to i8*, !dbg !3420
  call void @llvm.lifetime.end(i64 8, i8* %6) #3, !dbg !3420
  %7 = bitcast i8** %name to i8*, !dbg !3420
  call void @llvm.lifetime.end(i64 8, i8* %7) #3, !dbg !3420
  %8 = load %struct._object*, %struct._object** %retval, !dbg !3420
  ret %struct._object* %8, !dbg !3420
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lookup_error(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !825, metadata !889), !dbg !3421
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !826, metadata !889), !dbg !3422
  %0 = bitcast i8** %name to i8*, !dbg !3423
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3423
  call void @llvm.dbg.declare(metadata i8** %name, metadata !827, metadata !889), !dbg !3424
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3425, !tbaa !885
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.84, i32 0, i32 0), i8** %name), !dbg !3427
  %tobool = icmp ne i32 %call, 0, !dbg !3427
  br i1 %tobool, label %if.end, label %if.then, !dbg !3428

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3429
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3429

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name, align 8, !dbg !3430, !tbaa !885
  %call1 = call %struct._object* @PyCodec_LookupError(i8* %2), !dbg !3431
  store %struct._object* %call1, %struct._object** %retval, !dbg !3432
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3432

cleanup:                                          ; preds = %if.end, %if.then
  %3 = bitcast i8** %name to i8*, !dbg !3433
  call void @llvm.lifetime.end(i64 8, i8* %3) #3, !dbg !3433
  %4 = load %struct._object*, %struct._object** %retval, !dbg !3433
  ret %struct._object* %4, !dbg !3433
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyCodec_Register(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyCodec_Lookup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %unicode, %struct._object** %unicode.addr, align 8, !tbaa !885
  call void @llvm.dbg.declare(metadata %struct._object** %unicode.addr, metadata !418, metadata !889), !dbg !3434
  store i64 %len, i64* %len.addr, align 8, !tbaa !991
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !419, metadata !889), !dbg !3435
  %0 = bitcast %struct._object** %v to i8*, !dbg !3436
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !3436
  call void @llvm.dbg.declare(metadata %struct._object** %v, metadata !420, metadata !889), !dbg !3437
  %1 = load %struct._object*, %struct._object** %unicode.addr, align 8, !dbg !3438, !tbaa !885
  %cmp = icmp eq %struct._object* %1, null, !dbg !3440
  br i1 %cmp, label %if.then, label %if.end, !dbg !3441

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3442
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3442

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %unicode.addr, align 8, !dbg !3443, !tbaa !885
  %3 = load i64, i64* %len.addr, align 8, !dbg !3444, !tbaa !991
  %call = call %struct._object* (i8*, ...) @_Py_BuildValue_SizeT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), %struct._object* %2, i64 %3), !dbg !3445
  store %struct._object* %call, %struct._object** %v, align 8, !dbg !3446, !tbaa !885
  br label %do.body, !dbg !3447

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3448
  call void @llvm.lifetime.start(i64 8, i8* %4) #3, !dbg !3448
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !421, metadata !889), !dbg !3450
  %5 = load %struct._object*, %struct._object** %unicode.addr, align 8, !dbg !3451, !tbaa !885
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !3450, !tbaa !885
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3452, !tbaa !885
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !3454
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3455, !tbaa !898
  %dec = add i64 %7, -1, !dbg !3455
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3455, !tbaa !898
  %cmp1 = icmp ne i64 %dec, 0, !dbg !3456
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !3457

if.then.2:                                        ; preds = %do.body
  br label %if.end.3, !dbg !3458

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3460, !tbaa !885
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !3462
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3462, !tbaa !1212
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !3463
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3463, !tbaa !1214
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3464, !tbaa !885
  call void %10(%struct._object* %11), !dbg !3465
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3466
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !3466
  br label %do.cond, !dbg !3468

do.cond:                                          ; preds = %if.end.3
  br label %do.end, !dbg !3469

do.end:                                           ; preds = %do.cond
  %13 = load %struct._object*, %struct._object** %v, align 8, !dbg !3471, !tbaa !885
  store %struct._object* %13, %struct._object** %retval, !dbg !3472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3472

cleanup:                                          ; preds = %do.end, %if.then
  %14 = bitcast %struct._object** %v to i8*, !dbg !3473
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !3473
  %15 = load %struct._object*, %struct._object** %retval, !dbg !3473
  ret %struct._object* %15, !dbg !3473
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!880, !881}
!llvm.ident = !{!882}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !374, globals: !828)
!1 = !DIFile(filename: "_codecsmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !89, !343, !10, !94, !344, !352, !28, !371}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !6, line: 109, baseType: !7)
!6 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !6, line: 105, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !7, file: !6, line: 107, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!47 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!281 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!294 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!346 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 31, size: 320, align: 64, elements: !348)
!348 = !{!349, !350, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !347, file: !346, line: 32, baseType: !22, size: 192, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !347, file: !346, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !347, file: !346, line: 34, baseType: !80, size: 8, align: 8, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !354, line: 351, baseType: !355)
!354 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
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
!374 = !{!375, !379, !383, !388, !395, !402, !416, !423, !430, !446, !455, !471, !480, !497, !513, !529, !539, !549, !559, !572, !589, !605, !621, !631, !641, !651, !664, !680, !687, !701, !709, !725, !732, !748, !755, !771, !778, !795, !803, !808, !817, !823}
!375 = !DISubprogram(name: "PyInit__codecs", scope: !376, file: !376, line: 1187, type: !377, isLocal: false, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__codecs, variables: !2)
!376 = !DIFile(filename: "./Modules/_codecsmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!377 = !DISubroutineType(types: !378)
!378 = !{!4}
!379 = !DISubprogram(name: "codec_register", scope: !376, file: !376, line: 56, type: !126, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_register, variables: !380)
!380 = !{!381, !382}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !379, file: !376, line: 56, type: !4)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "search_function", arg: 2, scope: !379, file: !376, line: 56, type: !4)
!383 = !DISubprogram(name: "codec_lookup", scope: !376, file: !376, line: 71, type: !126, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_lookup, variables: !384)
!384 = !{!385, !386, !387}
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !383, file: !376, line: 71, type: !4)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !383, file: !376, line: 71, type: !4)
!387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !383, file: !376, line: 73, type: !51)
!388 = !DISubprogram(name: "codec_encode", scope: !376, file: !376, line: 92, type: !126, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_encode, variables: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !388, file: !376, line: 92, type: !4)
!391 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !388, file: !376, line: 92, type: !4)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !388, file: !376, line: 94, type: !28)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !388, file: !376, line: 95, type: !28)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !388, file: !376, line: 96, type: !4)
!395 = !DISubprogram(name: "codec_decode", scope: !376, file: !376, line: 119, type: !126, isLocal: true, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @codec_decode, variables: !396)
!396 = !{!397, !398, !399, !400, !401}
!397 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !395, file: !376, line: 119, type: !4)
!398 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !395, file: !376, line: 119, type: !4)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "encoding", scope: !395, file: !376, line: 121, type: !28)
!400 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !395, file: !376, line: 122, type: !28)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !395, file: !376, line: 123, type: !4)
!402 = !DISubprogram(name: "escape_encode", scope: !376, file: !376, line: 166, type: !126, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @escape_encode, variables: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !414, !415}
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !402, file: !376, line: 166, type: !4)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !402, file: !376, line: 167, type: !4)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !402, file: !376, line: 169, type: !4)
!407 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !402, file: !376, line: 170, type: !10)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newsize", scope: !402, file: !376, line: 171, type: !10)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !402, file: !376, line: 172, type: !28)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !402, file: !376, line: 173, type: !4)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !412, file: !376, line: 192, type: !10)
!412 = distinct !DILexicalBlock(scope: !413, file: !376, line: 191, column: 10)
!413 = distinct !DILexicalBlock(scope: !402, file: !376, line: 188, column: 9)
!414 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !412, file: !376, line: 193, type: !30)
!415 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !412, file: !376, line: 194, type: !51)
!416 = !DISubprogram(name: "codec_tuple", scope: !376, file: !376, line: 138, type: !184, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, i64)* @codec_tuple, variables: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "unicode", arg: 1, scope: !416, file: !376, line: 138, type: !4)
!419 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !416, file: !376, line: 139, type: !10)
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !416, file: !376, line: 141, type: !4)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !422, file: !376, line: 145, type: !4)
!422 = distinct !DILexicalBlock(scope: !416, file: !376, line: 145, column: 8)
!423 = !DISubprogram(name: "escape_decode", scope: !376, file: !376, line: 151, type: !126, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @escape_decode, variables: !424)
!424 = !{!425, !426, !427, !428, !429}
!425 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !423, file: !376, line: 151, type: !4)
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !423, file: !376, line: 152, type: !4)
!427 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !423, file: !376, line: 154, type: !28)
!428 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !423, file: !376, line: 155, type: !28)
!429 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !423, file: !376, line: 156, type: !10)
!430 = !DISubprogram(name: "utf_8_encode", scope: !376, file: !376, line: 734, type: !126, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_8_encode, variables: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !441, !444}
!432 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !430, file: !376, line: 734, type: !4)
!433 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !430, file: !376, line: 735, type: !4)
!434 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !430, file: !376, line: 737, type: !4)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !430, file: !376, line: 737, type: !4)
!436 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !430, file: !376, line: 738, type: !28)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !438, file: !376, line: 746, type: !4)
!438 = distinct !DILexicalBlock(scope: !439, file: !376, line: 746, column: 12)
!439 = distinct !DILexicalBlock(scope: !440, file: !376, line: 745, column: 132)
!440 = distinct !DILexicalBlock(scope: !430, file: !376, line: 745, column: 9)
!441 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !442, file: !376, line: 746, type: !4)
!442 = distinct !DILexicalBlock(scope: !443, file: !376, line: 746, column: 99)
!443 = distinct !DILexicalBlock(scope: !438, file: !376, line: 746, column: 65)
!444 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !445, file: !376, line: 751, type: !4)
!445 = distinct !DILexicalBlock(scope: !430, file: !376, line: 751, column: 8)
!446 = !DISubprogram(name: "utf_8_decode", scope: !376, file: !376, line: 280, type: !126, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_8_decode, variables: !447)
!447 = !{!448, !449, !450, !451, !452, !453, !454}
!448 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !446, file: !376, line: 280, type: !4)
!449 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !446, file: !376, line: 281, type: !4)
!450 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !446, file: !376, line: 283, type: !236)
!451 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !446, file: !376, line: 284, type: !28)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !446, file: !376, line: 285, type: !43)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !446, file: !376, line: 286, type: !10)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !446, file: !376, line: 287, type: !4)
!455 = !DISubprogram(name: "utf_7_encode", scope: !376, file: !376, line: 712, type: !126, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_7_encode, variables: !456)
!456 = !{!457, !458, !459, !460, !461, !462, !466, !469}
!457 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !455, file: !376, line: 712, type: !4)
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !455, file: !376, line: 713, type: !4)
!459 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !455, file: !376, line: 715, type: !4)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !455, file: !376, line: 715, type: !4)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !455, file: !376, line: 716, type: !28)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !463, file: !376, line: 724, type: !4)
!463 = distinct !DILexicalBlock(scope: !464, file: !376, line: 724, column: 12)
!464 = distinct !DILexicalBlock(scope: !465, file: !376, line: 723, column: 132)
!465 = distinct !DILexicalBlock(scope: !455, file: !376, line: 723, column: 9)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !467, file: !376, line: 724, type: !4)
!467 = distinct !DILexicalBlock(scope: !468, file: !376, line: 724, column: 99)
!468 = distinct !DILexicalBlock(scope: !463, file: !376, line: 724, column: 65)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !470, file: !376, line: 729, type: !4)
!470 = distinct !DILexicalBlock(scope: !455, file: !376, line: 729, column: 8)
!471 = !DISubprogram(name: "utf_7_decode", scope: !376, file: !376, line: 257, type: !126, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_7_decode, variables: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479}
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !471, file: !376, line: 257, type: !4)
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !471, file: !376, line: 258, type: !4)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !471, file: !376, line: 260, type: !236)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !471, file: !376, line: 261, type: !28)
!477 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !471, file: !376, line: 262, type: !43)
!478 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !471, file: !376, line: 263, type: !10)
!479 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !471, file: !376, line: 264, type: !4)
!480 = !DISubprogram(name: "utf_16_encode", scope: !376, file: !376, line: 763, type: !126, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_encode, variables: !481)
!481 = !{!482, !483, !484, !485, !486, !487, !488, !492, !495}
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !480, file: !376, line: 763, type: !4)
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !480, file: !376, line: 764, type: !4)
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !480, file: !376, line: 766, type: !4)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !480, file: !376, line: 766, type: !4)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !480, file: !376, line: 767, type: !28)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !480, file: !376, line: 768, type: !43)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !489, file: !376, line: 776, type: !4)
!489 = distinct !DILexicalBlock(scope: !490, file: !376, line: 776, column: 12)
!490 = distinct !DILexicalBlock(scope: !491, file: !376, line: 775, column: 132)
!491 = distinct !DILexicalBlock(scope: !480, file: !376, line: 775, column: 9)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !493, file: !376, line: 776, type: !4)
!493 = distinct !DILexicalBlock(scope: !494, file: !376, line: 776, column: 99)
!494 = distinct !DILexicalBlock(scope: !489, file: !376, line: 776, column: 65)
!495 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !496, file: !376, line: 781, type: !4)
!496 = distinct !DILexicalBlock(scope: !480, file: !376, line: 781, column: 8)
!497 = !DISubprogram(name: "utf_16_le_encode", scope: !376, file: !376, line: 786, type: !126, isLocal: true, isDefinition: true, scopeLine: 788, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_encode, variables: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !508, !511}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !497, file: !376, line: 786, type: !4)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !497, file: !376, line: 787, type: !4)
!501 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !497, file: !376, line: 789, type: !4)
!502 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !497, file: !376, line: 789, type: !4)
!503 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !497, file: !376, line: 790, type: !28)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !505, file: !376, line: 798, type: !4)
!505 = distinct !DILexicalBlock(scope: !506, file: !376, line: 798, column: 12)
!506 = distinct !DILexicalBlock(scope: !507, file: !376, line: 797, column: 132)
!507 = distinct !DILexicalBlock(scope: !497, file: !376, line: 797, column: 9)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !509, file: !376, line: 798, type: !4)
!509 = distinct !DILexicalBlock(scope: !510, file: !376, line: 798, column: 99)
!510 = distinct !DILexicalBlock(scope: !505, file: !376, line: 798, column: 65)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !512, file: !376, line: 803, type: !4)
!512 = distinct !DILexicalBlock(scope: !497, file: !376, line: 803, column: 8)
!513 = !DISubprogram(name: "utf_16_be_encode", scope: !376, file: !376, line: 808, type: !126, isLocal: true, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_encode, variables: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !524, !527}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !513, file: !376, line: 808, type: !4)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !513, file: !376, line: 809, type: !4)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !513, file: !376, line: 811, type: !4)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !513, file: !376, line: 811, type: !4)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !513, file: !376, line: 812, type: !28)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !521, file: !376, line: 820, type: !4)
!521 = distinct !DILexicalBlock(scope: !522, file: !376, line: 820, column: 12)
!522 = distinct !DILexicalBlock(scope: !523, file: !376, line: 819, column: 132)
!523 = distinct !DILexicalBlock(scope: !513, file: !376, line: 819, column: 9)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !525, file: !376, line: 820, type: !4)
!525 = distinct !DILexicalBlock(scope: !526, file: !376, line: 820, column: 99)
!526 = distinct !DILexicalBlock(scope: !521, file: !376, line: 820, column: 65)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !528, file: !376, line: 825, type: !4)
!528 = distinct !DILexicalBlock(scope: !513, file: !376, line: 825, column: 8)
!529 = !DISubprogram(name: "utf_16_decode", scope: !376, file: !376, line: 303, type: !126, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_decode, variables: !530)
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538}
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !529, file: !376, line: 303, type: !4)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !529, file: !376, line: 304, type: !4)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !529, file: !376, line: 306, type: !236)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !529, file: !376, line: 307, type: !28)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !529, file: !376, line: 308, type: !43)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !529, file: !376, line: 309, type: !43)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !529, file: !376, line: 310, type: !10)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !529, file: !376, line: 311, type: !4)
!539 = !DISubprogram(name: "utf_16_le_decode", scope: !376, file: !376, line: 326, type: !126, isLocal: true, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_le_decode, variables: !540)
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548}
!541 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !539, file: !376, line: 326, type: !4)
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !539, file: !376, line: 327, type: !4)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !539, file: !376, line: 329, type: !236)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !539, file: !376, line: 330, type: !28)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !539, file: !376, line: 331, type: !43)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !539, file: !376, line: 332, type: !43)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !539, file: !376, line: 333, type: !10)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !539, file: !376, line: 334, type: !4)
!549 = !DISubprogram(name: "utf_16_be_decode", scope: !376, file: !376, line: 350, type: !126, isLocal: true, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_be_decode, variables: !550)
!550 = !{!551, !552, !553, !554, !555, !556, !557, !558}
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !549, file: !376, line: 350, type: !4)
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !549, file: !376, line: 351, type: !4)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !549, file: !376, line: 353, type: !236)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !549, file: !376, line: 354, type: !28)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !549, file: !376, line: 355, type: !43)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !549, file: !376, line: 356, type: !43)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !549, file: !376, line: 357, type: !10)
!558 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !549, file: !376, line: 358, type: !4)
!559 = !DISubprogram(name: "utf_16_ex_decode", scope: !376, file: !376, line: 382, type: !126, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_16_ex_decode, variables: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568, !569, !570}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !559, file: !376, line: 382, type: !4)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !559, file: !376, line: 383, type: !4)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !559, file: !376, line: 385, type: !236)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !559, file: !376, line: 386, type: !28)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !559, file: !376, line: 387, type: !43)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !559, file: !376, line: 388, type: !4)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !559, file: !376, line: 388, type: !4)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !559, file: !376, line: 389, type: !43)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !559, file: !376, line: 390, type: !10)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !571, file: !376, line: 402, type: !4)
!571 = distinct !DILexicalBlock(scope: !559, file: !376, line: 402, column: 8)
!572 = !DISubprogram(name: "utf_32_encode", scope: !376, file: !376, line: 837, type: !126, isLocal: true, isDefinition: true, scopeLine: 839, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_encode, variables: !573)
!573 = !{!574, !575, !576, !577, !578, !579, !580, !584, !587}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !572, file: !376, line: 837, type: !4)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !572, file: !376, line: 838, type: !4)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !572, file: !376, line: 840, type: !4)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !572, file: !376, line: 840, type: !4)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !572, file: !376, line: 841, type: !28)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !572, file: !376, line: 842, type: !43)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !581, file: !376, line: 850, type: !4)
!581 = distinct !DILexicalBlock(scope: !582, file: !376, line: 850, column: 12)
!582 = distinct !DILexicalBlock(scope: !583, file: !376, line: 849, column: 132)
!583 = distinct !DILexicalBlock(scope: !572, file: !376, line: 849, column: 9)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !585, file: !376, line: 850, type: !4)
!585 = distinct !DILexicalBlock(scope: !586, file: !376, line: 850, column: 99)
!586 = distinct !DILexicalBlock(scope: !581, file: !376, line: 850, column: 65)
!587 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !588, file: !376, line: 855, type: !4)
!588 = distinct !DILexicalBlock(scope: !572, file: !376, line: 855, column: 8)
!589 = !DISubprogram(name: "utf_32_le_encode", scope: !376, file: !376, line: 860, type: !126, isLocal: true, isDefinition: true, scopeLine: 862, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_encode, variables: !590)
!590 = !{!591, !592, !593, !594, !595, !596, !600, !603}
!591 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !589, file: !376, line: 860, type: !4)
!592 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !589, file: !376, line: 861, type: !4)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !589, file: !376, line: 863, type: !4)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !589, file: !376, line: 863, type: !4)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !589, file: !376, line: 864, type: !28)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !597, file: !376, line: 872, type: !4)
!597 = distinct !DILexicalBlock(scope: !598, file: !376, line: 872, column: 12)
!598 = distinct !DILexicalBlock(scope: !599, file: !376, line: 871, column: 132)
!599 = distinct !DILexicalBlock(scope: !589, file: !376, line: 871, column: 9)
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !601, file: !376, line: 872, type: !4)
!601 = distinct !DILexicalBlock(scope: !602, file: !376, line: 872, column: 99)
!602 = distinct !DILexicalBlock(scope: !597, file: !376, line: 872, column: 65)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !604, file: !376, line: 877, type: !4)
!604 = distinct !DILexicalBlock(scope: !589, file: !376, line: 877, column: 8)
!605 = !DISubprogram(name: "utf_32_be_encode", scope: !376, file: !376, line: 882, type: !126, isLocal: true, isDefinition: true, scopeLine: 884, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_encode, variables: !606)
!606 = !{!607, !608, !609, !610, !611, !612, !616, !619}
!607 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !605, file: !376, line: 882, type: !4)
!608 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !605, file: !376, line: 883, type: !4)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !605, file: !376, line: 885, type: !4)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !605, file: !376, line: 885, type: !4)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !605, file: !376, line: 886, type: !28)
!612 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !613, file: !376, line: 894, type: !4)
!613 = distinct !DILexicalBlock(scope: !614, file: !376, line: 894, column: 12)
!614 = distinct !DILexicalBlock(scope: !615, file: !376, line: 893, column: 132)
!615 = distinct !DILexicalBlock(scope: !605, file: !376, line: 893, column: 9)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !617, file: !376, line: 894, type: !4)
!617 = distinct !DILexicalBlock(scope: !618, file: !376, line: 894, column: 99)
!618 = distinct !DILexicalBlock(scope: !613, file: !376, line: 894, column: 65)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !620, file: !376, line: 899, type: !4)
!620 = distinct !DILexicalBlock(scope: !605, file: !376, line: 899, column: 8)
!621 = !DISubprogram(name: "utf_32_decode", scope: !376, file: !376, line: 407, type: !126, isLocal: true, isDefinition: true, scopeLine: 409, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_decode, variables: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !621, file: !376, line: 407, type: !4)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !621, file: !376, line: 408, type: !4)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !621, file: !376, line: 410, type: !236)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !621, file: !376, line: 411, type: !28)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !621, file: !376, line: 412, type: !43)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !621, file: !376, line: 413, type: !43)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !621, file: !376, line: 414, type: !10)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !621, file: !376, line: 415, type: !4)
!631 = !DISubprogram(name: "utf_32_le_decode", scope: !376, file: !376, line: 430, type: !126, isLocal: true, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_le_decode, variables: !632)
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640}
!633 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !631, file: !376, line: 430, type: !4)
!634 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !631, file: !376, line: 431, type: !4)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !631, file: !376, line: 433, type: !236)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !631, file: !376, line: 434, type: !28)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !631, file: !376, line: 435, type: !43)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !631, file: !376, line: 436, type: !43)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !631, file: !376, line: 437, type: !10)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !631, file: !376, line: 438, type: !4)
!641 = !DISubprogram(name: "utf_32_be_decode", scope: !376, file: !376, line: 453, type: !126, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_be_decode, variables: !642)
!642 = !{!643, !644, !645, !646, !647, !648, !649, !650}
!643 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !641, file: !376, line: 453, type: !4)
!644 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !641, file: !376, line: 454, type: !4)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !641, file: !376, line: 456, type: !236)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !641, file: !376, line: 457, type: !28)
!647 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !641, file: !376, line: 458, type: !43)
!648 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !641, file: !376, line: 459, type: !43)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !641, file: !376, line: 460, type: !10)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !641, file: !376, line: 461, type: !4)
!651 = !DISubprogram(name: "utf_32_ex_decode", scope: !376, file: !376, line: 484, type: !126, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @utf_32_ex_decode, variables: !652)
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !651, file: !376, line: 484, type: !4)
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !651, file: !376, line: 485, type: !4)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !651, file: !376, line: 487, type: !236)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !651, file: !376, line: 488, type: !28)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "byteorder", scope: !651, file: !376, line: 489, type: !43)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !651, file: !376, line: 490, type: !4)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tuple", scope: !651, file: !376, line: 490, type: !4)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final", scope: !651, file: !376, line: 491, type: !43)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "consumed", scope: !651, file: !376, line: 492, type: !10)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !663, file: !376, line: 504, type: !4)
!663 = distinct !DILexicalBlock(scope: !651, file: !376, line: 504, column: 8)
!664 = !DISubprogram(name: "unicode_escape_encode", scope: !376, file: !376, line: 904, type: !126, isLocal: true, isDefinition: true, scopeLine: 906, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_encode, variables: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !675, !678}
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !664, file: !376, line: 904, type: !4)
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !664, file: !376, line: 905, type: !4)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !664, file: !376, line: 907, type: !4)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !664, file: !376, line: 907, type: !4)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !664, file: !376, line: 908, type: !28)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !672, file: !376, line: 916, type: !4)
!672 = distinct !DILexicalBlock(scope: !673, file: !376, line: 916, column: 12)
!673 = distinct !DILexicalBlock(scope: !674, file: !376, line: 915, column: 132)
!674 = distinct !DILexicalBlock(scope: !664, file: !376, line: 915, column: 9)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !376, line: 916, type: !4)
!676 = distinct !DILexicalBlock(scope: !677, file: !376, line: 916, column: 99)
!677 = distinct !DILexicalBlock(scope: !672, file: !376, line: 916, column: 65)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !679, file: !376, line: 921, type: !4)
!679 = distinct !DILexicalBlock(scope: !664, file: !376, line: 921, column: 8)
!680 = !DISubprogram(name: "unicode_escape_decode", scope: !376, file: !376, line: 509, type: !126, isLocal: true, isDefinition: true, scopeLine: 511, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_escape_decode, variables: !681)
!681 = !{!682, !683, !684, !685, !686}
!682 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !680, file: !376, line: 509, type: !4)
!683 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !680, file: !376, line: 510, type: !4)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !680, file: !376, line: 512, type: !236)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !680, file: !376, line: 513, type: !28)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !680, file: !376, line: 514, type: !4)
!687 = !DISubprogram(name: "unicode_internal_encode", scope: !376, file: !376, line: 672, type: !126, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_encode, variables: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696}
!689 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !687, file: !376, line: 672, type: !4)
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !687, file: !376, line: 673, type: !4)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !687, file: !376, line: 675, type: !4)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !687, file: !376, line: 676, type: !28)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !687, file: !376, line: 677, type: !28)
!694 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !687, file: !376, line: 678, type: !10)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !687, file: !376, line: 678, type: !10)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !697, file: !376, line: 690, type: !699)
!697 = distinct !DILexicalBlock(scope: !698, file: !376, line: 689, column: 77)
!698 = distinct !DILexicalBlock(scope: !687, file: !376, line: 689, column: 9)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UNICODE", file: !354, line: 93, baseType: !370)
!701 = !DISubprogram(name: "unicode_internal_decode", scope: !376, file: !376, line: 229, type: !126, isLocal: true, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @unicode_internal_decode, variables: !702)
!702 = !{!703, !704, !705, !706, !707, !708}
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !701, file: !376, line: 229, type: !4)
!704 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !701, file: !376, line: 230, type: !4)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !701, file: !376, line: 232, type: !4)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !701, file: !376, line: 233, type: !28)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !701, file: !376, line: 234, type: !28)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !701, file: !376, line: 235, type: !10)
!709 = !DISubprogram(name: "raw_unicode_escape_encode", scope: !376, file: !376, line: 926, type: !126, isLocal: true, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_encode, variables: !710)
!710 = !{!711, !712, !713, !714, !715, !716, !720, !723}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !709, file: !376, line: 926, type: !4)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !709, file: !376, line: 927, type: !4)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !709, file: !376, line: 929, type: !4)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !709, file: !376, line: 929, type: !4)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !709, file: !376, line: 930, type: !28)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !717, file: !376, line: 938, type: !4)
!717 = distinct !DILexicalBlock(scope: !718, file: !376, line: 938, column: 12)
!718 = distinct !DILexicalBlock(scope: !719, file: !376, line: 937, column: 132)
!719 = distinct !DILexicalBlock(scope: !709, file: !376, line: 937, column: 9)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !721, file: !376, line: 938, type: !4)
!721 = distinct !DILexicalBlock(scope: !722, file: !376, line: 938, column: 99)
!722 = distinct !DILexicalBlock(scope: !717, file: !376, line: 938, column: 65)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !724, file: !376, line: 943, type: !4)
!724 = distinct !DILexicalBlock(scope: !709, file: !376, line: 943, column: 8)
!725 = !DISubprogram(name: "raw_unicode_escape_decode", scope: !376, file: !376, line: 526, type: !126, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @raw_unicode_escape_decode, variables: !726)
!726 = !{!727, !728, !729, !730, !731}
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !725, file: !376, line: 526, type: !4)
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !725, file: !376, line: 527, type: !4)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !725, file: !376, line: 529, type: !236)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !725, file: !376, line: 530, type: !28)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !725, file: !376, line: 531, type: !4)
!732 = !DISubprogram(name: "latin_1_encode", scope: !376, file: !376, line: 948, type: !126, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @latin_1_encode, variables: !733)
!733 = !{!734, !735, !736, !737, !738, !739, !743, !746}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !732, file: !376, line: 948, type: !4)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !732, file: !376, line: 949, type: !4)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !732, file: !376, line: 951, type: !4)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !732, file: !376, line: 951, type: !4)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !732, file: !376, line: 952, type: !28)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !740, file: !376, line: 960, type: !4)
!740 = distinct !DILexicalBlock(scope: !741, file: !376, line: 960, column: 12)
!741 = distinct !DILexicalBlock(scope: !742, file: !376, line: 959, column: 132)
!742 = distinct !DILexicalBlock(scope: !732, file: !376, line: 959, column: 9)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !744, file: !376, line: 960, type: !4)
!744 = distinct !DILexicalBlock(scope: !745, file: !376, line: 960, column: 99)
!745 = distinct !DILexicalBlock(scope: !740, file: !376, line: 960, column: 65)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !747, file: !376, line: 965, type: !4)
!747 = distinct !DILexicalBlock(scope: !732, file: !376, line: 965, column: 8)
!748 = !DISubprogram(name: "latin_1_decode", scope: !376, file: !376, line: 543, type: !126, isLocal: true, isDefinition: true, scopeLine: 545, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @latin_1_decode, variables: !749)
!749 = !{!750, !751, !752, !753, !754}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !748, file: !376, line: 543, type: !4)
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !748, file: !376, line: 544, type: !4)
!752 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !748, file: !376, line: 546, type: !236)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !748, file: !376, line: 547, type: !4)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !748, file: !376, line: 548, type: !28)
!755 = !DISubprogram(name: "ascii_encode", scope: !376, file: !376, line: 970, type: !126, isLocal: true, isDefinition: true, scopeLine: 972, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ascii_encode, variables: !756)
!756 = !{!757, !758, !759, !760, !761, !762, !766, !769}
!757 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !755, file: !376, line: 970, type: !4)
!758 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !755, file: !376, line: 971, type: !4)
!759 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !755, file: !376, line: 973, type: !4)
!760 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !755, file: !376, line: 973, type: !4)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !755, file: !376, line: 974, type: !28)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !763, file: !376, line: 982, type: !4)
!763 = distinct !DILexicalBlock(scope: !764, file: !376, line: 982, column: 12)
!764 = distinct !DILexicalBlock(scope: !765, file: !376, line: 981, column: 132)
!765 = distinct !DILexicalBlock(scope: !755, file: !376, line: 981, column: 9)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !767, file: !376, line: 982, type: !4)
!767 = distinct !DILexicalBlock(scope: !768, file: !376, line: 982, column: 99)
!768 = distinct !DILexicalBlock(scope: !763, file: !376, line: 982, column: 65)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !770, file: !376, line: 987, type: !4)
!770 = distinct !DILexicalBlock(scope: !755, file: !376, line: 987, column: 8)
!771 = !DISubprogram(name: "ascii_decode", scope: !376, file: !376, line: 560, type: !126, isLocal: true, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @ascii_decode, variables: !772)
!772 = !{!773, !774, !775, !776, !777}
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !771, file: !376, line: 560, type: !4)
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !771, file: !376, line: 561, type: !4)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !771, file: !376, line: 563, type: !236)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !771, file: !376, line: 564, type: !4)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !771, file: !376, line: 565, type: !28)
!778 = !DISubprogram(name: "charmap_encode", scope: !376, file: !376, line: 992, type: !126, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_encode, variables: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !790, !793}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !778, file: !376, line: 992, type: !4)
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !778, file: !376, line: 993, type: !4)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "str", scope: !778, file: !376, line: 995, type: !4)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !778, file: !376, line: 995, type: !4)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !778, file: !376, line: 996, type: !28)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !778, file: !376, line: 997, type: !4)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !787, file: !376, line: 1007, type: !4)
!787 = distinct !DILexicalBlock(scope: !788, file: !376, line: 1007, column: 12)
!788 = distinct !DILexicalBlock(scope: !789, file: !376, line: 1006, column: 132)
!789 = distinct !DILexicalBlock(scope: !778, file: !376, line: 1006, column: 9)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !791, file: !376, line: 1007, type: !4)
!791 = distinct !DILexicalBlock(scope: !792, file: !376, line: 1007, column: 99)
!792 = distinct !DILexicalBlock(scope: !787, file: !376, line: 1007, column: 65)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !376, line: 1012, type: !4)
!794 = distinct !DILexicalBlock(scope: !778, file: !376, line: 1012, column: 8)
!795 = !DISubprogram(name: "charmap_decode", scope: !376, file: !376, line: 577, type: !126, isLocal: true, isDefinition: true, scopeLine: 579, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_decode, variables: !796)
!796 = !{!797, !798, !799, !800, !801, !802}
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !795, file: !376, line: 577, type: !4)
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !795, file: !376, line: 578, type: !4)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pbuf", scope: !795, file: !376, line: 580, type: !236)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unicode", scope: !795, file: !376, line: 581, type: !4)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !795, file: !376, line: 582, type: !28)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mapping", scope: !795, file: !376, line: 583, type: !4)
!803 = !DISubprogram(name: "charmap_build", scope: !376, file: !376, line: 1017, type: !126, isLocal: true, isDefinition: true, scopeLine: 1018, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @charmap_build, variables: !804)
!804 = !{!805, !806, !807}
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !803, file: !376, line: 1017, type: !4)
!806 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !803, file: !376, line: 1017, type: !4)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !803, file: !376, line: 1019, type: !4)
!808 = !DISubprogram(name: "readbuffer_encode", scope: !376, file: !376, line: 651, type: !126, isLocal: true, isDefinition: true, scopeLine: 653, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @readbuffer_encode, variables: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816}
!810 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !808, file: !376, line: 651, type: !4)
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !808, file: !376, line: 652, type: !4)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pdata", scope: !808, file: !376, line: 654, type: !236)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !808, file: !376, line: 655, type: !28)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !808, file: !376, line: 656, type: !10)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errors", scope: !808, file: !376, line: 657, type: !28)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !808, file: !376, line: 658, type: !4)
!817 = !DISubprogram(name: "register_error", scope: !376, file: !376, line: 1087, type: !126, isLocal: true, isDefinition: true, scopeLine: 1088, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @register_error, variables: !818)
!818 = !{!819, !820, !821, !822}
!819 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !817, file: !376, line: 1087, type: !4)
!820 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !817, file: !376, line: 1087, type: !4)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !817, file: !376, line: 1089, type: !28)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handler", scope: !817, file: !376, line: 1090, type: !4)
!823 = !DISubprogram(name: "lookup_error", scope: !376, file: !376, line: 1106, type: !126, isLocal: true, isDefinition: true, scopeLine: 1107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @lookup_error, variables: !824)
!824 = !{!825, !826, !827}
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !823, file: !376, line: 1106, type: !4)
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !823, file: !376, line: 1106, type: !4)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !823, file: !376, line: 1108, type: !28)
!828 = !{!829, !852, !856, !860, !864, !868, !872, !876}
!829 = !DIGlobalVariable(name: "codecsmodule", scope: !0, file: !376, line: 1174, type: !830, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @codecsmodule)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !831, line: 47, size: 832, align: 64, elements: !832)
!831 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!832 = !{!833, !842, !843, !844, !845, !848, !849, !850, !851}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !830, file: !831, line: 48, baseType: !834, size: 320, align: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !831, line: 38, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !831, line: 33, size: 320, align: 64, elements: !836)
!836 = !{!837, !838, !840, !841}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !835, file: !831, line: 34, baseType: !5, size: 128, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !835, file: !831, line: 35, baseType: !839, size: 64, align: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !835, file: !831, line: 36, baseType: !10, size: 64, align: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !835, file: !831, line: 37, baseType: !4, size: 64, align: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !830, file: !831, line: 49, baseType: !28, size: 64, align: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !830, file: !831, line: 50, baseType: !28, size: 64, align: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !830, file: !831, line: 51, baseType: !10, size: 64, align: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !830, file: !831, line: 52, baseType: !846, size: 64, align: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !830, file: !831, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !830, file: !831, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !830, file: !831, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !830, file: !831, line: 56, baseType: !329, size: 64, align: 64, offset: 768)
!852 = !DIGlobalVariable(name: "_codecs_functions", scope: !0, file: !376, line: 1118, type: !853, isLocal: true, isDefinition: true, variable: [41 x %struct.PyMethodDef]* @_codecs_functions)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !847, size: 10496, align: 64, elements: !854)
!854 = !{!855}
!855 = !DISubrange(count: 41)
!856 = !DIGlobalVariable(name: "register__doc__", scope: !0, file: !376, line: 47, type: !857, isLocal: true, isDefinition: true, variable: [264 x i8]* @register__doc__)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2112, align: 8, elements: !858)
!858 = !{!859}
!859 = !DISubrange(count: 264)
!860 = !DIGlobalVariable(name: "lookup__doc__", scope: !0, file: !376, line: 64, type: !861, isLocal: true, isDefinition: true, variable: [115 x i8]* @lookup__doc__)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 920, align: 8, elements: !862)
!862 = !{!863}
!863 = !DISubrange(count: 115)
!864 = !DIGlobalVariable(name: "encode__doc__", scope: !0, file: !376, line: 81, type: !865, isLocal: true, isDefinition: true, variable: [434 x i8]* @encode__doc__)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3472, align: 8, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 434)
!868 = !DIGlobalVariable(name: "decode__doc__", scope: !0, file: !376, line: 108, type: !869, isLocal: true, isDefinition: true, variable: [420 x i8]* @decode__doc__)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 3360, align: 8, elements: !870)
!870 = !{!871}
!871 = !DISubrange(count: 420)
!872 = !DIGlobalVariable(name: "register_error__doc__", scope: !0, file: !376, line: 1078, type: !873, isLocal: true, isDefinition: true, variable: [301 x i8]* @register_error__doc__)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2408, align: 8, elements: !874)
!874 = !{!875}
!875 = !DISubrange(count: 301)
!876 = !DIGlobalVariable(name: "lookup_error__doc__", scope: !0, file: !376, line: 1100, type: !877, isLocal: true, isDefinition: true, variable: [158 x i8]* @lookup_error__doc__)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 1264, align: 8, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 158)
!880 = !{i32 2, !"Dwarf Version", i32 4}
!881 = !{i32 2, !"Debug Info Version", i32 3}
!882 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!883 = !DILocation(line: 1189, column: 16, scope: !375)
!884 = !DILocation(line: 1189, column: 9, scope: !375)
!885 = !{!886, !886, i64 0}
!886 = !{!"any pointer", !887, i64 0}
!887 = !{!"omnipotent char", !888, i64 0}
!888 = !{!"Simple C/C++ TBAA"}
!889 = !DIExpression()
!890 = !DILocation(line: 56, column: 36, scope: !379)
!891 = !DILocation(line: 56, column: 52, scope: !379)
!892 = !DILocation(line: 58, column: 26, scope: !893)
!893 = distinct !DILexicalBlock(scope: !379, file: !376, line: 58, column: 9)
!894 = !DILocation(line: 58, column: 9, scope: !893)
!895 = !DILocation(line: 58, column: 9, scope: !379)
!896 = !DILocation(line: 59, column: 9, scope: !893)
!897 = !DILocation(line: 61, column: 58, scope: !379)
!898 = !{!899, !900, i64 0}
!899 = !{!"_object", !900, i64 0, !886, i64 8}
!900 = !{!"long", !887, i64 0}
!901 = !DILocation(line: 61, column: 5, scope: !379)
!902 = !DILocation(line: 62, column: 1, scope: !379)
!903 = !DILocation(line: 71, column: 34, scope: !383)
!904 = !DILocation(line: 71, column: 50, scope: !383)
!905 = !DILocation(line: 73, column: 5, scope: !383)
!906 = !DILocation(line: 73, column: 11, scope: !383)
!907 = !DILocation(line: 75, column: 34, scope: !908)
!908 = distinct !DILexicalBlock(scope: !383, file: !376, line: 75, column: 9)
!909 = !DILocation(line: 75, column: 10, scope: !908)
!910 = !DILocation(line: 75, column: 9, scope: !383)
!911 = !DILocation(line: 76, column: 9, scope: !908)
!912 = !DILocation(line: 78, column: 28, scope: !383)
!913 = !DILocation(line: 78, column: 12, scope: !383)
!914 = !DILocation(line: 78, column: 5, scope: !383)
!915 = !DILocation(line: 79, column: 1, scope: !383)
!916 = !DILocation(line: 92, column: 24, scope: !388)
!917 = !DILocation(line: 92, column: 40, scope: !388)
!918 = !DILocation(line: 94, column: 5, scope: !388)
!919 = !DILocation(line: 94, column: 17, scope: !388)
!920 = !DILocation(line: 95, column: 5, scope: !388)
!921 = !DILocation(line: 95, column: 17, scope: !388)
!922 = !DILocation(line: 96, column: 5, scope: !388)
!923 = !DILocation(line: 96, column: 15, scope: !388)
!924 = !DILocation(line: 98, column: 34, scope: !925)
!925 = distinct !DILexicalBlock(scope: !388, file: !376, line: 98, column: 9)
!926 = !DILocation(line: 98, column: 10, scope: !925)
!927 = !DILocation(line: 98, column: 9, scope: !388)
!928 = !DILocation(line: 99, column: 9, scope: !925)
!929 = !DILocation(line: 101, column: 9, scope: !930)
!930 = distinct !DILexicalBlock(scope: !388, file: !376, line: 101, column: 9)
!931 = !DILocation(line: 101, column: 18, scope: !930)
!932 = !DILocation(line: 101, column: 9, scope: !388)
!933 = !DILocation(line: 102, column: 20, scope: !930)
!934 = !DILocation(line: 102, column: 18, scope: !930)
!935 = !DILocation(line: 102, column: 9, scope: !930)
!936 = !DILocation(line: 105, column: 27, scope: !388)
!937 = !DILocation(line: 105, column: 30, scope: !388)
!938 = !DILocation(line: 105, column: 40, scope: !388)
!939 = !DILocation(line: 105, column: 12, scope: !388)
!940 = !DILocation(line: 105, column: 5, scope: !388)
!941 = !DILocation(line: 106, column: 1, scope: !388)
!942 = !DILocation(line: 119, column: 24, scope: !395)
!943 = !DILocation(line: 119, column: 40, scope: !395)
!944 = !DILocation(line: 121, column: 5, scope: !395)
!945 = !DILocation(line: 121, column: 17, scope: !395)
!946 = !DILocation(line: 122, column: 5, scope: !395)
!947 = !DILocation(line: 122, column: 17, scope: !395)
!948 = !DILocation(line: 123, column: 5, scope: !395)
!949 = !DILocation(line: 123, column: 15, scope: !395)
!950 = !DILocation(line: 125, column: 34, scope: !951)
!951 = distinct !DILexicalBlock(scope: !395, file: !376, line: 125, column: 9)
!952 = !DILocation(line: 125, column: 10, scope: !951)
!953 = !DILocation(line: 125, column: 9, scope: !395)
!954 = !DILocation(line: 126, column: 9, scope: !951)
!955 = !DILocation(line: 128, column: 9, scope: !956)
!956 = distinct !DILexicalBlock(scope: !395, file: !376, line: 128, column: 9)
!957 = !DILocation(line: 128, column: 18, scope: !956)
!958 = !DILocation(line: 128, column: 9, scope: !395)
!959 = !DILocation(line: 129, column: 20, scope: !956)
!960 = !DILocation(line: 129, column: 18, scope: !956)
!961 = !DILocation(line: 129, column: 9, scope: !956)
!962 = !DILocation(line: 132, column: 27, scope: !395)
!963 = !DILocation(line: 132, column: 30, scope: !395)
!964 = !DILocation(line: 132, column: 40, scope: !395)
!965 = !DILocation(line: 132, column: 12, scope: !395)
!966 = !DILocation(line: 132, column: 5, scope: !395)
!967 = !DILocation(line: 133, column: 1, scope: !395)
!968 = !DILocation(line: 166, column: 25, scope: !402)
!969 = !DILocation(line: 167, column: 25, scope: !402)
!970 = !DILocation(line: 169, column: 5, scope: !402)
!971 = !DILocation(line: 169, column: 15, scope: !402)
!972 = !DILocation(line: 170, column: 5, scope: !402)
!973 = !DILocation(line: 170, column: 16, scope: !402)
!974 = !DILocation(line: 171, column: 5, scope: !402)
!975 = !DILocation(line: 171, column: 16, scope: !402)
!976 = !DILocation(line: 172, column: 5, scope: !402)
!977 = !DILocation(line: 172, column: 17, scope: !402)
!978 = !DILocation(line: 173, column: 5, scope: !402)
!979 = !DILocation(line: 173, column: 15, scope: !402)
!980 = !DILocation(line: 175, column: 34, scope: !981)
!981 = distinct !DILexicalBlock(scope: !402, file: !376, line: 175, column: 9)
!982 = !DILocation(line: 175, column: 10, scope: !981)
!983 = !DILocation(line: 175, column: 9, scope: !402)
!984 = !DILocation(line: 177, column: 9, scope: !981)
!985 = !DILocation(line: 179, column: 43, scope: !402)
!986 = !DILocation(line: 179, column: 28, scope: !402)
!987 = !DILocation(line: 179, column: 50, scope: !402)
!988 = !{!989, !900, i64 16}
!989 = !{!"", !899, i64 0, !900, i64 16}
!990 = !DILocation(line: 179, column: 10, scope: !402)
!991 = !{!900, !900, i64 0}
!992 = !DILocation(line: 180, column: 9, scope: !993)
!993 = distinct !DILexicalBlock(scope: !402, file: !376, line: 180, column: 9)
!994 = !DILocation(line: 180, column: 14, scope: !993)
!995 = !DILocation(line: 180, column: 9, scope: !402)
!996 = !DILocation(line: 181, column: 25, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !376, line: 180, column: 53)
!998 = !DILocation(line: 181, column: 9, scope: !997)
!999 = !DILocation(line: 183, column: 13, scope: !997)
!1000 = !DILocation(line: 185, column: 17, scope: !402)
!1001 = !DILocation(line: 185, column: 16, scope: !402)
!1002 = !DILocation(line: 185, column: 13, scope: !402)
!1003 = !DILocation(line: 186, column: 47, scope: !402)
!1004 = !DILocation(line: 186, column: 9, scope: !402)
!1005 = !DILocation(line: 186, column: 7, scope: !402)
!1006 = !DILocation(line: 188, column: 9, scope: !413)
!1007 = !DILocation(line: 188, column: 11, scope: !413)
!1008 = !DILocation(line: 188, column: 9, scope: !402)
!1009 = !DILocation(line: 189, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !413, file: !376, line: 188, column: 26)
!1011 = !DILocation(line: 192, column: 9, scope: !412)
!1012 = !DILocation(line: 192, column: 20, scope: !412)
!1013 = !DILocation(line: 193, column: 9, scope: !412)
!1014 = !DILocation(line: 193, column: 14, scope: !412)
!1015 = !DILocation(line: 194, column: 9, scope: !412)
!1016 = !DILocation(line: 194, column: 15, scope: !412)
!1017 = !DILocation(line: 194, column: 54, scope: !412)
!1018 = !DILocation(line: 194, column: 36, scope: !412)
!1019 = !DILocation(line: 194, column: 59, scope: !412)
!1020 = !DILocation(line: 194, column: 34, scope: !412)
!1021 = !DILocation(line: 196, column: 16, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !412, file: !376, line: 196, column: 9)
!1023 = !DILocation(line: 196, column: 14, scope: !1022)
!1024 = !DILocation(line: 196, column: 21, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !376, discriminator: 2)
!1026 = !DILexicalBlockFile(scope: !1027, file: !376, discriminator: 1)
!1027 = distinct !DILexicalBlock(scope: !1022, file: !376, line: 196, column: 9)
!1028 = !DILocation(line: 196, column: 25, scope: !1027)
!1029 = !DILocation(line: 196, column: 23, scope: !1027)
!1030 = !DILocation(line: 196, column: 9, scope: !1022)
!1031 = !DILocation(line: 199, column: 69, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !376, line: 196, column: 36)
!1033 = !DILocation(line: 199, column: 52, scope: !1032)
!1034 = !DILocation(line: 199, column: 34, scope: !1032)
!1035 = !DILocation(line: 199, column: 59, scope: !1032)
!1036 = !DILocation(line: 199, column: 32, scope: !1032)
!1037 = !DILocation(line: 199, column: 17, scope: !1032)
!1038 = !{!887, !887, i64 0}
!1039 = !DILocation(line: 199, column: 15, scope: !1032)
!1040 = !DILocation(line: 200, column: 17, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1032, file: !376, line: 200, column: 17)
!1042 = !DILocation(line: 200, column: 19, scope: !1041)
!1043 = !DILocation(line: 200, column: 27, scope: !1041)
!1044 = !DILocation(line: 200, column: 30, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1041, file: !376, discriminator: 1)
!1046 = !DILocation(line: 200, column: 32, scope: !1041)
!1047 = !DILocation(line: 200, column: 17, scope: !1032)
!1048 = !DILocation(line: 201, column: 19, scope: !1041)
!1049 = !DILocation(line: 201, column: 22, scope: !1041)
!1050 = !DILocation(line: 201, column: 37, scope: !1041)
!1051 = !DILocation(line: 201, column: 32, scope: !1041)
!1052 = !DILocation(line: 201, column: 35, scope: !1041)
!1053 = !DILocation(line: 201, column: 17, scope: !1041)
!1054 = !DILocation(line: 202, column: 22, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1041, file: !376, line: 202, column: 22)
!1056 = !DILocation(line: 202, column: 24, scope: !1055)
!1057 = !DILocation(line: 202, column: 22, scope: !1041)
!1058 = !DILocation(line: 203, column: 19, scope: !1055)
!1059 = !DILocation(line: 203, column: 22, scope: !1055)
!1060 = !DILocation(line: 203, column: 32, scope: !1055)
!1061 = !DILocation(line: 203, column: 35, scope: !1055)
!1062 = !DILocation(line: 203, column: 17, scope: !1055)
!1063 = !DILocation(line: 204, column: 22, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1055, file: !376, line: 204, column: 22)
!1065 = !DILocation(line: 204, column: 24, scope: !1064)
!1066 = !DILocation(line: 204, column: 22, scope: !1055)
!1067 = !DILocation(line: 205, column: 19, scope: !1064)
!1068 = !DILocation(line: 205, column: 22, scope: !1064)
!1069 = !DILocation(line: 205, column: 32, scope: !1064)
!1070 = !DILocation(line: 205, column: 35, scope: !1064)
!1071 = !DILocation(line: 205, column: 17, scope: !1064)
!1072 = !DILocation(line: 206, column: 22, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1064, file: !376, line: 206, column: 22)
!1074 = !DILocation(line: 206, column: 24, scope: !1073)
!1075 = !DILocation(line: 206, column: 22, scope: !1064)
!1076 = !DILocation(line: 207, column: 19, scope: !1073)
!1077 = !DILocation(line: 207, column: 22, scope: !1073)
!1078 = !DILocation(line: 207, column: 32, scope: !1073)
!1079 = !DILocation(line: 207, column: 35, scope: !1073)
!1080 = !DILocation(line: 207, column: 17, scope: !1073)
!1081 = !DILocation(line: 208, column: 22, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1073, file: !376, line: 208, column: 22)
!1083 = !DILocation(line: 208, column: 24, scope: !1082)
!1084 = !DILocation(line: 208, column: 30, scope: !1082)
!1085 = !DILocation(line: 208, column: 33, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1082, file: !376, discriminator: 1)
!1087 = !DILocation(line: 208, column: 35, scope: !1082)
!1088 = !DILocation(line: 208, column: 22, scope: !1073)
!1089 = !DILocation(line: 209, column: 19, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !376, line: 208, column: 44)
!1091 = !DILocation(line: 209, column: 22, scope: !1090)
!1092 = !DILocation(line: 210, column: 19, scope: !1090)
!1093 = !DILocation(line: 210, column: 22, scope: !1090)
!1094 = !DILocation(line: 211, column: 38, scope: !1090)
!1095 = !DILocation(line: 211, column: 40, scope: !1090)
!1096 = !DILocation(line: 211, column: 48, scope: !1090)
!1097 = !DILocation(line: 211, column: 24, scope: !1090)
!1098 = !DILocation(line: 211, column: 19, scope: !1090)
!1099 = !DILocation(line: 211, column: 22, scope: !1090)
!1100 = !DILocation(line: 212, column: 37, scope: !1090)
!1101 = !DILocation(line: 212, column: 39, scope: !1090)
!1102 = !DILocation(line: 212, column: 24, scope: !1090)
!1103 = !DILocation(line: 212, column: 19, scope: !1090)
!1104 = !DILocation(line: 212, column: 22, scope: !1090)
!1105 = !DILocation(line: 213, column: 13, scope: !1090)
!1106 = !DILocation(line: 215, column: 24, scope: !1082)
!1107 = !DILocation(line: 215, column: 19, scope: !1082)
!1108 = !DILocation(line: 215, column: 22, scope: !1082)
!1109 = !DILocation(line: 216, column: 9, scope: !1032)
!1110 = !DILocation(line: 196, column: 32, scope: !1027)
!1111 = !DILocation(line: 196, column: 9, scope: !1027)
!1112 = !DILocation(line: 217, column: 10, scope: !412)
!1113 = !DILocation(line: 217, column: 12, scope: !412)
!1114 = !DILocation(line: 218, column: 34, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !412, file: !376, line: 218, column: 13)
!1116 = !DILocation(line: 218, column: 73, scope: !1115)
!1117 = !DILocation(line: 218, column: 55, scope: !1115)
!1118 = !DILocation(line: 218, column: 78, scope: !1115)
!1119 = !DILocation(line: 218, column: 53, scope: !1115)
!1120 = !DILocation(line: 218, column: 36, scope: !1115)
!1121 = !DILocation(line: 218, column: 13, scope: !1115)
!1122 = !DILocation(line: 218, column: 13, scope: !412)
!1123 = !DILocation(line: 219, column: 13, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1115, file: !376, line: 218, column: 91)
!1125 = !DILocation(line: 221, column: 5, scope: !413)
!1126 = !DILocation(line: 221, column: 5, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !413, file: !376, discriminator: 1)
!1128 = !DILocation(line: 223, column: 24, scope: !402)
!1129 = !DILocation(line: 223, column: 27, scope: !402)
!1130 = !DILocation(line: 223, column: 12, scope: !402)
!1131 = !DILocation(line: 223, column: 5, scope: !402)
!1132 = !DILocation(line: 224, column: 1, scope: !402)
!1133 = !DILocation(line: 151, column: 25, scope: !423)
!1134 = !DILocation(line: 152, column: 25, scope: !423)
!1135 = !DILocation(line: 154, column: 5, scope: !423)
!1136 = !DILocation(line: 154, column: 17, scope: !423)
!1137 = !DILocation(line: 155, column: 5, scope: !423)
!1138 = !DILocation(line: 155, column: 17, scope: !423)
!1139 = !DILocation(line: 156, column: 5, scope: !423)
!1140 = !DILocation(line: 156, column: 16, scope: !423)
!1141 = !DILocation(line: 158, column: 34, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !423, file: !376, line: 158, column: 9)
!1143 = !DILocation(line: 158, column: 10, scope: !1142)
!1144 = !DILocation(line: 158, column: 9, scope: !423)
!1145 = !DILocation(line: 160, column: 9, scope: !1142)
!1146 = !DILocation(line: 161, column: 45, scope: !423)
!1147 = !DILocation(line: 161, column: 51, scope: !423)
!1148 = !DILocation(line: 161, column: 57, scope: !423)
!1149 = !DILocation(line: 161, column: 24, scope: !423)
!1150 = !DILocation(line: 162, column: 24, scope: !423)
!1151 = !DILocation(line: 161, column: 12, scope: !423)
!1152 = !DILocation(line: 161, column: 5, scope: !423)
!1153 = !DILocation(line: 163, column: 1, scope: !423)
!1154 = !DILocation(line: 734, column: 24, scope: !430)
!1155 = !DILocation(line: 735, column: 23, scope: !430)
!1156 = !DILocation(line: 737, column: 5, scope: !430)
!1157 = !DILocation(line: 737, column: 15, scope: !430)
!1158 = !DILocation(line: 737, column: 21, scope: !430)
!1159 = !DILocation(line: 738, column: 5, scope: !430)
!1160 = !DILocation(line: 738, column: 17, scope: !430)
!1161 = !DILocation(line: 740, column: 34, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !430, file: !376, line: 740, column: 9)
!1163 = !DILocation(line: 740, column: 10, scope: !1162)
!1164 = !DILocation(line: 740, column: 9, scope: !430)
!1165 = !DILocation(line: 742, column: 9, scope: !1162)
!1166 = !DILocation(line: 744, column: 32, scope: !430)
!1167 = !DILocation(line: 744, column: 11, scope: !430)
!1168 = !DILocation(line: 744, column: 9, scope: !430)
!1169 = !DILocation(line: 745, column: 9, scope: !440)
!1170 = !DILocation(line: 745, column: 13, scope: !440)
!1171 = !DILocation(line: 745, column: 27, scope: !440)
!1172 = !DILocation(line: 745, column: 64, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !440, file: !376, discriminator: 1)
!1174 = !DILocation(line: 745, column: 48, scope: !440)
!1175 = !DILocation(line: 745, column: 70, scope: !440)
!1176 = !DILocation(line: 745, column: 76, scope: !440)
!1177 = !DILocation(line: 745, column: 46, scope: !440)
!1178 = !DILocation(line: 745, column: 46, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !440, file: !376, discriminator: 2)
!1180 = !DILocation(line: 745, column: 119, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !440, file: !376, discriminator: 3)
!1182 = !DILocation(line: 745, column: 89, scope: !440)
!1183 = !DILocation(line: 745, column: 127, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !376, discriminator: 5)
!1185 = !DILexicalBlockFile(scope: !440, file: !376, discriminator: 4)
!1186 = !DILocation(line: 745, column: 9, scope: !430)
!1187 = !DILocation(line: 746, column: 9, scope: !439)
!1188 = !DILocation(line: 746, column: 14, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !438, file: !376, discriminator: 1)
!1190 = !DILocation(line: 746, column: 24, scope: !438)
!1191 = !DILocation(line: 746, column: 55, scope: !438)
!1192 = !DILocation(line: 746, column: 65, scope: !443)
!1193 = !DILocation(line: 746, column: 81, scope: !443)
!1194 = !DILocation(line: 746, column: 65, scope: !438)
!1195 = !DILocation(line: 746, column: 96, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !443, file: !376, discriminator: 2)
!1197 = !DILocation(line: 746, column: 101, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !442, file: !376, discriminator: 4)
!1199 = !DILocation(line: 746, column: 111, scope: !442)
!1200 = !DILocation(line: 746, column: 141, scope: !442)
!1201 = !DILocation(line: 746, column: 167, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !442, file: !376, line: 746, column: 164)
!1203 = !DILocation(line: 746, column: 184, scope: !1202)
!1204 = !DILocation(line: 746, column: 164, scope: !1202)
!1205 = !DILocation(line: 746, column: 194, scope: !1202)
!1206 = !DILocation(line: 746, column: 164, scope: !442)
!1207 = !DILocation(line: 746, column: 164, scope: !1208)
!1208 = !DILexicalBlockFile(scope: !442, file: !376, discriminator: 5)
!1209 = !DILocation(line: 746, column: 225, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1202, file: !376, discriminator: 6)
!1211 = !DILocation(line: 746, column: 243, scope: !1202)
!1212 = !{!899, !886, i64 8}
!1213 = !DILocation(line: 746, column: 253, scope: !1202)
!1214 = !{!1215, !886, i64 48}
!1215 = !{!"_typeobject", !989, i64 0, !886, i64 24, !900, i64 32, !900, i64 40, !886, i64 48, !886, i64 56, !886, i64 64, !886, i64 72, !886, i64 80, !886, i64 88, !886, i64 96, !886, i64 104, !886, i64 112, !886, i64 120, !886, i64 128, !886, i64 136, !886, i64 144, !886, i64 152, !886, i64 160, !900, i64 168, !886, i64 176, !886, i64 184, !886, i64 192, !886, i64 200, !900, i64 208, !886, i64 216, !886, i64 224, !886, i64 232, !886, i64 240, !886, i64 248, !886, i64 256, !886, i64 264, !886, i64 272, !886, i64 280, !900, i64 288, !886, i64 296, !886, i64 304, !886, i64 312, !886, i64 320, !886, i64 328, !886, i64 336, !886, i64 344, !886, i64 352, !886, i64 360, !886, i64 368, !886, i64 376, !1216, i64 384, !886, i64 392}
!1216 = !{!"int", !887, i64 0}
!1217 = !DILocation(line: 746, column: 278, scope: !1202)
!1218 = !DILocation(line: 746, column: 209, scope: !1202)
!1219 = !DILocation(line: 746, column: 297, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !443, file: !376, discriminator: 7)
!1221 = !DILocation(line: 746, column: 297, scope: !442)
!1222 = !DILocation(line: 746, column: 297, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !442, file: !376, discriminator: 8)
!1224 = !DILocation(line: 746, column: 297, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !442, file: !376, discriminator: 9)
!1226 = !DILocation(line: 746, column: 310, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1228, file: !376, discriminator: 10)
!1228 = !DILexicalBlockFile(scope: !439, file: !376, discriminator: 3)
!1229 = !DILocation(line: 746, column: 310, scope: !438)
!1230 = !DILocation(line: 746, column: 310, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !438, file: !376, discriminator: 11)
!1232 = !DILocation(line: 747, column: 9, scope: !439)
!1233 = !DILocation(line: 749, column: 47, scope: !430)
!1234 = !DILocation(line: 749, column: 61, scope: !430)
!1235 = !DILocation(line: 749, column: 21, scope: !430)
!1236 = !DILocation(line: 750, column: 69, scope: !430)
!1237 = !DILocation(line: 750, column: 51, scope: !430)
!1238 = !DILocation(line: 750, column: 76, scope: !430)
!1239 = !{!1240, !900, i64 16}
!1240 = !{!"", !899, i64 0, !900, i64 16, !900, i64 24, !1241, i64 32, !886, i64 40}
!1241 = !{!"", !1216, i64 0, !1216, i64 0, !1216, i64 0, !1216, i64 0, !1216, i64 0, !1216, i64 1}
!1242 = !DILocation(line: 749, column: 9, scope: !430)
!1243 = !DILocation(line: 749, column: 7, scope: !430)
!1244 = !DILocation(line: 751, column: 5, scope: !430)
!1245 = !DILocation(line: 751, column: 10, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !445, file: !376, discriminator: 1)
!1247 = !DILocation(line: 751, column: 20, scope: !445)
!1248 = !DILocation(line: 751, column: 50, scope: !445)
!1249 = !DILocation(line: 751, column: 64, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !445, file: !376, line: 751, column: 61)
!1251 = !DILocation(line: 751, column: 81, scope: !1250)
!1252 = !DILocation(line: 751, column: 61, scope: !1250)
!1253 = !DILocation(line: 751, column: 91, scope: !1250)
!1254 = !DILocation(line: 751, column: 61, scope: !445)
!1255 = !DILocation(line: 751, column: 61, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !445, file: !376, discriminator: 2)
!1257 = !DILocation(line: 751, column: 122, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1250, file: !376, discriminator: 3)
!1259 = !DILocation(line: 751, column: 140, scope: !1250)
!1260 = !DILocation(line: 751, column: 150, scope: !1250)
!1261 = !DILocation(line: 751, column: 175, scope: !1250)
!1262 = !DILocation(line: 751, column: 106, scope: !1250)
!1263 = !DILocation(line: 751, column: 194, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !430, file: !376, discriminator: 4)
!1265 = !DILocation(line: 751, column: 194, scope: !445)
!1266 = !DILocation(line: 751, column: 194, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !445, file: !376, discriminator: 5)
!1268 = !DILocation(line: 752, column: 12, scope: !430)
!1269 = !DILocation(line: 752, column: 5, scope: !430)
!1270 = !DILocation(line: 753, column: 1, scope: !430)
!1271 = !DILocation(line: 280, column: 24, scope: !446)
!1272 = !DILocation(line: 281, column: 23, scope: !446)
!1273 = !DILocation(line: 283, column: 5, scope: !446)
!1274 = !DILocation(line: 283, column: 15, scope: !446)
!1275 = !DILocation(line: 284, column: 5, scope: !446)
!1276 = !DILocation(line: 284, column: 17, scope: !446)
!1277 = !DILocation(line: 285, column: 5, scope: !446)
!1278 = !DILocation(line: 285, column: 9, scope: !446)
!1279 = !{!1216, !1216, i64 0}
!1280 = !DILocation(line: 286, column: 5, scope: !446)
!1281 = !DILocation(line: 286, column: 16, scope: !446)
!1282 = !DILocation(line: 287, column: 5, scope: !446)
!1283 = !DILocation(line: 287, column: 15, scope: !446)
!1284 = !DILocation(line: 289, column: 34, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !446, file: !376, line: 289, column: 9)
!1286 = !DILocation(line: 289, column: 10, scope: !1285)
!1287 = !DILocation(line: 289, column: 9, scope: !446)
!1288 = !DILocation(line: 291, column: 9, scope: !1285)
!1289 = !DILocation(line: 292, column: 21, scope: !446)
!1290 = !{!1291, !900, i64 16}
!1291 = !{!"bufferinfo", !886, i64 0, !886, i64 8, !900, i64 16, !900, i64 24, !1216, i64 32, !1216, i64 36, !886, i64 40, !886, i64 48, !886, i64 56, !886, i64 64, !886, i64 72}
!1292 = !DILocation(line: 292, column: 14, scope: !446)
!1293 = !DILocation(line: 294, column: 49, scope: !446)
!1294 = !{!1291, !886, i64 0}
!1295 = !DILocation(line: 294, column: 59, scope: !446)
!1296 = !DILocation(line: 294, column: 64, scope: !446)
!1297 = !DILocation(line: 295, column: 44, scope: !446)
!1298 = !DILocation(line: 295, column: 44, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !446, file: !376, discriminator: 1)
!1300 = !DILocation(line: 295, column: 44, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !446, file: !376, discriminator: 2)
!1302 = !DILocation(line: 294, column: 15, scope: !446)
!1303 = !DILocation(line: 294, column: 13, scope: !446)
!1304 = !DILocation(line: 296, column: 5, scope: !446)
!1305 = !DILocation(line: 297, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !446, file: !376, line: 297, column: 9)
!1307 = !DILocation(line: 297, column: 17, scope: !1306)
!1308 = !DILocation(line: 297, column: 9, scope: !446)
!1309 = !DILocation(line: 298, column: 9, scope: !1306)
!1310 = !DILocation(line: 299, column: 24, scope: !446)
!1311 = !DILocation(line: 299, column: 33, scope: !446)
!1312 = !DILocation(line: 299, column: 12, scope: !446)
!1313 = !DILocation(line: 299, column: 5, scope: !446)
!1314 = !DILocation(line: 300, column: 1, scope: !446)
!1315 = !DILocation(line: 712, column: 24, scope: !455)
!1316 = !DILocation(line: 713, column: 23, scope: !455)
!1317 = !DILocation(line: 715, column: 5, scope: !455)
!1318 = !DILocation(line: 715, column: 15, scope: !455)
!1319 = !DILocation(line: 715, column: 21, scope: !455)
!1320 = !DILocation(line: 716, column: 5, scope: !455)
!1321 = !DILocation(line: 716, column: 17, scope: !455)
!1322 = !DILocation(line: 718, column: 34, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !455, file: !376, line: 718, column: 9)
!1324 = !DILocation(line: 718, column: 10, scope: !1323)
!1325 = !DILocation(line: 718, column: 9, scope: !455)
!1326 = !DILocation(line: 720, column: 9, scope: !1323)
!1327 = !DILocation(line: 722, column: 32, scope: !455)
!1328 = !DILocation(line: 722, column: 11, scope: !455)
!1329 = !DILocation(line: 722, column: 9, scope: !455)
!1330 = !DILocation(line: 723, column: 9, scope: !465)
!1331 = !DILocation(line: 723, column: 13, scope: !465)
!1332 = !DILocation(line: 723, column: 27, scope: !465)
!1333 = !DILocation(line: 723, column: 64, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !465, file: !376, discriminator: 1)
!1335 = !DILocation(line: 723, column: 48, scope: !465)
!1336 = !DILocation(line: 723, column: 70, scope: !465)
!1337 = !DILocation(line: 723, column: 76, scope: !465)
!1338 = !DILocation(line: 723, column: 46, scope: !465)
!1339 = !DILocation(line: 723, column: 46, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !465, file: !376, discriminator: 2)
!1341 = !DILocation(line: 723, column: 119, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !465, file: !376, discriminator: 3)
!1343 = !DILocation(line: 723, column: 89, scope: !465)
!1344 = !DILocation(line: 723, column: 127, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !376, discriminator: 5)
!1346 = !DILexicalBlockFile(scope: !465, file: !376, discriminator: 4)
!1347 = !DILocation(line: 723, column: 9, scope: !455)
!1348 = !DILocation(line: 724, column: 9, scope: !464)
!1349 = !DILocation(line: 724, column: 14, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !463, file: !376, discriminator: 1)
!1351 = !DILocation(line: 724, column: 24, scope: !463)
!1352 = !DILocation(line: 724, column: 55, scope: !463)
!1353 = !DILocation(line: 724, column: 65, scope: !468)
!1354 = !DILocation(line: 724, column: 81, scope: !468)
!1355 = !DILocation(line: 724, column: 65, scope: !463)
!1356 = !DILocation(line: 724, column: 96, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !468, file: !376, discriminator: 2)
!1358 = !DILocation(line: 724, column: 101, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !467, file: !376, discriminator: 4)
!1360 = !DILocation(line: 724, column: 111, scope: !467)
!1361 = !DILocation(line: 724, column: 141, scope: !467)
!1362 = !DILocation(line: 724, column: 167, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !467, file: !376, line: 724, column: 164)
!1364 = !DILocation(line: 724, column: 184, scope: !1363)
!1365 = !DILocation(line: 724, column: 164, scope: !1363)
!1366 = !DILocation(line: 724, column: 194, scope: !1363)
!1367 = !DILocation(line: 724, column: 164, scope: !467)
!1368 = !DILocation(line: 724, column: 164, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !467, file: !376, discriminator: 5)
!1370 = !DILocation(line: 724, column: 225, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1363, file: !376, discriminator: 6)
!1372 = !DILocation(line: 724, column: 243, scope: !1363)
!1373 = !DILocation(line: 724, column: 253, scope: !1363)
!1374 = !DILocation(line: 724, column: 278, scope: !1363)
!1375 = !DILocation(line: 724, column: 209, scope: !1363)
!1376 = !DILocation(line: 724, column: 297, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !468, file: !376, discriminator: 7)
!1378 = !DILocation(line: 724, column: 297, scope: !467)
!1379 = !DILocation(line: 724, column: 297, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !467, file: !376, discriminator: 8)
!1381 = !DILocation(line: 724, column: 297, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !467, file: !376, discriminator: 9)
!1383 = !DILocation(line: 724, column: 310, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1385, file: !376, discriminator: 10)
!1385 = !DILexicalBlockFile(scope: !464, file: !376, discriminator: 3)
!1386 = !DILocation(line: 724, column: 310, scope: !463)
!1387 = !DILocation(line: 724, column: 310, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !463, file: !376, discriminator: 11)
!1389 = !DILocation(line: 725, column: 9, scope: !464)
!1390 = !DILocation(line: 727, column: 43, scope: !455)
!1391 = !DILocation(line: 727, column: 54, scope: !455)
!1392 = !DILocation(line: 727, column: 21, scope: !455)
!1393 = !DILocation(line: 728, column: 69, scope: !455)
!1394 = !DILocation(line: 728, column: 51, scope: !455)
!1395 = !DILocation(line: 728, column: 76, scope: !455)
!1396 = !DILocation(line: 727, column: 9, scope: !455)
!1397 = !DILocation(line: 727, column: 7, scope: !455)
!1398 = !DILocation(line: 729, column: 5, scope: !455)
!1399 = !DILocation(line: 729, column: 10, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !470, file: !376, discriminator: 1)
!1401 = !DILocation(line: 729, column: 20, scope: !470)
!1402 = !DILocation(line: 729, column: 50, scope: !470)
!1403 = !DILocation(line: 729, column: 64, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !470, file: !376, line: 729, column: 61)
!1405 = !DILocation(line: 729, column: 81, scope: !1404)
!1406 = !DILocation(line: 729, column: 61, scope: !1404)
!1407 = !DILocation(line: 729, column: 91, scope: !1404)
!1408 = !DILocation(line: 729, column: 61, scope: !470)
!1409 = !DILocation(line: 729, column: 61, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !470, file: !376, discriminator: 2)
!1411 = !DILocation(line: 729, column: 122, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1404, file: !376, discriminator: 3)
!1413 = !DILocation(line: 729, column: 140, scope: !1404)
!1414 = !DILocation(line: 729, column: 150, scope: !1404)
!1415 = !DILocation(line: 729, column: 175, scope: !1404)
!1416 = !DILocation(line: 729, column: 106, scope: !1404)
!1417 = !DILocation(line: 729, column: 194, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !455, file: !376, discriminator: 4)
!1419 = !DILocation(line: 729, column: 194, scope: !470)
!1420 = !DILocation(line: 729, column: 194, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !470, file: !376, discriminator: 5)
!1422 = !DILocation(line: 730, column: 12, scope: !455)
!1423 = !DILocation(line: 730, column: 5, scope: !455)
!1424 = !DILocation(line: 731, column: 1, scope: !455)
!1425 = !DILocation(line: 257, column: 24, scope: !471)
!1426 = !DILocation(line: 258, column: 24, scope: !471)
!1427 = !DILocation(line: 260, column: 5, scope: !471)
!1428 = !DILocation(line: 260, column: 15, scope: !471)
!1429 = !DILocation(line: 261, column: 5, scope: !471)
!1430 = !DILocation(line: 261, column: 17, scope: !471)
!1431 = !DILocation(line: 262, column: 5, scope: !471)
!1432 = !DILocation(line: 262, column: 9, scope: !471)
!1433 = !DILocation(line: 263, column: 5, scope: !471)
!1434 = !DILocation(line: 263, column: 16, scope: !471)
!1435 = !DILocation(line: 264, column: 5, scope: !471)
!1436 = !DILocation(line: 264, column: 15, scope: !471)
!1437 = !DILocation(line: 266, column: 34, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !471, file: !376, line: 266, column: 9)
!1439 = !DILocation(line: 266, column: 10, scope: !1438)
!1440 = !DILocation(line: 266, column: 9, scope: !471)
!1441 = !DILocation(line: 268, column: 9, scope: !1438)
!1442 = !DILocation(line: 269, column: 21, scope: !471)
!1443 = !DILocation(line: 269, column: 14, scope: !471)
!1444 = !DILocation(line: 271, column: 49, scope: !471)
!1445 = !DILocation(line: 271, column: 59, scope: !471)
!1446 = !DILocation(line: 271, column: 64, scope: !471)
!1447 = !DILocation(line: 272, column: 44, scope: !471)
!1448 = !DILocation(line: 272, column: 44, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !471, file: !376, discriminator: 1)
!1450 = !DILocation(line: 272, column: 44, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !471, file: !376, discriminator: 2)
!1452 = !DILocation(line: 271, column: 15, scope: !471)
!1453 = !DILocation(line: 271, column: 13, scope: !471)
!1454 = !DILocation(line: 273, column: 5, scope: !471)
!1455 = !DILocation(line: 274, column: 9, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !471, file: !376, line: 274, column: 9)
!1457 = !DILocation(line: 274, column: 17, scope: !1456)
!1458 = !DILocation(line: 274, column: 9, scope: !471)
!1459 = !DILocation(line: 275, column: 9, scope: !1456)
!1460 = !DILocation(line: 276, column: 24, scope: !471)
!1461 = !DILocation(line: 276, column: 33, scope: !471)
!1462 = !DILocation(line: 276, column: 12, scope: !471)
!1463 = !DILocation(line: 276, column: 5, scope: !471)
!1464 = !DILocation(line: 277, column: 1, scope: !471)
!1465 = !DILocation(line: 763, column: 25, scope: !480)
!1466 = !DILocation(line: 764, column: 23, scope: !480)
!1467 = !DILocation(line: 766, column: 5, scope: !480)
!1468 = !DILocation(line: 766, column: 15, scope: !480)
!1469 = !DILocation(line: 766, column: 21, scope: !480)
!1470 = !DILocation(line: 767, column: 5, scope: !480)
!1471 = !DILocation(line: 767, column: 17, scope: !480)
!1472 = !DILocation(line: 768, column: 5, scope: !480)
!1473 = !DILocation(line: 768, column: 9, scope: !480)
!1474 = !DILocation(line: 770, column: 34, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !480, file: !376, line: 770, column: 9)
!1476 = !DILocation(line: 770, column: 10, scope: !1475)
!1477 = !DILocation(line: 770, column: 9, scope: !480)
!1478 = !DILocation(line: 772, column: 9, scope: !1475)
!1479 = !DILocation(line: 774, column: 32, scope: !480)
!1480 = !DILocation(line: 774, column: 11, scope: !480)
!1481 = !DILocation(line: 774, column: 9, scope: !480)
!1482 = !DILocation(line: 775, column: 9, scope: !491)
!1483 = !DILocation(line: 775, column: 13, scope: !491)
!1484 = !DILocation(line: 775, column: 27, scope: !491)
!1485 = !DILocation(line: 775, column: 64, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !491, file: !376, discriminator: 1)
!1487 = !DILocation(line: 775, column: 48, scope: !491)
!1488 = !DILocation(line: 775, column: 70, scope: !491)
!1489 = !DILocation(line: 775, column: 76, scope: !491)
!1490 = !DILocation(line: 775, column: 46, scope: !491)
!1491 = !DILocation(line: 775, column: 46, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !491, file: !376, discriminator: 2)
!1493 = !DILocation(line: 775, column: 119, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !491, file: !376, discriminator: 3)
!1495 = !DILocation(line: 775, column: 89, scope: !491)
!1496 = !DILocation(line: 775, column: 127, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !376, discriminator: 5)
!1498 = !DILexicalBlockFile(scope: !491, file: !376, discriminator: 4)
!1499 = !DILocation(line: 775, column: 9, scope: !480)
!1500 = !DILocation(line: 776, column: 9, scope: !490)
!1501 = !DILocation(line: 776, column: 14, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !489, file: !376, discriminator: 1)
!1503 = !DILocation(line: 776, column: 24, scope: !489)
!1504 = !DILocation(line: 776, column: 55, scope: !489)
!1505 = !DILocation(line: 776, column: 65, scope: !494)
!1506 = !DILocation(line: 776, column: 81, scope: !494)
!1507 = !DILocation(line: 776, column: 65, scope: !489)
!1508 = !DILocation(line: 776, column: 96, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !494, file: !376, discriminator: 2)
!1510 = !DILocation(line: 776, column: 101, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !493, file: !376, discriminator: 4)
!1512 = !DILocation(line: 776, column: 111, scope: !493)
!1513 = !DILocation(line: 776, column: 141, scope: !493)
!1514 = !DILocation(line: 776, column: 167, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !493, file: !376, line: 776, column: 164)
!1516 = !DILocation(line: 776, column: 184, scope: !1515)
!1517 = !DILocation(line: 776, column: 164, scope: !1515)
!1518 = !DILocation(line: 776, column: 194, scope: !1515)
!1519 = !DILocation(line: 776, column: 164, scope: !493)
!1520 = !DILocation(line: 776, column: 164, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !493, file: !376, discriminator: 5)
!1522 = !DILocation(line: 776, column: 225, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !1515, file: !376, discriminator: 6)
!1524 = !DILocation(line: 776, column: 243, scope: !1515)
!1525 = !DILocation(line: 776, column: 253, scope: !1515)
!1526 = !DILocation(line: 776, column: 278, scope: !1515)
!1527 = !DILocation(line: 776, column: 209, scope: !1515)
!1528 = !DILocation(line: 776, column: 297, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !494, file: !376, discriminator: 7)
!1530 = !DILocation(line: 776, column: 297, scope: !493)
!1531 = !DILocation(line: 776, column: 297, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !493, file: !376, discriminator: 8)
!1533 = !DILocation(line: 776, column: 297, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !493, file: !376, discriminator: 9)
!1535 = !DILocation(line: 776, column: 310, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !376, discriminator: 10)
!1537 = !DILexicalBlockFile(scope: !490, file: !376, discriminator: 3)
!1538 = !DILocation(line: 776, column: 310, scope: !489)
!1539 = !DILocation(line: 776, column: 310, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !489, file: !376, discriminator: 11)
!1541 = !DILocation(line: 777, column: 9, scope: !490)
!1542 = !DILocation(line: 779, column: 44, scope: !480)
!1543 = !DILocation(line: 779, column: 49, scope: !480)
!1544 = !DILocation(line: 779, column: 57, scope: !480)
!1545 = !DILocation(line: 779, column: 21, scope: !480)
!1546 = !DILocation(line: 780, column: 69, scope: !480)
!1547 = !DILocation(line: 780, column: 51, scope: !480)
!1548 = !DILocation(line: 780, column: 76, scope: !480)
!1549 = !DILocation(line: 779, column: 9, scope: !480)
!1550 = !DILocation(line: 779, column: 7, scope: !480)
!1551 = !DILocation(line: 781, column: 5, scope: !480)
!1552 = !DILocation(line: 781, column: 10, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !496, file: !376, discriminator: 1)
!1554 = !DILocation(line: 781, column: 20, scope: !496)
!1555 = !DILocation(line: 781, column: 50, scope: !496)
!1556 = !DILocation(line: 781, column: 64, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !496, file: !376, line: 781, column: 61)
!1558 = !DILocation(line: 781, column: 81, scope: !1557)
!1559 = !DILocation(line: 781, column: 61, scope: !1557)
!1560 = !DILocation(line: 781, column: 91, scope: !1557)
!1561 = !DILocation(line: 781, column: 61, scope: !496)
!1562 = !DILocation(line: 781, column: 61, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !496, file: !376, discriminator: 2)
!1564 = !DILocation(line: 781, column: 122, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1557, file: !376, discriminator: 3)
!1566 = !DILocation(line: 781, column: 140, scope: !1557)
!1567 = !DILocation(line: 781, column: 150, scope: !1557)
!1568 = !DILocation(line: 781, column: 175, scope: !1557)
!1569 = !DILocation(line: 781, column: 106, scope: !1557)
!1570 = !DILocation(line: 781, column: 194, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !480, file: !376, discriminator: 4)
!1572 = !DILocation(line: 781, column: 194, scope: !496)
!1573 = !DILocation(line: 781, column: 194, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !496, file: !376, discriminator: 5)
!1575 = !DILocation(line: 782, column: 12, scope: !480)
!1576 = !DILocation(line: 782, column: 5, scope: !480)
!1577 = !DILocation(line: 783, column: 1, scope: !480)
!1578 = !DILocation(line: 786, column: 28, scope: !497)
!1579 = !DILocation(line: 787, column: 28, scope: !497)
!1580 = !DILocation(line: 789, column: 5, scope: !497)
!1581 = !DILocation(line: 789, column: 15, scope: !497)
!1582 = !DILocation(line: 789, column: 21, scope: !497)
!1583 = !DILocation(line: 790, column: 5, scope: !497)
!1584 = !DILocation(line: 790, column: 17, scope: !497)
!1585 = !DILocation(line: 792, column: 34, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !497, file: !376, line: 792, column: 9)
!1587 = !DILocation(line: 792, column: 10, scope: !1586)
!1588 = !DILocation(line: 792, column: 9, scope: !497)
!1589 = !DILocation(line: 794, column: 9, scope: !1586)
!1590 = !DILocation(line: 796, column: 32, scope: !497)
!1591 = !DILocation(line: 796, column: 11, scope: !497)
!1592 = !DILocation(line: 796, column: 9, scope: !497)
!1593 = !DILocation(line: 797, column: 9, scope: !507)
!1594 = !DILocation(line: 797, column: 13, scope: !507)
!1595 = !DILocation(line: 797, column: 27, scope: !507)
!1596 = !DILocation(line: 797, column: 64, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !507, file: !376, discriminator: 1)
!1598 = !DILocation(line: 797, column: 48, scope: !507)
!1599 = !DILocation(line: 797, column: 70, scope: !507)
!1600 = !DILocation(line: 797, column: 76, scope: !507)
!1601 = !DILocation(line: 797, column: 46, scope: !507)
!1602 = !DILocation(line: 797, column: 46, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !507, file: !376, discriminator: 2)
!1604 = !DILocation(line: 797, column: 119, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !507, file: !376, discriminator: 3)
!1606 = !DILocation(line: 797, column: 89, scope: !507)
!1607 = !DILocation(line: 797, column: 127, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1609, file: !376, discriminator: 5)
!1609 = !DILexicalBlockFile(scope: !507, file: !376, discriminator: 4)
!1610 = !DILocation(line: 797, column: 9, scope: !497)
!1611 = !DILocation(line: 798, column: 9, scope: !506)
!1612 = !DILocation(line: 798, column: 14, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !505, file: !376, discriminator: 1)
!1614 = !DILocation(line: 798, column: 24, scope: !505)
!1615 = !DILocation(line: 798, column: 55, scope: !505)
!1616 = !DILocation(line: 798, column: 65, scope: !510)
!1617 = !DILocation(line: 798, column: 81, scope: !510)
!1618 = !DILocation(line: 798, column: 65, scope: !505)
!1619 = !DILocation(line: 798, column: 96, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !510, file: !376, discriminator: 2)
!1621 = !DILocation(line: 798, column: 101, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !509, file: !376, discriminator: 4)
!1623 = !DILocation(line: 798, column: 111, scope: !509)
!1624 = !DILocation(line: 798, column: 141, scope: !509)
!1625 = !DILocation(line: 798, column: 167, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !509, file: !376, line: 798, column: 164)
!1627 = !DILocation(line: 798, column: 184, scope: !1626)
!1628 = !DILocation(line: 798, column: 164, scope: !1626)
!1629 = !DILocation(line: 798, column: 194, scope: !1626)
!1630 = !DILocation(line: 798, column: 164, scope: !509)
!1631 = !DILocation(line: 798, column: 164, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !509, file: !376, discriminator: 5)
!1633 = !DILocation(line: 798, column: 225, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1626, file: !376, discriminator: 6)
!1635 = !DILocation(line: 798, column: 243, scope: !1626)
!1636 = !DILocation(line: 798, column: 253, scope: !1626)
!1637 = !DILocation(line: 798, column: 278, scope: !1626)
!1638 = !DILocation(line: 798, column: 209, scope: !1626)
!1639 = !DILocation(line: 798, column: 297, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !510, file: !376, discriminator: 7)
!1641 = !DILocation(line: 798, column: 297, scope: !509)
!1642 = !DILocation(line: 798, column: 297, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !509, file: !376, discriminator: 8)
!1644 = !DILocation(line: 798, column: 297, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !509, file: !376, discriminator: 9)
!1646 = !DILocation(line: 798, column: 310, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !376, discriminator: 10)
!1648 = !DILexicalBlockFile(scope: !506, file: !376, discriminator: 3)
!1649 = !DILocation(line: 798, column: 310, scope: !505)
!1650 = !DILocation(line: 798, column: 310, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !505, file: !376, discriminator: 11)
!1652 = !DILocation(line: 799, column: 9, scope: !506)
!1653 = !DILocation(line: 801, column: 44, scope: !497)
!1654 = !DILocation(line: 801, column: 49, scope: !497)
!1655 = !DILocation(line: 801, column: 21, scope: !497)
!1656 = !DILocation(line: 802, column: 69, scope: !497)
!1657 = !DILocation(line: 802, column: 51, scope: !497)
!1658 = !DILocation(line: 802, column: 76, scope: !497)
!1659 = !DILocation(line: 801, column: 9, scope: !497)
!1660 = !DILocation(line: 801, column: 7, scope: !497)
!1661 = !DILocation(line: 803, column: 5, scope: !497)
!1662 = !DILocation(line: 803, column: 10, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !512, file: !376, discriminator: 1)
!1664 = !DILocation(line: 803, column: 20, scope: !512)
!1665 = !DILocation(line: 803, column: 50, scope: !512)
!1666 = !DILocation(line: 803, column: 64, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !512, file: !376, line: 803, column: 61)
!1668 = !DILocation(line: 803, column: 81, scope: !1667)
!1669 = !DILocation(line: 803, column: 61, scope: !1667)
!1670 = !DILocation(line: 803, column: 91, scope: !1667)
!1671 = !DILocation(line: 803, column: 61, scope: !512)
!1672 = !DILocation(line: 803, column: 61, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !512, file: !376, discriminator: 2)
!1674 = !DILocation(line: 803, column: 122, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1667, file: !376, discriminator: 3)
!1676 = !DILocation(line: 803, column: 140, scope: !1667)
!1677 = !DILocation(line: 803, column: 150, scope: !1667)
!1678 = !DILocation(line: 803, column: 175, scope: !1667)
!1679 = !DILocation(line: 803, column: 106, scope: !1667)
!1680 = !DILocation(line: 803, column: 194, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !497, file: !376, discriminator: 4)
!1682 = !DILocation(line: 803, column: 194, scope: !512)
!1683 = !DILocation(line: 803, column: 194, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !512, file: !376, discriminator: 5)
!1685 = !DILocation(line: 804, column: 12, scope: !497)
!1686 = !DILocation(line: 804, column: 5, scope: !497)
!1687 = !DILocation(line: 805, column: 1, scope: !497)
!1688 = !DILocation(line: 808, column: 28, scope: !513)
!1689 = !DILocation(line: 809, column: 28, scope: !513)
!1690 = !DILocation(line: 811, column: 5, scope: !513)
!1691 = !DILocation(line: 811, column: 15, scope: !513)
!1692 = !DILocation(line: 811, column: 21, scope: !513)
!1693 = !DILocation(line: 812, column: 5, scope: !513)
!1694 = !DILocation(line: 812, column: 17, scope: !513)
!1695 = !DILocation(line: 814, column: 34, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !513, file: !376, line: 814, column: 9)
!1697 = !DILocation(line: 814, column: 10, scope: !1696)
!1698 = !DILocation(line: 814, column: 9, scope: !513)
!1699 = !DILocation(line: 816, column: 9, scope: !1696)
!1700 = !DILocation(line: 818, column: 32, scope: !513)
!1701 = !DILocation(line: 818, column: 11, scope: !513)
!1702 = !DILocation(line: 818, column: 9, scope: !513)
!1703 = !DILocation(line: 819, column: 9, scope: !523)
!1704 = !DILocation(line: 819, column: 13, scope: !523)
!1705 = !DILocation(line: 819, column: 27, scope: !523)
!1706 = !DILocation(line: 819, column: 64, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !523, file: !376, discriminator: 1)
!1708 = !DILocation(line: 819, column: 48, scope: !523)
!1709 = !DILocation(line: 819, column: 70, scope: !523)
!1710 = !DILocation(line: 819, column: 76, scope: !523)
!1711 = !DILocation(line: 819, column: 46, scope: !523)
!1712 = !DILocation(line: 819, column: 46, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !523, file: !376, discriminator: 2)
!1714 = !DILocation(line: 819, column: 119, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !523, file: !376, discriminator: 3)
!1716 = !DILocation(line: 819, column: 89, scope: !523)
!1717 = !DILocation(line: 819, column: 127, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !376, discriminator: 5)
!1719 = !DILexicalBlockFile(scope: !523, file: !376, discriminator: 4)
!1720 = !DILocation(line: 819, column: 9, scope: !513)
!1721 = !DILocation(line: 820, column: 9, scope: !522)
!1722 = !DILocation(line: 820, column: 14, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !521, file: !376, discriminator: 1)
!1724 = !DILocation(line: 820, column: 24, scope: !521)
!1725 = !DILocation(line: 820, column: 55, scope: !521)
!1726 = !DILocation(line: 820, column: 65, scope: !526)
!1727 = !DILocation(line: 820, column: 81, scope: !526)
!1728 = !DILocation(line: 820, column: 65, scope: !521)
!1729 = !DILocation(line: 820, column: 96, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !526, file: !376, discriminator: 2)
!1731 = !DILocation(line: 820, column: 101, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !525, file: !376, discriminator: 4)
!1733 = !DILocation(line: 820, column: 111, scope: !525)
!1734 = !DILocation(line: 820, column: 141, scope: !525)
!1735 = !DILocation(line: 820, column: 167, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !525, file: !376, line: 820, column: 164)
!1737 = !DILocation(line: 820, column: 184, scope: !1736)
!1738 = !DILocation(line: 820, column: 164, scope: !1736)
!1739 = !DILocation(line: 820, column: 194, scope: !1736)
!1740 = !DILocation(line: 820, column: 164, scope: !525)
!1741 = !DILocation(line: 820, column: 164, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !525, file: !376, discriminator: 5)
!1743 = !DILocation(line: 820, column: 225, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1736, file: !376, discriminator: 6)
!1745 = !DILocation(line: 820, column: 243, scope: !1736)
!1746 = !DILocation(line: 820, column: 253, scope: !1736)
!1747 = !DILocation(line: 820, column: 278, scope: !1736)
!1748 = !DILocation(line: 820, column: 209, scope: !1736)
!1749 = !DILocation(line: 820, column: 297, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !526, file: !376, discriminator: 7)
!1751 = !DILocation(line: 820, column: 297, scope: !525)
!1752 = !DILocation(line: 820, column: 297, scope: !1753)
!1753 = !DILexicalBlockFile(scope: !525, file: !376, discriminator: 8)
!1754 = !DILocation(line: 820, column: 297, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !525, file: !376, discriminator: 9)
!1756 = !DILocation(line: 820, column: 310, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !376, discriminator: 10)
!1758 = !DILexicalBlockFile(scope: !522, file: !376, discriminator: 3)
!1759 = !DILocation(line: 820, column: 310, scope: !521)
!1760 = !DILocation(line: 820, column: 310, scope: !1761)
!1761 = !DILexicalBlockFile(scope: !521, file: !376, discriminator: 11)
!1762 = !DILocation(line: 821, column: 9, scope: !522)
!1763 = !DILocation(line: 823, column: 44, scope: !513)
!1764 = !DILocation(line: 823, column: 49, scope: !513)
!1765 = !DILocation(line: 823, column: 21, scope: !513)
!1766 = !DILocation(line: 824, column: 69, scope: !513)
!1767 = !DILocation(line: 824, column: 51, scope: !513)
!1768 = !DILocation(line: 824, column: 76, scope: !513)
!1769 = !DILocation(line: 823, column: 9, scope: !513)
!1770 = !DILocation(line: 823, column: 7, scope: !513)
!1771 = !DILocation(line: 825, column: 5, scope: !513)
!1772 = !DILocation(line: 825, column: 10, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !528, file: !376, discriminator: 1)
!1774 = !DILocation(line: 825, column: 20, scope: !528)
!1775 = !DILocation(line: 825, column: 50, scope: !528)
!1776 = !DILocation(line: 825, column: 64, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !528, file: !376, line: 825, column: 61)
!1778 = !DILocation(line: 825, column: 81, scope: !1777)
!1779 = !DILocation(line: 825, column: 61, scope: !1777)
!1780 = !DILocation(line: 825, column: 91, scope: !1777)
!1781 = !DILocation(line: 825, column: 61, scope: !528)
!1782 = !DILocation(line: 825, column: 61, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !528, file: !376, discriminator: 2)
!1784 = !DILocation(line: 825, column: 122, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1777, file: !376, discriminator: 3)
!1786 = !DILocation(line: 825, column: 140, scope: !1777)
!1787 = !DILocation(line: 825, column: 150, scope: !1777)
!1788 = !DILocation(line: 825, column: 175, scope: !1777)
!1789 = !DILocation(line: 825, column: 106, scope: !1777)
!1790 = !DILocation(line: 825, column: 194, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !513, file: !376, discriminator: 4)
!1792 = !DILocation(line: 825, column: 194, scope: !528)
!1793 = !DILocation(line: 825, column: 194, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !528, file: !376, discriminator: 5)
!1795 = !DILocation(line: 826, column: 12, scope: !513)
!1796 = !DILocation(line: 826, column: 5, scope: !513)
!1797 = !DILocation(line: 827, column: 1, scope: !513)
!1798 = !DILocation(line: 303, column: 25, scope: !529)
!1799 = !DILocation(line: 304, column: 23, scope: !529)
!1800 = !DILocation(line: 306, column: 5, scope: !529)
!1801 = !DILocation(line: 306, column: 15, scope: !529)
!1802 = !DILocation(line: 307, column: 5, scope: !529)
!1803 = !DILocation(line: 307, column: 17, scope: !529)
!1804 = !DILocation(line: 308, column: 5, scope: !529)
!1805 = !DILocation(line: 308, column: 9, scope: !529)
!1806 = !DILocation(line: 309, column: 5, scope: !529)
!1807 = !DILocation(line: 309, column: 9, scope: !529)
!1808 = !DILocation(line: 310, column: 5, scope: !529)
!1809 = !DILocation(line: 310, column: 16, scope: !529)
!1810 = !DILocation(line: 311, column: 5, scope: !529)
!1811 = !DILocation(line: 311, column: 15, scope: !529)
!1812 = !DILocation(line: 313, column: 34, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !529, file: !376, line: 313, column: 9)
!1814 = !DILocation(line: 313, column: 10, scope: !1813)
!1815 = !DILocation(line: 313, column: 9, scope: !529)
!1816 = !DILocation(line: 315, column: 9, scope: !1813)
!1817 = !DILocation(line: 316, column: 21, scope: !529)
!1818 = !DILocation(line: 316, column: 14, scope: !529)
!1819 = !DILocation(line: 317, column: 50, scope: !529)
!1820 = !DILocation(line: 317, column: 60, scope: !529)
!1821 = !DILocation(line: 317, column: 65, scope: !529)
!1822 = !DILocation(line: 318, column: 53, scope: !529)
!1823 = !DILocation(line: 318, column: 53, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !529, file: !376, discriminator: 1)
!1825 = !DILocation(line: 318, column: 53, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !529, file: !376, discriminator: 2)
!1827 = !DILocation(line: 317, column: 15, scope: !529)
!1828 = !DILocation(line: 317, column: 13, scope: !529)
!1829 = !DILocation(line: 319, column: 5, scope: !529)
!1830 = !DILocation(line: 320, column: 9, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !529, file: !376, line: 320, column: 9)
!1832 = !DILocation(line: 320, column: 17, scope: !1831)
!1833 = !DILocation(line: 320, column: 9, scope: !529)
!1834 = !DILocation(line: 321, column: 9, scope: !1831)
!1835 = !DILocation(line: 322, column: 24, scope: !529)
!1836 = !DILocation(line: 322, column: 33, scope: !529)
!1837 = !DILocation(line: 322, column: 12, scope: !529)
!1838 = !DILocation(line: 322, column: 5, scope: !529)
!1839 = !DILocation(line: 323, column: 1, scope: !529)
!1840 = !DILocation(line: 326, column: 28, scope: !539)
!1841 = !DILocation(line: 327, column: 28, scope: !539)
!1842 = !DILocation(line: 329, column: 5, scope: !539)
!1843 = !DILocation(line: 329, column: 15, scope: !539)
!1844 = !DILocation(line: 330, column: 5, scope: !539)
!1845 = !DILocation(line: 330, column: 17, scope: !539)
!1846 = !DILocation(line: 331, column: 5, scope: !539)
!1847 = !DILocation(line: 331, column: 9, scope: !539)
!1848 = !DILocation(line: 332, column: 5, scope: !539)
!1849 = !DILocation(line: 332, column: 9, scope: !539)
!1850 = !DILocation(line: 333, column: 5, scope: !539)
!1851 = !DILocation(line: 333, column: 16, scope: !539)
!1852 = !DILocation(line: 334, column: 5, scope: !539)
!1853 = !DILocation(line: 334, column: 15, scope: !539)
!1854 = !DILocation(line: 336, column: 34, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !539, file: !376, line: 336, column: 9)
!1856 = !DILocation(line: 336, column: 10, scope: !1855)
!1857 = !DILocation(line: 336, column: 9, scope: !539)
!1858 = !DILocation(line: 338, column: 9, scope: !1855)
!1859 = !DILocation(line: 340, column: 21, scope: !539)
!1860 = !DILocation(line: 340, column: 14, scope: !539)
!1861 = !DILocation(line: 341, column: 50, scope: !539)
!1862 = !DILocation(line: 341, column: 60, scope: !539)
!1863 = !DILocation(line: 341, column: 65, scope: !539)
!1864 = !DILocation(line: 342, column: 21, scope: !539)
!1865 = !DILocation(line: 342, column: 21, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !539, file: !376, discriminator: 1)
!1867 = !DILocation(line: 342, column: 21, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !539, file: !376, discriminator: 2)
!1869 = !DILocation(line: 341, column: 15, scope: !539)
!1870 = !DILocation(line: 341, column: 13, scope: !539)
!1871 = !DILocation(line: 343, column: 5, scope: !539)
!1872 = !DILocation(line: 344, column: 9, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !539, file: !376, line: 344, column: 9)
!1874 = !DILocation(line: 344, column: 17, scope: !1873)
!1875 = !DILocation(line: 344, column: 9, scope: !539)
!1876 = !DILocation(line: 345, column: 9, scope: !1873)
!1877 = !DILocation(line: 346, column: 24, scope: !539)
!1878 = !DILocation(line: 346, column: 33, scope: !539)
!1879 = !DILocation(line: 346, column: 12, scope: !539)
!1880 = !DILocation(line: 346, column: 5, scope: !539)
!1881 = !DILocation(line: 347, column: 1, scope: !539)
!1882 = !DILocation(line: 350, column: 28, scope: !549)
!1883 = !DILocation(line: 351, column: 28, scope: !549)
!1884 = !DILocation(line: 353, column: 5, scope: !549)
!1885 = !DILocation(line: 353, column: 15, scope: !549)
!1886 = !DILocation(line: 354, column: 5, scope: !549)
!1887 = !DILocation(line: 354, column: 17, scope: !549)
!1888 = !DILocation(line: 355, column: 5, scope: !549)
!1889 = !DILocation(line: 355, column: 9, scope: !549)
!1890 = !DILocation(line: 356, column: 5, scope: !549)
!1891 = !DILocation(line: 356, column: 9, scope: !549)
!1892 = !DILocation(line: 357, column: 5, scope: !549)
!1893 = !DILocation(line: 357, column: 16, scope: !549)
!1894 = !DILocation(line: 358, column: 5, scope: !549)
!1895 = !DILocation(line: 358, column: 15, scope: !549)
!1896 = !DILocation(line: 360, column: 34, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !549, file: !376, line: 360, column: 9)
!1898 = !DILocation(line: 360, column: 10, scope: !1897)
!1899 = !DILocation(line: 360, column: 9, scope: !549)
!1900 = !DILocation(line: 362, column: 9, scope: !1897)
!1901 = !DILocation(line: 364, column: 21, scope: !549)
!1902 = !DILocation(line: 364, column: 14, scope: !549)
!1903 = !DILocation(line: 365, column: 50, scope: !549)
!1904 = !DILocation(line: 365, column: 60, scope: !549)
!1905 = !DILocation(line: 365, column: 65, scope: !549)
!1906 = !DILocation(line: 366, column: 21, scope: !549)
!1907 = !DILocation(line: 366, column: 21, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !549, file: !376, discriminator: 1)
!1909 = !DILocation(line: 366, column: 21, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !549, file: !376, discriminator: 2)
!1911 = !DILocation(line: 365, column: 15, scope: !549)
!1912 = !DILocation(line: 365, column: 13, scope: !549)
!1913 = !DILocation(line: 367, column: 5, scope: !549)
!1914 = !DILocation(line: 368, column: 9, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !549, file: !376, line: 368, column: 9)
!1916 = !DILocation(line: 368, column: 17, scope: !1915)
!1917 = !DILocation(line: 368, column: 9, scope: !549)
!1918 = !DILocation(line: 369, column: 9, scope: !1915)
!1919 = !DILocation(line: 370, column: 24, scope: !549)
!1920 = !DILocation(line: 370, column: 33, scope: !549)
!1921 = !DILocation(line: 370, column: 12, scope: !549)
!1922 = !DILocation(line: 370, column: 5, scope: !549)
!1923 = !DILocation(line: 371, column: 1, scope: !549)
!1924 = !DILocation(line: 382, column: 28, scope: !559)
!1925 = !DILocation(line: 383, column: 28, scope: !559)
!1926 = !DILocation(line: 385, column: 5, scope: !559)
!1927 = !DILocation(line: 385, column: 15, scope: !559)
!1928 = !DILocation(line: 386, column: 5, scope: !559)
!1929 = !DILocation(line: 386, column: 17, scope: !559)
!1930 = !DILocation(line: 387, column: 5, scope: !559)
!1931 = !DILocation(line: 387, column: 9, scope: !559)
!1932 = !DILocation(line: 388, column: 5, scope: !559)
!1933 = !DILocation(line: 388, column: 15, scope: !559)
!1934 = !DILocation(line: 388, column: 25, scope: !559)
!1935 = !DILocation(line: 389, column: 5, scope: !559)
!1936 = !DILocation(line: 389, column: 9, scope: !559)
!1937 = !DILocation(line: 390, column: 5, scope: !559)
!1938 = !DILocation(line: 390, column: 16, scope: !559)
!1939 = !DILocation(line: 392, column: 34, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !559, file: !376, line: 392, column: 9)
!1941 = !DILocation(line: 392, column: 10, scope: !1940)
!1942 = !DILocation(line: 392, column: 9, scope: !559)
!1943 = !DILocation(line: 394, column: 9, scope: !1940)
!1944 = !DILocation(line: 395, column: 21, scope: !559)
!1945 = !DILocation(line: 395, column: 14, scope: !559)
!1946 = !DILocation(line: 396, column: 50, scope: !559)
!1947 = !DILocation(line: 396, column: 60, scope: !559)
!1948 = !DILocation(line: 396, column: 65, scope: !559)
!1949 = !DILocation(line: 397, column: 53, scope: !559)
!1950 = !DILocation(line: 397, column: 53, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !559, file: !376, discriminator: 1)
!1952 = !DILocation(line: 397, column: 53, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !559, file: !376, discriminator: 2)
!1954 = !DILocation(line: 396, column: 15, scope: !559)
!1955 = !DILocation(line: 396, column: 13, scope: !559)
!1956 = !DILocation(line: 398, column: 5, scope: !559)
!1957 = !DILocation(line: 399, column: 9, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !559, file: !376, line: 399, column: 9)
!1959 = !DILocation(line: 399, column: 17, scope: !1958)
!1960 = !DILocation(line: 399, column: 9, scope: !559)
!1961 = !DILocation(line: 400, column: 9, scope: !1958)
!1962 = !DILocation(line: 401, column: 41, scope: !559)
!1963 = !DILocation(line: 401, column: 50, scope: !559)
!1964 = !DILocation(line: 401, column: 60, scope: !559)
!1965 = !DILocation(line: 401, column: 13, scope: !559)
!1966 = !DILocation(line: 401, column: 11, scope: !559)
!1967 = !DILocation(line: 402, column: 5, scope: !559)
!1968 = !DILocation(line: 402, column: 10, scope: !1969)
!1969 = !DILexicalBlockFile(scope: !571, file: !376, discriminator: 1)
!1970 = !DILocation(line: 402, column: 20, scope: !571)
!1971 = !DILocation(line: 402, column: 50, scope: !571)
!1972 = !DILocation(line: 402, column: 68, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !571, file: !376, line: 402, column: 65)
!1974 = !DILocation(line: 402, column: 85, scope: !1973)
!1975 = !DILocation(line: 402, column: 65, scope: !1973)
!1976 = !DILocation(line: 402, column: 95, scope: !1973)
!1977 = !DILocation(line: 402, column: 65, scope: !571)
!1978 = !DILocation(line: 402, column: 65, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !571, file: !376, discriminator: 2)
!1980 = !DILocation(line: 402, column: 126, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1973, file: !376, discriminator: 3)
!1982 = !DILocation(line: 402, column: 144, scope: !1973)
!1983 = !DILocation(line: 402, column: 154, scope: !1973)
!1984 = !DILocation(line: 402, column: 179, scope: !1973)
!1985 = !DILocation(line: 402, column: 110, scope: !1973)
!1986 = !DILocation(line: 402, column: 198, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !559, file: !376, discriminator: 4)
!1988 = !DILocation(line: 402, column: 198, scope: !571)
!1989 = !DILocation(line: 402, column: 198, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !571, file: !376, discriminator: 5)
!1991 = !DILocation(line: 403, column: 12, scope: !559)
!1992 = !DILocation(line: 403, column: 5, scope: !559)
!1993 = !DILocation(line: 404, column: 1, scope: !559)
!1994 = !DILocation(line: 837, column: 25, scope: !572)
!1995 = !DILocation(line: 838, column: 23, scope: !572)
!1996 = !DILocation(line: 840, column: 5, scope: !572)
!1997 = !DILocation(line: 840, column: 15, scope: !572)
!1998 = !DILocation(line: 840, column: 21, scope: !572)
!1999 = !DILocation(line: 841, column: 5, scope: !572)
!2000 = !DILocation(line: 841, column: 17, scope: !572)
!2001 = !DILocation(line: 842, column: 5, scope: !572)
!2002 = !DILocation(line: 842, column: 9, scope: !572)
!2003 = !DILocation(line: 844, column: 34, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !572, file: !376, line: 844, column: 9)
!2005 = !DILocation(line: 844, column: 10, scope: !2004)
!2006 = !DILocation(line: 844, column: 9, scope: !572)
!2007 = !DILocation(line: 846, column: 9, scope: !2004)
!2008 = !DILocation(line: 848, column: 32, scope: !572)
!2009 = !DILocation(line: 848, column: 11, scope: !572)
!2010 = !DILocation(line: 848, column: 9, scope: !572)
!2011 = !DILocation(line: 849, column: 9, scope: !583)
!2012 = !DILocation(line: 849, column: 13, scope: !583)
!2013 = !DILocation(line: 849, column: 27, scope: !583)
!2014 = !DILocation(line: 849, column: 64, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !583, file: !376, discriminator: 1)
!2016 = !DILocation(line: 849, column: 48, scope: !583)
!2017 = !DILocation(line: 849, column: 70, scope: !583)
!2018 = !DILocation(line: 849, column: 76, scope: !583)
!2019 = !DILocation(line: 849, column: 46, scope: !583)
!2020 = !DILocation(line: 849, column: 46, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !583, file: !376, discriminator: 2)
!2022 = !DILocation(line: 849, column: 119, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !583, file: !376, discriminator: 3)
!2024 = !DILocation(line: 849, column: 89, scope: !583)
!2025 = !DILocation(line: 849, column: 127, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !2027, file: !376, discriminator: 5)
!2027 = !DILexicalBlockFile(scope: !583, file: !376, discriminator: 4)
!2028 = !DILocation(line: 849, column: 9, scope: !572)
!2029 = !DILocation(line: 850, column: 9, scope: !582)
!2030 = !DILocation(line: 850, column: 14, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !581, file: !376, discriminator: 1)
!2032 = !DILocation(line: 850, column: 24, scope: !581)
!2033 = !DILocation(line: 850, column: 55, scope: !581)
!2034 = !DILocation(line: 850, column: 65, scope: !586)
!2035 = !DILocation(line: 850, column: 81, scope: !586)
!2036 = !DILocation(line: 850, column: 65, scope: !581)
!2037 = !DILocation(line: 850, column: 96, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !586, file: !376, discriminator: 2)
!2039 = !DILocation(line: 850, column: 101, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !585, file: !376, discriminator: 4)
!2041 = !DILocation(line: 850, column: 111, scope: !585)
!2042 = !DILocation(line: 850, column: 141, scope: !585)
!2043 = !DILocation(line: 850, column: 167, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !585, file: !376, line: 850, column: 164)
!2045 = !DILocation(line: 850, column: 184, scope: !2044)
!2046 = !DILocation(line: 850, column: 164, scope: !2044)
!2047 = !DILocation(line: 850, column: 194, scope: !2044)
!2048 = !DILocation(line: 850, column: 164, scope: !585)
!2049 = !DILocation(line: 850, column: 164, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !585, file: !376, discriminator: 5)
!2051 = !DILocation(line: 850, column: 225, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2044, file: !376, discriminator: 6)
!2053 = !DILocation(line: 850, column: 243, scope: !2044)
!2054 = !DILocation(line: 850, column: 253, scope: !2044)
!2055 = !DILocation(line: 850, column: 278, scope: !2044)
!2056 = !DILocation(line: 850, column: 209, scope: !2044)
!2057 = !DILocation(line: 850, column: 297, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !586, file: !376, discriminator: 7)
!2059 = !DILocation(line: 850, column: 297, scope: !585)
!2060 = !DILocation(line: 850, column: 297, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !585, file: !376, discriminator: 8)
!2062 = !DILocation(line: 850, column: 297, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !585, file: !376, discriminator: 9)
!2064 = !DILocation(line: 850, column: 310, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !376, discriminator: 10)
!2066 = !DILexicalBlockFile(scope: !582, file: !376, discriminator: 3)
!2067 = !DILocation(line: 850, column: 310, scope: !581)
!2068 = !DILocation(line: 850, column: 310, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !581, file: !376, discriminator: 11)
!2070 = !DILocation(line: 851, column: 9, scope: !582)
!2071 = !DILocation(line: 853, column: 44, scope: !572)
!2072 = !DILocation(line: 853, column: 49, scope: !572)
!2073 = !DILocation(line: 853, column: 57, scope: !572)
!2074 = !DILocation(line: 853, column: 21, scope: !572)
!2075 = !DILocation(line: 854, column: 69, scope: !572)
!2076 = !DILocation(line: 854, column: 51, scope: !572)
!2077 = !DILocation(line: 854, column: 76, scope: !572)
!2078 = !DILocation(line: 853, column: 9, scope: !572)
!2079 = !DILocation(line: 853, column: 7, scope: !572)
!2080 = !DILocation(line: 855, column: 5, scope: !572)
!2081 = !DILocation(line: 855, column: 10, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !588, file: !376, discriminator: 1)
!2083 = !DILocation(line: 855, column: 20, scope: !588)
!2084 = !DILocation(line: 855, column: 50, scope: !588)
!2085 = !DILocation(line: 855, column: 64, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !588, file: !376, line: 855, column: 61)
!2087 = !DILocation(line: 855, column: 81, scope: !2086)
!2088 = !DILocation(line: 855, column: 61, scope: !2086)
!2089 = !DILocation(line: 855, column: 91, scope: !2086)
!2090 = !DILocation(line: 855, column: 61, scope: !588)
!2091 = !DILocation(line: 855, column: 61, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !588, file: !376, discriminator: 2)
!2093 = !DILocation(line: 855, column: 122, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2086, file: !376, discriminator: 3)
!2095 = !DILocation(line: 855, column: 140, scope: !2086)
!2096 = !DILocation(line: 855, column: 150, scope: !2086)
!2097 = !DILocation(line: 855, column: 175, scope: !2086)
!2098 = !DILocation(line: 855, column: 106, scope: !2086)
!2099 = !DILocation(line: 855, column: 194, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !572, file: !376, discriminator: 4)
!2101 = !DILocation(line: 855, column: 194, scope: !588)
!2102 = !DILocation(line: 855, column: 194, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !588, file: !376, discriminator: 5)
!2104 = !DILocation(line: 856, column: 12, scope: !572)
!2105 = !DILocation(line: 856, column: 5, scope: !572)
!2106 = !DILocation(line: 857, column: 1, scope: !572)
!2107 = !DILocation(line: 860, column: 28, scope: !589)
!2108 = !DILocation(line: 861, column: 28, scope: !589)
!2109 = !DILocation(line: 863, column: 5, scope: !589)
!2110 = !DILocation(line: 863, column: 15, scope: !589)
!2111 = !DILocation(line: 863, column: 21, scope: !589)
!2112 = !DILocation(line: 864, column: 5, scope: !589)
!2113 = !DILocation(line: 864, column: 17, scope: !589)
!2114 = !DILocation(line: 866, column: 34, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !589, file: !376, line: 866, column: 9)
!2116 = !DILocation(line: 866, column: 10, scope: !2115)
!2117 = !DILocation(line: 866, column: 9, scope: !589)
!2118 = !DILocation(line: 868, column: 9, scope: !2115)
!2119 = !DILocation(line: 870, column: 32, scope: !589)
!2120 = !DILocation(line: 870, column: 11, scope: !589)
!2121 = !DILocation(line: 870, column: 9, scope: !589)
!2122 = !DILocation(line: 871, column: 9, scope: !599)
!2123 = !DILocation(line: 871, column: 13, scope: !599)
!2124 = !DILocation(line: 871, column: 27, scope: !599)
!2125 = !DILocation(line: 871, column: 64, scope: !2126)
!2126 = !DILexicalBlockFile(scope: !599, file: !376, discriminator: 1)
!2127 = !DILocation(line: 871, column: 48, scope: !599)
!2128 = !DILocation(line: 871, column: 70, scope: !599)
!2129 = !DILocation(line: 871, column: 76, scope: !599)
!2130 = !DILocation(line: 871, column: 46, scope: !599)
!2131 = !DILocation(line: 871, column: 46, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !599, file: !376, discriminator: 2)
!2133 = !DILocation(line: 871, column: 119, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !599, file: !376, discriminator: 3)
!2135 = !DILocation(line: 871, column: 89, scope: !599)
!2136 = !DILocation(line: 871, column: 127, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2138, file: !376, discriminator: 5)
!2138 = !DILexicalBlockFile(scope: !599, file: !376, discriminator: 4)
!2139 = !DILocation(line: 871, column: 9, scope: !589)
!2140 = !DILocation(line: 872, column: 9, scope: !598)
!2141 = !DILocation(line: 872, column: 14, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !597, file: !376, discriminator: 1)
!2143 = !DILocation(line: 872, column: 24, scope: !597)
!2144 = !DILocation(line: 872, column: 55, scope: !597)
!2145 = !DILocation(line: 872, column: 65, scope: !602)
!2146 = !DILocation(line: 872, column: 81, scope: !602)
!2147 = !DILocation(line: 872, column: 65, scope: !597)
!2148 = !DILocation(line: 872, column: 96, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !602, file: !376, discriminator: 2)
!2150 = !DILocation(line: 872, column: 101, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !601, file: !376, discriminator: 4)
!2152 = !DILocation(line: 872, column: 111, scope: !601)
!2153 = !DILocation(line: 872, column: 141, scope: !601)
!2154 = !DILocation(line: 872, column: 167, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !601, file: !376, line: 872, column: 164)
!2156 = !DILocation(line: 872, column: 184, scope: !2155)
!2157 = !DILocation(line: 872, column: 164, scope: !2155)
!2158 = !DILocation(line: 872, column: 194, scope: !2155)
!2159 = !DILocation(line: 872, column: 164, scope: !601)
!2160 = !DILocation(line: 872, column: 164, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !601, file: !376, discriminator: 5)
!2162 = !DILocation(line: 872, column: 225, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2155, file: !376, discriminator: 6)
!2164 = !DILocation(line: 872, column: 243, scope: !2155)
!2165 = !DILocation(line: 872, column: 253, scope: !2155)
!2166 = !DILocation(line: 872, column: 278, scope: !2155)
!2167 = !DILocation(line: 872, column: 209, scope: !2155)
!2168 = !DILocation(line: 872, column: 297, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !602, file: !376, discriminator: 7)
!2170 = !DILocation(line: 872, column: 297, scope: !601)
!2171 = !DILocation(line: 872, column: 297, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !601, file: !376, discriminator: 8)
!2173 = !DILocation(line: 872, column: 297, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !601, file: !376, discriminator: 9)
!2175 = !DILocation(line: 872, column: 310, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2177, file: !376, discriminator: 10)
!2177 = !DILexicalBlockFile(scope: !598, file: !376, discriminator: 3)
!2178 = !DILocation(line: 872, column: 310, scope: !597)
!2179 = !DILocation(line: 872, column: 310, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !597, file: !376, discriminator: 11)
!2181 = !DILocation(line: 873, column: 9, scope: !598)
!2182 = !DILocation(line: 875, column: 44, scope: !589)
!2183 = !DILocation(line: 875, column: 49, scope: !589)
!2184 = !DILocation(line: 875, column: 21, scope: !589)
!2185 = !DILocation(line: 876, column: 69, scope: !589)
!2186 = !DILocation(line: 876, column: 51, scope: !589)
!2187 = !DILocation(line: 876, column: 76, scope: !589)
!2188 = !DILocation(line: 875, column: 9, scope: !589)
!2189 = !DILocation(line: 875, column: 7, scope: !589)
!2190 = !DILocation(line: 877, column: 5, scope: !589)
!2191 = !DILocation(line: 877, column: 10, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !604, file: !376, discriminator: 1)
!2193 = !DILocation(line: 877, column: 20, scope: !604)
!2194 = !DILocation(line: 877, column: 50, scope: !604)
!2195 = !DILocation(line: 877, column: 64, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !604, file: !376, line: 877, column: 61)
!2197 = !DILocation(line: 877, column: 81, scope: !2196)
!2198 = !DILocation(line: 877, column: 61, scope: !2196)
!2199 = !DILocation(line: 877, column: 91, scope: !2196)
!2200 = !DILocation(line: 877, column: 61, scope: !604)
!2201 = !DILocation(line: 877, column: 61, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !604, file: !376, discriminator: 2)
!2203 = !DILocation(line: 877, column: 122, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2196, file: !376, discriminator: 3)
!2205 = !DILocation(line: 877, column: 140, scope: !2196)
!2206 = !DILocation(line: 877, column: 150, scope: !2196)
!2207 = !DILocation(line: 877, column: 175, scope: !2196)
!2208 = !DILocation(line: 877, column: 106, scope: !2196)
!2209 = !DILocation(line: 877, column: 194, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !589, file: !376, discriminator: 4)
!2211 = !DILocation(line: 877, column: 194, scope: !604)
!2212 = !DILocation(line: 877, column: 194, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !604, file: !376, discriminator: 5)
!2214 = !DILocation(line: 878, column: 12, scope: !589)
!2215 = !DILocation(line: 878, column: 5, scope: !589)
!2216 = !DILocation(line: 879, column: 1, scope: !589)
!2217 = !DILocation(line: 882, column: 28, scope: !605)
!2218 = !DILocation(line: 883, column: 28, scope: !605)
!2219 = !DILocation(line: 885, column: 5, scope: !605)
!2220 = !DILocation(line: 885, column: 15, scope: !605)
!2221 = !DILocation(line: 885, column: 21, scope: !605)
!2222 = !DILocation(line: 886, column: 5, scope: !605)
!2223 = !DILocation(line: 886, column: 17, scope: !605)
!2224 = !DILocation(line: 888, column: 34, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !605, file: !376, line: 888, column: 9)
!2226 = !DILocation(line: 888, column: 10, scope: !2225)
!2227 = !DILocation(line: 888, column: 9, scope: !605)
!2228 = !DILocation(line: 890, column: 9, scope: !2225)
!2229 = !DILocation(line: 892, column: 32, scope: !605)
!2230 = !DILocation(line: 892, column: 11, scope: !605)
!2231 = !DILocation(line: 892, column: 9, scope: !605)
!2232 = !DILocation(line: 893, column: 9, scope: !615)
!2233 = !DILocation(line: 893, column: 13, scope: !615)
!2234 = !DILocation(line: 893, column: 27, scope: !615)
!2235 = !DILocation(line: 893, column: 64, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !615, file: !376, discriminator: 1)
!2237 = !DILocation(line: 893, column: 48, scope: !615)
!2238 = !DILocation(line: 893, column: 70, scope: !615)
!2239 = !DILocation(line: 893, column: 76, scope: !615)
!2240 = !DILocation(line: 893, column: 46, scope: !615)
!2241 = !DILocation(line: 893, column: 46, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !615, file: !376, discriminator: 2)
!2243 = !DILocation(line: 893, column: 119, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !615, file: !376, discriminator: 3)
!2245 = !DILocation(line: 893, column: 89, scope: !615)
!2246 = !DILocation(line: 893, column: 127, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2248, file: !376, discriminator: 5)
!2248 = !DILexicalBlockFile(scope: !615, file: !376, discriminator: 4)
!2249 = !DILocation(line: 893, column: 9, scope: !605)
!2250 = !DILocation(line: 894, column: 9, scope: !614)
!2251 = !DILocation(line: 894, column: 14, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !613, file: !376, discriminator: 1)
!2253 = !DILocation(line: 894, column: 24, scope: !613)
!2254 = !DILocation(line: 894, column: 55, scope: !613)
!2255 = !DILocation(line: 894, column: 65, scope: !618)
!2256 = !DILocation(line: 894, column: 81, scope: !618)
!2257 = !DILocation(line: 894, column: 65, scope: !613)
!2258 = !DILocation(line: 894, column: 96, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !618, file: !376, discriminator: 2)
!2260 = !DILocation(line: 894, column: 101, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !617, file: !376, discriminator: 4)
!2262 = !DILocation(line: 894, column: 111, scope: !617)
!2263 = !DILocation(line: 894, column: 141, scope: !617)
!2264 = !DILocation(line: 894, column: 167, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !617, file: !376, line: 894, column: 164)
!2266 = !DILocation(line: 894, column: 184, scope: !2265)
!2267 = !DILocation(line: 894, column: 164, scope: !2265)
!2268 = !DILocation(line: 894, column: 194, scope: !2265)
!2269 = !DILocation(line: 894, column: 164, scope: !617)
!2270 = !DILocation(line: 894, column: 164, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !617, file: !376, discriminator: 5)
!2272 = !DILocation(line: 894, column: 225, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2265, file: !376, discriminator: 6)
!2274 = !DILocation(line: 894, column: 243, scope: !2265)
!2275 = !DILocation(line: 894, column: 253, scope: !2265)
!2276 = !DILocation(line: 894, column: 278, scope: !2265)
!2277 = !DILocation(line: 894, column: 209, scope: !2265)
!2278 = !DILocation(line: 894, column: 297, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !618, file: !376, discriminator: 7)
!2280 = !DILocation(line: 894, column: 297, scope: !617)
!2281 = !DILocation(line: 894, column: 297, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !617, file: !376, discriminator: 8)
!2283 = !DILocation(line: 894, column: 297, scope: !2284)
!2284 = !DILexicalBlockFile(scope: !617, file: !376, discriminator: 9)
!2285 = !DILocation(line: 894, column: 310, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !376, discriminator: 10)
!2287 = !DILexicalBlockFile(scope: !614, file: !376, discriminator: 3)
!2288 = !DILocation(line: 894, column: 310, scope: !613)
!2289 = !DILocation(line: 894, column: 310, scope: !2290)
!2290 = !DILexicalBlockFile(scope: !613, file: !376, discriminator: 11)
!2291 = !DILocation(line: 895, column: 9, scope: !614)
!2292 = !DILocation(line: 897, column: 44, scope: !605)
!2293 = !DILocation(line: 897, column: 49, scope: !605)
!2294 = !DILocation(line: 897, column: 21, scope: !605)
!2295 = !DILocation(line: 898, column: 69, scope: !605)
!2296 = !DILocation(line: 898, column: 51, scope: !605)
!2297 = !DILocation(line: 898, column: 76, scope: !605)
!2298 = !DILocation(line: 897, column: 9, scope: !605)
!2299 = !DILocation(line: 897, column: 7, scope: !605)
!2300 = !DILocation(line: 899, column: 5, scope: !605)
!2301 = !DILocation(line: 899, column: 10, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !620, file: !376, discriminator: 1)
!2303 = !DILocation(line: 899, column: 20, scope: !620)
!2304 = !DILocation(line: 899, column: 50, scope: !620)
!2305 = !DILocation(line: 899, column: 64, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !620, file: !376, line: 899, column: 61)
!2307 = !DILocation(line: 899, column: 81, scope: !2306)
!2308 = !DILocation(line: 899, column: 61, scope: !2306)
!2309 = !DILocation(line: 899, column: 91, scope: !2306)
!2310 = !DILocation(line: 899, column: 61, scope: !620)
!2311 = !DILocation(line: 899, column: 61, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !620, file: !376, discriminator: 2)
!2313 = !DILocation(line: 899, column: 122, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2306, file: !376, discriminator: 3)
!2315 = !DILocation(line: 899, column: 140, scope: !2306)
!2316 = !DILocation(line: 899, column: 150, scope: !2306)
!2317 = !DILocation(line: 899, column: 175, scope: !2306)
!2318 = !DILocation(line: 899, column: 106, scope: !2306)
!2319 = !DILocation(line: 899, column: 194, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !605, file: !376, discriminator: 4)
!2321 = !DILocation(line: 899, column: 194, scope: !620)
!2322 = !DILocation(line: 899, column: 194, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !620, file: !376, discriminator: 5)
!2324 = !DILocation(line: 900, column: 12, scope: !605)
!2325 = !DILocation(line: 900, column: 5, scope: !605)
!2326 = !DILocation(line: 901, column: 1, scope: !605)
!2327 = !DILocation(line: 407, column: 25, scope: !621)
!2328 = !DILocation(line: 408, column: 23, scope: !621)
!2329 = !DILocation(line: 410, column: 5, scope: !621)
!2330 = !DILocation(line: 410, column: 15, scope: !621)
!2331 = !DILocation(line: 411, column: 5, scope: !621)
!2332 = !DILocation(line: 411, column: 17, scope: !621)
!2333 = !DILocation(line: 412, column: 5, scope: !621)
!2334 = !DILocation(line: 412, column: 9, scope: !621)
!2335 = !DILocation(line: 413, column: 5, scope: !621)
!2336 = !DILocation(line: 413, column: 9, scope: !621)
!2337 = !DILocation(line: 414, column: 5, scope: !621)
!2338 = !DILocation(line: 414, column: 16, scope: !621)
!2339 = !DILocation(line: 415, column: 5, scope: !621)
!2340 = !DILocation(line: 415, column: 15, scope: !621)
!2341 = !DILocation(line: 417, column: 34, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !621, file: !376, line: 417, column: 9)
!2343 = !DILocation(line: 417, column: 10, scope: !2342)
!2344 = !DILocation(line: 417, column: 9, scope: !621)
!2345 = !DILocation(line: 419, column: 9, scope: !2342)
!2346 = !DILocation(line: 420, column: 21, scope: !621)
!2347 = !DILocation(line: 420, column: 14, scope: !621)
!2348 = !DILocation(line: 421, column: 50, scope: !621)
!2349 = !DILocation(line: 421, column: 60, scope: !621)
!2350 = !DILocation(line: 421, column: 65, scope: !621)
!2351 = !DILocation(line: 422, column: 53, scope: !621)
!2352 = !DILocation(line: 422, column: 53, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !621, file: !376, discriminator: 1)
!2354 = !DILocation(line: 422, column: 53, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !621, file: !376, discriminator: 2)
!2356 = !DILocation(line: 421, column: 15, scope: !621)
!2357 = !DILocation(line: 421, column: 13, scope: !621)
!2358 = !DILocation(line: 423, column: 5, scope: !621)
!2359 = !DILocation(line: 424, column: 9, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !621, file: !376, line: 424, column: 9)
!2361 = !DILocation(line: 424, column: 17, scope: !2360)
!2362 = !DILocation(line: 424, column: 9, scope: !621)
!2363 = !DILocation(line: 425, column: 9, scope: !2360)
!2364 = !DILocation(line: 426, column: 24, scope: !621)
!2365 = !DILocation(line: 426, column: 33, scope: !621)
!2366 = !DILocation(line: 426, column: 12, scope: !621)
!2367 = !DILocation(line: 426, column: 5, scope: !621)
!2368 = !DILocation(line: 427, column: 1, scope: !621)
!2369 = !DILocation(line: 430, column: 28, scope: !631)
!2370 = !DILocation(line: 431, column: 28, scope: !631)
!2371 = !DILocation(line: 433, column: 5, scope: !631)
!2372 = !DILocation(line: 433, column: 15, scope: !631)
!2373 = !DILocation(line: 434, column: 5, scope: !631)
!2374 = !DILocation(line: 434, column: 17, scope: !631)
!2375 = !DILocation(line: 435, column: 5, scope: !631)
!2376 = !DILocation(line: 435, column: 9, scope: !631)
!2377 = !DILocation(line: 436, column: 5, scope: !631)
!2378 = !DILocation(line: 436, column: 9, scope: !631)
!2379 = !DILocation(line: 437, column: 5, scope: !631)
!2380 = !DILocation(line: 437, column: 16, scope: !631)
!2381 = !DILocation(line: 438, column: 5, scope: !631)
!2382 = !DILocation(line: 438, column: 15, scope: !631)
!2383 = !DILocation(line: 440, column: 34, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !631, file: !376, line: 440, column: 9)
!2385 = !DILocation(line: 440, column: 10, scope: !2384)
!2386 = !DILocation(line: 440, column: 9, scope: !631)
!2387 = !DILocation(line: 442, column: 9, scope: !2384)
!2388 = !DILocation(line: 443, column: 21, scope: !631)
!2389 = !DILocation(line: 443, column: 14, scope: !631)
!2390 = !DILocation(line: 444, column: 50, scope: !631)
!2391 = !DILocation(line: 444, column: 60, scope: !631)
!2392 = !DILocation(line: 444, column: 65, scope: !631)
!2393 = !DILocation(line: 445, column: 53, scope: !631)
!2394 = !DILocation(line: 445, column: 53, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !631, file: !376, discriminator: 1)
!2396 = !DILocation(line: 445, column: 53, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !631, file: !376, discriminator: 2)
!2398 = !DILocation(line: 444, column: 15, scope: !631)
!2399 = !DILocation(line: 444, column: 13, scope: !631)
!2400 = !DILocation(line: 446, column: 5, scope: !631)
!2401 = !DILocation(line: 447, column: 9, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !631, file: !376, line: 447, column: 9)
!2403 = !DILocation(line: 447, column: 17, scope: !2402)
!2404 = !DILocation(line: 447, column: 9, scope: !631)
!2405 = !DILocation(line: 448, column: 9, scope: !2402)
!2406 = !DILocation(line: 449, column: 24, scope: !631)
!2407 = !DILocation(line: 449, column: 33, scope: !631)
!2408 = !DILocation(line: 449, column: 12, scope: !631)
!2409 = !DILocation(line: 449, column: 5, scope: !631)
!2410 = !DILocation(line: 450, column: 1, scope: !631)
!2411 = !DILocation(line: 453, column: 28, scope: !641)
!2412 = !DILocation(line: 454, column: 28, scope: !641)
!2413 = !DILocation(line: 456, column: 5, scope: !641)
!2414 = !DILocation(line: 456, column: 15, scope: !641)
!2415 = !DILocation(line: 457, column: 5, scope: !641)
!2416 = !DILocation(line: 457, column: 17, scope: !641)
!2417 = !DILocation(line: 458, column: 5, scope: !641)
!2418 = !DILocation(line: 458, column: 9, scope: !641)
!2419 = !DILocation(line: 459, column: 5, scope: !641)
!2420 = !DILocation(line: 459, column: 9, scope: !641)
!2421 = !DILocation(line: 460, column: 5, scope: !641)
!2422 = !DILocation(line: 460, column: 16, scope: !641)
!2423 = !DILocation(line: 461, column: 5, scope: !641)
!2424 = !DILocation(line: 461, column: 15, scope: !641)
!2425 = !DILocation(line: 463, column: 34, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !641, file: !376, line: 463, column: 9)
!2427 = !DILocation(line: 463, column: 10, scope: !2426)
!2428 = !DILocation(line: 463, column: 9, scope: !641)
!2429 = !DILocation(line: 465, column: 9, scope: !2426)
!2430 = !DILocation(line: 466, column: 21, scope: !641)
!2431 = !DILocation(line: 466, column: 14, scope: !641)
!2432 = !DILocation(line: 467, column: 50, scope: !641)
!2433 = !DILocation(line: 467, column: 60, scope: !641)
!2434 = !DILocation(line: 467, column: 65, scope: !641)
!2435 = !DILocation(line: 468, column: 53, scope: !641)
!2436 = !DILocation(line: 468, column: 53, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !641, file: !376, discriminator: 1)
!2438 = !DILocation(line: 468, column: 53, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !641, file: !376, discriminator: 2)
!2440 = !DILocation(line: 467, column: 15, scope: !641)
!2441 = !DILocation(line: 467, column: 13, scope: !641)
!2442 = !DILocation(line: 469, column: 5, scope: !641)
!2443 = !DILocation(line: 470, column: 9, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !641, file: !376, line: 470, column: 9)
!2445 = !DILocation(line: 470, column: 17, scope: !2444)
!2446 = !DILocation(line: 470, column: 9, scope: !641)
!2447 = !DILocation(line: 471, column: 9, scope: !2444)
!2448 = !DILocation(line: 472, column: 24, scope: !641)
!2449 = !DILocation(line: 472, column: 33, scope: !641)
!2450 = !DILocation(line: 472, column: 12, scope: !641)
!2451 = !DILocation(line: 472, column: 5, scope: !641)
!2452 = !DILocation(line: 473, column: 1, scope: !641)
!2453 = !DILocation(line: 484, column: 28, scope: !651)
!2454 = !DILocation(line: 485, column: 28, scope: !651)
!2455 = !DILocation(line: 487, column: 5, scope: !651)
!2456 = !DILocation(line: 487, column: 15, scope: !651)
!2457 = !DILocation(line: 488, column: 5, scope: !651)
!2458 = !DILocation(line: 488, column: 17, scope: !651)
!2459 = !DILocation(line: 489, column: 5, scope: !651)
!2460 = !DILocation(line: 489, column: 9, scope: !651)
!2461 = !DILocation(line: 490, column: 5, scope: !651)
!2462 = !DILocation(line: 490, column: 15, scope: !651)
!2463 = !DILocation(line: 490, column: 25, scope: !651)
!2464 = !DILocation(line: 491, column: 5, scope: !651)
!2465 = !DILocation(line: 491, column: 9, scope: !651)
!2466 = !DILocation(line: 492, column: 5, scope: !651)
!2467 = !DILocation(line: 492, column: 16, scope: !651)
!2468 = !DILocation(line: 494, column: 34, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !651, file: !376, line: 494, column: 9)
!2470 = !DILocation(line: 494, column: 10, scope: !2469)
!2471 = !DILocation(line: 494, column: 9, scope: !651)
!2472 = !DILocation(line: 496, column: 9, scope: !2469)
!2473 = !DILocation(line: 497, column: 21, scope: !651)
!2474 = !DILocation(line: 497, column: 14, scope: !651)
!2475 = !DILocation(line: 498, column: 50, scope: !651)
!2476 = !DILocation(line: 498, column: 60, scope: !651)
!2477 = !DILocation(line: 498, column: 65, scope: !651)
!2478 = !DILocation(line: 499, column: 53, scope: !651)
!2479 = !DILocation(line: 499, column: 53, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !651, file: !376, discriminator: 1)
!2481 = !DILocation(line: 499, column: 53, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !651, file: !376, discriminator: 2)
!2483 = !DILocation(line: 498, column: 15, scope: !651)
!2484 = !DILocation(line: 498, column: 13, scope: !651)
!2485 = !DILocation(line: 500, column: 5, scope: !651)
!2486 = !DILocation(line: 501, column: 9, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !651, file: !376, line: 501, column: 9)
!2488 = !DILocation(line: 501, column: 17, scope: !2487)
!2489 = !DILocation(line: 501, column: 9, scope: !651)
!2490 = !DILocation(line: 502, column: 9, scope: !2487)
!2491 = !DILocation(line: 503, column: 41, scope: !651)
!2492 = !DILocation(line: 503, column: 50, scope: !651)
!2493 = !DILocation(line: 503, column: 60, scope: !651)
!2494 = !DILocation(line: 503, column: 13, scope: !651)
!2495 = !DILocation(line: 503, column: 11, scope: !651)
!2496 = !DILocation(line: 504, column: 5, scope: !651)
!2497 = !DILocation(line: 504, column: 10, scope: !2498)
!2498 = !DILexicalBlockFile(scope: !663, file: !376, discriminator: 1)
!2499 = !DILocation(line: 504, column: 20, scope: !663)
!2500 = !DILocation(line: 504, column: 50, scope: !663)
!2501 = !DILocation(line: 504, column: 68, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !663, file: !376, line: 504, column: 65)
!2503 = !DILocation(line: 504, column: 85, scope: !2502)
!2504 = !DILocation(line: 504, column: 65, scope: !2502)
!2505 = !DILocation(line: 504, column: 95, scope: !2502)
!2506 = !DILocation(line: 504, column: 65, scope: !663)
!2507 = !DILocation(line: 504, column: 65, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !663, file: !376, discriminator: 2)
!2509 = !DILocation(line: 504, column: 126, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2502, file: !376, discriminator: 3)
!2511 = !DILocation(line: 504, column: 144, scope: !2502)
!2512 = !DILocation(line: 504, column: 154, scope: !2502)
!2513 = !DILocation(line: 504, column: 179, scope: !2502)
!2514 = !DILocation(line: 504, column: 110, scope: !2502)
!2515 = !DILocation(line: 504, column: 198, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !651, file: !376, discriminator: 4)
!2517 = !DILocation(line: 504, column: 198, scope: !663)
!2518 = !DILocation(line: 504, column: 198, scope: !2519)
!2519 = !DILexicalBlockFile(scope: !663, file: !376, discriminator: 5)
!2520 = !DILocation(line: 505, column: 12, scope: !651)
!2521 = !DILocation(line: 505, column: 5, scope: !651)
!2522 = !DILocation(line: 506, column: 1, scope: !651)
!2523 = !DILocation(line: 904, column: 33, scope: !664)
!2524 = !DILocation(line: 905, column: 32, scope: !664)
!2525 = !DILocation(line: 907, column: 5, scope: !664)
!2526 = !DILocation(line: 907, column: 15, scope: !664)
!2527 = !DILocation(line: 907, column: 21, scope: !664)
!2528 = !DILocation(line: 908, column: 5, scope: !664)
!2529 = !DILocation(line: 908, column: 17, scope: !664)
!2530 = !DILocation(line: 910, column: 34, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !664, file: !376, line: 910, column: 9)
!2532 = !DILocation(line: 910, column: 10, scope: !2531)
!2533 = !DILocation(line: 910, column: 9, scope: !664)
!2534 = !DILocation(line: 912, column: 9, scope: !2531)
!2535 = !DILocation(line: 914, column: 32, scope: !664)
!2536 = !DILocation(line: 914, column: 11, scope: !664)
!2537 = !DILocation(line: 914, column: 9, scope: !664)
!2538 = !DILocation(line: 915, column: 9, scope: !674)
!2539 = !DILocation(line: 915, column: 13, scope: !674)
!2540 = !DILocation(line: 915, column: 27, scope: !674)
!2541 = !DILocation(line: 915, column: 64, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !674, file: !376, discriminator: 1)
!2543 = !DILocation(line: 915, column: 48, scope: !674)
!2544 = !DILocation(line: 915, column: 70, scope: !674)
!2545 = !DILocation(line: 915, column: 76, scope: !674)
!2546 = !DILocation(line: 915, column: 46, scope: !674)
!2547 = !DILocation(line: 915, column: 46, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !674, file: !376, discriminator: 2)
!2549 = !DILocation(line: 915, column: 119, scope: !2550)
!2550 = !DILexicalBlockFile(scope: !674, file: !376, discriminator: 3)
!2551 = !DILocation(line: 915, column: 89, scope: !674)
!2552 = !DILocation(line: 915, column: 127, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2554, file: !376, discriminator: 5)
!2554 = !DILexicalBlockFile(scope: !674, file: !376, discriminator: 4)
!2555 = !DILocation(line: 915, column: 9, scope: !664)
!2556 = !DILocation(line: 916, column: 9, scope: !673)
!2557 = !DILocation(line: 916, column: 14, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !672, file: !376, discriminator: 1)
!2559 = !DILocation(line: 916, column: 24, scope: !672)
!2560 = !DILocation(line: 916, column: 55, scope: !672)
!2561 = !DILocation(line: 916, column: 65, scope: !677)
!2562 = !DILocation(line: 916, column: 81, scope: !677)
!2563 = !DILocation(line: 916, column: 65, scope: !672)
!2564 = !DILocation(line: 916, column: 96, scope: !2565)
!2565 = !DILexicalBlockFile(scope: !677, file: !376, discriminator: 2)
!2566 = !DILocation(line: 916, column: 101, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !676, file: !376, discriminator: 4)
!2568 = !DILocation(line: 916, column: 111, scope: !676)
!2569 = !DILocation(line: 916, column: 141, scope: !676)
!2570 = !DILocation(line: 916, column: 167, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !676, file: !376, line: 916, column: 164)
!2572 = !DILocation(line: 916, column: 184, scope: !2571)
!2573 = !DILocation(line: 916, column: 164, scope: !2571)
!2574 = !DILocation(line: 916, column: 194, scope: !2571)
!2575 = !DILocation(line: 916, column: 164, scope: !676)
!2576 = !DILocation(line: 916, column: 164, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !676, file: !376, discriminator: 5)
!2578 = !DILocation(line: 916, column: 225, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2571, file: !376, discriminator: 6)
!2580 = !DILocation(line: 916, column: 243, scope: !2571)
!2581 = !DILocation(line: 916, column: 253, scope: !2571)
!2582 = !DILocation(line: 916, column: 278, scope: !2571)
!2583 = !DILocation(line: 916, column: 209, scope: !2571)
!2584 = !DILocation(line: 916, column: 297, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !677, file: !376, discriminator: 7)
!2586 = !DILocation(line: 916, column: 297, scope: !676)
!2587 = !DILocation(line: 916, column: 297, scope: !2588)
!2588 = !DILexicalBlockFile(scope: !676, file: !376, discriminator: 8)
!2589 = !DILocation(line: 916, column: 297, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !676, file: !376, discriminator: 9)
!2591 = !DILocation(line: 916, column: 310, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2593, file: !376, discriminator: 10)
!2593 = !DILexicalBlockFile(scope: !673, file: !376, discriminator: 3)
!2594 = !DILocation(line: 916, column: 310, scope: !672)
!2595 = !DILocation(line: 916, column: 310, scope: !2596)
!2596 = !DILexicalBlockFile(scope: !672, file: !376, discriminator: 11)
!2597 = !DILocation(line: 917, column: 9, scope: !673)
!2598 = !DILocation(line: 919, column: 53, scope: !664)
!2599 = !DILocation(line: 919, column: 21, scope: !664)
!2600 = !DILocation(line: 920, column: 69, scope: !664)
!2601 = !DILocation(line: 920, column: 51, scope: !664)
!2602 = !DILocation(line: 920, column: 76, scope: !664)
!2603 = !DILocation(line: 919, column: 9, scope: !664)
!2604 = !DILocation(line: 919, column: 7, scope: !664)
!2605 = !DILocation(line: 921, column: 5, scope: !664)
!2606 = !DILocation(line: 921, column: 10, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !679, file: !376, discriminator: 1)
!2608 = !DILocation(line: 921, column: 20, scope: !679)
!2609 = !DILocation(line: 921, column: 50, scope: !679)
!2610 = !DILocation(line: 921, column: 64, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !679, file: !376, line: 921, column: 61)
!2612 = !DILocation(line: 921, column: 81, scope: !2611)
!2613 = !DILocation(line: 921, column: 61, scope: !2611)
!2614 = !DILocation(line: 921, column: 91, scope: !2611)
!2615 = !DILocation(line: 921, column: 61, scope: !679)
!2616 = !DILocation(line: 921, column: 61, scope: !2617)
!2617 = !DILexicalBlockFile(scope: !679, file: !376, discriminator: 2)
!2618 = !DILocation(line: 921, column: 122, scope: !2619)
!2619 = !DILexicalBlockFile(scope: !2611, file: !376, discriminator: 3)
!2620 = !DILocation(line: 921, column: 140, scope: !2611)
!2621 = !DILocation(line: 921, column: 150, scope: !2611)
!2622 = !DILocation(line: 921, column: 175, scope: !2611)
!2623 = !DILocation(line: 921, column: 106, scope: !2611)
!2624 = !DILocation(line: 921, column: 194, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !664, file: !376, discriminator: 4)
!2626 = !DILocation(line: 921, column: 194, scope: !679)
!2627 = !DILocation(line: 921, column: 194, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !679, file: !376, discriminator: 5)
!2629 = !DILocation(line: 922, column: 12, scope: !664)
!2630 = !DILocation(line: 922, column: 5, scope: !664)
!2631 = !DILocation(line: 923, column: 1, scope: !664)
!2632 = !DILocation(line: 509, column: 33, scope: !680)
!2633 = !DILocation(line: 510, column: 32, scope: !680)
!2634 = !DILocation(line: 512, column: 5, scope: !680)
!2635 = !DILocation(line: 512, column: 15, scope: !680)
!2636 = !DILocation(line: 513, column: 5, scope: !680)
!2637 = !DILocation(line: 513, column: 17, scope: !680)
!2638 = !DILocation(line: 514, column: 9, scope: !680)
!2639 = !DILocation(line: 514, column: 19, scope: !680)
!2640 = !DILocation(line: 516, column: 34, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !680, file: !376, line: 516, column: 9)
!2642 = !DILocation(line: 516, column: 10, scope: !2641)
!2643 = !DILocation(line: 516, column: 9, scope: !680)
!2644 = !DILocation(line: 518, column: 9, scope: !2641)
!2645 = !DILocation(line: 520, column: 50, scope: !680)
!2646 = !DILocation(line: 520, column: 60, scope: !680)
!2647 = !DILocation(line: 520, column: 65, scope: !680)
!2648 = !DILocation(line: 520, column: 15, scope: !680)
!2649 = !DILocation(line: 520, column: 13, scope: !680)
!2650 = !DILocation(line: 521, column: 5, scope: !680)
!2651 = !DILocation(line: 522, column: 24, scope: !680)
!2652 = !DILocation(line: 522, column: 38, scope: !680)
!2653 = !DILocation(line: 522, column: 12, scope: !680)
!2654 = !DILocation(line: 522, column: 5, scope: !680)
!2655 = !DILocation(line: 523, column: 1, scope: !680)
!2656 = !DILocation(line: 672, column: 35, scope: !687)
!2657 = !DILocation(line: 673, column: 35, scope: !687)
!2658 = !DILocation(line: 675, column: 5, scope: !687)
!2659 = !DILocation(line: 675, column: 15, scope: !687)
!2660 = !DILocation(line: 676, column: 5, scope: !687)
!2661 = !DILocation(line: 676, column: 17, scope: !687)
!2662 = !DILocation(line: 677, column: 5, scope: !687)
!2663 = !DILocation(line: 677, column: 17, scope: !687)
!2664 = !DILocation(line: 678, column: 5, scope: !687)
!2665 = !DILocation(line: 678, column: 16, scope: !687)
!2666 = !DILocation(line: 678, column: 21, scope: !687)
!2667 = !DILocation(line: 680, column: 22, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !687, file: !376, line: 680, column: 9)
!2669 = !DILocation(line: 680, column: 9, scope: !2668)
!2670 = !DILocation(line: 680, column: 9, scope: !687)
!2671 = !DILocation(line: 683, column: 9, scope: !2668)
!2672 = !DILocation(line: 685, column: 34, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !687, file: !376, line: 685, column: 9)
!2674 = !DILocation(line: 685, column: 10, scope: !2673)
!2675 = !DILocation(line: 685, column: 9, scope: !687)
!2676 = !DILocation(line: 687, column: 9, scope: !2673)
!2677 = !DILocation(line: 689, column: 26, scope: !698)
!2678 = !DILocation(line: 689, column: 33, scope: !698)
!2679 = !DILocation(line: 689, column: 44, scope: !698)
!2680 = !{!1215, !900, i64 168}
!2681 = !DILocation(line: 689, column: 53, scope: !698)
!2682 = !DILocation(line: 689, column: 70, scope: !698)
!2683 = !DILocation(line: 689, column: 9, scope: !687)
!2684 = !DILocation(line: 690, column: 9, scope: !697)
!2685 = !DILocation(line: 690, column: 21, scope: !697)
!2686 = !DILocation(line: 692, column: 47, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !697, file: !376, line: 692, column: 13)
!2688 = !DILocation(line: 692, column: 31, scope: !2687)
!2689 = !DILocation(line: 692, column: 53, scope: !2687)
!2690 = !DILocation(line: 692, column: 59, scope: !2687)
!2691 = !DILocation(line: 692, column: 29, scope: !2687)
!2692 = !DILocation(line: 692, column: 29, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2687, file: !376, discriminator: 1)
!2694 = !DILocation(line: 692, column: 102, scope: !2695)
!2695 = !DILexicalBlockFile(scope: !2687, file: !376, discriminator: 2)
!2696 = !DILocation(line: 692, column: 72, scope: !2687)
!2697 = !DILocation(line: 692, column: 110, scope: !2698)
!2698 = !DILexicalBlockFile(scope: !2699, file: !376, discriminator: 4)
!2699 = !DILexicalBlockFile(scope: !2687, file: !376, discriminator: 3)
!2700 = !DILocation(line: 692, column: 13, scope: !697)
!2701 = !DILocation(line: 693, column: 13, scope: !2687)
!2702 = !DILocation(line: 695, column: 40, scope: !697)
!2703 = !DILocation(line: 695, column: 13, scope: !697)
!2704 = !DILocation(line: 695, column: 11, scope: !697)
!2705 = !DILocation(line: 696, column: 13, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !697, file: !376, line: 696, column: 13)
!2707 = !DILocation(line: 696, column: 15, scope: !2706)
!2708 = !DILocation(line: 696, column: 13, scope: !697)
!2709 = !DILocation(line: 697, column: 13, scope: !2706)
!2710 = !DILocation(line: 698, column: 13, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !697, file: !376, line: 698, column: 13)
!2712 = !DILocation(line: 698, column: 17, scope: !2711)
!2713 = !DILocation(line: 698, column: 13, scope: !697)
!2714 = !DILocation(line: 699, column: 20, scope: !2711)
!2715 = !DILocation(line: 699, column: 13, scope: !2711)
!2716 = !DILocation(line: 700, column: 16, scope: !697)
!2717 = !DILocation(line: 700, column: 20, scope: !697)
!2718 = !DILocation(line: 700, column: 14, scope: !697)
!2719 = !DILocation(line: 701, column: 67, scope: !697)
!2720 = !DILocation(line: 701, column: 54, scope: !697)
!2721 = !DILocation(line: 701, column: 70, scope: !697)
!2722 = !DILocation(line: 701, column: 28, scope: !697)
!2723 = !DILocation(line: 702, column: 76, scope: !697)
!2724 = !DILocation(line: 702, column: 58, scope: !697)
!2725 = !DILocation(line: 702, column: 83, scope: !697)
!2726 = !DILocation(line: 701, column: 16, scope: !697)
!2727 = !DILocation(line: 701, column: 9, scope: !697)
!2728 = !DILocation(line: 703, column: 5, scope: !698)
!2729 = !DILocation(line: 705, column: 35, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2731, file: !376, line: 705, column: 13)
!2731 = distinct !DILexicalBlock(scope: !698, file: !376, line: 704, column: 10)
!2732 = !DILocation(line: 705, column: 13, scope: !2730)
!2733 = !DILocation(line: 705, column: 13, scope: !2731)
!2734 = !DILocation(line: 706, column: 13, scope: !2730)
!2735 = !DILocation(line: 707, column: 54, scope: !2731)
!2736 = !DILocation(line: 707, column: 60, scope: !2731)
!2737 = !DILocation(line: 707, column: 28, scope: !2731)
!2738 = !DILocation(line: 707, column: 67, scope: !2731)
!2739 = !DILocation(line: 707, column: 16, scope: !2731)
!2740 = !DILocation(line: 707, column: 9, scope: !2731)
!2741 = !DILocation(line: 709, column: 1, scope: !687)
!2742 = !DILocation(line: 229, column: 35, scope: !701)
!2743 = !DILocation(line: 230, column: 35, scope: !701)
!2744 = !DILocation(line: 232, column: 5, scope: !701)
!2745 = !DILocation(line: 232, column: 15, scope: !701)
!2746 = !DILocation(line: 233, column: 5, scope: !701)
!2747 = !DILocation(line: 233, column: 17, scope: !701)
!2748 = !DILocation(line: 234, column: 5, scope: !701)
!2749 = !DILocation(line: 234, column: 17, scope: !701)
!2750 = !DILocation(line: 235, column: 5, scope: !701)
!2751 = !DILocation(line: 235, column: 16, scope: !701)
!2752 = !DILocation(line: 237, column: 34, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !701, file: !376, line: 237, column: 9)
!2754 = !DILocation(line: 237, column: 10, scope: !2753)
!2755 = !DILocation(line: 237, column: 9, scope: !701)
!2756 = !DILocation(line: 239, column: 9, scope: !2753)
!2757 = !DILocation(line: 241, column: 26, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !701, file: !376, line: 241, column: 9)
!2759 = !DILocation(line: 241, column: 33, scope: !2758)
!2760 = !DILocation(line: 241, column: 44, scope: !2758)
!2761 = !DILocation(line: 241, column: 53, scope: !2758)
!2762 = !DILocation(line: 241, column: 70, scope: !2758)
!2763 = !DILocation(line: 241, column: 9, scope: !701)
!2764 = !DILocation(line: 242, column: 47, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !376, line: 242, column: 13)
!2766 = distinct !DILexicalBlock(scope: !2758, file: !376, line: 241, column: 77)
!2767 = !DILocation(line: 242, column: 31, scope: !2765)
!2768 = !DILocation(line: 242, column: 53, scope: !2765)
!2769 = !DILocation(line: 242, column: 59, scope: !2765)
!2770 = !DILocation(line: 242, column: 29, scope: !2765)
!2771 = !DILocation(line: 242, column: 29, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2765, file: !376, discriminator: 1)
!2773 = !DILocation(line: 242, column: 102, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2765, file: !376, discriminator: 2)
!2775 = !DILocation(line: 242, column: 72, scope: !2765)
!2776 = !DILocation(line: 242, column: 110, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2778, file: !376, discriminator: 4)
!2778 = !DILexicalBlockFile(scope: !2765, file: !376, discriminator: 3)
!2779 = !DILocation(line: 242, column: 13, scope: !2766)
!2780 = !DILocation(line: 243, column: 13, scope: !2765)
!2781 = !DILocation(line: 244, column: 25, scope: !2766)
!2782 = !DILocation(line: 244, column: 32, scope: !2766)
!2783 = !DILocation(line: 244, column: 41, scope: !2766)
!2784 = !DILocation(line: 245, column: 28, scope: !2766)
!2785 = !DILocation(line: 245, column: 81, scope: !2766)
!2786 = !DILocation(line: 245, column: 63, scope: !2766)
!2787 = !DILocation(line: 245, column: 88, scope: !2766)
!2788 = !DILocation(line: 245, column: 16, scope: !2766)
!2789 = !DILocation(line: 245, column: 9, scope: !2766)
!2790 = !DILocation(line: 248, column: 35, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2792, file: !376, line: 248, column: 13)
!2792 = distinct !DILexicalBlock(scope: !2758, file: !376, line: 247, column: 10)
!2793 = !DILocation(line: 248, column: 13, scope: !2791)
!2794 = !DILocation(line: 248, column: 13, scope: !2792)
!2795 = !DILocation(line: 249, column: 13, scope: !2791)
!2796 = !DILocation(line: 251, column: 61, scope: !2792)
!2797 = !DILocation(line: 251, column: 67, scope: !2792)
!2798 = !DILocation(line: 251, column: 73, scope: !2792)
!2799 = !DILocation(line: 251, column: 28, scope: !2792)
!2800 = !DILocation(line: 252, column: 28, scope: !2792)
!2801 = !DILocation(line: 251, column: 16, scope: !2792)
!2802 = !DILocation(line: 251, column: 9, scope: !2792)
!2803 = !DILocation(line: 254, column: 1, scope: !701)
!2804 = !DILocation(line: 926, column: 37, scope: !709)
!2805 = !DILocation(line: 927, column: 35, scope: !709)
!2806 = !DILocation(line: 929, column: 5, scope: !709)
!2807 = !DILocation(line: 929, column: 15, scope: !709)
!2808 = !DILocation(line: 929, column: 21, scope: !709)
!2809 = !DILocation(line: 930, column: 5, scope: !709)
!2810 = !DILocation(line: 930, column: 17, scope: !709)
!2811 = !DILocation(line: 932, column: 34, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !709, file: !376, line: 932, column: 9)
!2813 = !DILocation(line: 932, column: 10, scope: !2812)
!2814 = !DILocation(line: 932, column: 9, scope: !709)
!2815 = !DILocation(line: 934, column: 9, scope: !2812)
!2816 = !DILocation(line: 936, column: 32, scope: !709)
!2817 = !DILocation(line: 936, column: 11, scope: !709)
!2818 = !DILocation(line: 936, column: 9, scope: !709)
!2819 = !DILocation(line: 937, column: 9, scope: !719)
!2820 = !DILocation(line: 937, column: 13, scope: !719)
!2821 = !DILocation(line: 937, column: 27, scope: !719)
!2822 = !DILocation(line: 937, column: 64, scope: !2823)
!2823 = !DILexicalBlockFile(scope: !719, file: !376, discriminator: 1)
!2824 = !DILocation(line: 937, column: 48, scope: !719)
!2825 = !DILocation(line: 937, column: 70, scope: !719)
!2826 = !DILocation(line: 937, column: 76, scope: !719)
!2827 = !DILocation(line: 937, column: 46, scope: !719)
!2828 = !DILocation(line: 937, column: 46, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !719, file: !376, discriminator: 2)
!2830 = !DILocation(line: 937, column: 119, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !719, file: !376, discriminator: 3)
!2832 = !DILocation(line: 937, column: 89, scope: !719)
!2833 = !DILocation(line: 937, column: 127, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2835, file: !376, discriminator: 5)
!2835 = !DILexicalBlockFile(scope: !719, file: !376, discriminator: 4)
!2836 = !DILocation(line: 937, column: 9, scope: !709)
!2837 = !DILocation(line: 938, column: 9, scope: !718)
!2838 = !DILocation(line: 938, column: 14, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !717, file: !376, discriminator: 1)
!2840 = !DILocation(line: 938, column: 24, scope: !717)
!2841 = !DILocation(line: 938, column: 55, scope: !717)
!2842 = !DILocation(line: 938, column: 65, scope: !722)
!2843 = !DILocation(line: 938, column: 81, scope: !722)
!2844 = !DILocation(line: 938, column: 65, scope: !717)
!2845 = !DILocation(line: 938, column: 96, scope: !2846)
!2846 = !DILexicalBlockFile(scope: !722, file: !376, discriminator: 2)
!2847 = !DILocation(line: 938, column: 101, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !721, file: !376, discriminator: 4)
!2849 = !DILocation(line: 938, column: 111, scope: !721)
!2850 = !DILocation(line: 938, column: 141, scope: !721)
!2851 = !DILocation(line: 938, column: 167, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !721, file: !376, line: 938, column: 164)
!2853 = !DILocation(line: 938, column: 184, scope: !2852)
!2854 = !DILocation(line: 938, column: 164, scope: !2852)
!2855 = !DILocation(line: 938, column: 194, scope: !2852)
!2856 = !DILocation(line: 938, column: 164, scope: !721)
!2857 = !DILocation(line: 938, column: 164, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !721, file: !376, discriminator: 5)
!2859 = !DILocation(line: 938, column: 225, scope: !2860)
!2860 = !DILexicalBlockFile(scope: !2852, file: !376, discriminator: 6)
!2861 = !DILocation(line: 938, column: 243, scope: !2852)
!2862 = !DILocation(line: 938, column: 253, scope: !2852)
!2863 = !DILocation(line: 938, column: 278, scope: !2852)
!2864 = !DILocation(line: 938, column: 209, scope: !2852)
!2865 = !DILocation(line: 938, column: 297, scope: !2866)
!2866 = !DILexicalBlockFile(scope: !722, file: !376, discriminator: 7)
!2867 = !DILocation(line: 938, column: 297, scope: !721)
!2868 = !DILocation(line: 938, column: 297, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !721, file: !376, discriminator: 8)
!2870 = !DILocation(line: 938, column: 297, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !721, file: !376, discriminator: 9)
!2872 = !DILocation(line: 938, column: 310, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2874, file: !376, discriminator: 10)
!2874 = !DILexicalBlockFile(scope: !718, file: !376, discriminator: 3)
!2875 = !DILocation(line: 938, column: 310, scope: !717)
!2876 = !DILocation(line: 938, column: 310, scope: !2877)
!2877 = !DILexicalBlockFile(scope: !717, file: !376, discriminator: 11)
!2878 = !DILocation(line: 939, column: 9, scope: !718)
!2879 = !DILocation(line: 941, column: 56, scope: !709)
!2880 = !DILocation(line: 941, column: 21, scope: !709)
!2881 = !DILocation(line: 942, column: 69, scope: !709)
!2882 = !DILocation(line: 942, column: 51, scope: !709)
!2883 = !DILocation(line: 942, column: 76, scope: !709)
!2884 = !DILocation(line: 941, column: 9, scope: !709)
!2885 = !DILocation(line: 941, column: 7, scope: !709)
!2886 = !DILocation(line: 943, column: 5, scope: !709)
!2887 = !DILocation(line: 943, column: 10, scope: !2888)
!2888 = !DILexicalBlockFile(scope: !724, file: !376, discriminator: 1)
!2889 = !DILocation(line: 943, column: 20, scope: !724)
!2890 = !DILocation(line: 943, column: 50, scope: !724)
!2891 = !DILocation(line: 943, column: 64, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !724, file: !376, line: 943, column: 61)
!2893 = !DILocation(line: 943, column: 81, scope: !2892)
!2894 = !DILocation(line: 943, column: 61, scope: !2892)
!2895 = !DILocation(line: 943, column: 91, scope: !2892)
!2896 = !DILocation(line: 943, column: 61, scope: !724)
!2897 = !DILocation(line: 943, column: 61, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !724, file: !376, discriminator: 2)
!2899 = !DILocation(line: 943, column: 122, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2892, file: !376, discriminator: 3)
!2901 = !DILocation(line: 943, column: 140, scope: !2892)
!2902 = !DILocation(line: 943, column: 150, scope: !2892)
!2903 = !DILocation(line: 943, column: 175, scope: !2892)
!2904 = !DILocation(line: 943, column: 106, scope: !2892)
!2905 = !DILocation(line: 943, column: 194, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !709, file: !376, discriminator: 4)
!2907 = !DILocation(line: 943, column: 194, scope: !724)
!2908 = !DILocation(line: 943, column: 194, scope: !2909)
!2909 = !DILexicalBlockFile(scope: !724, file: !376, discriminator: 5)
!2910 = !DILocation(line: 944, column: 12, scope: !709)
!2911 = !DILocation(line: 944, column: 5, scope: !709)
!2912 = !DILocation(line: 945, column: 1, scope: !709)
!2913 = !DILocation(line: 526, column: 37, scope: !725)
!2914 = !DILocation(line: 527, column: 35, scope: !725)
!2915 = !DILocation(line: 529, column: 5, scope: !725)
!2916 = !DILocation(line: 529, column: 15, scope: !725)
!2917 = !DILocation(line: 530, column: 5, scope: !725)
!2918 = !DILocation(line: 530, column: 17, scope: !725)
!2919 = !DILocation(line: 531, column: 5, scope: !725)
!2920 = !DILocation(line: 531, column: 15, scope: !725)
!2921 = !DILocation(line: 533, column: 34, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !725, file: !376, line: 533, column: 9)
!2923 = !DILocation(line: 533, column: 10, scope: !2922)
!2924 = !DILocation(line: 533, column: 9, scope: !725)
!2925 = !DILocation(line: 535, column: 9, scope: !2922)
!2926 = !DILocation(line: 537, column: 53, scope: !725)
!2927 = !DILocation(line: 537, column: 63, scope: !725)
!2928 = !DILocation(line: 537, column: 68, scope: !725)
!2929 = !DILocation(line: 537, column: 15, scope: !725)
!2930 = !DILocation(line: 537, column: 13, scope: !725)
!2931 = !DILocation(line: 538, column: 5, scope: !725)
!2932 = !DILocation(line: 539, column: 24, scope: !725)
!2933 = !DILocation(line: 539, column: 38, scope: !725)
!2934 = !DILocation(line: 539, column: 12, scope: !725)
!2935 = !DILocation(line: 539, column: 5, scope: !725)
!2936 = !DILocation(line: 540, column: 1, scope: !725)
!2937 = !DILocation(line: 948, column: 26, scope: !732)
!2938 = !DILocation(line: 949, column: 26, scope: !732)
!2939 = !DILocation(line: 951, column: 5, scope: !732)
!2940 = !DILocation(line: 951, column: 15, scope: !732)
!2941 = !DILocation(line: 951, column: 21, scope: !732)
!2942 = !DILocation(line: 952, column: 5, scope: !732)
!2943 = !DILocation(line: 952, column: 17, scope: !732)
!2944 = !DILocation(line: 954, column: 34, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !732, file: !376, line: 954, column: 9)
!2946 = !DILocation(line: 954, column: 10, scope: !2945)
!2947 = !DILocation(line: 954, column: 9, scope: !732)
!2948 = !DILocation(line: 956, column: 9, scope: !2945)
!2949 = !DILocation(line: 958, column: 32, scope: !732)
!2950 = !DILocation(line: 958, column: 11, scope: !732)
!2951 = !DILocation(line: 958, column: 9, scope: !732)
!2952 = !DILocation(line: 959, column: 9, scope: !742)
!2953 = !DILocation(line: 959, column: 13, scope: !742)
!2954 = !DILocation(line: 959, column: 27, scope: !742)
!2955 = !DILocation(line: 959, column: 64, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !742, file: !376, discriminator: 1)
!2957 = !DILocation(line: 959, column: 48, scope: !742)
!2958 = !DILocation(line: 959, column: 70, scope: !742)
!2959 = !DILocation(line: 959, column: 76, scope: !742)
!2960 = !DILocation(line: 959, column: 46, scope: !742)
!2961 = !DILocation(line: 959, column: 46, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !742, file: !376, discriminator: 2)
!2963 = !DILocation(line: 959, column: 119, scope: !2964)
!2964 = !DILexicalBlockFile(scope: !742, file: !376, discriminator: 3)
!2965 = !DILocation(line: 959, column: 89, scope: !742)
!2966 = !DILocation(line: 959, column: 127, scope: !2967)
!2967 = !DILexicalBlockFile(scope: !2968, file: !376, discriminator: 5)
!2968 = !DILexicalBlockFile(scope: !742, file: !376, discriminator: 4)
!2969 = !DILocation(line: 959, column: 9, scope: !732)
!2970 = !DILocation(line: 960, column: 9, scope: !741)
!2971 = !DILocation(line: 960, column: 14, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !740, file: !376, discriminator: 1)
!2973 = !DILocation(line: 960, column: 24, scope: !740)
!2974 = !DILocation(line: 960, column: 55, scope: !740)
!2975 = !DILocation(line: 960, column: 65, scope: !745)
!2976 = !DILocation(line: 960, column: 81, scope: !745)
!2977 = !DILocation(line: 960, column: 65, scope: !740)
!2978 = !DILocation(line: 960, column: 96, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !745, file: !376, discriminator: 2)
!2980 = !DILocation(line: 960, column: 101, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !744, file: !376, discriminator: 4)
!2982 = !DILocation(line: 960, column: 111, scope: !744)
!2983 = !DILocation(line: 960, column: 141, scope: !744)
!2984 = !DILocation(line: 960, column: 167, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !744, file: !376, line: 960, column: 164)
!2986 = !DILocation(line: 960, column: 184, scope: !2985)
!2987 = !DILocation(line: 960, column: 164, scope: !2985)
!2988 = !DILocation(line: 960, column: 194, scope: !2985)
!2989 = !DILocation(line: 960, column: 164, scope: !744)
!2990 = !DILocation(line: 960, column: 164, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !744, file: !376, discriminator: 5)
!2992 = !DILocation(line: 960, column: 225, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !2985, file: !376, discriminator: 6)
!2994 = !DILocation(line: 960, column: 243, scope: !2985)
!2995 = !DILocation(line: 960, column: 253, scope: !2985)
!2996 = !DILocation(line: 960, column: 278, scope: !2985)
!2997 = !DILocation(line: 960, column: 209, scope: !2985)
!2998 = !DILocation(line: 960, column: 297, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !745, file: !376, discriminator: 7)
!3000 = !DILocation(line: 960, column: 297, scope: !744)
!3001 = !DILocation(line: 960, column: 297, scope: !3002)
!3002 = !DILexicalBlockFile(scope: !744, file: !376, discriminator: 8)
!3003 = !DILocation(line: 960, column: 297, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !744, file: !376, discriminator: 9)
!3005 = !DILocation(line: 960, column: 310, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3007, file: !376, discriminator: 10)
!3007 = !DILexicalBlockFile(scope: !741, file: !376, discriminator: 3)
!3008 = !DILocation(line: 960, column: 310, scope: !740)
!3009 = !DILocation(line: 960, column: 310, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !740, file: !376, discriminator: 11)
!3011 = !DILocation(line: 961, column: 9, scope: !741)
!3012 = !DILocation(line: 963, column: 47, scope: !732)
!3013 = !DILocation(line: 963, column: 52, scope: !732)
!3014 = !DILocation(line: 963, column: 21, scope: !732)
!3015 = !DILocation(line: 964, column: 69, scope: !732)
!3016 = !DILocation(line: 964, column: 51, scope: !732)
!3017 = !DILocation(line: 964, column: 76, scope: !732)
!3018 = !DILocation(line: 963, column: 9, scope: !732)
!3019 = !DILocation(line: 963, column: 7, scope: !732)
!3020 = !DILocation(line: 965, column: 5, scope: !732)
!3021 = !DILocation(line: 965, column: 10, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !747, file: !376, discriminator: 1)
!3023 = !DILocation(line: 965, column: 20, scope: !747)
!3024 = !DILocation(line: 965, column: 50, scope: !747)
!3025 = !DILocation(line: 965, column: 64, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !747, file: !376, line: 965, column: 61)
!3027 = !DILocation(line: 965, column: 81, scope: !3026)
!3028 = !DILocation(line: 965, column: 61, scope: !3026)
!3029 = !DILocation(line: 965, column: 91, scope: !3026)
!3030 = !DILocation(line: 965, column: 61, scope: !747)
!3031 = !DILocation(line: 965, column: 61, scope: !3032)
!3032 = !DILexicalBlockFile(scope: !747, file: !376, discriminator: 2)
!3033 = !DILocation(line: 965, column: 122, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3026, file: !376, discriminator: 3)
!3035 = !DILocation(line: 965, column: 140, scope: !3026)
!3036 = !DILocation(line: 965, column: 150, scope: !3026)
!3037 = !DILocation(line: 965, column: 175, scope: !3026)
!3038 = !DILocation(line: 965, column: 106, scope: !3026)
!3039 = !DILocation(line: 965, column: 194, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !732, file: !376, discriminator: 4)
!3041 = !DILocation(line: 965, column: 194, scope: !747)
!3042 = !DILocation(line: 965, column: 194, scope: !3043)
!3043 = !DILexicalBlockFile(scope: !747, file: !376, discriminator: 5)
!3044 = !DILocation(line: 966, column: 12, scope: !732)
!3045 = !DILocation(line: 966, column: 5, scope: !732)
!3046 = !DILocation(line: 967, column: 1, scope: !732)
!3047 = !DILocation(line: 543, column: 26, scope: !748)
!3048 = !DILocation(line: 544, column: 26, scope: !748)
!3049 = !DILocation(line: 546, column: 5, scope: !748)
!3050 = !DILocation(line: 546, column: 15, scope: !748)
!3051 = !DILocation(line: 547, column: 5, scope: !748)
!3052 = !DILocation(line: 547, column: 15, scope: !748)
!3053 = !DILocation(line: 548, column: 5, scope: !748)
!3054 = !DILocation(line: 548, column: 17, scope: !748)
!3055 = !DILocation(line: 550, column: 34, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !748, file: !376, line: 550, column: 9)
!3057 = !DILocation(line: 550, column: 10, scope: !3056)
!3058 = !DILocation(line: 550, column: 9, scope: !748)
!3059 = !DILocation(line: 552, column: 9, scope: !3056)
!3060 = !DILocation(line: 554, column: 43, scope: !748)
!3061 = !DILocation(line: 554, column: 53, scope: !748)
!3062 = !DILocation(line: 554, column: 58, scope: !748)
!3063 = !DILocation(line: 554, column: 15, scope: !748)
!3064 = !DILocation(line: 554, column: 13, scope: !748)
!3065 = !DILocation(line: 555, column: 5, scope: !748)
!3066 = !DILocation(line: 556, column: 24, scope: !748)
!3067 = !DILocation(line: 556, column: 38, scope: !748)
!3068 = !DILocation(line: 556, column: 12, scope: !748)
!3069 = !DILocation(line: 556, column: 5, scope: !748)
!3070 = !DILocation(line: 557, column: 1, scope: !748)
!3071 = !DILocation(line: 970, column: 24, scope: !755)
!3072 = !DILocation(line: 971, column: 24, scope: !755)
!3073 = !DILocation(line: 973, column: 5, scope: !755)
!3074 = !DILocation(line: 973, column: 15, scope: !755)
!3075 = !DILocation(line: 973, column: 21, scope: !755)
!3076 = !DILocation(line: 974, column: 5, scope: !755)
!3077 = !DILocation(line: 974, column: 17, scope: !755)
!3078 = !DILocation(line: 976, column: 34, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !755, file: !376, line: 976, column: 9)
!3080 = !DILocation(line: 976, column: 10, scope: !3079)
!3081 = !DILocation(line: 976, column: 9, scope: !755)
!3082 = !DILocation(line: 978, column: 9, scope: !3079)
!3083 = !DILocation(line: 980, column: 32, scope: !755)
!3084 = !DILocation(line: 980, column: 11, scope: !755)
!3085 = !DILocation(line: 980, column: 9, scope: !755)
!3086 = !DILocation(line: 981, column: 9, scope: !765)
!3087 = !DILocation(line: 981, column: 13, scope: !765)
!3088 = !DILocation(line: 981, column: 27, scope: !765)
!3089 = !DILocation(line: 981, column: 64, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !765, file: !376, discriminator: 1)
!3091 = !DILocation(line: 981, column: 48, scope: !765)
!3092 = !DILocation(line: 981, column: 70, scope: !765)
!3093 = !DILocation(line: 981, column: 76, scope: !765)
!3094 = !DILocation(line: 981, column: 46, scope: !765)
!3095 = !DILocation(line: 981, column: 46, scope: !3096)
!3096 = !DILexicalBlockFile(scope: !765, file: !376, discriminator: 2)
!3097 = !DILocation(line: 981, column: 119, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !765, file: !376, discriminator: 3)
!3099 = !DILocation(line: 981, column: 89, scope: !765)
!3100 = !DILocation(line: 981, column: 127, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3102, file: !376, discriminator: 5)
!3102 = !DILexicalBlockFile(scope: !765, file: !376, discriminator: 4)
!3103 = !DILocation(line: 981, column: 9, scope: !755)
!3104 = !DILocation(line: 982, column: 9, scope: !764)
!3105 = !DILocation(line: 982, column: 14, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !763, file: !376, discriminator: 1)
!3107 = !DILocation(line: 982, column: 24, scope: !763)
!3108 = !DILocation(line: 982, column: 55, scope: !763)
!3109 = !DILocation(line: 982, column: 65, scope: !768)
!3110 = !DILocation(line: 982, column: 81, scope: !768)
!3111 = !DILocation(line: 982, column: 65, scope: !763)
!3112 = !DILocation(line: 982, column: 96, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !768, file: !376, discriminator: 2)
!3114 = !DILocation(line: 982, column: 101, scope: !3115)
!3115 = !DILexicalBlockFile(scope: !767, file: !376, discriminator: 4)
!3116 = !DILocation(line: 982, column: 111, scope: !767)
!3117 = !DILocation(line: 982, column: 141, scope: !767)
!3118 = !DILocation(line: 982, column: 167, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !767, file: !376, line: 982, column: 164)
!3120 = !DILocation(line: 982, column: 184, scope: !3119)
!3121 = !DILocation(line: 982, column: 164, scope: !3119)
!3122 = !DILocation(line: 982, column: 194, scope: !3119)
!3123 = !DILocation(line: 982, column: 164, scope: !767)
!3124 = !DILocation(line: 982, column: 164, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !767, file: !376, discriminator: 5)
!3126 = !DILocation(line: 982, column: 225, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3119, file: !376, discriminator: 6)
!3128 = !DILocation(line: 982, column: 243, scope: !3119)
!3129 = !DILocation(line: 982, column: 253, scope: !3119)
!3130 = !DILocation(line: 982, column: 278, scope: !3119)
!3131 = !DILocation(line: 982, column: 209, scope: !3119)
!3132 = !DILocation(line: 982, column: 297, scope: !3133)
!3133 = !DILexicalBlockFile(scope: !768, file: !376, discriminator: 7)
!3134 = !DILocation(line: 982, column: 297, scope: !767)
!3135 = !DILocation(line: 982, column: 297, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !767, file: !376, discriminator: 8)
!3137 = !DILocation(line: 982, column: 297, scope: !3138)
!3138 = !DILexicalBlockFile(scope: !767, file: !376, discriminator: 9)
!3139 = !DILocation(line: 982, column: 310, scope: !3140)
!3140 = !DILexicalBlockFile(scope: !3141, file: !376, discriminator: 10)
!3141 = !DILexicalBlockFile(scope: !764, file: !376, discriminator: 3)
!3142 = !DILocation(line: 982, column: 310, scope: !763)
!3143 = !DILocation(line: 982, column: 310, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !763, file: !376, discriminator: 11)
!3145 = !DILocation(line: 983, column: 9, scope: !764)
!3146 = !DILocation(line: 985, column: 46, scope: !755)
!3147 = !DILocation(line: 985, column: 51, scope: !755)
!3148 = !DILocation(line: 985, column: 21, scope: !755)
!3149 = !DILocation(line: 986, column: 69, scope: !755)
!3150 = !DILocation(line: 986, column: 51, scope: !755)
!3151 = !DILocation(line: 986, column: 76, scope: !755)
!3152 = !DILocation(line: 985, column: 9, scope: !755)
!3153 = !DILocation(line: 985, column: 7, scope: !755)
!3154 = !DILocation(line: 987, column: 5, scope: !755)
!3155 = !DILocation(line: 987, column: 10, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !770, file: !376, discriminator: 1)
!3157 = !DILocation(line: 987, column: 20, scope: !770)
!3158 = !DILocation(line: 987, column: 50, scope: !770)
!3159 = !DILocation(line: 987, column: 64, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !770, file: !376, line: 987, column: 61)
!3161 = !DILocation(line: 987, column: 81, scope: !3160)
!3162 = !DILocation(line: 987, column: 61, scope: !3160)
!3163 = !DILocation(line: 987, column: 91, scope: !3160)
!3164 = !DILocation(line: 987, column: 61, scope: !770)
!3165 = !DILocation(line: 987, column: 61, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !770, file: !376, discriminator: 2)
!3167 = !DILocation(line: 987, column: 122, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3160, file: !376, discriminator: 3)
!3169 = !DILocation(line: 987, column: 140, scope: !3160)
!3170 = !DILocation(line: 987, column: 150, scope: !3160)
!3171 = !DILocation(line: 987, column: 175, scope: !3160)
!3172 = !DILocation(line: 987, column: 106, scope: !3160)
!3173 = !DILocation(line: 987, column: 194, scope: !3174)
!3174 = !DILexicalBlockFile(scope: !755, file: !376, discriminator: 4)
!3175 = !DILocation(line: 987, column: 194, scope: !770)
!3176 = !DILocation(line: 987, column: 194, scope: !3177)
!3177 = !DILexicalBlockFile(scope: !770, file: !376, discriminator: 5)
!3178 = !DILocation(line: 988, column: 12, scope: !755)
!3179 = !DILocation(line: 988, column: 5, scope: !755)
!3180 = !DILocation(line: 989, column: 1, scope: !755)
!3181 = !DILocation(line: 560, column: 24, scope: !771)
!3182 = !DILocation(line: 561, column: 24, scope: !771)
!3183 = !DILocation(line: 563, column: 5, scope: !771)
!3184 = !DILocation(line: 563, column: 15, scope: !771)
!3185 = !DILocation(line: 564, column: 5, scope: !771)
!3186 = !DILocation(line: 564, column: 15, scope: !771)
!3187 = !DILocation(line: 565, column: 5, scope: !771)
!3188 = !DILocation(line: 565, column: 17, scope: !771)
!3189 = !DILocation(line: 567, column: 34, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !771, file: !376, line: 567, column: 9)
!3191 = !DILocation(line: 567, column: 10, scope: !3190)
!3192 = !DILocation(line: 567, column: 9, scope: !771)
!3193 = !DILocation(line: 569, column: 9, scope: !3190)
!3194 = !DILocation(line: 571, column: 42, scope: !771)
!3195 = !DILocation(line: 571, column: 52, scope: !771)
!3196 = !DILocation(line: 571, column: 57, scope: !771)
!3197 = !DILocation(line: 571, column: 15, scope: !771)
!3198 = !DILocation(line: 571, column: 13, scope: !771)
!3199 = !DILocation(line: 572, column: 5, scope: !771)
!3200 = !DILocation(line: 573, column: 24, scope: !771)
!3201 = !DILocation(line: 573, column: 38, scope: !771)
!3202 = !DILocation(line: 573, column: 12, scope: !771)
!3203 = !DILocation(line: 573, column: 5, scope: !771)
!3204 = !DILocation(line: 574, column: 1, scope: !771)
!3205 = !DILocation(line: 992, column: 26, scope: !778)
!3206 = !DILocation(line: 993, column: 24, scope: !778)
!3207 = !DILocation(line: 995, column: 5, scope: !778)
!3208 = !DILocation(line: 995, column: 15, scope: !778)
!3209 = !DILocation(line: 995, column: 21, scope: !778)
!3210 = !DILocation(line: 996, column: 5, scope: !778)
!3211 = !DILocation(line: 996, column: 17, scope: !778)
!3212 = !DILocation(line: 997, column: 5, scope: !778)
!3213 = !DILocation(line: 997, column: 15, scope: !778)
!3214 = !DILocation(line: 999, column: 34, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !778, file: !376, line: 999, column: 9)
!3216 = !DILocation(line: 999, column: 10, scope: !3215)
!3217 = !DILocation(line: 999, column: 9, scope: !778)
!3218 = !DILocation(line: 1001, column: 9, scope: !3215)
!3219 = !DILocation(line: 1002, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !778, file: !376, line: 1002, column: 9)
!3221 = !DILocation(line: 1002, column: 17, scope: !3220)
!3222 = !DILocation(line: 1002, column: 9, scope: !778)
!3223 = !DILocation(line: 1003, column: 17, scope: !3220)
!3224 = !DILocation(line: 1003, column: 9, scope: !3220)
!3225 = !DILocation(line: 1005, column: 32, scope: !778)
!3226 = !DILocation(line: 1005, column: 11, scope: !778)
!3227 = !DILocation(line: 1005, column: 9, scope: !778)
!3228 = !DILocation(line: 1006, column: 9, scope: !789)
!3229 = !DILocation(line: 1006, column: 13, scope: !789)
!3230 = !DILocation(line: 1006, column: 27, scope: !789)
!3231 = !DILocation(line: 1006, column: 64, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !789, file: !376, discriminator: 1)
!3233 = !DILocation(line: 1006, column: 48, scope: !789)
!3234 = !DILocation(line: 1006, column: 70, scope: !789)
!3235 = !DILocation(line: 1006, column: 76, scope: !789)
!3236 = !DILocation(line: 1006, column: 46, scope: !789)
!3237 = !DILocation(line: 1006, column: 46, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !789, file: !376, discriminator: 2)
!3239 = !DILocation(line: 1006, column: 119, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !789, file: !376, discriminator: 3)
!3241 = !DILocation(line: 1006, column: 89, scope: !789)
!3242 = !DILocation(line: 1006, column: 127, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3244, file: !376, discriminator: 5)
!3244 = !DILexicalBlockFile(scope: !789, file: !376, discriminator: 4)
!3245 = !DILocation(line: 1006, column: 9, scope: !778)
!3246 = !DILocation(line: 1007, column: 9, scope: !788)
!3247 = !DILocation(line: 1007, column: 14, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !787, file: !376, discriminator: 1)
!3249 = !DILocation(line: 1007, column: 24, scope: !787)
!3250 = !DILocation(line: 1007, column: 55, scope: !787)
!3251 = !DILocation(line: 1007, column: 65, scope: !792)
!3252 = !DILocation(line: 1007, column: 81, scope: !792)
!3253 = !DILocation(line: 1007, column: 65, scope: !787)
!3254 = !DILocation(line: 1007, column: 96, scope: !3255)
!3255 = !DILexicalBlockFile(scope: !792, file: !376, discriminator: 2)
!3256 = !DILocation(line: 1007, column: 101, scope: !3257)
!3257 = !DILexicalBlockFile(scope: !791, file: !376, discriminator: 4)
!3258 = !DILocation(line: 1007, column: 111, scope: !791)
!3259 = !DILocation(line: 1007, column: 141, scope: !791)
!3260 = !DILocation(line: 1007, column: 167, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !791, file: !376, line: 1007, column: 164)
!3262 = !DILocation(line: 1007, column: 184, scope: !3261)
!3263 = !DILocation(line: 1007, column: 164, scope: !3261)
!3264 = !DILocation(line: 1007, column: 194, scope: !3261)
!3265 = !DILocation(line: 1007, column: 164, scope: !791)
!3266 = !DILocation(line: 1007, column: 164, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !791, file: !376, discriminator: 5)
!3268 = !DILocation(line: 1007, column: 225, scope: !3269)
!3269 = !DILexicalBlockFile(scope: !3261, file: !376, discriminator: 6)
!3270 = !DILocation(line: 1007, column: 243, scope: !3261)
!3271 = !DILocation(line: 1007, column: 253, scope: !3261)
!3272 = !DILocation(line: 1007, column: 278, scope: !3261)
!3273 = !DILocation(line: 1007, column: 209, scope: !3261)
!3274 = !DILocation(line: 1007, column: 297, scope: !3275)
!3275 = !DILexicalBlockFile(scope: !792, file: !376, discriminator: 7)
!3276 = !DILocation(line: 1007, column: 297, scope: !791)
!3277 = !DILocation(line: 1007, column: 297, scope: !3278)
!3278 = !DILexicalBlockFile(scope: !791, file: !376, discriminator: 8)
!3279 = !DILocation(line: 1007, column: 297, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !791, file: !376, discriminator: 9)
!3281 = !DILocation(line: 1007, column: 310, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3283, file: !376, discriminator: 10)
!3283 = !DILexicalBlockFile(scope: !788, file: !376, discriminator: 3)
!3284 = !DILocation(line: 1007, column: 310, scope: !787)
!3285 = !DILocation(line: 1007, column: 310, scope: !3286)
!3286 = !DILexicalBlockFile(scope: !787, file: !376, discriminator: 11)
!3287 = !DILocation(line: 1008, column: 9, scope: !788)
!3288 = !DILocation(line: 1010, column: 46, scope: !778)
!3289 = !DILocation(line: 1010, column: 51, scope: !778)
!3290 = !DILocation(line: 1010, column: 60, scope: !778)
!3291 = !DILocation(line: 1010, column: 21, scope: !778)
!3292 = !DILocation(line: 1011, column: 69, scope: !778)
!3293 = !DILocation(line: 1011, column: 51, scope: !778)
!3294 = !DILocation(line: 1011, column: 76, scope: !778)
!3295 = !DILocation(line: 1010, column: 9, scope: !778)
!3296 = !DILocation(line: 1010, column: 7, scope: !778)
!3297 = !DILocation(line: 1012, column: 5, scope: !778)
!3298 = !DILocation(line: 1012, column: 10, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !794, file: !376, discriminator: 1)
!3300 = !DILocation(line: 1012, column: 20, scope: !794)
!3301 = !DILocation(line: 1012, column: 50, scope: !794)
!3302 = !DILocation(line: 1012, column: 64, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !794, file: !376, line: 1012, column: 61)
!3304 = !DILocation(line: 1012, column: 81, scope: !3303)
!3305 = !DILocation(line: 1012, column: 61, scope: !3303)
!3306 = !DILocation(line: 1012, column: 91, scope: !3303)
!3307 = !DILocation(line: 1012, column: 61, scope: !794)
!3308 = !DILocation(line: 1012, column: 61, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !794, file: !376, discriminator: 2)
!3310 = !DILocation(line: 1012, column: 122, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !3303, file: !376, discriminator: 3)
!3312 = !DILocation(line: 1012, column: 140, scope: !3303)
!3313 = !DILocation(line: 1012, column: 150, scope: !3303)
!3314 = !DILocation(line: 1012, column: 175, scope: !3303)
!3315 = !DILocation(line: 1012, column: 106, scope: !3303)
!3316 = !DILocation(line: 1012, column: 194, scope: !3317)
!3317 = !DILexicalBlockFile(scope: !778, file: !376, discriminator: 4)
!3318 = !DILocation(line: 1012, column: 194, scope: !794)
!3319 = !DILocation(line: 1012, column: 194, scope: !3320)
!3320 = !DILexicalBlockFile(scope: !794, file: !376, discriminator: 5)
!3321 = !DILocation(line: 1013, column: 12, scope: !778)
!3322 = !DILocation(line: 1013, column: 5, scope: !778)
!3323 = !DILocation(line: 1014, column: 1, scope: !778)
!3324 = !DILocation(line: 577, column: 26, scope: !795)
!3325 = !DILocation(line: 578, column: 26, scope: !795)
!3326 = !DILocation(line: 580, column: 5, scope: !795)
!3327 = !DILocation(line: 580, column: 15, scope: !795)
!3328 = !DILocation(line: 581, column: 5, scope: !795)
!3329 = !DILocation(line: 581, column: 15, scope: !795)
!3330 = !DILocation(line: 582, column: 5, scope: !795)
!3331 = !DILocation(line: 582, column: 17, scope: !795)
!3332 = !DILocation(line: 583, column: 5, scope: !795)
!3333 = !DILocation(line: 583, column: 15, scope: !795)
!3334 = !DILocation(line: 585, column: 34, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !795, file: !376, line: 585, column: 9)
!3336 = !DILocation(line: 585, column: 10, scope: !3335)
!3337 = !DILocation(line: 585, column: 9, scope: !795)
!3338 = !DILocation(line: 587, column: 9, scope: !3335)
!3339 = !DILocation(line: 588, column: 9, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !795, file: !376, line: 588, column: 9)
!3341 = !DILocation(line: 588, column: 17, scope: !3340)
!3342 = !DILocation(line: 588, column: 9, scope: !795)
!3343 = !DILocation(line: 589, column: 17, scope: !3340)
!3344 = !DILocation(line: 589, column: 9, scope: !3340)
!3345 = !DILocation(line: 591, column: 44, scope: !795)
!3346 = !DILocation(line: 591, column: 54, scope: !795)
!3347 = !DILocation(line: 591, column: 59, scope: !795)
!3348 = !DILocation(line: 591, column: 68, scope: !795)
!3349 = !DILocation(line: 591, column: 15, scope: !795)
!3350 = !DILocation(line: 591, column: 13, scope: !795)
!3351 = !DILocation(line: 592, column: 5, scope: !795)
!3352 = !DILocation(line: 593, column: 24, scope: !795)
!3353 = !DILocation(line: 593, column: 38, scope: !795)
!3354 = !DILocation(line: 593, column: 12, scope: !795)
!3355 = !DILocation(line: 593, column: 5, scope: !795)
!3356 = !DILocation(line: 594, column: 1, scope: !795)
!3357 = !DILocation(line: 1017, column: 25, scope: !803)
!3358 = !DILocation(line: 1017, column: 41, scope: !803)
!3359 = !DILocation(line: 1019, column: 5, scope: !803)
!3360 = !DILocation(line: 1019, column: 15, scope: !803)
!3361 = !DILocation(line: 1020, column: 34, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !803, file: !376, line: 1020, column: 9)
!3363 = !DILocation(line: 1020, column: 10, scope: !3362)
!3364 = !DILocation(line: 1020, column: 9, scope: !803)
!3365 = !DILocation(line: 1021, column: 9, scope: !3362)
!3366 = !DILocation(line: 1022, column: 39, scope: !803)
!3367 = !DILocation(line: 1022, column: 12, scope: !803)
!3368 = !DILocation(line: 1022, column: 5, scope: !803)
!3369 = !DILocation(line: 1023, column: 1, scope: !803)
!3370 = !DILocation(line: 651, column: 29, scope: !808)
!3371 = !DILocation(line: 652, column: 29, scope: !808)
!3372 = !DILocation(line: 654, column: 5, scope: !808)
!3373 = !DILocation(line: 654, column: 15, scope: !808)
!3374 = !DILocation(line: 655, column: 5, scope: !808)
!3375 = !DILocation(line: 655, column: 17, scope: !808)
!3376 = !DILocation(line: 656, column: 5, scope: !808)
!3377 = !DILocation(line: 656, column: 16, scope: !808)
!3378 = !DILocation(line: 657, column: 5, scope: !808)
!3379 = !DILocation(line: 657, column: 17, scope: !808)
!3380 = !DILocation(line: 658, column: 5, scope: !808)
!3381 = !DILocation(line: 658, column: 15, scope: !808)
!3382 = !DILocation(line: 660, column: 34, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !808, file: !376, line: 660, column: 9)
!3384 = !DILocation(line: 660, column: 10, scope: !3383)
!3385 = !DILocation(line: 660, column: 9, scope: !808)
!3386 = !DILocation(line: 662, column: 9, scope: !3383)
!3387 = !DILocation(line: 663, column: 18, scope: !808)
!3388 = !DILocation(line: 663, column: 10, scope: !808)
!3389 = !DILocation(line: 664, column: 18, scope: !808)
!3390 = !DILocation(line: 664, column: 10, scope: !808)
!3391 = !DILocation(line: 666, column: 40, scope: !808)
!3392 = !DILocation(line: 666, column: 46, scope: !808)
!3393 = !DILocation(line: 666, column: 14, scope: !808)
!3394 = !DILocation(line: 666, column: 12, scope: !808)
!3395 = !DILocation(line: 667, column: 5, scope: !808)
!3396 = !DILocation(line: 668, column: 24, scope: !808)
!3397 = !DILocation(line: 668, column: 32, scope: !808)
!3398 = !DILocation(line: 668, column: 12, scope: !808)
!3399 = !DILocation(line: 668, column: 5, scope: !808)
!3400 = !DILocation(line: 669, column: 1, scope: !808)
!3401 = !DILocation(line: 1087, column: 43, scope: !817)
!3402 = !DILocation(line: 1087, column: 59, scope: !817)
!3403 = !DILocation(line: 1089, column: 5, scope: !817)
!3404 = !DILocation(line: 1089, column: 17, scope: !817)
!3405 = !DILocation(line: 1090, column: 5, scope: !817)
!3406 = !DILocation(line: 1090, column: 15, scope: !817)
!3407 = !DILocation(line: 1092, column: 34, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !817, file: !376, line: 1092, column: 9)
!3409 = !DILocation(line: 1092, column: 10, scope: !3408)
!3410 = !DILocation(line: 1092, column: 9, scope: !817)
!3411 = !DILocation(line: 1094, column: 9, scope: !3408)
!3412 = !DILocation(line: 1095, column: 31, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !817, file: !376, line: 1095, column: 9)
!3414 = !DILocation(line: 1095, column: 37, scope: !3413)
!3415 = !DILocation(line: 1095, column: 9, scope: !3413)
!3416 = !DILocation(line: 1095, column: 9, scope: !817)
!3417 = !DILocation(line: 1096, column: 9, scope: !3413)
!3418 = !DILocation(line: 1097, column: 58, scope: !817)
!3419 = !DILocation(line: 1097, column: 5, scope: !817)
!3420 = !DILocation(line: 1098, column: 1, scope: !817)
!3421 = !DILocation(line: 1106, column: 41, scope: !823)
!3422 = !DILocation(line: 1106, column: 57, scope: !823)
!3423 = !DILocation(line: 1108, column: 5, scope: !823)
!3424 = !DILocation(line: 1108, column: 17, scope: !823)
!3425 = !DILocation(line: 1110, column: 34, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !823, file: !376, line: 1110, column: 9)
!3427 = !DILocation(line: 1110, column: 10, scope: !3426)
!3428 = !DILocation(line: 1110, column: 9, scope: !823)
!3429 = !DILocation(line: 1112, column: 9, scope: !3426)
!3430 = !DILocation(line: 1113, column: 32, scope: !823)
!3431 = !DILocation(line: 1113, column: 12, scope: !823)
!3432 = !DILocation(line: 1113, column: 5, scope: !823)
!3433 = !DILocation(line: 1114, column: 1, scope: !823)
!3434 = !DILocation(line: 138, column: 33, scope: !416)
!3435 = !DILocation(line: 139, column: 34, scope: !416)
!3436 = !DILocation(line: 141, column: 5, scope: !416)
!3437 = !DILocation(line: 141, column: 15, scope: !416)
!3438 = !DILocation(line: 142, column: 9, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !416, file: !376, line: 142, column: 9)
!3440 = !DILocation(line: 142, column: 17, scope: !3439)
!3441 = !DILocation(line: 142, column: 9, scope: !416)
!3442 = !DILocation(line: 143, column: 9, scope: !3439)
!3443 = !DILocation(line: 144, column: 36, scope: !416)
!3444 = !DILocation(line: 144, column: 45, scope: !416)
!3445 = !DILocation(line: 144, column: 9, scope: !416)
!3446 = !DILocation(line: 144, column: 7, scope: !416)
!3447 = !DILocation(line: 145, column: 5, scope: !416)
!3448 = !DILocation(line: 145, column: 10, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !422, file: !376, discriminator: 1)
!3450 = !DILocation(line: 145, column: 20, scope: !422)
!3451 = !DILocation(line: 145, column: 50, scope: !422)
!3452 = !DILocation(line: 145, column: 68, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !422, file: !376, line: 145, column: 65)
!3454 = !DILocation(line: 145, column: 85, scope: !3453)
!3455 = !DILocation(line: 145, column: 65, scope: !3453)
!3456 = !DILocation(line: 145, column: 95, scope: !3453)
!3457 = !DILocation(line: 145, column: 65, scope: !422)
!3458 = !DILocation(line: 145, column: 65, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !422, file: !376, discriminator: 2)
!3460 = !DILocation(line: 145, column: 126, scope: !3461)
!3461 = !DILexicalBlockFile(scope: !3453, file: !376, discriminator: 3)
!3462 = !DILocation(line: 145, column: 144, scope: !3453)
!3463 = !DILocation(line: 145, column: 154, scope: !3453)
!3464 = !DILocation(line: 145, column: 179, scope: !3453)
!3465 = !DILocation(line: 145, column: 110, scope: !3453)
!3466 = !DILocation(line: 145, column: 198, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !416, file: !376, discriminator: 4)
!3468 = !DILocation(line: 145, column: 198, scope: !422)
!3469 = !DILocation(line: 145, column: 198, scope: !3470)
!3470 = !DILexicalBlockFile(scope: !422, file: !376, discriminator: 5)
!3471 = !DILocation(line: 146, column: 12, scope: !416)
!3472 = !DILocation(line: 146, column: 5, scope: !416)
!3473 = !DILocation(line: 147, column: 1, scope: !416)
