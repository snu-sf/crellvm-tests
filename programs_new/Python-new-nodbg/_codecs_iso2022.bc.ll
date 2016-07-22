; ModuleID = './_codecs_iso2022.bc'
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
%struct.MultibyteCodec = type { i8*, i8*, i32 (i8*)*, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)*, i32 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)*, i32 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)* }
%union.MultibyteCodec_State = type { i8* }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%struct.iso2022_config = type { i32, %struct.iso2022_designation* }
%struct.iso2022_designation = type { i8, i8, i8, i32 ()*, i32 (i8*)*, i16 (i32*, i64*)* }
%struct.unim_index = type { i16*, i8, i8 }
%struct.dbcs_index = type { i16*, i8, i8 }
%struct.pair_encodemap = type { i32, i16 }
%struct.widedbcs_index = type { i32*, i8, i8 }
%struct.dbcs_map = type { i8*, %struct.unim_index*, %struct.dbcs_index* }

@__module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* null, i64 0, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @__methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"_codecs_iso2022\00", align 1
@__methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getcodec, i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"getcodec\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"encoding name must be a string.\00", align 1
@codec_list = internal global %struct.MultibyteCodec* getelementptr inbounds ([8 x %struct.MultibyteCodec], [8 x %struct.MultibyteCodec]* @_codec_list, i32 0, i32 0), align 8
@PyExc_LookupError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"no such codec is supported.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"multibytecodec.__map_*\00", align 1
@getmultibytecodec.cofunc = internal global %struct._object* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"_multibytecodec\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"__create_codec\00", align 1
@_codec_list = internal constant [8 x %struct.MultibyteCodec] [%struct.MultibyteCodec { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_kr_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_1_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_2_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_2004_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_3_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* bitcast (%struct.iso2022_config* @iso2022_jp_ext_config to i8*), i32 (i8*)* @iso2022_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @iso2022_encode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_encode_init, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* @iso2022_encode_reset, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @iso2022_decode, i32 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_init, i64 (%union.MultibyteCodec_State*, i8*)* @iso2022_decode_reset }, %struct.MultibyteCodec { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 (i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"iso2022_kr\00", align 1
@iso2022_kr_config = internal constant %struct.iso2022_config { i32 0, %struct.iso2022_designation* getelementptr inbounds ([2 x %struct.iso2022_designation], [2 x %struct.iso2022_designation]* @iso2022_kr_designations, i32 0, i32 0) }, align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"iso2022_jp\00", align 1
@iso2022_jp_config = internal constant %struct.iso2022_config { i32 5, %struct.iso2022_designation* getelementptr inbounds ([4 x %struct.iso2022_designation], [4 x %struct.iso2022_designation]* @iso2022_jp_designations, i32 0, i32 0) }, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"iso2022_jp_1\00", align 1
@iso2022_jp_1_config = internal constant %struct.iso2022_config { i32 5, %struct.iso2022_designation* getelementptr inbounds ([5 x %struct.iso2022_designation], [5 x %struct.iso2022_designation]* @iso2022_jp_1_designations, i32 0, i32 0) }, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"iso2022_jp_2\00", align 1
@iso2022_jp_2_config = internal constant %struct.iso2022_config { i32 7, %struct.iso2022_designation* getelementptr inbounds ([9 x %struct.iso2022_designation], [9 x %struct.iso2022_designation]* @iso2022_jp_2_designations, i32 0, i32 0) }, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"iso2022_jp_2004\00", align 1
@iso2022_jp_2004_config = internal constant %struct.iso2022_config { i32 5, %struct.iso2022_designation* getelementptr inbounds ([5 x %struct.iso2022_designation], [5 x %struct.iso2022_designation]* @iso2022_jp_2004_designations, i32 0, i32 0) }, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"iso2022_jp_3\00", align 1
@iso2022_jp_3_config = internal constant %struct.iso2022_config { i32 5, %struct.iso2022_designation* getelementptr inbounds ([5 x %struct.iso2022_designation], [5 x %struct.iso2022_designation]* @iso2022_jp_3_designations, i32 0, i32 0) }, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"iso2022_jp_ext\00", align 1
@iso2022_jp_ext_config = internal constant %struct.iso2022_config { i32 5, %struct.iso2022_designation* getelementptr inbounds ([6 x %struct.iso2022_designation], [6 x %struct.iso2022_designation]* @iso2022_jp_ext_designations, i32 0, i32 0) }, align 8
@iso2022_kr_designations = internal constant [2 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -61, i8 1, i8 2, i32 ()* @ksx1001_init, i32 (i8*)* @ksx1001_decoder, i16 (i32*, i64*)* @ksx1001_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@ksx1001_init.initialized = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"_codecs_kr\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"__map_cp949\00", align 1
@cp949_encmap = internal global %struct.unim_index* null, align 8
@.str.17 = private unnamed_addr constant [14 x i8] c"__map_ksx1001\00", align 1
@ksx1001_decmap = internal global %struct.dbcs_index* null, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.18 = private unnamed_addr constant [28 x i8] c"map data must be a Capsule.\00", align 1
@iso2022_jp_designations = internal constant [4 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 74, i8 0, i8 1, i32 ()* null, i32 (i8*)* @jisx0201_r_decoder, i16 (i32*, i64*)* @jisx0201_r_encoder }, %struct.iso2022_designation { i8 -64, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@jisx0208_init.initialized = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"_codecs_jp\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"__map_jisxcommon\00", align 1
@jisxcommon_encmap = internal global %struct.unim_index* null, align 8
@.str.21 = private unnamed_addr constant [15 x i8] c"__map_jisx0208\00", align 1
@jisx0208_decmap = internal global %struct.dbcs_index* null, align 8
@iso2022_jp_1_designations = internal constant [5 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 -60, i8 0, i8 2, i32 ()* @jisx0212_init, i32 (i8*)* @jisx0212_decoder, i16 (i32*, i64*)* @jisx0212_encoder }, %struct.iso2022_designation { i8 74, i8 0, i8 1, i32 ()* null, i32 (i8*)* @jisx0201_r_decoder, i16 (i32*, i64*)* @jisx0201_r_encoder }, %struct.iso2022_designation { i8 -64, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@jisx0212_init.initialized = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"__map_jisx0212\00", align 1
@jisx0212_decmap = internal global %struct.dbcs_index* null, align 8
@iso2022_jp_2_designations = internal constant [9 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 -60, i8 0, i8 2, i32 ()* @jisx0212_init, i32 (i8*)* @jisx0212_decoder, i16 (i32*, i64*)* @jisx0212_encoder }, %struct.iso2022_designation { i8 -61, i8 0, i8 2, i32 ()* @ksx1001_init, i32 (i8*)* @ksx1001_decoder, i16 (i32*, i64*)* @ksx1001_encoder }, %struct.iso2022_designation { i8 -63, i8 0, i8 2, i32 ()* @gb2312_init, i32 (i8*)* @gb2312_decoder, i16 (i32*, i64*)* @gb2312_encoder }, %struct.iso2022_designation { i8 74, i8 0, i8 1, i32 ()* null, i32 (i8*)* @jisx0201_r_decoder, i16 (i32*, i64*)* @jisx0201_r_encoder }, %struct.iso2022_designation { i8 -64, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 65, i8 2, i8 1, i32 ()* null, i32 (i8*)* @dummy_decoder, i16 (i32*, i64*)* @dummy_encoder }, %struct.iso2022_designation { i8 70, i8 2, i8 1, i32 ()* null, i32 (i8*)* @dummy_decoder, i16 (i32*, i64*)* @dummy_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@gb2312_init.initialized = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"_codecs_cn\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"__map_gbcommon\00", align 1
@gbcommon_encmap = internal global %struct.unim_index* null, align 8
@.str.25 = private unnamed_addr constant [13 x i8] c"__map_gb2312\00", align 1
@gb2312_decmap = internal global %struct.dbcs_index* null, align 8
@iso2022_jp_2004_designations = internal constant [5 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -47, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2004_1_decoder, i16 (i32*, i64*)* @jisx0213_2004_1_encoder_paironly }, %struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 -47, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2004_1_decoder, i16 (i32*, i64*)* @jisx0213_2004_1_encoder }, %struct.iso2022_designation { i8 -48, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2004_2_decoder, i16 (i32*, i64*)* @jisx0213_2004_2_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@jisx0213_init.initialized = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [19 x i8] c"__map_jisx0213_bmp\00", align 1
@jisx0213_bmp_encmap = internal global %struct.unim_index* null, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_1_bmp\00", align 1
@jisx0213_1_bmp_decmap = internal global %struct.dbcs_index* null, align 8
@.str.28 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_2_bmp\00", align 1
@jisx0213_2_bmp_decmap = internal global %struct.dbcs_index* null, align 8
@.str.29 = private unnamed_addr constant [19 x i8] c"__map_jisx0213_emp\00", align 1
@jisx0213_emp_encmap = internal global %struct.unim_index* null, align 8
@.str.30 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_1_emp\00", align 1
@jisx0213_1_emp_decmap = internal global %struct.dbcs_index* null, align 8
@.str.31 = private unnamed_addr constant [21 x i8] c"__map_jisx0213_2_emp\00", align 1
@jisx0213_2_emp_decmap = internal global %struct.dbcs_index* null, align 8
@.str.32 = private unnamed_addr constant [20 x i8] c"__map_jisx0213_pair\00", align 1
@jisx0213_pair_encmap = internal global %struct.pair_encodemap* null, align 8
@jisx0213_pair_decmap = internal global %struct.widedbcs_index* null, align 8
@iso2022_jp_3_designations = internal constant [5 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -49, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2000_1_decoder, i16 (i32*, i64*)* @jisx0213_2000_1_encoder_paironly }, %struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 -49, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2000_1_decoder, i16 (i32*, i64*)* @jisx0213_2000_1_encoder }, %struct.iso2022_designation { i8 -48, i8 0, i8 2, i32 ()* @jisx0213_init, i32 (i8*)* @jisx0213_2000_2_decoder, i16 (i32*, i64*)* @jisx0213_2000_2_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@iso2022_jp_ext_designations = internal constant [6 x %struct.iso2022_designation] [%struct.iso2022_designation { i8 -62, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation { i8 -60, i8 0, i8 2, i32 ()* @jisx0212_init, i32 (i8*)* @jisx0212_decoder, i16 (i32*, i64*)* @jisx0212_encoder }, %struct.iso2022_designation { i8 74, i8 0, i8 1, i32 ()* null, i32 (i8*)* @jisx0201_r_decoder, i16 (i32*, i64*)* @jisx0201_r_encoder }, %struct.iso2022_designation { i8 73, i8 0, i8 1, i32 ()* null, i32 (i8*)* @jisx0201_k_decoder, i16 (i32*, i64*)* @jisx0201_k_encoder }, %struct.iso2022_designation { i8 -64, i8 0, i8 2, i32 ()* @jisx0208_init, i32 (i8*)* @jisx0208_decoder, i16 (i32*, i64*)* @jisx0208_encoder }, %struct.iso2022_designation zeroinitializer], align 16
@mapping_list = internal global %struct.dbcs_map* getelementptr inbounds ([1 x %struct.dbcs_map], [1 x %struct.dbcs_map]* @_mapping_list, i32 0, i32 0), align 8
@_mapping_list = internal constant [1 x %struct.dbcs_map] [%struct.dbcs_map { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.unim_index* null, %struct.dbcs_index* null }], align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__codecs_iso2022() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @__module, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i32 @register_maps(%struct._object* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._object*, %struct._object** %m, align 8
  ret %struct._object* %2
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @register_maps(%struct._object* %module) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %h = alloca %struct.dbcs_map*, align 8
  %mhname = alloca [256 x i8], align 16
  %r = alloca i32, align 4
  store %struct._object* %module, %struct._object** %module.addr, align 8
  %0 = load %struct.dbcs_map*, %struct.dbcs_map** @mapping_list, align 8
  store %struct.dbcs_map* %0, %struct.dbcs_map** %h, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8
  %charset = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %1, i32 0, i32 0
  %2 = load i8*, i8** %charset, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = bitcast [256 x i8]* %mhname to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 256, i32 16, i1 false)
  %5 = bitcast i8* %4 to [256 x i8]*
  %6 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 0
  store i8 95, i8* %6
  %7 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 1
  store i8 95, i8* %7
  %8 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 2
  store i8 109, i8* %8
  %9 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 3
  store i8 97, i8* %9
  %10 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 4
  store i8 112, i8* %10
  %11 = getelementptr [256 x i8], [256 x i8]* %5, i32 0, i32 5
  store i8 95, i8* %11
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 7
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 -1
  %12 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8
  %charset3 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %12, i32 0, i32 0
  %13 = load i8*, i8** %charset3, align 8
  %call = call i8* @strcpy(i8* %add.ptr2, i8* %13) #3
  %14 = load %struct._object*, %struct._object** %module.addr, align 8
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0
  %15 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8
  %16 = bitcast %struct.dbcs_map* %15 to i8*
  %call5 = call %struct._object* @PyCapsule_New(i8* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null)
  %call6 = call i32 @PyModule_AddObject(%struct._object* %14, i8* %arraydecay4, %struct._object* %call5)
  store i32 %call6, i32* %r, align 4
  %17 = load i32, i32* %r, align 4
  %cmp7 = icmp eq i32 %17, -1
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8
  %incdec.ptr = getelementptr %struct.dbcs_map, %struct.dbcs_map* %18, i32 1
  store %struct.dbcs_map* %incdec.ptr, %struct.dbcs_map** %h, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @getcodec(%struct._object* %self, %struct._object* %encoding) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %encoding.addr = alloca %struct._object*, align 8
  %codecobj = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %cofunc = alloca %struct._object*, align 8
  %codec = alloca %struct.MultibyteCodec*, align 8
  %enc = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %encoding, %struct._object** %encoding.addr, align 8
  %0 = load %struct._object*, %struct._object** %encoding.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %encoding.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %4)
  store i8* %call, i8** %enc, align 8
  %5 = load i8*, i8** %enc, align 8
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @getmultibytecodec()
  store %struct._object* %call4, %struct._object** %cofunc, align 8
  %6 = load %struct._object*, %struct._object** %cofunc, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %7 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** @codec_list, align 8
  store %struct.MultibyteCodec* %7, %struct.MultibyteCodec** %codec, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %8 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %encoding8 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %8, i32 0, i32 0
  %9 = load i8*, i8** %encoding8, align 8
  %arrayidx = getelementptr i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %encoding9 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %11, i32 0, i32 0
  %12 = load i8*, i8** %encoding9, align 8
  %13 = load i8*, i8** %enc, align 8
  %call10 = call i32 @strcmp(i8* %12, i8* %13) #5
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %14 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %incdec.ptr = getelementptr %struct.MultibyteCodec, %struct.MultibyteCodec* %14, i32 1
  store %struct.MultibyteCodec* %incdec.ptr, %struct.MultibyteCodec** %codec, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %15 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %encoding14 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %15, i32 0, i32 0
  %16 = load i8*, i8** %encoding14, align 8
  %arrayidx15 = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %17 to i32
  %cmp16 = icmp eq i32 %conv, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %18 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  %19 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %20 = bitcast %struct.MultibyteCodec* %19 to i8*
  %call20 = call %struct._object* @PyCapsule_New(i8* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null)
  store %struct._object* %call20, %struct._object** %codecobj, align 8
  %21 = load %struct._object*, %struct._object** %codecobj, align 8
  %cmp21 = icmp eq %struct._object* %21, null
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  %22 = load %struct._object*, %struct._object** %cofunc, align 8
  %23 = load %struct._object*, %struct._object** %codecobj, align 8
  %call25 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %22, %struct._object* %23, i8* null)
  store %struct._object* %call25, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %24 = load %struct._object*, %struct._object** %codecobj, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.30

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.30
  %31 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.23, %if.then.18, %if.then.6, %if.then.2, %if.then
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @getmultibytecodec() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %mod, align 8
  %1 = load %struct._object*, %struct._object** %mod, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %mod, align 8
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* %call3, %struct._object** @getmultibytecodec.cofunc, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %mod, align 8
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
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %entry
  %10 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.2
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @iso2022_codec_init(i8* %config) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca i8*, align 8
  %desig = alloca %struct.iso2022_designation*, align 8
  store i8* %config, i8** %config.addr, align 8
  %0 = load i8*, i8** %config.addr, align 8
  %1 = bitcast i8* %0 to %struct.iso2022_config*
  %designations = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %1, i32 0, i32 1
  %2 = load %struct.iso2022_designation*, %struct.iso2022_designation** %designations, align 8
  store %struct.iso2022_designation* %2, %struct.iso2022_designation** %desig, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.iso2022_designation*, %struct.iso2022_designation** %desig, align 8
  %mark = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %3, i32 0, i32 0
  %4 = load i8, i8* %mark, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.iso2022_designation*, %struct.iso2022_designation** %desig, align 8
  %initializer = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %5, i32 0, i32 3
  %6 = load i32 ()*, i32 ()** %initializer, align 8
  %cmp = icmp ne i32 ()* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.iso2022_designation*, %struct.iso2022_designation** %desig, align 8
  %initializer1 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %7, i32 0, i32 3
  %8 = load i32 ()*, i32 ()** %initializer1, align 8
  %call = call i32 %8()
  %cmp2 = icmp ne i32 %call, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.iso2022_designation*, %struct.iso2022_designation** %desig, align 8
  %incdec.ptr = getelementptr %struct.iso2022_designation, %struct.iso2022_designation* %9, i32 1
  store %struct.iso2022_designation* %incdec.ptr, %struct.iso2022_designation** %desig, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i64 @iso2022_encode(%union.MultibyteCodec_State* %state, i8* %config, i32 %kind, i8* %data, i64* %inpos, i64 %inlen, i8** %outbuf, i64 %outleft, i32 %flags) #0 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %inpos.addr = alloca i64*, align 8
  %inlen.addr = alloca i64, align 8
  %outbuf.addr = alloca i8**, align 8
  %outleft.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %dsg = alloca %struct.iso2022_designation*, align 8
  %encoded = alloca i16, align 2
  %c = alloca i32, align 4
  %insize = alloca i64, align 8
  %length = alloca i64, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i64* %inpos, i64** %inpos.addr, align 8
  store i64 %inlen, i64* %inlen.addr, align 8
  store i8** %outbuf, i8*** %outbuf.addr, align 8
  store i64 %outleft, i64* %outleft.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end.367, %do.end.76, %entry
  %0 = load i64*, i64** %inpos.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i64, i64* %inlen.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %kind.addr, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.body
  %4 = load i64*, i64** %inpos.addr, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 %5
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  br label %cond.end.9

cond.false:                                       ; preds = %while.body
  %8 = load i32, i32* %kind.addr, align 4
  %cmp2 = icmp eq i32 %8, 2
  br i1 %cmp2, label %cond.true.4, label %cond.false.7

cond.true.4:                                      ; preds = %cond.false
  %9 = load i64*, i64** %inpos.addr, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %12 = bitcast i8* %11 to i16*
  %arrayidx5 = getelementptr i16, i16* %12, i64 %10
  %13 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %13 to i32
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %14 = load i64*, i64** %inpos.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i8*, i8** %data.addr, align 8
  %17 = bitcast i8* %16 to i32*
  %arrayidx8 = getelementptr i32, i32* %17, i64 %15
  %18 = load i32, i32* %arrayidx8, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.4
  %cond = phi i32 [ %conv6, %cond.true.4 ], [ %18, %cond.false.7 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond10, i32* %c, align 4
  %19 = load i32, i32* %c, align 4
  %cmp11 = icmp ult i32 %19, 128
  br i1 %cmp11, label %if.then, label %if.end.77

if.then:                                          ; preds = %cond.end.9
  %20 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c13 = bitcast %union.MultibyteCodec_State* %20 to [8 x i8]*
  %arrayidx14 = getelementptr [8 x i8], [8 x i8]* %c13, i32 0, i64 0
  %21 = load i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %21 to i32
  %cmp16 = icmp ne i32 %conv15, 66
  br i1 %cmp16, label %if.then.18, label %if.end.33

if.then.18:                                       ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.18
  br label %do.body.19

do.body.19:                                       ; preds = %do.body
  %22 = load i64, i64* %outleft.addr, align 8
  %cmp20 = icmp slt i64 %22, 3
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %do.body.19
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body.19
  br label %do.end

do.end:                                           ; preds = %if.end
  %23 = load i8**, i8*** %outbuf.addr, align 8
  %24 = load i8*, i8** %23, align 8
  %arrayidx23 = getelementptr i8, i8* %24, i64 0
  store i8 27, i8* %arrayidx23, align 1
  %25 = load i8**, i8*** %outbuf.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %arrayidx24 = getelementptr i8, i8* %26, i64 1
  store i8 40, i8* %arrayidx24, align 1
  %27 = load i8**, i8*** %outbuf.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %arrayidx25 = getelementptr i8, i8* %28, i64 2
  store i8 66, i8* %arrayidx25, align 1
  br label %do.end.26

do.end.26:                                        ; preds = %do.end
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %29 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c28 = bitcast %union.MultibyteCodec_State* %29 to [8 x i8]*
  %arrayidx29 = getelementptr [8 x i8], [8 x i8]* %c28, i32 0, i64 0
  store i8 66, i8* %arrayidx29, align 1
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %30 = load i8**, i8*** %outbuf.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %add.ptr = getelementptr i8, i8* %31, i64 3
  store i8* %add.ptr, i8** %30, align 8
  %32 = load i64, i64* %outleft.addr, align 8
  %sub = sub i64 %32, 3
  store i64 %sub, i64* %outleft.addr, align 8
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %if.then
  %33 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c34 = bitcast %union.MultibyteCodec_State* %33 to [8 x i8]*
  %arrayidx35 = getelementptr [8 x i8], [8 x i8]* %c34, i32 0, i64 4
  %34 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %34 to i32
  %and = and i32 %conv36, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.37, label %if.end.58

if.then.37:                                       ; preds = %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.body.38
  %35 = load i64, i64* %outleft.addr, align 8
  %cmp40 = icmp slt i64 %35, 1
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %do.body.39
  store i64 -1, i64* %retval
  br label %return

if.end.43:                                        ; preds = %do.body.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %36 = load i8**, i8*** %outbuf.addr, align 8
  %37 = load i8*, i8** %36, align 8
  %arrayidx45 = getelementptr i8, i8* %37, i64 0
  store i8 15, i8* %arrayidx45, align 1
  br label %do.end.46

do.end.46:                                        ; preds = %do.end.44
  br label %do.body.47

do.body.47:                                       ; preds = %do.end.46
  %38 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c48 = bitcast %union.MultibyteCodec_State* %38 to [8 x i8]*
  %arrayidx49 = getelementptr [8 x i8], [8 x i8]* %c48, i32 0, i64 4
  %39 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %39 to i32
  %and51 = and i32 %conv50, -2
  %conv52 = trunc i32 %and51 to i8
  store i8 %conv52, i8* %arrayidx49, align 1
  br label %do.end.53

do.end.53:                                        ; preds = %do.body.47
  br label %do.body.54

do.body.54:                                       ; preds = %do.end.53
  %40 = load i8**, i8*** %outbuf.addr, align 8
  %41 = load i8*, i8** %40, align 8
  %add.ptr55 = getelementptr i8, i8* %41, i64 1
  store i8* %add.ptr55, i8** %40, align 8
  %42 = load i64, i64* %outleft.addr, align 8
  %sub56 = sub i64 %42, 1
  store i64 %sub56, i64* %outleft.addr, align 8
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.54
  br label %if.end.58

if.end.58:                                        ; preds = %do.end.57, %if.end.33
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.body.59
  %43 = load i64, i64* %outleft.addr, align 8
  %cmp61 = icmp slt i64 %43, 1
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %do.body.60
  store i64 -1, i64* %retval
  br label %return

if.end.64:                                        ; preds = %do.body.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  %44 = load i32, i32* %c, align 4
  %conv66 = trunc i32 %44 to i8
  %45 = load i8**, i8*** %outbuf.addr, align 8
  %46 = load i8*, i8** %45, align 8
  %arrayidx67 = getelementptr i8, i8* %46, i64 0
  store i8 %conv66, i8* %arrayidx67, align 1
  br label %do.end.68

do.end.68:                                        ; preds = %do.end.65
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  br label %do.body.70

do.body.70:                                       ; preds = %do.body.69
  %47 = load i64*, i64** %inpos.addr, align 8
  %48 = load i64, i64* %47, align 8
  %add = add i64 %48, 1
  store i64 %add, i64* %47, align 8
  br label %do.end.71

do.end.71:                                        ; preds = %do.body.70
  br label %do.body.72

do.body.72:                                       ; preds = %do.end.71
  %49 = load i8**, i8*** %outbuf.addr, align 8
  %50 = load i8*, i8** %49, align 8
  %add.ptr73 = getelementptr i8, i8* %50, i64 1
  store i8* %add.ptr73, i8** %49, align 8
  %51 = load i64, i64* %outleft.addr, align 8
  %sub74 = sub i64 %51, 1
  store i64 %sub74, i64* %outleft.addr, align 8
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.72
  br label %do.end.76

do.end.76:                                        ; preds = %do.end.75
  br label %while.cond

if.end.77:                                        ; preds = %cond.end.9
  store i64 1, i64* %insize, align 8
  store i16 -1, i16* %encoded, align 2
  %52 = load i8*, i8** %config.addr, align 8
  %53 = bitcast i8* %52 to %struct.iso2022_config*
  %designations = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %53, i32 0, i32 1
  %54 = load %struct.iso2022_designation*, %struct.iso2022_designation** %designations, align 8
  store %struct.iso2022_designation* %54, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.77
  %55 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %55, i32 0, i32 0
  %56 = load i8, i8* %mark, align 1
  %tobool78 = icmp ne i8 %56, 0
  br i1 %tobool78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 1, i64* %length, align 8
  %57 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %encoder = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %57, i32 0, i32 5
  %58 = load i16 (i32*, i64*)*, i16 (i32*, i64*)** %encoder, align 8
  %call = call zeroext i16 %58(i32* %c, i64* %length)
  store i16 %call, i16* %encoded, align 2
  %59 = load i16, i16* %encoded, align 2
  %conv79 = zext i16 %59 to i32
  %cmp80 = icmp eq i32 %conv79, 65534
  br i1 %cmp80, label %if.then.82, label %if.else.99

if.then.82:                                       ; preds = %for.body
  %60 = load i64, i64* %inlen.addr, align 8
  %61 = load i64*, i64** %inpos.addr, align 8
  %62 = load i64, i64* %61, align 8
  %sub83 = sub i64 %60, %62
  %cmp84 = icmp slt i64 %sub83, 2
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %if.then.82
  %63 = load i32, i32* %flags.addr, align 4
  %and87 = and i32 %63, 1
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %if.then.86
  store i64 -2, i64* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.86
  store i64 -1, i64* %length, align 8
  br label %if.end.91

if.else:                                          ; preds = %if.then.82
  store i64 2, i64* %length, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %if.end.90
  %64 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %encoder92 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %64, i32 0, i32 5
  %65 = load i16 (i32*, i64*)*, i16 (i32*, i64*)** %encoder92, align 8
  %call93 = call zeroext i16 %65(i32* %c, i64* %length)
  store i16 %call93, i16* %encoded, align 2
  %66 = load i16, i16* %encoded, align 2
  %conv94 = zext i16 %66 to i32
  %cmp95 = icmp ne i32 %conv94, 65535
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.91
  %67 = load i64, i64* %length, align 8
  store i64 %67, i64* %insize, align 8
  br label %for.end

if.end.98:                                        ; preds = %if.end.91
  br label %if.end.105

if.else.99:                                       ; preds = %for.body
  %68 = load i16, i16* %encoded, align 2
  %conv100 = zext i16 %68 to i32
  %cmp101 = icmp ne i32 %conv100, 65535
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.else.99
  br label %for.end

if.end.104:                                       ; preds = %if.else.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.end.98
  br label %for.inc

for.inc:                                          ; preds = %if.end.105
  %69 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %incdec.ptr = getelementptr %struct.iso2022_designation, %struct.iso2022_designation* %69, i32 1
  store %struct.iso2022_designation* %incdec.ptr, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.103, %if.then.97, %for.cond
  %70 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark106 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %70, i32 0, i32 0
  %71 = load i8, i8* %mark106, align 1
  %tobool107 = icmp ne i8 %71, 0
  br i1 %tobool107, label %if.end.109, label %if.then.108

if.then.108:                                      ; preds = %for.end
  store i64 1, i64* %retval
  br label %return

if.end.109:                                       ; preds = %for.end
  %72 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %plane = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %72, i32 0, i32 1
  %73 = load i8, i8* %plane, align 1
  %conv110 = zext i8 %73 to i32
  switch i32 %conv110, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.233
  ]

sw.bb:                                            ; preds = %if.end.109
  %74 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c111 = bitcast %union.MultibyteCodec_State* %74 to [8 x i8]*
  %arrayidx112 = getelementptr [8 x i8], [8 x i8]* %c111, i32 0, i64 4
  %75 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %75 to i32
  %and114 = and i32 %conv113, 1
  %tobool115 = icmp ne i32 %and114, 0
  br i1 %tobool115, label %if.then.116, label %if.end.137

if.then.116:                                      ; preds = %sw.bb
  br label %do.body.117

do.body.117:                                      ; preds = %if.then.116
  br label %do.body.118

do.body.118:                                      ; preds = %do.body.117
  %76 = load i64, i64* %outleft.addr, align 8
  %cmp119 = icmp slt i64 %76, 1
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %do.body.118
  store i64 -1, i64* %retval
  br label %return

if.end.122:                                       ; preds = %do.body.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  %77 = load i8**, i8*** %outbuf.addr, align 8
  %78 = load i8*, i8** %77, align 8
  %arrayidx124 = getelementptr i8, i8* %78, i64 0
  store i8 15, i8* %arrayidx124, align 1
  br label %do.end.125

do.end.125:                                       ; preds = %do.end.123
  br label %do.body.126

do.body.126:                                      ; preds = %do.end.125
  %79 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c127 = bitcast %union.MultibyteCodec_State* %79 to [8 x i8]*
  %arrayidx128 = getelementptr [8 x i8], [8 x i8]* %c127, i32 0, i64 4
  %80 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %80 to i32
  %and130 = and i32 %conv129, -2
  %conv131 = trunc i32 %and130 to i8
  store i8 %conv131, i8* %arrayidx128, align 1
  br label %do.end.132

do.end.132:                                       ; preds = %do.body.126
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %81 = load i8**, i8*** %outbuf.addr, align 8
  %82 = load i8*, i8** %81, align 8
  %add.ptr134 = getelementptr i8, i8* %82, i64 1
  store i8* %add.ptr134, i8** %81, align 8
  %83 = load i64, i64* %outleft.addr, align 8
  %sub135 = sub i64 %83, 1
  store i64 %sub135, i64* %outleft.addr, align 8
  br label %do.end.136

do.end.136:                                       ; preds = %do.body.133
  br label %if.end.137

if.end.137:                                       ; preds = %do.end.136, %sw.bb
  %84 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c138 = bitcast %union.MultibyteCodec_State* %84 to [8 x i8]*
  %arrayidx139 = getelementptr [8 x i8], [8 x i8]* %c138, i32 0, i64 0
  %85 = load i8, i8* %arrayidx139, align 1
  %conv140 = zext i8 %85 to i32
  %86 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark141 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %86, i32 0, i32 0
  %87 = load i8, i8* %mark141, align 1
  %conv142 = zext i8 %87 to i32
  %cmp143 = icmp ne i32 %conv140, %conv142
  br i1 %cmp143, label %if.then.145, label %if.end.232

if.then.145:                                      ; preds = %if.end.137
  %88 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %88, i32 0, i32 2
  %89 = load i8, i8* %width, align 1
  %conv146 = zext i8 %89 to i32
  %cmp147 = icmp eq i32 %conv146, 1
  br i1 %cmp147, label %if.then.149, label %if.else.174

if.then.149:                                      ; preds = %if.then.145
  br label %do.body.150

do.body.150:                                      ; preds = %if.then.149
  br label %do.body.151

do.body.151:                                      ; preds = %do.body.150
  %90 = load i64, i64* %outleft.addr, align 8
  %cmp152 = icmp slt i64 %90, 3
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %do.body.151
  store i64 -1, i64* %retval
  br label %return

if.end.155:                                       ; preds = %do.body.151
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  %91 = load i8**, i8*** %outbuf.addr, align 8
  %92 = load i8*, i8** %91, align 8
  %arrayidx157 = getelementptr i8, i8* %92, i64 0
  store i8 27, i8* %arrayidx157, align 1
  %93 = load i8**, i8*** %outbuf.addr, align 8
  %94 = load i8*, i8** %93, align 8
  %arrayidx158 = getelementptr i8, i8* %94, i64 1
  store i8 40, i8* %arrayidx158, align 1
  %95 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark159 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %95, i32 0, i32 0
  %96 = load i8, i8* %mark159, align 1
  %conv160 = zext i8 %96 to i32
  %and161 = and i32 %conv160, 127
  %conv162 = trunc i32 %and161 to i8
  %97 = load i8**, i8*** %outbuf.addr, align 8
  %98 = load i8*, i8** %97, align 8
  %arrayidx163 = getelementptr i8, i8* %98, i64 2
  store i8 %conv162, i8* %arrayidx163, align 1
  br label %do.end.164

do.end.164:                                       ; preds = %do.end.156
  br label %do.body.165

do.body.165:                                      ; preds = %do.end.164
  %99 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark166 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %99, i32 0, i32 0
  %100 = load i8, i8* %mark166, align 1
  %101 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c167 = bitcast %union.MultibyteCodec_State* %101 to [8 x i8]*
  %arrayidx168 = getelementptr [8 x i8], [8 x i8]* %c167, i32 0, i64 0
  store i8 %100, i8* %arrayidx168, align 1
  br label %do.end.169

do.end.169:                                       ; preds = %do.body.165
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.169
  %102 = load i8**, i8*** %outbuf.addr, align 8
  %103 = load i8*, i8** %102, align 8
  %add.ptr171 = getelementptr i8, i8* %103, i64 3
  store i8* %add.ptr171, i8** %102, align 8
  %104 = load i64, i64* %outleft.addr, align 8
  %sub172 = sub i64 %104, 3
  store i64 %sub172, i64* %outleft.addr, align 8
  br label %do.end.173

do.end.173:                                       ; preds = %do.body.170
  br label %if.end.231

if.else.174:                                      ; preds = %if.then.145
  %105 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark175 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %105, i32 0, i32 0
  %106 = load i8, i8* %mark175, align 1
  %conv176 = zext i8 %106 to i32
  %cmp177 = icmp eq i32 %conv176, 194
  br i1 %cmp177, label %if.then.179, label %if.else.204

if.then.179:                                      ; preds = %if.else.174
  br label %do.body.180

do.body.180:                                      ; preds = %if.then.179
  br label %do.body.181

do.body.181:                                      ; preds = %do.body.180
  %107 = load i64, i64* %outleft.addr, align 8
  %cmp182 = icmp slt i64 %107, 3
  br i1 %cmp182, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %do.body.181
  store i64 -1, i64* %retval
  br label %return

if.end.185:                                       ; preds = %do.body.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  %108 = load i8**, i8*** %outbuf.addr, align 8
  %109 = load i8*, i8** %108, align 8
  %arrayidx187 = getelementptr i8, i8* %109, i64 0
  store i8 27, i8* %arrayidx187, align 1
  %110 = load i8**, i8*** %outbuf.addr, align 8
  %111 = load i8*, i8** %110, align 8
  %arrayidx188 = getelementptr i8, i8* %111, i64 1
  store i8 36, i8* %arrayidx188, align 1
  %112 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark189 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %112, i32 0, i32 0
  %113 = load i8, i8* %mark189, align 1
  %conv190 = zext i8 %113 to i32
  %and191 = and i32 %conv190, 127
  %conv192 = trunc i32 %and191 to i8
  %114 = load i8**, i8*** %outbuf.addr, align 8
  %115 = load i8*, i8** %114, align 8
  %arrayidx193 = getelementptr i8, i8* %115, i64 2
  store i8 %conv192, i8* %arrayidx193, align 1
  br label %do.end.194

do.end.194:                                       ; preds = %do.end.186
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %116 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark196 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %116, i32 0, i32 0
  %117 = load i8, i8* %mark196, align 1
  %118 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c197 = bitcast %union.MultibyteCodec_State* %118 to [8 x i8]*
  %arrayidx198 = getelementptr [8 x i8], [8 x i8]* %c197, i32 0, i64 0
  store i8 %117, i8* %arrayidx198, align 1
  br label %do.end.199

do.end.199:                                       ; preds = %do.body.195
  br label %do.body.200

do.body.200:                                      ; preds = %do.end.199
  %119 = load i8**, i8*** %outbuf.addr, align 8
  %120 = load i8*, i8** %119, align 8
  %add.ptr201 = getelementptr i8, i8* %120, i64 3
  store i8* %add.ptr201, i8** %119, align 8
  %121 = load i64, i64* %outleft.addr, align 8
  %sub202 = sub i64 %121, 3
  store i64 %sub202, i64* %outleft.addr, align 8
  br label %do.end.203

do.end.203:                                       ; preds = %do.body.200
  br label %if.end.230

if.else.204:                                      ; preds = %if.else.174
  br label %do.body.205

do.body.205:                                      ; preds = %if.else.204
  br label %do.body.206

do.body.206:                                      ; preds = %do.body.205
  %122 = load i64, i64* %outleft.addr, align 8
  %cmp207 = icmp slt i64 %122, 4
  br i1 %cmp207, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %do.body.206
  store i64 -1, i64* %retval
  br label %return

if.end.210:                                       ; preds = %do.body.206
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  %123 = load i8**, i8*** %outbuf.addr, align 8
  %124 = load i8*, i8** %123, align 8
  %arrayidx212 = getelementptr i8, i8* %124, i64 0
  store i8 27, i8* %arrayidx212, align 1
  %125 = load i8**, i8*** %outbuf.addr, align 8
  %126 = load i8*, i8** %125, align 8
  %arrayidx213 = getelementptr i8, i8* %126, i64 1
  store i8 36, i8* %arrayidx213, align 1
  %127 = load i8**, i8*** %outbuf.addr, align 8
  %128 = load i8*, i8** %127, align 8
  %arrayidx214 = getelementptr i8, i8* %128, i64 2
  store i8 40, i8* %arrayidx214, align 1
  %129 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark215 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %129, i32 0, i32 0
  %130 = load i8, i8* %mark215, align 1
  %conv216 = zext i8 %130 to i32
  %and217 = and i32 %conv216, 127
  %conv218 = trunc i32 %and217 to i8
  %131 = load i8**, i8*** %outbuf.addr, align 8
  %132 = load i8*, i8** %131, align 8
  %arrayidx219 = getelementptr i8, i8* %132, i64 3
  store i8 %conv218, i8* %arrayidx219, align 1
  br label %do.end.220

do.end.220:                                       ; preds = %do.end.211
  br label %do.body.221

do.body.221:                                      ; preds = %do.end.220
  %133 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark222 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %133, i32 0, i32 0
  %134 = load i8, i8* %mark222, align 1
  %135 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c223 = bitcast %union.MultibyteCodec_State* %135 to [8 x i8]*
  %arrayidx224 = getelementptr [8 x i8], [8 x i8]* %c223, i32 0, i64 0
  store i8 %134, i8* %arrayidx224, align 1
  br label %do.end.225

do.end.225:                                       ; preds = %do.body.221
  br label %do.body.226

do.body.226:                                      ; preds = %do.end.225
  %136 = load i8**, i8*** %outbuf.addr, align 8
  %137 = load i8*, i8** %136, align 8
  %add.ptr227 = getelementptr i8, i8* %137, i64 4
  store i8* %add.ptr227, i8** %136, align 8
  %138 = load i64, i64* %outleft.addr, align 8
  %sub228 = sub i64 %138, 4
  store i64 %sub228, i64* %outleft.addr, align 8
  br label %do.end.229

do.end.229:                                       ; preds = %do.body.226
  br label %if.end.230

if.end.230:                                       ; preds = %do.end.229, %do.end.203
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %do.end.173
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.end.137
  br label %sw.epilog

sw.bb.233:                                        ; preds = %if.end.109
  %139 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c234 = bitcast %union.MultibyteCodec_State* %139 to [8 x i8]*
  %arrayidx235 = getelementptr [8 x i8], [8 x i8]* %c234, i32 0, i64 1
  %140 = load i8, i8* %arrayidx235, align 1
  %conv236 = zext i8 %140 to i32
  %141 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark237 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %141, i32 0, i32 0
  %142 = load i8, i8* %mark237, align 1
  %conv238 = zext i8 %142 to i32
  %cmp239 = icmp ne i32 %conv236, %conv238
  br i1 %cmp239, label %if.then.241, label %if.end.298

if.then.241:                                      ; preds = %sw.bb.233
  %143 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width242 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %143, i32 0, i32 2
  %144 = load i8, i8* %width242, align 1
  %conv243 = zext i8 %144 to i32
  %cmp244 = icmp eq i32 %conv243, 1
  br i1 %cmp244, label %if.then.246, label %if.else.271

if.then.246:                                      ; preds = %if.then.241
  br label %do.body.247

do.body.247:                                      ; preds = %if.then.246
  br label %do.body.248

do.body.248:                                      ; preds = %do.body.247
  %145 = load i64, i64* %outleft.addr, align 8
  %cmp249 = icmp slt i64 %145, 3
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %do.body.248
  store i64 -1, i64* %retval
  br label %return

if.end.252:                                       ; preds = %do.body.248
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.252
  %146 = load i8**, i8*** %outbuf.addr, align 8
  %147 = load i8*, i8** %146, align 8
  %arrayidx254 = getelementptr i8, i8* %147, i64 0
  store i8 27, i8* %arrayidx254, align 1
  %148 = load i8**, i8*** %outbuf.addr, align 8
  %149 = load i8*, i8** %148, align 8
  %arrayidx255 = getelementptr i8, i8* %149, i64 1
  store i8 41, i8* %arrayidx255, align 1
  %150 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark256 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %150, i32 0, i32 0
  %151 = load i8, i8* %mark256, align 1
  %conv257 = zext i8 %151 to i32
  %and258 = and i32 %conv257, 127
  %conv259 = trunc i32 %and258 to i8
  %152 = load i8**, i8*** %outbuf.addr, align 8
  %153 = load i8*, i8** %152, align 8
  %arrayidx260 = getelementptr i8, i8* %153, i64 2
  store i8 %conv259, i8* %arrayidx260, align 1
  br label %do.end.261

do.end.261:                                       ; preds = %do.end.253
  br label %do.body.262

do.body.262:                                      ; preds = %do.end.261
  %154 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark263 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %154, i32 0, i32 0
  %155 = load i8, i8* %mark263, align 1
  %156 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c264 = bitcast %union.MultibyteCodec_State* %156 to [8 x i8]*
  %arrayidx265 = getelementptr [8 x i8], [8 x i8]* %c264, i32 0, i64 1
  store i8 %155, i8* %arrayidx265, align 1
  br label %do.end.266

do.end.266:                                       ; preds = %do.body.262
  br label %do.body.267

do.body.267:                                      ; preds = %do.end.266
  %157 = load i8**, i8*** %outbuf.addr, align 8
  %158 = load i8*, i8** %157, align 8
  %add.ptr268 = getelementptr i8, i8* %158, i64 3
  store i8* %add.ptr268, i8** %157, align 8
  %159 = load i64, i64* %outleft.addr, align 8
  %sub269 = sub i64 %159, 3
  store i64 %sub269, i64* %outleft.addr, align 8
  br label %do.end.270

do.end.270:                                       ; preds = %do.body.267
  br label %if.end.297

if.else.271:                                      ; preds = %if.then.241
  br label %do.body.272

do.body.272:                                      ; preds = %if.else.271
  br label %do.body.273

do.body.273:                                      ; preds = %do.body.272
  %160 = load i64, i64* %outleft.addr, align 8
  %cmp274 = icmp slt i64 %160, 4
  br i1 %cmp274, label %if.then.276, label %if.end.277

if.then.276:                                      ; preds = %do.body.273
  store i64 -1, i64* %retval
  br label %return

if.end.277:                                       ; preds = %do.body.273
  br label %do.end.278

do.end.278:                                       ; preds = %if.end.277
  %161 = load i8**, i8*** %outbuf.addr, align 8
  %162 = load i8*, i8** %161, align 8
  %arrayidx279 = getelementptr i8, i8* %162, i64 0
  store i8 27, i8* %arrayidx279, align 1
  %163 = load i8**, i8*** %outbuf.addr, align 8
  %164 = load i8*, i8** %163, align 8
  %arrayidx280 = getelementptr i8, i8* %164, i64 1
  store i8 36, i8* %arrayidx280, align 1
  %165 = load i8**, i8*** %outbuf.addr, align 8
  %166 = load i8*, i8** %165, align 8
  %arrayidx281 = getelementptr i8, i8* %166, i64 2
  store i8 41, i8* %arrayidx281, align 1
  %167 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark282 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %167, i32 0, i32 0
  %168 = load i8, i8* %mark282, align 1
  %conv283 = zext i8 %168 to i32
  %and284 = and i32 %conv283, 127
  %conv285 = trunc i32 %and284 to i8
  %169 = load i8**, i8*** %outbuf.addr, align 8
  %170 = load i8*, i8** %169, align 8
  %arrayidx286 = getelementptr i8, i8* %170, i64 3
  store i8 %conv285, i8* %arrayidx286, align 1
  br label %do.end.287

do.end.287:                                       ; preds = %do.end.278
  br label %do.body.288

do.body.288:                                      ; preds = %do.end.287
  %171 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark289 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %171, i32 0, i32 0
  %172 = load i8, i8* %mark289, align 1
  %173 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c290 = bitcast %union.MultibyteCodec_State* %173 to [8 x i8]*
  %arrayidx291 = getelementptr [8 x i8], [8 x i8]* %c290, i32 0, i64 1
  store i8 %172, i8* %arrayidx291, align 1
  br label %do.end.292

do.end.292:                                       ; preds = %do.body.288
  br label %do.body.293

do.body.293:                                      ; preds = %do.end.292
  %174 = load i8**, i8*** %outbuf.addr, align 8
  %175 = load i8*, i8** %174, align 8
  %add.ptr294 = getelementptr i8, i8* %175, i64 4
  store i8* %add.ptr294, i8** %174, align 8
  %176 = load i64, i64* %outleft.addr, align 8
  %sub295 = sub i64 %176, 4
  store i64 %sub295, i64* %outleft.addr, align 8
  br label %do.end.296

do.end.296:                                       ; preds = %do.body.293
  br label %if.end.297

if.end.297:                                       ; preds = %do.end.296, %do.end.270
  br label %if.end.298

if.end.298:                                       ; preds = %if.end.297, %sw.bb.233
  %177 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c299 = bitcast %union.MultibyteCodec_State* %177 to [8 x i8]*
  %arrayidx300 = getelementptr [8 x i8], [8 x i8]* %c299, i32 0, i64 4
  %178 = load i8, i8* %arrayidx300, align 1
  %conv301 = zext i8 %178 to i32
  %and302 = and i32 %conv301, 1
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %if.end.324, label %if.then.304

if.then.304:                                      ; preds = %if.end.298
  br label %do.body.305

do.body.305:                                      ; preds = %if.then.304
  br label %do.body.306

do.body.306:                                      ; preds = %do.body.305
  %179 = load i64, i64* %outleft.addr, align 8
  %cmp307 = icmp slt i64 %179, 1
  br i1 %cmp307, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %do.body.306
  store i64 -1, i64* %retval
  br label %return

if.end.310:                                       ; preds = %do.body.306
  br label %do.end.311

do.end.311:                                       ; preds = %if.end.310
  %180 = load i8**, i8*** %outbuf.addr, align 8
  %181 = load i8*, i8** %180, align 8
  %arrayidx312 = getelementptr i8, i8* %181, i64 0
  store i8 14, i8* %arrayidx312, align 1
  br label %do.end.313

do.end.313:                                       ; preds = %do.end.311
  br label %do.body.314

do.body.314:                                      ; preds = %do.end.313
  %182 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c315 = bitcast %union.MultibyteCodec_State* %182 to [8 x i8]*
  %arrayidx316 = getelementptr [8 x i8], [8 x i8]* %c315, i32 0, i64 4
  %183 = load i8, i8* %arrayidx316, align 1
  %conv317 = zext i8 %183 to i32
  %or = or i32 %conv317, 1
  %conv318 = trunc i32 %or to i8
  store i8 %conv318, i8* %arrayidx316, align 1
  br label %do.end.319

do.end.319:                                       ; preds = %do.body.314
  br label %do.body.320

do.body.320:                                      ; preds = %do.end.319
  %184 = load i8**, i8*** %outbuf.addr, align 8
  %185 = load i8*, i8** %184, align 8
  %add.ptr321 = getelementptr i8, i8* %185, i64 1
  store i8* %add.ptr321, i8** %184, align 8
  %186 = load i64, i64* %outleft.addr, align 8
  %sub322 = sub i64 %186, 1
  store i64 %sub322, i64* %outleft.addr, align 8
  br label %do.end.323

do.end.323:                                       ; preds = %do.body.320
  br label %if.end.324

if.end.324:                                       ; preds = %do.end.323, %if.end.298
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.109
  store i64 -3, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.324, %if.end.232
  %187 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width325 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %187, i32 0, i32 2
  %188 = load i8, i8* %width325, align 1
  %conv326 = zext i8 %188 to i32
  %cmp327 = icmp eq i32 %conv326, 1
  br i1 %cmp327, label %if.then.329, label %if.else.344

if.then.329:                                      ; preds = %sw.epilog
  br label %do.body.330

do.body.330:                                      ; preds = %if.then.329
  br label %do.body.331

do.body.331:                                      ; preds = %do.body.330
  %189 = load i64, i64* %outleft.addr, align 8
  %cmp332 = icmp slt i64 %189, 1
  br i1 %cmp332, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %do.body.331
  store i64 -1, i64* %retval
  br label %return

if.end.335:                                       ; preds = %do.body.331
  br label %do.end.336

do.end.336:                                       ; preds = %if.end.335
  %190 = load i16, i16* %encoded, align 2
  %conv337 = trunc i16 %190 to i8
  %191 = load i8**, i8*** %outbuf.addr, align 8
  %192 = load i8*, i8** %191, align 8
  %arrayidx338 = getelementptr i8, i8* %192, i64 0
  store i8 %conv337, i8* %arrayidx338, align 1
  br label %do.end.339

do.end.339:                                       ; preds = %do.end.336
  br label %do.body.340

do.body.340:                                      ; preds = %do.end.339
  %193 = load i8**, i8*** %outbuf.addr, align 8
  %194 = load i8*, i8** %193, align 8
  %add.ptr341 = getelementptr i8, i8* %194, i64 1
  store i8* %add.ptr341, i8** %193, align 8
  %195 = load i64, i64* %outleft.addr, align 8
  %sub342 = sub i64 %195, 1
  store i64 %sub342, i64* %outleft.addr, align 8
  br label %do.end.343

do.end.343:                                       ; preds = %do.body.340
  br label %if.end.364

if.else.344:                                      ; preds = %sw.epilog
  br label %do.body.345

do.body.345:                                      ; preds = %if.else.344
  br label %do.body.346

do.body.346:                                      ; preds = %do.body.345
  %196 = load i64, i64* %outleft.addr, align 8
  %cmp347 = icmp slt i64 %196, 2
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %do.body.346
  store i64 -1, i64* %retval
  br label %return

if.end.350:                                       ; preds = %do.body.346
  br label %do.end.351

do.end.351:                                       ; preds = %if.end.350
  %197 = load i16, i16* %encoded, align 2
  %conv352 = zext i16 %197 to i32
  %shr = ashr i32 %conv352, 8
  %conv353 = trunc i32 %shr to i8
  %198 = load i8**, i8*** %outbuf.addr, align 8
  %199 = load i8*, i8** %198, align 8
  %arrayidx354 = getelementptr i8, i8* %199, i64 0
  store i8 %conv353, i8* %arrayidx354, align 1
  %200 = load i16, i16* %encoded, align 2
  %conv355 = zext i16 %200 to i32
  %and356 = and i32 %conv355, 255
  %conv357 = trunc i32 %and356 to i8
  %201 = load i8**, i8*** %outbuf.addr, align 8
  %202 = load i8*, i8** %201, align 8
  %arrayidx358 = getelementptr i8, i8* %202, i64 1
  store i8 %conv357, i8* %arrayidx358, align 1
  br label %do.end.359

do.end.359:                                       ; preds = %do.end.351
  br label %do.body.360

do.body.360:                                      ; preds = %do.end.359
  %203 = load i8**, i8*** %outbuf.addr, align 8
  %204 = load i8*, i8** %203, align 8
  %add.ptr361 = getelementptr i8, i8* %204, i64 2
  store i8* %add.ptr361, i8** %203, align 8
  %205 = load i64, i64* %outleft.addr, align 8
  %sub362 = sub i64 %205, 2
  store i64 %sub362, i64* %outleft.addr, align 8
  br label %do.end.363

do.end.363:                                       ; preds = %do.body.360
  br label %if.end.364

if.end.364:                                       ; preds = %do.end.363, %do.end.343
  br label %do.body.365

do.body.365:                                      ; preds = %if.end.364
  %206 = load i64, i64* %insize, align 8
  %207 = load i64*, i64** %inpos.addr, align 8
  %208 = load i64, i64* %207, align 8
  %add366 = add i64 %208, %206
  store i64 %add366, i64* %207, align 8
  br label %do.end.367

do.end.367:                                       ; preds = %do.body.365
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.349, %if.then.334, %sw.default, %if.then.309, %if.then.276, %if.then.251, %if.then.209, %if.then.184, %if.then.154, %if.then.121, %if.then.108, %if.then.89, %if.then.63, %if.then.42, %if.then.22
  %209 = load i64, i64* %retval
  ret i64 %209
}

; Function Attrs: nounwind uwtable
define internal i32 @iso2022_encode_init(%union.MultibyteCodec_State* %state, i8* %config) #0 {
entry:
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %0 to [8 x i8]*
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c2 = bitcast %union.MultibyteCodec_State* %1 to [8 x i8]*
  %arrayidx3 = getelementptr [8 x i8], [8 x i8]* %c2, i32 0, i64 0
  store i8 66, i8* %arrayidx3, align 1
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.1
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  %2 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c6 = bitcast %union.MultibyteCodec_State* %2 to [8 x i8]*
  %arrayidx7 = getelementptr [8 x i8], [8 x i8]* %c6, i32 0, i64 1
  store i8 66, i8* %arrayidx7, align 1
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @iso2022_encode_reset(%union.MultibyteCodec_State* %state, i8* %config, i8** %outbuf, i64 %outleft) #0 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  %outbuf.addr = alloca i8**, align 8
  %outleft.addr = alloca i64, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  store i8** %outbuf, i8*** %outbuf.addr, align 8
  store i64 %outleft, i64* %outleft.addr, align 8
  %0 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %0 to [8 x i8]*
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 4
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load i64, i64* %outleft.addr, align 8
  %cmp = icmp slt i64 %2, 1
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body.1
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body.1
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load i8**, i8*** %outbuf.addr, align 8
  %4 = load i8*, i8** %3, align 8
  %arrayidx4 = getelementptr i8, i8* %4, i64 0
  store i8 15, i8* %arrayidx4, align 1
  br label %do.end.5

do.end.5:                                         ; preds = %do.end
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %5 = load i8**, i8*** %outbuf.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %5, align 8
  %7 = load i64, i64* %outleft.addr, align 8
  %sub = sub i64 %7, 1
  store i64 %sub, i64* %outleft.addr, align 8
  br label %do.end.7

do.end.7:                                         ; preds = %do.body.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %8 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c9 = bitcast %union.MultibyteCodec_State* %8 to [8 x i8]*
  %arrayidx10 = getelementptr [8 x i8], [8 x i8]* %c9, i32 0, i64 4
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %and12 = and i32 %conv11, -2
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, i8* %arrayidx10, align 1
  br label %do.end.14

do.end.14:                                        ; preds = %do.body.8
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.14, %entry
  %10 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c16 = bitcast %union.MultibyteCodec_State* %10 to [8 x i8]*
  %arrayidx17 = getelementptr [8 x i8], [8 x i8]* %c16, i32 0, i64 0
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp ne i32 %conv18, 66
  br i1 %cmp19, label %if.then.21, label %if.end.41

if.then.21:                                       ; preds = %if.end.15
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.body.22
  %12 = load i64, i64* %outleft.addr, align 8
  %cmp24 = icmp slt i64 %12, 3
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.body.23
  store i64 -1, i64* %retval
  br label %return

if.end.27:                                        ; preds = %do.body.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  %13 = load i8**, i8*** %outbuf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %arrayidx29 = getelementptr i8, i8* %14, i64 0
  store i8 27, i8* %arrayidx29, align 1
  %15 = load i8**, i8*** %outbuf.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %arrayidx30 = getelementptr i8, i8* %16, i64 1
  store i8 40, i8* %arrayidx30, align 1
  %17 = load i8**, i8*** %outbuf.addr, align 8
  %18 = load i8*, i8** %17, align 8
  %arrayidx31 = getelementptr i8, i8* %18, i64 2
  store i8 66, i8* %arrayidx31, align 1
  br label %do.end.32

do.end.32:                                        ; preds = %do.end.28
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %19 = load i8**, i8*** %outbuf.addr, align 8
  %20 = load i8*, i8** %19, align 8
  %add.ptr34 = getelementptr i8, i8* %20, i64 3
  store i8* %add.ptr34, i8** %19, align 8
  %21 = load i64, i64* %outleft.addr, align 8
  %sub35 = sub i64 %21, 3
  store i64 %sub35, i64* %outleft.addr, align 8
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.33
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %22 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c38 = bitcast %union.MultibyteCodec_State* %22 to [8 x i8]*
  %arrayidx39 = getelementptr [8 x i8], [8 x i8]* %c38, i32 0, i64 0
  store i8 66, i8* %arrayidx39, align 1
  br label %do.end.40

do.end.40:                                        ; preds = %do.body.37
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %if.end.15
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.26, %if.then.3
  %23 = load i64, i64* %retval
  ret i64 %23
}

; Function Attrs: nounwind uwtable
define internal i64 @iso2022_decode(%union.MultibyteCodec_State* %state, i8* %config, i8** %inbuf, i64 %inleft, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  %inbuf.addr = alloca i8**, align 8
  %inleft.addr = alloca i64, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %dsgcache = alloca %struct.iso2022_designation*, align 8
  %c = alloca i8, align 1
  %err = alloca i64, align 8
  %dsg = alloca %struct.iso2022_designation*, align 8
  %charset = alloca i8, align 1
  %decoded = alloca i32, align 4
  %_c1 = alloca i32, align 4
  %_c2 = alloca i32, align 4
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  store i8** %inbuf, i8*** %inbuf.addr, align 8
  store i64 %inleft, i64* %inleft.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  store %struct.iso2022_designation* null, %struct.iso2022_designation** %dsgcache, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.326, %if.end.26, %entry
  %0 = load i64, i64* %inleft.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %inbuf.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %arrayidx = getelementptr i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %c, align 1
  %4 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c1 = bitcast %union.MultibyteCodec_State* %4 to [8 x i8]*
  %arrayidx2 = getelementptr [8 x i8], [8 x i8]* %c1, i32 0, i64 4
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.then
  %6 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %7 = load i8, i8* %c, align 1
  %conv3 = zext i8 %7 to i32
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %6, i32 %conv3)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  store i64 -4, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.7

do.body.7:                                        ; preds = %do.end
  %8 = load i8**, i8*** %inbuf.addr, align 8
  %9 = load i8*, i8** %8, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 1
  store i8* %add.ptr, i8** %8, align 8
  %10 = load i64, i64* %inleft.addr, align 8
  %sub = sub i64 %10, 1
  store i64 %sub, i64* %inleft.addr, align 8
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.7
  %11 = load i8, i8* %c, align 1
  %conv9 = zext i8 %11 to i32
  %cmp10 = icmp sge i32 %conv9, 65
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end.8
  %12 = load i8, i8* %c, align 1
  %conv12 = zext i8 %12 to i32
  %cmp13 = icmp sle i32 %conv12, 90
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.end.8
  %13 = load i8, i8* %c, align 1
  %conv15 = zext i8 %13 to i32
  %cmp16 = icmp eq i32 %conv15, 64
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %14 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c20 = bitcast %union.MultibyteCodec_State* %14 to [8 x i8]*
  %arrayidx21 = getelementptr [8 x i8], [8 x i8]* %c20, i32 0, i64 4
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  %and23 = and i32 %conv22, -3
  %conv24 = trunc i32 %and23 to i8
  store i8 %conv24, i8* %arrayidx21, align 1
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.19
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %lor.lhs.false
  br label %while.cond

if.end.27:                                        ; preds = %while.body
  %16 = load i8, i8* %c, align 1
  %conv28 = zext i8 %16 to i32
  switch i32 %conv28, label %sw.default [
    i32 27, label %sw.bb
    i32 15, label %sw.bb.104
    i32 14, label %sw.bb.121
    i32 10, label %sw.bb.138
  ]

sw.bb:                                            ; preds = %if.end.27
  br label %do.body.29

do.body.29:                                       ; preds = %sw.bb
  %17 = load i64, i64* %inleft.addr, align 8
  %cmp30 = icmp slt i64 %17, 2
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.29
  store i64 -2, i64* %retval
  br label %return

if.end.33:                                        ; preds = %do.body.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %18 = load i8**, i8*** %inbuf.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %arrayidx35 = getelementptr i8, i8* %19, i64 1
  %20 = load i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %20 to i32
  %cmp37 = icmp eq i32 %conv36, 40
  br i1 %cmp37, label %if.then.59, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %do.end.34
  %21 = load i8**, i8*** %inbuf.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %arrayidx40 = getelementptr i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %23 to i32
  %cmp42 = icmp eq i32 %conv41, 41
  br i1 %cmp42, label %if.then.59, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.39
  %24 = load i8**, i8*** %inbuf.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %arrayidx45 = getelementptr i8, i8* %25, i64 1
  %26 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %26 to i32
  %cmp47 = icmp eq i32 %conv46, 36
  br i1 %cmp47, label %if.then.59, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.44
  %27 = load i8**, i8*** %inbuf.addr, align 8
  %28 = load i8*, i8** %27, align 8
  %arrayidx50 = getelementptr i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx50, align 1
  %conv51 = zext i8 %29 to i32
  %cmp52 = icmp eq i32 %conv51, 46
  br i1 %cmp52, label %if.then.59, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.49
  %30 = load i8**, i8*** %inbuf.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %arrayidx55 = getelementptr i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx55, align 1
  %conv56 = zext i8 %32 to i32
  %cmp57 = icmp eq i32 %conv56, 38
  br i1 %cmp57, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %lor.lhs.false.54, %lor.lhs.false.49, %lor.lhs.false.44, %lor.lhs.false.39, %do.end.34
  %33 = load i8*, i8** %config.addr, align 8
  %34 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %35 = load i8**, i8*** %inbuf.addr, align 8
  %call60 = call i64 @iso2022processesc(i8* %33, %union.MultibyteCodec_State* %34, i8** %35, i64* %inleft.addr)
  store i64 %call60, i64* %err, align 8
  %36 = load i64, i64* %err, align 8
  %cmp61 = icmp ne i64 %36, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.then.59
  %37 = load i64, i64* %err, align 8
  store i64 %37, i64* %retval
  br label %return

if.end.64:                                        ; preds = %if.then.59
  br label %if.end.103

if.else:                                          ; preds = %lor.lhs.false.54
  %38 = load i8*, i8** %config.addr, align 8
  %39 = bitcast i8* %38 to %struct.iso2022_config*
  %flags = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %39, i32 0, i32 0
  %40 = load i32, i32* %flags, align 4
  %and65 = and i32 %40, 2
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.else.84

land.lhs.true.67:                                 ; preds = %if.else
  %41 = load i8**, i8*** %inbuf.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %arrayidx68 = getelementptr i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %43 to i32
  %cmp70 = icmp eq i32 %conv69, 78
  br i1 %cmp70, label %if.then.72, label %if.else.84

if.then.72:                                       ; preds = %land.lhs.true.67
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %44 = load i64, i64* %inleft.addr, align 8
  %cmp74 = icmp slt i64 %44, 3
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %do.body.73
  store i64 -2, i64* %retval
  br label %return

if.end.77:                                        ; preds = %do.body.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %45 = load i8*, i8** %config.addr, align 8
  %46 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %47 = load i8**, i8*** %inbuf.addr, align 8
  %48 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call79 = call i64 @iso2022processg2(i8* %45, %union.MultibyteCodec_State* %46, i8** %47, i64* %inleft.addr, %struct._PyUnicodeWriter* %48)
  store i64 %call79, i64* %err, align 8
  %49 = load i64, i64* %err, align 8
  %cmp80 = icmp ne i64 %49, 0
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.end.78
  %50 = load i64, i64* %err, align 8
  store i64 %50, i64* %retval
  br label %return

if.end.83:                                        ; preds = %do.end.78
  br label %if.end.102

if.else.84:                                       ; preds = %land.lhs.true.67, %if.else
  br label %do.body.85

do.body.85:                                       ; preds = %if.else.84
  %51 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call86 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %51, i32 27)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %do.body.85
  store i64 -4, i64* %retval
  br label %return

if.end.90:                                        ; preds = %do.body.85
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %52 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c93 = bitcast %union.MultibyteCodec_State* %52 to [8 x i8]*
  %arrayidx94 = getelementptr [8 x i8], [8 x i8]* %c93, i32 0, i64 4
  %53 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %53 to i32
  %or = or i32 %conv95, 2
  %conv96 = trunc i32 %or to i8
  store i8 %conv96, i8* %arrayidx94, align 1
  br label %do.end.97

do.end.97:                                        ; preds = %do.body.92
  br label %do.body.98

do.body.98:                                       ; preds = %do.end.97
  %54 = load i8**, i8*** %inbuf.addr, align 8
  %55 = load i8*, i8** %54, align 8
  %add.ptr99 = getelementptr i8, i8* %55, i64 1
  store i8* %add.ptr99, i8** %54, align 8
  %56 = load i64, i64* %inleft.addr, align 8
  %sub100 = sub i64 %56, 1
  store i64 %sub100, i64* %inleft.addr, align 8
  br label %do.end.101

do.end.101:                                       ; preds = %do.body.98
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %if.end.83
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.64
  br label %sw.epilog.326

sw.bb.104:                                        ; preds = %if.end.27
  %57 = load i8*, i8** %config.addr, align 8
  %58 = bitcast i8* %57 to %struct.iso2022_config*
  %flags105 = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %58, i32 0, i32 0
  %59 = load i32, i32* %flags105, align 4
  %and106 = and i32 %59, 1
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %sw.bb.104
  br label %bypass

if.end.109:                                       ; preds = %sw.bb.104
  br label %do.body.110

do.body.110:                                      ; preds = %if.end.109
  %60 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c111 = bitcast %union.MultibyteCodec_State* %60 to [8 x i8]*
  %arrayidx112 = getelementptr [8 x i8], [8 x i8]* %c111, i32 0, i64 4
  %61 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %61 to i32
  %and114 = and i32 %conv113, -2
  %conv115 = trunc i32 %and114 to i8
  store i8 %conv115, i8* %arrayidx112, align 1
  br label %do.end.116

do.end.116:                                       ; preds = %do.body.110
  br label %do.body.117

do.body.117:                                      ; preds = %do.end.116
  %62 = load i8**, i8*** %inbuf.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %add.ptr118 = getelementptr i8, i8* %63, i64 1
  store i8* %add.ptr118, i8** %62, align 8
  %64 = load i64, i64* %inleft.addr, align 8
  %sub119 = sub i64 %64, 1
  store i64 %sub119, i64* %inleft.addr, align 8
  br label %do.end.120

do.end.120:                                       ; preds = %do.body.117
  br label %sw.epilog.326

sw.bb.121:                                        ; preds = %if.end.27
  %65 = load i8*, i8** %config.addr, align 8
  %66 = bitcast i8* %65 to %struct.iso2022_config*
  %flags122 = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %66, i32 0, i32 0
  %67 = load i32, i32* %flags122, align 4
  %and123 = and i32 %67, 1
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %sw.bb.121
  br label %bypass

if.end.126:                                       ; preds = %sw.bb.121
  br label %do.body.127

do.body.127:                                      ; preds = %if.end.126
  %68 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c128 = bitcast %union.MultibyteCodec_State* %68 to [8 x i8]*
  %arrayidx129 = getelementptr [8 x i8], [8 x i8]* %c128, i32 0, i64 4
  %69 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %69 to i32
  %or131 = or i32 %conv130, 1
  %conv132 = trunc i32 %or131 to i8
  store i8 %conv132, i8* %arrayidx129, align 1
  br label %do.end.133

do.end.133:                                       ; preds = %do.body.127
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.133
  %70 = load i8**, i8*** %inbuf.addr, align 8
  %71 = load i8*, i8** %70, align 8
  %add.ptr135 = getelementptr i8, i8* %71, i64 1
  store i8* %add.ptr135, i8** %70, align 8
  %72 = load i64, i64* %inleft.addr, align 8
  %sub136 = sub i64 %72, 1
  store i64 %sub136, i64* %inleft.addr, align 8
  br label %do.end.137

do.end.137:                                       ; preds = %do.body.134
  br label %sw.epilog.326

sw.bb.138:                                        ; preds = %if.end.27
  br label %do.body.139

do.body.139:                                      ; preds = %sw.bb.138
  %73 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c140 = bitcast %union.MultibyteCodec_State* %73 to [8 x i8]*
  %arrayidx141 = getelementptr [8 x i8], [8 x i8]* %c140, i32 0, i64 4
  %74 = load i8, i8* %arrayidx141, align 1
  %conv142 = zext i8 %74 to i32
  %and143 = and i32 %conv142, -2
  %conv144 = trunc i32 %and143 to i8
  store i8 %conv144, i8* %arrayidx141, align 1
  br label %do.end.145

do.end.145:                                       ; preds = %do.body.139
  br label %do.body.146

do.body.146:                                      ; preds = %do.end.145
  %75 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call147 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %75, i32 10)
  %cmp148 = icmp slt i32 %call147, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %do.body.146
  store i64 -4, i64* %retval
  br label %return

if.end.151:                                       ; preds = %do.body.146
  br label %do.end.152

do.end.152:                                       ; preds = %if.end.151
  br label %do.body.153

do.body.153:                                      ; preds = %do.end.152
  %76 = load i8**, i8*** %inbuf.addr, align 8
  %77 = load i8*, i8** %76, align 8
  %add.ptr154 = getelementptr i8, i8* %77, i64 1
  store i8* %add.ptr154, i8** %76, align 8
  %78 = load i64, i64* %inleft.addr, align 8
  %sub155 = sub i64 %78, 1
  store i64 %sub155, i64* %inleft.addr, align 8
  br label %do.end.156

do.end.156:                                       ; preds = %do.body.153
  br label %sw.epilog.326

sw.default:                                       ; preds = %if.end.27
  %79 = load i8, i8* %c, align 1
  %conv157 = zext i8 %79 to i32
  %cmp158 = icmp slt i32 %conv157, 32
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %sw.default
  br label %bypass

if.else.161:                                      ; preds = %sw.default
  %80 = load i8, i8* %c, align 1
  %conv162 = zext i8 %80 to i32
  %cmp163 = icmp sge i32 %conv162, 128
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %if.else.161
  store i64 1, i64* %retval
  br label %return

if.else.166:                                      ; preds = %if.else.161
  %81 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c167 = bitcast %union.MultibyteCodec_State* %81 to [8 x i8]*
  %arrayidx168 = getelementptr [8 x i8], [8 x i8]* %c167, i32 0, i64 4
  %82 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %82 to i32
  %and170 = and i32 %conv169, 1
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %if.then.172, label %if.else.175

if.then.172:                                      ; preds = %if.else.166
  %83 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c173 = bitcast %union.MultibyteCodec_State* %83 to [8 x i8]*
  %arrayidx174 = getelementptr [8 x i8], [8 x i8]* %c173, i32 0, i64 1
  %84 = load i8, i8* %arrayidx174, align 1
  store i8 %84, i8* %charset, align 1
  br label %if.end.178

if.else.175:                                      ; preds = %if.else.166
  %85 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c176 = bitcast %union.MultibyteCodec_State* %85 to [8 x i8]*
  %arrayidx177 = getelementptr [8 x i8], [8 x i8]* %c176, i32 0, i64 0
  %86 = load i8, i8* %arrayidx177, align 1
  store i8 %86, i8* %charset, align 1
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.172
  %87 = load i8, i8* %charset, align 1
  %conv179 = zext i8 %87 to i32
  %cmp180 = icmp eq i32 %conv179, 66
  br i1 %cmp180, label %if.then.182, label %if.end.195

if.then.182:                                      ; preds = %if.end.178
  br label %bypass

bypass:                                           ; preds = %if.then.182, %if.then.160, %if.then.125, %if.then.108
  br label %do.body.183

do.body.183:                                      ; preds = %bypass
  %88 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %89 = load i8, i8* %c, align 1
  %conv184 = zext i8 %89 to i32
  %call185 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %88, i32 %conv184)
  %cmp186 = icmp slt i32 %call185, 0
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %do.body.183
  store i64 -4, i64* %retval
  br label %return

if.end.189:                                       ; preds = %do.body.183
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %90 = load i8**, i8*** %inbuf.addr, align 8
  %91 = load i8*, i8** %90, align 8
  %add.ptr192 = getelementptr i8, i8* %91, i64 1
  store i8* %add.ptr192, i8** %90, align 8
  %92 = load i64, i64* %inleft.addr, align 8
  %sub193 = sub i64 %92, 1
  store i64 %sub193, i64* %inleft.addr, align 8
  br label %do.end.194

do.end.194:                                       ; preds = %do.body.191
  br label %sw.epilog.326

if.end.195:                                       ; preds = %if.end.178
  %93 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsgcache, align 8
  %cmp196 = icmp ne %struct.iso2022_designation* %93, null
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.204

land.lhs.true.198:                                ; preds = %if.end.195
  %94 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsgcache, align 8
  %mark = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %94, i32 0, i32 0
  %95 = load i8, i8* %mark, align 1
  %conv199 = zext i8 %95 to i32
  %96 = load i8, i8* %charset, align 1
  %conv200 = zext i8 %96 to i32
  %cmp201 = icmp eq i32 %conv199, %conv200
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %land.lhs.true.198
  %97 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsgcache, align 8
  store %struct.iso2022_designation* %97, %struct.iso2022_designation** %dsg, align 8
  br label %if.end.210

if.else.204:                                      ; preds = %land.lhs.true.198, %if.end.195
  %98 = load i8*, i8** %config.addr, align 8
  %99 = bitcast i8* %98 to %struct.iso2022_config*
  %designations = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %99, i32 0, i32 1
  %100 = load %struct.iso2022_designation*, %struct.iso2022_designation** %designations, align 8
  store %struct.iso2022_designation* %100, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.204
  %101 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark205 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %101, i32 0, i32 0
  %102 = load i8, i8* %mark205, align 1
  %conv206 = zext i8 %102 to i32
  %103 = load i8, i8* %charset, align 1
  %conv207 = zext i8 %103 to i32
  %cmp208 = icmp ne i32 %conv206, %conv207
  br i1 %cmp208, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %incdec.ptr = getelementptr %struct.iso2022_designation, %struct.iso2022_designation* %104, i32 1
  store %struct.iso2022_designation* %incdec.ptr, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  store %struct.iso2022_designation* %105, %struct.iso2022_designation** %dsgcache, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %for.end, %if.then.203
  br label %do.body.211

do.body.211:                                      ; preds = %if.end.210
  %106 = load i64, i64* %inleft.addr, align 8
  %107 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %107, i32 0, i32 2
  %108 = load i8, i8* %width, align 1
  %conv212 = zext i8 %108 to i64
  %cmp213 = icmp slt i64 %106, %conv212
  br i1 %cmp213, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %do.body.211
  store i64 -2, i64* %retval
  br label %return

if.end.216:                                       ; preds = %do.body.211
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  %109 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %decoder = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %109, i32 0, i32 4
  %110 = load i32 (i8*)*, i32 (i8*)** %decoder, align 8
  %111 = load i8**, i8*** %inbuf.addr, align 8
  %112 = load i8*, i8** %111, align 8
  %call218 = call i32 %110(i8* %112)
  store i32 %call218, i32* %decoded, align 4
  %113 = load i32, i32* %decoded, align 4
  %cmp219 = icmp eq i32 %113, 65535
  br i1 %cmp219, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %do.end.217
  %114 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width222 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %114, i32 0, i32 2
  %115 = load i8, i8* %width222, align 1
  %conv223 = zext i8 %115 to i64
  store i64 %conv223, i64* %retval
  br label %return

if.end.224:                                       ; preds = %do.end.217
  %116 = load i32, i32* %decoded, align 4
  %cmp225 = icmp ult i32 %116, 65536
  br i1 %cmp225, label %if.then.227, label %if.else.235

if.then.227:                                      ; preds = %if.end.224
  br label %do.body.228

do.body.228:                                      ; preds = %if.then.227
  %117 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %118 = load i32, i32* %decoded, align 4
  %call229 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %117, i32 %118)
  %cmp230 = icmp slt i32 %call229, 0
  br i1 %cmp230, label %if.then.232, label %if.end.233

if.then.232:                                      ; preds = %do.body.228
  store i64 -4, i64* %retval
  br label %return

if.end.233:                                       ; preds = %do.body.228
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  br label %if.end.315

if.else.235:                                      ; preds = %if.end.224
  %119 = load i32, i32* %decoded, align 4
  %cmp236 = icmp ult i32 %119, 196608
  br i1 %cmp236, label %if.then.238, label %if.else.246

if.then.238:                                      ; preds = %if.else.235
  br label %do.body.239

do.body.239:                                      ; preds = %if.then.238
  %120 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %121 = load i32, i32* %decoded, align 4
  %call240 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %120, i32 %121)
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %do.body.239
  store i64 -4, i64* %retval
  br label %return

if.end.244:                                       ; preds = %do.body.239
  br label %do.end.245

do.end.245:                                       ; preds = %if.end.244
  br label %if.end.314

if.else.246:                                      ; preds = %if.else.235
  br label %do.body.247

do.body.247:                                      ; preds = %if.else.246
  %122 = load i32, i32* %decoded, align 4
  %shr = lshr i32 %122, 16
  store i32 %shr, i32* %_c1, align 4
  %123 = load i32, i32* %decoded, align 4
  %and248 = and i32 %123, 65535
  store i32 %and248, i32* %_c2, align 4
  %124 = load i32, i32* %_c1, align 4
  %125 = load i32, i32* %decoded, align 4
  %and249 = and i32 %125, 65535
  %cmp250 = icmp ugt i32 %124, %and249
  br i1 %cmp250, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body.247
  %126 = load i32, i32* %_c1, align 4
  br label %cond.end

cond.false:                                       ; preds = %do.body.247
  %127 = load i32, i32* %decoded, align 4
  %and252 = and i32 %127, 65535
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %126, %cond.true ], [ %and252, %cond.false ]
  %128 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %maxchar = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %128, i32 0, i32 3
  %129 = load i32, i32* %maxchar, align 4
  %cmp253 = icmp ule i32 %cond, %129
  br i1 %cmp253, label %land.lhs.true.255, label %cond.false.260

land.lhs.true.255:                                ; preds = %cond.end
  %130 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %130, i32 0, i32 4
  %131 = load i64, i64* %size, align 8
  %132 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %132, i32 0, i32 5
  %133 = load i64, i64* %pos, align 8
  %sub256 = sub i64 %131, %133
  %cmp257 = icmp sle i64 2, %sub256
  br i1 %cmp257, label %cond.true.259, label %cond.false.260

cond.true.259:                                    ; preds = %land.lhs.true.255
  br label %cond.end.270

cond.false.260:                                   ; preds = %land.lhs.true.255, %cond.end
  %134 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %135 = load i32, i32* %_c1, align 4
  %136 = load i32, i32* %decoded, align 4
  %and261 = and i32 %136, 65535
  %cmp262 = icmp ugt i32 %135, %and261
  br i1 %cmp262, label %cond.true.264, label %cond.false.265

cond.true.264:                                    ; preds = %cond.false.260
  %137 = load i32, i32* %_c1, align 4
  br label %cond.end.267

cond.false.265:                                   ; preds = %cond.false.260
  %138 = load i32, i32* %decoded, align 4
  %and266 = and i32 %138, 65535
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.false.265, %cond.true.264
  %cond268 = phi i32 [ %137, %cond.true.264 ], [ %and266, %cond.false.265 ]
  %call269 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %134, i64 2, i32 %cond268)
  br label %cond.end.270

cond.end.270:                                     ; preds = %cond.end.267, %cond.true.259
  %cond271 = phi i32 [ 0, %cond.true.259 ], [ %call269, %cond.end.267 ]
  %cmp272 = icmp slt i32 %cond271, 0
  br i1 %cmp272, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %cond.end.270
  store i64 -4, i64* %retval
  br label %return

if.end.275:                                       ; preds = %cond.end.270
  br label %do.body.276

do.body.276:                                      ; preds = %if.end.275
  %139 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %kind = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %139, i32 0, i32 2
  %140 = load i32, i32* %kind, align 4
  switch i32 %140, label %sw.default.286 [
    i32 1, label %sw.bb.277
    i32 2, label %sw.bb.281
  ]

sw.bb.277:                                        ; preds = %do.body.276
  %141 = load i32, i32* %_c1, align 4
  %conv278 = trunc i32 %141 to i8
  %142 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos279 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %142, i32 0, i32 5
  %143 = load i64, i64* %pos279, align 8
  %144 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %144, i32 0, i32 1
  %145 = load i8*, i8** %data, align 8
  %arrayidx280 = getelementptr i8, i8* %145, i64 %143
  store i8 %conv278, i8* %arrayidx280, align 1
  br label %sw.epilog

sw.bb.281:                                        ; preds = %do.body.276
  %146 = load i32, i32* %_c1, align 4
  %conv282 = trunc i32 %146 to i16
  %147 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos283 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %147, i32 0, i32 5
  %148 = load i64, i64* %pos283, align 8
  %149 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data284 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %149, i32 0, i32 1
  %150 = load i8*, i8** %data284, align 8
  %151 = bitcast i8* %150 to i16*
  %arrayidx285 = getelementptr i16, i16* %151, i64 %148
  store i16 %conv282, i16* %arrayidx285, align 2
  br label %sw.epilog

sw.default.286:                                   ; preds = %do.body.276
  %152 = load i32, i32* %_c1, align 4
  %153 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos287 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %153, i32 0, i32 5
  %154 = load i64, i64* %pos287, align 8
  %155 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data288 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %155, i32 0, i32 1
  %156 = load i8*, i8** %data288, align 8
  %157 = bitcast i8* %156 to i32*
  %arrayidx289 = getelementptr i32, i32* %157, i64 %154
  store i32 %152, i32* %arrayidx289, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.286, %sw.bb.281, %sw.bb.277
  br label %do.end.290

do.end.290:                                       ; preds = %sw.epilog
  br label %do.body.291

do.body.291:                                      ; preds = %do.end.290
  %158 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %kind292 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %158, i32 0, i32 2
  %159 = load i32, i32* %kind292, align 4
  switch i32 %159, label %sw.default.304 [
    i32 1, label %sw.bb.293
    i32 2, label %sw.bb.298
  ]

sw.bb.293:                                        ; preds = %do.body.291
  %160 = load i32, i32* %_c2, align 4
  %conv294 = trunc i32 %160 to i8
  %161 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos295 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %161, i32 0, i32 5
  %162 = load i64, i64* %pos295, align 8
  %add = add i64 %162, 1
  %163 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data296 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %163, i32 0, i32 1
  %164 = load i8*, i8** %data296, align 8
  %arrayidx297 = getelementptr i8, i8* %164, i64 %add
  store i8 %conv294, i8* %arrayidx297, align 1
  br label %sw.epilog.309

sw.bb.298:                                        ; preds = %do.body.291
  %165 = load i32, i32* %_c2, align 4
  %conv299 = trunc i32 %165 to i16
  %166 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos300 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %166, i32 0, i32 5
  %167 = load i64, i64* %pos300, align 8
  %add301 = add i64 %167, 1
  %168 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data302 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %168, i32 0, i32 1
  %169 = load i8*, i8** %data302, align 8
  %170 = bitcast i8* %169 to i16*
  %arrayidx303 = getelementptr i16, i16* %170, i64 %add301
  store i16 %conv299, i16* %arrayidx303, align 2
  br label %sw.epilog.309

sw.default.304:                                   ; preds = %do.body.291
  %171 = load i32, i32* %_c2, align 4
  %172 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos305 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %172, i32 0, i32 5
  %173 = load i64, i64* %pos305, align 8
  %add306 = add i64 %173, 1
  %174 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %data307 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %174, i32 0, i32 1
  %175 = load i8*, i8** %data307, align 8
  %176 = bitcast i8* %175 to i32*
  %arrayidx308 = getelementptr i32, i32* %176, i64 %add306
  store i32 %171, i32* %arrayidx308, align 4
  br label %sw.epilog.309

sw.epilog.309:                                    ; preds = %sw.default.304, %sw.bb.298, %sw.bb.293
  br label %do.end.310

do.end.310:                                       ; preds = %sw.epilog.309
  %177 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %pos311 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %177, i32 0, i32 5
  %178 = load i64, i64* %pos311, align 8
  %add312 = add i64 %178, 2
  store i64 %add312, i64* %pos311, align 8
  br label %do.end.313

do.end.313:                                       ; preds = %do.end.310
  br label %if.end.314

if.end.314:                                       ; preds = %do.end.313, %do.end.245
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %do.end.234
  br label %do.body.316

do.body.316:                                      ; preds = %if.end.315
  %179 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width317 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %179, i32 0, i32 2
  %180 = load i8, i8* %width317, align 1
  %conv318 = zext i8 %180 to i32
  %181 = load i8**, i8*** %inbuf.addr, align 8
  %182 = load i8*, i8** %181, align 8
  %idx.ext = sext i32 %conv318 to i64
  %add.ptr319 = getelementptr i8, i8* %182, i64 %idx.ext
  store i8* %add.ptr319, i8** %181, align 8
  %183 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %width320 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %183, i32 0, i32 2
  %184 = load i8, i8* %width320, align 1
  %conv321 = zext i8 %184 to i64
  %185 = load i64, i64* %inleft.addr, align 8
  %sub322 = sub i64 %185, %conv321
  store i64 %sub322, i64* %inleft.addr, align 8
  br label %do.end.323

do.end.323:                                       ; preds = %do.body.316
  br label %if.end.324

if.end.324:                                       ; preds = %do.end.323
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324
  br label %sw.epilog.326

sw.epilog.326:                                    ; preds = %if.end.325, %do.end.194, %do.end.156, %do.end.137, %do.end.120, %if.end.103
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.274, %if.then.243, %if.then.232, %if.then.221, %if.then.215, %if.then.188, %if.then.165, %if.then.150, %if.then.89, %if.then.82, %if.then.76, %if.then.63, %if.then.32, %if.then.6
  %186 = load i64, i64* %retval
  ret i64 %186
}

; Function Attrs: nounwind uwtable
define internal i32 @iso2022_decode_init(%union.MultibyteCodec_State* %state, i8* %config) #0 {
entry:
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %0 to [8 x i8]*
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 4
  store i8 0, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c2 = bitcast %union.MultibyteCodec_State* %1 to [8 x i8]*
  %arrayidx3 = getelementptr [8 x i8], [8 x i8]* %c2, i32 0, i64 0
  store i8 66, i8* %arrayidx3, align 1
  br label %do.end.4

do.end.4:                                         ; preds = %do.body.1
  br label %do.body.5

do.body.5:                                        ; preds = %do.end.4
  %2 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c6 = bitcast %union.MultibyteCodec_State* %2 to [8 x i8]*
  %arrayidx7 = getelementptr [8 x i8], [8 x i8]* %c6, i32 0, i64 1
  store i8 66, i8* %arrayidx7, align 1
  br label %do.end.8

do.end.8:                                         ; preds = %do.body.5
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %3 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c10 = bitcast %union.MultibyteCodec_State* %3 to [8 x i8]*
  %arrayidx11 = getelementptr [8 x i8], [8 x i8]* %c10, i32 0, i64 2
  store i8 66, i8* %arrayidx11, align 1
  br label %do.end.12

do.end.12:                                        ; preds = %do.body.9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i64 @iso2022_decode_reset(%union.MultibyteCodec_State* %state, i8* %config) #0 {
entry:
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %0 to [8 x i8]*
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 0
  store i8 66, i8* %arrayidx, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c2 = bitcast %union.MultibyteCodec_State* %1 to [8 x i8]*
  %arrayidx3 = getelementptr [8 x i8], [8 x i8]* %c2, i32 0, i64 4
  %2 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, -2
  %conv4 = trunc i32 %and to i8
  store i8 %conv4, i8* %arrayidx3, align 1
  br label %do.end.5

do.end.5:                                         ; preds = %do.body.1
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ksx1001_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @ksx1001_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8** bitcast (%struct.unim_index** @cp949_encmap to i8**), i8** null)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @ksx1001_decmap to i8**))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 1, i32* @ksx1001_init.initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @ksx1001_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load %struct.dbcs_index*, %struct.dbcs_index** @ksx1001_decmap, align 8
  %arrayidx1 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %2, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx1, i32 0, i32 0
  %3 = load i16*, i16** %map, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load %struct.dbcs_index*, %struct.dbcs_index** @ksx1001_decmap, align 8
  %arrayidx5 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %8, i64 %idxprom4
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx5, i32 0, i32 1
  %9 = load i8, i8* %bottom, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %13 to i64
  %14 = load %struct.dbcs_index*, %struct.dbcs_index** @ksx1001_decmap, align 8
  %arrayidx14 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %14, i64 %idxprom13
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx14, i32 0, i32 2
  %15 = load i8, i8* %top, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv11, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.9
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %19 to i64
  %20 = load %struct.dbcs_index*, %struct.dbcs_index** @ksx1001_decmap, align 8
  %arrayidx23 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %20, i64 %idxprom22
  %bottom24 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx23, i32 0, i32 1
  %21 = load i8, i8* %bottom24, align 1
  %conv25 = zext i8 %21 to i32
  %sub = sub i32 %conv20, %conv25
  %idxprom26 = sext i32 %sub to i64
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @ksx1001_decmap, align 8
  %arrayidx29 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom28
  %map30 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx29, i32 0, i32 0
  %25 = load i16*, i16** %map30, align 8
  %arrayidx31 = getelementptr i16, i16* %25, i64 %idxprom26
  %26 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %26 to i32
  store i32 %conv32, i32* %u, align 4
  %cmp33 = icmp ne i32 %conv32, 65534
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.18
  %27 = load i32, i32* %u, align 4
  store i32 %27, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.9, %land.lhs.true, %entry
  store i32 65535, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @ksx1001_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ult i32 %1, 65536
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %shr = lshr i32 %3, 8
  %idxprom = zext i32 %shr to i64
  %4 = load %struct.unim_index*, %struct.unim_index** @cp949_encmap, align 8
  %arrayidx = getelementptr %struct.unim_index, %struct.unim_index* %4, i64 %idxprom
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx, i32 0, i32 0
  %5 = load i16*, i16** %map, align 8
  %cmp1 = icmp ne i16* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32*, i32** %data.addr, align 8
  %7 = load i32, i32* %6, align 4
  %and = and i32 %7, 255
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %shr2 = lshr i32 %9, 8
  %idxprom3 = zext i32 %shr2 to i64
  %10 = load %struct.unim_index*, %struct.unim_index** @cp949_encmap, align 8
  %arrayidx4 = getelementptr %struct.unim_index, %struct.unim_index* %10, i64 %idxprom3
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx4, i32 0, i32 1
  %11 = load i8, i8* %bottom, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp uge i32 %and, %conv
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.35

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %12, align 4
  %and8 = and i32 %13, 255
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i32, i32* %14, align 4
  %shr9 = lshr i32 %15, 8
  %idxprom10 = zext i32 %shr9 to i64
  %16 = load %struct.unim_index*, %struct.unim_index** @cp949_encmap, align 8
  %arrayidx11 = getelementptr %struct.unim_index, %struct.unim_index* %16, i64 %idxprom10
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx11, i32 0, i32 2
  %17 = load i8, i8* %top, align 1
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp ule i32 %and8, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.35

land.lhs.true.15:                                 ; preds = %land.lhs.true.7
  %18 = load i32*, i32** %data.addr, align 8
  %19 = load i32, i32* %18, align 4
  %and16 = and i32 %19, 255
  %20 = load i32*, i32** %data.addr, align 8
  %21 = load i32, i32* %20, align 4
  %shr17 = lshr i32 %21, 8
  %idxprom18 = zext i32 %shr17 to i64
  %22 = load %struct.unim_index*, %struct.unim_index** @cp949_encmap, align 8
  %arrayidx19 = getelementptr %struct.unim_index, %struct.unim_index* %22, i64 %idxprom18
  %bottom20 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx19, i32 0, i32 1
  %23 = load i8, i8* %bottom20, align 1
  %conv21 = zext i8 %23 to i32
  %sub = sub i32 %and16, %conv21
  %idxprom22 = zext i32 %sub to i64
  %24 = load i32*, i32** %data.addr, align 8
  %25 = load i32, i32* %24, align 4
  %shr23 = lshr i32 %25, 8
  %idxprom24 = zext i32 %shr23 to i64
  %26 = load %struct.unim_index*, %struct.unim_index** @cp949_encmap, align 8
  %arrayidx25 = getelementptr %struct.unim_index, %struct.unim_index* %26, i64 %idxprom24
  %map26 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx25, i32 0, i32 0
  %27 = load i16*, i16** %map26, align 8
  %arrayidx27 = getelementptr i16, i16* %27, i64 %idxprom22
  %28 = load i16, i16* %arrayidx27, align 2
  store i16 %28, i16* %coded, align 2
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 65535
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true.15
  %29 = load i16, i16* %coded, align 2
  %conv32 = zext i16 %29 to i32
  %and33 = and i32 %conv32, 32768
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.end, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  %30 = load i16, i16* %coded, align 2
  store i16 %30, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true.15, %land.lhs.true.7, %land.lhs.true, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.34
  %31 = load i16, i16* %retval
  ret i16 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @importmap(i8* %modname, i8* %symbol, i8** %encmap, i8** %decmap) #0 {
entry:
  %retval = alloca i32, align 4
  %modname.addr = alloca i8*, align 8
  %symbol.addr = alloca i8*, align 8
  %encmap.addr = alloca i8**, align 8
  %decmap.addr = alloca i8**, align 8
  %o = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %map = alloca %struct.dbcs_map*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store i8* %modname, i8** %modname.addr, align 8
  store i8* %symbol, i8** %symbol.addr, align 8
  store i8** %encmap, i8*** %encmap.addr, align 8
  store i8** %decmap, i8*** %decmap.addr, align 8
  %0 = load i8*, i8** %modname.addr, align 8
  %call = call %struct._object* @PyImport_ImportModule(i8* %0)
  store %struct._object* %call, %struct._object** %mod, align 8
  %1 = load %struct._object*, %struct._object** %mod, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %mod, align 8
  %3 = load i8*, i8** %symbol.addr, align 8
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %2, i8* %3)
  store %struct._object* %call1, %struct._object** %o, align 8
  %4 = load %struct._object*, %struct._object** %o, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  br label %errorexit

if.else:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %o, align 8
  %call4 = call i32 @PyCapsule_IsValid(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %errorexit

if.else.6:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %o, align 8
  %call7 = call i8* @PyCapsule_GetPointer(%struct._object* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0))
  %8 = bitcast i8* %call7 to %struct.dbcs_map*
  store %struct.dbcs_map* %8, %struct.dbcs_map** %map, align 8
  %9 = load i8**, i8*** %encmap.addr, align 8
  %cmp8 = icmp ne i8** %9, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.else.6
  %10 = load %struct.dbcs_map*, %struct.dbcs_map** %map, align 8
  %encmap10 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %10, i32 0, i32 1
  %11 = load %struct.unim_index*, %struct.unim_index** %encmap10, align 8
  %12 = bitcast %struct.unim_index* %11 to i8*
  %13 = load i8**, i8*** %encmap.addr, align 8
  store i8* %12, i8** %13, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.else.6
  %14 = load i8**, i8*** %decmap.addr, align 8
  %cmp12 = icmp ne i8** %14, null
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct.dbcs_map*, %struct.dbcs_map** %map, align 8
  %decmap14 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %15, i32 0, i32 2
  %16 = load %struct.dbcs_index*, %struct.dbcs_index** %decmap14, align 8
  %17 = bitcast %struct.dbcs_index* %16 to i8*
  %18 = load i8**, i8*** %decmap.addr, align 8
  store i8* %17, i8** %18, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %19 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %28, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %31(%struct._object* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  store i32 0, i32* %retval
  br label %return

errorexit:                                        ; preds = %if.then.5, %if.then.3
  br label %do.body.33

do.body.33:                                       ; preds = %errorexit
  %33 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp34, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %35, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %38(%struct._object* %39)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.43, %do.end.32, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct._object* @PyImport_ImportModule(i8*) #1

declare i32 @PyCapsule_IsValid(%struct._object*, i8*) #1

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #1

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #1

; Function Attrs: nounwind uwtable
define internal i64 @iso2022processesc(i8* %config, %union.MultibyteCodec_State* %state, i8** %inbuf, i64* %inleft) #0 {
entry:
  %retval = alloca i64, align 8
  %config.addr = alloca i8*, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %inbuf.addr = alloca i8**, align 8
  %inleft.addr = alloca i64*, align 8
  %charset = alloca i8, align 1
  %designation = alloca i8, align 1
  %i = alloca i64, align 8
  %esclen = alloca i64, align 8
  %dsg = alloca %struct.iso2022_designation*, align 8
  store i8* %config, i8** %config.addr, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8** %inbuf, i8*** %inbuf.addr, align 8
  store i64* %inleft, i64** %inleft.addr, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %i, align 8
  %2 = load i64*, i64** %inleft.addr, align 8
  %3 = load i64, i64* %2, align 8
  %cmp1 = icmp sge i64 %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i64 -2, i64* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %5 = load i8**, i8*** %inbuf.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %arrayidx = getelementptr i8, i8* %6, i64 %4
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp2 = icmp sge i32 %conv, 65
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %8 = load i64, i64* %i, align 8
  %9 = load i8**, i8*** %inbuf.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %arrayidx4 = getelementptr i8, i8* %10, i64 %8
  %11 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %11 to i32
  %cmp6 = icmp sle i32 %conv5, 90
  br i1 %cmp6, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i8**, i8*** %inbuf.addr, align 8
  %14 = load i8*, i8** %13, align 8
  %arrayidx8 = getelementptr i8, i8* %14, i64 %12
  %15 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %15 to i32
  %cmp10 = icmp eq i32 %conv9, 64
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load i64, i64* %i, align 8
  %add = add i64 %16, 1
  store i64 %add, i64* %esclen, align 8
  br label %for.end

if.else:                                          ; preds = %lor.lhs.false
  %17 = load i8*, i8** %config.addr, align 8
  %18 = bitcast i8* %17 to %struct.iso2022_config*
  %flags = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %18, i32 0, i32 0
  %19 = load i32, i32* %flags, align 4
  %and = and i32 %19, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true.13, label %if.end.30

land.lhs.true.13:                                 ; preds = %if.else
  %20 = load i64, i64* %i, align 8
  %add14 = add i64 %20, 1
  %21 = load i64*, i64** %inleft.addr, align 8
  %22 = load i64, i64* %21, align 8
  %cmp15 = icmp slt i64 %add14, %22
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.30

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %23 = load i64, i64* %i, align 8
  %24 = load i8**, i8*** %inbuf.addr, align 8
  %25 = load i8*, i8** %24, align 8
  %arrayidx18 = getelementptr i8, i8* %25, i64 %23
  %26 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %26 to i32
  %cmp20 = icmp eq i32 %conv19, 38
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.30

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %27 = load i64, i64* %i, align 8
  %add23 = add i64 %27, 1
  %28 = load i8**, i8*** %inbuf.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %arrayidx24 = getelementptr i8, i8* %29, i64 %add23
  %30 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %30 to i32
  %cmp26 = icmp eq i32 %conv25, 64
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true.22
  %31 = load i64, i64* %i, align 8
  %add29 = add i64 %31, 2
  store i64 %add29, i64* %i, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true.22, %land.lhs.true.17, %land.lhs.true.13, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %32 = load i64, i64* %i, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %for.cond
  %33 = load i64, i64* %i, align 8
  %cmp32 = icmp sge i64 %33, 16
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  store i64 1, i64* %retval
  br label %return

if.end.35:                                        ; preds = %for.end
  %34 = load i64, i64* %esclen, align 8
  switch i64 %34, label %sw.default [
    i64 3, label %sw.bb
    i64 4, label %sw.bb.72
    i64 6, label %sw.bb.97
  ]

sw.bb:                                            ; preds = %if.end.35
  %35 = load i8**, i8*** %inbuf.addr, align 8
  %36 = load i8*, i8** %35, align 8
  %arrayidx36 = getelementptr i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %37 to i32
  %cmp38 = icmp eq i32 %conv37, 36
  br i1 %cmp38, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %sw.bb
  %38 = load i8**, i8*** %inbuf.addr, align 8
  %39 = load i8*, i8** %38, align 8
  %arrayidx41 = getelementptr i8, i8* %39, i64 2
  %40 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %40 to i32
  %or = or i32 %conv42, 128
  %conv43 = trunc i32 %or to i8
  store i8 %conv43, i8* %charset, align 1
  store i8 0, i8* %designation, align 1
  br label %if.end.71

if.else.44:                                       ; preds = %sw.bb
  %41 = load i8**, i8*** %inbuf.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %arrayidx45 = getelementptr i8, i8* %42, i64 2
  %43 = load i8, i8* %arrayidx45, align 1
  store i8 %43, i8* %charset, align 1
  %44 = load i8**, i8*** %inbuf.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %arrayidx46 = getelementptr i8, i8* %45, i64 1
  %46 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %46 to i32
  %cmp48 = icmp eq i32 %conv47, 40
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.44
  store i8 0, i8* %designation, align 1
  br label %if.end.70

if.else.51:                                       ; preds = %if.else.44
  %47 = load i8**, i8*** %inbuf.addr, align 8
  %48 = load i8*, i8** %47, align 8
  %arrayidx52 = getelementptr i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %49 to i32
  %cmp54 = icmp eq i32 %conv53, 41
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.51
  store i8 1, i8* %designation, align 1
  br label %if.end.69

if.else.57:                                       ; preds = %if.else.51
  %50 = load i8*, i8** %config.addr, align 8
  %51 = bitcast i8* %50 to %struct.iso2022_config*
  %flags58 = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %51, i32 0, i32 0
  %52 = load i32, i32* %flags58, align 4
  %and59 = and i32 %52, 2
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.else.67

land.lhs.true.61:                                 ; preds = %if.else.57
  %53 = load i8**, i8*** %inbuf.addr, align 8
  %54 = load i8*, i8** %53, align 8
  %arrayidx62 = getelementptr i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %55 to i32
  %cmp64 = icmp eq i32 %conv63, 46
  br i1 %cmp64, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %land.lhs.true.61
  store i8 2, i8* %designation, align 1
  br label %if.end.68

if.else.67:                                       ; preds = %land.lhs.true.61, %if.else.57
  store i64 3, i64* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.66
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.56
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.50
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.40
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.35
  %56 = load i8**, i8*** %inbuf.addr, align 8
  %57 = load i8*, i8** %56, align 8
  %arrayidx73 = getelementptr i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %58 to i32
  %cmp75 = icmp ne i32 %conv74, 36
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.72
  store i64 4, i64* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.72
  %59 = load i8**, i8*** %inbuf.addr, align 8
  %60 = load i8*, i8** %59, align 8
  %arrayidx79 = getelementptr i8, i8* %60, i64 3
  %61 = load i8, i8* %arrayidx79, align 1
  %conv80 = zext i8 %61 to i32
  %or81 = or i32 %conv80, 128
  %conv82 = trunc i32 %or81 to i8
  store i8 %conv82, i8* %charset, align 1
  %62 = load i8**, i8*** %inbuf.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %arrayidx83 = getelementptr i8, i8* %63, i64 2
  %64 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %64 to i32
  %cmp85 = icmp eq i32 %conv84, 40
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.end.78
  store i8 0, i8* %designation, align 1
  br label %if.end.96

if.else.88:                                       ; preds = %if.end.78
  %65 = load i8**, i8*** %inbuf.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %arrayidx89 = getelementptr i8, i8* %66, i64 2
  %67 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %67 to i32
  %cmp91 = icmp eq i32 %conv90, 41
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.88
  store i8 1, i8* %designation, align 1
  br label %if.end.95

if.else.94:                                       ; preds = %if.else.88
  store i64 4, i64* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.93
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.87
  br label %sw.epilog

sw.bb.97:                                         ; preds = %if.end.35
  %68 = load i8*, i8** %config.addr, align 8
  %69 = bitcast i8* %68 to %struct.iso2022_config*
  %flags98 = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %69, i32 0, i32 0
  %70 = load i32, i32* %flags98, align 4
  %and99 = and i32 %70, 4
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.else.117

land.lhs.true.101:                                ; preds = %sw.bb.97
  %71 = load i8**, i8*** %inbuf.addr, align 8
  %72 = load i8*, i8** %71, align 8
  %arrayidx102 = getelementptr i8, i8* %72, i64 3
  %73 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %73 to i32
  %cmp104 = icmp eq i32 %conv103, 27
  br i1 %cmp104, label %land.lhs.true.106, label %if.else.117

land.lhs.true.106:                                ; preds = %land.lhs.true.101
  %74 = load i8**, i8*** %inbuf.addr, align 8
  %75 = load i8*, i8** %74, align 8
  %arrayidx107 = getelementptr i8, i8* %75, i64 4
  %76 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %76 to i32
  %cmp109 = icmp eq i32 %conv108, 36
  br i1 %cmp109, label %land.lhs.true.111, label %if.else.117

land.lhs.true.111:                                ; preds = %land.lhs.true.106
  %77 = load i8**, i8*** %inbuf.addr, align 8
  %78 = load i8*, i8** %77, align 8
  %arrayidx112 = getelementptr i8, i8* %78, i64 5
  %79 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %79 to i32
  %cmp114 = icmp eq i32 %conv113, 66
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %land.lhs.true.111
  store i8 -62, i8* %charset, align 1
  store i8 0, i8* %designation, align 1
  br label %if.end.118

if.else.117:                                      ; preds = %land.lhs.true.111, %land.lhs.true.106, %land.lhs.true.101, %sw.bb.97
  store i64 6, i64* %retval
  br label %return

if.end.118:                                       ; preds = %if.then.116
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.35
  %80 = load i64, i64* %esclen, align 8
  store i64 %80, i64* %retval
  br label %return

sw.epilog:                                        ; preds = %if.end.118, %if.end.96, %if.end.71
  %81 = load i8, i8* %charset, align 1
  %conv119 = zext i8 %81 to i32
  %cmp120 = icmp ne i32 %conv119, 66
  br i1 %cmp120, label %if.then.122, label %if.end.139

if.then.122:                                      ; preds = %sw.epilog
  %82 = load i8*, i8** %config.addr, align 8
  %83 = bitcast i8* %82 to %struct.iso2022_config*
  %designations = getelementptr inbounds %struct.iso2022_config, %struct.iso2022_config* %83, i32 0, i32 1
  %84 = load %struct.iso2022_designation*, %struct.iso2022_designation** %designations, align 8
  store %struct.iso2022_designation* %84, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.133, %if.then.122
  %85 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %85, i32 0, i32 0
  %86 = load i8, i8* %mark, align 1
  %tobool124 = icmp ne i8 %86, 0
  br i1 %tobool124, label %for.body.125, label %for.end.134

for.body.125:                                     ; preds = %for.cond.123
  %87 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark126 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %87, i32 0, i32 0
  %88 = load i8, i8* %mark126, align 1
  %conv127 = zext i8 %88 to i32
  %89 = load i8, i8* %charset, align 1
  %conv128 = zext i8 %89 to i32
  %cmp129 = icmp eq i32 %conv127, %conv128
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %for.body.125
  br label %for.end.134

if.end.132:                                       ; preds = %for.body.125
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %90 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %incdec.ptr = getelementptr %struct.iso2022_designation, %struct.iso2022_designation* %90, i32 1
  store %struct.iso2022_designation* %incdec.ptr, %struct.iso2022_designation** %dsg, align 8
  br label %for.cond.123

for.end.134:                                      ; preds = %if.then.131, %for.cond.123
  %91 = load %struct.iso2022_designation*, %struct.iso2022_designation** %dsg, align 8
  %mark135 = getelementptr inbounds %struct.iso2022_designation, %struct.iso2022_designation* %91, i32 0, i32 0
  %92 = load i8, i8* %mark135, align 1
  %tobool136 = icmp ne i8 %92, 0
  br i1 %tobool136, label %if.end.138, label %if.then.137

if.then.137:                                      ; preds = %for.end.134
  %93 = load i64, i64* %esclen, align 8
  store i64 %93, i64* %retval
  br label %return

if.end.138:                                       ; preds = %for.end.134
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %sw.epilog
  br label %do.body

do.body:                                          ; preds = %if.end.139
  %94 = load i8, i8* %charset, align 1
  %95 = load i8, i8* %designation, align 1
  %idxprom = zext i8 %95 to i64
  %96 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %96 to [8 x i8]*
  %arrayidx140 = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 %idxprom
  store i8 %94, i8* %arrayidx140, align 1
  br label %do.end

do.end:                                           ; preds = %do.body
  %97 = load i64, i64* %esclen, align 8
  %98 = load i64*, i64** %inleft.addr, align 8
  %99 = load i64, i64* %98, align 8
  %sub = sub i64 %99, %97
  store i64 %sub, i64* %98, align 8
  %100 = load i64, i64* %esclen, align 8
  %101 = load i8**, i8*** %inbuf.addr, align 8
  %102 = load i8*, i8** %101, align 8
  %add.ptr = getelementptr i8, i8* %102, i64 %100
  store i8* %add.ptr, i8** %101, align 8
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.137, %sw.default, %if.else.117, %if.else.94, %if.then.77, %if.else.67, %if.then.34, %if.then
  %103 = load i64, i64* %retval
  ret i64 %103
}

; Function Attrs: nounwind uwtable
define internal i64 @iso2022processg2(i8* %config, %union.MultibyteCodec_State* %state, i8** %inbuf, i64* %inleft, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i64, align 8
  %config.addr = alloca i8*, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %inbuf.addr = alloca i8**, align 8
  %inleft.addr = alloca i64*, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  store i8* %config, i8** %config.addr, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store i8** %inbuf, i8*** %inbuf.addr, align 8
  store i64* %inleft, i64** %inleft.addr, align 8
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8
  %0 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c = bitcast %union.MultibyteCodec_State* %0 to [8 x i8]*
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %c, i32 0, i64 2
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 65
  br i1 %cmp, label %if.then, label %if.else.13

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %inbuf.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %arrayidx2 = getelementptr i8, i8* %3, i64 2
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  %cmp4 = icmp slt i32 %conv3, 128
  br i1 %cmp4, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %5 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %6 = load i8**, i8*** %inbuf.addr, align 8
  %7 = load i8*, i8** %6, align 8
  %arrayidx7 = getelementptr i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %8 to i32
  %add = add i32 %conv8, 128
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %5, i32 %add)
  %cmp9 = icmp slt i32 %call, 0
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %do.body
  store i64 -4, i64* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.12

if.else:                                          ; preds = %if.then
  store i64 3, i64* %retval
  br label %return

if.end.12:                                        ; preds = %do.end
  br label %if.end.168

if.else.13:                                       ; preds = %entry
  %9 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c14 = bitcast %union.MultibyteCodec_State* %9 to [8 x i8]*
  %arrayidx15 = getelementptr [8 x i8], [8 x i8]* %c14, i32 0, i64 2
  %10 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %10 to i32
  %cmp17 = icmp eq i32 %conv16, 70
  br i1 %cmp17, label %if.then.19, label %if.else.142

if.then.19:                                       ; preds = %if.else.13
  %11 = load i8**, i8*** %inbuf.addr, align 8
  %12 = load i8*, i8** %11, align 8
  %arrayidx20 = getelementptr i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %xor = xor i32 %conv21, 128
  %cmp22 = icmp slt i32 %xor, 160
  br i1 %cmp22, label %if.then.24, label %if.else.35

if.then.24:                                       ; preds = %if.then.19
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %14 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %15 = load i8**, i8*** %inbuf.addr, align 8
  %16 = load i8*, i8** %15, align 8
  %arrayidx26 = getelementptr i8, i8* %16, i64 2
  %17 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %17 to i32
  %xor28 = xor i32 %conv27, 128
  %call29 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %14, i32 %xor28)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %do.body.25
  store i64 -4, i64* %retval
  br label %return

if.end.33:                                        ; preds = %do.body.25
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.141

if.else.35:                                       ; preds = %if.then.19
  %18 = load i8**, i8*** %inbuf.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %arrayidx36 = getelementptr i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %20 to i32
  %xor38 = xor i32 %conv37, 128
  %cmp39 = icmp slt i32 %xor38, 192
  br i1 %cmp39, label %land.lhs.true, label %if.else.55

land.lhs.true:                                    ; preds = %if.else.35
  %21 = load i8**, i8*** %inbuf.addr, align 8
  %22 = load i8*, i8** %21, align 8
  %arrayidx41 = getelementptr i8, i8* %22, i64 2
  %23 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %23 to i32
  %xor43 = xor i32 %conv42, 128
  %sub = sub i32 %xor43, 160
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 680475593, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.44, label %if.else.55

if.then.44:                                       ; preds = %land.lhs.true
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %24 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %25 = load i8**, i8*** %inbuf.addr, align 8
  %26 = load i8*, i8** %25, align 8
  %arrayidx46 = getelementptr i8, i8* %26, i64 2
  %27 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %27 to i32
  %xor48 = xor i32 %conv47, 128
  %call49 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %24, i32 %xor48)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.body.45
  store i64 -4, i64* %retval
  br label %return

if.end.53:                                        ; preds = %do.body.45
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.140

if.else.55:                                       ; preds = %land.lhs.true, %if.else.35
  %28 = load i8**, i8*** %inbuf.addr, align 8
  %29 = load i8*, i8** %28, align 8
  %arrayidx56 = getelementptr i8, i8* %29, i64 2
  %30 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %30 to i32
  %xor58 = xor i32 %conv57, 128
  %cmp59 = icmp sge i32 %xor58, 180
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.93

land.lhs.true.61:                                 ; preds = %if.else.55
  %31 = load i8**, i8*** %inbuf.addr, align 8
  %32 = load i8*, i8** %31, align 8
  %arrayidx62 = getelementptr i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %33 to i32
  %xor64 = xor i32 %conv63, 128
  %cmp65 = icmp sle i32 %xor64, 254
  br i1 %cmp65, label %land.lhs.true.67, label %if.else.93

land.lhs.true.67:                                 ; preds = %land.lhs.true.61
  %34 = load i8**, i8*** %inbuf.addr, align 8
  %35 = load i8*, i8** %34, align 8
  %arrayidx68 = getelementptr i8, i8* %35, i64 2
  %36 = load i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %36 to i32
  %xor70 = xor i32 %conv69, 128
  %cmp71 = icmp sge i32 %xor70, 212
  br i1 %cmp71, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.67
  %37 = load i8**, i8*** %inbuf.addr, align 8
  %38 = load i8*, i8** %37, align 8
  %arrayidx73 = getelementptr i8, i8* %38, i64 2
  %39 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %39 to i32
  %xor75 = xor i32 %conv74, 128
  %sub76 = sub i32 %xor75, 180
  %sh_prom77 = zext i32 %sub76 to i64
  %shl78 = shl i64 1, %sh_prom77
  %and79 = and i64 3221224823, %shl78
  %tobool80 = icmp ne i64 %and79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.93

if.then.81:                                       ; preds = %lor.lhs.false, %land.lhs.true.67
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %40 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %41 = load i8**, i8*** %inbuf.addr, align 8
  %42 = load i8*, i8** %41, align 8
  %arrayidx83 = getelementptr i8, i8* %42, i64 2
  %43 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %43 to i32
  %xor85 = xor i32 %conv84, 128
  %add86 = add i32 720, %xor85
  %call87 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %40, i32 %add86)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %do.body.82
  store i64 -4, i64* %retval
  br label %return

if.end.91:                                        ; preds = %do.body.82
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.139

if.else.93:                                       ; preds = %lor.lhs.false, %land.lhs.true.61, %if.else.55
  %44 = load i8**, i8*** %inbuf.addr, align 8
  %45 = load i8*, i8** %44, align 8
  %arrayidx94 = getelementptr i8, i8* %45, i64 2
  %46 = load i8, i8* %arrayidx94, align 1
  %conv95 = zext i8 %46 to i32
  %xor96 = xor i32 %conv95, 128
  %cmp97 = icmp eq i32 %xor96, 161
  br i1 %cmp97, label %if.then.99, label %if.else.107

if.then.99:                                       ; preds = %if.else.93
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %47 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call101 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %47, i32 8216)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %do.body.100
  store i64 -4, i64* %retval
  br label %return

if.end.105:                                       ; preds = %do.body.100
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  br label %if.end.138

if.else.107:                                      ; preds = %if.else.93
  %48 = load i8**, i8*** %inbuf.addr, align 8
  %49 = load i8*, i8** %48, align 8
  %arrayidx108 = getelementptr i8, i8* %49, i64 2
  %50 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %50 to i32
  %xor110 = xor i32 %conv109, 128
  %cmp111 = icmp eq i32 %xor110, 162
  br i1 %cmp111, label %if.then.113, label %if.else.121

if.then.113:                                      ; preds = %if.else.107
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %51 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call115 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %51, i32 8217)
  %cmp116 = icmp slt i32 %call115, 0
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %do.body.114
  store i64 -4, i64* %retval
  br label %return

if.end.119:                                       ; preds = %do.body.114
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  br label %if.end.137

if.else.121:                                      ; preds = %if.else.107
  %52 = load i8**, i8*** %inbuf.addr, align 8
  %53 = load i8*, i8** %52, align 8
  %arrayidx122 = getelementptr i8, i8* %53, i64 2
  %54 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %54 to i32
  %xor124 = xor i32 %conv123, 128
  %cmp125 = icmp eq i32 %xor124, 175
  br i1 %cmp125, label %if.then.127, label %if.else.135

if.then.127:                                      ; preds = %if.else.121
  br label %do.body.128

do.body.128:                                      ; preds = %if.then.127
  %55 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %call129 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %55, i32 8213)
  %cmp130 = icmp slt i32 %call129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %do.body.128
  store i64 -4, i64* %retval
  br label %return

if.end.133:                                       ; preds = %do.body.128
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %if.end.136

if.else.135:                                      ; preds = %if.else.121
  store i64 3, i64* %retval
  br label %return

if.end.136:                                       ; preds = %do.end.134
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %do.end.120
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %do.end.106
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %do.end.92
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %do.end.54
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %do.end.34
  br label %if.end.167

if.else.142:                                      ; preds = %if.else.13
  %56 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %c143 = bitcast %union.MultibyteCodec_State* %56 to [8 x i8]*
  %arrayidx144 = getelementptr [8 x i8], [8 x i8]* %c143, i32 0, i64 2
  %57 = load i8, i8* %arrayidx144, align 1
  %conv145 = zext i8 %57 to i32
  %cmp146 = icmp eq i32 %conv145, 66
  br i1 %cmp146, label %if.then.148, label %if.else.165

if.then.148:                                      ; preds = %if.else.142
  %58 = load i8**, i8*** %inbuf.addr, align 8
  %59 = load i8*, i8** %58, align 8
  %arrayidx149 = getelementptr i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx149, align 1
  %conv150 = zext i8 %60 to i32
  %and151 = and i32 %conv150, 128
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %if.then.148
  store i64 3, i64* %retval
  br label %return

if.else.154:                                      ; preds = %if.then.148
  br label %do.body.155

do.body.155:                                      ; preds = %if.else.154
  %61 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8
  %62 = load i8**, i8*** %inbuf.addr, align 8
  %63 = load i8*, i8** %62, align 8
  %arrayidx156 = getelementptr i8, i8* %63, i64 2
  %64 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %64 to i32
  %call158 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %61, i32 %conv157)
  %cmp159 = icmp slt i32 %call158, 0
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %do.body.155
  store i64 -4, i64* %retval
  br label %return

if.end.162:                                       ; preds = %do.body.155
  br label %do.end.163

do.end.163:                                       ; preds = %if.end.162
  br label %if.end.164

if.end.164:                                       ; preds = %do.end.163
  br label %if.end.166

if.else.165:                                      ; preds = %if.else.142
  store i64 -3, i64* %retval
  br label %return

if.end.166:                                       ; preds = %if.end.164
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.end.141
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.12
  %65 = load i8**, i8*** %inbuf.addr, align 8
  %66 = load i8*, i8** %65, align 8
  %add.ptr = getelementptr i8, i8* %66, i64 3
  store i8* %add.ptr, i8** %65, align 8
  %67 = load i64*, i64** %inleft.addr, align 8
  %68 = load i64, i64* %67, align 8
  %sub169 = sub i64 %68, 3
  store i64 %sub169, i64* %67, align 8
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.end.168, %if.else.165, %if.then.161, %if.then.153, %if.else.135, %if.then.132, %if.then.118, %if.then.104, %if.then.90, %if.then.52, %if.then.32, %if.else, %if.then.11
  %69 = load i64, i64* %retval
  ret i64 %69
}

declare i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @jisx0208_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @jisx0208_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8** bitcast (%struct.unim_index** @jisxcommon_encmap to i8**), i8** null)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0208_decmap to i8**))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 1, i32* @jisx0208_init.initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0208_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 33
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 64
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 65340, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx7 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %6, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx7, i32 0, i32 0
  %7 = load i16*, i16** %map, align 8
  %cmp8 = icmp ne i16* %7, null
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.46

land.lhs.true.10:                                 ; preds = %if.else
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx13 = getelementptr i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %11 to i64
  %12 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx15 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %12, i64 %idxprom14
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx15, i32 0, i32 1
  %13 = load i8, i8* %bottom, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp sge i32 %conv12, %conv16
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.46

land.lhs.true.19:                                 ; preds = %land.lhs.true.10
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %15 to i32
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx22, align 1
  %idxprom23 = zext i8 %17 to i64
  %18 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx24 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %18, i64 %idxprom23
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx24, i32 0, i32 2
  %19 = load i8, i8* %top, align 1
  %conv25 = zext i8 %19 to i32
  %cmp26 = icmp sle i32 %conv21, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.46

land.lhs.true.28:                                 ; preds = %land.lhs.true.19
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx31, align 1
  %idxprom32 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx33 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom32
  %bottom34 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx33, i32 0, i32 1
  %25 = load i8, i8* %bottom34, align 1
  %conv35 = zext i8 %25 to i32
  %sub = sub i32 %conv30, %conv35
  %idxprom36 = sext i32 %sub to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx37 = getelementptr i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx37, align 1
  %idxprom38 = zext i8 %27 to i64
  %28 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx39 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %28, i64 %idxprom38
  %map40 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx39, i32 0, i32 0
  %29 = load i16*, i16** %map40, align 8
  %arrayidx41 = getelementptr i16, i16* %29, i64 %idxprom36
  %30 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %30 to i32
  store i32 %conv42, i32* %u, align 4
  %cmp43 = icmp ne i32 %conv42, 65534
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.28
  %31 = load i32, i32* %u, align 4
  store i32 %31, i32* %retval
  br label %return

if.else.46:                                       ; preds = %land.lhs.true.28, %land.lhs.true.19, %land.lhs.true.10, %if.else
  store i32 65535, i32* %retval
  br label %return

return:                                           ; preds = %if.else.46, %if.then.45, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0208_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ult i32 %1, 65536
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp eq i32 %3, 65340
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i16 8512, i16* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %4, align 4
  %shr = lshr i32 %5, 8
  %idxprom = zext i32 %shr to i64
  %6 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx = getelementptr %struct.unim_index, %struct.unim_index* %6, i64 %idxprom
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx, i32 0, i32 0
  %7 = load i16*, i16** %map, align 8
  %cmp3 = icmp ne i16* %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.else
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %and = and i32 %9, 255
  %10 = load i32*, i32** %data.addr, align 8
  %11 = load i32, i32* %10, align 4
  %shr4 = lshr i32 %11, 8
  %idxprom5 = zext i32 %shr4 to i64
  %12 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx6 = getelementptr %struct.unim_index, %struct.unim_index* %12, i64 %idxprom5
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx6, i32 0, i32 1
  %13 = load i8, i8* %bottom, align 1
  %conv = zext i8 %13 to i32
  %cmp7 = icmp uge i32 %and, %conv
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i32, i32* %14, align 4
  %and10 = and i32 %15, 255
  %16 = load i32*, i32** %data.addr, align 8
  %17 = load i32, i32* %16, align 4
  %shr11 = lshr i32 %17, 8
  %idxprom12 = zext i32 %shr11 to i64
  %18 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx13 = getelementptr %struct.unim_index, %struct.unim_index* %18, i64 %idxprom12
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx13, i32 0, i32 2
  %19 = load i8, i8* %top, align 1
  %conv14 = zext i8 %19 to i32
  %cmp15 = icmp ule i32 %and10, %conv14
  br i1 %cmp15, label %land.lhs.true.17, label %if.end.37

land.lhs.true.17:                                 ; preds = %land.lhs.true.9
  %20 = load i32*, i32** %data.addr, align 8
  %21 = load i32, i32* %20, align 4
  %and18 = and i32 %21, 255
  %22 = load i32*, i32** %data.addr, align 8
  %23 = load i32, i32* %22, align 4
  %shr19 = lshr i32 %23, 8
  %idxprom20 = zext i32 %shr19 to i64
  %24 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx21 = getelementptr %struct.unim_index, %struct.unim_index* %24, i64 %idxprom20
  %bottom22 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx21, i32 0, i32 1
  %25 = load i8, i8* %bottom22, align 1
  %conv23 = zext i8 %25 to i32
  %sub = sub i32 %and18, %conv23
  %idxprom24 = zext i32 %sub to i64
  %26 = load i32*, i32** %data.addr, align 8
  %27 = load i32, i32* %26, align 4
  %shr25 = lshr i32 %27, 8
  %idxprom26 = zext i32 %shr25 to i64
  %28 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx27 = getelementptr %struct.unim_index, %struct.unim_index* %28, i64 %idxprom26
  %map28 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx27, i32 0, i32 0
  %29 = load i16*, i16** %map28, align 8
  %arrayidx29 = getelementptr i16, i16* %29, i64 %idxprom24
  %30 = load i16, i16* %arrayidx29, align 2
  store i16 %30, i16* %coded, align 2
  %conv30 = zext i16 %30 to i32
  %cmp31 = icmp ne i32 %conv30, 65535
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %land.lhs.true.17
  %31 = load i16, i16* %coded, align 2
  %conv34 = zext i16 %31 to i32
  %and35 = and i32 %conv34, 32768
  %tobool = icmp ne i32 %and35, 0
  br i1 %tobool, label %if.end, label %if.then.36

if.then.36:                                       ; preds = %if.then.33
  %32 = load i16, i16* %coded, align 2
  store i16 %32, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then.33
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %land.lhs.true.17, %land.lhs.true.9, %land.lhs.true, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.36, %if.then.2
  %33 = load i16, i16* %retval
  ret i16 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0201_r_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  store i32 %conv2, i32* %u, align 4
  br label %if.end.27

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 165, i32* %u, align 4
  br label %if.end.26

if.else.7:                                        ; preds = %if.else
  %6 = load i8*, i8** %data.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv8 = zext i8 %7 to i32
  %cmp9 = icmp slt i32 %conv8, 126
  br i1 %cmp9, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else.7
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv12 = zext i8 %9 to i32
  store i32 %conv12, i32* %u, align 4
  br label %if.end.25

if.else.13:                                       ; preds = %if.else.7
  %10 = load i8*, i8** %data.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv14 = zext i8 %11 to i32
  %cmp15 = icmp eq i32 %conv14, 126
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.13
  store i32 8254, i32* %u, align 4
  br label %if.end.24

if.else.18:                                       ; preds = %if.else.13
  %12 = load i8*, i8** %data.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv19 = zext i8 %13 to i32
  %cmp20 = icmp eq i32 %conv19, 127
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.18
  store i32 127, i32* %u, align 4
  br label %if.end

if.else.23:                                       ; preds = %if.else.18
  store i32 65535, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.17
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.11
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.6
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then
  %14 = load i32, i32* %u, align 4
  store i32 %14, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.else.23
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0201_r_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ult i32 %1, 128
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp ne i32 %3, 92
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %4, align 4
  %cmp3 = icmp ne i32 %5, 126
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load i32*, i32** %data.addr, align 8
  %7 = load i32, i32* %6, align 4
  %conv = trunc i32 %7 to i16
  store i16 %conv, i16* %coded, align 2
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %cmp4 = icmp eq i32 %9, 165
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i16 92, i16* %coded, align 2
  br label %if.end.12

if.else.7:                                        ; preds = %if.else
  %10 = load i32*, i32** %data.addr, align 8
  %11 = load i32, i32* %10, align 4
  %cmp8 = icmp eq i32 %11, 8254
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else.7
  store i16 126, i16* %coded, align 2
  br label %if.end

if.else.11:                                       ; preds = %if.else.7
  store i16 -1, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %12 = load i16, i16* %coded, align 2
  store i16 %12, i16* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else.11
  %13 = load i16, i16* %retval
  ret i16 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0212_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @jisx0212_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i8** bitcast (%struct.unim_index** @jisxcommon_encmap to i8**), i8** null)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0212_decmap to i8**))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 1, i32* @jisx0212_init.initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0212_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0212_decmap, align 8
  %arrayidx1 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %2, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx1, i32 0, i32 0
  %3 = load i16*, i16** %map, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0212_decmap, align 8
  %arrayidx5 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %8, i64 %idxprom4
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx5, i32 0, i32 1
  %9 = load i8, i8* %bottom, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %13 to i64
  %14 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0212_decmap, align 8
  %arrayidx14 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %14, i64 %idxprom13
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx14, i32 0, i32 2
  %15 = load i8, i8* %top, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv11, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.9
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %19 to i64
  %20 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0212_decmap, align 8
  %arrayidx23 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %20, i64 %idxprom22
  %bottom24 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx23, i32 0, i32 1
  %21 = load i8, i8* %bottom24, align 1
  %conv25 = zext i8 %21 to i32
  %sub = sub i32 %conv20, %conv25
  %idxprom26 = sext i32 %sub to i64
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0212_decmap, align 8
  %arrayidx29 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom28
  %map30 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx29, i32 0, i32 0
  %25 = load i16*, i16** %map30, align 8
  %arrayidx31 = getelementptr i16, i16* %25, i64 %idxprom26
  %26 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %26 to i32
  store i32 %conv32, i32* %u, align 4
  %cmp33 = icmp ne i32 %conv32, 65534
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.18
  %27 = load i32, i32* %u, align 4
  store i32 %27, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.9, %land.lhs.true, %entry
  store i32 65535, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0212_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ult i32 %1, 65536
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %shr = lshr i32 %3, 8
  %idxprom = zext i32 %shr to i64
  %4 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx = getelementptr %struct.unim_index, %struct.unim_index* %4, i64 %idxprom
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx, i32 0, i32 0
  %5 = load i16*, i16** %map, align 8
  %cmp1 = icmp ne i16* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32*, i32** %data.addr, align 8
  %7 = load i32, i32* %6, align 4
  %and = and i32 %7, 255
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %shr2 = lshr i32 %9, 8
  %idxprom3 = zext i32 %shr2 to i64
  %10 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx4 = getelementptr %struct.unim_index, %struct.unim_index* %10, i64 %idxprom3
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx4, i32 0, i32 1
  %11 = load i8, i8* %bottom, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp uge i32 %and, %conv
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.38

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %12, align 4
  %and8 = and i32 %13, 255
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i32, i32* %14, align 4
  %shr9 = lshr i32 %15, 8
  %idxprom10 = zext i32 %shr9 to i64
  %16 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx11 = getelementptr %struct.unim_index, %struct.unim_index* %16, i64 %idxprom10
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx11, i32 0, i32 2
  %17 = load i8, i8* %top, align 1
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp ule i32 %and8, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.38

land.lhs.true.15:                                 ; preds = %land.lhs.true.7
  %18 = load i32*, i32** %data.addr, align 8
  %19 = load i32, i32* %18, align 4
  %and16 = and i32 %19, 255
  %20 = load i32*, i32** %data.addr, align 8
  %21 = load i32, i32* %20, align 4
  %shr17 = lshr i32 %21, 8
  %idxprom18 = zext i32 %shr17 to i64
  %22 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx19 = getelementptr %struct.unim_index, %struct.unim_index* %22, i64 %idxprom18
  %bottom20 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx19, i32 0, i32 1
  %23 = load i8, i8* %bottom20, align 1
  %conv21 = zext i8 %23 to i32
  %sub = sub i32 %and16, %conv21
  %idxprom22 = zext i32 %sub to i64
  %24 = load i32*, i32** %data.addr, align 8
  %25 = load i32, i32* %24, align 4
  %shr23 = lshr i32 %25, 8
  %idxprom24 = zext i32 %shr23 to i64
  %26 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx25 = getelementptr %struct.unim_index, %struct.unim_index* %26, i64 %idxprom24
  %map26 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx25, i32 0, i32 0
  %27 = load i16*, i16** %map26, align 8
  %arrayidx27 = getelementptr i16, i16* %27, i64 %idxprom22
  %28 = load i16, i16* %arrayidx27, align 2
  store i16 %28, i16* %coded, align 2
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 65535
  br i1 %cmp29, label %if.then.31, label %if.end.38

if.then.31:                                       ; preds = %land.lhs.true.15
  %29 = load i16, i16* %coded, align 2
  %conv32 = zext i16 %29 to i32
  %and33 = and i32 %conv32, 32768
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.then.34, label %if.end

if.then.34:                                       ; preds = %if.then.31
  %30 = load i16, i16* %coded, align 2
  %conv35 = zext i16 %30 to i32
  %and36 = and i32 %conv35, 32767
  %conv37 = trunc i32 %and36 to i16
  store i16 %conv37, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end, %land.lhs.true.15, %land.lhs.true.7, %land.lhs.true, %if.then
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.34
  %31 = load i16, i16* %retval
  ret i16 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @gb2312_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @gb2312_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i8** bitcast (%struct.unim_index** @gbcommon_encmap to i8**), i8** null)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @gb2312_decmap to i8**))
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %entry
  store i32 1, i32* @gb2312_init.initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @gb2312_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load %struct.dbcs_index*, %struct.dbcs_index** @gb2312_decmap, align 8
  %arrayidx1 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %2, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx1, i32 0, i32 0
  %3 = load i16*, i16** %map, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load %struct.dbcs_index*, %struct.dbcs_index** @gb2312_decmap, align 8
  %arrayidx5 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %8, i64 %idxprom4
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx5, i32 0, i32 1
  %9 = load i8, i8* %bottom, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %13 to i64
  %14 = load %struct.dbcs_index*, %struct.dbcs_index** @gb2312_decmap, align 8
  %arrayidx14 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %14, i64 %idxprom13
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx14, i32 0, i32 2
  %15 = load i8, i8* %top, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv11, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.9
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %19 to i64
  %20 = load %struct.dbcs_index*, %struct.dbcs_index** @gb2312_decmap, align 8
  %arrayidx23 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %20, i64 %idxprom22
  %bottom24 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx23, i32 0, i32 1
  %21 = load i8, i8* %bottom24, align 1
  %conv25 = zext i8 %21 to i32
  %sub = sub i32 %conv20, %conv25
  %idxprom26 = sext i32 %sub to i64
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @gb2312_decmap, align 8
  %arrayidx29 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom28
  %map30 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx29, i32 0, i32 0
  %25 = load i16*, i16** %map30, align 8
  %arrayidx31 = getelementptr i16, i16* %25, i64 %idxprom26
  %26 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %26 to i32
  store i32 %conv32, i32* %u, align 4
  %cmp33 = icmp ne i32 %conv32, 65534
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.18
  %27 = load i32, i32* %u, align 4
  store i32 %27, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.9, %land.lhs.true, %entry
  store i32 65535, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @gb2312_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp ult i32 %1, 65536
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %shr = lshr i32 %3, 8
  %idxprom = zext i32 %shr to i64
  %4 = load %struct.unim_index*, %struct.unim_index** @gbcommon_encmap, align 8
  %arrayidx = getelementptr %struct.unim_index, %struct.unim_index* %4, i64 %idxprom
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx, i32 0, i32 0
  %5 = load i16*, i16** %map, align 8
  %cmp1 = icmp ne i16* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32*, i32** %data.addr, align 8
  %7 = load i32, i32* %6, align 4
  %and = and i32 %7, 255
  %8 = load i32*, i32** %data.addr, align 8
  %9 = load i32, i32* %8, align 4
  %shr2 = lshr i32 %9, 8
  %idxprom3 = zext i32 %shr2 to i64
  %10 = load %struct.unim_index*, %struct.unim_index** @gbcommon_encmap, align 8
  %arrayidx4 = getelementptr %struct.unim_index, %struct.unim_index* %10, i64 %idxprom3
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx4, i32 0, i32 1
  %11 = load i8, i8* %bottom, align 1
  %conv = zext i8 %11 to i32
  %cmp5 = icmp uge i32 %and, %conv
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.35

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %12 = load i32*, i32** %data.addr, align 8
  %13 = load i32, i32* %12, align 4
  %and8 = and i32 %13, 255
  %14 = load i32*, i32** %data.addr, align 8
  %15 = load i32, i32* %14, align 4
  %shr9 = lshr i32 %15, 8
  %idxprom10 = zext i32 %shr9 to i64
  %16 = load %struct.unim_index*, %struct.unim_index** @gbcommon_encmap, align 8
  %arrayidx11 = getelementptr %struct.unim_index, %struct.unim_index* %16, i64 %idxprom10
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx11, i32 0, i32 2
  %17 = load i8, i8* %top, align 1
  %conv12 = zext i8 %17 to i32
  %cmp13 = icmp ule i32 %and8, %conv12
  br i1 %cmp13, label %land.lhs.true.15, label %if.end.35

land.lhs.true.15:                                 ; preds = %land.lhs.true.7
  %18 = load i32*, i32** %data.addr, align 8
  %19 = load i32, i32* %18, align 4
  %and16 = and i32 %19, 255
  %20 = load i32*, i32** %data.addr, align 8
  %21 = load i32, i32* %20, align 4
  %shr17 = lshr i32 %21, 8
  %idxprom18 = zext i32 %shr17 to i64
  %22 = load %struct.unim_index*, %struct.unim_index** @gbcommon_encmap, align 8
  %arrayidx19 = getelementptr %struct.unim_index, %struct.unim_index* %22, i64 %idxprom18
  %bottom20 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx19, i32 0, i32 1
  %23 = load i8, i8* %bottom20, align 1
  %conv21 = zext i8 %23 to i32
  %sub = sub i32 %and16, %conv21
  %idxprom22 = zext i32 %sub to i64
  %24 = load i32*, i32** %data.addr, align 8
  %25 = load i32, i32* %24, align 4
  %shr23 = lshr i32 %25, 8
  %idxprom24 = zext i32 %shr23 to i64
  %26 = load %struct.unim_index*, %struct.unim_index** @gbcommon_encmap, align 8
  %arrayidx25 = getelementptr %struct.unim_index, %struct.unim_index* %26, i64 %idxprom24
  %map26 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx25, i32 0, i32 0
  %27 = load i16*, i16** %map26, align 8
  %arrayidx27 = getelementptr i16, i16* %27, i64 %idxprom22
  %28 = load i16, i16* %arrayidx27, align 2
  store i16 %28, i16* %coded, align 2
  %conv28 = zext i16 %28 to i32
  %cmp29 = icmp ne i32 %conv28, 65535
  br i1 %cmp29, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true.15
  %29 = load i16, i16* %coded, align 2
  %conv32 = zext i16 %29 to i32
  %and33 = and i32 %conv32, 32768
  %tobool = icmp ne i32 %and33, 0
  br i1 %tobool, label %if.end, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  %30 = load i16, i16* %coded, align 2
  store i16 %30, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %land.lhs.true.15, %land.lhs.true.7, %land.lhs.true, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.34
  %31 = load i16, i16* %retval
  ret i16 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @dummy_decoder(i8* %data) #0 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  ret i32 65535
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @dummy_encoder(i32* %data, i64* %length) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  ret i16 -1
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0213_init() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @jisx0213_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @jisx0208_init()
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call2 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8** bitcast (%struct.unim_index** @jisx0213_bmp_encmap to i8**), i8** null)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %call5 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0213_1_bmp_decmap to i8**))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.4
  %call8 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0213_2_bmp_decmap to i8**))
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.7
  %call11 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8** bitcast (%struct.unim_index** @jisx0213_emp_encmap to i8**), i8** null)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.10
  %call14 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0213_1_emp_decmap to i8**))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.13
  %call17 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i8** null, i8** bitcast (%struct.dbcs_index** @jisx0213_2_emp_decmap to i8**))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.16
  %call20 = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i32 0, i32 0), i8** bitcast (%struct.pair_encodemap** @jisx0213_pair_encmap to i8**), i8** bitcast (%struct.widedbcs_index** @jisx0213_pair_decmap to i8**))
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.19, %lor.lhs.false.16, %lor.lhs.false.13, %lor.lhs.false.10, %lor.lhs.false.7, %lor.lhs.false.4, %lor.lhs.false, %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.19, %entry
  store i32 1, i32* @jisx0213_init.initialized, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0213_2004_1_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 33
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 64
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 65340, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx7 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %6, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx7, i32 0, i32 0
  %7 = load i16*, i16** %map, align 8
  %cmp8 = icmp ne i16* %7, null
  br i1 %cmp8, label %land.lhs.true.10, label %if.else.46

land.lhs.true.10:                                 ; preds = %if.else
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx13 = getelementptr i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %11 to i64
  %12 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx15 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %12, i64 %idxprom14
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx15, i32 0, i32 1
  %13 = load i8, i8* %bottom, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp sge i32 %conv12, %conv16
  br i1 %cmp17, label %land.lhs.true.19, label %if.else.46

land.lhs.true.19:                                 ; preds = %land.lhs.true.10
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %15 to i32
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx22, align 1
  %idxprom23 = zext i8 %17 to i64
  %18 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx24 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %18, i64 %idxprom23
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx24, i32 0, i32 2
  %19 = load i8, i8* %top, align 1
  %conv25 = zext i8 %19 to i32
  %cmp26 = icmp sle i32 %conv21, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.else.46

land.lhs.true.28:                                 ; preds = %land.lhs.true.19
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx31, align 1
  %idxprom32 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx33 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom32
  %bottom34 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx33, i32 0, i32 1
  %25 = load i8, i8* %bottom34, align 1
  %conv35 = zext i8 %25 to i32
  %sub = sub i32 %conv30, %conv35
  %idxprom36 = sext i32 %sub to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx37 = getelementptr i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx37, align 1
  %idxprom38 = zext i8 %27 to i64
  %28 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx39 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %28, i64 %idxprom38
  %map40 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx39, i32 0, i32 0
  %29 = load i16*, i16** %map40, align 8
  %arrayidx41 = getelementptr i16, i16* %29, i64 %idxprom36
  %30 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %30 to i32
  store i32 %conv42, i32* %u, align 4
  %cmp43 = icmp ne i32 %conv42, 65534
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.28
  br label %if.end.186

if.else.46:                                       ; preds = %land.lhs.true.28, %land.lhs.true.19, %land.lhs.true.10, %if.else
  %31 = load i8*, i8** %data.addr, align 8
  %arrayidx47 = getelementptr i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx47, align 1
  %idxprom48 = zext i8 %32 to i64
  %33 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx49 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %33, i64 %idxprom48
  %map50 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx49, i32 0, i32 0
  %34 = load i16*, i16** %map50, align 8
  %cmp51 = icmp ne i16* %34, null
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.92

land.lhs.true.53:                                 ; preds = %if.else.46
  %35 = load i8*, i8** %data.addr, align 8
  %arrayidx54 = getelementptr i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %36 to i32
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx56 = getelementptr i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx56, align 1
  %idxprom57 = zext i8 %38 to i64
  %39 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx58 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %39, i64 %idxprom57
  %bottom59 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx58, i32 0, i32 1
  %40 = load i8, i8* %bottom59, align 1
  %conv60 = zext i8 %40 to i32
  %cmp61 = icmp sge i32 %conv55, %conv60
  br i1 %cmp61, label %land.lhs.true.63, label %if.else.92

land.lhs.true.63:                                 ; preds = %land.lhs.true.53
  %41 = load i8*, i8** %data.addr, align 8
  %arrayidx64 = getelementptr i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %42 to i32
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx66 = getelementptr i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx66, align 1
  %idxprom67 = zext i8 %44 to i64
  %45 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx68 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %45, i64 %idxprom67
  %top69 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx68, i32 0, i32 2
  %46 = load i8, i8* %top69, align 1
  %conv70 = zext i8 %46 to i32
  %cmp71 = icmp sle i32 %conv65, %conv70
  br i1 %cmp71, label %land.lhs.true.73, label %if.else.92

land.lhs.true.73:                                 ; preds = %land.lhs.true.63
  %47 = load i8*, i8** %data.addr, align 8
  %arrayidx74 = getelementptr i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %48 to i32
  %49 = load i8*, i8** %data.addr, align 8
  %arrayidx76 = getelementptr i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx76, align 1
  %idxprom77 = zext i8 %50 to i64
  %51 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx78 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %51, i64 %idxprom77
  %bottom79 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx78, i32 0, i32 1
  %52 = load i8, i8* %bottom79, align 1
  %conv80 = zext i8 %52 to i32
  %sub81 = sub i32 %conv75, %conv80
  %idxprom82 = sext i32 %sub81 to i64
  %53 = load i8*, i8** %data.addr, align 8
  %arrayidx83 = getelementptr i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx83, align 1
  %idxprom84 = zext i8 %54 to i64
  %55 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx85 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %55, i64 %idxprom84
  %map86 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx85, i32 0, i32 0
  %56 = load i16*, i16** %map86, align 8
  %arrayidx87 = getelementptr i16, i16* %56, i64 %idxprom82
  %57 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %57 to i32
  store i32 %conv88, i32* %u, align 4
  %cmp89 = icmp ne i32 %conv88, 65534
  br i1 %cmp89, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %land.lhs.true.73
  br label %if.end.185

if.else.92:                                       ; preds = %land.lhs.true.73, %land.lhs.true.63, %land.lhs.true.53, %if.else.46
  %58 = load i8*, i8** %data.addr, align 8
  %arrayidx93 = getelementptr i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx93, align 1
  %idxprom94 = zext i8 %59 to i64
  %60 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx95 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %60, i64 %idxprom94
  %map96 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx95, i32 0, i32 0
  %61 = load i16*, i16** %map96, align 8
  %cmp97 = icmp ne i16* %61, null
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.138

land.lhs.true.99:                                 ; preds = %if.else.92
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx100 = getelementptr i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %63 to i32
  %64 = load i8*, i8** %data.addr, align 8
  %arrayidx102 = getelementptr i8, i8* %64, i64 0
  %65 = load i8, i8* %arrayidx102, align 1
  %idxprom103 = zext i8 %65 to i64
  %66 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx104 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %66, i64 %idxprom103
  %bottom105 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx104, i32 0, i32 1
  %67 = load i8, i8* %bottom105, align 1
  %conv106 = zext i8 %67 to i32
  %cmp107 = icmp sge i32 %conv101, %conv106
  br i1 %cmp107, label %land.lhs.true.109, label %if.else.138

land.lhs.true.109:                                ; preds = %land.lhs.true.99
  %68 = load i8*, i8** %data.addr, align 8
  %arrayidx110 = getelementptr i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %69 to i32
  %70 = load i8*, i8** %data.addr, align 8
  %arrayidx112 = getelementptr i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx112, align 1
  %idxprom113 = zext i8 %71 to i64
  %72 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx114 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %72, i64 %idxprom113
  %top115 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx114, i32 0, i32 2
  %73 = load i8, i8* %top115, align 1
  %conv116 = zext i8 %73 to i32
  %cmp117 = icmp sle i32 %conv111, %conv116
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.138

land.lhs.true.119:                                ; preds = %land.lhs.true.109
  %74 = load i8*, i8** %data.addr, align 8
  %arrayidx120 = getelementptr i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %75 to i32
  %76 = load i8*, i8** %data.addr, align 8
  %arrayidx122 = getelementptr i8, i8* %76, i64 0
  %77 = load i8, i8* %arrayidx122, align 1
  %idxprom123 = zext i8 %77 to i64
  %78 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx124 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %78, i64 %idxprom123
  %bottom125 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx124, i32 0, i32 1
  %79 = load i8, i8* %bottom125, align 1
  %conv126 = zext i8 %79 to i32
  %sub127 = sub i32 %conv121, %conv126
  %idxprom128 = sext i32 %sub127 to i64
  %80 = load i8*, i8** %data.addr, align 8
  %arrayidx129 = getelementptr i8, i8* %80, i64 0
  %81 = load i8, i8* %arrayidx129, align 1
  %idxprom130 = zext i8 %81 to i64
  %82 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx131 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %82, i64 %idxprom130
  %map132 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx131, i32 0, i32 0
  %83 = load i16*, i16** %map132, align 8
  %arrayidx133 = getelementptr i16, i16* %83, i64 %idxprom128
  %84 = load i16, i16* %arrayidx133, align 2
  %conv134 = zext i16 %84 to i32
  store i32 %conv134, i32* %u, align 4
  %cmp135 = icmp ne i32 %conv134, 65534
  br i1 %cmp135, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %land.lhs.true.119
  %85 = load i32, i32* %u, align 4
  %or = or i32 %85, 131072
  store i32 %or, i32* %u, align 4
  br label %if.end.184

if.else.138:                                      ; preds = %land.lhs.true.119, %land.lhs.true.109, %land.lhs.true.99, %if.else.92
  %86 = load i8*, i8** %data.addr, align 8
  %arrayidx139 = getelementptr i8, i8* %86, i64 0
  %87 = load i8, i8* %arrayidx139, align 1
  %idxprom140 = zext i8 %87 to i64
  %88 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx141 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %88, i64 %idxprom140
  %map142 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx141, i32 0, i32 0
  %89 = load i32*, i32** %map142, align 8
  %cmp143 = icmp ne i32* %89, null
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.183

land.lhs.true.145:                                ; preds = %if.else.138
  %90 = load i8*, i8** %data.addr, align 8
  %arrayidx146 = getelementptr i8, i8* %90, i64 1
  %91 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %91 to i32
  %92 = load i8*, i8** %data.addr, align 8
  %arrayidx148 = getelementptr i8, i8* %92, i64 0
  %93 = load i8, i8* %arrayidx148, align 1
  %idxprom149 = zext i8 %93 to i64
  %94 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx150 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %94, i64 %idxprom149
  %bottom151 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx150, i32 0, i32 1
  %95 = load i8, i8* %bottom151, align 1
  %conv152 = zext i8 %95 to i32
  %cmp153 = icmp sge i32 %conv147, %conv152
  br i1 %cmp153, label %land.lhs.true.155, label %if.else.183

land.lhs.true.155:                                ; preds = %land.lhs.true.145
  %96 = load i8*, i8** %data.addr, align 8
  %arrayidx156 = getelementptr i8, i8* %96, i64 1
  %97 = load i8, i8* %arrayidx156, align 1
  %conv157 = zext i8 %97 to i32
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx158 = getelementptr i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx158, align 1
  %idxprom159 = zext i8 %99 to i64
  %100 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx160 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %100, i64 %idxprom159
  %top161 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx160, i32 0, i32 2
  %101 = load i8, i8* %top161, align 1
  %conv162 = zext i8 %101 to i32
  %cmp163 = icmp sle i32 %conv157, %conv162
  br i1 %cmp163, label %land.lhs.true.165, label %if.else.183

land.lhs.true.165:                                ; preds = %land.lhs.true.155
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx166 = getelementptr i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx166, align 1
  %conv167 = zext i8 %103 to i32
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx168 = getelementptr i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx168, align 1
  %idxprom169 = zext i8 %105 to i64
  %106 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx170 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %106, i64 %idxprom169
  %bottom171 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx170, i32 0, i32 1
  %107 = load i8, i8* %bottom171, align 1
  %conv172 = zext i8 %107 to i32
  %sub173 = sub i32 %conv167, %conv172
  %idxprom174 = sext i32 %sub173 to i64
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx175 = getelementptr i8, i8* %108, i64 0
  %109 = load i8, i8* %arrayidx175, align 1
  %idxprom176 = zext i8 %109 to i64
  %110 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx177 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %110, i64 %idxprom176
  %map178 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx177, i32 0, i32 0
  %111 = load i32*, i32** %map178, align 8
  %arrayidx179 = getelementptr i32, i32* %111, i64 %idxprom174
  %112 = load i32, i32* %arrayidx179, align 4
  store i32 %112, i32* %u, align 4
  %cmp180 = icmp ne i32 %112, 65534
  br i1 %cmp180, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %land.lhs.true.165
  br label %if.end

if.else.183:                                      ; preds = %land.lhs.true.165, %land.lhs.true.155, %land.lhs.true.145, %if.else.138
  store i32 65535, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.182
  br label %if.end.184

if.end.184:                                       ; preds = %if.end, %if.then.137
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.91
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.45
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186
  %113 = load i32, i32* %u, align 4
  store i32 %113, i32* %retval
  br label %return

return:                                           ; preds = %if.end.187, %if.else.183, %if.then
  %114 = load i32, i32* %retval
  ret i32 %114
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2004_1_encoder_paironly(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  %ilength = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i64*, i64** %length.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %ilength, align 8
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %2, i64* %3, i8* null)
  store i16 %call, i16* %coded, align 2
  %4 = load i64, i64* %ilength, align 8
  switch i64 %4, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i16, i16* %coded, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 65534
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i16 -2, i16* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  store i16 -1, i16* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %6 = load i64*, i64** %length.addr, align 8
  %7 = load i64, i64* %6, align 8
  %cmp3 = icmp ne i64 %7, 2
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %sw.bb.2
  store i16 -1, i16* %retval
  br label %return

if.else.6:                                        ; preds = %sw.bb.2
  %8 = load i16, i16* %coded, align 2
  store i16 %8, i16* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.6, %if.then.5, %if.else, %if.then
  %9 = load i16, i16* %retval
  ret i16 %9
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2004_1_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %0, i64* %1, i8* null)
  store i16 %call, i16* %coded, align 2
  %2 = load i16, i16* %coded, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %coded, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 65534
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %coded, align 2
  store i16 %4, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i16, i16* %coded, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i16 -1, i16* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %6 = load i16, i16* %coded, align 2
  store i16 %6, i16* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then
  %7 = load i16, i16* %retval
  ret i16 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0213_2004_2_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %idxprom = zext i8 %1 to i64
  %2 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx1 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %2, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx1, i32 0, i32 0
  %3 = load i16*, i16** %map, align 8
  %cmp = icmp ne i16* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx3, align 1
  %idxprom4 = zext i8 %7 to i64
  %8 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx5 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %8, i64 %idxprom4
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx5, i32 0, i32 1
  %9 = load i8, i8* %bottom, align 1
  %conv6 = zext i8 %9 to i32
  %cmp7 = icmp sge i32 %conv, %conv6
  br i1 %cmp7, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx10 = getelementptr i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %11 to i32
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx12 = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %13 to i64
  %14 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx14 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %14, i64 %idxprom13
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx14, i32 0, i32 2
  %15 = load i8, i8* %top, align 1
  %conv15 = zext i8 %15 to i32
  %cmp16 = icmp sle i32 %conv11, %conv15
  br i1 %cmp16, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %land.lhs.true.9
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx19 = getelementptr i8, i8* %16, i64 1
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx21, align 1
  %idxprom22 = zext i8 %19 to i64
  %20 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx23 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %20, i64 %idxprom22
  %bottom24 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx23, i32 0, i32 1
  %21 = load i8, i8* %bottom24, align 1
  %conv25 = zext i8 %21 to i32
  %sub = sub i32 %conv20, %conv25
  %idxprom26 = sext i32 %sub to i64
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx27 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx27, align 1
  %idxprom28 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx29 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom28
  %map30 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx29, i32 0, i32 0
  %25 = load i16*, i16** %map30, align 8
  %arrayidx31 = getelementptr i16, i16* %25, i64 %idxprom26
  %26 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %26 to i32
  store i32 %conv32, i32* %u, align 4
  %cmp33 = icmp ne i32 %conv32, 65534
  br i1 %cmp33, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.18
  br label %if.end.81

if.else:                                          ; preds = %land.lhs.true.18, %land.lhs.true.9, %land.lhs.true, %entry
  %27 = load i8*, i8** %data.addr, align 8
  %arrayidx35 = getelementptr i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx35, align 1
  %idxprom36 = zext i8 %28 to i64
  %29 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx37 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %29, i64 %idxprom36
  %map38 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx37, i32 0, i32 0
  %30 = load i16*, i16** %map38, align 8
  %cmp39 = icmp ne i16* %30, null
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.80

land.lhs.true.41:                                 ; preds = %if.else
  %31 = load i8*, i8** %data.addr, align 8
  %arrayidx42 = getelementptr i8, i8* %31, i64 1
  %32 = load i8, i8* %arrayidx42, align 1
  %conv43 = zext i8 %32 to i32
  %33 = load i8*, i8** %data.addr, align 8
  %arrayidx44 = getelementptr i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx44, align 1
  %idxprom45 = zext i8 %34 to i64
  %35 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx46 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %35, i64 %idxprom45
  %bottom47 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx46, i32 0, i32 1
  %36 = load i8, i8* %bottom47, align 1
  %conv48 = zext i8 %36 to i32
  %cmp49 = icmp sge i32 %conv43, %conv48
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.80

land.lhs.true.51:                                 ; preds = %land.lhs.true.41
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx52 = getelementptr i8, i8* %37, i64 1
  %38 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %38 to i32
  %39 = load i8*, i8** %data.addr, align 8
  %arrayidx54 = getelementptr i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx54, align 1
  %idxprom55 = zext i8 %40 to i64
  %41 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx56 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %41, i64 %idxprom55
  %top57 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx56, i32 0, i32 2
  %42 = load i8, i8* %top57, align 1
  %conv58 = zext i8 %42 to i32
  %cmp59 = icmp sle i32 %conv53, %conv58
  br i1 %cmp59, label %land.lhs.true.61, label %if.else.80

land.lhs.true.61:                                 ; preds = %land.lhs.true.51
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx62 = getelementptr i8, i8* %43, i64 1
  %44 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %44 to i32
  %45 = load i8*, i8** %data.addr, align 8
  %arrayidx64 = getelementptr i8, i8* %45, i64 0
  %46 = load i8, i8* %arrayidx64, align 1
  %idxprom65 = zext i8 %46 to i64
  %47 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx66 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %47, i64 %idxprom65
  %bottom67 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx66, i32 0, i32 1
  %48 = load i8, i8* %bottom67, align 1
  %conv68 = zext i8 %48 to i32
  %sub69 = sub i32 %conv63, %conv68
  %idxprom70 = sext i32 %sub69 to i64
  %49 = load i8*, i8** %data.addr, align 8
  %arrayidx71 = getelementptr i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx71, align 1
  %idxprom72 = zext i8 %50 to i64
  %51 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx73 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %51, i64 %idxprom72
  %map74 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx73, i32 0, i32 0
  %52 = load i16*, i16** %map74, align 8
  %arrayidx75 = getelementptr i16, i16* %52, i64 %idxprom70
  %53 = load i16, i16* %arrayidx75, align 2
  %conv76 = zext i16 %53 to i32
  store i32 %conv76, i32* %u, align 4
  %cmp77 = icmp ne i32 %conv76, 65534
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %land.lhs.true.61
  %54 = load i32, i32* %u, align 4
  %or = or i32 %54, 131072
  store i32 %or, i32* %u, align 4
  br label %if.end

if.else.80:                                       ; preds = %land.lhs.true.61, %land.lhs.true.51, %land.lhs.true.41, %if.else
  store i32 65535, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.79
  br label %if.end.81

if.end.81:                                        ; preds = %if.end, %if.then
  %55 = load i32, i32* %u, align 4
  store i32 %55, i32* %retval
  br label %return

return:                                           ; preds = %if.end.81, %if.else.80
  %56 = load i32, i32* %retval
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2004_2_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %0, i64* %1, i8* null)
  store i16 %call, i16* %coded, align 2
  %2 = load i16, i16* %coded, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %coded, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 65534
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %coded, align 2
  store i16 %4, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i16, i16* %coded, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.else
  %6 = load i16, i16* %coded, align 2
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 32767
  %conv9 = trunc i32 %and8 to i16
  store i16 %conv9, i16* %retval
  br label %return

if.else.10:                                       ; preds = %if.else
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.6, %if.then
  %7 = load i16, i16* %retval
  ret i16 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_encoder(i32* %data, i64* %length, i8* %config) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %config.addr = alloca i8*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  store i8* %config, i8** %config.addr, align 8
  %0 = load i64*, i64** %length.addr, align 8
  %1 = load i64, i64* %0, align 8
  switch i64 %1, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.189
    i64 -1, label %sw.bb.208
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp = icmp uge i32 %3, 65536
  br i1 %cmp, label %if.then, label %if.end.49

if.then:                                          ; preds = %sw.bb
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %4, align 4
  %shr = lshr i32 %5, 16
  %cmp1 = icmp eq i32 %shr, 2
  br i1 %cmp1, label %if.then.2, label %if.end.48

if.then.2:                                        ; preds = %if.then
  %6 = load i8*, i8** %config.addr, align 8
  %cmp3 = icmp eq i8* %6, inttoptr (i64 2000 to i8*)
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.2
  %7 = load i32*, i32** %data.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp4 = icmp eq i32 %8, 134047
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  store i16 -1, i16* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.then.2
  %9 = load i32*, i32** %data.addr, align 8
  %10 = load i32, i32* %9, align 4
  %and = and i32 %10, 65535
  %shr6 = lshr i32 %and, 8
  %idxprom = zext i32 %shr6 to i64
  %11 = load %struct.unim_index*, %struct.unim_index** @jisx0213_emp_encmap, align 8
  %arrayidx = getelementptr %struct.unim_index, %struct.unim_index* %11, i64 %idxprom
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx, i32 0, i32 0
  %12 = load i16*, i16** %map, align 8
  %cmp7 = icmp ne i16* %12, null
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.else
  %13 = load i32*, i32** %data.addr, align 8
  %14 = load i32, i32* %13, align 4
  %and9 = and i32 %14, 65535
  %and10 = and i32 %and9, 255
  %15 = load i32*, i32** %data.addr, align 8
  %16 = load i32, i32* %15, align 4
  %and11 = and i32 %16, 65535
  %shr12 = lshr i32 %and11, 8
  %idxprom13 = zext i32 %shr12 to i64
  %17 = load %struct.unim_index*, %struct.unim_index** @jisx0213_emp_encmap, align 8
  %arrayidx14 = getelementptr %struct.unim_index, %struct.unim_index* %17, i64 %idxprom13
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx14, i32 0, i32 1
  %18 = load i8, i8* %bottom, align 1
  %conv = zext i8 %18 to i32
  %cmp15 = icmp uge i32 %and10, %conv
  br i1 %cmp15, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.8
  %19 = load i32*, i32** %data.addr, align 8
  %20 = load i32, i32* %19, align 4
  %and18 = and i32 %20, 65535
  %and19 = and i32 %and18, 255
  %21 = load i32*, i32** %data.addr, align 8
  %22 = load i32, i32* %21, align 4
  %and20 = and i32 %22, 65535
  %shr21 = lshr i32 %and20, 8
  %idxprom22 = zext i32 %shr21 to i64
  %23 = load %struct.unim_index*, %struct.unim_index** @jisx0213_emp_encmap, align 8
  %arrayidx23 = getelementptr %struct.unim_index, %struct.unim_index* %23, i64 %idxprom22
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx23, i32 0, i32 2
  %24 = load i8, i8* %top, align 1
  %conv24 = zext i8 %24 to i32
  %cmp25 = icmp ule i32 %and19, %conv24
  br i1 %cmp25, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.17
  %25 = load i32*, i32** %data.addr, align 8
  %26 = load i32, i32* %25, align 4
  %and28 = and i32 %26, 65535
  %and29 = and i32 %and28, 255
  %27 = load i32*, i32** %data.addr, align 8
  %28 = load i32, i32* %27, align 4
  %and30 = and i32 %28, 65535
  %shr31 = lshr i32 %and30, 8
  %idxprom32 = zext i32 %shr31 to i64
  %29 = load %struct.unim_index*, %struct.unim_index** @jisx0213_emp_encmap, align 8
  %arrayidx33 = getelementptr %struct.unim_index, %struct.unim_index* %29, i64 %idxprom32
  %bottom34 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx33, i32 0, i32 1
  %30 = load i8, i8* %bottom34, align 1
  %conv35 = zext i8 %30 to i32
  %sub = sub i32 %and29, %conv35
  %idxprom36 = zext i32 %sub to i64
  %31 = load i32*, i32** %data.addr, align 8
  %32 = load i32, i32* %31, align 4
  %and37 = and i32 %32, 65535
  %shr38 = lshr i32 %and37, 8
  %idxprom39 = zext i32 %shr38 to i64
  %33 = load %struct.unim_index*, %struct.unim_index** @jisx0213_emp_encmap, align 8
  %arrayidx40 = getelementptr %struct.unim_index, %struct.unim_index* %33, i64 %idxprom39
  %map41 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx40, i32 0, i32 0
  %34 = load i16*, i16** %map41, align 8
  %arrayidx42 = getelementptr i16, i16* %34, i64 %idxprom36
  %35 = load i16, i16* %arrayidx42, align 2
  store i16 %35, i16* %coded, align 2
  %conv43 = zext i16 %35 to i32
  %cmp44 = icmp ne i32 %conv43, 65535
  br i1 %cmp44, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %land.lhs.true.27
  %36 = load i16, i16* %coded, align 2
  store i16 %36, i16* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.27, %land.lhs.true.17, %land.lhs.true.8, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then
  store i16 -1, i16* %retval
  br label %return

if.end.49:                                        ; preds = %sw.bb
  %37 = load i8*, i8** %config.addr, align 8
  %cmp50 = icmp eq i8* %37, inttoptr (i64 2000 to i8*)
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.82

land.lhs.true.52:                                 ; preds = %if.end.49
  %38 = load i32*, i32** %data.addr, align 8
  %39 = load i32, i32* %38, align 4
  %cmp53 = icmp eq i32 %39, 39708
  br i1 %cmp53, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.52
  %40 = load i32*, i32** %data.addr, align 8
  %41 = load i32, i32* %40, align 4
  %cmp55 = icmp eq i32 %41, 20465
  br i1 %cmp55, label %if.then.81, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %42 = load i32*, i32** %data.addr, align 8
  %43 = load i32, i32* %42, align 4
  %cmp58 = icmp eq i32 %43, 21085
  br i1 %cmp58, label %if.then.81, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.57
  %44 = load i32*, i32** %data.addr, align 8
  %45 = load i32, i32* %44, align 4
  %cmp61 = icmp eq i32 %45, 21534
  br i1 %cmp61, label %if.then.81, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false.60
  %46 = load i32*, i32** %data.addr, align 8
  %47 = load i32, i32* %46, align 4
  %cmp64 = icmp eq i32 %47, 22099
  br i1 %cmp64, label %if.then.81, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.63
  %48 = load i32*, i32** %data.addr, align 8
  %49 = load i32, i32* %48, align 4
  %cmp67 = icmp eq i32 %49, 23032
  br i1 %cmp67, label %if.then.81, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %50 = load i32*, i32** %data.addr, align 8
  %51 = load i32, i32* %50, align 4
  %cmp70 = icmp eq i32 %51, 23643
  br i1 %cmp70, label %if.then.81, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.69
  %52 = load i32*, i32** %data.addr, align 8
  %53 = load i32, i32* %52, align 4
  %cmp73 = icmp eq i32 %53, 24183
  br i1 %cmp73, label %if.then.81, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.72
  %54 = load i32*, i32** %data.addr, align 8
  %55 = load i32, i32* %54, align 4
  %cmp76 = icmp eq i32 %55, 30246
  br i1 %cmp76, label %if.then.81, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.75
  %56 = load i32*, i32** %data.addr, align 8
  %57 = load i32, i32* %56, align 4
  %cmp79 = icmp eq i32 %57, 32363
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %lor.lhs.false.78, %lor.lhs.false.75, %lor.lhs.false.72, %lor.lhs.false.69, %lor.lhs.false.66, %lor.lhs.false.63, %lor.lhs.false.60, %lor.lhs.false.57, %lor.lhs.false, %land.lhs.true.52
  store i16 -1, i16* %retval
  br label %return

if.else.82:                                       ; preds = %lor.lhs.false.78, %if.end.49
  %58 = load i8*, i8** %config.addr, align 8
  %cmp83 = icmp eq i8* %58, inttoptr (i64 2000 to i8*)
  br i1 %cmp83, label %land.lhs.true.85, label %if.else.89

land.lhs.true.85:                                 ; preds = %if.else.82
  %59 = load i32*, i32** %data.addr, align 8
  %60 = load i32, i32* %59, align 4
  %cmp86 = icmp eq i32 %60, 39709
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %land.lhs.true.85
  store i16 -709, i16* %coded, align 2
  br label %if.end.187

if.else.89:                                       ; preds = %land.lhs.true.85, %if.else.82
  %61 = load i32*, i32** %data.addr, align 8
  %62 = load i32, i32* %61, align 4
  %shr90 = lshr i32 %62, 8
  %idxprom91 = zext i32 %shr90 to i64
  %63 = load %struct.unim_index*, %struct.unim_index** @jisx0213_bmp_encmap, align 8
  %arrayidx92 = getelementptr %struct.unim_index, %struct.unim_index* %63, i64 %idxprom91
  %map93 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx92, i32 0, i32 0
  %64 = load i16*, i16** %map93, align 8
  %cmp94 = icmp ne i16* %64, null
  br i1 %cmp94, label %land.lhs.true.96, label %if.else.137

land.lhs.true.96:                                 ; preds = %if.else.89
  %65 = load i32*, i32** %data.addr, align 8
  %66 = load i32, i32* %65, align 4
  %and97 = and i32 %66, 255
  %67 = load i32*, i32** %data.addr, align 8
  %68 = load i32, i32* %67, align 4
  %shr98 = lshr i32 %68, 8
  %idxprom99 = zext i32 %shr98 to i64
  %69 = load %struct.unim_index*, %struct.unim_index** @jisx0213_bmp_encmap, align 8
  %arrayidx100 = getelementptr %struct.unim_index, %struct.unim_index* %69, i64 %idxprom99
  %bottom101 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx100, i32 0, i32 1
  %70 = load i8, i8* %bottom101, align 1
  %conv102 = zext i8 %70 to i32
  %cmp103 = icmp uge i32 %and97, %conv102
  br i1 %cmp103, label %land.lhs.true.105, label %if.else.137

land.lhs.true.105:                                ; preds = %land.lhs.true.96
  %71 = load i32*, i32** %data.addr, align 8
  %72 = load i32, i32* %71, align 4
  %and106 = and i32 %72, 255
  %73 = load i32*, i32** %data.addr, align 8
  %74 = load i32, i32* %73, align 4
  %shr107 = lshr i32 %74, 8
  %idxprom108 = zext i32 %shr107 to i64
  %75 = load %struct.unim_index*, %struct.unim_index** @jisx0213_bmp_encmap, align 8
  %arrayidx109 = getelementptr %struct.unim_index, %struct.unim_index* %75, i64 %idxprom108
  %top110 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx109, i32 0, i32 2
  %76 = load i8, i8* %top110, align 1
  %conv111 = zext i8 %76 to i32
  %cmp112 = icmp ule i32 %and106, %conv111
  br i1 %cmp112, label %land.lhs.true.114, label %if.else.137

land.lhs.true.114:                                ; preds = %land.lhs.true.105
  %77 = load i32*, i32** %data.addr, align 8
  %78 = load i32, i32* %77, align 4
  %and115 = and i32 %78, 255
  %79 = load i32*, i32** %data.addr, align 8
  %80 = load i32, i32* %79, align 4
  %shr116 = lshr i32 %80, 8
  %idxprom117 = zext i32 %shr116 to i64
  %81 = load %struct.unim_index*, %struct.unim_index** @jisx0213_bmp_encmap, align 8
  %arrayidx118 = getelementptr %struct.unim_index, %struct.unim_index* %81, i64 %idxprom117
  %bottom119 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx118, i32 0, i32 1
  %82 = load i8, i8* %bottom119, align 1
  %conv120 = zext i8 %82 to i32
  %sub121 = sub i32 %and115, %conv120
  %idxprom122 = zext i32 %sub121 to i64
  %83 = load i32*, i32** %data.addr, align 8
  %84 = load i32, i32* %83, align 4
  %shr123 = lshr i32 %84, 8
  %idxprom124 = zext i32 %shr123 to i64
  %85 = load %struct.unim_index*, %struct.unim_index** @jisx0213_bmp_encmap, align 8
  %arrayidx125 = getelementptr %struct.unim_index, %struct.unim_index* %85, i64 %idxprom124
  %map126 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx125, i32 0, i32 0
  %86 = load i16*, i16** %map126, align 8
  %arrayidx127 = getelementptr i16, i16* %86, i64 %idxprom122
  %87 = load i16, i16* %arrayidx127, align 2
  store i16 %87, i16* %coded, align 2
  %conv128 = zext i16 %87 to i32
  %cmp129 = icmp ne i32 %conv128, 65535
  br i1 %cmp129, label %if.then.131, label %if.else.137

if.then.131:                                      ; preds = %land.lhs.true.114
  %88 = load i16, i16* %coded, align 2
  %conv132 = zext i16 %88 to i32
  %cmp133 = icmp eq i32 %conv132, 65534
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.then.131
  store i16 -2, i16* %retval
  br label %return

if.end.136:                                       ; preds = %if.then.131
  br label %if.end.186

if.else.137:                                      ; preds = %land.lhs.true.114, %land.lhs.true.105, %land.lhs.true.96, %if.else.89
  %89 = load i32*, i32** %data.addr, align 8
  %90 = load i32, i32* %89, align 4
  %shr138 = lshr i32 %90, 8
  %idxprom139 = zext i32 %shr138 to i64
  %91 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx140 = getelementptr %struct.unim_index, %struct.unim_index* %91, i64 %idxprom139
  %map141 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx140, i32 0, i32 0
  %92 = load i16*, i16** %map141, align 8
  %cmp142 = icmp ne i16* %92, null
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.184

land.lhs.true.144:                                ; preds = %if.else.137
  %93 = load i32*, i32** %data.addr, align 8
  %94 = load i32, i32* %93, align 4
  %and145 = and i32 %94, 255
  %95 = load i32*, i32** %data.addr, align 8
  %96 = load i32, i32* %95, align 4
  %shr146 = lshr i32 %96, 8
  %idxprom147 = zext i32 %shr146 to i64
  %97 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx148 = getelementptr %struct.unim_index, %struct.unim_index* %97, i64 %idxprom147
  %bottom149 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx148, i32 0, i32 1
  %98 = load i8, i8* %bottom149, align 1
  %conv150 = zext i8 %98 to i32
  %cmp151 = icmp uge i32 %and145, %conv150
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.184

land.lhs.true.153:                                ; preds = %land.lhs.true.144
  %99 = load i32*, i32** %data.addr, align 8
  %100 = load i32, i32* %99, align 4
  %and154 = and i32 %100, 255
  %101 = load i32*, i32** %data.addr, align 8
  %102 = load i32, i32* %101, align 4
  %shr155 = lshr i32 %102, 8
  %idxprom156 = zext i32 %shr155 to i64
  %103 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx157 = getelementptr %struct.unim_index, %struct.unim_index* %103, i64 %idxprom156
  %top158 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx157, i32 0, i32 2
  %104 = load i8, i8* %top158, align 1
  %conv159 = zext i8 %104 to i32
  %cmp160 = icmp ule i32 %and154, %conv159
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.184

land.lhs.true.162:                                ; preds = %land.lhs.true.153
  %105 = load i32*, i32** %data.addr, align 8
  %106 = load i32, i32* %105, align 4
  %and163 = and i32 %106, 255
  %107 = load i32*, i32** %data.addr, align 8
  %108 = load i32, i32* %107, align 4
  %shr164 = lshr i32 %108, 8
  %idxprom165 = zext i32 %shr164 to i64
  %109 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx166 = getelementptr %struct.unim_index, %struct.unim_index* %109, i64 %idxprom165
  %bottom167 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx166, i32 0, i32 1
  %110 = load i8, i8* %bottom167, align 1
  %conv168 = zext i8 %110 to i32
  %sub169 = sub i32 %and163, %conv168
  %idxprom170 = zext i32 %sub169 to i64
  %111 = load i32*, i32** %data.addr, align 8
  %112 = load i32, i32* %111, align 4
  %shr171 = lshr i32 %112, 8
  %idxprom172 = zext i32 %shr171 to i64
  %113 = load %struct.unim_index*, %struct.unim_index** @jisxcommon_encmap, align 8
  %arrayidx173 = getelementptr %struct.unim_index, %struct.unim_index* %113, i64 %idxprom172
  %map174 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx173, i32 0, i32 0
  %114 = load i16*, i16** %map174, align 8
  %arrayidx175 = getelementptr i16, i16* %114, i64 %idxprom170
  %115 = load i16, i16* %arrayidx175, align 2
  store i16 %115, i16* %coded, align 2
  %conv176 = zext i16 %115 to i32
  %cmp177 = icmp ne i32 %conv176, 65535
  br i1 %cmp177, label %if.then.179, label %if.else.184

if.then.179:                                      ; preds = %land.lhs.true.162
  %116 = load i16, i16* %coded, align 2
  %conv180 = zext i16 %116 to i32
  %and181 = and i32 %conv180, 32768
  %tobool = icmp ne i32 %and181, 0
  br i1 %tobool, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %if.then.179
  store i16 -1, i16* %retval
  br label %return

if.end.183:                                       ; preds = %if.then.179
  br label %if.end.185

if.else.184:                                      ; preds = %land.lhs.true.162, %land.lhs.true.153, %land.lhs.true.144, %if.else.137
  store i16 -1, i16* %retval
  br label %return

if.end.185:                                       ; preds = %if.end.183
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.136
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.then.88
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187
  %117 = load i16, i16* %coded, align 2
  store i16 %117, i16* %retval
  br label %return

sw.bb.189:                                        ; preds = %entry
  %118 = load i32*, i32** %data.addr, align 8
  %arrayidx190 = getelementptr i32, i32* %118, i64 0
  %119 = load i32, i32* %arrayidx190, align 4
  %conv191 = trunc i32 %119 to i16
  %120 = load i32*, i32** %data.addr, align 8
  %arrayidx192 = getelementptr i32, i32* %120, i64 1
  %121 = load i32, i32* %arrayidx192, align 4
  %conv193 = trunc i32 %121 to i16
  %122 = load %struct.pair_encodemap*, %struct.pair_encodemap** @jisx0213_pair_encmap, align 8
  %call = call zeroext i16 @find_pairencmap(i16 zeroext %conv191, i16 zeroext %conv193, %struct.pair_encodemap* %122, i32 46)
  store i16 %call, i16* %coded, align 2
  %123 = load i16, i16* %coded, align 2
  %conv194 = zext i16 %123 to i32
  %cmp195 = icmp eq i32 %conv194, 65533
  br i1 %cmp195, label %if.then.197, label %if.else.206

if.then.197:                                      ; preds = %sw.bb.189
  %124 = load i64*, i64** %length.addr, align 8
  store i64 1, i64* %124, align 8
  %125 = load i32*, i32** %data.addr, align 8
  %arrayidx198 = getelementptr i32, i32* %125, i64 0
  %126 = load i32, i32* %arrayidx198, align 4
  %conv199 = trunc i32 %126 to i16
  %127 = load %struct.pair_encodemap*, %struct.pair_encodemap** @jisx0213_pair_encmap, align 8
  %call200 = call zeroext i16 @find_pairencmap(i16 zeroext %conv199, i16 zeroext 0, %struct.pair_encodemap* %127, i32 46)
  store i16 %call200, i16* %coded, align 2
  %128 = load i16, i16* %coded, align 2
  %conv201 = zext i16 %128 to i32
  %cmp202 = icmp eq i32 %conv201, 65533
  br i1 %cmp202, label %if.then.204, label %if.end.205

if.then.204:                                      ; preds = %if.then.197
  store i16 -1, i16* %retval
  br label %return

if.end.205:                                       ; preds = %if.then.197
  br label %if.end.207

if.else.206:                                      ; preds = %sw.bb.189
  %129 = load i16, i16* %coded, align 2
  store i16 %129, i16* %retval
  br label %return

if.end.207:                                       ; preds = %if.end.205
  br label %sw.bb.208

sw.bb.208:                                        ; preds = %entry, %if.end.207
  %130 = load i64*, i64** %length.addr, align 8
  store i64 1, i64* %130, align 8
  %131 = load i32*, i32** %data.addr, align 8
  %arrayidx209 = getelementptr i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx209, align 4
  %conv210 = trunc i32 %132 to i16
  %133 = load %struct.pair_encodemap*, %struct.pair_encodemap** @jisx0213_pair_encmap, align 8
  %call211 = call zeroext i16 @find_pairencmap(i16 zeroext %conv210, i16 zeroext 0, %struct.pair_encodemap* %133, i32 46)
  store i16 %call211, i16* %coded, align 2
  %134 = load i16, i16* %coded, align 2
  %conv212 = zext i16 %134 to i32
  %cmp213 = icmp eq i32 %conv212, 65533
  br i1 %cmp213, label %if.then.215, label %if.else.216

if.then.215:                                      ; preds = %sw.bb.208
  store i16 -1, i16* %retval
  br label %return

if.else.216:                                      ; preds = %sw.bb.208
  %135 = load i16, i16* %coded, align 2
  store i16 %135, i16* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.216, %if.then.215, %if.else.206, %if.then.204, %if.end.188, %if.else.184, %if.then.182, %if.then.135, %if.then.81, %if.end.48, %if.then.46, %if.then.5
  %136 = load i16, i16* %retval
  ret i16 %136
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @find_pairencmap(i16 zeroext %body, i16 zeroext %modifier, %struct.pair_encodemap* %haystack, i32 %haystacksize) #0 {
entry:
  %retval = alloca i16, align 2
  %body.addr = alloca i16, align 2
  %modifier.addr = alloca i16, align 2
  %haystack.addr = alloca %struct.pair_encodemap*, align 8
  %haystacksize.addr = alloca i32, align 4
  %pos = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %value = alloca i32, align 4
  store i16 %body, i16* %body.addr, align 2
  store i16 %modifier, i16* %modifier.addr, align 2
  store %struct.pair_encodemap* %haystack, %struct.pair_encodemap** %haystack.addr, align 8
  store i32 %haystacksize, i32* %haystacksize.addr, align 4
  %0 = load i16, i16* %body.addr, align 2
  %conv = zext i16 %0 to i32
  %shl = shl i32 %conv, 16
  %1 = load i16, i16* %modifier.addr, align 2
  %conv1 = zext i16 %1 to i32
  %or = or i32 %shl, %conv1
  store i32 %or, i32* %value, align 4
  store i32 0, i32* %min, align 4
  %2 = load i32, i32* %haystacksize.addr, align 4
  store i32 %2, i32* %max, align 4
  %3 = load i32, i32* %haystacksize.addr, align 4
  %shr = ashr i32 %3, 1
  store i32 %shr, i32* %pos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %min, align 4
  %5 = load i32, i32* %max, align 4
  %cmp = icmp ne i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %value, align 4
  %7 = load i32, i32* %pos, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.pair_encodemap*, %struct.pair_encodemap** %haystack.addr, align 8
  %arrayidx = getelementptr %struct.pair_encodemap, %struct.pair_encodemap* %8, i64 %idxprom
  %uniseq = getelementptr inbounds %struct.pair_encodemap, %struct.pair_encodemap* %arrayidx, i32 0, i32 0
  %9 = load i32, i32* %uniseq, align 4
  %cmp3 = icmp ult i32 %6, %9
  br i1 %cmp3, label %if.then, label %if.else.8

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %max, align 4
  %11 = load i32, i32* %pos, align 4
  %cmp5 = icmp eq i32 %10, %11
  br i1 %cmp5, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  br label %for.end

if.else:                                          ; preds = %if.then
  %12 = load i32, i32* %pos, align 4
  store i32 %12, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.else.8:                                        ; preds = %for.body
  %13 = load i32, i32* %value, align 4
  %14 = load i32, i32* %pos, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load %struct.pair_encodemap*, %struct.pair_encodemap** %haystack.addr, align 8
  %arrayidx10 = getelementptr %struct.pair_encodemap, %struct.pair_encodemap* %15, i64 %idxprom9
  %uniseq11 = getelementptr inbounds %struct.pair_encodemap, %struct.pair_encodemap* %arrayidx10, i32 0, i32 0
  %16 = load i32, i32* %uniseq11, align 4
  %cmp12 = icmp ugt i32 %13, %16
  br i1 %cmp12, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %if.else.8
  %17 = load i32, i32* %min, align 4
  %18 = load i32, i32* %pos, align 4
  %cmp15 = icmp eq i32 %17, %18
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.14
  br label %for.end

if.else.18:                                       ; preds = %if.then.14
  %19 = load i32, i32* %pos, align 4
  store i32 %19, i32* %min, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.8
  br label %for.end

if.end.21:                                        ; preds = %if.end.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %20 = load i32, i32* %min, align 4
  %21 = load i32, i32* %max, align 4
  %add = add i32 %20, %21
  %shr23 = ashr i32 %add, 1
  store i32 %shr23, i32* %pos, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else.20, %if.then.17, %if.then.7, %for.cond
  %22 = load i32, i32* %value, align 4
  %23 = load i32, i32* %pos, align 4
  %idxprom24 = sext i32 %23 to i64
  %24 = load %struct.pair_encodemap*, %struct.pair_encodemap** %haystack.addr, align 8
  %arrayidx25 = getelementptr %struct.pair_encodemap, %struct.pair_encodemap* %24, i64 %idxprom24
  %uniseq26 = getelementptr inbounds %struct.pair_encodemap, %struct.pair_encodemap* %arrayidx25, i32 0, i32 0
  %25 = load i32, i32* %uniseq26, align 4
  %cmp27 = icmp eq i32 %22, %25
  br i1 %cmp27, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %for.end
  %26 = load i32, i32* %pos, align 4
  %idxprom30 = sext i32 %26 to i64
  %27 = load %struct.pair_encodemap*, %struct.pair_encodemap** %haystack.addr, align 8
  %arrayidx31 = getelementptr %struct.pair_encodemap, %struct.pair_encodemap* %27, i64 %idxprom30
  %code = getelementptr inbounds %struct.pair_encodemap, %struct.pair_encodemap* %arrayidx31, i32 0, i32 1
  %28 = load i16, i16* %code, align 2
  store i16 %28, i16* %retval
  br label %return

if.else.32:                                       ; preds = %for.end
  store i16 -3, i16* %retval
  br label %return

return:                                           ; preds = %if.else.32, %if.then.29
  %29 = load i16, i16* %retval
  ret i16 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0213_2000_1_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 46
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 33
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %cmp8 = icmp eq i32 %conv7, 47
  br i1 %cmp8, label %land.lhs.true.10, label %lor.lhs.false.15

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %6 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %cmp13 = icmp eq i32 %conv12, 126
  br i1 %cmp13, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.10, %lor.lhs.false
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx16 = getelementptr i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 79
  br i1 %cmp18, label %land.lhs.true.20, label %lor.lhs.false.25

land.lhs.true.20:                                 ; preds = %lor.lhs.false.15
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx21 = getelementptr i8, i8* %10, i64 1
  %11 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 84
  br i1 %cmp23, label %if.then, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.20, %lor.lhs.false.15
  %12 = load i8*, i8** %data.addr, align 8
  %arrayidx26 = getelementptr i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %13 to i32
  %cmp28 = icmp eq i32 %conv27, 79
  br i1 %cmp28, label %land.lhs.true.30, label %lor.lhs.false.35

land.lhs.true.30:                                 ; preds = %lor.lhs.false.25
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %15 to i32
  %cmp33 = icmp eq i32 %conv32, 126
  br i1 %cmp33, label %if.then, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.30, %lor.lhs.false.25
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx36 = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %17 to i32
  %cmp38 = icmp eq i32 %conv37, 116
  br i1 %cmp38, label %land.lhs.true.40, label %lor.lhs.false.45

land.lhs.true.40:                                 ; preds = %lor.lhs.false.35
  %18 = load i8*, i8** %data.addr, align 8
  %arrayidx41 = getelementptr i8, i8* %18, i64 1
  %19 = load i8, i8* %arrayidx41, align 1
  %conv42 = zext i8 %19 to i32
  %cmp43 = icmp eq i32 %conv42, 39
  br i1 %cmp43, label %if.then, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.40, %lor.lhs.false.35
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx46 = getelementptr i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %21 to i32
  %cmp48 = icmp eq i32 %conv47, 126
  br i1 %cmp48, label %land.lhs.true.50, label %lor.lhs.false.55

land.lhs.true.50:                                 ; preds = %lor.lhs.false.45
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx51 = getelementptr i8, i8* %22, i64 1
  %23 = load i8, i8* %arrayidx51, align 1
  %conv52 = zext i8 %23 to i32
  %cmp53 = icmp eq i32 %conv52, 122
  br i1 %cmp53, label %if.then, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.50, %lor.lhs.false.45
  %24 = load i8*, i8** %data.addr, align 8
  %arrayidx56 = getelementptr i8, i8* %24, i64 0
  %25 = load i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %25 to i32
  %cmp58 = icmp eq i32 %conv57, 126
  br i1 %cmp58, label %land.lhs.true.60, label %lor.lhs.false.65

land.lhs.true.60:                                 ; preds = %lor.lhs.false.55
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx61 = getelementptr i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %27 to i32
  %cmp63 = icmp eq i32 %conv62, 123
  br i1 %cmp63, label %if.then, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.60, %lor.lhs.false.55
  %28 = load i8*, i8** %data.addr, align 8
  %arrayidx66 = getelementptr i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx66, align 1
  %conv67 = zext i8 %29 to i32
  %cmp68 = icmp eq i32 %conv67, 126
  br i1 %cmp68, label %land.lhs.true.70, label %lor.lhs.false.75

land.lhs.true.70:                                 ; preds = %lor.lhs.false.65
  %30 = load i8*, i8** %data.addr, align 8
  %arrayidx71 = getelementptr i8, i8* %30, i64 1
  %31 = load i8, i8* %arrayidx71, align 1
  %conv72 = zext i8 %31 to i32
  %cmp73 = icmp eq i32 %conv72, 124
  br i1 %cmp73, label %if.then, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %land.lhs.true.70, %lor.lhs.false.65
  %32 = load i8*, i8** %data.addr, align 8
  %arrayidx76 = getelementptr i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx76, align 1
  %conv77 = zext i8 %33 to i32
  %cmp78 = icmp eq i32 %conv77, 126
  br i1 %cmp78, label %land.lhs.true.80, label %lor.lhs.false.85

land.lhs.true.80:                                 ; preds = %lor.lhs.false.75
  %34 = load i8*, i8** %data.addr, align 8
  %arrayidx81 = getelementptr i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx81, align 1
  %conv82 = zext i8 %35 to i32
  %cmp83 = icmp eq i32 %conv82, 125
  br i1 %cmp83, label %if.then, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.80, %lor.lhs.false.75
  %36 = load i8*, i8** %data.addr, align 8
  %arrayidx86 = getelementptr i8, i8* %36, i64 0
  %37 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %37 to i32
  %cmp88 = icmp eq i32 %conv87, 126
  br i1 %cmp88, label %land.lhs.true.90, label %if.else

land.lhs.true.90:                                 ; preds = %lor.lhs.false.85
  %38 = load i8*, i8** %data.addr, align 8
  %arrayidx91 = getelementptr i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %39 to i32
  %cmp93 = icmp eq i32 %conv92, 126
  br i1 %cmp93, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.90, %land.lhs.true.80, %land.lhs.true.70, %land.lhs.true.60, %land.lhs.true.50, %land.lhs.true.40, %land.lhs.true.30, %land.lhs.true.20, %land.lhs.true.10, %land.lhs.true
  store i32 65535, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.90, %lor.lhs.false.85
  %40 = load i8*, i8** %data.addr, align 8
  %arrayidx95 = getelementptr i8, i8* %40, i64 0
  %41 = load i8, i8* %arrayidx95, align 1
  %conv96 = zext i8 %41 to i32
  %cmp97 = icmp eq i32 %conv96, 33
  br i1 %cmp97, label %land.lhs.true.99, label %if.else.105

land.lhs.true.99:                                 ; preds = %if.else
  %42 = load i8*, i8** %data.addr, align 8
  %arrayidx100 = getelementptr i8, i8* %42, i64 1
  %43 = load i8, i8* %arrayidx100, align 1
  %conv101 = zext i8 %43 to i32
  %cmp102 = icmp eq i32 %conv101, 64
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %land.lhs.true.99
  store i32 65340, i32* %retval
  br label %return

if.else.105:                                      ; preds = %land.lhs.true.99, %if.else
  %44 = load i8*, i8** %data.addr, align 8
  %arrayidx106 = getelementptr i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx106, align 1
  %idxprom = zext i8 %45 to i64
  %46 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx107 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %46, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx107, i32 0, i32 0
  %47 = load i16*, i16** %map, align 8
  %cmp108 = icmp ne i16* %47, null
  br i1 %cmp108, label %land.lhs.true.110, label %if.else.146

land.lhs.true.110:                                ; preds = %if.else.105
  %48 = load i8*, i8** %data.addr, align 8
  %arrayidx111 = getelementptr i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx111, align 1
  %conv112 = zext i8 %49 to i32
  %50 = load i8*, i8** %data.addr, align 8
  %arrayidx113 = getelementptr i8, i8* %50, i64 0
  %51 = load i8, i8* %arrayidx113, align 1
  %idxprom114 = zext i8 %51 to i64
  %52 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx115 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %52, i64 %idxprom114
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx115, i32 0, i32 1
  %53 = load i8, i8* %bottom, align 1
  %conv116 = zext i8 %53 to i32
  %cmp117 = icmp sge i32 %conv112, %conv116
  br i1 %cmp117, label %land.lhs.true.119, label %if.else.146

land.lhs.true.119:                                ; preds = %land.lhs.true.110
  %54 = load i8*, i8** %data.addr, align 8
  %arrayidx120 = getelementptr i8, i8* %54, i64 1
  %55 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %55 to i32
  %56 = load i8*, i8** %data.addr, align 8
  %arrayidx122 = getelementptr i8, i8* %56, i64 0
  %57 = load i8, i8* %arrayidx122, align 1
  %idxprom123 = zext i8 %57 to i64
  %58 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx124 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %58, i64 %idxprom123
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx124, i32 0, i32 2
  %59 = load i8, i8* %top, align 1
  %conv125 = zext i8 %59 to i32
  %cmp126 = icmp sle i32 %conv121, %conv125
  br i1 %cmp126, label %land.lhs.true.128, label %if.else.146

land.lhs.true.128:                                ; preds = %land.lhs.true.119
  %60 = load i8*, i8** %data.addr, align 8
  %arrayidx129 = getelementptr i8, i8* %60, i64 1
  %61 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %61 to i32
  %62 = load i8*, i8** %data.addr, align 8
  %arrayidx131 = getelementptr i8, i8* %62, i64 0
  %63 = load i8, i8* %arrayidx131, align 1
  %idxprom132 = zext i8 %63 to i64
  %64 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx133 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %64, i64 %idxprom132
  %bottom134 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx133, i32 0, i32 1
  %65 = load i8, i8* %bottom134, align 1
  %conv135 = zext i8 %65 to i32
  %sub = sub i32 %conv130, %conv135
  %idxprom136 = sext i32 %sub to i64
  %66 = load i8*, i8** %data.addr, align 8
  %arrayidx137 = getelementptr i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx137, align 1
  %idxprom138 = zext i8 %67 to i64
  %68 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0208_decmap, align 8
  %arrayidx139 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %68, i64 %idxprom138
  %map140 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx139, i32 0, i32 0
  %69 = load i16*, i16** %map140, align 8
  %arrayidx141 = getelementptr i16, i16* %69, i64 %idxprom136
  %70 = load i16, i16* %arrayidx141, align 2
  %conv142 = zext i16 %70 to i32
  store i32 %conv142, i32* %u, align 4
  %cmp143 = icmp ne i32 %conv142, 65534
  br i1 %cmp143, label %if.then.145, label %if.else.146

if.then.145:                                      ; preds = %land.lhs.true.128
  br label %if.end.286

if.else.146:                                      ; preds = %land.lhs.true.128, %land.lhs.true.119, %land.lhs.true.110, %if.else.105
  %71 = load i8*, i8** %data.addr, align 8
  %arrayidx147 = getelementptr i8, i8* %71, i64 0
  %72 = load i8, i8* %arrayidx147, align 1
  %idxprom148 = zext i8 %72 to i64
  %73 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx149 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %73, i64 %idxprom148
  %map150 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx149, i32 0, i32 0
  %74 = load i16*, i16** %map150, align 8
  %cmp151 = icmp ne i16* %74, null
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.192

land.lhs.true.153:                                ; preds = %if.else.146
  %75 = load i8*, i8** %data.addr, align 8
  %arrayidx154 = getelementptr i8, i8* %75, i64 1
  %76 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %76 to i32
  %77 = load i8*, i8** %data.addr, align 8
  %arrayidx156 = getelementptr i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx156, align 1
  %idxprom157 = zext i8 %78 to i64
  %79 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx158 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %79, i64 %idxprom157
  %bottom159 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx158, i32 0, i32 1
  %80 = load i8, i8* %bottom159, align 1
  %conv160 = zext i8 %80 to i32
  %cmp161 = icmp sge i32 %conv155, %conv160
  br i1 %cmp161, label %land.lhs.true.163, label %if.else.192

land.lhs.true.163:                                ; preds = %land.lhs.true.153
  %81 = load i8*, i8** %data.addr, align 8
  %arrayidx164 = getelementptr i8, i8* %81, i64 1
  %82 = load i8, i8* %arrayidx164, align 1
  %conv165 = zext i8 %82 to i32
  %83 = load i8*, i8** %data.addr, align 8
  %arrayidx166 = getelementptr i8, i8* %83, i64 0
  %84 = load i8, i8* %arrayidx166, align 1
  %idxprom167 = zext i8 %84 to i64
  %85 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx168 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %85, i64 %idxprom167
  %top169 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx168, i32 0, i32 2
  %86 = load i8, i8* %top169, align 1
  %conv170 = zext i8 %86 to i32
  %cmp171 = icmp sle i32 %conv165, %conv170
  br i1 %cmp171, label %land.lhs.true.173, label %if.else.192

land.lhs.true.173:                                ; preds = %land.lhs.true.163
  %87 = load i8*, i8** %data.addr, align 8
  %arrayidx174 = getelementptr i8, i8* %87, i64 1
  %88 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %88 to i32
  %89 = load i8*, i8** %data.addr, align 8
  %arrayidx176 = getelementptr i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx176, align 1
  %idxprom177 = zext i8 %90 to i64
  %91 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx178 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %91, i64 %idxprom177
  %bottom179 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx178, i32 0, i32 1
  %92 = load i8, i8* %bottom179, align 1
  %conv180 = zext i8 %92 to i32
  %sub181 = sub i32 %conv175, %conv180
  %idxprom182 = sext i32 %sub181 to i64
  %93 = load i8*, i8** %data.addr, align 8
  %arrayidx183 = getelementptr i8, i8* %93, i64 0
  %94 = load i8, i8* %arrayidx183, align 1
  %idxprom184 = zext i8 %94 to i64
  %95 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_bmp_decmap, align 8
  %arrayidx185 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %95, i64 %idxprom184
  %map186 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx185, i32 0, i32 0
  %96 = load i16*, i16** %map186, align 8
  %arrayidx187 = getelementptr i16, i16* %96, i64 %idxprom182
  %97 = load i16, i16* %arrayidx187, align 2
  %conv188 = zext i16 %97 to i32
  store i32 %conv188, i32* %u, align 4
  %cmp189 = icmp ne i32 %conv188, 65534
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %land.lhs.true.173
  br label %if.end.285

if.else.192:                                      ; preds = %land.lhs.true.173, %land.lhs.true.163, %land.lhs.true.153, %if.else.146
  %98 = load i8*, i8** %data.addr, align 8
  %arrayidx193 = getelementptr i8, i8* %98, i64 0
  %99 = load i8, i8* %arrayidx193, align 1
  %idxprom194 = zext i8 %99 to i64
  %100 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx195 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %100, i64 %idxprom194
  %map196 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx195, i32 0, i32 0
  %101 = load i16*, i16** %map196, align 8
  %cmp197 = icmp ne i16* %101, null
  br i1 %cmp197, label %land.lhs.true.199, label %if.else.238

land.lhs.true.199:                                ; preds = %if.else.192
  %102 = load i8*, i8** %data.addr, align 8
  %arrayidx200 = getelementptr i8, i8* %102, i64 1
  %103 = load i8, i8* %arrayidx200, align 1
  %conv201 = zext i8 %103 to i32
  %104 = load i8*, i8** %data.addr, align 8
  %arrayidx202 = getelementptr i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx202, align 1
  %idxprom203 = zext i8 %105 to i64
  %106 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx204 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %106, i64 %idxprom203
  %bottom205 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx204, i32 0, i32 1
  %107 = load i8, i8* %bottom205, align 1
  %conv206 = zext i8 %107 to i32
  %cmp207 = icmp sge i32 %conv201, %conv206
  br i1 %cmp207, label %land.lhs.true.209, label %if.else.238

land.lhs.true.209:                                ; preds = %land.lhs.true.199
  %108 = load i8*, i8** %data.addr, align 8
  %arrayidx210 = getelementptr i8, i8* %108, i64 1
  %109 = load i8, i8* %arrayidx210, align 1
  %conv211 = zext i8 %109 to i32
  %110 = load i8*, i8** %data.addr, align 8
  %arrayidx212 = getelementptr i8, i8* %110, i64 0
  %111 = load i8, i8* %arrayidx212, align 1
  %idxprom213 = zext i8 %111 to i64
  %112 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx214 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %112, i64 %idxprom213
  %top215 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx214, i32 0, i32 2
  %113 = load i8, i8* %top215, align 1
  %conv216 = zext i8 %113 to i32
  %cmp217 = icmp sle i32 %conv211, %conv216
  br i1 %cmp217, label %land.lhs.true.219, label %if.else.238

land.lhs.true.219:                                ; preds = %land.lhs.true.209
  %114 = load i8*, i8** %data.addr, align 8
  %arrayidx220 = getelementptr i8, i8* %114, i64 1
  %115 = load i8, i8* %arrayidx220, align 1
  %conv221 = zext i8 %115 to i32
  %116 = load i8*, i8** %data.addr, align 8
  %arrayidx222 = getelementptr i8, i8* %116, i64 0
  %117 = load i8, i8* %arrayidx222, align 1
  %idxprom223 = zext i8 %117 to i64
  %118 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx224 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %118, i64 %idxprom223
  %bottom225 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx224, i32 0, i32 1
  %119 = load i8, i8* %bottom225, align 1
  %conv226 = zext i8 %119 to i32
  %sub227 = sub i32 %conv221, %conv226
  %idxprom228 = sext i32 %sub227 to i64
  %120 = load i8*, i8** %data.addr, align 8
  %arrayidx229 = getelementptr i8, i8* %120, i64 0
  %121 = load i8, i8* %arrayidx229, align 1
  %idxprom230 = zext i8 %121 to i64
  %122 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_1_emp_decmap, align 8
  %arrayidx231 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %122, i64 %idxprom230
  %map232 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx231, i32 0, i32 0
  %123 = load i16*, i16** %map232, align 8
  %arrayidx233 = getelementptr i16, i16* %123, i64 %idxprom228
  %124 = load i16, i16* %arrayidx233, align 2
  %conv234 = zext i16 %124 to i32
  store i32 %conv234, i32* %u, align 4
  %cmp235 = icmp ne i32 %conv234, 65534
  br i1 %cmp235, label %if.then.237, label %if.else.238

if.then.237:                                      ; preds = %land.lhs.true.219
  %125 = load i32, i32* %u, align 4
  %or = or i32 %125, 131072
  store i32 %or, i32* %u, align 4
  br label %if.end.284

if.else.238:                                      ; preds = %land.lhs.true.219, %land.lhs.true.209, %land.lhs.true.199, %if.else.192
  %126 = load i8*, i8** %data.addr, align 8
  %arrayidx239 = getelementptr i8, i8* %126, i64 0
  %127 = load i8, i8* %arrayidx239, align 1
  %idxprom240 = zext i8 %127 to i64
  %128 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx241 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %128, i64 %idxprom240
  %map242 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx241, i32 0, i32 0
  %129 = load i32*, i32** %map242, align 8
  %cmp243 = icmp ne i32* %129, null
  br i1 %cmp243, label %land.lhs.true.245, label %if.else.283

land.lhs.true.245:                                ; preds = %if.else.238
  %130 = load i8*, i8** %data.addr, align 8
  %arrayidx246 = getelementptr i8, i8* %130, i64 1
  %131 = load i8, i8* %arrayidx246, align 1
  %conv247 = zext i8 %131 to i32
  %132 = load i8*, i8** %data.addr, align 8
  %arrayidx248 = getelementptr i8, i8* %132, i64 0
  %133 = load i8, i8* %arrayidx248, align 1
  %idxprom249 = zext i8 %133 to i64
  %134 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx250 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %134, i64 %idxprom249
  %bottom251 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx250, i32 0, i32 1
  %135 = load i8, i8* %bottom251, align 1
  %conv252 = zext i8 %135 to i32
  %cmp253 = icmp sge i32 %conv247, %conv252
  br i1 %cmp253, label %land.lhs.true.255, label %if.else.283

land.lhs.true.255:                                ; preds = %land.lhs.true.245
  %136 = load i8*, i8** %data.addr, align 8
  %arrayidx256 = getelementptr i8, i8* %136, i64 1
  %137 = load i8, i8* %arrayidx256, align 1
  %conv257 = zext i8 %137 to i32
  %138 = load i8*, i8** %data.addr, align 8
  %arrayidx258 = getelementptr i8, i8* %138, i64 0
  %139 = load i8, i8* %arrayidx258, align 1
  %idxprom259 = zext i8 %139 to i64
  %140 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx260 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %140, i64 %idxprom259
  %top261 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx260, i32 0, i32 2
  %141 = load i8, i8* %top261, align 1
  %conv262 = zext i8 %141 to i32
  %cmp263 = icmp sle i32 %conv257, %conv262
  br i1 %cmp263, label %land.lhs.true.265, label %if.else.283

land.lhs.true.265:                                ; preds = %land.lhs.true.255
  %142 = load i8*, i8** %data.addr, align 8
  %arrayidx266 = getelementptr i8, i8* %142, i64 1
  %143 = load i8, i8* %arrayidx266, align 1
  %conv267 = zext i8 %143 to i32
  %144 = load i8*, i8** %data.addr, align 8
  %arrayidx268 = getelementptr i8, i8* %144, i64 0
  %145 = load i8, i8* %arrayidx268, align 1
  %idxprom269 = zext i8 %145 to i64
  %146 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx270 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %146, i64 %idxprom269
  %bottom271 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx270, i32 0, i32 1
  %147 = load i8, i8* %bottom271, align 1
  %conv272 = zext i8 %147 to i32
  %sub273 = sub i32 %conv267, %conv272
  %idxprom274 = sext i32 %sub273 to i64
  %148 = load i8*, i8** %data.addr, align 8
  %arrayidx275 = getelementptr i8, i8* %148, i64 0
  %149 = load i8, i8* %arrayidx275, align 1
  %idxprom276 = zext i8 %149 to i64
  %150 = load %struct.widedbcs_index*, %struct.widedbcs_index** @jisx0213_pair_decmap, align 8
  %arrayidx277 = getelementptr %struct.widedbcs_index, %struct.widedbcs_index* %150, i64 %idxprom276
  %map278 = getelementptr inbounds %struct.widedbcs_index, %struct.widedbcs_index* %arrayidx277, i32 0, i32 0
  %151 = load i32*, i32** %map278, align 8
  %arrayidx279 = getelementptr i32, i32* %151, i64 %idxprom274
  %152 = load i32, i32* %arrayidx279, align 4
  store i32 %152, i32* %u, align 4
  %cmp280 = icmp ne i32 %152, 65534
  br i1 %cmp280, label %if.then.282, label %if.else.283

if.then.282:                                      ; preds = %land.lhs.true.265
  br label %if.end

if.else.283:                                      ; preds = %land.lhs.true.265, %land.lhs.true.255, %land.lhs.true.245, %if.else.238
  store i32 65535, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.282
  br label %if.end.284

if.end.284:                                       ; preds = %if.end, %if.then.237
  br label %if.end.285

if.end.285:                                       ; preds = %if.end.284, %if.then.191
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %if.then.145
  br label %if.end.287

if.end.287:                                       ; preds = %if.end.286
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287
  %153 = load i32, i32* %u, align 4
  store i32 %153, i32* %retval
  br label %return

return:                                           ; preds = %if.end.288, %if.else.283, %if.then.104, %if.then
  %154 = load i32, i32* %retval
  ret i32 %154
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2000_1_encoder_paironly(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  %ilength = alloca i64, align 8
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i64*, i64** %length.addr, align 8
  %1 = load i64, i64* %0, align 8
  store i64 %1, i64* %ilength, align 8
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %2, i64* %3, i8* inttoptr (i64 2000 to i8*))
  store i16 %call, i16* %coded, align 2
  %4 = load i64, i64* %ilength, align 8
  switch i64 %4, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  %5 = load i16, i16* %coded, align 2
  %conv = zext i16 %5 to i32
  %cmp = icmp eq i32 %conv, 65534
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  store i16 -2, i16* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  store i16 -1, i16* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %6 = load i64*, i64** %length.addr, align 8
  %7 = load i64, i64* %6, align 8
  %cmp3 = icmp ne i64 %7, 2
  br i1 %cmp3, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %sw.bb.2
  store i16 -1, i16* %retval
  br label %return

if.else.6:                                        ; preds = %sw.bb.2
  %8 = load i16, i16* %coded, align 2
  store i16 %8, i16* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.6, %if.then.5, %if.else, %if.then
  %9 = load i16, i16* %retval
  ret i16 %9
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2000_1_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %0, i64* %1, i8* inttoptr (i64 2000 to i8*))
  store i16 %call, i16* %coded, align 2
  %2 = load i16, i16* %coded, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %coded, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 65534
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %coded, align 2
  store i16 %4, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i16, i16* %coded, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i16 -1, i16* %retval
  br label %return

if.else.7:                                        ; preds = %if.else
  %6 = load i16, i16* %coded, align 2
  store i16 %6, i16* %retval
  br label %return

return:                                           ; preds = %if.else.7, %if.then.6, %if.then
  %7 = load i16, i16* %retval
  ret i16 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0213_2000_2_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 125
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %arrayidx2 = getelementptr i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %cmp4 = icmp eq i32 %conv3, 59
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 39709, i32* %u, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i8*, i8** %data.addr, align 8
  %arrayidx6 = getelementptr i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %idxprom = zext i8 %5 to i64
  %6 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx7 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %6, i64 %idxprom
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx7, i32 0, i32 0
  %7 = load i16*, i16** %map, align 8
  %cmp8 = icmp ne i16* %7, null
  br i1 %cmp8, label %land.lhs.true.10, label %if.else

land.lhs.true.10:                                 ; preds = %if.end
  %8 = load i8*, i8** %data.addr, align 8
  %arrayidx11 = getelementptr i8, i8* %8, i64 1
  %9 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx13 = getelementptr i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx13, align 1
  %idxprom14 = zext i8 %11 to i64
  %12 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx15 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %12, i64 %idxprom14
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx15, i32 0, i32 1
  %13 = load i8, i8* %bottom, align 1
  %conv16 = zext i8 %13 to i32
  %cmp17 = icmp sge i32 %conv12, %conv16
  br i1 %cmp17, label %land.lhs.true.19, label %if.else

land.lhs.true.19:                                 ; preds = %land.lhs.true.10
  %14 = load i8*, i8** %data.addr, align 8
  %arrayidx20 = getelementptr i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx20, align 1
  %conv21 = zext i8 %15 to i32
  %16 = load i8*, i8** %data.addr, align 8
  %arrayidx22 = getelementptr i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx22, align 1
  %idxprom23 = zext i8 %17 to i64
  %18 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx24 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %18, i64 %idxprom23
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx24, i32 0, i32 2
  %19 = load i8, i8* %top, align 1
  %conv25 = zext i8 %19 to i32
  %cmp26 = icmp sle i32 %conv21, %conv25
  br i1 %cmp26, label %land.lhs.true.28, label %if.else

land.lhs.true.28:                                 ; preds = %land.lhs.true.19
  %20 = load i8*, i8** %data.addr, align 8
  %arrayidx29 = getelementptr i8, i8* %20, i64 1
  %21 = load i8, i8* %arrayidx29, align 1
  %conv30 = zext i8 %21 to i32
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx31 = getelementptr i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx31, align 1
  %idxprom32 = zext i8 %23 to i64
  %24 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx33 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %24, i64 %idxprom32
  %bottom34 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx33, i32 0, i32 1
  %25 = load i8, i8* %bottom34, align 1
  %conv35 = zext i8 %25 to i32
  %sub = sub i32 %conv30, %conv35
  %idxprom36 = sext i32 %sub to i64
  %26 = load i8*, i8** %data.addr, align 8
  %arrayidx37 = getelementptr i8, i8* %26, i64 0
  %27 = load i8, i8* %arrayidx37, align 1
  %idxprom38 = zext i8 %27 to i64
  %28 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_bmp_decmap, align 8
  %arrayidx39 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %28, i64 %idxprom38
  %map40 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx39, i32 0, i32 0
  %29 = load i16*, i16** %map40, align 8
  %arrayidx41 = getelementptr i16, i16* %29, i64 %idxprom36
  %30 = load i16, i16* %arrayidx41, align 2
  %conv42 = zext i16 %30 to i32
  store i32 %conv42, i32* %u, align 4
  %cmp43 = icmp ne i32 %conv42, 65534
  br i1 %cmp43, label %if.then.45, label %if.else

if.then.45:                                       ; preds = %land.lhs.true.28
  br label %if.end.93

if.else:                                          ; preds = %land.lhs.true.28, %land.lhs.true.19, %land.lhs.true.10, %if.end
  %31 = load i8*, i8** %data.addr, align 8
  %arrayidx46 = getelementptr i8, i8* %31, i64 0
  %32 = load i8, i8* %arrayidx46, align 1
  %idxprom47 = zext i8 %32 to i64
  %33 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx48 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %33, i64 %idxprom47
  %map49 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx48, i32 0, i32 0
  %34 = load i16*, i16** %map49, align 8
  %cmp50 = icmp ne i16* %34, null
  br i1 %cmp50, label %land.lhs.true.52, label %if.else.91

land.lhs.true.52:                                 ; preds = %if.else
  %35 = load i8*, i8** %data.addr, align 8
  %arrayidx53 = getelementptr i8, i8* %35, i64 1
  %36 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %36 to i32
  %37 = load i8*, i8** %data.addr, align 8
  %arrayidx55 = getelementptr i8, i8* %37, i64 0
  %38 = load i8, i8* %arrayidx55, align 1
  %idxprom56 = zext i8 %38 to i64
  %39 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx57 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %39, i64 %idxprom56
  %bottom58 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx57, i32 0, i32 1
  %40 = load i8, i8* %bottom58, align 1
  %conv59 = zext i8 %40 to i32
  %cmp60 = icmp sge i32 %conv54, %conv59
  br i1 %cmp60, label %land.lhs.true.62, label %if.else.91

land.lhs.true.62:                                 ; preds = %land.lhs.true.52
  %41 = load i8*, i8** %data.addr, align 8
  %arrayidx63 = getelementptr i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %42 to i32
  %43 = load i8*, i8** %data.addr, align 8
  %arrayidx65 = getelementptr i8, i8* %43, i64 0
  %44 = load i8, i8* %arrayidx65, align 1
  %idxprom66 = zext i8 %44 to i64
  %45 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx67 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %45, i64 %idxprom66
  %top68 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx67, i32 0, i32 2
  %46 = load i8, i8* %top68, align 1
  %conv69 = zext i8 %46 to i32
  %cmp70 = icmp sle i32 %conv64, %conv69
  br i1 %cmp70, label %land.lhs.true.72, label %if.else.91

land.lhs.true.72:                                 ; preds = %land.lhs.true.62
  %47 = load i8*, i8** %data.addr, align 8
  %arrayidx73 = getelementptr i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %48 to i32
  %49 = load i8*, i8** %data.addr, align 8
  %arrayidx75 = getelementptr i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx75, align 1
  %idxprom76 = zext i8 %50 to i64
  %51 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx77 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %51, i64 %idxprom76
  %bottom78 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx77, i32 0, i32 1
  %52 = load i8, i8* %bottom78, align 1
  %conv79 = zext i8 %52 to i32
  %sub80 = sub i32 %conv74, %conv79
  %idxprom81 = sext i32 %sub80 to i64
  %53 = load i8*, i8** %data.addr, align 8
  %arrayidx82 = getelementptr i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx82, align 1
  %idxprom83 = zext i8 %54 to i64
  %55 = load %struct.dbcs_index*, %struct.dbcs_index** @jisx0213_2_emp_decmap, align 8
  %arrayidx84 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %55, i64 %idxprom83
  %map85 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx84, i32 0, i32 0
  %56 = load i16*, i16** %map85, align 8
  %arrayidx86 = getelementptr i16, i16* %56, i64 %idxprom81
  %57 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %57 to i32
  store i32 %conv87, i32* %u, align 4
  %cmp88 = icmp ne i32 %conv87, 65534
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %land.lhs.true.72
  %58 = load i32, i32* %u, align 4
  %or = or i32 %58, 131072
  store i32 %or, i32* %u, align 4
  br label %if.end.92

if.else.91:                                       ; preds = %land.lhs.true.72, %land.lhs.true.62, %land.lhs.true.52, %if.else
  store i32 65535, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.then.90
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.45
  %59 = load i32, i32* %u, align 4
  store i32 %59, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.else.91
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0213_2000_2_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i64*, i64** %length.addr, align 8
  %call = call zeroext i16 @jisx0213_encoder(i32* %0, i64* %1, i8* inttoptr (i64 2000 to i8*))
  store i16 %call, i16* %coded, align 2
  %2 = load i16, i16* %coded, align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 65535
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i16, i16* %coded, align 2
  %conv2 = zext i16 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 65534
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i16, i16* %coded, align 2
  store i16 %4, i16* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %5 = load i16, i16* %coded, align 2
  %conv5 = zext i16 %5 to i32
  %and = and i32 %conv5, 32768
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.else
  %6 = load i16, i16* %coded, align 2
  %conv7 = zext i16 %6 to i32
  %and8 = and i32 %conv7, 32767
  %conv9 = trunc i32 %and8 to i16
  store i16 %conv9, i16* %retval
  br label %return

if.else.10:                                       ; preds = %if.else
  store i16 -1, i16* %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.6, %if.then
  %7 = load i16, i16* %retval
  ret i16 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @jisx0201_k_decoder(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %u = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = zext i8 %1 to i32
  %xor = xor i32 %conv, 128
  %cmp = icmp sge i32 %xor, 161
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = zext i8 %3 to i32
  %xor3 = xor i32 %conv2, 128
  %cmp4 = icmp sle i32 %xor3, 223
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv6 = zext i8 %5 to i32
  %xor7 = xor i32 %conv6, 128
  %add = add i32 65216, %xor7
  store i32 %add, i32* %u, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 65535, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i32, i32* %u, align 4
  store i32 %6, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @jisx0201_k_encoder(i32* %data, i64* %length) #0 {
entry:
  %retval = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %length.addr = alloca i64*, align 8
  %coded = alloca i16, align 2
  store i32* %data, i32** %data.addr, align 8
  store i64* %length, i64** %length.addr, align 8
  %0 = load i32*, i32** %data.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp uge i32 %1, 65377
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32*, i32** %data.addr, align 8
  %3 = load i32, i32* %2, align 4
  %cmp1 = icmp ule i32 %3, 65439
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %4, align 4
  %sub = sub i32 %5, 65216
  %conv = trunc i32 %sub to i16
  store i16 %conv, i16* %coded, align 2
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i16 -1, i16* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i16, i16* %coded, align 2
  %conv2 = zext i16 %6 to i32
  %sub3 = sub i32 %conv2, 128
  %conv4 = trunc i32 %sub3 to i16
  store i16 %conv4, i16* %retval
  br label %return

return:                                           ; preds = %if.end, %if.else
  %7 = load i16, i16* %retval
  ret i16 %7
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
