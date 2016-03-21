; ModuleID = 'irs-onlybc/_codecs_hk.bc'
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
%struct.unim_index = type { i16*, i8, i8 }
%struct.dbcs_index = type { i16*, i8, i8 }
%struct.dbcs_map = type { i8*, %struct.unim_index*, %struct.dbcs_index* }

@__module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* null, i64 0, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @__methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"_codecs_hk\00", align 1
@__methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getcodec, i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"getcodec\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"encoding name must be a string.\00", align 1
@codec_list = internal global %struct.MultibyteCodec* getelementptr inbounds ([2 x %struct.MultibyteCodec], [2 x %struct.MultibyteCodec]* @_codec_list, i32 0, i32 0), align 8
@PyExc_LookupError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"no such codec is supported.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"multibytecodec.__map_*\00", align 1
@getmultibytecodec.cofunc = internal global %struct._object* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"_multibytecodec\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"__create_codec\00", align 1
@_codec_list = internal constant [2 x %struct.MultibyteCodec] [%struct.MultibyteCodec { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8* null, i32 (i8*)* @big5hkscs_codec_init, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @big5hkscs_encode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @big5hkscs_decode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }, %struct.MultibyteCodec { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 (i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"big5hkscs\00", align 1
@big5hkscs_codec_init.initialized = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"_codecs_tw\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__map_big5\00", align 1
@big5_encmap = internal global %struct.unim_index* null, align 8
@big5_decmap = internal global %struct.dbcs_index* null, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"map data must be a Capsule.\00", align 1
@big5hkscs_bmp_encmap = internal constant [256 x %struct.unim_index] [%struct.unim_index { i16* getelementptr inbounds ([26401 x i16], [26401 x i16]* @__big5hkscs_bmp_encmap, i32 0, i32 0), i8 -88, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 170) to i16*), i8 0, i8 -36 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 612) to i16*), i8 80, i8 -58 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 850) to i16*), i8 1, i8 81 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1012) to i16*), i8 -66, i8 -63 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1020) to i16*), i8 22, i8 -25 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1440) to i16*), i8 -38, i8 -37 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1444) to i16*), i8 96, i8 125 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1504) to i16*), i8 80, i8 112 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1570) to i16*), i8 61, i8 61 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1572) to i16*), i8 -128, i8 -29 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1772) to i16*), i8 51, i8 51 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 1774) to i16*), i8 5, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 2274) to i16*), i8 -64, i8 -49 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 2306) to i16*), i8 49, i8 49 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 2308) to i16*), i8 53, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 2706) to i16*), i8 6, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 3204) to i16*), i8 9, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 3678) to i16*), i8 1, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 4180) to i16*), i8 15, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 4652) to i16*), i8 8, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 5146) to i16*), i8 1, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 5648) to i16*), i8 14, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 6110) to i16*), i8 13, i8 -17 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 6564) to i16*), i8 18, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 7036) to i16*), i8 6, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 7536) to i16*), i8 0, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 8038) to i16*), i8 4, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 8532) to i16*), i8 2, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 9028) to i16*), i8 17, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 9500) to i16*), i8 43, i8 -14 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 9900) to i16*), i8 1, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 10388) to i16*), i8 3, i8 -22 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 10852) to i16*), i8 3, i8 -9 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 11342) to i16*), i8 19, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 11794) to i16*), i8 0, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 12296) to i16*), i8 6, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 12748) to i16*), i8 15, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 13230) to i16*), i8 16, i8 -64 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 13584) to i16*), i8 4, i8 -19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 14052) to i16*), i8 7, i8 -100 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 14352) to i16*), i8 4, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 14842) to i16*), i8 3, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 15344) to i16*), i8 3, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 15844) to i16*), i8 1, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 16352) to i16*), i8 2, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 16848) to i16*), i8 1, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 17356) to i16*), i8 19, i8 -17 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 17798) to i16*), i8 2, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 18298) to i16*), i8 5, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 18796) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 19306) to i16*), i8 3, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 19804) to i16*), i8 2, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 20300) to i16*), i8 2, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 20806) to i16*), i8 13, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 21292) to i16*), i8 5, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 21788) to i16*), i8 16, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 22248) to i16*), i8 9, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 22736) to i16*), i8 12, i8 -33 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 23160) to i16*), i8 35, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 23598) to i16*), i8 7, i8 -30 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 24038) to i16*), i8 44, i8 -27 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 24410) to i16*), i8 24, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 24872) to i16*), i8 7, i8 -22 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 25328) to i16*), i8 10, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 25820) to i16*), i8 24, i8 -15 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 26256) to i16*), i8 2, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 26762) to i16*), i8 0, i8 -54 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 27168) to i16*), i8 0, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 27670) to i16*), i8 3, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 28158) to i16*), i8 5, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 28650) to i16*), i8 28, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 29106) to i16*), i8 2, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 29612) to i16*), i8 2, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 30110) to i16*), i8 4, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 30600) to i16*), i8 3, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 31104) to i16*), i8 5, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 31588) to i16*), i8 0, i8 -30 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 32042) to i16*), i8 2, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 32542) to i16*), i8 2, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 33036) to i16*), i8 5, i8 -36 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 33468) to i16*), i8 2, i8 -39 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 33900) to i16*), i8 12, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 34386) to i16*), i8 8, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 34862) to i16*), i8 6, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 35340) to i16*), i8 6, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 35838) to i16*), i8 11, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 36322) to i16*), i8 18, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 36792) to i16*), i8 37, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 37228) to i16*), i8 7, i8 -33 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 37662) to i16*), i8 6, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 38152) to i16*), i8 2, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 38642) to i16*), i8 3, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 39130) to i16*), i8 24, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 39594) to i16*), i8 11, i8 -19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 40048) to i16*), i8 5, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 40536) to i16*), i8 3, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 41036) to i16*), i8 2, i8 -17 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 41512) to i16*), i8 112, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 41780) to i16*), i8 4, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 42284) to i16*), i8 0, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 42748) to i16*), i8 28, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 43192) to i16*), i8 12, i8 -30 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 43622) to i16*), i8 81, i8 -9 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 43956) to i16*), i8 3, i8 -44 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 44376) to i16*), i8 1, i8 -14 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 44860) to i16*), i8 25, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 45310) to i16*), i8 8, i8 -60 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 45688) to i16*), i8 81, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 46036) to i16*), i8 8, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 46528) to i16*), i8 3, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 47012) to i16*), i8 1, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 47504) to i16*), i8 45, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 47904) to i16*), i8 29, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 48336) to i16*), i8 3, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 48822) to i16*), i8 20, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 49274) to i16*), i8 14, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 49738) to i16*), i8 12, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 50226) to i16*), i8 2, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 50734) to i16*), i8 2, i8 124 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 50980) to i16*), i8 2, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 51482) to i16*), i8 10, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 51972) to i16*), i8 2, i8 -77 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 52328) to i16*), i8 7, i8 7 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([26401 x i16]* @__big5hkscs_bmp_encmap to i8*), i64 52330) to i16*), i8 2, i8 -19 }], align 16
@big5hkscs_pairenc_table = internal constant [4 x i16] [i16 -30622, i16 -30620, i16 -30557, i16 -30555], align 2
@big5hkscs_nonbmp_encmap = internal constant [256 x %struct.unim_index] [%struct.unim_index { i16* getelementptr inbounds ([29306 x i16], [29306 x i16]* @__big5hkscs_nonbmp_encmap, i32 0, i32 0), i8 33, i8 -18 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 412) to i16*), i8 12, i8 -14 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 874) to i16*), i8 4, i8 -27 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 1326) to i16*), i8 10, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 1812) to i16*), i8 19, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 2284) to i16*), i8 71, i8 -21 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 2614) to i16*), i8 17, i8 118 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 2818) to i16*), i8 14, i8 121 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 3034) to i16*), i8 44, i8 -43 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 3374) to i16*), i8 22, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 3794) to i16*), i8 17, i8 -51 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 4172) to i16*), i8 13, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 4658) to i16*), i8 11, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 5148) to i16*), i8 21, i8 -56 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 5508) to i16*), i8 4, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 6004) to i16*), i8 29, i8 -19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 6422) to i16*), i8 20, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 6876) to i16*), i8 47, i8 -39 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 7218) to i16*), i8 60, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 7608) to i16*), i8 2, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 8114) to i16*), i8 19, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 8584) to i16*), i8 119, i8 -106 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 8648) to i16*), i8 10, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 9138) to i16*), i8 13, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 9618) to i16*), i8 32, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 10056) to i16*), i8 3, i8 -13 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 10538) to i16*), i8 45, i8 99 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 10648) to i16*), i8 68, i8 -62 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 10902) to i16*), i8 42, i8 -84 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 11164) to i16*), i8 70, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 11524) to i16*), i8 28, i8 -43 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 11896) to i16*), i8 15, i8 -24 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 12332) to i16*), i8 69, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 12700) to i16*), i8 42, i8 -61 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 13008) to i16*), i8 8, i8 124 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 13242) to i16*), i8 33, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 13678) to i16*), i8 101, i8 -19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 13952) to i16*), i8 19, i8 -66 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 14296) to i16*), i8 27, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 14736) to i16*), i8 18, i8 -51 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 15112) to i16*), i8 3, i8 -9 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 15602) to i16*), i8 38, i8 -109 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 15822) to i16*), i8 102, i8 -24 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 16084) to i16*), i8 14, i8 -50 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 16470) to i16*), i8 38, i8 -55 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 16798) to i16*), i8 7, i8 -18 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 17262) to i16*), i8 13, i8 -17 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 17716) to i16*), i8 116, i8 -29 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 17940) to i16*), i8 51, i8 -38 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 18276) to i16*), i8 3, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 18770) to i16*), i8 15, i8 -31 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 19192) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 19702) to i16*), i8 0, i8 -27 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 20162) to i16*), i8 25, i8 -13 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 20600) to i16*), i8 0, i8 -18 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21078) to i16*), i8 3, i8 -41 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21504) to i16*), i8 58, i8 58 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21506) to i16*), i8 -62, i8 -62 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21508) to i16*), i8 -89, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21676) to i16*), i8 26, i8 90 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 21806) to i16*), i8 99, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 22120) to i16*), i8 64, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 22490) to i16*), i8 6, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 22984) to i16*), i8 53, i8 -16 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 23360) to i16*), i8 17, i8 -20 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 23800) to i16*), i8 4, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 24298) to i16*), i8 27, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 24746) to i16*), i8 13, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 25218) to i16*), i8 4, i8 -42 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 25640) to i16*), i8 5, i8 -56 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 26032) to i16*), i8 24, i8 -44 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 26410) to i16*), i8 6, i8 -32 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 26848) to i16*), i8 18, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 27324) to i16*), i8 0, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 27828) to i16*), i8 14, i8 -23 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 28268) to i16*), i8 15, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 28730) to i16*), i8 9, i8 -39 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 29148) to i16*), i8 6, i8 -21 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 29608) to i16*), i8 59, i8 -89 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 29826) to i16*), i8 14, i8 -62 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 30188) to i16*), i8 44, i8 -99 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 30416) to i16*), i8 43, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 30794) to i16*), i8 32, i8 -40 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 31164) to i16*), i8 14, i8 19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 31176) to i16*), i8 25, i8 -102 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 31436) to i16*), i8 49, i8 -32 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 31788) to i16*), i8 5, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 32272) to i16*), i8 6, i8 -31 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 32712) to i16*), i8 87, i8 -31 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 32990) to i16*), i8 3, i8 -52 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 33394) to i16*), i8 84, i8 -23 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 33694) to i16*), i8 116, i8 -24 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 33928) to i16*), i8 1, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 34436) to i16*), i8 32, i8 67 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 34508) to i16*), i8 14, i8 -40 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 34914) to i16*), i8 26, i8 -30 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 35316) to i16*), i8 41, i8 -91 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 35566) to i16*), i8 2, i8 -35 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 36006) to i16*), i8 88, i8 -48 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 36248) to i16*), i8 53, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 36640) to i16*), i8 2, i8 -104 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 36942) to i16*), i8 18, i8 -65 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 37290) to i16*), i8 18, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 37760) to i16*), i8 22, i8 -52 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 38126) to i16*), i8 28, i8 -57 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 38470) to i16*), i8 14, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 38944) to i16*), i8 45, i8 82 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 39020) to i16*), i8 5, i8 -9 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 39506) to i16*), i8 33, i8 -47 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 39860) to i16*), i8 34, i8 -16 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 40274) to i16*), i8 0, i8 -41 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 40706) to i16*), i8 38, i8 -33 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 41078) to i16*), i8 14, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 41548) to i16*), i8 9, i8 -51 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 41942) to i16*), i8 27, i8 -26 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 42350) to i16*), i8 82, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 42698) to i16*), i8 34, i8 -122 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 42900) to i16*), i8 116, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 43178) to i16*), i8 7, i8 -108 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 43462) to i16*), i8 15, i8 -52 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 43842) to i16*), i8 88, i8 -56 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 44068) to i16*), i8 36, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 44504) to i16*), i8 10, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 44974) to i16*), i8 6, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 45452) to i16*), i8 18, i8 -59 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 45812) to i16*), i8 47, i8 -36 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 46160) to i16*), i8 77, i8 79 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 46166) to i16*), i8 46, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 46574) to i16*), i8 2, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 47060) to i16*), i8 46, i8 -68 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 47346) to i16*), i8 7, i8 -30 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 47786) to i16*), i8 6, i8 -118 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 48052) to i16*), i8 18, i8 -126 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 48278) to i16*), i8 1, i8 -12 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 48766) to i16*), i8 0, i8 -26 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 49228) to i16*), i8 15, i8 19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 49238) to i16*), i8 4, i8 43 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 49318) to i16*), i8 51, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 49722) to i16*), i8 15, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 50198) to i16*), i8 12, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 50686) to i16*), i8 3, i8 -46 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 51102) to i16*), i8 52, i8 -71 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 51370) to i16*), i8 15, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 51804) to i16*), i8 -59, i8 -59 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 51806) to i16*), i8 121, i8 -19 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 52040) to i16*), i8 13, i8 -21 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 52486) to i16*), i8 29, i8 -25 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 52892) to i16*), i8 -98, i8 -12 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 53066) to i16*), i8 32, i8 -44 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 53428) to i16*), i8 16, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 53898) to i16*), i8 3, i8 -55 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 54296) to i16*), i8 40, i8 77 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 54372) to i16*), i8 5, i8 -43 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 54790) to i16*), i8 115, i8 -83 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 54908) to i16*), i8 62, i8 -10 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 55278) to i16*), i8 6, i8 -8 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 55764) to i16*), i8 35, i8 -34 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 56140) to i16*), i8 20, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 56610) to i16*), i8 7, i8 -11 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 57088) to i16*), i8 32, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 57536) to i16*), i8 81, i8 -87 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 57714) to i16*), i8 52, i8 91 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 57794) to i16*), i8 -58, i8 -53 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 57806) to i16*), i8 1, i8 -87 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 58144) to i16*), i8 37, i8 -51 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([29306 x i16]* @__big5hkscs_nonbmp_encmap to i8*), i64 58482) to i16*), i8 -108, i8 -44 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer], align 16
@__big5hkscs_bmp_encmap = internal constant [26401 x i16] [i16 -14632, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30631, i16 -30633, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30627, i16 -30629, i16 -2, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30623, i16 -30625, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30614, i16 -30616, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30609, i16 -30611, i16 -2, i16 -1, i16 -30605, i16 -30607, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30601, i16 -30603, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14085, i16 -30597, i16 -30599, i16 -1, i16 -30558, i16 -30634, i16 -30617, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30630, i16 -30612, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30628, i16 -30610, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30608, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14084, i16 -30626, i16 -30604, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14086, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30600, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30632, i16 -30615, i16 -1, i16 -30606, i16 -30624, i16 -30602, i16 -1, i16 -30598, i16 -1, i16 -30596, i16 -1, i16 -30595, i16 -1, i16 -30594, i16 -1, i16 -30559, i16 -14090, i16 -30613, i16 -1, i16 -1, i16 -14088, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14089, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30552, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14087, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14091, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14083, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14631, i16 -14343, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14349, i16 -14348, i16 -14347, i16 -14346, i16 -14345, i16 -14344, i16 -14342, i16 -14341, i16 -14340, i16 -14339, i16 -14338, i16 -14272, i16 -14271, i16 -14270, i16 -14269, i16 -14268, i16 -14267, i16 -14266, i16 -14265, i16 -14264, i16 -14263, i16 -14262, i16 -14261, i16 -14260, i16 -14259, i16 -14258, i16 -14257, i16 -14256, i16 -14255, i16 -14254, i16 -14253, i16 -14252, i16 -14251, i16 -14250, i16 -14249, i16 -14248, i16 -14247, i16 -14246, i16 -14244, i16 -14243, i16 -14242, i16 -14241, i16 -14240, i16 -14239, i16 -14238, i16 -14237, i16 -14236, i16 -14235, i16 -14234, i16 -14233, i16 -14232, i16 -14231, i16 -14230, i16 -14229, i16 -14228, i16 -14227, i16 -14226, i16 -14225, i16 -14224, i16 -14223, i16 -14222, i16 -14221, i16 -14220, i16 -14219, i16 -1, i16 -14245, i16 -30621, i16 -30556, i16 -30619, i16 -30554, i16 -14126, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14125, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14667, i16 -14666, i16 -14665, i16 -14664, i16 -14663, i16 -14662, i16 -14661, i16 -14660, i16 -14659, i16 -14658, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14217, i16 -14216, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14218, i16 -30551, i16 -30550, i16 -14687, i16 -14686, i16 -14685, i16 -14684, i16 -14683, i16 -14682, i16 -14681, i16 -14680, i16 -14679, i16 -14678, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14677, i16 -14676, i16 -14675, i16 -14674, i16 -14673, i16 -14672, i16 -14671, i16 -14670, i16 -14669, i16 -14668, i16 -1543, i16 -1544, i16 -1562, i16 -1553, i16 -1571, i16 -1560, i16 -1551, i16 -1569, i16 -1556, i16 -1547, i16 -1565, i16 -1554, i16 -1545, i16 -1563, i16 -1559, i16 -1550, i16 -1568, i16 -1557, i16 -1548, i16 -1566, i16 -1561, i16 -1552, i16 -1570, i16 -1555, i16 -1546, i16 -1564, i16 -1558, i16 -1549, i16 -1567, i16 -1542, i16 -1541, i16 -1539, i16 -1540, i16 -14618, i16 -14122, i16 -1, i16 -1, i16 -1, i16 -14121, i16 -1, i16 -14120, i16 -14119, i16 -14118, i16 -1, i16 -14117, i16 -1, i16 -14116, i16 -14115, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14114, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14113, i16 -14112, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14111, i16 -1, i16 -14110, i16 -1, i16 -1, i16 -14109, i16 -1, i16 -14108, i16 -1, i16 -14107, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14106, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14105, i16 -1, i16 -14104, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14103, i16 -1, i16 -1, i16 -1, i16 -14102, i16 -1, i16 -14101, i16 -14100, i16 -1, i16 -14099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14098, i16 -14097, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14096, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14095, i16 -14643, i16 -14624, i16 -14623, i16 -14622, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14617, i16 -14616, i16 -14615, i16 -14614, i16 -14613, i16 -14612, i16 -14611, i16 -14610, i16 -14609, i16 -14608, i16 -14607, i16 -14606, i16 -14605, i16 -14604, i16 -14603, i16 -14602, i16 -14601, i16 -14600, i16 -14599, i16 -14598, i16 -14597, i16 -14596, i16 -14595, i16 -14594, i16 -14528, i16 -14527, i16 -14526, i16 -14525, i16 -14524, i16 -14523, i16 -14522, i16 -14521, i16 -14520, i16 -14519, i16 -14518, i16 -14517, i16 -14516, i16 -14515, i16 -14514, i16 -14513, i16 -14512, i16 -14511, i16 -14510, i16 -14509, i16 -14508, i16 -14507, i16 -14506, i16 -14505, i16 -14504, i16 -14503, i16 -14502, i16 -14501, i16 -14500, i16 -14499, i16 -14498, i16 -14497, i16 -14496, i16 -14495, i16 -14494, i16 -14493, i16 -14492, i16 -14491, i16 -14490, i16 -14489, i16 -14488, i16 -14487, i16 -14486, i16 -14485, i16 -14484, i16 -14483, i16 -14482, i16 -14481, i16 -14480, i16 -14479, i16 -14478, i16 -14477, i16 -14476, i16 -14475, i16 -14474, i16 -14473, i16 -14472, i16 -14471, i16 -14470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14124, i16 -14123, i16 -14628, i16 -14627, i16 -1, i16 -1, i16 -14469, i16 -14468, i16 -14467, i16 -14466, i16 -14431, i16 -14430, i16 -14429, i16 -14428, i16 -14427, i16 -14426, i16 -14425, i16 -14424, i16 -14423, i16 -14422, i16 -14421, i16 -14420, i16 -14419, i16 -14418, i16 -14417, i16 -14416, i16 -14415, i16 -14414, i16 -14413, i16 -14412, i16 -14411, i16 -14410, i16 -14409, i16 -14408, i16 -14407, i16 -14406, i16 -14405, i16 -14404, i16 -14403, i16 -14402, i16 -14401, i16 -14400, i16 -14399, i16 -14398, i16 -14397, i16 -14396, i16 -14395, i16 -14394, i16 -14393, i16 -14392, i16 -14391, i16 -14390, i16 -14389, i16 -14388, i16 -14387, i16 -14386, i16 -14385, i16 -14384, i16 -14383, i16 -14382, i16 -14381, i16 -14380, i16 -14379, i16 -14378, i16 -14377, i16 -14376, i16 -14375, i16 -14374, i16 -14373, i16 -14372, i16 -14371, i16 -14370, i16 -14369, i16 -14368, i16 -14367, i16 -14366, i16 -14365, i16 -14364, i16 -14363, i16 -14362, i16 -14361, i16 -14360, i16 -14359, i16 -14358, i16 -14357, i16 -14356, i16 -14355, i16 -14354, i16 -14353, i16 -14352, i16 -14351, i16 -14350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14621, i16 -14630, i16 -14629, i16 -30656, i16 -30655, i16 -30654, i16 -30653, i16 -30652, i16 -30650, i16 -30647, i16 -30646, i16 -30643, i16 -30641, i16 -30640, i16 -30639, i16 -30638, i16 -30636, i16 -30635, i16 -14215, i16 -14127, i16 -28041, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26913, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29452, i16 -1, i16 -30251, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27699, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25633, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1432, i16 -1, i16 -1, i16 -30246, i16 -28839, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30245, i16 -1, i16 -1, i16 -28835, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30244, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26889, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29990, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29732, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26661, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25005, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25174, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25622, i16 -30098, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29752, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30232, i16 -1, i16 -30230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29621, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1168, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30227, i16 -1, i16 -1, i16 -27427, i16 -1, i16 -30226, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24908, i16 -29997, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27941, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27429, i16 -30215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1158, i16 -1, i16 -1, i16 -1, i16 -30213, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24836, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30212, i16 -1, i16 -30273, i16 -1, i16 -1, i16 -1, i16 -30210, i16 -1, i16 -30234, i16 -1, i16 -1, i16 -25274, i16 -1, i16 -1, i16 -1, i16 -25106, i16 -1, i16 -1, i16 -1, i16 -24450, i16 -1, i16 -1, i16 -1, i16 -24472, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26391, i16 -1, i16 -29848, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29187, i16 -29762, i16 -24615, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29973, i16 -1, i16 -1, i16 -24617, i16 -29846, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25508, i16 -1, i16 -29775, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1186, i16 -1, i16 -30864, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25101, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24368, i16 -1, i16 -1, i16 -1, i16 -922, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27927, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25876, i16 -28757, i16 -1464, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29115, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25489, i16 -1, i16 -29348, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24866, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30225, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26903, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24901, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27426, i16 -1, i16 -24904, i16 -1, i16 -1, i16 -1, i16 -26694, i16 -1179, i16 -1, i16 -1, i16 -1, i16 -27178, i16 -1, i16 -1, i16 -1, i16 -25413, i16 -1, i16 -1, i16 -26662, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28859, i16 -1, i16 -1155, i16 -28328, i16 -412, i16 -1, i16 -26538, i16 -25779, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27813, i16 -27193, i16 -1, i16 -26649, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27815, i16 -1, i16 -1, i16 -1, i16 -28171, i16 -26696, i16 -1, i16 -1, i16 -606, i16 -1098, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27910, i16 -27817, i16 -1, i16 -29786, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1095, i16 -1, i16 -26704, i16 -1, i16 -1, i16 -572, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25439, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28174, i16 -28167, i16 -1, i16 -28687, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26811, i16 -26541, i16 -1, i16 -1, i16 -392, i16 -1, i16 -1087, i16 -28079, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25171, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -660, i16 -1, i16 -1, i16 -1429, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25662, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29856, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27829, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25923, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28233, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29365, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27212, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -315, i16 -1, i16 -1, i16 -24848, i16 -29340, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28055, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29337, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1046, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1041, i16 -1, i16 -29336, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27669, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -958, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28314, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27683, i16 -1, i16 -1, i16 -29358, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29748, i16 -29331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29330, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26968, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -858, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29328, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -924, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29453, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28576, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29324, i16 -26685, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30000, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28044, i16 -1, i16 -25666, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25400, i16 -1, i16 -1, i16 -25414, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24903, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27302, i16 -1, i16 -1, i16 -28236, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30136, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29315, i16 -1, i16 -1, i16 -30083, i16 -1, i16 -1, i16 -30014, i16 -694, i16 -1, i16 -29279, i16 -1, i16 -1, i16 -29999, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -844, i16 -29881, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27740, i16 -24870, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30127, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29274, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24891, i16 -1, i16 -1, i16 -1, i16 -1, i16 -828, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24456, i16 -1, i16 -27467, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -830, i16 -30101, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29269, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1304, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29267, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -951, i16 -1, i16 -27711, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28561, i16 -1, i16 -29264, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27522, i16 -28422, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27527, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -786, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26245, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29260, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29257, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28237, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29253, i16 -29254, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29252, i16 -28604, i16 -1, i16 -1, i16 -1, i16 -692, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30901, i16 -27676, i16 -1, i16 -1, i16 -27680, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -685, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29245, i16 -1, i16 -25672, i16 -1, i16 -1, i16 -1, i16 -1040, i16 -1, i16 -27671, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27658, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29243, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29238, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29236, i16 -675, i16 -27723, i16 -671, i16 -1, i16 -1, i16 -1, i16 -25352, i16 -1, i16 -1, i16 -1, i16 -28078, i16 -1, i16 -1, i16 -24344, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25435, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29610, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29226, i16 -1, i16 -26688, i16 -1, i16 -1, i16 -1, i16 -24354, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26670, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1371, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -605, i16 -1, i16 -1, i16 -1, i16 -29221, i16 -29462, i16 -29009, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -695, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -559, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29205, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26682, i16 -1, i16 -562, i16 -1, i16 -1, i16 -28420, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -935, i16 -1, i16 -1, i16 -26922, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26683, i16 -29201, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26665, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29200, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26970, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1089, i16 -1, i16 -1, i16 -29473, i16 -1, i16 -29197, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27575, i16 -1, i16 -29195, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26510, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29077, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1283, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28848, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25140, i16 -923, i16 -1, i16 -29628, i16 -1, i16 -1, i16 -26258, i16 -27487, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28829, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24358, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28077, i16 -535, i16 -1, i16 -1, i16 -25163, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26503, i16 -30870, i16 -1, i16 -1, i16 -25251, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29341, i16 -27031, i16 -24720, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -918, i16 -1, i16 -1, i16 -30009, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30249, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -435, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24867, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -261, i16 -26436, i16 -1332, i16 -1, i16 -1, i16 -27216, i16 -1, i16 -1, i16 -1, i16 -27548, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27793, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27463, i16 -1, i16 -1, i16 -27156, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28178, i16 -1, i16 -1, i16 -26429, i16 -1, i16 -27146, i16 -1, i16 -1, i16 -1, i16 -28675, i16 -26427, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26778, i16 -402, i16 -1, i16 -1, i16 -26659, i16 -29526, i16 -1, i16 -1, i16 -27950, i16 -1, i16 -1, i16 -26783, i16 -26421, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27152, i16 -1, i16 -26787, i16 -1, i16 -28189, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26420, i16 -1, i16 -1, i16 -27543, i16 -26419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26418, i16 -1, i16 -27140, i16 -1, i16 -1, i16 -27485, i16 -27038, i16 -1, i16 -1, i16 -1, i16 -330, i16 -1, i16 -27549, i16 -29369, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26416, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26415, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27531, i16 -1312, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27534, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26410, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29968, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26407, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26405, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26403, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26456, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29957, i16 -30034, i16 -1079, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29603, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26396, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26394, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26392, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30131, i16 -1, i16 -1, i16 -1, i16 -28073, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27169, i16 -1, i16 -1, i16 -24404, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26389, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26388, i16 -1, i16 -29501, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26380, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30024, i16 -1, i16 -1, i16 -1, i16 -24857, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -815, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25402, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29366, i16 -1, i16 -24962, i16 -29372, i16 -26370, i16 -536, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26304, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27447, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27437, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28480, i16 -1, i16 -27439, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29362, i16 -1, i16 -1, i16 -27277, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27710, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26293, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26290, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28930, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29345, i16 -1, i16 -29095, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27412, i16 -27409, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29600, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28812, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26283, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27324, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29493, i16 -1, i16 -1, i16 -1, i16 -26282, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26279, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26277, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29500, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1467, i16 -1, i16 -1, i16 -1, i16 -28489, i16 -1, i16 -1, i16 -26813, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27187, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26679, i16 -688, i16 -28999, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27194, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26265, i16 -1, i16 -1, i16 -29469, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30023, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29188, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25263, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26253, i16 -1, i16 -1, i16 -30912, i16 -1, i16 -25265, i16 -26246, i16 -27292, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26207, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26203, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26201, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28947, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26195, i16 -1, i16 -14210, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27538, i16 -28816, i16 -1, i16 -1328, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26189, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24493, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29346, i16 -1, i16 -1, i16 -27044, i16 -1, i16 -1, i16 -29472, i16 -1, i16 -646, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26626, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27971, i16 -29347, i16 -26627, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28828, i16 -1, i16 -1, i16 -1, i16 -1, i16 -777, i16 -27294, i16 -26675, i16 -24988, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28084, i16 -28983, i16 -26180, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25179, i16 -1, i16 -28844, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28804, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29355, i16 -1, i16 -29022, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28806, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26706, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26936, i16 -1, i16 -1, i16 -29468, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26173, i16 -1, i16 -28458, i16 -1, i16 -25410, i16 -1, i16 -1, i16 -1, i16 -28810, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27536, i16 -1205, i16 -1, i16 -1, i16 -566, i16 -1, i16 -1, i16 -29457, i16 -1, i16 -1, i16 -1, i16 -28985, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29356, i16 -24327, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28759, i16 -1, i16 -1, i16 -29359, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26169, i16 -30908, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28457, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30909, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30905, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30888, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24865, i16 -29351, i16 -30910, i16 -1, i16 -1, i16 -26162, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28742, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28693, i16 -1, i16 -26161, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28734, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27959, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26660, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30883, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29371, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27213, i16 -25479, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27214, i16 -1, i16 -29364, i16 -28709, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25629, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30899, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24966, i16 -30889, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25618, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26146, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1286, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30126, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26143, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30105, i16 -29771, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30036, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26135, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1078, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26658, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27183, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26123, i16 -950, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25687, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1060, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -426, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24924, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25271, i16 -27173, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30267, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26120, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27036, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28587, i16 -1, i16 -1, i16 -26924, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26756, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27059, i16 -1, i16 -26655, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26040, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26039, i16 -1, i16 -387, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28502, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26032, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27833, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28968, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28471, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26027, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28484, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26024, i16 -1, i16 -29768, i16 -28459, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27071, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26022, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26020, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26686, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30884, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30021, i16 -1, i16 -1, i16 -1, i16 -25686, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28427, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26016, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28347, i16 -29608, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26013, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29623, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29770, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -817, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27029, i16 -26002, i16 -1, i16 -28337, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26810, i16 -1, i16 -1, i16 -24346, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27945, i16 -1, i16 -27019, i16 -1, i16 -1, i16 -27692, i16 -1, i16 -1, i16 -28229, i16 -27015, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26000, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27016, i16 -28211, i16 -1, i16 -25526, i16 -24465, i16 -1, i16 -1, i16 -24470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28321, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30911, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24667, i16 -1, i16 -1, i16 -30278, i16 -1, i16 -30897, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30898, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30891, i16 -1, i16 -1, i16 -1, i16 -24883, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25991, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29454, i16 -1, i16 -1, i16 -1, i16 -29353, i16 -1, i16 -25138, i16 -1, i16 -1, i16 -1, i16 -29486, i16 -1, i16 -1, i16 -1, i16 -30887, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25229, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26951, i16 -1, i16 -26948, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25391, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30281, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24850, i16 -30903, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1213, i16 -30885, i16 -1, i16 -24887, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1069, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29352, i16 -30906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29354, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25224, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25221, i16 -24909, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24910, i16 -1, i16 -25130, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26289, i16 -1, i16 -1, i16 -30258, i16 -1, i16 -1, i16 -1, i16 -29760, i16 -1, i16 -24636, i16 -1, i16 -29740, i16 -1, i16 -1, i16 -29582, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14657, i16 -29703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30394, i16 -1, i16 -14656, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1307, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14213, i16 -29754, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25513, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30256, i16 -30257, i16 -1, i16 -1, i16 -1, i16 -14655, i16 -1, i16 -30255, i16 -1, i16 -30238, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28034, i16 -1, i16 -25158, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14654, i16 -1, i16 -1, i16 -29585, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1032, i16 -1, i16 -1, i16 -1, i16 -29753, i16 -28053, i16 -1, i16 -1, i16 -30254, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24625, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25175, i16 -30253, i16 -1, i16 -1, i16 -26142, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28057, i16 -27996, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29581, i16 -1, i16 -1, i16 -30386, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30385, i16 -28040, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28234, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30252, i16 -1, i16 -24622, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27993, i16 -1, i16 -1, i16 -27230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28050, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26902, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28049, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27997, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30384, i16 -1, i16 -1, i16 -1449, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26522, i16 -1, i16 -1, i16 -1, i16 -29448, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30250, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26446, i16 -1, i16 -1, i16 -1, i16 -27989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26914, i16 -27988, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29584, i16 -1, i16 -24722, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28942, i16 -1, i16 -1, i16 -1, i16 -24724, i16 -30248, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1447, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27992, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28317, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29632, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24717, i16 -1, i16 -27987, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25623, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27991, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27990, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30247, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -682, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24664, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29583, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27999, i16 -1, i16 -1, i16 -28445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24410, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27477, i16 -1, i16 -910, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26684, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27986, i16 -1433, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27998, i16 -1431, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28056, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30383, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1425, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1423, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30382, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27558, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14653, i16 -1, i16 -1, i16 -1, i16 -30243, i16 -1, i16 -14174, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14652, i16 -1, i16 -1, i16 -1, i16 -25006, i16 -1, i16 -30381, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25003, i16 -27974, i16 -1, i16 -1, i16 -14651, i16 -1, i16 -1, i16 -29605, i16 -1, i16 -1, i16 -1, i16 -1411, i16 -1368, i16 -26008, i16 -1465, i16 -1, i16 -1, i16 -1410, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27973, i16 -1, i16 -1, i16 -1, i16 -586, i16 -1, i16 -1374, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1373, i16 -1, i16 -1372, i16 -25676, i16 -1370, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30241, i16 -1, i16 -1, i16 -1, i16 -549, i16 -1, i16 -1, i16 -1367, i16 -1, i16 -30380, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1365, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -902, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30240, i16 -1, i16 -24753, i16 -14211, i16 -1, i16 -1, i16 -30239, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1360, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24627, i16 -24345, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1359, i16 -30298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24838, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1358, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1356, i16 -1, i16 -27964, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24721, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29776, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24660, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30237, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25645, i16 -30236, i16 -1, i16 -1, i16 -1, i16 -1355, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24619, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30379, i16 -1, i16 -1, i16 -27963, i16 -1, i16 -1, i16 -1, i16 -30378, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1357, i16 -1, i16 -1, i16 -1, i16 -1354, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1353, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24868, i16 -1, i16 -1, i16 -1, i16 -1084, i16 -24719, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1350, i16 -27961, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14650, i16 -26036, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29592, i16 -1, i16 -1, i16 -30235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24707, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24407, i16 -1340, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14649, i16 -1, i16 -1, i16 -30377, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1366, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30376, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29725, i16 -1, i16 -29855, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25871, i16 -1, i16 -1, i16 -24905, i16 -1, i16 -14648, i16 -1, i16 -1, i16 -1, i16 -1327, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1326, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24902, i16 -1324, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1319, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1317, i16 -1, i16 -25376, i16 -1, i16 -1, i16 -1, i16 -1033, i16 -1, i16 -1030, i16 -30233, i16 -24454, i16 -1316, i16 -1, i16 -1, i16 -1315, i16 -1, i16 -30231, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14647, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1310, i16 -30229, i16 -1, i16 -1, i16 -1309, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28472, i16 -1, i16 -1, i16 -1, i16 -27942, i16 -30375, i16 -25355, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30374, i16 -1305, i16 -24670, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1302, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1299, i16 -28755, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1191, i16 -1297, i16 -26897, i16 -1, i16 -25108, i16 -1, i16 -1, i16 -1, i16 -25142, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -659, i16 -1, i16 -30228, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1212, i16 -1, i16 -1, i16 -25118, i16 -1, i16 -29579, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24896, i16 -1, i16 -25002, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24711, i16 -25913, i16 -1, i16 -1, i16 -1292, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26463, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1288, i16 -1, i16 -1, i16 -1, i16 -30224, i16 -25017, i16 -1, i16 -1, i16 -25097, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24621, i16 -1, i16 -25910, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30223, i16 -1287, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29094, i16 -1, i16 -30222, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30221, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28067, i16 -29871, i16 -27936, i16 -1, i16 -1, i16 -30220, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24620, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30087, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30219, i16 -26713, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27718, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25000, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30218, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25001, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30217, i16 -1, i16 -30143, i16 -1, i16 -1, i16 -30216, i16 -1, i16 -1, i16 -1295, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30214, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1214, i16 -1, i16 -1345, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1117, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1289, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25010, i16 -1, i16 -27428, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27174, i16 -25096, i16 -24726, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30025, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1210, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30138, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1209, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28344, i16 -1, i16 -1, i16 -1, i16 -27938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29869, i16 -25098, i16 -1, i16 -25638, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25218, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30211, i16 -26140, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25021, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25111, i16 -1, i16 -28846, i16 -1, i16 -1, i16 -1, i16 -25099, i16 -25104, i16 -1, i16 -1, i16 -1, i16 -26137, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29763, i16 -25105, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24649, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25136, i16 -1, i16 -24597, i16 -29271, i16 -25137, i16 -26399, i16 -1, i16 -25115, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25144, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1201, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25109, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1196, i16 -1, i16 -1195, i16 -25950, i16 -1, i16 -29994, i16 -1, i16 -26017, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24843, i16 -1, i16 -1, i16 -1, i16 -28745, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25902, i16 -24982, i16 -24856, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29761, i16 -28222, i16 -25246, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28064, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28066, i16 -28223, i16 -1, i16 -30011, i16 -1, i16 -1, i16 -26717, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29844, i16 -1, i16 -29314, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25516, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25155, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25403, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30373, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1188, i16 -1, i16 -1189, i16 -1, i16 -1193, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30875, i16 -1, i16 -26425, i16 -1190, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25362, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27934, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27481, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29492, i16 -1, i16 -25644, i16 -1, i16 -1, i16 -1180, i16 -1162, i16 -1, i16 -1, i16 -1184, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26139, i16 -1, i16 -1, i16 -25918, i16 -1, i16 -1, i16 -1, i16 -28165, i16 -1, i16 -1, i16 -1, i16 -24461, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24718, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24628, i16 -1, i16 -1, i16 -1, i16 -26459, i16 -27928, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25668, i16 -1, i16 -26893, i16 -1, i16 -1, i16 -27929, i16 -1, i16 -1, i16 -921, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29827, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25612, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24841, i16 -1, i16 -1, i16 -24895, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26257, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26895, i16 -1, i16 -1, i16 -29119, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27318, i16 -1, i16 -1, i16 -1, i16 -26650, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26891, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27930, i16 -24766, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1177, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26199, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1306, i16 -1175, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26651, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27011, i16 -1, i16 -1, i16 -1, i16 -1172, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26206, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25925, i16 -1, i16 -1, i16 -1, i16 -26011, i16 -1, i16 -1, i16 -27570, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1170, i16 -1, i16 -1, i16 -26145, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26397, i16 -1, i16 -1, i16 -28076, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27013, i16 -30033, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29577, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29777, i16 -24899, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24858, i16 -1, i16 -1, i16 -1169, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28959, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25731, i16 -25474, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1575, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27926, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29576, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1166, i16 -1, i16 -1, i16 -1, i16 -1167, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30372, i16 -1, i16 -26384, i16 -26894, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1164, i16 -29759, i16 -1, i16 -30371, i16 -30242, i16 -1, i16 -30370, i16 -1, i16 -1, i16 -14646, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -446, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30872, i16 -1, i16 -1157, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30369, i16 -1, i16 -30368, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25651, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25133, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26548, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26798, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27197, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25674, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25927, i16 -1, i16 -1, i16 -1, i16 -26701, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24716, i16 -27919, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29446, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26657, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1114, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1109, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26505, i16 -1, i16 -1, i16 -1, i16 -26540, i16 -27195, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25259, i16 -1102, i16 -27266, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26814, i16 -1, i16 -27418, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27915, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29499, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27907, i16 -1, i16 -1, i16 -1118, i16 -1, i16 -1, i16 -25519, i16 -1, i16 -1, i16 -27415, i16 -26532, i16 -27920, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27572, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28309, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29832, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27422, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26545, i16 -1, i16 -1099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28047, i16 -1, i16 -1, i16 -27803, i16 -1, i16 -1, i16 -26533, i16 -1, i16 -1, i16 -26544, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26692, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27917, i16 -1, i16 -1, i16 -27840, i16 -26547, i16 -1, i16 -1, i16 -1, i16 -27278, i16 -1, i16 -529, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -575, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1094, i16 -1, i16 -1, i16 -27925, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -909, i16 -26697, i16 -1, i16 -1, i16 -30865, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1100, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28505, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26815, i16 -27916, i16 -1, i16 -30862, i16 -1, i16 -1092, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27273, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24862, i16 -1, i16 -28808, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1572, i16 -1, i16 -1, i16 -1, i16 -27022, i16 -24907, i16 -1, i16 -1, i16 -1, i16 -27061, i16 -1, i16 -1, i16 -1, i16 -29524, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24326, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27275, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28454, i16 -1, i16 -1, i16 -27801, i16 -1, i16 -348, i16 -1, i16 -1, i16 -1, i16 -28449, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27820, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30367, i16 -1, i16 -29772, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25152, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29112, i16 -1, i16 -1083, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1081, i16 -1, i16 -1, i16 -1, i16 -14645, i16 -1, i16 -1415, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24985, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29479, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1070, i16 -30366, i16 -30365, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -899, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24725, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1076, i16 -1, i16 -338, i16 -1, i16 -1, i16 -1, i16 -30867, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1071, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1163, i16 -1068, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1066, i16 -1064, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29859, i16 -1, i16 -27828, i16 -1, i16 -25886, i16 -1, i16 -1, i16 -29751, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1061, i16 -24631, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24764, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26387, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29463, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1059, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29198, i16 -30364, i16 -1, i16 -526, i16 -1, i16 -27827, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1049, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24334, i16 -26520, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24744, i16 -1, i16 -1, i16 -1, i16 -29466, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29325, i16 -1, i16 -1, i16 -1, i16 -1058, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1057, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29624, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30860, i16 -1053, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29272, i16 -1, i16 -1, i16 -1052, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25483, i16 -1, i16 -1, i16 -26504, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29344, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1051, i16 -1, i16 -29343, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29342, i16 -24415, i16 -1, i16 -1, i16 -1, i16 -25536, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26451, i16 -1, i16 -1, i16 -1, i16 -24854, i16 -1, i16 -1, i16 -1, i16 -29460, i16 -1, i16 -1, i16 -29484, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25365, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1056, i16 -1, i16 -1, i16 -24751, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29339, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25359, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -936, i16 -1, i16 -1, i16 -29338, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27052, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1048, i16 -1, i16 -1, i16 -1, i16 -14644, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24626, i16 -1028, i16 -1, i16 -25884, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24715, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1039, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29335, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27825, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27826, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1036, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14642, i16 -1, i16 -1, i16 -1, i16 -1085, i16 -1, i16 -1, i16 -30363, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29574, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29573, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29334, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27821, i16 -1, i16 -1, i16 -25093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1027, i16 -1, i16 -1, i16 -1, i16 -28583, i16 -960, i16 -1, i16 -959, i16 -957, i16 -27807, i16 -954, i16 -27806, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29333, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -948, i16 -29442, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27208, i16 -1, i16 -1, i16 -14640, i16 -29750, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26502, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14639, i16 -1, i16 -943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -940, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29332, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1439, i16 -1, i16 -1, i16 -937, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25744, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24495, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29572, i16 -1, i16 -29749, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27794, i16 -1, i16 -1, i16 -1, i16 -811, i16 -855, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -927, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30362, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1333, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1574, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27782, i16 -1, i16 -24352, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27797, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -917, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24356, i16 -1, i16 -1, i16 -27544, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -915, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29327, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -668, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26182, i16 -1, i16 -1, i16 -1, i16 -25904, i16 -26015, i16 -24347, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24485, i16 -26964, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26816, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24847, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29619, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24706, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29326, i16 -1, i16 -1, i16 -1, i16 -1, i16 -906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26967, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24466, i16 -1, i16 -1, i16 -854, i16 -1, i16 -1, i16 -1, i16 -1075, i16 -1, i16 -1, i16 -1, i16 -908, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24463, i16 -1, i16 -1, i16 -1, i16 -903, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25520, i16 -1, i16 -1, i16 -27783, i16 -27784, i16 -1, i16 -1, i16 -24355, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29323, i16 -1, i16 -29322, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27788, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29321, i16 -859, i16 -1, i16 -1, i16 -862, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28477, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24455, i16 -29319, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29700, i16 -1, i16 -24458, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29747, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24742, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24588, i16 -1, i16 -1, i16 -24646, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29318, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25019, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27728, i16 -1, i16 -24459, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25786, i16 -1, i16 -850, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -848, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1455, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29317, i16 -29316, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24874, i16 -1, i16 -1, i16 -27732, i16 -1, i16 -1, i16 -1, i16 -24741, i16 -1, i16 -27735, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24452, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -846, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30015, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24652, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -852, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25012, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28731, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27731, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25149, i16 -1, i16 -1, i16 -1, i16 -29278, i16 -1, i16 -1, i16 -1, i16 -25270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -842, i16 -1, i16 -1, i16 -29277, i16 -25013, i16 -1, i16 -25011, i16 -29276, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29955, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -843, i16 -1, i16 -829, i16 -27726, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29275, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27743, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30010, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30117, i16 -1, i16 -1, i16 -1, i16 -30387, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30088, i16 -1, i16 -27733, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29273, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24763, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30122, i16 -1, i16 -1, i16 -1, i16 -833, i16 -1, i16 -1, i16 -1, i16 -832, i16 -1, i16 -28954, i16 -1, i16 -1, i16 -30044, i16 -30397, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27661, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -853, i16 -24926, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25145, i16 -1, i16 -1, i16 -1, i16 -14638, i16 -29746, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -827, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -821, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27725, i16 -1, i16 -822, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -823, i16 -29268, i16 -1, i16 -1082, i16 -30361, i16 -1, i16 -29570, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -819, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25357, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -816, i16 -1, i16 -1, i16 -27205, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -813, i16 -1, i16 -1, i16 -812, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29266, i16 -809, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27685, i16 -1, i16 -1, i16 -1, i16 -1, i16 -413, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27691, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -806, i16 -1, i16 -1, i16 -1, i16 -25743, i16 -1, i16 -1, i16 -803, i16 -1, i16 -30876, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29265, i16 -1, i16 -1, i16 -1, i16 -1294, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27688, i16 -1, i16 -1, i16 -1, i16 -801, i16 -1, i16 -1, i16 -1, i16 -27693, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -799, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29066, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -926, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27695, i16 -1, i16 -1, i16 -1, i16 -29263, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26535, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1198, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1197, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1203, i16 -1, i16 -1, i16 -25409, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25742, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1200, i16 -27714, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29477, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25103, i16 -789, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24389, i16 -1, i16 -25730, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29261, i16 -1, i16 -1, i16 -29614, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25880, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28964, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25351, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1456, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26393, i16 -781, i16 -1, i16 -1, i16 -1, i16 -1, i16 -782, i16 -1, i16 -1, i16 -1, i16 -29494, i16 -1, i16 -1, i16 -30859, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27675, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26023, i16 -1, i16 -1, i16 -1, i16 -29259, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -691, i16 -1, i16 -1, i16 -1, i16 -1, i16 -674, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28803, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27321, i16 -778, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28080, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30360, i16 -29258, i16 -773, i16 -24451, i16 -26372, i16 -30359, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -433, i16 -1, i16 -1, i16 -28074, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1335, i16 -1, i16 -1, i16 -27672, i16 -1, i16 -1, i16 -1, i16 -776, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25373, i16 -599, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -956, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27072, i16 -1, i16 -1, i16 -29256, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25782, i16 -28743, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -770, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30358, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29255, i16 -1, i16 -1, i16 -1, i16 -28290, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27660, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1156, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27673, i16 -1, i16 -1, i16 -26641, i16 -1, i16 -1, i16 -1, i16 -438, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -699, i16 -1, i16 -26971, i16 -1, i16 -1, i16 -1, i16 -1, i16 -288, i16 -696, i16 -697, i16 -270, i16 -406, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29251, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25695, i16 -29534, i16 -25929, i16 -28932, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24671, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -687, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1363, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29250, i16 -1, i16 -1, i16 -30300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25895, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -690, i16 -1, i16 -1, i16 -29248, i16 -1, i16 -1, i16 -26640, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27724, i16 -700, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24665, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29246, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26186, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -686, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29247, i16 -1, i16 -1, i16 -29114, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24367, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24630, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27953, i16 -1, i16 -1, i16 -1, i16 -25356, i16 -29244, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25780, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -681, i16 -785, i16 -25378, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -702, i16 -26516, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26631, i16 -1, i16 -27304, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26530, i16 -389, i16 -27443, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27666, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29533, i16 -1, i16 -678, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27659, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27665, i16 -28950, i16 -1, i16 -1, i16 -1, i16 -28837, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29602, i16 -1, i16 -29242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29240, i16 -1, i16 -1, i16 -29241, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27657, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29239, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1038, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27024, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29237, i16 -1, i16 -1, i16 -1, i16 -676, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28827, i16 -1, i16 -1, i16 -1, i16 -29235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25176, i16 -27399, i16 -1, i16 -1, i16 -29234, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27670, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -673, i16 -27664, i16 -24650, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29233, i16 -1, i16 -1, i16 -1, i16 -26781, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29232, i16 -27663, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -670, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -667, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24613, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27656, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29705, i16 -1, i16 -1, i16 -1, i16 -1, i16 -666, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29745, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29231, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -655, i16 -1, i16 -1, i16 -1, i16 -1, i16 -657, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29229, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24601, i16 -28483, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24624, i16 -1, i16 -1, i16 -1, i16 -29744, i16 -1, i16 -654, i16 -1, i16 -25426, i16 -29743, i16 -1, i16 -1, i16 -29989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1308, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27186, i16 -1, i16 -650, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1182, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29228, i16 -1, i16 -1, i16 -1, i16 -648, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28957, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28554, i16 -1, i16 -1, i16 -26426, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29227, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26671, i16 -1, i16 -1, i16 -24906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1337, i16 -1, i16 -1, i16 -24510, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26509, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24580, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29531, i16 -29225, i16 -1, i16 -1, i16 -27909, i16 -29224, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27569, i16 -1, i16 -29223, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30357, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26674, i16 -1, i16 -1, i16 -1, i16 -1293, i16 -594, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1105, i16 -27977, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29222, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25510, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -595, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29220, i16 -27580, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29219, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24362, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29631, i16 -26667, i16 -1, i16 -27574, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27571, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26677, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29218, i16 -1, i16 -1, i16 -29217, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29216, i16 -263, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -576, i16 -775, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29475, i16 -1, i16 -1154, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27981, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -593, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27181, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30271, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -664, i16 -1, i16 -1, i16 -25417, i16 -1, i16 -1, i16 -29213, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1344, i16 -29211, i16 -1436, i16 -1, i16 -30393, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29212, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29209, i16 -29208, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -569, i16 -592, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27579, i16 -26666, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -826, i16 -26556, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29207, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29206, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -432, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -564, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25177, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -563, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -561, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27182, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29203, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -838, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -571, i16 -1, i16 -558, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25380, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27185, i16 -1, i16 -1, i16 -29202, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -556, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26900, i16 -26901, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28490, i16 -1, i16 -573, i16 -26453, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26898, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29196, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -544, i16 -1, i16 -29593, i16 -1, i16 -1, i16 -29194, i16 -1, i16 -1, i16 -1, i16 -29193, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28678, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26672, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29742, i16 -1, i16 -1, i16 -29192, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28455, i16 -1, i16 -29625, i16 -1, i16 -1296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -543, i16 -29191, i16 -1, i16 -541, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29190, i16 -1, i16 -1181, i16 -1, i16 -1, i16 -1, i16 -28506, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26256, i16 -1, i16 -1, i16 -28181, i16 -1, i16 -26768, i16 -26513, i16 -542, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26382, i16 -1, i16 -25860, i16 -30356, i16 -515, i16 -1, i16 -1, i16 -26274, i16 -1, i16 -1, i16 -1, i16 -27203, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -540, i16 -1, i16 -1, i16 -1, i16 -28186, i16 -1, i16 -1, i16 -1, i16 -1, i16 -539, i16 -538, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -537, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27564, i16 -1, i16 -1, i16 -1, i16 -26184, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26647, i16 -27834, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26525, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27204, i16 -1, i16 -531, i16 -521, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26512, i16 -26890, i16 -29015, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27567, i16 -1, i16 -1, i16 -29117, i16 -1, i16 -29862, i16 -1, i16 -1, i16 -1, i16 -1, i16 -530, i16 -1, i16 -1, i16 -1, i16 -1, i16 -528, i16 -1, i16 -1, i16 -1, i16 -1, i16 -524, i16 -1, i16 -25611, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29458, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26754, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25643, i16 -1, i16 -25917, i16 -1, i16 -26680, i16 -24357, i16 -28208, i16 -1, i16 -1, i16 -24604, i16 -1, i16 -28707, i16 -1, i16 -28183, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26400, i16 -1, i16 -1, i16 -1, i16 -27958, i16 -1, i16 -26537, i16 -1, i16 -1, i16 -29615, i16 -1, i16 -1, i16 -1, i16 -1, i16 -533, i16 -1, i16 -25783, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25226, i16 -24913, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25396, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -534, i16 -1, i16 -1, i16 -29199, i16 -1, i16 -1, i16 -517, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29101, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26887, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26433, i16 -25015, i16 -29529, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25654, i16 -1, i16 -1, i16 -1, i16 -1, i16 -514, i16 -27940, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -447, i16 -28212, i16 -28190, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -444, i16 -30881, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29741, i16 -1, i16 -1, i16 -441, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -440, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27563, i16 -1, i16 -1, i16 -1, i16 -1, i16 -437, i16 -1, i16 -436, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29249, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24968, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -431, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27562, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25247, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27561, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26266, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29739, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24471, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26444, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24503, i16 -24500, i16 -1, i16 -24987, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26443, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -424, i16 -1, i16 -26251, i16 -429, i16 -24475, i16 -1, i16 -423, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26441, i16 -26440, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26438, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26437, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24644, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24502, i16 -1, i16 -1, i16 -24889, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29527, i16 -1, i16 -1, i16 -26450, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27946, i16 -1, i16 -1, i16 -1, i16 -1311, i16 -1, i16 -28204, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1314, i16 -1, i16 -1, i16 -421, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29613, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -418, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1065, i16 -422, i16 -27451, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1334, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26431, i16 -26788, i16 -1, i16 -396, i16 -1, i16 -26765, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1466, i16 -1, i16 -1, i16 -1, i16 -26780, i16 -1, i16 -1, i16 -1, i16 -408, i16 -1, i16 -27058, i16 -1, i16 -26779, i16 -29606, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30303, i16 -27142, i16 -1, i16 -27948, i16 -407, i16 -1, i16 -1211, i16 -1, i16 -26424, i16 -1, i16 -1, i16 -28433, i16 -1, i16 -26423, i16 -26422, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27539, i16 -27465, i16 -404, i16 -1, i16 -1, i16 -27541, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27908, i16 -1, i16 -27157, i16 -1, i16 -397, i16 -26770, i16 -417, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -579, i16 -1, i16 -1, i16 -27947, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -327, i16 -1, i16 -1, i16 -399, i16 -30856, i16 -1, i16 -1, i16 -1, i16 -1093, i16 -1, i16 -1, i16 -27526, i16 -1, i16 -1, i16 -27141, i16 -393, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -391, i16 -1, i16 -395, i16 -1, i16 -1, i16 -1, i16 -27555, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -388, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27836, i16 -29018, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27949, i16 -1, i16 -27464, i16 -1, i16 -30855, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -911, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26786, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29523, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -345, i16 -1, i16 -1, i16 -1, i16 -27542, i16 -1, i16 -1, i16 -1, i16 -27677, i16 -1, i16 -1, i16 -26417, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24359, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24385, i16 -24499, i16 -24392, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24370, i16 -24393, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -343, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30269, i16 -1, i16 -1, i16 -1, i16 -1, i16 -341, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25100, i16 -30355, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25477, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26414, i16 -1, i16 -1, i16 -1, i16 -24663, i16 -1, i16 -1, i16 -1, i16 -334, i16 -1, i16 -1, i16 -335, i16 -1, i16 -1, i16 -1, i16 -26663, i16 -1, i16 -24380, i16 -1, i16 -27530, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26248, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -333, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26413, i16 -332, i16 -1, i16 -1, i16 -1, i16 -26412, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24647, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27535, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26411, i16 -328, i16 -1, i16 -1, i16 -1, i16 -14636, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -326, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24996, i16 -1, i16 -1, i16 -325, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24508, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26409, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26408, i16 -324, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24578, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -323, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25123, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24863, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26406, i16 -25121, i16 -321, i16 -1, i16 -322, i16 -1, i16 -1, i16 -24853, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24999, i16 -24484, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -320, i16 -1, i16 -1, i16 -1, i16 -27529, i16 -26404, i16 -1, i16 -319, i16 -1, i16 -1, i16 -1, i16 -26402, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -317, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -312, i16 -1, i16 -1, i16 -1, i16 -311, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -310, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -309, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24638, i16 -1, i16 -1, i16 -29589, i16 -26428, i16 -1, i16 -27472, i16 -27471, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24383, i16 -1, i16 -302, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24371, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -301, i16 -1, i16 -1, i16 -26395, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28188, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28729, i16 -27474, i16 -1, i16 -30129, i16 -27470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26390, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25120, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26386, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27196, i16 -1, i16 -792, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26385, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29586, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -292, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24402, i16 -25268, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26383, i16 -1, i16 -1, i16 -1, i16 -26381, i16 -1, i16 -27455, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26379, i16 -1, i16 -1, i16 -1457, i16 -26910, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27568, i16 -1, i16 -26974, i16 -1, i16 -1, i16 -26378, i16 -1, i16 -1, i16 -1, i16 -26907, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26377, i16 -1, i16 -24506, i16 -26909, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26376, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24860, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1578, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27453, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27454, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -287, i16 -1, i16 -279, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26908, i16 -1, i16 -30292, i16 -26917, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -286, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27452, i16 -285, i16 -1, i16 -1, i16 -1, i16 -281, i16 -24581, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29607, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27703, i16 -1, i16 -27416, i16 -1194, i16 -1, i16 -1, i16 -1, i16 -28475, i16 -24408, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -283, i16 -1, i16 -1, i16 -1, i16 -26371, i16 -26373, i16 -280, i16 -1, i16 -28993, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29736, i16 -265, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28824, i16 -27450, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25110, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -919, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25382, i16 -1, i16 -269, i16 -1, i16 -1, i16 -25486, i16 -1, i16 -1, i16 -272, i16 -30263, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26302, i16 -1, i16 -1, i16 -1, i16 -267, i16 -1, i16 -28201, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27444, i16 -1, i16 -1, i16 -1, i16 -264, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26712, i16 -1, i16 -260, i16 -1, i16 -1, i16 -1, i16 -29474, i16 -1, i16 -577, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -258, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26927, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27435, i16 -1, i16 -1, i16 -27440, i16 -26300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29597, i16 -1, i16 -1, i16 -24397, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27441, i16 -1, i16 -1, i16 -1, i16 -24582, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28187, i16 -1, i16 -25494, i16 -1, i16 -1, i16 -1, i16 -29111, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29108, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29107, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25997, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26297, i16 -1, i16 -29519, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29104, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29105, i16 -26295, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29103, i16 -29102, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25934, i16 -30299, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26292, i16 -1, i16 -1, i16 -1, i16 -24584, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29098, i16 -26291, i16 -28214, i16 -29097, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27423, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28601, i16 -1, i16 -28712, i16 -29096, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27413, i16 -29092, i16 -27309, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24603, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24746, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27313, i16 -1, i16 -29090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25500, i16 -25383, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29091, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26288, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26287, i16 -1, i16 -1, i16 -29086, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26286, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29080, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29087, i16 -24743, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29773, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24739, i16 -29082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29518, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29074, i16 -1, i16 -24732, i16 -26285, i16 -1, i16 -1, i16 -1352, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26284, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29072, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24735, i16 -1, i16 -29070, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24469, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24768, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27411, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27410, i16 -1, i16 -1, i16 -24643, i16 -1, i16 -1, i16 -1, i16 -29061, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26281, i16 -27401, i16 -1, i16 -24737, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29069, i16 -1, i16 -1, i16 -24734, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27402, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26280, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29067, i16 -1573, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28558, i16 -1, i16 -27400, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26278, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24400, i16 -29517, i16 -1, i16 -1, i16 -1, i16 -29063, i16 -1, i16 -29064, i16 -1, i16 -1, i16 -1, i16 -27405, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26449, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24398, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29062, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26276, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29060, i16 -1, i16 -29059, i16 -1, i16 -1, i16 -1, i16 -29735, i16 -1, i16 -1, i16 -30302, i16 -24873, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24394, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25022, i16 -1, i16 -1, i16 -29020, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29017, i16 -1, i16 -29578, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30873, i16 -1, i16 -27326, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26499, i16 -1, i16 -1, i16 -1, i16 -26795, i16 -1, i16 -1, i16 -29016, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29014, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30301, i16 -1, i16 -26272, i16 -26270, i16 -1, i16 -1, i16 -27396, i16 -26271, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27398, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29010, i16 -29006, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29008, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26269, i16 -26710, i16 -27397, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28997, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29476, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26506, i16 -1, i16 -29023, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29516, i16 -1, i16 -29001, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25178, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24912, i16 -1, i16 -1, i16 -1, i16 -29000, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25232, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30354, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30353, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30352, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30351, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30349, i16 -30348, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30347, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28996, i16 -28995, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28994, i16 -1, i16 -25135, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27395, i16 -1, i16 -1, i16 -1, i16 -29737, i16 -29734, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24599, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -600, i16 -1, i16 -1, i16 -1, i16 -29977, i16 -1, i16 -1, i16 -1, i16 -28990, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28988, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26268, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26267, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27314, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28981, i16 -29729, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28978, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28977, i16 -1, i16 -1, i16 -26264, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26263, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26261, i16 -28975, i16 -1, i16 -26260, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28972, i16 -28971, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26259, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24386, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28970, i16 -24388, i16 -24395, i16 -1, i16 -1, i16 -24396, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29728, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30283, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28963, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24995, i16 -26255, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30290, i16 -25112, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27291, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26254, i16 -1, i16 -1, i16 -29860, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30287, i16 -24384, i16 -1, i16 -1, i16 -1, i16 -28961, i16 -1, i16 -27290, i16 -1, i16 -1, i16 -26252, i16 -1, i16 -26250, i16 -1, i16 -1, i16 -1, i16 -26249, i16 -1, i16 -26247, i16 -1, i16 -1, i16 -25126, i16 -1, i16 -1, i16 -28960, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27812, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25114, i16 -1, i16 -29857, i16 -1, i16 -1, i16 -27293, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27289, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25117, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26244, i16 -1, i16 -1, i16 -26243, i16 -26242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29445, i16 -29861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26205, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26204, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26202, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26200, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30018, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24991, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26198, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24376, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26197, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -316, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26430, i16 -28952, i16 -1, i16 -24390, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -649, i16 -1, i16 -1, i16 -28946, i16 -1, i16 -1, i16 -1, i16 -24897, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26196, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27285, i16 -1, i16 -1, i16 -27284, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26193, i16 -1, i16 -1, i16 -26294, i16 -30346, i16 -28856, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1042, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26194, i16 -1, i16 -1, i16 -1, i16 -28933, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29488, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29870, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26192, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30345, i16 -28863, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26191, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28855, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1459, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25116, i16 -29515, i16 -1, i16 -1, i16 -1, i16 -1047, i16 -25772, i16 -1, i16 -26190, i16 -24984, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28854, i16 -1, i16 -28862, i16 -1, i16 -1, i16 -28847, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26554, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26188, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28939, i16 -683, i16 -1, i16 -1, i16 -25395, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30344, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28845, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28817, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29085, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28842, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -394, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24634, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1364, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28840, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26552, i16 -26185, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27035, i16 -1, i16 -1428, i16 -1, i16 -25113, i16 -1, i16 -1, i16 -1, i16 -24990, i16 -1, i16 -1, i16 -1, i16 -26932, i16 -29081, i16 -1, i16 -1, i16 -907, i16 -1, i16 -26498, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -583, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26628, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26375, i16 -1, i16 -28826, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27282, i16 -1, i16 -28091, i16 -1, i16 -1, i16 -28832, i16 -1, i16 -1, i16 -1, i16 -24879, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -307, i16 -1, i16 -26183, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28830, i16 -26804, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28217, i16 -27297, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26181, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29075, i16 -28815, i16 -1, i16 -1, i16 -27445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25870, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26941, i16 -26179, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24369, i16 -1, i16 -1, i16 -1, i16 -28819, i16 -1, i16 -1, i16 -26178, i16 -28940, i16 -1, i16 -28814, i16 -27164, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26177, i16 -28094, i16 -1, i16 -1115, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26176, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -588, i16 -28809, i16 -1, i16 -1, i16 -1, i16 -26175, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1351, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28864, i16 -1468, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26174, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28836, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29507, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26172, i16 -26171, i16 -1, i16 -1, i16 -28805, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30858, i16 -1, i16 -1, i16 -1, i16 -29514, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28765, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29490, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26170, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26931, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26937, i16 -28763, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1349, i16 -1, i16 -29599, i16 -27280, i16 -1, i16 -1, i16 -1, i16 -27800, i16 -1, i16 -28802, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28758, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24496, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28461, i16 -1, i16 -1, i16 -27306, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28744, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26168, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28753, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26167, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27271, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24759, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26166, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26165, i16 -25131, i16 -28752, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1414, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24993, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26163, i16 -24375, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25893, i16 -1, i16 -1, i16 -1, i16 -24378, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28748, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24377, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24509, i16 -1, i16 -1, i16 -1, i16 -28747, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28750, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24479, i16 -24994, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28746, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24600, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25422, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27268, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24633, i16 -1, i16 -1, i16 -28741, i16 -28740, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28692, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28736, i16 -1, i16 -27798, i16 -1, i16 -1, i16 -1, i16 -29724, i16 -25476, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27231, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -276, i16 -1, i16 -1, i16 -27229, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29627, i16 -29512, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28735, i16 -1, i16 -1, i16 -1, i16 -24494, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26160, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28733, i16 -28732, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27228, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28730, i16 -1, i16 -24992, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1576, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27227, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25421, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26159, i16 -271, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26158, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25406, i16 -1, i16 -1, i16 -1, i16 -26157, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27225, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27223, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27226, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25507, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26398, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28727, i16 -1, i16 -24382, i16 -28726, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26156, i16 -1, i16 -1, i16 -24391, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25768, i16 -1, i16 -28723, i16 -1, i16 -24364, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28722, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29723, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30343, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28720, i16 -27210, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26154, i16 -1, i16 -27163, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26153, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27211, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24374, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24579, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24488, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28714, i16 -1, i16 -1, i16 -1, i16 -26152, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28717, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28699, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28695, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26151, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29449, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28036, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25531, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29464, i16 -28706, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28705, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24501, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28702, i16 -1, i16 -1, i16 -1, i16 -24372, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28701, i16 -28700, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25660, i16 -1, i16 -1, i16 -1, i16 -25604, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27060, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25866, i16 -1, i16 -29522, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28697, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28696, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29721, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30342, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30341, i16 -26150, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28691, i16 -1, i16 -1, i16 -1, i16 -27200, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24373, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25016, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26149, i16 -1, i16 -28685, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28679, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27199, i16 -1, i16 -24498, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26148, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24476, i16 -28681, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30288, i16 -24504, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28677, i16 -28682, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25124, i16 -1, i16 -1, i16 -1, i16 -26147, i16 -29720, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27967, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24618, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24366, i16 -1, i16 -1, i16 -28608, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30012, i16 -1, i16 -1, i16 -26144, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24592, i16 -24589, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25153, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24586, i16 -1, i16 -27192, i16 -1, i16 -1, i16 -24998, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26141, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30134, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24591, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30041, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26138, i16 -1, i16 -1, i16 -1, i16 -24585, i16 -1, i16 -24595, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30116, i16 -1, i16 -25170, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27191, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28600, i16 -1, i16 -1, i16 -26136, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28599, i16 -1, i16 -1, i16 -29510, i16 -1, i16 -1, i16 -28495, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28598, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26134, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25647, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26133, i16 -1, i16 -26132, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26131, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26130, i16 -28596, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28595, i16 -1, i16 -1, i16 -27189, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26654, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27188, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24712, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30340, i16 -30339, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30338, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26275, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25766, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28592, i16 -1, i16 -29617, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28588, i16 -1, i16 -14634, i16 -25944, i16 -26129, i16 -277, i16 -25181, i16 -25183, i16 -26301, i16 -26299, i16 -1, i16 -25219, i16 -1, i16 -1, i16 -26128, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26127, i16 -1, i16 -26126, i16 -1, i16 -1, i16 -29508, i16 -25248, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24413, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28581, i16 -24869, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25223, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26125, i16 -1, i16 -1, i16 -1, i16 -28574, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24747, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25607, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28571, i16 -1, i16 -1, i16 -26912, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26434, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28568, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28564, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27176, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28566, i16 -24654, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24658, i16 -1, i16 -1, i16 -24656, i16 -1, i16 -30291, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28562, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24975, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25014, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24612, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30293, i16 -1, i16 -24648, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28560, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29853, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27172, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28559, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -930, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30391, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27045, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29616, i16 -1, i16 -1, i16 -1, i16 -27482, i16 -1, i16 -1, i16 -1, i16 -28715, i16 -24973, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28555, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26121, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29505, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26119, i16 -1, i16 -27037, i16 -27207, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27436, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -774, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28553, i16 -1, i16 -1, i16 -28501, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25267, i16 -1, i16 -1, i16 -26118, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27933, i16 -1, i16 -26693, i16 -1, i16 -1, i16 -28552, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26117, i16 -1, i16 -1, i16 -26656, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26916, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25432, i16 -1, i16 -1, i16 -26766, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27584, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27918, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26115, i16 -1, i16 -1, i16 -26116, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1577, i16 -27062, i16 -1, i16 -1, i16 -1, i16 -26920, i16 -26114, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28597, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1471, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26048, i16 -1, i16 -26789, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26047, i16 -28195, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27652, i16 -26046, i16 -26045, i16 -1, i16 -27047, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26044, i16 -28591, i16 -1, i16 -1, i16 -1, i16 -27457, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28510, i16 -1, i16 -1, i16 -1, i16 -25429, i16 -26762, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -939, i16 -443, i16 -27480, i16 -26043, i16 -1461, i16 -25119, i16 -1, i16 -1, i16 -26919, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26764, i16 -1, i16 -1, i16 -523, i16 -1, i16 -1, i16 -1, i16 -27931, i16 -1, i16 -27067, i16 -28198, i16 -1, i16 -28509, i16 -1, i16 -1, i16 -24481, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28497, i16 -26689, i16 -1, i16 -1, i16 -1, i16 -28340, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27014, i16 -1, i16 -1, i16 -1, i16 -28194, i16 -1, i16 -1, i16 -26042, i16 -336, i16 -26759, i16 -27540, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26536, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28058, i16 -1, i16 -1, i16 -1, i16 -27653, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26041, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26807, i16 -1, i16 -1, i16 -26808, i16 -1, i16 -27830, i16 -1, i16 -25374, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28060, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28193, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1159, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26921, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27837, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -565, i16 -390, i16 -1, i16 -28197, i16 -29590, i16 -26705, i16 -1, i16 -1, i16 -27171, i16 -1, i16 -1, i16 -1, i16 -27832, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26037, i16 -1, i16 -1, i16 -1, i16 -955, i16 -1, i16 -26035, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28228, i16 -28446, i16 -28492, i16 -27167, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26034, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26033, i16 -1, i16 -1, i16 -1, i16 -448, i16 -445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26915, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26031, i16 -1, i16 -1, i16 -1, i16 -26969, i16 -1, i16 -1, i16 -28496, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25522, i16 -1, i16 -27581, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28998, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26030, i16 -1, i16 -831, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29719, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25425, i16 -1, i16 -1, i16 -29699, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25924, i16 -1, i16 -25928, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25945, i16 -26029, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25228, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29718, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29717, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28494, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27159, i16 -27160, i16 -1, i16 -27162, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28491, i16 -1, i16 -26028, i16 -1, i16 -1, i16 -1, i16 -28493, i16 -27161, i16 -1, i16 -1, i16 -29872, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26026, i16 -29701, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26025, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24406, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24666, i16 -1, i16 -1, i16 -1, i16 -26164, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25511, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26187, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28482, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24657, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27150, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28481, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28479, i16 -1, i16 -284, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28476, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28473, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27932, i16 -24750, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28453, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24474, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28462, i16 -1, i16 -1, i16 -30869, i16 -1, i16 -28460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26021, i16 -27139, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29756, i16 -1, i16 -1, i16 -1, i16 -29594, i16 -1, i16 -28450, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25372, i16 -1, i16 -28447, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25018, i16 -1, i16 -1, i16 -1, i16 -27055, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1192, i16 -1, i16 -28442, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27056, i16 -1, i16 -1, i16 -1, i16 -28441, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28440, i16 -26019, i16 -1, i16 -24710, i16 -1, i16 -1, i16 -1, i16 -25764, i16 -1, i16 -24708, i16 -1, i16 -1, i16 -942, i16 -28439, i16 -1, i16 -28438, i16 -1, i16 -26018, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24714, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28437, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28436, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29714, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28434, i16 -1, i16 -1, i16 -1, i16 -28218, i16 -1, i16 -1, i16 -28430, i16 -836, i16 -30092, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27049, i16 -1, i16 -1, i16 -1, i16 -25361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24609, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28425, i16 -28426, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25762, i16 -1, i16 -1, i16 -1, i16 -28424, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29444, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28423, i16 -1, i16 -29495, i16 -1, i16 -1, i16 -1, i16 -1430, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29713, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24608, i16 -1, i16 -1, i16 -28350, i16 -1, i16 -26014, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27287, i16 -1, i16 -1, i16 -1, i16 -28348, i16 -28349, i16 -1, i16 -28351, i16 -1, i16 -1, i16 -1, i16 -29712, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27040, i16 -1, i16 -29711, i16 -1, i16 -26122, i16 -28343, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28342, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28341, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26012, i16 -1, i16 -1, i16 -1, i16 -30017, i16 -26010, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26009, i16 -1, i16 -1, i16 -26007, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26006, i16 -27054, i16 -28339, i16 -1, i16 -27034, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24709, i16 -1, i16 -26005, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24468, i16 -1, i16 -1, i16 -27033, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26004, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26003, i16 -29710, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27030, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -790, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27028, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28220, i16 -1, i16 -1, i16 -1, i16 -27017, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26124, i16 -26001, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24661, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29506, i16 -28991, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27307, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28334, i16 -28333, i16 -1, i16 -1, i16 -1, i16 -28331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27299, i16 -1, i16 -27023, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25491, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27021, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28332, i16 -25999, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28330, i16 -1, i16 -1, i16 -1, i16 -27027, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27305, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30266, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30265, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30102, i16 -1, i16 -1, i16 -1, i16 -29865, i16 -1, i16 -1, i16 -1, i16 -24607, i16 -1, i16 -1, i16 -25761, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24483, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28325, i16 -1, i16 -28324, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28322, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24740, i16 -24745, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24731, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25998, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24738, i16 -1, i16 -1, i16 -28319, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28316, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24767, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28311, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28312, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25996, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26958, i16 -1, i16 -25995, i16 -1, i16 -603, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24855, i16 -1, i16 -29766, i16 -28307, i16 -24480, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24610, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24637, i16 -1, i16 -26955, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24473, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26957, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25994, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27179, i16 -1, i16 -1, i16 -1, i16 -24886, i16 -1, i16 -1, i16 -1, i16 -25993, i16 -1, i16 -1, i16 -25992, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28304, i16 -28305, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24669, i16 -1, i16 -28303, i16 -1, i16 -1, i16 -1, i16 -26959, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24733, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24729, i16 -1, i16 -1, i16 -1, i16 -29767, i16 -25990, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29866, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25894, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26960, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25986, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25122, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26963, i16 -1, i16 -1, i16 -1, i16 -26962, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24927, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25008, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26961, i16 -29708, i16 -24668, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26947, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26892, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26952, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1375, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28249, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24482, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25987, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30392, i16 -1, i16 -24911, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25125, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27201, i16 -30093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24834, i16 -1, i16 -28294, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28293, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25949, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26942, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24713, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25948, i16 -1, i16 -1, i16 -25947, i16 -1, i16 -1, i16 -1, i16 -28255, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30280, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28301, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25946, i16 -30275, i16 -1, i16 -30279, i16 -1, i16 -28291, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26949, i16 -1, i16 -1, i16 -1, i16 -24590, i16 -1, i16 -1, i16 -29707, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24748, i16 -1, i16 -1, i16 -24605, i16 -24851, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28246, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28245, i16 -24464, i16 -1, i16 -24723, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28244, i16 -1, i16 -1, i16 -1, i16 -28243, i16 -1, i16 -1, i16 -1, i16 -24323, i16 -1, i16 -24606, i16 -1, i16 -28241, i16 -25023, i16 -25942, i16 -1, i16 -1, i16 -28240, i16 -1, i16 -25941, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25940, i16 -1, i16 -26038, i16 -1, i16 -28238, i16 -1, i16 -1, i16 -29706, i16 -1, i16 -25939, i16 -30282, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25937, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25936, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25935, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25951, i16 -28231, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28226, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24511, i16 -29769, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28224, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25933, i16 -28221, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24324, i16 -1, i16 -1, i16 -24594, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24727, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28216, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29210, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28213, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30264, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24611, i16 -29629, i16 -29587, i16 -29580, i16 -29513, i16 -29511, i16 -29509, i16 -29504, i16 -29481, i16 -29480, i16 -29478, i16 -14175, i16 -14173, i16 -29459, i16 -29368, i16 -29704, i16 -14128, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14129, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14620, i16 -1, i16 -14619, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14131, i16 -1, i16 -14130, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1538], align 16
@__big5hkscs_nonbmp_encmap = internal constant [29306 x i16] [i16 -25487, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27787, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27786, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28986, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29755, i16 -29702, i16 -1, i16 -1, i16 -14212, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25932, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30642, i16 -30645, i16 -14214, i16 -30648, i16 -1, i16 -1, i16 -1, i16 -30649, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24330, i16 -30651, i16 -1, i16 -30637, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -851, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29451, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30035, i16 -1, i16 -28046, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -953, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27425, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24623, i16 -1077, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28035, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29447, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27417, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28469, i16 -28037, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27432, i16 -1, i16 -1, i16 -1, i16 -1, i16 -929, i16 -1, i16 -1452, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25931, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26918, i16 -28039, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1420, i16 -28043, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29189, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30135, i16 -1, i16 -1, i16 -1, i16 -27937, i16 -25732, i16 -1437, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1440, i16 -28051, i16 -1438, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25930, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26773, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -662, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -684, i16 -1, i16 -28045, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26664, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24645, i16 -27838, i16 -28042, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1435, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28052, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1426, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24864, i16 -1, i16 -1, i16 -27968, i16 -27969, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27970, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25926, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30029, i16 -1, i16 -26763, i16 -1472, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1418, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1072, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1413, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -403, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25677, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30260, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25922, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1470, i16 -27972, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27556, i16 -25675, i16 -1, i16 -1, i16 -1, i16 -25921, i16 -1, i16 -1, i16 -1, i16 -26457, i16 -26716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -901, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25920, i16 -27965, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30038, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25648, i16 -27312, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27962, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26458, i16 -27322, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -669, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1342, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24893, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30286, i16 -25498, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28589, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29598, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26687, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25916, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25915, i16 -28945, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29376, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28062, i16 -29961, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25914, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27935, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25911, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1338, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26715, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25909, i16 -1, i16 -1, i16 -1, i16 -1422, i16 -30114, i16 -1, i16 -27424, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27956, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29979, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -420, i16 -25908, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25095, i16 -30141, i16 -30042, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25907, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1298, i16 -25652, i16 -1, i16 -1, i16 -1, i16 -25905, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25903, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25094, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25220, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25901, i16 -1, i16 -1, i16 -26714, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26273, i16 -1, i16 -1, i16 -1, i16 -1034, i16 -24635, i16 -30119, i16 -29845, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25899, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26718, i16 -30140, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24758, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28511, i16 -604, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30108, i16 -29966, i16 -29960, i16 -25128, i16 -1, i16 -1, i16 -27434, i16 -1282, i16 -1113, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25898, i16 -1, i16 -24755, i16 -1, i16 -1, i16 -1290, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30121, i16 -1, i16 -29885, i16 -29884, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30026, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30016, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25004, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25897, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25896, i16 -25892, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30006, i16 -24920, i16 -1, i16 -1, i16 -28061, i16 -25891, i16 -29851, i16 -29841, i16 -29826, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27952, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29964, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25154, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25887, i16 -1, i16 -802, i16 -25091, i16 -29850, i16 -29840, i16 -29835, i16 -29980, i16 -29788, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29971, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30115, i16 -1, i16 -29880, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25107, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25024, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29969, i16 -29962, i16 -24970, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25890, i16 -29186, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1284, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25423, i16 -24969, i16 -29852, i16 -29849, i16 -26805, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27053, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25888, i16 -29878, i16 -1, i16 -29967, i16 -29993, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24405, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30027, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30113, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29970, i16 -1, i16 -1, i16 -25889, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29954, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30120, i16 -29789, i16 -29785, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25885, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28063, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25129, i16 -24963, i16 -24921, i16 -24917, i16 -28606, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29831, i16 -29830, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25882, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25883, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25020, i16 -25881, i16 -30084, i16 -29839, i16 -1, i16 -1, i16 -25879, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25878, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25877, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30019, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1202, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25875, i16 -29959, i16 -24989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29879, i16 -30002, i16 -29842, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29976, i16 -1, i16 -1, i16 -1, i16 -25874, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27954, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30118, i16 -29829, i16 -29828, i16 -25873, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25872, i16 -1, i16 -29958, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30399, i16 -1, i16 -1, i16 -29838, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29965, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29784, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24914, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24974, i16 -1165, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1185, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28486, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28162, i16 -24842, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26643, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25869, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24338, i16 -27012, i16 -27835, i16 -26514, i16 -1450, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25867, i16 -1, i16 -1, i16 -1, i16 -949, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25868, i16 -290, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -841, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26639, i16 -1, i16 -1, i16 -1, i16 -26681, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25397, i16 -28096, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25368, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28163, i16 -26802, i16 -1, i16 -1, i16 -1176, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26772, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29502, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26648, i16 -1, i16 -1174, i16 -29836, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28953, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -568, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28095, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26975, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28941, i16 -25865, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28762, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1322, i16 -25401, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1321, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25864, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1119, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28987, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1116, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1086, i16 -1, i16 -25919, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28166, i16 -293, i16 -26709, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28345, i16 -1, i16 -1103, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28694, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27438, i16 -415, i16 -1330, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27923, i16 -28173, i16 -27706, i16 -1, i16 -27814, i16 -1285, i16 -1, i16 -1, i16 -27921, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1336, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26553, i16 -27802, i16 -26539, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24765, i16 -24662, i16 -27430, i16 -27922, i16 -849, i16 -1029, i16 -1, i16 -28935, i16 -28170, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27804, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27403, i16 -25418, i16 -1107, i16 -26546, i16 -28860, i16 -26883, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25863, i16 -1, i16 -1, i16 -1, i16 -25862, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26775, i16 -27180, i16 -26549, i16 -1110, i16 -1, i16 -1, i16 -26500, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28182, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25169, i16 -25147, i16 -1, i16 -28175, i16 -29007, i16 -26711, i16 -1108, i16 -840, i16 -25415, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1104, i16 -814, i16 -27701, i16 -1, i16 -1, i16 -25859, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28172, i16 -29780, i16 -24491, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27276, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27202, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26707, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28951, i16 -1, i16 -1, i16 -27912, i16 -26690, i16 -28308, i16 -27478, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -925, i16 -1, i16 -1, i16 -1, i16 -25146, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26699, i16 -27976, i16 -28177, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -346, i16 -26784, i16 -27816, i16 -27274, i16 -28756, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28180, i16 -26700, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28169, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26806, i16 -1207, i16 -27272, i16 -27716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28202, i16 -27819, i16 -27818, i16 -26543, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28680, i16 -1088, i16 -27662, i16 -1, i16 -1, i16 -28464, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25532, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28075, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27805, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28251, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24339, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -661, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25858, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27823, i16 -1, i16 -1, i16 -1, i16 -29609, i16 -1, i16 -1, i16 -1416, i16 -1, i16 -1, i16 -1, i16 -1, i16 -344, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27824, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27913, i16 -25792, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1074, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25791, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -339, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30879, i16 -1067, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29758, i16 -25988, i16 -25790, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25789, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24967, i16 -1, i16 -1, i16 -1063, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25788, i16 -24409, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30866, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25613, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29575, i16 -1, i16 -1, i16 -1, i16 -27810, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30261, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24749, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27689, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1055, i16 -304, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29455, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1054, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -797, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28556, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1050, i16 -1, i16 -1, i16 -1, i16 -25673, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25787, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25785, i16 -24752, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25784, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -933, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26455, i16 -1, i16 -1, i16 -25347, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30644, i16 -25781, i16 -1, i16 -1, i16 -1, i16 -1044, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29591, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25688, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29995, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1421, i16 -679, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28254, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1043, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25431, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30040, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29374, i16 -1, i16 -25661, i16 -29983, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25778, i16 -27184, i16 -1, i16 -1, i16 -1, i16 -28577, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26642, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -946, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25777, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25776, i16 -24890, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -944, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -653, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -601, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25182, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1448, i16 -1442, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24487, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25438, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27792, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27791, i16 -27785, i16 -273, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27795, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -931, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28488, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29956, i16 -1, i16 -1215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24981, i16 -27421, i16 -28958, i16 -29571, i16 -1, i16 -28969, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25523, i16 -1, i16 -1, i16 -1, i16 -26973, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25775, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30013, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26966, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -920, i16 -29843, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -665, i16 -29975, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -863, i16 -27796, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25774, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -400, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -856, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -791, i16 -25420, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29974, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25773, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25771, i16 -1, i16 -1, i16 -1, i16 -26965, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -857, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25770, i16 -30020, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30005, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25769, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30259, i16 -1, i16 -25767, i16 -25765, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27739, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25763, i16 -1, i16 -1, i16 -1, i16 -25009, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27741, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30085, i16 -1, i16 -1, i16 -1, i16 -29886, i16 -26800, i16 -28749, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30128, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25760, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29883, i16 -1, i16 -1, i16 -1, i16 -29882, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25758, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27781, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27727, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30112, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29992, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25757, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30103, i16 -1, i16 -1, i16 -1, i16 -30137, i16 -1, i16 -1, i16 -30004, i16 -27780, i16 -25755, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25754, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30094, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30086, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27729, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30032, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25752, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24925, i16 -1, i16 -1, i16 -1300, i16 -29833, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25753, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29863, i16 -847, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -837, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25751, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27736, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29984, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25007, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28833, i16 -25750, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25749, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26644, i16 -25748, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -434, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -574, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25747, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28313, i16 -820, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27722, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28444, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28443, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24846, i16 -27702, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29764, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28858, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27697, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -805, i16 -804, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27712, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -794, i16 -26905, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -808, i16 -807, i16 -602, i16 -27698, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27151, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25367, i16 -1, i16 -796, i16 -27473, i16 -1417, i16 -27700, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29471, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28582, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29612, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27713, i16 -1199, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27719, i16 -297, i16 -27721, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27687, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27717, i16 -27686, i16 -26461, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28463, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25746, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1424, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25621, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25745, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -772, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29888, i16 -24453, i16 -1, i16 -1, i16 -1, i16 -29535, i16 -26633, i16 -1, i16 -1, i16 -1, i16 -27678, i16 -810, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27738, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -704, i16 -1, i16 -1, i16 -27809, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26638, i16 -25482, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28936, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29461, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28857, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25740, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27980, i16 -1, i16 -1, i16 -1, i16 -28179, i16 -1, i16 -1, i16 -26926, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -698, i16 -28849, i16 -27319, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25739, i16 -1444, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30895, i16 -1, i16 -1, i16 -25735, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -693, i16 -1, i16 -1, i16 -1, i16 -26925, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -680, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27553, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26630, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25127, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26636, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28083, i16 -677, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25734, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24875, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1362, i16 -1, i16 -25399, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28072, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28984, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27468, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27679, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27681, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -784, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27668, i16 -26634, i16 -26929, i16 -27682, i16 -30001, i16 -25694, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -663, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27822, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26462, i16 -29465, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -658, i16 -29532, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1412, i16 -27654, i16 -28548, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28825, i16 -1, i16 -25161, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24343, i16 -1458, i16 -607, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24972, i16 -24641, i16 -24885, i16 -25671, i16 -25132, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26695, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27269, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24878, i16 -26797, i16 -26972, i16 -28738, i16 -27431, i16 -28584, i16 -647, i16 -645, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28966, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28934, i16 -30878, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25691, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24871, i16 -26668, i16 -28485, i16 -580, i16 -570, i16 -28088, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27979, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25151, i16 -27975, i16 -27994, i16 -28853, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25690, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27978, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29120, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24872, i16 -27554, i16 -26529, i16 -27442, i16 -28086, i16 -656, i16 -27545, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29204, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25640, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30877, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27576, i16 -1343, i16 -25353, i16 -578, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28710, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -551, i16 -1, i16 -1, i16 -898, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27655, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1469, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1301, i16 -1341, i16 -26669, i16 -27143, i16 -25528, i16 -552, i16 -24360, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -553, i16 -1206, i16 -25681, i16 -27573, i16 -567, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29012, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -590, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28070, i16 -835, i16 -27943, i16 -1, i16 -1, i16 -1, i16 -555, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27939, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28071, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29456, i16 -26950, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28069, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25685, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -550, i16 -546, i16 -1, i16 -1, i16 -1, i16 -557, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29626, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -554, i16 -548, i16 -547, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28418, i16 -1, i16 -1, i16 -351, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29779, i16 -1, i16 -1, i16 -25384, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24979, i16 -644, i16 -1183, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26888, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26896, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -780, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -416, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26542, i16 -27057, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28306, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26515, i16 -1, i16 -1, i16 -26524, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27565, i16 -532, i16 -1160, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27206, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26531, i16 -1, i16 -27911, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26534, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30896, i16 -1, i16 -522, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27696, i16 -26526, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25683, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26801, i16 -25682, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27566, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25680, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28206, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26646, i16 -1173, i16 -28239, i16 -525, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27957, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25679, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -788, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26517, i16 -1, i16 -1, i16 -1, i16 -26799, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26511, i16 -27153, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24845, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28184, i16 -25670, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1204, i16 -28054, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -520, i16 -26527, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28185, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27667, i16 -26812, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28191, i16 -1, i16 -1, i16 -1035, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26519, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30110, i16 -1, i16 -1, i16 -25669, i16 -29528, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25515, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29065, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30030, i16 -24900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27674, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27742, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25667, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27469, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27779, i16 -24986, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27559, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25665, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27560, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24923, i16 -25657, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -428, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29068, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29738, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27466, i16 -652, i16 -26432, i16 -27483, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25656, i16 -1, i16 -1, i16 -1, i16 -27155, i16 -642, i16 -1045, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -643, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26769, i16 -27551, i16 -1, i16 -24639, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27177, i16 -1, i16 -1, i16 -1, i16 -1454, i16 -25512, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24728, i16 -25625, i16 -818, i16 -26904, i16 -1463, i16 -26719, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27315, i16 -24840, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -439, i16 -28210, i16 -26767, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29489, i16 -1, i16 -1, i16 -1, i16 -591, i16 -1, i16 -1, i16 -914, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25358, i16 -27720, i16 -28605, i16 -26791, i16 -27433, i16 -410, i16 -27523, i16 -913, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1427, i16 -1, i16 -1, i16 -28937, i16 -1, i16 -1097, i16 -1, i16 -27524, i16 -27955, i16 -26702, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -411, i16 -27010, i16 -26792, i16 -25737, i16 -28209, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27484, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25427, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29781, i16 -1, i16 -1, i16 -1, i16 -26923, i16 -845, i16 -1, i16 -1, i16 -1, i16 -27730, i16 -1, i16 -26771, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27578, i16 -27145, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25530, i16 -27301, i16 -28207, i16 -27404, i16 -1, i16 -409, i16 -27995, i16 -1, i16 -1, i16 -1, i16 -289, i16 -29525, i16 -1, i16 -25655, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -787, i16 -518, i16 -824, i16 -414, i16 -28164, i16 -405, i16 -519, i16 -825, i16 -28338, i16 -25416, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26777, i16 -1, i16 -1, i16 -1, i16 -27154, i16 -1, i16 -1, i16 -25678, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27552, i16 -1, i16 -1, i16 -1, i16 -27486, i16 -26507, i16 -26708, i16 -28205, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26501, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28949, i16 -26774, i16 -27042, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26645, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24583, i16 -27144, i16 -350, i16 -28698, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -386, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25180, i16 -26776, i16 -28948, i16 -27459, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27557, i16 -25354, i16 -1369, i16 -25639, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1443, i16 -27050, i16 -26782, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27462, i16 -24497, i16 -27944, i16 -1, i16 -1, i16 -1, i16 -25653, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27461, i16 -1, i16 -1, i16 -25249, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28465, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27547, i16 -1, i16 -1, i16 -24756, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28456, i16 -29349, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24898, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1171, i16 -27190, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25150, i16 -26632, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28676, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27533, i16 -27532, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30133, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30123, i16 -29847, i16 -29988, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29834, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25650, i16 -1, i16 -30104, i16 -24328, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26401, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -331, i16 -1, i16 -1, i16 -1, i16 -25649, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26885, i16 -1, i16 -1, i16 -25605, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24882, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28955, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24965, i16 -25646, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30043, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -306, i16 -30139, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25092, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -305, i16 -29787, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29622, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29972, i16 -1, i16 -1, i16 -800, i16 -27475, i16 -299, i16 -27476, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -934, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25642, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30097, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29783, i16 -29089, i16 -1, i16 -1, i16 -25141, i16 -1, i16 -793, i16 -25641, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27704, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28176, i16 -28704, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25637, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28435, i16 -1, i16 -25636, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29357, i16 -24340, i16 -1, i16 -1, i16 -1, i16 -26374, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25632, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27705, i16 -28087, i16 -26911, i16 -25630, i16 -1, i16 -1, i16 -1, i16 -25628, i16 -1, i16 -1, i16 -28703, i16 -25627, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27456, i16 -1, i16 -1, i16 -27709, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27707, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28551, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26757, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28546, i16 -1, i16 -1, i16 -1, i16 -1, i16 -282, i16 -442, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25160, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28048, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27224, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29520, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27448, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26439, i16 -28352, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -834, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29774, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1313, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25626, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27069, i16 -29116, i16 -25521, i16 -268, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25624, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27684, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27025, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29110, i16 -25619, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27914, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25159, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29106, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1073, i16 -30880, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24894, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25616, i16 -27420, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27311, i16 -29765, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25615, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27408, i16 -29084, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27414, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28831, i16 -1, i16 -1, i16 -1, i16 -25756, i16 -29093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25614, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24642, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25143, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29076, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28813, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29521, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28811, i16 -29071, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29088, i16 -29078, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29620, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27310, i16 -27308, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29996, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25157, i16 -27325, i16 -27906, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27406, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27407, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24342, i16 -25134, i16 -24399, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28168, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27550, i16 -25692, i16 -29011, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24915, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26928, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -274, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30028, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26793, i16 -30089, i16 -25609, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29003, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24467, i16 -29002, i16 -26794, i16 -27328, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24333, i16 -27458, i16 -1, i16 -1, i16 -1, i16 -25606, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -545, i16 -25156, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27394, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29733, i16 -24322, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28992, i16 -24761, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29730, i16 -24325, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27063, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -318, i16 -1, i16 -1, i16 -27316, i16 -25603, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28468, i16 -25504, i16 -27317, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25602, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25488, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25533, i16 -1, i16 -1, i16 -1, i16 -25529, i16 -28980, i16 -1, i16 -1, i16 -1, i16 -29100, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28956, i16 -25527, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29858, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25525, i16 -29727, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28967, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25164, i16 -1, i16 -28065, i16 -1, i16 -1, i16 -1, i16 -25524, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30047, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28965, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25514, i16 -30046, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26796, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25506, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24876, i16 -27288, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24381, i16 -29978, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25503, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25505, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -947, i16 -1, i16 -24997, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24983, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25501, i16 -313, i16 -1, i16 -1, i16 -314, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25497, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25495, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29726, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28315, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25369, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30124, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25492, i16 -25490, i16 -419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25485, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27286, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27283, i16 -28944, i16 -28851, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1348, i16 -1, i16 -29483, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30882, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1062, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29876, i16 -651, i16 -25635, i16 -1291, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25484, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27323, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28822, i16 -28850, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25480, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1451, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26652, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25535, i16 -28068, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26886, i16 -29450, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29363, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1178, i16 -29083, i16 -26551, i16 -1112, i16 -26558, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25478, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26629, i16 -28470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25509, i16 -1, i16 -1, i16 -26803, i16 -1, i16 -1, i16 -28973, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27295, i16 -24757, i16 -24651, i16 -27694, i16 -598, i16 -26560, i16 -28346, i16 -26521, i16 -1446, i16 -1111, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26559, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29485, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -771, i16 -597, i16 -28227, i16 -28852, i16 -26935, i16 -28843, i16 -1106, i16 -27281, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25475, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24336, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27537, i16 -596, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26933, i16 -26930, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24490, i16 -1, i16 -25375, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26940, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28834, i16 -28820, i16 -29021, i16 -1101, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -941, i16 -1, i16 -1, i16 -1, i16 -589, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28821, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26934, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30893, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28807, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24977, i16 -24379, i16 -904, i16 -29118, i16 -28838, i16 -28478, i16 -29019, i16 -28575, i16 -28081, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27789, i16 -587, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -308, i16 -1, i16 -1091, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29482, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26557, i16 -26939, i16 -30276, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25437, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28085, i16 -26550, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28764, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24335, i16 -24837, i16 -25390, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28761, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30892, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -932, i16 -26555, i16 -1, i16 -1, i16 -28602, i16 -29487, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -262, i16 -27296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24760, i16 -28089, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28421, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25436, i16 -27279, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30907, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25434, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25433, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25430, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24877, i16 -1, i16 -1, i16 -1, i16 -24976, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25428, i16 -30894, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28754, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29360, i16 -27267, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25424, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26698, i16 -1, i16 -24387, i16 -29985, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24918, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28739, i16 -1, i16 -1, i16 -1, i16 -28737, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27799, i16 -25689, i16 -14172, i16 -1, i16 -1, i16 -1, i16 -1, i16 -278, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25631, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29887, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25162, i16 -24341, i16 -25693, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29791, i16 -28728, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30388, i16 -26528, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27449, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29864, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27221, i16 -27222, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25405, i16 -25404, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27690, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25172, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29722, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30095, i16 -28719, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26155, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28428, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30045, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25394, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25388, i16 -25387, i16 -1, i16 -1, i16 -1, i16 -1080, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25165, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -912, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28713, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25741, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28718, i16 -28572, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26442, i16 -27032, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25386, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26435, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28708, i16 -266, i16 -28711, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27327, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30868, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26637, i16 -25608, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30886, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30904, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30902, i16 -24980, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28686, i16 -28690, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25385, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24978, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30144, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28689, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28684, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28683, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27198, i16 -26518, i16 -1, i16 -26673, i16 -24859, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24964, i16 -28607, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25381, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27583, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25370, i16 -25168, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25366, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25363, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29854, i16 -30130, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25398, i16 -30106, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25349, i16 -25348, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25346, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30125, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25371, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25280, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25279, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28603, i16 -29837, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26678, i16 -1, i16 -25278, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30111, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29778, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29998, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29790, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25102, i16 -25277, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25377, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25276, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28982, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28594, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29005, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24587, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25275, i16 -28593, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25273, i16 -1, i16 -1, i16 -1, i16 -30262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25419, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1026, i16 -28578, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28573, i16 -28585, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28570, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25664, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -795, i16 -28318, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28569, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28767, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28766, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25272, i16 -1325, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28579, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28487, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28565, i16 -29604, i16 -1, i16 -1, i16 -1, i16 -28567, i16 -425, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -427, i16 -28557, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25617, i16 -25360, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25269, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -295, i16 -1, i16 -1, i16 -1, i16 -294, i16 -1, i16 -1, i16 -1, i16 -28192, i16 -29373, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28200, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27066, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27808, i16 -1, i16 -1453, i16 -25389, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25266, i16 -1, i16 -1, i16 -1, i16 -1216, i16 -1, i16 -1, i16 -1, i16 -29214, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27582, i16 -1, i16 -28586, i16 -1, i16 -1, i16 -26523, i16 -1, i16 -29588, i16 -1462, i16 -1, i16 -1, i16 -25264, i16 -25262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27217, i16 -26790, i16 -27831, i16 -26809, i16 -24332, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26760, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28721, i16 -1, i16 -1, i16 -1, i16 -928, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29618, i16 -1, i16 -1, i16 -1, i16 -938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28196, i16 -27039, i16 -27924, i16 -27811, i16 -28962, i16 -26882, i16 -689, i16 -27170, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26448, i16 -24512, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26691, i16 -26755, i16 -26635, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25684, i16 -1318, i16 -27966, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28549, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27650, i16 -27525, i16 -1, i16 -26761, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1346, i16 -701, i16 -28474, i16 -28508, i16 -28504, i16 -27479, i16 -1, i16 -28503, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29595, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27168, i16 -28547, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28059, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -582, i16 -27708, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -275, i16 -25173, i16 -24349, i16 -1, i16 -27064, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25261, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30039, i16 -1, i16 -25659, i16 -1, i16 -27043, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26785, i16 -27041, i16 -27026, i16 -1187, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25167, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -349, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25166, i16 -1, i16 -1, i16 -27218, i16 -861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30871, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24414, i16 -1, i16 -1, i16 -27051, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25260, i16 -1, i16 -1, i16 -27839, i16 -1, i16 -27219, i16 -28203, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26758, i16 -516, i16 -29113, i16 -27651, i16 -28507, i16 -28500, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27220, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28498, i16 -347, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25258, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26653, i16 -27166, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27546, i16 -1, i16 -1, i16 -27065, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28232, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25364, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28499, i16 -1, i16 -27165, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29873, i16 -1, i16 -1, i16 -29981, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29875, i16 -27158, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29874, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29503, i16 -29715, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28199, i16 -1, i16 -1, i16 -24412, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27147, i16 -27148, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24653, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -337, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -398, i16 -28038, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -340, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27149, i16 -25256, i16 -29370, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27790, i16 -1, i16 -1, i16 -28219, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27070, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28467, i16 -27138, i16 -28327, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25499, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26676, i16 -28466, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25255, i16 -779, i16 -259, i16 -1, i16 -1, i16 -25253, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25252, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27778, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26452, i16 -1, i16 -1, i16 -25250, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -560, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -672, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25393, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28451, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28448, i16 -28429, i16 -1, i16 -1, i16 -26447, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28432, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27715, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27209, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24762, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29109, i16 -27048, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30132, i16 -1, i16 -25245, i16 -24881, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25243, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27046, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25244, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30100, i16 -29991, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25241, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30096, i16 -29709, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28336, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25407, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25240, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27737, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27020, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29443, i16 -24337, i16 -1, i16 -28335, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30857, i16 -1, i16 -29596, i16 -27018, i16 -25239, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -860, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25238, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25237, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25663, i16 -25236, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30107, i16 -28323, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28326, i16 -29630, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25408, i16 -28310, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25234, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24922, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25139, i16 -1, i16 -1, i16 -25233, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30277, i16 -24839, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26956, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28302, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24888, i16 -1, i16 -1, i16 -1, i16 -30863, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29867, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25231, i16 -25230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24884, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24880, i16 -28580, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28974, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28248, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28297, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26945, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26944, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28751, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26953, i16 -29611, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30274, i16 -28292, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1161, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28299, i16 -28253, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26946, i16 -29367, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28295, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -26954, i16 -28252, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28250, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25227, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28590, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24507, i16 -1, i16 -28247, i16 -1, i16 -26454, i16 -1, i16 -1, i16 -1, i16 -29601, i16 -1, i16 -1, i16 -29782, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25379, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25225, i16 -30890, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -30400, i16 -24852, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27734, i16 -27528, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25222, i16 -30007, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29877, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24596, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29982, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24971, i16 -26508, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25912, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24505, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -29757, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -952, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -905, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -25518, i16 -28931, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28760, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -27270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -28688], align 16
@big5hkscs_decmap = internal constant [256 x %struct.dbcs_index] [%struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* getelementptr inbounds ([6219 x i16], [6219 x i16]* @__big5hkscs_decmap, i32 0, i32 0), i8 64, i8 121 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 116) to i16*), i8 64, i8 -86 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 330) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 712) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 1094) to i16*), i8 64, i8 -3 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 1474) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 1856) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 2238) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 2620) to i16*), i8 64, i8 -3 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 3000) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 3382) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 3764) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 4146) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 4528) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 4910) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 5292) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 5674) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 6056) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 6438) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 6820) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 7202) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 7584) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 7966) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 8348) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 8730) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 9112) to i16*), i8 64, i8 -2 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 9494) to i16*), i8 -95, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 9682) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 10064) to i16*), i8 64, i8 -2 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 10446) to i16*), i8 -42, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 10528) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 10910) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 11292) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 11674) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([6219 x i16]* @__big5hkscs_decmap to i8*), i64 12056) to i16*), i8 64, i8 -2 }, %struct.dbcs_index zeroinitializer], align 16
@big5hkscs_phint_0 = internal constant [621 x i8] c" \05_D\0FR\82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0,\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C0\00\04\00\00\00\00\00\00\00\00\00\00\00\00\01\16\00\0F\00\00\00\00\00 W+\F7\FCn\F2\90\0B\00\00\00\C0\ED\A4\0F&\C1\9Bv\F2\EF\DE\FB\FA\F7\0F2D\AF\FE\EF\05\00\00\00\E0\FBG\80\C1\02\00\84d\04\82@ \A2\82\85\A4\91\00\10\01\00\00\00\90H\0C\000\00T\030D\18\135\89& \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10@\00 +\99 \10c($\01\00\00\00\00P`\D4\00\D2*\18\9Dh5\97O\D8\F8 \C4\82\1C(\02\00\00\00\00\D6Q\0A\E0\00\81\86\16C\C45\117`\E6zm\05\0C=\00\00\00\00\999\80\07\22\FE\81\90\18\90\0Ct0\D0\A0\09)\15\FD\04\00\00\00\00\DF\80@\08\08\B0\DB\C4`\EDv}\F9\1D\E4\D3\85\A6\CD\05\00\00\00\00\0C\00n\BA\09/`T\00\1Exh\22pV\9E%\F3\8E\07\00\00\00\C0^,\BC\9B\DF]lm\04C`6J`\D8>\07\C4\C8\01\00\00\00\A0\B1\C5b\0B\0C\22>\CC%\B8\01\AE\ED\5Ch\0D\94J\B5\00\00\00\00\00\F4\03\12\11\10D\025\90\EB\0E\99\07\D1\CA\05\82\A1\A0\00\00\00\004\18\A0\89\E7\9C[\08\84\03\02\DA\90\EC\DB\87\85\BF\A2-\00\00\00\00v:vb\82\94\18\01\18}\FE\8DW'\13\D2[7\19\0C\00\00\00\00n\8B!\91\00\00\00@\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\8Exn_?~\DD=\F7\FC\9B\FC\AE\D2\FF\8Fk\01\00\00\00\C0\9F\FF\EA\BA\BA]\BCs\9F\FA\D8\D6\DE%K^\97\DA*\01\00\00\00\E0\B6\99\1B\D8t\E6O\15\BF)\E6\FF&um\E3\FF\9BR\00\00\00\00P`~o\99\A9P\0E\00\80\10\D8#\00%\10\90\F4\EBu\00\00\00\00\D0\DB\00\A0\98\B2{\06R \98\16\C8=\09\00\00\01\00\00\00\00\00\00\00\04(\C8\22\00\02\00\00\10 \82P@0\01\00\10\00\04\00\00\00\00J\04\01\10\14\00\80\00\04\FF\FD$", align 16
@big5hkscs_phint_12130 = internal constant [60 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\02\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00", align 16
@big5hkscs_phint_21924 = internal constant [125 x i8] c"\00\00\00\00\00\1A\AC\F8\FAZ\C0\FA3\00\00\00\00\00\81\00\A0\9C\82\90\09\01\B4\C0\B0\03V\02\A0B-\88\01\00\00\00\00\92w\8B`\05\C9!\06F8`H\C0\B4$\DE\84\E0\C0$\00\00\00\00\CDP\C54\C0(\A2\AD|\99\18X\12\22\C4B\A2S\8E\1E\00\00\00\804\87\0B\15\D1@\FA=\00\04\D2\05H\08\16\E6\1C\A5\00\08\00\00\00\C0-\16\14\80\18:\D4\19\88\1C\8A\04", align 16
@__big5hkscs_decmap = internal constant [6219 x i16] [i16 17392, i16 19506, i16 17923, i16 17830, i16 17784, i16 29287, i16 19831, i16 17843, i16 31921, i16 19682, i16 31941, i16 15253, i16 18230, i16 18244, i16 19527, i16 19520, i16 17087, i16 13847, i16 29522, i16 28299, i16 28882, i16 19543, i16 -23727, i16 18255, i16 17882, i16 19589, i16 31852, i16 19719, i16 19108, i16 18081, i16 27427, i16 29221, i16 23124, i16 6755, i16 15878, i16 16225, i16 26189, i16 22267, i16 -2, i16 32149, i16 22813, i16 -29767, i16 15860, i16 -26828, i16 31727, i16 23515, i16 7518, i16 23204, i16 13861, i16 -24912, i16 23249, i16 23479, i16 23804, i16 26478, i16 -31341, i16 -26299, i16 29793, i16 29853, i16 12736, i16 12737, i16 12738, i16 12739, i16 12740, i16 268, i16 12741, i16 209, i16 205, i16 12742, i16 12743, i16 203, i16 8168, i16 12744, i16 202, i16 12745, i16 12746, i16 12747, i16 12748, i16 270, i16 12749, i16 12750, i16 256, i16 193, i16 461, i16 192, i16 274, i16 201, i16 282, i16 200, i16 332, i16 211, i16 465, i16 210, i16 -2, i16 7870, i16 -2, i16 7872, i16 202, i16 257, i16 225, i16 462, i16 224, i16 593, i16 275, i16 233, i16 283, i16 232, i16 299, i16 237, i16 464, i16 236, i16 333, i16 243, i16 466, i16 242, i16 363, i16 250, i16 468, i16 249, i16 470, i16 472, i16 474, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 476, i16 252, i16 -2, i16 7871, i16 -2, i16 7873, i16 234, i16 609, i16 9178, i16 9179, i16 -23639, i16 4421, i16 -2, i16 25866, i16 -2, i16 -2, i16 20029, i16 28381, i16 -25266, i16 -28193, i16 -2, i16 -2, i16 30517, i16 25745, i16 20250, i16 20264, i16 20392, i16 20822, i16 20852, i16 20892, i16 20964, i16 21153, i16 21160, i16 21307, i16 21326, i16 21457, i16 21464, i16 22242, i16 22768, i16 22788, i16 22791, i16 22834, i16 22836, i16 23398, i16 23454, i16 23455, i16 23706, i16 24198, i16 24635, i16 25993, i16 26622, i16 26628, i16 26725, i16 27982, i16 28860, i16 30005, i16 32420, i16 32428, i16 32442, i16 32455, i16 32463, i16 32479, i16 32518, i16 32567, i16 -32134, i16 -32049, i16 -31889, i16 -30266, i16 -29762, i16 -29726, i16 -28826, i16 -28825, i16 -28818, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29713, i16 31996, i16 32205, i16 26950, i16 31433, i16 21031, i16 -2, i16 -2, i16 -2, i16 -2, i16 -28276, i16 30904, i16 -28322, i16 -32580, i16 -2, i16 -29429, i16 -32522, i16 2535, i16 -2, i16 -2, i16 -32609, i16 -24889, i16 19661, i16 -25143, i16 -25076, i16 19518, i16 -25098, i16 28686, i16 -25078, i16 -24269, i16 13761, i16 -2, i16 28314, i16 -32194, i16 29977, i16 -2, i16 18705, i16 -26004, i16 -25969, i16 -24679, i16 31111, i16 -31636, i16 7626, i16 1488, i16 10982, i16 20004, i16 20097, i16 20096, i16 20103, i16 20159, i16 20203, i16 20279, i16 13388, i16 20413, i16 15944, i16 20483, i16 20616, i16 13437, i16 13459, i16 13477, i16 20870, i16 22789, i16 20955, i16 20988, i16 20997, i16 20105, i16 21113, i16 21136, i16 21287, i16 13767, i16 21417, i16 13649, i16 21424, i16 13651, i16 21442, i16 21539, i16 13677, i16 13682, i16 13953, i16 21651, i16 21667, i16 21684, i16 21689, i16 21712, i16 21743, i16 21784, i16 21795, i16 21800, i16 13720, i16 21823, i16 13733, i16 13759, i16 21975, i16 13765, i16 32132, i16 21797, i16 -2, i16 3138, i16 3349, i16 20779, i16 21904, i16 11462, i16 14828, i16 833, i16 -29114, i16 19896, i16 -27419, i16 16467, i16 -32578, i16 30586, i16 11320, i16 14900, i16 18389, i16 -32419, i16 27122, i16 19946, i16 25821, i16 3452, i16 4020, i16 3285, i16 4340, i16 25741, i16 -29058, i16 3734, i16 3083, i16 3940, i16 11433, i16 -32170, i16 17619, i16 -2, i16 3398, i16 -26035, i16 -32535, i16 18420, i16 20135, i16 11458, i16 -25934, i16 14951, i16 -27148, i16 16365, i16 13574, i16 21191, i16 -26668, i16 30920, i16 11588, i16 -25234, i16 -26603, i16 -2, i16 17369, i16 24741, i16 25780, i16 21731, i16 11596, i16 11210, i16 4215, i16 14843, i16 4207, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 26330, i16 26390, i16 31136, i16 25834, i16 20562, i16 3139, i16 -29080, i16 8609, i16 -29876, i16 1841, i16 -2, i16 18443, i16 425, i16 16378, i16 22643, i16 11661, i16 -2, i16 17864, i16 1276, i16 24727, i16 3916, i16 3478, i16 21881, i16 16571, i16 17338, i16 -2, i16 19124, i16 10854, i16 4253, i16 -32342, i16 -26379, i16 3484, i16 25465, i16 14846, i16 10101, i16 -29248, i16 22177, i16 25724, i16 15939, i16 -2, i16 -23039, i16 3593, i16 10959, i16 11465, i16 -2, i16 4296, i16 14786, i16 14738, i16 14854, i16 -32101, i16 13688, i16 24137, i16 8391, i16 22098, i16 3889, i16 11442, i16 -26848, i16 13500, i16 27709, i16 20027, i16 -2, i16 -2, i16 30068, i16 11915, i16 8712, i16 -22949, i16 -29491, i16 3706, i16 3124, i16 26652, i16 32659, i16 4303, i16 10243, i16 10553, i16 13819, i16 20963, i16 3724, i16 3981, i16 3754, i16 16275, i16 3888, i16 3399, i16 4431, i16 3660, i16 -2, i16 3755, i16 2985, i16 3400, i16 4288, i16 4413, i16 16377, i16 9878, i16 25650, i16 4013, i16 13300, i16 30265, i16 11214, i16 3454, i16 3455, i16 11345, i16 11349, i16 14872, i16 3736, i16 4295, i16 3886, i16 -22990, i16 27472, i16 -29486, i16 -29287, i16 -29494, i16 -27222, i16 21708, i16 -32060, i16 21945, i16 -2, i16 -24893, i16 -25562, i16 -25930, i16 30558, i16 11758, i16 28992, i16 -32403, i16 -32532, i16 23580, i16 25970, i16 -32460, i16 14231, i16 21343, i16 -32579, i16 -28234, i16 3834, i16 3599, i16 3703, i16 3835, i16 13789, i16 19947, i16 13833, i16 3286, i16 22191, i16 10165, i16 4297, i16 3600, i16 3704, i16 4216, i16 4424, i16 -32249, i16 5205, i16 3705, i16 20048, i16 11684, i16 23124, i16 4125, i16 4126, i16 4341, i16 4342, i16 22428, i16 3601, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30356, i16 -32051, i16 4021, i16 3707, i16 20862, i16 14083, i16 4022, i16 4480, i16 21208, i16 -23875, i16 18906, i16 6202, i16 16759, i16 -32132, i16 22681, i16 21096, i16 13850, i16 22333, i16 31666, i16 23400, i16 18432, i16 19244, i16 -24793, i16 18919, i16 -25569, i16 -25715, i16 23412, i16 12605, i16 22011, i16 13810, i16 22153, i16 20008, i16 22786, i16 7105, i16 -1928, i16 -26799, i16 134, i16 20059, i16 20155, i16 13630, i16 23587, i16 24401, i16 24516, i16 14586, i16 25164, i16 25909, i16 27514, i16 27701, i16 27706, i16 28780, i16 29227, i16 20012, i16 29357, i16 18665, i16 32594, i16 31035, i16 31993, i16 32595, i16 25194, i16 13505, i16 -2, i16 25419, i16 -32766, i16 -32640, i16 26130, i16 26961, i16 21341, i16 -30620, i16 -30271, i16 30898, i16 -29792, i16 -29411, i16 -27515, i16 -27272, i16 -27265, i16 -27160, i16 -29169, i16 -26650, i16 -26507, i16 -26418, i16 -26402, i16 -26269, i16 -26608, i16 -25476, i16 -25057, i16 -24892, i16 27503, i16 -1785, i16 20023, i16 135, i16 -27107, i16 25143, i16 -27486, i16 20539, i16 28158, i16 -25485, i16 -24666, i16 15817, i16 -30577, i16 16718, i16 28791, i16 23797, i16 19232, i16 20941, i16 13657, i16 23856, i16 24866, i16 -30158, i16 -28761, i16 -28170, i16 29073, i16 26393, i16 29626, i16 12929, i16 -24313, i16 15499, i16 6528, i16 19216, i16 30948, i16 29698, i16 20910, i16 -30961, i16 16393, i16 27235, i16 -23878, i16 16931, i16 -31217, i16 2671, i16 31274, i16 -26297, i16 -29974, i16 -26795, i16 28749, i16 21284, i16 8318, i16 -27660, i16 30425, i16 -30237, i16 -24665, i16 30685, i16 20131, i16 20464, i16 20668, i16 20015, i16 20247, i16 -24664, i16 21556, i16 32139, i16 22674, i16 22736, i16 7606, i16 24210, i16 24217, i16 24514, i16 10002, i16 25995, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 13305, i16 26905, i16 27203, i16 15459, i16 27903, i16 -2, i16 29184, i16 17669, i16 29580, i16 16091, i16 18963, i16 23317, i16 29881, i16 -29821, i16 23716, i16 22165, i16 31379, i16 31724, i16 31939, i16 32364, i16 -32008, i16 -31337, i16 -24663, i16 -30576, i16 -24662, i16 -28999, i16 -24661, i16 -28721, i16 -31393, i16 -26144, i16 -28127, i16 -24660, i16 -29255, i16 5183, i16 16497, i16 17058, i16 23066, i16 -2, i16 -2, i16 -2, i16 -26520, i16 26475, i16 17014, i16 22333, i16 -2, i16 -31274, i16 18811, i16 -32065, i16 28941, i16 19585, i16 28020, i16 23931, i16 27413, i16 28606, i16 -24659, i16 -24658, i16 23446, i16 -24657, i16 26343, i16 32347, i16 28247, i16 31178, i16 15752, i16 17603, i16 12886, i16 10134, i16 17306, i16 17718, i16 -2, i16 23765, i16 15130, i16 -29959, i16 23672, i16 15634, i16 13649, i16 23928, i16 -24654, i16 29015, i16 17752, i16 16620, i16 7715, i16 19575, i16 14712, i16 13386, i16 420, i16 27713, i16 -30004, i16 20404, i16 569, i16 22975, i16 -32404, i16 -26538, i16 -26374, i16 24379, i16 2975, i16 -2, i16 8641, i16 -30355, i16 16642, i16 18107, i16 -28551, i16 16135, i16 -24653, i16 -24139, i16 16632, i16 14294, i16 18167, i16 27718, i16 16764, i16 -31054, i16 29695, i16 17773, i16 14548, i16 21658, i16 17761, i16 17691, i16 19849, i16 19579, i16 19830, i16 17898, i16 16328, i16 19215, i16 13921, i16 17630, i16 17597, i16 16877, i16 23870, i16 23880, i16 23894, i16 15868, i16 14351, i16 23972, i16 23993, i16 14368, i16 14392, i16 24130, i16 24253, i16 24357, i16 24451, i16 14600, i16 14612, i16 14655, i16 14669, i16 24791, i16 24893, i16 23781, i16 14729, i16 25015, i16 25017, i16 25039, i16 14776, i16 25132, i16 25232, i16 25317, i16 25368, i16 14840, i16 22193, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 14851, i16 25570, i16 25595, i16 25607, i16 25690, i16 14923, i16 25792, i16 23829, i16 22049, i16 -24673, i16 14999, i16 25990, i16 15037, i16 26111, i16 26195, i16 15090, i16 26258, i16 15138, i16 26390, i16 15170, i16 26532, i16 26624, i16 15192, i16 26698, i16 26756, i16 15218, i16 15217, i16 15227, i16 26889, i16 26947, i16 29276, i16 26980, i16 27039, i16 27013, i16 15292, i16 27094, i16 15325, i16 27237, i16 27252, i16 27249, i16 27266, i16 15340, i16 27289, i16 15346, i16 27307, i16 27317, i16 27348, i16 27382, i16 27521, i16 27585, i16 27626, i16 27765, i16 27818, i16 15563, i16 27906, i16 27910, i16 27942, i16 28033, i16 15599, i16 28068, i16 28081, i16 28181, i16 28184, i16 28201, i16 28294, i16 -30272, i16 28347, i16 28386, i16 28378, i16 -24705, i16 28392, i16 28393, i16 28452, i16 28468, i16 15686, i16 16193, i16 28545, i16 28606, i16 15722, i16 15733, i16 29111, i16 23705, i16 15754, i16 28716, i16 15761, i16 28752, i16 28756, i16 28783, i16 28799, i16 28809, i16 805, i16 17345, i16 13809, i16 3800, i16 16087, i16 22462, i16 28371, i16 28990, i16 22496, i16 13902, i16 27042, i16 -29719, i16 23412, i16 31305, i16 22753, i16 -27431, i16 31333, i16 31357, i16 22956, i16 31419, i16 31408, i16 31426, i16 31427, i16 29137, i16 25741, i16 16842, i16 31450, i16 31453, i16 31466, i16 16879, i16 21682, i16 23553, i16 31499, i16 31573, i16 31529, i16 21262, i16 23806, i16 31650, i16 31599, i16 -31844, i16 23476, i16 27775, i16 31696, i16 -31711, i16 31634, i16 -2, i16 23840, i16 15789, i16 23653, i16 -31598, i16 31738, i16 -2, i16 31797, i16 23745, i16 31812, i16 31875, i16 18562, i16 31910, i16 26237, i16 17784, i16 31945, i16 31943, i16 31974, i16 31860, i16 31987, i16 31989, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 32359, i16 17693, i16 28228, i16 32093, i16 28374, i16 29837, i16 32137, i16 32171, i16 28981, i16 32179, i16 -2, i16 16471, i16 24617, i16 32228, i16 15635, i16 32245, i16 6137, i16 32229, i16 -31891, i16 -2, i16 24865, i16 24922, i16 32366, i16 32402, i16 17195, i16 -27540, i16 32295, i16 32576, i16 32577, i16 32583, i16 31030, i16 25296, i16 -26143, i16 32663, i16 25425, i16 32675, i16 5729, i16 104, i16 17756, i16 14182, i16 17667, i16 -31942, i16 32762, i16 25737, i16 -2, i16 -32760, i16 -32739, i16 -2, i16 -32721, i16 -24441, i16 27843, i16 -32709, i16 -32708, i16 -32671, i16 10004, i16 18825, i16 26150, i16 15843, i16 26344, i16 26405, i16 -32601, i16 -30136, i16 -32505, i16 -32486, i16 22704, i16 9974, i16 27775, i16 25752, i16 20408, i16 25831, i16 5258, i16 -32232, i16 6238, i16 27219, i16 19045, i16 19093, i16 17530, i16 -32215, i16 2829, i16 27218, i16 15742, i16 20473, i16 5373, i16 -31518, i16 -31902, i16 27402, i16 18855, i16 13616, i16 6003, i16 15864, i16 -32086, i16 26907, i16 -1644, i16 16859, i16 -31413, i16 -32048, i16 -31974, i16 3606, i16 6068, i16 14017, i16 12669, i16 13658, i16 -32133, i16 -32030, i16 -31976, i16 16011, i16 28067, i16 27397, i16 27543, i16 13774, i16 15807, i16 -31971, i16 21996, i16 -31867, i16 17675, i16 28069, i16 -31828, i16 -2, i16 -31789, i16 13438, i16 28372, i16 27223, i16 -31398, i16 13462, i16 28226, i16 12015, i16 -31656, i16 23524, i16 -31631, i16 15827, i16 17636, i16 27303, i16 -31670, i16 15541, i16 31064, i16 -2, i16 27542, i16 28279, i16 28227, i16 -31522, i16 -2, i16 -31855, i16 17568, i16 -31597, i16 -31516, i16 23697, i16 16960, i16 23744, i16 17731, i16 -31436, i16 23282, i16 28313, i16 17703, i16 -31373, i16 17686, i16 26559, i16 -31210, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -31195, i16 -31173, i16 -31295, i16 28808, i16 -31230, i16 5506, i16 28877, i16 -1614, i16 17770, i16 -31192, i16 13896, i16 6306, i16 21495, i16 29594, i16 -31106, i16 -30863, i16 -24328, i16 -30738, i16 11303, i16 -30799, i16 -30758, i16 -30705, i16 22113, i16 -31124, i16 26710, i16 17935, i16 -30651, i16 -30650, i16 30176, i16 15801, i16 30180, i16 -30626, i16 -30564, i16 18011, i16 -30540, i16 -30539, i16 25537, i16 -30523, i16 30583, i16 30479, i16 -30329, i16 -30326, i16 -2, i16 -2, i16 -30297, i16 -30276, i16 -30171, i16 -30233, i16 31012, i16 31421, i16 -30052, i16 30611, i16 -28162, i16 -30064, i16 31321, i16 31465, i16 31546, i16 16271, i16 18195, i16 31544, i16 29052, i16 -29940, i16 -29921, i16 21552, i16 21861, i16 -29889, i16 -29876, i16 -29875, i16 -30039, i16 19066, i16 -29808, i16 -29797, i16 -30033, i16 5855, i16 17941, i16 -30641, i16 -29541, i16 32084, i16 32143, i16 -1580, i16 14117, i16 32083, i16 -29482, i16 32152, i16 32189, i16 -29422, i16 -29437, i16 6416, i16 -29477, i16 28764, i16 -29423, i16 19657, i16 16080, i16 -29271, i16 -32766, i16 4116, i16 18826, i16 15228, i16 -32324, i16 28940, i16 31463, i16 -29011, i16 -29002, i16 -28989, i16 -27948, i16 -28903, i16 -28883, i16 -31899, i16 -31726, i16 -28763, i16 -27901, i16 -23905, i16 2640, i16 -28749, i16 18730, i16 -30242, i16 -31427, i16 15803, i16 24312, i16 12898, i16 -28679, i16 -24556, i16 -31044, i16 -31487, i16 8997, i16 14720, i16 28375, i16 -28617, i16 -31428, i16 31422, i16 -28575, i16 -31380, i16 -31221, i16 -28504, i16 -30957, i16 -28476, i16 -31002, i16 -28498, i16 -2, i16 -28313, i16 15088, i16 -28247, i16 -28220, i16 31916, i16 -30413, i16 7817, i16 -28146, i16 27807, i16 -28095, i16 -28062, i16 21945, i16 -2, i16 -30010, i16 15515, i16 -29940, i16 21979, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 3377, i16 -27860, i16 -27797, i16 -29983, i16 -29717, i16 28815, i16 23235, i16 -29982, i16 -29979, i16 18789, i16 -28092, i16 -29716, i16 -29639, i16 -29697, i16 -27789, i16 -27557, i16 -28996, i16 -27259, i16 -27226, i16 -27610, i16 -27232, i16 28662, i16 17081, i16 9850, i16 -31016, i16 4732, i16 15918, i16 18911, i16 27676, i16 -27013, i16 -26986, i16 16748, i16 -26973, i16 28373, i16 25050, i16 -26954, i16 30965, i16 -29984, i16 -26947, i16 21452, i16 18849, i16 27832, i16 628, i16 25616, i16 -28497, i16 -28443, i16 19153, i16 6421, i16 13066, i16 -26831, i16 -31166, i16 -26826, i16 18959, i16 17725, i16 17797, i16 19177, i16 28789, i16 23361, i16 -26853, i16 -2, i16 -28203, i16 -26793, i16 23370, i16 -28181, i16 -26785, i16 -27611, i16 20688, i16 12471, i16 12476, i16 -26743, i16 -26721, i16 -26703, i16 -26690, i16 -26688, i16 -26670, i16 -26656, i16 21612, i16 -26642, i16 29724, i16 -27597, i16 -2, i16 -26635, i16 -27619, i16 31098, i16 19153, i16 -26572, i16 -26573, i16 -26549, i16 -26522, i16 15118, i16 29045, i16 15697, i16 1584, i16 16732, i16 22278, i16 -26422, i16 -26441, i16 -26424, i16 -26425, i16 19199, i16 27943, i16 5843, i16 21936, i16 -26399, i16 -26394, i16 -26388, i16 -27784, i16 -26311, i16 18985, i16 19314, i16 -26537, i16 -26363, i16 -26123, i16 -26100, i16 -26053, i16 -26096, i16 -26024, i16 22309, i16 14020, i16 -28495, i16 -25643, i16 -25888, i16 -25886, i16 -25851, i16 -25868, i16 19470, i16 -25836, i16 -25811, i16 -31232, i16 20532, i16 -25804, i16 27048, i16 14531, i16 12413, i16 -25776, i16 -25792, i16 -25282, i16 23109, i16 6243, i16 -25714, i16 16971, i16 -25598, i16 -25601, i16 -25588, i16 -24984, i16 -25132, i16 -24649, i16 -24174, i16 -24149, i16 -24351, i16 -24285, i16 -24097, i16 -25218, i16 -25213, i16 -24268, i16 -25074, i16 26760, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25148, i16 8539, i16 -24173, i16 -24032, i16 6459, i16 -24013, i16 -25287, i16 -24391, i16 -23884, i16 -24944, i16 -24939, i16 -24930, i16 -24926, i16 19764, i16 -24918, i16 -24913, i16 17252, i16 -24895, i16 15200, i16 14821, i16 15645, i16 20274, i16 14270, i16 -29653, i16 -24830, i16 -24824, i16 19350, i16 -27612, i16 28066, i16 -24809, i16 -2, i16 -24775, i16 22175, i16 22154, i16 -24763, i16 -26184, i16 -28533, i16 -26638, i16 -31617, i16 -24734, i16 -24727, i16 31452, i16 -24690, i16 29206, i16 19390, i16 18805, i16 18875, i16 29047, i16 18936, i16 17224, i16 19025, i16 29598, i16 -29734, i16 6394, i16 31135, i16 -30338, i16 -29130, i16 -27799, i16 -27661, i16 -30140, i16 -27924, i16 -27775, i16 -27701, i16 -30356, i16 17593, i16 29207, i16 16107, i16 30578, i16 31299, i16 28880, i16 17523, i16 17400, i16 29054, i16 6127, i16 28835, i16 6334, i16 13721, i16 16071, i16 6277, i16 21551, i16 6136, i16 14114, i16 5883, i16 6201, i16 14049, i16 6004, i16 6353, i16 24395, i16 14115, i16 5824, i16 22363, i16 18981, i16 5118, i16 4776, i16 5062, i16 5302, i16 -31485, i16 13990, i16 -2, i16 -31659, i16 18836, i16 29029, i16 15921, i16 21852, i16 16123, i16 28754, i16 17652, i16 14062, i16 -26211, i16 28454, i16 26617, i16 14131, i16 15381, i16 15847, i16 22636, i16 6434, i16 26640, i16 16471, i16 14143, i16 16609, i16 16523, i16 16655, i16 27681, i16 21707, i16 22174, i16 26289, i16 22162, i16 4063, i16 2984, i16 3597, i16 -27706, i16 -29933, i16 -27748, i16 20216, i16 20779, i16 14361, i16 17462, i16 20156, i16 1125, i16 895, i16 20299, i16 20362, i16 22097, i16 23144, i16 427, i16 971, i16 14745, i16 778, i16 1044, i16 13365, i16 20265, i16 704, i16 -29005, i16 629, i16 -29990, i16 524, i16 20120, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 20685, i16 20749, i16 20386, i16 20227, i16 18958, i16 16010, i16 20290, i16 20526, i16 20588, i16 20609, i16 20428, i16 20453, i16 20568, i16 20732, i16 -2, i16 -2, i16 -2, i16 -2, i16 28278, i16 13717, i16 15929, i16 16063, i16 28018, i16 6276, i16 16009, i16 20904, i16 20931, i16 1504, i16 17629, i16 1187, i16 1170, i16 1169, i16 -29318, i16 -30052, i16 1806, i16 21081, i16 21156, i16 2163, i16 21217, i16 -2, i16 18042, i16 29068, i16 17292, i16 3104, i16 18860, i16 4324, i16 27089, i16 3613, i16 -2, i16 16094, i16 29849, i16 29716, i16 29782, i16 29592, i16 19342, i16 19132, i16 16525, i16 21456, i16 13700, i16 29199, i16 16585, i16 21940, i16 837, i16 21709, i16 3014, i16 22301, i16 -28067, i16 -26892, i16 -27802, i16 22493, i16 22413, i16 22399, i16 13886, i16 22731, i16 23193, i16 -30138, i16 5882, i16 5999, i16 5904, i16 23084, i16 22968, i16 -28017, i16 23166, i16 23247, i16 23058, i16 22854, i16 6643, i16 6241, i16 17045, i16 14069, i16 27909, i16 29763, i16 23073, i16 24195, i16 23169, i16 -29737, i16 1043, i16 -27680, i16 29836, i16 4867, i16 28933, i16 18802, i16 -27640, i16 -30213, i16 -27715, i16 14240, i16 23582, i16 23710, i16 24158, i16 24136, i16 6550, i16 6524, i16 15086, i16 24269, i16 23375, i16 6403, i16 6404, i16 14081, i16 6304, i16 14045, i16 5886, i16 14035, i16 -32470, i16 -30137, i16 7610, i16 13426, i16 -30296, i16 24332, i16 24334, i16 6439, i16 6059, i16 23147, i16 5947, i16 23364, i16 -31212, i16 30205, i16 -30624, i16 24702, i16 10336, i16 9771, i16 24539, i16 16056, i16 9647, i16 9662, i16 -28536, i16 28531, i16 25024, i16 62, i16 70, i16 9755, i16 24985, i16 24984, i16 24693, i16 11419, i16 11527, i16 18132, i16 -28339, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 25713, i16 18021, i16 11114, i16 14889, i16 11042, i16 13392, i16 -26390, i16 11896, i16 25399, i16 -23461, i16 25782, i16 25393, i16 25553, i16 18915, i16 11623, i16 25252, i16 11425, i16 25659, i16 25963, i16 26994, i16 15348, i16 12430, i16 12973, i16 18825, i16 12971, i16 21773, i16 13024, i16 6361, i16 -27585, i16 26318, i16 12937, i16 12723, i16 15072, i16 16784, i16 21892, i16 -29918, i16 21903, i16 5884, i16 21851, i16 21541, i16 30958, i16 12547, i16 6186, i16 12852, i16 13412, i16 12815, i16 12674, i16 17097, i16 26254, i16 27940, i16 26219, i16 19347, i16 26160, i16 30832, i16 7659, i16 26211, i16 13010, i16 13025, i16 26142, i16 22642, i16 14545, i16 14394, i16 14268, i16 15257, i16 14242, i16 13310, i16 29904, i16 15254, i16 26511, i16 17962, i16 26806, i16 26654, i16 15300, i16 27326, i16 14435, i16 14293, i16 17543, i16 27187, i16 27218, i16 27337, i16 27397, i16 6418, i16 25873, i16 26776, i16 27212, i16 15319, i16 27258, i16 27479, i16 16320, i16 15514, i16 -27744, i16 -27918, i16 -29718, i16 -30005, i16 -28023, i16 -32738, i16 -30244, i16 -27545, i16 28069, i16 28427, i16 18924, i16 -2, i16 16255, i16 15759, i16 28164, i16 16444, i16 23101, i16 28170, i16 22599, i16 27940, i16 30786, i16 28987, i16 17178, i16 17014, i16 28913, i16 29264, i16 29319, i16 29332, i16 18319, i16 18213, i16 20857, i16 19108, i16 1515, i16 29818, i16 16120, i16 13919, i16 19018, i16 18711, i16 24545, i16 16134, i16 16049, i16 19167, i16 -29661, i16 16181, i16 24743, i16 16115, i16 29900, i16 29756, i16 -27769, i16 29751, i16 17567, i16 28138, i16 17745, i16 30083, i16 16227, i16 19673, i16 19718, i16 16216, i16 30037, i16 30323, i16 -23098, i16 15129, i16 29800, i16 -30004, i16 18859, i16 18830, i16 15099, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 15821, i16 19022, i16 16127, i16 18885, i16 18675, i16 -28166, i16 22322, i16 -27838, i16 -29981, i16 6244, i16 20703, i16 21025, i16 20967, i16 30584, i16 12850, i16 30478, i16 30479, i16 30587, i16 18071, i16 14209, i16 14942, i16 18672, i16 29752, i16 29851, i16 16063, i16 19130, i16 19143, i16 16584, i16 19094, i16 25006, i16 -27897, i16 21889, i16 30750, i16 30861, i16 30856, i16 30930, i16 29648, i16 31065, i16 30529, i16 22243, i16 16654, i16 -2, i16 -31594, i16 31141, i16 27181, i16 16122, i16 31290, i16 31220, i16 16750, i16 5862, i16 16690, i16 -28107, i16 31217, i16 3404, i16 18828, i16 665, i16 15802, i16 5998, i16 13719, i16 21867, i16 13680, i16 13994, i16 468, i16 3085, i16 31458, i16 23129, i16 9973, i16 23215, i16 23196, i16 23053, i16 603, i16 30960, i16 23082, i16 23494, i16 31486, i16 16889, i16 31837, i16 31853, i16 16913, i16 23475, i16 24252, i16 24230, i16 31949, i16 18937, i16 6064, i16 31886, i16 31868, i16 31918, i16 27314, i16 32220, i16 32263, i16 32211, i16 32590, i16 25185, i16 24924, i16 31560, i16 32151, i16 24194, i16 17002, i16 27509, i16 2326, i16 26582, i16 78, i16 13775, i16 22468, i16 25618, i16 25592, i16 18786, i16 32733, i16 31527, i16 2092, i16 23273, i16 23875, i16 31500, i16 24078, i16 -26138, i16 -31163, i16 -26013, i16 27164, i16 13375, i16 14818, i16 18935, i16 26029, i16 -26081, i16 26016, i16 -31616, i16 28967, i16 27857, i16 17642, i16 -32457, i16 17410, i16 -32570, i16 -32503, i16 -32446, i16 26548, i16 -26429, i16 27202, i16 -32158, i16 -32155, i16 27217, i16 -31661, i16 28071, i16 -31216, i16 29211, i16 23174, i16 16767, i16 6208, i16 23339, i16 6305, i16 23268, i16 6360, i16 -31072, i16 -1604, i16 15759, i16 -30675, i16 29730, i16 23042, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -30610, i16 20293, i16 -30585, i16 -30529, i16 -30490, i16 -30363, i16 -30387, i16 22147, i16 -30380, i16 30597, i16 30596, i16 -29707, i16 -29735, i16 -29796, i16 -30215, i16 16045, i16 -31581, i16 18165, i16 18127, i16 14322, i16 -30147, i16 -30180, i16 -27576, i16 24397, i16 -28117, i16 17028, i16 26068, i16 28969, i16 28868, i16 6213, i16 -25235, i16 -29537, i16 -29463, i16 32220, i16 22938, i16 30659, i16 23024, i16 17262, i16 14036, i16 -29142, i16 -29017, i16 19465, i16 -28880, i16 -28854, i16 17140, i16 27736, i16 28603, i16 8993, i16 18587, i16 28537, i16 28299, i16 6106, i16 -25623, i16 14005, i16 18735, i16 -28485, i16 -2, i16 21873, i16 18694, i16 -28229, i16 -27644, i16 -30133, i16 16482, i16 -29956, i16 -27609, i16 -29667, i16 -29637, i16 -31515, i16 -30165, i16 -27239, i16 -27225, i16 -27241, i16 -27242, i16 -29388, i16 29765, i16 16066, i16 18687, i16 19010, i16 17386, i16 16103, i16 12837, i16 -26993, i16 -28953, i16 -29082, i16 -29083, i16 16076, i16 18925, i16 19064, i16 16366, i16 29714, i16 29803, i16 16124, i16 -26815, i16 -28496, i16 26695, i16 18973, i16 -28525, i16 22495, i16 -2, i16 -27800, i16 -30327, i16 -29658, i16 -29905, i16 25534, i16 -27974, i16 23313, i16 -29847, i16 18748, i16 29689, i16 16923, i16 -26725, i16 -26767, i16 -26312, i16 3878, i16 24001, i16 -29755, i16 19122, i16 -26593, i16 -27430, i16 -27914, i16 -27177, i16 -28187, i16 17600, i16 -29872, i16 19047, i16 -29852, i16 -26404, i16 -30139, i16 16128, i16 -28118, i16 18725, i16 -31724, i16 -26309, i16 -26291, i16 31494, i16 15869, i16 -26213, i16 19311, i16 -26198, i16 -26020, i16 -29851, i16 22728, i16 27279, i16 -26079, i16 23294, i16 -26065, i16 -26383, i16 19344, i16 -26296, i16 -26180, i16 19389, i16 19351, i16 -27779, i16 22642, i16 4866, i16 22562, i16 18872, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 5352, i16 30788, i16 10015, i16 15800, i16 26821, i16 15741, i16 -27560, i16 14631, i16 24912, i16 10113, i16 10603, i16 24839, i16 -25521, i16 -25517, i16 -25477, i16 -25547, i16 -25584, i16 -25729, i16 -25649, i16 -25043, i16 -25697, i16 -24075, i16 -24322, i16 -25311, i16 19630, i16 16644, i16 -25064, i16 19632, i16 -25332, i16 -24140, i16 -24339, i16 -24333, i16 -26321, i16 -25179, i16 -31555, i16 28178, i16 28639, i16 27522, i16 -31236, i16 17715, i16 28068, i16 28292, i16 28144, i16 -31712, i16 -31250, i16 28160, i16 14295, i16 24676, i16 31202, i16 13724, i16 13888, i16 18733, i16 18910, i16 15714, i16 -27685, i16 -27970, i16 -27832, i16 703, i16 30905, i16 -28041, i16 -27571, i16 20452, i16 13376, i16 -28572, i16 21853, i16 30781, i16 30804, i16 30902, i16 30795, i16 5975, i16 12745, i16 18753, i16 13978, i16 20338, i16 28634, i16 28633, i16 -2, i16 28702, i16 21524, i16 16821, i16 22459, i16 22771, i16 22410, i16 -25322, i16 22487, i16 28980, i16 13487, i16 16812, i16 29163, i16 27712, i16 20375, i16 -2, i16 6069, i16 -30135, i16 24844, i16 23246, i16 23051, i16 17084, i16 17544, i16 14124, i16 19323, i16 -30212, i16 -27717, i16 -27720, i16 6358, i16 3869, i16 -31630, i16 27840, i16 5139, i16 17146, i16 11302, i16 17345, i16 22932, i16 15799, i16 26433, i16 32168, i16 24923, i16 24740, i16 18873, i16 18827, i16 -30214, i16 -27931, i16 29666, i16 16105, i16 29876, i16 -29853, i16 6303, i16 16097, i16 19123, i16 27352, i16 29683, i16 29691, i16 16086, i16 19006, i16 19092, i16 6105, i16 19046, i16 935, i16 5156, i16 18917, i16 29768, i16 18710, i16 28837, i16 18806, i16 -28028, i16 29670, i16 -27809, i16 1278, i16 -27855, i16 -30002, i16 -30186, i16 -27770, i16 -29721, i16 21973, i16 18741, i16 -30078, i16 29035, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 18755, i16 3327, i16 22180, i16 1562, i16 3051, i16 3256, i16 21762, i16 31172, i16 6138, i16 32254, i16 5826, i16 19024, i16 6226, i16 17710, i16 -27647, i16 14090, i16 -30016, i16 18861, i16 22960, i16 6335, i16 6275, i16 29828, i16 23201, i16 14050, i16 15707, i16 14000, i16 -28065, i16 23161, i16 -30079, i16 6242, i16 -27788, i16 15565, i16 2740, i16 19094, i16 14730, i16 20724, i16 15721, i16 15692, i16 5020, i16 29045, i16 17147, i16 -32232, i16 28175, i16 -28444, i16 17643, i16 27991, i16 32335, i16 28775, i16 27823, i16 15574, i16 16365, i16 15917, i16 28162, i16 28428, i16 15727, i16 1013, i16 30033, i16 14012, i16 13512, i16 18048, i16 16090, i16 18545, i16 22980, i16 -28050, i16 18750, i16 -28863, i16 -29668, i16 27584, i16 22546, i16 22472, i16 14038, i16 5202, i16 28926, i16 17250, i16 19057, i16 12259, i16 4784, i16 9149, i16 26809, i16 26983, i16 5016, i16 13541, i16 31732, i16 14047, i16 -30077, i16 14294, i16 13306, i16 19615, i16 27162, i16 13997, i16 27831, i16 -31682, i16 17631, i16 17614, i16 27942, i16 27985, i16 27778, i16 28638, i16 28439, i16 28937, i16 -31939, i16 5946, i16 -31763, i16 27776, i16 28755, i16 6107, i16 22921, i16 23170, i16 6067, i16 23137, i16 23153, i16 6405, i16 16892, i16 14125, i16 23023, i16 5948, i16 14023, i16 29070, i16 -27760, i16 26266, i16 17061, i16 23150, i16 23083, i16 17043, i16 27179, i16 16121, i16 30518, i16 17499, i16 17098, i16 28957, i16 16985, i16 -30239, i16 20400, i16 27944, i16 23746, i16 17614, i16 32333, i16 17341, i16 27148, i16 16982, i16 4868, i16 28838, i16 28979, i16 17385, i16 15781, i16 27871, i16 -2011, i16 19023, i16 32357, i16 23019, i16 23855, i16 15859, i16 24412, i16 19037, i16 6111, i16 32164, i16 -31706, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 21637, i16 15098, i16 13056, i16 532, i16 22398, i16 2261, i16 1561, i16 16357, i16 8094, i16 -23882, i16 28675, i16 -28325, i16 23920, i16 29583, i16 31955, i16 -30119, i16 -27616, i16 20424, i16 32743, i16 29389, i16 29456, i16 31476, i16 29496, i16 29497, i16 22262, i16 29505, i16 29512, i16 16041, i16 31512, i16 -28564, i16 29173, i16 18674, i16 29665, i16 -32266, i16 16074, i16 30476, i16 16081, i16 27810, i16 22269, i16 29721, i16 29726, i16 29727, i16 16098, i16 16112, i16 16116, i16 16122, i16 29907, i16 16142, i16 16211, i16 30018, i16 30061, i16 30066, i16 30093, i16 16252, i16 30152, i16 30172, i16 16320, i16 30285, i16 16343, i16 30324, i16 16348, i16 30330, i16 20316, i16 29064, i16 22051, i16 -30336, i16 22633, i16 16413, i16 30531, i16 16441, i16 26465, i16 16453, i16 13787, i16 30616, i16 16490, i16 16495, i16 23646, i16 30654, i16 30667, i16 22770, i16 30744, i16 28857, i16 30748, i16 16552, i16 30777, i16 30791, i16 30801, i16 30822, i16 -31672, i16 21813, i16 31027, i16 26627, i16 31026, i16 16643, i16 16649, i16 31121, i16 31129, i16 -28741, i16 31238, i16 -28740, i16 16743, i16 31377, i16 16818, i16 31420, i16 -32135, i16 16836, i16 31439, i16 31451, i16 16847, i16 20001, i16 31586, i16 31596, i16 31611, i16 31762, i16 31771, i16 16992, i16 17018, i16 31867, i16 31900, i16 17036, i16 31928, i16 17044, i16 31981, i16 -28781, i16 28864, i16 3279, i16 32207, i16 32212, i16 32208, i16 32253, i16 32686, i16 32692, i16 29343, i16 17303, i16 -32736, i16 -32731, i16 31545, i16 -32722, i16 -32719, i16 -32684, i16 15820, i16 22452, i16 28832, i16 -32585, i16 -32535, i16 17389, i16 -32500, i16 29482, i16 -32498, i16 -32494, i16 30048, i16 -32492, i16 17409, i16 15161, i16 -32426, i16 -32423, i16 -32422, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 17427, i16 22586, i16 -32388, i16 -32380, i16 17445, i16 -32365, i16 17453, i16 -32347, i16 22511, i16 -32319, i16 -32284, i16 -32172, i16 17551, i16 -32090, i16 -32138, i16 -32054, i16 -32040, i16 -32001, i16 17584, i16 -31913, i16 -27031, i16 27018, i16 -31739, i16 28917, i16 -31644, i16 24803, i16 -31608, i16 17668, i16 -31554, i16 -31519, i16 -31496, i16 -31472, i16 -31432, i16 -31406, i16 17723, i16 -31377, i16 -31376, i16 -31264, i16 17783, i16 -31118, i16 -31086, i16 -31054, i16 -30993, i16 -27067, i16 -30837, i16 17926, i16 17943, i16 -30546, i16 -30465, i16 -30428, i16 -30393, i16 -30319, i16 31079, i16 -30167, i16 -30152, i16 -30060, i16 -30028, i16 -29615, i16 -29484, i16 -29454, i16 -29412, i16 18328, i16 22623, i16 -29245, i16 18413, i16 20206, i16 -29126, i16 21976, i16 22356, i16 -29071, i16 22005, i16 -29008, i16 18487, i16 -28978, i16 -28958, i16 -28956, i16 -28947, i16 -28942, i16 -28745, i16 -28735, i16 -28726, i16 -28724, i16 -28621, i16 -26172, i16 18605, i16 -26400, i16 -28141, i16 18718, i16 -28120, i16 -28072, i16 -28053, i16 -27983, i16 -27986, i16 -27969, i16 -27933, i16 -27925, i16 -27917, i16 -27916, i16 -27907, i16 -27837, i16 -27772, i16 -27731, i16 18757, i16 18769, i16 -24897, i16 -27625, i16 21249, i16 -27619, i16 -27603, i16 -27586, i16 18794, i16 -27564, i16 -27527, i16 -27347, i16 -27230, i16 18855, i16 -27148, i16 -27085, i16 18917, i16 26528, i16 18980, i16 -26816, i16 18997, i16 -26702, i16 -26686, i16 22100, i16 19172, i16 24808, i16 -26439, i16 19225, i16 -26383, i16 22596, i16 -26354, i16 -26343, i16 20916, i16 -26340, i16 -26313, i16 -26302, i16 -26275, i16 -26270, i16 19312, i16 -26171, i16 19357, i16 -26052, i16 -25841, i16 31363, i16 -25751, i16 -25727, i16 -25635, i16 -25615, i16 -25612, i16 19565, i16 -25568, i16 14191, i16 7106, i16 -25271, i16 -25542, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -24834, i16 22096, i16 -25197, i16 -25155, i16 -25152, i16 -25092, i16 -27402, i16 -28746, i16 -24965, i16 -24916, i16 -24911, i16 -24899, i16 -24890, i16 -27428, i16 -24862, i16 -24847, i16 -24840, i16 31432, i16 -24764, i16 148, i16 695, i16 928, i16 26906, i16 -27453, i16 22956, i16 1239, i16 22592, i16 -27455, i16 14265, i16 1493, i16 1557, i16 1654, i16 5818, i16 22359, i16 29043, i16 2754, i16 2765, i16 3007, i16 21610, i16 -1989, i16 3019, i16 21662, i16 3067, i16 3131, i16 3155, i16 3173, i16 3196, i16 24807, i16 3213, i16 22138, i16 3253, i16 3293, i16 3309, i16 3439, i16 3506, i16 3528, i16 26965, i16 -25553, i16 -30811, i16 3588, i16 3598, i16 3799, i16 3984, i16 3885, i16 3699, i16 23584, i16 4028, i16 24075, i16 4188, i16 4175, i16 4214, i16 26398, i16 4219, i16 4232, i16 4246, i16 13895, i16 4287, i16 4307, i16 4399, i16 4411, i16 21348, i16 -31571, i16 4835, i16 4981, i16 4918, i16 -29823, i16 5495, i16 5657, i16 6083, i16 6087, i16 20088, i16 28859, i16 6189, i16 6506, i16 6701, i16 6725, i16 7210, i16 7280, i16 7340, i16 7880, i16 25283, i16 7893, i16 7957, i16 29080, i16 26709, i16 8261, i16 27113, i16 14024, i16 8828, i16 9175, i16 9210, i16 10026, i16 10353, i16 10575, i16 -32003, i16 10599, i16 10643, i16 10965, i16 -30299, i16 10984, i16 -28768, i16 11022, i16 -26696, i16 11071, i16 -26553, i16 -25923, i16 11340, i16 -2, i16 11400, i16 11447, i16 23528, i16 11528, i16 11538, i16 11703, i16 11669, i16 11842, i16 12148, i16 12236, i16 12339, i16 12390, i16 13087, i16 13278, i16 24497, i16 26184, i16 26303, i16 31353, i16 13671, i16 13811, i16 -2, i16 18874, i16 -2, i16 13850, i16 14102, i16 -2, i16 838, i16 22709, i16 26382, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 26904, i16 15015, i16 30295, i16 24546, i16 15889, i16 16057, i16 30206, i16 8346, i16 18640, i16 19128, i16 16665, i16 -30054, i16 17134, i16 17165, i16 16443, i16 17204, i16 17302, i16 19013, i16 1482, i16 20946, i16 1553, i16 22943, i16 7848, i16 15294, i16 15615, i16 17412, i16 17622, i16 22408, i16 18036, i16 14747, i16 18223, i16 -31256, i16 -26167, i16 14178, i16 8643, i16 -29858, i16 -29874, i16 -2, i16 18450, i16 18683, i16 18965, i16 29193, i16 19136, i16 3192, i16 22885, i16 20133, i16 20358, i16 1913, i16 -28966, i16 20524, i16 21135, i16 22335, i16 29041, i16 21145, i16 21529, i16 16202, i16 19111, i16 21948, i16 21574, i16 21614, i16 27474, i16 -2, i16 13427, i16 21823, i16 30258, i16 21854, i16 18200, i16 21858, i16 21862, i16 22471, i16 18751, i16 22621, i16 20582, i16 13563, i16 13260, i16 -2, i16 22787, i16 18300, i16 -30392, i16 23214, i16 23433, i16 23558, i16 7568, i16 22433, i16 29009, i16 -2, i16 24834, i16 31762, i16 -28586, i16 25010, i16 20378, i16 -29854, i16 25602, i16 25674, i16 23899, i16 27639, i16 -2, i16 25732, i16 6428, i16 -29974, i16 18934, i16 25736, i16 16367, i16 25874, i16 19392, i16 26047, i16 26293, i16 10011, i16 -27547, i16 22497, i16 24981, i16 23079, i16 -1843, i16 -2, i16 22201, i16 17697, i16 26364, i16 20074, i16 18740, i16 -27050, i16 28047, i16 27837, i16 13848, i16 -30345, i16 26521, i16 26734, i16 25617, i16 26718, i16 -2, i16 26823, i16 31554, i16 -28480, i16 2577, i16 26918, i16 -2, i16 26937, i16 31301, i16 -2, i16 27130, i16 -26074, i16 27181, i16 13919, i16 25705, i16 33, i16 31107, i16 27188, i16 27483, i16 23852, i16 13593, i16 -2, i16 27549, i16 18128, i16 27812, i16 30011, i16 -30619, i16 28078, i16 22710, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 14108, i16 9613, i16 28747, i16 29133, i16 15444, i16 29312, i16 29317, i16 -28031, i16 8570, i16 29323, i16 -27856, i16 29414, i16 18896, i16 27705, i16 -27489, i16 29776, i16 3832, i16 -30681, i16 -30475, i16 10534, i16 -31629, i16 6065, i16 28344, i16 18986, i16 6176, i16 14756, i16 14009, i16 -2, i16 -2, i16 17727, i16 26294, i16 -25427, i16 -26460, i16 -30397, i16 30668, i16 30808, i16 22230, i16 16607, i16 5642, i16 14753, i16 14127, i16 -32536, i16 5061, i16 29101, i16 -31898, i16 31197, i16 -28248, i16 -2, i16 19639, i16 28847, i16 -30293, i16 31229, i16 31242, i16 31499, i16 32102, i16 16762, i16 31555, i16 31102, i16 -32759, i16 28597, i16 -23841, i16 27139, i16 -31976, i16 21410, i16 28167, i16 -27713, i16 26678, i16 -26787, i16 -32401, i16 -32733, i16 27061, i16 5101, i16 12847, i16 -32696, i16 23941, i16 -29648, i16 -32637, i16 22293, i16 -26589, i16 -30391, i16 23979, i16 18824, i16 26046, i16 27093, i16 21458, i16 19109, i16 16257, i16 15377, i16 26422, i16 -32624, i16 -32524, i16 -32466, i16 8097, i16 -32433, i16 -32375, i16 -32337, i16 -32230, i16 -31994, i16 -31953, i16 -31862, i16 13770, i16 -31640, i16 -31062, i16 18682, i16 25574, i16 -30378, i16 30728, i16 -28075, i16 -30280, i16 17394, i16 -30233, i16 17375, i16 -30232, i16 -29882, i16 -29740, i16 23032, i16 -29687, i16 -2, i16 -28731, i16 -28436, i16 -2, i16 -28400, i16 -28356, i16 15863, i16 -28322, i16 19146, i16 -28720, i16 29327, i16 22155, i16 -27417, i16 -27159, i16 -27216, i16 -27208, i16 -26830, i16 -26415, i16 -26295, i16 -26262, i16 -26173, i16 -26072, i16 -25842, i16 -25254, i16 -25189, i16 32415, i16 -24840, i16 -24797, i16 19620, i16 -27321, i16 -23917, i16 29090, i16 -23809, i16 19857, i16 -28654, i16 -23093, i16 19868, i16 3228, i16 -28738, i16 21953, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -28742, i16 9392, i16 -28743, i16 19091, i16 17673, i16 32383, i16 28502, i16 27313, i16 20202, i16 13540, i16 -29908, i16 30877, i16 14138, i16 -29056, i16 6133, i16 -32732, i16 -29844, i16 -29799, i16 31294, i16 26287, i16 15851, i16 30293, i16 15543, i16 22069, i16 22870, i16 20122, i16 24193, i16 25176, i16 22207, i16 3693, i16 -29170, i16 23405, i16 16008, i16 19614, i16 25566, i16 -2, i16 6134, i16 6267, i16 25904, i16 22061, i16 23626, i16 21530, i16 21265, i16 15814, i16 -25192, i16 19581, i16 22050, i16 22046, i16 32585, i16 24280, i16 22901, i16 15680, i16 -30864, i16 19996, i16 4074, i16 3401, i16 14010, i16 -32489, i16 -25250, i16 -29416, i16 30267, i16 -25531, i16 30286, i16 30649, i16 -27835, i16 21554, i16 -32440, i16 -32009, i16 22053, i16 -32462, i16 -31720, i16 -32579, i16 21994, i16 31074, i16 22083, i16 21526, i16 3741, i16 13774, i16 22021, i16 22001, i16 26353, i16 -32030, i16 13869, i16 30004, i16 22000, i16 21946, i16 21655, i16 21874, i16 3137, i16 3222, i16 24272, i16 20808, i16 3702, i16 11362, i16 3746, i16 -24917, i16 32090, i16 21982, i16 4213, i16 25245, i16 -26771, i16 21652, i16 -29491, i16 29174, i16 -28298, i16 25596, i16 25529, i16 25598, i16 21865, i16 11075, i16 -25486, i16 11955, i16 20890, i16 13535, i16 3495, i16 20903, i16 21581, i16 21790, i16 21779, i16 30310, i16 -29139, i16 26762, i16 30129, i16 -32586, i16 -30716, i16 -30842, i16 -30521, i16 -32330, i16 -31716, i16 4289, i16 17644, i16 29444, i16 18182, i16 23440, i16 -31989, i16 26771, i16 22139, i16 9972, i16 32047, i16 16803, i16 32115, i16 28368, i16 29366, i16 -28304, i16 4569, i16 -28152, i16 15612, i16 -22871, i16 3756, i16 3833, i16 29286, i16 7330, i16 18254, i16 20418, i16 32761, i16 4075, i16 16634, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25507, i16 25887, i16 11680, i16 18675, i16 18400, i16 -25220, i16 4076, i16 3594, i16 -2, i16 30115, i16 4077, i16 -2, i16 24648, i16 4487, i16 29091, i16 32398, i16 -25264, i16 19994, i16 19972, i16 13687, i16 23309, i16 27826, i16 21351, i16 13996, i16 14812, i16 21373, i16 13989, i16 17944, i16 22682, i16 19310, i16 -32211, i16 21579, i16 22442, i16 23189, i16 2425, i16 -2, i16 14930, i16 9317, i16 29556, i16 -24916, i16 19721, i16 -25619, i16 15614, i16 -24784, i16 19547, i16 20393, i16 -27234, i16 -24610, i16 -31652, i16 15798, i16 29362, i16 26547, i16 14112, i16 25390, i16 32037, i16 16119, i16 15916, i16 14890, i16 -28664, i16 21196, i16 15988, i16 13946, i16 17897, i16 1166, i16 30272, i16 23280, i16 3766, i16 30842, i16 32558, i16 22695, i16 16575, i16 22140, i16 -25717, i16 23924, i16 30292, i16 -23500, i16 -24955, i16 19681, i16 -2, i16 14331, i16 24857, i16 12506, i16 17394, i16 -2, i16 22109, i16 4777, i16 22439, i16 18787, i16 -25082, i16 21044, i16 28846, i16 13741, i16 -2, i16 -25220, i16 31830, i16 -25799, i16 22494, i16 5996, i16 23635, i16 25811, i16 -27440, i16 25397, i16 29028, i16 -31059, i16 3368, i16 27938, i16 19170, i16 3441, i16 -2, i16 20990, i16 7951, i16 23950, i16 -26877, i16 7633, i16 -24959, i16 -28596, i16 31519, i16 -25854, i16 23761, i16 31651, i16 25192, i16 25397, i16 -25857, i16 31695, i16 -25814, i16 31870, i16 -2, i16 31810, i16 31878, i16 -25579, i16 31740, i16 -25847, i16 -2, i16 -25573, i16 18750, i16 -24742, i16 21875, i16 23491, i16 20477, i16 -24936, i16 20466, i16 21088, i16 15878, i16 21201, i16 22375, i16 20566, i16 22967, i16 24082, i16 -26680, i16 -25173, i16 -28836, i16 21609, i16 -26700, i16 -26304, i16 -26694, i16 21292, i16 24880, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 26924, i16 21466, i16 -25590, i16 -25342, i16 19515, i16 -27071, i16 27008, i16 20646, i16 30022, i16 5997, i16 -26150, i16 21107, i16 -2, i16 -28327, i16 -27007, i16 -28324, i16 -2, i16 -28335, i16 -29033, i16 25471, i16 27939, i16 27338, i16 22033, i16 -28274, i16 30074, i16 25221, i16 1020, i16 29519, i16 31856, i16 23585, i16 15613, i16 -2, i16 18713, i16 30422, i16 -25699, i16 20010, i16 3284, i16 -31810, i16 -30654, i16 -2, i16 23626, i16 27072, i16 -2, i16 22394, i16 21023, i16 24053, i16 20174, i16 27697, i16 498, i16 20281, i16 21660, i16 21722, i16 21146, i16 -29310, i16 13822, i16 -2, i16 13811, i16 -2, i16 27474, i16 -28292, i16 -24667, i16 -25705, i16 -26578, i16 -26444, i16 -25926, i16 -24920, i16 -24956, i16 29050, i16 31508, i16 -2, i16 27642, i16 -30696, i16 32632, i16 -2, i16 22048, i16 -22966, i16 -29065, i16 -24749, i16 -2, i16 -29228, i16 -29105, i16 -25060, i16 -29183, i16 25218, i16 -31875, i16 -29144, i16 -29067, i16 31443, i16 19063, i16 31294, i16 30936, i16 27882, i16 -30105, i16 30215, i16 -30118, i16 -24794, i16 27854, i16 -30762, i16 30147, i16 -23886, i16 30803, i16 -1984, i16 -29428, i16 29410, i16 29553, i16 -29907, i16 29442, i16 29937, i16 -29461, i16 19131, i16 -31185, i16 24506, i16 -30560, i16 17591, i16 -2, i16 6203, i16 28165, i16 -2, i16 -30082, i16 9499, i16 -2, i16 24829, i16 30311, i16 -25897, i16 -25276, i16 -27794, i16 -25713, i16 -30731, i16 -2, i16 -2, i16 -29449, i16 29484, i16 -26847, i16 -25680, i16 13782, i16 29362, i16 19463, i16 31825, i16 -26294, i16 24921, i16 24921, i16 19460, i16 -24938, i16 24957, i16 -2, i16 22367, i16 24943, i16 25254, i16 25145, i16 -2, i16 14940, i16 25058, i16 21418, i16 13301, i16 25444, i16 26626, i16 13778, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 23895, i16 -29758, i16 -28710, i16 -29127, i16 -2, i16 20697, i16 7494, i16 30982, i16 21298, i16 -27080, i16 3899, i16 16485, i16 -2, i16 30718, i16 -2, i16 31938, i16 24346, i16 31962, i16 31277, i16 -32666, i16 -32669, i16 32077, i16 29957, i16 29938, i16 -30316, i16 -32230, i16 26380, i16 -32670, i16 29830, i16 -32677, i16 29936, i16 -32509, i16 30500, i16 -30327, i16 26572, i16 30035, i16 28369, i16 -30807, i16 -30770, i16 -32312, i16 -30836, i16 -30135, i16 -29523, i16 -29885, i16 30507, i16 29944, i16 -31526, i16 13877, i16 27058, i16 -29274, i16 -2, i16 -30295, i16 -2, i16 28089, i16 -30783, i16 16401, i16 29927, i16 15835, i16 29046, i16 24740, i16 24988, i16 15569, i16 -2, i16 24695, i16 -2, i16 32625, i16 -29907, i16 -2, i16 24809, i16 19326, i16 21024, i16 15384, i16 15559, i16 24279, i16 30294, i16 21809, i16 6468, i16 4862, i16 -26365, i16 28124, i16 28845, i16 23745, i16 25005, i16 -30193, i16 13943, i16 238, i16 26694, i16 20238, i16 17762, i16 23327, i16 25420, i16 -24752, i16 -24922, i16 25195, i16 9312, i16 9313, i16 9314, i16 9315, i16 9316, i16 9317, i16 9318, i16 9319, i16 9320, i16 9321, i16 9332, i16 9333, i16 9334, i16 9335, i16 9336, i16 9337, i16 9338, i16 9339, i16 9340, i16 9341, i16 8560, i16 8561, i16 8562, i16 8563, i16 8564, i16 8565, i16 8566, i16 8567, i16 8568, i16 8569, i16 20022, i16 20031, i16 20101, i16 20128, i16 20866, i16 20886, i16 20907, i16 21241, i16 21304, i16 21353, i16 21430, i16 22794, i16 23424, i16 24027, i16 12083, i16 24191, i16 -2, i16 24400, i16 24417, i16 25908, i16 -2, i16 30098, i16 -2, i16 -28747, i16 -2, i16 168, i16 710, i16 12541, i16 12542, i16 12445, i16 12446, i16 -2, i16 -2, i16 12293, i16 12294, i16 12295, i16 12540, i16 -197, i16 -195, i16 10045, i16 12353, i16 12354, i16 12355, i16 12356, i16 12357, i16 12358, i16 12359, i16 12360, i16 12361, i16 12362, i16 12363, i16 12364, i16 12365, i16 12366, i16 12367, i16 12368, i16 12369, i16 12370, i16 12371, i16 12372, i16 12373, i16 12374, i16 12375, i16 12376, i16 12377, i16 12378, i16 12379, i16 12380, i16 12381, i16 12382, i16 12383, i16 12384, i16 12385, i16 12386, i16 12387, i16 12388, i16 12389, i16 12390, i16 12391, i16 12392, i16 12393, i16 12394, i16 12395, i16 12396, i16 12397, i16 12398, i16 12399, i16 12400, i16 12401, i16 12402, i16 12403, i16 12404, i16 12405, i16 12406, i16 12407, i16 12408, i16 12409, i16 12410, i16 12411, i16 12412, i16 12413, i16 12414, i16 12415, i16 12416, i16 12417, i16 12418, i16 12419, i16 12420, i16 12421, i16 12422, i16 12423, i16 12424, i16 12425, i16 12426, i16 12427, i16 12428, i16 12429, i16 12430, i16 12431, i16 12432, i16 12433, i16 12434, i16 12435, i16 12449, i16 12450, i16 12451, i16 12452, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 12453, i16 12454, i16 12455, i16 12456, i16 12457, i16 12458, i16 12459, i16 12460, i16 12461, i16 12462, i16 12463, i16 12464, i16 12465, i16 12466, i16 12467, i16 12468, i16 12469, i16 12470, i16 12471, i16 12472, i16 12473, i16 12474, i16 12475, i16 12476, i16 12477, i16 12478, i16 12479, i16 12480, i16 12481, i16 12482, i16 12483, i16 12484, i16 12485, i16 12486, i16 12487, i16 12488, i16 12489, i16 12490, i16 12491, i16 12492, i16 12493, i16 12494, i16 12495, i16 12496, i16 12497, i16 12498, i16 12499, i16 12500, i16 12501, i16 12502, i16 12503, i16 12504, i16 12505, i16 12506, i16 12507, i16 12508, i16 12509, i16 12510, i16 12511, i16 12512, i16 12513, i16 12514, i16 12515, i16 12516, i16 12517, i16 12518, i16 12519, i16 12520, i16 12521, i16 12522, i16 12523, i16 12524, i16 12525, i16 12526, i16 12527, i16 12528, i16 12529, i16 12530, i16 12531, i16 12532, i16 12533, i16 12534, i16 1040, i16 1041, i16 1042, i16 1043, i16 1044, i16 1045, i16 1025, i16 1046, i16 1047, i16 1048, i16 1049, i16 1050, i16 1051, i16 1052, i16 1053, i16 1054, i16 1055, i16 1056, i16 1057, i16 1058, i16 1059, i16 1060, i16 1061, i16 1062, i16 1063, i16 1064, i16 1065, i16 1066, i16 1067, i16 1068, i16 1069, i16 1070, i16 1071, i16 1072, i16 1073, i16 1074, i16 1075, i16 1076, i16 1077, i16 1105, i16 1078, i16 1079, i16 1080, i16 1081, i16 1082, i16 1083, i16 1084, i16 1085, i16 1086, i16 1087, i16 1088, i16 1089, i16 1090, i16 1091, i16 1092, i16 1093, i16 1094, i16 1095, i16 1096, i16 1097, i16 1098, i16 1099, i16 1100, i16 1101, i16 1102, i16 1103, i16 8679, i16 8632, i16 8633, i16 12751, i16 204, i16 20058, i16 138, i16 20994, i16 17553, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -24656, i16 20872, i16 -24655, i16 30215, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -30, i16 -28, i16 -249, i16 -254, i16 12849, i16 8470, i16 8481, i16 12443, i16 12444, i16 11904, i16 11908, i16 11910, i16 11911, i16 11912, i16 11914, i16 11916, i16 11917, i16 11925, i16 11932, i16 11933, i16 11941, i16 11943, i16 11946, i16 11948, i16 11950, i16 11958, i16 11964, i16 11966, i16 11974, i16 11978, i16 11980, i16 11981, i16 11983, i16 11990, i16 11991, i16 11998, i16 12003, i16 -2, i16 -2, i16 -2, i16 643, i16 592, i16 603, i16 596, i16 629, i16 339, i16 248, i16 331, i16 650, i16 618, i16 30849, i16 -27975, i16 -30513, i16 22715, i16 24658, i16 31911, i16 23290, i16 9556, i16 9574, i16 9559, i16 9568, i16 9580, i16 9571, i16 9562, i16 9577, i16 9565, i16 9554, i16 9572, i16 9557, i16 9566, i16 9578, i16 9569, i16 9560, i16 9575, i16 9563, i16 9555, i16 9573, i16 9558, i16 9567, i16 9579, i16 9570, i16 9561, i16 9576, i16 9564, i16 9553, i16 9552, i16 9581, i16 9582, i16 9584, i16 9583, i16 -19, i16 1351, i16 -27941, i16 1503, i16 16325, i16 -31412, i16 17077, i16 29679, i16 20917, i16 13897, i16 18754, i16 -30236, i16 -27836, i16 6619, i16 -32018, i16 15560, i16 30780, i16 26436, i16 25311, i16 18739, i16 -30294, i16 672, i16 27571, i16 4869, i16 20395, i16 9453, i16 20488, i16 27945, i16 31364, i16 13824, i16 19121, i16 9491, i16 -2, i16 894, i16 24484, i16 896, i16 839, i16 28379, i16 1055, i16 -2, i16 20737, i16 13434, i16 20750, i16 -26516, i16 14147, i16 -31722, i16 18852, i16 1159, i16 20832, i16 13236, i16 20842, i16 3071, i16 8444, i16 741, i16 9520, i16 1422, i16 12851, i16 6531, i16 23426, i16 -30851, i16 1459, i16 15513, i16 20914, i16 20920, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25292, i16 20937, i16 20943, i16 20945, i16 15580, i16 20947, i16 19110, i16 20915, i16 20962, i16 21314, i16 20973, i16 -31795, i16 26942, i16 14125, i16 24443, i16 21003, i16 21030, i16 21052, i16 21173, i16 21079, i16 21140, i16 21177, i16 21189, i16 31765, i16 -31422, i16 21216, i16 -31219, i16 27411, i16 -2, i16 -29986, i16 21833, i16 28377, i16 16256, i16 2388, i16 16364, i16 21299, i16 -2, i16 3042, i16 27851, i16 5926, i16 26651, i16 29653, i16 24650, i16 16042, i16 14540, i16 5864, i16 29149, i16 17570, i16 21357, i16 21364, i16 -31061, i16 21374, i16 -2, i16 5526, i16 5651, i16 30694, i16 21395, i16 -30053, i16 21408, i16 21419, i16 21422, i16 29607, i16 22386, i16 16217, i16 29596, i16 21441, i16 21445, i16 27721, i16 20041, i16 22526, i16 21465, i16 15019, i16 2959, i16 21472, i16 16363, i16 11683, i16 21494, i16 3191, i16 21523, i16 28793, i16 21803, i16 26199, i16 27995, i16 21613, i16 27475, i16 3444, i16 21853, i16 21647, i16 21668, i16 18342, i16 5901, i16 3805, i16 15796, i16 3405, i16 -30276, i16 9880, i16 21831, i16 19693, i16 21551, i16 29719, i16 21894, i16 21929, i16 -2, i16 6359, i16 16442, i16 17746, i16 17461, i16 26291, i16 4276, i16 22071, i16 26317, i16 12938, i16 26276, i16 26285, i16 22093, i16 22095, i16 30961, i16 22257, i16 -26745, i16 21502, i16 22272, i16 22255, i16 22253, i16 -29850, i16 13859, i16 4687, i16 22342, i16 16805, i16 27758, i16 28811, i16 22338, i16 14001, i16 27774, i16 22502, i16 5142, i16 22531, i16 5204, i16 17251, i16 22566, i16 19445, i16 22620, i16 22698, i16 13665, i16 22752, i16 22748, i16 4668, i16 22779, i16 23551, i16 22339, i16 -24240, i16 17016, i16 -27693, i16 13729, i16 22815, i16 26790, i16 14019, i16 28249, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 5694, i16 23076, i16 21843, i16 5778, i16 -31483, i16 22985, i16 3406, i16 27777, i16 27946, i16 6108, i16 23001, i16 6139, i16 6066, i16 28070, i16 28017, i16 6184, i16 5845, i16 23033, i16 28229, i16 23211, i16 23139, i16 14054, i16 18857, i16 -2, i16 14088, i16 23190, i16 29797, i16 23251, i16 28577, i16 9556, i16 15749, i16 6417, i16 14130, i16 5816, i16 24195, i16 21200, i16 23414, i16 25992, i16 23420, i16 31246, i16 16388, i16 18525, i16 516, i16 23509, i16 24928, i16 6708, i16 22988, i16 1445, i16 23539, i16 23453, i16 19728, i16 23557, i16 6980, i16 23571, i16 29646, i16 23572, i16 7333, i16 27432, i16 23625, i16 18653, i16 23685, i16 23785, i16 23791, i16 23947, i16 7673, i16 7735, i16 23824, i16 23832, i16 23878, i16 7844, i16 23738, i16 24023, i16 -32004, i16 14381, i16 18689, i16 8265, i16 8563, i16 -32121, i16 14390, i16 15298, i16 24110, i16 27274, i16 -2, i16 24186, i16 17596, i16 3283, i16 21414, i16 20151, i16 -2, i16 21416, i16 6001, i16 24073, i16 24308, i16 -31614, i16 24313, i16 24315, i16 14496, i16 24316, i16 26686, i16 -27621, i16 24333, i16 449, i16 -1900, i16 15070, i16 18606, i16 4922, i16 24378, i16 26760, i16 9168, i16 -2, i16 9329, i16 24419, i16 -26691, i16 28270, i16 24434, i16 -27840, i16 -30154, i16 24487, i16 23990, i16 15711, i16 21072, i16 8042, i16 28920, i16 9832, i16 -28202, i16 670, i16 -30167, i16 24625, i16 26245, i16 6263, i16 14691, i16 15815, i16 13881, i16 22416, i16 10164, i16 31089, i16 15936, i16 24734, i16 -2, i16 24755, i16 18818, i16 18831, i16 31315, i16 29860, i16 20705, i16 23200, i16 24932, i16 -31708, i16 24898, i16 -1882, i16 28370, i16 24961, i16 20980, i16 1622, i16 24967, i16 23466, i16 16311, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 10335, i16 25043, i16 -29795, i16 -26275, i16 25040, i16 14642, i16 10624, i16 10433, i16 24611, i16 24924, i16 25886, i16 25483, i16 280, i16 25285, i16 6000, i16 25301, i16 11789, i16 25452, i16 18911, i16 14871, i16 25656, i16 25592, i16 5006, i16 6140, i16 -2, i16 28554, i16 11830, i16 -26604, i16 16524, i16 22301, i16 25825, i16 25829, i16 -27525, i16 14950, i16 25658, i16 14935, i16 25933, i16 28438, i16 18984, i16 18979, i16 25989, i16 25965, i16 25951, i16 12414, i16 26037, i16 18752, i16 19255, i16 26065, i16 16600, i16 6185, i16 26080, i16 26083, i16 24543, i16 13312, i16 26136, i16 12791, i16 12792, i16 26180, i16 12708, i16 12709, i16 26187, i16 3701, i16 26215, i16 20966, i16 26227, i16 -2, i16 7741, i16 12849, i16 -31244, i16 12744, i16 21267, i16 30661, i16 10487, i16 -26204, i16 26370, i16 17308, i16 18977, i16 15147, i16 27130, i16 14274, i16 -2, i16 26471, i16 26466, i16 16845, i16 -28435, i16 26583, i16 17641, i16 26658, i16 28240, i16 -28100, i16 26625, i16 13286, i16 28064, i16 26717, i16 13423, i16 27105, i16 27147, i16 -29985, i16 26995, i16 26819, i16 13773, i16 26881, i16 26880, i16 15666, i16 14849, i16 13884, i16 15232, i16 26540, i16 26977, i16 -30134, i16 17148, i16 26934, i16 27032, i16 15265, i16 969, i16 -31901, i16 20624, i16 27129, i16 13913, i16 8490, i16 27205, i16 14083, i16 27293, i16 15347, i16 26545, i16 27336, i16 -28260, i16 15373, i16 27421, i16 2339, i16 24798, i16 27445, i16 27508, i16 10189, i16 28341, i16 15067, i16 949, i16 6488, i16 14144, i16 21537, i16 15194, i16 27617, i16 16124, i16 27612, i16 27703, i16 9355, i16 18673, i16 27473, i16 27738, i16 -32218, i16 27769, i16 15804, i16 17605, i16 15805, i16 16804, i16 18700, i16 18688, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 15561, i16 14053, i16 15595, i16 3378, i16 -25725, i16 12793, i16 9361, i16 32655, i16 26679, i16 27941, i16 28065, i16 28139, i16 28054, i16 27996, i16 28284, i16 28420, i16 18815, i16 16517, i16 28274, i16 -31437, i16 28532, i16 20935, i16 -2, i16 -2, i16 -31698, i16 -29919, i16 -2, i16 15919, i16 29779, i16 16258, i16 31180, i16 28239, i16 23185, i16 12363, i16 28664, i16 14093, i16 28573, i16 15920, i16 28410, i16 5271, i16 16445, i16 17749, i16 -27664, i16 28484, i16 28508, i16 15694, i16 28532, i16 -28304, i16 15675, i16 28575, i16 16708, i16 28627, i16 16529, i16 16725, i16 16441, i16 16368, i16 16308, i16 16703, i16 20959, i16 16726, i16 16727, i16 16704, i16 25053, i16 28747, i16 28798, i16 28839, i16 28801, i16 28876, i16 28885, i16 28886, i16 28895, i16 16644, i16 15848, i16 29108, i16 29078, i16 17015, i16 28971, i16 28997, i16 23176, i16 29002, i16 -2, i16 23708, i16 17253, i16 29007, i16 -27806, i16 17089, i16 28972, i16 17498, i16 18983, i16 18978, i16 29114, i16 -29720, i16 28861, i16 29198, i16 -27582, i16 29205, i16 22801, i16 -27581, i16 29220, i16 -27839, i16 22021, i16 29230, i16 29248, i16 18804, i16 26813, i16 29269, i16 29271, i16 15957, i16 12356, i16 26637, i16 28477, i16 29314, i16 -2, i16 29483, i16 18467, i16 -30677, i16 18669, i16 -30716, i16 29480, i16 29486, i16 29647, i16 29610, i16 3130, i16 27182, i16 29641, i16 29769, i16 16866, i16 5863, i16 18980, i16 26147, i16 14021, i16 18871, i16 18829, i16 18939, i16 29687, i16 29717, i16 26883, i16 18982, i16 29753, i16 1475, i16 16087, i16 -2, i16 10413, i16 29792, i16 -29006, i16 29767, i16 29668, i16 29814, i16 -31815, i16 29804, i16 14128, i16 29812, i16 -27663, i16 27180, i16 29826, i16 18771, i16 19084, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 16735, i16 19065, i16 -29809, i16 23366, i16 -29693, i16 6302, i16 29896, i16 6536, i16 29966, i16 -2, i16 29982, i16 -28967, i16 6731, i16 23511, i16 -29012, i16 -27771, i16 30029, i16 30026, i16 30055, i16 30062, i16 20354, i16 16132, i16 19731, i16 30094, i16 29789, i16 30110, i16 30132, i16 30210, i16 30252, i16 30289, i16 30287, i16 30319, i16 30326, i16 25589, i16 30352, i16 -32273, i16 14328, i16 26897, i16 26894, i16 30369, i16 30373, i16 30391, i16 30412, i16 28575, i16 -31646, i16 20637, i16 20861, i16 7708, i16 30494, i16 30502, i16 30528, i16 25775, i16 21024, i16 30552, i16 12972, i16 30639, i16 -30364, i16 -30360, i16 5825, i16 30708, i16 -2, i16 4982, i16 18962, i16 26826, i16 30895, i16 30919, i16 30931, i16 -26971, i16 31022, i16 21984, i16 30935, i16 31028, i16 30897, i16 30220, i16 -28744, i16 -30588, i16 -29909, i16 24707, i16 9756, i16 31110, i16 -30464, i16 26882, i16 31104, i16 22615, i16 31133, i16 31545, i16 31036, i16 31145, i16 28202, i16 28966, i16 16040, i16 31174, i16 -28403, i16 31188], align 16
@mapping_list = internal global %struct.dbcs_map* getelementptr inbounds ([4 x %struct.dbcs_map], [4 x %struct.dbcs_map]* @_mapping_list, i32 0, i32 0), align 8
@_mapping_list = internal constant [4 x %struct.dbcs_map] [%struct.dbcs_map { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), %struct.unim_index* null, %struct.dbcs_index* getelementptr inbounds ([256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i32 0) }, %struct.dbcs_map { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct.unim_index* getelementptr inbounds ([256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i32 0), %struct.dbcs_index* null }, %struct.dbcs_map { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), %struct.unim_index* getelementptr inbounds ([256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i32 0), %struct.dbcs_index* null }, %struct.dbcs_map { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.unim_index* null, %struct.dbcs_index* null }], align 16
@.str.12 = private unnamed_addr constant [14 x i8] c"big5hkscs_bmp\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"big5hkscs_nonbmp\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__codecs_hk() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !665
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !665
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !372, metadata !666), !dbg !667
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @__module, i32 1013), !dbg !668
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !667, !tbaa !669
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !673, !tbaa !669
  %cmp = icmp ne %struct._object* %1, null, !dbg !675
  br i1 %cmp, label %if.then, label %if.end, !dbg !676

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !677, !tbaa !669
  %call1 = call i32 @register_maps(%struct._object* %2), !dbg !679
  br label %if.end, !dbg !680

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !681, !tbaa !669
  %4 = bitcast %struct._object** %m to i8*, !dbg !684
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !684
  ret %struct._object* %3, !dbg !685
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @register_maps(%struct._object* %module) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct._object*, align 8
  %h = alloca %struct.dbcs_map*, align 8
  %mhname = alloca [256 x i8], align 16
  %r = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !575, metadata !666), !dbg !686
  %0 = bitcast %struct.dbcs_map** %h to i8*, !dbg !687
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !687
  call void @llvm.dbg.declare(metadata %struct.dbcs_map** %h, metadata !576, metadata !666), !dbg !688
  %1 = load %struct.dbcs_map*, %struct.dbcs_map** @mapping_list, align 8, !dbg !689, !tbaa !669
  store %struct.dbcs_map* %1, %struct.dbcs_map** %h, align 8, !dbg !690, !tbaa !669
  br label %for.cond, !dbg !691

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !692, !tbaa !669
  %charset = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %2, i32 0, i32 0, !dbg !695
  %3 = load i8*, i8** %charset, align 8, !dbg !695, !tbaa !696
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !698
  %4 = load i8, i8* %arrayidx, align 1, !dbg !698, !tbaa !699
  %conv = sext i8 %4 to i32, !dbg !698
  %cmp = icmp ne i32 %conv, 0, !dbg !700
  br i1 %cmp, label %for.body, label %for.end, !dbg !701

for.body:                                         ; preds = %for.cond
  %5 = bitcast [256 x i8]* %mhname to i8*, !dbg !702
  call void @llvm.lifetime.start(i64 256, i8* %5) #1, !dbg !702
  call void @llvm.dbg.declare(metadata [256 x i8]* %mhname, metadata !579, metadata !666), !dbg !703
  %6 = bitcast [256 x i8]* %mhname to i8*, !dbg !703
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 256, i32 16, i1 false), !dbg !703
  %7 = bitcast i8* %6 to [256 x i8]*, !dbg !703
  %8 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !703
  store i8 95, i8* %8, !dbg !703
  %9 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 1, !dbg !703
  store i8 95, i8* %9, !dbg !703
  %10 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 2, !dbg !703
  store i8 109, i8* %10, !dbg !703
  %11 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 3, !dbg !703
  store i8 97, i8* %11, !dbg !703
  %12 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 4, !dbg !703
  store i8 112, i8* %12, !dbg !703
  %13 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 5, !dbg !703
  store i8 95, i8* %13, !dbg !703
  %14 = bitcast i32* %r to i8*, !dbg !704
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !704
  call void @llvm.dbg.declare(metadata i32* %r, metadata !586, metadata !666), !dbg !705
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0, !dbg !706
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 7, !dbg !707
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 -1, !dbg !708
  %15 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !709, !tbaa !669
  %charset3 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %15, i32 0, i32 0, !dbg !710
  %16 = load i8*, i8** %charset3, align 8, !dbg !710, !tbaa !696
  %call = call i8* @strcpy(i8* %add.ptr2, i8* %16) #1, !dbg !711
  %17 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !712, !tbaa !669
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0, !dbg !713
  %18 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !714, !tbaa !669
  %19 = bitcast %struct.dbcs_map* %18 to i8*, !dbg !715
  %call5 = call %struct._object* @PyCapsule_New(i8* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null), !dbg !716
  %call6 = call i32 @PyModule_AddObject(%struct._object* %17, i8* %arraydecay4, %struct._object* %call5), !dbg !717
  store i32 %call6, i32* %r, align 4, !dbg !718, !tbaa !719
  %20 = load i32, i32* %r, align 4, !dbg !721, !tbaa !719
  %cmp7 = icmp eq i32 %20, -1, !dbg !723
  br i1 %cmp7, label %if.then, label %if.end, !dbg !724

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, !dbg !725
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !725

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, !dbg !726
  br label %cleanup, !dbg !726

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %r to i8*, !dbg !727
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !727
  %22 = bitcast [256 x i8]* %mhname to i8*, !dbg !727
  call void @llvm.lifetime.end(i64 256, i8* %22) #1, !dbg !727
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.10 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !728

for.inc:                                          ; preds = %cleanup.cont
  %23 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !729, !tbaa !669
  %incdec.ptr = getelementptr %struct.dbcs_map, %struct.dbcs_map* %23, i32 1, !dbg !729
  store %struct.dbcs_map* %incdec.ptr, %struct.dbcs_map** %h, align 8, !dbg !729, !tbaa !669
  br label %for.cond, !dbg !730

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !731
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !731

cleanup.10:                                       ; preds = %for.end, %cleanup
  %24 = bitcast %struct.dbcs_map** %h to i8*, !dbg !732
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !732
  %25 = load i32, i32* %retval, !dbg !732
  ret i32 %25, !dbg !732
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

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
  %cleanup.dest.slot = alloca i32
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !376, metadata !666), !dbg !733
  store %struct._object* %encoding, %struct._object** %encoding.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._object** %encoding.addr, metadata !377, metadata !666), !dbg !734
  %0 = bitcast %struct._object** %codecobj to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !735
  call void @llvm.dbg.declare(metadata %struct._object** %codecobj, metadata !378, metadata !666), !dbg !736
  %1 = bitcast %struct._object** %r to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !735
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !379, metadata !666), !dbg !737
  %2 = bitcast %struct._object** %cofunc to i8*, !dbg !735
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !735
  call void @llvm.dbg.declare(metadata %struct._object** %cofunc, metadata !380, metadata !666), !dbg !738
  %3 = bitcast %struct.MultibyteCodec** %codec to i8*, !dbg !739
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !739
  call void @llvm.dbg.declare(metadata %struct.MultibyteCodec** %codec, metadata !381, metadata !666), !dbg !740
  %4 = bitcast i8** %enc to i8*, !dbg !741
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !741
  call void @llvm.dbg.declare(metadata i8** %enc, metadata !460, metadata !666), !dbg !742
  %5 = load %struct._object*, %struct._object** %encoding.addr, align 8, !dbg !743, !tbaa !669
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !745
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !745, !tbaa !746
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !749
  %7 = load i64, i64* %tp_flags, align 8, !dbg !749, !tbaa !750
  %and = and i64 %7, 268435456, !dbg !753
  %cmp = icmp ne i64 %and, 0, !dbg !754
  br i1 %cmp, label %if.end, label %if.then, !dbg !755

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !756, !tbaa !669
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)), !dbg !758
  store %struct._object* null, %struct._object** %retval, !dbg !759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !759

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %encoding.addr, align 8, !dbg !760, !tbaa !669
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %9), !dbg !761
  store i8* %call, i8** %enc, align 8, !dbg !762, !tbaa !669
  %10 = load i8*, i8** %enc, align 8, !dbg !763, !tbaa !669
  %cmp1 = icmp eq i8* %10, null, !dbg !765
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !766

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !767
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !767

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @getmultibytecodec(), !dbg !768
  store %struct._object* %call4, %struct._object** %cofunc, align 8, !dbg !769, !tbaa !669
  %11 = load %struct._object*, %struct._object** %cofunc, align 8, !dbg !770, !tbaa !669
  %cmp5 = icmp eq %struct._object* %11, null, !dbg !772
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !773

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !774
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !774

if.end.7:                                         ; preds = %if.end.3
  %12 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** @codec_list, align 8, !dbg !775, !tbaa !669
  store %struct.MultibyteCodec* %12, %struct.MultibyteCodec** %codec, align 8, !dbg !776, !tbaa !669
  br label %for.cond, !dbg !777

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !778, !tbaa !669
  %encoding8 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %13, i32 0, i32 0, !dbg !781
  %14 = load i8*, i8** %encoding8, align 8, !dbg !781, !tbaa !782
  %arrayidx = getelementptr i8, i8* %14, i64 0, !dbg !784
  %15 = load i8, i8* %arrayidx, align 1, !dbg !784, !tbaa !699
  %tobool = icmp ne i8 %15, 0, !dbg !785
  br i1 %tobool, label %for.body, label %for.end, !dbg !785

for.body:                                         ; preds = %for.cond
  %16 = bitcast i64* %__s1_len to i8*, !dbg !786
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !786
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !461, metadata !666), !dbg !787
  %17 = bitcast i64* %__s2_len to i8*, !dbg !786
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !786
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !466, metadata !666), !dbg !788
  %18 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !789, !tbaa !669
  %encoding9 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %18, i32 0, i32 0, !dbg !790
  %19 = load i8*, i8** %encoding9, align 8, !dbg !790, !tbaa !782
  %20 = load i8*, i8** %enc, align 8, !dbg !791, !tbaa !669
  %call10 = call i32 @strcmp(i8* %19, i8* %20) #1, !dbg !792
  store i32 %call10, i32* %tmp, !dbg !786, !tbaa !719
  %21 = bitcast i64* %__s2_len to i8*, !dbg !793
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !793
  %22 = bitcast i64* %__s1_len to i8*, !dbg !793
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !793
  %23 = load i32, i32* %tmp, !dbg !794, !tbaa !719
  %cmp11 = icmp eq i32 %23, 0, !dbg !795
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !796

if.then.12:                                       ; preds = %for.body
  br label %for.end, !dbg !797

if.end.13:                                        ; preds = %for.body
  br label %for.inc, !dbg !798

for.inc:                                          ; preds = %if.end.13
  %24 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !800, !tbaa !669
  %incdec.ptr = getelementptr %struct.MultibyteCodec, %struct.MultibyteCodec* %24, i32 1, !dbg !800
  store %struct.MultibyteCodec* %incdec.ptr, %struct.MultibyteCodec** %codec, align 8, !dbg !800, !tbaa !669
  br label %for.cond, !dbg !801

for.end:                                          ; preds = %if.then.12, %for.cond
  %25 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !802, !tbaa !669
  %encoding14 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %25, i32 0, i32 0, !dbg !804
  %26 = load i8*, i8** %encoding14, align 8, !dbg !804, !tbaa !782
  %arrayidx15 = getelementptr i8, i8* %26, i64 0, !dbg !802
  %27 = load i8, i8* %arrayidx15, align 1, !dbg !802, !tbaa !699
  %conv = sext i8 %27 to i32, !dbg !802
  %cmp16 = icmp eq i32 %conv, 0, !dbg !805
  br i1 %cmp16, label %if.then.18, label %if.end.19, !dbg !806

if.then.18:                                       ; preds = %for.end
  %28 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !807, !tbaa !669
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)), !dbg !809
  store %struct._object* null, %struct._object** %retval, !dbg !810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !810

if.end.19:                                        ; preds = %for.end
  %29 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !811, !tbaa !669
  %30 = bitcast %struct.MultibyteCodec* %29 to i8*, !dbg !812
  %call20 = call %struct._object* @PyCapsule_New(i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null), !dbg !813
  store %struct._object* %call20, %struct._object** %codecobj, align 8, !dbg !814, !tbaa !669
  %31 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !815, !tbaa !669
  %cmp21 = icmp eq %struct._object* %31, null, !dbg !817
  br i1 %cmp21, label %if.then.23, label %if.end.24, !dbg !818

if.then.23:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !819
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !819

if.end.24:                                        ; preds = %if.end.19
  %32 = load %struct._object*, %struct._object** %cofunc, align 8, !dbg !820, !tbaa !669
  %33 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !821, !tbaa !669
  %call25 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %32, %struct._object* %33, i8* null), !dbg !822
  store %struct._object* %call25, %struct._object** %r, align 8, !dbg !823, !tbaa !669
  br label %do.body, !dbg !824

do.body:                                          ; preds = %if.end.24
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !825
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !825
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !467, metadata !666), !dbg !827
  %35 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !828, !tbaa !669
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8, !dbg !827, !tbaa !669
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !829, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !831
  %37 = load i64, i64* %ob_refcnt, align 8, !dbg !832, !tbaa !833
  %dec = add i64 %37, -1, !dbg !832
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !832, !tbaa !833
  %cmp27 = icmp ne i64 %dec, 0, !dbg !834
  br i1 %cmp27, label %if.then.29, label %if.else, !dbg !835

if.then.29:                                       ; preds = %do.body
  br label %if.end.31, !dbg !836

if.else:                                          ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !838, !tbaa !669
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !840
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !840, !tbaa !746
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !841
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !841, !tbaa !842
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !843, !tbaa !669
  call void %40(%struct._object* %41), !dbg !844
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !845
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !845
  br label %do.cond, !dbg !847

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !848

do.end:                                           ; preds = %do.cond
  %43 = load %struct._object*, %struct._object** %r, align 8, !dbg !850, !tbaa !669
  store %struct._object* %43, %struct._object** %retval, !dbg !851
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !851

cleanup:                                          ; preds = %do.end, %if.then.23, %if.then.18, %if.then.6, %if.then.2, %if.then
  %44 = bitcast i8** %enc to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !852
  %45 = bitcast %struct.MultibyteCodec** %codec to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !852
  %46 = bitcast %struct._object** %cofunc to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !852
  %47 = bitcast %struct._object** %r to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !852
  %48 = bitcast %struct._object** %codecobj to i8*, !dbg !852
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !852
  %49 = load %struct._object*, %struct._object** %retval, !dbg !852
  ret %struct._object* %49, !dbg !852
}

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare i8* @PyUnicode_AsUTF8(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @getmultibytecodec() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !853, !tbaa !669
  %cmp = icmp eq %struct._object* %0, null, !dbg !854
  br i1 %cmp, label %if.then, label %if.end.7, !dbg !855

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object** %mod to i8*, !dbg !856
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !856
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !471, metadata !666), !dbg !857
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !858
  store %struct._object* %call, %struct._object** %mod, align 8, !dbg !857, !tbaa !669
  %2 = load %struct._object*, %struct._object** %mod, align 8, !dbg !859, !tbaa !669
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !861
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !862

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !863
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !863

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %mod, align 8, !dbg !864, !tbaa !669
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !865
  store %struct._object* %call3, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !866, !tbaa !669
  br label %do.body, !dbg !867

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !868
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !868
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !474, metadata !666), !dbg !870
  %5 = load %struct._object*, %struct._object** %mod, align 8, !dbg !871, !tbaa !669
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !870, !tbaa !669
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !872, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !874
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !875, !tbaa !833
  %dec = add i64 %7, -1, !dbg !875
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !875, !tbaa !833
  %cmp4 = icmp ne i64 %dec, 0, !dbg !876
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !877

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !878

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !880, !tbaa !669
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !882
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !882, !tbaa !746
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !883
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !883, !tbaa !842
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !884, !tbaa !669
  call void %10(%struct._object* %11), !dbg !885
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !886
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !886
  br label %do.cond, !dbg !888

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !889

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !891
  br label %cleanup, !dbg !891

cleanup:                                          ; preds = %do.end, %if.then.2
  %13 = bitcast %struct._object** %mod to i8*, !dbg !892
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !892
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.7, !dbg !894

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %14 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !895, !tbaa !669
  store %struct._object* %14, %struct._object** %retval, !dbg !896
  br label %return, !dbg !896

return:                                           ; preds = %if.end.7, %cleanup
  %15 = load %struct._object*, %struct._object** %retval, !dbg !897
  ret %struct._object* %15, !dbg !897

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @big5hkscs_codec_init(i8* %config) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca i8*, align 8
  store i8* %config, i8** %config.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !478, metadata !666), !dbg !898
  %0 = load i32, i32* @big5hkscs_codec_init.initialized, align 4, !dbg !899, !tbaa !719
  %tobool = icmp ne i32 %0, 0, !dbg !899
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !901

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @importmap(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8** bitcast (%struct.unim_index** @big5_encmap to i8**), i8** bitcast (%struct.dbcs_index** @big5_decmap to i8**)), !dbg !902
  %tobool1 = icmp ne i32 %call, 0, !dbg !902
  br i1 %tobool1, label %if.then, label %if.end, !dbg !904

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !905
  br label %return, !dbg !905

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, i32* @big5hkscs_codec_init.initialized, align 4, !dbg !906, !tbaa !719
  store i32 0, i32* %retval, !dbg !907
  br label %return, !dbg !907

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, !dbg !908
  ret i32 %1, !dbg !908
}

; Function Attrs: nounwind uwtable
define internal i64 @big5hkscs_encode(%union.MultibyteCodec_State* %state, i8* %config, i32 %kind, i8* %data, i64* %inpos, i64 %inlen, i8** %outbuf, i64 %outleft, i32 %flags) #0 {
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
  %c = alloca i32, align 4
  %code = alloca i16, align 2
  %insize = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %c2 = alloca i32, align 4
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !526, metadata !666), !dbg !909
  store i8* %config, i8** %config.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !527, metadata !666), !dbg !910
  store i32 %kind, i32* %kind.addr, align 4, !tbaa !719
  call void @llvm.dbg.declare(metadata i32* %kind.addr, metadata !528, metadata !666), !dbg !911
  store i8* %data, i8** %data.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !529, metadata !666), !dbg !912
  store i64* %inpos, i64** %inpos.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i64** %inpos.addr, metadata !530, metadata !666), !dbg !913
  store i64 %inlen, i64* %inlen.addr, align 8, !tbaa !914
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !531, metadata !666), !dbg !915
  store i8** %outbuf, i8*** %outbuf.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8*** %outbuf.addr, metadata !532, metadata !666), !dbg !916
  store i64 %outleft, i64* %outleft.addr, align 8, !tbaa !914
  call void @llvm.dbg.declare(metadata i64* %outleft.addr, metadata !533, metadata !666), !dbg !917
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !719
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !534, metadata !666), !dbg !918
  br label %while.cond, !dbg !919

while.cond:                                       ; preds = %cleanup.cont.274, %cleanup.270, %entry
  %0 = load i64*, i64** %inpos.addr, align 8, !dbg !920, !tbaa !669
  %1 = load i64, i64* %0, align 8, !dbg !923, !tbaa !914
  %2 = load i64, i64* %inlen.addr, align 8, !dbg !924, !tbaa !914
  %cmp = icmp slt i64 %1, %2, !dbg !925
  br i1 %cmp, label %while.body, label %while.end, !dbg !919

while.body:                                       ; preds = %while.cond
  %3 = bitcast i32* %c to i8*, !dbg !926
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !926
  call void @llvm.dbg.declare(metadata i32* %c, metadata !535, metadata !666), !dbg !927
  %4 = load i32, i32* %kind.addr, align 4, !dbg !928, !tbaa !719
  %cmp1 = icmp eq i32 %4, 1, !dbg !929
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !930

cond.true:                                        ; preds = %while.body
  %5 = load i64*, i64** %inpos.addr, align 8, !dbg !931, !tbaa !669
  %6 = load i64, i64* %5, align 8, !dbg !933, !tbaa !914
  %7 = load i8*, i8** %data.addr, align 8, !dbg !934, !tbaa !669
  %arrayidx = getelementptr i8, i8* %7, i64 %6, !dbg !935
  %8 = load i8, i8* %arrayidx, align 1, !dbg !935, !tbaa !699
  %conv = zext i8 %8 to i32, !dbg !935
  br label %cond.end.9, !dbg !930

cond.false:                                       ; preds = %while.body
  %9 = load i32, i32* %kind.addr, align 4, !dbg !936, !tbaa !719
  %cmp2 = icmp eq i32 %9, 2, !dbg !938
  br i1 %cmp2, label %cond.true.4, label %cond.false.7, !dbg !939

cond.true.4:                                      ; preds = %cond.false
  %10 = load i64*, i64** %inpos.addr, align 8, !dbg !940, !tbaa !669
  %11 = load i64, i64* %10, align 8, !dbg !942, !tbaa !914
  %12 = load i8*, i8** %data.addr, align 8, !dbg !943, !tbaa !669
  %13 = bitcast i8* %12 to i16*, !dbg !944
  %arrayidx5 = getelementptr i16, i16* %13, i64 %11, !dbg !945
  %14 = load i16, i16* %arrayidx5, align 2, !dbg !945, !tbaa !946
  %conv6 = zext i16 %14 to i32, !dbg !945
  br label %cond.end, !dbg !939

cond.false.7:                                     ; preds = %cond.false
  %15 = load i64*, i64** %inpos.addr, align 8, !dbg !948, !tbaa !669
  %16 = load i64, i64* %15, align 8, !dbg !950, !tbaa !914
  %17 = load i8*, i8** %data.addr, align 8, !dbg !951, !tbaa !669
  %18 = bitcast i8* %17 to i32*, !dbg !952
  %arrayidx8 = getelementptr i32, i32* %18, i64 %16, !dbg !953
  %19 = load i32, i32* %arrayidx8, align 4, !dbg !953, !tbaa !719
  br label %cond.end, !dbg !939

cond.end:                                         ; preds = %cond.false.7, %cond.true.4
  %cond = phi i32 [ %conv6, %cond.true.4 ], [ %19, %cond.false.7 ], !dbg !939
  br label %cond.end.9, !dbg !954

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ], !dbg !930
  store i32 %cond10, i32* %c, align 4, !dbg !957, !tbaa !719
  %20 = bitcast i16* %code to i8*, !dbg !960
  call void @llvm.lifetime.start(i64 2, i8* %20) #1, !dbg !960
  call void @llvm.dbg.declare(metadata i16* %code, metadata !537, metadata !666), !dbg !961
  %21 = bitcast i64* %insize to i8*, !dbg !962
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !962
  call void @llvm.dbg.declare(metadata i64* %insize, metadata !538, metadata !666), !dbg !963
  %22 = load i32, i32* %c, align 4, !dbg !964, !tbaa !719
  %cmp11 = icmp ult i32 %22, 128, !dbg !966
  br i1 %cmp11, label %if.then, label %if.end.26, !dbg !967

if.then:                                          ; preds = %cond.end.9
  br label %do.body, !dbg !968

do.body:                                          ; preds = %if.then
  %23 = load i64, i64* %outleft.addr, align 8, !dbg !970, !tbaa !914
  %cmp13 = icmp slt i64 %23, 1, !dbg !974
  br i1 %cmp13, label %if.then.15, label %if.end, !dbg !975

if.then.15:                                       ; preds = %do.body
  store i64 -1, i64* %retval, !dbg !976
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !978

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !979

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !981

do.end:                                           ; preds = %do.cond
  %24 = load i32, i32* %c, align 4, !dbg !983, !tbaa !719
  %conv16 = trunc i32 %24 to i8, !dbg !984
  %25 = load i8**, i8*** %outbuf.addr, align 8, !dbg !985, !tbaa !669
  %26 = load i8*, i8** %25, align 8, !dbg !986, !tbaa !669
  store i8 %conv16, i8* %26, align 1, !dbg !987, !tbaa !699
  br label %do.body.17, !dbg !988

do.body.17:                                       ; preds = %do.end
  br label %do.body.18, !dbg !989

do.body.18:                                       ; preds = %do.body.17
  %27 = load i64*, i64** %inpos.addr, align 8, !dbg !992, !tbaa !669
  %28 = load i64, i64* %27, align 8, !dbg !995, !tbaa !914
  %add = add i64 %28, 1, !dbg !995
  store i64 %add, i64* %27, align 8, !dbg !995, !tbaa !914
  br label %do.cond.19, !dbg !996

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20, !dbg !997

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21, !dbg !999

do.body.21:                                       ; preds = %do.end.20
  %29 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1001, !tbaa !669
  %30 = load i8*, i8** %29, align 8, !dbg !1004, !tbaa !669
  %add.ptr = getelementptr i8, i8* %30, i64 1, !dbg !1004
  store i8* %add.ptr, i8** %29, align 8, !dbg !1004, !tbaa !669
  %31 = load i64, i64* %outleft.addr, align 8, !dbg !1005, !tbaa !914
  %sub = sub i64 %31, 1, !dbg !1005
  store i64 %sub, i64* %outleft.addr, align 8, !dbg !1005, !tbaa !914
  br label %do.cond.22, !dbg !1006

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23, !dbg !1007

do.end.23:                                        ; preds = %do.cond.22
  br label %do.cond.24, !dbg !1009

do.cond.24:                                       ; preds = %do.end.23
  br label %do.end.25, !dbg !1011

do.end.25:                                        ; preds = %do.cond.24
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1013

if.end.26:                                        ; preds = %cond.end.9
  store i64 1, i64* %insize, align 8, !dbg !1014, !tbaa !914
  br label %do.body.27, !dbg !1015

do.body.27:                                       ; preds = %if.end.26
  %32 = load i64, i64* %outleft.addr, align 8, !dbg !1016, !tbaa !914
  %cmp28 = icmp slt i64 %32, 2, !dbg !1020
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !1021

if.then.30:                                       ; preds = %do.body.27
  store i64 -1, i64* %retval, !dbg !1022
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1024

if.end.31:                                        ; preds = %do.body.27
  br label %do.cond.32, !dbg !1025

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !1027

do.end.33:                                        ; preds = %do.cond.32
  %33 = load i32, i32* %c, align 4, !dbg !1029, !tbaa !719
  %cmp34 = icmp ult i32 %33, 65536, !dbg !1030
  br i1 %cmp34, label %if.then.36, label %if.else.180, !dbg !1031

if.then.36:                                       ; preds = %do.end.33
  %34 = load i32, i32* %c, align 4, !dbg !1032, !tbaa !719
  %shr = lshr i32 %34, 8, !dbg !1033
  %idxprom = zext i32 %shr to i64, !dbg !1034
  %arrayidx37 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i64 %idxprom, !dbg !1034
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx37, i32 0, i32 0, !dbg !1035
  %35 = load i16*, i16** %map, align 8, !dbg !1035, !tbaa !1036
  %cmp38 = icmp ne i16* %35, null, !dbg !1038
  br i1 %cmp38, label %land.lhs.true, label %if.else.134, !dbg !1039

land.lhs.true:                                    ; preds = %if.then.36
  %36 = load i32, i32* %c, align 4, !dbg !1040, !tbaa !719
  %and = and i32 %36, 255, !dbg !1042
  %37 = load i32, i32* %c, align 4, !dbg !1043, !tbaa !719
  %shr40 = lshr i32 %37, 8, !dbg !1044
  %idxprom41 = zext i32 %shr40 to i64, !dbg !1045
  %arrayidx42 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i64 %idxprom41, !dbg !1045
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx42, i32 0, i32 1, !dbg !1046
  %38 = load i8, i8* %bottom, align 1, !dbg !1046, !tbaa !1047
  %conv43 = zext i8 %38 to i32, !dbg !1048
  %cmp44 = icmp uge i32 %and, %conv43, !dbg !1049
  br i1 %cmp44, label %land.lhs.true.46, label %if.else.134, !dbg !1050

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %39 = load i32, i32* %c, align 4, !dbg !1051, !tbaa !719
  %and47 = and i32 %39, 255, !dbg !1053
  %40 = load i32, i32* %c, align 4, !dbg !1054, !tbaa !719
  %shr48 = lshr i32 %40, 8, !dbg !1055
  %idxprom49 = zext i32 %shr48 to i64, !dbg !1056
  %arrayidx50 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i64 %idxprom49, !dbg !1056
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx50, i32 0, i32 2, !dbg !1057
  %41 = load i8, i8* %top, align 1, !dbg !1057, !tbaa !1058
  %conv51 = zext i8 %41 to i32, !dbg !1059
  %cmp52 = icmp ule i32 %and47, %conv51, !dbg !1060
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.134, !dbg !1061

land.lhs.true.54:                                 ; preds = %land.lhs.true.46
  %42 = load i32, i32* %c, align 4, !dbg !1062, !tbaa !719
  %and55 = and i32 %42, 255, !dbg !1064
  %43 = load i32, i32* %c, align 4, !dbg !1065, !tbaa !719
  %shr56 = lshr i32 %43, 8, !dbg !1066
  %idxprom57 = zext i32 %shr56 to i64, !dbg !1067
  %arrayidx58 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i64 %idxprom57, !dbg !1067
  %bottom59 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx58, i32 0, i32 1, !dbg !1068
  %44 = load i8, i8* %bottom59, align 1, !dbg !1068, !tbaa !1047
  %conv60 = zext i8 %44 to i32, !dbg !1069
  %sub61 = sub i32 %and55, %conv60, !dbg !1070
  %idxprom62 = zext i32 %sub61 to i64, !dbg !1071
  %45 = load i32, i32* %c, align 4, !dbg !1072, !tbaa !719
  %shr63 = lshr i32 %45, 8, !dbg !1073
  %idxprom64 = zext i32 %shr63 to i64, !dbg !1074
  %arrayidx65 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_bmp_encmap, i32 0, i64 %idxprom64, !dbg !1074
  %map66 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx65, i32 0, i32 0, !dbg !1075
  %46 = load i16*, i16** %map66, align 8, !dbg !1075, !tbaa !1036
  %arrayidx67 = getelementptr i16, i16* %46, i64 %idxprom62, !dbg !1071
  %47 = load i16, i16* %arrayidx67, align 2, !dbg !1071, !tbaa !946
  store i16 %47, i16* %code, align 2, !dbg !1076, !tbaa !946
  %conv68 = zext i16 %47 to i32, !dbg !1077
  %cmp69 = icmp ne i32 %conv68, 65535, !dbg !1078
  br i1 %cmp69, label %if.then.71, label %if.else.134, !dbg !1079

if.then.71:                                       ; preds = %land.lhs.true.54
  %48 = load i16, i16* %code, align 2, !dbg !1080, !tbaa !946
  %conv72 = zext i16 %48 to i32, !dbg !1080
  %cmp73 = icmp eq i32 %conv72, 65534, !dbg !1081
  br i1 %cmp73, label %if.then.75, label %if.end.133, !dbg !1082

if.then.75:                                       ; preds = %if.then.71
  %49 = bitcast i32* %c2 to i8*, !dbg !1083
  call void @llvm.lifetime.start(i64 4, i8* %49) #1, !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %c2, metadata !539, metadata !666), !dbg !1084
  %50 = load i64, i64* %inlen.addr, align 8, !dbg !1085, !tbaa !914
  %51 = load i64*, i64** %inpos.addr, align 8, !dbg !1087, !tbaa !669
  %52 = load i64, i64* %51, align 8, !dbg !1088, !tbaa !914
  %sub76 = sub i64 %50, %52, !dbg !1089
  %cmp77 = icmp sge i64 %sub76, 2, !dbg !1090
  br i1 %cmp77, label %if.then.79, label %if.else, !dbg !1091

if.then.79:                                       ; preds = %if.then.75
  %53 = load i32, i32* %kind.addr, align 4, !dbg !1092, !tbaa !719
  %cmp80 = icmp eq i32 %53, 1, !dbg !1093
  br i1 %cmp80, label %cond.true.82, label %cond.false.86, !dbg !1094

cond.true.82:                                     ; preds = %if.then.79
  %54 = load i64*, i64** %inpos.addr, align 8, !dbg !1095, !tbaa !669
  %55 = load i64, i64* %54, align 8, !dbg !1097, !tbaa !914
  %add83 = add i64 %55, 1, !dbg !1098
  %56 = load i8*, i8** %data.addr, align 8, !dbg !1099, !tbaa !669
  %arrayidx84 = getelementptr i8, i8* %56, i64 %add83, !dbg !1100
  %57 = load i8, i8* %arrayidx84, align 1, !dbg !1100, !tbaa !699
  %conv85 = zext i8 %57 to i32, !dbg !1100
  br label %cond.end.98, !dbg !1094

cond.false.86:                                    ; preds = %if.then.79
  %58 = load i32, i32* %kind.addr, align 4, !dbg !1101, !tbaa !719
  %cmp87 = icmp eq i32 %58, 2, !dbg !1103
  br i1 %cmp87, label %cond.true.89, label %cond.false.93, !dbg !1104

cond.true.89:                                     ; preds = %cond.false.86
  %59 = load i64*, i64** %inpos.addr, align 8, !dbg !1105, !tbaa !669
  %60 = load i64, i64* %59, align 8, !dbg !1107, !tbaa !914
  %add90 = add i64 %60, 1, !dbg !1108
  %61 = load i8*, i8** %data.addr, align 8, !dbg !1109, !tbaa !669
  %62 = bitcast i8* %61 to i16*, !dbg !1110
  %arrayidx91 = getelementptr i16, i16* %62, i64 %add90, !dbg !1111
  %63 = load i16, i16* %arrayidx91, align 2, !dbg !1111, !tbaa !946
  %conv92 = zext i16 %63 to i32, !dbg !1111
  br label %cond.end.96, !dbg !1104

cond.false.93:                                    ; preds = %cond.false.86
  %64 = load i64*, i64** %inpos.addr, align 8, !dbg !1112, !tbaa !669
  %65 = load i64, i64* %64, align 8, !dbg !1114, !tbaa !914
  %add94 = add i64 %65, 1, !dbg !1115
  %66 = load i8*, i8** %data.addr, align 8, !dbg !1116, !tbaa !669
  %67 = bitcast i8* %66 to i32*, !dbg !1117
  %arrayidx95 = getelementptr i32, i32* %67, i64 %add94, !dbg !1118
  %68 = load i32, i32* %arrayidx95, align 4, !dbg !1118, !tbaa !719
  br label %cond.end.96, !dbg !1104

cond.end.96:                                      ; preds = %cond.false.93, %cond.true.89
  %cond97 = phi i32 [ %conv92, %cond.true.89 ], [ %68, %cond.false.93 ], !dbg !1104
  br label %cond.end.98, !dbg !1119

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.82
  %cond99 = phi i32 [ %conv85, %cond.true.82 ], [ %cond97, %cond.end.96 ], !dbg !1094
  store i32 %cond99, i32* %c2, align 4, !dbg !1122, !tbaa !719
  br label %if.end.100, !dbg !1125

if.else:                                          ; preds = %if.then.75
  store i32 0, i32* %c2, align 4, !dbg !1126, !tbaa !719
  br label %if.end.100

if.end.100:                                       ; preds = %if.else, %cond.end.98
  %69 = load i64, i64* %inlen.addr, align 8, !dbg !1127, !tbaa !914
  %70 = load i64*, i64** %inpos.addr, align 8, !dbg !1129, !tbaa !669
  %71 = load i64, i64* %70, align 8, !dbg !1130, !tbaa !914
  %sub101 = sub i64 %69, %71, !dbg !1131
  %cmp102 = icmp sge i64 %sub101, 2, !dbg !1132
  br i1 %cmp102, label %land.lhs.true.104, label %if.else.118, !dbg !1133

land.lhs.true.104:                                ; preds = %if.end.100
  %72 = load i32, i32* %c, align 4, !dbg !1134, !tbaa !719
  %and105 = and i32 %72, 65503, !dbg !1135
  %cmp106 = icmp eq i32 %and105, 202, !dbg !1136
  br i1 %cmp106, label %land.lhs.true.108, label %if.else.118, !dbg !1137

land.lhs.true.108:                                ; preds = %land.lhs.true.104
  %73 = load i32, i32* %c2, align 4, !dbg !1138, !tbaa !719
  %and109 = and i32 %73, 65527, !dbg !1139
  %cmp110 = icmp eq i32 %and109, 772, !dbg !1140
  br i1 %cmp110, label %if.then.112, label %if.else.118, !dbg !1141

if.then.112:                                      ; preds = %land.lhs.true.108
  %74 = load i32, i32* %c, align 4, !dbg !1142, !tbaa !719
  %shr113 = lshr i32 %74, 4, !dbg !1144
  %75 = load i32, i32* %c2, align 4, !dbg !1145, !tbaa !719
  %shr114 = lshr i32 %75, 3, !dbg !1146
  %or = or i32 %shr113, %shr114, !dbg !1147
  %and115 = and i32 %or, 3, !dbg !1148
  %idxprom116 = zext i32 %and115 to i64, !dbg !1149
  %arrayidx117 = getelementptr [4 x i16], [4 x i16]* @big5hkscs_pairenc_table, i32 0, i64 %idxprom116, !dbg !1149
  %76 = load i16, i16* %arrayidx117, align 2, !dbg !1149, !tbaa !946
  store i16 %76, i16* %code, align 2, !dbg !1150, !tbaa !946
  store i64 2, i64* %insize, align 8, !dbg !1151, !tbaa !914
  br label %if.end.132, !dbg !1152

if.else.118:                                      ; preds = %land.lhs.true.108, %land.lhs.true.104, %if.end.100
  %77 = load i64, i64* %inlen.addr, align 8, !dbg !1153, !tbaa !914
  %78 = load i64*, i64** %inpos.addr, align 8, !dbg !1155, !tbaa !669
  %79 = load i64, i64* %78, align 8, !dbg !1156, !tbaa !914
  %sub119 = sub i64 %77, %79, !dbg !1157
  %cmp120 = icmp slt i64 %sub119, 2, !dbg !1158
  br i1 %cmp120, label %land.lhs.true.122, label %if.else.125, !dbg !1159

land.lhs.true.122:                                ; preds = %if.else.118
  %80 = load i32, i32* %flags.addr, align 4, !dbg !1160, !tbaa !719
  %and123 = and i32 %80, 1, !dbg !1161
  %tobool = icmp ne i32 %and123, 0, !dbg !1161
  br i1 %tobool, label %if.else.125, label %if.then.124, !dbg !1162

if.then.124:                                      ; preds = %land.lhs.true.122
  store i64 -2, i64* %retval, !dbg !1163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1163

if.else.125:                                      ; preds = %land.lhs.true.122, %if.else.118
  %81 = load i32, i32* %c, align 4, !dbg !1164, !tbaa !719
  %cmp126 = icmp eq i32 %81, 202, !dbg !1167
  br i1 %cmp126, label %if.then.128, label %if.else.129, !dbg !1168

if.then.128:                                      ; preds = %if.else.125
  store i16 -30618, i16* %code, align 2, !dbg !1169, !tbaa !946
  br label %if.end.130, !dbg !1170

if.else.129:                                      ; preds = %if.else.125
  store i16 -30553, i16* %code, align 2, !dbg !1171, !tbaa !946
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.112
  store i32 0, i32* %cleanup.dest.slot, !dbg !1172
  br label %cleanup, !dbg !1172

cleanup:                                          ; preds = %if.end.132, %if.then.124
  %82 = bitcast i32* %c2 to i8*, !dbg !1173
  call void @llvm.lifetime.end(i64 4, i8* %82) #1, !dbg !1173
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.270 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.133, !dbg !1175

if.end.133:                                       ; preds = %cleanup.cont, %if.then.71
  br label %if.end.179, !dbg !1176

if.else.134:                                      ; preds = %land.lhs.true.54, %land.lhs.true.46, %land.lhs.true, %if.then.36
  %83 = load i32, i32* %c, align 4, !dbg !1177, !tbaa !719
  %shr135 = lshr i32 %83, 8, !dbg !1179
  %idxprom136 = zext i32 %shr135 to i64, !dbg !1180
  %84 = load %struct.unim_index*, %struct.unim_index** @big5_encmap, align 8, !dbg !1180, !tbaa !669
  %arrayidx137 = getelementptr %struct.unim_index, %struct.unim_index* %84, i64 %idxprom136, !dbg !1180
  %map138 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx137, i32 0, i32 0, !dbg !1181
  %85 = load i16*, i16** %map138, align 8, !dbg !1181, !tbaa !1036
  %cmp139 = icmp ne i16* %85, null, !dbg !1182
  br i1 %cmp139, label %land.lhs.true.141, label %if.else.177, !dbg !1183

land.lhs.true.141:                                ; preds = %if.else.134
  %86 = load i32, i32* %c, align 4, !dbg !1184, !tbaa !719
  %and142 = and i32 %86, 255, !dbg !1186
  %87 = load i32, i32* %c, align 4, !dbg !1187, !tbaa !719
  %shr143 = lshr i32 %87, 8, !dbg !1188
  %idxprom144 = zext i32 %shr143 to i64, !dbg !1189
  %88 = load %struct.unim_index*, %struct.unim_index** @big5_encmap, align 8, !dbg !1189, !tbaa !669
  %arrayidx145 = getelementptr %struct.unim_index, %struct.unim_index* %88, i64 %idxprom144, !dbg !1189
  %bottom146 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx145, i32 0, i32 1, !dbg !1190
  %89 = load i8, i8* %bottom146, align 1, !dbg !1190, !tbaa !1047
  %conv147 = zext i8 %89 to i32, !dbg !1191
  %cmp148 = icmp uge i32 %and142, %conv147, !dbg !1192
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.177, !dbg !1193

land.lhs.true.150:                                ; preds = %land.lhs.true.141
  %90 = load i32, i32* %c, align 4, !dbg !1194, !tbaa !719
  %and151 = and i32 %90, 255, !dbg !1196
  %91 = load i32, i32* %c, align 4, !dbg !1197, !tbaa !719
  %shr152 = lshr i32 %91, 8, !dbg !1198
  %idxprom153 = zext i32 %shr152 to i64, !dbg !1199
  %92 = load %struct.unim_index*, %struct.unim_index** @big5_encmap, align 8, !dbg !1199, !tbaa !669
  %arrayidx154 = getelementptr %struct.unim_index, %struct.unim_index* %92, i64 %idxprom153, !dbg !1199
  %top155 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx154, i32 0, i32 2, !dbg !1200
  %93 = load i8, i8* %top155, align 1, !dbg !1200, !tbaa !1058
  %conv156 = zext i8 %93 to i32, !dbg !1201
  %cmp157 = icmp ule i32 %and151, %conv156, !dbg !1202
  br i1 %cmp157, label %land.lhs.true.159, label %if.else.177, !dbg !1203

land.lhs.true.159:                                ; preds = %land.lhs.true.150
  %94 = load i32, i32* %c, align 4, !dbg !1204, !tbaa !719
  %and160 = and i32 %94, 255, !dbg !1206
  %95 = load i32, i32* %c, align 4, !dbg !1207, !tbaa !719
  %shr161 = lshr i32 %95, 8, !dbg !1208
  %idxprom162 = zext i32 %shr161 to i64, !dbg !1209
  %96 = load %struct.unim_index*, %struct.unim_index** @big5_encmap, align 8, !dbg !1209, !tbaa !669
  %arrayidx163 = getelementptr %struct.unim_index, %struct.unim_index* %96, i64 %idxprom162, !dbg !1209
  %bottom164 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx163, i32 0, i32 1, !dbg !1210
  %97 = load i8, i8* %bottom164, align 1, !dbg !1210, !tbaa !1047
  %conv165 = zext i8 %97 to i32, !dbg !1211
  %sub166 = sub i32 %and160, %conv165, !dbg !1212
  %idxprom167 = zext i32 %sub166 to i64, !dbg !1213
  %98 = load i32, i32* %c, align 4, !dbg !1214, !tbaa !719
  %shr168 = lshr i32 %98, 8, !dbg !1215
  %idxprom169 = zext i32 %shr168 to i64, !dbg !1216
  %99 = load %struct.unim_index*, %struct.unim_index** @big5_encmap, align 8, !dbg !1216, !tbaa !669
  %arrayidx170 = getelementptr %struct.unim_index, %struct.unim_index* %99, i64 %idxprom169, !dbg !1216
  %map171 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx170, i32 0, i32 0, !dbg !1217
  %100 = load i16*, i16** %map171, align 8, !dbg !1217, !tbaa !1036
  %arrayidx172 = getelementptr i16, i16* %100, i64 %idxprom167, !dbg !1213
  %101 = load i16, i16* %arrayidx172, align 2, !dbg !1213, !tbaa !946
  store i16 %101, i16* %code, align 2, !dbg !1218, !tbaa !946
  %conv173 = zext i16 %101 to i32, !dbg !1219
  %cmp174 = icmp ne i32 %conv173, 65535, !dbg !1220
  br i1 %cmp174, label %if.then.176, label %if.else.177, !dbg !1221

if.then.176:                                      ; preds = %land.lhs.true.159
  br label %if.end.178, !dbg !1222

if.else.177:                                      ; preds = %land.lhs.true.159, %land.lhs.true.150, %land.lhs.true.141, %if.else.134
  store i64 1, i64* %retval, !dbg !1224
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1224

if.end.178:                                       ; preds = %if.then.176
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.133
  br label %if.end.243, !dbg !1225

if.else.180:                                      ; preds = %do.end.33
  %102 = load i32, i32* %c, align 4, !dbg !1226, !tbaa !719
  %cmp181 = icmp ult i32 %102, 131072, !dbg !1228
  br i1 %cmp181, label %if.then.183, label %if.else.184, !dbg !1229

if.then.183:                                      ; preds = %if.else.180
  %103 = load i64, i64* %insize, align 8, !dbg !1230, !tbaa !914
  store i64 %103, i64* %retval, !dbg !1231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1231

if.else.184:                                      ; preds = %if.else.180
  %104 = load i32, i32* %c, align 4, !dbg !1232, !tbaa !719
  %cmp185 = icmp ult i32 %104, 196608, !dbg !1234
  br i1 %cmp185, label %if.then.187, label %if.else.240, !dbg !1235

if.then.187:                                      ; preds = %if.else.184
  %105 = load i32, i32* %c, align 4, !dbg !1236, !tbaa !719
  %and188 = and i32 %105, 65535, !dbg !1239
  %shr189 = lshr i32 %and188, 8, !dbg !1240
  %idxprom190 = zext i32 %shr189 to i64, !dbg !1241
  %arrayidx191 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i64 %idxprom190, !dbg !1241
  %map192 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx191, i32 0, i32 0, !dbg !1242
  %106 = load i16*, i16** %map192, align 8, !dbg !1242, !tbaa !1036
  %cmp193 = icmp ne i16* %106, null, !dbg !1243
  br i1 %cmp193, label %land.lhs.true.195, label %if.else.238, !dbg !1244

land.lhs.true.195:                                ; preds = %if.then.187
  %107 = load i32, i32* %c, align 4, !dbg !1245, !tbaa !719
  %and196 = and i32 %107, 65535, !dbg !1247
  %and197 = and i32 %and196, 255, !dbg !1248
  %108 = load i32, i32* %c, align 4, !dbg !1249, !tbaa !719
  %and198 = and i32 %108, 65535, !dbg !1250
  %shr199 = lshr i32 %and198, 8, !dbg !1251
  %idxprom200 = zext i32 %shr199 to i64, !dbg !1252
  %arrayidx201 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i64 %idxprom200, !dbg !1252
  %bottom202 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx201, i32 0, i32 1, !dbg !1253
  %109 = load i8, i8* %bottom202, align 1, !dbg !1253, !tbaa !1047
  %conv203 = zext i8 %109 to i32, !dbg !1254
  %cmp204 = icmp uge i32 %and197, %conv203, !dbg !1255
  br i1 %cmp204, label %land.lhs.true.206, label %if.else.238, !dbg !1256

land.lhs.true.206:                                ; preds = %land.lhs.true.195
  %110 = load i32, i32* %c, align 4, !dbg !1257, !tbaa !719
  %and207 = and i32 %110, 65535, !dbg !1259
  %and208 = and i32 %and207, 255, !dbg !1260
  %111 = load i32, i32* %c, align 4, !dbg !1261, !tbaa !719
  %and209 = and i32 %111, 65535, !dbg !1262
  %shr210 = lshr i32 %and209, 8, !dbg !1263
  %idxprom211 = zext i32 %shr210 to i64, !dbg !1264
  %arrayidx212 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i64 %idxprom211, !dbg !1264
  %top213 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx212, i32 0, i32 2, !dbg !1265
  %112 = load i8, i8* %top213, align 1, !dbg !1265, !tbaa !1058
  %conv214 = zext i8 %112 to i32, !dbg !1266
  %cmp215 = icmp ule i32 %and208, %conv214, !dbg !1267
  br i1 %cmp215, label %land.lhs.true.217, label %if.else.238, !dbg !1268

land.lhs.true.217:                                ; preds = %land.lhs.true.206
  %113 = load i32, i32* %c, align 4, !dbg !1269, !tbaa !719
  %and218 = and i32 %113, 65535, !dbg !1271
  %and219 = and i32 %and218, 255, !dbg !1272
  %114 = load i32, i32* %c, align 4, !dbg !1273, !tbaa !719
  %and220 = and i32 %114, 65535, !dbg !1274
  %shr221 = lshr i32 %and220, 8, !dbg !1275
  %idxprom222 = zext i32 %shr221 to i64, !dbg !1276
  %arrayidx223 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i64 %idxprom222, !dbg !1276
  %bottom224 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx223, i32 0, i32 1, !dbg !1277
  %115 = load i8, i8* %bottom224, align 1, !dbg !1277, !tbaa !1047
  %conv225 = zext i8 %115 to i32, !dbg !1278
  %sub226 = sub i32 %and219, %conv225, !dbg !1279
  %idxprom227 = zext i32 %sub226 to i64, !dbg !1280
  %116 = load i32, i32* %c, align 4, !dbg !1281, !tbaa !719
  %and228 = and i32 %116, 65535, !dbg !1282
  %shr229 = lshr i32 %and228, 8, !dbg !1283
  %idxprom230 = zext i32 %shr229 to i64, !dbg !1284
  %arrayidx231 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap, i32 0, i64 %idxprom230, !dbg !1284
  %map232 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx231, i32 0, i32 0, !dbg !1285
  %117 = load i16*, i16** %map232, align 8, !dbg !1285, !tbaa !1036
  %arrayidx233 = getelementptr i16, i16* %117, i64 %idxprom227, !dbg !1280
  %118 = load i16, i16* %arrayidx233, align 2, !dbg !1280, !tbaa !946
  store i16 %118, i16* %code, align 2, !dbg !1286, !tbaa !946
  %conv234 = zext i16 %118 to i32, !dbg !1287
  %cmp235 = icmp ne i32 %conv234, 65535, !dbg !1288
  br i1 %cmp235, label %if.then.237, label %if.else.238, !dbg !1289

if.then.237:                                      ; preds = %land.lhs.true.217
  br label %if.end.239, !dbg !1290

if.else.238:                                      ; preds = %land.lhs.true.217, %land.lhs.true.206, %land.lhs.true.195, %if.then.187
  %119 = load i64, i64* %insize, align 8, !dbg !1292, !tbaa !914
  store i64 %119, i64* %retval, !dbg !1293
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1293

if.end.239:                                       ; preds = %if.then.237
  br label %if.end.241, !dbg !1294

if.else.240:                                      ; preds = %if.else.184
  %120 = load i64, i64* %insize, align 8, !dbg !1295, !tbaa !914
  store i64 %120, i64* %retval, !dbg !1296
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.270, !dbg !1296

if.end.241:                                       ; preds = %if.end.239
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.242, %if.end.179
  br label %do.body.244, !dbg !1297

do.body.244:                                      ; preds = %if.end.243
  %121 = load i16, i16* %code, align 2, !dbg !1298, !tbaa !946
  %conv245 = zext i16 %121 to i32, !dbg !1298
  %shr246 = ashr i32 %conv245, 8, !dbg !1301
  %conv247 = trunc i32 %shr246 to i8, !dbg !1302
  %122 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1303, !tbaa !669
  %123 = load i8*, i8** %122, align 8, !dbg !1304, !tbaa !669
  %arrayidx248 = getelementptr i8, i8* %123, i64 0, !dbg !1305
  store i8 %conv247, i8* %arrayidx248, align 1, !dbg !1306, !tbaa !699
  br label %do.cond.249, !dbg !1307

do.cond.249:                                      ; preds = %do.body.244
  br label %do.end.250, !dbg !1308

do.end.250:                                       ; preds = %do.cond.249
  br label %do.body.251, !dbg !1310

do.body.251:                                      ; preds = %do.end.250
  %124 = load i16, i16* %code, align 2, !dbg !1311, !tbaa !946
  %conv252 = zext i16 %124 to i32, !dbg !1311
  %and253 = and i32 %conv252, 255, !dbg !1314
  %conv254 = trunc i32 %and253 to i8, !dbg !1315
  %125 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1316, !tbaa !669
  %126 = load i8*, i8** %125, align 8, !dbg !1317, !tbaa !669
  %arrayidx255 = getelementptr i8, i8* %126, i64 1, !dbg !1318
  store i8 %conv254, i8* %arrayidx255, align 1, !dbg !1319, !tbaa !699
  br label %do.cond.256, !dbg !1320

do.cond.256:                                      ; preds = %do.body.251
  br label %do.end.257, !dbg !1321

do.end.257:                                       ; preds = %do.cond.256
  br label %do.body.258, !dbg !1323

do.body.258:                                      ; preds = %do.end.257
  br label %do.body.259, !dbg !1324

do.body.259:                                      ; preds = %do.body.258
  %127 = load i64, i64* %insize, align 8, !dbg !1327, !tbaa !914
  %128 = load i64*, i64** %inpos.addr, align 8, !dbg !1330, !tbaa !669
  %129 = load i64, i64* %128, align 8, !dbg !1331, !tbaa !914
  %add260 = add i64 %129, %127, !dbg !1331
  store i64 %add260, i64* %128, align 8, !dbg !1331, !tbaa !914
  br label %do.cond.261, !dbg !1332

do.cond.261:                                      ; preds = %do.body.259
  br label %do.end.262, !dbg !1333

do.end.262:                                       ; preds = %do.cond.261
  br label %do.body.263, !dbg !1335

do.body.263:                                      ; preds = %do.end.262
  %130 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1337, !tbaa !669
  %131 = load i8*, i8** %130, align 8, !dbg !1340, !tbaa !669
  %add.ptr264 = getelementptr i8, i8* %131, i64 2, !dbg !1340
  store i8* %add.ptr264, i8** %130, align 8, !dbg !1340, !tbaa !669
  %132 = load i64, i64* %outleft.addr, align 8, !dbg !1341, !tbaa !914
  %sub265 = sub i64 %132, 2, !dbg !1341
  store i64 %sub265, i64* %outleft.addr, align 8, !dbg !1341, !tbaa !914
  br label %do.cond.266, !dbg !1342

do.cond.266:                                      ; preds = %do.body.263
  br label %do.end.267, !dbg !1343

do.end.267:                                       ; preds = %do.cond.266
  br label %do.cond.268, !dbg !1345

do.cond.268:                                      ; preds = %do.end.267
  br label %do.end.269, !dbg !1347

do.end.269:                                       ; preds = %do.cond.268
  store i32 0, i32* %cleanup.dest.slot, !dbg !1349
  br label %cleanup.270, !dbg !1349

cleanup.270:                                      ; preds = %do.end.269, %if.else.240, %if.else.238, %if.then.183, %if.else.177, %cleanup, %if.then.30, %do.end.25, %if.then.15
  %133 = bitcast i64* %insize to i8*, !dbg !1350
  call void @llvm.lifetime.end(i64 8, i8* %133) #1, !dbg !1350
  %134 = bitcast i16* %code to i8*, !dbg !1350
  call void @llvm.lifetime.end(i64 2, i8* %134) #1, !dbg !1350
  %135 = bitcast i32* %c to i8*, !dbg !1350
  call void @llvm.lifetime.end(i64 4, i8* %135) #1, !dbg !1350
  %cleanup.dest.273 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.273, label %unreachable [
    i32 0, label %cleanup.cont.274
    i32 1, label %return
    i32 2, label %while.cond
  ]

cleanup.cont.274:                                 ; preds = %cleanup.270
  br label %while.cond, !dbg !919

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !1351
  br label %return, !dbg !1351

return:                                           ; preds = %while.end, %cleanup.270
  %136 = load i64, i64* %retval, !dbg !1352
  ret i64 %136, !dbg !1352

unreachable:                                      ; preds = %cleanup.270
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i64 @big5hkscs_decode(%union.MultibyteCodec_State* %state, i8* %config, i8** %inbuf, i64 %inleft, %struct._PyUnicodeWriter* %writer) #0 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %config.addr = alloca i8*, align 8
  %inbuf.addr = alloca i8**, align 8
  %inleft.addr = alloca i64, align 8
  %writer.addr = alloca %struct._PyUnicodeWriter*, align 8
  %c = alloca i8, align 1
  %decoded = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %s = alloca i32, align 4
  %hintbase = alloca i8*, align 8
  %_c1 = alloca i32, align 4
  %_c2 = alloca i32, align 4
  %_c1264 = alloca i32, align 4
  %_c2265 = alloca i32, align 4
  %_c1347 = alloca i32, align 4
  %_c2348 = alloca i32, align 4
  %_c1430 = alloca i32, align 4
  %_c2431 = alloca i32, align 4
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !548, metadata !666), !dbg !1353
  store i8* %config, i8** %config.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !549, metadata !666), !dbg !1354
  store i8** %inbuf, i8*** %inbuf.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8*** %inbuf.addr, metadata !550, metadata !666), !dbg !1355
  store i64 %inleft, i64* %inleft.addr, align 8, !tbaa !914
  call void @llvm.dbg.declare(metadata i64* %inleft.addr, metadata !551, metadata !666), !dbg !1356
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter** %writer.addr, metadata !552, metadata !666), !dbg !1357
  br label %while.cond, !dbg !1358

while.cond:                                       ; preds = %cleanup.cont.521, %cleanup.518, %entry
  %0 = load i64, i64* %inleft.addr, align 8, !dbg !1359, !tbaa !914
  %cmp = icmp sgt i64 %0, 0, !dbg !1362
  br i1 %cmp, label %while.body, label %while.end, !dbg !1358

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !1363
  call void @llvm.dbg.declare(metadata i8* %c, metadata !553, metadata !666), !dbg !1364
  %1 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1365, !tbaa !669
  %2 = load i8*, i8** %1, align 8, !dbg !1366, !tbaa !669
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !1367
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1367, !tbaa !699
  store i8 %3, i8* %c, align 1, !dbg !1364, !tbaa !699
  %4 = bitcast i32* %decoded to i8*, !dbg !1368
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1368
  call void @llvm.dbg.declare(metadata i32* %decoded, metadata !555, metadata !666), !dbg !1369
  %5 = load i8, i8* %c, align 1, !dbg !1370, !tbaa !699
  %conv = zext i8 %5 to i32, !dbg !1370
  %cmp1 = icmp slt i32 %conv, 128, !dbg !1372
  br i1 %cmp1, label %if.then, label %if.end.10, !dbg !1373

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !1374

do.body:                                          ; preds = %if.then
  %6 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1376, !tbaa !669
  %7 = load i8, i8* %c, align 1, !dbg !1380, !tbaa !699
  %conv3 = zext i8 %7 to i32, !dbg !1381
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %6, i32 %conv3), !dbg !1382
  %cmp4 = icmp slt i32 %call, 0, !dbg !1383
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !1384

if.then.6:                                        ; preds = %do.body
  store i64 -4, i64* %retval, !dbg !1385
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !1387

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1388

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1390

do.end:                                           ; preds = %do.cond
  br label %do.body.7, !dbg !1392

do.body.7:                                        ; preds = %do.end
  %8 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1393, !tbaa !669
  %9 = load i8*, i8** %8, align 8, !dbg !1396, !tbaa !669
  %add.ptr = getelementptr i8, i8* %9, i64 1, !dbg !1396
  store i8* %add.ptr, i8** %8, align 8, !dbg !1396, !tbaa !669
  %10 = load i64, i64* %inleft.addr, align 8, !dbg !1397, !tbaa !914
  %sub = sub i64 %10, 1, !dbg !1397
  store i64 %sub, i64* %inleft.addr, align 8, !dbg !1397, !tbaa !914
  br label %do.cond.8, !dbg !1398

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9, !dbg !1399

do.end.9:                                         ; preds = %do.cond.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !1401

if.end.10:                                        ; preds = %while.body
  br label %do.body.11, !dbg !1402

do.body.11:                                       ; preds = %if.end.10
  %11 = load i64, i64* %inleft.addr, align 8, !dbg !1403, !tbaa !914
  %cmp12 = icmp slt i64 %11, 2, !dbg !1407
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !1408

if.then.14:                                       ; preds = %do.body.11
  store i64 -2, i64* %retval, !dbg !1409
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !1411

if.end.15:                                        ; preds = %do.body.11
  br label %do.cond.16, !dbg !1412

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !1414

do.end.17:                                        ; preds = %do.cond.16
  %12 = load i8, i8* %c, align 1, !dbg !1416, !tbaa !699
  %conv18 = zext i8 %12 to i32, !dbg !1416
  %cmp19 = icmp sgt i32 198, %conv18, !dbg !1418
  br i1 %cmp19, label %if.then.32, label %lor.lhs.false, !dbg !1419

lor.lhs.false:                                    ; preds = %do.end.17
  %13 = load i8, i8* %c, align 1, !dbg !1420, !tbaa !699
  %conv21 = zext i8 %13 to i32, !dbg !1420
  %cmp22 = icmp sgt i32 %conv21, 200, !dbg !1422
  br i1 %cmp22, label %if.then.32, label %lor.lhs.false.24, !dbg !1423

lor.lhs.false.24:                                 ; preds = %lor.lhs.false
  %14 = load i8, i8* %c, align 1, !dbg !1424, !tbaa !699
  %conv25 = zext i8 %14 to i32, !dbg !1424
  %cmp26 = icmp slt i32 %conv25, 199, !dbg !1426
  br i1 %cmp26, label %land.lhs.true, label %if.end.83, !dbg !1427

land.lhs.true:                                    ; preds = %lor.lhs.false.24
  %15 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1428, !tbaa !669
  %16 = load i8*, i8** %15, align 8, !dbg !1430, !tbaa !669
  %arrayidx28 = getelementptr i8, i8* %16, i64 1, !dbg !1431
  %17 = load i8, i8* %arrayidx28, align 1, !dbg !1431, !tbaa !699
  %conv29 = zext i8 %17 to i32, !dbg !1432
  %cmp30 = icmp slt i32 %conv29, 161, !dbg !1433
  br i1 %cmp30, label %if.then.32, label %if.end.83, !dbg !1434

if.then.32:                                       ; preds = %land.lhs.true, %lor.lhs.false, %do.end.17
  %18 = load i8, i8* %c, align 1, !dbg !1435, !tbaa !699
  %idxprom = zext i8 %18 to i64, !dbg !1438
  %19 = load %struct.dbcs_index*, %struct.dbcs_index** @big5_decmap, align 8, !dbg !1438, !tbaa !669
  %arrayidx33 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %19, i64 %idxprom, !dbg !1438
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx33, i32 0, i32 0, !dbg !1439
  %20 = load i16*, i16** %map, align 8, !dbg !1439, !tbaa !1440
  %cmp34 = icmp ne i16* %20, null, !dbg !1442
  br i1 %cmp34, label %land.lhs.true.36, label %if.end.82, !dbg !1443

land.lhs.true.36:                                 ; preds = %if.then.32
  %21 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1444, !tbaa !669
  %22 = load i8*, i8** %21, align 8, !dbg !1446, !tbaa !669
  %arrayidx37 = getelementptr i8, i8* %22, i64 1, !dbg !1447
  %23 = load i8, i8* %arrayidx37, align 1, !dbg !1447, !tbaa !699
  %conv38 = zext i8 %23 to i32, !dbg !1448
  %24 = load i8, i8* %c, align 1, !dbg !1449, !tbaa !699
  %idxprom39 = zext i8 %24 to i64, !dbg !1450
  %25 = load %struct.dbcs_index*, %struct.dbcs_index** @big5_decmap, align 8, !dbg !1450, !tbaa !669
  %arrayidx40 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %25, i64 %idxprom39, !dbg !1450
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx40, i32 0, i32 1, !dbg !1451
  %26 = load i8, i8* %bottom, align 1, !dbg !1451, !tbaa !1452
  %conv41 = zext i8 %26 to i32, !dbg !1453
  %cmp42 = icmp sge i32 %conv38, %conv41, !dbg !1454
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.82, !dbg !1455

land.lhs.true.44:                                 ; preds = %land.lhs.true.36
  %27 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1456, !tbaa !669
  %28 = load i8*, i8** %27, align 8, !dbg !1458, !tbaa !669
  %arrayidx45 = getelementptr i8, i8* %28, i64 1, !dbg !1459
  %29 = load i8, i8* %arrayidx45, align 1, !dbg !1459, !tbaa !699
  %conv46 = zext i8 %29 to i32, !dbg !1460
  %30 = load i8, i8* %c, align 1, !dbg !1461, !tbaa !699
  %idxprom47 = zext i8 %30 to i64, !dbg !1462
  %31 = load %struct.dbcs_index*, %struct.dbcs_index** @big5_decmap, align 8, !dbg !1462, !tbaa !669
  %arrayidx48 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %31, i64 %idxprom47, !dbg !1462
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx48, i32 0, i32 2, !dbg !1463
  %32 = load i8, i8* %top, align 1, !dbg !1463, !tbaa !1464
  %conv49 = zext i8 %32 to i32, !dbg !1465
  %cmp50 = icmp sle i32 %conv46, %conv49, !dbg !1466
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.82, !dbg !1467

land.lhs.true.52:                                 ; preds = %land.lhs.true.44
  %33 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1468, !tbaa !669
  %34 = load i8*, i8** %33, align 8, !dbg !1470, !tbaa !669
  %arrayidx53 = getelementptr i8, i8* %34, i64 1, !dbg !1471
  %35 = load i8, i8* %arrayidx53, align 1, !dbg !1471, !tbaa !699
  %conv54 = zext i8 %35 to i32, !dbg !1472
  %36 = load i8, i8* %c, align 1, !dbg !1473, !tbaa !699
  %idxprom55 = zext i8 %36 to i64, !dbg !1474
  %37 = load %struct.dbcs_index*, %struct.dbcs_index** @big5_decmap, align 8, !dbg !1474, !tbaa !669
  %arrayidx56 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %37, i64 %idxprom55, !dbg !1474
  %bottom57 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx56, i32 0, i32 1, !dbg !1475
  %38 = load i8, i8* %bottom57, align 1, !dbg !1475, !tbaa !1452
  %conv58 = zext i8 %38 to i32, !dbg !1476
  %sub59 = sub i32 %conv54, %conv58, !dbg !1477
  %idxprom60 = sext i32 %sub59 to i64, !dbg !1478
  %39 = load i8, i8* %c, align 1, !dbg !1479, !tbaa !699
  %idxprom61 = zext i8 %39 to i64, !dbg !1480
  %40 = load %struct.dbcs_index*, %struct.dbcs_index** @big5_decmap, align 8, !dbg !1480, !tbaa !669
  %arrayidx62 = getelementptr %struct.dbcs_index, %struct.dbcs_index* %40, i64 %idxprom61, !dbg !1480
  %map63 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx62, i32 0, i32 0, !dbg !1481
  %41 = load i16*, i16** %map63, align 8, !dbg !1481, !tbaa !1440
  %arrayidx64 = getelementptr i16, i16* %41, i64 %idxprom60, !dbg !1478
  %42 = load i16, i16* %arrayidx64, align 2, !dbg !1478, !tbaa !946
  %conv65 = zext i16 %42 to i32, !dbg !1478
  store i32 %conv65, i32* %decoded, align 4, !dbg !1482, !tbaa !719
  %cmp66 = icmp ne i32 %conv65, 65534, !dbg !1483
  br i1 %cmp66, label %if.then.68, label %if.end.82, !dbg !1484

if.then.68:                                       ; preds = %land.lhs.true.52
  br label %do.body.69, !dbg !1485

do.body.69:                                       ; preds = %if.then.68
  %43 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1487, !tbaa !669
  %44 = load i32, i32* %decoded, align 4, !dbg !1491, !tbaa !719
  %call70 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %43, i32 %44), !dbg !1492
  %cmp71 = icmp slt i32 %call70, 0, !dbg !1493
  br i1 %cmp71, label %if.then.73, label %if.end.74, !dbg !1494

if.then.73:                                       ; preds = %do.body.69
  store i64 -4, i64* %retval, !dbg !1495
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !1497

if.end.74:                                        ; preds = %do.body.69
  br label %do.cond.75, !dbg !1498

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !1500

do.end.76:                                        ; preds = %do.cond.75
  br label %do.body.77, !dbg !1502

do.body.77:                                       ; preds = %do.end.76
  %45 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1503, !tbaa !669
  %46 = load i8*, i8** %45, align 8, !dbg !1506, !tbaa !669
  %add.ptr78 = getelementptr i8, i8* %46, i64 2, !dbg !1506
  store i8* %add.ptr78, i8** %45, align 8, !dbg !1506, !tbaa !669
  %47 = load i64, i64* %inleft.addr, align 8, !dbg !1507, !tbaa !914
  %sub79 = sub i64 %47, 2, !dbg !1507
  store i64 %sub79, i64* %inleft.addr, align 8, !dbg !1507, !tbaa !914
  br label %do.cond.80, !dbg !1508

do.cond.80:                                       ; preds = %do.body.77
  br label %do.end.81, !dbg !1509

do.end.81:                                        ; preds = %do.cond.80
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !1511

if.end.82:                                        ; preds = %land.lhs.true.52, %land.lhs.true.44, %land.lhs.true.36, %if.then.32
  br label %if.end.83, !dbg !1512

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true, %lor.lhs.false.24
  %48 = load i8, i8* %c, align 1, !dbg !1513, !tbaa !699
  %idxprom84 = zext i8 %48 to i64, !dbg !1514
  %arrayidx85 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i64 %idxprom84, !dbg !1514
  %map86 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx85, i32 0, i32 0, !dbg !1515
  %49 = load i16*, i16** %map86, align 8, !dbg !1515, !tbaa !1440
  %cmp87 = icmp ne i16* %49, null, !dbg !1516
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.189, !dbg !1517

land.lhs.true.89:                                 ; preds = %if.end.83
  %50 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1518, !tbaa !669
  %51 = load i8*, i8** %50, align 8, !dbg !1520, !tbaa !669
  %arrayidx90 = getelementptr i8, i8* %51, i64 1, !dbg !1521
  %52 = load i8, i8* %arrayidx90, align 1, !dbg !1521, !tbaa !699
  %conv91 = zext i8 %52 to i32, !dbg !1522
  %53 = load i8, i8* %c, align 1, !dbg !1523, !tbaa !699
  %idxprom92 = zext i8 %53 to i64, !dbg !1524
  %arrayidx93 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i64 %idxprom92, !dbg !1524
  %bottom94 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx93, i32 0, i32 1, !dbg !1525
  %54 = load i8, i8* %bottom94, align 1, !dbg !1525, !tbaa !1452
  %conv95 = zext i8 %54 to i32, !dbg !1526
  %cmp96 = icmp sge i32 %conv91, %conv95, !dbg !1527
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.189, !dbg !1528

land.lhs.true.98:                                 ; preds = %land.lhs.true.89
  %55 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1529, !tbaa !669
  %56 = load i8*, i8** %55, align 8, !dbg !1531, !tbaa !669
  %arrayidx99 = getelementptr i8, i8* %56, i64 1, !dbg !1532
  %57 = load i8, i8* %arrayidx99, align 1, !dbg !1532, !tbaa !699
  %conv100 = zext i8 %57 to i32, !dbg !1533
  %58 = load i8, i8* %c, align 1, !dbg !1534, !tbaa !699
  %idxprom101 = zext i8 %58 to i64, !dbg !1535
  %arrayidx102 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i64 %idxprom101, !dbg !1535
  %top103 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx102, i32 0, i32 2, !dbg !1536
  %59 = load i8, i8* %top103, align 1, !dbg !1536, !tbaa !1464
  %conv104 = zext i8 %59 to i32, !dbg !1537
  %cmp105 = icmp sle i32 %conv100, %conv104, !dbg !1538
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.189, !dbg !1539

land.lhs.true.107:                                ; preds = %land.lhs.true.98
  %60 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1540, !tbaa !669
  %61 = load i8*, i8** %60, align 8, !dbg !1542, !tbaa !669
  %arrayidx108 = getelementptr i8, i8* %61, i64 1, !dbg !1543
  %62 = load i8, i8* %arrayidx108, align 1, !dbg !1543, !tbaa !699
  %conv109 = zext i8 %62 to i32, !dbg !1544
  %63 = load i8, i8* %c, align 1, !dbg !1545, !tbaa !699
  %idxprom110 = zext i8 %63 to i64, !dbg !1546
  %arrayidx111 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i64 %idxprom110, !dbg !1546
  %bottom112 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx111, i32 0, i32 1, !dbg !1547
  %64 = load i8, i8* %bottom112, align 1, !dbg !1547, !tbaa !1452
  %conv113 = zext i8 %64 to i32, !dbg !1548
  %sub114 = sub i32 %conv109, %conv113, !dbg !1549
  %idxprom115 = sext i32 %sub114 to i64, !dbg !1550
  %65 = load i8, i8* %c, align 1, !dbg !1551, !tbaa !699
  %idxprom116 = zext i8 %65 to i64, !dbg !1552
  %arrayidx117 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5hkscs_decmap, i32 0, i64 %idxprom116, !dbg !1552
  %map118 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx117, i32 0, i32 0, !dbg !1553
  %66 = load i16*, i16** %map118, align 8, !dbg !1553, !tbaa !1440
  %arrayidx119 = getelementptr i16, i16* %66, i64 %idxprom115, !dbg !1550
  %67 = load i16, i16* %arrayidx119, align 2, !dbg !1550, !tbaa !946
  %conv120 = zext i16 %67 to i32, !dbg !1550
  store i32 %conv120, i32* %decoded, align 4, !dbg !1554, !tbaa !719
  %cmp121 = icmp ne i32 %conv120, 65534, !dbg !1555
  br i1 %cmp121, label %if.then.123, label %if.end.189, !dbg !1556

if.then.123:                                      ; preds = %land.lhs.true.107
  %68 = bitcast i32* %s to i8*, !dbg !1557
  call void @llvm.lifetime.start(i64 4, i8* %68) #1, !dbg !1557
  call void @llvm.dbg.declare(metadata i32* %s, metadata !556, metadata !666), !dbg !1558
  %69 = load i8, i8* %c, align 1, !dbg !1559, !tbaa !699
  %conv124 = zext i8 %69 to i32, !dbg !1560
  %sub125 = sub i32 %conv124, 135, !dbg !1561
  %mul = mul i32 %sub125, 191, !dbg !1562
  %70 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1563, !tbaa !669
  %71 = load i8*, i8** %70, align 8, !dbg !1564, !tbaa !669
  %arrayidx126 = getelementptr i8, i8* %71, i64 1, !dbg !1565
  %72 = load i8, i8* %arrayidx126, align 1, !dbg !1565, !tbaa !699
  %conv127 = zext i8 %72 to i32, !dbg !1566
  %sub128 = sub i32 %conv127, 64, !dbg !1567
  %add = add i32 %mul, %sub128, !dbg !1568
  store i32 %add, i32* %s, align 4, !dbg !1558, !tbaa !719
  %73 = bitcast i8** %hintbase to i8*, !dbg !1569
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !1569
  call void @llvm.dbg.declare(metadata i8** %hintbase, metadata !559, metadata !666), !dbg !1570
  %74 = load i32, i32* %s, align 4, !dbg !1571, !tbaa !719
  %cmp129 = icmp sle i32 0, %74, !dbg !1573
  br i1 %cmp129, label %land.lhs.true.131, label %if.else, !dbg !1574

land.lhs.true.131:                                ; preds = %if.then.123
  %75 = load i32, i32* %s, align 4, !dbg !1575, !tbaa !719
  %cmp132 = icmp sle i32 %75, 4965, !dbg !1577
  br i1 %cmp132, label %if.then.134, label %if.else, !dbg !1578

if.then.134:                                      ; preds = %land.lhs.true.131
  store i8* getelementptr inbounds ([621 x i8], [621 x i8]* @big5hkscs_phint_0, i32 0, i32 0), i8** %hintbase, align 8, !dbg !1579, !tbaa !669
  %76 = load i32, i32* %s, align 4, !dbg !1581, !tbaa !719
  %sub135 = sub i32 %76, 0, !dbg !1581
  store i32 %sub135, i32* %s, align 4, !dbg !1581, !tbaa !719
  br label %if.end.154, !dbg !1582

if.else:                                          ; preds = %land.lhs.true.131, %if.then.123
  %77 = load i32, i32* %s, align 4, !dbg !1583, !tbaa !719
  %cmp136 = icmp sle i32 12130, %77, !dbg !1585
  br i1 %cmp136, label %land.lhs.true.138, label %if.else.143, !dbg !1586

land.lhs.true.138:                                ; preds = %if.else
  %78 = load i32, i32* %s, align 4, !dbg !1587, !tbaa !719
  %cmp139 = icmp sle i32 %78, 12605, !dbg !1589
  br i1 %cmp139, label %if.then.141, label %if.else.143, !dbg !1590

if.then.141:                                      ; preds = %land.lhs.true.138
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @big5hkscs_phint_12130, i32 0, i32 0), i8** %hintbase, align 8, !dbg !1591, !tbaa !669
  %79 = load i32, i32* %s, align 4, !dbg !1593, !tbaa !719
  %sub142 = sub i32 %79, 12130, !dbg !1593
  store i32 %sub142, i32* %s, align 4, !dbg !1593, !tbaa !719
  br label %if.end.153, !dbg !1594

if.else.143:                                      ; preds = %land.lhs.true.138, %if.else
  %80 = load i32, i32* %s, align 4, !dbg !1595, !tbaa !719
  %cmp144 = icmp sle i32 21924, %80, !dbg !1597
  br i1 %cmp144, label %land.lhs.true.146, label %if.else.151, !dbg !1598

land.lhs.true.146:                                ; preds = %if.else.143
  %81 = load i32, i32* %s, align 4, !dbg !1599, !tbaa !719
  %cmp147 = icmp sle i32 %81, 22919, !dbg !1601
  br i1 %cmp147, label %if.then.149, label %if.else.151, !dbg !1602

if.then.149:                                      ; preds = %land.lhs.true.146
  store i8* getelementptr inbounds ([125 x i8], [125 x i8]* @big5hkscs_phint_21924, i32 0, i32 0), i8** %hintbase, align 8, !dbg !1603, !tbaa !669
  %82 = load i32, i32* %s, align 4, !dbg !1605, !tbaa !719
  %sub150 = sub i32 %82, 21924, !dbg !1605
  store i32 %sub150, i32* %s, align 4, !dbg !1605, !tbaa !719
  br label %if.end.152, !dbg !1606

if.else.151:                                      ; preds = %land.lhs.true.146, %if.else.143
  store i64 -3, i64* %retval, !dbg !1607
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1607

if.end.152:                                       ; preds = %if.then.149
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.141
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.then.134
  %83 = load i32, i32* %s, align 4, !dbg !1608, !tbaa !719
  %shr = ashr i32 %83, 3, !dbg !1610
  %idxprom155 = sext i32 %shr to i64, !dbg !1611
  %84 = load i8*, i8** %hintbase, align 8, !dbg !1611, !tbaa !669
  %arrayidx156 = getelementptr i8, i8* %84, i64 %idxprom155, !dbg !1611
  %85 = load i8, i8* %arrayidx156, align 1, !dbg !1611, !tbaa !699
  %conv157 = zext i8 %85 to i32, !dbg !1611
  %86 = load i32, i32* %s, align 4, !dbg !1612, !tbaa !719
  %and = and i32 %86, 7, !dbg !1613
  %shl = shl i32 1, %and, !dbg !1614
  %and158 = and i32 %conv157, %shl, !dbg !1615
  %tobool = icmp ne i32 %and158, 0, !dbg !1615
  br i1 %tobool, label %if.then.159, label %if.else.173, !dbg !1616

if.then.159:                                      ; preds = %if.end.154
  br label %do.body.160, !dbg !1617

do.body.160:                                      ; preds = %if.then.159
  %87 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1619, !tbaa !669
  %88 = load i32, i32* %decoded, align 4, !dbg !1623, !tbaa !719
  %or = or i32 %88, 131072, !dbg !1624
  %call161 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %87, i32 %or), !dbg !1625
  %cmp162 = icmp slt i32 %call161, 0, !dbg !1626
  br i1 %cmp162, label %if.then.164, label %if.end.165, !dbg !1627

if.then.164:                                      ; preds = %do.body.160
  store i64 -4, i64* %retval, !dbg !1628
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1630

if.end.165:                                       ; preds = %do.body.160
  br label %do.cond.166, !dbg !1631

do.cond.166:                                      ; preds = %if.end.165
  br label %do.end.167, !dbg !1633

do.end.167:                                       ; preds = %do.cond.166
  br label %do.body.168, !dbg !1635

do.body.168:                                      ; preds = %do.end.167
  %89 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1636, !tbaa !669
  %90 = load i8*, i8** %89, align 8, !dbg !1639, !tbaa !669
  %add.ptr169 = getelementptr i8, i8* %90, i64 2, !dbg !1639
  store i8* %add.ptr169, i8** %89, align 8, !dbg !1639, !tbaa !669
  %91 = load i64, i64* %inleft.addr, align 8, !dbg !1640, !tbaa !914
  %sub170 = sub i64 %91, 2, !dbg !1640
  store i64 %sub170, i64* %inleft.addr, align 8, !dbg !1640, !tbaa !914
  br label %do.cond.171, !dbg !1641

do.cond.171:                                      ; preds = %do.body.168
  br label %do.end.172, !dbg !1642

do.end.172:                                       ; preds = %do.cond.171
  br label %if.end.187, !dbg !1644

if.else.173:                                      ; preds = %if.end.154
  br label %do.body.174, !dbg !1645

do.body.174:                                      ; preds = %if.else.173
  %92 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1647, !tbaa !669
  %93 = load i32, i32* %decoded, align 4, !dbg !1651, !tbaa !719
  %call175 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %92, i32 %93), !dbg !1652
  %cmp176 = icmp slt i32 %call175, 0, !dbg !1653
  br i1 %cmp176, label %if.then.178, label %if.end.179, !dbg !1654

if.then.178:                                      ; preds = %do.body.174
  store i64 -4, i64* %retval, !dbg !1655
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1657

if.end.179:                                       ; preds = %do.body.174
  br label %do.cond.180, !dbg !1658

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181, !dbg !1660

do.end.181:                                       ; preds = %do.cond.180
  br label %do.body.182, !dbg !1662

do.body.182:                                      ; preds = %do.end.181
  %94 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1663, !tbaa !669
  %95 = load i8*, i8** %94, align 8, !dbg !1666, !tbaa !669
  %add.ptr183 = getelementptr i8, i8* %95, i64 2, !dbg !1666
  store i8* %add.ptr183, i8** %94, align 8, !dbg !1666, !tbaa !669
  %96 = load i64, i64* %inleft.addr, align 8, !dbg !1667, !tbaa !914
  %sub184 = sub i64 %96, 2, !dbg !1667
  store i64 %sub184, i64* %inleft.addr, align 8, !dbg !1667, !tbaa !914
  br label %do.cond.185, !dbg !1668

do.cond.185:                                      ; preds = %do.body.182
  br label %do.end.186, !dbg !1669

do.end.186:                                       ; preds = %do.cond.185
  br label %if.end.187

if.end.187:                                       ; preds = %do.end.186, %do.end.172
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1671

cleanup:                                          ; preds = %if.end.187, %if.then.178, %if.then.164, %if.else.151
  %97 = bitcast i8** %hintbase to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !1672
  %98 = bitcast i32* %s to i8*, !dbg !1672
  call void @llvm.lifetime.end(i64 4, i8* %98) #1, !dbg !1672
  br label %cleanup.518

if.end.189:                                       ; preds = %land.lhs.true.107, %land.lhs.true.98, %land.lhs.true.89, %if.end.83
  %99 = load i8, i8* %c, align 1, !dbg !1673, !tbaa !699
  %conv190 = zext i8 %99 to i32, !dbg !1673
  %shl191 = shl i32 %conv190, 8, !dbg !1674
  %100 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1675, !tbaa !669
  %101 = load i8*, i8** %100, align 8, !dbg !1676, !tbaa !669
  %arrayidx192 = getelementptr i8, i8* %101, i64 1, !dbg !1677
  %102 = load i8, i8* %arrayidx192, align 1, !dbg !1677, !tbaa !699
  %conv193 = zext i8 %102 to i32, !dbg !1678
  %or194 = or i32 %shl191, %conv193, !dbg !1679
  switch i32 %or194, label %sw.default.511 [
    i32 34914, label %sw.bb
    i32 34916, label %sw.bb.262
    i32 34979, label %sw.bb.345
    i32 34981, label %sw.bb.428
  ], !dbg !1680

sw.bb:                                            ; preds = %if.end.189
  br label %do.body.195, !dbg !1681

do.body.195:                                      ; preds = %sw.bb
  %103 = bitcast i32* %_c1 to i8*, !dbg !1682
  call void @llvm.lifetime.start(i64 4, i8* %103) #1, !dbg !1682
  call void @llvm.dbg.declare(metadata i32* %_c1, metadata !560, metadata !666), !dbg !1684
  store i32 202, i32* %_c1, align 4, !dbg !1684, !tbaa !719
  %104 = bitcast i32* %_c2 to i8*, !dbg !1685
  call void @llvm.lifetime.start(i64 4, i8* %104) #1, !dbg !1685
  call void @llvm.dbg.declare(metadata i32* %_c2, metadata !563, metadata !666), !dbg !1686
  store i32 772, i32* %_c2, align 4, !dbg !1686, !tbaa !719
  %105 = load i32, i32* %_c1, align 4, !dbg !1687, !tbaa !719
  %cmp196 = icmp ugt i32 %105, 772, !dbg !1689
  br i1 %cmp196, label %cond.true, label %cond.false, !dbg !1690

cond.true:                                        ; preds = %do.body.195
  %106 = load i32, i32* %_c1, align 4, !dbg !1691, !tbaa !719
  br label %cond.end, !dbg !1690

cond.false:                                       ; preds = %do.body.195
  br label %cond.end, !dbg !1693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %106, %cond.true ], [ 772, %cond.false ], !dbg !1690
  %107 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1695, !tbaa !669
  %maxchar = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %107, i32 0, i32 3, !dbg !1698
  %108 = load i32, i32* %maxchar, align 4, !dbg !1698, !tbaa !1699
  %cmp198 = icmp ule i32 %cond, %108, !dbg !1701
  br i1 %cmp198, label %land.lhs.true.200, label %cond.false.205, !dbg !1702

land.lhs.true.200:                                ; preds = %cond.end
  %109 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1703, !tbaa !669
  %size = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %109, i32 0, i32 4, !dbg !1705
  %110 = load i64, i64* %size, align 8, !dbg !1705, !tbaa !1706
  %111 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1707, !tbaa !669
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %111, i32 0, i32 5, !dbg !1708
  %112 = load i64, i64* %pos, align 8, !dbg !1708, !tbaa !1709
  %sub201 = sub i64 %110, %112, !dbg !1710
  %cmp202 = icmp sle i64 2, %sub201, !dbg !1711
  br i1 %cmp202, label %cond.true.204, label %cond.false.205, !dbg !1712

cond.true.204:                                    ; preds = %land.lhs.true.200
  br label %cond.end.213, !dbg !1713

cond.false.205:                                   ; preds = %land.lhs.true.200, %cond.end
  %113 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1715, !tbaa !669
  %114 = load i32, i32* %_c1, align 4, !dbg !1718, !tbaa !719
  %cmp206 = icmp ugt i32 %114, 772, !dbg !1719
  br i1 %cmp206, label %cond.true.208, label %cond.false.209, !dbg !1720

cond.true.208:                                    ; preds = %cond.false.205
  %115 = load i32, i32* %_c1, align 4, !dbg !1721, !tbaa !719
  br label %cond.end.210, !dbg !1720

cond.false.209:                                   ; preds = %cond.false.205
  br label %cond.end.210, !dbg !1723

cond.end.210:                                     ; preds = %cond.false.209, %cond.true.208
  %cond211 = phi i32 [ %115, %cond.true.208 ], [ 772, %cond.false.209 ], !dbg !1720
  %call212 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %113, i64 2, i32 %cond211), !dbg !1725
  br label %cond.end.213, !dbg !1712

cond.end.213:                                     ; preds = %cond.end.210, %cond.true.204
  %cond214 = phi i32 [ 0, %cond.true.204 ], [ %call212, %cond.end.210 ], !dbg !1712
  %cmp215 = icmp slt i32 %cond214, 0, !dbg !1728
  br i1 %cmp215, label %if.then.217, label %if.end.218, !dbg !1731

if.then.217:                                      ; preds = %cond.end.213
  store i64 -4, i64* %retval, !dbg !1732
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.258, !dbg !1734

if.end.218:                                       ; preds = %cond.end.213
  br label %do.body.219, !dbg !1735

do.body.219:                                      ; preds = %if.end.218
  %116 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1737, !tbaa !669
  %kind = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %116, i32 0, i32 2, !dbg !1740
  %117 = load i32, i32* %kind, align 4, !dbg !1740, !tbaa !1741
  switch i32 %117, label %sw.default [
    i32 1, label %sw.bb.220
    i32 2, label %sw.bb.224
  ], !dbg !1742

sw.bb.220:                                        ; preds = %do.body.219
  %118 = load i32, i32* %_c1, align 4, !dbg !1743, !tbaa !719
  %conv221 = trunc i32 %118 to i8, !dbg !1747
  %119 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1748, !tbaa !669
  %pos222 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %119, i32 0, i32 5, !dbg !1749
  %120 = load i64, i64* %pos222, align 8, !dbg !1749, !tbaa !1709
  %121 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1750, !tbaa !669
  %data = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %121, i32 0, i32 1, !dbg !1751
  %122 = load i8*, i8** %data, align 8, !dbg !1751, !tbaa !1752
  %arrayidx223 = getelementptr i8, i8* %122, i64 %120, !dbg !1753
  store i8 %conv221, i8* %arrayidx223, align 1, !dbg !1754, !tbaa !699
  br label %sw.epilog, !dbg !1755

sw.bb.224:                                        ; preds = %do.body.219
  %123 = load i32, i32* %_c1, align 4, !dbg !1756, !tbaa !719
  %conv225 = trunc i32 %123 to i16, !dbg !1759
  %124 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1760, !tbaa !669
  %pos226 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %124, i32 0, i32 5, !dbg !1761
  %125 = load i64, i64* %pos226, align 8, !dbg !1761, !tbaa !1709
  %126 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1762, !tbaa !669
  %data227 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %126, i32 0, i32 1, !dbg !1763
  %127 = load i8*, i8** %data227, align 8, !dbg !1763, !tbaa !1752
  %128 = bitcast i8* %127 to i16*, !dbg !1764
  %arrayidx228 = getelementptr i16, i16* %128, i64 %125, !dbg !1765
  store i16 %conv225, i16* %arrayidx228, align 2, !dbg !1766, !tbaa !946
  br label %sw.epilog, !dbg !1767

sw.default:                                       ; preds = %do.body.219
  %129 = load i32, i32* %_c1, align 4, !dbg !1768, !tbaa !719
  %130 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1771, !tbaa !669
  %pos229 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %130, i32 0, i32 5, !dbg !1772
  %131 = load i64, i64* %pos229, align 8, !dbg !1772, !tbaa !1709
  %132 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1773, !tbaa !669
  %data230 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %132, i32 0, i32 1, !dbg !1774
  %133 = load i8*, i8** %data230, align 8, !dbg !1774, !tbaa !1752
  %134 = bitcast i8* %133 to i32*, !dbg !1775
  %arrayidx231 = getelementptr i32, i32* %134, i64 %131, !dbg !1776
  store i32 %129, i32* %arrayidx231, align 4, !dbg !1777, !tbaa !719
  br label %sw.epilog, !dbg !1778

sw.epilog:                                        ; preds = %sw.default, %sw.bb.224, %sw.bb.220
  br label %do.cond.232, !dbg !1779

do.cond.232:                                      ; preds = %sw.epilog
  br label %do.end.233, !dbg !1783

do.end.233:                                       ; preds = %do.cond.232
  br label %do.body.234, !dbg !1785

do.body.234:                                      ; preds = %do.end.233
  %135 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1787, !tbaa !669
  %kind235 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %135, i32 0, i32 2, !dbg !1790
  %136 = load i32, i32* %kind235, align 4, !dbg !1790, !tbaa !1741
  switch i32 %136, label %sw.default.248 [
    i32 1, label %sw.bb.236
    i32 2, label %sw.bb.242
  ], !dbg !1791

sw.bb.236:                                        ; preds = %do.body.234
  %137 = load i32, i32* %_c2, align 4, !dbg !1792, !tbaa !719
  %conv237 = trunc i32 %137 to i8, !dbg !1796
  %138 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1797, !tbaa !669
  %pos238 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %138, i32 0, i32 5, !dbg !1798
  %139 = load i64, i64* %pos238, align 8, !dbg !1798, !tbaa !1709
  %add239 = add i64 %139, 1, !dbg !1799
  %140 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1800, !tbaa !669
  %data240 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %140, i32 0, i32 1, !dbg !1801
  %141 = load i8*, i8** %data240, align 8, !dbg !1801, !tbaa !1752
  %arrayidx241 = getelementptr i8, i8* %141, i64 %add239, !dbg !1802
  store i8 %conv237, i8* %arrayidx241, align 1, !dbg !1803, !tbaa !699
  br label %sw.epilog.253, !dbg !1804

sw.bb.242:                                        ; preds = %do.body.234
  %142 = load i32, i32* %_c2, align 4, !dbg !1805, !tbaa !719
  %conv243 = trunc i32 %142 to i16, !dbg !1808
  %143 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1809, !tbaa !669
  %pos244 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %143, i32 0, i32 5, !dbg !1810
  %144 = load i64, i64* %pos244, align 8, !dbg !1810, !tbaa !1709
  %add245 = add i64 %144, 1, !dbg !1811
  %145 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1812, !tbaa !669
  %data246 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %145, i32 0, i32 1, !dbg !1813
  %146 = load i8*, i8** %data246, align 8, !dbg !1813, !tbaa !1752
  %147 = bitcast i8* %146 to i16*, !dbg !1814
  %arrayidx247 = getelementptr i16, i16* %147, i64 %add245, !dbg !1815
  store i16 %conv243, i16* %arrayidx247, align 2, !dbg !1816, !tbaa !946
  br label %sw.epilog.253, !dbg !1817

sw.default.248:                                   ; preds = %do.body.234
  %148 = load i32, i32* %_c2, align 4, !dbg !1818, !tbaa !719
  %149 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1821, !tbaa !669
  %pos249 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %149, i32 0, i32 5, !dbg !1822
  %150 = load i64, i64* %pos249, align 8, !dbg !1822, !tbaa !1709
  %add250 = add i64 %150, 1, !dbg !1823
  %151 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1824, !tbaa !669
  %data251 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %151, i32 0, i32 1, !dbg !1825
  %152 = load i8*, i8** %data251, align 8, !dbg !1825, !tbaa !1752
  %153 = bitcast i8* %152 to i32*, !dbg !1826
  %arrayidx252 = getelementptr i32, i32* %153, i64 %add250, !dbg !1827
  store i32 %148, i32* %arrayidx252, align 4, !dbg !1828, !tbaa !719
  br label %sw.epilog.253, !dbg !1829

sw.epilog.253:                                    ; preds = %sw.default.248, %sw.bb.242, %sw.bb.236
  br label %do.cond.254, !dbg !1830

do.cond.254:                                      ; preds = %sw.epilog.253
  br label %do.end.255, !dbg !1834

do.end.255:                                       ; preds = %do.cond.254
  %154 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1836, !tbaa !669
  %pos256 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %154, i32 0, i32 5, !dbg !1838
  %155 = load i64, i64* %pos256, align 8, !dbg !1839, !tbaa !1709
  %add257 = add i64 %155, 2, !dbg !1839
  store i64 %add257, i64* %pos256, align 8, !dbg !1839, !tbaa !1709
  store i32 0, i32* %cleanup.dest.slot, !dbg !1840
  br label %cleanup.258, !dbg !1840

cleanup.258:                                      ; preds = %do.end.255, %if.then.217
  %156 = bitcast i32* %_c2 to i8*, !dbg !1841
  call void @llvm.lifetime.end(i64 4, i8* %156) #1, !dbg !1841
  %157 = bitcast i32* %_c1 to i8*, !dbg !1841
  call void @llvm.lifetime.end(i64 4, i8* %157) #1, !dbg !1841
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.518 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.258
  br label %do.cond.260, !dbg !1844

do.cond.260:                                      ; preds = %cleanup.cont
  br label %do.end.261, !dbg !1845

do.end.261:                                       ; preds = %do.cond.260
  br label %sw.epilog.512, !dbg !1847

sw.bb.262:                                        ; preds = %if.end.189
  br label %do.body.263, !dbg !1849

do.body.263:                                      ; preds = %sw.bb.262
  %158 = bitcast i32* %_c1264 to i8*, !dbg !1850
  call void @llvm.lifetime.start(i64 4, i8* %158) #1, !dbg !1850
  call void @llvm.dbg.declare(metadata i32* %_c1264, metadata !564, metadata !666), !dbg !1852
  store i32 202, i32* %_c1264, align 4, !dbg !1852, !tbaa !719
  %159 = bitcast i32* %_c2265 to i8*, !dbg !1853
  call void @llvm.lifetime.start(i64 4, i8* %159) #1, !dbg !1853
  call void @llvm.dbg.declare(metadata i32* %_c2265, metadata !566, metadata !666), !dbg !1854
  store i32 780, i32* %_c2265, align 4, !dbg !1854, !tbaa !719
  %160 = load i32, i32* %_c1264, align 4, !dbg !1855, !tbaa !719
  %cmp266 = icmp ugt i32 %160, 780, !dbg !1857
  br i1 %cmp266, label %cond.true.268, label %cond.false.269, !dbg !1858

cond.true.268:                                    ; preds = %do.body.263
  %161 = load i32, i32* %_c1264, align 4, !dbg !1859, !tbaa !719
  br label %cond.end.270, !dbg !1858

cond.false.269:                                   ; preds = %do.body.263
  br label %cond.end.270, !dbg !1861

cond.end.270:                                     ; preds = %cond.false.269, %cond.true.268
  %cond271 = phi i32 [ %161, %cond.true.268 ], [ 780, %cond.false.269 ], !dbg !1858
  %162 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1863, !tbaa !669
  %maxchar272 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %162, i32 0, i32 3, !dbg !1866
  %163 = load i32, i32* %maxchar272, align 4, !dbg !1866, !tbaa !1699
  %cmp273 = icmp ule i32 %cond271, %163, !dbg !1867
  br i1 %cmp273, label %land.lhs.true.275, label %cond.false.282, !dbg !1868

land.lhs.true.275:                                ; preds = %cond.end.270
  %164 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1869, !tbaa !669
  %size276 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %164, i32 0, i32 4, !dbg !1871
  %165 = load i64, i64* %size276, align 8, !dbg !1871, !tbaa !1706
  %166 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1872, !tbaa !669
  %pos277 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %166, i32 0, i32 5, !dbg !1873
  %167 = load i64, i64* %pos277, align 8, !dbg !1873, !tbaa !1709
  %sub278 = sub i64 %165, %167, !dbg !1874
  %cmp279 = icmp sle i64 2, %sub278, !dbg !1875
  br i1 %cmp279, label %cond.true.281, label %cond.false.282, !dbg !1876

cond.true.281:                                    ; preds = %land.lhs.true.275
  br label %cond.end.290, !dbg !1877

cond.false.282:                                   ; preds = %land.lhs.true.275, %cond.end.270
  %168 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1879, !tbaa !669
  %169 = load i32, i32* %_c1264, align 4, !dbg !1882, !tbaa !719
  %cmp283 = icmp ugt i32 %169, 780, !dbg !1883
  br i1 %cmp283, label %cond.true.285, label %cond.false.286, !dbg !1884

cond.true.285:                                    ; preds = %cond.false.282
  %170 = load i32, i32* %_c1264, align 4, !dbg !1885, !tbaa !719
  br label %cond.end.287, !dbg !1884

cond.false.286:                                   ; preds = %cond.false.282
  br label %cond.end.287, !dbg !1887

cond.end.287:                                     ; preds = %cond.false.286, %cond.true.285
  %cond288 = phi i32 [ %170, %cond.true.285 ], [ 780, %cond.false.286 ], !dbg !1884
  %call289 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %168, i64 2, i32 %cond288), !dbg !1889
  br label %cond.end.290, !dbg !1876

cond.end.290:                                     ; preds = %cond.end.287, %cond.true.281
  %cond291 = phi i32 [ 0, %cond.true.281 ], [ %call289, %cond.end.287 ], !dbg !1876
  %cmp292 = icmp slt i32 %cond291, 0, !dbg !1892
  br i1 %cmp292, label %if.then.294, label %if.end.295, !dbg !1895

if.then.294:                                      ; preds = %cond.end.290
  store i64 -4, i64* %retval, !dbg !1896
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.339, !dbg !1898

if.end.295:                                       ; preds = %cond.end.290
  br label %do.body.296, !dbg !1899

do.body.296:                                      ; preds = %if.end.295
  %171 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1901, !tbaa !669
  %kind297 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %171, i32 0, i32 2, !dbg !1904
  %172 = load i32, i32* %kind297, align 4, !dbg !1904, !tbaa !1741
  switch i32 %172, label %sw.default.308 [
    i32 1, label %sw.bb.298
    i32 2, label %sw.bb.303
  ], !dbg !1905

sw.bb.298:                                        ; preds = %do.body.296
  %173 = load i32, i32* %_c1264, align 4, !dbg !1906, !tbaa !719
  %conv299 = trunc i32 %173 to i8, !dbg !1910
  %174 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1911, !tbaa !669
  %pos300 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %174, i32 0, i32 5, !dbg !1912
  %175 = load i64, i64* %pos300, align 8, !dbg !1912, !tbaa !1709
  %176 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1913, !tbaa !669
  %data301 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %176, i32 0, i32 1, !dbg !1914
  %177 = load i8*, i8** %data301, align 8, !dbg !1914, !tbaa !1752
  %arrayidx302 = getelementptr i8, i8* %177, i64 %175, !dbg !1915
  store i8 %conv299, i8* %arrayidx302, align 1, !dbg !1916, !tbaa !699
  br label %sw.epilog.312, !dbg !1917

sw.bb.303:                                        ; preds = %do.body.296
  %178 = load i32, i32* %_c1264, align 4, !dbg !1918, !tbaa !719
  %conv304 = trunc i32 %178 to i16, !dbg !1921
  %179 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1922, !tbaa !669
  %pos305 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %179, i32 0, i32 5, !dbg !1923
  %180 = load i64, i64* %pos305, align 8, !dbg !1923, !tbaa !1709
  %181 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1924, !tbaa !669
  %data306 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %181, i32 0, i32 1, !dbg !1925
  %182 = load i8*, i8** %data306, align 8, !dbg !1925, !tbaa !1752
  %183 = bitcast i8* %182 to i16*, !dbg !1926
  %arrayidx307 = getelementptr i16, i16* %183, i64 %180, !dbg !1927
  store i16 %conv304, i16* %arrayidx307, align 2, !dbg !1928, !tbaa !946
  br label %sw.epilog.312, !dbg !1929

sw.default.308:                                   ; preds = %do.body.296
  %184 = load i32, i32* %_c1264, align 4, !dbg !1930, !tbaa !719
  %185 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1933, !tbaa !669
  %pos309 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %185, i32 0, i32 5, !dbg !1934
  %186 = load i64, i64* %pos309, align 8, !dbg !1934, !tbaa !1709
  %187 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1935, !tbaa !669
  %data310 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %187, i32 0, i32 1, !dbg !1936
  %188 = load i8*, i8** %data310, align 8, !dbg !1936, !tbaa !1752
  %189 = bitcast i8* %188 to i32*, !dbg !1937
  %arrayidx311 = getelementptr i32, i32* %189, i64 %186, !dbg !1938
  store i32 %184, i32* %arrayidx311, align 4, !dbg !1939, !tbaa !719
  br label %sw.epilog.312, !dbg !1940

sw.epilog.312:                                    ; preds = %sw.default.308, %sw.bb.303, %sw.bb.298
  br label %do.cond.313, !dbg !1941

do.cond.313:                                      ; preds = %sw.epilog.312
  br label %do.end.314, !dbg !1945

do.end.314:                                       ; preds = %do.cond.313
  br label %do.body.315, !dbg !1947

do.body.315:                                      ; preds = %do.end.314
  %190 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1949, !tbaa !669
  %kind316 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %190, i32 0, i32 2, !dbg !1952
  %191 = load i32, i32* %kind316, align 4, !dbg !1952, !tbaa !1741
  switch i32 %191, label %sw.default.329 [
    i32 1, label %sw.bb.317
    i32 2, label %sw.bb.323
  ], !dbg !1953

sw.bb.317:                                        ; preds = %do.body.315
  %192 = load i32, i32* %_c2265, align 4, !dbg !1954, !tbaa !719
  %conv318 = trunc i32 %192 to i8, !dbg !1958
  %193 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1959, !tbaa !669
  %pos319 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %193, i32 0, i32 5, !dbg !1960
  %194 = load i64, i64* %pos319, align 8, !dbg !1960, !tbaa !1709
  %add320 = add i64 %194, 1, !dbg !1961
  %195 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1962, !tbaa !669
  %data321 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %195, i32 0, i32 1, !dbg !1963
  %196 = load i8*, i8** %data321, align 8, !dbg !1963, !tbaa !1752
  %arrayidx322 = getelementptr i8, i8* %196, i64 %add320, !dbg !1964
  store i8 %conv318, i8* %arrayidx322, align 1, !dbg !1965, !tbaa !699
  br label %sw.epilog.334, !dbg !1966

sw.bb.323:                                        ; preds = %do.body.315
  %197 = load i32, i32* %_c2265, align 4, !dbg !1967, !tbaa !719
  %conv324 = trunc i32 %197 to i16, !dbg !1970
  %198 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1971, !tbaa !669
  %pos325 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %198, i32 0, i32 5, !dbg !1972
  %199 = load i64, i64* %pos325, align 8, !dbg !1972, !tbaa !1709
  %add326 = add i64 %199, 1, !dbg !1973
  %200 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1974, !tbaa !669
  %data327 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %200, i32 0, i32 1, !dbg !1975
  %201 = load i8*, i8** %data327, align 8, !dbg !1975, !tbaa !1752
  %202 = bitcast i8* %201 to i16*, !dbg !1976
  %arrayidx328 = getelementptr i16, i16* %202, i64 %add326, !dbg !1977
  store i16 %conv324, i16* %arrayidx328, align 2, !dbg !1978, !tbaa !946
  br label %sw.epilog.334, !dbg !1979

sw.default.329:                                   ; preds = %do.body.315
  %203 = load i32, i32* %_c2265, align 4, !dbg !1980, !tbaa !719
  %204 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1983, !tbaa !669
  %pos330 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %204, i32 0, i32 5, !dbg !1984
  %205 = load i64, i64* %pos330, align 8, !dbg !1984, !tbaa !1709
  %add331 = add i64 %205, 1, !dbg !1985
  %206 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1986, !tbaa !669
  %data332 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %206, i32 0, i32 1, !dbg !1987
  %207 = load i8*, i8** %data332, align 8, !dbg !1987, !tbaa !1752
  %208 = bitcast i8* %207 to i32*, !dbg !1988
  %arrayidx333 = getelementptr i32, i32* %208, i64 %add331, !dbg !1989
  store i32 %203, i32* %arrayidx333, align 4, !dbg !1990, !tbaa !719
  br label %sw.epilog.334, !dbg !1991

sw.epilog.334:                                    ; preds = %sw.default.329, %sw.bb.323, %sw.bb.317
  br label %do.cond.335, !dbg !1992

do.cond.335:                                      ; preds = %sw.epilog.334
  br label %do.end.336, !dbg !1996

do.end.336:                                       ; preds = %do.cond.335
  %209 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1998, !tbaa !669
  %pos337 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %209, i32 0, i32 5, !dbg !2000
  %210 = load i64, i64* %pos337, align 8, !dbg !2001, !tbaa !1709
  %add338 = add i64 %210, 2, !dbg !2001
  store i64 %add338, i64* %pos337, align 8, !dbg !2001, !tbaa !1709
  store i32 0, i32* %cleanup.dest.slot, !dbg !2002
  br label %cleanup.339, !dbg !2002

cleanup.339:                                      ; preds = %do.end.336, %if.then.294
  %211 = bitcast i32* %_c2265 to i8*, !dbg !2003
  call void @llvm.lifetime.end(i64 4, i8* %211) #1, !dbg !2003
  %212 = bitcast i32* %_c1264 to i8*, !dbg !2003
  call void @llvm.lifetime.end(i64 4, i8* %212) #1, !dbg !2003
  %cleanup.dest.341 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.341, label %cleanup.518 [
    i32 0, label %cleanup.cont.342
  ]

cleanup.cont.342:                                 ; preds = %cleanup.339
  br label %do.cond.343, !dbg !2004

do.cond.343:                                      ; preds = %cleanup.cont.342
  br label %do.end.344, !dbg !2005

do.end.344:                                       ; preds = %do.cond.343
  br label %sw.epilog.512, !dbg !2007

sw.bb.345:                                        ; preds = %if.end.189
  br label %do.body.346, !dbg !2008

do.body.346:                                      ; preds = %sw.bb.345
  %213 = bitcast i32* %_c1347 to i8*, !dbg !2009
  call void @llvm.lifetime.start(i64 4, i8* %213) #1, !dbg !2009
  call void @llvm.dbg.declare(metadata i32* %_c1347, metadata !567, metadata !666), !dbg !2011
  store i32 234, i32* %_c1347, align 4, !dbg !2011, !tbaa !719
  %214 = bitcast i32* %_c2348 to i8*, !dbg !2012
  call void @llvm.lifetime.start(i64 4, i8* %214) #1, !dbg !2012
  call void @llvm.dbg.declare(metadata i32* %_c2348, metadata !569, metadata !666), !dbg !2013
  store i32 772, i32* %_c2348, align 4, !dbg !2013, !tbaa !719
  %215 = load i32, i32* %_c1347, align 4, !dbg !2014, !tbaa !719
  %cmp349 = icmp ugt i32 %215, 772, !dbg !2016
  br i1 %cmp349, label %cond.true.351, label %cond.false.352, !dbg !2017

cond.true.351:                                    ; preds = %do.body.346
  %216 = load i32, i32* %_c1347, align 4, !dbg !2018, !tbaa !719
  br label %cond.end.353, !dbg !2017

cond.false.352:                                   ; preds = %do.body.346
  br label %cond.end.353, !dbg !2020

cond.end.353:                                     ; preds = %cond.false.352, %cond.true.351
  %cond354 = phi i32 [ %216, %cond.true.351 ], [ 772, %cond.false.352 ], !dbg !2017
  %217 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2022, !tbaa !669
  %maxchar355 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %217, i32 0, i32 3, !dbg !2025
  %218 = load i32, i32* %maxchar355, align 4, !dbg !2025, !tbaa !1699
  %cmp356 = icmp ule i32 %cond354, %218, !dbg !2026
  br i1 %cmp356, label %land.lhs.true.358, label %cond.false.365, !dbg !2027

land.lhs.true.358:                                ; preds = %cond.end.353
  %219 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2028, !tbaa !669
  %size359 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %219, i32 0, i32 4, !dbg !2030
  %220 = load i64, i64* %size359, align 8, !dbg !2030, !tbaa !1706
  %221 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2031, !tbaa !669
  %pos360 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %221, i32 0, i32 5, !dbg !2032
  %222 = load i64, i64* %pos360, align 8, !dbg !2032, !tbaa !1709
  %sub361 = sub i64 %220, %222, !dbg !2033
  %cmp362 = icmp sle i64 2, %sub361, !dbg !2034
  br i1 %cmp362, label %cond.true.364, label %cond.false.365, !dbg !2035

cond.true.364:                                    ; preds = %land.lhs.true.358
  br label %cond.end.373, !dbg !2036

cond.false.365:                                   ; preds = %land.lhs.true.358, %cond.end.353
  %223 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2038, !tbaa !669
  %224 = load i32, i32* %_c1347, align 4, !dbg !2041, !tbaa !719
  %cmp366 = icmp ugt i32 %224, 772, !dbg !2042
  br i1 %cmp366, label %cond.true.368, label %cond.false.369, !dbg !2043

cond.true.368:                                    ; preds = %cond.false.365
  %225 = load i32, i32* %_c1347, align 4, !dbg !2044, !tbaa !719
  br label %cond.end.370, !dbg !2043

cond.false.369:                                   ; preds = %cond.false.365
  br label %cond.end.370, !dbg !2046

cond.end.370:                                     ; preds = %cond.false.369, %cond.true.368
  %cond371 = phi i32 [ %225, %cond.true.368 ], [ 772, %cond.false.369 ], !dbg !2043
  %call372 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %223, i64 2, i32 %cond371), !dbg !2048
  br label %cond.end.373, !dbg !2035

cond.end.373:                                     ; preds = %cond.end.370, %cond.true.364
  %cond374 = phi i32 [ 0, %cond.true.364 ], [ %call372, %cond.end.370 ], !dbg !2035
  %cmp375 = icmp slt i32 %cond374, 0, !dbg !2051
  br i1 %cmp375, label %if.then.377, label %if.end.378, !dbg !2054

if.then.377:                                      ; preds = %cond.end.373
  store i64 -4, i64* %retval, !dbg !2055
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.422, !dbg !2057

if.end.378:                                       ; preds = %cond.end.373
  br label %do.body.379, !dbg !2058

do.body.379:                                      ; preds = %if.end.378
  %226 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2060, !tbaa !669
  %kind380 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %226, i32 0, i32 2, !dbg !2063
  %227 = load i32, i32* %kind380, align 4, !dbg !2063, !tbaa !1741
  switch i32 %227, label %sw.default.391 [
    i32 1, label %sw.bb.381
    i32 2, label %sw.bb.386
  ], !dbg !2064

sw.bb.381:                                        ; preds = %do.body.379
  %228 = load i32, i32* %_c1347, align 4, !dbg !2065, !tbaa !719
  %conv382 = trunc i32 %228 to i8, !dbg !2069
  %229 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2070, !tbaa !669
  %pos383 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %229, i32 0, i32 5, !dbg !2071
  %230 = load i64, i64* %pos383, align 8, !dbg !2071, !tbaa !1709
  %231 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2072, !tbaa !669
  %data384 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %231, i32 0, i32 1, !dbg !2073
  %232 = load i8*, i8** %data384, align 8, !dbg !2073, !tbaa !1752
  %arrayidx385 = getelementptr i8, i8* %232, i64 %230, !dbg !2074
  store i8 %conv382, i8* %arrayidx385, align 1, !dbg !2075, !tbaa !699
  br label %sw.epilog.395, !dbg !2076

sw.bb.386:                                        ; preds = %do.body.379
  %233 = load i32, i32* %_c1347, align 4, !dbg !2077, !tbaa !719
  %conv387 = trunc i32 %233 to i16, !dbg !2080
  %234 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2081, !tbaa !669
  %pos388 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %234, i32 0, i32 5, !dbg !2082
  %235 = load i64, i64* %pos388, align 8, !dbg !2082, !tbaa !1709
  %236 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2083, !tbaa !669
  %data389 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %236, i32 0, i32 1, !dbg !2084
  %237 = load i8*, i8** %data389, align 8, !dbg !2084, !tbaa !1752
  %238 = bitcast i8* %237 to i16*, !dbg !2085
  %arrayidx390 = getelementptr i16, i16* %238, i64 %235, !dbg !2086
  store i16 %conv387, i16* %arrayidx390, align 2, !dbg !2087, !tbaa !946
  br label %sw.epilog.395, !dbg !2088

sw.default.391:                                   ; preds = %do.body.379
  %239 = load i32, i32* %_c1347, align 4, !dbg !2089, !tbaa !719
  %240 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2092, !tbaa !669
  %pos392 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %240, i32 0, i32 5, !dbg !2093
  %241 = load i64, i64* %pos392, align 8, !dbg !2093, !tbaa !1709
  %242 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2094, !tbaa !669
  %data393 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %242, i32 0, i32 1, !dbg !2095
  %243 = load i8*, i8** %data393, align 8, !dbg !2095, !tbaa !1752
  %244 = bitcast i8* %243 to i32*, !dbg !2096
  %arrayidx394 = getelementptr i32, i32* %244, i64 %241, !dbg !2097
  store i32 %239, i32* %arrayidx394, align 4, !dbg !2098, !tbaa !719
  br label %sw.epilog.395, !dbg !2099

sw.epilog.395:                                    ; preds = %sw.default.391, %sw.bb.386, %sw.bb.381
  br label %do.cond.396, !dbg !2100

do.cond.396:                                      ; preds = %sw.epilog.395
  br label %do.end.397, !dbg !2104

do.end.397:                                       ; preds = %do.cond.396
  br label %do.body.398, !dbg !2106

do.body.398:                                      ; preds = %do.end.397
  %245 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2108, !tbaa !669
  %kind399 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %245, i32 0, i32 2, !dbg !2111
  %246 = load i32, i32* %kind399, align 4, !dbg !2111, !tbaa !1741
  switch i32 %246, label %sw.default.412 [
    i32 1, label %sw.bb.400
    i32 2, label %sw.bb.406
  ], !dbg !2112

sw.bb.400:                                        ; preds = %do.body.398
  %247 = load i32, i32* %_c2348, align 4, !dbg !2113, !tbaa !719
  %conv401 = trunc i32 %247 to i8, !dbg !2117
  %248 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2118, !tbaa !669
  %pos402 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %248, i32 0, i32 5, !dbg !2119
  %249 = load i64, i64* %pos402, align 8, !dbg !2119, !tbaa !1709
  %add403 = add i64 %249, 1, !dbg !2120
  %250 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2121, !tbaa !669
  %data404 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %250, i32 0, i32 1, !dbg !2122
  %251 = load i8*, i8** %data404, align 8, !dbg !2122, !tbaa !1752
  %arrayidx405 = getelementptr i8, i8* %251, i64 %add403, !dbg !2123
  store i8 %conv401, i8* %arrayidx405, align 1, !dbg !2124, !tbaa !699
  br label %sw.epilog.417, !dbg !2125

sw.bb.406:                                        ; preds = %do.body.398
  %252 = load i32, i32* %_c2348, align 4, !dbg !2126, !tbaa !719
  %conv407 = trunc i32 %252 to i16, !dbg !2129
  %253 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2130, !tbaa !669
  %pos408 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %253, i32 0, i32 5, !dbg !2131
  %254 = load i64, i64* %pos408, align 8, !dbg !2131, !tbaa !1709
  %add409 = add i64 %254, 1, !dbg !2132
  %255 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2133, !tbaa !669
  %data410 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %255, i32 0, i32 1, !dbg !2134
  %256 = load i8*, i8** %data410, align 8, !dbg !2134, !tbaa !1752
  %257 = bitcast i8* %256 to i16*, !dbg !2135
  %arrayidx411 = getelementptr i16, i16* %257, i64 %add409, !dbg !2136
  store i16 %conv407, i16* %arrayidx411, align 2, !dbg !2137, !tbaa !946
  br label %sw.epilog.417, !dbg !2138

sw.default.412:                                   ; preds = %do.body.398
  %258 = load i32, i32* %_c2348, align 4, !dbg !2139, !tbaa !719
  %259 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2142, !tbaa !669
  %pos413 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %259, i32 0, i32 5, !dbg !2143
  %260 = load i64, i64* %pos413, align 8, !dbg !2143, !tbaa !1709
  %add414 = add i64 %260, 1, !dbg !2144
  %261 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2145, !tbaa !669
  %data415 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %261, i32 0, i32 1, !dbg !2146
  %262 = load i8*, i8** %data415, align 8, !dbg !2146, !tbaa !1752
  %263 = bitcast i8* %262 to i32*, !dbg !2147
  %arrayidx416 = getelementptr i32, i32* %263, i64 %add414, !dbg !2148
  store i32 %258, i32* %arrayidx416, align 4, !dbg !2149, !tbaa !719
  br label %sw.epilog.417, !dbg !2150

sw.epilog.417:                                    ; preds = %sw.default.412, %sw.bb.406, %sw.bb.400
  br label %do.cond.418, !dbg !2151

do.cond.418:                                      ; preds = %sw.epilog.417
  br label %do.end.419, !dbg !2155

do.end.419:                                       ; preds = %do.cond.418
  %264 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2157, !tbaa !669
  %pos420 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %264, i32 0, i32 5, !dbg !2159
  %265 = load i64, i64* %pos420, align 8, !dbg !2160, !tbaa !1709
  %add421 = add i64 %265, 2, !dbg !2160
  store i64 %add421, i64* %pos420, align 8, !dbg !2160, !tbaa !1709
  store i32 0, i32* %cleanup.dest.slot, !dbg !2161
  br label %cleanup.422, !dbg !2161

cleanup.422:                                      ; preds = %do.end.419, %if.then.377
  %266 = bitcast i32* %_c2348 to i8*, !dbg !2162
  call void @llvm.lifetime.end(i64 4, i8* %266) #1, !dbg !2162
  %267 = bitcast i32* %_c1347 to i8*, !dbg !2162
  call void @llvm.lifetime.end(i64 4, i8* %267) #1, !dbg !2162
  %cleanup.dest.424 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.424, label %cleanup.518 [
    i32 0, label %cleanup.cont.425
  ]

cleanup.cont.425:                                 ; preds = %cleanup.422
  br label %do.cond.426, !dbg !2163

do.cond.426:                                      ; preds = %cleanup.cont.425
  br label %do.end.427, !dbg !2164

do.end.427:                                       ; preds = %do.cond.426
  br label %sw.epilog.512, !dbg !2166

sw.bb.428:                                        ; preds = %if.end.189
  br label %do.body.429, !dbg !2167

do.body.429:                                      ; preds = %sw.bb.428
  %268 = bitcast i32* %_c1430 to i8*, !dbg !2168
  call void @llvm.lifetime.start(i64 4, i8* %268) #1, !dbg !2168
  call void @llvm.dbg.declare(metadata i32* %_c1430, metadata !570, metadata !666), !dbg !2170
  store i32 234, i32* %_c1430, align 4, !dbg !2170, !tbaa !719
  %269 = bitcast i32* %_c2431 to i8*, !dbg !2171
  call void @llvm.lifetime.start(i64 4, i8* %269) #1, !dbg !2171
  call void @llvm.dbg.declare(metadata i32* %_c2431, metadata !572, metadata !666), !dbg !2172
  store i32 780, i32* %_c2431, align 4, !dbg !2172, !tbaa !719
  %270 = load i32, i32* %_c1430, align 4, !dbg !2173, !tbaa !719
  %cmp432 = icmp ugt i32 %270, 780, !dbg !2175
  br i1 %cmp432, label %cond.true.434, label %cond.false.435, !dbg !2176

cond.true.434:                                    ; preds = %do.body.429
  %271 = load i32, i32* %_c1430, align 4, !dbg !2177, !tbaa !719
  br label %cond.end.436, !dbg !2176

cond.false.435:                                   ; preds = %do.body.429
  br label %cond.end.436, !dbg !2179

cond.end.436:                                     ; preds = %cond.false.435, %cond.true.434
  %cond437 = phi i32 [ %271, %cond.true.434 ], [ 780, %cond.false.435 ], !dbg !2176
  %272 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2181, !tbaa !669
  %maxchar438 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %272, i32 0, i32 3, !dbg !2184
  %273 = load i32, i32* %maxchar438, align 4, !dbg !2184, !tbaa !1699
  %cmp439 = icmp ule i32 %cond437, %273, !dbg !2185
  br i1 %cmp439, label %land.lhs.true.441, label %cond.false.448, !dbg !2186

land.lhs.true.441:                                ; preds = %cond.end.436
  %274 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2187, !tbaa !669
  %size442 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %274, i32 0, i32 4, !dbg !2189
  %275 = load i64, i64* %size442, align 8, !dbg !2189, !tbaa !1706
  %276 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2190, !tbaa !669
  %pos443 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %276, i32 0, i32 5, !dbg !2191
  %277 = load i64, i64* %pos443, align 8, !dbg !2191, !tbaa !1709
  %sub444 = sub i64 %275, %277, !dbg !2192
  %cmp445 = icmp sle i64 2, %sub444, !dbg !2193
  br i1 %cmp445, label %cond.true.447, label %cond.false.448, !dbg !2194

cond.true.447:                                    ; preds = %land.lhs.true.441
  br label %cond.end.456, !dbg !2195

cond.false.448:                                   ; preds = %land.lhs.true.441, %cond.end.436
  %278 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2197, !tbaa !669
  %279 = load i32, i32* %_c1430, align 4, !dbg !2200, !tbaa !719
  %cmp449 = icmp ugt i32 %279, 780, !dbg !2201
  br i1 %cmp449, label %cond.true.451, label %cond.false.452, !dbg !2202

cond.true.451:                                    ; preds = %cond.false.448
  %280 = load i32, i32* %_c1430, align 4, !dbg !2203, !tbaa !719
  br label %cond.end.453, !dbg !2202

cond.false.452:                                   ; preds = %cond.false.448
  br label %cond.end.453, !dbg !2205

cond.end.453:                                     ; preds = %cond.false.452, %cond.true.451
  %cond454 = phi i32 [ %280, %cond.true.451 ], [ 780, %cond.false.452 ], !dbg !2202
  %call455 = call i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter* %278, i64 2, i32 %cond454), !dbg !2207
  br label %cond.end.456, !dbg !2194

cond.end.456:                                     ; preds = %cond.end.453, %cond.true.447
  %cond457 = phi i32 [ 0, %cond.true.447 ], [ %call455, %cond.end.453 ], !dbg !2194
  %cmp458 = icmp slt i32 %cond457, 0, !dbg !2210
  br i1 %cmp458, label %if.then.460, label %if.end.461, !dbg !2213

if.then.460:                                      ; preds = %cond.end.456
  store i64 -4, i64* %retval, !dbg !2214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.505, !dbg !2216

if.end.461:                                       ; preds = %cond.end.456
  br label %do.body.462, !dbg !2217

do.body.462:                                      ; preds = %if.end.461
  %281 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2219, !tbaa !669
  %kind463 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %281, i32 0, i32 2, !dbg !2222
  %282 = load i32, i32* %kind463, align 4, !dbg !2222, !tbaa !1741
  switch i32 %282, label %sw.default.474 [
    i32 1, label %sw.bb.464
    i32 2, label %sw.bb.469
  ], !dbg !2223

sw.bb.464:                                        ; preds = %do.body.462
  %283 = load i32, i32* %_c1430, align 4, !dbg !2224, !tbaa !719
  %conv465 = trunc i32 %283 to i8, !dbg !2228
  %284 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2229, !tbaa !669
  %pos466 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %284, i32 0, i32 5, !dbg !2230
  %285 = load i64, i64* %pos466, align 8, !dbg !2230, !tbaa !1709
  %286 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2231, !tbaa !669
  %data467 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %286, i32 0, i32 1, !dbg !2232
  %287 = load i8*, i8** %data467, align 8, !dbg !2232, !tbaa !1752
  %arrayidx468 = getelementptr i8, i8* %287, i64 %285, !dbg !2233
  store i8 %conv465, i8* %arrayidx468, align 1, !dbg !2234, !tbaa !699
  br label %sw.epilog.478, !dbg !2235

sw.bb.469:                                        ; preds = %do.body.462
  %288 = load i32, i32* %_c1430, align 4, !dbg !2236, !tbaa !719
  %conv470 = trunc i32 %288 to i16, !dbg !2239
  %289 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2240, !tbaa !669
  %pos471 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %289, i32 0, i32 5, !dbg !2241
  %290 = load i64, i64* %pos471, align 8, !dbg !2241, !tbaa !1709
  %291 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2242, !tbaa !669
  %data472 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %291, i32 0, i32 1, !dbg !2243
  %292 = load i8*, i8** %data472, align 8, !dbg !2243, !tbaa !1752
  %293 = bitcast i8* %292 to i16*, !dbg !2244
  %arrayidx473 = getelementptr i16, i16* %293, i64 %290, !dbg !2245
  store i16 %conv470, i16* %arrayidx473, align 2, !dbg !2246, !tbaa !946
  br label %sw.epilog.478, !dbg !2247

sw.default.474:                                   ; preds = %do.body.462
  %294 = load i32, i32* %_c1430, align 4, !dbg !2248, !tbaa !719
  %295 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2251, !tbaa !669
  %pos475 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %295, i32 0, i32 5, !dbg !2252
  %296 = load i64, i64* %pos475, align 8, !dbg !2252, !tbaa !1709
  %297 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2253, !tbaa !669
  %data476 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %297, i32 0, i32 1, !dbg !2254
  %298 = load i8*, i8** %data476, align 8, !dbg !2254, !tbaa !1752
  %299 = bitcast i8* %298 to i32*, !dbg !2255
  %arrayidx477 = getelementptr i32, i32* %299, i64 %296, !dbg !2256
  store i32 %294, i32* %arrayidx477, align 4, !dbg !2257, !tbaa !719
  br label %sw.epilog.478, !dbg !2258

sw.epilog.478:                                    ; preds = %sw.default.474, %sw.bb.469, %sw.bb.464
  br label %do.cond.479, !dbg !2259

do.cond.479:                                      ; preds = %sw.epilog.478
  br label %do.end.480, !dbg !2263

do.end.480:                                       ; preds = %do.cond.479
  br label %do.body.481, !dbg !2265

do.body.481:                                      ; preds = %do.end.480
  %300 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2267, !tbaa !669
  %kind482 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %300, i32 0, i32 2, !dbg !2270
  %301 = load i32, i32* %kind482, align 4, !dbg !2270, !tbaa !1741
  switch i32 %301, label %sw.default.495 [
    i32 1, label %sw.bb.483
    i32 2, label %sw.bb.489
  ], !dbg !2271

sw.bb.483:                                        ; preds = %do.body.481
  %302 = load i32, i32* %_c2431, align 4, !dbg !2272, !tbaa !719
  %conv484 = trunc i32 %302 to i8, !dbg !2276
  %303 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2277, !tbaa !669
  %pos485 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %303, i32 0, i32 5, !dbg !2278
  %304 = load i64, i64* %pos485, align 8, !dbg !2278, !tbaa !1709
  %add486 = add i64 %304, 1, !dbg !2279
  %305 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2280, !tbaa !669
  %data487 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %305, i32 0, i32 1, !dbg !2281
  %306 = load i8*, i8** %data487, align 8, !dbg !2281, !tbaa !1752
  %arrayidx488 = getelementptr i8, i8* %306, i64 %add486, !dbg !2282
  store i8 %conv484, i8* %arrayidx488, align 1, !dbg !2283, !tbaa !699
  br label %sw.epilog.500, !dbg !2284

sw.bb.489:                                        ; preds = %do.body.481
  %307 = load i32, i32* %_c2431, align 4, !dbg !2285, !tbaa !719
  %conv490 = trunc i32 %307 to i16, !dbg !2288
  %308 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2289, !tbaa !669
  %pos491 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %308, i32 0, i32 5, !dbg !2290
  %309 = load i64, i64* %pos491, align 8, !dbg !2290, !tbaa !1709
  %add492 = add i64 %309, 1, !dbg !2291
  %310 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2292, !tbaa !669
  %data493 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %310, i32 0, i32 1, !dbg !2293
  %311 = load i8*, i8** %data493, align 8, !dbg !2293, !tbaa !1752
  %312 = bitcast i8* %311 to i16*, !dbg !2294
  %arrayidx494 = getelementptr i16, i16* %312, i64 %add492, !dbg !2295
  store i16 %conv490, i16* %arrayidx494, align 2, !dbg !2296, !tbaa !946
  br label %sw.epilog.500, !dbg !2297

sw.default.495:                                   ; preds = %do.body.481
  %313 = load i32, i32* %_c2431, align 4, !dbg !2298, !tbaa !719
  %314 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2301, !tbaa !669
  %pos496 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %314, i32 0, i32 5, !dbg !2302
  %315 = load i64, i64* %pos496, align 8, !dbg !2302, !tbaa !1709
  %add497 = add i64 %315, 1, !dbg !2303
  %316 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2304, !tbaa !669
  %data498 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %316, i32 0, i32 1, !dbg !2305
  %317 = load i8*, i8** %data498, align 8, !dbg !2305, !tbaa !1752
  %318 = bitcast i8* %317 to i32*, !dbg !2306
  %arrayidx499 = getelementptr i32, i32* %318, i64 %add497, !dbg !2307
  store i32 %313, i32* %arrayidx499, align 4, !dbg !2308, !tbaa !719
  br label %sw.epilog.500, !dbg !2309

sw.epilog.500:                                    ; preds = %sw.default.495, %sw.bb.489, %sw.bb.483
  br label %do.cond.501, !dbg !2310

do.cond.501:                                      ; preds = %sw.epilog.500
  br label %do.end.502, !dbg !2314

do.end.502:                                       ; preds = %do.cond.501
  %319 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !2316, !tbaa !669
  %pos503 = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %319, i32 0, i32 5, !dbg !2318
  %320 = load i64, i64* %pos503, align 8, !dbg !2319, !tbaa !1709
  %add504 = add i64 %320, 2, !dbg !2319
  store i64 %add504, i64* %pos503, align 8, !dbg !2319, !tbaa !1709
  store i32 0, i32* %cleanup.dest.slot, !dbg !2320
  br label %cleanup.505, !dbg !2320

cleanup.505:                                      ; preds = %do.end.502, %if.then.460
  %321 = bitcast i32* %_c2431 to i8*, !dbg !2321
  call void @llvm.lifetime.end(i64 4, i8* %321) #1, !dbg !2321
  %322 = bitcast i32* %_c1430 to i8*, !dbg !2321
  call void @llvm.lifetime.end(i64 4, i8* %322) #1, !dbg !2321
  %cleanup.dest.507 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.507, label %cleanup.518 [
    i32 0, label %cleanup.cont.508
  ]

cleanup.cont.508:                                 ; preds = %cleanup.505
  br label %do.cond.509, !dbg !2322

do.cond.509:                                      ; preds = %cleanup.cont.508
  br label %do.end.510, !dbg !2323

do.end.510:                                       ; preds = %do.cond.509
  br label %sw.epilog.512, !dbg !2325

sw.default.511:                                   ; preds = %if.end.189
  store i64 1, i64* %retval, !dbg !2326
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.518, !dbg !2326

sw.epilog.512:                                    ; preds = %do.end.510, %do.end.427, %do.end.344, %do.end.261
  br label %do.body.513, !dbg !2327

do.body.513:                                      ; preds = %sw.epilog.512
  %323 = load i8**, i8*** %inbuf.addr, align 8, !dbg !2328, !tbaa !669
  %324 = load i8*, i8** %323, align 8, !dbg !2331, !tbaa !669
  %add.ptr514 = getelementptr i8, i8* %324, i64 2, !dbg !2331
  store i8* %add.ptr514, i8** %323, align 8, !dbg !2331, !tbaa !669
  %325 = load i64, i64* %inleft.addr, align 8, !dbg !2332, !tbaa !914
  %sub515 = sub i64 %325, 2, !dbg !2332
  store i64 %sub515, i64* %inleft.addr, align 8, !dbg !2332, !tbaa !914
  br label %do.cond.516, !dbg !2333

do.cond.516:                                      ; preds = %do.body.513
  br label %do.end.517, !dbg !2334

do.end.517:                                       ; preds = %do.cond.516
  store i32 0, i32* %cleanup.dest.slot, !dbg !2336
  br label %cleanup.518, !dbg !2336

cleanup.518:                                      ; preds = %do.end.517, %sw.default.511, %cleanup.505, %cleanup.422, %cleanup.339, %cleanup.258, %cleanup, %do.end.81, %if.then.73, %if.then.14, %do.end.9, %if.then.6
  %326 = bitcast i32* %decoded to i8*, !dbg !2337
  call void @llvm.lifetime.end(i64 4, i8* %326) #1, !dbg !2337
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !2337
  %cleanup.dest.520 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.520, label %unreachable [
    i32 0, label %cleanup.cont.521
    i32 1, label %return
    i32 2, label %while.cond
  ]

cleanup.cont.521:                                 ; preds = %cleanup.518
  br label %while.cond, !dbg !1358

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !2338
  br label %return, !dbg !2338

return:                                           ; preds = %while.end, %cleanup.518
  %327 = load i64, i64* %retval, !dbg !2339
  ret i64 %327, !dbg !2339

unreachable:                                      ; preds = %cleanup.518
  unreachable
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
  %cleanup.dest.slot = alloca i32
  %map = alloca %struct.dbcs_map*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store i8* %modname, i8** %modname.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %modname.addr, metadata !483, metadata !666), !dbg !2340
  store i8* %symbol, i8** %symbol.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8** %symbol.addr, metadata !484, metadata !666), !dbg !2341
  store i8** %encmap, i8*** %encmap.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8*** %encmap.addr, metadata !485, metadata !666), !dbg !2342
  store i8** %decmap, i8*** %decmap.addr, align 8, !tbaa !669
  call void @llvm.dbg.declare(metadata i8*** %decmap.addr, metadata !486, metadata !666), !dbg !2343
  %0 = bitcast %struct._object** %o to i8*, !dbg !2344
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct._object** %o, metadata !487, metadata !666), !dbg !2345
  %1 = bitcast %struct._object** %mod to i8*, !dbg !2344
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !488, metadata !666), !dbg !2346
  %2 = load i8*, i8** %modname.addr, align 8, !dbg !2347, !tbaa !669
  %call = call %struct._object* @PyImport_ImportModule(i8* %2), !dbg !2348
  store %struct._object* %call, %struct._object** %mod, align 8, !dbg !2349, !tbaa !669
  %3 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2350, !tbaa !669
  %cmp = icmp eq %struct._object* %3, null, !dbg !2352
  br i1 %cmp, label %if.then, label %if.end, !dbg !2353

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !2354
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2354

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2355, !tbaa !669
  %5 = load i8*, i8** %symbol.addr, align 8, !dbg !2356, !tbaa !669
  %call1 = call %struct._object* @PyObject_GetAttrString(%struct._object* %4, i8* %5), !dbg !2357
  store %struct._object* %call1, %struct._object** %o, align 8, !dbg !2358, !tbaa !669
  %6 = load %struct._object*, %struct._object** %o, align 8, !dbg !2359, !tbaa !669
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !2360
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !2361

if.then.3:                                        ; preds = %if.end
  br label %errorexit, !dbg !2362

if.else:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %o, align 8, !dbg !2363, !tbaa !669
  %call4 = call i32 @PyCapsule_IsValid(%struct._object* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)), !dbg !2364
  %tobool = icmp ne i32 %call4, 0, !dbg !2364
  br i1 %tobool, label %if.else.6, label %if.then.5, !dbg !2365

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2366, !tbaa !669
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0)), !dbg !2368
  br label %errorexit, !dbg !2369

if.else.6:                                        ; preds = %if.else
  %9 = bitcast %struct.dbcs_map** %map to i8*, !dbg !2370
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !2370
  call void @llvm.dbg.declare(metadata %struct.dbcs_map** %map, metadata !489, metadata !666), !dbg !2371
  %10 = load %struct._object*, %struct._object** %o, align 8, !dbg !2372, !tbaa !669
  %call7 = call i8* @PyCapsule_GetPointer(%struct._object* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)), !dbg !2373
  %11 = bitcast i8* %call7 to %struct.dbcs_map*, !dbg !2373
  store %struct.dbcs_map* %11, %struct.dbcs_map** %map, align 8, !dbg !2374, !tbaa !669
  %12 = load i8**, i8*** %encmap.addr, align 8, !dbg !2375, !tbaa !669
  %cmp8 = icmp ne i8** %12, null, !dbg !2377
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !2378

if.then.9:                                        ; preds = %if.else.6
  %13 = load %struct.dbcs_map*, %struct.dbcs_map** %map, align 8, !dbg !2379, !tbaa !669
  %encmap10 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %13, i32 0, i32 1, !dbg !2380
  %14 = load %struct.unim_index*, %struct.unim_index** %encmap10, align 8, !dbg !2380, !tbaa !2381
  %15 = bitcast %struct.unim_index* %14 to i8*, !dbg !2379
  %16 = load i8**, i8*** %encmap.addr, align 8, !dbg !2382, !tbaa !669
  store i8* %15, i8** %16, align 8, !dbg !2383, !tbaa !669
  br label %if.end.11, !dbg !2384

if.end.11:                                        ; preds = %if.then.9, %if.else.6
  %17 = load i8**, i8*** %decmap.addr, align 8, !dbg !2385, !tbaa !669
  %cmp12 = icmp ne i8** %17, null, !dbg !2387
  br i1 %cmp12, label %if.then.13, label %if.end.15, !dbg !2388

if.then.13:                                       ; preds = %if.end.11
  %18 = load %struct.dbcs_map*, %struct.dbcs_map** %map, align 8, !dbg !2389, !tbaa !669
  %decmap14 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %18, i32 0, i32 2, !dbg !2390
  %19 = load %struct.dbcs_index*, %struct.dbcs_index** %decmap14, align 8, !dbg !2390, !tbaa !2391
  %20 = bitcast %struct.dbcs_index* %19 to i8*, !dbg !2389
  %21 = load i8**, i8*** %decmap.addr, align 8, !dbg !2392, !tbaa !669
  store i8* %20, i8** %21, align 8, !dbg !2393, !tbaa !669
  br label %if.end.15, !dbg !2394

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  br label %do.body, !dbg !2395

do.body:                                          ; preds = %if.end.15
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2396
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !2396
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !518, metadata !666), !dbg !2398
  %23 = load %struct._object*, %struct._object** %o, align 8, !dbg !2399, !tbaa !669
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !2398, !tbaa !669
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2400, !tbaa !669
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !2402
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !2403, !tbaa !833
  %dec = add i64 %25, -1, !dbg !2403
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2403, !tbaa !833
  %cmp16 = icmp ne i64 %dec, 0, !dbg !2404
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !2405

if.then.17:                                       ; preds = %do.body
  br label %if.end.19, !dbg !2406

if.else.18:                                       ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2408, !tbaa !669
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !2410
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2410, !tbaa !746
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !2411
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2411, !tbaa !842
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2412, !tbaa !669
  call void %28(%struct._object* %29), !dbg !2413
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2414
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !2414
  br label %do.cond, !dbg !2416

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !2417

do.end:                                           ; preds = %do.cond
  %31 = bitcast %struct.dbcs_map** %map to i8*, !dbg !2419
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !2419
  br label %if.end.20

if.end.20:                                        ; preds = %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  br label %do.body.22, !dbg !2420

do.body.22:                                       ; preds = %if.end.21
  %32 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2421
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !2421
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp23, metadata !520, metadata !666), !dbg !2423
  %33 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2424, !tbaa !669
  store %struct._object* %33, %struct._object** %_py_decref_tmp23, align 8, !dbg !2423, !tbaa !669
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2425, !tbaa !669
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !2427
  %35 = load i64, i64* %ob_refcnt24, align 8, !dbg !2428, !tbaa !833
  %dec25 = add i64 %35, -1, !dbg !2428
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2428, !tbaa !833
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !2429
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !2430

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31, !dbg !2431

if.else.28:                                       ; preds = %do.body.22
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2433, !tbaa !669
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !2435
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2435, !tbaa !746
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !2436
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2436, !tbaa !842
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8, !dbg !2437, !tbaa !669
  call void %38(%struct._object* %39), !dbg !2438
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %40 = bitcast %struct._object** %_py_decref_tmp23 to i8*, !dbg !2439
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2439
  br label %do.cond.32, !dbg !2441

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !2442

do.end.33:                                        ; preds = %do.cond.32
  store i32 0, i32* %retval, !dbg !2444
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2444

errorexit:                                        ; preds = %if.then.5, %if.then.3
  br label %do.body.34, !dbg !2445

do.body.34:                                       ; preds = %errorexit
  %41 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2446
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !2446
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !522, metadata !666), !dbg !2448
  %42 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2449, !tbaa !669
  store %struct._object* %42, %struct._object** %_py_decref_tmp35, align 8, !dbg !2448, !tbaa !669
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2450, !tbaa !669
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2452
  %44 = load i64, i64* %ob_refcnt36, align 8, !dbg !2453, !tbaa !833
  %dec37 = add i64 %44, -1, !dbg !2453
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !2453, !tbaa !833
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !2454
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !2455

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !2456

if.else.40:                                       ; preds = %do.body.34
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2458, !tbaa !669
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2460
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2460, !tbaa !746
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2461
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2461, !tbaa !842
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2462, !tbaa !669
  call void %47(%struct._object* %48), !dbg !2463
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %49 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2464
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2464
  br label %do.cond.44, !dbg !2465

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2466

do.end.45:                                        ; preds = %do.cond.44
  store i32 -1, i32* %retval, !dbg !2468
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2468

cleanup:                                          ; preds = %do.end.45, %do.end.33, %if.then
  %50 = bitcast %struct._object** %mod to i8*, !dbg !2469
  call void @llvm.lifetime.end(i64 8, i8* %50) #1, !dbg !2469
  %51 = bitcast %struct._object** %o to i8*, !dbg !2469
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !2469
  %52 = load i32, i32* %retval, !dbg !2469
  ret i32 %52, !dbg !2469
}

declare %struct._object* @PyImport_ImportModule(i8*) #3

declare i32 @PyCapsule_IsValid(%struct._object*, i8*) #3

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #3

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #3

declare i32 @_PyUnicodeWriter_PrepareInternal(%struct._PyUnicodeWriter*, i64, i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!661, !662, !663}
!llvm.ident = !{!664}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !366, globals: !587)
!1 = !DIFile(filename: "_codecs_hk.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !59, !353, !354, !358, !361, !357, !356, !363, !360, !364, !365}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !15, file: !14, line: 108, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !14, line: 334, size: 3200, align: 64, elements: !28)
!28 = !{!29, !35, !39, !40, !41, !46, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !14, line: 335, baseType: !30, size: 192, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !14, line: 114, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 111, size: 192, align: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !14, line: 112, baseType: !13, size: 128, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !31, file: !14, line: 113, baseType: !18, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !27, file: !14, line: 336, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !27, file: !14, line: 341, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !14, line: 308, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !12}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !27, file: !14, line: 342, baseType: !47, size: 64, align: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !14, line: 314, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !12, !52, !51}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 48, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 246, size: 1728, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!56 = !{!57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !83, !85, !87, !91, !94, !96, !97, !98, !99, !100, !104, !105}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 247, baseType: !51, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 252, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 253, baseType: !59, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 254, baseType: !59, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 255, baseType: !59, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 256, baseType: !59, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 257, baseType: !59, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 258, baseType: !59, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 259, baseType: !59, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 261, baseType: !59, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 262, baseType: !59, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 263, baseType: !59, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 265, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 161, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !55, line: 162, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !55, line: 163, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !55, line: 167, baseType: !51, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 267, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 269, baseType: !51, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 273, baseType: !51, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 275, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !23, line: 140, baseType: !24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 279, baseType: !84, size: 16, align: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 280, baseType: !86, size: 8, align: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 281, baseType: !88, size: 8, align: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 285, baseType: !92, size: 64, align: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 155, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 294, baseType: !95, size: 64, align: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !23, line: 141, baseType: !24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !54, file: !55, line: 303, baseType: !11, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !54, file: !55, line: 304, baseType: !11, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !54, file: !55, line: 305, baseType: !11, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !54, file: !55, line: 306, baseType: !11, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 309, baseType: !51, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !27, file: !14, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !14, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!12, !12, !59}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !27, file: !14, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !14, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!51, !12, !59, !12}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !27, file: !14, line: 345, baseType: !11, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !27, file: !14, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !14, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !12}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !27, file: !14, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !14, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !14, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !14, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12, !12}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !14, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !14, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !14, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !14, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !14, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !14, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !12, !12, !12}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !14, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !14, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !14, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !14, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !14, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !14, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!51, !12}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !14, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !14, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !14, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !14, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !14, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !14, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !14, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !14, line: 258, baseType: !11, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !14, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !14, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !14, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !14, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !14, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !14, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !14, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !14, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !14, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !14, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !14, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !14, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !14, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !14, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !14, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !14, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !27, file: !14, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !14, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !14, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !14, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!18, !12}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !14, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !14, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !14, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !12, !18}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !14, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !14, line: 285, baseType: !11, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !14, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !14, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !12, !18, !12}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !14, line: 287, baseType: !11, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !14, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !14, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!51, !12, !12}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !14, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !14, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !27, file: !14, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !14, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !14, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !14, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !14, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !14, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!51, !12, !12, !12}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !27, file: !14, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !14, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !12}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !19, line: 186, baseType: !18)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !27, file: !14, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !27, file: !14, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !27, file: !14, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !14, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !27, file: !14, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !14, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !27, file: !14, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !14, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !14, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !14, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!51, !12, !242, !51}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !14, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !14, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !14, line: 179, baseType: !11, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !14, line: 180, baseType: !12, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !14, line: 181, baseType: !18, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !14, line: 182, baseType: !18, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !14, line: 184, baseType: !51, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !14, line: 185, baseType: !51, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !14, line: 186, baseType: !59, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !14, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !14, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !14, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !14, line: 190, baseType: !11, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !14, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !14, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !12, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !27, file: !14, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !27, file: !14, line: 368, baseType: !36, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !27, file: !14, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !14, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!51, !12, !270, !11}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !14, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!51, !12, !11}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !27, file: !14, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !27, file: !14, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !14, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!12, !12, !12, !51}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !27, file: !14, line: 382, baseType: !18, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !27, file: !14, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !14, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !27, file: !14, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !14, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !27, file: !14, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !36, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !51, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !36, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !27, file: !14, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !14, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !27, file: !14, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !59, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!12, !12, !11}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!51, !12, !12, !11}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !59, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !11, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !27, file: !14, line: 392, baseType: !26, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !27, file: !14, line: 393, baseType: !12, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !27, file: !14, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !14, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !27, file: !14, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !14, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !27, file: !14, line: 396, baseType: !18, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !27, file: !14, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !14, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !27, file: !14, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !14, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!12, !26, !18}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !27, file: !14, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !14, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!12, !26, !12, !12}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !27, file: !14, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !14, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !11}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !27, file: !14, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !27, file: !14, line: 402, baseType: !12, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !27, file: !14, line: 403, baseType: !12, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !27, file: !14, line: 404, baseType: !12, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !27, file: !14, line: 405, baseType: !12, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !27, file: !14, line: 406, baseType: !12, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !27, file: !14, line: 407, baseType: !42, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !27, file: !14, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !27, file: !14, line: 412, baseType: !42, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !357)
!357 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!366 = !{!367, !373, !469, !476, !479, !524, !546, !573}
!367 = !DISubprogram(name: "PyInit__codecs_hk", scope: !368, file: !368, line: 191, type: !369, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__codecs_hk, variables: !371)
!368 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/_codecs_hk.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DISubroutineType(types: !370)
!370 = !{!12}
!371 = !{!372}
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !367, file: !368, line: 191, type: !12)
!373 = !DISubprogram(name: "getcodec", scope: !374, file: !374, line: 259, type: !133, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @getcodec, variables: !375)
!374 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/cjkcodecs.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!375 = !{!376, !377, !378, !379, !380, !381, !460, !461, !466, !467}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !373, file: !374, line: 259, type: !12)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !373, file: !374, line: 259, type: !12)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecobj", scope: !373, file: !374, line: 261, type: !12)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !373, file: !374, line: 261, type: !12)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cofunc", scope: !373, file: !374, line: 261, type: !12)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !373, file: !374, line: 262, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "MultibyteCodec", file: !385, line: 58, baseType: !386)
!385 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/multibytecodec.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!386 = !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 48, size: 576, align: 64, elements: !387)
!387 = !{!388, !389, !390, !395, !421, !426, !431, !453, !455}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !386, file: !385, line: 49, baseType: !36, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !386, file: !385, line: 50, baseType: !351, size: 64, align: 64, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "codecinit", scope: !386, file: !385, line: 51, baseType: !391, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbcodec_init", file: !385, line: 27, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!51, !351}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !386, file: !385, line: 52, baseType: !396, size: 64, align: 64, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencode_func", file: !385, line: 28, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!18, !400, !351, !51, !11, !254, !18, !419, !18, !51}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "MultibyteCodec_State", file: !385, line: 25, baseType: !402)
!402 = !DICompositeType(tag: DW_TAG_union_type, file: !385, line: 19, size: 64, align: 64, elements: !403)
!403 = !{!404, !405, !406, !410, !415}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !402, file: !385, line: 20, baseType: !11, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !402, file: !385, line: 21, baseType: !51, size: 32, align: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !402, file: !385, line: 22, baseType: !407, size: 64, align: 8)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 64, align: 8, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 8)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "u2", scope: !402, file: !385, line: 23, baseType: !411, size: 64, align: 16)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 64, align: 16, elements: !413)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs2_t", file: !385, line: 16, baseType: !84)
!413 = !{!414}
!414 = !DISubrange(count: 4)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "u4", scope: !402, file: !385, line: 24, baseType: !416, size: 64, align: 32)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 64, align: 32, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 2)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "encinit", scope: !386, file: !385, line: 53, baseType: !422, size: 64, align: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencodeinit_func", file: !385, line: 34, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!51, !400, !351}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "encreset", scope: !386, file: !385, line: 54, baseType: !427, size: 64, align: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencodereset_func", file: !385, line: 36, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!18, !400, !351, !419, !18}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !386, file: !385, line: 55, baseType: !432, size: 64, align: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecode_func", file: !385, line: 39, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!18, !400, !351, !436, !18, !439}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !4, line: 917, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 897, size: 448, align: 64, elements: !442)
!442 = !{!443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !441, file: !4, line: 898, baseType: !12, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !441, file: !4, line: 899, baseType: !11, size: 64, align: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !441, file: !4, line: 900, baseType: !3, size: 32, align: 32, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !441, file: !4, line: 901, baseType: !353, size: 32, align: 32, offset: 160)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !441, file: !4, line: 902, baseType: !18, size: 64, align: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !441, file: !4, line: 903, baseType: !18, size: 64, align: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !441, file: !4, line: 906, baseType: !18, size: 64, align: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !441, file: !4, line: 909, baseType: !353, size: 32, align: 32, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !441, file: !4, line: 912, baseType: !357, size: 8, align: 8, offset: 416)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !441, file: !4, line: 916, baseType: !357, size: 8, align: 8, offset: 424)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "decinit", scope: !386, file: !385, line: 56, baseType: !454, size: 64, align: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecodeinit_func", file: !385, line: 43, baseType: !423)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "decreset", scope: !386, file: !385, line: 57, baseType: !456, size: 64, align: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecodereset_func", file: !385, line: 45, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!18, !400, !351}
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enc", scope: !373, file: !374, line: 263, type: !36)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !462, file: !374, line: 279, type: !101)
!462 = distinct !DILexicalBlock(scope: !463, file: !374, line: 279, column: 28)
!463 = distinct !DILexicalBlock(scope: !464, file: !374, line: 279, column: 13)
!464 = distinct !DILexicalBlock(scope: !465, file: !374, line: 278, column: 5)
!465 = distinct !DILexicalBlock(scope: !373, file: !374, line: 278, column: 5)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !462, file: !374, line: 279, type: !101)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !468, file: !374, line: 293, type: !12)
!468 = distinct !DILexicalBlock(scope: !373, file: !374, line: 293, column: 8)
!469 = !DISubprogram(name: "getmultibytecodec", scope: !374, file: !374, line: 244, type: !369, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @getmultibytecodec, variables: !470)
!470 = !{!471, !474}
!471 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !472, file: !374, line: 249, type: !12)
!472 = distinct !DILexicalBlock(scope: !473, file: !374, line: 248, column: 31)
!473 = distinct !DILexicalBlock(scope: !469, file: !374, line: 248, column: 9)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !475, file: !374, line: 253, type: !12)
!475 = distinct !DILexicalBlock(scope: !472, file: !374, line: 253, column: 12)
!476 = !DISubprogram(name: "big5hkscs_codec_init", scope: !368, file: !368, line: 19, type: !393, isLocal: true, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @big5hkscs_codec_init, variables: !477)
!477 = !{!478}
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 1, scope: !476, file: !368, line: 19, type: !351)
!479 = !DISubprogram(name: "importmap", scope: !374, file: !374, line: 356, type: !480, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i8**, i8**)* @importmap, variables: !482)
!480 = !DISubroutineType(types: !481)
!481 = !{!51, !36, !36, !350, !350}
!482 = !{!483, !484, !485, !486, !487, !488, !489, !518, !520, !522}
!483 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modname", arg: 1, scope: !479, file: !374, line: 356, type: !36)
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "symbol", arg: 2, scope: !479, file: !374, line: 356, type: !36)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encmap", arg: 3, scope: !479, file: !374, line: 357, type: !350)
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "decmap", arg: 4, scope: !479, file: !374, line: 357, type: !350)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "o", scope: !479, file: !374, line: 359, type: !12)
!488 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !479, file: !374, line: 359, type: !12)
!489 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "map", scope: !490, file: !374, line: 374, type: !493)
!490 = distinct !DILexicalBlock(scope: !491, file: !374, line: 373, column: 10)
!491 = distinct !DILexicalBlock(scope: !492, file: !374, line: 368, column: 14)
!492 = distinct !DILexicalBlock(scope: !479, file: !374, line: 366, column: 9)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "dbcs_map", file: !374, line: 52, size: 192, align: 64, elements: !495)
!495 = !{!496, !497, !508}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !494, file: !374, line: 53, baseType: !36, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "encmap", scope: !494, file: !374, line: 54, baseType: !498, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "unim_index", file: !374, line: 41, size: 128, align: 64, elements: !501)
!501 = !{!502, !506, !507}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !500, file: !374, line: 42, baseType: !503, size: 64, align: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBCHAR", file: !385, line: 16, baseType: !84)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !500, file: !374, line: 43, baseType: !357, size: 8, align: 8, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !500, file: !374, line: 43, baseType: !357, size: 8, align: 8, offset: 72)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "decmap", scope: !494, file: !374, line: 55, baseType: !509, size: 64, align: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "dbcs_index", file: !374, line: 29, size: 128, align: 64, elements: !512)
!512 = !{!513, !516, !517}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !511, file: !374, line: 30, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !511, file: !374, line: 31, baseType: !357, size: 8, align: 8, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !511, file: !374, line: 31, baseType: !357, size: 8, align: 8, offset: 72)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !519, file: !374, line: 380, type: !12)
!519 = distinct !DILexicalBlock(scope: !490, file: !374, line: 380, column: 12)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !521, file: !374, line: 383, type: !12)
!521 = distinct !DILexicalBlock(scope: !479, file: !374, line: 383, column: 8)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !523, file: !374, line: 387, type: !12)
!523 = distinct !DILexicalBlock(scope: !479, file: !374, line: 387, column: 8)
!524 = !DISubprogram(name: "big5hkscs_encode", scope: !368, file: !368, line: 39, type: !398, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @big5hkscs_encode, variables: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !537, !538, !539}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !524, file: !368, line: 39, type: !400)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !524, file: !368, line: 39, type: !351)
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kind", arg: 3, scope: !524, file: !368, line: 39, type: !51)
!529 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !524, file: !368, line: 39, type: !11)
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpos", arg: 5, scope: !524, file: !368, line: 39, type: !254)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inlen", arg: 6, scope: !524, file: !368, line: 39, type: !18)
!532 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 7, scope: !524, file: !368, line: 39, type: !419)
!533 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outleft", arg: 8, scope: !524, file: !368, line: 39, type: !18)
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !524, file: !368, line: 39, type: !51)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !536, file: !368, line: 42, type: !353)
!536 = distinct !DILexicalBlock(scope: !524, file: !368, line: 41, column: 28)
!537 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !536, file: !368, line: 43, type: !505)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "insize", scope: !536, file: !368, line: 44, type: !18)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c2", scope: !540, file: !368, line: 59, type: !353)
!540 = distinct !DILexicalBlock(scope: !541, file: !368, line: 58, column: 37)
!541 = distinct !DILexicalBlock(scope: !542, file: !368, line: 58, column: 21)
!542 = distinct !DILexicalBlock(scope: !543, file: !368, line: 57, column: 312)
!543 = distinct !DILexicalBlock(scope: !544, file: !368, line: 57, column: 17)
!544 = distinct !DILexicalBlock(scope: !545, file: !368, line: 56, column: 26)
!545 = distinct !DILexicalBlock(scope: !536, file: !368, line: 56, column: 13)
!546 = !DISubprogram(name: "big5hkscs_decode", scope: !368, file: !368, line: 110, type: !434, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @big5hkscs_decode, variables: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !555, !556, !559, !560, !563, !564, !566, !567, !569, !570, !572}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !546, file: !368, line: 110, type: !400)
!549 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !546, file: !368, line: 110, type: !351)
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !546, file: !368, line: 110, type: !436)
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inleft", arg: 4, scope: !546, file: !368, line: 110, type: !18)
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 5, scope: !546, file: !368, line: 110, type: !439)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !554, file: !368, line: 113, type: !357)
!554 = distinct !DILexicalBlock(scope: !546, file: !368, line: 112, column: 24)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !554, file: !368, line: 114, type: !353)
!556 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !557, file: !368, line: 134, type: !51)
!557 = distinct !DILexicalBlock(scope: !558, file: !368, line: 133, column: 9)
!558 = distinct !DILexicalBlock(scope: !554, file: !368, line: 132, column: 13)
!559 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hintbase", scope: !557, file: !368, line: 135, type: !437)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c1", scope: !561, file: !368, line: 167, type: !353)
!561 = distinct !DILexicalBlock(scope: !562, file: !368, line: 167, column: 25)
!562 = distinct !DILexicalBlock(scope: !554, file: !368, line: 166, column: 43)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c2", scope: !561, file: !368, line: 167, type: !353)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c1", scope: !565, file: !368, line: 168, type: !353)
!565 = distinct !DILexicalBlock(scope: !562, file: !368, line: 168, column: 25)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c2", scope: !565, file: !368, line: 168, type: !353)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c1", scope: !568, file: !368, line: 169, type: !353)
!568 = distinct !DILexicalBlock(scope: !562, file: !368, line: 169, column: 25)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c2", scope: !568, file: !368, line: 169, type: !353)
!570 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c1", scope: !571, file: !368, line: 170, type: !353)
!571 = distinct !DILexicalBlock(scope: !562, file: !368, line: 170, column: 25)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_c2", scope: !571, file: !368, line: 170, type: !353)
!573 = !DISubprogram(name: "register_maps", scope: !374, file: !374, line: 304, type: !151, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @register_maps, variables: !574)
!574 = !{!575, !576, !579, !586}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !573, file: !374, line: 304, type: !12)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !573, file: !374, line: 306, type: !577)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mhname", scope: !580, file: !374, line: 309, type: !583)
!580 = distinct !DILexicalBlock(scope: !581, file: !374, line: 308, column: 56)
!581 = distinct !DILexicalBlock(scope: !582, file: !374, line: 308, column: 5)
!582 = distinct !DILexicalBlock(scope: !573, file: !374, line: 308, column: 5)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, align: 8, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 256)
!586 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !580, file: !374, line: 310, type: !51)
!587 = !{!588, !611, !613, !614, !615, !617, !618, !622, !626, !629, !633, !635, !636, !640, !642, !646, !650, !654, !658, !659}
!588 = !DIGlobalVariable(name: "__module", scope: !0, file: !368, line: 191, type: !589, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @__module)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !590, line: 47, size: 832, align: 64, elements: !591)
!590 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!591 = !{!592, !601, !602, !603, !604, !607, !608, !609, !610}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !589, file: !590, line: 48, baseType: !593, size: 320, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !590, line: 38, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !590, line: 33, size: 320, align: 64, elements: !595)
!595 = !{!596, !597, !599, !600}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !594, file: !590, line: 34, baseType: !13, size: 128, align: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !594, file: !590, line: 35, baseType: !598, size: 64, align: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !594, file: !590, line: 36, baseType: !18, size: 64, align: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !594, file: !590, line: 37, baseType: !12, size: 64, align: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !589, file: !590, line: 49, baseType: !36, size: 64, align: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !589, file: !590, line: 50, baseType: !36, size: 64, align: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !589, file: !590, line: 51, baseType: !18, size: 64, align: 64, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !589, file: !590, line: 52, baseType: !605, size: 64, align: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64, align: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !589, file: !590, line: 53, baseType: !149, size: 64, align: 64, offset: 576)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !589, file: !590, line: 54, baseType: !266, size: 64, align: 64, offset: 640)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !589, file: !590, line: 55, baseType: !149, size: 64, align: 64, offset: 704)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !589, file: !590, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!611 = !DIGlobalVariable(name: "__methods", scope: !0, file: !374, line: 298, type: !612, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @__methods)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 512, align: 64, elements: !417)
!613 = !DIGlobalVariable(name: "cofunc", scope: !469, file: !374, line: 246, type: !12, isLocal: true, isDefinition: true, variable: %struct._object** @getmultibytecodec.cofunc)
!614 = !DIGlobalVariable(name: "codec_list", scope: !0, file: !368, line: 189, type: !382, isLocal: true, isDefinition: true, variable: %struct.MultibyteCodec** @codec_list)
!615 = !DIGlobalVariable(name: "_codec_list", scope: !0, file: !368, line: 187, type: !616, isLocal: true, isDefinition: true, variable: [2 x %struct.MultibyteCodec]* @_codec_list)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1152, align: 64, elements: !417)
!617 = !DIGlobalVariable(name: "initialized", scope: !476, file: !368, line: 21, type: !51, isLocal: true, isDefinition: true, variable: i32* @big5hkscs_codec_init.initialized)
!618 = !DIGlobalVariable(name: "big5_encmap", scope: !0, file: !368, line: 16, type: !619, isLocal: true, isDefinition: true, variable: %struct.unim_index** @big5_encmap)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64, align: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "encode_map", file: !374, line: 45, baseType: !500)
!622 = !DIGlobalVariable(name: "big5_decmap", scope: !0, file: !368, line: 17, type: !623, isLocal: true, isDefinition: true, variable: %struct.dbcs_index** @big5_decmap)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "decode_map", file: !374, line: 33, baseType: !511)
!626 = !DIGlobalVariable(name: "big5hkscs_bmp_encmap", scope: !0, file: !627, line: 1350, type: !628, isLocal: true, isDefinition: true, variable: [256 x %struct.unim_index]* @big5hkscs_bmp_encmap)
!627 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/mappings_hk.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !499, size: 32768, align: 64, elements: !584)
!629 = !DIGlobalVariable(name: "__big5hkscs_bmp_encmap", scope: !0, file: !627, line: 498, type: !630, isLocal: true, isDefinition: true, variable: [26401 x i16]* @__big5hkscs_bmp_encmap)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 422416, align: 16, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 26401)
!633 = !DIGlobalVariable(name: "big5hkscs_pairenc_table", scope: !0, file: !368, line: 37, type: !634, isLocal: true, isDefinition: true, variable: [4 x i16]* @big5hkscs_pairenc_table)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 64, align: 16, elements: !413)
!635 = !DIGlobalVariable(name: "big5hkscs_nonbmp_encmap", scope: !0, file: !627, line: 2274, type: !628, isLocal: true, isDefinition: true, variable: [256 x %struct.unim_index]* @big5hkscs_nonbmp_encmap)
!636 = !DIGlobalVariable(name: "__big5hkscs_nonbmp_encmap", scope: !0, file: !627, line: 1429, type: !637, isLocal: true, isDefinition: true, variable: [29306 x i16]* @__big5hkscs_nonbmp_encmap)
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !504, size: 468896, align: 16, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 29306)
!640 = !DIGlobalVariable(name: "big5hkscs_decmap", scope: !0, file: !627, line: 415, type: !641, isLocal: true, isDefinition: true, variable: [256 x %struct.dbcs_index]* @big5hkscs_decmap)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 32768, align: 64, elements: !584)
!642 = !DIGlobalVariable(name: "__big5hkscs_decmap", scope: !0, file: !627, line: 1, type: !643, isLocal: true, isDefinition: true, variable: [6219 x i16]* @__big5hkscs_decmap)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 99504, align: 16, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 6219)
!646 = !DIGlobalVariable(name: "big5hkscs_phint_0", scope: !0, file: !627, line: 458, type: !647, isLocal: true, isDefinition: true, variable: [621 x i8]* @big5hkscs_phint_0)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 4968, align: 8, elements: !648)
!648 = !{!649}
!649 = !DISubrange(count: 621)
!650 = !DIGlobalVariable(name: "big5hkscs_phint_12130", scope: !0, file: !627, line: 485, type: !651, isLocal: true, isDefinition: true, variable: [60 x i8]* @big5hkscs_phint_12130)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 480, align: 8, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 60)
!654 = !DIGlobalVariable(name: "big5hkscs_phint_21924", scope: !0, file: !627, line: 490, type: !655, isLocal: true, isDefinition: true, variable: [125 x i8]* @big5hkscs_phint_21924)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 1000, align: 8, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 125)
!658 = !DIGlobalVariable(name: "mapping_list", scope: !0, file: !368, line: 185, type: !577, isLocal: true, isDefinition: true, variable: %struct.dbcs_map** @mapping_list)
!659 = !DIGlobalVariable(name: "_mapping_list", scope: !0, file: !368, line: 181, type: !660, isLocal: true, isDefinition: true, variable: [4 x %struct.dbcs_map]* @_mapping_list)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !578, size: 768, align: 64, elements: !413)
!661 = !{i32 2, !"Dwarf Version", i32 4}
!662 = !{i32 2, !"Debug Info Version", i32 3}
!663 = !{i32 1, !"PIC Level", i32 2}
!664 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!665 = !DILocation(line: 191, column: 219, scope: !367)
!666 = !DIExpression()
!667 = !DILocation(line: 191, column: 229, scope: !367)
!668 = !DILocation(line: 191, column: 233, scope: !367)
!669 = !{!670, !670, i64 0}
!670 = !{!"any pointer", !671, i64 0}
!671 = !{!"omnipotent char", !672, i64 0}
!672 = !{!"Simple C/C++ TBAA"}
!673 = !DILocation(line: 191, column: 272, scope: !674)
!674 = distinct !DILexicalBlock(scope: !367, file: !368, line: 191, column: 272)
!675 = !DILocation(line: 191, column: 274, scope: !674)
!676 = !DILocation(line: 191, column: 272, scope: !367)
!677 = !DILocation(line: 191, column: 309, scope: !678)
!678 = !DILexicalBlockFile(scope: !674, file: !368, discriminator: 1)
!679 = !DILocation(line: 191, column: 295, scope: !674)
!680 = !DILocation(line: 191, column: 289, scope: !674)
!681 = !DILocation(line: 191, column: 320, scope: !682)
!682 = !DILexicalBlockFile(scope: !683, file: !368, discriminator: 3)
!683 = !DILexicalBlockFile(scope: !367, file: !368, discriminator: 2)
!684 = !DILocation(line: 191, column: 323, scope: !367)
!685 = !DILocation(line: 191, column: 313, scope: !367)
!686 = !DILocation(line: 304, column: 25, scope: !573)
!687 = !DILocation(line: 306, column: 5, scope: !573)
!688 = !DILocation(line: 306, column: 28, scope: !573)
!689 = !DILocation(line: 308, column: 14, scope: !582)
!690 = !DILocation(line: 308, column: 12, scope: !582)
!691 = !DILocation(line: 308, column: 10, scope: !582)
!692 = !DILocation(line: 308, column: 28, scope: !693)
!693 = !DILexicalBlockFile(scope: !694, file: !374, discriminator: 2)
!694 = !DILexicalBlockFile(scope: !581, file: !374, discriminator: 1)
!695 = !DILocation(line: 308, column: 31, scope: !581)
!696 = !{!697, !670, i64 0}
!697 = !{!"dbcs_map", !670, i64 0, !670, i64 8, !670, i64 16}
!698 = !DILocation(line: 308, column: 28, scope: !581)
!699 = !{!671, !671, i64 0}
!700 = !DILocation(line: 308, column: 42, scope: !581)
!701 = !DILocation(line: 308, column: 5, scope: !582)
!702 = !DILocation(line: 309, column: 9, scope: !580)
!703 = !DILocation(line: 309, column: 14, scope: !580)
!704 = !DILocation(line: 310, column: 9, scope: !580)
!705 = !DILocation(line: 310, column: 13, scope: !580)
!706 = !DILocation(line: 311, column: 16, scope: !580)
!707 = !DILocation(line: 311, column: 23, scope: !580)
!708 = !DILocation(line: 311, column: 42, scope: !580)
!709 = !DILocation(line: 311, column: 47, scope: !580)
!710 = !DILocation(line: 311, column: 50, scope: !580)
!711 = !DILocation(line: 311, column: 9, scope: !580)
!712 = !DILocation(line: 312, column: 32, scope: !580)
!713 = !DILocation(line: 312, column: 40, scope: !580)
!714 = !DILocation(line: 313, column: 47, scope: !580)
!715 = !DILocation(line: 313, column: 39, scope: !580)
!716 = !DILocation(line: 313, column: 25, scope: !580)
!717 = !DILocation(line: 312, column: 13, scope: !580)
!718 = !DILocation(line: 312, column: 11, scope: !580)
!719 = !{!720, !720, i64 0}
!720 = !{!"int", !671, i64 0}
!721 = !DILocation(line: 314, column: 13, scope: !722)
!722 = distinct !DILexicalBlock(scope: !580, file: !374, line: 314, column: 13)
!723 = !DILocation(line: 314, column: 15, scope: !722)
!724 = !DILocation(line: 314, column: 13, scope: !580)
!725 = !DILocation(line: 315, column: 13, scope: !722)
!726 = !DILocation(line: 316, column: 5, scope: !581)
!727 = !DILocation(line: 316, column: 5, scope: !694)
!728 = !DILocation(line: 316, column: 5, scope: !580)
!729 = !DILocation(line: 308, column: 52, scope: !581)
!730 = !DILocation(line: 308, column: 5, scope: !581)
!731 = !DILocation(line: 317, column: 5, scope: !573)
!732 = !DILocation(line: 318, column: 1, scope: !573)
!733 = !DILocation(line: 259, column: 20, scope: !373)
!734 = !DILocation(line: 259, column: 36, scope: !373)
!735 = !DILocation(line: 261, column: 5, scope: !373)
!736 = !DILocation(line: 261, column: 15, scope: !373)
!737 = !DILocation(line: 261, column: 26, scope: !373)
!738 = !DILocation(line: 261, column: 30, scope: !373)
!739 = !DILocation(line: 262, column: 5, scope: !373)
!740 = !DILocation(line: 262, column: 27, scope: !373)
!741 = !DILocation(line: 263, column: 5, scope: !373)
!742 = !DILocation(line: 263, column: 17, scope: !373)
!743 = !DILocation(line: 265, column: 27, scope: !744)
!744 = distinct !DILexicalBlock(scope: !373, file: !374, line: 265, column: 9)
!745 = !DILocation(line: 265, column: 39, scope: !744)
!746 = !{!747, !670, i64 8}
!747 = !{!"_object", !748, i64 0, !670, i64 8}
!748 = !{!"long", !671, i64 0}
!749 = !DILocation(line: 265, column: 50, scope: !744)
!750 = !{!751, !748, i64 168}
!751 = !{!"_typeobject", !752, i64 0, !670, i64 24, !748, i64 32, !748, i64 40, !670, i64 48, !670, i64 56, !670, i64 64, !670, i64 72, !670, i64 80, !670, i64 88, !670, i64 96, !670, i64 104, !670, i64 112, !670, i64 120, !670, i64 128, !670, i64 136, !670, i64 144, !670, i64 152, !670, i64 160, !748, i64 168, !670, i64 176, !670, i64 184, !670, i64 192, !670, i64 200, !748, i64 208, !670, i64 216, !670, i64 224, !670, i64 232, !670, i64 240, !670, i64 248, !670, i64 256, !670, i64 264, !670, i64 272, !670, i64 280, !748, i64 288, !670, i64 296, !670, i64 304, !670, i64 312, !670, i64 320, !670, i64 328, !670, i64 336, !670, i64 344, !670, i64 352, !670, i64 360, !670, i64 368, !670, i64 376, !720, i64 384, !670, i64 392}
!752 = !{!"", !747, i64 0, !748, i64 16}
!753 = !DILocation(line: 265, column: 59, scope: !744)
!754 = !DILocation(line: 265, column: 76, scope: !744)
!755 = !DILocation(line: 265, column: 9, scope: !373)
!756 = !DILocation(line: 266, column: 25, scope: !757)
!757 = distinct !DILexicalBlock(scope: !744, file: !374, line: 265, column: 83)
!758 = !DILocation(line: 266, column: 9, scope: !757)
!759 = !DILocation(line: 268, column: 9, scope: !757)
!760 = !DILocation(line: 270, column: 28, scope: !373)
!761 = !DILocation(line: 270, column: 11, scope: !373)
!762 = !DILocation(line: 270, column: 9, scope: !373)
!763 = !DILocation(line: 271, column: 9, scope: !764)
!764 = distinct !DILexicalBlock(scope: !373, file: !374, line: 271, column: 9)
!765 = !DILocation(line: 271, column: 13, scope: !764)
!766 = !DILocation(line: 271, column: 9, scope: !373)
!767 = !DILocation(line: 272, column: 9, scope: !764)
!768 = !DILocation(line: 274, column: 14, scope: !373)
!769 = !DILocation(line: 274, column: 12, scope: !373)
!770 = !DILocation(line: 275, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !373, file: !374, line: 275, column: 9)
!772 = !DILocation(line: 275, column: 16, scope: !771)
!773 = !DILocation(line: 275, column: 9, scope: !373)
!774 = !DILocation(line: 276, column: 9, scope: !771)
!775 = !DILocation(line: 278, column: 18, scope: !465)
!776 = !DILocation(line: 278, column: 16, scope: !465)
!777 = !DILocation(line: 278, column: 10, scope: !465)
!778 = !DILocation(line: 278, column: 30, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !374, discriminator: 2)
!780 = !DILexicalBlockFile(scope: !464, file: !374, discriminator: 1)
!781 = !DILocation(line: 278, column: 37, scope: !464)
!782 = !{!783, !670, i64 0}
!783 = !{!"", !670, i64 0, !670, i64 8, !670, i64 16, !670, i64 24, !670, i64 32, !670, i64 40, !670, i64 48, !670, i64 56, !670, i64 64}
!784 = !DILocation(line: 278, column: 30, scope: !464)
!785 = !DILocation(line: 278, column: 5, scope: !465)
!786 = !DILocation(line: 279, column: 30, scope: !462)
!787 = !DILocation(line: 279, column: 37, scope: !462)
!788 = !DILocation(line: 279, column: 47, scope: !462)
!789 = !DILocation(line: 279, column: 2255, scope: !462)
!790 = !DILocation(line: 279, column: 2262, scope: !462)
!791 = !DILocation(line: 279, column: 2272, scope: !462)
!792 = !DILocation(line: 279, column: 2237, scope: !462)
!793 = !DILocation(line: 279, column: 2281, scope: !463)
!794 = !DILocation(line: 279, column: 2281, scope: !462)
!795 = !DILocation(line: 279, column: 2284, scope: !463)
!796 = !DILocation(line: 279, column: 13, scope: !464)
!797 = !DILocation(line: 280, column: 13, scope: !463)
!798 = !DILocation(line: 279, column: 2287, scope: !799)
!799 = !DILexicalBlockFile(scope: !463, file: !374, discriminator: 1)
!800 = !DILocation(line: 278, column: 55, scope: !464)
!801 = !DILocation(line: 278, column: 5, scope: !464)
!802 = !DILocation(line: 282, column: 9, scope: !803)
!803 = distinct !DILexicalBlock(scope: !373, file: !374, line: 282, column: 9)
!804 = !DILocation(line: 282, column: 16, scope: !803)
!805 = !DILocation(line: 282, column: 28, scope: !803)
!806 = !DILocation(line: 282, column: 9, scope: !373)
!807 = !DILocation(line: 283, column: 25, scope: !808)
!808 = distinct !DILexicalBlock(scope: !803, file: !374, line: 282, column: 37)
!809 = !DILocation(line: 283, column: 9, scope: !808)
!810 = !DILocation(line: 285, column: 9, scope: !808)
!811 = !DILocation(line: 288, column: 38, scope: !373)
!812 = !DILocation(line: 288, column: 30, scope: !373)
!813 = !DILocation(line: 288, column: 16, scope: !373)
!814 = !DILocation(line: 288, column: 14, scope: !373)
!815 = !DILocation(line: 289, column: 9, scope: !816)
!816 = distinct !DILexicalBlock(scope: !373, file: !374, line: 289, column: 9)
!817 = !DILocation(line: 289, column: 18, scope: !816)
!818 = !DILocation(line: 289, column: 9, scope: !373)
!819 = !DILocation(line: 290, column: 9, scope: !816)
!820 = !DILocation(line: 292, column: 38, scope: !373)
!821 = !DILocation(line: 292, column: 46, scope: !373)
!822 = !DILocation(line: 292, column: 9, scope: !373)
!823 = !DILocation(line: 292, column: 7, scope: !373)
!824 = !DILocation(line: 293, column: 5, scope: !373)
!825 = !DILocation(line: 293, column: 10, scope: !826)
!826 = !DILexicalBlockFile(scope: !468, file: !374, discriminator: 1)
!827 = !DILocation(line: 293, column: 20, scope: !468)
!828 = !DILocation(line: 293, column: 50, scope: !468)
!829 = !DILocation(line: 293, column: 69, scope: !830)
!830 = distinct !DILexicalBlock(scope: !468, file: !374, line: 293, column: 66)
!831 = !DILocation(line: 293, column: 86, scope: !830)
!832 = !DILocation(line: 293, column: 66, scope: !830)
!833 = !{!747, !748, i64 0}
!834 = !DILocation(line: 293, column: 96, scope: !830)
!835 = !DILocation(line: 293, column: 66, scope: !468)
!836 = !DILocation(line: 293, column: 66, scope: !837)
!837 = !DILexicalBlockFile(scope: !468, file: !374, discriminator: 2)
!838 = !DILocation(line: 293, column: 127, scope: !839)
!839 = !DILexicalBlockFile(scope: !830, file: !374, discriminator: 3)
!840 = !DILocation(line: 293, column: 145, scope: !830)
!841 = !DILocation(line: 293, column: 155, scope: !830)
!842 = !{!751, !670, i64 48}
!843 = !DILocation(line: 293, column: 180, scope: !830)
!844 = !DILocation(line: 293, column: 111, scope: !830)
!845 = !DILocation(line: 293, column: 199, scope: !846)
!846 = !DILexicalBlockFile(scope: !373, file: !374, discriminator: 4)
!847 = !DILocation(line: 293, column: 199, scope: !468)
!848 = !DILocation(line: 293, column: 199, scope: !849)
!849 = !DILexicalBlockFile(scope: !468, file: !374, discriminator: 5)
!850 = !DILocation(line: 295, column: 12, scope: !373)
!851 = !DILocation(line: 295, column: 5, scope: !373)
!852 = !DILocation(line: 296, column: 1, scope: !373)
!853 = !DILocation(line: 248, column: 9, scope: !473)
!854 = !DILocation(line: 248, column: 16, scope: !473)
!855 = !DILocation(line: 248, column: 9, scope: !469)
!856 = !DILocation(line: 249, column: 9, scope: !472)
!857 = !DILocation(line: 249, column: 19, scope: !472)
!858 = !DILocation(line: 249, column: 25, scope: !472)
!859 = !DILocation(line: 250, column: 13, scope: !860)
!860 = distinct !DILexicalBlock(scope: !472, file: !374, line: 250, column: 13)
!861 = !DILocation(line: 250, column: 17, scope: !860)
!862 = !DILocation(line: 250, column: 13, scope: !472)
!863 = !DILocation(line: 251, column: 13, scope: !860)
!864 = !DILocation(line: 252, column: 41, scope: !472)
!865 = !DILocation(line: 252, column: 18, scope: !472)
!866 = !DILocation(line: 252, column: 16, scope: !472)
!867 = !DILocation(line: 253, column: 9, scope: !472)
!868 = !DILocation(line: 253, column: 14, scope: !869)
!869 = !DILexicalBlockFile(scope: !475, file: !374, discriminator: 1)
!870 = !DILocation(line: 253, column: 24, scope: !475)
!871 = !DILocation(line: 253, column: 54, scope: !475)
!872 = !DILocation(line: 253, column: 68, scope: !873)
!873 = distinct !DILexicalBlock(scope: !475, file: !374, line: 253, column: 65)
!874 = !DILocation(line: 253, column: 85, scope: !873)
!875 = !DILocation(line: 253, column: 65, scope: !873)
!876 = !DILocation(line: 253, column: 95, scope: !873)
!877 = !DILocation(line: 253, column: 65, scope: !475)
!878 = !DILocation(line: 253, column: 65, scope: !879)
!879 = !DILexicalBlockFile(scope: !475, file: !374, discriminator: 2)
!880 = !DILocation(line: 253, column: 126, scope: !881)
!881 = !DILexicalBlockFile(scope: !873, file: !374, discriminator: 3)
!882 = !DILocation(line: 253, column: 144, scope: !873)
!883 = !DILocation(line: 253, column: 154, scope: !873)
!884 = !DILocation(line: 253, column: 179, scope: !873)
!885 = !DILocation(line: 253, column: 110, scope: !873)
!886 = !DILocation(line: 253, column: 198, scope: !887)
!887 = !DILexicalBlockFile(scope: !472, file: !374, discriminator: 4)
!888 = !DILocation(line: 253, column: 198, scope: !475)
!889 = !DILocation(line: 253, column: 198, scope: !890)
!890 = !DILexicalBlockFile(scope: !475, file: !374, discriminator: 5)
!891 = !DILocation(line: 254, column: 5, scope: !473)
!892 = !DILocation(line: 254, column: 5, scope: !893)
!893 = !DILexicalBlockFile(scope: !473, file: !374, discriminator: 1)
!894 = !DILocation(line: 254, column: 5, scope: !472)
!895 = !DILocation(line: 255, column: 12, scope: !469)
!896 = !DILocation(line: 255, column: 5, scope: !469)
!897 = !DILocation(line: 256, column: 1, scope: !469)
!898 = !DILocation(line: 19, column: 45, scope: !476)
!899 = !DILocation(line: 23, column: 10, scope: !900)
!900 = distinct !DILexicalBlock(scope: !476, file: !368, line: 23, column: 9)
!901 = !DILocation(line: 23, column: 22, scope: !900)
!902 = !DILocation(line: 23, column: 25, scope: !903)
!903 = !DILexicalBlockFile(scope: !900, file: !368, discriminator: 1)
!904 = !DILocation(line: 23, column: 9, scope: !476)
!905 = !DILocation(line: 24, column: 9, scope: !900)
!906 = !DILocation(line: 25, column: 17, scope: !476)
!907 = !DILocation(line: 26, column: 5, scope: !476)
!908 = !DILocation(line: 27, column: 1, scope: !476)
!909 = !DILocation(line: 39, column: 59, scope: !524)
!910 = !DILocation(line: 39, column: 78, scope: !524)
!911 = !DILocation(line: 39, column: 90, scope: !524)
!912 = !DILocation(line: 39, column: 102, scope: !524)
!913 = !DILocation(line: 39, column: 120, scope: !524)
!914 = !{!748, !748, i64 0}
!915 = !DILocation(line: 39, column: 138, scope: !524)
!916 = !DILocation(line: 39, column: 161, scope: !524)
!917 = !DILocation(line: 39, column: 180, scope: !524)
!918 = !DILocation(line: 39, column: 193, scope: !524)
!919 = !DILocation(line: 41, column: 5, scope: !524)
!920 = !DILocation(line: 41, column: 13, scope: !921)
!921 = !DILexicalBlockFile(scope: !922, file: !368, discriminator: 2)
!922 = !DILexicalBlockFile(scope: !524, file: !368, discriminator: 1)
!923 = !DILocation(line: 41, column: 12, scope: !524)
!924 = !DILocation(line: 41, column: 21, scope: !524)
!925 = !DILocation(line: 41, column: 19, scope: !524)
!926 = !DILocation(line: 42, column: 9, scope: !536)
!927 = !DILocation(line: 42, column: 17, scope: !536)
!928 = !DILocation(line: 42, column: 35, scope: !536)
!929 = !DILocation(line: 42, column: 41, scope: !536)
!930 = !DILocation(line: 42, column: 34, scope: !536)
!931 = !DILocation(line: 42, column: 95, scope: !932)
!932 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 1)
!933 = !DILocation(line: 42, column: 94, scope: !536)
!934 = !DILocation(line: 42, column: 86, scope: !536)
!935 = !DILocation(line: 42, column: 67, scope: !536)
!936 = !DILocation(line: 42, column: 107, scope: !937)
!937 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 2)
!938 = !DILocation(line: 42, column: 113, scope: !536)
!939 = !DILocation(line: 42, column: 106, scope: !536)
!940 = !DILocation(line: 42, column: 167, scope: !941)
!941 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 4)
!942 = !DILocation(line: 42, column: 166, scope: !536)
!943 = !DILocation(line: 42, column: 158, scope: !536)
!944 = !DILocation(line: 42, column: 140, scope: !536)
!945 = !DILocation(line: 42, column: 139, scope: !536)
!946 = !{!947, !947, i64 0}
!947 = !{!"short", !671, i64 0}
!948 = !DILocation(line: 42, column: 205, scope: !949)
!949 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 5)
!950 = !DILocation(line: 42, column: 204, scope: !536)
!951 = !DILocation(line: 42, column: 196, scope: !536)
!952 = !DILocation(line: 42, column: 178, scope: !536)
!953 = !DILocation(line: 42, column: 177, scope: !536)
!954 = !DILocation(line: 42, column: 34, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !368, discriminator: 7)
!956 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 6)
!957 = !DILocation(line: 42, column: 17, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !368, discriminator: 8)
!959 = !DILexicalBlockFile(scope: !536, file: !368, discriminator: 3)
!960 = !DILocation(line: 43, column: 9, scope: !536)
!961 = !DILocation(line: 43, column: 16, scope: !536)
!962 = !DILocation(line: 44, column: 9, scope: !536)
!963 = !DILocation(line: 44, column: 20, scope: !536)
!964 = !DILocation(line: 46, column: 13, scope: !965)
!965 = distinct !DILexicalBlock(scope: !536, file: !368, line: 46, column: 13)
!966 = !DILocation(line: 46, column: 15, scope: !965)
!967 = !DILocation(line: 46, column: 13, scope: !536)
!968 = !DILocation(line: 47, column: 13, scope: !969)
!969 = distinct !DILexicalBlock(scope: !965, file: !368, line: 46, column: 23)
!970 = !DILocation(line: 47, column: 22, scope: !971)
!971 = !DILexicalBlockFile(scope: !972, file: !368, discriminator: 1)
!972 = distinct !DILexicalBlock(scope: !973, file: !368, line: 47, column: 22)
!973 = distinct !DILexicalBlock(scope: !969, file: !368, line: 47, column: 16)
!974 = !DILocation(line: 47, column: 30, scope: !972)
!975 = !DILocation(line: 47, column: 22, scope: !973)
!976 = !DILocation(line: 47, column: 37, scope: !977)
!977 = !DILexicalBlockFile(scope: !972, file: !368, discriminator: 2)
!978 = !DILocation(line: 47, column: 37, scope: !972)
!979 = !DILocation(line: 47, column: 50, scope: !980)
!980 = !DILexicalBlockFile(scope: !973, file: !368, discriminator: 3)
!981 = !DILocation(line: 47, column: 50, scope: !982)
!982 = !DILexicalBlockFile(scope: !973, file: !368, discriminator: 4)
!983 = !DILocation(line: 48, column: 39, scope: !969)
!984 = !DILocation(line: 48, column: 24, scope: !969)
!985 = !DILocation(line: 48, column: 15, scope: !969)
!986 = !DILocation(line: 48, column: 14, scope: !969)
!987 = !DILocation(line: 48, column: 22, scope: !969)
!988 = !DILocation(line: 49, column: 13, scope: !969)
!989 = !DILocation(line: 49, column: 18, scope: !990)
!990 = !DILexicalBlockFile(scope: !991, file: !368, discriminator: 1)
!991 = distinct !DILexicalBlock(scope: !969, file: !368, line: 49, column: 16)
!992 = !DILocation(line: 49, column: 25, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !368, discriminator: 2)
!994 = distinct !DILexicalBlock(scope: !991, file: !368, line: 49, column: 21)
!995 = !DILocation(line: 49, column: 32, scope: !994)
!996 = !DILocation(line: 49, column: 40, scope: !994)
!997 = !DILocation(line: 49, column: 40, scope: !998)
!998 = !DILexicalBlockFile(scope: !994, file: !368, discriminator: 3)
!999 = !DILocation(line: 49, column: 53, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !991, file: !368, discriminator: 4)
!1001 = !DILocation(line: 49, column: 60, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !368, discriminator: 5)
!1003 = distinct !DILexicalBlock(scope: !991, file: !368, line: 49, column: 56)
!1004 = !DILocation(line: 49, column: 68, scope: !1003)
!1005 = !DILocation(line: 49, column: 86, scope: !1003)
!1006 = !DILocation(line: 49, column: 94, scope: !1003)
!1007 = !DILocation(line: 49, column: 94, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1003, file: !368, discriminator: 6)
!1009 = !DILocation(line: 49, column: 107, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !991, file: !368, discriminator: 7)
!1011 = !DILocation(line: 49, column: 107, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !991, file: !368, discriminator: 8)
!1013 = !DILocation(line: 50, column: 13, scope: !969)
!1014 = !DILocation(line: 53, column: 16, scope: !536)
!1015 = !DILocation(line: 54, column: 9, scope: !536)
!1016 = !DILocation(line: 54, column: 18, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1018, file: !368, discriminator: 1)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !368, line: 54, column: 18)
!1019 = distinct !DILexicalBlock(scope: !536, file: !368, line: 54, column: 12)
!1020 = !DILocation(line: 54, column: 26, scope: !1018)
!1021 = !DILocation(line: 54, column: 18, scope: !1019)
!1022 = !DILocation(line: 54, column: 33, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1018, file: !368, discriminator: 2)
!1024 = !DILocation(line: 54, column: 33, scope: !1018)
!1025 = !DILocation(line: 54, column: 46, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1019, file: !368, discriminator: 3)
!1027 = !DILocation(line: 54, column: 46, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1019, file: !368, discriminator: 4)
!1029 = !DILocation(line: 56, column: 13, scope: !545)
!1030 = !DILocation(line: 56, column: 15, scope: !545)
!1031 = !DILocation(line: 56, column: 13, scope: !536)
!1032 = !DILocation(line: 57, column: 42, scope: !543)
!1033 = !DILocation(line: 57, column: 45, scope: !543)
!1034 = !DILocation(line: 57, column: 20, scope: !543)
!1035 = !DILocation(line: 57, column: 53, scope: !543)
!1036 = !{!1037, !670, i64 0}
!1037 = !{!"unim_index", !670, i64 0, !671, i64 8, !671, i64 9}
!1038 = !DILocation(line: 57, column: 57, scope: !543)
!1039 = !DILocation(line: 57, column: 71, scope: !543)
!1040 = !DILocation(line: 57, column: 76, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !543, file: !368, discriminator: 1)
!1042 = !DILocation(line: 57, column: 79, scope: !543)
!1043 = !DILocation(line: 57, column: 114, scope: !543)
!1044 = !DILocation(line: 57, column: 117, scope: !543)
!1045 = !DILocation(line: 57, column: 92, scope: !543)
!1046 = !DILocation(line: 57, column: 125, scope: !543)
!1047 = !{!1037, !671, i64 8}
!1048 = !DILocation(line: 57, column: 90, scope: !543)
!1049 = !DILocation(line: 57, column: 87, scope: !543)
!1050 = !DILocation(line: 57, column: 132, scope: !543)
!1051 = !DILocation(line: 57, column: 137, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !543, file: !368, discriminator: 2)
!1053 = !DILocation(line: 57, column: 140, scope: !543)
!1054 = !DILocation(line: 57, column: 174, scope: !543)
!1055 = !DILocation(line: 57, column: 177, scope: !543)
!1056 = !DILocation(line: 57, column: 152, scope: !543)
!1057 = !DILocation(line: 57, column: 185, scope: !543)
!1058 = !{!1037, !671, i64 9}
!1059 = !DILocation(line: 57, column: 150, scope: !543)
!1060 = !DILocation(line: 57, column: 147, scope: !543)
!1061 = !DILocation(line: 57, column: 189, scope: !543)
!1062 = !DILocation(line: 57, column: 243, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !543, file: !368, discriminator: 3)
!1064 = !DILocation(line: 57, column: 246, scope: !543)
!1065 = !DILocation(line: 57, column: 280, scope: !543)
!1066 = !DILocation(line: 57, column: 283, scope: !543)
!1067 = !DILocation(line: 57, column: 258, scope: !543)
!1068 = !DILocation(line: 57, column: 291, scope: !543)
!1069 = !DILocation(line: 57, column: 256, scope: !543)
!1070 = !DILocation(line: 57, column: 254, scope: !543)
!1071 = !DILocation(line: 57, column: 202, scope: !543)
!1072 = !DILocation(line: 57, column: 226, scope: !543)
!1073 = !DILocation(line: 57, column: 229, scope: !543)
!1074 = !DILocation(line: 57, column: 204, scope: !543)
!1075 = !DILocation(line: 57, column: 237, scope: !543)
!1076 = !DILocation(line: 57, column: 200, scope: !543)
!1077 = !DILocation(line: 57, column: 192, scope: !543)
!1078 = !DILocation(line: 57, column: 300, scope: !543)
!1079 = !DILocation(line: 57, column: 17, scope: !544)
!1080 = !DILocation(line: 58, column: 21, scope: !541)
!1081 = !DILocation(line: 58, column: 26, scope: !541)
!1082 = !DILocation(line: 58, column: 21, scope: !542)
!1083 = !DILocation(line: 59, column: 21, scope: !540)
!1084 = !DILocation(line: 59, column: 29, scope: !540)
!1085 = !DILocation(line: 60, column: 25, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !540, file: !368, line: 60, column: 25)
!1087 = !DILocation(line: 60, column: 34, scope: !1086)
!1088 = !DILocation(line: 60, column: 33, scope: !1086)
!1089 = !DILocation(line: 60, column: 31, scope: !1086)
!1090 = !DILocation(line: 60, column: 40, scope: !1086)
!1091 = !DILocation(line: 60, column: 25, scope: !540)
!1092 = !DILocation(line: 61, column: 44, scope: !1086)
!1093 = !DILocation(line: 61, column: 50, scope: !1086)
!1094 = !DILocation(line: 61, column: 43, scope: !1086)
!1095 = !DILocation(line: 61, column: 104, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 1)
!1097 = !DILocation(line: 61, column: 103, scope: !1086)
!1098 = !DILocation(line: 61, column: 110, scope: !1086)
!1099 = !DILocation(line: 61, column: 95, scope: !1086)
!1100 = !DILocation(line: 61, column: 76, scope: !1086)
!1101 = !DILocation(line: 61, column: 120, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 2)
!1103 = !DILocation(line: 61, column: 126, scope: !1086)
!1104 = !DILocation(line: 61, column: 119, scope: !1086)
!1105 = !DILocation(line: 61, column: 180, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 4)
!1107 = !DILocation(line: 61, column: 179, scope: !1086)
!1108 = !DILocation(line: 61, column: 186, scope: !1086)
!1109 = !DILocation(line: 61, column: 171, scope: !1086)
!1110 = !DILocation(line: 61, column: 153, scope: !1086)
!1111 = !DILocation(line: 61, column: 152, scope: !1086)
!1112 = !DILocation(line: 61, column: 222, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 5)
!1114 = !DILocation(line: 61, column: 221, scope: !1086)
!1115 = !DILocation(line: 61, column: 228, scope: !1086)
!1116 = !DILocation(line: 61, column: 213, scope: !1086)
!1117 = !DILocation(line: 61, column: 195, scope: !1086)
!1118 = !DILocation(line: 61, column: 194, scope: !1086)
!1119 = !DILocation(line: 61, column: 43, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1121, file: !368, discriminator: 7)
!1121 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 6)
!1122 = !DILocation(line: 61, column: 28, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !368, discriminator: 8)
!1124 = !DILexicalBlockFile(scope: !1086, file: !368, discriminator: 3)
!1125 = !DILocation(line: 61, column: 25, scope: !1086)
!1126 = !DILocation(line: 63, column: 28, scope: !1086)
!1127 = !DILocation(line: 65, column: 25, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !540, file: !368, line: 65, column: 25)
!1129 = !DILocation(line: 65, column: 34, scope: !1128)
!1130 = !DILocation(line: 65, column: 33, scope: !1128)
!1131 = !DILocation(line: 65, column: 31, scope: !1128)
!1132 = !DILocation(line: 65, column: 40, scope: !1128)
!1133 = !DILocation(line: 65, column: 45, scope: !1128)
!1134 = !DILocation(line: 66, column: 27, scope: !1128)
!1135 = !DILocation(line: 66, column: 29, scope: !1128)
!1136 = !DILocation(line: 66, column: 39, scope: !1128)
!1137 = !DILocation(line: 66, column: 50, scope: !1128)
!1138 = !DILocation(line: 67, column: 27, scope: !1128)
!1139 = !DILocation(line: 67, column: 30, scope: !1128)
!1140 = !DILocation(line: 67, column: 40, scope: !1128)
!1141 = !DILocation(line: 65, column: 25, scope: !540)
!1142 = !DILocation(line: 69, column: 31, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1128, file: !368, line: 67, column: 52)
!1144 = !DILocation(line: 69, column: 33, scope: !1143)
!1145 = !DILocation(line: 70, column: 31, scope: !1143)
!1146 = !DILocation(line: 70, column: 34, scope: !1143)
!1147 = !DILocation(line: 69, column: 39, scope: !1143)
!1148 = !DILocation(line: 70, column: 41, scope: !1143)
!1149 = !DILocation(line: 68, column: 32, scope: !1143)
!1150 = !DILocation(line: 68, column: 30, scope: !1143)
!1151 = !DILocation(line: 71, column: 32, scope: !1143)
!1152 = !DILocation(line: 72, column: 21, scope: !1143)
!1153 = !DILocation(line: 73, column: 30, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1128, file: !368, line: 73, column: 30)
!1155 = !DILocation(line: 73, column: 39, scope: !1154)
!1156 = !DILocation(line: 73, column: 38, scope: !1154)
!1157 = !DILocation(line: 73, column: 36, scope: !1154)
!1158 = !DILocation(line: 73, column: 45, scope: !1154)
!1159 = !DILocation(line: 73, column: 49, scope: !1154)
!1160 = !DILocation(line: 74, column: 32, scope: !1154)
!1161 = !DILocation(line: 74, column: 38, scope: !1154)
!1162 = !DILocation(line: 73, column: 30, scope: !1128)
!1163 = !DILocation(line: 75, column: 25, scope: !1154)
!1164 = !DILocation(line: 77, column: 29, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !368, line: 77, column: 29)
!1166 = distinct !DILexicalBlock(scope: !1154, file: !368, line: 76, column: 26)
!1167 = !DILocation(line: 77, column: 31, scope: !1165)
!1168 = !DILocation(line: 77, column: 29, scope: !1166)
!1169 = !DILocation(line: 78, column: 34, scope: !1165)
!1170 = !DILocation(line: 78, column: 29, scope: !1165)
!1171 = !DILocation(line: 80, column: 34, scope: !1165)
!1172 = !DILocation(line: 82, column: 17, scope: !541)
!1173 = !DILocation(line: 82, column: 17, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !541, file: !368, discriminator: 1)
!1175 = !DILocation(line: 82, column: 17, scope: !540)
!1176 = !DILocation(line: 83, column: 13, scope: !542)
!1177 = !DILocation(line: 84, column: 38, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !543, file: !368, line: 84, column: 22)
!1179 = !DILocation(line: 84, column: 41, scope: !1178)
!1180 = !DILocation(line: 84, column: 25, scope: !1178)
!1181 = !DILocation(line: 84, column: 49, scope: !1178)
!1182 = !DILocation(line: 84, column: 53, scope: !1178)
!1183 = !DILocation(line: 84, column: 67, scope: !1178)
!1184 = !DILocation(line: 84, column: 72, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1178, file: !368, discriminator: 1)
!1186 = !DILocation(line: 84, column: 75, scope: !1178)
!1187 = !DILocation(line: 84, column: 101, scope: !1178)
!1188 = !DILocation(line: 84, column: 104, scope: !1178)
!1189 = !DILocation(line: 84, column: 88, scope: !1178)
!1190 = !DILocation(line: 84, column: 112, scope: !1178)
!1191 = !DILocation(line: 84, column: 86, scope: !1178)
!1192 = !DILocation(line: 84, column: 83, scope: !1178)
!1193 = !DILocation(line: 84, column: 119, scope: !1178)
!1194 = !DILocation(line: 84, column: 124, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1178, file: !368, discriminator: 2)
!1196 = !DILocation(line: 84, column: 127, scope: !1178)
!1197 = !DILocation(line: 84, column: 152, scope: !1178)
!1198 = !DILocation(line: 84, column: 155, scope: !1178)
!1199 = !DILocation(line: 84, column: 139, scope: !1178)
!1200 = !DILocation(line: 84, column: 163, scope: !1178)
!1201 = !DILocation(line: 84, column: 137, scope: !1178)
!1202 = !DILocation(line: 84, column: 134, scope: !1178)
!1203 = !DILocation(line: 84, column: 167, scope: !1178)
!1204 = !DILocation(line: 84, column: 212, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1178, file: !368, discriminator: 3)
!1206 = !DILocation(line: 84, column: 215, scope: !1178)
!1207 = !DILocation(line: 84, column: 240, scope: !1178)
!1208 = !DILocation(line: 84, column: 243, scope: !1178)
!1209 = !DILocation(line: 84, column: 227, scope: !1178)
!1210 = !DILocation(line: 84, column: 251, scope: !1178)
!1211 = !DILocation(line: 84, column: 225, scope: !1178)
!1212 = !DILocation(line: 84, column: 223, scope: !1178)
!1213 = !DILocation(line: 84, column: 180, scope: !1178)
!1214 = !DILocation(line: 84, column: 195, scope: !1178)
!1215 = !DILocation(line: 84, column: 198, scope: !1178)
!1216 = !DILocation(line: 84, column: 182, scope: !1178)
!1217 = !DILocation(line: 84, column: 206, scope: !1178)
!1218 = !DILocation(line: 84, column: 178, scope: !1178)
!1219 = !DILocation(line: 84, column: 170, scope: !1178)
!1220 = !DILocation(line: 84, column: 260, scope: !1178)
!1221 = !DILocation(line: 84, column: 22, scope: !543)
!1222 = !DILocation(line: 84, column: 22, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !543, file: !368, discriminator: 4)
!1224 = !DILocation(line: 87, column: 17, scope: !1178)
!1225 = !DILocation(line: 88, column: 9, scope: !544)
!1226 = !DILocation(line: 89, column: 18, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !545, file: !368, line: 89, column: 18)
!1228 = !DILocation(line: 89, column: 20, scope: !1227)
!1229 = !DILocation(line: 89, column: 18, scope: !545)
!1230 = !DILocation(line: 90, column: 20, scope: !1227)
!1231 = !DILocation(line: 90, column: 13, scope: !1227)
!1232 = !DILocation(line: 91, column: 18, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1227, file: !368, line: 91, column: 18)
!1234 = !DILocation(line: 91, column: 20, scope: !1233)
!1235 = !DILocation(line: 91, column: 18, scope: !1227)
!1236 = !DILocation(line: 92, column: 45, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !368, line: 92, column: 17)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !368, line: 91, column: 31)
!1239 = !DILocation(line: 92, column: 47, scope: !1237)
!1240 = !DILocation(line: 92, column: 57, scope: !1237)
!1241 = !DILocation(line: 92, column: 20, scope: !1237)
!1242 = !DILocation(line: 92, column: 65, scope: !1237)
!1243 = !DILocation(line: 92, column: 69, scope: !1237)
!1244 = !DILocation(line: 92, column: 83, scope: !1237)
!1245 = !DILocation(line: 92, column: 88, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1237, file: !368, discriminator: 1)
!1247 = !DILocation(line: 92, column: 90, scope: !1237)
!1248 = !DILocation(line: 92, column: 100, scope: !1237)
!1249 = !DILocation(line: 92, column: 138, scope: !1237)
!1250 = !DILocation(line: 92, column: 140, scope: !1237)
!1251 = !DILocation(line: 92, column: 150, scope: !1237)
!1252 = !DILocation(line: 92, column: 113, scope: !1237)
!1253 = !DILocation(line: 92, column: 158, scope: !1237)
!1254 = !DILocation(line: 92, column: 111, scope: !1237)
!1255 = !DILocation(line: 92, column: 108, scope: !1237)
!1256 = !DILocation(line: 92, column: 165, scope: !1237)
!1257 = !DILocation(line: 92, column: 170, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1237, file: !368, discriminator: 2)
!1259 = !DILocation(line: 92, column: 172, scope: !1237)
!1260 = !DILocation(line: 92, column: 182, scope: !1237)
!1261 = !DILocation(line: 92, column: 219, scope: !1237)
!1262 = !DILocation(line: 92, column: 221, scope: !1237)
!1263 = !DILocation(line: 92, column: 231, scope: !1237)
!1264 = !DILocation(line: 92, column: 194, scope: !1237)
!1265 = !DILocation(line: 92, column: 239, scope: !1237)
!1266 = !DILocation(line: 92, column: 192, scope: !1237)
!1267 = !DILocation(line: 92, column: 189, scope: !1237)
!1268 = !DILocation(line: 92, column: 243, scope: !1237)
!1269 = !DILocation(line: 92, column: 309, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !1237, file: !368, discriminator: 3)
!1271 = !DILocation(line: 92, column: 311, scope: !1237)
!1272 = !DILocation(line: 92, column: 321, scope: !1237)
!1273 = !DILocation(line: 92, column: 358, scope: !1237)
!1274 = !DILocation(line: 92, column: 360, scope: !1237)
!1275 = !DILocation(line: 92, column: 370, scope: !1237)
!1276 = !DILocation(line: 92, column: 333, scope: !1237)
!1277 = !DILocation(line: 92, column: 378, scope: !1237)
!1278 = !DILocation(line: 92, column: 331, scope: !1237)
!1279 = !DILocation(line: 92, column: 329, scope: !1237)
!1280 = !DILocation(line: 92, column: 256, scope: !1237)
!1281 = !DILocation(line: 92, column: 283, scope: !1237)
!1282 = !DILocation(line: 92, column: 285, scope: !1237)
!1283 = !DILocation(line: 92, column: 295, scope: !1237)
!1284 = !DILocation(line: 92, column: 258, scope: !1237)
!1285 = !DILocation(line: 92, column: 303, scope: !1237)
!1286 = !DILocation(line: 92, column: 254, scope: !1237)
!1287 = !DILocation(line: 92, column: 246, scope: !1237)
!1288 = !DILocation(line: 92, column: 387, scope: !1237)
!1289 = !DILocation(line: 92, column: 17, scope: !1238)
!1290 = !DILocation(line: 92, column: 17, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1238, file: !368, discriminator: 4)
!1292 = !DILocation(line: 95, column: 24, scope: !1237)
!1293 = !DILocation(line: 95, column: 17, scope: !1237)
!1294 = !DILocation(line: 96, column: 9, scope: !1238)
!1295 = !DILocation(line: 98, column: 20, scope: !1233)
!1296 = !DILocation(line: 98, column: 13, scope: !1233)
!1297 = !DILocation(line: 100, column: 9, scope: !536)
!1298 = !DILocation(line: 100, column: 32, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !368, discriminator: 1)
!1300 = distinct !DILexicalBlock(scope: !536, file: !368, line: 100, column: 12)
!1301 = !DILocation(line: 100, column: 37, scope: !1300)
!1302 = !DILocation(line: 100, column: 31, scope: !1300)
!1303 = !DILocation(line: 100, column: 17, scope: !1300)
!1304 = !DILocation(line: 100, column: 16, scope: !1300)
!1305 = !DILocation(line: 100, column: 15, scope: !1300)
!1306 = !DILocation(line: 100, column: 29, scope: !1300)
!1307 = !DILocation(line: 100, column: 44, scope: !1300)
!1308 = !DILocation(line: 100, column: 44, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1300, file: !368, discriminator: 2)
!1310 = !DILocation(line: 101, column: 9, scope: !536)
!1311 = !DILocation(line: 101, column: 32, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !368, discriminator: 1)
!1313 = distinct !DILexicalBlock(scope: !536, file: !368, line: 101, column: 12)
!1314 = !DILocation(line: 101, column: 37, scope: !1313)
!1315 = !DILocation(line: 101, column: 31, scope: !1313)
!1316 = !DILocation(line: 101, column: 17, scope: !1313)
!1317 = !DILocation(line: 101, column: 16, scope: !1313)
!1318 = !DILocation(line: 101, column: 15, scope: !1313)
!1319 = !DILocation(line: 101, column: 29, scope: !1313)
!1320 = !DILocation(line: 101, column: 46, scope: !1313)
!1321 = !DILocation(line: 101, column: 46, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1313, file: !368, discriminator: 2)
!1323 = !DILocation(line: 102, column: 9, scope: !536)
!1324 = !DILocation(line: 102, column: 14, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !368, discriminator: 1)
!1326 = distinct !DILexicalBlock(scope: !536, file: !368, line: 102, column: 12)
!1327 = !DILocation(line: 102, column: 32, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !368, discriminator: 2)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !368, line: 102, column: 17)
!1330 = !DILocation(line: 102, column: 21, scope: !1329)
!1331 = !DILocation(line: 102, column: 28, scope: !1329)
!1332 = !DILocation(line: 102, column: 41, scope: !1329)
!1333 = !DILocation(line: 102, column: 41, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1329, file: !368, discriminator: 3)
!1335 = !DILocation(line: 102, column: 54, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1326, file: !368, discriminator: 4)
!1337 = !DILocation(line: 102, column: 61, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1339, file: !368, discriminator: 5)
!1339 = distinct !DILexicalBlock(scope: !1326, file: !368, line: 102, column: 57)
!1340 = !DILocation(line: 102, column: 69, scope: !1339)
!1341 = !DILocation(line: 102, column: 87, scope: !1339)
!1342 = !DILocation(line: 102, column: 95, scope: !1339)
!1343 = !DILocation(line: 102, column: 95, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1339, file: !368, discriminator: 6)
!1345 = !DILocation(line: 102, column: 108, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1326, file: !368, discriminator: 7)
!1347 = !DILocation(line: 102, column: 108, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !1326, file: !368, discriminator: 8)
!1349 = !DILocation(line: 103, column: 5, scope: !524)
!1350 = !DILocation(line: 103, column: 5, scope: !922)
!1351 = !DILocation(line: 105, column: 5, scope: !524)
!1352 = !DILocation(line: 106, column: 1, scope: !524)
!1353 = !DILocation(line: 110, column: 59, scope: !546)
!1354 = !DILocation(line: 110, column: 78, scope: !546)
!1355 = !DILocation(line: 110, column: 108, scope: !546)
!1356 = !DILocation(line: 110, column: 126, scope: !546)
!1357 = !DILocation(line: 110, column: 152, scope: !546)
!1358 = !DILocation(line: 112, column: 5, scope: !546)
!1359 = !DILocation(line: 112, column: 12, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !368, discriminator: 2)
!1361 = !DILexicalBlockFile(scope: !546, file: !368, discriminator: 1)
!1362 = !DILocation(line: 112, column: 19, scope: !546)
!1363 = !DILocation(line: 113, column: 9, scope: !554)
!1364 = !DILocation(line: 113, column: 23, scope: !554)
!1365 = !DILocation(line: 113, column: 30, scope: !554)
!1366 = !DILocation(line: 113, column: 29, scope: !554)
!1367 = !DILocation(line: 113, column: 28, scope: !554)
!1368 = !DILocation(line: 114, column: 9, scope: !554)
!1369 = !DILocation(line: 114, column: 17, scope: !554)
!1370 = !DILocation(line: 116, column: 13, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !554, file: !368, line: 116, column: 13)
!1372 = !DILocation(line: 116, column: 15, scope: !1371)
!1373 = !DILocation(line: 116, column: 13, scope: !554)
!1374 = !DILocation(line: 117, column: 13, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !368, line: 116, column: 23)
!1376 = !DILocation(line: 117, column: 49, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !368, discriminator: 1)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !368, line: 117, column: 22)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !368, line: 117, column: 16)
!1380 = !DILocation(line: 117, column: 58, scope: !1378)
!1381 = !DILocation(line: 117, column: 57, scope: !1378)
!1382 = !DILocation(line: 117, column: 22, scope: !1378)
!1383 = !DILocation(line: 117, column: 62, scope: !1378)
!1384 = !DILocation(line: 117, column: 22, scope: !1379)
!1385 = !DILocation(line: 117, column: 67, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1378, file: !368, discriminator: 2)
!1387 = !DILocation(line: 117, column: 67, scope: !1378)
!1388 = !DILocation(line: 117, column: 80, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1379, file: !368, discriminator: 3)
!1390 = !DILocation(line: 117, column: 80, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1379, file: !368, discriminator: 4)
!1392 = !DILocation(line: 118, column: 13, scope: !1375)
!1393 = !DILocation(line: 118, column: 20, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !368, discriminator: 1)
!1395 = distinct !DILexicalBlock(scope: !1375, file: !368, line: 118, column: 16)
!1396 = !DILocation(line: 118, column: 27, scope: !1395)
!1397 = !DILocation(line: 118, column: 44, scope: !1395)
!1398 = !DILocation(line: 118, column: 52, scope: !1395)
!1399 = !DILocation(line: 118, column: 52, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1395, file: !368, discriminator: 2)
!1401 = !DILocation(line: 119, column: 13, scope: !1375)
!1402 = !DILocation(line: 122, column: 9, scope: !554)
!1403 = !DILocation(line: 122, column: 18, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !368, discriminator: 1)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !368, line: 122, column: 18)
!1406 = distinct !DILexicalBlock(scope: !554, file: !368, line: 122, column: 12)
!1407 = !DILocation(line: 122, column: 25, scope: !1405)
!1408 = !DILocation(line: 122, column: 18, scope: !1406)
!1409 = !DILocation(line: 122, column: 32, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1405, file: !368, discriminator: 2)
!1411 = !DILocation(line: 122, column: 32, scope: !1405)
!1412 = !DILocation(line: 122, column: 45, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1406, file: !368, discriminator: 3)
!1414 = !DILocation(line: 122, column: 45, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1406, file: !368, discriminator: 4)
!1416 = !DILocation(line: 124, column: 20, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !554, file: !368, line: 124, column: 13)
!1418 = !DILocation(line: 124, column: 18, scope: !1417)
!1419 = !DILocation(line: 124, column: 22, scope: !1417)
!1420 = !DILocation(line: 124, column: 25, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1417, file: !368, discriminator: 1)
!1422 = !DILocation(line: 124, column: 27, scope: !1417)
!1423 = !DILocation(line: 124, column: 34, scope: !1417)
!1424 = !DILocation(line: 124, column: 38, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1417, file: !368, discriminator: 2)
!1426 = !DILocation(line: 124, column: 40, scope: !1417)
!1427 = !DILocation(line: 124, column: 47, scope: !1417)
!1428 = !DILocation(line: 124, column: 53, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1417, file: !368, discriminator: 3)
!1430 = !DILocation(line: 124, column: 52, scope: !1417)
!1431 = !DILocation(line: 124, column: 51, scope: !1417)
!1432 = !DILocation(line: 124, column: 50, scope: !1417)
!1433 = !DILocation(line: 124, column: 64, scope: !1417)
!1434 = !DILocation(line: 124, column: 13, scope: !554)
!1435 = !DILocation(line: 125, column: 32, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !368, line: 125, column: 17)
!1437 = distinct !DILexicalBlock(scope: !1417, file: !368, line: 124, column: 73)
!1438 = !DILocation(line: 125, column: 20, scope: !1436)
!1439 = !DILocation(line: 125, column: 37, scope: !1436)
!1440 = !{!1441, !670, i64 0}
!1441 = !{!"dbcs_index", !670, i64 0, !671, i64 8, !671, i64 9}
!1442 = !DILocation(line: 125, column: 41, scope: !1436)
!1443 = !DILocation(line: 125, column: 55, scope: !1436)
!1444 = !DILocation(line: 125, column: 62, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1436, file: !368, discriminator: 1)
!1446 = !DILocation(line: 125, column: 61, scope: !1436)
!1447 = !DILocation(line: 125, column: 60, scope: !1436)
!1448 = !DILocation(line: 125, column: 58, scope: !1436)
!1449 = !DILocation(line: 125, column: 91, scope: !1436)
!1450 = !DILocation(line: 125, column: 79, scope: !1436)
!1451 = !DILocation(line: 125, column: 96, scope: !1436)
!1452 = !{!1441, !671, i64 8}
!1453 = !DILocation(line: 125, column: 77, scope: !1436)
!1454 = !DILocation(line: 125, column: 74, scope: !1436)
!1455 = !DILocation(line: 125, column: 103, scope: !1436)
!1456 = !DILocation(line: 125, column: 110, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1436, file: !368, discriminator: 2)
!1458 = !DILocation(line: 125, column: 109, scope: !1436)
!1459 = !DILocation(line: 125, column: 108, scope: !1436)
!1460 = !DILocation(line: 125, column: 106, scope: !1436)
!1461 = !DILocation(line: 125, column: 138, scope: !1436)
!1462 = !DILocation(line: 125, column: 126, scope: !1436)
!1463 = !DILocation(line: 125, column: 143, scope: !1436)
!1464 = !{!1441, !671, i64 9}
!1465 = !DILocation(line: 125, column: 124, scope: !1436)
!1466 = !DILocation(line: 125, column: 121, scope: !1436)
!1467 = !DILocation(line: 125, column: 147, scope: !1436)
!1468 = !DILocation(line: 125, column: 190, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1436, file: !368, discriminator: 3)
!1470 = !DILocation(line: 125, column: 189, scope: !1436)
!1471 = !DILocation(line: 125, column: 188, scope: !1436)
!1472 = !DILocation(line: 125, column: 186, scope: !1436)
!1473 = !DILocation(line: 125, column: 218, scope: !1436)
!1474 = !DILocation(line: 125, column: 206, scope: !1436)
!1475 = !DILocation(line: 125, column: 223, scope: !1436)
!1476 = !DILocation(line: 125, column: 204, scope: !1436)
!1477 = !DILocation(line: 125, column: 202, scope: !1436)
!1478 = !DILocation(line: 125, column: 163, scope: !1436)
!1479 = !DILocation(line: 125, column: 177, scope: !1436)
!1480 = !DILocation(line: 125, column: 165, scope: !1436)
!1481 = !DILocation(line: 125, column: 182, scope: !1436)
!1482 = !DILocation(line: 125, column: 161, scope: !1436)
!1483 = !DILocation(line: 125, column: 232, scope: !1436)
!1484 = !DILocation(line: 125, column: 17, scope: !1437)
!1485 = !DILocation(line: 126, column: 17, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1436, file: !368, line: 125, column: 244)
!1487 = !DILocation(line: 126, column: 53, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1489, file: !368, discriminator: 1)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !368, line: 126, column: 26)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !368, line: 126, column: 20)
!1491 = !DILocation(line: 126, column: 62, scope: !1489)
!1492 = !DILocation(line: 126, column: 26, scope: !1489)
!1493 = !DILocation(line: 126, column: 72, scope: !1489)
!1494 = !DILocation(line: 126, column: 26, scope: !1490)
!1495 = !DILocation(line: 126, column: 77, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1489, file: !368, discriminator: 2)
!1497 = !DILocation(line: 126, column: 77, scope: !1489)
!1498 = !DILocation(line: 126, column: 90, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1490, file: !368, discriminator: 3)
!1500 = !DILocation(line: 126, column: 90, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1490, file: !368, discriminator: 4)
!1502 = !DILocation(line: 127, column: 17, scope: !1486)
!1503 = !DILocation(line: 127, column: 24, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !368, discriminator: 1)
!1505 = distinct !DILexicalBlock(scope: !1486, file: !368, line: 127, column: 20)
!1506 = !DILocation(line: 127, column: 31, scope: !1505)
!1507 = !DILocation(line: 127, column: 48, scope: !1505)
!1508 = !DILocation(line: 127, column: 56, scope: !1505)
!1509 = !DILocation(line: 127, column: 56, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1505, file: !368, discriminator: 2)
!1511 = !DILocation(line: 128, column: 17, scope: !1486)
!1512 = !DILocation(line: 130, column: 9, scope: !1437)
!1513 = !DILocation(line: 132, column: 33, scope: !558)
!1514 = !DILocation(line: 132, column: 16, scope: !558)
!1515 = !DILocation(line: 132, column: 38, scope: !558)
!1516 = !DILocation(line: 132, column: 42, scope: !558)
!1517 = !DILocation(line: 132, column: 56, scope: !558)
!1518 = !DILocation(line: 132, column: 63, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !558, file: !368, discriminator: 1)
!1520 = !DILocation(line: 132, column: 62, scope: !558)
!1521 = !DILocation(line: 132, column: 61, scope: !558)
!1522 = !DILocation(line: 132, column: 59, scope: !558)
!1523 = !DILocation(line: 132, column: 97, scope: !558)
!1524 = !DILocation(line: 132, column: 80, scope: !558)
!1525 = !DILocation(line: 132, column: 102, scope: !558)
!1526 = !DILocation(line: 132, column: 78, scope: !558)
!1527 = !DILocation(line: 132, column: 75, scope: !558)
!1528 = !DILocation(line: 132, column: 109, scope: !558)
!1529 = !DILocation(line: 132, column: 116, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !558, file: !368, discriminator: 2)
!1531 = !DILocation(line: 132, column: 115, scope: !558)
!1532 = !DILocation(line: 132, column: 114, scope: !558)
!1533 = !DILocation(line: 132, column: 112, scope: !558)
!1534 = !DILocation(line: 132, column: 149, scope: !558)
!1535 = !DILocation(line: 132, column: 132, scope: !558)
!1536 = !DILocation(line: 132, column: 154, scope: !558)
!1537 = !DILocation(line: 132, column: 130, scope: !558)
!1538 = !DILocation(line: 132, column: 127, scope: !558)
!1539 = !DILocation(line: 132, column: 158, scope: !558)
!1540 = !DILocation(line: 132, column: 206, scope: !1541)
!1541 = !DILexicalBlockFile(scope: !558, file: !368, discriminator: 3)
!1542 = !DILocation(line: 132, column: 205, scope: !558)
!1543 = !DILocation(line: 132, column: 204, scope: !558)
!1544 = !DILocation(line: 132, column: 202, scope: !558)
!1545 = !DILocation(line: 132, column: 239, scope: !558)
!1546 = !DILocation(line: 132, column: 222, scope: !558)
!1547 = !DILocation(line: 132, column: 244, scope: !558)
!1548 = !DILocation(line: 132, column: 220, scope: !558)
!1549 = !DILocation(line: 132, column: 218, scope: !558)
!1550 = !DILocation(line: 132, column: 174, scope: !558)
!1551 = !DILocation(line: 132, column: 193, scope: !558)
!1552 = !DILocation(line: 132, column: 176, scope: !558)
!1553 = !DILocation(line: 132, column: 198, scope: !558)
!1554 = !DILocation(line: 132, column: 172, scope: !558)
!1555 = !DILocation(line: 132, column: 253, scope: !558)
!1556 = !DILocation(line: 132, column: 13, scope: !554)
!1557 = !DILocation(line: 134, column: 13, scope: !557)
!1558 = !DILocation(line: 134, column: 17, scope: !557)
!1559 = !DILocation(line: 134, column: 24, scope: !557)
!1560 = !DILocation(line: 134, column: 23, scope: !557)
!1561 = !DILocation(line: 134, column: 27, scope: !557)
!1562 = !DILocation(line: 134, column: 35, scope: !557)
!1563 = !DILocation(line: 134, column: 62, scope: !557)
!1564 = !DILocation(line: 134, column: 61, scope: !557)
!1565 = !DILocation(line: 134, column: 60, scope: !557)
!1566 = !DILocation(line: 134, column: 58, scope: !557)
!1567 = !DILocation(line: 134, column: 74, scope: !557)
!1568 = !DILocation(line: 134, column: 55, scope: !557)
!1569 = !DILocation(line: 135, column: 13, scope: !557)
!1570 = !DILocation(line: 135, column: 34, scope: !557)
!1571 = !DILocation(line: 140, column: 76, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !557, file: !368, line: 140, column: 17)
!1573 = !DILocation(line: 140, column: 73, scope: !1572)
!1574 = !DILocation(line: 140, column: 78, scope: !1572)
!1575 = !DILocation(line: 140, column: 81, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1572, file: !368, discriminator: 1)
!1577 = !DILocation(line: 140, column: 83, scope: !1572)
!1578 = !DILocation(line: 140, column: 17, scope: !557)
!1579 = !DILocation(line: 141, column: 30, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !368, line: 140, column: 143)
!1581 = !DILocation(line: 142, column: 23, scope: !1580)
!1582 = !DILocation(line: 143, column: 13, scope: !1580)
!1583 = !DILocation(line: 144, column: 81, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1572, file: !368, line: 144, column: 22)
!1585 = !DILocation(line: 144, column: 78, scope: !1584)
!1586 = !DILocation(line: 144, column: 83, scope: !1584)
!1587 = !DILocation(line: 144, column: 86, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1584, file: !368, discriminator: 1)
!1589 = !DILocation(line: 144, column: 88, scope: !1584)
!1590 = !DILocation(line: 144, column: 22, scope: !1572)
!1591 = !DILocation(line: 145, column: 30, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1584, file: !368, line: 144, column: 147)
!1593 = !DILocation(line: 146, column: 23, scope: !1592)
!1594 = !DILocation(line: 147, column: 13, scope: !1592)
!1595 = !DILocation(line: 148, column: 81, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1584, file: !368, line: 148, column: 22)
!1597 = !DILocation(line: 148, column: 78, scope: !1596)
!1598 = !DILocation(line: 148, column: 83, scope: !1596)
!1599 = !DILocation(line: 148, column: 86, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1596, file: !368, discriminator: 1)
!1601 = !DILocation(line: 148, column: 88, scope: !1596)
!1602 = !DILocation(line: 148, column: 22, scope: !1584)
!1603 = !DILocation(line: 149, column: 30, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !368, line: 148, column: 147)
!1605 = !DILocation(line: 150, column: 23, scope: !1604)
!1606 = !DILocation(line: 151, column: 13, scope: !1604)
!1607 = !DILocation(line: 153, column: 21, scope: !1596)
!1608 = !DILocation(line: 155, column: 26, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !557, file: !368, line: 155, column: 17)
!1610 = !DILocation(line: 155, column: 28, scope: !1609)
!1611 = !DILocation(line: 155, column: 17, scope: !1609)
!1612 = !DILocation(line: 155, column: 43, scope: !1609)
!1613 = !DILocation(line: 155, column: 45, scope: !1609)
!1614 = !DILocation(line: 155, column: 39, scope: !1609)
!1615 = !DILocation(line: 155, column: 34, scope: !1609)
!1616 = !DILocation(line: 155, column: 17, scope: !557)
!1617 = !DILocation(line: 156, column: 21, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1609, file: !368, line: 155, column: 52)
!1619 = !DILocation(line: 156, column: 57, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !368, discriminator: 1)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !368, line: 156, column: 30)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !368, line: 156, column: 24)
!1623 = !DILocation(line: 156, column: 66, scope: !1621)
!1624 = !DILocation(line: 156, column: 74, scope: !1621)
!1625 = !DILocation(line: 156, column: 30, scope: !1621)
!1626 = !DILocation(line: 156, column: 86, scope: !1621)
!1627 = !DILocation(line: 156, column: 30, scope: !1622)
!1628 = !DILocation(line: 156, column: 91, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1621, file: !368, discriminator: 2)
!1630 = !DILocation(line: 156, column: 91, scope: !1621)
!1631 = !DILocation(line: 156, column: 104, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1622, file: !368, discriminator: 3)
!1633 = !DILocation(line: 156, column: 104, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1622, file: !368, discriminator: 4)
!1635 = !DILocation(line: 157, column: 21, scope: !1618)
!1636 = !DILocation(line: 157, column: 28, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1638, file: !368, discriminator: 1)
!1638 = distinct !DILexicalBlock(scope: !1618, file: !368, line: 157, column: 24)
!1639 = !DILocation(line: 157, column: 35, scope: !1638)
!1640 = !DILocation(line: 157, column: 52, scope: !1638)
!1641 = !DILocation(line: 157, column: 60, scope: !1638)
!1642 = !DILocation(line: 157, column: 60, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1638, file: !368, discriminator: 2)
!1644 = !DILocation(line: 158, column: 13, scope: !1618)
!1645 = !DILocation(line: 160, column: 21, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1609, file: !368, line: 159, column: 18)
!1647 = !DILocation(line: 160, column: 57, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1649, file: !368, discriminator: 1)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !368, line: 160, column: 30)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !368, line: 160, column: 24)
!1651 = !DILocation(line: 160, column: 66, scope: !1649)
!1652 = !DILocation(line: 160, column: 30, scope: !1649)
!1653 = !DILocation(line: 160, column: 76, scope: !1649)
!1654 = !DILocation(line: 160, column: 30, scope: !1650)
!1655 = !DILocation(line: 160, column: 81, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1649, file: !368, discriminator: 2)
!1657 = !DILocation(line: 160, column: 81, scope: !1649)
!1658 = !DILocation(line: 160, column: 94, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1650, file: !368, discriminator: 3)
!1660 = !DILocation(line: 160, column: 94, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1650, file: !368, discriminator: 4)
!1662 = !DILocation(line: 161, column: 21, scope: !1646)
!1663 = !DILocation(line: 161, column: 28, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1665, file: !368, discriminator: 1)
!1665 = distinct !DILexicalBlock(scope: !1646, file: !368, line: 161, column: 24)
!1666 = !DILocation(line: 161, column: 35, scope: !1665)
!1667 = !DILocation(line: 161, column: 52, scope: !1665)
!1668 = !DILocation(line: 161, column: 60, scope: !1665)
!1669 = !DILocation(line: 161, column: 60, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1665, file: !368, discriminator: 2)
!1671 = !DILocation(line: 163, column: 13, scope: !557)
!1672 = !DILocation(line: 164, column: 9, scope: !558)
!1673 = !DILocation(line: 166, column: 18, scope: !554)
!1674 = !DILocation(line: 166, column: 20, scope: !554)
!1675 = !DILocation(line: 166, column: 31, scope: !554)
!1676 = !DILocation(line: 166, column: 30, scope: !554)
!1677 = !DILocation(line: 166, column: 29, scope: !554)
!1678 = !DILocation(line: 166, column: 28, scope: !554)
!1679 = !DILocation(line: 166, column: 26, scope: !554)
!1680 = !DILocation(line: 166, column: 9, scope: !554)
!1681 = !DILocation(line: 167, column: 22, scope: !562)
!1682 = !DILocation(line: 167, column: 27, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !561, file: !368, discriminator: 1)
!1684 = !DILocation(line: 167, column: 35, scope: !561)
!1685 = !DILocation(line: 167, column: 51, scope: !561)
!1686 = !DILocation(line: 167, column: 59, scope: !561)
!1687 = !DILocation(line: 167, column: 85, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !561, file: !368, line: 167, column: 79)
!1689 = !DILocation(line: 167, column: 90, scope: !1688)
!1690 = !DILocation(line: 167, column: 83, scope: !1688)
!1691 = !DILocation(line: 167, column: 105, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 2)
!1693 = !DILocation(line: 167, column: 83, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 3)
!1695 = !DILocation(line: 167, column: 127, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !368, discriminator: 5)
!1697 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 4)
!1698 = !DILocation(line: 167, column: 136, scope: !1688)
!1699 = !{!1700, !720, i64 20}
!1700 = !{!"", !670, i64 0, !670, i64 8, !671, i64 16, !720, i64 20, !748, i64 24, !748, i64 32, !748, i64 40, !720, i64 48, !671, i64 52, !671, i64 53}
!1701 = !DILocation(line: 167, column: 123, scope: !1688)
!1702 = !DILocation(line: 167, column: 144, scope: !1688)
!1703 = !DILocation(line: 167, column: 155, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 6)
!1705 = !DILocation(line: 167, column: 164, scope: !1688)
!1706 = !{!1700, !748, i64 24}
!1707 = !DILocation(line: 167, column: 172, scope: !1688)
!1708 = !DILocation(line: 167, column: 181, scope: !1688)
!1709 = !{!1700, !748, i64 32}
!1710 = !DILocation(line: 167, column: 169, scope: !1688)
!1711 = !DILocation(line: 167, column: 151, scope: !1688)
!1712 = !DILocation(line: 167, column: 80, scope: !1688)
!1713 = !DILocation(line: 167, column: 80, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 8)
!1715 = !DILocation(line: 167, column: 244, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !368, discriminator: 9)
!1717 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 7)
!1718 = !DILocation(line: 167, column: 262, scope: !1688)
!1719 = !DILocation(line: 167, column: 267, scope: !1688)
!1720 = !DILocation(line: 167, column: 260, scope: !1688)
!1721 = !DILocation(line: 167, column: 282, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 11)
!1723 = !DILocation(line: 167, column: 260, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 12)
!1725 = !DILocation(line: 167, column: 210, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !368, discriminator: 14)
!1727 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 13)
!1728 = !DILocation(line: 167, column: 303, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1730, file: !368, discriminator: 15)
!1730 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 10)
!1731 = !DILocation(line: 167, column: 79, scope: !561)
!1732 = !DILocation(line: 167, column: 308, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1688, file: !368, discriminator: 16)
!1734 = !DILocation(line: 167, column: 308, scope: !1688)
!1735 = !DILocation(line: 167, column: 321, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !561, file: !368, discriminator: 17)
!1737 = !DILocation(line: 167, column: 335, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !368, discriminator: 19)
!1739 = distinct !DILexicalBlock(scope: !561, file: !368, line: 167, column: 324)
!1740 = !DILocation(line: 167, column: 343, scope: !1739)
!1741 = !{!1700, !671, i64 16}
!1742 = !DILocation(line: 167, column: 326, scope: !1739)
!1743 = !DILocation(line: 167, column: 436, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1745, file: !368, discriminator: 21)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !368, line: 167, column: 379)
!1746 = distinct !DILexicalBlock(scope: !1739, file: !368, line: 167, column: 350)
!1747 = !DILocation(line: 167, column: 426, scope: !1745)
!1748 = !DILocation(line: 167, column: 410, scope: !1745)
!1749 = !DILocation(line: 167, column: 418, scope: !1745)
!1750 = !DILocation(line: 167, column: 394, scope: !1745)
!1751 = !DILocation(line: 167, column: 402, scope: !1745)
!1752 = !{!1700, !670, i64 8}
!1753 = !DILocation(line: 167, column: 381, scope: !1745)
!1754 = !DILocation(line: 167, column: 424, scope: !1745)
!1755 = !DILocation(line: 167, column: 442, scope: !1745)
!1756 = !DILocation(line: 167, column: 535, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1758, file: !368, discriminator: 22)
!1758 = distinct !DILexicalBlock(scope: !1746, file: !368, line: 167, column: 478)
!1759 = !DILocation(line: 167, column: 525, scope: !1758)
!1760 = !DILocation(line: 167, column: 509, scope: !1758)
!1761 = !DILocation(line: 167, column: 517, scope: !1758)
!1762 = !DILocation(line: 167, column: 493, scope: !1758)
!1763 = !DILocation(line: 167, column: 501, scope: !1758)
!1764 = !DILocation(line: 167, column: 481, scope: !1758)
!1765 = !DILocation(line: 167, column: 480, scope: !1758)
!1766 = !DILocation(line: 167, column: 523, scope: !1758)
!1767 = !DILocation(line: 167, column: 541, scope: !1758)
!1768 = !DILocation(line: 167, column: 630, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !368, discriminator: 20)
!1770 = distinct !DILexicalBlock(scope: !1746, file: !368, line: 167, column: 559)
!1771 = !DILocation(line: 167, column: 604, scope: !1770)
!1772 = !DILocation(line: 167, column: 612, scope: !1770)
!1773 = !DILocation(line: 167, column: 588, scope: !1770)
!1774 = !DILocation(line: 167, column: 596, scope: !1770)
!1775 = !DILocation(line: 167, column: 576, scope: !1770)
!1776 = !DILocation(line: 167, column: 575, scope: !1770)
!1777 = !DILocation(line: 167, column: 618, scope: !1770)
!1778 = !DILocation(line: 167, column: 638, scope: !1746)
!1779 = !DILocation(line: 167, column: 640, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1781, file: !368, discriminator: 25)
!1781 = !DILexicalBlockFile(scope: !1782, file: !368, discriminator: 24)
!1782 = !DILexicalBlockFile(scope: !1739, file: !368, discriminator: 23)
!1783 = !DILocation(line: 167, column: 640, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1739, file: !368, discriminator: 26)
!1785 = !DILocation(line: 167, column: 653, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !561, file: !368, discriminator: 27)
!1787 = !DILocation(line: 167, column: 667, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1789, file: !368, discriminator: 28)
!1789 = distinct !DILexicalBlock(scope: !561, file: !368, line: 167, column: 656)
!1790 = !DILocation(line: 167, column: 675, scope: !1789)
!1791 = !DILocation(line: 167, column: 658, scope: !1789)
!1792 = !DILocation(line: 167, column: 772, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1794, file: !368, discriminator: 30)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !368, line: 167, column: 711)
!1795 = distinct !DILexicalBlock(scope: !1789, file: !368, line: 167, column: 682)
!1796 = !DILocation(line: 167, column: 762, scope: !1794)
!1797 = !DILocation(line: 167, column: 742, scope: !1794)
!1798 = !DILocation(line: 167, column: 750, scope: !1794)
!1799 = !DILocation(line: 167, column: 754, scope: !1794)
!1800 = !DILocation(line: 167, column: 726, scope: !1794)
!1801 = !DILocation(line: 167, column: 734, scope: !1794)
!1802 = !DILocation(line: 167, column: 713, scope: !1794)
!1803 = !DILocation(line: 167, column: 760, scope: !1794)
!1804 = !DILocation(line: 167, column: 778, scope: !1794)
!1805 = !DILocation(line: 167, column: 875, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1807, file: !368, discriminator: 31)
!1807 = distinct !DILexicalBlock(scope: !1795, file: !368, line: 167, column: 814)
!1808 = !DILocation(line: 167, column: 865, scope: !1807)
!1809 = !DILocation(line: 167, column: 845, scope: !1807)
!1810 = !DILocation(line: 167, column: 853, scope: !1807)
!1811 = !DILocation(line: 167, column: 857, scope: !1807)
!1812 = !DILocation(line: 167, column: 829, scope: !1807)
!1813 = !DILocation(line: 167, column: 837, scope: !1807)
!1814 = !DILocation(line: 167, column: 817, scope: !1807)
!1815 = !DILocation(line: 167, column: 816, scope: !1807)
!1816 = !DILocation(line: 167, column: 863, scope: !1807)
!1817 = !DILocation(line: 167, column: 881, scope: !1807)
!1818 = !DILocation(line: 167, column: 974, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1820, file: !368, discriminator: 29)
!1820 = distinct !DILexicalBlock(scope: !1795, file: !368, line: 167, column: 899)
!1821 = !DILocation(line: 167, column: 944, scope: !1820)
!1822 = !DILocation(line: 167, column: 952, scope: !1820)
!1823 = !DILocation(line: 167, column: 956, scope: !1820)
!1824 = !DILocation(line: 167, column: 928, scope: !1820)
!1825 = !DILocation(line: 167, column: 936, scope: !1820)
!1826 = !DILocation(line: 167, column: 916, scope: !1820)
!1827 = !DILocation(line: 167, column: 915, scope: !1820)
!1828 = !DILocation(line: 167, column: 962, scope: !1820)
!1829 = !DILocation(line: 167, column: 982, scope: !1795)
!1830 = !DILocation(line: 167, column: 984, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1832, file: !368, discriminator: 34)
!1832 = !DILexicalBlockFile(scope: !1833, file: !368, discriminator: 33)
!1833 = !DILexicalBlockFile(scope: !1789, file: !368, discriminator: 32)
!1834 = !DILocation(line: 167, column: 984, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1789, file: !368, discriminator: 35)
!1836 = !DILocation(line: 167, column: 997, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !561, file: !368, discriminator: 36)
!1838 = !DILocation(line: 167, column: 1005, scope: !561)
!1839 = !DILocation(line: 167, column: 1009, scope: !561)
!1840 = !DILocation(line: 167, column: 1015, scope: !562)
!1841 = !DILocation(line: 167, column: 1015, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !368, discriminator: 37)
!1843 = !DILexicalBlockFile(scope: !562, file: !368, discriminator: 18)
!1844 = !DILocation(line: 167, column: 1015, scope: !561)
!1845 = !DILocation(line: 167, column: 1015, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !561, file: !368, discriminator: 38)
!1847 = !DILocation(line: 167, column: 1028, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !562, file: !368, discriminator: 39)
!1849 = !DILocation(line: 168, column: 22, scope: !562)
!1850 = !DILocation(line: 168, column: 27, scope: !1851)
!1851 = !DILexicalBlockFile(scope: !565, file: !368, discriminator: 1)
!1852 = !DILocation(line: 168, column: 35, scope: !565)
!1853 = !DILocation(line: 168, column: 51, scope: !565)
!1854 = !DILocation(line: 168, column: 59, scope: !565)
!1855 = !DILocation(line: 168, column: 85, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !565, file: !368, line: 168, column: 79)
!1857 = !DILocation(line: 168, column: 90, scope: !1856)
!1858 = !DILocation(line: 168, column: 83, scope: !1856)
!1859 = !DILocation(line: 168, column: 105, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 2)
!1861 = !DILocation(line: 168, column: 83, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 3)
!1863 = !DILocation(line: 168, column: 127, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1865, file: !368, discriminator: 5)
!1865 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 4)
!1866 = !DILocation(line: 168, column: 136, scope: !1856)
!1867 = !DILocation(line: 168, column: 123, scope: !1856)
!1868 = !DILocation(line: 168, column: 144, scope: !1856)
!1869 = !DILocation(line: 168, column: 155, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 6)
!1871 = !DILocation(line: 168, column: 164, scope: !1856)
!1872 = !DILocation(line: 168, column: 172, scope: !1856)
!1873 = !DILocation(line: 168, column: 181, scope: !1856)
!1874 = !DILocation(line: 168, column: 169, scope: !1856)
!1875 = !DILocation(line: 168, column: 151, scope: !1856)
!1876 = !DILocation(line: 168, column: 80, scope: !1856)
!1877 = !DILocation(line: 168, column: 80, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 8)
!1879 = !DILocation(line: 168, column: 244, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1881, file: !368, discriminator: 9)
!1881 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 7)
!1882 = !DILocation(line: 168, column: 262, scope: !1856)
!1883 = !DILocation(line: 168, column: 267, scope: !1856)
!1884 = !DILocation(line: 168, column: 260, scope: !1856)
!1885 = !DILocation(line: 168, column: 282, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 11)
!1887 = !DILocation(line: 168, column: 260, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 12)
!1889 = !DILocation(line: 168, column: 210, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1891, file: !368, discriminator: 14)
!1891 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 13)
!1892 = !DILocation(line: 168, column: 303, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !368, discriminator: 15)
!1894 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 10)
!1895 = !DILocation(line: 168, column: 79, scope: !565)
!1896 = !DILocation(line: 168, column: 308, scope: !1897)
!1897 = !DILexicalBlockFile(scope: !1856, file: !368, discriminator: 16)
!1898 = !DILocation(line: 168, column: 308, scope: !1856)
!1899 = !DILocation(line: 168, column: 321, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !565, file: !368, discriminator: 17)
!1901 = !DILocation(line: 168, column: 335, scope: !1902)
!1902 = !DILexicalBlockFile(scope: !1903, file: !368, discriminator: 19)
!1903 = distinct !DILexicalBlock(scope: !565, file: !368, line: 168, column: 324)
!1904 = !DILocation(line: 168, column: 343, scope: !1903)
!1905 = !DILocation(line: 168, column: 326, scope: !1903)
!1906 = !DILocation(line: 168, column: 436, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1908, file: !368, discriminator: 21)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !368, line: 168, column: 379)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !368, line: 168, column: 350)
!1910 = !DILocation(line: 168, column: 426, scope: !1908)
!1911 = !DILocation(line: 168, column: 410, scope: !1908)
!1912 = !DILocation(line: 168, column: 418, scope: !1908)
!1913 = !DILocation(line: 168, column: 394, scope: !1908)
!1914 = !DILocation(line: 168, column: 402, scope: !1908)
!1915 = !DILocation(line: 168, column: 381, scope: !1908)
!1916 = !DILocation(line: 168, column: 424, scope: !1908)
!1917 = !DILocation(line: 168, column: 442, scope: !1908)
!1918 = !DILocation(line: 168, column: 535, scope: !1919)
!1919 = !DILexicalBlockFile(scope: !1920, file: !368, discriminator: 22)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !368, line: 168, column: 478)
!1921 = !DILocation(line: 168, column: 525, scope: !1920)
!1922 = !DILocation(line: 168, column: 509, scope: !1920)
!1923 = !DILocation(line: 168, column: 517, scope: !1920)
!1924 = !DILocation(line: 168, column: 493, scope: !1920)
!1925 = !DILocation(line: 168, column: 501, scope: !1920)
!1926 = !DILocation(line: 168, column: 481, scope: !1920)
!1927 = !DILocation(line: 168, column: 480, scope: !1920)
!1928 = !DILocation(line: 168, column: 523, scope: !1920)
!1929 = !DILocation(line: 168, column: 541, scope: !1920)
!1930 = !DILocation(line: 168, column: 630, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1932, file: !368, discriminator: 20)
!1932 = distinct !DILexicalBlock(scope: !1909, file: !368, line: 168, column: 559)
!1933 = !DILocation(line: 168, column: 604, scope: !1932)
!1934 = !DILocation(line: 168, column: 612, scope: !1932)
!1935 = !DILocation(line: 168, column: 588, scope: !1932)
!1936 = !DILocation(line: 168, column: 596, scope: !1932)
!1937 = !DILocation(line: 168, column: 576, scope: !1932)
!1938 = !DILocation(line: 168, column: 575, scope: !1932)
!1939 = !DILocation(line: 168, column: 618, scope: !1932)
!1940 = !DILocation(line: 168, column: 638, scope: !1909)
!1941 = !DILocation(line: 168, column: 640, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1943, file: !368, discriminator: 25)
!1943 = !DILexicalBlockFile(scope: !1944, file: !368, discriminator: 24)
!1944 = !DILexicalBlockFile(scope: !1903, file: !368, discriminator: 23)
!1945 = !DILocation(line: 168, column: 640, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1903, file: !368, discriminator: 26)
!1947 = !DILocation(line: 168, column: 653, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !565, file: !368, discriminator: 27)
!1949 = !DILocation(line: 168, column: 667, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !368, discriminator: 28)
!1951 = distinct !DILexicalBlock(scope: !565, file: !368, line: 168, column: 656)
!1952 = !DILocation(line: 168, column: 675, scope: !1951)
!1953 = !DILocation(line: 168, column: 658, scope: !1951)
!1954 = !DILocation(line: 168, column: 772, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !368, discriminator: 30)
!1956 = distinct !DILexicalBlock(scope: !1957, file: !368, line: 168, column: 711)
!1957 = distinct !DILexicalBlock(scope: !1951, file: !368, line: 168, column: 682)
!1958 = !DILocation(line: 168, column: 762, scope: !1956)
!1959 = !DILocation(line: 168, column: 742, scope: !1956)
!1960 = !DILocation(line: 168, column: 750, scope: !1956)
!1961 = !DILocation(line: 168, column: 754, scope: !1956)
!1962 = !DILocation(line: 168, column: 726, scope: !1956)
!1963 = !DILocation(line: 168, column: 734, scope: !1956)
!1964 = !DILocation(line: 168, column: 713, scope: !1956)
!1965 = !DILocation(line: 168, column: 760, scope: !1956)
!1966 = !DILocation(line: 168, column: 778, scope: !1956)
!1967 = !DILocation(line: 168, column: 875, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1969, file: !368, discriminator: 31)
!1969 = distinct !DILexicalBlock(scope: !1957, file: !368, line: 168, column: 814)
!1970 = !DILocation(line: 168, column: 865, scope: !1969)
!1971 = !DILocation(line: 168, column: 845, scope: !1969)
!1972 = !DILocation(line: 168, column: 853, scope: !1969)
!1973 = !DILocation(line: 168, column: 857, scope: !1969)
!1974 = !DILocation(line: 168, column: 829, scope: !1969)
!1975 = !DILocation(line: 168, column: 837, scope: !1969)
!1976 = !DILocation(line: 168, column: 817, scope: !1969)
!1977 = !DILocation(line: 168, column: 816, scope: !1969)
!1978 = !DILocation(line: 168, column: 863, scope: !1969)
!1979 = !DILocation(line: 168, column: 881, scope: !1969)
!1980 = !DILocation(line: 168, column: 974, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1982, file: !368, discriminator: 29)
!1982 = distinct !DILexicalBlock(scope: !1957, file: !368, line: 168, column: 899)
!1983 = !DILocation(line: 168, column: 944, scope: !1982)
!1984 = !DILocation(line: 168, column: 952, scope: !1982)
!1985 = !DILocation(line: 168, column: 956, scope: !1982)
!1986 = !DILocation(line: 168, column: 928, scope: !1982)
!1987 = !DILocation(line: 168, column: 936, scope: !1982)
!1988 = !DILocation(line: 168, column: 916, scope: !1982)
!1989 = !DILocation(line: 168, column: 915, scope: !1982)
!1990 = !DILocation(line: 168, column: 962, scope: !1982)
!1991 = !DILocation(line: 168, column: 982, scope: !1957)
!1992 = !DILocation(line: 168, column: 984, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !368, discriminator: 34)
!1994 = !DILexicalBlockFile(scope: !1995, file: !368, discriminator: 33)
!1995 = !DILexicalBlockFile(scope: !1951, file: !368, discriminator: 32)
!1996 = !DILocation(line: 168, column: 984, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1951, file: !368, discriminator: 35)
!1998 = !DILocation(line: 168, column: 997, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !565, file: !368, discriminator: 36)
!2000 = !DILocation(line: 168, column: 1005, scope: !565)
!2001 = !DILocation(line: 168, column: 1009, scope: !565)
!2002 = !DILocation(line: 168, column: 1015, scope: !562)
!2003 = !DILocation(line: 168, column: 1015, scope: !1842)
!2004 = !DILocation(line: 168, column: 1015, scope: !565)
!2005 = !DILocation(line: 168, column: 1015, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !565, file: !368, discriminator: 38)
!2007 = !DILocation(line: 168, column: 1028, scope: !1848)
!2008 = !DILocation(line: 169, column: 22, scope: !562)
!2009 = !DILocation(line: 169, column: 27, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !568, file: !368, discriminator: 1)
!2011 = !DILocation(line: 169, column: 35, scope: !568)
!2012 = !DILocation(line: 169, column: 51, scope: !568)
!2013 = !DILocation(line: 169, column: 59, scope: !568)
!2014 = !DILocation(line: 169, column: 85, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !568, file: !368, line: 169, column: 79)
!2016 = !DILocation(line: 169, column: 90, scope: !2015)
!2017 = !DILocation(line: 169, column: 83, scope: !2015)
!2018 = !DILocation(line: 169, column: 105, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 2)
!2020 = !DILocation(line: 169, column: 83, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 3)
!2022 = !DILocation(line: 169, column: 127, scope: !2023)
!2023 = !DILexicalBlockFile(scope: !2024, file: !368, discriminator: 5)
!2024 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 4)
!2025 = !DILocation(line: 169, column: 136, scope: !2015)
!2026 = !DILocation(line: 169, column: 123, scope: !2015)
!2027 = !DILocation(line: 169, column: 144, scope: !2015)
!2028 = !DILocation(line: 169, column: 155, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 6)
!2030 = !DILocation(line: 169, column: 164, scope: !2015)
!2031 = !DILocation(line: 169, column: 172, scope: !2015)
!2032 = !DILocation(line: 169, column: 181, scope: !2015)
!2033 = !DILocation(line: 169, column: 169, scope: !2015)
!2034 = !DILocation(line: 169, column: 151, scope: !2015)
!2035 = !DILocation(line: 169, column: 80, scope: !2015)
!2036 = !DILocation(line: 169, column: 80, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 8)
!2038 = !DILocation(line: 169, column: 244, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2040, file: !368, discriminator: 9)
!2040 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 7)
!2041 = !DILocation(line: 169, column: 262, scope: !2015)
!2042 = !DILocation(line: 169, column: 267, scope: !2015)
!2043 = !DILocation(line: 169, column: 260, scope: !2015)
!2044 = !DILocation(line: 169, column: 282, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 11)
!2046 = !DILocation(line: 169, column: 260, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 12)
!2048 = !DILocation(line: 169, column: 210, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2050, file: !368, discriminator: 14)
!2050 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 13)
!2051 = !DILocation(line: 169, column: 303, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2053, file: !368, discriminator: 15)
!2053 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 10)
!2054 = !DILocation(line: 169, column: 79, scope: !568)
!2055 = !DILocation(line: 169, column: 308, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2015, file: !368, discriminator: 16)
!2057 = !DILocation(line: 169, column: 308, scope: !2015)
!2058 = !DILocation(line: 169, column: 321, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !568, file: !368, discriminator: 17)
!2060 = !DILocation(line: 169, column: 335, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2062, file: !368, discriminator: 19)
!2062 = distinct !DILexicalBlock(scope: !568, file: !368, line: 169, column: 324)
!2063 = !DILocation(line: 169, column: 343, scope: !2062)
!2064 = !DILocation(line: 169, column: 326, scope: !2062)
!2065 = !DILocation(line: 169, column: 436, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2067, file: !368, discriminator: 21)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !368, line: 169, column: 379)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !368, line: 169, column: 350)
!2069 = !DILocation(line: 169, column: 426, scope: !2067)
!2070 = !DILocation(line: 169, column: 410, scope: !2067)
!2071 = !DILocation(line: 169, column: 418, scope: !2067)
!2072 = !DILocation(line: 169, column: 394, scope: !2067)
!2073 = !DILocation(line: 169, column: 402, scope: !2067)
!2074 = !DILocation(line: 169, column: 381, scope: !2067)
!2075 = !DILocation(line: 169, column: 424, scope: !2067)
!2076 = !DILocation(line: 169, column: 442, scope: !2067)
!2077 = !DILocation(line: 169, column: 535, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2079, file: !368, discriminator: 22)
!2079 = distinct !DILexicalBlock(scope: !2068, file: !368, line: 169, column: 478)
!2080 = !DILocation(line: 169, column: 525, scope: !2079)
!2081 = !DILocation(line: 169, column: 509, scope: !2079)
!2082 = !DILocation(line: 169, column: 517, scope: !2079)
!2083 = !DILocation(line: 169, column: 493, scope: !2079)
!2084 = !DILocation(line: 169, column: 501, scope: !2079)
!2085 = !DILocation(line: 169, column: 481, scope: !2079)
!2086 = !DILocation(line: 169, column: 480, scope: !2079)
!2087 = !DILocation(line: 169, column: 523, scope: !2079)
!2088 = !DILocation(line: 169, column: 541, scope: !2079)
!2089 = !DILocation(line: 169, column: 630, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2091, file: !368, discriminator: 20)
!2091 = distinct !DILexicalBlock(scope: !2068, file: !368, line: 169, column: 559)
!2092 = !DILocation(line: 169, column: 604, scope: !2091)
!2093 = !DILocation(line: 169, column: 612, scope: !2091)
!2094 = !DILocation(line: 169, column: 588, scope: !2091)
!2095 = !DILocation(line: 169, column: 596, scope: !2091)
!2096 = !DILocation(line: 169, column: 576, scope: !2091)
!2097 = !DILocation(line: 169, column: 575, scope: !2091)
!2098 = !DILocation(line: 169, column: 618, scope: !2091)
!2099 = !DILocation(line: 169, column: 638, scope: !2068)
!2100 = !DILocation(line: 169, column: 640, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !368, discriminator: 25)
!2102 = !DILexicalBlockFile(scope: !2103, file: !368, discriminator: 24)
!2103 = !DILexicalBlockFile(scope: !2062, file: !368, discriminator: 23)
!2104 = !DILocation(line: 169, column: 640, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2062, file: !368, discriminator: 26)
!2106 = !DILocation(line: 169, column: 653, scope: !2107)
!2107 = !DILexicalBlockFile(scope: !568, file: !368, discriminator: 27)
!2108 = !DILocation(line: 169, column: 667, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !368, discriminator: 28)
!2110 = distinct !DILexicalBlock(scope: !568, file: !368, line: 169, column: 656)
!2111 = !DILocation(line: 169, column: 675, scope: !2110)
!2112 = !DILocation(line: 169, column: 658, scope: !2110)
!2113 = !DILocation(line: 169, column: 772, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2115, file: !368, discriminator: 30)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !368, line: 169, column: 711)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !368, line: 169, column: 682)
!2117 = !DILocation(line: 169, column: 762, scope: !2115)
!2118 = !DILocation(line: 169, column: 742, scope: !2115)
!2119 = !DILocation(line: 169, column: 750, scope: !2115)
!2120 = !DILocation(line: 169, column: 754, scope: !2115)
!2121 = !DILocation(line: 169, column: 726, scope: !2115)
!2122 = !DILocation(line: 169, column: 734, scope: !2115)
!2123 = !DILocation(line: 169, column: 713, scope: !2115)
!2124 = !DILocation(line: 169, column: 760, scope: !2115)
!2125 = !DILocation(line: 169, column: 778, scope: !2115)
!2126 = !DILocation(line: 169, column: 875, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2128, file: !368, discriminator: 31)
!2128 = distinct !DILexicalBlock(scope: !2116, file: !368, line: 169, column: 814)
!2129 = !DILocation(line: 169, column: 865, scope: !2128)
!2130 = !DILocation(line: 169, column: 845, scope: !2128)
!2131 = !DILocation(line: 169, column: 853, scope: !2128)
!2132 = !DILocation(line: 169, column: 857, scope: !2128)
!2133 = !DILocation(line: 169, column: 829, scope: !2128)
!2134 = !DILocation(line: 169, column: 837, scope: !2128)
!2135 = !DILocation(line: 169, column: 817, scope: !2128)
!2136 = !DILocation(line: 169, column: 816, scope: !2128)
!2137 = !DILocation(line: 169, column: 863, scope: !2128)
!2138 = !DILocation(line: 169, column: 881, scope: !2128)
!2139 = !DILocation(line: 169, column: 974, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2141, file: !368, discriminator: 29)
!2141 = distinct !DILexicalBlock(scope: !2116, file: !368, line: 169, column: 899)
!2142 = !DILocation(line: 169, column: 944, scope: !2141)
!2143 = !DILocation(line: 169, column: 952, scope: !2141)
!2144 = !DILocation(line: 169, column: 956, scope: !2141)
!2145 = !DILocation(line: 169, column: 928, scope: !2141)
!2146 = !DILocation(line: 169, column: 936, scope: !2141)
!2147 = !DILocation(line: 169, column: 916, scope: !2141)
!2148 = !DILocation(line: 169, column: 915, scope: !2141)
!2149 = !DILocation(line: 169, column: 962, scope: !2141)
!2150 = !DILocation(line: 169, column: 982, scope: !2116)
!2151 = !DILocation(line: 169, column: 984, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2153, file: !368, discriminator: 34)
!2153 = !DILexicalBlockFile(scope: !2154, file: !368, discriminator: 33)
!2154 = !DILexicalBlockFile(scope: !2110, file: !368, discriminator: 32)
!2155 = !DILocation(line: 169, column: 984, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2110, file: !368, discriminator: 35)
!2157 = !DILocation(line: 169, column: 997, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !568, file: !368, discriminator: 36)
!2159 = !DILocation(line: 169, column: 1005, scope: !568)
!2160 = !DILocation(line: 169, column: 1009, scope: !568)
!2161 = !DILocation(line: 169, column: 1015, scope: !562)
!2162 = !DILocation(line: 169, column: 1015, scope: !1842)
!2163 = !DILocation(line: 169, column: 1015, scope: !568)
!2164 = !DILocation(line: 169, column: 1015, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !568, file: !368, discriminator: 38)
!2166 = !DILocation(line: 169, column: 1028, scope: !1848)
!2167 = !DILocation(line: 170, column: 22, scope: !562)
!2168 = !DILocation(line: 170, column: 27, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !571, file: !368, discriminator: 1)
!2170 = !DILocation(line: 170, column: 35, scope: !571)
!2171 = !DILocation(line: 170, column: 51, scope: !571)
!2172 = !DILocation(line: 170, column: 59, scope: !571)
!2173 = !DILocation(line: 170, column: 85, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !571, file: !368, line: 170, column: 79)
!2175 = !DILocation(line: 170, column: 90, scope: !2174)
!2176 = !DILocation(line: 170, column: 83, scope: !2174)
!2177 = !DILocation(line: 170, column: 105, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 2)
!2179 = !DILocation(line: 170, column: 83, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 3)
!2181 = !DILocation(line: 170, column: 127, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !2183, file: !368, discriminator: 5)
!2183 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 4)
!2184 = !DILocation(line: 170, column: 136, scope: !2174)
!2185 = !DILocation(line: 170, column: 123, scope: !2174)
!2186 = !DILocation(line: 170, column: 144, scope: !2174)
!2187 = !DILocation(line: 170, column: 155, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 6)
!2189 = !DILocation(line: 170, column: 164, scope: !2174)
!2190 = !DILocation(line: 170, column: 172, scope: !2174)
!2191 = !DILocation(line: 170, column: 181, scope: !2174)
!2192 = !DILocation(line: 170, column: 169, scope: !2174)
!2193 = !DILocation(line: 170, column: 151, scope: !2174)
!2194 = !DILocation(line: 170, column: 80, scope: !2174)
!2195 = !DILocation(line: 170, column: 80, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 8)
!2197 = !DILocation(line: 170, column: 244, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !368, discriminator: 9)
!2199 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 7)
!2200 = !DILocation(line: 170, column: 262, scope: !2174)
!2201 = !DILocation(line: 170, column: 267, scope: !2174)
!2202 = !DILocation(line: 170, column: 260, scope: !2174)
!2203 = !DILocation(line: 170, column: 282, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 11)
!2205 = !DILocation(line: 170, column: 260, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 12)
!2207 = !DILocation(line: 170, column: 210, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2209, file: !368, discriminator: 14)
!2209 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 13)
!2210 = !DILocation(line: 170, column: 303, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !368, discriminator: 15)
!2212 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 10)
!2213 = !DILocation(line: 170, column: 79, scope: !571)
!2214 = !DILocation(line: 170, column: 308, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2174, file: !368, discriminator: 16)
!2216 = !DILocation(line: 170, column: 308, scope: !2174)
!2217 = !DILocation(line: 170, column: 321, scope: !2218)
!2218 = !DILexicalBlockFile(scope: !571, file: !368, discriminator: 17)
!2219 = !DILocation(line: 170, column: 335, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !368, discriminator: 19)
!2221 = distinct !DILexicalBlock(scope: !571, file: !368, line: 170, column: 324)
!2222 = !DILocation(line: 170, column: 343, scope: !2221)
!2223 = !DILocation(line: 170, column: 326, scope: !2221)
!2224 = !DILocation(line: 170, column: 436, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2226, file: !368, discriminator: 21)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !368, line: 170, column: 379)
!2227 = distinct !DILexicalBlock(scope: !2221, file: !368, line: 170, column: 350)
!2228 = !DILocation(line: 170, column: 426, scope: !2226)
!2229 = !DILocation(line: 170, column: 410, scope: !2226)
!2230 = !DILocation(line: 170, column: 418, scope: !2226)
!2231 = !DILocation(line: 170, column: 394, scope: !2226)
!2232 = !DILocation(line: 170, column: 402, scope: !2226)
!2233 = !DILocation(line: 170, column: 381, scope: !2226)
!2234 = !DILocation(line: 170, column: 424, scope: !2226)
!2235 = !DILocation(line: 170, column: 442, scope: !2226)
!2236 = !DILocation(line: 170, column: 535, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2238, file: !368, discriminator: 22)
!2238 = distinct !DILexicalBlock(scope: !2227, file: !368, line: 170, column: 478)
!2239 = !DILocation(line: 170, column: 525, scope: !2238)
!2240 = !DILocation(line: 170, column: 509, scope: !2238)
!2241 = !DILocation(line: 170, column: 517, scope: !2238)
!2242 = !DILocation(line: 170, column: 493, scope: !2238)
!2243 = !DILocation(line: 170, column: 501, scope: !2238)
!2244 = !DILocation(line: 170, column: 481, scope: !2238)
!2245 = !DILocation(line: 170, column: 480, scope: !2238)
!2246 = !DILocation(line: 170, column: 523, scope: !2238)
!2247 = !DILocation(line: 170, column: 541, scope: !2238)
!2248 = !DILocation(line: 170, column: 630, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !2250, file: !368, discriminator: 20)
!2250 = distinct !DILexicalBlock(scope: !2227, file: !368, line: 170, column: 559)
!2251 = !DILocation(line: 170, column: 604, scope: !2250)
!2252 = !DILocation(line: 170, column: 612, scope: !2250)
!2253 = !DILocation(line: 170, column: 588, scope: !2250)
!2254 = !DILocation(line: 170, column: 596, scope: !2250)
!2255 = !DILocation(line: 170, column: 576, scope: !2250)
!2256 = !DILocation(line: 170, column: 575, scope: !2250)
!2257 = !DILocation(line: 170, column: 618, scope: !2250)
!2258 = !DILocation(line: 170, column: 638, scope: !2227)
!2259 = !DILocation(line: 170, column: 640, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !368, discriminator: 25)
!2261 = !DILexicalBlockFile(scope: !2262, file: !368, discriminator: 24)
!2262 = !DILexicalBlockFile(scope: !2221, file: !368, discriminator: 23)
!2263 = !DILocation(line: 170, column: 640, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2221, file: !368, discriminator: 26)
!2265 = !DILocation(line: 170, column: 653, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !571, file: !368, discriminator: 27)
!2267 = !DILocation(line: 170, column: 667, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !368, discriminator: 28)
!2269 = distinct !DILexicalBlock(scope: !571, file: !368, line: 170, column: 656)
!2270 = !DILocation(line: 170, column: 675, scope: !2269)
!2271 = !DILocation(line: 170, column: 658, scope: !2269)
!2272 = !DILocation(line: 170, column: 772, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2274, file: !368, discriminator: 30)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !368, line: 170, column: 711)
!2275 = distinct !DILexicalBlock(scope: !2269, file: !368, line: 170, column: 682)
!2276 = !DILocation(line: 170, column: 762, scope: !2274)
!2277 = !DILocation(line: 170, column: 742, scope: !2274)
!2278 = !DILocation(line: 170, column: 750, scope: !2274)
!2279 = !DILocation(line: 170, column: 754, scope: !2274)
!2280 = !DILocation(line: 170, column: 726, scope: !2274)
!2281 = !DILocation(line: 170, column: 734, scope: !2274)
!2282 = !DILocation(line: 170, column: 713, scope: !2274)
!2283 = !DILocation(line: 170, column: 760, scope: !2274)
!2284 = !DILocation(line: 170, column: 778, scope: !2274)
!2285 = !DILocation(line: 170, column: 875, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2287, file: !368, discriminator: 31)
!2287 = distinct !DILexicalBlock(scope: !2275, file: !368, line: 170, column: 814)
!2288 = !DILocation(line: 170, column: 865, scope: !2287)
!2289 = !DILocation(line: 170, column: 845, scope: !2287)
!2290 = !DILocation(line: 170, column: 853, scope: !2287)
!2291 = !DILocation(line: 170, column: 857, scope: !2287)
!2292 = !DILocation(line: 170, column: 829, scope: !2287)
!2293 = !DILocation(line: 170, column: 837, scope: !2287)
!2294 = !DILocation(line: 170, column: 817, scope: !2287)
!2295 = !DILocation(line: 170, column: 816, scope: !2287)
!2296 = !DILocation(line: 170, column: 863, scope: !2287)
!2297 = !DILocation(line: 170, column: 881, scope: !2287)
!2298 = !DILocation(line: 170, column: 974, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2300, file: !368, discriminator: 29)
!2300 = distinct !DILexicalBlock(scope: !2275, file: !368, line: 170, column: 899)
!2301 = !DILocation(line: 170, column: 944, scope: !2300)
!2302 = !DILocation(line: 170, column: 952, scope: !2300)
!2303 = !DILocation(line: 170, column: 956, scope: !2300)
!2304 = !DILocation(line: 170, column: 928, scope: !2300)
!2305 = !DILocation(line: 170, column: 936, scope: !2300)
!2306 = !DILocation(line: 170, column: 916, scope: !2300)
!2307 = !DILocation(line: 170, column: 915, scope: !2300)
!2308 = !DILocation(line: 170, column: 962, scope: !2300)
!2309 = !DILocation(line: 170, column: 982, scope: !2275)
!2310 = !DILocation(line: 170, column: 984, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !2312, file: !368, discriminator: 34)
!2312 = !DILexicalBlockFile(scope: !2313, file: !368, discriminator: 33)
!2313 = !DILexicalBlockFile(scope: !2269, file: !368, discriminator: 32)
!2314 = !DILocation(line: 170, column: 984, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2269, file: !368, discriminator: 35)
!2316 = !DILocation(line: 170, column: 997, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !571, file: !368, discriminator: 36)
!2318 = !DILocation(line: 170, column: 1005, scope: !571)
!2319 = !DILocation(line: 170, column: 1009, scope: !571)
!2320 = !DILocation(line: 170, column: 1015, scope: !562)
!2321 = !DILocation(line: 170, column: 1015, scope: !1842)
!2322 = !DILocation(line: 170, column: 1015, scope: !571)
!2323 = !DILocation(line: 170, column: 1015, scope: !2324)
!2324 = !DILexicalBlockFile(scope: !571, file: !368, discriminator: 38)
!2325 = !DILocation(line: 170, column: 1028, scope: !1848)
!2326 = !DILocation(line: 171, column: 18, scope: !562)
!2327 = !DILocation(line: 174, column: 9, scope: !554)
!2328 = !DILocation(line: 174, column: 16, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !2330, file: !368, discriminator: 1)
!2330 = distinct !DILexicalBlock(scope: !554, file: !368, line: 174, column: 12)
!2331 = !DILocation(line: 174, column: 23, scope: !2330)
!2332 = !DILocation(line: 174, column: 40, scope: !2330)
!2333 = !DILocation(line: 174, column: 48, scope: !2330)
!2334 = !DILocation(line: 174, column: 48, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2330, file: !368, discriminator: 2)
!2336 = !DILocation(line: 175, column: 5, scope: !546)
!2337 = !DILocation(line: 175, column: 5, scope: !1361)
!2338 = !DILocation(line: 177, column: 5, scope: !546)
!2339 = !DILocation(line: 178, column: 1, scope: !546)
!2340 = !DILocation(line: 356, column: 23, scope: !479)
!2341 = !DILocation(line: 356, column: 44, scope: !479)
!2342 = !DILocation(line: 357, column: 24, scope: !479)
!2343 = !DILocation(line: 357, column: 45, scope: !479)
!2344 = !DILocation(line: 359, column: 5, scope: !479)
!2345 = !DILocation(line: 359, column: 15, scope: !479)
!2346 = !DILocation(line: 359, column: 19, scope: !479)
!2347 = !DILocation(line: 361, column: 33, scope: !479)
!2348 = !DILocation(line: 361, column: 11, scope: !479)
!2349 = !DILocation(line: 361, column: 9, scope: !479)
!2350 = !DILocation(line: 362, column: 9, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !479, file: !374, line: 362, column: 9)
!2352 = !DILocation(line: 362, column: 13, scope: !2351)
!2353 = !DILocation(line: 362, column: 9, scope: !479)
!2354 = !DILocation(line: 363, column: 9, scope: !2351)
!2355 = !DILocation(line: 365, column: 32, scope: !479)
!2356 = !DILocation(line: 365, column: 44, scope: !479)
!2357 = !DILocation(line: 365, column: 9, scope: !479)
!2358 = !DILocation(line: 365, column: 7, scope: !479)
!2359 = !DILocation(line: 366, column: 9, scope: !492)
!2360 = !DILocation(line: 366, column: 11, scope: !492)
!2361 = !DILocation(line: 366, column: 9, scope: !479)
!2362 = !DILocation(line: 367, column: 9, scope: !492)
!2363 = !DILocation(line: 368, column: 33, scope: !491)
!2364 = !DILocation(line: 368, column: 15, scope: !491)
!2365 = !DILocation(line: 368, column: 14, scope: !492)
!2366 = !DILocation(line: 369, column: 25, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !491, file: !374, line: 368, column: 63)
!2368 = !DILocation(line: 369, column: 9, scope: !2367)
!2369 = !DILocation(line: 371, column: 9, scope: !2367)
!2370 = !DILocation(line: 374, column: 9, scope: !490)
!2371 = !DILocation(line: 374, column: 26, scope: !490)
!2372 = !DILocation(line: 375, column: 36, scope: !490)
!2373 = !DILocation(line: 375, column: 15, scope: !490)
!2374 = !DILocation(line: 375, column: 13, scope: !490)
!2375 = !DILocation(line: 376, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !490, file: !374, line: 376, column: 13)
!2377 = !DILocation(line: 376, column: 20, scope: !2376)
!2378 = !DILocation(line: 376, column: 13, scope: !490)
!2379 = !DILocation(line: 377, column: 23, scope: !2376)
!2380 = !DILocation(line: 377, column: 28, scope: !2376)
!2381 = !{!697, !670, i64 8}
!2382 = !DILocation(line: 377, column: 14, scope: !2376)
!2383 = !DILocation(line: 377, column: 21, scope: !2376)
!2384 = !DILocation(line: 377, column: 13, scope: !2376)
!2385 = !DILocation(line: 378, column: 13, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !490, file: !374, line: 378, column: 13)
!2387 = !DILocation(line: 378, column: 20, scope: !2386)
!2388 = !DILocation(line: 378, column: 13, scope: !490)
!2389 = !DILocation(line: 379, column: 23, scope: !2386)
!2390 = !DILocation(line: 379, column: 28, scope: !2386)
!2391 = !{!697, !670, i64 16}
!2392 = !DILocation(line: 379, column: 14, scope: !2386)
!2393 = !DILocation(line: 379, column: 21, scope: !2386)
!2394 = !DILocation(line: 379, column: 13, scope: !2386)
!2395 = !DILocation(line: 380, column: 9, scope: !490)
!2396 = !DILocation(line: 380, column: 14, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !519, file: !374, discriminator: 1)
!2398 = !DILocation(line: 380, column: 24, scope: !519)
!2399 = !DILocation(line: 380, column: 54, scope: !519)
!2400 = !DILocation(line: 380, column: 66, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !519, file: !374, line: 380, column: 63)
!2402 = !DILocation(line: 380, column: 83, scope: !2401)
!2403 = !DILocation(line: 380, column: 63, scope: !2401)
!2404 = !DILocation(line: 380, column: 93, scope: !2401)
!2405 = !DILocation(line: 380, column: 63, scope: !519)
!2406 = !DILocation(line: 380, column: 63, scope: !2407)
!2407 = !DILexicalBlockFile(scope: !519, file: !374, discriminator: 2)
!2408 = !DILocation(line: 380, column: 124, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2401, file: !374, discriminator: 3)
!2410 = !DILocation(line: 380, column: 142, scope: !2401)
!2411 = !DILocation(line: 380, column: 152, scope: !2401)
!2412 = !DILocation(line: 380, column: 177, scope: !2401)
!2413 = !DILocation(line: 380, column: 108, scope: !2401)
!2414 = !DILocation(line: 380, column: 196, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !490, file: !374, discriminator: 4)
!2416 = !DILocation(line: 380, column: 196, scope: !519)
!2417 = !DILocation(line: 380, column: 196, scope: !2418)
!2418 = !DILexicalBlockFile(scope: !519, file: !374, discriminator: 5)
!2419 = !DILocation(line: 381, column: 5, scope: !491)
!2420 = !DILocation(line: 383, column: 5, scope: !479)
!2421 = !DILocation(line: 383, column: 10, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !521, file: !374, discriminator: 1)
!2423 = !DILocation(line: 383, column: 20, scope: !521)
!2424 = !DILocation(line: 383, column: 50, scope: !521)
!2425 = !DILocation(line: 383, column: 64, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !521, file: !374, line: 383, column: 61)
!2427 = !DILocation(line: 383, column: 81, scope: !2426)
!2428 = !DILocation(line: 383, column: 61, scope: !2426)
!2429 = !DILocation(line: 383, column: 91, scope: !2426)
!2430 = !DILocation(line: 383, column: 61, scope: !521)
!2431 = !DILocation(line: 383, column: 61, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !521, file: !374, discriminator: 2)
!2433 = !DILocation(line: 383, column: 122, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2426, file: !374, discriminator: 3)
!2435 = !DILocation(line: 383, column: 140, scope: !2426)
!2436 = !DILocation(line: 383, column: 150, scope: !2426)
!2437 = !DILocation(line: 383, column: 175, scope: !2426)
!2438 = !DILocation(line: 383, column: 106, scope: !2426)
!2439 = !DILocation(line: 383, column: 194, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !479, file: !374, discriminator: 4)
!2441 = !DILocation(line: 383, column: 194, scope: !521)
!2442 = !DILocation(line: 383, column: 194, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !521, file: !374, discriminator: 5)
!2444 = !DILocation(line: 384, column: 5, scope: !479)
!2445 = !DILocation(line: 387, column: 5, scope: !479)
!2446 = !DILocation(line: 387, column: 10, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !523, file: !374, discriminator: 1)
!2448 = !DILocation(line: 387, column: 20, scope: !523)
!2449 = !DILocation(line: 387, column: 50, scope: !523)
!2450 = !DILocation(line: 387, column: 64, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !523, file: !374, line: 387, column: 61)
!2452 = !DILocation(line: 387, column: 81, scope: !2451)
!2453 = !DILocation(line: 387, column: 61, scope: !2451)
!2454 = !DILocation(line: 387, column: 91, scope: !2451)
!2455 = !DILocation(line: 387, column: 61, scope: !523)
!2456 = !DILocation(line: 387, column: 61, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !523, file: !374, discriminator: 2)
!2458 = !DILocation(line: 387, column: 122, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2451, file: !374, discriminator: 3)
!2460 = !DILocation(line: 387, column: 140, scope: !2451)
!2461 = !DILocation(line: 387, column: 150, scope: !2451)
!2462 = !DILocation(line: 387, column: 175, scope: !2451)
!2463 = !DILocation(line: 387, column: 106, scope: !2451)
!2464 = !DILocation(line: 387, column: 194, scope: !2440)
!2465 = !DILocation(line: 387, column: 194, scope: !523)
!2466 = !DILocation(line: 387, column: 194, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !523, file: !374, discriminator: 5)
!2468 = !DILocation(line: 388, column: 5, scope: !479)
!2469 = !DILocation(line: 389, column: 1, scope: !479)
