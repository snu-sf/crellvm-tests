; ModuleID = 'programs_new/Python-new/_codecs_tw.bc.ll'
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
@.str = private unnamed_addr constant [11 x i8] c"_codecs_tw\00", align 1
@__methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @getcodec, i32 8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"getcodec\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"encoding name must be a string.\00", align 1
@codec_list = internal global %struct.MultibyteCodec* getelementptr inbounds ([3 x %struct.MultibyteCodec], [3 x %struct.MultibyteCodec]* @_codec_list, i32 0, i32 0), align 8
@PyExc_LookupError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"no such codec is supported.\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"multibytecodec.__map_*\00", align 1
@getmultibytecodec.cofunc = internal global %struct._object* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"_multibytecodec\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"__create_codec\00", align 1
@_codec_list = internal constant [3 x %struct.MultibyteCodec] [%struct.MultibyteCodec { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null, i32 (i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @big5_encode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @big5_decode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }, %struct.MultibyteCodec { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* null, i32 (i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @cp950_encode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @cp950_decode, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }, %struct.MultibyteCodec { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* null, i32 (i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* null, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* null, i32 (%union.MultibyteCodec_State*, i8*)* null, i64 (%union.MultibyteCodec_State*, i8*)* null }], align 16
@.str.8 = private unnamed_addr constant [5 x i8] c"big5\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"cp950\00", align 1
@big5_encmap = internal constant [256 x %struct.unim_index] [%struct.unim_index { i16* getelementptr inbounds ([21764 x i16], [21764 x i16]* @__big5_encmap, i32 0, i32 0), i8 -94, i8 -9 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 172) to i16*), i8 -57, i8 -39 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 210) to i16*), i8 -111, i8 -55 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 324) to i16*), i8 1, i8 81 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 486) to i16*), i8 19, i8 62 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 574) to i16*), i8 3, i8 -103 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 876) to i16*), i8 26, i8 -65 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 1208) to i16*), i8 96, i8 125 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 1268) to i16*), i8 0, i8 -27 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 1728) to i16*), i8 5, i8 66 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 1852) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 2362) to i16*), i8 5, i8 41 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 2436) to i16*), i8 -93, i8 -93 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 2438) to i16*), i8 -114, i8 -43 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 2582) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 3094) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 3604) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 4116) to i16*), i8 0, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 4624) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 5136) to i16*), i8 5, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 5632) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 6142) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 6652) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 7164) to i16*), i8 1, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 7670) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 8182) to i16*), i8 3, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 8688) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 9200) to i16*), i8 1, i8 -6 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 9700) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 10210) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 10722) to i16*), i8 2, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 11230) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 11740) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 12252) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 12764) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 13276) to i16*), i8 0, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 13776) to i16*), i8 6, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 14276) to i16*), i8 0, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 14784) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 15296) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 15808) to i16*), i8 18, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 16280) to i16*), i8 4, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 16784) to i16*), i8 0, i8 -4 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 17290) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 17802) to i16*), i8 0, i8 -7 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 18302) to i16*), i8 0, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 18810) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 19322) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 19834) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 20346) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 20858) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 21368) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 21880) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 22392) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 22904) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 23414) to i16*), i8 1, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 23920) to i16*), i8 2, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 24428) to i16*), i8 1, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 24930) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 25442) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 25954) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 26464) to i16*), i8 0, i8 -5 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 26968) to i16*), i8 3, i8 -100 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 27276) to i16*), i8 54, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 27680) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 28190) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 28702) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 29212) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 29724) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 30234) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 30746) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 31256) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 31768) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 32278) to i16*), i8 1, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 32788) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 33300) to i16*), i8 0, i8 -97 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 33620) to i16*), i8 55, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 34020) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 34532) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 35044) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 35556) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 36068) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 36580) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 37092) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 37604) to i16*), i8 0, i8 -125 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 37868) to i16*), i8 119, i8 -27 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 38090) to i16*), i8 28, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 38546) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 39058) to i16*), i8 0, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 39568) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 40080) to i16*), i8 1, i8 -2 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 40588) to i16*), i8 1, i8 -3 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 41094) to i16*), i8 5, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 41596) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 42108) to i16*), i8 0, i8 -1 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 42620) to i16*), i8 0, i8 -92 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 42950) to i16*), i8 12, i8 13 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 42954) to i16*), i8 48, i8 107 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([21764 x i16]* @__big5_encmap to i8*), i64 43074) to i16*), i8 1, i8 -29 }], align 16
@__big5_encmap = internal constant [21764 x i16] [i16 -23994, i16 -23993, i16 -1, i16 -23996, i16 -1, i16 -24143, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23976, i16 -24109, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24240, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24111, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24110, i16 -23618, i16 -1, i16 -23620, i16 -23619, i16 -23617, i16 -1, i16 -24123, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23621, i16 -23740, i16 -23739, i16 -23738, i16 -23737, i16 -23736, i16 -23735, i16 -23734, i16 -23733, i16 -23732, i16 -23731, i16 -23730, i16 -23729, i16 -23728, i16 -23727, i16 -23726, i16 -23725, i16 -23724, i16 -1, i16 -23723, i16 -23722, i16 -23721, i16 -23720, i16 -23719, i16 -23718, i16 -23717, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23716, i16 -23715, i16 -23714, i16 -23713, i16 -23712, i16 -23711, i16 -23710, i16 -23709, i16 -23708, i16 -23707, i16 -23706, i16 -23705, i16 -23704, i16 -23703, i16 -23702, i16 -23701, i16 -23700, i16 -1, i16 -23699, i16 -23698, i16 -23697, i16 -23696, i16 -23695, i16 -23694, i16 -23693, i16 -14413, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14415, i16 -14414, i16 -14412, i16 -14411, i16 -14410, i16 -14409, i16 -14408, i16 -14407, i16 -14406, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14405, i16 -14404, i16 -14403, i16 -14402, i16 -14401, i16 -14400, i16 -14399, i16 -14398, i16 -14397, i16 -14396, i16 -14395, i16 -14394, i16 -14393, i16 -14392, i16 -14391, i16 -14390, i16 -14389, i16 -14388, i16 -14387, i16 -14385, i16 -14384, i16 -14383, i16 -14382, i16 -14381, i16 -14380, i16 -14379, i16 -14378, i16 -14377, i16 -14376, i16 -14375, i16 -14374, i16 -14373, i16 -14372, i16 -14371, i16 -14370, i16 -14369, i16 -14368, i16 -14367, i16 -14366, i16 -14365, i16 -14364, i16 -14363, i16 -14362, i16 -14361, i16 -14360, i16 -1, i16 -14386, i16 -24234, i16 -24232, i16 -1, i16 -1, i16 -1, i16 -24155, i16 -24154, i16 -1, i16 -1, i16 -24153, i16 -24152, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24251, i16 -1, i16 -1, i16 -24244, i16 -24245, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24148, i16 -1, i16 -1, i16 -24149, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24144, i16 -1, i16 -1, i16 -24126, i16 -23990, i16 -1, i16 -24127, i16 -1, i16 -1, i16 -1, i16 -23989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23879, i16 -23878, i16 -23877, i16 -23876, i16 -23875, i16 -23874, i16 -23873, i16 -23872, i16 -23871, i16 -23870, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24074, i16 -24076, i16 -24073, i16 -24075, i16 -1, i16 -1, i16 -24072, i16 -24071, i16 -24069, i16 -24070, i16 -24108, i16 -1, i16 -1, i16 -1, i16 -24101, i16 -24088, i16 -24089, i16 -1, i16 -1, i16 -24067, i16 -1, i16 -24068, i16 -1, i16 -1, i16 -1, i16 -24092, i16 -24091, i16 -24084, i16 -1, i16 -1, i16 -24083, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24081, i16 -24082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24100, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24102, i16 -24099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24104, i16 -24103, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24087, i16 -14359, i16 -14358, i16 -14357, i16 -14356, i16 -14355, i16 -14354, i16 -14353, i16 -14352, i16 -14351, i16 -14350, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14349, i16 -14348, i16 -14347, i16 -14346, i16 -14345, i16 -14344, i16 -14343, i16 -14342, i16 -14341, i16 -14340, i16 -23945, i16 -1, i16 -23944, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23942, i16 -1, i16 -1, i16 -1, i16 -23941, i16 -1, i16 -1, i16 -1, i16 -23940, i16 -1, i16 -1, i16 -1, i16 -23939, i16 -1, i16 -1, i16 -1, i16 -23947, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23948, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23949, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23950, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23951, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23899, i16 -1, i16 -1, i16 -23897, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23898, i16 -1, i16 -1, i16 -23938, i16 -23903, i16 -23901, i16 -23902, i16 -23892, i16 -23891, i16 -23890, i16 -24230, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23966, i16 -23965, i16 -23964, i16 -23963, i16 -23962, i16 -23961, i16 -23960, i16 -23959, i16 -23952, i16 -23953, i16 -23954, i16 -23955, i16 -23956, i16 -23957, i16 -23958, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23946, i16 -23943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24131, i16 -24132, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24138, i16 -24139, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24129, i16 -24130, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24133, i16 -24134, i16 -1, i16 -1, i16 -1, i16 -24141, i16 -1, i16 -1, i16 -24137, i16 -24140, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23896, i16 -23895, i16 -23893, i16 -23894, i16 -24135, i16 -24136, i16 -1, i16 -1, i16 -24077, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24080, i16 -24078, i16 -24079, i16 -24256, i16 -24254, i16 -24253, i16 -24142, i16 -1, i16 -14684, i16 -1, i16 -1, i16 -24207, i16 -24206, i16 -24211, i16 -24210, i16 -24203, i16 -24202, i16 -24199, i16 -24198, i16 -24215, i16 -24214, i16 -23995, i16 -1, i16 -24219, i16 -24218, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24151, i16 -24150, i16 -1, i16 -1, i16 -23869, i16 -23868, i16 -23867, i16 -23866, i16 -23865, i16 -23864, i16 -23863, i16 -23862, i16 -23861, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14683, i16 -14682, i16 -14681, i16 -14680, i16 -14679, i16 -14678, i16 -14677, i16 -14676, i16 -14675, i16 -14674, i16 -14673, i16 -14672, i16 -14671, i16 -14670, i16 -14669, i16 -14668, i16 -14667, i16 -14666, i16 -14665, i16 -14664, i16 -14663, i16 -14662, i16 -14661, i16 -14660, i16 -14659, i16 -14658, i16 -14657, i16 -14656, i16 -14655, i16 -14654, i16 -14653, i16 -14652, i16 -14651, i16 -14650, i16 -14649, i16 -14648, i16 -14647, i16 -14646, i16 -14645, i16 -14644, i16 -14643, i16 -14642, i16 -14641, i16 -14640, i16 -14639, i16 -14638, i16 -14637, i16 -14636, i16 -14635, i16 -14634, i16 -14633, i16 -14632, i16 -14631, i16 -14630, i16 -14629, i16 -14628, i16 -14627, i16 -14626, i16 -14625, i16 -14624, i16 -14623, i16 -14622, i16 -14621, i16 -14620, i16 -14619, i16 -14618, i16 -14617, i16 -14616, i16 -14615, i16 -14614, i16 -14613, i16 -14612, i16 -14611, i16 -14610, i16 -14609, i16 -14608, i16 -14607, i16 -14606, i16 -14605, i16 -14604, i16 -14603, i16 -14602, i16 -14601, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14686, i16 -14685, i16 -1, i16 -1, i16 -14600, i16 -14599, i16 -14598, i16 -14597, i16 -14596, i16 -14595, i16 -14594, i16 -14528, i16 -14527, i16 -14526, i16 -14525, i16 -14524, i16 -14523, i16 -14522, i16 -14521, i16 -14520, i16 -14519, i16 -14518, i16 -14517, i16 -14516, i16 -14515, i16 -14514, i16 -14513, i16 -14512, i16 -14511, i16 -14510, i16 -14509, i16 -14508, i16 -14507, i16 -14506, i16 -14505, i16 -14504, i16 -14503, i16 -14502, i16 -14501, i16 -14500, i16 -14499, i16 -14498, i16 -14497, i16 -14496, i16 -14495, i16 -14494, i16 -14493, i16 -14492, i16 -14491, i16 -14490, i16 -14489, i16 -14488, i16 -14487, i16 -14486, i16 -14485, i16 -14484, i16 -14483, i16 -14482, i16 -14481, i16 -14480, i16 -14479, i16 -14478, i16 -14477, i16 -14476, i16 -14475, i16 -14474, i16 -14473, i16 -14472, i16 -14471, i16 -14470, i16 -14469, i16 -14468, i16 -14467, i16 -14466, i16 -14431, i16 -14430, i16 -14429, i16 -14428, i16 -14427, i16 -14426, i16 -14425, i16 -14424, i16 -14423, i16 -14422, i16 -14421, i16 -14420, i16 -14419, i16 -14418, i16 -14417, i16 -14416, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14687, i16 -23692, i16 -23691, i16 -23690, i16 -23689, i16 -23688, i16 -23687, i16 -23686, i16 -23685, i16 -23684, i16 -23683, i16 -23682, i16 -23647, i16 -23646, i16 -23645, i16 -23644, i16 -23643, i16 -23642, i16 -23641, i16 -23640, i16 -23639, i16 -23638, i16 -23637, i16 -23636, i16 -23635, i16 -23634, i16 -23633, i16 -23632, i16 -23631, i16 -23630, i16 -23629, i16 -23628, i16 -23627, i16 -23626, i16 -23625, i16 -23624, i16 -23623, i16 -23622, i16 -24128, i16 -23979, i16 -23978, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23984, i16 -23983, i16 -23982, i16 -1, i16 -1, i16 -23980, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23977, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23981, i16 -1, i16 -1, i16 -24085, i16 -24086, i16 -1, i16 -1, i16 -23985, i16 -23488, i16 -23486, i16 -1, i16 -23485, i16 -1, i16 -1, i16 -1, i16 -14011, i16 -23466, i16 -23468, i16 -23465, i16 -23467, i16 -14010, i16 -23389, i16 -14001, i16 -14003, i16 -23390, i16 -23391, i16 -1, i16 -1, i16 -23230, i16 -23231, i16 -23232, i16 -1, i16 -23229, i16 -23298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23072, i16 -23071, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22333, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23464, i16 -1, i16 -23388, i16 -14000, i16 -1, i16 -23387, i16 -13981, i16 -22806, i16 -13391, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23463, i16 -23386, i16 -1, i16 -23228, i16 -13980, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14016, i16 -23484, i16 -1, i16 -23461, i16 -1, i16 -14009, i16 -23460, i16 -1, i16 -1, i16 -23385, i16 -1, i16 -23227, i16 -23225, i16 -23226, i16 -1, i16 -1, i16 -23070, i16 -23069, i16 -1, i16 -1, i16 -22332, i16 -1, i16 -21060, i16 -23487, i16 -1, i16 -1, i16 -14015, i16 -23483, i16 -23458, i16 -23459, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23068, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20306, i16 -11189, i16 -1, i16 -1, i16 -18749, i16 -9039, i16 -9038, i16 -1, i16 -23482, i16 -1, i16 -23383, i16 -1, i16 -1, i16 -22330, i16 -23481, i16 -14008, i16 -23457, i16 -1, i16 -1, i16 -23382, i16 -23380, i16 -13999, i16 -23379, i16 -23381, i16 -1, i16 -1, i16 -1, i16 -23067, i16 -1, i16 -22329, i16 -1, i16 -1, i16 -22328, i16 -21691, i16 -1, i16 -23456, i16 -23378, i16 -1, i16 -23066, i16 -23064, i16 -23065, i16 -1, i16 -22805, i16 -1, i16 -1, i16 -22327, i16 -22326, i16 -21690, i16 -21689, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21059, i16 -1, i16 -1, i16 -9037, i16 -1, i16 -1, i16 -2346, i16 -23480, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23376, i16 -23377, i16 -13998, i16 -23375, i16 -23369, i16 -1, i16 -23374, i16 -23373, i16 -13996, i16 -13997, i16 -23371, i16 -23370, i16 -1, i16 -23372, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23222, i16 -23221, i16 -23220, i16 -23219, i16 -23223, i16 -23216, i16 -13974, i16 -1, i16 -13978, i16 -13975, i16 -23215, i16 -23199, i16 -1, i16 -13976, i16 -1, i16 -23218, i16 -23217, i16 -23224, i16 -1, i16 -1, i16 -13979, i16 -13977, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23051, i16 -13904, i16 -23054, i16 -23050, i16 -13894, i16 -13906, i16 -23053, i16 -13902, i16 -1, i16 -1, i16 -1, i16 -23052, i16 -1, i16 -23049, i16 -1, i16 -23063, i16 -13903, i16 -23048, i16 -13899, i16 -1, i16 -13895, i16 -13898, i16 -1, i16 -1, i16 -13901, i16 -23062, i16 -23060, i16 -23047, i16 -1, i16 -23058, i16 -13909, i16 -23055, i16 -23057, i16 -23056, i16 -13893, i16 -13896, i16 -13905, i16 -23059, i16 -1, i16 -1, i16 -13908, i16 -23061, i16 -1, i16 -1, i16 -1, i16 -13900, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13897, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13907, i16 -13722, i16 -1, i16 -22718, i16 -22796, i16 -1, i16 -1, i16 -13721, i16 -22799, i16 -1, i16 -22716, i16 -1, i16 -22791, i16 -1, i16 -22792, i16 -13733, i16 -22788, i16 -22793, i16 -13728, i16 -13720, i16 -1, i16 -13724, i16 -1, i16 -22790, i16 -1, i16 -1, i16 -22787, i16 -22802, i16 -22713, i16 -13731, i16 -1, i16 -1, i16 -13379, i16 -22804, i16 -22717, i16 -22803, i16 -22795, i16 -22794, i16 -13726, i16 -13730, i16 -22789, i16 -22797, i16 -13734, i16 -22801, i16 -13723, i16 -22715, i16 -22712, i16 -22798, i16 -22720, i16 -22714, i16 -22800, i16 -13725, i16 -22719, i16 -13719, i16 -13732, i16 -22786, i16 -13729, i16 -1, i16 -1, i16 -13727, i16 -1, i16 -22312, i16 -13377, i16 -13365, i16 -22320, i16 -1, i16 -13364, i16 -22325, i16 -22315, i16 -1, i16 -1, i16 -22322, i16 -13383, i16 -22314, i16 -13384, i16 -13380, i16 -13373, i16 -13375, i16 -22306, i16 -22311, i16 -13389, i16 -13387, i16 -22309, i16 -22321, i16 -13386, i16 -13374, i16 -13367, i16 -22316, i16 -13381, i16 -13388, i16 -22317, i16 -13385, i16 -22313, i16 -13382, i16 -1, i16 -22318, i16 -1, i16 -22323, i16 -1, i16 -22308, i16 -13372, i16 -22307, i16 -13368, i16 -1, i16 -13370, i16 -13366, i16 -22310, i16 -13378, i16 -13390, i16 -1, i16 -13376, i16 -22319, i16 -13371, i16 -22324, i16 -13369, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21674, i16 -21686, i16 -1, i16 -1, i16 -12832, i16 -12824, i16 -1, i16 -21687, i16 -21679, i16 -21667, i16 -1, i16 -12818, i16 -12820, i16 -12825, i16 -1, i16 -1, i16 -1, i16 -21685, i16 -12819, i16 -12829, i16 -21671, i16 -21680, i16 -21672, i16 -12834, i16 -1, i16 -12822, i16 -1, i16 -12831, i16 -21676, i16 -12830, i16 -1, i16 -12835, i16 -21669, i16 -21682, i16 -21673, i16 -21683, i16 -1, i16 -12833, i16 -12828, i16 -1, i16 -12821, i16 -21675, i16 -21678, i16 -12826, i16 -21670, i16 -12823, i16 -12827, i16 -21681, i16 -21668, i16 -21677, i16 -21684, i16 -21688, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12817, i16 -1, i16 -21033, i16 -21055, i16 -1, i16 -21039, i16 -1, i16 -21034, i16 -12080, i16 -12081, i16 -12076, i16 -12075, i16 -21052, i16 -1, i16 -21043, i16 -1, i16 -1, i16 -1, i16 -21030, i16 -21042, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12087, i16 -21049, i16 -12086, i16 -1, i16 -21028, i16 -1, i16 -21037, i16 -21058, i16 -21057, i16 -12067, i16 -20289, i16 -1, i16 -21044, i16 -21045, i16 -12085, i16 -21041, i16 -11173, i16 -21050, i16 -12074, i16 -21035, i16 -21036, i16 -21046, i16 -12082, i16 -12073, i16 -1, i16 -12088, i16 -21047, i16 -12072, i16 -21038, i16 -12084, i16 -21056, i16 -1, i16 -21053, i16 -21054, i16 -12071, i16 -21040, i16 -21051, i16 -21031, i16 -21029, i16 -12077, i16 -21032, i16 -1, i16 -12069, i16 -12083, i16 -12068, i16 -1, i16 -12079, i16 -1, i16 -12070, i16 -1, i16 -12078, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21048, i16 -1, i16 -1, i16 -1, i16 -11165, i16 -11177, i16 -1, i16 -20301, i16 -1, i16 -11172, i16 -11166, i16 -20302, i16 -11179, i16 -20298, i16 -11175, i16 -11182, i16 -20300, i16 -11178, i16 -20295, i16 -20290, i16 -1, i16 -11161, i16 -1, i16 -11183, i16 -1, i16 -20294, i16 -1, i16 -11162, i16 -1, i16 -1, i16 -20299, i16 -11176, i16 -20303, i16 -11181, i16 -11185, i16 -11171, i16 -11184, i16 -11186, i16 -11174, i16 -11168, i16 -11167, i16 -20297, i16 -1, i16 -1, i16 -10149, i16 -11170, i16 -11187, i16 -11169, i16 -1, i16 -20287, i16 -11164, i16 -20288, i16 -11188, i16 -1, i16 -11180, i16 -11163, i16 -20292, i16 -20293, i16 -20296, i16 -20291, i16 -1, i16 -1, i16 -20305, i16 -1, i16 -1, i16 -20304, i16 -1, i16 -1, i16 -19512, i16 -1, i16 -10146, i16 -10153, i16 -1, i16 -19515, i16 -1, i16 -10145, i16 -1, i16 -1, i16 -1, i16 -10155, i16 -10152, i16 -19516, i16 -10151, i16 -1, i16 -1, i16 -19513, i16 -10147, i16 -1, i16 -10157, i16 -10158, i16 -19511, i16 -1, i16 -19510, i16 -19514, i16 -19509, i16 -10159, i16 -10148, i16 -10150, i16 -10156, i16 -1, i16 -1, i16 -1, i16 -19517, i16 -10154, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18742, i16 -18748, i16 -9033, i16 -18739, i16 -9027, i16 -9024, i16 -18746, i16 -18745, i16 -9030, i16 -18747, i16 -9021, i16 -18741, i16 -9020, i16 -1, i16 -9025, i16 -18740, i16 -1, i16 -9036, i16 -18743, i16 -9035, i16 -1, i16 -9026, i16 -9028, i16 -1, i16 -9032, i16 -18744, i16 -9034, i16 -18738, i16 -9029, i16 -9022, i16 -9031, i16 -9023, i16 -1, i16 -1, i16 -17994, i16 -17997, i16 -1, i16 -17996, i16 -1, i16 -7943, i16 -7951, i16 -17998, i16 -18001, i16 -7950, i16 -1, i16 -1, i16 -17999, i16 -7947, i16 -1, i16 -7945, i16 -1, i16 -1, i16 -7938, i16 -1, i16 -1, i16 -7939, i16 -7944, i16 -18002, i16 -7952, i16 -18004, i16 -7949, i16 -17993, i16 -7946, i16 -1, i16 -7942, i16 -18000, i16 -18003, i16 -7940, i16 -7941, i16 -17995, i16 -1, i16 -7948, i16 -1, i16 -17416, i16 -6932, i16 -1, i16 -6935, i16 -17415, i16 -1, i16 -17417, i16 -1, i16 -6928, i16 -6931, i16 -6938, i16 -17418, i16 -1, i16 -17414, i16 -6937, i16 -17419, i16 -17411, i16 -6934, i16 -6933, i16 -17413, i16 -17412, i16 -6927, i16 -6930, i16 -6929, i16 -1, i16 -1, i16 -1, i16 -16726, i16 -5896, i16 -16729, i16 -5899, i16 -16727, i16 -16725, i16 -1, i16 -5898, i16 -16728, i16 -1, i16 -5897, i16 -1, i16 -5900, i16 -1, i16 -1, i16 -16266, i16 -4931, i16 -16265, i16 -4933, i16 -1, i16 -4932, i16 -4934, i16 -4935, i16 -1, i16 -1, i16 -4930, i16 -16267, i16 -1, i16 -1, i16 -4168, i16 -4167, i16 -1, i16 -6936, i16 -4169, i16 -16264, i16 -15521, i16 -3605, i16 -3604, i16 -1, i16 -15145, i16 -15144, i16 -2623, i16 -2624, i16 -14996, i16 -14997, i16 -2096, i16 -1, i16 -23479, i16 -23455, i16 -23367, i16 -1, i16 -23368, i16 -23213, i16 -23214, i16 -23044, i16 -23045, i16 -23043, i16 -23046, i16 -1, i16 -22710, i16 -22711, i16 -22709, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22304, i16 -1, i16 -22305, i16 -22303, i16 -1, i16 -21666, i16 -1, i16 -23975, i16 -12066, i16 -23974, i16 -20286, i16 -23972, i16 -23973, i16 -10144, i16 -1, i16 -23971, i16 -17992, i16 -23970, i16 -1, i16 -23478, i16 -1, i16 -23366, i16 -23042, i16 -22302, i16 -1, i16 -23477, i16 -23363, i16 -23365, i16 -23364, i16 -1, i16 -1, i16 -22976, i16 -1, i16 -1, i16 -1, i16 -22708, i16 -22300, i16 -22301, i16 -22299, i16 -1, i16 -1, i16 -1, i16 -21027, i16 -1, i16 -1, i16 -1, i16 -16724, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14002, i16 -1, i16 -23212, i16 -23211, i16 -1, i16 -1, i16 -22975, i16 -1, i16 -13718, i16 -1, i16 -21664, i16 -21665, i16 -12064, i16 -12065, i16 -20285, i16 -1, i16 -23362, i16 -13995, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13363, i16 -1, i16 -21663, i16 -1, i16 -21024, i16 -1, i16 -21026, i16 -21025, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16723, i16 -1, i16 -23210, i16 -1, i16 -1, i16 -1, i16 -22974, i16 -13892, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22707, i16 -22706, i16 -1, i16 -13717, i16 -1, i16 -1, i16 -13362, i16 -22298, i16 -13361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12062, i16 -12061, i16 -21021, i16 -1, i16 -12060, i16 -1, i16 -12063, i16 -21020, i16 -21022, i16 -21023, i16 -12059, i16 -1, i16 -11160, i16 -1, i16 -1, i16 -1, i16 -10143, i16 -1, i16 -1, i16 -9019, i16 -7872, i16 -1, i16 -1, i16 -1, i16 -17410, i16 -16722, i16 -5895, i16 -1, i16 -23476, i16 -23462, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20284, i16 -19507, i16 -1, i16 -17991, i16 -1, i16 -14014, i16 -23361, i16 -1, i16 -23207, i16 -23209, i16 -23208, i16 -1, i16 -1, i16 -22297, i16 -23475, i16 -23474, i16 -1, i16 -23454, i16 -1, i16 -1, i16 -23360, i16 -23359, i16 -23358, i16 -13890, i16 -23206, i16 -1, i16 -13973, i16 -1, i16 -22970, i16 -1, i16 -13889, i16 -22972, i16 -22971, i16 -13891, i16 -1, i16 -1, i16 -22969, i16 -22973, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13716, i16 -21780, i16 -13715, i16 -1, i16 -1, i16 -13714, i16 -1, i16 -1, i16 -22704, i16 -22705, i16 -1, i16 -1, i16 -22701, i16 -22703, i16 -22702, i16 -1, i16 -1, i16 -1, i16 -22291, i16 -1, i16 -22292, i16 -13356, i16 -13359, i16 -13358, i16 -1, i16 -13360, i16 -22290, i16 -22294, i16 -22295, i16 -1, i16 -22293, i16 -22296, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22289, i16 -1, i16 -21661, i16 -12816, i16 -1, i16 -13357, i16 -21656, i16 -1, i16 -12815, i16 -21660, i16 -21657, i16 -21658, i16 -21659, i16 -21662, i16 -1, i16 -1, i16 -1, i16 -12056, i16 -1, i16 -21017, i16 -12053, i16 -21019, i16 -1, i16 -1, i16 -1, i16 -12057, i16 -21016, i16 -21018, i16 -21015, i16 -12055, i16 -12054, i16 -1, i16 -12058, i16 -12052, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19503, i16 -20283, i16 -11159, i16 -11157, i16 -11158, i16 -11156, i16 -20282, i16 -1, i16 -1, i16 -19506, i16 -1, i16 -19505, i16 -19504, i16 -1, i16 -18736, i16 -9017, i16 -1, i16 -9018, i16 -9016, i16 -9015, i16 -18735, i16 -1, i16 -18737, i16 -7871, i16 -7870, i16 -17989, i16 -17990, i16 -7334, i16 -1, i16 -1, i16 -17344, i16 -17343, i16 -17342, i16 -17340, i16 -6926, i16 -6925, i16 -17341, i16 -1, i16 -1, i16 -1, i16 -16721, i16 -1, i16 -16720, i16 -1, i16 -1, i16 -3603, i16 -2621, i16 -2622, i16 -2095, i16 -1, i16 -23473, i16 -1, i16 -1, i16 -1, i16 -23204, i16 -23205, i16 -1, i16 -1, i16 -22968, i16 -1, i16 -1, i16 -13888, i16 -1, i16 -1, i16 -22699, i16 -22698, i16 -22700, i16 -22697, i16 -13713, i16 -13712, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22287, i16 -13355, i16 -1, i16 -22288, i16 -1, i16 -12814, i16 -21652, i16 -12813, i16 -21653, i16 -1, i16 -1, i16 -1, i16 -21655, i16 -1, i16 -21654, i16 -1, i16 -1, i16 -1, i16 -12051, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20281, i16 -11154, i16 -1, i16 -20278, i16 -11155, i16 -19995, i16 -20279, i16 -20280, i16 -1, i16 -19500, i16 -1, i16 -19501, i16 -19502, i16 -18734, i16 -1, i16 -1, i16 -18731, i16 -18730, i16 -18732, i16 -1, i16 -18733, i16 -1, i16 -1, i16 -7869, i16 -1, i16 -7868, i16 -1, i16 -1, i16 -1, i16 -6923, i16 -17339, i16 -6924, i16 -1, i16 -16719, i16 -4929, i16 -16263, i16 -1, i16 -3602, i16 -15275, i16 -1, i16 -23453, i16 -23357, i16 -13994, i16 -1, i16 -23356, i16 -23355, i16 -23203, i16 -23202, i16 -1, i16 -22967, i16 -13711, i16 -13354, i16 -13353, i16 -1, i16 -21651, i16 -12050, i16 -20276, i16 -20277, i16 -10141, i16 -10142, i16 -1, i16 -1, i16 -23472, i16 -23354, i16 -23201, i16 -1, i16 -20275, i16 -14013, i16 -1, i16 -13972, i16 -23200, i16 -1, i16 -13886, i16 -22965, i16 -22966, i16 -13887, i16 -22696, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21014, i16 -1, i16 -1, i16 -11153, i16 -1, i16 -18729, i16 -7867, i16 -17988, i16 -1, i16 -1, i16 -5894, i16 -1, i16 -1, i16 -3075, i16 -1, i16 -23353, i16 -1, i16 -1, i16 -13352, i16 -12812, i16 -20272, i16 -20274, i16 -20273, i16 -23471, i16 -1, i16 -23452, i16 -23859, i16 -23350, i16 -1, i16 -23351, i16 -23352, i16 -23197, i16 -23198, i16 -1, i16 -13971, i16 -13885, i16 -1, i16 -1, i16 -1, i16 -22283, i16 -22286, i16 -22284, i16 -22285, i16 -1, i16 -1, i16 -21650, i16 -1, i16 -1, i16 -19499, i16 -1, i16 -23470, i16 -1, i16 -23349, i16 -1, i16 -23195, i16 -23196, i16 -1, i16 -13710, i16 -1, i16 -1, i16 -22282, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13993, i16 -1, i16 -23193, i16 -23194, i16 -22964, i16 -22963, i16 -13709, i16 -22695, i16 -1, i16 -22694, i16 -1, i16 -22281, i16 -22280, i16 -22279, i16 -1, i16 -21649, i16 -12811, i16 -1, i16 -1, i16 -21013, i16 -1, i16 -1, i16 -14012, i16 -1, i16 -23348, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13884, i16 -1, i16 -1, i16 -1, i16 -13708, i16 -13707, i16 -1, i16 -1, i16 -13351, i16 -1, i16 -13350, i16 -1, i16 -12809, i16 -12810, i16 -12807, i16 -12808, i16 -21648, i16 -1, i16 -11152, i16 -21011, i16 -12049, i16 -21012, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10140, i16 -19498, i16 -1, i16 -10139, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7866, i16 -17987, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17338, i16 -1, i16 -3601, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13992, i16 -1, i16 -23192, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20271, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23469, i16 -23451, i16 -23346, i16 -23347, i16 -1, i16 -23345, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22277, i16 -1, i16 -22278, i16 -22276, i16 -1, i16 -1, i16 -1, i16 -21647, i16 -1, i16 -1, i16 -1, i16 -21010, i16 -1, i16 -5893, i16 -15793, i16 -23450, i16 -23190, i16 -23175, i16 -23180, i16 -1, i16 -23185, i16 -23186, i16 -23179, i16 -23181, i16 -23188, i16 -23174, i16 -23187, i16 -23191, i16 -23176, i16 -23177, i16 -23178, i16 -23189, i16 -1, i16 -23182, i16 -1, i16 -1, i16 -23183, i16 -1, i16 -1, i16 -23173, i16 -23184, i16 -22957, i16 -1, i16 -22951, i16 -22955, i16 -1, i16 -22949, i16 -13883, i16 -22952, i16 -22962, i16 -22959, i16 -22956, i16 -22960, i16 -22953, i16 -22950, i16 -22961, i16 -22958, i16 -22954, i16 -22948, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13698, i16 -13701, i16 -1, i16 -22681, i16 -13700, i16 -22693, i16 -22691, i16 -22667, i16 -22672, i16 -1, i16 -1, i16 -1, i16 -13659, i16 -13699, i16 -22689, i16 -22687, i16 -13660, i16 -22680, i16 -13704, i16 -22668, i16 -22666, i16 -22692, i16 -22675, i16 -1, i16 -13706, i16 -22669, i16 -1, i16 -22684, i16 -1, i16 -22674, i16 -22673, i16 -13705, i16 -22676, i16 -22678, i16 -1, i16 -22677, i16 -22671, i16 -13663, i16 -22690, i16 -1, i16 -22670, i16 -13661, i16 -22682, i16 -22685, i16 -1, i16 -13702, i16 -22686, i16 -13658, i16 -22683, i16 -1, i16 -22679, i16 -1, i16 -1, i16 -1, i16 -22688, i16 -13662, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13333, i16 -13334, i16 -22193, i16 -13331, i16 -13329, i16 -13340, i16 -13337, i16 -13330, i16 -22192, i16 -1, i16 -1, i16 -13343, i16 -13339, i16 -1, i16 -1, i16 -13335, i16 -12727, i16 -22197, i16 -12723, i16 -22275, i16 -13338, i16 -22274, i16 -22196, i16 -22203, i16 -22207, i16 -1, i16 -13342, i16 -22204, i16 -22199, i16 -22190, i16 -13341, i16 -13348, i16 -22205, i16 -13347, i16 -13345, i16 -1, i16 -22202, i16 -1, i16 -22200, i16 -13349, i16 -13344, i16 -1, i16 -1, i16 -22191, i16 -22195, i16 -13336, i16 -22189, i16 -1, i16 -22198, i16 -13346, i16 -22201, i16 -1, i16 -1, i16 -22206, i16 -22208, i16 -1, i16 -13332, i16 -1, i16 -22194, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12728, i16 -12805, i16 -12725, i16 -1, i16 -1, i16 -12803, i16 -21640, i16 -21592, i16 -21644, i16 -21593, i16 -21635, i16 -21596, i16 -21646, i16 -12804, i16 -12733, i16 -21597, i16 -12721, i16 -21595, i16 -1, i16 -21639, i16 -1, i16 -1, i16 -12731, i16 -12734, i16 -21641, i16 -1, i16 -12806, i16 -21594, i16 -12726, i16 -21636, i16 -12724, i16 -21591, i16 -21645, i16 -21634, i16 -21637, i16 -12736, i16 -21599, i16 -12730, i16 -12729, i16 -21638, i16 -21598, i16 -21642, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21643, i16 -12802, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12732, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12722, i16 -1, i16 -11964, i16 -20997, i16 -12047, i16 -1, i16 -12042, i16 -21004, i16 -20928, i16 -12044, i16 -21009, i16 -20999, i16 -20994, i16 -12037, i16 -1, i16 -20998, i16 -20995, i16 -1, i16 -1, i16 -12034, i16 -21003, i16 -12043, i16 -1, i16 -1, i16 -1, i16 -11966, i16 -11965, i16 -1, i16 -21001, i16 -11967, i16 -21005, i16 -20925, i16 -1, i16 -12040, i16 -21007, i16 -1, i16 -11962, i16 -12039, i16 -12035, i16 -21002, i16 -20926, i16 -12038, i16 -20996, i16 -11968, i16 -11961, i16 -11103, i16 -1, i16 -11963, i16 -20924, i16 -21008, i16 -12036, i16 -12045, i16 -1, i16 -21000, i16 -1, i16 -1, i16 -12046, i16 -1, i16 -1, i16 -12041, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12048, i16 -20927, i16 -1, i16 -1, i16 -11145, i16 -1, i16 -20252, i16 -11097, i16 -20254, i16 -20257, i16 -11140, i16 -20261, i16 -11102, i16 -20250, i16 -11146, i16 -11141, i16 -11142, i16 -21006, i16 -20255, i16 -11099, i16 -1, i16 -11096, i16 -11149, i16 -1, i16 -19480, i16 -1, i16 -11095, i16 -20249, i16 -1, i16 -20263, i16 -20266, i16 -11138, i16 -20269, i16 -1, i16 -11098, i16 -1, i16 -20262, i16 -11094, i16 -1, i16 -11148, i16 -11100, i16 -20259, i16 -11147, i16 -11144, i16 -11139, i16 -1, i16 -1, i16 -20258, i16 -20260, i16 -20248, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20253, i16 -1, i16 -20265, i16 -20014, i16 -1, i16 -20264, i16 -11143, i16 -20251, i16 -20256, i16 -11101, i16 -20267, i16 -1, i16 -1, i16 -1, i16 -20268, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11151, i16 -11150, i16 -10134, i16 -1, i16 -1, i16 -1, i16 -19497, i16 -19494, i16 -10123, i16 -19474, i16 -10120, i16 -19496, i16 -10127, i16 -19490, i16 -19484, i16 -19011, i16 -1, i16 -1, i16 -19486, i16 -10130, i16 -19473, i16 -19493, i16 -19485, i16 -10122, i16 -9001, i16 -10117, i16 -10129, i16 -1, i16 -10138, i16 -10125, i16 -10131, i16 -19487, i16 -10119, i16 -1, i16 -1, i16 -19491, i16 -19471, i16 -19478, i16 -1, i16 -19489, i16 -19492, i16 -1, i16 -19481, i16 -1, i16 -10118, i16 -10132, i16 -10126, i16 -10124, i16 -10136, i16 -10121, i16 -19495, i16 -10137, i16 -1, i16 -19488, i16 -19472, i16 -19476, i16 -10135, i16 -19482, i16 -1, i16 -1, i16 -19475, i16 -19479, i16 -19483, i16 -1, i16 -10128, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19477, i16 -1, i16 -1, i16 -1, i16 -9003, i16 -9007, i16 -1, i16 -8992, i16 -9014, i16 -9005, i16 -18715, i16 -18714, i16 -18722, i16 -8996, i16 -18712, i16 -9009, i16 -9010, i16 -9012, i16 -8994, i16 -18724, i16 -9000, i16 -9011, i16 -18721, i16 -9002, i16 -18726, i16 -9006, i16 -8999, i16 -8997, i16 -1, i16 -1, i16 -8993, i16 -18717, i16 -9013, i16 -18723, i16 -9008, i16 -1, i16 -18728, i16 -1, i16 -18716, i16 -8998, i16 -18720, i16 -18719, i16 -18713, i16 -18725, i16 -23969, i16 -18727, i16 -9004, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18718, i16 -1, i16 -1, i16 -8995, i16 -1, i16 -1, i16 -1, i16 -17971, i16 -17976, i16 -1, i16 -7851, i16 -7855, i16 -1, i16 -7861, i16 -17982, i16 -17986, i16 -7852, i16 -17985, i16 -7858, i16 -7856, i16 -1, i16 -7853, i16 -1, i16 -17980, i16 -1, i16 -17973, i16 -17979, i16 -1, i16 -1, i16 -7863, i16 -17978, i16 -17977, i16 -7860, i16 -17972, i16 -1, i16 -7862, i16 -7857, i16 -17981, i16 -7864, i16 -17975, i16 -17983, i16 -1, i16 -1, i16 -1, i16 -17984, i16 -7859, i16 -7854, i16 -1, i16 -17974, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7865, i16 -1, i16 -17331, i16 -6841, i16 -1, i16 -6844, i16 -1, i16 -17337, i16 -17325, i16 -17324, i16 -1, i16 -17334, i16 -6846, i16 -17332, i16 -6919, i16 -17326, i16 -1, i16 -6842, i16 -17335, i16 -6840, i16 -17336, i16 -1, i16 -6845, i16 -6843, i16 -17333, i16 -6847, i16 -6918, i16 -6921, i16 -1, i16 -1, i16 -10133, i16 -6915, i16 -1, i16 -6922, i16 -6916, i16 -6917, i16 -1, i16 -6920, i16 -1, i16 -17329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17330, i16 -1, i16 -1, i16 -1, i16 -17328, i16 -6914, i16 -16718, i16 -6848, i16 -1, i16 -1, i16 -1, i16 -5819, i16 -1, i16 -5891, i16 -1, i16 -16706, i16 -5822, i16 -16714, i16 -16710, i16 -5823, i16 -1, i16 -16711, i16 -16715, i16 -16712, i16 -16717, i16 -16707, i16 -5821, i16 -5890, i16 -16708, i16 -5892, i16 -16709, i16 -5820, i16 -5824, i16 -17327, i16 -1, i16 -16705, i16 -5818, i16 -16713, i16 -16716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4922, i16 -4920, i16 -16261, i16 -4919, i16 -4921, i16 -4923, i16 -4924, i16 -16259, i16 -4925, i16 -16258, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4927, i16 -4926, i16 -16262, i16 -16223, i16 -16260, i16 -1, i16 -1, i16 -4928, i16 -1, i16 -15792, i16 -1, i16 -4164, i16 -4166, i16 -4161, i16 -4163, i16 -1, i16 -4165, i16 -4162, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15520, i16 -3598, i16 -3597, i16 -15274, i16 -1, i16 -3596, i16 -3600, i16 -3595, i16 -3599, i16 -15791, i16 -1, i16 -1, i16 -1, i16 -3074, i16 -3007, i16 -15271, i16 -3008, i16 -15272, i16 -15273, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15270, i16 -2619, i16 -2618, i16 -1, i16 -15142, i16 -15143, i16 -15141, i16 -2620, i16 -1, i16 -2344, i16 -2345, i16 -1, i16 -14995, i16 -14993, i16 -14994, i16 -2343, i16 -14904, i16 -1882, i16 -1, i16 -1, i16 -1, i16 -14863, i16 -1, i16 -1883, i16 -1810, i16 -1, i16 -1, i16 -14007, i16 -1, i16 -1, i16 -23171, i16 -23172, i16 -1, i16 -22945, i16 -22946, i16 -13881, i16 -22947, i16 -13882, i16 -1, i16 -1, i16 -22663, i16 -13655, i16 -1, i16 -13656, i16 -1, i16 -1, i16 -22665, i16 -22662, i16 -1, i16 -1, i16 -13657, i16 -1, i16 -22664, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13328, i16 -1, i16 -13327, i16 -22188, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21590, i16 -11960, i16 -11959, i16 -20923, i16 -20922, i16 -1, i16 -1, i16 -11092, i16 -20247, i16 -20245, i16 -11093, i16 -20246, i16 -10116, i16 -19470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18711, i16 -18710, i16 -8991, i16 -1, i16 -17969, i16 -1, i16 -17970, i16 -1, i16 -6839, i16 -5816, i16 -5817, i16 -1, i16 -1685, i16 -23449, i16 -13991, i16 -1, i16 -13970, i16 -13969, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22942, i16 -22938, i16 -13879, i16 -1, i16 -22940, i16 -22941, i16 -13880, i16 -22939, i16 -22943, i16 -1, i16 -1, i16 -22944, i16 -13878, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22618, i16 -1, i16 -1, i16 -22621, i16 -1, i16 -22659, i16 -13654, i16 -1, i16 -1, i16 -1, i16 -13653, i16 -1, i16 -22623, i16 -1, i16 -13651, i16 -22661, i16 -13650, i16 -13652, i16 -22658, i16 -22622, i16 -22619, i16 -22620, i16 -22660, i16 -13649, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22183, i16 -13314, i16 -1, i16 -22181, i16 -1, i16 -22182, i16 -1, i16 -13248, i16 -22184, i16 -22185, i16 -13323, i16 -1, i16 -13324, i16 -1, i16 -13326, i16 -13321, i16 -13322, i16 -13325, i16 -13316, i16 -13315, i16 -13318, i16 -13320, i16 -22186, i16 -1, i16 -1, i16 -1, i16 -13317, i16 -22180, i16 -13247, i16 -1, i16 -1, i16 -13319, i16 -1, i16 -21589, i16 -22187, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21588, i16 -12716, i16 -1, i16 -1, i16 -12710, i16 -1, i16 -1, i16 -1, i16 -21582, i16 -12712, i16 -12706, i16 -1, i16 -12715, i16 -12711, i16 -12709, i16 -12707, i16 -12713, i16 -1, i16 -12714, i16 -12719, i16 -12718, i16 -21587, i16 -1, i16 -21585, i16 -21586, i16 -12717, i16 -12708, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21583, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12720, i16 -11949, i16 -1, i16 -11950, i16 -11945, i16 -11954, i16 -1, i16 -11951, i16 -11952, i16 -1, i16 -11948, i16 -1, i16 -11944, i16 -20921, i16 -20918, i16 -1, i16 -1, i16 -11953, i16 -11947, i16 -1, i16 -1, i16 -1, i16 -20919, i16 -11958, i16 -1, i16 -21584, i16 -11078, i16 -11946, i16 -1, i16 -11955, i16 -1, i16 -20920, i16 -11956, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11087, i16 -1, i16 -1, i16 -20244, i16 -20240, i16 -11071, i16 -11089, i16 -11075, i16 -20239, i16 -11073, i16 -1, i16 -11067, i16 -1, i16 -11063, i16 -1, i16 -1, i16 -11072, i16 -11084, i16 -11076, i16 -1, i16 -11062, i16 -11064, i16 -11074, i16 -11079, i16 -11086, i16 -10074, i16 -11088, i16 -20235, i16 -11081, i16 -20234, i16 -20238, i16 -11091, i16 -11069, i16 -11083, i16 -11085, i16 -11066, i16 -20237, i16 -1, i16 -11060, i16 -20243, i16 -20241, i16 -11077, i16 -11082, i16 -20917, i16 -20242, i16 -11080, i16 -11065, i16 -11061, i16 -11070, i16 -1, i16 -11068, i16 -1, i16 -1, i16 -1, i16 -11090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10079, i16 -1, i16 -10070, i16 -10071, i16 -19462, i16 -10078, i16 -1, i16 -19461, i16 -19463, i16 -1, i16 -10076, i16 -19466, i16 -10072, i16 -1, i16 -10077, i16 -10075, i16 -10115, i16 -19468, i16 -1, i16 -10062, i16 -10063, i16 -10066, i16 -19469, i16 -19465, i16 -19464, i16 -11957, i16 -10069, i16 -19467, i16 -20236, i16 -10067, i16 -10114, i16 -10064, i16 -10065, i16 -1, i16 -10061, i16 -1, i16 -8977, i16 -1, i16 -10068, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10073, i16 -8985, i16 -18700, i16 -18697, i16 -18702, i16 -8986, i16 -8982, i16 -8987, i16 -1, i16 -18708, i16 -18698, i16 -8990, i16 -18704, i16 -8983, i16 -1, i16 -18706, i16 -18707, i16 -8980, i16 -18705, i16 -8978, i16 -1, i16 -8981, i16 -18709, i16 -1, i16 -1, i16 -1, i16 -18699, i16 -8976, i16 -8988, i16 -8979, i16 -1, i16 -1, i16 -8989, i16 -1, i16 -1, i16 -18703, i16 -1, i16 -18701, i16 -1, i16 -8984, i16 -1, i16 -8975, i16 -1, i16 -1, i16 -7843, i16 -17968, i16 -7837, i16 -1, i16 -1, i16 -17963, i16 -7841, i16 -7834, i16 -7849, i16 -17961, i16 -17967, i16 -7844, i16 -17323, i16 -7845, i16 -7836, i16 -17966, i16 -1, i16 -17962, i16 -7846, i16 -7840, i16 -7835, i16 -7850, i16 -17964, i16 -7842, i16 -1, i16 -1, i16 -7838, i16 -7832, i16 -7848, i16 -7839, i16 -1, i16 -17965, i16 -7833, i16 -1, i16 -1, i16 -1, i16 -7847, i16 -1, i16 -1, i16 -1, i16 -17319, i16 -6837, i16 -17321, i16 -17322, i16 -6835, i16 -6830, i16 -1, i16 -6834, i16 -1, i16 -6831, i16 -17316, i16 -1, i16 -16731, i16 -17317, i16 -1, i16 -6838, i16 -6832, i16 -1, i16 -17318, i16 -6833, i16 -1, i16 -6836, i16 -1, i16 -17320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5811, i16 -1, i16 -5809, i16 -5814, i16 -16703, i16 -5812, i16 -1, i16 -16704, i16 -5810, i16 -1, i16 -1, i16 -16701, i16 -5808, i16 -16702, i16 -5815, i16 -5813, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16219, i16 -4916, i16 -1, i16 -16220, i16 -4915, i16 -16221, i16 -4917, i16 -16222, i16 -4918, i16 -1, i16 -15789, i16 -15790, i16 -3594, i16 -3592, i16 -1, i16 -3593, i16 -15519, i16 -15518, i16 -1, i16 -1, i16 -15517, i16 -3006, i16 -15269, i16 -1, i16 -1, i16 -2093, i16 -2094, i16 -14862, i16 -1, i16 -23448, i16 -23344, i16 -1, i16 -1, i16 -22617, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12705, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19460, i16 -19459, i16 -1, i16 -8974, i16 -17960, i16 -7831, i16 -6829, i16 -13990, i16 -1, i16 -1, i16 -13648, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13246, i16 -12704, i16 -11943, i16 -20916, i16 -1, i16 -1, i16 -3591, i16 -1, i16 -15140, i16 -23447, i16 -23170, i16 -13968, i16 -1, i16 -22937, i16 -22936, i16 -1, i16 -22179, i16 -1, i16 -1, i16 -1, i16 -20233, i16 -1, i16 -17958, i16 -1, i16 -17957, i16 -17959, i16 -1, i16 -23446, i16 -1, i16 -23343, i16 -23341, i16 -23342, i16 -13989, i16 -23340, i16 -23135, i16 -13967, i16 -1, i16 -23134, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22935, i16 -22934, i16 -1, i16 -1, i16 -1, i16 -13877, i16 -1, i16 -22616, i16 -1, i16 -13647, i16 -1, i16 -1, i16 -1, i16 -22175, i16 -13245, i16 -1, i16 -22177, i16 -22176, i16 -22178, i16 -11942, i16 -1, i16 -1, i16 -1, i16 -21578, i16 -21579, i16 -21577, i16 -21580, i16 -1, i16 -12703, i16 -22174, i16 -21581, i16 -1, i16 -20915, i16 -20914, i16 -1, i16 -20913, i16 -1, i16 -11059, i16 -1, i16 -1, i16 -1, i16 -19458, i16 -10060, i16 -20232, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18696, i16 -1, i16 -17955, i16 -17956, i16 -7830, i16 -1, i16 -17315, i16 -16700, i16 -1, i16 -4160, i16 -2342, i16 -2092, i16 -23445, i16 -23133, i16 -1, i16 -23132, i16 -13871, i16 -22932, i16 -22929, i16 -1, i16 -13873, i16 -13875, i16 -22930, i16 -13872, i16 -13870, i16 -13876, i16 -22927, i16 -22928, i16 -22931, i16 -22933, i16 -13874, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22605, i16 -1, i16 -1, i16 -22608, i16 -13642, i16 -13639, i16 -13640, i16 -1, i16 -22614, i16 -22606, i16 -1, i16 -1, i16 -22609, i16 -13643, i16 -13645, i16 -22610, i16 -1, i16 -1, i16 -1, i16 -22615, i16 -22612, i16 -1, i16 -13644, i16 -13637, i16 -13641, i16 -22611, i16 -22607, i16 -22604, i16 -13646, i16 -13638, i16 -22613, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22169, i16 -22161, i16 -1, i16 -13233, i16 -13240, i16 -22160, i16 -13229, i16 -13244, i16 -13237, i16 -1, i16 -1, i16 -22170, i16 -13243, i16 -22172, i16 -13236, i16 -13232, i16 -22173, i16 -1, i16 -13231, i16 -13238, i16 -1, i16 -13235, i16 -1, i16 -22158, i16 -22167, i16 -13228, i16 -13230, i16 -1, i16 -22162, i16 -22164, i16 -13239, i16 -22165, i16 -13241, i16 -13242, i16 -22166, i16 -22168, i16 -22159, i16 -22163, i16 -22171, i16 -1, i16 -13234, i16 -1, i16 -21575, i16 -1, i16 -21568, i16 -12689, i16 -21576, i16 -12697, i16 -12701, i16 -1, i16 -12685, i16 -12702, i16 -1, i16 -21573, i16 -12692, i16 -21570, i16 -21567, i16 -1, i16 -21572, i16 -12688, i16 -21569, i16 -1, i16 -20906, i16 -12682, i16 -12700, i16 -1, i16 -1, i16 -12698, i16 -12691, i16 -12687, i16 -12683, i16 -12686, i16 -12693, i16 -12690, i16 -1, i16 -1, i16 -12696, i16 -21565, i16 -12694, i16 -12695, i16 -12684, i16 -21574, i16 -12699, i16 -21566, i16 -1, i16 -21571, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20900, i16 -11934, i16 -1, i16 -20901, i16 -1, i16 -1, i16 -11936, i16 -1, i16 -20912, i16 -1, i16 -20907, i16 -1, i16 -11937, i16 -11940, i16 -11935, i16 -20911, i16 -11941, i16 -1, i16 -20908, i16 -20910, i16 -1, i16 -11933, i16 -20909, i16 -20905, i16 -1, i16 -1, i16 -20904, i16 -1, i16 -20902, i16 -1, i16 -1, i16 -1, i16 -20903, i16 -1, i16 -1, i16 -1, i16 -11939, i16 -11938, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11932, i16 -1, i16 -11052, i16 -20231, i16 -10046, i16 -11053, i16 -11034, i16 -1, i16 -1, i16 -20160, i16 -1, i16 -11036, i16 -1, i16 -20226, i16 -20230, i16 -11027, i16 -11043, i16 -11040, i16 -1, i16 -20157, i16 -11030, i16 -11038, i16 -20229, i16 -20156, i16 -1, i16 -11033, i16 -11035, i16 -1, i16 -1, i16 -11050, i16 -11029, i16 -11041, i16 -11046, i16 -1, i16 -11056, i16 -11028, i16 -11044, i16 -11057, i16 -1, i16 -20158, i16 -11039, i16 -11026, i16 -11042, i16 -11054, i16 -11049, i16 -11058, i16 -1, i16 -20159, i16 -1, i16 -11045, i16 -11048, i16 -20228, i16 -11055, i16 -1, i16 -11031, i16 -20227, i16 -1, i16 -11047, i16 -11051, i16 -1, i16 -1, i16 -11032, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19392, i16 -10053, i16 -1, i16 -10056, i16 -10039, i16 -10051, i16 -10038, i16 -1, i16 -19390, i16 -1, i16 -1, i16 -1, i16 -10042, i16 -10045, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10044, i16 -10041, i16 -10037, i16 -1, i16 -11037, i16 -10035, i16 -8889, i16 -1, i16 -19389, i16 -10034, i16 -10058, i16 -10048, i16 -1, i16 -10043, i16 -1, i16 -1, i16 -19391, i16 -19388, i16 -10036, i16 -10033, i16 -10054, i16 -10057, i16 -1, i16 -1, i16 -10055, i16 -1, i16 -1, i16 -10050, i16 -10052, i16 -19387, i16 -1, i16 -10040, i16 -1, i16 -1, i16 -10049, i16 -1, i16 -10047, i16 -10059, i16 -8966, i16 -8968, i16 -18622, i16 -18624, i16 -8893, i16 -8967, i16 -8892, i16 -8896, i16 -8969, i16 -8890, i16 -8970, i16 -8963, i16 -18690, i16 -18691, i16 -18692, i16 -8965, i16 -8895, i16 -18695, i16 -18623, i16 -1, i16 -8972, i16 -1, i16 -8962, i16 -8973, i16 -8964, i16 -18694, i16 -8894, i16 -8971, i16 -18693, i16 -8891, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7826, i16 -17950, i16 -17951, i16 -17949, i16 -7814, i16 -7824, i16 -7818, i16 -7829, i16 -7815, i16 -7816, i16 -7812, i16 -7819, i16 -17954, i16 -7820, i16 -17948, i16 -1, i16 -7827, i16 -17953, i16 -1, i16 -7813, i16 -17952, i16 -7825, i16 -7822, i16 -7817, i16 -7823, i16 -7828, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7821, i16 -6827, i16 -17311, i16 -6824, i16 -6825, i16 -6822, i16 -6820, i16 -1, i16 -17313, i16 -1, i16 -6826, i16 -1, i16 -6828, i16 -6819, i16 -6821, i16 -6823, i16 -1, i16 -6817, i16 -1, i16 -6818, i16 -17309, i16 -17314, i16 -1, i16 -17312, i16 -17310, i16 -1, i16 -1, i16 -6816, i16 -5801, i16 -1, i16 -1, i16 -5802, i16 -5803, i16 -1, i16 -5800, i16 -5807, i16 -1, i16 -5806, i16 -5798, i16 -5805, i16 -1, i16 -16699, i16 -5796, i16 -1, i16 -5797, i16 -5804, i16 -1, i16 -4911, i16 -16216, i16 -4913, i16 -4908, i16 -4909, i16 -5799, i16 -1, i16 -16217, i16 -1, i16 -4910, i16 -4914, i16 -4906, i16 -4907, i16 -16218, i16 -1, i16 -4912, i16 -1, i16 -16698, i16 -1, i16 -1, i16 -1, i16 -15788, i16 -1, i16 -1, i16 -1, i16 -4159, i16 -3590, i16 -3589, i16 -3588, i16 -15268, i16 -1, i16 -1, i16 -15267, i16 -1, i16 -3005, i16 -1, i16 -2616, i16 -2617, i16 -1, i16 -1, i16 -2341, i16 -2340, i16 -2091, i16 -1881, i16 -1, i16 -23444, i16 -23443, i16 -1, i16 -23442, i16 -23339, i16 -23131, i16 -13869, i16 -22926, i16 -22925, i16 -1, i16 -22601, i16 -22600, i16 -22602, i16 -22603, i16 -1, i16 -22157, i16 -1, i16 -1, i16 -13227, i16 -22155, i16 -22156, i16 -13226, i16 -1, i16 -1, i16 -1, i16 -21564, i16 -1, i16 -20899, i16 -11931, i16 -1, i16 -11024, i16 -1, i16 -20155, i16 -19385, i16 -11025, i16 -19386, i16 -1, i16 -17947, i16 -1, i16 -7811, i16 -16697, i16 -1, i16 -16215, i16 -4905, i16 -1, i16 -15266, i16 -1, i16 -14992, i16 -1, i16 -13966, i16 -1, i16 -23130, i16 -13965, i16 -22922, i16 -1, i16 -22924, i16 -22923, i16 -22921, i16 -1, i16 -22598, i16 -22599, i16 -1, i16 -13636, i16 -22597, i16 -1, i16 -1, i16 -13635, i16 -13225, i16 -1, i16 -13224, i16 -1, i16 -22154, i16 -22152, i16 -22150, i16 -22153, i16 -22149, i16 -22151, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21560, i16 -21563, i16 -21561, i16 -21559, i16 -21562, i16 -11930, i16 -12681, i16 -1, i16 -1, i16 -1, i16 -11928, i16 -11929, i16 -20893, i16 -1, i16 -20897, i16 -1, i16 -1, i16 -20896, i16 -20894, i16 -20892, i16 -20895, i16 -1, i16 -20890, i16 -20891, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20150, i16 -11022, i16 -11023, i16 -20151, i16 -1, i16 -20152, i16 -20153, i16 -20149, i16 -20154, i16 -1, i16 -1, i16 -10027, i16 -10030, i16 -19383, i16 -10031, i16 -10026, i16 -1, i16 -19381, i16 -10028, i16 -19384, i16 -19382, i16 -10029, i16 -1, i16 -8888, i16 -1, i16 -8887, i16 -8886, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17946, i16 -17938, i16 -7810, i16 -17944, i16 -17940, i16 -7775, i16 -17939, i16 -17943, i16 -17942, i16 -17945, i16 -17941, i16 -17306, i16 -10032, i16 -17305, i16 -17307, i16 -1, i16 -17308, i16 -5795, i16 -16696, i16 -4904, i16 -4903, i16 -1, i16 -1, i16 -15516, i16 -15265, i16 -1, i16 -23441, i16 -1, i16 -22920, i16 -21558, i16 -1, i16 -11927, i16 -20889, i16 -1, i16 -1, i16 -20146, i16 -20147, i16 -20148, i16 -19380, i16 -19379, i16 -10025, i16 -17937, i16 -16695, i16 -23440, i16 -13988, i16 -23338, i16 -13964, i16 -1, i16 -1, i16 -13868, i16 -22919, i16 -1, i16 -1, i16 -1, i16 -22148, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8885, i16 -1, i16 -1, i16 -23439, i16 -1, i16 -23337, i16 -13867, i16 -1, i16 -1, i16 -13634, i16 -1, i16 -13633, i16 -1, i16 -22596, i16 -1, i16 -1, i16 -1, i16 -10024, i16 -19378, i16 -1, i16 -8884, i16 -1, i16 -1, i16 -1, i16 -16214, i16 -23438, i16 -23384, i16 -23336, i16 -13963, i16 -23129, i16 -1, i16 -22592, i16 -22593, i16 -22595, i16 -22594, i16 -1, i16 -1, i16 -13223, i16 -22146, i16 -22111, i16 -13222, i16 -22147, i16 -1, i16 -1, i16 -21554, i16 -12680, i16 -21555, i16 -21557, i16 -21556, i16 -20886, i16 -20888, i16 -1, i16 -1, i16 -11925, i16 -20887, i16 -11926, i16 -1, i16 -20898, i16 -11021, i16 -1, i16 -1, i16 -20144, i16 -20143, i16 -1, i16 -1, i16 -20145, i16 -1, i16 -17936, i16 -7774, i16 -17304, i16 -17303, i16 -1, i16 -6815, i16 -16213, i16 -4158, i16 -4157, i16 -1, i16 -15139, i16 -1880, i16 -14005, i16 -23335, i16 -1, i16 -23437, i16 -1, i16 -13961, i16 -13962, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22918, i16 -13865, i16 -13864, i16 -13866, i16 -1, i16 -13863, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13625, i16 -1, i16 -13630, i16 -13628, i16 -13626, i16 -13629, i16 -22588, i16 -13632, i16 -1, i16 -13631, i16 -22591, i16 -22590, i16 -13627, i16 -13624, i16 -22589, i16 -13623, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13208, i16 -1, i16 -13214, i16 -13219, i16 -22109, i16 -13211, i16 -13213, i16 -13220, i16 -13207, i16 -13204, i16 -13209, i16 -13216, i16 -22107, i16 -13210, i16 -22106, i16 -13215, i16 -13212, i16 -13221, i16 -13217, i16 -13205, i16 -22105, i16 -1, i16 -22104, i16 -1, i16 -13218, i16 -13206, i16 -22110, i16 -22108, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12629, i16 -12636, i16 -12630, i16 -12637, i16 -12635, i16 -12675, i16 -12677, i16 -1, i16 -12628, i16 -12631, i16 -12679, i16 -1, i16 -21552, i16 -12633, i16 -12632, i16 -1, i16 -12634, i16 -12676, i16 -12678, i16 -21553, i16 -12638, i16 -12674, i16 -1, i16 -1, i16 -12639, i16 -12627, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20881, i16 -1, i16 -20882, i16 -1, i16 -11924, i16 -20885, i16 -11922, i16 -1, i16 -20880, i16 -11921, i16 -1, i16 -1, i16 -20877, i16 -1, i16 -20879, i16 -11920, i16 -12626, i16 -11918, i16 -1, i16 -20883, i16 -1, i16 -20884, i16 -1, i16 -11923, i16 -11919, i16 -20878, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20141, i16 -20142, i16 -1, i16 -1, i16 -1, i16 -11019, i16 -11015, i16 -11013, i16 -20140, i16 -11010, i16 -1, i16 -20136, i16 -10943, i16 -1, i16 -20134, i16 -1, i16 -20138, i16 -20130, i16 -1, i16 -20133, i16 -11017, i16 -20139, i16 -1, i16 -11018, i16 -11020, i16 -10941, i16 -11016, i16 -1, i16 -20137, i16 -10942, i16 -20132, i16 -11011, i16 -11012, i16 -20131, i16 -11014, i16 -20135, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10940, i16 -1, i16 -10944, i16 -10009, i16 -10002, i16 -10013, i16 -19375, i16 -10017, i16 -10001, i16 -10023, i16 -10004, i16 -10006, i16 -10012, i16 -1, i16 -10003, i16 -10010, i16 -1, i16 -10018, i16 -10000, i16 -10020, i16 -10007, i16 -10022, i16 -1, i16 -9999, i16 -1, i16 -19374, i16 -1, i16 -10005, i16 -8881, i16 -10019, i16 -19377, i16 -1, i16 -10015, i16 -1, i16 -19376, i16 -10016, i16 -10011, i16 -1, i16 -1, i16 -10014, i16 -1, i16 -1, i16 -1, i16 -10008, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8877, i16 -1, i16 -1, i16 -1, i16 -8874, i16 -8882, i16 -1, i16 -8880, i16 -1, i16 -8875, i16 -8876, i16 -18621, i16 -1, i16 -10021, i16 -8878, i16 -1, i16 -1, i16 -18620, i16 -1, i16 -8883, i16 -8879, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7767, i16 -1, i16 -7760, i16 -7769, i16 -1, i16 -7762, i16 -7771, i16 -7763, i16 -7759, i16 -7772, i16 -7768, i16 -7773, i16 -1, i16 -17935, i16 -1, i16 -7770, i16 -17934, i16 -7764, i16 -7765, i16 -7766, i16 -1, i16 -1, i16 -7761, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6811, i16 -6809, i16 -17301, i16 -6808, i16 -1, i16 -6813, i16 -1, i16 -6814, i16 -6804, i16 -1, i16 -6806, i16 -17302, i16 -6803, i16 -6812, i16 -6807, i16 -6805, i16 -6810, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5791, i16 -5786, i16 -5792, i16 -5787, i16 -1, i16 -5794, i16 -5784, i16 -5788, i16 -5783, i16 -5789, i16 -5793, i16 -5785, i16 -1, i16 -5782, i16 -5790, i16 -1, i16 -4902, i16 -16209, i16 -1, i16 -16211, i16 -1, i16 -16212, i16 -16210, i16 -1, i16 -1, i16 -4156, i16 -1, i16 -3726, i16 -3587, i16 -1, i16 -1, i16 -3004, i16 -3003, i16 -1, i16 -15264, i16 -1, i16 -2615, i16 -1, i16 -15138, i16 -1, i16 -2614, i16 -1, i16 -2338, i16 -14990, i16 -1, i16 -14991, i16 -2339, i16 -14903, i16 -1, i16 -2090, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23436, i16 -22917, i16 -13862, i16 -13622, i16 -22347, i16 -20129, i16 -1, i16 -1, i16 -23435, i16 -23126, i16 -23127, i16 -23128, i16 -1, i16 -1, i16 -22587, i16 -1, i16 -1, i16 -20876, i16 -1, i16 -8873, i16 -23434, i16 -23433, i16 -23432, i16 -23334, i16 -1, i16 -1, i16 -21551, i16 -1, i16 -12625, i16 -1, i16 -1, i16 -1, i16 -19373, i16 -23431, i16 -13987, i16 -23125, i16 -23124, i16 -13960, i16 -1, i16 -22916, i16 -1, i16 -1, i16 -1, i16 -13621, i16 -1, i16 -22586, i16 -1, i16 -13620, i16 -1, i16 -1, i16 -22098, i16 -1, i16 -1, i16 -13202, i16 -22100, i16 -22101, i16 -13203, i16 -22103, i16 -13201, i16 -22102, i16 -22099, i16 -1, i16 -21550, i16 -1, i16 -21548, i16 -12621, i16 -12624, i16 -12623, i16 -12622, i16 -12620, i16 -21549, i16 -1, i16 -1, i16 -11916, i16 -11917, i16 -1, i16 -20874, i16 -1, i16 -20875, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20126, i16 -10938, i16 -1, i16 -20127, i16 -20125, i16 -20128, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19371, i16 -10939, i16 -1, i16 -19370, i16 -9997, i16 -1, i16 -19369, i16 -9998, i16 -19372, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8870, i16 -8868, i16 -18619, i16 -8869, i16 -8871, i16 -8872, i16 -1, i16 -1, i16 -1, i16 -7756, i16 -17929, i16 -17931, i16 -1, i16 -17930, i16 -7758, i16 -7757, i16 -1, i16 -17933, i16 -6799, i16 -6801, i16 -1, i16 -17299, i16 -6800, i16 -17298, i16 -17300, i16 -17932, i16 -1, i16 -1, i16 -5779, i16 -5781, i16 -5780, i16 -6802, i16 -4900, i16 -16208, i16 -4901, i16 -4155, i16 -4154, i16 -5778, i16 -3586, i16 -1, i16 -23430, i16 -23123, i16 -22914, i16 -13861, i16 -22915, i16 -1, i16 -22097, i16 -18618, i16 -1, i16 -23333, i16 -23122, i16 -21547, i16 -19368, i16 -1, i16 -13959, i16 -1, i16 -13958, i16 -1, i16 -13860, i16 -1, i16 -1, i16 -22584, i16 -13616, i16 -13618, i16 -22583, i16 -13619, i16 -13617, i16 -13615, i16 -1, i16 -22585, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22093, i16 -22092, i16 -22095, i16 -1, i16 -1, i16 -22096, i16 -12616, i16 -22094, i16 -1, i16 -1, i16 -1, i16 -21546, i16 -1, i16 -12617, i16 -12615, i16 -12618, i16 -12614, i16 -21545, i16 -20871, i16 -11915, i16 -1, i16 -11913, i16 -20873, i16 -11912, i16 -20872, i16 -11914, i16 -1, i16 -12619, i16 -10937, i16 -10934, i16 -10933, i16 -10936, i16 -20121, i16 -20122, i16 -20124, i16 -20123, i16 -10935, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20120, i16 -1, i16 -1, i16 -19366, i16 -19365, i16 -1, i16 -19364, i16 -8867, i16 -8865, i16 -8863, i16 -18616, i16 -18617, i16 -19367, i16 -8864, i16 -8866, i16 -1, i16 -7752, i16 -1, i16 -1, i16 -7754, i16 -7748, i16 -17928, i16 -7747, i16 -7750, i16 -17927, i16 -7753, i16 -7755, i16 -7749, i16 -17296, i16 -6797, i16 -7751, i16 -17294, i16 -6796, i16 -17295, i16 -17292, i16 -6795, i16 -17297, i16 -17293, i16 -1, i16 -5773, i16 -5775, i16 -5776, i16 -5774, i16 -5777, i16 -1, i16 -1, i16 -15514, i16 -1, i16 -3002, i16 -3001, i16 -1, i16 -2613, i16 -2337, i16 -14763, i16 -1, i16 -1, i16 -22091, i16 -22582, i16 -1, i16 -1, i16 -21544, i16 -1, i16 -1, i16 -1, i16 -23429, i16 -23332, i16 -23121, i16 -13859, i16 -1, i16 -22581, i16 -13614, i16 -1, i16 -12613, i16 -21543, i16 -1, i16 -17926, i16 -23428, i16 -1, i16 -1, i16 -1, i16 -22879, i16 -1, i16 -1, i16 -18615, i16 -23427, i16 -23331, i16 -23330, i16 -1, i16 -23119, i16 -23120, i16 -1, i16 -13858, i16 -22878, i16 -1, i16 -13613, i16 -1, i16 -22580, i16 -1, i16 -1, i16 -13199, i16 -13198, i16 -13197, i16 -1, i16 -22090, i16 -22089, i16 -13200, i16 -22088, i16 -1, i16 -1, i16 -1, i16 -21542, i16 -12612, i16 -1, i16 -11910, i16 -20870, i16 -1, i16 -11911, i16 -1, i16 -20119, i16 -10932, i16 -20118, i16 -10931, i16 -1, i16 -1, i16 -1, i16 -19363, i16 -1, i16 -1, i16 -1, i16 -8862, i16 -1, i16 -1, i16 -7745, i16 -7746, i16 -1, i16 -17925, i16 -1, i16 -17291, i16 -6794, i16 -16694, i16 -5772, i16 -16207, i16 -1, i16 -14989, i16 -2088, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13196, i16 -1, i16 -12611, i16 -20117, i16 -9996, i16 -18614, i16 -1, i16 -1, i16 -1, i16 -15787, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22578, i16 -1, i16 -22579, i16 -21541, i16 -1, i16 -11909, i16 -1, i16 -20115, i16 -19645, i16 -20114, i16 -20116, i16 -19362, i16 -1, i16 -7744, i16 -17924, i16 -17290, i16 -1, i16 -14004, i16 -13857, i16 -1, i16 -13611, i16 -22577, i16 -13612, i16 -22576, i16 -1, i16 -1, i16 -22084, i16 -13193, i16 -13194, i16 -22085, i16 -22087, i16 -22086, i16 -13195, i16 -1, i16 -1, i16 -21539, i16 -12610, i16 -21536, i16 -21540, i16 -21534, i16 -21538, i16 -21537, i16 -21535, i16 -1, i16 -1, i16 -1, i16 -20867, i16 -20868, i16 -20869, i16 -1, i16 -1, i16 -1, i16 -10929, i16 -20113, i16 -20110, i16 -20112, i16 -1, i16 -10930, i16 -20107, i16 -1, i16 -20111, i16 -10928, i16 -20108, i16 -20109, i16 -1, i16 -1, i16 -1, i16 -9994, i16 -9995, i16 -1, i16 -19359, i16 -19361, i16 -19360, i16 -9993, i16 -18613, i16 -8860, i16 -18612, i16 -8861, i16 -1, i16 -1, i16 -6793, i16 -1, i16 -1, i16 -17288, i16 -7743, i16 -17289, i16 -1, i16 -17923, i16 -1, i16 -4898, i16 -5771, i16 -16206, i16 -4899, i16 -3520, i16 -3000, i16 -2999, i16 -1, i16 -23329, i16 -1, i16 -23118, i16 -1, i16 -1, i16 -1, i16 -13957, i16 -1, i16 -1, i16 -22574, i16 -22572, i16 -1, i16 -13854, i16 -13608, i16 -13609, i16 -13610, i16 -1, i16 -13855, i16 -13856, i16 -22876, i16 -22573, i16 -22575, i16 -22877, i16 -1, i16 -1, i16 -1, i16 -22083, i16 -13192, i16 -1, i16 -22082, i16 -13603, i16 -1, i16 -13601, i16 -13602, i16 -13191, i16 -1, i16 -1, i16 -13606, i16 -1, i16 -22568, i16 -22570, i16 -1, i16 -13607, i16 -13605, i16 -13599, i16 -1, i16 -22571, i16 -1, i16 -13604, i16 -13595, i16 -22080, i16 -1, i16 -13598, i16 -22569, i16 -1, i16 -13600, i16 -13597, i16 -1, i16 -22081, i16 -1, i16 -22079, i16 -13596, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13137, i16 -13150, i16 -13186, i16 -13138, i16 -13143, i16 -21529, i16 -22078, i16 -13142, i16 -13139, i16 -21533, i16 -13140, i16 -22077, i16 -22072, i16 -22074, i16 -13149, i16 -1, i16 -13188, i16 -13147, i16 -22067, i16 -13136, i16 -21532, i16 -13146, i16 -1, i16 -21531, i16 -22071, i16 -13144, i16 -1, i16 -12595, i16 -21530, i16 -13189, i16 -22070, i16 -21528, i16 -22069, i16 -22073, i16 -22068, i16 -13145, i16 -13190, i16 -13141, i16 -22076, i16 -1, i16 -1, i16 -13187, i16 -13148, i16 -13151, i16 -22075, i16 -1, i16 -12609, i16 -1, i16 -12608, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12598, i16 -11871, i16 -12597, i16 -21522, i16 -12594, i16 -12604, i16 -21523, i16 -12602, i16 -1, i16 -12601, i16 -1, i16 -1, i16 -12599, i16 -21527, i16 -1, i16 -1, i16 -20829, i16 -1, i16 -1, i16 -12603, i16 -12607, i16 -20828, i16 -1, i16 -1, i16 -12593, i16 -20866, i16 -11907, i16 -12600, i16 -1, i16 -11908, i16 -12605, i16 -12596, i16 -1, i16 -1, i16 -21524, i16 -20831, i16 -21518, i16 -20830, i16 -12592, i16 -11906, i16 -21525, i16 -20826, i16 -21519, i16 -21520, i16 -21521, i16 -20827, i16 -12591, i16 -20825, i16 -21526, i16 -1, i16 -12606, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20106, i16 -11868, i16 -11866, i16 -1, i16 -11864, i16 -20824, i16 -20818, i16 -10925, i16 -11860, i16 -11869, i16 -20104, i16 -10927, i16 -1, i16 -20819, i16 -20821, i16 -11858, i16 -1, i16 -10926, i16 -1, i16 -11867, i16 -1, i16 -20820, i16 -11863, i16 -20817, i16 -11861, i16 -1, i16 -1, i16 -20822, i16 -11862, i16 -11859, i16 -11865, i16 -1, i16 -20823, i16 -20103, i16 -1, i16 -11870, i16 -20105, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20102, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10923, i16 -10914, i16 -19356, i16 -1, i16 -20100, i16 -20061, i16 -19355, i16 -10912, i16 -20054, i16 -9991, i16 -10922, i16 -20062, i16 -20059, i16 -20098, i16 -10924, i16 -10910, i16 -10907, i16 -9911, i16 -1, i16 -10909, i16 -9987, i16 -20063, i16 -20056, i16 -20052, i16 -10915, i16 -9992, i16 -10911, i16 -20101, i16 -9990, i16 -10908, i16 -9988, i16 -10919, i16 -1, i16 -19358, i16 -1, i16 -10921, i16 -10920, i16 -20057, i16 -1, i16 -1, i16 -20058, i16 -10917, i16 -20053, i16 -10913, i16 -20060, i16 -10916, i16 -1, i16 -20055, i16 -19354, i16 -19357, i16 -9989, i16 -1, i16 -10918, i16 -1, i16 -20099, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19349, i16 -19345, i16 -9920, i16 -18607, i16 -19347, i16 -9916, i16 -19343, i16 -8859, i16 -9914, i16 -18605, i16 -19351, i16 -19348, i16 -9913, i16 -1, i16 -9912, i16 -9906, i16 -19341, i16 -18604, i16 -1, i16 -9910, i16 -9905, i16 -9917, i16 -18594, i16 -1, i16 -18603, i16 -19342, i16 -9919, i16 -9904, i16 -1, i16 -18595, i16 -19344, i16 -18610, i16 -9907, i16 -1, i16 -19340, i16 -9915, i16 -9986, i16 -19350, i16 -9918, i16 -1, i16 -9909, i16 -1, i16 -18611, i16 -18606, i16 -19353, i16 -9908, i16 -1, i16 -18608, i16 -1, i16 -1, i16 -1, i16 -19352, i16 -1, i16 -1, i16 -1, i16 -18596, i16 -7741, i16 -8848, i16 -1, i16 -8856, i16 -7742, i16 -1, i16 -8852, i16 -8850, i16 -1, i16 -1, i16 -8853, i16 -1, i16 -18597, i16 -1, i16 -8854, i16 -18593, i16 -1, i16 -1, i16 -1, i16 -7726, i16 -1, i16 -1, i16 -18598, i16 -17856, i16 -8847, i16 -7740, i16 -1, i16 -1, i16 -18600, i16 -8855, i16 -8851, i16 -17922, i16 -18609, i16 -8858, i16 -8857, i16 -17855, i16 -18601, i16 -18599, i16 -18602, i16 -8849, i16 -1, i16 -1, i16 -7736, i16 -7735, i16 -7730, i16 -17283, i16 -7723, i16 -1, i16 -17849, i16 -1, i16 -17850, i16 -7728, i16 -1, i16 -17284, i16 -7739, i16 -17851, i16 -1, i16 -7724, i16 -17853, i16 -17852, i16 -1, i16 -7727, i16 -6742, i16 -17286, i16 -19346, i16 -1, i16 -7725, i16 -17245, i16 -7733, i16 -1, i16 -17285, i16 -1, i16 -17246, i16 -7738, i16 -7734, i16 -7737, i16 -7731, i16 -17848, i16 -17287, i16 -17854, i16 -1, i16 -6790, i16 -7729, i16 -1, i16 -17247, i16 -1, i16 -17244, i16 -1, i16 -7732, i16 -1, i16 -17282, i16 -6791, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6786, i16 -16690, i16 -6792, i16 -5725, i16 -6743, i16 -17240, i16 -1, i16 -17242, i16 -16692, i16 -6746, i16 -6750, i16 -17236, i16 -1, i16 -5768, i16 -1, i16 -1, i16 -1, i16 -17238, i16 -6751, i16 -1, i16 -5770, i16 -1, i16 -6747, i16 -1, i16 -6744, i16 -6787, i16 -1, i16 -17237, i16 -1, i16 -1, i16 -17243, i16 -5769, i16 -16691, i16 -6745, i16 -17241, i16 -17239, i16 -6748, i16 -17235, i16 -6749, i16 -6788, i16 -6789, i16 -16693, i16 -6741, i16 -5766, i16 -4896, i16 -16688, i16 -1, i16 -5726, i16 -1, i16 -5762, i16 -1, i16 -4895, i16 -1, i16 -16687, i16 -5727, i16 -1, i16 -5764, i16 -16204, i16 -4897, i16 -1, i16 -5767, i16 -5765, i16 -16203, i16 -16685, i16 -16205, i16 -16686, i16 -16201, i16 -5763, i16 -16689, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4145, i16 -1, i16 -4153, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4889, i16 -4152, i16 -4893, i16 -1, i16 -1, i16 -15786, i16 -4891, i16 -4892, i16 -16202, i16 -4894, i16 -4890, i16 -4144, i16 -4148, i16 -4146, i16 -1, i16 -4151, i16 -4150, i16 -1, i16 -4147, i16 -4149, i16 -15513, i16 -1, i16 -1, i16 -15510, i16 -15511, i16 -15512, i16 -15263, i16 -2998, i16 -15262, i16 -3519, i16 -15137, i16 -2612, i16 -15136, i16 -14988, i16 -14902, i16 -2087, i16 -1, i16 -2086, i16 -2085, i16 -1, i16 -1, i16 -1606, i16 -23328, i16 -13956, i16 -23117, i16 -1, i16 -22874, i16 -22873, i16 -22875, i16 -1, i16 -22872, i16 -22566, i16 -22567, i16 -1, i16 -13135, i16 -22065, i16 -22066, i16 -1, i16 -1, i16 -11857, i16 -20051, i16 -20050, i16 -1, i16 -1, i16 -1, i16 -19339, i16 -8846, i16 -18592, i16 -18591, i16 -8844, i16 -8842, i16 -8843, i16 -1, i16 -7721, i16 -1, i16 -7722, i16 -17847, i16 -7720, i16 -1, i16 -6740, i16 -17234, i16 -1, i16 -16684, i16 -1, i16 -16200, i16 -15785, i16 -16199, i16 -1, i16 -23327, i16 -1, i16 -1, i16 -1, i16 -13594, i16 -1, i16 -1, i16 -13134, i16 -22063, i16 -22064, i16 -22062, i16 -21517, i16 -12590, i16 -12589, i16 -1, i16 -1, i16 -11856, i16 -20816, i16 -20049, i16 -19338, i16 -9903, i16 -23326, i16 -1, i16 -23426, i16 -23325, i16 -1, i16 -13955, i16 -23113, i16 -23114, i16 -23116, i16 -23115, i16 -1, i16 -1, i16 -1, i16 -22869, i16 -13847, i16 -13845, i16 -22870, i16 -13853, i16 -1, i16 -13852, i16 -1, i16 -13846, i16 -13850, i16 -13848, i16 -22871, i16 -13851, i16 -13844, i16 -13849, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22559, i16 -22550, i16 -22552, i16 -13584, i16 -13587, i16 -13579, i16 -22554, i16 -13578, i16 -1, i16 -22561, i16 -13581, i16 -1, i16 -22555, i16 -13585, i16 -13586, i16 -22557, i16 -13580, i16 -22556, i16 -22061, i16 -22562, i16 -13583, i16 -1, i16 -13593, i16 -22565, i16 -1, i16 -22546, i16 -13588, i16 -13582, i16 -22560, i16 -22558, i16 -1, i16 -13592, i16 -1, i16 -13591, i16 -13590, i16 -1, i16 -22547, i16 -22553, i16 -22548, i16 -13589, i16 -22549, i16 -22563, i16 -22564, i16 -22551, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22047, i16 -13122, i16 -13129, i16 -22052, i16 -22033, i16 -13133, i16 -13126, i16 -13124, i16 -13121, i16 -22038, i16 -1, i16 -13125, i16 -13132, i16 -22040, i16 -13128, i16 -1, i16 -13120, i16 -22055, i16 -1, i16 -13123, i16 -22045, i16 -22046, i16 -13130, i16 -22057, i16 -1, i16 -1, i16 -22056, i16 -1, i16 -22058, i16 -1, i16 -22034, i16 -22042, i16 -22048, i16 -22060, i16 -13127, i16 -22049, i16 -22059, i16 -22041, i16 -22032, i16 -12588, i16 -22044, i16 -13131, i16 -22054, i16 -22051, i16 -22050, i16 -1, i16 -22036, i16 -22035, i16 -22037, i16 -22043, i16 -22039, i16 -22053, i16 -21516, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12582, i16 -21439, i16 -21512, i16 -21510, i16 -21440, i16 -12570, i16 -21507, i16 -11855, i16 -20815, i16 -21437, i16 -12585, i16 -12577, i16 -21506, i16 -12578, i16 -12581, i16 -12573, i16 -12571, i16 -21513, i16 -21509, i16 -21438, i16 -20813, i16 -12576, i16 -21511, i16 -21435, i16 -12583, i16 -1, i16 -1, i16 -1, i16 -21508, i16 -20814, i16 -21514, i16 -1, i16 -12586, i16 -12579, i16 -12587, i16 -12584, i16 -12580, i16 -11854, i16 -21436, i16 -1, i16 -12575, i16 -12574, i16 -12572, i16 -21515, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20799, i16 -11842, i16 -20801, i16 -20800, i16 -11852, i16 -11836, i16 -1, i16 -20810, i16 -1, i16 -1, i16 -10906, i16 -11834, i16 -11840, i16 -1, i16 -11849, i16 -1, i16 -11831, i16 -11846, i16 -20804, i16 -10883, i16 -11843, i16 -20802, i16 -20811, i16 -1, i16 -11829, i16 -11841, i16 -20808, i16 -11848, i16 -11851, i16 -11850, i16 -20807, i16 -11835, i16 -11828, i16 -20805, i16 -11844, i16 -11845, i16 -20797, i16 -20798, i16 -20812, i16 -20806, i16 -20803, i16 -11832, i16 -1, i16 -1, i16 -11838, i16 -20809, i16 -11853, i16 -11830, i16 -11839, i16 -11837, i16 -11833, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10905, i16 -1, i16 -20041, i16 -20021, i16 -20022, i16 -1, i16 -20033, i16 -1, i16 -10887, i16 -10891, i16 -10894, i16 -10842, i16 -20038, i16 -20046, i16 -1, i16 -1, i16 -10889, i16 -19288, i16 -20042, i16 -10847, i16 -1, i16 -20020, i16 -20023, i16 -10885, i16 -10902, i16 -1, i16 -1, i16 -20024, i16 -10845, i16 -10903, i16 -20035, i16 -20031, i16 -10846, i16 -1, i16 -10893, i16 -20030, i16 -20036, i16 -10904, i16 -1, i16 -19336, i16 -10843, i16 -10895, i16 -20025, i16 -10892, i16 -10844, i16 -20026, i16 -1, i16 -9902, i16 -1, i16 -20045, i16 -10897, i16 -20040, i16 -20029, i16 -1, i16 -20034, i16 -10888, i16 -10898, i16 -10900, i16 -10882, i16 -20048, i16 -20028, i16 -20044, i16 -19337, i16 -10884, i16 -20043, i16 -1, i16 -20047, i16 -20032, i16 -20037, i16 -20039, i16 -10896, i16 -20027, i16 -10899, i16 -10886, i16 -10890, i16 -9900, i16 -9901, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10901, i16 -9884, i16 -1, i16 -19334, i16 -1, i16 -9878, i16 -9895, i16 -9881, i16 -8841, i16 -19331, i16 -9877, i16 -9874, i16 -19332, i16 -9892, i16 -9875, i16 -9876, i16 -19330, i16 -9899, i16 -19335, i16 -19293, i16 -1, i16 -19295, i16 -9879, i16 -1, i16 -9889, i16 -19291, i16 -9872, i16 -9880, i16 -9871, i16 -19283, i16 -19285, i16 -9882, i16 -9883, i16 -1, i16 -9885, i16 -9891, i16 -19292, i16 -1, i16 -19294, i16 -11847, i16 -9898, i16 -1, i16 -8777, i16 -9897, i16 -19333, i16 -19286, i16 -8839, i16 -1, i16 -19290, i16 -19289, i16 -9896, i16 -9873, i16 -8840, i16 -9888, i16 -9893, i16 -19287, i16 -9887, i16 -9890, i16 -1, i16 -1, i16 -19282, i16 -18576, i16 -1, i16 -1, i16 -8836, i16 -8783, i16 -8778, i16 -8790, i16 -18580, i16 -8773, i16 -18583, i16 -8838, i16 -1, i16 -8837, i16 -18590, i16 -18581, i16 -8796, i16 -18578, i16 -18577, i16 -8795, i16 -1, i16 -8782, i16 -8776, i16 -18582, i16 -1, i16 -18588, i16 -8797, i16 -8835, i16 -8774, i16 -8792, i16 -8791, i16 -8834, i16 -8780, i16 -8789, i16 -8779, i16 -8787, i16 -1, i16 -18587, i16 -7719, i16 -18584, i16 -18586, i16 -8775, i16 -8784, i16 -8788, i16 -1, i16 -1, i16 -8799, i16 -17837, i16 -8785, i16 -18579, i16 -8793, i16 -1, i16 -8794, i16 -1, i16 -1, i16 -1, i16 -18585, i16 -18589, i16 -7698, i16 -8781, i16 -8786, i16 -1, i16 -8798, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7703, i16 -1, i16 -7718, i16 -7707, i16 -1, i16 -7700, i16 -17839, i16 -19284, i16 -7702, i16 -17844, i16 -1, i16 -1, i16 -1, i16 -17845, i16 -7695, i16 -1, i16 -7717, i16 -7704, i16 -7716, i16 -7705, i16 -17841, i16 -7701, i16 -9886, i16 -1, i16 -1, i16 -1, i16 -7694, i16 -7709, i16 -17838, i16 -6726, i16 -17233, i16 -1, i16 -7696, i16 -7697, i16 -17836, i16 -6739, i16 -17232, i16 -6738, i16 -1, i16 -7713, i16 -7712, i16 -7715, i16 -7710, i16 -7714, i16 -7693, i16 -17842, i16 -17231, i16 -17840, i16 -17835, i16 -1, i16 -7711, i16 -1, i16 -7699, i16 -1, i16 -1, i16 -7706, i16 -1, i16 -1, i16 -6735, i16 -1, i16 -17846, i16 -17228, i16 -5718, i16 -6730, i16 -6731, i16 -6729, i16 -1, i16 -1, i16 -6732, i16 -17227, i16 -1, i16 -17221, i16 -17224, i16 -1, i16 -17223, i16 -6737, i16 -6734, i16 -6724, i16 -17215, i16 -17217, i16 -1, i16 -6733, i16 -9894, i16 -17230, i16 -6727, i16 -6736, i16 -1, i16 -17214, i16 -6728, i16 -17843, i16 -17225, i16 -7708, i16 -1, i16 -1, i16 -17222, i16 -1, i16 -17218, i16 -17216, i16 -17219, i16 -17220, i16 -1, i16 -17226, i16 -6725, i16 -17229, i16 -17213, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16680, i16 -16679, i16 -5719, i16 -16670, i16 -16673, i16 -1, i16 -16682, i16 -16675, i16 -5717, i16 -16677, i16 -16683, i16 -1, i16 -16676, i16 -1, i16 -5720, i16 -16197, i16 -16681, i16 -1, i16 -16674, i16 -16198, i16 -5721, i16 -5722, i16 -1, i16 -16672, i16 -1, i16 -16671, i16 -1, i16 -5723, i16 -5724, i16 -16196, i16 -5714, i16 -16678, i16 -5716, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16195, i16 -1, i16 -16190, i16 -4886, i16 -4884, i16 -1, i16 -16193, i16 -1, i16 -4883, i16 -4887, i16 -1, i16 -4885, i16 -16192, i16 -16189, i16 -1, i16 -4888, i16 -16194, i16 -16191, i16 -15783, i16 -5715, i16 -15784, i16 -1, i16 -1, i16 -15778, i16 -4140, i16 -1, i16 -15780, i16 -15779, i16 -4137, i16 -4141, i16 -15782, i16 -4143, i16 -15509, i16 -4139, i16 -1, i16 -4138, i16 -4142, i16 -1, i16 -15781, i16 -3518, i16 -1, i16 -3515, i16 -1, i16 -1, i16 -3514, i16 -3516, i16 -3513, i16 -15508, i16 -3517, i16 -1, i16 -1, i16 -2994, i16 -15260, i16 -2995, i16 -2996, i16 -2997, i16 -15261, i16 -15259, i16 -1, i16 -2611, i16 -15134, i16 -15135, i16 -1, i16 -1, i16 -2335, i16 -2336, i16 -2333, i16 -14901, i16 -14987, i16 -2083, i16 -2334, i16 -1, i16 -1, i16 -2084, i16 -14899, i16 -14900, i16 -14861, i16 -1879, i16 -1809, i16 -23324, i16 -1, i16 -1, i16 -9870, i16 -5713, i16 -1, i16 -1, i16 -22868, i16 -13577, i16 -22543, i16 -22545, i16 -1, i16 -22544, i16 -1, i16 -13119, i16 -22031, i16 -21434, i16 -1, i16 -12569, i16 -1, i16 -12568, i16 -1, i16 -21433, i16 -11826, i16 -1, i16 -20796, i16 -20795, i16 -11827, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20013, i16 -1, i16 -20017, i16 -1, i16 -10841, i16 -20010, i16 -20011, i16 -20018, i16 -20015, i16 -20012, i16 -20016, i16 -1, i16 -1, i16 -9866, i16 -20019, i16 -19281, i16 -1, i16 -1, i16 -1, i16 -19279, i16 -19278, i16 -9867, i16 -9864, i16 -19280, i16 -9869, i16 -9865, i16 -1, i16 -9868, i16 -1, i16 -18575, i16 -1, i16 -1, i16 -8772, i16 -1, i16 -1, i16 -17834, i16 -7692, i16 -16669, i16 -17212, i16 -6723, i16 -17211, i16 -17210, i16 -6721, i16 -6722, i16 -6720, i16 -5711, i16 -1, i16 -1, i16 -5712, i16 -4881, i16 -4882, i16 -16188, i16 -16187, i16 -3512, i16 -1, i16 -1, i16 -23323, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9863, i16 -1, i16 -1, i16 -1, i16 -19276, i16 -19277, i16 -8771, i16 -1, i16 -4136, i16 -15133, i16 -2082, i16 -23322, i16 -1, i16 -20794, i16 -1, i16 -20008, i16 -20009, i16 -9862, i16 -9861, i16 -18574, i16 -7691, i16 -17833, i16 -5710, i16 -1, i16 -23321, i16 -23112, i16 -1, i16 -22030, i16 -13118, i16 -1, i16 -12567, i16 -21432, i16 -20007, i16 -1, i16 -9860, i16 -19275, i16 -18573, i16 -1, i16 -6719, i16 -6718, i16 -1, i16 -1, i16 -4880, i16 -15777, i16 -1808, i16 -23320, i16 -1, i16 -13117, i16 -22029, i16 -21431, i16 -1, i16 -12566, i16 -1, i16 -20793, i16 -11822, i16 -11824, i16 -11823, i16 -20792, i16 -11825, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20005, i16 -20004, i16 -10840, i16 -20003, i16 -20006, i16 -9859, i16 -1, i16 -9858, i16 -8770, i16 -1, i16 -1, i16 -17831, i16 -17832, i16 -1, i16 -1, i16 -4879, i16 -4135, i16 -1, i16 -3510, i16 -3511, i16 -2993, i16 -1, i16 -13986, i16 -21430, i16 -1, i16 -1, i16 -23319, i16 -23111, i16 -1, i16 -22866, i16 -22867, i16 -1, i16 -1, i16 -22865, i16 -22864, i16 -13842, i16 -13843, i16 -13576, i16 -22542, i16 -13573, i16 -13574, i16 -13575, i16 -13572, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22028, i16 -13111, i16 -13115, i16 -13106, i16 -22021, i16 -1, i16 -22023, i16 -13110, i16 -13114, i16 -13107, i16 -22024, i16 -21952, i16 -13112, i16 -13116, i16 -22018, i16 -13109, i16 -22025, i16 -13108, i16 -22022, i16 -22020, i16 -13104, i16 -13105, i16 -13113, i16 -22026, i16 -22027, i16 -22019, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12561, i16 -12555, i16 -1, i16 -21424, i16 -21427, i16 -12564, i16 -12559, i16 -1, i16 -21421, i16 -21429, i16 -12560, i16 -21426, i16 -21423, i16 -1, i16 -1, i16 -12557, i16 -1, i16 -21428, i16 -12552, i16 -21425, i16 -1, i16 -21422, i16 -12563, i16 -12558, i16 -12554, i16 -12562, i16 -12565, i16 -1, i16 -1, i16 -12553, i16 -12556, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20784, i16 -20791, i16 -20788, i16 -1, i16 -20785, i16 -1, i16 -11819, i16 -1, i16 -20790, i16 -11821, i16 -1, i16 -20786, i16 -1, i16 -1, i16 -20789, i16 -1, i16 -11818, i16 -20787, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10836, i16 -20001, i16 -10837, i16 -10835, i16 -20002, i16 -19997, i16 -11820, i16 -1, i16 -10838, i16 -10834, i16 -1, i16 -20000, i16 -10839, i16 -19998, i16 -1, i16 -19999, i16 -1, i16 -9817, i16 -1, i16 -9822, i16 -1, i16 -19274, i16 -19270, i16 -19273, i16 -9819, i16 -9816, i16 -1, i16 -19272, i16 -1, i16 -19271, i16 -19266, i16 -8761, i16 -9818, i16 -19268, i16 -9821, i16 -9823, i16 -1, i16 -19267, i16 -1, i16 -9820, i16 -1, i16 -1, i16 -1, i16 -18567, i16 -1, i16 -8769, i16 -18570, i16 -18569, i16 -18571, i16 -8764, i16 -8765, i16 -8768, i16 -18565, i16 -1, i16 -1, i16 -8766, i16 -19269, i16 -1, i16 -1, i16 -8762, i16 -8767, i16 -18568, i16 -18572, i16 -18566, i16 -8763, i16 -1, i16 -1, i16 -1, i16 -17828, i16 -1, i16 -7688, i16 -7689, i16 -7690, i16 -17830, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17829, i16 -6715, i16 -6712, i16 -17208, i16 -1, i16 -1, i16 -17209, i16 -6711, i16 -6716, i16 -17206, i16 -6714, i16 -1, i16 -17207, i16 -6717, i16 -1, i16 -6713, i16 -16663, i16 -16666, i16 -5701, i16 -5702, i16 -1, i16 -5703, i16 -5708, i16 -1, i16 -5707, i16 -1, i16 -1, i16 -1, i16 -16665, i16 -1, i16 -16668, i16 -16664, i16 -5709, i16 -16667, i16 -5706, i16 -5705, i16 -5700, i16 -1, i16 -1, i16 -5704, i16 -1, i16 -1, i16 -4878, i16 -1, i16 -1, i16 -1, i16 -16185, i16 -1, i16 -4132, i16 -16186, i16 -4134, i16 -4133, i16 -15776, i16 -15506, i16 -3509, i16 -1, i16 -15507, i16 -1, i16 -1, i16 -2991, i16 -2990, i16 -1, i16 -15258, i16 -1, i16 -2992, i16 -15132, i16 -1, i16 -2081, i16 -14898, i16 -1878, i16 -1877, i16 -1, i16 -23318, i16 -1, i16 -22863, i16 -22862, i16 -22541, i16 -1, i16 -13103, i16 -21420, i16 -20783, i16 -19996, i16 -1, i16 -1, i16 -20270, i16 -1, i16 -19265, i16 -19264, i16 -19508, i16 -9815, i16 -1, i16 -18564, i16 -7686, i16 -7687, i16 -1, i16 -1, i16 -23317, i16 -22861, i16 -13102, i16 -21950, i16 -1, i16 -21951, i16 -1, i16 -12551, i16 -12550, i16 -1, i16 -11817, i16 -11816, i16 -20782, i16 -20781, i16 -1, i16 -20780, i16 -10833, i16 -1, i16 -1, i16 -19994, i16 -1, i16 -19262, i16 -1, i16 -19263, i16 -8760, i16 -8326, i16 -7685, i16 -5699, i16 -1, i16 -1, i16 -15775, i16 -15257, i16 -23316, i16 -1, i16 -23108, i16 -23107, i16 -23109, i16 -23106, i16 -23110, i16 -1, i16 -1, i16 -22858, i16 -1, i16 -13834, i16 -22859, i16 -22857, i16 -1, i16 -1, i16 -13839, i16 -13840, i16 -13837, i16 -13838, i16 -13835, i16 -22860, i16 -13841, i16 -13836, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13571, i16 -22531, i16 -13570, i16 -13501, i16 -22532, i16 -1, i16 -13497, i16 -13502, i16 -13499, i16 -22539, i16 -22538, i16 -22537, i16 -22536, i16 -1, i16 -22464, i16 -1, i16 -13503, i16 -22534, i16 -22463, i16 -1, i16 -13504, i16 -13498, i16 -1, i16 -22535, i16 -13500, i16 -22533, i16 -22540, i16 -22530, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21929, i16 -1, i16 -13100, i16 -21949, i16 -1, i16 -21939, i16 -21938, i16 -21946, i16 -21928, i16 -21944, i16 -13092, i16 -21933, i16 -13097, i16 -21943, i16 -13082, i16 -13081, i16 -13089, i16 -13096, i16 -21930, i16 -13084, i16 -21935, i16 -21937, i16 -1, i16 -13083, i16 -1, i16 -13085, i16 -13093, i16 -13101, i16 -13094, i16 -21942, i16 -1, i16 -21936, i16 -1, i16 -21948, i16 -13090, i16 -13091, i16 -13099, i16 -1, i16 -21934, i16 -13087, i16 -13098, i16 -21931, i16 -13080, i16 -21947, i16 -1, i16 -21940, i16 -13095, i16 -13086, i16 -21932, i16 -1, i16 -21945, i16 -21941, i16 -1, i16 -13088, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12453, i16 -21412, i16 -21399, i16 -1, i16 -12458, i16 -12468, i16 -21406, i16 -12470, i16 -21413, i16 -12475, i16 -21403, i16 -12462, i16 -12546, i16 -12479, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12476, i16 -12549, i16 -12463, i16 -12447, i16 -21408, i16 -12474, i16 -12456, i16 -1, i16 -12547, i16 -12449, i16 -12448, i16 -12445, i16 -12454, i16 -12469, i16 -12461, i16 -21402, i16 -21415, i16 -21407, i16 -21395, i16 -21418, i16 -21416, i16 -1, i16 -1, i16 -1, i16 -12477, i16 -21398, i16 -21405, i16 -12451, i16 -12480, i16 -21396, i16 -21401, i16 -12471, i16 -1, i16 -1, i16 -21397, i16 -12464, i16 -12472, i16 -21404, i16 -12452, i16 -12460, i16 -1, i16 -21410, i16 -12446, i16 -12473, i16 -21414, i16 -12455, i16 -12465, i16 -21409, i16 -12459, i16 -21417, i16 -12548, i16 -21400, i16 -20765, i16 -21411, i16 -12466, i16 -12467, i16 -12478, i16 -1, i16 -12450, i16 -1, i16 -12457, i16 -1, i16 -1, i16 -21419, i16 -11796, i16 -20758, i16 -11795, i16 -1, i16 -11807, i16 -20769, i16 -20757, i16 -1, i16 -11814, i16 -1, i16 -11805, i16 -11797, i16 -1, i16 -11815, i16 -11788, i16 -20779, i16 -1, i16 -1, i16 -1, i16 -11789, i16 -11794, i16 -1, i16 -11793, i16 -20771, i16 -20760, i16 -11803, i16 -1, i16 -11802, i16 -11792, i16 -11801, i16 -1, i16 -11806, i16 -11812, i16 -11811, i16 -11798, i16 -11804, i16 -1, i16 -1, i16 -20778, i16 -20774, i16 -11790, i16 -11810, i16 -20762, i16 -20766, i16 -1, i16 -1, i16 -20763, i16 -20756, i16 -20773, i16 -20761, i16 -11799, i16 -20759, i16 -20776, i16 -1, i16 -20777, i16 -11813, i16 -1, i16 -11809, i16 -20768, i16 -11791, i16 -11800, i16 -11808, i16 -20764, i16 -20767, i16 -1, i16 -20775, i16 -20772, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10812, i16 -1, i16 -10828, i16 -10827, i16 -10823, i16 -1, i16 -10808, i16 -10811, i16 -1, i16 -10818, i16 -10819, i16 -19987, i16 -10815, i16 -10800, i16 -10832, i16 -1, i16 -10799, i16 -10813, i16 -10795, i16 -10807, i16 -19988, i16 -10809, i16 -19993, i16 -19972, i16 -19982, i16 -1, i16 -19978, i16 -19979, i16 -10831, i16 -1, i16 -10802, i16 -10796, i16 -10804, i16 -10797, i16 -1, i16 -1, i16 -10816, i16 -10830, i16 -10798, i16 -10814, i16 -19990, i16 -19977, i16 -1, i16 -10805, i16 -19984, i16 -1, i16 -1, i16 -1, i16 -10806, i16 -10829, i16 -19976, i16 -1, i16 -19974, i16 -10803, i16 -19973, i16 -19991, i16 -10822, i16 -10801, i16 -1, i16 -1, i16 -19985, i16 -19975, i16 -10820, i16 -10810, i16 -10825, i16 -10821, i16 -19980, i16 -10826, i16 -19992, i16 -19983, i16 -19986, i16 -10817, i16 -20770, i16 -9792, i16 -19989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19981, i16 -1, i16 -9789, i16 -9767, i16 -9778, i16 -19242, i16 -1, i16 -19247, i16 -9795, i16 -19246, i16 -9779, i16 -1, i16 -9786, i16 -9773, i16 -19250, i16 -9813, i16 -9771, i16 -19260, i16 -9805, i16 -19257, i16 -19258, i16 -1, i16 -19241, i16 -1, i16 -9811, i16 -9777, i16 -9776, i16 -19255, i16 -19259, i16 -9797, i16 -1, i16 -19248, i16 -9802, i16 -1, i16 -9775, i16 -19252, i16 -9783, i16 -9770, i16 -9808, i16 -9803, i16 -9809, i16 -1, i16 -19253, i16 -9790, i16 -8738, i16 -9807, i16 -19249, i16 -9798, i16 -9774, i16 -19254, i16 -9801, i16 -9804, i16 -9787, i16 -19251, i16 -19261, i16 -19239, i16 -9784, i16 -9785, i16 -9812, i16 -19256, i16 -9772, i16 -9796, i16 -9794, i16 -1, i16 -9781, i16 -9782, i16 -9814, i16 -19245, i16 -19243, i16 -9806, i16 -9799, i16 -9791, i16 -19244, i16 -9800, i16 -9788, i16 -9769, i16 -1, i16 -9780, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9768, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9810, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8718, i16 -18522, i16 -1, i16 -8720, i16 -8741, i16 -8736, i16 -8743, i16 -1, i16 -8724, i16 -8757, i16 -8750, i16 -1, i16 -8726, i16 -8716, i16 -8740, i16 -1, i16 -8753, i16 -8734, i16 -8729, i16 -8749, i16 -1, i16 -8732, i16 -8752, i16 -1, i16 -1, i16 -8745, i16 -8744, i16 -18520, i16 -8725, i16 -8727, i16 -1, i16 -8756, i16 -8722, i16 -1, i16 -8721, i16 -8719, i16 -18516, i16 -18524, i16 -1, i16 -10824, i16 -8748, i16 -8730, i16 -8747, i16 -18527, i16 -18511, i16 -8723, i16 -18513, i16 -18517, i16 -8758, i16 -18525, i16 -1, i16 -8755, i16 -18512, i16 -1, i16 -8739, i16 -8759, i16 -1, i16 -18519, i16 -8735, i16 -8751, i16 -18518, i16 -8742, i16 -18562, i16 -19240, i16 -8733, i16 -9793, i16 -8754, i16 -1, i16 -1, i16 -8728, i16 -18523, i16 -8731, i16 -18526, i16 -8737, i16 -18515, i16 -8746, i16 -8717, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18521, i16 -8506, i16 -1, i16 -1, i16 -18514, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7606, i16 -7608, i16 -1, i16 -7586, i16 -7610, i16 -1, i16 -7592, i16 -18563, i16 -17825, i16 -7614, i16 -7587, i16 -1, i16 -7609, i16 -7595, i16 -17820, i16 -17827, i16 -1, i16 -7589, i16 -1, i16 -7616, i16 -7590, i16 -1, i16 -17809, i16 -7599, i16 -7583, i16 -17811, i16 -7607, i16 -17826, i16 -7605, i16 -7591, i16 -17817, i16 -7612, i16 -17813, i16 -17823, i16 -7603, i16 -7613, i16 -7684, i16 -1, i16 -7593, i16 -17816, i16 -7584, i16 -7683, i16 -17819, i16 -1, i16 -7597, i16 -1, i16 -17818, i16 -7611, i16 -7600, i16 -7604, i16 -7602, i16 -1, i16 -17824, i16 -7585, i16 -17810, i16 -7601, i16 -1, i16 -7582, i16 -1, i16 -1, i16 -7682, i16 -7596, i16 -17821, i16 -17812, i16 -17814, i16 -7615, i16 -7594, i16 -17815, i16 -1, i16 -1, i16 -17822, i16 -7598, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7588, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6699, i16 -1, i16 -6703, i16 -6707, i16 -6687, i16 -6690, i16 -17203, i16 -1, i16 -1, i16 -6683, i16 -6700, i16 -17192, i16 -6693, i16 -1, i16 -1, i16 -6704, i16 -6694, i16 -17195, i16 -6674, i16 -1, i16 -6677, i16 -6691, i16 -6706, i16 -1, i16 -1, i16 -6686, i16 -6684, i16 -17199, i16 -6696, i16 -6701, i16 -6710, i16 -17202, i16 -17194, i16 -1, i16 -6681, i16 -17193, i16 -6709, i16 -6675, i16 -6688, i16 -6682, i16 -17196, i16 -1, i16 -1, i16 -6685, i16 -1, i16 -6678, i16 -1, i16 -17191, i16 -1, i16 -17197, i16 -6692, i16 -6705, i16 -6673, i16 -6708, i16 -6680, i16 -17200, i16 -1, i16 -6698, i16 -1, i16 -6697, i16 -17201, i16 -17204, i16 -6702, i16 -17198, i16 -1, i16 -17205, i16 -1, i16 -6679, i16 -6676, i16 -6695, i16 -5686, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5694, i16 -1, i16 -5698, i16 -16650, i16 -1, i16 -1, i16 -16661, i16 -16656, i16 -16660, i16 -5684, i16 -5673, i16 -16662, i16 -5692, i16 -5683, i16 -6689, i16 -5682, i16 -1, i16 -1, i16 -16655, i16 -1, i16 -5667, i16 -16651, i16 -16648, i16 -5696, i16 -1, i16 -16652, i16 -1, i16 -5669, i16 -5668, i16 -5678, i16 -5679, i16 -5687, i16 -1, i16 -1, i16 -5677, i16 -5670, i16 -5671, i16 -1, i16 -16657, i16 -16659, i16 -5685, i16 -5688, i16 -1, i16 -5691, i16 -5672, i16 -16649, i16 -5674, i16 -16653, i16 -16654, i16 -1, i16 -5680, i16 -1, i16 -5697, i16 -5695, i16 -5693, i16 -5675, i16 -5681, i16 -16658, i16 -1, i16 -5690, i16 -1, i16 -5676, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5689, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16177, i16 -4795, i16 -16184, i16 -4875, i16 -1, i16 -4799, i16 -16182, i16 -4792, i16 -1, i16 -4868, i16 -1, i16 -4873, i16 -1, i16 -1, i16 -4791, i16 -4877, i16 -4866, i16 -1, i16 -16175, i16 -4796, i16 -4790, i16 -4867, i16 -16183, i16 -4800, i16 -4876, i16 -16176, i16 -1, i16 -1, i16 -4793, i16 -4871, i16 -16180, i16 -1, i16 -4869, i16 -4872, i16 -16174, i16 -4870, i16 -16181, i16 -16178, i16 -4797, i16 -4874, i16 -4794, i16 -1, i16 -4798, i16 -1, i16 -1, i16 -1, i16 -15773, i16 -4121, i16 -15768, i16 -15767, i16 -1, i16 -1, i16 -1, i16 -15774, i16 -4122, i16 -1, i16 -4125, i16 -4124, i16 -15770, i16 -4130, i16 -4126, i16 -15771, i16 -1, i16 -4129, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15769, i16 -15772, i16 -1, i16 -4131, i16 -4127, i16 -4123, i16 -1, i16 -1, i16 -1, i16 -3503, i16 -3506, i16 -3497, i16 -1, i16 -3498, i16 -3500, i16 -3505, i16 -1, i16 -15502, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3504, i16 -15503, i16 -16179, i16 -3501, i16 -15504, i16 -3496, i16 -3502, i16 -3507, i16 -4128, i16 -1, i16 -1, i16 -1, i16 -15505, i16 -1, i16 -3508, i16 -2986, i16 -1, i16 -2987, i16 -3499, i16 -15256, i16 -1, i16 -2983, i16 -2982, i16 -2988, i16 -2984, i16 -1, i16 -2989, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2607, i16 -2985, i16 -15129, i16 -15131, i16 -2609, i16 -2606, i16 -1, i16 -2610, i16 -2608, i16 -15130, i16 -1, i16 -1, i16 -1, i16 -2331, i16 -2330, i16 -14986, i16 -2332, i16 -1, i16 -1, i16 -1, i16 -2078, i16 -14897, i16 -2080, i16 -2079, i16 -1876, i16 -1, i16 -1, i16 -14762, i16 -1805, i16 -1807, i16 -1806, i16 -1804, i16 -1, i16 -1, i16 -1, i16 -1605, i16 -1, i16 -23315, i16 -22856, i16 -1, i16 -21927, i16 -1, i16 -13079, i16 -1, i16 -1, i16 -12444, i16 -1, i16 -1, i16 -1, i16 -11787, i16 -11785, i16 -1, i16 -11786, i16 -1, i16 -11784, i16 -19971, i16 -10793, i16 -11783, i16 -1, i16 -10794, i16 -10792, i16 -10791, i16 -9766, i16 -19237, i16 -9765, i16 -9763, i16 -19236, i16 -19238, i16 -9764, i16 -1, i16 -8710, i16 -8712, i16 -8713, i16 -1, i16 -8714, i16 -8715, i16 -18510, i16 -8711, i16 -17808, i16 -7581, i16 -7579, i16 -17807, i16 -7580, i16 -17189, i16 -1, i16 -17190, i16 -6672, i16 -1, i16 -1, i16 -5665, i16 -5666, i16 -5664, i16 -1, i16 -1, i16 -16647, i16 -1, i16 -4789, i16 -16173, i16 -1, i16 -4120, i16 -15766, i16 -3495, i16 -14985, i16 -23314, i16 -23105, i16 -22855, i16 -22462, i16 -21926, i16 -21925, i16 -1, i16 -1, i16 -21394, i16 -1, i16 -1, i16 -11782, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18509, i16 -1, i16 -1, i16 -1, i16 -6447, i16 -16646, i16 -15765, i16 -23313, i16 -1, i16 -22854, i16 -1, i16 -1, i16 -13077, i16 -21924, i16 -13078, i16 -1, i16 -12443, i16 -21393, i16 -12442, i16 -1, i16 -21392, i16 -1, i16 -11780, i16 -20754, i16 -20755, i16 -1, i16 -10786, i16 -10788, i16 -10787, i16 -10789, i16 -1, i16 -10790, i16 -1, i16 -1, i16 -9762, i16 -9759, i16 -19234, i16 -9761, i16 -19235, i16 -9760, i16 -1, i16 -8709, i16 -1, i16 -1, i16 -7578, i16 -7577, i16 -7576, i16 -1, i16 -6669, i16 -6670, i16 -17188, i16 -6671, i16 -6668, i16 -5663, i16 -1, i16 -1, i16 -5662, i16 -5661, i16 -1, i16 -4788, i16 -16172, i16 -15764, i16 -3494, i16 -1, i16 -15128, i16 -13985, i16 -1, i16 -21391, i16 -12441, i16 -20753, i16 -1, i16 -1, i16 -19970, i16 -1, i16 -19233, i16 -9758, i16 -1, i16 -18507, i16 -18508, i16 -1, i16 -1, i16 -7575, i16 -7574, i16 -17187, i16 -17186, i16 -5659, i16 -5660, i16 -4119, i16 -2077, i16 -23312, i16 -13984, i16 -23104, i16 -1, i16 -22461, i16 -13496, i16 -1, i16 -21390, i16 -18506, i16 -23311, i16 -1, i16 -12440, i16 -21389, i16 -12439, i16 -1, i16 -16171, i16 -23310, i16 -1, i16 -1, i16 -13076, i16 -1, i16 -12438, i16 -1, i16 -11710, i16 -11711, i16 -11778, i16 -1, i16 -11779, i16 -11709, i16 -11712, i16 -1, i16 -1, i16 -19904, i16 -19903, i16 -1, i16 -1, i16 -19232, i16 -9757, i16 -1, i16 -9756, i16 -9755, i16 -1, i16 -1, i16 -1, i16 -8639, i16 -8638, i16 -8640, i16 -1, i16 -8707, i16 -8706, i16 -18505, i16 -7573, i16 -6665, i16 -6666, i16 -6667, i16 -6664, i16 -5657, i16 -5658, i16 -16645, i16 -5656, i16 -1, i16 -16170, i16 -4787, i16 -1, i16 -4118, i16 -3493, i16 -2329, i16 -1, i16 -23309, i16 -23102, i16 -23103, i16 -1, i16 -21923, i16 -13983, i16 -13954, i16 -22853, i16 -1, i16 -13833, i16 -13495, i16 -13494, i16 -21922, i16 -1, i16 -13075, i16 -1, i16 -21388, i16 -12437, i16 -12436, i16 -1, i16 -20752, i16 -20748, i16 -11708, i16 -20749, i16 -20751, i16 -20750, i16 -1, i16 -10785, i16 -19902, i16 -19229, i16 -1, i16 -19231, i16 -19230, i16 -9754, i16 -1, i16 -1, i16 -17806, i16 -23308, i16 -1, i16 -13919, i16 -1, i16 -23101, i16 -1, i16 -1, i16 -13916, i16 -1, i16 -1, i16 -23098, i16 -13917, i16 -23099, i16 -23100, i16 -22460, i16 -13918, i16 -1, i16 -1, i16 -13832, i16 -1, i16 -1, i16 -1, i16 -13828, i16 -13826, i16 -13760, i16 -22843, i16 -22842, i16 -13829, i16 -22847, i16 -1, i16 -13831, i16 -1, i16 -13827, i16 -22846, i16 -1, i16 -22851, i16 -1, i16 -22850, i16 -1, i16 -22844, i16 -13830, i16 -22852, i16 -22459, i16 -22849, i16 -22848, i16 -22845, i16 -1, i16 -1, i16 -1, i16 -13477, i16 -13479, i16 -13492, i16 -22447, i16 -13485, i16 -22452, i16 -13491, i16 -1, i16 -13483, i16 -1, i16 -13486, i16 -22449, i16 -13487, i16 -22442, i16 -13478, i16 -22440, i16 -1, i16 -22438, i16 -1, i16 -13493, i16 -1, i16 -22451, i16 -13476, i16 -1, i16 -22444, i16 -22441, i16 -1, i16 -12987, i16 -22457, i16 -22434, i16 -22443, i16 -13490, i16 -22454, i16 -22439, i16 -13482, i16 -22456, i16 -22455, i16 -12989, i16 -13489, i16 -22448, i16 -22437, i16 -13475, i16 -13488, i16 -22450, i16 -1, i16 -22445, i16 -13074, i16 -22436, i16 -13481, i16 -22446, i16 -1, i16 -22435, i16 -22458, i16 -13484, i16 -22453, i16 -13480, i16 -12988, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21910, i16 -21894, i16 -13067, i16 -21903, i16 -1, i16 -12981, i16 -21918, i16 -1, i16 -21915, i16 -12990, i16 -1, i16 -13069, i16 -13065, i16 -21907, i16 -21905, i16 -13062, i16 -21898, i16 -21912, i16 -21914, i16 -21913, i16 -21899, i16 -12985, i16 -21904, i16 -13063, i16 -13061, i16 -21906, i16 -21901, i16 -13060, i16 -12982, i16 -1, i16 -21387, i16 -21895, i16 -1, i16 -21917, i16 -12983, i16 -1, i16 -12979, i16 -13064, i16 -12977, i16 -12992, i16 -21908, i16 -13068, i16 -21909, i16 -21891, i16 -21902, i16 -1, i16 -13070, i16 -12427, i16 -21896, i16 -21892, i16 -12991, i16 -12986, i16 -1, i16 -21890, i16 -21897, i16 -21911, i16 -21921, i16 -1, i16 -21916, i16 -1, i16 -13066, i16 -21920, i16 -12978, i16 -1, i16 -13072, i16 -13073, i16 -13059, i16 -13071, i16 -21893, i16 -20747, i16 -21900, i16 -13058, i16 -21919, i16 -1, i16 -21338, i16 -1, i16 -1, i16 -1, i16 -12980, i16 -12420, i16 -12383, i16 -1, i16 -12380, i16 -12425, i16 -1, i16 -1, i16 -12377, i16 -12374, i16 -12372, i16 -12428, i16 -21386, i16 -21381, i16 -11703, i16 -21331, i16 -12379, i16 -12371, i16 -12421, i16 -12429, i16 -1, i16 -1, i16 -1, i16 -11676, i16 -21378, i16 -12382, i16 -12424, i16 -12422, i16 -21339, i16 -1, i16 -12419, i16 -21379, i16 -12432, i16 -12376, i16 -1, i16 -12373, i16 -1, i16 -1, i16 -21382, i16 -1, i16 -21336, i16 -12435, i16 -21334, i16 -21384, i16 -21330, i16 -12375, i16 -12433, i16 -21333, i16 -11682, i16 -12984, i16 -21380, i16 -21385, i16 -12426, i16 -12434, i16 -21332, i16 -21340, i16 -12381, i16 -21335, i16 -21337, i16 -12423, i16 -21343, i16 -12431, i16 -21342, i16 -21341, i16 -12430, i16 -12378, i16 -21383, i16 -12418, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11700, i16 -20739, i16 -20669, i16 -1, i16 -1, i16 -1, i16 -11691, i16 -11685, i16 -11689, i16 -11702, i16 -11699, i16 -11706, i16 -11705, i16 -20662, i16 -20742, i16 -11690, i16 -11681, i16 -20667, i16 -20746, i16 -1, i16 -20672, i16 -11698, i16 -20670, i16 -11697, i16 -11687, i16 -1, i16 -1, i16 -1, i16 -20668, i16 -11672, i16 -11704, i16 -20740, i16 -20741, i16 -20664, i16 -11707, i16 -11674, i16 -11686, i16 -11673, i16 -11679, i16 -11693, i16 -11678, i16 -1, i16 -11684, i16 -11675, i16 -11677, i16 -20663, i16 -11692, i16 -20743, i16 -20744, i16 -20671, i16 -20665, i16 -11680, i16 -20666, i16 -11695, i16 -19901, i16 -1, i16 -11671, i16 -11696, i16 -11701, i16 -20738, i16 -20661, i16 -20745, i16 -1, i16 -11688, i16 -11683, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19867, i16 -10783, i16 -10779, i16 -1, i16 -19886, i16 -19888, i16 -1, i16 -1, i16 -19897, i16 -10781, i16 -10782, i16 -19877, i16 -1, i16 -10776, i16 -19883, i16 -1, i16 -10758, i16 -10681, i16 -19900, i16 -10761, i16 -10768, i16 -19865, i16 -10784, i16 -1, i16 -10756, i16 -1, i16 -19868, i16 -19880, i16 -19869, i16 -19890, i16 -10772, i16 -10754, i16 -10762, i16 -19889, i16 -19895, i16 -10683, i16 -1, i16 -10755, i16 -10688, i16 -19887, i16 -19879, i16 -10686, i16 -10774, i16 -10757, i16 -10769, i16 -10684, i16 -19874, i16 -19898, i16 -19876, i16 -10764, i16 -10766, i16 -10765, i16 -19885, i16 -10770, i16 -10771, i16 -19896, i16 -10777, i16 -10682, i16 -19894, i16 -10767, i16 -19864, i16 -1, i16 -19870, i16 -10778, i16 -19873, i16 -19875, i16 -19866, i16 -10760, i16 -19871, i16 -11694, i16 -10759, i16 -19872, i16 -10687, i16 -19899, i16 -10763, i16 -19881, i16 -10775, i16 -19882, i16 -1, i16 -19884, i16 -19892, i16 -19893, i16 -9753, i16 -10685, i16 -10773, i16 -1, i16 -1, i16 -9732, i16 -1, i16 -19891, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19135, i16 -19878, i16 -19218, i16 -9738, i16 -19204, i16 -1, i16 -9750, i16 -19221, i16 -19225, i16 -9655, i16 -19219, i16 -19215, i16 -19220, i16 -19211, i16 -9651, i16 -9660, i16 -1, i16 -1, i16 -9743, i16 -19206, i16 -19212, i16 -9731, i16 -19228, i16 -9654, i16 -9661, i16 -19224, i16 -9737, i16 -19209, i16 -9643, i16 -9642, i16 -1, i16 -19227, i16 -9656, i16 -19207, i16 -9733, i16 -9747, i16 -9746, i16 -19203, i16 -9742, i16 -9735, i16 -9741, i16 -1, i16 -19205, i16 -19132, i16 -9745, i16 -9752, i16 -9751, i16 -1, i16 -9749, i16 -19222, i16 -9736, i16 -1, i16 -19208, i16 -19134, i16 -1, i16 -1, i16 -9734, i16 -9645, i16 -9653, i16 -19226, i16 -9647, i16 -19214, i16 -1, i16 -19216, i16 -1, i16 -9641, i16 -19217, i16 -9663, i16 -9740, i16 -9730, i16 -19129, i16 -9659, i16 -9662, i16 -9744, i16 -19133, i16 -9649, i16 -9652, i16 -9644, i16 -19223, i16 -9664, i16 -19130, i16 -1, i16 -9657, i16 -1, i16 -1, i16 -19213, i16 -19210, i16 -1, i16 -9658, i16 -19131, i16 -9739, i16 -10780, i16 -1, i16 -1, i16 -9648, i16 -9650, i16 -9646, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9748, i16 -19136, i16 -1, i16 -1, i16 -1, i16 -8607, i16 -8608, i16 -8634, i16 -18499, i16 -1, i16 -8609, i16 -8631, i16 -8630, i16 -1, i16 -18489, i16 -8600, i16 -18494, i16 -8610, i16 -1, i16 -8637, i16 -18488, i16 -18498, i16 -8622, i16 -8632, i16 -8629, i16 -8605, i16 -18504, i16 -8598, i16 -8606, i16 -18495, i16 -8617, i16 -18484, i16 -1, i16 -1, i16 -18485, i16 -18491, i16 -1, i16 -1, i16 -8599, i16 -18503, i16 -8619, i16 -8628, i16 -8615, i16 -8603, i16 -18483, i16 -1, i16 -18501, i16 -8620, i16 -1, i16 -8627, i16 -18492, i16 -1, i16 -18493, i16 -8624, i16 -8614, i16 -8604, i16 -8633, i16 -8623, i16 -18500, i16 -8613, i16 -18487, i16 -18496, i16 -8626, i16 -18497, i16 -8635, i16 -8621, i16 -8601, i16 -19202, i16 -17744, i16 -8618, i16 -7572, i16 -8616, i16 -8602, i16 -18490, i16 -8625, i16 -18502, i16 -18486, i16 -17168, i16 -8636, i16 -1, i16 -8611, i16 -1, i16 -1, i16 -1, i16 -8612, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7510, i16 -17747, i16 -7555, i16 -7516, i16 -17758, i16 -1, i16 -7570, i16 -17745, i16 -1, i16 -17801, i16 -7571, i16 -7504, i16 -17743, i16 -7567, i16 -7517, i16 -1, i16 -7565, i16 -7501, i16 -7505, i16 -17803, i16 -17759, i16 -6573, i16 -17746, i16 -17795, i16 -7569, i16 -1, i16 -7506, i16 -17757, i16 -7509, i16 -7496, i16 -7563, i16 -7554, i16 -1, i16 -1, i16 -7498, i16 -7508, i16 -17796, i16 -1, i16 -1, i16 -7556, i16 -17802, i16 -17804, i16 -17752, i16 -1, i16 -1, i16 -7558, i16 -7561, i16 -7560, i16 -1, i16 -7502, i16 -1, i16 -7497, i16 -7499, i16 -17798, i16 -7495, i16 -17794, i16 -17753, i16 -1, i16 -7568, i16 -6662, i16 -7559, i16 -1, i16 -17800, i16 -17748, i16 -17751, i16 -17797, i16 -7515, i16 -7564, i16 -17750, i16 -7513, i16 -17756, i16 -17754, i16 -17805, i16 -1, i16 -7511, i16 -7519, i16 -7566, i16 -17755, i16 -7503, i16 -7500, i16 -7557, i16 -7512, i16 -1, i16 -17799, i16 -17185, i16 -7514, i16 -6663, i16 -1, i16 -7507, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7562, i16 -6588, i16 -6578, i16 -17182, i16 -6579, i16 -6567, i16 -17180, i16 -6581, i16 -1, i16 -6577, i16 -17169, i16 -1, i16 -6586, i16 -17177, i16 -1, i16 -6574, i16 -5648, i16 -17165, i16 -17166, i16 -6572, i16 -6589, i16 -6562, i16 -17171, i16 -1, i16 -17181, i16 -6569, i16 -1, i16 -6565, i16 -6560, i16 -6571, i16 -6583, i16 -17178, i16 -17175, i16 -17167, i16 -17172, i16 -1, i16 -6580, i16 -7518, i16 -1, i16 -1, i16 -6584, i16 -6561, i16 -17176, i16 -1, i16 -17173, i16 -6559, i16 -17184, i16 -6570, i16 -6661, i16 -6564, i16 -16161, i16 -1, i16 -6582, i16 -1, i16 -17183, i16 -6587, i16 -17179, i16 -6660, i16 -17749, i16 -6591, i16 -1, i16 -6566, i16 -6590, i16 -6592, i16 -17174, i16 -1, i16 -6568, i16 -1, i16 -6658, i16 -6575, i16 -6576, i16 -6563, i16 -6585, i16 -17170, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5645, i16 -1, i16 -16567, i16 -16642, i16 -5568, i16 -5653, i16 -16575, i16 -5641, i16 -16568, i16 -16573, i16 -5643, i16 -4785, i16 -5637, i16 -5566, i16 -5638, i16 -5655, i16 -5640, i16 -5564, i16 -5562, i16 -16643, i16 -5563, i16 -16572, i16 -16566, i16 -1, i16 -16569, i16 -1, i16 -5634, i16 -16570, i16 -5639, i16 -1, i16 -5651, i16 -5646, i16 -1, i16 -5635, i16 -16571, i16 -16574, i16 -16644, i16 -16576, i16 -5647, i16 -1, i16 -6659, i16 -5652, i16 -5649, i16 -5567, i16 -5644, i16 -5654, i16 -4786, i16 -5565, i16 -5650, i16 -5636, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4783, i16 -16157, i16 -1, i16 -1, i16 -16169, i16 -1, i16 -1, i16 -16165, i16 -4781, i16 -4775, i16 -4777, i16 -16167, i16 -16166, i16 -16159, i16 -4774, i16 -4782, i16 -16164, i16 -1, i16 -4778, i16 -4779, i16 -4773, i16 -16158, i16 -1, i16 -16163, i16 -16160, i16 -4780, i16 -16156, i16 -16162, i16 -16155, i16 -16168, i16 -4776, i16 -1, i16 -4784, i16 -1, i16 -1, i16 -4105, i16 -1, i16 -1, i16 -15759, i16 -4108, i16 -4106, i16 -1, i16 -15761, i16 -4110, i16 -4109, i16 -4114, i16 -1, i16 -1, i16 -5642, i16 -4113, i16 -15760, i16 -4117, i16 -1, i16 -15763, i16 -4104, i16 -15762, i16 -4116, i16 -4115, i16 -4111, i16 -15757, i16 -1, i16 -15758, i16 -1, i16 -1, i16 -4112, i16 -15496, i16 -3489, i16 -3483, i16 -15495, i16 -3492, i16 -15498, i16 -15501, i16 -3481, i16 -15497, i16 -1, i16 -15500, i16 -3490, i16 -3487, i16 -3486, i16 -3485, i16 -3482, i16 -1, i16 -4107, i16 -3491, i16 -15499, i16 -3484, i16 -3480, i16 -3488, i16 -1, i16 -1, i16 -1, i16 -2979, i16 -15254, i16 -2976, i16 -15253, i16 -2968, i16 -2977, i16 -2980, i16 -1, i16 -2978, i16 -2974, i16 -2971, i16 -2972, i16 -2969, i16 -2981, i16 -1, i16 -15255, i16 -2973, i16 -2970, i16 -2967, i16 -2975, i16 -2605, i16 -2604, i16 -2600, i16 -2599, i16 -1, i16 -2602, i16 -2601, i16 -2603, i16 -1, i16 -15127, i16 -1, i16 -1, i16 -1, i16 -1, i16 -14984, i16 -2325, i16 -1, i16 -1, i16 -2328, i16 -2327, i16 -2326, i16 -14983, i16 -1, i16 -2075, i16 -2076, i16 -1, i16 -1873, i16 -14860, i16 -1875, i16 -1872, i16 -1874, i16 -1803, i16 -14761, i16 -14747, i16 -1629, i16 -1684, i16 -1, i16 -1630, i16 -1584, i16 -1583, i16 -23307, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22841, i16 -13759, i16 -1, i16 -1, i16 -13474, i16 -1, i16 -22433, i16 -1, i16 -22430, i16 -1, i16 -13473, i16 -1, i16 -22432, i16 -22431, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12968, i16 -12966, i16 -12971, i16 -12974, i16 -12972, i16 -1, i16 -1, i16 -1, i16 -21852, i16 -1, i16 -1, i16 -1, i16 -21854, i16 -1, i16 -1, i16 -12970, i16 -21853, i16 -12973, i16 -12976, i16 -21855, i16 -12969, i16 -1, i16 -12975, i16 -21851, i16 -12967, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12369, i16 -1, i16 -12365, i16 -1, i16 -1, i16 -21321, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12362, i16 -1, i16 -21329, i16 -21326, i16 -21324, i16 -21322, i16 -21325, i16 -12366, i16 -12367, i16 -1, i16 -21327, i16 -12364, i16 -12363, i16 -1, i16 -12370, i16 -21323, i16 -1, i16 -21328, i16 -1, i16 -1, i16 -1, i16 -12368, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11657, i16 -11656, i16 -11655, i16 -20656, i16 -1, i16 -20660, i16 -11666, i16 -1, i16 -11658, i16 -11653, i16 -20655, i16 -1, i16 -11668, i16 -11662, i16 -11669, i16 -11659, i16 -1, i16 -1, i16 -11663, i16 -20659, i16 -20657, i16 -11654, i16 -1, i16 -11670, i16 -11667, i16 -11661, i16 -1, i16 -11660, i16 -11652, i16 -11664, i16 -1, i16 -20658, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19859, i16 -10674, i16 -1, i16 -1, i16 -10672, i16 -10676, i16 -1, i16 -10664, i16 -10678, i16 -10665, i16 -19863, i16 -10680, i16 -9637, i16 -10670, i16 -19860, i16 -1, i16 -10669, i16 -10666, i16 -1, i16 -10662, i16 -1, i16 -10673, i16 -1, i16 -10668, i16 -1, i16 -1, i16 -19862, i16 -19861, i16 -10663, i16 -10675, i16 -10679, i16 -10661, i16 -1, i16 -10671, i16 -1, i16 -1, i16 -10667, i16 -1, i16 -1, i16 -1, i16 -10677, i16 -1, i16 -19128, i16 -19127, i16 -9627, i16 -19121, i16 -1, i16 -9639, i16 -9630, i16 -9640, i16 -19124, i16 -9632, i16 -9634, i16 -1, i16 -9633, i16 -19126, i16 -1, i16 -9629, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9636, i16 -9638, i16 -19125, i16 -9635, i16 -9631, i16 -1, i16 -1, i16 -1, i16 -19123, i16 -1, i16 -1, i16 -1, i16 -9628, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8592, i16 -8585, i16 -8583, i16 -8543, i16 -1, i16 -18470, i16 -8597, i16 -1, i16 -18478, i16 -1, i16 -8582, i16 -18473, i16 -8542, i16 -18482, i16 -1, i16 -8579, i16 -1, i16 -8595, i16 -8578, i16 -8596, i16 -1, i16 -18468, i16 -1, i16 -8584, i16 -18481, i16 -8541, i16 -1, i16 -18476, i16 -8591, i16 -18471, i16 -8580, i16 -8593, i16 -8586, i16 -8590, i16 -8594, i16 -18479, i16 -18472, i16 -18474, i16 -18477, i16 -18469, i16 -18480, i16 -8587, i16 -1, i16 -18475, i16 -1, i16 -19122, i16 -1, i16 -8581, i16 -1, i16 -8589, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8588, i16 -1, i16 -1, i16 -7487, i16 -1, i16 -17740, i16 -1, i16 -1, i16 -7491, i16 -7485, i16 -7489, i16 -1, i16 -17738, i16 -7490, i16 -7486, i16 -7494, i16 -1, i16 -7492, i16 -17739, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7488, i16 -7493, i16 -1, i16 -17737, i16 -1, i16 -17742, i16 -1, i16 -1, i16 -7484, i16 -1, i16 -17741, i16 -6553, i16 -6556, i16 -6544, i16 -6550, i16 -6548, i16 -17164, i16 -6554, i16 -6546, i16 -1, i16 -1, i16 -6547, i16 -6549, i16 -1, i16 -6543, i16 -17161, i16 -6552, i16 -6545, i16 -1, i16 -17163, i16 -1, i16 -1, i16 -6557, i16 -6555, i16 -17162, i16 -6558, i16 -6542, i16 -1, i16 -6551, i16 -1, i16 -1, i16 -5558, i16 -16559, i16 -1, i16 -1, i16 -5547, i16 -5549, i16 -16565, i16 -5559, i16 -5556, i16 -5555, i16 -5560, i16 -16555, i16 -16554, i16 -5561, i16 -5546, i16 -5551, i16 -16561, i16 -16564, i16 -5552, i16 -5554, i16 -1, i16 -1, i16 -16558, i16 -5550, i16 -16563, i16 -1, i16 -16562, i16 -1, i16 -5553, i16 -16560, i16 -5557, i16 -1, i16 -5548, i16 -16557, i16 -5545, i16 -5544, i16 -16556, i16 -1, i16 -1, i16 -16153, i16 -16146, i16 -4772, i16 -4766, i16 -1, i16 -4768, i16 -16150, i16 -16151, i16 -16154, i16 -4770, i16 -1, i16 -1, i16 -1, i16 -16148, i16 -16149, i16 -16152, i16 -1, i16 -4767, i16 -4771, i16 -4769, i16 -1, i16 -16147, i16 -1, i16 -1, i16 -1, i16 -15753, i16 -4101, i16 -1, i16 -15756, i16 -15755, i16 -4099, i16 -15754, i16 -4102, i16 -4103, i16 -3476, i16 -4100, i16 -1, i16 -3475, i16 -15494, i16 -3477, i16 -1, i16 -1, i16 -3478, i16 -1, i16 -3479, i16 -15493, i16 -1, i16 -1, i16 -15252, i16 -1, i16 -1, i16 -2966, i16 -2965, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2596, i16 -2597, i16 -15126, i16 -1, i16 -2598, i16 -2324, i16 -2323, i16 -1, i16 -1, i16 -2074, i16 -1871, i16 -1, i16 -1, i16 -1802, i16 -1604, i16 -14727, i16 -1594, i16 -23306, i16 -1, i16 -21850, i16 -21849, i16 -1, i16 -1, i16 -21320, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16145, i16 -23305, i16 -1, i16 -21848, i16 -20654, i16 -18467, i16 -23304, i16 -1, i16 -19858, i16 -17736, i16 -13982, i16 -1, i16 -12361, i16 -11651, i16 -1, i16 -7483, i16 -1, i16 -16144, i16 -23303, i16 -21847, i16 -12360, i16 -12359, i16 -9626, i16 -19120, i16 -1, i16 -1, i16 -8540, i16 -1, i16 -1, i16 -18466, i16 -7482, i16 -1, i16 -1, i16 -17160, i16 -1, i16 -15492, i16 -23302, i16 -9625, i16 -23301, i16 -1, i16 -22839, i16 -13758, i16 -22840, i16 -22427, i16 -22428, i16 -22429, i16 -13472, i16 -1, i16 -1, i16 -1, i16 -21846, i16 -1, i16 -21845, i16 -12965, i16 -1, i16 -12358, i16 -1, i16 -12355, i16 -21318, i16 -12357, i16 -1, i16 -21319, i16 -12356, i16 -21317, i16 -1, i16 -11614, i16 -11615, i16 -11650, i16 -20653, i16 -1, i16 -10659, i16 -10658, i16 -19857, i16 -10660, i16 -10657, i16 -19118, i16 -19856, i16 -1, i16 -1, i16 -19119, i16 -9621, i16 -9622, i16 -1, i16 -9624, i16 -9623, i16 -1, i16 -9620, i16 -8538, i16 -8539, i16 -8535, i16 -1, i16 -8536, i16 -8537, i16 -17735, i16 -7479, i16 -1, i16 -7480, i16 -17734, i16 -7481, i16 -6541, i16 -1, i16 -6540, i16 -17159, i16 -1, i16 -5543, i16 -5542, i16 -1, i16 -1, i16 -3470, i16 -15491, i16 -3471, i16 -3472, i16 -3474, i16 -3473, i16 -15125, i16 -2964, i16 -2322, i16 -1801, i16 -1, i16 -23300, i16 -1, i16 -13915, i16 -23097, i16 -13914, i16 -1, i16 -1, i16 -1, i16 -13757, i16 -13756, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13466, i16 -1, i16 -1, i16 -13470, i16 -1, i16 -13471, i16 -21844, i16 -13467, i16 -22425, i16 -13469, i16 -22426, i16 -13465, i16 -13468, i16 -1, i16 -1, i16 -12961, i16 -12354, i16 -12963, i16 -12956, i16 -1, i16 -21843, i16 -1, i16 -21840, i16 -12955, i16 -12959, i16 -1, i16 -12958, i16 -1, i16 -12964, i16 -21841, i16 -12962, i16 -21842, i16 -12957, i16 -1, i16 -12960, i16 -1, i16 -1, i16 -12350, i16 -21315, i16 -21314, i16 -1, i16 -12347, i16 -12353, i16 -1, i16 -12348, i16 -1, i16 -12352, i16 -21316, i16 -12349, i16 -12351, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11608, i16 -11611, i16 -1, i16 -11609, i16 -20648, i16 -20649, i16 -20651, i16 -11612, i16 -11607, i16 -20652, i16 -20650, i16 -11610, i16 -10649, i16 -11613, i16 -11606, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10654, i16 -10650, i16 -1, i16 -10651, i16 -9618, i16 -9607, i16 -1, i16 -1, i16 -10648, i16 -1, i16 -10653, i16 -9619, i16 -19852, i16 -1, i16 -1, i16 -19853, i16 -10655, i16 -10652, i16 -19851, i16 -1, i16 -19854, i16 -19855, i16 -10656, i16 -10647, i16 -1, i16 -1, i16 -1, i16 -9616, i16 -9609, i16 -1, i16 -19116, i16 -9610, i16 -9613, i16 -1, i16 -19114, i16 -1, i16 -1, i16 -1, i16 -9611, i16 -1, i16 -1, i16 -9617, i16 -9615, i16 -9612, i16 -9614, i16 -19115, i16 -9608, i16 -19117, i16 -18465, i16 -1, i16 -1, i16 -8531, i16 -8532, i16 -8534, i16 -1, i16 -18462, i16 -18463, i16 -8530, i16 -1, i16 -8533, i16 -7478, i16 -17733, i16 -18464, i16 -1, i16 -1, i16 -1, i16 -8528, i16 -8529, i16 -1, i16 -7475, i16 -7477, i16 -17158, i16 -1, i16 -17732, i16 -7476, i16 -6538, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17157, i16 -6539, i16 -6530, i16 -6531, i16 -6533, i16 -1, i16 -6534, i16 -6537, i16 -6536, i16 -6535, i16 -6532, i16 -6495, i16 -1, i16 -1, i16 -5537, i16 -5540, i16 -5539, i16 -16553, i16 -5541, i16 -5535, i16 -5536, i16 -5538, i16 -1, i16 -4764, i16 -4763, i16 -16143, i16 -1, i16 -16142, i16 -4765, i16 -1, i16 -15751, i16 -4098, i16 -15752, i16 -15490, i16 -1, i16 -15455, i16 -15251, i16 -2962, i16 -2963, i16 -2595, i16 -2321, i16 -14982, i16 -2072, i16 -2073, i16 -2071, i16 -23096, i16 -12346, i16 -20647, i16 -19850, i16 -10646, i16 -23095, i16 -13913, i16 -23299, i16 -1, i16 -1, i16 -13755, i16 -1, i16 -1, i16 -1, i16 -13460, i16 -13462, i16 -13461, i16 -13464, i16 -22424, i16 -13463, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12947, i16 -1, i16 -21837, i16 -12949, i16 -12953, i16 -12950, i16 -1, i16 -12954, i16 -21835, i16 -12951, i16 -1, i16 -21838, i16 -21839, i16 -1, i16 -21836, i16 -12948, i16 -12952, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21310, i16 -21307, i16 -12338, i16 -12339, i16 -12340, i16 -21313, i16 -12331, i16 -12341, i16 -1, i16 -21311, i16 -11601, i16 -1, i16 -12334, i16 -12336, i16 -21308, i16 -1, i16 -12344, i16 -12333, i16 -1, i16 -12342, i16 -12332, i16 -12335, i16 -12343, i16 -1, i16 -21312, i16 -12330, i16 -12345, i16 -21309, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11596, i16 -11605, i16 -11594, i16 -1, i16 -11602, i16 -11591, i16 -11590, i16 -11604, i16 -11592, i16 -11595, i16 -11597, i16 -11593, i16 -20641, i16 -1, i16 -20643, i16 -1, i16 -1, i16 -11599, i16 -1, i16 -11603, i16 -1, i16 -11600, i16 -11589, i16 -11598, i16 -20642, i16 -12337, i16 -1, i16 -20646, i16 -20644, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10632, i16 -10643, i16 -10645, i16 -1, i16 -10644, i16 -1, i16 -10637, i16 -1, i16 -10636, i16 -10640, i16 -19845, i16 -10635, i16 -10638, i16 -10641, i16 -1, i16 -19847, i16 -10642, i16 -19849, i16 -19846, i16 -10639, i16 -10631, i16 -20645, i16 -19848, i16 -10633, i16 -10634, i16 -19844, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9602, i16 -1, i16 -1, i16 -1, i16 -9567, i16 -19104, i16 -1, i16 -9561, i16 -1, i16 -1, i16 -9559, i16 -9566, i16 -19110, i16 -9562, i16 -9563, i16 -19109, i16 -19103, i16 -1, i16 -19102, i16 -9560, i16 -19112, i16 -9603, i16 -9605, i16 -9565, i16 -9606, i16 -19105, i16 -9604, i16 -9564, i16 -9558, i16 -19111, i16 -19106, i16 -19108, i16 -19107, i16 -1, i16 -1, i16 -1, i16 -19113, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18455, i16 -8521, i16 -18456, i16 -8517, i16 -1, i16 -8527, i16 -1, i16 -8516, i16 -1, i16 -1, i16 -1, i16 -8526, i16 -8525, i16 -1, i16 -8515, i16 -8518, i16 -8520, i16 -8519, i16 -8523, i16 -8524, i16 -1, i16 -8514, i16 -18459, i16 -1, i16 -8522, i16 -1, i16 -18454, i16 -18460, i16 -18453, i16 -18452, i16 -1, i16 -18457, i16 -18458, i16 -1, i16 -1, i16 -7474, i16 -17730, i16 -17731, i16 -1, i16 -1, i16 -7469, i16 -1, i16 -17156, i16 -17729, i16 -1, i16 -1, i16 -17727, i16 -7468, i16 -18461, i16 -17728, i16 -7472, i16 -7470, i16 -7473, i16 -1, i16 -7471, i16 -1, i16 -1, i16 -1, i16 -6485, i16 -1, i16 -1, i16 -6486, i16 -6489, i16 -17088, i16 -5534, i16 -17087, i16 -6490, i16 -1, i16 -17154, i16 -1, i16 -6488, i16 -6491, i16 -6494, i16 -6487, i16 -6493, i16 -6492, i16 -17155, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4759, i16 -1, i16 -5530, i16 -1, i16 -5531, i16 -5529, i16 -1, i16 -4762, i16 -16550, i16 -1, i16 -5533, i16 -1, i16 -16552, i16 -1, i16 -16548, i16 -16549, i16 -5532, i16 -5528, i16 -1, i16 -16551, i16 -1, i16 -4755, i16 -16139, i16 -15750, i16 -16138, i16 -16141, i16 -4758, i16 -4760, i16 -1, i16 -4757, i16 -1, i16 -4754, i16 -16140, i16 -4756, i16 -4761, i16 -1, i16 -1, i16 -4030, i16 -4027, i16 -3467, i16 -4032, i16 -1, i16 -2961, i16 -4026, i16 -1, i16 -15454, i16 -4028, i16 -15749, i16 -4031, i16 -4029, i16 -4025, i16 -3466, i16 -1, i16 -3468, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15453, i16 -3469, i16 -1, i16 -1, i16 -1, i16 -15250, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15123, i16 -2319, i16 -15124, i16 -2317, i16 -2320, i16 -2318, i16 -14896, i16 -1870, i16 -23094, i16 -12946, i16 -11588, i16 -11587, i16 -19843, i16 -8513, i16 -16547, i16 -15452, i16 -14981, i16 -1869, i16 -23093, i16 -1, i16 -12945, i16 -23968, i16 -1, i16 -1, i16 -12329, i16 -1, i16 -12328, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11586, i16 -11585, i16 -19842, i16 -19807, i16 -1, i16 -1, i16 -1, i16 -9557, i16 -1, i16 -8510, i16 -8511, i16 -8512, i16 -7467, i16 -1, i16 -7466, i16 -7465, i16 -17726, i16 -1, i16 -1, i16 -6483, i16 -6484, i16 -1, i16 -1, i16 -5527, i16 -16546, i16 -16545, i16 -1, i16 -4750, i16 -4753, i16 -4752, i16 -4751, i16 -4023, i16 -4024, i16 -15748, i16 -3465, i16 -2594, i16 -23092, i16 -1, i16 -21306, i16 -1, i16 -19806, i16 -8509, i16 -1, i16 -23091, i16 -1, i16 -11584, i16 -19805, i16 -1, i16 -1, i16 -19101, i16 -19100, i16 -1, i16 -23090, i16 -23089, i16 -13754, i16 -22422, i16 -22423, i16 -21305, i16 -12327, i16 -9556, i16 -23088, i16 -23087, i16 -23086, i16 -23085, i16 -1, i16 -1, i16 -1, i16 -22421, i16 -22420, i16 -13458, i16 -13459, i16 -1, i16 -1, i16 -21834, i16 -12942, i16 -12944, i16 -12943, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12326, i16 -12325, i16 -1, i16 -1, i16 -21301, i16 -21303, i16 -1, i16 -21302, i16 -21304, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20640, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20636, i16 -20637, i16 -11583, i16 -20638, i16 -20639, i16 -1, i16 -11582, i16 -1, i16 -1, i16 -19802, i16 -10629, i16 -10630, i16 -19804, i16 -19803, i16 -1, i16 -1, i16 -1, i16 -19098, i16 -19099, i16 -9554, i16 -1, i16 -1, i16 -9555, i16 -19801, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18451, i16 -8507, i16 -18450, i16 -8508, i16 -1, i16 -1, i16 -1, i16 -7464, i16 -6482, i16 -17086, i16 -5526, i16 -1, i16 -1, i16 -1, i16 -4749, i16 -1, i16 -15450, i16 -15451, i16 -1, i16 -1, i16 -14980, i16 -23084, i16 -12941, i16 -1, i16 -1, i16 -19800, i16 -7463, i16 -17725, i16 -1, i16 -1, i16 -13457, i16 -13456, i16 -1, i16 -1, i16 -12940, i16 -21832, i16 -21831, i16 -1, i16 -1, i16 -21833, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21297, i16 -21296, i16 -21299, i16 -21298, i16 -1, i16 -12324, i16 -1, i16 -1, i16 -12323, i16 -21300, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11581, i16 -1, i16 -20632, i16 -20631, i16 -1, i16 -19797, i16 -11575, i16 -1, i16 -20626, i16 -20628, i16 -11574, i16 -11579, i16 -20629, i16 -20630, i16 -20635, i16 -11576, i16 -11577, i16 -11580, i16 -20627, i16 -1, i16 -11578, i16 -20634, i16 -1, i16 -20633, i16 -1, i16 -1, i16 -19796, i16 -10591, i16 -10590, i16 -19795, i16 -10628, i16 -10626, i16 -10588, i16 -10589, i16 -10627, i16 -1, i16 -19799, i16 -19798, i16 -1, i16 -9546, i16 -19093, i16 -19094, i16 -9552, i16 -19096, i16 -1, i16 -9549, i16 -19092, i16 -9548, i16 -19091, i16 -9551, i16 -19097, i16 -19095, i16 -9547, i16 -1, i16 -9550, i16 -9553, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8494, i16 -1, i16 -8505, i16 -18448, i16 -18445, i16 -18446, i16 -18441, i16 -18442, i16 -8493, i16 -8495, i16 -8502, i16 -8498, i16 -8499, i16 -18444, i16 -8496, i16 -8500, i16 -8492, i16 -8501, i16 -18443, i16 -18449, i16 -18447, i16 -1, i16 -8503, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7461, i16 -17721, i16 -7457, i16 -17722, i16 -7460, i16 -17723, i16 -1, i16 -8504, i16 -8497, i16 -7458, i16 -1, i16 -17720, i16 -7456, i16 -7459, i16 -7462, i16 -1, i16 -1, i16 -6479, i16 -6475, i16 -6473, i16 -6477, i16 -6478, i16 -6480, i16 -17083, i16 -17085, i16 -17080, i16 -17079, i16 -6476, i16 -17082, i16 -6481, i16 -17081, i16 -17724, i16 -6474, i16 -17084, i16 -1, i16 -1, i16 -1, i16 -5524, i16 -1, i16 -5525, i16 -5517, i16 -5523, i16 -5518, i16 -5521, i16 -16544, i16 -5519, i16 -1, i16 -1, i16 -16543, i16 -1, i16 -16542, i16 -1, i16 -5520, i16 -5522, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16136, i16 -4748, i16 -1, i16 -1, i16 -16137, i16 -4745, i16 -4747, i16 -4746, i16 -1, i16 -1, i16 -16135, i16 -1, i16 -1, i16 -1, i16 -4019, i16 -1, i16 -15711, i16 -4018, i16 -1, i16 -1, i16 -15747, i16 -4017, i16 -15746, i16 -4020, i16 -4016, i16 -1, i16 -4022, i16 -1, i16 -1, i16 -15449, i16 -3464, i16 -15448, i16 -15249, i16 -1, i16 -4021, i16 -15248, i16 -1, i16 -1, i16 -1, i16 -15122, i16 -2593, i16 -1, i16 -14978, i16 -2316, i16 -14979, i16 -1, i16 -2070, i16 -14859, i16 -14858, i16 -1, i16 -1, i16 -1588, i16 -1, i16 -1, i16 -21295, i16 -12322, i16 -1, i16 -19090, i16 -19089, i16 -23083, i16 -22838, i16 -13753, i16 -1, i16 -13455, i16 -22419, i16 -1, i16 -21830, i16 -1, i16 -21294, i16 -21293, i16 -21292, i16 -10586, i16 -11573, i16 -20625, i16 -1, i16 -1, i16 -19794, i16 -10587, i16 -1, i16 -1, i16 -9544, i16 -19087, i16 -1, i16 -9545, i16 -19088, i16 -1, i16 -1, i16 -8491, i16 -17078, i16 -6469, i16 -6472, i16 -6471, i16 -6470, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4744, i16 -1, i16 -4015, i16 -1, i16 -1, i16 -1, i16 -2959, i16 -2960, i16 -1, i16 -2315, i16 -23082, i16 -12939, i16 -20624, i16 -1, i16 -1, i16 -1, i16 -19086, i16 -8490, i16 -1, i16 -1, i16 -7455, i16 -1, i16 -17077, i16 -5516, i16 -1, i16 -4014, i16 -2958, i16 -23081, i16 -1, i16 -1, i16 -21829, i16 -21289, i16 -12321, i16 -21288, i16 -21290, i16 -1, i16 -21291, i16 -11572, i16 -20623, i16 -1, i16 -1, i16 -20622, i16 -20621, i16 -1, i16 -1, i16 -1, i16 -19792, i16 -10585, i16 -19793, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9543, i16 -19791, i16 -19085, i16 -8489, i16 -18440, i16 -18439, i16 -1, i16 -17719, i16 -1, i16 -17718, i16 -17076, i16 -16540, i16 -5515, i16 -16541, i16 -1, i16 -4743, i16 -16134, i16 -1, i16 -4013, i16 -2957, i16 -23080, i16 -22418, i16 -12936, i16 -12937, i16 -21828, i16 -12938, i16 -21827, i16 -12935, i16 -1, i16 -12315, i16 -21285, i16 -21286, i16 -12313, i16 -12314, i16 -21281, i16 -1, i16 -21282, i16 -21287, i16 -1, i16 -12319, i16 -12318, i16 -12317, i16 -1, i16 -21280, i16 -12320, i16 -21284, i16 -12316, i16 -21283, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11569, i16 -11565, i16 -11567, i16 -11568, i16 -1, i16 -11564, i16 -1, i16 -1, i16 -1, i16 -11563, i16 -11562, i16 -11570, i16 -1, i16 -11571, i16 -1, i16 -20619, i16 -20618, i16 -1, i16 -11561, i16 -11566, i16 -1, i16 -10576, i16 -1, i16 -11560, i16 -20617, i16 -20620, i16 -1, i16 -1, i16 -1, i16 -10582, i16 -1, i16 -10583, i16 -1, i16 -10581, i16 -10580, i16 -10578, i16 -10579, i16 -10574, i16 -19787, i16 -19790, i16 -19786, i16 -10584, i16 -19785, i16 -10575, i16 -19788, i16 -10577, i16 -19789, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9540, i16 -9538, i16 -9542, i16 -9541, i16 -1, i16 -1, i16 -9537, i16 -9535, i16 -9534, i16 -9539, i16 -9536, i16 -19084, i16 -1, i16 -1, i16 -8485, i16 -1, i16 -8480, i16 -8488, i16 -8484, i16 -1, i16 -1, i16 -8479, i16 -8483, i16 -18438, i16 -18365, i16 -1, i16 -18435, i16 -8487, i16 -8486, i16 -17714, i16 -18362, i16 -18434, i16 -1, i16 -18364, i16 -18436, i16 -8481, i16 -18363, i16 -8482, i16 -18367, i16 -18437, i16 -18366, i16 -8478, i16 -7450, i16 -7448, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18368, i16 -1, i16 -1, i16 -7453, i16 -17716, i16 -7447, i16 -17715, i16 -7449, i16 -7454, i16 -7451, i16 -7446, i16 -17717, i16 -7452, i16 -1, i16 -17074, i16 -6465, i16 -6466, i16 -1, i16 -17071, i16 -17073, i16 -6468, i16 -17075, i16 -6467, i16 -1, i16 -17072, i16 -1, i16 -1, i16 -1, i16 -5507, i16 -1, i16 -5471, i16 -1, i16 -5506, i16 -5514, i16 -5510, i16 -5511, i16 -5513, i16 -16538, i16 -16537, i16 -16539, i16 -5512, i16 -5509, i16 -5508, i16 -1, i16 -16536, i16 -1, i16 -16064, i16 -4701, i16 -1, i16 -16132, i16 -4741, i16 -16130, i16 -16063, i16 -1, i16 -1, i16 -16131, i16 -4702, i16 -4740, i16 -16133, i16 -4703, i16 -4742, i16 -4738, i16 -4739, i16 -1, i16 -1, i16 -4011, i16 -15708, i16 -15707, i16 -15710, i16 -1, i16 -15709, i16 -1, i16 -1, i16 -4012, i16 -1, i16 -3461, i16 -1, i16 -1, i16 -15447, i16 -1, i16 -3463, i16 -3462, i16 -1, i16 -2956, i16 -2953, i16 -2955, i16 -2954, i16 -2592, i16 -1, i16 -1, i16 -15121, i16 -2069, i16 -1868, i16 -1, i16 -14857, i16 -1800, i16 -1799, i16 -14746, i16 -23079, i16 -21279, i16 -1, i16 -9533, i16 -1, i16 -8477, i16 -1, i16 -23078, i16 -22417, i16 -1, i16 -21826, i16 -1, i16 -12312, i16 -12311, i16 -20616, i16 -1, i16 -1, i16 -9532, i16 -19083, i16 -18361, i16 -16062, i16 -4700, i16 -3460, i16 -2952, i16 -23077, i16 -1, i16 -1, i16 -1, i16 -12895, i16 -12934, i16 -12932, i16 -12930, i16 -12931, i16 -12933, i16 -21825, i16 -21278, i16 -12302, i16 -1, i16 -12307, i16 -12310, i16 -1, i16 -1, i16 -12303, i16 -1, i16 -1, i16 -21276, i16 -21275, i16 -12304, i16 -12305, i16 -12306, i16 -12309, i16 -12308, i16 -12301, i16 -21277, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20612, i16 -1, i16 -20572, i16 -20573, i16 -11551, i16 -11557, i16 -11559, i16 -1, i16 -20575, i16 -10567, i16 -20614, i16 -11554, i16 -11550, i16 -11548, i16 -11552, i16 -11558, i16 -20574, i16 -11553, i16 -11555, i16 -20615, i16 -11547, i16 -20571, i16 -11549, i16 -20611, i16 -11556, i16 -1, i16 -20610, i16 -20613, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19783, i16 -1, i16 -10566, i16 -1, i16 -1, i16 -10573, i16 -10571, i16 -10569, i16 -1, i16 -10568, i16 -10570, i16 -19782, i16 -1, i16 -10565, i16 -1, i16 -10572, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9528, i16 -19082, i16 -9520, i16 -1, i16 -9531, i16 -1, i16 -9519, i16 -1, i16 -9530, i16 -9529, i16 -1, i16 -1, i16 -9521, i16 -9522, i16 -9525, i16 -19784, i16 -19081, i16 -9527, i16 -9524, i16 -19080, i16 -9523, i16 -9526, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8466, i16 -1, i16 -8462, i16 -18354, i16 -1, i16 -7440, i16 -18351, i16 -8464, i16 -1, i16 -1, i16 -8467, i16 -8472, i16 -8470, i16 -8469, i16 -8476, i16 -1, i16 -18355, i16 -1, i16 -1, i16 -18356, i16 -1, i16 -18360, i16 -8473, i16 -1, i16 -18353, i16 -1, i16 -18352, i16 -8474, i16 -8471, i16 -8463, i16 -18358, i16 -18357, i16 -8465, i16 -8475, i16 -1, i16 -1, i16 -1, i16 -7438, i16 -17712, i16 -7436, i16 -8468, i16 -7434, i16 -17708, i16 -7433, i16 -7437, i16 -1, i16 -17711, i16 -7441, i16 -17709, i16 -7444, i16 -7439, i16 -7435, i16 -7442, i16 -1, i16 -1, i16 -18359, i16 -1, i16 -7445, i16 -17710, i16 -7443, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17068, i16 -6463, i16 -17064, i16 -1, i16 -17066, i16 -1, i16 -1, i16 -17713, i16 -1, i16 -6456, i16 -6455, i16 -17069, i16 -1, i16 -1, i16 -6457, i16 -6454, i16 -17067, i16 -17070, i16 -6461, i16 -6464, i16 -6459, i16 -6462, i16 -17063, i16 -6460, i16 -1, i16 -1, i16 -6458, i16 -17065, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16534, i16 -5464, i16 -1, i16 -5470, i16 -5466, i16 -5460, i16 -5459, i16 -5463, i16 -5462, i16 -5465, i16 -1, i16 -5468, i16 -1, i16 -16532, i16 -16535, i16 -5469, i16 -5467, i16 -1, i16 -16533, i16 -5461, i16 -1, i16 -16058, i16 -1, i16 -1, i16 -4694, i16 -4699, i16 -16059, i16 -1, i16 -1, i16 -16061, i16 -1, i16 -4692, i16 -16060, i16 -4696, i16 -4695, i16 -4698, i16 -4691, i16 -4010, i16 -16057, i16 -4697, i16 -1, i16 -4690, i16 -4693, i16 -1, i16 -1, i16 -1, i16 -4006, i16 -1, i16 -1, i16 -4009, i16 -1, i16 -15706, i16 -1, i16 -4005, i16 -4003, i16 -4004, i16 -4008, i16 -4007, i16 -1, i16 -1, i16 -3421, i16 -1, i16 -15446, i16 -1, i16 -3458, i16 -3422, i16 -3459, i16 -3420, i16 -1, i16 -1, i16 -3423, i16 -1, i16 -2950, i16 -2947, i16 -2951, i16 -15247, i16 -2949, i16 -2948, i16 -2946, i16 -15246, i16 -15244, i16 -15245, i16 -2591, i16 -1, i16 -2589, i16 -1, i16 -2590, i16 -1, i16 -1, i16 -1, i16 -2314, i16 -1, i16 -1, i16 -1867, i16 -1798, i16 -23076, i16 -1, i16 -1, i16 -13454, i16 -21824, i16 -12893, i16 -21823, i16 -21822, i16 -12894, i16 -1, i16 -12296, i16 -12297, i16 -21274, i16 -21271, i16 -21272, i16 -21273, i16 -12300, i16 -12298, i16 -12299, i16 -1, i16 -1, i16 -11544, i16 -20569, i16 -11540, i16 -11541, i16 -11542, i16 -11546, i16 -20570, i16 -20566, i16 -20563, i16 -1, i16 -1, i16 -20562, i16 -11545, i16 -11543, i16 -20564, i16 -20565, i16 -20567, i16 -20568, i16 -10558, i16 -1, i16 -10560, i16 -10564, i16 -19781, i16 -1, i16 -10563, i16 -19780, i16 -10562, i16 -10561, i16 -10559, i16 -1, i16 -19779, i16 -1, i16 -1, i16 -9515, i16 -1, i16 -9516, i16 -9517, i16 -9518, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8458, i16 -18350, i16 -1, i16 -8461, i16 -8459, i16 -1, i16 -18349, i16 -1, i16 -18348, i16 -8460, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7359, i16 -1, i16 -7431, i16 -7430, i16 -1, i16 -17705, i16 -17707, i16 -17706, i16 -7357, i16 -1, i16 -7358, i16 -7426, i16 -7427, i16 -7428, i16 -7429, i16 -7360, i16 -7432, i16 -1, i16 -6453, i16 -6448, i16 -6450, i16 -1, i16 -1, i16 -1, i16 -6451, i16 -6452, i16 -6449, i16 -1, i16 -5458, i16 -1, i16 -16531, i16 -16056, i16 -4688, i16 -1, i16 -16055, i16 -4689, i16 -4001, i16 -4002, i16 -15705, i16 -1, i16 -3419, i16 -15445, i16 -2911, i16 -14943, i16 -2313, i16 -1, i16 -1865, i16 -1866, i16 -13912, i16 -21270, i16 -21269, i16 -10557, i16 -1, i16 -18346, i16 -23075, i16 -22414, i16 -22415, i16 -22416, i16 -1, i16 -1, i16 -1, i16 -12892, i16 -1, i16 -1, i16 -21820, i16 -21821, i16 -1, i16 -21266, i16 -1, i16 -12294, i16 -12291, i16 -12293, i16 -1, i16 -21268, i16 -21267, i16 -1, i16 -1, i16 -12295, i16 -12292, i16 -1, i16 -20555, i16 -1, i16 -1, i16 -1, i16 -11533, i16 -11531, i16 -11532, i16 -20558, i16 -11537, i16 -1, i16 -1, i16 -20560, i16 -20561, i16 -1, i16 -20557, i16 -20559, i16 -1, i16 -20556, i16 -11534, i16 -11539, i16 -11538, i16 -11535, i16 -11536, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10554, i16 -10553, i16 -10555, i16 -1, i16 -10556, i16 -19778, i16 -19075, i16 -1, i16 -9514, i16 -9512, i16 -9510, i16 -19076, i16 -1, i16 -1, i16 -19078, i16 -1, i16 -9513, i16 -19077, i16 -9511, i16 -19079, i16 -1, i16 -1, i16 -8383, i16 -8457, i16 -8454, i16 -8450, i16 -18342, i16 -8452, i16 -1, i16 -8453, i16 -8456, i16 -8455, i16 -18344, i16 -8384, i16 -18345, i16 -1, i16 -18340, i16 -18341, i16 -18343, i16 -1, i16 -8451, i16 -1, i16 -1, i16 -1, i16 -7351, i16 -1, i16 -7352, i16 -1, i16 -1, i16 -7356, i16 -1, i16 -1, i16 -17704, i16 -7353, i16 -7354, i16 -17703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17058, i16 -1, i16 -6446, i16 -1, i16 -17057, i16 -17061, i16 -17059, i16 -1, i16 -17062, i16 -17060, i16 -1, i16 -1, i16 -1, i16 -5457, i16 -1, i16 -16528, i16 -5455, i16 -5456, i16 -1, i16 -7355, i16 -16526, i16 -16527, i16 -16530, i16 -16529, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4683, i16 -1, i16 -4685, i16 -16054, i16 -4684, i16 -1, i16 -4682, i16 -4686, i16 -4687, i16 -1, i16 -1, i16 -4000, i16 -15702, i16 -15704, i16 -15703, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3418, i16 -3417, i16 -15443, i16 -1, i16 -15444, i16 -2909, i16 -2908, i16 -2910, i16 -1, i16 -2312, i16 -2311, i16 -1, i16 -1, i16 -23074, i16 -13752, i16 -22413, i16 -1, i16 -12891, i16 -21818, i16 -21819, i16 -12890, i16 -1, i16 -1, i16 -12224, i16 -21265, i16 -12290, i16 -21264, i16 -1, i16 -1, i16 -20554, i16 -11528, i16 -11530, i16 -11524, i16 -20553, i16 -11529, i16 -11525, i16 -11527, i16 -11526, i16 -1, i16 -1, i16 -10552, i16 -10550, i16 -1, i16 -19777, i16 -1, i16 -10551, i16 -19776, i16 -19038, i16 -19039, i16 -19074, i16 -9509, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8380, i16 -18339, i16 -18338, i16 -1, i16 -8381, i16 -8382, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7350, i16 -17701, i16 -17702, i16 -7349, i16 -7348, i16 -1, i16 -17055, i16 -17056, i16 -1, i16 -5451, i16 -6445, i16 -6443, i16 -6444, i16 -5452, i16 -5454, i16 -5450, i16 -5453, i16 -1, i16 -16525, i16 -1, i16 -1, i16 -1, i16 -4681, i16 -16053, i16 -4680, i16 -4679, i16 -1, i16 -1, i16 -15701, i16 -15700, i16 -1, i16 -15243, i16 -1, i16 -1, i16 -14895, i16 -23073, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12223, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11523, i16 -20552, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19526, i16 -19527, i16 -1, i16 -1, i16 -19036, i16 -9507, i16 -19037, i16 -9508, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8379, i16 -1, i16 -17700, i16 -7347, i16 -17699, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15242, i16 -2907, i16 -1, i16 -22837, i16 -21817, i16 -12889, i16 -1, i16 -21262, i16 -1, i16 -21263, i16 -12222, i16 -12221, i16 -1, i16 -1, i16 -11456, i16 -11454, i16 -20551, i16 -1, i16 -11452, i16 -11449, i16 -11451, i16 -1, i16 -1, i16 -1, i16 -11450, i16 -11453, i16 -11522, i16 -20550, i16 -11448, i16 -11455, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10541, i16 -19770, i16 -10532, i16 -19773, i16 -1, i16 -10539, i16 -19769, i16 -1, i16 -19775, i16 -1, i16 -10544, i16 -10531, i16 -10543, i16 -10546, i16 -19771, i16 -1, i16 -19774, i16 -1, i16 -10540, i16 -10537, i16 -19772, i16 -10536, i16 -19768, i16 -10535, i16 -10545, i16 -10538, i16 -10534, i16 -10542, i16 -10547, i16 -10549, i16 -1, i16 -1, i16 -10533, i16 -1, i16 -1, i16 -9505, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9500, i16 -1, i16 -1, i16 -1, i16 -9504, i16 -9498, i16 -19033, i16 -10548, i16 -9503, i16 -19035, i16 -9506, i16 -19028, i16 -9502, i16 -19029, i16 -9501, i16 -19027, i16 -19032, i16 -19026, i16 -19031, i16 -1, i16 -19030, i16 -1, i16 -19034, i16 -1, i16 -9499, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18335, i16 -8368, i16 -1, i16 -8365, i16 -8377, i16 -8372, i16 -8378, i16 -18333, i16 -1, i16 -8374, i16 -1, i16 -1, i16 -1, i16 -8376, i16 -18334, i16 -1, i16 -8369, i16 -8370, i16 -8373, i16 -8371, i16 -8375, i16 -17695, i16 -8366, i16 -18337, i16 -8367, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7331, i16 -1, i16 -17688, i16 -7336, i16 -1, i16 -17689, i16 -7346, i16 -1, i16 -7344, i16 -17696, i16 -7339, i16 -7340, i16 -7337, i16 -17691, i16 -7342, i16 -7343, i16 -1, i16 -1, i16 -17692, i16 -17697, i16 -7341, i16 -17694, i16 -7335, i16 -7333, i16 -1, i16 -7338, i16 -7345, i16 -17693, i16 -1, i16 -1, i16 -17047, i16 -17698, i16 -1, i16 -1, i16 -7332, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6439, i16 -17054, i16 -1, i16 -6437, i16 -1, i16 -17053, i16 -1, i16 -1, i16 -17051, i16 -6434, i16 -1, i16 -6442, i16 -17690, i16 -6436, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6440, i16 -1, i16 -18336, i16 -17048, i16 -1, i16 -1, i16 -17052, i16 -1, i16 -17050, i16 -17049, i16 -1, i16 -16522, i16 -6435, i16 -6441, i16 -17046, i16 -1, i16 -6438, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5440, i16 -5445, i16 -1, i16 -1, i16 -5435, i16 -16524, i16 -5443, i16 -16520, i16 -5437, i16 -5446, i16 -5449, i16 -5434, i16 -16047, i16 -16519, i16 -5438, i16 -5448, i16 -16521, i16 -5444, i16 -16517, i16 -5447, i16 -5442, i16 -16518, i16 -5439, i16 -5436, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4661, i16 -4660, i16 -4676, i16 -4669, i16 -4671, i16 -1, i16 -1, i16 -16049, i16 -4664, i16 -5441, i16 -1, i16 -4673, i16 -1, i16 -4663, i16 -16050, i16 -4674, i16 -4675, i16 -4665, i16 -4668, i16 -4666, i16 -1, i16 -4678, i16 -4662, i16 -16052, i16 -1, i16 -4667, i16 -4658, i16 -4670, i16 -16048, i16 -16051, i16 -4672, i16 -4677, i16 -4659, i16 -16523, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3997, i16 -1, i16 -1, i16 -3999, i16 -3993, i16 -15696, i16 -3995, i16 -3996, i16 -15694, i16 -3990, i16 -15695, i16 -1, i16 -3989, i16 -3992, i16 -15698, i16 -3991, i16 -3998, i16 -15697, i16 -15699, i16 -3413, i16 -3994, i16 -1, i16 -1, i16 -3988, i16 -1, i16 -1, i16 -3416, i16 -1, i16 -1, i16 -1, i16 -15438, i16 -15440, i16 -3414, i16 -1, i16 -3412, i16 -3415, i16 -15439, i16 -15442, i16 -15441, i16 -15437, i16 -1, i16 -1, i16 -15240, i16 -1, i16 -2902, i16 -1, i16 -2903, i16 -2905, i16 -2906, i16 -2904, i16 -1, i16 -15241, i16 -15239, i16 -1, i16 -1, i16 -15120, i16 -1, i16 -1, i16 -2587, i16 -2588, i16 -1, i16 -1, i16 -2310, i16 -1, i16 -2308, i16 -2306, i16 -2307, i16 -2309, i16 -1, i16 -1, i16 -14941, i16 -14942, i16 -1, i16 -1, i16 -14893, i16 -14894, i16 -14892, i16 -2067, i16 -2068, i16 -1, i16 -1797, i16 -1864, i16 -1796, i16 -14760, i16 -1, i16 -14759, i16 -1683, i16 -1, i16 -1, i16 -14722, i16 -22836, i16 -1, i16 -12888, i16 -1, i16 -1, i16 -12219, i16 -12218, i16 -12220, i16 -1, i16 -1, i16 -21261, i16 -1, i16 -12217, i16 -12216, i16 -12215, i16 -1, i16 -1, i16 -11447, i16 -11441, i16 -1, i16 -1, i16 -11443, i16 -20549, i16 -11445, i16 -1, i16 -11444, i16 -11442, i16 -1, i16 -1, i16 -1, i16 -11446, i16 -19767, i16 -1, i16 -10530, i16 -19765, i16 -10528, i16 -19766, i16 -10529, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9496, i16 -19025, i16 -1, i16 -9494, i16 -9497, i16 -10527, i16 -1, i16 -19024, i16 -1, i16 -1, i16 -9495, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8362, i16 -1, i16 -18332, i16 -8364, i16 -18331, i16 -8363, i16 -18330, i16 -1, i16 -1, i16 -1, i16 -17687, i16 -7327, i16 -7330, i16 -7328, i16 -17686, i16 -17685, i16 -7329, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6433, i16 -1, i16 -1, i16 -6432, i16 -1, i16 -17045, i16 -6430, i16 -6431, i16 -1, i16 -23967, i16 -1, i16 -5430, i16 -5429, i16 -5433, i16 -1, i16 -5432, i16 -16516, i16 -16515, i16 -5431, i16 -1, i16 -16041, i16 -1, i16 -1, i16 -16045, i16 -16040, i16 -16044, i16 -16042, i16 -16046, i16 -1, i16 -16043, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15693, i16 -4657, i16 -1, i16 -3410, i16 -1, i16 -3411, i16 -1, i16 -2901, i16 -15238, i16 -15237, i16 -2239, i16 -2586, i16 -1, i16 -2240, i16 -1, i16 -1795, i16 -1628, i16 -22835, i16 -1, i16 -1, i16 -22412, i16 -1, i16 -12887, i16 -21816, i16 -21258, i16 -12212, i16 -21260, i16 -12214, i16 -21255, i16 -21259, i16 -21254, i16 -21256, i16 -12213, i16 -21257, i16 -20545, i16 -20546, i16 -11430, i16 -20537, i16 -11437, i16 -11431, i16 -20541, i16 -11438, i16 -11432, i16 -11434, i16 -20542, i16 -20540, i16 -11435, i16 -20547, i16 -11436, i16 -20536, i16 -20539, i16 -20535, i16 -20538, i16 -11439, i16 -11440, i16 -11433, i16 -20544, i16 -20548, i16 -20543, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10512, i16 -10519, i16 -1, i16 -19019, i16 -10520, i16 -1, i16 -19761, i16 -19754, i16 -19757, i16 -19751, i16 -19752, i16 -19756, i16 -1, i16 -10526, i16 -10523, i16 -1, i16 -10524, i16 -19760, i16 -10522, i16 -10513, i16 -19759, i16 -10525, i16 -10516, i16 -10515, i16 -19758, i16 -10518, i16 -19753, i16 -19763, i16 -19755, i16 -10521, i16 -19764, i16 -10517, i16 -1, i16 -1, i16 -10514, i16 -1, i16 -1, i16 -1, i16 -9477, i16 -9486, i16 -19022, i16 -9479, i16 -9482, i16 -9490, i16 -9481, i16 -19020, i16 -9489, i16 -1, i16 -9493, i16 -1, i16 -1, i16 -18324, i16 -9484, i16 -1, i16 -19023, i16 -9478, i16 -1, i16 -19016, i16 -19014, i16 -9491, i16 -1, i16 -1, i16 -19015, i16 -9488, i16 -19021, i16 -9480, i16 -9487, i16 -9483, i16 -1, i16 -9485, i16 -19018, i16 -9492, i16 -19013, i16 -19762, i16 -19017, i16 -19012, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18328, i16 -8355, i16 -8353, i16 -8351, i16 -8347, i16 -1, i16 -8357, i16 -8359, i16 -18326, i16 -1, i16 -8352, i16 -8348, i16 -8356, i16 -8360, i16 -1, i16 -8361, i16 -1, i16 -1, i16 -1, i16 -8350, i16 -8358, i16 -8354, i16 -18325, i16 -1, i16 -18327, i16 -8346, i16 -18329, i16 -8349, i16 -1, i16 -7310, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17682, i16 -7318, i16 -17032, i16 -7308, i16 -17679, i16 -7304, i16 -17673, i16 -7323, i16 -1, i16 -1, i16 -7307, i16 -7326, i16 -1, i16 -7305, i16 -7322, i16 -1, i16 -17666, i16 -17669, i16 -7306, i16 -7312, i16 -17683, i16 -17675, i16 -17676, i16 -1, i16 -17677, i16 -17671, i16 -1, i16 -7325, i16 -17670, i16 -7311, i16 -17674, i16 -17684, i16 -7309, i16 -17681, i16 -17680, i16 -17672, i16 -7320, i16 -7321, i16 -7324, i16 -1, i16 -7316, i16 -7319, i16 -7315, i16 -17667, i16 -1, i16 -7303, i16 -17678, i16 -7314, i16 -7313, i16 -1, i16 -7317, i16 -1, i16 -1, i16 -1, i16 -17668, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6425, i16 -17040, i16 -17031, i16 -17035, i16 -6428, i16 -1, i16 -17038, i16 -17034, i16 -6416, i16 -17044, i16 -6424, i16 -1, i16 -17036, i16 -1, i16 -1, i16 -6421, i16 -6426, i16 -17037, i16 -17033, i16 -6427, i16 -1, i16 -17039, i16 -1, i16 -6417, i16 -17042, i16 -6418, i16 -6419, i16 -17030, i16 -6798, i16 -17043, i16 -1, i16 -6420, i16 -6429, i16 -1, i16 -17029, i16 -6422, i16 -17041, i16 -6423, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16478, i16 -16473, i16 -16514, i16 -5416, i16 -5425, i16 -5413, i16 -5421, i16 -5415, i16 -16472, i16 -16479, i16 -5428, i16 -5422, i16 -5412, i16 -5419, i16 -5414, i16 -5426, i16 -1, i16 -1, i16 -5418, i16 -16477, i16 -5420, i16 -16474, i16 -16475, i16 -5424, i16 -5423, i16 -5427, i16 -5417, i16 -16476, i16 -5410, i16 -5411, i16 -1, i16 -1, i16 -1, i16 -4646, i16 -4650, i16 -16033, i16 -1, i16 -4656, i16 -16039, i16 -16023, i16 -4644, i16 -16031, i16 -16035, i16 -4653, i16 -16028, i16 -16025, i16 -4642, i16 -16036, i16 -4651, i16 -16027, i16 -4640, i16 -4643, i16 -4655, i16 -16032, i16 -16038, i16 -16024, i16 -4648, i16 -16029, i16 -4654, i16 -16034, i16 -4641, i16 -16030, i16 -16037, i16 -4647, i16 -16026, i16 -4649, i16 -1, i16 -1, i16 -4645, i16 -1, i16 -1, i16 -1, i16 -3986, i16 -3980, i16 -15687, i16 -3977, i16 -15692, i16 -15691, i16 -3985, i16 -3978, i16 -3983, i16 -15686, i16 -15689, i16 -1, i16 -3987, i16 -1, i16 -15690, i16 -3981, i16 -3979, i16 -15688, i16 -3982, i16 -3984, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3400, i16 -15433, i16 -15432, i16 -15436, i16 -1, i16 -15435, i16 -1, i16 -3404, i16 -3406, i16 -1, i16 -3402, i16 -15430, i16 -3401, i16 -3408, i16 -3409, i16 -3405, i16 -3407, i16 -15434, i16 -3403, i16 -2900, i16 -15234, i16 -15235, i16 -2899, i16 -1, i16 -2897, i16 -2898, i16 -15199, i16 -1, i16 -1, i16 -1, i16 -2581, i16 -2584, i16 -2583, i16 -1, i16 -2585, i16 -2582, i16 -15118, i16 -2580, i16 -1, i16 -15119, i16 -1, i16 -2238, i16 -1, i16 -14891, i16 -14889, i16 -2066, i16 -14890, i16 -1863, i16 -1728, i16 -1726, i16 -1794, i16 -1727, i16 -14740, i16 -22834, i16 -1, i16 -21253, i16 -11665, i16 -20534, i16 -1, i16 -1, i16 -19750, i16 -9476, i16 -9475, i16 -1, i16 -1, i16 -1, i16 -5409, i16 -16022, i16 -4639, i16 -1, i16 -1, i16 -15685, i16 -1, i16 -3398, i16 -3399, i16 -15198, i16 -2579, i16 -1, i16 -2237, i16 -14856, i16 -13751, i16 -1, i16 -1, i16 -21815, i16 -22411, i16 -1, i16 -1, i16 -12211, i16 -1, i16 -1, i16 -11424, i16 -11429, i16 -11425, i16 -11427, i16 -20533, i16 -11426, i16 -11428, i16 -1, i16 -10511, i16 -1, i16 -9474, i16 -9408, i16 -8343, i16 -8342, i16 -18322, i16 -18321, i16 -8344, i16 -8341, i16 -8345, i16 -18323, i16 -1, i16 -17600, i16 -1, i16 -18320, i16 -7302, i16 -1, i16 -17028, i16 -6415, i16 -17027, i16 -1, i16 -16471, i16 -5406, i16 -5408, i16 -5407, i16 -4636, i16 -4637, i16 -4638, i16 -1, i16 -1, i16 -1, i16 -3397, i16 -1, i16 -15431, i16 -3396, i16 -2236, i16 -14855, i16 -1862, i16 -22833, i16 -21813, i16 -21814, i16 -12209, i16 -21252, i16 -1, i16 -1, i16 -12210, i16 -11422, i16 -1, i16 -20532, i16 -10510, i16 -11423, i16 -1, i16 -1, i16 -1, i16 -19748, i16 -10507, i16 -10509, i16 -10508, i16 -19749, i16 -1, i16 -9406, i16 -9405, i16 -9407, i16 -1, i16 -18317, i16 -8339, i16 -8340, i16 -8338, i16 -18318, i16 -18319, i16 -1, i16 -1, i16 -6414, i16 -6412, i16 -1, i16 -17026, i16 -6413, i16 -5405, i16 -16470, i16 -3975, i16 -1, i16 -3976, i16 -15429, i16 -3395, i16 -15427, i16 -15428, i16 -2896, i16 -2578, i16 -15117, i16 -22832, i16 -12208, i16 -21251, i16 -11419, i16 -20530, i16 -11420, i16 -11421, i16 -1, i16 -20531, i16 -1, i16 -10501, i16 -1, i16 -10499, i16 -10506, i16 -10505, i16 -19747, i16 -10504, i16 -19746, i16 -10500, i16 -10503, i16 -10502, i16 -19745, i16 -1, i16 -19010, i16 -19009, i16 -1, i16 -9404, i16 -1, i16 -1, i16 -1, i16 -8337, i16 -8336, i16 -1, i16 -7298, i16 -17597, i16 -17599, i16 -17598, i16 -7301, i16 -7300, i16 -1, i16 -7299, i16 -6407, i16 -1, i16 -6406, i16 -16991, i16 -6409, i16 -6410, i16 -6408, i16 -6411, i16 -16467, i16 -5404, i16 -16469, i16 -16468, i16 -4634, i16 -16021, i16 -4635, i16 -4184, i16 -1, i16 -3974, i16 -3973, i16 -15684, i16 -1, i16 -15683, i16 -16020, i16 -3394, i16 -3393, i16 -2895, i16 -15197, i16 -22831, i16 -1, i16 -22830, i16 -21250, i16 -21812, i16 -20529, i16 -12207, i16 -1, i16 -1, i16 -1, i16 -19008, i16 -22829, i16 -21183, i16 -12206, i16 -12205, i16 -21184, i16 -21182, i16 -22828, i16 -1, i16 -12204, i16 -20527, i16 -11418, i16 -20525, i16 -20528, i16 -20526, i16 -1, i16 -10431, i16 -19744, i16 -1, i16 -10432, i16 -10498, i16 -1, i16 -8335, i16 -1, i16 -1, i16 -7263, i16 -1, i16 -16990, i16 -1, i16 -16466, i16 -5402, i16 -5403, i16 -1, i16 -4633, i16 -1, i16 -1, i16 -1, i16 -2577, i16 -1, i16 -1, i16 -22827, i16 -13453, i16 -12886, i16 -21181, i16 -12203, i16 -1, i16 -11416, i16 -1, i16 -1, i16 -1, i16 -20524, i16 -11417, i16 -20523, i16 -1, i16 -1, i16 -1, i16 -10429, i16 -1, i16 -1, i16 -19742, i16 -10430, i16 -10428, i16 -1, i16 -19743, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9402, i16 -9401, i16 -9403, i16 -19007, i16 -1, i16 -1, i16 -1, i16 -18316, i16 -1, i16 -18315, i16 -1, i16 -17595, i16 -1, i16 -7261, i16 -7262, i16 -17596, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6405, i16 -1, i16 -1, i16 -6404, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5401, i16 -1, i16 -1, i16 -16016, i16 -16017, i16 -16019, i16 -16018, i16 -16015, i16 -1, i16 -3972, i16 -15681, i16 -15682, i16 -3392, i16 -2894, i16 -1, i16 -1, i16 -1, i16 -14939, i16 -14940, i16 -22826, i16 -1, i16 -1, i16 -11781, i16 -1, i16 -18313, i16 -19006, i16 -18314, i16 -17594, i16 -1, i16 -22825, i16 -13911, i16 -22824, i16 -22823, i16 -1, i16 -1, i16 -12885, i16 -13450, i16 -1, i16 -13449, i16 -22409, i16 -1, i16 -13452, i16 -22410, i16 -1, i16 -22407, i16 -13451, i16 -22405, i16 -22406, i16 -13448, i16 -22408, i16 -1, i16 -1, i16 -1, i16 -21807, i16 -21809, i16 -12883, i16 -1, i16 -21810, i16 -1, i16 -1, i16 -1, i16 -21805, i16 -21803, i16 -21806, i16 -1, i16 -12880, i16 -12884, i16 -21802, i16 -1, i16 -21808, i16 -22404, i16 -1, i16 -21804, i16 -12881, i16 -1, i16 -1, i16 -12882, i16 -1, i16 -21811, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12197, i16 -21177, i16 -21176, i16 -12195, i16 -1, i16 -12201, i16 -12198, i16 -12189, i16 -12191, i16 -1, i16 -21175, i16 -12185, i16 -21172, i16 -12188, i16 -12196, i16 -12199, i16 -1, i16 -1, i16 -9399, i16 -12190, i16 -21180, i16 -12187, i16 -12202, i16 -12193, i16 -21178, i16 -21173, i16 -12192, i16 -21169, i16 -21171, i16 -1, i16 -12200, i16 -21174, i16 -1, i16 -12194, i16 -21170, i16 -21179, i16 -12186, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20518, i16 -1, i16 -20509, i16 -20520, i16 -20522, i16 -11414, i16 -20514, i16 -20517, i16 -11412, i16 -1, i16 -1, i16 -20515, i16 -11413, i16 -11415, i16 -11410, i16 -20510, i16 -20512, i16 -9400, i16 -11409, i16 -11411, i16 -20521, i16 -1, i16 -1, i16 -20519, i16 -20516, i16 -1, i16 -20513, i16 -1, i16 -20511, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10418, i16 -19740, i16 -1, i16 -10427, i16 -10425, i16 -1, i16 -10424, i16 -1, i16 -10416, i16 -10420, i16 -10422, i16 -1, i16 -10419, i16 -10415, i16 -19739, i16 -19735, i16 -10426, i16 -1, i16 -10417, i16 -1, i16 -19737, i16 -1, i16 -19738, i16 -10421, i16 -10423, i16 -1, i16 -19741, i16 -19736, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19000, i16 -9391, i16 -1, i16 -1, i16 -9393, i16 -18998, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9398, i16 -8287, i16 -1, i16 -18999, i16 -9394, i16 -1, i16 -1, i16 -9397, i16 -19003, i16 -18997, i16 -9392, i16 -19001, i16 -9395, i16 -17593, i16 -19002, i16 -9396, i16 -18996, i16 -19004, i16 -19005, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8329, i16 -8331, i16 -1, i16 -8325, i16 -1, i16 -8333, i16 -8286, i16 -8328, i16 -1, i16 -8334, i16 -18309, i16 -18269, i16 -8323, i16 -1, i16 -8330, i16 -1, i16 -18306, i16 -1, i16 -1, i16 -18308, i16 -8322, i16 -18311, i16 -18312, i16 -8327, i16 -18307, i16 -18995, i16 -1, i16 -8324, i16 -8332, i16 -18310, i16 -18271, i16 -18270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17588, i16 -17592, i16 -1, i16 -17587, i16 -7258, i16 -1, i16 -1, i16 -7259, i16 -7257, i16 -17590, i16 -7260, i16 -17589, i16 -7254, i16 -7255, i16 -7256, i16 -1, i16 -17591, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6335, i16 -1, i16 -6332, i16 -16984, i16 -6333, i16 -16985, i16 -16989, i16 -16988, i16 -16987, i16 -6336, i16 -6402, i16 -16986, i16 -1, i16 -6334, i16 -6403, i16 -1, i16 -1, i16 -5399, i16 -5389, i16 -16463, i16 -16464, i16 -1, i16 -5395, i16 -5393, i16 -1, i16 -5398, i16 -1, i16 -5394, i16 -5400, i16 -5391, i16 -16465, i16 -5392, i16 -5396, i16 -1, i16 -5390, i16 -1, i16 -5397, i16 -16012, i16 -4632, i16 -4626, i16 -16008, i16 -16006, i16 -16009, i16 -16010, i16 -1, i16 -16011, i16 -16013, i16 -4631, i16 -4628, i16 -16014, i16 -4627, i16 -1, i16 -16007, i16 -4629, i16 -1, i16 -4630, i16 -15680, i16 -1, i16 -15679, i16 -3935, i16 -3971, i16 -3970, i16 -1, i16 -1, i16 -3390, i16 -1, i16 -3391, i16 -15426, i16 -2892, i16 -15196, i16 -2893, i16 -1, i16 -2576, i16 -2235, i16 -14938, i16 -1725, i16 -1724, i16 -14888, i16 -22822, i16 -1, i16 -21801, i16 -9390, i16 -17586, i16 -16005, i16 -4625, i16 -22821, i16 -1, i16 -20507, i16 -20508, i16 -9389, i16 -1, i16 -1, i16 -1, i16 -5388, i16 -22820, i16 -21168, i16 -1, i16 -1, i16 -9388, i16 -9387, i16 -9386, i16 -17585, i16 -16462, i16 -22819, i16 -1, i16 -21800, i16 -12184, i16 -20506, i16 -11408, i16 -19734, i16 -1, i16 -9385, i16 -18268, i16 -1, i16 -17584, i16 -16461, i16 -16004, i16 -15678, i16 -2891, i16 -22818, i16 -21799, i16 -1, i16 -1, i16 -20505, i16 -10414, i16 -18994, i16 -1, i16 -17583, i16 -7253, i16 -6331, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22817, i16 -18993, i16 -8285, i16 -17582, i16 -22816, i16 -12879, i16 -12183, i16 -21167, i16 -1, i16 -1, i16 -11406, i16 -1, i16 -1, i16 -20502, i16 -1, i16 -20504, i16 -20503, i16 -20501, i16 -1, i16 -1, i16 -11407, i16 -1, i16 -1, i16 -10409, i16 -10412, i16 -10410, i16 -19733, i16 -19731, i16 -19732, i16 -10413, i16 -19730, i16 -10411, i16 -1, i16 -9384, i16 -9383, i16 -1, i16 -9382, i16 -8282, i16 -1, i16 -8281, i16 -1, i16 -8283, i16 -8280, i16 -1, i16 -18267, i16 -1, i16 -8284, i16 -1, i16 -17581, i16 -1, i16 -1, i16 -6326, i16 -6330, i16 -6327, i16 -6325, i16 -6328, i16 -6329, i16 -1, i16 -5387, i16 -5386, i16 -5385, i16 -16460, i16 -16459, i16 -4623, i16 -4624, i16 -4622, i16 -1, i16 -3933, i16 -3934, i16 -1, i16 -3388, i16 -1, i16 -3387, i16 -3389, i16 -1, i16 -15195, i16 -1, i16 -2890, i16 -2889, i16 -1, i16 -2234, i16 -2065, i16 -1861, i16 -22815, i16 -22403, i16 -1, i16 -16003, i16 -22814, i16 -1, i16 -10408, i16 -9381, i16 -1, i16 -14783, i16 -13750, i16 -1, i16 -1, i16 -1, i16 -13749, i16 -13747, i16 -22813, i16 -13746, i16 -13748, i16 -1, i16 -1, i16 -13406, i16 -13405, i16 -13445, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13407, i16 -22367, i16 -1, i16 -22366, i16 -13444, i16 -13446, i16 -13447, i16 -13443, i16 -22402, i16 -13442, i16 -12182, i16 -1, i16 -1, i16 -1, i16 -12874, i16 -21796, i16 -12875, i16 -12873, i16 -1, i16 -21797, i16 -12868, i16 -21793, i16 -12878, i16 -12864, i16 -12858, i16 -21786, i16 -12861, i16 -21789, i16 -1, i16 -12871, i16 -12865, i16 -12863, i16 -1, i16 -12876, i16 -21790, i16 -21795, i16 -12870, i16 -21788, i16 -21785, i16 -21791, i16 -1, i16 -21798, i16 -12866, i16 -12872, i16 -12859, i16 -21783, i16 -21787, i16 -21792, i16 -12867, i16 -20500, i16 -12869, i16 -21794, i16 -21784, i16 -1, i16 -12877, i16 -1, i16 -12862, i16 -12860, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21150, i16 -21156, i16 -21148, i16 -21151, i16 -12175, i16 -12172, i16 -21155, i16 -1, i16 -12181, i16 -1, i16 -21162, i16 -21152, i16 -1, i16 -21149, i16 -21147, i16 -12126, i16 -12169, i16 -1, i16 -21163, i16 -12127, i16 -21159, i16 -21161, i16 -21166, i16 -12177, i16 -1, i16 -12162, i16 -12173, i16 -12170, i16 -12123, i16 -1, i16 -21146, i16 -12163, i16 -21154, i16 -12168, i16 -12124, i16 -12171, i16 -12167, i16 -12164, i16 -1, i16 -1, i16 -12179, i16 -12125, i16 -12165, i16 -1, i16 -1, i16 -12180, i16 -12176, i16 -21153, i16 -21158, i16 -21165, i16 -21160, i16 -21164, i16 -21145, i16 -12178, i16 -11355, i16 -21157, i16 -1, i16 -1, i16 -12166, i16 -12735, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11352, i16 -20486, i16 -1, i16 -11402, i16 -1, i16 -11357, i16 -11395, i16 -1, i16 -11342, i16 -1, i16 -11350, i16 -1, i16 -11394, i16 -1, i16 -11351, i16 -11400, i16 -11396, i16 -11339, i16 -20483, i16 -11347, i16 -11356, i16 -20499, i16 -11341, i16 -11404, i16 -1, i16 -11348, i16 -1, i16 -20484, i16 -20489, i16 -11405, i16 -20491, i16 -20492, i16 -20487, i16 -11349, i16 -20495, i16 -20488, i16 -12174, i16 -9380, i16 -11354, i16 -1, i16 -1, i16 -11398, i16 -20485, i16 -11397, i16 -11359, i16 -20482, i16 -11403, i16 -11345, i16 -1, i16 -11346, i16 -11338, i16 -20493, i16 -20496, i16 -11340, i16 -11344, i16 -11353, i16 -11358, i16 -20490, i16 -20494, i16 -11401, i16 -20498, i16 -11343, i16 -20497, i16 -1, i16 -11399, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10402, i16 -10400, i16 -10395, i16 -10375, i16 -19716, i16 -19726, i16 -1, i16 -10403, i16 -19715, i16 -19714, i16 -10392, i16 -10385, i16 -10379, i16 -1, i16 -10398, i16 -1, i16 -10391, i16 -1, i16 -1, i16 -19648, i16 -10377, i16 -10382, i16 -19718, i16 -19720, i16 -10386, i16 -10390, i16 -10404, i16 -19729, i16 -10399, i16 -10407, i16 -1, i16 -19721, i16 -19719, i16 -10394, i16 -10397, i16 -19724, i16 -10381, i16 -19727, i16 -10396, i16 -10374, i16 -10388, i16 -1, i16 -10389, i16 -19728, i16 -1, i16 -19717, i16 -1, i16 -19725, i16 -10406, i16 -10401, i16 -10384, i16 -10378, i16 -19647, i16 -10405, i16 -10393, i16 -10387, i16 -19722, i16 -1, i16 -1, i16 -10376, i16 -10383, i16 -10380, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19723, i16 -1, i16 -9364, i16 -9376, i16 -18985, i16 -9347, i16 -9305, i16 -9302, i16 -18987, i16 -9368, i16 -9309, i16 -9367, i16 -9353, i16 -18974, i16 -9357, i16 -18977, i16 -1, i16 -9356, i16 -9379, i16 -1, i16 -9308, i16 -1, i16 -1, i16 -18968, i16 -9311, i16 -9355, i16 -9300, i16 -9360, i16 -8248, i16 -1, i16 -9297, i16 -18970, i16 -9362, i16 -9350, i16 -18967, i16 -18988, i16 -9358, i16 -9299, i16 -9365, i16 -9372, i16 -9361, i16 -1, i16 -9373, i16 -9375, i16 -18992, i16 -9307, i16 -9366, i16 -9304, i16 -1, i16 -9303, i16 -18984, i16 -18979, i16 -18983, i16 -18975, i16 -9346, i16 -18982, i16 -9354, i16 -9370, i16 -1, i16 -18990, i16 -9378, i16 -9310, i16 -9301, i16 -9371, i16 -18976, i16 -9296, i16 -9359, i16 -9363, i16 -1, i16 -18991, i16 -18971, i16 -1, i16 -9348, i16 -18969, i16 -1, i16 -9352, i16 -18980, i16 -18986, i16 -18978, i16 -18989, i16 -18972, i16 -9351, i16 -9369, i16 -9349, i16 -9374, i16 -9306, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9298, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9377, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8249, i16 -1, i16 -8227, i16 -18347, i16 -8244, i16 -1, i16 -8246, i16 -8267, i16 -18263, i16 -8251, i16 -8231, i16 -8255, i16 -18255, i16 -8232, i16 -8257, i16 -18973, i16 -8241, i16 -8256, i16 -8234, i16 -18256, i16 -18264, i16 -1, i16 -8278, i16 -8270, i16 -1, i16 -8245, i16 -8253, i16 -8228, i16 -8250, i16 -18250, i16 -8233, i16 -1, i16 -18259, i16 -1, i16 -8247, i16 -8239, i16 -8266, i16 -8240, i16 -1, i16 -8223, i16 -8271, i16 -8238, i16 -1, i16 -8225, i16 -1, i16 -8277, i16 -18981, i16 -1, i16 -8263, i16 -8264, i16 -18257, i16 -1, i16 -8260, i16 -8258, i16 -8243, i16 -8226, i16 -18254, i16 -1, i16 -18253, i16 -1, i16 -8272, i16 -18261, i16 -8268, i16 -8230, i16 -18252, i16 -1, i16 -18260, i16 -18258, i16 -18251, i16 -8224, i16 -8237, i16 -8242, i16 -1, i16 -1, i16 -8261, i16 -8262, i16 -18262, i16 -8276, i16 -18265, i16 -8252, i16 -8275, i16 -8254, i16 -1, i16 -1, i16 -8265, i16 -8229, i16 -1, i16 -1, i16 -1, i16 -18266, i16 -1, i16 -1, i16 -1, i16 -8269, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8273, i16 -8235, i16 -8274, i16 -17568, i16 -7213, i16 -1, i16 -1, i16 -7230, i16 -1, i16 -1, i16 -7252, i16 -7222, i16 -17576, i16 -7237, i16 -7227, i16 -17573, i16 -7234, i16 -17575, i16 -7249, i16 -7219, i16 -7250, i16 -7231, i16 -1, i16 -7251, i16 -1, i16 -1, i16 -7233, i16 -7224, i16 -7226, i16 -7238, i16 -7243, i16 -7245, i16 -1, i16 -7244, i16 -7225, i16 -7214, i16 -7236, i16 -17574, i16 -1, i16 -7241, i16 -1, i16 -7221, i16 -1, i16 -17571, i16 -7242, i16 -7248, i16 -7232, i16 -17567, i16 -1, i16 -1, i16 -17579, i16 -17570, i16 -7240, i16 -7246, i16 -1, i16 -17577, i16 -8236, i16 -17578, i16 -7229, i16 -1, i16 -17580, i16 -17565, i16 -17572, i16 -7228, i16 -7239, i16 -7247, i16 -7220, i16 -7235, i16 -17566, i16 -7216, i16 -17569, i16 -7217, i16 -1, i16 -7223, i16 -7218, i16 -1, i16 -1, i16 -1, i16 -7215, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6285, i16 -6284, i16 -6297, i16 -6298, i16 -6302, i16 -16972, i16 -1, i16 -16980, i16 -6282, i16 -6283, i16 -8279, i16 -6305, i16 -6301, i16 -6307, i16 -1, i16 -6288, i16 -6303, i16 -1, i16 -6281, i16 -6310, i16 -6312, i16 -6300, i16 -6290, i16 -6295, i16 -16970, i16 -6321, i16 -1, i16 -6291, i16 -1, i16 -1, i16 -1, i16 -16969, i16 -8259, i16 -6309, i16 -6318, i16 -6315, i16 -6277, i16 -6308, i16 -6317, i16 -6319, i16 -6322, i16 -1, i16 -16976, i16 -6299, i16 -16977, i16 -16973, i16 -6304, i16 -6296, i16 -16983, i16 -6280, i16 -6276, i16 -16981, i16 -1, i16 -6313, i16 -6293, i16 -6289, i16 -6316, i16 -6279, i16 -16974, i16 -1, i16 -16975, i16 -6324, i16 -16971, i16 -6286, i16 -6314, i16 -6294, i16 -6320, i16 -6306, i16 -6311, i16 -16979, i16 -16978, i16 -6292, i16 -6275, i16 -6278, i16 -6287, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6323, i16 -1, i16 -16982, i16 -5303, i16 -1, i16 -5312, i16 -5309, i16 -1, i16 -16453, i16 -5307, i16 -5383, i16 -5311, i16 -5305, i16 -16456, i16 -16452, i16 -16458, i16 -1, i16 -1, i16 -5381, i16 -5300, i16 -1, i16 -1, i16 -5306, i16 -1, i16 -5380, i16 -5291, i16 -5297, i16 -5384, i16 -4538, i16 -5378, i16 -16457, i16 -1, i16 -5302, i16 -1, i16 -5292, i16 -16449, i16 -1, i16 -5295, i16 -5379, i16 -5308, i16 -5304, i16 -5310, i16 -5290, i16 -5293, i16 -5296, i16 -16455, i16 -16454, i16 -16450, i16 -5382, i16 -5289, i16 -16451, i16 -5299, i16 -1, i16 -1, i16 -5301, i16 -1, i16 -1, i16 -1, i16 -5298, i16 -4525, i16 -4544, i16 -4539, i16 -4526, i16 -4540, i16 -4613, i16 -4543, i16 -1, i16 -15966, i16 -1, i16 -4620, i16 -4531, i16 -4529, i16 -4621, i16 -15967, i16 -4527, i16 -4535, i16 -15960, i16 -4528, i16 -4542, i16 -15958, i16 -4615, i16 -5294, i16 -4534, i16 -4537, i16 -4619, i16 -4523, i16 -15964, i16 -1, i16 -1, i16 -15963, i16 -4617, i16 -4536, i16 -1, i16 -4524, i16 -4533, i16 -4611, i16 -15961, i16 -15965, i16 -4532, i16 -4610, i16 -4522, i16 -4616, i16 -4541, i16 -4530, i16 -4614, i16 -4612, i16 -1, i16 -15669, i16 -4618, i16 -15959, i16 -15676, i16 -16002, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15962, i16 -15672, i16 -3917, i16 -1, i16 -3927, i16 -3932, i16 -3926, i16 -3916, i16 -3912, i16 -3913, i16 -15670, i16 -15671, i16 -1, i16 -1, i16 -3925, i16 -3911, i16 -3922, i16 -3930, i16 -1, i16 -3928, i16 -3929, i16 -3923, i16 -3918, i16 -3931, i16 -3924, i16 -3919, i16 -15673, i16 -1, i16 -3921, i16 -1, i16 -15675, i16 -3920, i16 -15677, i16 -15674, i16 -3371, i16 -3915, i16 -1, i16 -1, i16 -15422, i16 -1, i16 -3379, i16 -3375, i16 -3383, i16 -3380, i16 -1, i16 -3372, i16 -15424, i16 -3367, i16 -3374, i16 -1, i16 -3382, i16 -3366, i16 -3373, i16 -15421, i16 -15420, i16 -3369, i16 -1, i16 -3381, i16 -15425, i16 -15423, i16 -3386, i16 -3378, i16 -3384, i16 -1, i16 -3368, i16 -3370, i16 -3385, i16 -3377, i16 -1, i16 -1, i16 -1, i16 -2882, i16 -15419, i16 -3376, i16 -15193, i16 -15191, i16 -15194, i16 -1, i16 -2877, i16 -2885, i16 -2887, i16 -2883, i16 -2886, i16 -1, i16 -1, i16 -2881, i16 -2879, i16 -15190, i16 -15188, i16 -1, i16 -2880, i16 -15187, i16 -15189, i16 -2878, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15192, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15116, i16 -2575, i16 -2569, i16 -15114, i16 -2884, i16 -2570, i16 -1, i16 -2563, i16 -2572, i16 -2565, i16 -2566, i16 -2888, i16 -2571, i16 -3914, i16 -2562, i16 -2573, i16 -2568, i16 -1, i16 -2564, i16 -2574, i16 -1, i16 -2230, i16 -15115, i16 -2567, i16 -1, i16 -1, i16 -2060, i16 -2229, i16 -2231, i16 -2233, i16 -2232, i16 -2228, i16 -1, i16 -14887, i16 -2062, i16 -2064, i16 -2059, i16 -2061, i16 -1, i16 -2058, i16 -14886, i16 -2063, i16 -1, i16 -1, i16 -1860, i16 -1, i16 -1, i16 -1723, i16 -1722, i16 -1721, i16 -1, i16 -1, i16 -1593, i16 -1603, i16 -13745, i16 -21782, i16 -1, i16 -21144, i16 -1, i16 -11336, i16 -11337, i16 -20416, i16 -19646, i16 -10372, i16 -1, i16 -1, i16 -10373, i16 -1, i16 -18966, i16 -18248, i16 -1, i16 -18249, i16 -18247, i16 -1, i16 -7212, i16 -6274, i16 -5288, i16 -5286, i16 -5287, i16 -1, i16 -15957, i16 -4521, i16 -3910, i16 -1627, i16 -22812, i16 -1, i16 -12855, i16 -12854, i16 -12856, i16 -12857, i16 -21781, i16 -1, i16 -12119, i16 -12121, i16 -1, i16 -1, i16 -12122, i16 -1, i16 -21143, i16 -21141, i16 -21142, i16 -12120, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11324, i16 -11327, i16 -11329, i16 -1, i16 -1, i16 -20415, i16 -11326, i16 -20410, i16 -11332, i16 -11317, i16 -1, i16 -11315, i16 -11331, i16 -1, i16 -20413, i16 -11314, i16 -11319, i16 -11333, i16 -11328, i16 -11318, i16 -11322, i16 -11325, i16 -1, i16 -20408, i16 -11316, i16 -11330, i16 -1, i16 -1, i16 -11321, i16 -11335, i16 -20409, i16 -20412, i16 -11323, i16 -1, i16 -11320, i16 -11334, i16 -20411, i16 -20414, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19636, i16 -10331, i16 -19637, i16 -1, i16 -10328, i16 -10325, i16 -19640, i16 -19642, i16 -10370, i16 -10327, i16 -10329, i16 -10332, i16 -10324, i16 -10323, i16 -10321, i16 -10320, i16 -10371, i16 -19643, i16 -10334, i16 -10335, i16 -10322, i16 -19641, i16 -10333, i16 -19639, i16 -19644, i16 -10330, i16 -19635, i16 -1, i16 -19638, i16 -10326, i16 -1, i16 -1, i16 -1, i16 -18959, i16 -9281, i16 -1, i16 -9292, i16 -18962, i16 -1, i16 -8217, i16 -9283, i16 -9295, i16 -18964, i16 -9290, i16 -18961, i16 -9286, i16 -9288, i16 -18958, i16 -18965, i16 -1, i16 -1, i16 -9294, i16 -9291, i16 -18960, i16 -1, i16 -9293, i16 -1, i16 -9282, i16 -9284, i16 -9289, i16 -9287, i16 -9285, i16 -18963, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8216, i16 -8210, i16 -8220, i16 -8214, i16 -18246, i16 -8218, i16 -18240, i16 -1, i16 -1, i16 -18241, i16 -18242, i16 -8211, i16 -18239, i16 -18238, i16 -8221, i16 -8208, i16 -18237, i16 -18243, i16 -18244, i16 -8212, i16 -18236, i16 -8222, i16 -8219, i16 -8209, i16 -8213, i16 -1, i16 -1, i16 -7180, i16 -7191, i16 -18245, i16 -1, i16 -1, i16 -1, i16 -1, i16 -17558, i16 -7203, i16 -7182, i16 -7202, i16 -17563, i16 -1, i16 -7205, i16 -1, i16 -7196, i16 -7204, i16 -17561, i16 -7210, i16 -7183, i16 -17560, i16 -7186, i16 -7185, i16 -7209, i16 -17555, i16 -7194, i16 -1, i16 -7200, i16 -7193, i16 -7206, i16 -1, i16 -7181, i16 -7189, i16 -7195, i16 -7211, i16 -17559, i16 -7188, i16 -1, i16 -17556, i16 -7184, i16 -1, i16 -7190, i16 -17562, i16 -7192, i16 -1, i16 -7198, i16 -17564, i16 -7207, i16 -7199, i16 -7187, i16 -7201, i16 -1, i16 -1, i16 -7197, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16959, i16 -8215, i16 -6222, i16 -6213, i16 -6223, i16 -6227, i16 -6230, i16 -16958, i16 -6232, i16 -17557, i16 -6239, i16 -16960, i16 -6233, i16 -16961, i16 -6228, i16 -6231, i16 -6215, i16 -6220, i16 -6226, i16 -6221, i16 -16965, i16 -6229, i16 -6210, i16 -6238, i16 -6237, i16 -6214, i16 -16964, i16 -6209, i16 -16962, i16 -6208, i16 -6224, i16 -7208, i16 -6218, i16 -6225, i16 -6216, i16 -6219, i16 -1, i16 -1, i16 -1, i16 -6234, i16 -16967, i16 -6211, i16 -16966, i16 -6236, i16 -16963, i16 -5276, i16 -6217, i16 -6212, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5279, i16 -16968, i16 -16448, i16 -5269, i16 -5273, i16 -1, i16 -5275, i16 -5280, i16 -5265, i16 -1, i16 -1, i16 -1, i16 -16444, i16 -1, i16 -5284, i16 -5272, i16 -5271, i16 -5281, i16 -5282, i16 -5268, i16 -1, i16 -5278, i16 -5283, i16 -5277, i16 -1, i16 -5266, i16 -5285, i16 -5267, i16 -5270, i16 -16446, i16 -16447, i16 -1, i16 -1, i16 -16445, i16 -5274, i16 -3893, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4519, i16 -15951, i16 -4515, i16 -4518, i16 -4511, i16 -4505, i16 -4516, i16 -1, i16 -4496, i16 -15954, i16 -4502, i16 -4513, i16 -4501, i16 -4506, i16 -4499, i16 -4514, i16 -15949, i16 -15950, i16 -4512, i16 -4498, i16 -4520, i16 -4500, i16 -15956, i16 -1, i16 -4508, i16 -4509, i16 -4504, i16 -4517, i16 -15952, i16 -1, i16 -15948, i16 -4510, i16 -4503, i16 -15947, i16 -4507, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15955, i16 -15953, i16 -3897, i16 -3899, i16 -1, i16 -1, i16 -3892, i16 -3895, i16 -3891, i16 -1, i16 -3906, i16 -3898, i16 -3887, i16 -4497, i16 -3902, i16 -15665, i16 -6235, i16 -3907, i16 -3894, i16 -3900, i16 -3903, i16 -3908, i16 -3909, i16 -3888, i16 -1, i16 -3904, i16 -3905, i16 -15667, i16 -3896, i16 -1, i16 -15668, i16 -1, i16 -1, i16 -15666, i16 -3901, i16 -3889, i16 -1, i16 -3362, i16 -3361, i16 -1, i16 -15415, i16 -3364, i16 -15418, i16 -3356, i16 -1, i16 -15414, i16 -3354, i16 -3365, i16 -3890, i16 -3352, i16 -3363, i16 -1, i16 -15417, i16 -3357, i16 -1, i16 -3355, i16 -3360, i16 -3353, i16 -3358, i16 -3359, i16 -15416, i16 -1, i16 -1, i16 -2875, i16 -2874, i16 -1, i16 -2872, i16 -15186, i16 -15185, i16 -2871, i16 -2873, i16 -1, i16 -2876, i16 -1, i16 -2494, i16 -2491, i16 -2495, i16 -1, i16 -15110, i16 -2493, i16 -15111, i16 -15112, i16 -15113, i16 -2492, i16 -2223, i16 -2225, i16 -1, i16 -2226, i16 -2496, i16 -2224, i16 -2490, i16 -2227, i16 -1, i16 -2055, i16 -2089, i16 -2057, i16 -14885, i16 -2056, i16 -2054, i16 -1, i16 -1857, i16 -14854, i16 -1858, i16 -1859, i16 -14853, i16 -1, i16 -14758, i16 -1682, i16 -1625, i16 -1626, i16 -1624, i16 -22811, i16 -12118, i16 -1, i16 -11313, i16 -11312, i16 -1, i16 -1, i16 -1, i16 -9280, i16 -1, i16 -2489, i16 -1856, i16 -22810, i16 -21140, i16 -12117, i16 -1, i16 -1, i16 -1, i16 -10319, i16 -19634, i16 -1, i16 -9278, i16 -9279, i16 -18957, i16 -1, i16 -18235, i16 -6207, i16 -16957, i16 -1, i16 -16956, i16 -1, i16 -1, i16 -1, i16 -16443, i16 -14852, i16 -22809, i16 -1, i16 -1, i16 -1, i16 -12116, i16 -21779, i16 -12114, i16 -12115, i16 -21139, i16 -1, i16 -11311, i16 -1, i16 -11304, i16 -20407, i16 -11306, i16 -11308, i16 -1, i16 -11301, i16 -11310, i16 -11309, i16 -20406, i16 -1, i16 -20402, i16 -1, i16 -1, i16 -11300, i16 -20403, i16 -11302, i16 -11305, i16 -11307, i16 -20405, i16 -20404, i16 -11303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19632, i16 -10318, i16 -1, i16 -19627, i16 -10302, i16 -19628, i16 -10300, i16 -1, i16 -1, i16 -10312, i16 -19630, i16 -10301, i16 -1, i16 -10317, i16 -19629, i16 -10305, i16 -10309, i16 -10307, i16 -10313, i16 -10306, i16 -1, i16 -1, i16 -19633, i16 -10310, i16 -1, i16 -10311, i16 -10315, i16 -1, i16 -10304, i16 -1, i16 -1, i16 -10308, i16 -10316, i16 -1, i16 -10314, i16 -19631, i16 -10303, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18954, i16 -9267, i16 -1, i16 -1, i16 -1, i16 -9271, i16 -9269, i16 -9274, i16 -9275, i16 -9277, i16 -1, i16 -9270, i16 -9268, i16 -9272, i16 -1, i16 -9273, i16 -18956, i16 -18955, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9265, i16 -18227, i16 -8206, i16 -8200, i16 -8205, i16 -8204, i16 -1, i16 -8199, i16 -1, i16 -18225, i16 -1, i16 -18233, i16 -18226, i16 -8207, i16 -9276, i16 -18230, i16 -18232, i16 -8201, i16 -8202, i16 -18231, i16 -18229, i16 -8203, i16 -18234, i16 -1, i16 -18228, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -7178, i16 -17548, i16 -1, i16 -1, i16 -7102, i16 -7103, i16 -1, i16 -7173, i16 -17546, i16 -7104, i16 -7177, i16 -7176, i16 -17554, i16 -17552, i16 -1, i16 -7171, i16 -7179, i16 -17550, i16 -17551, i16 -7175, i16 -7170, i16 -7172, i16 -17549, i16 -7174, i16 -9266, i16 -17553, i16 -1, i16 -1, i16 -6206, i16 -6199, i16 -16954, i16 -1, i16 -6195, i16 -16950, i16 -6203, i16 -6205, i16 -1, i16 -6196, i16 -1, i16 -16955, i16 -6197, i16 -16953, i16 -16952, i16 -6204, i16 -16951, i16 -6198, i16 -6202, i16 -6201, i16 -6200, i16 -17547, i16 -1, i16 -1, i16 -1, i16 -5264, i16 -5252, i16 -1, i16 -16438, i16 -5257, i16 -5255, i16 -1, i16 -16440, i16 -5263, i16 -5259, i16 -1, i16 -5256, i16 -16442, i16 -16439, i16 -5253, i16 -5261, i16 -5260, i16 -5254, i16 -5262, i16 -5258, i16 -16441, i16 -4494, i16 -1, i16 -4495, i16 -15945, i16 -4489, i16 -15943, i16 -1, i16 -1, i16 -15946, i16 -4493, i16 -15942, i16 -4492, i16 -1, i16 -1, i16 -4491, i16 -4488, i16 -1, i16 -15944, i16 -1, i16 -3882, i16 -1, i16 -1, i16 -3879, i16 -1, i16 -3885, i16 -3883, i16 -1, i16 -1, i16 -3884, i16 -3881, i16 -3880, i16 -4490, i16 -3886, i16 -1, i16 -1, i16 -15411, i16 -3348, i16 -3345, i16 -3343, i16 -3350, i16 -3349, i16 -3346, i16 -3344, i16 -15410, i16 -15412, i16 -15413, i16 -3347, i16 -3351, i16 -2870, i16 -15184, i16 -1, i16 -2869, i16 -1, i16 -1, i16 -2487, i16 -15109, i16 -2485, i16 -15108, i16 -2488, i16 -2486, i16 -14936, i16 -1, i16 -2222, i16 -14937, i16 -2051, i16 -2052, i16 -1, i16 -2053, i16 -1, i16 -1, i16 -1720, i16 -1719, i16 -1717, i16 -1718, i16 -1, i16 -13744, i16 -22808, i16 -1, i16 -21138, i16 -10299, i16 -18953, i16 -1, i16 -8198, i16 -15664, i16 -1, i16 -3342, i16 -1, i16 -1, i16 -22365, i16 -1, i16 -1, i16 -1, i16 -19625, i16 -1, i16 -1, i16 -1, i16 -19626, i16 -1, i16 -9264, i16 -18952, i16 -9262, i16 -9263, i16 -1, i16 -1, i16 -8197, i16 -18224, i16 -7101, i16 -7098, i16 -7099, i16 -1, i16 -7100, i16 -6194, i16 -6192, i16 -6193, i16 -1, i16 -16436, i16 -1, i16 -1, i16 -1, i16 -16437, i16 -1, i16 -15941, i16 -4487, i16 -4485, i16 -4486, i16 -1, i16 -1, i16 -15663, i16 -1, i16 -1, i16 -1, i16 -3340, i16 -3341, i16 -1, i16 -2868, i16 -15183, i16 -1, i16 -1, i16 -15107, i16 -2220, i16 -2221, i16 -14757, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22364, i16 -12113, i16 -21137, i16 -10296, i16 -10298, i16 -1, i16 -1, i16 -10297, i16 -9260, i16 -9259, i16 -8125, i16 -9261, i16 -1, i16 -8196, i16 -8127, i16 -8128, i16 -8126, i16 -18223, i16 -8194, i16 -8195, i16 -8124, i16 -1, i16 -7095, i16 -7097, i16 -1, i16 -7096, i16 -6189, i16 -6191, i16 -1, i16 -1, i16 -6190, i16 -5251, i16 -4484, i16 -4483, i16 -15662, i16 -1, i16 -3339, i16 -2867, i16 -15182, i16 -1, i16 -2484, i16 -2219, i16 -14935, i16 -1, i16 -2050, i16 -1716, i16 -22363, i16 -1, i16 -21135, i16 -21134, i16 -12112, i16 -1, i16 -1, i16 -12111, i16 -21136, i16 -1, i16 -20396, i16 -1, i16 -20398, i16 -1, i16 -20399, i16 -20392, i16 -20400, i16 -20391, i16 -11299, i16 -20394, i16 -1, i16 -20397, i16 -20393, i16 -20395, i16 -20401, i16 -1, i16 -1, i16 -19617, i16 -1, i16 -19623, i16 -10292, i16 -19618, i16 -1, i16 -1, i16 -19616, i16 -19622, i16 -1, i16 -19621, i16 -1, i16 -10294, i16 -1, i16 -1, i16 -19624, i16 -1, i16 -10293, i16 -19619, i16 -1, i16 -1, i16 -10295, i16 -19620, i16 -1, i16 -1, i16 -18876, i16 -1, i16 -18874, i16 -1, i16 -1, i16 -9256, i16 -18875, i16 -18951, i16 -18947, i16 -1, i16 -18204, i16 -8119, i16 -9254, i16 -18946, i16 -1, i16 -1, i16 -9251, i16 -9250, i16 -18877, i16 -1, i16 -9248, i16 -1, i16 -9246, i16 -1, i16 -9245, i16 -9257, i16 -9258, i16 -9244, i16 -18878, i16 -9247, i16 -9249, i16 -1, i16 -18880, i16 -18949, i16 -18873, i16 -9253, i16 -9252, i16 -9255, i16 -1, i16 -18879, i16 -1, i16 -1, i16 -18948, i16 -1, i16 -18950, i16 -8120, i16 -18209, i16 -18214, i16 -1, i16 -1, i16 -18219, i16 -1, i16 -18203, i16 -18218, i16 -1, i16 -18222, i16 -18207, i16 -18210, i16 -18208, i16 -1, i16 -18217, i16 -18212, i16 -18221, i16 -18220, i16 -8112, i16 -8115, i16 -8123, i16 -8118, i16 -1, i16 -18206, i16 -8111, i16 -18205, i16 -18215, i16 -1, i16 -1, i16 -8121, i16 -1, i16 -8113, i16 -8117, i16 -8114, i16 -8116, i16 -18211, i16 -8122, i16 -18216, i16 -1, i16 -1, i16 -1, i16 -7092, i16 -17544, i16 -17541, i16 -1, i16 -7090, i16 -1, i16 -17499, i16 -7091, i16 -17539, i16 -1, i16 -16945, i16 -7089, i16 -1, i16 -17500, i16 -7093, i16 -17498, i16 -1, i16 -1, i16 -1, i16 -17543, i16 -1, i16 -18213, i16 -17540, i16 -1, i16 -17542, i16 -17538, i16 -17502, i16 -17545, i16 -17497, i16 -17501, i16 -1, i16 -17503, i16 -7094, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16938, i16 -1, i16 -16942, i16 -1, i16 -1, i16 -1, i16 -16935, i16 -1, i16 -6186, i16 -16934, i16 -6174, i16 -6181, i16 -16949, i16 -6173, i16 -6179, i16 -16939, i16 -6178, i16 -1, i16 -16940, i16 -6175, i16 -16946, i16 -6177, i16 -6187, i16 -16947, i16 -5206, i16 -16941, i16 -1, i16 -16944, i16 -1, i16 -16936, i16 -1, i16 -6188, i16 -1, i16 -6184, i16 -16948, i16 -6185, i16 -6183, i16 -6182, i16 -16937, i16 -6180, i16 -6176, i16 -6172, i16 -1, i16 -16933, i16 -16430, i16 -5211, i16 -5205, i16 -5208, i16 -5250, i16 -5204, i16 -5215, i16 -1, i16 -5209, i16 -1, i16 -16435, i16 -16429, i16 -5203, i16 -1, i16 -1, i16 -16433, i16 -1, i16 -16423, i16 -16428, i16 -5201, i16 -5207, i16 -16432, i16 -5214, i16 -16422, i16 -5213, i16 -5212, i16 -16421, i16 -16424, i16 -16943, i16 -1, i16 -16434, i16 -5200, i16 -16420, i16 -1, i16 -16427, i16 -5202, i16 -16431, i16 -16426, i16 -16425, i16 -1, i16 -15933, i16 -4444, i16 -4435, i16 -4438, i16 -4436, i16 -1, i16 -15936, i16 -4443, i16 -1, i16 -4437, i16 -15940, i16 -4441, i16 -15932, i16 -4445, i16 -4440, i16 -4433, i16 -5210, i16 -4439, i16 -4446, i16 -15939, i16 -4447, i16 -15938, i16 -4432, i16 -15937, i16 -4434, i16 -15934, i16 -4482, i16 -1, i16 -15935, i16 -1, i16 -4442, i16 -3876, i16 -3862, i16 -3867, i16 -3865, i16 -3877, i16 -15661, i16 -1, i16 -3878, i16 -15658, i16 -15659, i16 -1, i16 -3863, i16 -3871, i16 -3874, i16 -3868, i16 -1, i16 -3875, i16 -1, i16 -3873, i16 -3864, i16 -3866, i16 -1, i16 -15660, i16 -3859, i16 -3861, i16 -3870, i16 -3860, i16 -3869, i16 -1, i16 -3335, i16 -15409, i16 -3263, i16 -1, i16 -1, i16 -2481, i16 -15402, i16 -3872, i16 -3337, i16 -15406, i16 -3336, i16 -3331, i16 -1, i16 -1, i16 -15404, i16 -15403, i16 -3338, i16 -3264, i16 -3262, i16 -3334, i16 -3332, i16 -3330, i16 -3333, i16 -3261, i16 -15407, i16 -15401, i16 -15405, i16 -1, i16 -15408, i16 -2864, i16 -1, i16 -15177, i16 -2866, i16 -1, i16 -1, i16 -2862, i16 -1, i16 -2861, i16 -15179, i16 -2860, i16 -2863, i16 -1, i16 -2865, i16 -15176, i16 -15180, i16 -2859, i16 -1, i16 -15178, i16 -15181, i16 -1, i16 -1, i16 -1, i16 -15106, i16 -1, i16 -1, i16 -15040, i16 -2482, i16 -2483, i16 -2480, i16 -2479, i16 -1, i16 -15039, i16 -2218, i16 -2213, i16 -14934, i16 -1, i16 -2216, i16 -1, i16 -2217, i16 -2214, i16 -2215, i16 -1, i16 -1981, i16 -1, i16 -14884, i16 -1982, i16 -1984, i16 -1, i16 -1983, i16 -1, i16 -1, i16 -1, i16 -14850, i16 -14851, i16 -1855, i16 -1854, i16 -14784, i16 -1, i16 -1715, i16 -1714, i16 -14745, i16 -1, i16 -14739, i16 -1, i16 -1623, i16 -1592, i16 -22362, i16 -1, i16 -10291, i16 -1, i16 -10290, i16 -8110, i16 -7088, i16 -6171, i16 -15930, i16 -1, i16 -15931, i16 -3858, i16 -3260, i16 -1, i16 -1980, i16 -22361, i16 -11298, i16 -20390, i16 -19615, i16 -8108, i16 -8109, i16 -16932, i16 -6170, i16 -16931, i16 -4431, i16 -15657, i16 -1, i16 -1, i16 -1, i16 -14730, i16 -22360, i16 -12853, i16 -11297, i16 -1, i16 -1, i16 -19614, i16 -1, i16 -10289, i16 -10288, i16 -1, i16 -9243, i16 -1, i16 -18872, i16 -18202, i16 -1, i16 -8106, i16 -8107, i16 -8105, i16 -1, i16 -7087, i16 -7086, i16 -17496, i16 -16419, i16 -16930, i16 -16418, i16 -1, i16 -4427, i16 -4430, i16 -4428, i16 -4429, i16 -15929, i16 -1, i16 -3857, i16 -3258, i16 -3259, i16 -13404, i16 -20388, i16 -20389, i16 -11296, i16 -1, i16 -10287, i16 -1, i16 -1, i16 -9241, i16 -9242, i16 -18871, i16 -1, i16 -8103, i16 -8102, i16 -8104, i16 -1, i16 -1, i16 -18200, i16 -18201, i16 -1, i16 -17494, i16 -17495, i16 -1, i16 -6169, i16 -5197, i16 -5199, i16 -5198, i16 -16417, i16 -4425, i16 -4426, i16 -1, i16 -3854, i16 -3855, i16 -3856, i16 -3257, i16 -1, i16 -1622, i16 -22359, i16 -21133, i16 -1, i16 -21132, i16 -20387, i16 -20386, i16 -11294, i16 -11295, i16 -10286, i16 -1, i16 -19608, i16 -19610, i16 -19613, i16 -19609, i16 -19611, i16 -19612, i16 -1, i16 -1, i16 -18870, i16 -9238, i16 -1, i16 -18195, i16 -18868, i16 -18863, i16 -9236, i16 -18861, i16 -18862, i16 -18859, i16 -9237, i16 -9240, i16 -18865, i16 -18869, i16 -18867, i16 -9239, i16 -18860, i16 -18864, i16 -18866, i16 -18193, i16 -18194, i16 -18196, i16 -18192, i16 -1, i16 -18198, i16 -18197, i16 -1, i16 -18199, i16 -1, i16 -8101, i16 -1, i16 -1, i16 -7084, i16 -1, i16 -17492, i16 -17491, i16 -17493, i16 -1, i16 -7085, i16 -1, i16 -7083, i16 -1, i16 -6166, i16 -6164, i16 -1, i16 -16921, i16 -6163, i16 -16928, i16 -6167, i16 -16929, i16 -16919, i16 -16923, i16 -16922, i16 -16926, i16 -6168, i16 -16927, i16 -6162, i16 -6165, i16 -1, i16 -16920, i16 -1, i16 -16925, i16 -16924, i16 -5195, i16 -1, i16 -5193, i16 -5194, i16 -1, i16 -5192, i16 -16416, i16 -5196, i16 -1, i16 -1, i16 -15925, i16 -4424, i16 -15928, i16 -15924, i16 -15926, i16 -15927, i16 -3853, i16 -3850, i16 -1, i16 -3851, i16 -1, i16 -3852, i16 -15656, i16 -3256, i16 -3255, i16 -15400, i16 -3254, i16 -15399, i16 -1, i16 -1, i16 -15174, i16 -1, i16 -15175, i16 -2478, i16 -1, i16 -1, i16 -15038, i16 -2477, i16 -2212, i16 -14933, i16 -14932, i16 -1, i16 -1979, i16 -1, i16 -14782, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22358, i16 -1, i16 -19606, i16 -19607, i16 -8100, i16 -8099, i16 -1, i16 -17490, i16 -5191, i16 -16918, i16 -5190, i16 -4423, i16 -22357, i16 -1, i16 -12110, i16 -21130, i16 -21131, i16 -1, i16 -11293, i16 -20385, i16 -11292, i16 -10283, i16 -1, i16 -10284, i16 -1, i16 -10285, i16 -1, i16 -1, i16 -9234, i16 -18856, i16 -1, i16 -1, i16 -9235, i16 -18857, i16 -1, i16 -1, i16 -1, i16 -9233, i16 -18858, i16 -1, i16 -8097, i16 -8094, i16 -8096, i16 -8095, i16 -8091, i16 -8098, i16 -8090, i16 -8093, i16 -8092, i16 -17488, i16 -7082, i16 -1, i16 -1, i16 -17489, i16 -1, i16 -6158, i16 -6160, i16 -1, i16 -1, i16 -16917, i16 -6161, i16 -6159, i16 -1, i16 -16916, i16 -1, i16 -5189, i16 -1, i16 -5188, i16 -15923, i16 -1, i16 -3252, i16 -3250, i16 -3253, i16 -3251, i16 -2858, i16 -2476, i16 -1, i16 -1, i16 -1681, i16 -22356, i16 -21129, i16 -11291, i16 -11289, i16 -11290, i16 -1, i16 -10280, i16 -19604, i16 -1, i16 -10282, i16 -1, i16 -19605, i16 -10279, i16 -1, i16 -10278, i16 -10281, i16 -1, i16 -1, i16 -9221, i16 -18848, i16 -9229, i16 -9223, i16 -1, i16 -1, i16 -18853, i16 -18850, i16 -9230, i16 -18855, i16 -9226, i16 -8084, i16 -18851, i16 -1, i16 -9231, i16 -1, i16 -9225, i16 -9228, i16 -9222, i16 -9232, i16 -9224, i16 -18852, i16 -18849, i16 -9227, i16 -18854, i16 -1, i16 -18190, i16 -8088, i16 -18191, i16 -8081, i16 -8082, i16 -18184, i16 -1, i16 -18183, i16 -8080, i16 -18189, i16 -8083, i16 -18185, i16 -8078, i16 -8087, i16 -1, i16 -8085, i16 -18188, i16 -8089, i16 -8086, i16 -8079, i16 -18187, i16 -8077, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18186, i16 -1, i16 -17487, i16 -7077, i16 -7071, i16 -7079, i16 -7070, i16 -1, i16 -7080, i16 -7075, i16 -7069, i16 -7072, i16 -7073, i16 -7074, i16 -1, i16 -7081, i16 -7076, i16 -1, i16 -1, i16 -7078, i16 -1, i16 -16911, i16 -16914, i16 -6149, i16 -6079, i16 -6077, i16 -6080, i16 -6152, i16 -6150, i16 -6075, i16 -6078, i16 -6148, i16 -6074, i16 -6151, i16 -6076, i16 -16913, i16 -16907, i16 -16909, i16 -6157, i16 -16908, i16 -16912, i16 -6156, i16 -6154, i16 -6155, i16 -6147, i16 -6146, i16 -1, i16 -16910, i16 -1, i16 -16915, i16 -1, i16 -1, i16 -6153, i16 -1, i16 -5178, i16 -16414, i16 -1, i16 -5187, i16 -16413, i16 -16410, i16 -5182, i16 -1, i16 -5185, i16 -16411, i16 -1, i16 -1, i16 -5181, i16 -5180, i16 -5186, i16 -5177, i16 -5184, i16 -5179, i16 -16412, i16 -1, i16 -16415, i16 -5183, i16 -1, i16 -4417, i16 -15920, i16 -15922, i16 -15919, i16 -15921, i16 -4418, i16 -4421, i16 -4422, i16 -1, i16 -4419, i16 -1, i16 -1, i16 -4420, i16 -3771, i16 -15650, i16 -3845, i16 -3846, i16 -1, i16 -15655, i16 -3775, i16 -3776, i16 -3849, i16 -3773, i16 -3844, i16 -15651, i16 -3847, i16 -3774, i16 -3848, i16 -15654, i16 -15652, i16 -3843, i16 -15653, i16 -3842, i16 -1, i16 -3772, i16 -3246, i16 -1, i16 -15394, i16 -3249, i16 -1, i16 -3245, i16 -1, i16 -1, i16 -15397, i16 -3247, i16 -15392, i16 -1, i16 -15395, i16 -1, i16 -3248, i16 -1, i16 -15393, i16 -3244, i16 -15398, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15172, i16 -15170, i16 -1, i16 -2855, i16 -15171, i16 -2857, i16 -15396, i16 -2856, i16 -15173, i16 -15037, i16 -15035, i16 -2474, i16 -15036, i16 -2475, i16 -1, i16 -2207, i16 -14931, i16 -2208, i16 -14930, i16 -2210, i16 -2211, i16 -2206, i16 -2205, i16 -1978, i16 -1, i16 -2209, i16 -1, i16 -1, i16 -1850, i16 -1853, i16 -1852, i16 -1851, i16 -14756, i16 -1, i16 -1711, i16 -1712, i16 -1713, i16 -1680, i16 -1, i16 -1602, i16 -1621, i16 -14738, i16 -22355, i16 -20384, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18182, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16906, i16 -1, i16 -1, i16 -5176, i16 -1, i16 -1, i16 -15649, i16 -1, i16 -3243, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1620, i16 -22354, i16 -21778, i16 -21127, i16 -21128, i16 -1, i16 -20381, i16 -1, i16 -11288, i16 -20383, i16 -11287, i16 -20382, i16 -1, i16 -1, i16 -10273, i16 -10277, i16 -1, i16 -1, i16 -19603, i16 -10274, i16 -10275, i16 -10276, i16 -19602, i16 -10272, i16 -10271, i16 -1, i16 -1, i16 -1, i16 -9149, i16 -9151, i16 -9147, i16 -9146, i16 -9140, i16 -1, i16 -9144, i16 -9142, i16 -1, i16 -9150, i16 -9220, i16 -1, i16 -9143, i16 -1, i16 -1, i16 -9141, i16 -9148, i16 -9145, i16 -9219, i16 -18846, i16 -9152, i16 -9218, i16 -18847, i16 -18845, i16 -1, i16 -18179, i16 -8075, i16 -8073, i16 -8074, i16 -8069, i16 -18181, i16 -1, i16 -8072, i16 -8076, i16 -8071, i16 -8070, i16 -18180, i16 -18178, i16 -8068, i16 -1, i16 -7065, i16 -7066, i16 -1, i16 -7068, i16 -7067, i16 -17485, i16 -17483, i16 -17486, i16 -17484, i16 -6067, i16 -6066, i16 -6071, i16 -1, i16 -6070, i16 -16904, i16 -16899, i16 -16905, i16 -16898, i16 -16903, i16 -6069, i16 -1, i16 -1, i16 -6068, i16 -6072, i16 -16832, i16 -16901, i16 -1, i16 -1, i16 -16902, i16 -16900, i16 -1, i16 -6073, i16 -1, i16 -5174, i16 -16408, i16 -1, i16 -1, i16 -5172, i16 -16406, i16 -5169, i16 -5173, i16 -5175, i16 -5170, i16 -16407, i16 -5171, i16 -1, i16 -16409, i16 -1, i16 -1, i16 -15917, i16 -15914, i16 -4415, i16 -1, i16 -15916, i16 -4416, i16 -15918, i16 -15915, i16 -3770, i16 -3769, i16 -3768, i16 -15648, i16 -1, i16 -3767, i16 -1, i16 -15647, i16 -15390, i16 -3240, i16 -3239, i16 -3241, i16 -3242, i16 -3238, i16 -15391, i16 -2851, i16 -2853, i16 -2852, i16 -2850, i16 -2854, i16 -2849, i16 -2472, i16 -1, i16 -2471, i16 -2473, i16 -15034, i16 -2204, i16 -14929, i16 -2203, i16 -1976, i16 -1977, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -22353, i16 -18844, i16 -1, i16 -1, i16 -18112, i16 -1, i16 -1, i16 -1, i16 -17482, i16 -1, i16 -1, i16 -16404, i16 -1, i16 -16405, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15389, i16 -15236, i16 -15033, i16 -22352, i16 -20380, i16 -18111, i16 -1, i16 -3237, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -13402, i16 -1, i16 -1, i16 -22351, i16 -1, i16 -22348, i16 -22349, i16 -22350, i16 -1, i16 -1, i16 -13403, i16 -1, i16 -12851, i16 -1, i16 -12849, i16 -21777, i16 -1, i16 -1, i16 -21775, i16 -12852, i16 -12850, i16 -21776, i16 -12847, i16 -12848, i16 -12846, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12106, i16 -12108, i16 -21124, i16 -12109, i16 -21085, i16 -21122, i16 -21125, i16 -1, i16 -21084, i16 -1, i16 -21123, i16 -21086, i16 -1, i16 -21087, i16 -12107, i16 -1, i16 -21126, i16 -1, i16 -1, i16 -1, i16 -20374, i16 -11285, i16 -11279, i16 -20377, i16 -20370, i16 -1, i16 -20375, i16 -11282, i16 -11280, i16 -20372, i16 -11286, i16 -11283, i16 -20376, i16 -20379, i16 -11284, i16 -20373, i16 -11281, i16 -20371, i16 -20378, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10269, i16 -10266, i16 -19600, i16 -1, i16 -19590, i16 -19594, i16 -10268, i16 -1, i16 -1, i16 -19586, i16 -19593, i16 -19588, i16 -19598, i16 -1, i16 -19601, i16 -19599, i16 -19587, i16 -10267, i16 -19595, i16 -19592, i16 -19596, i16 -19591, i16 -10265, i16 -19589, i16 -19597, i16 -10270, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9139, i16 -18843, i16 -9137, i16 -1, i16 -18841, i16 -18839, i16 -1, i16 -9138, i16 -18842, i16 -18838, i16 -1, i16 -18840, i16 -1, i16 -1, i16 -1, i16 -18105, i16 -8029, i16 -18097, i16 -8066, i16 -1, i16 -18096, i16 -18107, i16 -1, i16 -8031, i16 -1, i16 -1, i16 -18102, i16 -1, i16 -8030, i16 -18109, i16 -18110, i16 -1, i16 -18099, i16 -18100, i16 -18101, i16 -18103, i16 -18098, i16 -8067, i16 -18108, i16 -18106, i16 -18104, i16 -1, i16 -1, i16 -17480, i16 -17477, i16 -1, i16 -17473, i16 -17479, i16 -17474, i16 -17476, i16 -1, i16 -17481, i16 -1, i16 -17475, i16 -17478, i16 -1, i16 -1, i16 -1, i16 -6062, i16 -16829, i16 -16831, i16 -1, i16 -6061, i16 -1, i16 -16828, i16 -16830, i16 -6063, i16 -6064, i16 -1, i16 -16400, i16 -6065, i16 -16402, i16 -16403, i16 -5168, i16 -16827, i16 -16401, i16 -5167, i16 -16398, i16 -5166, i16 -16399, i16 -15912, i16 -4413, i16 -15913, i16 -15908, i16 -15910, i16 -15909, i16 -15645, i16 -15911, i16 -4414, i16 -5165, i16 -15646, i16 -15644, i16 -1, i16 -15388, i16 -15387, i16 -1, i16 -2848, i16 -1, i16 -14882, i16 -14883, i16 -22346, i16 -1, i16 -1, i16 -13739, i16 -20369, i16 -1, i16 -13742, i16 -13741, i16 -13743, i16 -1, i16 -13740, i16 -1, i16 -1, i16 -13398, i16 -13401, i16 -13396, i16 -13400, i16 -22345, i16 -22342, i16 -1, i16 -13399, i16 -22343, i16 -13397, i16 -1, i16 -1, i16 -22344, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12843, i16 -12841, i16 -21772, i16 -12845, i16 -12842, i16 -12844, i16 -21774, i16 -21771, i16 -1, i16 -21773, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12104, i16 -12100, i16 -12103, i16 -1, i16 -21081, i16 -1, i16 -21080, i16 -1, i16 -12101, i16 -1, i16 -12099, i16 -12097, i16 -1, i16 -21083, i16 -12098, i16 -1, i16 -1, i16 -21082, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -10258, i16 -12102, i16 -11278, i16 -11269, i16 -11271, i16 -11276, i16 -11275, i16 -11270, i16 -11268, i16 -20367, i16 -1, i16 -11273, i16 -11277, i16 -20368, i16 -20366, i16 -11274, i16 -11267, i16 -11272, i16 -1, i16 -1, i16 -19551, i16 -10255, i16 -10263, i16 -10257, i16 -10256, i16 -19550, i16 -1, i16 -10264, i16 -10262, i16 -12105, i16 -10260, i16 -10259, i16 -10261, i16 -18836, i16 -1, i16 -1, i16 -1, i16 -9130, i16 -5164, i16 -9129, i16 -9132, i16 -19549, i16 -18834, i16 -9133, i16 -9127, i16 -9128, i16 -18837, i16 -9124, i16 -9134, i16 -9125, i16 -9136, i16 -9126, i16 -9131, i16 -18835, i16 -1, i16 -8022, i16 -1, i16 -8027, i16 -8021, i16 -8026, i16 -8028, i16 -8025, i16 -18095, i16 -1, i16 -8023, i16 -1, i16 -8024, i16 -18094, i16 -17471, i16 -17472, i16 -7058, i16 -7055, i16 -7063, i16 -7059, i16 -17470, i16 -7060, i16 -7062, i16 -7056, i16 -7061, i16 -7064, i16 -7057, i16 -1, i16 -6055, i16 -16824, i16 -3766, i16 -6058, i16 -6057, i16 -6059, i16 -9135, i16 -16825, i16 -6054, i16 -6060, i16 -16826, i16 -16823, i16 -6056, i16 -5163, i16 -16397, i16 -5162, i16 -5161, i16 -1, i16 -4412, i16 -15907, i16 -3765, i16 -3764, i16 -1, i16 -1, i16 -3763, i16 -3235, i16 -3236, i16 -2846, i16 -1, i16 -2847, i16 -2469, i16 -2468, i16 -2470, i16 -2202, i16 -14928, i16 -22341, i16 -21078, i16 -21079, i16 -20363, i16 -20364, i16 -11200, i16 -11199, i16 -11266, i16 -1, i16 -20365, i16 -10251, i16 -1, i16 -10250, i16 -10254, i16 -19548, i16 -10253, i16 -1, i16 -10252, i16 -1, i16 -1, i16 -1, i16 -1, i16 -9121, i16 -9119, i16 -9123, i16 -9120, i16 -18833, i16 -9122, i16 -18832, i16 -1, i16 -1, i16 -8845, i16 -18091, i16 -18092, i16 -1, i16 -18093, i16 -1, i16 -8020, i16 -8019, i16 -1, i16 -1, i16 -7053, i16 -7051, i16 -17466, i16 -17469, i16 -1, i16 -17467, i16 -17468, i16 -7052, i16 -7054, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6047, i16 -6050, i16 -6049, i16 -16819, i16 -6048, i16 -6053, i16 -6052, i16 -16822, i16 -1, i16 -16821, i16 -6051, i16 -16820, i16 -1, i16 -5157, i16 -1, i16 -5156, i16 -5159, i16 -5158, i16 -16396, i16 -5160, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4408, i16 -4411, i16 -4409, i16 -15904, i16 -4405, i16 -15905, i16 -4407, i16 -4404, i16 -4406, i16 -4410, i16 -15906, i16 -1, i16 -3761, i16 -1, i16 -3760, i16 -3762, i16 -1, i16 -3758, i16 -15643, i16 -15642, i16 -3233, i16 -15385, i16 -3759, i16 -3234, i16 -15386, i16 -2843, i16 -2842, i16 -15169, i16 -2844, i16 -1, i16 -2845, i16 -1, i16 -2467, i16 -15032, i16 -1, i16 -1975, i16 -1848, i16 -1849, i16 -1, i16 -14781, i16 -14755, i16 -1847, i16 -1679, i16 -1, i16 -14737, i16 -22340, i16 -21770, i16 -1, i16 -18090, i16 -1, i16 -15168, i16 -22339, i16 -21077, i16 -19547, i16 -18831, i16 -15641, i16 -21769, i16 -1, i16 -12095, i16 -12096, i16 -11198, i16 -1, i16 -20360, i16 -20362, i16 -20358, i16 -11196, i16 -1, i16 -20359, i16 -20361, i16 -1, i16 -1, i16 -1, i16 -1, i16 -11197, i16 -19544, i16 -10244, i16 -1, i16 -19545, i16 -19543, i16 -10174, i16 -19541, i16 -10242, i16 -10176, i16 -10249, i16 -19542, i16 -10173, i16 -1, i16 -1, i16 -10247, i16 -1, i16 -10246, i16 -10248, i16 -19546, i16 -1, i16 -10175, i16 -10245, i16 -10243, i16 -1, i16 -1, i16 -1, i16 -9107, i16 -1, i16 -9108, i16 -9110, i16 -9118, i16 -9103, i16 -9115, i16 -9105, i16 -9098, i16 -9106, i16 -18823, i16 -1, i16 -18827, i16 -9117, i16 -1, i16 -9111, i16 -18825, i16 -1, i16 -9112, i16 -18824, i16 -18822, i16 -9109, i16 -1, i16 -18830, i16 -18829, i16 -9097, i16 -9099, i16 -1, i16 -9100, i16 -9114, i16 -1, i16 -9102, i16 -1, i16 -18826, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18828, i16 -9101, i16 -9116, i16 -9113, i16 -9104, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -6982, i16 -8009, i16 -1, i16 -8016, i16 -7997, i16 -7988, i16 -8013, i16 -18079, i16 -1, i16 -8000, i16 -18089, i16 -18087, i16 -18075, i16 -8015, i16 -1, i16 -1, i16 -18086, i16 -18084, i16 -18074, i16 -18085, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18076, i16 -8007, i16 -1, i16 -8018, i16 -18078, i16 -8008, i16 -18082, i16 -7990, i16 -18077, i16 -7992, i16 -8004, i16 -7994, i16 -18080, i16 -8017, i16 -7991, i16 -7996, i16 -1, i16 -7989, i16 -18088, i16 -1, i16 -1, i16 -18073, i16 -18083, i16 -1, i16 -1, i16 -8011, i16 -1, i16 -8003, i16 -7999, i16 -1, i16 -7995, i16 -18081, i16 -8012, i16 -8014, i16 -8002, i16 -1, i16 -1, i16 -1, i16 -1, i16 -8005, i16 -8006, i16 -1, i16 -8001, i16 -7998, i16 -1, i16 -7993, i16 -1, i16 -1, i16 -1, i16 -7048, i16 -1, i16 -17465, i16 -7004, i16 -7046, i16 -17460, i16 -17456, i16 -6995, i16 -6987, i16 -7002, i16 -17464, i16 -1, i16 -6998, i16 -8010, i16 -1, i16 -17463, i16 -6991, i16 -6986, i16 -6994, i16 -1, i16 -6992, i16 -6983, i16 -6990, i16 -7042, i16 -6999, i16 -1, i16 -1, i16 -17455, i16 -1, i16 -17459, i16 -7044, i16 -6997, i16 -17461, i16 -7003, i16 -17462, i16 -6989, i16 -7006, i16 -7047, i16 -17458, i16 -6984, i16 -1, i16 -1, i16 -7045, i16 -6993, i16 -6996, i16 -7001, i16 -7049, i16 -7050, i16 -7007, i16 -6988, i16 -17457, i16 -6985, i16 -7043, i16 -7005, i16 -16814, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16806, i16 -16811, i16 -5980, i16 -5983, i16 -6041, i16 -16816, i16 -1, i16 -1, i16 -1, i16 -16817, i16 -16810, i16 -1, i16 -1, i16 -1, i16 -6043, i16 -16812, i16 -6031, i16 -6045, i16 -6044, i16 -16818, i16 -5981, i16 -16808, i16 -6028, i16 -6023, i16 -6029, i16 -5138, i16 -6033, i16 -6025, i16 -6027, i16 -6040, i16 -6046, i16 -6019, i16 -16809, i16 -6018, i16 -1, i16 -6024, i16 -1, i16 -6035, i16 -6037, i16 -6042, i16 -1, i16 -1, i16 -1, i16 -6034, i16 -6021, i16 -6038, i16 -6022, i16 -5982, i16 -1, i16 -1, i16 -16813, i16 -1, i16 -6026, i16 -6020, i16 -6030, i16 -6036, i16 -16815, i16 -1, i16 -1, i16 -1, i16 -7000, i16 -6032, i16 -16807, i16 -6039, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5132, i16 -16393, i16 -5133, i16 -5136, i16 -5052, i16 -16389, i16 -1, i16 -5055, i16 -5128, i16 -5053, i16 -5143, i16 -5130, i16 -1, i16 -16387, i16 -1, i16 -5151, i16 -1, i16 -5153, i16 -5054, i16 -1, i16 -5056, i16 -5122, i16 -5139, i16 -5140, i16 -5150, i16 -16320, i16 -1, i16 -5144, i16 -5134, i16 -5123, i16 -16317, i16 -5051, i16 -1, i16 -15896, i16 -16315, i16 -16386, i16 -5146, i16 -1, i16 -5137, i16 -5154, i16 -5152, i16 -16395, i16 -16318, i16 -16390, i16 -5145, i16 -5129, i16 -5135, i16 -16319, i16 -5155, i16 -15901, i16 -5127, i16 -5124, i16 -16388, i16 -1, i16 -5141, i16 -16316, i16 -16391, i16 -1, i16 -1, i16 -1, i16 -16392, i16 -5131, i16 -5125, i16 -16394, i16 -1, i16 -5148, i16 -5126, i16 -1, i16 -1, i16 -5147, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5142, i16 -4398, i16 -1, i16 -4393, i16 -15899, i16 -15897, i16 -4387, i16 -15903, i16 -4372, i16 -4381, i16 -4392, i16 -4391, i16 -4382, i16 -1, i16 -15890, i16 -4383, i16 -4399, i16 -4384, i16 -4396, i16 -4371, i16 -15891, i16 -15893, i16 -4395, i16 -1, i16 -4376, i16 -1, i16 -4390, i16 -4377, i16 -1, i16 -4375, i16 -4400, i16 -15898, i16 -1, i16 -4374, i16 -1, i16 -1, i16 -4386, i16 -1, i16 -15894, i16 -4389, i16 -1, i16 -1, i16 -15892, i16 -4380, i16 -1, i16 -1, i16 -1, i16 -15900, i16 -4394, i16 -4379, i16 -1, i16 -4385, i16 -5149, i16 -4378, i16 -4397, i16 -1, i16 -15895, i16 -1, i16 -4373, i16 -1, i16 -15902, i16 -4402, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3744, i16 -3751, i16 -15639, i16 -1, i16 -3756, i16 -3741, i16 -3749, i16 -4388, i16 -1, i16 -3739, i16 -3755, i16 -1, i16 -15640, i16 -3745, i16 -15638, i16 -15630, i16 -15632, i16 -3743, i16 -15631, i16 -3753, i16 -1, i16 -3752, i16 -3747, i16 -3742, i16 -1, i16 -4403, i16 -15637, i16 -3734, i16 -3737, i16 -3733, i16 -3746, i16 -3750, i16 -3736, i16 -3222, i16 -3748, i16 -1, i16 -15634, i16 -1, i16 -15635, i16 -4401, i16 -15633, i16 -3740, i16 -3738, i16 -15636, i16 -3735, i16 -3757, i16 -1, i16 -3754, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3213, i16 -1, i16 -3229, i16 -15381, i16 -3215, i16 -1, i16 -1, i16 -3231, i16 -15380, i16 -1, i16 -3220, i16 -1, i16 -3224, i16 -15375, i16 -3214, i16 -3230, i16 -3227, i16 -15383, i16 -3212, i16 -1, i16 -3219, i16 -3216, i16 -15377, i16 -15372, i16 -15374, i16 -3223, i16 -3228, i16 -1, i16 -15379, i16 -15378, i16 -3232, i16 -15382, i16 -1, i16 -15384, i16 -15376, i16 -3217, i16 -15373, i16 -1, i16 -3221, i16 -3211, i16 -15371, i16 -1, i16 -1, i16 -1, i16 -3225, i16 -1, i16 -3218, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2829, i16 -2750, i16 -2827, i16 -2820, i16 -3226, i16 -2822, i16 -2839, i16 -2752, i16 -15165, i16 -2835, i16 -2818, i16 -2828, i16 -1, i16 -1, i16 -15166, i16 -1, i16 -1, i16 -2748, i16 -2826, i16 -1, i16 -2821, i16 -2819, i16 -2841, i16 -2751, i16 -2830, i16 -2825, i16 -2837, i16 -2833, i16 -2749, i16 -2823, i16 -2840, i16 -2836, i16 -2834, i16 -2824, i16 -1, i16 -15167, i16 -2831, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2838, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2832, i16 -2463, i16 -2458, i16 -15025, i16 -2456, i16 -1, i16 -15031, i16 -1, i16 -2460, i16 -2454, i16 -15026, i16 -15030, i16 -1, i16 -15029, i16 -2464, i16 -2457, i16 -15027, i16 -2459, i16 -15028, i16 -2465, i16 -2461, i16 -2462, i16 -1, i16 -2466, i16 -2455, i16 -1, i16 -1, i16 -1, i16 -14927, i16 -2195, i16 -2192, i16 -2196, i16 -2194, i16 -2193, i16 -2199, i16 -2198, i16 -2201, i16 -1, i16 -1, i16 -2197, i16 -2200, i16 -14926, i16 -14925, i16 -1, i16 -1, i16 -1973, i16 -1, i16 -1971, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1972, i16 -1970, i16 -1, i16 -14880, i16 -1, i16 -1974, i16 -14881, i16 -14879, i16 -1, i16 -1, i16 -1, i16 -1845, i16 -1844, i16 -14780, i16 -1846, i16 -1, i16 -1709, i16 -1710, i16 -1708, i16 -14753, i16 -1707, i16 -14754, i16 -1706, i16 -1678, i16 -1675, i16 -1676, i16 -14744, i16 -1677, i16 -1, i16 -1, i16 -1, i16 -14734, i16 -14736, i16 -14735, i16 -14729, i16 -1600, i16 -1599, i16 -1601, i16 -1591, i16 -21768, i16 -1, i16 -1, i16 -10172, i16 -9096, i16 -5979, i16 -3210, i16 -1, i16 -1, i16 -21767, i16 -1, i16 -21076, i16 -20357, i16 -1, i16 -1, i16 -10171, i16 -1, i16 -10170, i16 -19540, i16 -1, i16 -18819, i16 -9094, i16 -9095, i16 -18781, i16 -18820, i16 -9093, i16 -18818, i16 -18782, i16 -18783, i16 -18821, i16 -1, i16 -1, i16 -1, i16 -18072, i16 -1, i16 -1, i16 -7984, i16 -7986, i16 -1, i16 -7985, i16 -7987, i16 -1, i16 -17454, i16 -1, i16 -17451, i16 -17449, i16 -17450, i16 -1, i16 -1, i16 -17453, i16 -17452, i16 -1, i16 -5977, i16 -5978, i16 -16805, i16 -5976, i16 -1, i16 -5975, i16 -16804, i16 -1, i16 -1, i16 -1, i16 -5043, i16 -5045, i16 -4365, i16 -1, i16 -5047, i16 -5046, i16 -16314, i16 -5050, i16 -5042, i16 -5048, i16 -5044, i16 -4369, i16 -1, i16 -1, i16 -4367, i16 -1, i16 -4366, i16 -15885, i16 -4370, i16 -15886, i16 -4368, i16 -15889, i16 -15888, i16 -15887, i16 -5049, i16 -1, i16 -1, i16 -15627, i16 -3730, i16 -3732, i16 -3731, i16 -15629, i16 -15626, i16 -15628, i16 -1, i16 -1, i16 -1, i16 -3209, i16 -3208, i16 -15370, i16 -1, i16 -2747, i16 -2745, i16 -2746, i16 -15164, i16 -15024, i16 -2451, i16 -2452, i16 -2453, i16 -21766, i16 -1, i16 -13910, i16 -1, i16 -13736, i16 -22807, i16 -13738, i16 -13735, i16 -13737, i16 -1, i16 -1, i16 -1, i16 -13394, i16 -1, i16 -22335, i16 -1, i16 -22334, i16 -13392, i16 -22337, i16 -13393, i16 -13395, i16 -22336, i16 -22338, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12840, i16 -12837, i16 -21763, i16 -12838, i16 -12839, i16 -1, i16 -21764, i16 -21765, i16 -1, i16 -21696, i16 -12836, i16 -21762, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -12090, i16 -21074, i16 -21073, i16 -21072, i16 -12089, i16 -12093, i16 -21075, i16 -12092, i16 -1, i16 -12091, i16 -12094, i16 -1, i16 -1, i16 -1, i16 -20316, i16 -1, i16 -1, i16 -20319, i16 -11195, i16 -20318, i16 -20315, i16 -11194, i16 -1, i16 -20354, i16 -20356, i16 -20355, i16 -20317, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19539, i16 -10167, i16 -19531, i16 -10168, i16 -1, i16 -10165, i16 -19535, i16 -10166, i16 -18773, i16 -19537, i16 -19534, i16 -19538, i16 -19533, i16 -19532, i16 -19536, i16 -1, i16 -1, i16 -1, i16 -10169, i16 -18777, i16 -9091, i16 -1, i16 -9053, i16 -1, i16 -1, i16 -9054, i16 -18772, i16 -18776, i16 -18775, i16 -9092, i16 -9090, i16 -9055, i16 -18780, i16 -18778, i16 -1, i16 -18774, i16 -18779, i16 -1, i16 -1, i16 -7981, i16 -7983, i16 -7982, i16 -18070, i16 -18069, i16 -1, i16 -7980, i16 -18071, i16 -17448, i16 -1, i16 -17446, i16 -17447, i16 -1, i16 -6981, i16 -1, i16 -1, i16 -6980, i16 -5973, i16 -1, i16 -5974, i16 -1, i16 -1, i16 -16313, i16 -16312, i16 -5041, i16 -16311, i16 -1, i16 -4362, i16 -1, i16 -4364, i16 -1, i16 -4363, i16 -15884, i16 -1, i16 -3729, i16 -15369, i16 -1, i16 -1, i16 -1, i16 -15883, i16 -21695, i16 -1, i16 -20314, i16 -11193, i16 -1, i16 -1, i16 -10164, i16 -19530, i16 -18771, i16 -9052, i16 -9050, i16 -18769, i16 -18770, i16 -18768, i16 -18767, i16 -9051, i16 -18066, i16 -18065, i16 -18067, i16 -17445, i16 -18068, i16 -7979, i16 -1, i16 -1, i16 -1, i16 -17444, i16 -5972, i16 -5040, i16 -16310, i16 -15882, i16 -3728, i16 -3724, i16 -15623, i16 -3727, i16 -15622, i16 -15624, i16 -3723, i16 -15621, i16 -3725, i16 -1, i16 -3207, i16 -15625, i16 -15368, i16 -1, i16 -1843, i16 -1, i16 -1, i16 -21694, i16 -19528, i16 -19529, i16 -1, i16 -1, i16 -1, i16 -1, i16 -18766, i16 -9048, i16 -9049, i16 -18765, i16 -1, i16 -1, i16 -7975, i16 -18061, i16 -18064, i16 -7976, i16 -18062, i16 -7978, i16 -18063, i16 -1, i16 -7977, i16 -1, i16 -6979, i16 -17443, i16 -1, i16 -5969, i16 -1, i16 -16803, i16 -5971, i16 -16802, i16 -16801, i16 -5970, i16 -16800, i16 -1, i16 -5039, i16 -1, i16 -16306, i16 -16309, i16 -16304, i16 -5037, i16 -16308, i16 -5038, i16 -16305, i16 -1, i16 -1, i16 -16307, i16 -1, i16 -4359, i16 -4357, i16 -1, i16 -1, i16 -15881, i16 -4358, i16 -15880, i16 -4360, i16 -4361, i16 -1, i16 -3721, i16 -3722, i16 -15620, i16 -3720, i16 -3202, i16 -15366, i16 -3203, i16 -3206, i16 -15367, i16 -3205, i16 -3204, i16 -1, i16 -2744, i16 -2743, i16 -15163, i16 -1, i16 -15021, i16 -1, i16 -1, i16 -2450, i16 -1, i16 -1, i16 -15023, i16 -15022, i16 -2449, i16 -1, i16 -1, i16 -14924, i16 -14923, i16 -2191, i16 -1, i16 -1, i16 -14779, i16 -1841, i16 -14777, i16 -1, i16 -1842, i16 -1840, i16 -14778, i16 -1705, i16 -1, i16 -1619, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21693, i16 -1, i16 -1, i16 -1, i16 -18060, i16 -1, i16 -6978, i16 -1, i16 -5968, i16 -16303, i16 -16302, i16 -1, i16 -21692, i16 -1, i16 -16799, i16 -15365, i16 -21071, i16 -1, i16 -1, i16 -1, i16 -16301, i16 -1, i16 -14878, i16 -21070, i16 -10163, i16 -1, i16 -9047, i16 -1, i16 -9045, i16 -1, i16 -9046, i16 -1, i16 -7971, i16 -7974, i16 -18059, i16 -1, i16 -18058, i16 -7973, i16 -7972, i16 -1, i16 -6976, i16 -6971, i16 -17442, i16 -6977, i16 -6975, i16 -6968, i16 -6973, i16 -6969, i16 -6972, i16 -6974, i16 -6970, i16 -17441, i16 -1, i16 -1, i16 -5965, i16 -1, i16 -5967, i16 -16797, i16 -1, i16 -16798, i16 -5966, i16 -16796, i16 -1, i16 -1, i16 -1, i16 -1, i16 -5034, i16 -1, i16 -1, i16 -5035, i16 -16300, i16 -5036, i16 -4356, i16 -1, i16 -4354, i16 -4287, i16 -4288, i16 -1, i16 -15879, i16 -4355, i16 -3679, i16 -15619, i16 -3715, i16 -3678, i16 -15618, i16 -1, i16 -3717, i16 -1, i16 -3714, i16 -3716, i16 -3719, i16 -15552, i16 -3718, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3167, i16 -1, i16 -1, i16 -3165, i16 -3166, i16 -1, i16 -2742, i16 -1, i16 -2741, i16 -1, i16 -1, i16 -1, i16 -2448, i16 -1, i16 -14921, i16 -1, i16 -14922, i16 -1969, i16 -1968, i16 -14776, i16 -1839, i16 -1, i16 -14743, i16 -1, i16 -21069, i16 -18764, i16 -6966, i16 -6967, i16 -5963, i16 -5964, i16 -1, i16 -1, i16 -15878, i16 -4285, i16 -4286, i16 -3675, i16 -3677, i16 -3674, i16 -3676, i16 -1, i16 -1, i16 -15364, i16 -3164, i16 -3163, i16 -3162, i16 -1, i16 -2447, i16 -1, i16 -2190, i16 -1, i16 -1838, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21068, i16 -1, i16 -1, i16 -5033, i16 -4284, i16 -1, i16 -21067, i16 -1, i16 -1, i16 -17440, i16 -1, i16 -5032, i16 -15551, i16 -3673, i16 -15363, i16 -1, i16 -2740, i16 -2739, i16 -15020, i16 -1967, i16 -21066, i16 -19525, i16 -19524, i16 -10162, i16 -18763, i16 -18762, i16 -9044, i16 -18761, i16 -1, i16 -18054, i16 -1, i16 -18052, i16 -7969, i16 -7968, i16 -7970, i16 -18057, i16 -18056, i16 -18053, i16 -18055, i16 -1, i16 -1, i16 -6965, i16 -17439, i16 -17438, i16 -1, i16 -1, i16 -5956, i16 -16793, i16 -5961, i16 -5962, i16 -1, i16 -5957, i16 -16795, i16 -1, i16 -1, i16 -16293, i16 -1, i16 -5960, i16 -5955, i16 -5958, i16 -5959, i16 -1, i16 -16794, i16 -1, i16 -16295, i16 -1, i16 -5030, i16 -16299, i16 -1, i16 -5029, i16 -1, i16 -1, i16 -5031, i16 -1, i16 -16296, i16 -16298, i16 -16294, i16 -1, i16 -16297, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4283, i16 -1, i16 -4278, i16 -4282, i16 -4279, i16 -15877, i16 -1, i16 -4652, i16 -4280, i16 -4281, i16 -1, i16 -15548, i16 -15550, i16 -15547, i16 -15549, i16 -3672, i16 -3671, i16 -3670, i16 -15546, i16 -1, i16 -1, i16 -1, i16 -3158, i16 -15296, i16 -3160, i16 -1, i16 -15295, i16 -3161, i16 -3159, i16 -15362, i16 -2735, i16 -2738, i16 -1, i16 -2737, i16 -2736, i16 -2446, i16 -15018, i16 -1, i16 -15019, i16 -1, i16 -2188, i16 -2189, i16 -14920, i16 -1, i16 -1, i16 -1, i16 -14877, i16 -14775, i16 -14752, i16 -1704, i16 -1618, i16 -1617, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21065, i16 -9043, i16 -1, i16 -1, i16 -7967, i16 -6964, i16 -6963, i16 -17437, i16 -1, i16 -17436, i16 -5954, i16 -16792, i16 -1, i16 -1, i16 -15876, i16 -1, i16 -3669, i16 -1, i16 -15545, i16 -3155, i16 -15294, i16 -3156, i16 -3154, i16 -3157, i16 -2443, i16 -2734, i16 -2733, i16 -1, i16 -15162, i16 -1, i16 -2444, i16 -1, i16 -1, i16 -2445, i16 -1, i16 -2187, i16 -1616, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21064, i16 -1, i16 -1, i16 -1, i16 -21063, i16 -1, i16 -1, i16 -20313, i16 -11192, i16 -1, i16 -10161, i16 -1, i16 -18760, i16 -1, i16 -18757, i16 -18759, i16 -9042, i16 -1, i16 -18755, i16 -1, i16 -18758, i16 -1, i16 -1, i16 -18756, i16 -1, i16 -18050, i16 -1, i16 -7966, i16 -1, i16 -1, i16 -7965, i16 -5952, i16 -1, i16 -18051, i16 -18015, i16 -18014, i16 -6961, i16 -1, i16 -6962, i16 -17435, i16 -1, i16 -17434, i16 -1, i16 -6960, i16 -5953, i16 -17432, i16 -16791, i16 -1, i16 -17433, i16 -1, i16 -1, i16 -1, i16 -16292, i16 -5951, i16 -16789, i16 -16790, i16 -5950, i16 -5947, i16 -5949, i16 -5948, i16 -16788, i16 -1, i16 -16287, i16 -16289, i16 -1, i16 -1, i16 -16290, i16 -5027, i16 -1, i16 -16288, i16 -1, i16 -1, i16 -5028, i16 -4277, i16 -1, i16 -5026, i16 -16291, i16 -5025, i16 -4274, i16 -4276, i16 -4275, i16 -4270, i16 -15541, i16 -4271, i16 -4268, i16 -4269, i16 -4272, i16 -4273, i16 -1, i16 -15875, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3666, i16 -1, i16 -3667, i16 -15542, i16 -15544, i16 -15543, i16 -1, i16 -3668, i16 -1, i16 -3151, i16 -1, i16 -15293, i16 -1, i16 -3152, i16 -3153, i16 -15292, i16 -1, i16 -2728, i16 -2729, i16 -1, i16 -2731, i16 -1, i16 -2732, i16 -15160, i16 -15161, i16 -2727, i16 -2186, i16 -14919, i16 -2441, i16 -15017, i16 -2442, i16 -2730, i16 -1, i16 -2185, i16 -14876, i16 -1, i16 -14751, i16 -1703, i16 -1, i16 -1615, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -21062, i16 -10160, i16 -4267, i16 -21061, i16 -1, i16 -1, i16 -6958, i16 -6959, i16 -5024, i16 -1, i16 -1, i16 -4265, i16 -1, i16 -4266, i16 -1, i16 -15540, i16 -3150, i16 -3149, i16 -15159, i16 -1, i16 -1, i16 -1614, i16 -20312, i16 -18753, i16 -18754, i16 -7964, i16 -7962, i16 -18012, i16 -7963, i16 -18013, i16 -18011, i16 -7961, i16 -1, i16 -1, i16 -1, i16 -6956, i16 -6954, i16 -6955, i16 -1, i16 -6952, i16 -1, i16 -1, i16 -1, i16 -17431, i16 -6953, i16 -6957, i16 -1, i16 -1, i16 -1, i16 -6951, i16 -1, i16 -5940, i16 -1, i16 -5937, i16 -5935, i16 -5945, i16 -5941, i16 -5944, i16 -16786, i16 -16783, i16 -16781, i16 -5943, i16 -5942, i16 -16782, i16 -5939, i16 -5936, i16 -5938, i16 -16780, i16 -1, i16 -16784, i16 -5946, i16 -16787, i16 -1, i16 -16785, i16 -1, i16 -1, i16 -16285, i16 -5018, i16 -5020, i16 -5021, i16 -1, i16 -5015, i16 -1, i16 -5016, i16 -5017, i16 -1, i16 -5022, i16 -16286, i16 -5023, i16 -1, i16 -5019, i16 -16284, i16 -1, i16 -1, i16 -4262, i16 -1, i16 -4258, i16 -4261, i16 -4259, i16 -4260, i16 -4263, i16 -4257, i16 -4254, i16 -4256, i16 -4255, i16 -15808, i16 -15874, i16 -4264, i16 -4253, i16 -3661, i16 -3658, i16 -3656, i16 -3657, i16 -1, i16 -3663, i16 -3659, i16 -3664, i16 -1, i16 -3662, i16 -15539, i16 -3665, i16 -1, i16 -3660, i16 -1, i16 -1, i16 -3136, i16 -3147, i16 -15291, i16 -1, i16 -1, i16 -15290, i16 -3148, i16 -3143, i16 -3137, i16 -3145, i16 -3138, i16 -1, i16 -3141, i16 -1, i16 -3142, i16 -3139, i16 -3144, i16 -3146, i16 -1, i16 -3140, i16 -1, i16 -2720, i16 -2722, i16 -15158, i16 -2723, i16 -2717, i16 -2719, i16 -1, i16 -15157, i16 -2724, i16 -2726, i16 -1, i16 -2725, i16 -15155, i16 -2721, i16 -15156, i16 -2718, i16 -2440, i16 -2434, i16 -1, i16 -1, i16 -2439, i16 -15013, i16 -2399, i16 -15014, i16 -2435, i16 -2436, i16 -15015, i16 -2437, i16 -15016, i16 -2438, i16 -1, i16 -2179, i16 -2143, i16 -2178, i16 -1, i16 -2181, i16 -14917, i16 -2184, i16 -2180, i16 -2141, i16 -1, i16 -2142, i16 -2183, i16 -2182, i16 -14918, i16 -1966, i16 -14873, i16 -1, i16 -1965, i16 -14875, i16 -14874, i16 -1, i16 -1, i16 -1837, i16 -14774, i16 -1674, i16 -1, i16 -14742, i16 -1, i16 -1613, i16 -14741, i16 -1612, i16 -1611, i16 -1597, i16 -1598, i16 -14726, i16 -1587, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -20311, i16 -1, i16 -1, i16 -7959, i16 -1, i16 -7960, i16 -1, i16 -17430, i16 -17429, i16 -6950, i16 -1, i16 -5934, i16 -5012, i16 -1, i16 -1, i16 -16779, i16 -16283, i16 -5014, i16 -1, i16 -5011, i16 -16282, i16 -1, i16 -4252, i16 -5013, i16 -3655, i16 -15538, i16 -3135, i16 -1, i16 -1, i16 -1, i16 -2714, i16 -2716, i16 -1, i16 -1, i16 -2715, i16 -1, i16 -1, i16 -2398, i16 -1, i16 -15012, i16 -2140, i16 -14870, i16 -14916, i16 -14872, i16 -14871, i16 -1836, i16 -14750, i16 -1, i16 -20310, i16 -1, i16 -1, i16 -1, i16 -3654, i16 -1, i16 -1, i16 -11191, i16 -1, i16 -18010, i16 -1, i16 -6949, i16 -1, i16 -1, i16 -17428, i16 -6948, i16 -1, i16 -1, i16 -1, i16 -5932, i16 -5933, i16 -16280, i16 -16778, i16 -16777, i16 -1, i16 -5929, i16 -5930, i16 -5931, i16 -1, i16 -1, i16 -5010, i16 -5007, i16 -1, i16 -5008, i16 -5009, i16 -16281, i16 -4248, i16 -4250, i16 -4251, i16 -4249, i16 -1, i16 -15537, i16 -3652, i16 -3651, i16 -15536, i16 -1, i16 -3653, i16 -1, i16 -3133, i16 -3134, i16 -3131, i16 -15289, i16 -3132, i16 -1, i16 -2713, i16 -2711, i16 -2712, i16 -1, i16 -1, i16 -2397, i16 -2394, i16 -2396, i16 -2395, i16 -2139, i16 -14915, i16 -1, i16 -1, i16 -1, i16 -1964, i16 -1963, i16 -1962, i16 -1, i16 -14773, i16 -14749, i16 -1610, i16 -20309, i16 -1, i16 -16776, i16 -16279, i16 -3650, i16 -1, i16 -2138, i16 -1, i16 -1, i16 -1596, i16 -11190, i16 -1, i16 -14725, i16 -20308, i16 -5006, i16 -1, i16 -3649, i16 -1, i16 -3130, i16 -1, i16 -1, i16 -2393, i16 -2137, i16 -20307, i16 -1, i16 -6947, i16 -6946, i16 -1, i16 -17427, i16 -17426, i16 -5927, i16 -16774, i16 -16775, i16 -5928, i16 -1, i16 -4247, i16 -1, i16 -3648, i16 -3646, i16 -3647, i16 -15533, i16 -15534, i16 -15535, i16 -1, i16 -15010, i16 -2392, i16 -1, i16 -15011, i16 -2135, i16 -2136, i16 -1, i16 -14772, i16 -1835, i16 -19523, i16 -7958, i16 -1, i16 -1, i16 -1, i16 -6943, i16 -6945, i16 -6944, i16 -1, i16 -1, i16 -5918, i16 -1, i16 -5923, i16 -5926, i16 -5919, i16 -1, i16 -1, i16 -1, i16 -5917, i16 -1, i16 -1, i16 -16772, i16 -5920, i16 -5924, i16 -1, i16 -1, i16 -5925, i16 -5921, i16 -5922, i16 -16773, i16 -1, i16 -1, i16 -4995, i16 -5000, i16 -5002, i16 -4959, i16 -5001, i16 -1, i16 -5005, i16 -1, i16 -4999, i16 -1, i16 -1, i16 -5004, i16 -4238, i16 -5003, i16 -4958, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4996, i16 -16278, i16 -4997, i16 -4998, i16 -1, i16 -4994, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4246, i16 -4243, i16 -1, i16 -1, i16 -4244, i16 -1, i16 -4236, i16 -4241, i16 -4237, i16 -1, i16 -4239, i16 -4240, i16 -4242, i16 -1, i16 -4245, i16 -1, i16 -15805, i16 -15806, i16 -1, i16 -15804, i16 -15807, i16 -4235, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3640, i16 -3637, i16 -1, i16 -3639, i16 -3635, i16 -1, i16 -1, i16 -1, i16 -3634, i16 -1, i16 -3642, i16 -15528, i16 -3641, i16 -1, i16 -3643, i16 -3636, i16 -1, i16 -3644, i16 -3645, i16 -15529, i16 -15531, i16 -15532, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3638, i16 -3121, i16 -3115, i16 -15286, i16 -3120, i16 -1, i16 -3117, i16 -3113, i16 -15285, i16 -3118, i16 -1, i16 -3126, i16 -1, i16 -3127, i16 -3114, i16 -3123, i16 -1, i16 -3125, i16 -3116, i16 -3124, i16 -15287, i16 -15288, i16 -1, i16 -3129, i16 -3128, i16 -3119, i16 -1, i16 -1, i16 -1, i16 -3122, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2708, i16 -2705, i16 -1, i16 -1, i16 -1, i16 -1, i16 -15530, i16 -2707, i16 -2701, i16 -2703, i16 -2709, i16 -2698, i16 -1, i16 -2710, i16 -1, i16 -15153, i16 -2702, i16 -1, i16 -1, i16 -1, i16 -2706, i16 -15154, i16 -2699, i16 -1, i16 -1, i16 -2700, i16 -1, i16 -1, i16 -1, i16 -1, i16 -2389, i16 -2390, i16 -1, i16 -1, i16 -1, i16 -2383, i16 -1, i16 -2387, i16 -2384, i16 -15008, i16 -1, i16 -1, i16 -2386, i16 -2385, i16 -1, i16 -2391, i16 -2388, i16 -15009, i16 -1, i16 -1, i16 -1, i16 -14913, i16 -2124, i16 -2129, i16 -2125, i16 -1, i16 -2122, i16 -2126, i16 -1, i16 -2130, i16 -1, i16 -14911, i16 -2127, i16 -2123, i16 -14912, i16 -2132, i16 -2704, i16 -2128, i16 -1, i16 -1, i16 -2131, i16 -1, i16 -2134, i16 -1, i16 -2133, i16 -14914, i16 -1958, i16 -1956, i16 -1953, i16 -1957, i16 -1952, i16 -1, i16 -1959, i16 -1, i16 -1961, i16 -1, i16 -14869, i16 -1955, i16 -14867, i16 -14868, i16 -1960, i16 -1954, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1830, i16 -14771, i16 -1829, i16 -1, i16 -1831, i16 -1834, i16 -1, i16 -1, i16 -1832, i16 -1833, i16 -1702, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1700, i16 -1701, i16 -1, i16 -1, i16 -1671, i16 -1, i16 -1672, i16 -1673, i16 -1670, i16 -1, i16 -14733, i16 -14732, i16 -1590, i16 -1586, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19522, i16 -9041, i16 -7955, i16 -1, i16 -18009, i16 -7957, i16 -1, i16 -1, i16 -7956, i16 -1, i16 -1, i16 -1, i16 -6942, i16 -6941, i16 -17423, i16 -17425, i16 -6940, i16 -17424, i16 -5912, i16 -1, i16 -5909, i16 -5915, i16 -5908, i16 -5916, i16 -5914, i16 -1, i16 -5913, i16 -5910, i16 -1, i16 -1, i16 -16735, i16 -5905, i16 -5906, i16 -16771, i16 -5911, i16 -5907, i16 -16770, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4948, i16 -1, i16 -16273, i16 -1, i16 -4953, i16 -16277, i16 -1, i16 -4956, i16 -4950, i16 -4947, i16 -1, i16 -16272, i16 -1, i16 -4951, i16 -4954, i16 -4946, i16 -4955, i16 -1, i16 -4949, i16 -16276, i16 -1, i16 -4957, i16 -16275, i16 -1, i16 -16274, i16 -4952, i16 -1, i16 -1, i16 -1, i16 -4183, i16 -4230, i16 -4229, i16 -4226, i16 -4228, i16 -1, i16 -4234, i16 -1, i16 -1, i16 -4231, i16 -4187, i16 -4227, i16 -1, i16 -1, i16 -15803, i16 -1, i16 -4185, i16 -4188, i16 -15802, i16 -4186, i16 -4233, i16 -4190, i16 -4189, i16 -1, i16 -4191, i16 -1, i16 -1, i16 -1, i16 -1, i16 -3630, i16 -3628, i16 -3625, i16 -1, i16 -1, i16 -3631, i16 -1, i16 -15527, i16 -3623, i16 -3632, i16 -3622, i16 -1, i16 -3626, i16 -3624, i16 -3620, i16 -3627, i16 -3619, i16 -3629, i16 -3633, i16 -15526, i16 -1, i16 -3621, i16 -15525, i16 -15283, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4232, i16 -3087, i16 -3096, i16 -15281, i16 -3100, i16 -15280, i16 -1, i16 -1, i16 -3091, i16 -3097, i16 -3107, i16 -15282, i16 -3094, i16 -3099, i16 -3098, i16 -1, i16 -3112, i16 -3105, i16 -3090, i16 -1, i16 -3093, i16 -1, i16 -3101, i16 -1, i16 -3089, i16 -3106, i16 -3111, i16 -3092, i16 -1, i16 -3109, i16 -3095, i16 -3104, i16 -3088, i16 -3108, i16 -15284, i16 -3110, i16 -3103, i16 -3102, i16 -1, i16 -1, i16 -1, i16 -2691, i16 -1, i16 -2693, i16 -1, i16 -2654, i16 -1, i16 -2642, i16 -2651, i16 -2692, i16 -2696, i16 -2649, i16 -2690, i16 -2653, i16 -2694, i16 -2646, i16 -2697, i16 -2655, i16 -2650, i16 -2648, i16 -2645, i16 -2695, i16 -1, i16 -2641, i16 -2640, i16 -2647, i16 -2643, i16 -2652, i16 -1, i16 -2367, i16 -2364, i16 -1, i16 -15007, i16 -1, i16 -2365, i16 -2360, i16 -2362, i16 -15006, i16 -2371, i16 -2381, i16 -2382, i16 -15004, i16 -2369, i16 -2368, i16 -2372, i16 -2380, i16 -1, i16 -2375, i16 -2644, i16 -1, i16 -2379, i16 -15005, i16 -2373, i16 -1, i16 -2374, i16 -1, i16 -2378, i16 -2366, i16 -1, i16 -2377, i16 -2117, i16 -2363, i16 -2361, i16 -2370, i16 -2376, i16 -2116, i16 -2114, i16 -2120, i16 -14910, i16 -1, i16 -2107, i16 -2109, i16 -14909, i16 -2110, i16 -2111, i16 -2118, i16 -2121, i16 -2115, i16 -2106, i16 -2119, i16 -2113, i16 -1, i16 -1943, i16 -1938, i16 -1948, i16 -1945, i16 -14866, i16 -1941, i16 -1, i16 -1934, i16 -2112, i16 -1, i16 -1947, i16 -1937, i16 -1933, i16 -1942, i16 -1949, i16 -1939, i16 -1, i16 -1940, i16 -1935, i16 -1936, i16 -2108, i16 -1944, i16 -1950, i16 -1946, i16 -14770, i16 -14769, i16 -1951, i16 -1, i16 -1818, i16 -1827, i16 -1819, i16 -1822, i16 -1821, i16 -1828, i16 -1825, i16 -1817, i16 -1823, i16 -1824, i16 -1826, i16 -1, i16 -1820, i16 -1, i16 -1699, i16 -1, i16 -1698, i16 -1, i16 -1696, i16 -1697, i16 -1694, i16 -1695, i16 -1668, i16 -1669, i16 -1609, i16 -1, i16 -1608, i16 -1, i16 -1595, i16 -14728, i16 -14724, i16 -1, i16 -1585, i16 -14723, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -19521, i16 -1, i16 -1, i16 -1, i16 -15152, i16 -2359, i16 -1, i16 -14768, i16 -14767, i16 -1, i16 -19520, i16 -7954, i16 -1, i16 -18008, i16 -5904, i16 -1, i16 -1, i16 -4944, i16 -4943, i16 -4945, i16 -4181, i16 -4182, i16 -15801, i16 -3617, i16 -4180, i16 -3618, i16 -1, i16 -1, i16 -3085, i16 -15279, i16 -15277, i16 -3086, i16 -1, i16 -1, i16 -15278, i16 -1, i16 -2639, i16 -2637, i16 -2638, i16 -2358, i16 -15003, i16 -1, i16 -14865, i16 -1816, i16 -1693, i16 -1, i16 -1, i16 -1582, i16 -19519, i16 -1, i16 -6939, i16 -1, i16 -16734, i16 -1, i16 -1, i16 -1, i16 -4941, i16 -4942, i16 -1, i16 -4179, i16 -1, i16 -1, i16 -1, i16 -15276, i16 -15151, i16 -2105, i16 -1589, i16 -1, i16 -1, i16 -1, i16 -19518, i16 -17422, i16 -1, i16 -16733, i16 -1, i16 -3084, i16 -1, i16 -1932, i16 -18752, i16 -1, i16 -1, i16 -1, i16 -1, i16 -4178, i16 -1, i16 -1, i16 -1, i16 -14748, i16 -18751, i16 -16732, i16 -15800, i16 -1931, i16 -18750, i16 -1, i16 -5903, i16 -16270, i16 -4940, i16 -4939, i16 -1, i16 -16271, i16 -1, i16 -4177, i16 -15796, i16 -15798, i16 -15797, i16 -15799, i16 -3616, i16 -15524, i16 -1, i16 -1, i16 -1, i16 -2635, i16 -2636, i16 -2633, i16 -2634, i16 -15150, i16 -1, i16 -1, i16 -2357, i16 -1, i16 -2355, i16 -2356, i16 -15002, i16 -2104, i16 -1, i16 -1930, i16 -1929, i16 -14864, i16 -1692, i16 -1667, i16 -14731, i16 -1, i16 -9040, i16 -4938, i16 -4176, i16 -3083, i16 -7953, i16 -1, i16 -4175, i16 -3614, i16 -3615, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1928, i16 -14766, i16 -1, i16 -1691, i16 -1666, i16 -1, i16 -1, i16 -1, i16 -18007, i16 -5902, i16 -5901, i16 -1, i16 -4937, i16 -18006, i16 -1, i16 -15523, i16 -3613, i16 -1, i16 -2353, i16 -15001, i16 -2352, i16 -2354, i16 -1927, i16 -1, i16 -1815, i16 -1, i16 -18005, i16 -1, i16 -4172, i16 -4173, i16 -4174, i16 -3612, i16 -1, i16 -1, i16 -3608, i16 -3609, i16 -3610, i16 -3611, i16 -15522, i16 -3082, i16 -2631, i16 -15149, i16 -2632, i16 -2351, i16 -2101, i16 -2102, i16 -14908, i16 -2103, i16 -1924, i16 -1925, i16 -1926, i16 -1, i16 -1, i16 -17421, i16 -1, i16 -4936, i16 -15795, i16 -1, i16 -3081, i16 -3080, i16 -2100, i16 -1923, i16 -1, i16 -1, i16 -1814, i16 -1690, i16 -1607, i16 -1580, i16 -17420, i16 -15794, i16 -3607, i16 -3079, i16 -2350, i16 -1922, i16 -1, i16 -1, i16 -16730, i16 -1, i16 -4171, i16 -3606, i16 -3078, i16 -3077, i16 -3076, i16 -2626, i16 -1, i16 -2630, i16 -15000, i16 -2627, i16 -2628, i16 -15148, i16 -2629, i16 -15146, i16 -1, i16 -15147, i16 -2348, i16 -2349, i16 -14999, i16 -14998, i16 -1, i16 -1, i16 -14906, i16 -2099, i16 -14907, i16 -1, i16 -1885, i16 -1884, i16 -1886, i16 -1887, i16 -14764, i16 -1, i16 -1813, i16 -1812, i16 -1811, i16 -14765, i16 -1689, i16 -1686, i16 -1687, i16 -1688, i16 -1, i16 -1, i16 -1581, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -16269, i16 -1, i16 -1, i16 -15515, i16 -2625, i16 -2347, i16 -1, i16 -14905, i16 -2098, i16 -1, i16 -1, i16 -1579, i16 -1, i16 -1, i16 -1, i16 -16268, i16 -1, i16 -1, i16 -1, i16 -4170, i16 -1, i16 -2097, i16 -1, i16 -1631, i16 -14006, i16 -8708, i16 -24246, i16 -24233, i16 -1, i16 -24231, i16 -24229, i16 -24225, i16 -24224, i16 -24221, i16 -24220, i16 -24217, i16 -24216, i16 -24213, i16 -24212, i16 -24209, i16 -24208, i16 -24205, i16 -24204, i16 -24201, i16 -24200, i16 -24197, i16 -24196, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24122, i16 -24121, i16 -24118, i16 -24117, i16 -24120, i16 -24119, i16 -24228, i16 -24243, i16 -1, i16 -24241, i16 -1, i16 -24239, i16 -24238, i16 -24237, i16 -24236, i16 -1, i16 -24195, i16 -24194, i16 -24159, i16 -24158, i16 -24157, i16 -24156, i16 -24116, i16 -24115, i16 -24114, i16 -24098, i16 -24097, i16 -24096, i16 -24095, i16 -24094, i16 -1, i16 -1, i16 -23988, i16 -23987, i16 -23986, i16 -24247, i16 -1, i16 -24147, i16 -23997, i16 -23992, i16 -24146, i16 -1, i16 -24227, i16 -24226, i16 -24145, i16 -24113, i16 -24255, i16 -24112, i16 -24252, i16 -23999, i16 -23889, i16 -23888, i16 -23887, i16 -23886, i16 -23885, i16 -23884, i16 -23883, i16 -23882, i16 -23881, i16 -23880, i16 -24249, i16 -24250, i16 -24107, i16 -24105, i16 -24106, i16 -24248, i16 -23991, i16 -23857, i16 -23856, i16 -23855, i16 -23854, i16 -23853, i16 -23852, i16 -23851, i16 -23850, i16 -23849, i16 -23848, i16 -23847, i16 -23846, i16 -23845, i16 -23844, i16 -23843, i16 -23842, i16 -23841, i16 -23840, i16 -23839, i16 -23838, i16 -23837, i16 -23836, i16 -23835, i16 -23834, i16 -23833, i16 -23832, i16 -1, i16 -23998, i16 -1, i16 -1, i16 -24124, i16 -1, i16 -23831, i16 -23830, i16 -23829, i16 -23828, i16 -23827, i16 -23826, i16 -23825, i16 -23824, i16 -23823, i16 -23822, i16 -23821, i16 -23820, i16 -23819, i16 -23818, i16 -23817, i16 -23816, i16 -23815, i16 -23814, i16 -23813, i16 -23812, i16 -23811, i16 -23810, i16 -23744, i16 -23743, i16 -23742, i16 -23741, i16 -24223, i16 -24235, i16 -24222, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24125], align 16
@big5_decmap = internal constant [256 x %struct.dbcs_index] [%struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* getelementptr inbounds ([16702 x i16], [16702 x i16]* @__big5_decmap, i32 0, i32 0), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 382) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 764) to i16*), i8 64, i8 -65 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 1020) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 1402) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 1784) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 2166) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 2548) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 2930) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 3312) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 3694) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 4076) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 4458) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 4840) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 5222) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 5604) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 5986) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 6368) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 6750) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 7132) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 7514) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 7896) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 8278) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 8660) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 9042) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 9424) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 9806) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 10188) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 10570) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 10952) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 11334) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 11716) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 12098) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 12480) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 12862) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 13244) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 13626) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 14008) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 14390) to i16*), i8 64, i8 -4 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 14768) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 15150) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 15532) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 15914) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 16296) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 16678) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 17060) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 17442) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 17824) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 18206) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 18588) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 18970) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 19352) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 19734) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 20116) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 20498) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 20880) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 21262) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 21644) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 22026) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 22408) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 22790) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 23172) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 23554) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 23936) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 24318) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 24700) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 25082) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 25464) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 25846) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 26228) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 26610) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 26992) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 27374) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 27756) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 28138) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 28520) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 28902) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 29284) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 29666) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 30048) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 30430) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 30812) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 31194) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 31576) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 31958) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 32340) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 32722) to i16*), i8 64, i8 -2 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([16702 x i16]* @__big5_decmap to i8*), i64 33104) to i16*), i8 64, i8 -43 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer], align 16
@__big5_decmap = internal constant [16702 x i16] [i16 12288, i16 -244, i16 12289, i16 12290, i16 -242, i16 8226, i16 -229, i16 -230, i16 -225, i16 -255, i16 -464, i16 8230, i16 8229, i16 -432, i16 -156, i16 -430, i16 183, i16 -428, i16 -427, i16 -426, i16 -425, i16 -164, i16 8211, i16 -463, i16 8212, i16 -461, i16 9588, i16 -460, i16 -433, i16 -248, i16 -247, i16 -459, i16 -458, i16 -165, i16 -163, i16 -457, i16 -456, i16 12308, i16 12309, i16 -455, i16 -454, i16 12304, i16 12305, i16 -453, i16 -452, i16 12298, i16 12299, i16 -451, i16 -450, i16 12296, i16 12297, i16 -449, i16 -448, i16 12300, i16 12301, i16 -447, i16 -446, i16 12302, i16 12303, i16 -445, i16 -444, i16 -423, i16 -422, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -421, i16 -420, i16 -419, i16 -418, i16 8216, i16 8217, i16 8220, i16 8221, i16 12317, i16 12318, i16 8245, i16 8242, i16 -253, i16 -250, i16 -246, i16 8251, i16 167, i16 12291, i16 9675, i16 9679, i16 9651, i16 9650, i16 9678, i16 9734, i16 9733, i16 9671, i16 9670, i16 9633, i16 9632, i16 9661, i16 9660, i16 12963, i16 8453, i16 8254, i16 -29, i16 -193, i16 717, i16 -439, i16 -438, i16 -435, i16 -434, i16 -437, i16 -436, i16 -417, i16 -416, i16 -415, i16 -245, i16 -243, i16 215, i16 247, i16 177, i16 8730, i16 -228, i16 -226, i16 -227, i16 8806, i16 8807, i16 8800, i16 8734, i16 8786, i16 8801, i16 -414, i16 -413, i16 -412, i16 -411, i16 -410, i16 8764, i16 8745, i16 8746, i16 8869, i16 8736, i16 8735, i16 8895, i16 13266, i16 13265, i16 8747, i16 8750, i16 8757, i16 8756, i16 9792, i16 9794, i16 9793, i16 9737, i16 8593, i16 8595, i16 8592, i16 8594, i16 8598, i16 8599, i16 8601, i16 8600, i16 8741, i16 8739, i16 -241, i16 -196, i16 -241, i16 -196, i16 -252, i16 165, i16 12306, i16 162, i16 163, i16 -251, i16 -224, i16 8451, i16 8457, i16 -407, i16 -406, i16 -405, i16 13269, i16 13212, i16 13213, i16 13214, i16 13262, i16 13217, i16 13198, i16 13199, i16 13252, i16 176, i16 20825, i16 20827, i16 20830, i16 20829, i16 20833, i16 20835, i16 21991, i16 29929, i16 31950, i16 9601, i16 9602, i16 9603, i16 9604, i16 9605, i16 9606, i16 9607, i16 9608, i16 9615, i16 9614, i16 9613, i16 9612, i16 9611, i16 9610, i16 9609, i16 9532, i16 9524, i16 9516, i16 9508, i16 9500, i16 9620, i16 9472, i16 9474, i16 9621, i16 9484, i16 9488, i16 9492, i16 9496, i16 9581, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 9582, i16 9584, i16 9583, i16 9552, i16 9566, i16 9578, i16 9569, i16 9698, i16 9699, i16 9701, i16 9700, i16 9585, i16 9586, i16 9587, i16 -240, i16 -239, i16 -238, i16 -237, i16 -236, i16 -235, i16 -234, i16 -233, i16 -232, i16 -231, i16 8544, i16 8545, i16 8546, i16 8547, i16 8548, i16 8549, i16 8550, i16 8551, i16 8552, i16 8553, i16 12321, i16 12322, i16 12323, i16 12324, i16 12325, i16 12326, i16 12327, i16 12328, i16 12329, i16 21313, i16 21316, i16 21317, i16 -223, i16 -222, i16 -221, i16 -220, i16 -219, i16 -218, i16 -217, i16 -216, i16 -215, i16 -214, i16 -213, i16 -212, i16 -211, i16 -210, i16 -209, i16 -208, i16 -207, i16 -206, i16 -205, i16 -204, i16 -203, i16 -202, i16 -201, i16 -200, i16 -199, i16 -198, i16 -191, i16 -190, i16 -189, i16 -188, i16 -187, i16 -186, i16 -185, i16 -184, i16 -183, i16 -182, i16 -181, i16 -180, i16 -179, i16 -178, i16 -177, i16 -176, i16 -175, i16 -174, i16 -173, i16 -172, i16 -171, i16 -170, i16 -169, i16 -168, i16 -167, i16 -166, i16 913, i16 914, i16 915, i16 916, i16 917, i16 918, i16 919, i16 920, i16 921, i16 922, i16 923, i16 924, i16 925, i16 926, i16 927, i16 928, i16 929, i16 931, i16 932, i16 933, i16 934, i16 935, i16 936, i16 937, i16 945, i16 946, i16 947, i16 948, i16 949, i16 950, i16 951, i16 952, i16 953, i16 954, i16 955, i16 956, i16 957, i16 958, i16 959, i16 960, i16 961, i16 963, i16 964, i16 965, i16 966, i16 967, i16 968, i16 969, i16 12549, i16 12550, i16 12551, i16 12552, i16 12553, i16 12554, i16 12555, i16 12556, i16 12557, i16 12558, i16 12559, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 12560, i16 12561, i16 12562, i16 12563, i16 12564, i16 12565, i16 12566, i16 12567, i16 12568, i16 12569, i16 12570, i16 12571, i16 12572, i16 12573, i16 12574, i16 12575, i16 12576, i16 12577, i16 12578, i16 12579, i16 12580, i16 12581, i16 12582, i16 12583, i16 12584, i16 12585, i16 729, i16 713, i16 714, i16 711, i16 715, i16 19968, i16 20057, i16 19969, i16 19971, i16 20035, i16 20061, i16 20102, i16 20108, i16 20154, i16 20799, i16 20837, i16 20843, i16 20960, i16 20992, i16 20993, i16 21147, i16 21269, i16 21313, i16 21340, i16 21448, i16 19977, i16 19979, i16 19976, i16 19978, i16 20011, i16 20024, i16 20961, i16 20037, i16 20040, i16 20063, i16 20062, i16 20110, i16 20129, i16 20800, i16 20995, i16 21242, i16 21315, i16 21449, i16 21475, i16 22303, i16 22763, i16 22805, i16 22823, i16 22899, i16 23376, i16 23377, i16 23379, i16 23544, i16 23567, i16 23586, i16 23608, i16 23665, i16 24029, i16 24037, i16 24049, i16 24050, i16 24051, i16 24062, i16 24178, i16 24318, i16 24331, i16 24339, i16 25165, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 19985, i16 19984, i16 19981, i16 20013, i16 20016, i16 20025, i16 20043, i16 23609, i16 20104, i16 20113, i16 20117, i16 20114, i16 20116, i16 20130, i16 20161, i16 20160, i16 20163, i16 20166, i16 20167, i16 20173, i16 20170, i16 20171, i16 20164, i16 20803, i16 20801, i16 20839, i16 20845, i16 20846, i16 20844, i16 20887, i16 20982, i16 20998, i16 20999, i16 21000, i16 21243, i16 21246, i16 21247, i16 21270, i16 21305, i16 21320, i16 21319, i16 21317, i16 21342, i16 21380, i16 21451, i16 21450, i16 21453, i16 22764, i16 22825, i16 22827, i16 22826, i16 22829, i16 23380, i16 23569, i16 23588, i16 23610, i16 23663, i16 24052, i16 24187, i16 24319, i16 24340, i16 24341, i16 24515, i16 25096, i16 25142, i16 25163, i16 25166, i16 25903, i16 25991, i16 26007, i16 26020, i16 26041, i16 26085, i16 26352, i16 26376, i16 26408, i16 27424, i16 27490, i16 27513, i16 27595, i16 27604, i16 27611, i16 27663, i16 27700, i16 28779, i16 29226, i16 29238, i16 29243, i16 29255, i16 29273, i16 29275, i16 29356, i16 29579, i16 19993, i16 19990, i16 19989, i16 19988, i16 19992, i16 20027, i16 20045, i16 20047, i16 20046, i16 20197, i16 20184, i16 20180, i16 20181, i16 20182, i16 20183, i16 20195, i16 20196, i16 20185, i16 20190, i16 20805, i16 20804, i16 20873, i16 20874, i16 20908, i16 20985, i16 20986, i16 20984, i16 21002, i16 21152, i16 21151, i16 21253, i16 21254, i16 21271, i16 21277, i16 20191, i16 21322, i16 21321, i16 21345, i16 21344, i16 21359, i16 21358, i16 21435, i16 21487, i16 21476, i16 21491, i16 21484, i16 21486, i16 21481, i16 21480, i16 21500, i16 21496, i16 21493, i16 21483, i16 21478, i16 21482, i16 21490, i16 21489, i16 21488, i16 21477, i16 21485, i16 21499, i16 22235, i16 22234, i16 22806, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 22830, i16 22833, i16 22900, i16 22902, i16 23381, i16 23427, i16 23612, i16 24040, i16 24039, i16 24038, i16 24066, i16 24067, i16 24179, i16 24188, i16 24321, i16 24344, i16 24343, i16 24517, i16 25098, i16 25171, i16 25172, i16 25170, i16 25169, i16 26021, i16 26086, i16 26414, i16 26412, i16 26410, i16 26411, i16 26413, i16 27491, i16 27597, i16 27665, i16 27664, i16 27704, i16 27713, i16 27712, i16 27710, i16 29359, i16 29572, i16 29577, i16 29916, i16 29926, i16 29976, i16 29983, i16 29992, i16 29993, i16 30000, i16 30001, i16 30002, i16 30003, i16 30091, i16 30333, i16 30382, i16 30399, i16 30446, i16 30683, i16 30690, i16 30707, i16 31034, i16 31166, i16 31348, i16 31435, i16 19998, i16 19999, i16 20050, i16 20051, i16 20073, i16 20121, i16 20132, i16 20134, i16 20133, i16 20223, i16 20233, i16 20249, i16 20234, i16 20245, i16 20237, i16 20240, i16 20241, i16 20239, i16 20210, i16 20214, i16 20219, i16 20208, i16 20211, i16 20221, i16 20225, i16 20235, i16 20809, i16 20807, i16 20806, i16 20808, i16 20840, i16 20849, i16 20877, i16 20912, i16 21015, i16 21009, i16 21010, i16 21006, i16 21014, i16 21155, i16 21256, i16 21281, i16 21280, i16 21360, i16 21361, i16 21513, i16 21519, i16 21516, i16 21514, i16 21520, i16 21505, i16 21515, i16 21508, i16 21521, i16 21517, i16 21512, i16 21507, i16 21518, i16 21510, i16 21522, i16 22240, i16 22238, i16 22237, i16 22323, i16 22320, i16 22312, i16 22317, i16 22316, i16 22319, i16 22313, i16 22809, i16 22810, i16 22839, i16 22840, i16 22916, i16 22904, i16 22915, i16 22909, i16 22905, i16 22914, i16 22913, i16 23383, i16 23384, i16 23431, i16 23432, i16 23429, i16 23433, i16 23546, i16 23574, i16 23673, i16 24030, i16 24070, i16 24182, i16 24180, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24335, i16 24347, i16 24537, i16 24534, i16 25102, i16 25100, i16 25101, i16 25104, i16 25187, i16 25179, i16 25176, i16 25910, i16 26089, i16 26088, i16 26092, i16 26093, i16 26354, i16 26355, i16 26377, i16 26429, i16 26420, i16 26417, i16 26421, i16 27425, i16 27492, i16 27515, i16 27670, i16 27741, i16 27735, i16 27737, i16 27743, i16 27744, i16 27728, i16 27733, i16 27745, i16 27739, i16 27725, i16 27726, i16 28784, i16 29279, i16 29277, i16 30334, i16 31481, i16 31859, i16 31992, i16 32566, i16 32650, i16 32701, i16 -32767, i16 -32765, i16 -32756, i16 -32750, i16 -32717, i16 -32641, i16 -32631, i16 -32629, i16 -32628, i16 -32285, i16 -32278, i16 -32269, i16 -32260, i16 -32244, i16 -32229, i16 -32225, i16 -32146, i16 -32142, i16 -32130, i16 -31125, i16 -30656, i16 -30644, i16 -30621, i16 -30337, i16 -27103, i16 20018, i16 20136, i16 20301, i16 20303, i16 20295, i16 20311, i16 20318, i16 20276, i16 20315, i16 20309, i16 20272, i16 20304, i16 20305, i16 20285, i16 20282, i16 20280, i16 20291, i16 20308, i16 20284, i16 20294, i16 20323, i16 20316, i16 20320, i16 20271, i16 20302, i16 20278, i16 20313, i16 20317, i16 20296, i16 20314, i16 20812, i16 20811, i16 20813, i16 20853, i16 20918, i16 20919, i16 21029, i16 21028, i16 21033, i16 21034, i16 21032, i16 21163, i16 21161, i16 21162, i16 21164, i16 21283, i16 21363, i16 21365, i16 21533, i16 21549, i16 21534, i16 21566, i16 21542, i16 21582, i16 21543, i16 21574, i16 21571, i16 21555, i16 21576, i16 21570, i16 21531, i16 21545, i16 21578, i16 21561, i16 21563, i16 21560, i16 21550, i16 21557, i16 21558, i16 21536, i16 21564, i16 21568, i16 21553, i16 21547, i16 21535, i16 21548, i16 22250, i16 22256, i16 22244, i16 22251, i16 22346, i16 22353, i16 22336, i16 22349, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 22343, i16 22350, i16 22334, i16 22352, i16 22351, i16 22331, i16 22767, i16 22846, i16 22941, i16 22930, i16 22952, i16 22942, i16 22947, i16 22937, i16 22934, i16 22925, i16 22948, i16 22931, i16 22922, i16 22949, i16 23389, i16 23388, i16 23386, i16 23387, i16 23436, i16 23435, i16 23439, i16 23596, i16 23616, i16 23617, i16 23615, i16 23614, i16 23696, i16 23697, i16 23700, i16 23692, i16 24043, i16 24076, i16 24207, i16 24199, i16 24202, i16 24311, i16 24324, i16 24351, i16 24420, i16 24418, i16 24439, i16 24441, i16 24536, i16 24524, i16 24535, i16 24525, i16 24561, i16 24555, i16 24568, i16 24554, i16 25106, i16 25105, i16 25220, i16 25239, i16 25238, i16 25216, i16 25206, i16 25225, i16 25197, i16 25226, i16 25212, i16 25214, i16 25209, i16 25203, i16 25234, i16 25199, i16 25240, i16 25198, i16 25237, i16 25235, i16 25233, i16 25222, i16 25913, i16 25915, i16 25912, i16 26097, i16 26356, i16 26463, i16 26446, i16 26447, i16 26448, i16 26449, i16 26460, i16 26454, i16 26462, i16 26441, i16 26438, i16 26464, i16 26451, i16 26455, i16 27493, i16 27599, i16 27714, i16 27742, i16 27801, i16 27777, i16 27784, i16 27785, i16 27781, i16 27803, i16 27754, i16 27770, i16 27792, i16 27760, i16 27788, i16 27752, i16 27798, i16 27794, i16 27773, i16 27779, i16 27762, i16 27774, i16 27764, i16 27782, i16 27766, i16 27789, i16 27796, i16 27800, i16 27778, i16 28790, i16 28796, i16 28797, i16 28792, i16 29282, i16 29281, i16 29280, i16 29380, i16 29378, i16 29590, i16 29996, i16 29995, i16 30007, i16 30008, i16 30338, i16 30447, i16 30691, i16 31169, i16 31168, i16 31167, i16 31350, i16 31995, i16 32597, i16 -32618, i16 -32621, i16 -32611, i16 -32616, i16 -32613, i16 -32614, i16 -32590, i16 -32145, i16 -32110, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32117, i16 -32115, i16 -30325, i16 -30254, i16 -30208, i16 -29641, i16 -29626, i16 -29611, i16 -29539, i16 -29340, i16 -29328, i16 -29261, i16 -29013, i16 -28982, i16 -28773, i16 -28752, i16 -28734, i16 -28730, i16 -28731, i16 -28732, i16 24033, i16 -28527, i16 -28510, i16 -28502, i16 -28506, i16 -28509, i16 -28343, i16 -28218, i16 -28212, i16 -27086, i16 -27090, i16 -27087, i16 -27094, i16 -27092, i16 20006, i16 20054, i16 20083, i16 20107, i16 20123, i16 20126, i16 20139, i16 20140, i16 20335, i16 20381, i16 20365, i16 20339, i16 20351, i16 20332, i16 20379, i16 20363, i16 20358, i16 20355, i16 20336, i16 20341, i16 20360, i16 20329, i16 20347, i16 20374, i16 20350, i16 20367, i16 20369, i16 20346, i16 20820, i16 20818, i16 20821, i16 20841, i16 20855, i16 20854, i16 20856, i16 20925, i16 20989, i16 21051, i16 21048, i16 21047, i16 21050, i16 21040, i16 21038, i16 21046, i16 21057, i16 21182, i16 21179, i16 21330, i16 21332, i16 21331, i16 21329, i16 21350, i16 21367, i16 21368, i16 21369, i16 21462, i16 21460, i16 21463, i16 21619, i16 21621, i16 21654, i16 21624, i16 21653, i16 21632, i16 21627, i16 21623, i16 21636, i16 21650, i16 21638, i16 21628, i16 21648, i16 21617, i16 21622, i16 21644, i16 21658, i16 21602, i16 21608, i16 21643, i16 21629, i16 21646, i16 22266, i16 22403, i16 22391, i16 22378, i16 22377, i16 22369, i16 22374, i16 22372, i16 22396, i16 22812, i16 22857, i16 22855, i16 22856, i16 22852, i16 22868, i16 22974, i16 22971, i16 22996, i16 22969, i16 22958, i16 22993, i16 22982, i16 22992, i16 22989, i16 22987, i16 22995, i16 22986, i16 22959, i16 22963, i16 22994, i16 22981, i16 23391, i16 23396, i16 23395, i16 23447, i16 23450, i16 23448, i16 23452, i16 23449, i16 23451, i16 23578, i16 23624, i16 23621, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 23622, i16 23735, i16 23713, i16 23736, i16 23721, i16 23723, i16 23729, i16 23731, i16 24088, i16 24090, i16 24086, i16 24085, i16 24091, i16 24081, i16 24184, i16 24218, i16 24215, i16 24220, i16 24213, i16 24214, i16 24310, i16 24358, i16 24359, i16 24361, i16 24448, i16 24449, i16 24447, i16 24444, i16 24541, i16 24544, i16 24573, i16 24565, i16 24575, i16 24591, i16 24596, i16 24623, i16 24629, i16 24598, i16 24618, i16 24597, i16 24609, i16 24615, i16 24617, i16 24619, i16 24603, i16 25110, i16 25109, i16 25151, i16 25150, i16 25152, i16 25215, i16 25289, i16 25292, i16 25284, i16 25279, i16 25282, i16 25273, i16 25298, i16 25307, i16 25259, i16 25299, i16 25300, i16 25291, i16 25288, i16 25256, i16 25277, i16 25276, i16 25296, i16 25305, i16 25287, i16 25293, i16 25269, i16 25306, i16 25265, i16 25304, i16 25302, i16 25303, i16 25286, i16 25260, i16 25294, i16 25918, i16 26023, i16 26044, i16 26106, i16 26132, i16 26131, i16 26124, i16 26118, i16 26114, i16 26126, i16 26112, i16 26127, i16 26133, i16 26122, i16 26119, i16 26381, i16 26379, i16 26477, i16 26507, i16 26517, i16 26481, i16 26524, i16 26483, i16 26487, i16 26503, i16 26525, i16 26519, i16 26479, i16 26480, i16 26495, i16 26505, i16 26494, i16 26512, i16 26485, i16 26522, i16 26515, i16 26492, i16 26474, i16 26482, i16 27427, i16 27494, i16 27495, i16 27519, i16 27667, i16 27675, i16 27875, i16 27880, i16 27891, i16 27825, i16 27852, i16 27877, i16 27827, i16 27837, i16 27838, i16 27836, i16 27874, i16 27819, i16 27861, i16 27859, i16 27832, i16 27844, i16 27833, i16 27841, i16 27822, i16 27863, i16 27845, i16 27889, i16 27839, i16 27835, i16 27873, i16 27867, i16 27850, i16 27820, i16 27887, i16 27868, i16 27862, i16 27872, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 28821, i16 28814, i16 28818, i16 28810, i16 28825, i16 29228, i16 29229, i16 29240, i16 29256, i16 29287, i16 29289, i16 29376, i16 29390, i16 29401, i16 29399, i16 29392, i16 29609, i16 29608, i16 29599, i16 29611, i16 29605, i16 30013, i16 30109, i16 30105, i16 30106, i16 30340, i16 30402, i16 30450, i16 30452, i16 30693, i16 30717, i16 31038, i16 31040, i16 31041, i16 31177, i16 31176, i16 31354, i16 31353, i16 31482, i16 31998, i16 32596, i16 32652, i16 32651, i16 -32763, i16 -32582, i16 -32603, i16 -32606, i16 -32591, i16 -32607, i16 -32597, i16 -32599, i16 -32588, i16 -32598, i16 -32593, i16 -32283, i16 -32258, i16 -32243, i16 -32077, i16 -32099, i16 -32103, i16 -32083, i16 -32067, i16 -32097, i16 -32071, i16 -32079, i16 -32084, i16 -32091, i16 -32081, i16 -32072, i16 -32093, i16 -32080, i16 -32066, i16 -32073, i16 -31154, i16 -31119, i16 21021, i16 -30616, i16 -28981, i16 -28722, i16 -28716, i16 -28719, i16 -28491, i16 -28488, i16 -28495, i16 -28490, i16 -28217, i16 -28207, i16 -27273, i16 -27264, i16 -27108, i16 -27072, i16 -27073, i16 -27077, i16 -27068, i16 -27070, i16 -26951, i16 -26904, i16 -26798, i16 -26786, i16 20127, i16 20141, i16 20142, i16 20449, i16 20405, i16 20399, i16 20415, i16 20448, i16 20433, i16 20431, i16 20445, i16 20419, i16 20406, i16 20440, i16 20447, i16 20426, i16 20439, i16 20398, i16 20432, i16 20420, i16 20418, i16 20442, i16 20430, i16 20446, i16 20407, i16 20823, i16 20882, i16 20881, i16 20896, i16 21070, i16 21059, i16 21066, i16 21069, i16 21068, i16 21067, i16 21063, i16 21191, i16 21193, i16 21187, i16 21185, i16 21261, i16 21335, i16 21371, i16 21402, i16 21467, i16 21676, i16 21696, i16 21672, i16 21710, i16 21705, i16 21688, i16 21670, i16 21683, i16 21703, i16 21698, i16 21693, i16 21674, i16 21697, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 21700, i16 21704, i16 21679, i16 21675, i16 21681, i16 21691, i16 21673, i16 21671, i16 21695, i16 22271, i16 22402, i16 22411, i16 22432, i16 22435, i16 22434, i16 22478, i16 22446, i16 22419, i16 22869, i16 22865, i16 22863, i16 22862, i16 22864, i16 23004, i16 23000, i16 23039, i16 23011, i16 23016, i16 23043, i16 23013, i16 23018, i16 23002, i16 23014, i16 23041, i16 23035, i16 23401, i16 23459, i16 23462, i16 23460, i16 23458, i16 23461, i16 23553, i16 23630, i16 23631, i16 23629, i16 23627, i16 23769, i16 23762, i16 24055, i16 24093, i16 24101, i16 24095, i16 24189, i16 24224, i16 24230, i16 24314, i16 24328, i16 24365, i16 24421, i16 24456, i16 24453, i16 24458, i16 24459, i16 24455, i16 24460, i16 24457, i16 24594, i16 24605, i16 24608, i16 24613, i16 24590, i16 24616, i16 24653, i16 24688, i16 24680, i16 24674, i16 24646, i16 24643, i16 24684, i16 24683, i16 24682, i16 24676, i16 25153, i16 25308, i16 25366, i16 25353, i16 25340, i16 25325, i16 25345, i16 25326, i16 25341, i16 25351, i16 25329, i16 25335, i16 25327, i16 25324, i16 25342, i16 25332, i16 25361, i16 25346, i16 25919, i16 25925, i16 26027, i16 26045, i16 26082, i16 26149, i16 26157, i16 26144, i16 26151, i16 26159, i16 26143, i16 26152, i16 26161, i16 26148, i16 26359, i16 26623, i16 26579, i16 26609, i16 26580, i16 26576, i16 26604, i16 26550, i16 26543, i16 26613, i16 26601, i16 26607, i16 26564, i16 26577, i16 26548, i16 26586, i16 26597, i16 26552, i16 26575, i16 26590, i16 26611, i16 26544, i16 26585, i16 26594, i16 26589, i16 26578, i16 27498, i16 27523, i16 27526, i16 27573, i16 27602, i16 27607, i16 27679, i16 27849, i16 27915, i16 27954, i16 27946, i16 27969, i16 27941, i16 27916, i16 27953, i16 27934, i16 27927, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 27963, i16 27965, i16 27966, i16 27958, i16 27931, i16 27893, i16 27961, i16 27943, i16 27960, i16 27945, i16 27950, i16 27957, i16 27918, i16 27947, i16 28843, i16 28858, i16 28851, i16 28844, i16 28847, i16 28845, i16 28856, i16 28846, i16 28836, i16 29232, i16 29298, i16 29295, i16 29300, i16 29417, i16 29408, i16 29409, i16 29623, i16 29642, i16 29627, i16 29618, i16 29645, i16 29632, i16 29619, i16 29978, i16 29997, i16 30031, i16 30028, i16 30030, i16 30027, i16 30123, i16 30116, i16 30117, i16 30114, i16 30115, i16 30328, i16 30342, i16 30343, i16 30344, i16 30408, i16 30406, i16 30403, i16 30405, i16 30465, i16 30457, i16 30456, i16 30473, i16 30475, i16 30462, i16 30460, i16 30471, i16 30684, i16 30722, i16 30740, i16 30732, i16 30733, i16 31046, i16 31049, i16 31048, i16 31047, i16 31161, i16 31162, i16 31185, i16 31186, i16 31179, i16 31359, i16 31361, i16 31487, i16 31485, i16 31869, i16 32002, i16 32005, i16 32000, i16 32009, i16 32007, i16 32004, i16 32006, i16 32568, i16 32654, i16 32703, i16 -32764, i16 -32752, i16 -32755, i16 -32751, i16 -32714, i16 -32554, i16 -32539, i16 -32550, i16 -32573, i16 -32572, i16 -32564, i16 -32543, i16 -32549, i16 -32562, i16 -32546, i16 -32540, i16 -32547, i16 -32268, i16 -32222, i16 -32025, i16 -31997, i16 -31995, i16 -32029, i16 -32037, i16 -32026, i16 -31996, i16 -32027, i16 -31998, i16 -31991, i16 -32046, i16 -32041, i16 -32015, i16 -31999, i16 -32036, i16 -32044, i16 -32047, i16 -32034, i16 -32045, i16 -32033, i16 -32017, i16 -31994, i16 -31152, i16 -31111, i16 -31109, i16 -31110, i16 -30643, i16 -30613, i16 -30335, i16 -30252, i16 -30200, i16 -30206, i16 -30205, i16 -29538, i16 -29536, i16 -29324, i16 -29325, i16 -29260, i16 -28979, i16 -28980, i16 -28688, i16 -28698, i16 -28702, i16 -28694, i16 -28699, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -28691, i16 -28693, i16 -28700, i16 -28696, i16 -28470, i16 -28466, i16 -28479, i16 -28477, i16 -28341, i16 -28342, i16 -28211, i16 -27262, i16 -27056, i16 -27061, i16 -27060, i16 -27059, i16 -26782, i16 -26775, i16 -26677, i16 -26643, i16 -26637, i16 -26623, i16 -26456, i16 -26405, i16 -26401, i16 -26218, i16 -26215, i16 20056, i16 20147, i16 20492, i16 20493, i16 20515, i16 20463, i16 20518, i16 20517, i16 20472, i16 20521, i16 20502, i16 20486, i16 20540, i16 20511, i16 20506, i16 20498, i16 20497, i16 20474, i16 20480, i16 20500, i16 20520, i16 20465, i16 20513, i16 20491, i16 20505, i16 20504, i16 20467, i16 20462, i16 20525, i16 20522, i16 20478, i16 20523, i16 20489, i16 20860, i16 20900, i16 20901, i16 20898, i16 20941, i16 20940, i16 20934, i16 20939, i16 21078, i16 21084, i16 21076, i16 21083, i16 21085, i16 21290, i16 21375, i16 21407, i16 21405, i16 21471, i16 21736, i16 21776, i16 21761, i16 21815, i16 21756, i16 21733, i16 21746, i16 21766, i16 21754, i16 21780, i16 21737, i16 21741, i16 21729, i16 21769, i16 21742, i16 21738, i16 21734, i16 21799, i16 21767, i16 21757, i16 21775, i16 22275, i16 22276, i16 22466, i16 22484, i16 22475, i16 22467, i16 22537, i16 22799, i16 22871, i16 22872, i16 22874, i16 23057, i16 23064, i16 23068, i16 23071, i16 23067, i16 23059, i16 23020, i16 23072, i16 23075, i16 23081, i16 23077, i16 23052, i16 23049, i16 23403, i16 23640, i16 23472, i16 23475, i16 23478, i16 23476, i16 23470, i16 23477, i16 23481, i16 23480, i16 23556, i16 23633, i16 23637, i16 23632, i16 23789, i16 23805, i16 23803, i16 23786, i16 23784, i16 23792, i16 23798, i16 23809, i16 23796, i16 24046, i16 24109, i16 24107, i16 24235, i16 24237, i16 24231, i16 24369, i16 24466, i16 24465, i16 24464, i16 24665, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24675, i16 24677, i16 24656, i16 24661, i16 24685, i16 24681, i16 24687, i16 24708, i16 24735, i16 24730, i16 24717, i16 24724, i16 24716, i16 24709, i16 24726, i16 25159, i16 25331, i16 25352, i16 25343, i16 25422, i16 25406, i16 25391, i16 25429, i16 25410, i16 25414, i16 25423, i16 25417, i16 25402, i16 25424, i16 25405, i16 25386, i16 25387, i16 25384, i16 25421, i16 25420, i16 25928, i16 25929, i16 26009, i16 26049, i16 26053, i16 26178, i16 26185, i16 26191, i16 26179, i16 26194, i16 26188, i16 26181, i16 26177, i16 26360, i16 26388, i16 26389, i16 26391, i16 26657, i16 26680, i16 26696, i16 26694, i16 26707, i16 26681, i16 26690, i16 26708, i16 26665, i16 26803, i16 26647, i16 26700, i16 26705, i16 26685, i16 26612, i16 26704, i16 26688, i16 26684, i16 26691, i16 26666, i16 26693, i16 26643, i16 26648, i16 26689, i16 27530, i16 27529, i16 27575, i16 27683, i16 27687, i16 27688, i16 27686, i16 27684, i16 27888, i16 28010, i16 28053, i16 28040, i16 28039, i16 28006, i16 28024, i16 28023, i16 27993, i16 28051, i16 28012, i16 28041, i16 28014, i16 27994, i16 28020, i16 28009, i16 28044, i16 28042, i16 28025, i16 28037, i16 28005, i16 28052, i16 28874, i16 28888, i16 28900, i16 28889, i16 28872, i16 28879, i16 29241, i16 29305, i16 29436, i16 29433, i16 29437, i16 29432, i16 29431, i16 29574, i16 29677, i16 29705, i16 29678, i16 29664, i16 29674, i16 29662, i16 30036, i16 30045, i16 30044, i16 30042, i16 30041, i16 30142, i16 30149, i16 30151, i16 30130, i16 30131, i16 30141, i16 30140, i16 30137, i16 30146, i16 30136, i16 30347, i16 30384, i16 30410, i16 30413, i16 30414, i16 30505, i16 30495, i16 30496, i16 30504, i16 30697, i16 30768, i16 30759, i16 30776, i16 30749, i16 30772, i16 30775, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30757, i16 30765, i16 30752, i16 30751, i16 30770, i16 31061, i16 31056, i16 31072, i16 31071, i16 31062, i16 31070, i16 31069, i16 31063, i16 31066, i16 31204, i16 31203, i16 31207, i16 31199, i16 31206, i16 31209, i16 31192, i16 31364, i16 31368, i16 31449, i16 31494, i16 31505, i16 31881, i16 32033, i16 32023, i16 32011, i16 32010, i16 32032, i16 32034, i16 32020, i16 32016, i16 32021, i16 32026, i16 32028, i16 32013, i16 32025, i16 32027, i16 32570, i16 32607, i16 32660, i16 32709, i16 32705, i16 -32762, i16 -32744, i16 -32747, i16 -32743, i16 -32745, i16 -32707, i16 -32705, i16 -32527, i16 -32510, i16 -32528, i16 -32507, i16 -32531, i16 -32524, i16 -32506, i16 -32520, i16 -32525, i16 -32504, i16 -32515, i16 -32502, i16 -32516, i16 -32529, i16 -32275, i16 -32276, i16 -32256, i16 -32240, i16 -32214, i16 -32213, i16 -32216, i16 -32212, i16 -32069, i16 -31957, i16 -31918, i16 -31916, i16 -31926, i16 -31944, i16 -31920, i16 -31927, i16 -31947, i16 -31948, i16 -31921, i16 -31950, i16 -31943, i16 -31946, i16 -31977, i16 -31936, i16 -31951, i16 -31960, i16 -31933, i16 -31148, i16 -31094, i16 -31062, i16 -31085, i16 -31068, i16 -31063, i16 -31092, i16 -31069, i16 -31076, i16 -30608, i16 -30601, i16 -30591, i16 -30590, i16 -30595, i16 -30599, i16 -30184, i16 -30192, i16 -30194, i16 -30196, i16 -30187, i16 -30198, i16 -30185, i16 -30189, i16 -30186, i16 -30193, i16 -30191, i16 -29624, i16 -29574, i16 -29575, i16 -29535, i16 -29534, i16 -29321, i16 -29012, i16 -28974, i16 -28972, i16 -28977, i16 -28751, i16 -28671, i16 -28666, i16 -28681, i16 -28672, i16 -28678, i16 -28684, i16 -28669, i16 -28675, i16 -28667, i16 -28680, i16 -28523, i16 -28447, i16 -28451, i16 -28446, i16 -28334, i16 -28339, i16 -28340, i16 -28200, i16 -28195, i16 -28201, i16 -28196, i16 -28199, i16 -27261, i16 -27038, i16 -27037, i16 -27039, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -27045, i16 -27043, i16 -27036, i16 -27048, i16 -27042, i16 -26949, i16 -26398, i16 -26196, i16 -25944, i16 -25896, i16 -25819, i16 -25806, i16 -25796, i16 20094, i16 20602, i16 20605, i16 20572, i16 20551, i16 20547, i16 20556, i16 20570, i16 20553, i16 20581, i16 20598, i16 20558, i16 20565, i16 20597, i16 20596, i16 20599, i16 20559, i16 20495, i16 20591, i16 20589, i16 20828, i16 20885, i16 20976, i16 21098, i16 21103, i16 21202, i16 21209, i16 21208, i16 21205, i16 21264, i16 21263, i16 21273, i16 21311, i16 21312, i16 21310, i16 21443, i16 26364, i16 21830, i16 21866, i16 21862, i16 21828, i16 21854, i16 21857, i16 21827, i16 21834, i16 21809, i16 21846, i16 21839, i16 21845, i16 21807, i16 21860, i16 21816, i16 21806, i16 21852, i16 21804, i16 21859, i16 21811, i16 21825, i16 21847, i16 22280, i16 22283, i16 22281, i16 22495, i16 22533, i16 22538, i16 22534, i16 22496, i16 22500, i16 22522, i16 22530, i16 22581, i16 22519, i16 22521, i16 22816, i16 22882, i16 23094, i16 23105, i16 23113, i16 23142, i16 23146, i16 23104, i16 23100, i16 23138, i16 23130, i16 23110, i16 23114, i16 23408, i16 23495, i16 23493, i16 23492, i16 23490, i16 23487, i16 23494, i16 23561, i16 23560, i16 23559, i16 23648, i16 23644, i16 23645, i16 23815, i16 23814, i16 23822, i16 23835, i16 23830, i16 23842, i16 23825, i16 23849, i16 23828, i16 23833, i16 23844, i16 23847, i16 23831, i16 24034, i16 24120, i16 24118, i16 24115, i16 24119, i16 24247, i16 24248, i16 24246, i16 24245, i16 24254, i16 24373, i16 24375, i16 24407, i16 24428, i16 24425, i16 24427, i16 24471, i16 24473, i16 24478, i16 24472, i16 24481, i16 24480, i16 24476, i16 24703, i16 24739, i16 24713, i16 24736, i16 24744, i16 24779, i16 24756, i16 24806, i16 24765, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24773, i16 24763, i16 24757, i16 24796, i16 24764, i16 24792, i16 24789, i16 24774, i16 24799, i16 24760, i16 24794, i16 24775, i16 25114, i16 25115, i16 25160, i16 25504, i16 25511, i16 25458, i16 25494, i16 25506, i16 25509, i16 25463, i16 25447, i16 25496, i16 25514, i16 25457, i16 25513, i16 25481, i16 25475, i16 25499, i16 25451, i16 25512, i16 25476, i16 25480, i16 25497, i16 25505, i16 25516, i16 25490, i16 25487, i16 25472, i16 25467, i16 25449, i16 25448, i16 25466, i16 25949, i16 25942, i16 25937, i16 25945, i16 25943, i16 21855, i16 25935, i16 25944, i16 25941, i16 25940, i16 26012, i16 26011, i16 26028, i16 26063, i16 26059, i16 26060, i16 26062, i16 26205, i16 26202, i16 26212, i16 26216, i16 26214, i16 26206, i16 26361, i16 21207, i16 26395, i16 26753, i16 26799, i16 26786, i16 26771, i16 26805, i16 26751, i16 26742, i16 26801, i16 26791, i16 26775, i16 26800, i16 26755, i16 26820, i16 26797, i16 26758, i16 26757, i16 26772, i16 26781, i16 26792, i16 26783, i16 26785, i16 26754, i16 27442, i16 27578, i16 27627, i16 27628, i16 27691, i16 28046, i16 28092, i16 28147, i16 28121, i16 28082, i16 28129, i16 28108, i16 28132, i16 28155, i16 28154, i16 28165, i16 28103, i16 28107, i16 28079, i16 28113, i16 28078, i16 28126, i16 28153, i16 28088, i16 28151, i16 28149, i16 28101, i16 28114, i16 28186, i16 28085, i16 28122, i16 28139, i16 28120, i16 28138, i16 28145, i16 28142, i16 28136, i16 28102, i16 28100, i16 28074, i16 28140, i16 28095, i16 28134, i16 28921, i16 28937, i16 28938, i16 28925, i16 28911, i16 29245, i16 29309, i16 29313, i16 29468, i16 29467, i16 29462, i16 29459, i16 29465, i16 29575, i16 29701, i16 29706, i16 29699, i16 29702, i16 29694, i16 29709, i16 29920, i16 29942, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29943, i16 29980, i16 29986, i16 30053, i16 30054, i16 30050, i16 30064, i16 30095, i16 30164, i16 30165, i16 30133, i16 30154, i16 30157, i16 30350, i16 30420, i16 30418, i16 30427, i16 30519, i16 30526, i16 30524, i16 30518, i16 30520, i16 30522, i16 30827, i16 30787, i16 30798, i16 31077, i16 31080, i16 31085, i16 31227, i16 31378, i16 31381, i16 31520, i16 31528, i16 31515, i16 31532, i16 31526, i16 31513, i16 31518, i16 31534, i16 31890, i16 31895, i16 31893, i16 32070, i16 32067, i16 32113, i16 32046, i16 32057, i16 32060, i16 32064, i16 32048, i16 32051, i16 32068, i16 32047, i16 32066, i16 32050, i16 32049, i16 32573, i16 32670, i16 32666, i16 32716, i16 32718, i16 32722, i16 -32740, i16 -32694, i16 -32698, i16 -32465, i16 -32490, i16 -32477, i16 -32469, i16 -32471, i16 -32464, i16 -32476, i16 -32254, i16 -32203, i16 -32201, i16 -32202, i16 -32199, i16 -31858, i16 -31842, i16 -31848, i16 -31880, i16 -31838, i16 -31850, i16 -31811, i16 -31829, i16 -31854, i16 -31862, i16 -31853, i16 -31863, i16 -31840, i16 -31881, i16 -31877, i16 -31876, i16 -31866, i16 -31833, i16 -31147, i16 24426, i16 -31033, i16 -31040, i16 -31050, i16 -31036, i16 -31051, i16 -31034, i16 -31029, i16 -31055, i16 -31057, i16 -31031, i16 -30637, i16 -30562, i16 -30584, i16 -30549, i16 -30574, i16 -30570, i16 -30579, i16 -30581, i16 -30317, i16 -30321, i16 -30166, i16 -30179, i16 -30173, i16 -30171, i16 -30159, i16 -30163, i16 -30177, i16 -30181, i16 -30174, i16 -29623, i16 -29606, i16 -29527, i16 -29524, i16 -29525, i16 -29528, i16 -29526, i16 -29529, i16 -29337, i16 -29338, i16 -29250, i16 -29254, i16 -28965, i16 -28961, i16 -28647, i16 -28659, i16 -28646, i16 -28649, i16 -28637, i16 -28641, i16 -28643, i16 -28656, i16 -28651, i16 -28642, i16 -28640, i16 -28657, i16 -28638, i16 -28650, i16 -28645, i16 -28652, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -28440, i16 -28435, i16 -28419, i16 -28329, i16 -28210, i16 -28171, i16 -28186, i16 -28189, i16 -28185, i16 -28179, i16 -28183, i16 -27255, i16 -27030, i16 -27019, i16 -27021, i16 -27016, i16 -27024, i16 -27020, i16 -27018, i16 -27017, i16 -27028, i16 -26944, i16 -26902, i16 -26903, i16 31456, i16 31455, i16 -26622, i16 -26621, i16 -25766, i16 -25371, i16 -24971, i16 -24961, i16 -24923, i16 -24901, i16 20642, i16 20621, i16 20613, i16 20633, i16 20625, i16 20608, i16 20630, i16 20632, i16 20634, i16 26368, i16 20977, i16 21106, i16 21108, i16 21109, i16 21097, i16 21214, i16 21213, i16 21211, i16 21338, i16 21413, i16 21883, i16 21888, i16 21927, i16 21884, i16 21898, i16 21917, i16 21912, i16 21890, i16 21916, i16 21930, i16 21908, i16 21895, i16 21899, i16 21891, i16 21939, i16 21934, i16 21919, i16 21822, i16 21938, i16 21914, i16 21947, i16 21932, i16 21937, i16 21886, i16 21897, i16 21931, i16 21913, i16 22285, i16 22575, i16 22570, i16 22580, i16 22564, i16 22576, i16 22577, i16 22561, i16 22557, i16 22560, i16 22777, i16 22778, i16 22880, i16 23159, i16 23194, i16 23167, i16 23186, i16 23195, i16 23207, i16 23411, i16 23409, i16 23506, i16 23500, i16 23507, i16 23504, i16 23562, i16 23563, i16 23601, i16 23884, i16 23888, i16 23860, i16 23879, i16 24061, i16 24133, i16 24125, i16 24128, i16 24131, i16 24190, i16 24266, i16 24257, i16 24258, i16 24260, i16 24380, i16 24429, i16 24489, i16 24490, i16 24488, i16 24785, i16 24801, i16 24754, i16 24758, i16 24800, i16 24860, i16 24867, i16 24826, i16 24853, i16 24816, i16 24827, i16 24820, i16 24936, i16 24817, i16 24846, i16 24822, i16 24841, i16 24832, i16 24850, i16 25119, i16 25161, i16 25507, i16 25484, i16 25551, i16 25536, i16 25577, i16 25545, i16 25542, i16 25549, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 25554, i16 25571, i16 25552, i16 25569, i16 25558, i16 25581, i16 25582, i16 25462, i16 25588, i16 25578, i16 25563, i16 25682, i16 25562, i16 25593, i16 25950, i16 25958, i16 25954, i16 25955, i16 26001, i16 26000, i16 26031, i16 26222, i16 26224, i16 26228, i16 26230, i16 26223, i16 26257, i16 26234, i16 26238, i16 26231, i16 26366, i16 26367, i16 26399, i16 26397, i16 26874, i16 26837, i16 26848, i16 26840, i16 26839, i16 26885, i16 26847, i16 26869, i16 26862, i16 26855, i16 26873, i16 26834, i16 26866, i16 26851, i16 26827, i16 26829, i16 26893, i16 26898, i16 26894, i16 26825, i16 26842, i16 26990, i16 26875, i16 27454, i16 27450, i16 27453, i16 27544, i16 27542, i16 27580, i16 27631, i16 27694, i16 27695, i16 27692, i16 28207, i16 28216, i16 28244, i16 28193, i16 28210, i16 28263, i16 28234, i16 28192, i16 28197, i16 28195, i16 28187, i16 28251, i16 28248, i16 28196, i16 28246, i16 28270, i16 28205, i16 28198, i16 28271, i16 28212, i16 28237, i16 28218, i16 28204, i16 28227, i16 28189, i16 28222, i16 28363, i16 28297, i16 28185, i16 28238, i16 28259, i16 28228, i16 28274, i16 28265, i16 28255, i16 28953, i16 28954, i16 28966, i16 28976, i16 28961, i16 28982, i16 29038, i16 28956, i16 29260, i16 29316, i16 29312, i16 29494, i16 29477, i16 29492, i16 29481, i16 29754, i16 29738, i16 29747, i16 29730, i16 29733, i16 29749, i16 29750, i16 29748, i16 29743, i16 29723, i16 29734, i16 29736, i16 29989, i16 29990, i16 30059, i16 30058, i16 30178, i16 30171, i16 30179, i16 30169, i16 30168, i16 30174, i16 30176, i16 30331, i16 30332, i16 30358, i16 30355, i16 30388, i16 30428, i16 30543, i16 30701, i16 30813, i16 30828, i16 30831, i16 31245, i16 31240, i16 31243, i16 31237, i16 31232, i16 31384, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 31383, i16 31382, i16 31461, i16 31459, i16 31561, i16 31574, i16 31558, i16 31568, i16 31570, i16 31572, i16 31565, i16 31563, i16 31567, i16 31569, i16 31903, i16 31909, i16 32094, i16 32080, i16 32104, i16 32085, i16 32043, i16 32110, i16 32114, i16 32097, i16 32102, i16 32098, i16 32112, i16 32115, i16 21892, i16 32724, i16 32725, i16 -32757, i16 -32686, i16 -32635, i16 -32427, i16 -32428, i16 -32437, i16 -32431, i16 -32434, i16 -32455, i16 -32442, i16 -32450, i16 -32436, i16 -32429, i16 -32396, i16 -32238, i16 -32228, i16 -31767, i16 -31741, i16 -31752, i16 -31731, i16 -31776, i16 -31803, i16 -31733, i16 -31807, i16 -31761, i16 -31759, i16 -31756, i16 -31657, i16 -31734, i16 -31760, i16 -31732, i16 -31796, i16 -31747, i16 -31758, i16 -31798, i16 -31688, i16 -31730, i16 -31740, i16 -31780, i16 -31737, i16 -31788, i16 -31777, i16 -31141, i16 -31009, i16 -31015, i16 -30995, i16 -31020, i16 -31013, i16 -31004, i16 -31024, i16 -31010, i16 -30633, i16 -30527, i16 -30526, i16 -30543, i16 -30333, i16 -30314, i16 -30149, i16 -30112, i16 -30123, i16 -30114, i16 -30148, i16 -30143, i16 -30124, i16 -30117, i16 -30128, i16 -30138, i16 -30156, i16 -30150, i16 -30154, i16 -30122, i16 -29599, i16 -29566, i16 -29521, i16 -29508, i16 -29517, i16 -29507, i16 -29503, i16 -29509, i16 -29504, i16 -29516, i16 -29513, i16 -29514, i16 -29505, i16 -29512, i16 -29302, i16 -29307, i16 -29311, i16 -29234, i16 -29219, i16 -29237, i16 -29222, i16 -29231, i16 -29236, i16 -29221, i16 -29242, i16 -28933, i16 -28936, i16 -28932, i16 -28772, i16 -28626, i16 -28619, i16 -28623, i16 -28616, i16 -28622, i16 -28618, i16 -28414, i16 -28427, i16 -28407, i16 -28418, i16 -28317, i16 -28315, i16 -28209, i16 -28140, i16 -28139, i16 -28125, i16 -28151, i16 -28130, i16 -28147, i16 -28144, i16 -28153, i16 -28143, i16 -27244, i16 -27249, i16 -27253, i16 -27247, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -27245, i16 -27246, i16 -27250, i16 -26998, i16 -26994, i16 -26997, i16 -27011, i16 -27003, i16 -27002, i16 -26995, i16 -27022, i16 -27004, i16 -26943, i16 -26939, i16 -26940, i16 -26938, i16 -26937, i16 -26897, i16 -26894, i16 -26676, i16 -26619, i16 -26618, i16 -26616, i16 -26393, i16 -26390, i16 -26385, i16 -26391, i16 -26382, i16 -26387, i16 -26194, i16 -26195, i16 -24893, i16 -24883, i16 -24879, i16 20098, i16 20653, i16 20661, i16 20658, i16 20659, i16 20677, i16 20670, i16 20652, i16 20663, i16 20667, i16 20655, i16 20679, i16 21119, i16 21111, i16 21117, i16 21215, i16 21222, i16 21220, i16 21218, i16 21219, i16 21295, i16 21983, i16 21992, i16 21971, i16 21990, i16 21966, i16 21980, i16 21959, i16 21969, i16 21987, i16 21988, i16 21999, i16 21978, i16 21985, i16 21957, i16 21958, i16 21989, i16 21961, i16 22290, i16 22291, i16 22622, i16 22609, i16 22616, i16 22615, i16 22618, i16 22612, i16 22635, i16 22604, i16 22637, i16 22602, i16 22626, i16 22610, i16 22603, i16 22887, i16 23233, i16 23241, i16 23244, i16 23230, i16 23229, i16 23228, i16 23219, i16 23234, i16 23218, i16 23913, i16 23919, i16 24140, i16 24185, i16 24265, i16 24264, i16 24338, i16 24409, i16 24492, i16 24494, i16 24858, i16 24847, i16 24904, i16 24863, i16 24819, i16 24859, i16 24825, i16 24833, i16 24840, i16 24910, i16 24908, i16 24900, i16 24909, i16 24894, i16 24884, i16 24871, i16 24845, i16 24838, i16 24887, i16 25121, i16 25122, i16 25619, i16 25662, i16 25630, i16 25642, i16 25645, i16 25661, i16 25644, i16 25615, i16 25628, i16 25620, i16 25613, i16 25654, i16 25622, i16 25623, i16 25606, i16 25964, i16 26015, i16 26032, i16 26263, i16 26249, i16 26247, i16 26248, i16 26262, i16 26244, i16 26264, i16 26253, i16 26371, i16 27028, i16 26989, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 26970, i16 26999, i16 26976, i16 26964, i16 26997, i16 26928, i16 27010, i16 26954, i16 26984, i16 26987, i16 26974, i16 26963, i16 27001, i16 27014, i16 26973, i16 26979, i16 26971, i16 27463, i16 27506, i16 27584, i16 27583, i16 27603, i16 27645, i16 28322, i16 28335, i16 28371, i16 28342, i16 28354, i16 28304, i16 28317, i16 28359, i16 28357, i16 28325, i16 28312, i16 28348, i16 28346, i16 28331, i16 28369, i16 28310, i16 28316, i16 28356, i16 28372, i16 28330, i16 28327, i16 28340, i16 29006, i16 29017, i16 29033, i16 29028, i16 29001, i16 29031, i16 29020, i16 29036, i16 29030, i16 29004, i16 29029, i16 29022, i16 28998, i16 29032, i16 29014, i16 29242, i16 29266, i16 29495, i16 29509, i16 29503, i16 29502, i16 29807, i16 29786, i16 29781, i16 29791, i16 29790, i16 29761, i16 29759, i16 29785, i16 29787, i16 29788, i16 30070, i16 30072, i16 30208, i16 30192, i16 30209, i16 30194, i16 30193, i16 30202, i16 30207, i16 30196, i16 30195, i16 30430, i16 30431, i16 30555, i16 30571, i16 30566, i16 30558, i16 30563, i16 30585, i16 30570, i16 30572, i16 30556, i16 30565, i16 30568, i16 30562, i16 30702, i16 30862, i16 30896, i16 30871, i16 30872, i16 30860, i16 30857, i16 30844, i16 30865, i16 30867, i16 30847, i16 31098, i16 31103, i16 31105, i16 -31700, i16 31165, i16 31260, i16 31258, i16 31264, i16 31252, i16 31263, i16 31262, i16 31391, i16 31392, i16 31607, i16 31680, i16 31584, i16 31598, i16 31591, i16 31921, i16 31923, i16 31925, i16 32147, i16 32121, i16 32145, i16 32129, i16 32143, i16 32091, i16 32622, i16 32617, i16 32618, i16 32626, i16 32681, i16 32680, i16 32676, i16 -32682, i16 -32680, i16 -32634, i16 -32636, i16 -32399, i16 -32400, i16 -32392, i16 -32411, i16 -32402, i16 -32397, i16 -32405, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32391, i16 -32390, i16 -32410, i16 -32251, i16 -32185, i16 -31614, i16 -31625, i16 -31683, i16 -31695, i16 -31627, i16 -31642, i16 -31637, i16 -31671, i16 -31636, i16 -31653, i16 -31684, i16 -31691, i16 -31647, i16 -31645, i16 -31639, i16 -31635, i16 -31674, i16 -31138, i16 -31140, i16 -31137, i16 -30983, i16 -30957, i16 -30968, i16 -30969, i16 -30976, i16 -30978, i16 -30981, i16 -30974, i16 -30973, i16 -30970, i16 -30966, i16 -30631, i16 -30497, i16 -30508, i16 -30503, i16 -30500, i16 -30504, i16 -30499, i16 -30495, i16 -30518, i16 -30507, i16 -30510, i16 -30308, i16 -30237, i16 -30101, i16 -30094, i16 -30093, i16 -30106, i16 -30103, i16 -30096, i16 -30073, i16 -30084, i16 -30109, i16 -30048, i16 -30095, i16 -30075, i16 -30099, i16 -30110, i16 -30098, i16 -30100, i16 -30087, i16 -30085, i16 -30146, i16 -30104, i16 -29598, i16 -29558, i16 -29559, i16 -29494, i16 -29497, i16 -29496, i16 -29500, i16 -29518, i16 -29501, i16 -29502, i16 -29499, i16 -29215, i16 -29217, i16 -29208, i16 -29201, i16 -29197, i16 -29190, i16 -29206, i16 -29212, i16 -29210, i16 -29006, i16 -28925, i16 -28919, i16 -28930, i16 -28918, i16 -28769, i16 -28750, i16 -28597, i16 -28598, i16 -28589, i16 -28606, i16 -28588, i16 -28612, i16 -28587, i16 -28592, i16 -28601, i16 -28593, i16 -28594, i16 -28595, i16 -28591, i16 -28610, i16 -28607, i16 -28398, i16 -28393, i16 -28308, i16 -28310, i16 -28311, i16 -28215, i16 -28105, i16 -28073, i16 -28104, i16 -28099, i16 -28096, i16 -28098, i16 -28069, i16 -28085, i16 -28060, i16 -28079, i16 -28108, i16 -28087, i16 -28083, i16 -28091, i16 -28103, i16 -28097, i16 -28070, i16 -27240, i16 -26984, i16 -26988, i16 -26987, i16 -26931, i16 -26933, i16 -26935, i16 -26934, i16 -26889, i16 -26885, i16 -26887, i16 -26890, i16 -26794, i16 -26764, i16 -26762, i16 -26608, i16 -26607, i16 -26605, i16 -26614, i16 -26606, i16 -26612, i16 -26372, i16 -26380, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26371, i16 -26370, i16 -26189, i16 -26191, i16 -26188, i16 -25887, i16 -25367, i16 -24958, i16 -24818, i16 -24813, i16 -24800, i16 20711, i16 20718, i16 20709, i16 20694, i16 20717, i16 20698, i16 20693, i16 20687, i16 20689, i16 20721, i16 20686, i16 20713, i16 20834, i16 20979, i16 21123, i16 21122, i16 21297, i16 21421, i16 22014, i16 22016, i16 22043, i16 22039, i16 22013, i16 22036, i16 22022, i16 22025, i16 22029, i16 22030, i16 22007, i16 22038, i16 22047, i16 22024, i16 22032, i16 22006, i16 22296, i16 22294, i16 22645, i16 22654, i16 22659, i16 22675, i16 22666, i16 22649, i16 22661, i16 22653, i16 22781, i16 22821, i16 22818, i16 22820, i16 22890, i16 22889, i16 23265, i16 23270, i16 23273, i16 23255, i16 23254, i16 23256, i16 23267, i16 23413, i16 23518, i16 23527, i16 23521, i16 23525, i16 23526, i16 23528, i16 23522, i16 23524, i16 23519, i16 23565, i16 23650, i16 23940, i16 23943, i16 24155, i16 24163, i16 24149, i16 24151, i16 24148, i16 24275, i16 24278, i16 24330, i16 24390, i16 24432, i16 24505, i16 24903, i16 24895, i16 24907, i16 24951, i16 24930, i16 24931, i16 24927, i16 24922, i16 24920, i16 24949, i16 25130, i16 25735, i16 25688, i16 25684, i16 25764, i16 25720, i16 25695, i16 25722, i16 25681, i16 25703, i16 25652, i16 25709, i16 25723, i16 25970, i16 26017, i16 26071, i16 26070, i16 26274, i16 26280, i16 26269, i16 27036, i16 27048, i16 27029, i16 27073, i16 27054, i16 27091, i16 27083, i16 27035, i16 27063, i16 27067, i16 27051, i16 27060, i16 27088, i16 27085, i16 27053, i16 27084, i16 27046, i16 27075, i16 27043, i16 27465, i16 27468, i16 27699, i16 28467, i16 28436, i16 28414, i16 28435, i16 28404, i16 28457, i16 28478, i16 28448, i16 28460, i16 28431, i16 28418, i16 28450, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 28415, i16 28399, i16 28422, i16 28465, i16 28472, i16 28466, i16 28451, i16 28437, i16 28459, i16 28463, i16 28552, i16 28458, i16 28396, i16 28417, i16 28402, i16 28364, i16 28407, i16 29076, i16 29081, i16 29053, i16 29066, i16 29060, i16 29074, i16 29246, i16 29330, i16 29334, i16 29508, i16 29520, i16 29796, i16 29795, i16 29802, i16 29808, i16 29805, i16 29956, i16 30097, i16 30247, i16 30221, i16 30219, i16 30217, i16 30227, i16 30433, i16 30435, i16 30596, i16 30589, i16 30591, i16 30561, i16 30913, i16 30879, i16 30887, i16 30899, i16 30889, i16 30883, i16 31118, i16 31119, i16 31117, i16 31278, i16 31281, i16 31402, i16 31401, i16 31469, i16 31471, i16 31649, i16 31637, i16 31627, i16 31605, i16 31639, i16 31645, i16 31636, i16 31631, i16 31672, i16 31623, i16 31620, i16 31929, i16 31933, i16 31934, i16 32187, i16 32176, i16 32156, i16 32189, i16 32190, i16 32160, i16 32202, i16 32180, i16 32178, i16 32177, i16 32186, i16 32162, i16 32191, i16 32181, i16 32184, i16 32173, i16 32210, i16 32199, i16 32172, i16 32624, i16 32736, i16 32737, i16 32735, i16 -32674, i16 -32678, i16 -32633, i16 -32432, i16 -32384, i16 -32369, i16 -32376, i16 -32374, i16 -32385, i16 -32382, i16 -32281, i16 -32262, i16 -32249, i16 -32236, i16 -32226, i16 -32181, i16 -31543, i16 -31553, i16 -31546, i16 -31548, i16 -31591, i16 -31586, i16 -31566, i16 -31588, i16 -31541, i16 -31560, i16 -31552, i16 -31533, i16 -31600, i16 -31556, i16 -31535, i16 -31542, i16 -30913, i16 -30948, i16 -30917, i16 -30942, i16 -30939, i16 -30924, i16 -30952, i16 -30891, i16 -30921, i16 -30935, i16 -30477, i16 -30462, i16 -30476, i16 -30471, i16 -30472, i16 -30467, i16 -30488, i16 -30438, i16 -30481, i16 -30042, i16 -30068, i16 -30050, i16 -30045, i16 -30067, i16 -30047, i16 -30061, i16 -30044, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -30038, i16 -30043, i16 -30040, i16 -30056, i16 -30063, i16 -30054, i16 -30041, i16 -29590, i16 -29555, i16 -29556, i16 -29485, i16 -29487, i16 -29486, i16 -29333, i16 -29287, i16 -29291, i16 -29188, i16 -28908, i16 -28910, i16 -28907, i16 -28909, i16 -28765, i16 -28576, i16 -28584, i16 -28580, i16 -28573, i16 -28583, i16 -28578, i16 -28574, i16 -28579, i16 -28581, i16 -28391, i16 -28392, i16 -28386, i16 -28299, i16 -28296, i16 -28297, i16 -28300, i16 -28040, i16 -28032, i16 -28027, i16 -28008, i16 -28010, i16 -28037, i16 -28013, i16 -28004, i16 -27992, i16 -28036, i16 -28015, i16 -27231, i16 -27224, i16 -27223, i16 -27229, i16 -27227, i16 -27228, i16 -26983, i16 -26980, i16 -26981, i16 -26932, i16 -26926, i16 -26880, i16 -26756, i16 -26747, i16 -26634, i16 -26601, i16 -26600, i16 -26449, i16 -26447, i16 -26365, i16 -26363, i16 -26356, i16 -26359, i16 -26175, i16 -25937, i16 -25936, i16 -25882, i16 -25791, i16 -25790, i16 -25356, i16 -25354, i16 -25357, i16 -24900, i16 -24773, i16 -24758, i16 20740, i16 20736, i16 20731, i16 20725, i16 20729, i16 20738, i16 20744, i16 20745, i16 20741, i16 20956, i16 21127, i16 21128, i16 21129, i16 21133, i16 21130, i16 21232, i16 21426, i16 22062, i16 22075, i16 22073, i16 22066, i16 22079, i16 22068, i16 22057, i16 22099, i16 22094, i16 22103, i16 22132, i16 22070, i16 22063, i16 22064, i16 22656, i16 22687, i16 22686, i16 22707, i16 22684, i16 22702, i16 22697, i16 22694, i16 22893, i16 23305, i16 23291, i16 23307, i16 23285, i16 23308, i16 23304, i16 23534, i16 23532, i16 23529, i16 23531, i16 23652, i16 23653, i16 23965, i16 23956, i16 24162, i16 24159, i16 24161, i16 24290, i16 24282, i16 24287, i16 24285, i16 24291, i16 24288, i16 24392, i16 24433, i16 24503, i16 24501, i16 24950, i16 24935, i16 24942, i16 24925, i16 24917, i16 24962, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24956, i16 24944, i16 24939, i16 24958, i16 24999, i16 24976, i16 25003, i16 24974, i16 25004, i16 24986, i16 24996, i16 24980, i16 25006, i16 25134, i16 25705, i16 25711, i16 25721, i16 25758, i16 25778, i16 25736, i16 25744, i16 25776, i16 25765, i16 25747, i16 25749, i16 25769, i16 25746, i16 25774, i16 25773, i16 25771, i16 25754, i16 25772, i16 25753, i16 25762, i16 25779, i16 25973, i16 25975, i16 25976, i16 26286, i16 26283, i16 26292, i16 26289, i16 27171, i16 27167, i16 27112, i16 27137, i16 27166, i16 27161, i16 27133, i16 27169, i16 27155, i16 27146, i16 27123, i16 27138, i16 27141, i16 27117, i16 27153, i16 27472, i16 27470, i16 27556, i16 27589, i16 27590, i16 28479, i16 28540, i16 28548, i16 28497, i16 28518, i16 28500, i16 28550, i16 28525, i16 28507, i16 28536, i16 28526, i16 28558, i16 28538, i16 28528, i16 28516, i16 28567, i16 28504, i16 28373, i16 28527, i16 28512, i16 28511, i16 29087, i16 29100, i16 29105, i16 29096, i16 29270, i16 29339, i16 29518, i16 29527, i16 29801, i16 29835, i16 29827, i16 29822, i16 29824, i16 30079, i16 30240, i16 30249, i16 30239, i16 30244, i16 30246, i16 30241, i16 30242, i16 30362, i16 30394, i16 30436, i16 30606, i16 30599, i16 30604, i16 30609, i16 30603, i16 30923, i16 30917, i16 30906, i16 30922, i16 30910, i16 30933, i16 30908, i16 30928, i16 31295, i16 31292, i16 31296, i16 31293, i16 31287, i16 31291, i16 31407, i16 31406, i16 31661, i16 31665, i16 31684, i16 31668, i16 31686, i16 31687, i16 31681, i16 31648, i16 31692, i16 31946, i16 32224, i16 32244, i16 32239, i16 32251, i16 32216, i16 32236, i16 32221, i16 32232, i16 32227, i16 32218, i16 32222, i16 32233, i16 32158, i16 32217, i16 32242, i16 32249, i16 32629, i16 32631, i16 32687, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 32745, i16 -32730, i16 -32357, i16 -32356, i16 -32355, i16 -32352, i16 -32358, i16 -32360, i16 -31465, i16 -31427, i16 -31462, i16 -31506, i16 -31444, i16 -31443, i16 -31469, i16 -31471, i16 -31453, i16 -31455, i16 -31468, i16 -31508, i16 -31451, i16 -31489, i16 -31482, i16 -30846, i16 -30860, i16 -30858, i16 -30880, i16 -30874, i16 -30856, i16 -30872, i16 -30887, i16 -30889, i16 -30900, i16 -30893, i16 -30629, i16 -30627, i16 -30448, i16 -30457, i16 -30446, i16 -30445, i16 -30443, i16 -30454, i16 -30020, i16 -29998, i16 -30009, i16 -30012, i16 -30059, i16 -30005, i16 -29960, i16 -30030, i16 -30007, i16 -30014, i16 -30017, i16 -30032, i16 -29994, i16 -30003, i16 -30026, i16 -30023, i16 -29989, i16 -29620, i16 -29618, i16 -29588, i16 -29472, i16 -29474, i16 -29466, i16 -29468, i16 -29460, i16 -29459, i16 -29470, i16 -29469, i16 -29476, i16 -29462, i16 -29471, i16 -29331, i16 -29281, i16 -29277, i16 -29141, i16 -29168, i16 -29155, i16 -29150, i16 -29169, i16 -29143, i16 -29153, i16 -29151, i16 -29154, i16 -28998, i16 -28899, i16 -28901, i16 -28897, i16 -28887, i16 -28890, i16 -28886, i16 -28900, i16 -28898, i16 -28891, i16 -28567, i16 -28562, i16 -28568, i16 -28563, i16 -28553, i16 -28368, i16 -28371, i16 -28377, i16 -28367, i16 -28281, i16 -28279, i16 -28277, i16 -28285, i16 -27963, i16 -27973, i16 -27977, i16 -27926, i16 -27988, i16 -27932, i16 -27967, i16 -27981, i16 -27972, i16 -27950, i16 -27961, i16 -27920, i16 -27982, i16 -27219, i16 -27215, i16 -26876, i16 -26874, i16 -26873, i16 -26871, i16 -26784, i16 -26739, i16 -26741, i16 -26737, i16 -26591, i16 -26581, i16 -26596, i16 -26445, i16 -26358, i16 -26349, i16 -26350, i16 -26344, i16 -26147, i16 -26160, i16 -26145, i16 -26149, i16 -26159, i16 -26155, i16 -26158, i16 -26151, i16 -25929, i16 -25874, i16 -25873, i16 -25817, i16 -25787, i16 -25788, i16 -25737, i16 -25745, i16 -25338, i16 -25335, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25341, i16 -24919, i16 -24898, i16 -24882, i16 22696, i16 -24750, i16 20754, i16 20760, i16 20756, i16 20752, i16 20757, i16 20864, i16 20906, i16 20957, i16 21137, i16 21139, i16 21235, i16 22105, i16 22123, i16 22137, i16 22121, i16 22116, i16 22136, i16 22122, i16 22120, i16 22117, i16 22129, i16 22127, i16 22124, i16 22114, i16 22134, i16 22721, i16 22718, i16 22727, i16 22725, i16 22894, i16 23325, i16 23348, i16 23416, i16 23536, i16 23566, i16 24394, i16 25010, i16 24977, i16 25001, i16 24970, i16 25037, i16 25014, i16 25022, i16 25034, i16 25032, i16 25136, i16 25797, i16 25793, i16 25803, i16 25787, i16 25788, i16 25818, i16 25796, i16 25799, i16 25794, i16 25805, i16 25791, i16 25810, i16 25812, i16 25790, i16 25972, i16 26310, i16 26313, i16 26297, i16 26308, i16 26311, i16 26296, i16 27197, i16 27192, i16 27194, i16 27225, i16 27243, i16 27224, i16 27193, i16 27204, i16 27234, i16 27233, i16 27211, i16 27207, i16 27189, i16 27231, i16 27208, i16 27481, i16 27511, i16 27653, i16 28610, i16 28593, i16 28577, i16 28611, i16 28580, i16 28609, i16 28583, i16 28595, i16 28608, i16 28601, i16 28598, i16 28582, i16 28576, i16 28596, i16 29118, i16 29129, i16 29136, i16 29138, i16 29128, i16 29141, i16 29113, i16 29134, i16 29145, i16 29148, i16 29123, i16 29124, i16 29544, i16 29852, i16 29859, i16 29848, i16 29855, i16 29854, i16 29922, i16 29964, i16 29965, i16 30260, i16 30264, i16 30266, i16 30439, i16 30437, i16 30624, i16 30622, i16 30623, i16 30629, i16 30952, i16 30938, i16 30956, i16 30951, i16 31142, i16 31309, i16 31310, i16 31302, i16 31308, i16 31307, i16 31418, i16 31705, i16 31761, i16 31689, i16 31716, i16 31707, i16 31713, i16 31721, i16 31718, i16 31957, i16 31958, i16 32266, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 32273, i16 32264, i16 32283, i16 32291, i16 32286, i16 32285, i16 32265, i16 32272, i16 32633, i16 32690, i16 32752, i16 32753, i16 32750, i16 -32728, i16 -32333, i16 -32343, i16 -32344, i16 -32261, i16 -32248, i16 -32168, i16 -32167, i16 -31414, i16 -31399, i16 -31416, i16 -31384, i16 -31383, i16 -31421, i16 -31415, i16 -31379, i16 -31382, i16 -31394, i16 -30845, i16 -30817, i16 -30818, i16 -30814, i16 -30835, i16 -30623, i16 -30422, i16 -30414, i16 -30427, i16 -30421, i16 -30431, i16 -30294, i16 -30298, i16 -29978, i16 -29958, i16 -29973, i16 -29967, i16 -29952, i16 -29988, i16 -29977, i16 -29970, i16 -29954, i16 -29951, i16 -29950, i16 -29961, i16 -29971, i16 -29965, i16 -29962, i16 -29956, i16 -29589, i16 -29587, i16 -29549, i16 -29452, i16 -29116, i16 -29135, i16 -29132, i16 -29118, i16 -29127, i16 -29131, i16 -28869, i16 -28881, i16 -28872, i16 -28877, i16 -28760, i16 -28762, i16 -28555, i16 -28556, i16 -28552, i16 -28558, i16 -28548, i16 -28550, i16 -28364, i16 -28270, i16 -27872, i16 -27850, i16 -27912, i16 -27853, i16 -27857, i16 -27870, i16 -27908, i16 -27861, i16 -27900, i16 -27878, i16 -27888, i16 -27866, i16 -27871, i16 -27883, i16 -27858, i16 -27879, i16 -27205, i16 -26969, i16 -26968, i16 -26966, i16 -26923, i16 -26866, i16 -26863, i16 -26858, i16 -26867, i16 -26861, i16 -26865, i16 -26789, i16 -26788, i16 -26778, i16 -26728, i16 -26576, i16 -26568, i16 -26565, i16 -26569, i16 -26579, i16 -26567, i16 -26588, i16 -26352, i16 -26328, i16 -26338, i16 -26341, i16 -26335, i16 -26342, i16 -26131, i16 -26142, i16 -26127, i16 -25928, i16 -25924, i16 -25861, i16 -25875, i16 -25816, i16 -25711, i16 -25323, i16 -25309, i16 -25306, i16 -25304, i16 -25326, i16 -25317, i16 -24872, i16 -24876, i16 -24691, i16 -24676, i16 20778, i16 20767, i16 20769, i16 20786, i16 21237, i16 22158, i16 22144, i16 22160, i16 22149, i16 22151, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 22159, i16 22741, i16 22739, i16 22737, i16 22734, i16 23344, i16 23338, i16 23332, i16 23418, i16 23607, i16 23656, i16 23996, i16 23994, i16 23997, i16 23992, i16 24171, i16 24396, i16 24509, i16 25033, i16 25026, i16 25031, i16 25062, i16 25035, i16 25138, i16 25140, i16 25806, i16 25802, i16 25816, i16 25824, i16 25840, i16 25830, i16 25836, i16 25841, i16 25826, i16 25837, i16 25986, i16 25987, i16 26329, i16 26326, i16 27264, i16 27284, i16 27268, i16 27298, i16 27292, i16 27355, i16 27299, i16 27262, i16 27287, i16 27280, i16 27296, i16 27484, i16 27566, i16 27610, i16 27656, i16 28632, i16 28657, i16 28639, i16 28640, i16 28635, i16 28644, i16 28651, i16 28655, i16 28544, i16 28652, i16 28641, i16 28649, i16 28629, i16 28654, i16 28656, i16 29159, i16 29151, i16 29166, i16 29158, i16 29157, i16 29165, i16 29164, i16 29172, i16 29152, i16 29237, i16 29254, i16 29552, i16 29554, i16 29865, i16 29872, i16 29862, i16 29864, i16 30278, i16 30274, i16 30284, i16 30442, i16 30643, i16 30634, i16 30640, i16 30636, i16 30631, i16 30637, i16 30703, i16 30967, i16 30970, i16 30964, i16 30959, i16 30977, i16 31143, i16 31146, i16 31319, i16 31423, i16 31751, i16 31757, i16 31742, i16 31735, i16 31756, i16 31712, i16 31968, i16 31964, i16 31966, i16 31970, i16 31967, i16 31961, i16 31965, i16 32302, i16 32318, i16 32326, i16 32311, i16 32306, i16 32323, i16 32299, i16 32317, i16 32305, i16 32325, i16 32321, i16 32308, i16 32313, i16 32328, i16 32309, i16 32319, i16 32303, i16 32580, i16 32755, i16 32764, i16 -32655, i16 -32654, i16 -32656, i16 -32657, i16 -32653, i16 -32314, i16 -32317, i16 -32326, i16 -32318, i16 -32320, i16 -32321, i16 -32323, i16 -32311, i16 -32322, i16 -32280, i16 -32247, i16 -32143, i16 -31318, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -31356, i16 -31362, i16 -31332, i16 -31343, i16 -31340, i16 -31313, i16 -31333, i16 -31353, i16 -31320, i16 -31350, i16 -31129, i16 -30784, i16 -30767, i16 -30797, i16 -30766, i16 -30778, i16 -30805, i16 -30789, i16 -30790, i16 -30776, i16 -30773, i16 -30405, i16 -30410, i16 -30396, i16 -30408, i16 -30403, i16 -30292, i16 -29938, i16 -29929, i16 -29927, i16 -29925, i16 -29942, i16 -29920, i16 -29923, i16 -29948, i16 -29936, i16 -29631, i16 -29633, i16 -29581, i16 -29446, i16 -29443, i16 -29444, i16 -29448, i16 -29445, i16 -29272, i16 -29111, i16 -29109, i16 -29112, i16 -29110, i16 -28860, i16 -28866, i16 -28862, i16 -28859, i16 -28865, i16 -28545, i16 -28547, i16 -28540, i16 -28543, i16 -28542, i16 -28544, i16 -28359, i16 -28253, i16 -28258, i16 -28260, i16 -27827, i16 -27774, i16 -27864, i16 -27787, i16 -27830, i16 -27803, i16 -27829, i16 -27880, i16 -27778, i16 -27796, i16 -27813, i16 -27792, i16 -27814, i16 -27820, i16 -27190, i16 -27189, i16 -27188, i16 -27192, i16 -27194, i16 -26959, i16 -26952, i16 -26922, i16 -26852, i16 -26850, i16 -26720, i16 -26669, i16 -26554, i16 -26442, i16 -26315, i16 -26111, i16 -26113, i16 -25682, i16 -25685, i16 -25686, i16 -25683, i16 -25285, i16 -25281, i16 -24949, i16 -24881, i16 -24866, i16 -24868, i16 -24867, i16 -24869, i16 -24770, i16 -24757, i16 21474, i16 22165, i16 22190, i16 22745, i16 22744, i16 23352, i16 24413, i16 25059, i16 25139, i16 25844, i16 25842, i16 25854, i16 25862, i16 25850, i16 25851, i16 25847, i16 26039, i16 26332, i16 26406, i16 27315, i16 27308, i16 27331, i16 27323, i16 27320, i16 27330, i16 27310, i16 27311, i16 27487, i16 27512, i16 27567, i16 28681, i16 28683, i16 28670, i16 28678, i16 28666, i16 28689, i16 28687, i16 29179, i16 29180, i16 29182, i16 29176, i16 29559, i16 29557, i16 29863, i16 29887, i16 29973, i16 30294, i16 30296, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30290, i16 30653, i16 30655, i16 30651, i16 30652, i16 30990, i16 31150, i16 31329, i16 31330, i16 31328, i16 31428, i16 31429, i16 31787, i16 31783, i16 31786, i16 31774, i16 31779, i16 31777, i16 31975, i16 32340, i16 32341, i16 32350, i16 32346, i16 32353, i16 32338, i16 32345, i16 32584, i16 32761, i16 32763, i16 -32649, i16 -32650, i16 -32307, i16 -32305, i16 -32246, i16 -31281, i16 -31319, i16 -31283, i16 -31280, i16 -31287, i16 -31312, i16 -31302, i16 -31303, i16 -31322, i16 -30737, i16 -30740, i16 -30734, i16 -30752, i16 -30330, i16 -30286, i16 -30220, i16 -29912, i16 -29895, i16 -29908, i16 -29909, i16 -29616, i16 -29435, i16 -29095, i16 -29085, i16 -29082, i16 -29084, i16 -29089, i16 -29099, i16 -28992, i16 -28855, i16 -28851, i16 -28537, i16 -28541, i16 -28536, i16 -28245, i16 -28244, i16 -28208, i16 -27756, i16 -27766, i16 -27754, i16 -27742, i16 -27725, i16 -27730, i16 -27732, i16 -27728, i16 -27752, i16 -27750, i16 -27753, i16 -27180, i16 -27178, i16 -27184, i16 -27179, i16 -26910, i16 -26916, i16 -26919, i16 -26917, i16 -26914, i16 -26844, i16 -26717, i16 -26714, i16 -26707, i16 -26631, i16 -26547, i16 -26545, i16 -26548, i16 -26546, i16 -26541, i16 -26438, i16 -26306, i16 -26305, i16 -26307, i16 -26322, i16 -26203, i16 -26098, i16 -25919, i16 -25853, i16 -25850, i16 -25777, i16 -25778, i16 -25779, i16 -25654, i16 -25655, i16 -25603, i16 -25656, i16 -25664, i16 -25263, i16 -25251, i16 -25248, i16 -24864, i16 -24811, i16 -24788, i16 20787, i16 22181, i16 22750, i16 22751, i16 22754, i16 23541, i16 -24688, i16 24300, i16 25074, i16 25079, i16 25078, i16 25077, i16 25856, i16 25871, i16 26336, i16 26333, i16 27365, i16 27357, i16 27354, i16 27347, i16 28699, i16 28703, i16 28712, i16 28698, i16 28701, i16 28693, i16 28696, i16 29190, i16 29197, i16 29272, i16 29346, i16 29560, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29562, i16 29885, i16 29898, i16 29923, i16 30087, i16 30086, i16 30303, i16 30305, i16 30663, i16 31001, i16 31153, i16 31339, i16 31337, i16 31806, i16 31807, i16 31800, i16 31805, i16 31799, i16 31808, i16 32363, i16 32365, i16 32377, i16 32361, i16 32362, i16 32645, i16 32371, i16 32694, i16 32697, i16 32696, i16 -32296, i16 -31255, i16 -31267, i16 -31254, i16 -31275, i16 -31260, i16 -31259, i16 -31241, i16 -30725, i16 -30715, i16 -30707, i16 -30727, i16 -30722, i16 -30368, i16 -30369, i16 -30378, i16 -30370, i16 -29887, i16 -29860, i16 -29864, i16 -29879, i16 -29862, i16 -29874, i16 -29873, i16 -29882, i16 -29863, i16 -29432, i16 -29430, i16 -29060, i16 -29070, i16 -29049, i16 -29066, i16 -29076, i16 -29062, i16 -29068, i16 -28844, i16 -28850, i16 -28755, i16 -28534, i16 -28533, i16 -28239, i16 -28242, i16 -27679, i16 -27695, i16 -27681, i16 -27709, i16 -27704, i16 -27684, i16 -27683, i16 -27690, i16 -27678, i16 -27699, i16 -27688, i16 -27676, i16 -27689, i16 -27672, i16 -27172, i16 -26956, i16 -26909, i16 -26838, i16 -26841, i16 -26783, i16 -26660, i16 -26629, i16 -26530, i16 -26536, i16 -26533, i16 -26436, i16 -26299, i16 -26295, i16 -26090, i16 -26087, i16 -25843, i16 -25624, i16 -25625, i16 -25642, i16 -25637, i16 -25207, i16 -25247, i16 -25230, i16 -25238, i16 -25236, i16 -24942, i16 -24937, i16 -24941, i16 -24908, i16 21240, i16 22184, i16 22199, i16 22198, i16 22196, i16 22204, i16 22756, i16 23360, i16 23363, i16 23421, i16 23542, i16 24009, i16 25080, i16 25082, i16 25880, i16 25876, i16 25881, i16 26342, i16 26407, i16 27372, i16 28734, i16 28720, i16 28722, i16 29200, i16 29563, i16 29903, i16 30306, i16 30309, i16 31014, i16 31018, i16 31020, i16 31019, i16 31431, i16 31478, i16 31820, i16 31811, i16 31821, i16 31983, i16 31984, i16 -28754, i16 32381, i16 32380, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 32386, i16 32588, i16 -32768, i16 -32294, i16 -32154, i16 -31237, i16 -31239, i16 -31215, i16 -31238, i16 -31226, i16 -31221, i16 -31225, i16 -31222, i16 -30700, i16 -30699, i16 -30364, i16 -30278, i16 -30216, i16 -29840, i16 -29844, i16 -29850, i16 -29841, i16 -29857, i16 -29845, i16 -29425, i16 -29427, i16 -29047, i16 -29055, i16 -29051, i16 -29054, i16 -28236, i16 -28213, i16 -27624, i16 -27645, i16 -27651, i16 -27167, i16 -26832, i16 -26428, i16 -26286, i16 -26287, i16 -26200, i16 -26069, i16 -26064, i16 -26057, i16 -26059, i16 -25581, i16 -25587, i16 -24967, i16 -24907, i16 -24856, i16 -24785, i16 -24737, i16 -24733, i16 -24735, i16 20791, i16 20792, i16 22209, i16 22208, i16 22210, i16 22804, i16 23660, i16 24013, i16 25084, i16 25086, i16 25885, i16 25884, i16 26005, i16 26345, i16 27387, i16 27396, i16 27386, i16 27570, i16 28748, i16 29211, i16 29351, i16 29910, i16 29908, i16 30313, i16 30675, i16 31824, i16 32399, i16 32396, i16 32700, i16 -31209, i16 -31187, i16 -31206, i16 -30685, i16 -30686, i16 -30687, i16 -30689, i16 -30358, i16 -30356, i16 -30275, i16 -29836, i16 -29833, i16 -29827, i16 -29421, i16 -29046, i16 -29043, i16 -29045, i16 -28833, i16 -28753, i16 -28230, i16 -27602, i16 -27597, i16 -27595, i16 -27590, i16 -27592, i16 -27598, i16 -27605, i16 -27166, i16 -26824, i16 -26823, i16 -26830, i16 -26625, i16 -26521, i16 -26523, i16 -26281, i16 -26043, i16 -26045, i16 -26048, i16 -26050, i16 -25905, i16 -25772, i16 -25775, i16 -25555, i16 -25563, i16 -25169, i16 -25164, i16 -25150, i16 -25160, i16 -24931, i16 -24849, i16 -24807, i16 -24740, i16 -24730, i16 -24729, i16 20796, i16 20795, i16 22216, i16 22218, i16 22217, i16 23423, i16 24020, i16 24018, i16 24398, i16 25087, i16 25892, i16 27402, i16 27489, i16 28753, i16 28760, i16 29568, i16 29924, i16 30090, i16 30318, i16 30316, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 31155, i16 31840, i16 31839, i16 -32642, i16 -32643, i16 -32289, i16 -30350, i16 -30353, i16 -30212, i16 -29824, i16 -29418, i16 -29417, i16 -29039, i16 -29037, i16 -28831, i16 -28344, i16 -27580, i16 -27567, i16 -27566, i16 -26819, i16 -26818, i16 -26685, i16 -26687, i16 -26517, i16 -26283, i16 -26027, i16 -26035, i16 -25902, i16 -25830, i16 -25527, i16 -25551, i16 -25538, i16 -25541, i16 -25133, i16 -25129, i16 -24780, i16 -24724, i16 -24726, i16 -24684, i16 22220, i16 24022, i16 25088, i16 25891, i16 25899, i16 25898, i16 26348, i16 27408, i16 29914, i16 31434, i16 31844, i16 31843, i16 31845, i16 32403, i16 32406, i16 32404, i16 -32286, i16 -31176, i16 -31169, i16 -30671, i16 -29814, i16 -28528, i16 -28529, i16 -27549, i16 -27552, i16 -27548, i16 -26776, i16 -26513, i16 -26276, i16 -26022, i16 -26021, i16 -26025, i16 -25901, i16 -25900, i16 -25903, i16 -25516, i16 -25513, i16 -25514, i16 -25115, i16 -24929, i16 -24844, i16 22225, i16 22761, i16 25900, i16 28766, i16 30321, i16 30322, i16 30679, i16 32592, i16 32648, i16 -30666, i16 -30663, i16 -30622, i16 -29805, i16 -29806, i16 -29802, i16 -32137, i16 -29413, i16 -28224, i16 -27542, i16 -26814, i16 -26808, i16 -26812, i16 -26682, i16 -26512, i16 -26017, i16 -25822, i16 -25768, i16 -25505, i16 -25095, i16 -25094, i16 -24964, i16 -24963, i16 -24825, i16 -24713, i16 -24718, i16 24307, i16 27414, i16 28771, i16 31852, i16 31854, i16 -30661, i16 -30272, i16 -29023, i16 -28223, i16 -27534, i16 -27536, i16 -26511, i16 -26274, i16 -25898, i16 -25821, i16 -24884, i16 28772, i16 30682, i16 -29798, i16 -27529, i16 -26679, i16 -26014, i16 -26011, i16 32412, i16 -29796, i16 -29014, i16 -28219, i16 -27523, i16 -27522, i16 -27524, i16 -25481, i16 -25480, i16 -24841, i16 -29612, i16 -27521, i16 -25062, i16 29224, i16 -26006, i16 -25807, i16 -25061, i16 -25058, i16 31858, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 12542, i16 12445, i16 12446, i16 12293, i16 12353, i16 12354, i16 12355, i16 12356, i16 12357, i16 12358, i16 12359, i16 12360, i16 12361, i16 12362, i16 12363, i16 12364, i16 12365, i16 12366, i16 12367, i16 12368, i16 12369, i16 12370, i16 12371, i16 12372, i16 12373, i16 12374, i16 12375, i16 12376, i16 12377, i16 12378, i16 12379, i16 12380, i16 12381, i16 12382, i16 12383, i16 12384, i16 12385, i16 12386, i16 12387, i16 12388, i16 12389, i16 12390, i16 12391, i16 12392, i16 12393, i16 12394, i16 12395, i16 12396, i16 12397, i16 12398, i16 12399, i16 12400, i16 12401, i16 12402, i16 12403, i16 12404, i16 12405, i16 12406, i16 12407, i16 12408, i16 12409, i16 12410, i16 12411, i16 12412, i16 12413, i16 12414, i16 12415, i16 12416, i16 12417, i16 12418, i16 12419, i16 12420, i16 12421, i16 12422, i16 12423, i16 12424, i16 12425, i16 12426, i16 12427, i16 12428, i16 12429, i16 12430, i16 12431, i16 12432, i16 12433, i16 12434, i16 12435, i16 12449, i16 12450, i16 12451, i16 12452, i16 12453, i16 12454, i16 12455, i16 12456, i16 12457, i16 12458, i16 12459, i16 12460, i16 12461, i16 12462, i16 12463, i16 12464, i16 12465, i16 12466, i16 12467, i16 12468, i16 12469, i16 12470, i16 12471, i16 12472, i16 12473, i16 12474, i16 12475, i16 12476, i16 12477, i16 12478, i16 12479, i16 12480, i16 12481, i16 12482, i16 12483, i16 12484, i16 12485, i16 12486, i16 12487, i16 12488, i16 12489, i16 12490, i16 12491, i16 12492, i16 12493, i16 12494, i16 12495, i16 12496, i16 12497, i16 12498, i16 12499, i16 12500, i16 12501, i16 12502, i16 12503, i16 12504, i16 12505, i16 12506, i16 12507, i16 12508, i16 12509, i16 12510, i16 12511, i16 12512, i16 12513, i16 12514, i16 12515, i16 12516, i16 12517, i16 12518, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 12519, i16 12520, i16 12521, i16 12522, i16 12523, i16 12524, i16 12525, i16 12526, i16 12527, i16 12528, i16 12529, i16 12530, i16 12531, i16 12532, i16 12533, i16 12534, i16 1044, i16 1045, i16 1025, i16 1046, i16 1047, i16 1048, i16 1049, i16 1050, i16 1051, i16 1052, i16 1059, i16 1060, i16 1061, i16 1062, i16 1063, i16 1064, i16 1065, i16 1066, i16 1067, i16 1068, i16 1069, i16 1070, i16 1071, i16 1072, i16 1073, i16 1074, i16 1075, i16 1076, i16 1077, i16 1105, i16 1078, i16 1079, i16 1080, i16 1081, i16 1082, i16 1083, i16 1084, i16 1085, i16 1086, i16 1087, i16 1088, i16 1089, i16 1090, i16 1091, i16 1092, i16 1093, i16 1094, i16 1095, i16 1096, i16 1097, i16 1098, i16 1099, i16 1100, i16 1101, i16 1102, i16 1103, i16 9312, i16 9313, i16 9314, i16 9315, i16 9316, i16 9317, i16 9318, i16 9319, i16 9320, i16 9321, i16 9332, i16 9333, i16 9334, i16 9335, i16 9336, i16 9337, i16 9338, i16 9339, i16 9340, i16 9341, i16 20034, i16 20060, i16 20981, i16 21274, i16 21378, i16 19975, i16 19980, i16 20039, i16 20109, i16 22231, i16 -1524, i16 23662, i16 24435, i16 19983, i16 20871, i16 19982, i16 20014, i16 20115, i16 20162, i16 20169, i16 20168, i16 20888, i16 21244, i16 21356, i16 21433, i16 22304, i16 22787, i16 22828, i16 23568, i16 24063, i16 26081, i16 27571, i16 27596, i16 27668, i16 29247, i16 20017, i16 20028, i16 20200, i16 20188, i16 20201, i16 20193, i16 20189, i16 20186, i16 21004, i16 21276, i16 21324, i16 22306, i16 22307, i16 22807, i16 22831, i16 23425, i16 23428, i16 23570, i16 23611, i16 23668, i16 23667, i16 24068, i16 24192, i16 24194, i16 24521, i16 25097, i16 25168, i16 27669, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 27702, i16 27715, i16 27711, i16 27707, i16 29358, i16 29360, i16 29578, i16 31160, i16 -32630, i16 -27106, i16 20238, i16 20248, i16 20268, i16 20213, i16 20244, i16 20209, i16 20224, i16 20215, i16 20232, i16 20253, i16 20226, i16 20229, i16 20258, i16 20243, i16 20228, i16 20212, i16 20242, i16 20913, i16 21011, i16 21001, i16 21008, i16 21158, i16 21282, i16 21279, i16 21325, i16 21386, i16 21511, i16 22241, i16 22239, i16 22318, i16 22314, i16 22324, i16 22844, i16 22912, i16 22908, i16 22917, i16 22907, i16 22910, i16 22903, i16 22911, i16 23382, i16 23573, i16 23589, i16 23676, i16 23674, i16 23675, i16 23678, i16 24031, i16 24181, i16 24196, i16 24322, i16 24346, i16 24436, i16 24533, i16 24532, i16 24527, i16 25180, i16 25182, i16 25188, i16 25185, i16 25190, i16 25186, i16 25177, i16 25184, i16 25178, i16 25189, i16 26095, i16 26094, i16 26430, i16 26425, i16 26424, i16 26427, i16 26426, i16 26431, i16 26428, i16 26419, i16 27672, i16 27718, i16 27730, i16 27740, i16 27727, i16 27722, i16 27732, i16 27723, i16 27724, i16 28785, i16 29278, i16 29364, i16 29365, i16 29582, i16 29994, i16 30335, i16 31349, i16 32593, i16 -32136, i16 -32132, i16 -32128, i16 -32131, i16 -32129, i16 -31155, i16 -30338, i16 -28519, i16 -28521, i16 -28520, i16 -28517, i16 -28524, i16 -27102, i16 -27100, i16 -27104, i16 -27101, i16 20310, i16 20283, i16 20322, i16 20297, i16 20307, i16 20324, i16 20286, i16 20327, i16 20306, i16 20319, i16 20289, i16 20312, i16 20269, i16 20275, i16 20287, i16 20321, i16 20879, i16 20921, i16 21020, i16 21022, i16 21025, i16 21165, i16 21166, i16 21257, i16 21347, i16 21362, i16 21390, i16 21391, i16 21552, i16 21559, i16 21546, i16 21588, i16 21573, i16 21529, i16 21532, i16 21541, i16 21528, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 21565, i16 21583, i16 21569, i16 21544, i16 21540, i16 21575, i16 22254, i16 22247, i16 22245, i16 22337, i16 22341, i16 22348, i16 22345, i16 22347, i16 22354, i16 22790, i16 22848, i16 22950, i16 22936, i16 22944, i16 22935, i16 22926, i16 22946, i16 22928, i16 22927, i16 22951, i16 22945, i16 23438, i16 23442, i16 23592, i16 23594, i16 23693, i16 23695, i16 23688, i16 23691, i16 23689, i16 23698, i16 23690, i16 23686, i16 23699, i16 23701, i16 24032, i16 24074, i16 24078, i16 24203, i16 24201, i16 24204, i16 24200, i16 24205, i16 24325, i16 24349, i16 24440, i16 24438, i16 24530, i16 24529, i16 24528, i16 24557, i16 24552, i16 24558, i16 24563, i16 24545, i16 24548, i16 24547, i16 24570, i16 24559, i16 24567, i16 24571, i16 24576, i16 24564, i16 25146, i16 25219, i16 25228, i16 25230, i16 25231, i16 25236, i16 25223, i16 25201, i16 25211, i16 25210, i16 25200, i16 25217, i16 25224, i16 25207, i16 25213, i16 25202, i16 25204, i16 25911, i16 26096, i16 26100, i16 26099, i16 26098, i16 26101, i16 26437, i16 26439, i16 26457, i16 26453, i16 26444, i16 26440, i16 26461, i16 26445, i16 26458, i16 26443, i16 27600, i16 27673, i16 27674, i16 27768, i16 27751, i16 27755, i16 27780, i16 27787, i16 27791, i16 27761, i16 27759, i16 27753, i16 27802, i16 27757, i16 27783, i16 27797, i16 27804, i16 27750, i16 27763, i16 27749, i16 27771, i16 27790, i16 28788, i16 28794, i16 29283, i16 29375, i16 29373, i16 29379, i16 29382, i16 29377, i16 29370, i16 29381, i16 29589, i16 29591, i16 29587, i16 29588, i16 29586, i16 30010, i16 30009, i16 30100, i16 30101, i16 30337, i16 31037, i16 -32716, i16 -32619, i16 -32615, i16 -32624, i16 -32622, i16 -32612, i16 -32112, i16 -32113, i16 -32123, i16 -32114, i16 -32111, i16 -32109, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32118, i16 -32125, i16 -32124, i16 -29576, i16 -28727, i16 -28737, i16 -28513, i16 -28511, i16 -28507, i16 -28514, i16 -28505, i16 -28512, i16 -27088, i16 -27096, i16 -27089, i16 -27091, i16 20019, i16 20376, i16 20348, i16 20357, i16 20349, i16 20352, i16 20359, i16 20342, i16 20340, i16 20361, i16 20356, i16 20343, i16 20300, i16 20375, i16 20330, i16 20378, i16 20345, i16 20353, i16 20344, i16 20368, i16 20380, i16 20372, i16 20382, i16 20370, i16 20354, i16 20373, i16 20331, i16 20334, i16 20894, i16 20924, i16 20926, i16 21045, i16 21042, i16 21043, i16 21062, i16 21041, i16 21180, i16 21258, i16 21259, i16 21308, i16 21394, i16 21396, i16 21639, i16 21631, i16 21633, i16 21649, i16 21634, i16 21640, i16 21611, i16 21626, i16 21630, i16 21605, i16 21612, i16 21620, i16 21606, i16 21645, i16 21615, i16 21601, i16 21600, i16 21656, i16 21603, i16 21607, i16 21604, i16 22263, i16 22265, i16 22383, i16 22386, i16 22381, i16 22379, i16 22385, i16 22384, i16 22390, i16 22400, i16 22389, i16 22395, i16 22387, i16 22388, i16 22370, i16 22376, i16 22397, i16 22796, i16 22853, i16 22965, i16 22970, i16 22991, i16 22990, i16 22962, i16 22988, i16 22977, i16 22966, i16 22972, i16 22979, i16 22998, i16 22961, i16 22973, i16 22976, i16 22984, i16 22964, i16 22983, i16 23394, i16 23397, i16 23443, i16 23445, i16 23620, i16 23623, i16 23726, i16 23716, i16 23712, i16 23733, i16 23727, i16 23720, i16 23724, i16 23711, i16 23715, i16 23725, i16 23714, i16 23722, i16 23719, i16 23709, i16 23717, i16 23734, i16 23728, i16 23718, i16 24087, i16 24084, i16 24089, i16 24360, i16 24354, i16 24355, i16 24356, i16 24404, i16 24450, i16 24446, i16 24445, i16 24542, i16 24549, i16 24621, i16 24614, i16 24601, i16 24626, i16 24587, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24628, i16 24586, i16 24599, i16 24627, i16 24602, i16 24606, i16 24620, i16 24610, i16 24589, i16 24592, i16 24622, i16 24595, i16 24593, i16 24588, i16 24585, i16 24604, i16 25108, i16 25149, i16 25261, i16 25268, i16 25297, i16 25278, i16 25258, i16 25270, i16 25290, i16 25262, i16 25267, i16 25263, i16 25275, i16 25257, i16 25264, i16 25272, i16 25917, i16 26024, i16 26043, i16 26121, i16 26108, i16 26116, i16 26130, i16 26120, i16 26107, i16 26115, i16 26123, i16 26125, i16 26117, i16 26109, i16 26129, i16 26128, i16 26358, i16 26378, i16 26501, i16 26476, i16 26510, i16 26514, i16 26486, i16 26491, i16 26520, i16 26502, i16 26500, i16 26484, i16 26509, i16 26508, i16 26490, i16 26527, i16 26513, i16 26521, i16 26499, i16 26493, i16 26497, i16 26488, i16 26489, i16 26516, i16 27429, i16 27520, i16 27518, i16 27614, i16 27677, i16 27795, i16 27884, i16 27883, i16 27886, i16 27865, i16 27830, i16 27860, i16 27821, i16 27879, i16 27831, i16 27856, i16 27842, i16 27834, i16 27843, i16 27846, i16 27885, i16 27890, i16 27858, i16 27869, i16 27828, i16 27786, i16 27805, i16 27776, i16 27870, i16 27840, i16 27952, i16 27853, i16 27847, i16 27824, i16 27897, i16 27855, i16 27881, i16 27857, i16 28820, i16 28824, i16 28805, i16 28819, i16 28806, i16 28804, i16 28817, i16 28822, i16 28802, i16 28826, i16 28803, i16 29290, i16 29398, i16 29387, i16 29400, i16 29385, i16 29404, i16 29394, i16 29396, i16 29402, i16 29388, i16 29393, i16 29604, i16 29601, i16 29613, i16 29606, i16 29602, i16 29600, i16 29612, i16 29597, i16 29917, i16 29928, i16 30015, i16 30016, i16 30014, i16 30092, i16 30104, i16 30383, i16 30451, i16 30449, i16 30448, i16 30453, i16 30712, i16 30716, i16 30713, i16 30715, i16 30714, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30711, i16 31042, i16 31039, i16 31173, i16 31352, i16 31355, i16 31483, i16 31861, i16 31997, i16 -32715, i16 -32625, i16 -32594, i16 -32605, i16 -32584, i16 -32587, i16 -32595, i16 -32224, i16 -32096, i16 -32064, i16 -32085, i16 -32102, i16 -32104, i16 -32101, i16 -32075, i16 -32089, i16 -32082, i16 -32068, i16 -32098, i16 -32070, i16 -32076, i16 -32088, i16 -32095, i16 -32087, i16 -32062, i16 -32092, i16 -32061, i16 -32074, i16 -32094, i16 -31120, i16 -31121, i16 -31123, i16 -31122, i16 -29610, i16 -28718, i16 -28725, i16 -28717, i16 -28723, i16 -28714, i16 -28715, i16 -28713, i16 -28494, i16 -28492, i16 -28497, i16 -28493, i16 -28496, i16 -27079, i16 -27075, i16 -27076, i16 -27078, i16 -27069, i16 20429, i16 20421, i16 20435, i16 20402, i16 20425, i16 20427, i16 20417, i16 20436, i16 20444, i16 20441, i16 20411, i16 20403, i16 20443, i16 20423, i16 20438, i16 20410, i16 20416, i16 20409, i16 20460, i16 21060, i16 21065, i16 21184, i16 21186, i16 21309, i16 21372, i16 21399, i16 21398, i16 21401, i16 21400, i16 21690, i16 21665, i16 21677, i16 21669, i16 21711, i16 21699, i16 -31987, i16 21687, i16 21678, i16 21718, i16 21686, i16 21701, i16 21702, i16 21664, i16 21616, i16 21692, i16 21666, i16 21694, i16 21618, i16 21726, i16 21680, i16 22453, i16 22430, i16 22431, i16 22436, i16 22412, i16 22423, i16 22429, i16 22427, i16 22420, i16 22424, i16 22415, i16 22425, i16 22437, i16 22426, i16 22421, i16 22772, i16 22797, i16 22867, i16 23009, i16 23006, i16 23022, i16 23040, i16 23025, i16 23005, i16 23034, i16 23037, i16 23036, i16 23030, i16 23012, i16 23026, i16 23031, i16 23003, i16 23017, i16 23027, i16 23029, i16 23008, i16 23038, i16 23028, i16 23021, i16 23464, i16 23628, i16 23760, i16 23768, i16 23756, i16 23767, i16 23755, i16 23771, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 23774, i16 23770, i16 23753, i16 23751, i16 23754, i16 23766, i16 23763, i16 23764, i16 23759, i16 23752, i16 23750, i16 23758, i16 23775, i16 23800, i16 24057, i16 24097, i16 24098, i16 24099, i16 24096, i16 24100, i16 24240, i16 24228, i16 24226, i16 24219, i16 24227, i16 24229, i16 24327, i16 24366, i16 24406, i16 24454, i16 24631, i16 24633, i16 24660, i16 24690, i16 24670, i16 24645, i16 24659, i16 24647, i16 24649, i16 24667, i16 24652, i16 24640, i16 24642, i16 24671, i16 24612, i16 24644, i16 24664, i16 24678, i16 24686, i16 25154, i16 25155, i16 25295, i16 25357, i16 25355, i16 25333, i16 25358, i16 25347, i16 25323, i16 25337, i16 25359, i16 25356, i16 25336, i16 25334, i16 25344, i16 25363, i16 25364, i16 25338, i16 25365, i16 25339, i16 25328, i16 25921, i16 25923, i16 26026, i16 26047, i16 26166, i16 26145, i16 26162, i16 26165, i16 26140, i16 26150, i16 26146, i16 26163, i16 26155, i16 26170, i16 26141, i16 26164, i16 26169, i16 26158, i16 26383, i16 26384, i16 26561, i16 26610, i16 26568, i16 26554, i16 26588, i16 26555, i16 26616, i16 26584, i16 26560, i16 26551, i16 26565, i16 26603, i16 26596, i16 26591, i16 26549, i16 26573, i16 26547, i16 26615, i16 26614, i16 26606, i16 26595, i16 26562, i16 26553, i16 26574, i16 26599, i16 26608, i16 26546, i16 26620, i16 26566, i16 26605, i16 26572, i16 26542, i16 26598, i16 26587, i16 26618, i16 26569, i16 26570, i16 26563, i16 26602, i16 26571, i16 27432, i16 27522, i16 27524, i16 27574, i16 27606, i16 27608, i16 27616, i16 27680, i16 27681, i16 27944, i16 27956, i16 27949, i16 27935, i16 27964, i16 27967, i16 27922, i16 27914, i16 27866, i16 27955, i16 27908, i16 27929, i16 27962, i16 27930, i16 27921, i16 27904, i16 27933, i16 27970, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 27905, i16 27928, i16 27959, i16 27907, i16 27919, i16 27968, i16 27911, i16 27936, i16 27948, i16 27912, i16 27938, i16 27913, i16 27920, i16 28855, i16 28831, i16 28862, i16 28849, i16 28848, i16 28833, i16 28852, i16 28853, i16 28841, i16 29249, i16 29257, i16 29258, i16 29292, i16 29296, i16 29299, i16 29294, i16 29386, i16 29412, i16 29416, i16 29419, i16 29407, i16 29418, i16 29414, i16 29411, i16 29573, i16 29644, i16 29634, i16 29640, i16 29637, i16 29625, i16 29622, i16 29621, i16 29620, i16 29675, i16 29631, i16 29639, i16 29630, i16 29635, i16 29638, i16 29624, i16 29643, i16 29932, i16 29934, i16 29998, i16 30023, i16 30024, i16 30119, i16 30122, i16 30329, i16 30404, i16 30472, i16 30467, i16 30468, i16 30469, i16 30474, i16 30455, i16 30459, i16 30458, i16 30695, i16 30696, i16 30726, i16 30737, i16 30738, i16 30725, i16 30736, i16 30735, i16 30734, i16 30729, i16 30723, i16 30739, i16 31050, i16 31052, i16 31051, i16 31045, i16 31044, i16 31189, i16 31181, i16 31183, i16 31190, i16 31182, i16 31360, i16 31358, i16 31441, i16 31488, i16 31489, i16 31866, i16 31864, i16 31865, i16 31871, i16 31872, i16 31873, i16 32003, i16 32008, i16 32001, i16 32600, i16 32657, i16 32653, i16 32702, i16 -32761, i16 -32754, i16 -32753, i16 -32748, i16 -32713, i16 -32552, i16 -32569, i16 -32544, i16 -32559, i16 -32568, i16 -32574, i16 -32560, i16 -32571, i16 -32541, i16 -32551, i16 -32548, i16 -32566, i16 -32555, i16 -32567, i16 -32561, i16 -32553, i16 -32538, i16 -32563, i16 -32257, i16 -32223, i16 -32108, i16 -32039, i16 -32002, i16 -32007, i16 -31993, i16 -32024, i16 -32000, i16 -32043, i16 -31942, i16 -32021, i16 -32042, i16 -32012, i16 -32020, i16 -32031, i16 -32014, i16 -32011, i16 -31988, i16 -32005, i16 -32010, i16 -32016, i16 -32022, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32028, i16 -32032, i16 -32006, i16 -32013, i16 -32019, i16 -31113, i16 -31116, i16 -31108, i16 -31117, i16 -30655, i16 -30642, i16 -30617, i16 -30614, i16 -30615, i16 -30253, i16 -30204, i16 -30201, i16 -29326, i16 -28701, i16 -28703, i16 -28690, i16 -28704, i16 -28431, i16 -28483, i16 -28481, i16 -28459, i16 -28475, i16 -28482, i16 -28473, i16 -28469, i16 -28472, i16 -28204, i16 -28205, i16 -27052, i16 -27057, i16 -27055, i16 -27053, i16 -27062, i16 -27058, i16 20510, i16 20485, i16 20487, i16 20499, i16 20514, i16 20528, i16 20507, i16 20469, i16 20468, i16 20531, i16 20535, i16 20524, i16 20470, i16 20471, i16 20503, i16 20508, i16 20512, i16 20519, i16 20533, i16 20527, i16 20529, i16 20494, i16 20826, i16 20884, i16 20883, i16 20938, i16 20932, i16 20933, i16 20936, i16 20942, i16 21089, i16 21082, i16 21074, i16 21086, i16 21087, i16 21077, i16 21090, i16 21197, i16 21262, i16 21406, i16 21798, i16 21730, i16 21783, i16 21778, i16 21735, i16 21747, i16 21732, i16 21786, i16 21759, i16 21764, i16 21768, i16 21739, i16 21777, i16 21765, i16 21745, i16 21770, i16 21755, i16 21751, i16 21752, i16 21728, i16 21774, i16 21763, i16 21771, i16 22273, i16 22274, i16 22476, i16 22578, i16 22485, i16 22482, i16 22458, i16 22470, i16 22461, i16 22460, i16 22456, i16 22454, i16 22463, i16 22471, i16 22480, i16 22457, i16 22465, i16 22798, i16 22858, i16 23065, i16 23062, i16 23085, i16 23086, i16 23061, i16 23055, i16 23063, i16 23050, i16 23070, i16 23091, i16 23404, i16 23463, i16 23469, i16 23468, i16 23555, i16 23638, i16 23636, i16 23788, i16 23807, i16 23790, i16 23793, i16 23799, i16 23808, i16 23801, i16 24105, i16 24104, i16 24232, i16 24238, i16 24234, i16 24236, i16 24371, i16 24368, i16 24423, i16 24669, i16 24666, i16 24679, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24641, i16 24738, i16 24712, i16 24704, i16 24722, i16 24705, i16 24733, i16 24707, i16 24725, i16 24731, i16 24727, i16 24711, i16 24732, i16 24718, i16 25113, i16 25158, i16 25330, i16 25360, i16 25430, i16 25388, i16 25412, i16 25413, i16 25398, i16 25411, i16 25572, i16 25401, i16 25419, i16 25418, i16 25404, i16 25385, i16 25409, i16 25396, i16 25432, i16 25428, i16 25433, i16 25389, i16 25415, i16 25395, i16 25434, i16 25425, i16 25400, i16 25431, i16 25408, i16 25416, i16 25930, i16 25926, i16 26054, i16 26051, i16 26052, i16 26050, i16 26186, i16 26207, i16 26183, i16 26193, i16 26386, i16 26387, i16 26655, i16 26650, i16 26697, i16 26674, i16 26675, i16 26683, i16 26699, i16 26703, i16 26646, i16 26673, i16 26652, i16 26677, i16 26667, i16 26669, i16 26671, i16 26702, i16 26692, i16 26676, i16 26653, i16 26642, i16 26644, i16 26662, i16 26664, i16 26670, i16 26701, i16 26682, i16 26661, i16 26656, i16 27436, i16 27439, i16 27437, i16 27441, i16 27444, i16 27501, i16 -32638, i16 27528, i16 27622, i16 27620, i16 27624, i16 27619, i16 27618, i16 27623, i16 27685, i16 28026, i16 28003, i16 28004, i16 28022, i16 27917, i16 28001, i16 28050, i16 27992, i16 28002, i16 28013, i16 28015, i16 28049, i16 28045, i16 28143, i16 28031, i16 28038, i16 27998, i16 28007, i16 28000, i16 28055, i16 28016, i16 28028, i16 27999, i16 28034, i16 28056, i16 27951, i16 28008, i16 28043, i16 28030, i16 28032, i16 28036, i16 27926, i16 28035, i16 28027, i16 28029, i16 28021, i16 28048, i16 28892, i16 28883, i16 28881, i16 28893, i16 28875, i16 32569, i16 28898, i16 28887, i16 28882, i16 28894, i16 28896, i16 28884, i16 28877, i16 28869, i16 28870, i16 28871, i16 28890, i16 28878, i16 28897, i16 29250, i16 29304, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29303, i16 29302, i16 29440, i16 29434, i16 29428, i16 29438, i16 29430, i16 29427, i16 29435, i16 29441, i16 29651, i16 29657, i16 29669, i16 29654, i16 29628, i16 29671, i16 29667, i16 29673, i16 29660, i16 29650, i16 29659, i16 29652, i16 29661, i16 29658, i16 29655, i16 29656, i16 29672, i16 29918, i16 29919, i16 29940, i16 29941, i16 29985, i16 30043, i16 30047, i16 30128, i16 30145, i16 30139, i16 30148, i16 30144, i16 30143, i16 30134, i16 30138, i16 30346, i16 30409, i16 30493, i16 30491, i16 30480, i16 30483, i16 30482, i16 30499, i16 30481, i16 30485, i16 30489, i16 30490, i16 30498, i16 30503, i16 30755, i16 30764, i16 30754, i16 30773, i16 30767, i16 30760, i16 30766, i16 30763, i16 30753, i16 30761, i16 30771, i16 30762, i16 30769, i16 31060, i16 31067, i16 31055, i16 31068, i16 31059, i16 31058, i16 31057, i16 31211, i16 31212, i16 31200, i16 31214, i16 31213, i16 31210, i16 31196, i16 31198, i16 31197, i16 31366, i16 31369, i16 31365, i16 31371, i16 31372, i16 31370, i16 31367, i16 31448, i16 31504, i16 31492, i16 31507, i16 31493, i16 31503, i16 31496, i16 31498, i16 31502, i16 31497, i16 31506, i16 31876, i16 31889, i16 31882, i16 31884, i16 31880, i16 31885, i16 31877, i16 32030, i16 32029, i16 32017, i16 32014, i16 32024, i16 32022, i16 32019, i16 32031, i16 32018, i16 32015, i16 32012, i16 32604, i16 32609, i16 32606, i16 32608, i16 32605, i16 32603, i16 32662, i16 32658, i16 32707, i16 32706, i16 32704, i16 -32746, i16 -32706, i16 -32711, i16 -32518, i16 -32526, i16 -32519, i16 -32523, i16 -32511, i16 -32517, i16 -32512, i16 -32255, i16 -32209, i16 -32219, i16 -31949, i16 -31955, i16 -31932, i16 -31975, i16 -31919, i16 -31963, i16 -31914, i16 -31937, i16 -31935, i16 -31962, i16 -31972, i16 -31966, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -31934, i16 -31922, i16 -31973, i16 -31958, i16 -31992, i16 -31940, i16 -31923, i16 -31978, i16 -31964, i16 -31968, i16 -31945, i16 -31953, i16 -31959, i16 -31929, i16 -31931, i16 -31924, i16 -31917, i16 -31970, i16 -31956, i16 -31925, i16 -31961, i16 -31928, i16 -31149, i16 -31150, i16 -31070, i16 -31064, i16 -31082, i16 -31091, i16 -31087, i16 -31074, i16 -31097, i16 -31081, i16 -31098, i16 -31093, i16 -31078, i16 -31099, i16 -31067, i16 -31079, i16 -31071, i16 -31065, i16 -31083, i16 -31080, i16 -31090, i16 -31075, i16 -31088, i16 -31084, i16 -30653, i16 -30652, i16 -30611, i16 -30603, i16 -30602, i16 -30606, i16 -30592, i16 -30607, i16 -30593, i16 -30609, i16 -30589, i16 -30594, i16 -30604, i16 -30596, i16 -30190, i16 -29625, i16 -29609, i16 -29573, i16 -29532, i16 -29533, i16 -29322, i16 -29320, i16 -29259, i16 -29257, i16 -29258, i16 -28975, i16 -28973, i16 -28674, i16 -28683, i16 -28670, i16 -28673, i16 -28677, i16 -28668, i16 -28676, i16 -28682, i16 -28458, i16 -28448, i16 -28455, i16 -28454, i16 -28445, i16 -28449, i16 -28443, i16 -28456, i16 -28453, i16 -28457, i16 -28452, i16 -28444, i16 -28336, i16 -28338, i16 -28337, i16 -28203, i16 -28190, i16 -28198, i16 -27044, i16 -27041, i16 -26948, i16 -26397, i16 -25889, i16 -25809, i16 20095, i16 20592, i16 20586, i16 20577, i16 20574, i16 20576, i16 20563, i16 20555, i16 20573, i16 20594, i16 20552, i16 20557, i16 20545, i16 20571, i16 20554, i16 20578, i16 20501, i16 20549, i16 20575, i16 20585, i16 20587, i16 20579, i16 20580, i16 20550, i16 20544, i16 20590, i16 20595, i16 20567, i16 20561, i16 20944, i16 21099, i16 21101, i16 21100, i16 21102, i16 21206, i16 21203, i16 21293, i16 21404, i16 21877, i16 21878, i16 21820, i16 21837, i16 21840, i16 21812, i16 21802, i16 21841, i16 21858, i16 21814, i16 21813, i16 21808, i16 21842, i16 21829, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 21772, i16 21810, i16 21861, i16 21838, i16 21817, i16 21832, i16 21805, i16 21819, i16 21824, i16 21835, i16 22282, i16 22279, i16 22523, i16 22548, i16 22498, i16 22518, i16 22492, i16 22516, i16 22528, i16 22509, i16 22525, i16 22536, i16 22520, i16 22539, i16 22515, i16 22479, i16 22535, i16 22510, i16 22499, i16 22514, i16 22501, i16 22508, i16 22497, i16 22542, i16 22524, i16 22544, i16 22503, i16 22529, i16 22540, i16 22513, i16 22505, i16 22512, i16 22541, i16 22532, i16 22876, i16 23136, i16 23128, i16 23125, i16 23143, i16 23134, i16 23096, i16 23093, i16 23149, i16 23120, i16 23135, i16 23141, i16 23148, i16 23123, i16 23140, i16 23127, i16 23107, i16 23133, i16 23122, i16 23108, i16 23131, i16 23112, i16 23182, i16 23102, i16 23117, i16 23097, i16 23116, i16 23152, i16 23145, i16 23111, i16 23121, i16 23126, i16 23106, i16 23132, i16 23410, i16 23406, i16 23489, i16 23488, i16 23641, i16 23838, i16 23819, i16 23837, i16 23834, i16 23840, i16 23820, i16 23848, i16 23821, i16 23846, i16 23845, i16 23823, i16 23856, i16 23826, i16 23843, i16 23839, i16 23854, i16 24126, i16 24116, i16 24241, i16 24244, i16 24249, i16 24242, i16 24243, i16 24374, i16 24376, i16 24475, i16 24470, i16 24479, i16 24714, i16 24720, i16 24710, i16 24766, i16 24752, i16 24762, i16 24787, i16 24788, i16 24783, i16 24804, i16 24793, i16 24797, i16 24776, i16 24753, i16 24795, i16 24759, i16 24778, i16 24767, i16 24771, i16 24781, i16 24768, i16 25394, i16 25445, i16 25482, i16 25474, i16 25469, i16 25533, i16 25502, i16 25517, i16 25501, i16 25495, i16 25515, i16 25486, i16 25455, i16 25479, i16 25488, i16 25454, i16 25519, i16 25461, i16 25500, i16 25453, i16 25518, i16 25468, i16 25508, i16 25403, i16 25503, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 25464, i16 25477, i16 25473, i16 25489, i16 25485, i16 25456, i16 25939, i16 26061, i16 26213, i16 26209, i16 26203, i16 26201, i16 26204, i16 26210, i16 26392, i16 26745, i16 26759, i16 26768, i16 26780, i16 26733, i16 26734, i16 26798, i16 26795, i16 26966, i16 26735, i16 26787, i16 26796, i16 26793, i16 26741, i16 26740, i16 26802, i16 26767, i16 26743, i16 26770, i16 26748, i16 26731, i16 26738, i16 26794, i16 26752, i16 26737, i16 26750, i16 26779, i16 26774, i16 26763, i16 26784, i16 26761, i16 26788, i16 26744, i16 26747, i16 26769, i16 26764, i16 26762, i16 26749, i16 27446, i16 27443, i16 27447, i16 27448, i16 27537, i16 27535, i16 27533, i16 27534, i16 27532, i16 27690, i16 28096, i16 28075, i16 28084, i16 28083, i16 28276, i16 28076, i16 28137, i16 28130, i16 28087, i16 28150, i16 28116, i16 28160, i16 28104, i16 28128, i16 28127, i16 28118, i16 28094, i16 28133, i16 28124, i16 28125, i16 28123, i16 28148, i16 28106, i16 28093, i16 28141, i16 28144, i16 28090, i16 28117, i16 28098, i16 28111, i16 28105, i16 28112, i16 28146, i16 28115, i16 28157, i16 28119, i16 28109, i16 28131, i16 28091, i16 28922, i16 28941, i16 28919, i16 28951, i16 28916, i16 28940, i16 28912, i16 28932, i16 28915, i16 28944, i16 28924, i16 28927, i16 28934, i16 28947, i16 28928, i16 28920, i16 28918, i16 28939, i16 28930, i16 28942, i16 29310, i16 29307, i16 29308, i16 29311, i16 29469, i16 29463, i16 29447, i16 29457, i16 29464, i16 29450, i16 29448, i16 29439, i16 29455, i16 29470, i16 29576, i16 29686, i16 29688, i16 29685, i16 29700, i16 29697, i16 29693, i16 29703, i16 29696, i16 29690, i16 29692, i16 29695, i16 29708, i16 29707, i16 29684, i16 29704, i16 30052, i16 30051, i16 30158, i16 30162, i16 30159, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30155, i16 30156, i16 30161, i16 30160, i16 30351, i16 30345, i16 30419, i16 30521, i16 30511, i16 30509, i16 30513, i16 30514, i16 30516, i16 30515, i16 30525, i16 30501, i16 30523, i16 30517, i16 30792, i16 30802, i16 30793, i16 30797, i16 30794, i16 30796, i16 30758, i16 30789, i16 30800, i16 31076, i16 31079, i16 31081, i16 31082, i16 31075, i16 31083, i16 31073, i16 31163, i16 31226, i16 31224, i16 31222, i16 31223, i16 31375, i16 31380, i16 31376, i16 31541, i16 31559, i16 31540, i16 31525, i16 31536, i16 31522, i16 31524, i16 31539, i16 31512, i16 31530, i16 31517, i16 31537, i16 31531, i16 31533, i16 31535, i16 31538, i16 31544, i16 31514, i16 31523, i16 31892, i16 31896, i16 31894, i16 31907, i16 32053, i16 32061, i16 32056, i16 32054, i16 32058, i16 32069, i16 32044, i16 32041, i16 32065, i16 32071, i16 32062, i16 32063, i16 32074, i16 32059, i16 32040, i16 32611, i16 32661, i16 32668, i16 32669, i16 32667, i16 32714, i16 32715, i16 32717, i16 32720, i16 32721, i16 32711, i16 32719, i16 32713, i16 -32737, i16 -32738, i16 -32741, i16 -32697, i16 -32701, i16 -32696, i16 -32488, i16 -32475, i16 -32487, i16 -32485, i16 -32467, i16 -32481, i16 -32468, i16 -32482, i16 -32479, i16 -32491, i16 -32473, i16 -32483, i16 -32478, i16 -32239, i16 -32200, i16 -32205, i16 -32198, i16 -32204, i16 -32206, i16 -32140, i16 -31856, i16 -31837, i16 -31832, i16 -31859, i16 -31878, i16 -31885, i16 -31836, i16 -31884, i16 -31857, i16 -31871, i16 -31851, i16 -31847, i16 -31883, i16 -31852, i16 -31831, i16 -31875, i16 -31869, i16 -31860, i16 -31843, i16 -31845, i16 -31830, i16 -31861, i16 -31874, i16 -31835, i16 -31825, i16 -31864, i16 -31849, i16 -31824, i16 -31873, i16 -31834, i16 -31865, i16 -31826, i16 -31882, i16 -31846, i16 -31143, i16 -31146, i16 -31041, i16 -31049, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -31038, i16 -31039, i16 -31035, i16 -31046, i16 -31056, i16 -31032, i16 -31047, i16 -31053, i16 -31048, i16 -31028, i16 -31052, i16 -31045, i16 -31044, i16 -31037, i16 -31043, i16 -31042, i16 -30638, i16 -30583, i16 -30571, i16 -30552, i16 -30558, i16 -30550, i16 -30566, i16 -30575, i16 -30559, i16 -30561, i16 -30568, i16 -30553, i16 -30567, i16 -30565, i16 -30569, i16 -30556, i16 -30548, i16 -30580, i16 -30573, i16 -30578, i16 -30334, i16 -30250, i16 -30247, i16 -30251, i16 -30160, i16 -30169, i16 -30164, i16 -30178, i16 -29639, i16 -29637, i16 -29604, i16 -29603, i16 -29571, i16 -29531, i16 -29315, i16 -29317, i16 -29319, i16 -29252, i16 -29246, i16 -29255, i16 -29249, i16 -29247, i16 -28968, i16 -28962, i16 -28963, i16 -28964, i16 -28969, i16 -28960, i16 -28959, i16 -28636, i16 -28661, i16 -28655, i16 -28644, i16 -28660, i16 -28639, i16 -28433, i16 -28438, i16 -28432, i16 -28428, i16 -28430, i16 -28429, i16 -28460, i16 -28437, i16 -28436, i16 -28439, i16 -28330, i16 -28328, i16 -28326, i16 -28333, i16 -28331, i16 -28180, i16 -28172, i16 -28175, i16 -28173, i16 -28168, i16 -28188, i16 -28167, i16 -28182, i16 -28181, i16 -28169, i16 -28184, i16 -28178, i16 -27270, i16 -27258, i16 -27256, i16 -27012, i16 -27027, i16 -27029, i16 -27023, i16 -27025, i16 -26945, i16 -26774, i16 -26620, i16 -26395, i16 -26217, i16 20635, i16 20629, i16 20628, i16 20638, i16 20619, i16 20643, i16 20611, i16 20620, i16 20622, i16 20637, i16 20584, i16 20636, i16 20626, i16 20610, i16 20615, i16 20831, i16 20948, i16 21266, i16 21265, i16 21412, i16 21415, i16 21905, i16 21928, i16 21925, i16 21933, i16 21879, i16 22085, i16 21922, i16 21907, i16 21896, i16 21903, i16 21941, i16 21889, i16 21923, i16 21906, i16 21924, i16 21885, i16 21900, i16 21926, i16 21887, i16 21909, i16 21921, i16 21902, i16 22284, i16 22569, i16 22583, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 22553, i16 22558, i16 22567, i16 22563, i16 22568, i16 22517, i16 22600, i16 22565, i16 22556, i16 22555, i16 22579, i16 22591, i16 22582, i16 22574, i16 22585, i16 22584, i16 22573, i16 22572, i16 22587, i16 22881, i16 23215, i16 23188, i16 23199, i16 23162, i16 23202, i16 23198, i16 23160, i16 23206, i16 23164, i16 23205, i16 23212, i16 23189, i16 23214, i16 23095, i16 23172, i16 23178, i16 23191, i16 23171, i16 23179, i16 23209, i16 23163, i16 23165, i16 23180, i16 23196, i16 23183, i16 23187, i16 23197, i16 23530, i16 23501, i16 23499, i16 23508, i16 23505, i16 23498, i16 23502, i16 23564, i16 23600, i16 23863, i16 23875, i16 23915, i16 23873, i16 23883, i16 23871, i16 23861, i16 23889, i16 23886, i16 23893, i16 23859, i16 23866, i16 23890, i16 23869, i16 23857, i16 23897, i16 23874, i16 23865, i16 23881, i16 23864, i16 23868, i16 23858, i16 23862, i16 23872, i16 23877, i16 24132, i16 24129, i16 24408, i16 24486, i16 24485, i16 24491, i16 24777, i16 24761, i16 24780, i16 24802, i16 24782, i16 24772, i16 24852, i16 24818, i16 24842, i16 24854, i16 24837, i16 24821, i16 24851, i16 24824, i16 24828, i16 24830, i16 24769, i16 24835, i16 24856, i16 24861, i16 24848, i16 24831, i16 24836, i16 24843, i16 25162, i16 25492, i16 25521, i16 25520, i16 25550, i16 25573, i16 25576, i16 25583, i16 25539, i16 25757, i16 25587, i16 25546, i16 25568, i16 25590, i16 25557, i16 25586, i16 25589, i16 25697, i16 25567, i16 25534, i16 25565, i16 25564, i16 25540, i16 25560, i16 25555, i16 25538, i16 25543, i16 25548, i16 25547, i16 25544, i16 25584, i16 25559, i16 25561, i16 25906, i16 25959, i16 25962, i16 25956, i16 25948, i16 25960, i16 25957, i16 25996, i16 26013, i16 26014, i16 26030, i16 26064, i16 26066, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 26236, i16 26220, i16 26235, i16 26240, i16 26225, i16 26233, i16 26218, i16 26226, i16 26369, i16 26892, i16 26835, i16 26884, i16 26844, i16 26922, i16 26860, i16 26858, i16 26865, i16 26895, i16 26838, i16 26871, i16 26859, i16 26852, i16 26870, i16 26899, i16 26896, i16 26867, i16 26849, i16 26887, i16 26828, i16 26888, i16 26992, i16 26804, i16 26897, i16 26863, i16 26822, i16 26900, i16 26872, i16 26832, i16 26877, i16 26876, i16 26856, i16 26891, i16 26890, i16 26903, i16 26830, i16 26824, i16 26845, i16 26846, i16 26854, i16 26868, i16 26833, i16 26886, i16 26836, i16 26857, i16 26901, i16 26917, i16 26823, i16 27449, i16 27451, i16 27455, i16 27452, i16 27540, i16 27543, i16 27545, i16 27541, i16 27581, i16 27632, i16 27634, i16 27635, i16 27696, i16 28156, i16 28230, i16 28231, i16 28191, i16 28233, i16 28296, i16 28220, i16 28221, i16 28229, i16 28258, i16 28203, i16 28223, i16 28225, i16 28253, i16 28275, i16 28188, i16 28211, i16 28235, i16 28224, i16 28241, i16 28219, i16 28163, i16 28206, i16 28254, i16 28264, i16 28252, i16 28257, i16 28209, i16 28200, i16 28256, i16 28273, i16 28267, i16 28217, i16 28194, i16 28208, i16 28243, i16 28261, i16 28199, i16 28280, i16 28260, i16 28279, i16 28245, i16 28281, i16 28242, i16 28262, i16 28213, i16 28214, i16 28250, i16 28960, i16 28958, i16 28975, i16 28923, i16 28974, i16 28977, i16 28963, i16 28965, i16 28962, i16 28978, i16 28959, i16 28968, i16 28986, i16 28955, i16 29259, i16 29274, i16 29320, i16 29321, i16 29318, i16 29317, i16 29323, i16 29458, i16 29451, i16 29488, i16 29474, i16 29489, i16 29491, i16 29479, i16 29490, i16 29485, i16 29478, i16 29475, i16 29493, i16 29452, i16 29742, i16 29740, i16 29744, i16 29739, i16 29718, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29722, i16 29729, i16 29741, i16 29745, i16 29732, i16 29731, i16 29725, i16 29737, i16 29728, i16 29746, i16 29947, i16 29999, i16 30063, i16 30060, i16 30183, i16 30170, i16 30177, i16 30182, i16 30173, i16 30175, i16 30180, i16 30167, i16 30357, i16 30354, i16 30426, i16 30534, i16 30535, i16 30532, i16 30541, i16 30533, i16 30538, i16 30542, i16 30539, i16 30540, i16 30686, i16 30700, i16 30816, i16 30820, i16 30821, i16 30812, i16 30829, i16 30833, i16 30826, i16 30830, i16 30832, i16 30825, i16 30824, i16 30814, i16 30818, i16 31092, i16 31091, i16 31090, i16 31088, i16 31234, i16 31242, i16 31235, i16 31244, i16 31236, i16 31385, i16 31462, i16 31460, i16 31562, i16 31547, i16 31556, i16 31560, i16 31564, i16 31566, i16 31552, i16 31576, i16 31557, i16 31906, i16 31902, i16 31912, i16 31905, i16 32088, i16 32111, i16 32099, i16 32083, i16 32086, i16 32103, i16 32106, i16 32079, i16 32109, i16 32092, i16 32107, i16 32082, i16 32084, i16 32105, i16 32081, i16 32095, i16 32078, i16 32574, i16 32575, i16 32613, i16 32614, i16 32674, i16 32672, i16 32673, i16 32727, i16 -32687, i16 -32689, i16 -32688, i16 -32514, i16 -32556, i16 -32445, i16 -32438, i16 -32430, i16 -32433, i16 -32441, i16 -32451, i16 -32435, i16 -32454, i16 -32282, i16 -32274, i16 -32265, i16 -32264, i16 -32263, i16 -32252, i16 -32196, i16 -32195, i16 -32193, i16 -32139, i16 -31941, i16 -31793, i16 -31751, i16 -31709, i16 -31808, i16 -31768, i16 -31726, i16 -31769, i16 -31772, i16 -31748, i16 -31754, i16 -31728, i16 -31802, i16 -31800, i16 -31765, i16 -31773, i16 -31809, i16 -31743, i16 -31779, i16 -31771, i16 -31784, i16 -31745, i16 -31775, i16 -31797, i16 -31794, i16 -31786, i16 -31755, i16 -31799, i16 -31735, i16 -31729, i16 -31778, i16 -31727, i16 -31738, i16 -31806, i16 -31757, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -31787, i16 -31750, i16 -31801, i16 -31791, i16 -31766, i16 -31725, i16 -31805, i16 -31764, i16 -31762, i16 -31804, i16 -31749, i16 -31785, i16 -31774, i16 -31717, i16 -31781, i16 -31746, i16 -31016, i16 -31006, i16 -31002, i16 -31021, i16 -31005, i16 -31014, i16 -30998, i16 -31011, i16 -30997, i16 -31012, i16 -30996, i16 -30999, i16 -31017, i16 -31000, i16 -31023, i16 -30648, i16 -30634, i16 -30635, i16 -30534, i16 -30505, i16 -30535, i16 -30536, i16 -30528, i16 -30530, i16 -30538, i16 -30532, i16 -30537, i16 -30531, i16 -30542, i16 -30463, i16 -30519, i16 -30315, i16 -30312, i16 -30313, i16 -30243, i16 -30246, i16 -30245, i16 -30130, i16 -30131, i16 -30151, i16 -30119, i16 -30144, i16 -30121, i16 -30120, i16 -30140, i16 -30139, i16 -30126, i16 -30136, i16 -30127, i16 -30134, i16 -30132, i16 -30129, i16 -29601, i16 -29567, i16 -29568, i16 -29510, i16 -29506, i16 -29520, i16 -29511, i16 -29515, i16 -29308, i16 -29312, i16 -29303, i16 -29224, i16 -29229, i16 -29235, i16 -29241, i16 -29226, i16 -29220, i16 -29233, i16 -29227, i16 -29223, i16 -29240, i16 -29225, i16 -29243, i16 -28945, i16 -28937, i16 -28934, i16 -28935, i16 -28954, i16 -28946, i16 -28955, i16 -28939, i16 -28953, i16 -28952, i16 -28938, i16 -28949, i16 -28943, i16 -28948, i16 -28940, i16 -28951, i16 -28627, i16 -28620, i16 -28625, i16 -28410, i16 -28372, i16 -28412, i16 -28417, i16 -28420, i16 -28408, i16 -28423, i16 -28421, i16 -28415, i16 -28416, i16 -28409, i16 -28411, i16 -28413, i16 -28319, i16 -28316, i16 -28321, i16 -28318, i16 -28320, i16 -28159, i16 -28150, i16 -28123, i16 -28157, i16 -28134, i16 -28122, i16 -28145, i16 -28148, i16 -28160, i16 -28142, i16 -28161, i16 -28163, i16 -28154, i16 -28156, i16 -28121, i16 -28158, i16 -28132, i16 -28124, i16 -28135, i16 -28137, i16 -28155, i16 -28138, i16 -27269, i16 -27251, i16 -27252, i16 -27248, i16 -27001, i16 -27010, i16 -27000, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26999, i16 -27005, i16 -27008, i16 -26942, i16 -26936, i16 -26941, i16 -26895, i16 -26896, i16 -26772, i16 -26768, i16 -26770, i16 -26617, i16 -26455, i16 -26389, i16 -25370, i16 -24839, i16 20099, i16 20100, i16 20150, i16 20669, i16 20671, i16 20678, i16 20654, i16 20676, i16 20682, i16 20660, i16 20680, i16 20674, i16 20656, i16 20673, i16 20666, i16 20657, i16 20683, i16 20681, i16 20662, i16 20664, i16 20951, i16 21114, i16 21112, i16 21115, i16 21116, i16 21955, i16 21979, i16 21964, i16 21968, i16 21963, i16 21962, i16 21981, i16 21952, i16 21972, i16 21956, i16 21993, i16 21951, i16 21970, i16 21901, i16 21967, i16 21973, i16 21986, i16 21974, i16 21960, i16 22002, i16 21965, i16 21977, i16 21954, i16 22292, i16 22611, i16 22632, i16 22628, i16 22607, i16 22605, i16 22601, i16 22639, i16 22613, i16 22606, i16 22621, i16 22617, i16 22629, i16 22619, i16 22589, i16 22627, i16 22641, i16 22780, i16 23239, i16 23236, i16 23243, i16 23226, i16 23224, i16 23217, i16 23221, i16 23216, i16 23231, i16 23240, i16 23227, i16 23238, i16 23223, i16 23232, i16 23242, i16 23220, i16 23222, i16 23245, i16 23225, i16 23184, i16 23510, i16 23512, i16 23513, i16 23583, i16 23603, i16 23921, i16 23907, i16 23882, i16 23909, i16 23922, i16 23916, i16 23902, i16 23912, i16 23911, i16 23906, i16 24048, i16 24143, i16 24142, i16 24138, i16 24141, i16 24139, i16 24261, i16 24268, i16 24262, i16 24267, i16 24263, i16 24384, i16 24495, i16 24493, i16 24823, i16 24905, i16 24906, i16 24875, i16 24901, i16 24886, i16 24882, i16 24878, i16 24902, i16 24879, i16 24911, i16 24873, i16 24896, i16 25120, i16 -28312, i16 25123, i16 25125, i16 25124, i16 25541, i16 25585, i16 25579, i16 25616, i16 25618, i16 25609, i16 25632, i16 25636, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 25651, i16 25667, i16 25631, i16 25621, i16 25624, i16 25657, i16 25655, i16 25634, i16 25635, i16 25612, i16 25638, i16 25648, i16 25640, i16 25665, i16 25653, i16 25647, i16 25610, i16 25626, i16 25664, i16 25637, i16 25639, i16 25611, i16 25575, i16 25627, i16 25646, i16 25633, i16 25614, i16 25967, i16 26002, i16 26067, i16 26246, i16 26252, i16 26261, i16 26256, i16 26251, i16 26250, i16 26265, i16 26260, i16 26232, i16 26400, i16 26982, i16 26975, i16 26936, i16 26958, i16 26978, i16 26993, i16 26943, i16 26949, i16 26986, i16 26937, i16 26946, i16 26967, i16 26969, i16 27002, i16 26952, i16 26953, i16 26933, i16 26988, i16 26931, i16 26941, i16 26981, i16 26864, i16 27000, i16 26932, i16 26985, i16 26944, i16 26991, i16 26948, i16 26998, i16 26968, i16 26945, i16 26996, i16 26956, i16 26939, i16 26955, i16 26935, i16 26972, i16 26959, i16 26961, i16 26930, i16 26962, i16 26927, i16 27003, i16 26940, i16 27462, i16 27461, i16 27459, i16 27458, i16 27464, i16 27457, i16 27547, i16 -1523, i16 27643, i16 27644, i16 27641, i16 27639, i16 27640, i16 28315, i16 28374, i16 28360, i16 28303, i16 28352, i16 28319, i16 28307, i16 28308, i16 28320, i16 28337, i16 28345, i16 28358, i16 28370, i16 28349, i16 28353, i16 28318, i16 28361, i16 28343, i16 28336, i16 28365, i16 28326, i16 28367, i16 28338, i16 28350, i16 28355, i16 28380, i16 28376, i16 28313, i16 28306, i16 28302, i16 28301, i16 28324, i16 28321, i16 28351, i16 28339, i16 28368, i16 28362, i16 28311, i16 28334, i16 28323, i16 28999, i16 29012, i16 29010, i16 29027, i16 29024, i16 28993, i16 29021, i16 29026, i16 29042, i16 29048, i16 29034, i16 29025, i16 28994, i16 29016, i16 28995, i16 29003, i16 29040, i16 29023, i16 29008, i16 29011, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 28996, i16 29005, i16 29018, i16 29263, i16 29325, i16 29324, i16 29329, i16 29328, i16 29326, i16 29500, i16 29506, i16 29499, i16 29498, i16 29504, i16 29514, i16 29513, i16 29764, i16 29770, i16 29771, i16 29778, i16 29777, i16 29783, i16 29760, i16 29775, i16 29776, i16 29774, i16 29762, i16 29766, i16 29773, i16 29780, i16 29921, i16 29951, i16 29950, i16 29949, i16 29981, i16 30073, i16 30071, i16 27011, i16 30191, i16 30223, i16 30211, i16 30199, i16 30206, i16 30204, i16 30201, i16 30200, i16 30224, i16 30203, i16 30198, i16 30189, i16 30197, i16 30205, i16 30361, i16 30389, i16 30429, i16 30549, i16 30559, i16 30560, i16 30546, i16 30550, i16 30554, i16 30569, i16 30567, i16 30548, i16 30553, i16 30573, i16 30688, i16 30855, i16 30874, i16 30868, i16 30863, i16 30852, i16 30869, i16 30853, i16 30854, i16 30881, i16 30851, i16 30841, i16 30873, i16 30848, i16 30870, i16 30843, i16 31100, i16 31106, i16 31101, i16 31097, i16 31249, i16 31256, i16 31257, i16 31250, i16 31255, i16 31253, i16 31266, i16 31251, i16 31259, i16 31248, i16 31395, i16 31394, i16 31390, i16 31467, i16 31590, i16 31588, i16 31597, i16 31604, i16 31593, i16 31602, i16 31589, i16 31603, i16 31601, i16 31600, i16 31585, i16 31608, i16 31606, i16 31587, i16 31922, i16 31924, i16 31919, i16 32136, i16 32134, i16 32128, i16 32141, i16 32127, i16 32133, i16 32122, i16 32142, i16 32123, i16 32131, i16 32124, i16 32140, i16 32148, i16 32132, i16 32125, i16 32146, i16 32621, i16 32619, i16 32615, i16 32616, i16 32620, i16 32678, i16 32677, i16 32679, i16 32731, i16 32732, i16 -32735, i16 -32412, i16 -32416, i16 -32393, i16 -32420, i16 -32407, i16 -32421, i16 -32414, i16 -32398, i16 26401, i16 -32418, i16 -32394, i16 -32409, i16 -32401, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32444, i16 -32415, i16 -32227, i16 -32183, i16 -32188, i16 -32192, i16 -32190, i16 -32187, i16 -31503, i16 -31681, i16 -31658, i16 -31626, i16 -31623, i16 -31601, i16 -31603, i16 -31643, i16 -31663, i16 -31680, i16 -31610, i16 -31641, i16 -31696, i16 -31667, i16 -31619, i16 -31654, i16 -31655, i16 -31628, i16 -31629, i16 -31651, i16 -31481, i16 -31650, i16 -31689, i16 -31686, i16 -31692, i16 -31622, i16 -31677, i16 -31624, i16 -31694, i16 -31675, i16 -31703, i16 -31783, i16 -31669, i16 -31697, i16 -31678, i16 -31699, i16 -31649, i16 -31632, i16 -31687, i16 -31666, i16 -31668, i16 -31662, i16 -31633, i16 -31547, i16 -31602, i16 -31685, i16 -31673, i16 -31690, i16 -31693, i16 -31640, i16 -31618, i16 -31676, i16 -31701, i16 -31648, i16 -31660, i16 -31634, i16 -31664, i16 -30965, i16 -30972, i16 -30985, i16 -30964, i16 -30982, i16 -31018, i16 -30987, i16 -30899, i16 -30984, i16 -30962, i16 -30967, i16 -30975, i16 -30986, i16 -30963, i16 -30971, i16 -30506, i16 -30517, i16 -30515, i16 -30514, i16 -30498, i16 -30501, i16 -30502, i16 -30516, i16 -30512, i16 -30331, i16 -30309, i16 -30241, i16 -30235, i16 -30236, i16 -30239, i16 -30240, i16 -30238, i16 -30244, i16 -30234, i16 -30090, i16 -30074, i16 -30081, i16 -30111, i16 -30145, i16 -30089, i16 -30078, i16 -30076, i16 -30091, i16 -30077, i16 -30079, i16 -30092, i16 -30086, i16 -29636, i16 -29621, i16 -29622, i16 -29595, i16 -29596, i16 -29594, i16 -29562, i16 -29564, i16 -29563, i16 -29492, i16 -29336, i16 -29335, i16 -29295, i16 -29300, i16 -29298, i16 -29297, i16 -29299, i16 -29293, i16 -29292, i16 -29296, i16 -29294, i16 -29200, i16 -29216, i16 -29204, i16 -29199, i16 -29202, i16 -29232, i16 -29207, i16 -29213, i16 -29214, i16 -29209, i16 -29198, i16 -29205, i16 -29196, i16 -28922, i16 -28929, i16 -28927, i16 -28928, i16 -28923, i16 -28921, i16 -28920, i16 -28926, i16 -28917, i16 -28590, i16 -28609, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -28604, i16 -28599, i16 -28611, i16 -28400, i16 -28403, i16 -28401, i16 -28399, i16 -28394, i16 -28396, i16 -28405, i16 -28402, i16 -28306, i16 -28305, i16 -28088, i16 -28078, i16 -28112, i16 -28102, i16 -28058, i16 -28109, i16 -28059, i16 -28066, i16 -28029, i16 -28114, i16 -28086, i16 -28090, i16 -28051, i16 -28052, i16 -28081, i16 -28064, i16 -28057, i16 -28049, i16 -28106, i16 -28063, i16 -28048, i16 -28111, i16 -28076, i16 -28061, i16 -28080, i16 -28046, i16 -28082, i16 -28077, i16 -28084, i16 -28074, i16 -28110, i16 -27233, i16 -27236, i16 -27234, i16 -27237, i16 -26990, i16 -26989, i16 -26991, i16 -26985, i16 -26930, i16 -26886, i16 -26883, i16 -26888, i16 -26891, i16 -26765, i16 -26761, i16 -26760, i16 -26766, i16 -26609, i16 -26611, i16 -26610, i16 -26452, i16 -26378, i16 -26375, i16 -26193, i16 -26190, i16 -26192, i16 -26187, i16 -25939, i16 -25941, i16 -25765, i16 -25366, i16 -25363, i16 -25369, i16 -24960, i16 -24835, i16 20710, i16 20692, i16 20695, i16 20712, i16 20723, i16 20699, i16 20714, i16 20701, i16 20708, i16 20691, i16 20716, i16 20720, i16 20719, i16 20707, i16 20704, i16 20952, i16 21120, i16 21121, i16 21225, i16 21227, i16 21296, i16 21420, i16 22055, i16 22037, i16 22028, i16 22034, i16 22012, i16 22031, i16 22044, i16 22017, i16 22035, i16 22018, i16 22010, i16 22045, i16 22020, i16 22015, i16 22009, i16 22665, i16 22652, i16 22672, i16 22680, i16 22662, i16 22657, i16 22655, i16 22644, i16 22667, i16 22650, i16 22663, i16 22673, i16 22670, i16 22646, i16 22658, i16 22664, i16 22651, i16 22676, i16 22671, i16 22782, i16 22891, i16 23260, i16 23278, i16 23269, i16 23253, i16 23274, i16 23258, i16 23277, i16 23275, i16 23283, i16 23266, i16 23264, i16 23259, i16 23276, i16 23262, i16 23261, i16 23257, i16 23272, i16 23263, i16 23415, i16 23520, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 23523, i16 23651, i16 23938, i16 23936, i16 23933, i16 23942, i16 23930, i16 23937, i16 23927, i16 23946, i16 23945, i16 23944, i16 23934, i16 23932, i16 23949, i16 23929, i16 23935, i16 24152, i16 24153, i16 24147, i16 24280, i16 24273, i16 24279, i16 24270, i16 24284, i16 24277, i16 24281, i16 24274, i16 24276, i16 24388, i16 24387, i16 24431, i16 24502, i16 24876, i16 24872, i16 24897, i16 24926, i16 24945, i16 24947, i16 24914, i16 24915, i16 24946, i16 24940, i16 24960, i16 24948, i16 24916, i16 24954, i16 24923, i16 24933, i16 24891, i16 24938, i16 24929, i16 24918, i16 25129, i16 25127, i16 25131, i16 25643, i16 25677, i16 25691, i16 25693, i16 25716, i16 25718, i16 25714, i16 25715, i16 25725, i16 25717, i16 25702, i16 25766, i16 25678, i16 25730, i16 25694, i16 25692, i16 25675, i16 25683, i16 25696, i16 25680, i16 25727, i16 25663, i16 25708, i16 25707, i16 25689, i16 25701, i16 25719, i16 25971, i16 26016, i16 26273, i16 26272, i16 26271, i16 26373, i16 26372, i16 26402, i16 27057, i16 27062, i16 27081, i16 27040, i16 27086, i16 27030, i16 27056, i16 27052, i16 27068, i16 27025, i16 27033, i16 27022, i16 27047, i16 27021, i16 27049, i16 27070, i16 27055, i16 27071, i16 27076, i16 27069, i16 27044, i16 27092, i16 27065, i16 27082, i16 27034, i16 27087, i16 27059, i16 27027, i16 27050, i16 27041, i16 27038, i16 27097, i16 27031, i16 27024, i16 27074, i16 27061, i16 27045, i16 27078, i16 27466, i16 27469, i16 27467, i16 27550, i16 27551, i16 27552, i16 27587, i16 27588, i16 27646, i16 28366, i16 28405, i16 28401, i16 28419, i16 28453, i16 28408, i16 28471, i16 28411, i16 28462, i16 28425, i16 28494, i16 28441, i16 28442, i16 28455, i16 28440, i16 28475, i16 28434, i16 28397, i16 28426, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 28470, i16 28531, i16 28409, i16 28398, i16 28461, i16 28480, i16 28464, i16 28476, i16 28469, i16 28395, i16 28423, i16 28430, i16 28483, i16 28421, i16 28413, i16 28406, i16 28473, i16 28444, i16 28412, i16 28474, i16 28447, i16 28429, i16 28446, i16 28424, i16 28449, i16 29063, i16 29072, i16 29065, i16 29056, i16 29061, i16 29058, i16 29071, i16 29051, i16 29062, i16 29057, i16 29079, i16 29252, i16 29267, i16 29335, i16 29333, i16 29331, i16 29507, i16 29517, i16 29521, i16 29516, i16 29794, i16 29811, i16 29809, i16 29813, i16 29810, i16 29799, i16 29806, i16 29952, i16 29954, i16 29955, i16 30077, i16 30096, i16 30230, i16 30216, i16 30220, i16 30229, i16 30225, i16 30218, i16 30228, i16 30392, i16 30593, i16 30588, i16 30597, i16 30594, i16 30574, i16 30592, i16 30575, i16 30590, i16 30595, i16 30898, i16 30890, i16 30900, i16 30893, i16 30888, i16 30846, i16 30891, i16 30878, i16 30885, i16 30880, i16 30892, i16 30882, i16 30884, i16 31128, i16 31114, i16 31115, i16 31126, i16 31125, i16 31124, i16 31123, i16 31127, i16 31112, i16 31122, i16 31120, i16 31275, i16 31306, i16 31280, i16 31279, i16 31272, i16 31270, i16 31400, i16 31403, i16 31404, i16 31470, i16 31624, i16 31644, i16 31626, i16 31633, i16 31632, i16 31638, i16 31629, i16 31628, i16 31643, i16 31630, i16 31621, i16 31640, i16 21124, i16 31641, i16 31652, i16 31618, i16 31931, i16 31935, i16 31932, i16 31930, i16 32167, i16 32183, i16 32194, i16 32163, i16 32170, i16 32193, i16 32192, i16 32197, i16 32157, i16 32206, i16 32196, i16 32198, i16 32203, i16 32204, i16 32175, i16 32185, i16 32150, i16 32188, i16 32159, i16 32166, i16 32174, i16 32169, i16 32161, i16 32201, i16 32627, i16 32738, i16 32739, i16 32741, i16 32734, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32732, i16 -32675, i16 -32676, i16 -32375, i16 -32378, i16 -32381, i16 -32377, i16 -32371, i16 -32372, i16 -32373, i16 -32235, i16 -31593, i16 -31580, i16 -31583, i16 -31585, i16 -31558, i16 -31538, i16 -31550, i16 -31572, i16 -31570, i16 -31573, i16 -31559, i16 -31564, i16 -31551, i16 -31539, i16 -31574, i16 -31590, i16 -31567, i16 -31536, i16 -31587, i16 -31577, i16 -31557, i16 -31582, i16 -31596, i16 -31545, i16 -31540, i16 -31589, i16 -31575, i16 -31569, i16 -31576, i16 -31530, i16 -31592, i16 -31562, i16 -31537, i16 -31584, i16 -31529, i16 -31532, i16 -31534, i16 -31525, i16 -31568, i16 -31599, i16 -31135, i16 -30925, i16 -30941, i16 -30936, i16 -30869, i16 -30912, i16 -30930, i16 -30946, i16 -30943, i16 -30951, i16 -30949, i16 -30909, i16 -30932, i16 -30911, i16 -30914, i16 -30906, i16 -30944, i16 -30926, i16 -30934, i16 -30931, i16 -30916, i16 -30958, i16 -30918, i16 -30927, i16 -30923, i16 -30910, i16 -30938, i16 -30937, i16 -30920, i16 -30940, i16 -30950, i16 -30928, i16 -30959, i16 -30473, i16 -30489, i16 -30479, i16 -30478, i16 -30470, i16 -30466, i16 -30482, i16 -30468, i16 -30474, i16 -30469, i16 -30480, i16 -30484, i16 -30485, i16 -30307, i16 -30303, i16 -30305, i16 -30306, i16 -30231, i16 -30229, i16 -30232, i16 -30037, i16 -30055, i16 -30069, i16 -30062, i16 -30065, i16 -30058, i16 -29635, i16 -29592, i16 -29591, i16 -29483, i16 -29489, i16 -29481, i16 -29290, i16 -29175, i16 -29182, i16 -29185, i16 -29171, i16 -29187, i16 -29174, i16 -29181, i16 -29177, i16 -29178, i16 -29179, i16 -29186, i16 -29184, i16 -29180, i16 -28912, i16 -28911, i16 -28914, i16 -28915, i16 -28381, i16 -28388, i16 -28384, i16 -28382, i16 -28385, i16 -28387, i16 -28390, i16 -28380, i16 -28383, i16 -28389, i16 -28294, i16 -28302, i16 -28295, i16 -28301, i16 -27995, i16 -27996, i16 -28042, i16 -28005, i16 -28038, i16 -28000, i16 -28012, i16 -27990, i16 -28019, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -27994, i16 -28006, i16 -27989, i16 -28039, i16 -28009, i16 -28033, i16 -27997, i16 -27922, i16 -28018, i16 -28030, i16 -28011, i16 -27998, i16 -28035, i16 -28024, i16 -27999, i16 -28022, i16 -28026, i16 -28020, i16 -28007, i16 -27993, i16 -28034, i16 -28025, i16 -27991, i16 -28003, i16 -28021, i16 -28115, i16 -26978, i16 -26975, i16 -26881, i16 -26792, i16 -26755, i16 -26758, i16 -26754, i16 -26749, i16 -26752, i16 -26750, i16 -26757, i16 -26748, i16 -26751, i16 -26753, i16 -26674, i16 -26675, i16 -26602, i16 -26451, i16 -26450, i16 -26366, i16 -26368, i16 -26361, i16 -26211, i16 -26212, i16 -26173, i16 -26183, i16 -26181, i16 -26182, i16 -26174, i16 -26179, i16 -26169, i16 -25935, i16 -25885, i16 -25881, i16 -25794, i16 -25793, i16 -25760, i16 -25759, i16 -25761, i16 -25359, i16 -25358, i16 -25355, i16 -24921, i16 20735, i16 20739, i16 20784, i16 20728, i16 20742, i16 20743, i16 20726, i16 20734, i16 20747, i16 20748, i16 20733, i16 20746, i16 21131, i16 21132, i16 21233, i16 21231, i16 22088, i16 22082, i16 22092, i16 22069, i16 22081, i16 22090, i16 22089, i16 22086, i16 22104, i16 22106, i16 22080, i16 22067, i16 22077, i16 22060, i16 22078, i16 22072, i16 22058, i16 22074, i16 22298, i16 22699, i16 22685, i16 22705, i16 22688, i16 22691, i16 22703, i16 22700, i16 22693, i16 22689, i16 22783, i16 23295, i16 23284, i16 23293, i16 23287, i16 23286, i16 23299, i16 23288, i16 23298, i16 23289, i16 23297, i16 23303, i16 23301, i16 23311, i16 23655, i16 23961, i16 23959, i16 23967, i16 23954, i16 23970, i16 23955, i16 23957, i16 23968, i16 23964, i16 23969, i16 23962, i16 23966, i16 24169, i16 24157, i16 24160, i16 24156, i16 32243, i16 24283, i16 24286, i16 24289, i16 24393, i16 24498, i16 24971, i16 24963, i16 24953, i16 25009, i16 25008, i16 24994, i16 24969, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 24987, i16 24979, i16 25007, i16 25005, i16 24991, i16 24978, i16 25002, i16 24993, i16 24973, i16 24934, i16 25011, i16 25133, i16 25710, i16 25712, i16 25750, i16 25760, i16 25733, i16 25751, i16 25756, i16 25743, i16 25739, i16 25738, i16 25740, i16 25763, i16 25759, i16 25704, i16 25777, i16 25752, i16 25974, i16 25978, i16 25977, i16 25979, i16 26034, i16 26035, i16 26293, i16 26288, i16 26281, i16 26290, i16 26295, i16 26282, i16 26287, i16 27136, i16 27142, i16 27159, i16 27109, i16 27128, i16 27157, i16 27121, i16 27108, i16 27168, i16 27135, i16 27116, i16 27106, i16 27163, i16 27165, i16 27134, i16 27175, i16 27122, i16 27118, i16 27156, i16 27127, i16 27111, i16 27200, i16 27144, i16 27110, i16 27131, i16 27149, i16 27132, i16 27115, i16 27145, i16 27140, i16 27160, i16 27173, i16 27151, i16 27126, i16 27174, i16 27143, i16 27124, i16 27158, i16 27473, i16 27557, i16 27555, i16 27554, i16 27558, i16 27649, i16 27648, i16 27647, i16 27650, i16 28481, i16 28454, i16 28542, i16 28551, i16 28614, i16 28562, i16 28557, i16 28553, i16 28556, i16 28514, i16 28495, i16 28549, i16 28506, i16 28566, i16 28534, i16 28524, i16 28546, i16 28501, i16 28530, i16 28498, i16 28496, i16 28503, i16 28564, i16 28563, i16 28509, i16 28416, i16 28513, i16 28523, i16 28541, i16 28519, i16 28560, i16 28499, i16 28555, i16 28521, i16 28543, i16 28565, i16 28515, i16 28535, i16 28522, i16 28539, i16 29106, i16 29103, i16 29083, i16 29104, i16 29088, i16 29082, i16 29097, i16 29109, i16 29085, i16 29093, i16 29086, i16 29092, i16 29089, i16 29098, i16 29084, i16 29095, i16 29107, i16 29336, i16 29338, i16 29528, i16 29522, i16 29534, i16 29535, i16 29536, i16 29533, i16 29531, i16 29537, i16 29530, i16 29529, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 29538, i16 29831, i16 29833, i16 29834, i16 29830, i16 29825, i16 29821, i16 29829, i16 29832, i16 29820, i16 29817, i16 29960, i16 29959, i16 30078, i16 30245, i16 30238, i16 30233, i16 30237, i16 30236, i16 30243, i16 30234, i16 30248, i16 30235, i16 30364, i16 30365, i16 30366, i16 30363, i16 30605, i16 30607, i16 30601, i16 30600, i16 30925, i16 30907, i16 30927, i16 30924, i16 30929, i16 30926, i16 30932, i16 30920, i16 30915, i16 30916, i16 30921, i16 31130, i16 31137, i16 31136, i16 31132, i16 31138, i16 31131, i16 27510, i16 31289, i16 31410, i16 31412, i16 31411, i16 31671, i16 31691, i16 31678, i16 31660, i16 31694, i16 31663, i16 31673, i16 31690, i16 31669, i16 31941, i16 31944, i16 31948, i16 31947, i16 32247, i16 32219, i16 32234, i16 32231, i16 32215, i16 32225, i16 32259, i16 32250, i16 32230, i16 32246, i16 32241, i16 32240, i16 32238, i16 32223, i16 32630, i16 32684, i16 32688, i16 32685, i16 32749, i16 32747, i16 32746, i16 32748, i16 32742, i16 32744, i16 -32668, i16 -32665, i16 -32349, i16 -32353, i16 -32354, i16 -32363, i16 -32350, i16 -32359, i16 -32361, i16 -32234, i16 -32177, i16 -32173, i16 -32174, i16 -32176, i16 -32178, i16 -32175, i16 -31452, i16 -31429, i16 -31473, i16 -31488, i16 -31447, i16 -31474, i16 -31479, i16 -31475, i16 -31457, i16 -31478, i16 -31449, i16 -31460, i16 -31493, i16 -31445, i16 -31494, i16 -31480, i16 -31476, i16 -31500, i16 -31446, i16 -31502, i16 -31467, i16 -31497, i16 -31509, i16 -31501, i16 -31492, i16 -31470, i16 -31510, i16 -31511, i16 -31466, i16 -31490, i16 -31448, i16 -31459, i16 -31442, i16 -31486, i16 -31491, i16 -31458, i16 -31498, i16 -31439, i16 -31450, i16 -31513, i16 -31512, i16 -31504, i16 -31505, i16 -31495, i16 -31464, i16 -31456, i16 -31440, i16 -31477, i16 -31463, i16 -31441, i16 -31134, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -30890, i16 -30877, i16 -30876, i16 -30857, i16 -30751, i16 -30861, i16 -30888, i16 -30892, i16 -30885, i16 -30894, i16 -30879, i16 -30886, i16 -30895, i16 -30882, i16 -30867, i16 -30870, i16 -30896, i16 -30898, i16 -30881, i16 -30883, i16 -30865, i16 -30868, i16 -30854, i16 -30866, i16 -30884, i16 -30875, i16 -30897, i16 -30853, i16 -30859, i16 -30878, i16 -30873, i16 -30871, i16 -30630, i16 -30459, i16 -30452, i16 -30444, i16 -30453, i16 -30441, i16 -30440, i16 -30439, i16 -30458, i16 -30442, i16 -30447, i16 -30450, i16 -30455, i16 -30302, i16 -30300, i16 -30301, i16 -30227, i16 -30224, i16 -30228, i16 -30001, i16 -30010, i16 -30024, i16 -29997, i16 -29999, i16 -29996, i16 -29995, i16 -30021, i16 -29993, i16 -30018, i16 -30016, i16 -30011, i16 -29992, i16 -30013, i16 -30022, i16 -30019, i16 -29991, i16 -29634, i16 -29619, i16 -29553, i16 -29467, i16 -29473, i16 -29479, i16 -29464, i16 -29478, i16 -29475, i16 -29465, i16 -29280, i16 -29284, i16 -29279, i16 -29285, i16 -29152, i16 -29149, i16 -29147, i16 -29148, i16 -29138, i16 -29163, i16 -29157, i16 -29162, i16 -29167, i16 -29159, i16 -29146, i16 -29145, i16 -29164, i16 -29166, i16 -29160, i16 -29165, i16 -29156, i16 -29161, i16 -29158, i16 -28884, i16 -28892, i16 -28904, i16 -28902, i16 -28896, i16 -28893, i16 -28906, i16 -28905, i16 -28557, i16 -28560, i16 -28561, i16 -28569, i16 -28565, i16 -28369, i16 -28373, i16 -28375, i16 -28374, i16 -28366, i16 -28378, i16 -28370, i16 -28283, i16 -28282, i16 -28278, i16 -28287, i16 -28286, i16 -28284, i16 -28288, i16 -27952, i16 -27965, i16 -27964, i16 -27968, i16 -27943, i16 -27978, i16 -27953, i16 -27919, i16 -27937, i16 -27944, i16 -27927, i16 -27945, i16 -27939, i16 -27956, i16 -27921, i16 -27966, i16 -27928, i16 -27958, i16 -27960, i16 -27954, i16 -27930, i16 -27955, i16 -27947, i16 -27959, i16 -27936, i16 -27938, i16 -27929, i16 -27951, i16 -27949, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -27979, i16 -27935, i16 -27962, i16 -27980, i16 -27268, i16 -27220, i16 -27221, i16 -27218, i16 -27216, i16 -26972, i16 -26974, i16 -26925, i16 -26875, i16 -26872, i16 -26878, i16 -26790, i16 -26742, i16 -26738, i16 -26744, i16 -26672, i16 -26673, i16 -26594, i16 -26595, i16 -26586, i16 -26583, i16 -26584, i16 -26592, i16 -26597, i16 -26585, i16 -26446, i16 -26360, i16 -26374, i16 -26351, i16 -26348, i16 -26346, i16 -26345, i16 -26347, i16 -26148, i16 -26163, i16 -26161, i16 -26157, i16 -26156, i16 -26162, i16 -26167, i16 -26154, i16 -26152, i16 -26165, i16 -26153, i16 -26164, i16 -25933, i16 -25876, i16 -25877, i16 -25869, i16 -25870, i16 -25871, i16 -25786, i16 -25789, i16 -25753, i16 -25740, i16 -25743, i16 -25754, i16 -25738, i16 -25739, i16 -25744, i16 -25752, i16 -25756, i16 -25748, i16 -25348, i16 -25350, i16 -25347, i16 -25345, i16 -25353, i16 -25337, i16 -25344, i16 -25351, i16 -25349, i16 -25336, i16 -25339, i16 -25340, i16 -24957, i16 -24877, i16 -24817, i16 -24816, i16 20764, i16 20755, i16 20759, i16 20762, i16 20753, i16 20958, i16 21300, i16 21473, i16 22128, i16 22112, i16 22126, i16 22131, i16 22118, i16 22115, i16 22125, i16 22130, i16 22110, i16 22135, i16 22300, i16 22299, i16 22728, i16 22717, i16 22729, i16 22719, i16 22714, i16 22722, i16 22716, i16 22726, i16 23319, i16 23321, i16 23323, i16 23329, i16 23316, i16 23315, i16 23312, i16 23318, i16 23336, i16 23322, i16 23328, i16 23326, i16 23535, i16 23980, i16 23985, i16 23977, i16 23975, i16 23989, i16 23984, i16 23982, i16 23978, i16 23976, i16 23986, i16 23981, i16 23983, i16 23988, i16 24167, i16 24168, i16 24166, i16 24175, i16 24297, i16 24295, i16 24294, i16 24296, i16 24293, i16 24395, i16 24508, i16 24989, i16 25000, i16 24982, i16 25029, i16 25012, i16 25030, i16 25025, i16 25036, i16 25018, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 25023, i16 25016, i16 24972, i16 25815, i16 25814, i16 25808, i16 25807, i16 25801, i16 25789, i16 25737, i16 25795, i16 25819, i16 25843, i16 25817, i16 25907, i16 25983, i16 25980, i16 26018, i16 26312, i16 26302, i16 26304, i16 26314, i16 26315, i16 26319, i16 26301, i16 26299, i16 26298, i16 26316, i16 26403, i16 27188, i16 27238, i16 27209, i16 27239, i16 27186, i16 27240, i16 27198, i16 27229, i16 27245, i16 27254, i16 27227, i16 27217, i16 27176, i16 27226, i16 27195, i16 27199, i16 27201, i16 27242, i16 27236, i16 27216, i16 27215, i16 27220, i16 27247, i16 27241, i16 27232, i16 27196, i16 27230, i16 27222, i16 27221, i16 27213, i16 27214, i16 27206, i16 27477, i16 27476, i16 27478, i16 27559, i16 27562, i16 27563, i16 27592, i16 27591, i16 27652, i16 27651, i16 27654, i16 28589, i16 28619, i16 28579, i16 28615, i16 28604, i16 28622, i16 28616, i16 28510, i16 28612, i16 28605, i16 28574, i16 28618, i16 28584, i16 28676, i16 28581, i16 28590, i16 28602, i16 28588, i16 28586, i16 28623, i16 28607, i16 28600, i16 28578, i16 28617, i16 28587, i16 28621, i16 28591, i16 28594, i16 28592, i16 29125, i16 29122, i16 29119, i16 29112, i16 29142, i16 29120, i16 29121, i16 29131, i16 29140, i16 29130, i16 29127, i16 29135, i16 29117, i16 29144, i16 29116, i16 29126, i16 29146, i16 29147, i16 29341, i16 29342, i16 29545, i16 29542, i16 29543, i16 29548, i16 29541, i16 29547, i16 29546, i16 29823, i16 29850, i16 29856, i16 29844, i16 29842, i16 29845, i16 29857, i16 29963, i16 30080, i16 30255, i16 30253, i16 30257, i16 30269, i16 30259, i16 30268, i16 30261, i16 30258, i16 30256, i16 30395, i16 30438, i16 30618, i16 30621, i16 30625, i16 30620, i16 30619, i16 30626, i16 30627, i16 30613, i16 30617, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30615, i16 30941, i16 30953, i16 30949, i16 30954, i16 30942, i16 30947, i16 30939, i16 30945, i16 30946, i16 30957, i16 30943, i16 30944, i16 31140, i16 31300, i16 31304, i16 31303, i16 31414, i16 31416, i16 31413, i16 31409, i16 31415, i16 31710, i16 31715, i16 31719, i16 31709, i16 31701, i16 31717, i16 31706, i16 31720, i16 31737, i16 31700, i16 31722, i16 31714, i16 31708, i16 31723, i16 31704, i16 31711, i16 31954, i16 31956, i16 31959, i16 31952, i16 31953, i16 32274, i16 32289, i16 32279, i16 32268, i16 32287, i16 32288, i16 32275, i16 32270, i16 32284, i16 32277, i16 32282, i16 32290, i16 32267, i16 32271, i16 32278, i16 32269, i16 32276, i16 32293, i16 32292, i16 32579, i16 32635, i16 32636, i16 32634, i16 32689, i16 32751, i16 -32726, i16 -32727, i16 -32660, i16 -32335, i16 -32346, i16 -32338, i16 -32327, i16 -32331, i16 -32341, i16 -32336, i16 -32340, i16 -32332, i16 -32334, i16 -32329, i16 -32345, i16 -32270, i16 -32171, i16 -32170, i16 -32169, i16 -31402, i16 -31419, i16 -31381, i16 -31411, i16 -31405, i16 -31391, i16 -31400, i16 -31424, i16 -31418, i16 -31388, i16 -31423, i16 -31390, i16 -31420, i16 -31407, i16 -31417, i16 -31389, i16 -31426, i16 -31397, i16 -31375, i16 -31410, i16 -31378, i16 -31371, i16 -31403, i16 -31385, i16 -31392, i16 -31348, i16 -31386, i16 -31395, i16 -31404, i16 -31387, i16 -31380, i16 -31133, i16 -31131, i16 -31132, i16 -30821, i16 -30833, i16 -30825, i16 -30829, i16 -30830, i16 -30840, i16 -30847, i16 -30826, i16 -30824, i16 -30855, i16 -30841, i16 -30813, i16 -30843, i16 -30832, i16 -30831, i16 -30819, i16 -30844, i16 -30828, i16 -30820, i16 -30822, i16 -30839, i16 -30434, i16 -30426, i16 -30416, i16 -30419, i16 -30418, i16 -30425, i16 -30415, i16 -30430, i16 -30423, i16 -30429, i16 -30417, i16 -30420, i16 -30433, i16 -30223, i16 -29984, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -29982, i16 -29966, i16 -29964, i16 -29963, i16 -29987, i16 -29932, i16 -29980, i16 -29985, i16 -29968, i16 -30008, i16 -29986, i16 -29983, i16 -29976, i16 -29953, i16 -29969, i16 -29957, i16 -29551, i16 -29550, i16 -29552, i16 -29451, i16 -29458, i16 -29455, i16 -29456, i16 -29453, i16 -29332, i16 -29330, i16 -29275, i16 -29273, i16 -29133, i16 -29122, i16 -29128, i16 -29120, i16 -29115, i16 -29130, i16 -29124, i16 -29123, i16 -29119, i16 -29136, i16 -29121, i16 -28995, i16 -28874, i16 -28882, i16 -28875, i16 -28878, i16 -28871, i16 -28873, i16 -28876, i16 -28554, i16 -28551, i16 -28549, i16 -28538, i16 -28422, i16 -28365, i16 -28363, i16 -28362, i16 -28269, i16 -28272, i16 -28271, i16 -28275, i16 -28273, i16 -27865, i16 -27874, i16 -27896, i16 -27873, i16 -27898, i16 -27889, i16 -27782, i16 -27848, i16 -27844, i16 -27877, i16 -27869, i16 -27886, i16 -27903, i16 -27834, i16 -27859, i16 -27890, i16 -27891, i16 -27957, i16 -27875, i16 -27910, i16 -27867, i16 -27885, i16 -27911, i16 -27913, i16 -27852, i16 -27902, i16 -27868, i16 -27905, i16 -27863, i16 -27847, i16 -27851, i16 -27862, i16 -27884, i16 -27892, i16 -27893, i16 -27906, i16 -27895, i16 -27904, i16 -27909, i16 -27882, i16 -27204, i16 -27187, i16 -27202, i16 -27207, i16 -27206, i16 -27210, i16 -27201, i16 -27211, i16 -27203, i16 -26967, i16 -26924, i16 -26869, i16 -26862, i16 -26864, i16 -26727, i16 -26729, i16 -26732, i16 -26640, i16 -26632, i16 -26571, i16 -26577, i16 -26574, i16 -26332, i16 -26337, i16 -26329, i16 -26327, i16 -26210, i16 -26130, i16 -26132, i16 -26139, i16 -26140, i16 -26128, i16 -26141, i16 -26134, i16 -26135, i16 -26137, i16 -25927, i16 -25921, i16 -25932, i16 -25925, i16 -25866, i16 -25862, i16 -25863, i16 -25865, i16 -25805, i16 -25728, i16 -25723, i16 -25721, i16 -25732, i16 -25730, i16 -25733, i16 -25726, i16 -25709, i16 -25710, i16 -25712, i16 -25734, i16 -25707, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25731, i16 -25720, i16 -25307, i16 -25321, i16 -25312, i16 -25314, i16 -25324, i16 -25303, i16 -25315, i16 -25320, i16 -25310, i16 -25328, i16 -25319, i16 -25313, i16 -24952, i16 -24954, i16 -24953, i16 -24914, i16 -24915, i16 -24875, i16 -24874, i16 -24838, i16 -24814, i16 -24771, i16 20774, i16 20773, i16 20770, i16 20772, i16 20768, i16 20777, i16 21236, i16 22163, i16 22156, i16 22157, i16 22150, i16 22148, i16 22147, i16 22142, i16 22146, i16 22143, i16 22145, i16 22742, i16 22740, i16 22735, i16 22738, i16 23341, i16 23333, i16 23346, i16 23331, i16 23340, i16 23335, i16 23334, i16 23343, i16 23342, i16 23419, i16 23537, i16 23538, i16 23991, i16 24172, i16 24170, i16 24510, i16 24507, i16 25027, i16 25013, i16 25020, i16 25063, i16 25056, i16 25061, i16 25060, i16 25064, i16 25054, i16 25839, i16 25833, i16 25827, i16 25835, i16 25828, i16 25832, i16 25985, i16 25984, i16 26038, i16 26074, i16 26322, i16 27277, i16 27286, i16 27265, i16 27301, i16 27273, i16 27295, i16 27291, i16 27297, i16 27294, i16 27271, i16 27283, i16 27278, i16 27285, i16 27267, i16 27304, i16 27300, i16 27281, i16 27263, i16 27302, i16 27290, i16 27269, i16 27276, i16 27282, i16 27483, i16 27565, i16 27657, i16 28620, i16 28585, i16 28660, i16 28628, i16 28643, i16 28636, i16 28653, i16 28647, i16 28646, i16 28638, i16 28658, i16 28637, i16 28642, i16 28648, i16 29153, i16 29169, i16 29160, i16 29170, i16 29156, i16 29168, i16 29154, i16 29555, i16 29550, i16 29551, i16 29847, i16 29874, i16 29867, i16 29840, i16 29866, i16 29869, i16 29873, i16 29861, i16 29871, i16 29968, i16 29969, i16 29970, i16 29967, i16 30084, i16 30275, i16 30280, i16 30281, i16 30279, i16 30372, i16 30441, i16 30645, i16 30635, i16 30642, i16 30647, i16 30646, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 30644, i16 30641, i16 30632, i16 30704, i16 30963, i16 30973, i16 30978, i16 30971, i16 30972, i16 30962, i16 30981, i16 30969, i16 30974, i16 30980, i16 31147, i16 31144, i16 31324, i16 31323, i16 31318, i16 31320, i16 31316, i16 31322, i16 31422, i16 31424, i16 31425, i16 31749, i16 31759, i16 31730, i16 31744, i16 31743, i16 31739, i16 31758, i16 31732, i16 31755, i16 31731, i16 31746, i16 31753, i16 31747, i16 31745, i16 31736, i16 31741, i16 31750, i16 31728, i16 31729, i16 31760, i16 31754, i16 31976, i16 32301, i16 32316, i16 32322, i16 32307, i16 -26552, i16 32312, i16 32298, i16 32329, i16 32320, i16 32327, i16 32297, i16 32332, i16 32304, i16 32315, i16 32310, i16 32324, i16 32314, i16 32581, i16 32639, i16 32638, i16 32637, i16 32756, i16 32754, i16 -32724, i16 -32325, i16 -32316, i16 -32308, i16 -32310, i16 -32315, i16 -32313, i16 -32324, i16 -32279, i16 -32165, i16 -32166, i16 -32164, i16 -31357, i16 -31360, i16 -31345, i16 -31321, i16 -31339, i16 -31328, i16 -31349, i16 -31325, i16 -31365, i16 -31324, i16 -31334, i16 -31330, i16 -31369, i16 -31364, i16 -31351, i16 -31327, i16 -31366, i16 -31368, i16 -31401, i16 -31346, i16 -31338, i16 -31354, i16 -31347, i16 -31335, i16 -31331, i16 -31359, i16 -31326, i16 -31358, i16 -31352, i16 -31355, i16 -31367, i16 -31370, i16 -31336, i16 -31344, i16 -31329, i16 -31128, i16 -30786, i16 -30806, i16 -30803, i16 -30779, i16 -30800, i16 -30804, i16 -30791, i16 -30795, i16 -30788, i16 -30802, i16 -30775, i16 -30781, i16 -30782, i16 -30772, i16 -30793, i16 -30801, i16 -30780, i16 -30774, i16 -30796, i16 -30794, i16 -30785, i16 -30792, i16 -30787, i16 -30754, i16 -30798, i16 -30411, i16 -30413, i16 -30404, i16 -30402, i16 -30399, i16 -30382, i16 -30409, i16 -30398, i16 -30291, i16 -30289, i16 -30290, i16 -30222, i16 -30221, i16 -29922, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -29928, i16 -29930, i16 -29935, i16 -29947, i16 -29941, i16 -29918, i16 -29937, i16 -29934, i16 -29931, i16 -29945, i16 -29939, i16 -29944, i16 -29946, i16 -29924, i16 -29933, i16 -29926, i16 -29617, i16 -29584, i16 -29582, i16 -29583, i16 -29585, i16 -29547, i16 -29548, i16 -29447, i16 -29329, i16 -29106, i16 -29107, i16 -29101, i16 -29104, i16 -29108, i16 -29113, i16 -28861, i16 -28864, i16 -28539, i16 -28546, i16 -28360, i16 -28262, i16 -28254, i16 -28261, i16 -28263, i16 -28257, i16 -28255, i16 -28259, i16 -28256, i16 -27743, i16 -27773, i16 -27729, i16 -27804, i16 -27818, i16 -27833, i16 -27780, i16 -27816, i16 -27812, i16 -27786, i16 -27831, i16 -27824, i16 -27823, i16 -27808, i16 -27795, i16 -27761, i16 -27828, i16 -27798, i16 -27783, i16 -27817, i16 -27819, i16 -27822, i16 -27825, i16 -27791, i16 -27785, i16 -27781, i16 -27807, i16 -27810, i16 -27805, i16 -27801, i16 -27776, i16 -27826, i16 -27815, i16 -27193, i16 -27200, i16 -27191, i16 -27197, i16 -27195, i16 -27209, i16 -26962, i16 -26960, i16 -26964, i16 -26848, i16 -26849, i16 -26856, i16 -26851, i16 -26855, i16 -26726, i16 -26719, i16 -26724, i16 -26722, i16 -26723, i16 -26667, i16 -26668, i16 -26639, i16 -26559, i16 -26556, i16 -26550, i16 -26551, i16 -26555, i16 -26557, i16 -26331, i16 -26325, i16 -26324, i16 -26326, i16 -26317, i16 -26318, i16 -26321, i16 -26323, i16 -26319, i16 -26320, i16 -26216, i16 -26205, i16 -26207, i16 -26110, i16 -26118, i16 -26124, i16 -26121, i16 -26119, i16 -26120, i16 -26122, i16 -26117, i16 -26115, i16 -26114, i16 -26116, i16 -26109, i16 -25922, i16 -25858, i16 -25859, i16 -25855, i16 -25860, i16 -25784, i16 -25702, i16 -25688, i16 -25698, i16 -25701, i16 -25690, i16 -25695, i16 -25691, i16 -25692, i16 -25722, i16 -25694, i16 -25696, i16 -25681, i16 -25293, i16 -25279, i16 -25241, i16 -25290, i16 -25298, i16 -25297, i16 -25295, i16 -25288, i16 -25296, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25275, i16 -25278, i16 -25277, i16 -25282, i16 -25289, i16 -25280, i16 -25283, i16 32757, i16 -25299, i16 -24950, i16 -24951, i16 -24947, i16 -24912, i16 -24888, i16 -24870, i16 -24837, i16 -24833, i16 -24796, i16 -24797, i16 -24798, i16 -24748, i16 -24672, i16 20785, i16 20781, i16 20782, i16 22168, i16 22172, i16 22167, i16 22170, i16 22173, i16 22169, i16 22896, i16 23356, i16 23657, i16 23658, i16 24000, i16 24173, i16 24174, i16 25048, i16 25055, i16 25069, i16 25070, i16 25073, i16 25066, i16 25072, i16 25067, i16 25046, i16 25065, i16 25855, i16 25860, i16 25853, i16 25848, i16 25857, i16 25859, i16 25852, i16 26004, i16 26075, i16 26330, i16 26331, i16 26328, i16 27333, i16 27321, i16 27325, i16 27361, i16 27334, i16 27322, i16 27318, i16 27319, i16 27335, i16 27316, i16 27309, i16 27486, i16 27593, i16 27659, i16 28679, i16 28684, i16 28685, i16 28673, i16 28677, i16 28692, i16 28686, i16 28671, i16 28672, i16 28667, i16 28710, i16 28668, i16 28663, i16 28682, i16 29185, i16 29183, i16 29177, i16 29187, i16 29181, i16 29558, i16 29880, i16 29888, i16 29877, i16 29889, i16 29886, i16 29878, i16 29883, i16 29890, i16 29972, i16 29971, i16 30300, i16 30308, i16 30297, i16 30288, i16 30291, i16 30295, i16 30298, i16 30374, i16 30397, i16 30444, i16 30658, i16 30650, i16 30975, i16 30988, i16 30995, i16 30996, i16 30985, i16 30992, i16 30994, i16 30993, i16 31149, i16 31148, i16 31327, i16 31772, i16 31785, i16 31769, i16 31776, i16 31775, i16 31789, i16 31773, i16 31782, i16 31784, i16 31778, i16 31781, i16 31792, i16 32348, i16 32336, i16 32342, i16 32355, i16 32344, i16 32354, i16 32351, i16 32337, i16 32352, i16 32343, i16 32339, i16 32693, i16 32691, i16 32759, i16 32760, i16 -32651, i16 -32303, i16 -32302, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -32304, i16 -32161, i16 -32162, i16 -31308, i16 -31290, i16 -31296, i16 -31293, i16 -31294, i16 -31309, i16 -31307, i16 -31299, i16 -31289, i16 -31292, i16 -31297, i16 -31285, i16 -31282, i16 -31288, i16 -31291, i16 -31311, i16 -31306, i16 -31278, i16 -31196, i16 -31304, i16 -31305, i16 -31298, i16 -31127, i16 -30745, i16 -30746, i16 -30750, i16 -30757, i16 -30741, i16 -30742, i16 -30747, i16 -30753, i16 -30733, i16 -30748, i16 -30764, i16 -30756, i16 -30765, i16 -30739, i16 -30760, i16 -30749, i16 -30812, i16 -30761, i16 -30759, i16 -30719, i16 -30732, i16 -30744, i16 -30755, i16 -30381, i16 -30389, i16 -30385, i16 -30388, i16 -30394, i16 -30384, i16 -30383, i16 -30391, i16 -29910, i16 -29913, i16 -29917, i16 -29901, i16 -29904, i16 -29899, i16 -29881, i16 -29905, i16 -29892, i16 -29890, i16 -29903, i16 -29915, i16 -29897, i16 -29914, i16 -29898, i16 -29906, i16 -29916, i16 -29893, i16 -29891, i16 -29894, i16 -29630, i16 -29579, i16 -29543, i16 -29544, i16 -29545, i16 -29442, i16 -29436, i16 -29438, i16 -29440, i16 -29092, i16 -29086, i16 -29088, i16 -29097, i16 -29098, i16 -29090, i16 -29083, i16 -29081, i16 -29093, i16 -29094, i16 -29087, i16 -29091, i16 -29079, i16 -29100, i16 -28858, i16 -28857, i16 -28856, i16 -28853, i16 -28376, i16 -28358, i16 -28357, i16 -28354, i16 -28248, i16 -28251, i16 -28249, i16 -28241, i16 -28246, i16 -27723, i16 -27764, i16 -27758, i16 -27721, i16 -27749, i16 -27747, i16 -27767, i16 -27737, i16 -27762, i16 -27734, i16 -27746, i16 -27738, i16 -27755, i16 -27768, i16 -27751, i16 -27745, i16 -27763, i16 -27727, i16 -27759, i16 -27726, i16 -27740, i16 -27736, i16 -27724, i16 -27741, i16 -27739, i16 -27182, i16 -27181, i16 -27183, i16 -26957, i16 -26921, i16 -26918, i16 24002, i16 -26913, i16 -26920, i16 -26915, i16 -26845, i16 -26846, i16 -26843, i16 -26708, i16 -26706, i16 -26712, i16 -26709, i16 -26716, i16 -26710, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26718, i16 -26715, i16 -26665, i16 -26663, i16 -26666, i16 -26664, i16 -26630, i16 -26544, i16 -26543, i16 -26542, i16 -26440, i16 -26303, i16 -26308, i16 -26310, i16 -26097, i16 -26101, i16 -26103, i16 -26099, i16 -26108, i16 -26095, i16 -26102, i16 -26107, i16 -26105, i16 -26106, i16 -25920, i16 -25892, i16 -25848, i16 -25852, i16 -25851, i16 -25815, i16 -25803, i16 -25782, i16 -25780, i16 -25781, i16 -25657, i16 -25658, i16 -25661, i16 -25665, i16 -25663, i16 -25675, i16 -25672, i16 -25645, i16 -25674, i16 -25660, i16 -25671, i16 -25667, i16 -25252, i16 -25261, i16 -25265, i16 -25270, i16 -25253, i16 -25269, i16 -25255, i16 -25258, i16 -25268, i16 -25257, i16 -25262, i16 -25260, i16 -25249, i16 -25256, i16 -25254, i16 -24946, i16 -24948, i16 -24865, i16 -24831, i16 -24832, i16 -24810, i16 -24795, i16 -24789, i16 -24790, i16 -24791, i16 -24792, i16 -24756, i16 -24747, i16 20788, i16 20789, i16 21142, i16 21239, i16 21428, i16 22187, i16 22189, i16 22182, i16 22183, i16 22186, i16 22188, i16 22746, i16 22749, i16 22747, i16 22802, i16 23357, i16 23358, i16 23359, i16 24003, i16 24176, i16 24511, i16 25083, i16 25863, i16 25872, i16 25869, i16 25865, i16 25868, i16 25870, i16 25988, i16 26078, i16 26077, i16 26334, i16 27367, i16 27360, i16 27340, i16 27345, i16 27353, i16 27339, i16 27359, i16 27356, i16 27344, i16 27371, i16 27343, i16 27341, i16 27358, i16 27488, i16 27568, i16 27660, i16 28697, i16 28711, i16 28704, i16 28694, i16 28715, i16 28705, i16 28706, i16 28707, i16 28713, i16 28695, i16 28708, i16 28700, i16 28714, i16 29196, i16 29194, i16 29191, i16 29186, i16 29189, i16 29349, i16 29350, i16 29348, i16 29347, i16 29345, i16 29899, i16 29893, i16 29879, i16 29891, i16 29974, i16 30304, i16 30665, i16 30666, i16 30660, i16 30705, i16 31005, i16 31003, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 31009, i16 31004, i16 30999, i16 31006, i16 31152, i16 31335, i16 31336, i16 31795, i16 31804, i16 31801, i16 31788, i16 31803, i16 31980, i16 31978, i16 32374, i16 32373, i16 32376, i16 32368, i16 32375, i16 32367, i16 32378, i16 32370, i16 32372, i16 32360, i16 32587, i16 32586, i16 32643, i16 32646, i16 32695, i16 32765, i16 32766, i16 -32648, i16 -32297, i16 -32299, i16 -32156, i16 -32159, i16 -32157, i16 -31253, i16 -31247, i16 -31251, i16 -31271, i16 -31263, i16 -31256, i16 -31270, i16 -31273, i16 -31252, i16 -31246, i16 -31240, i16 -31272, i16 -31265, i16 -31261, i16 -31268, i16 -31279, i16 -31248, i16 -31258, i16 -31249, i16 -31266, i16 -31262, i16 -30720, i16 -30726, i16 -30717, i16 -30730, i16 -30729, i16 -30711, i16 -30708, i16 -30709, i16 -30714, i16 -30724, i16 -30712, i16 -30721, i16 -30710, i16 -30718, i16 -30366, i16 -30374, i16 -30373, i16 -30377, i16 -30367, i16 -30372, i16 -30376, i16 -30371, i16 -30375, i16 -30328, i16 -30281, i16 -30282, i16 -30218, i16 -29872, i16 -29880, i16 -29878, i16 -29888, i16 -29869, i16 -29866, i16 -29868, i16 -29877, i16 -29867, i16 -29871, i16 -29886, i16 -29870, i16 -29865, i16 -29629, i16 -29577, i16 -29578, i16 -29542, i16 -29434, i16 -29433, i16 -29431, i16 -29268, i16 -29270, i16 -29267, i16 -29269, i16 -29075, i16 -29064, i16 -29069, i16 -29078, i16 -29073, i16 -29061, i16 -28990, i16 -28846, i16 -28847, i16 -28849, i16 -28848, i16 -28845, i16 -28748, i16 -28352, i16 -28353, i16 -28240, i16 -28243, i16 -27682, i16 -27705, i16 -27697, i16 -27710, i16 -27686, i16 -27696, i16 -27655, i16 -27668, i16 -27700, i16 -27687, i16 -27735, i16 -27674, i16 -27702, i16 -27692, i16 -27666, i16 -27677, i16 -27691, i16 -27708, i16 -27698, i16 -27712, i16 -27694, i16 -27673, i16 -27267, i16 -27174, i16 -27173, i16 -26911, i16 -26839, i16 -26837, i16 -26836, i16 -26840, i16 -26842, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26701, i16 -26697, i16 -26698, i16 -26659, i16 -26658, i16 -26657, i16 -26532, i16 -26535, i16 -26531, i16 -26537, i16 -26433, i16 -26435, i16 -26437, i16 -26434, i16 -26296, i16 -26297, i16 -26301, i16 -26202, i16 -26201, i16 -26086, i16 -26091, i16 -26075, i16 -26083, i16 -26076, i16 -26085, i16 -26078, i16 -26080, i16 -26073, i16 -26077, i16 -26082, i16 -26084, i16 -26092, i16 -25918, i16 -25845, i16 -25846, i16 -25842, i16 -25844, i16 -25801, i16 -25622, i16 -25621, i16 -25632, i16 -25634, i16 -25628, i16 -25626, i16 -25630, i16 -25616, i16 -25644, i16 -25641, i16 -25620, i16 -25636, i16 -25639, i16 -25627, i16 -25643, i16 -25631, i16 -25638, i16 -25225, i16 -25215, i16 -25206, i16 -25212, i16 -25208, i16 -25231, i16 -25216, i16 -25224, i16 -25210, i16 -25205, i16 -25204, i16 -25219, i16 -25237, i16 -25228, i16 -25227, i16 -25232, i16 -25239, i16 -25211, i16 -25229, i16 -25221, i16 -25214, i16 -25233, i16 -25223, i16 -25217, i16 -25209, i16 -25240, i16 -24940, i16 -24943, i16 -24896, i16 -24836, i16 -24787, i16 -24768, i16 -24767, i16 -24755, i16 -24746, i16 -24745, i16 -24744, i16 21303, i16 22194, i16 22197, i16 22195, i16 22755, i16 23365, i16 24006, i16 24007, i16 24302, i16 24303, i16 24512, i16 24513, i16 25081, i16 25879, i16 25878, i16 25877, i16 25875, i16 26079, i16 26344, i16 26339, i16 26340, i16 27379, i16 27376, i16 27370, i16 27368, i16 27385, i16 27377, i16 27374, i16 27375, i16 28732, i16 28725, i16 28719, i16 28727, i16 28724, i16 28721, i16 28738, i16 28728, i16 28735, i16 28730, i16 28729, i16 28736, i16 28731, i16 28723, i16 28737, i16 29203, i16 29204, i16 29352, i16 29565, i16 29564, i16 29882, i16 30379, i16 30378, i16 30398, i16 30445, i16 30668, i16 30670, i16 30671, i16 30669, i16 30706, i16 31013, i16 31011, i16 31015, i16 31016, i16 31012, i16 31017, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 31154, i16 31342, i16 31340, i16 31341, i16 31479, i16 31817, i16 31816, i16 31818, i16 31815, i16 31813, i16 31982, i16 32379, i16 32382, i16 32385, i16 32384, i16 32698, i16 32767, i16 -32647, i16 -32293, i16 -32295, i16 -32245, i16 -32152, i16 -32151, i16 -31198, i16 -31233, i16 -31231, i16 -31234, i16 -31205, i16 -31232, i16 -31242, i16 -31228, i16 -31223, i16 -31227, i16 -31220, i16 -31235, i16 -30695, i16 -30704, i16 -30703, i16 -30697, i16 -30701, i16 -30698, i16 -30365, i16 -30362, i16 -30279, i16 -30217, i16 -29856, i16 -29846, i16 -29859, i16 -29848, i16 -29853, i16 -29851, i16 -29849, i16 -29843, i16 -29266, i16 -29050, i16 -29048, i16 -29052, i16 -28839, i16 -28842, i16 -28841, i16 -28843, i16 -28840, i16 -28838, i16 -28531, i16 -28349, i16 -28351, i16 -28233, i16 -28235, i16 -28238, i16 -28237, i16 -27637, i16 -27629, i16 -27653, i16 -27616, i16 -27633, i16 -27628, i16 -27650, i16 -27627, i16 -27632, i16 -27608, i16 -27623, i16 -27635, i16 -27659, i16 -27648, i16 -27657, i16 -27641, i16 -27634, i16 -27626, i16 -27630, i16 -27654, i16 -27639, i16 -27656, i16 -27638, i16 -27649, i16 -27652, i16 -27636, i16 -27658, i16 -27631, i16 -27642, i16 -27170, i16 -27168, i16 -27169, i16 -26834, i16 -26833, i16 -26695, i16 -26693, i16 -26627, i16 -26626, i16 -26528, i16 -26526, i16 -26525, i16 -26529, i16 -26431, i16 -26430, i16 -26288, i16 -26290, i16 -26279, i16 -26292, i16 -26293, i16 -26285, i16 -26062, i16 -26060, i16 -26063, i16 -26068, i16 -26070, i16 -26058, i16 -26071, i16 -26066, i16 -26056, i16 -26067, i16 -25913, i16 -25910, i16 -25914, i16 -25840, i16 -25838, i16 -25839, i16 -25589, i16 -25592, i16 -25609, i16 -25595, i16 -25582, i16 -25608, i16 -25536, i16 -25593, i16 -25586, i16 -25594, i16 -25577, i16 -25580, i16 -25591, i16 -25185, i16 -25191, i16 -25180, i16 -25187, i16 -25198, i16 -25192, i16 -25200, i16 -25189, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -25184, i16 -25196, i16 -25188, i16 -25174, i16 -25193, i16 -25183, i16 -25190, i16 -25182, i16 -25176, i16 -25186, i16 -25181, i16 -25153, i16 -25175, i16 -25194, i16 -25178, i16 -25177, i16 -24935, i16 -24933, i16 -24934, i16 -24859, i16 -24860, i16 -24857, i16 -24858, i16 -24784, i16 -24786, i16 -24741, i16 -24736, i16 -24738, i16 -24739, i16 -24743, i16 -24687, i16 20794, i16 20793, i16 21144, i16 21143, i16 22211, i16 22205, i16 22206, i16 23368, i16 23367, i16 24011, i16 24015, i16 24305, i16 25085, i16 25883, i16 27394, i16 27388, i16 27395, i16 27384, i16 27392, i16 28739, i16 28740, i16 28746, i16 28744, i16 28745, i16 28741, i16 28742, i16 29213, i16 29210, i16 29209, i16 29566, i16 29975, i16 30314, i16 30672, i16 31021, i16 31025, i16 31023, i16 31828, i16 31827, i16 31986, i16 32394, i16 32391, i16 32392, i16 32395, i16 32390, i16 32397, i16 32589, i16 32699, i16 -32720, i16 -32291, i16 -31208, i16 -31190, i16 -31194, i16 -31201, i16 -31197, i16 -31204, i16 -31207, i16 -31193, i16 -31186, i16 -31199, i16 -31200, i16 -31191, i16 -31202, i16 -31195, i16 -30679, i16 -30691, i16 -30693, i16 -30688, i16 -30684, i16 -30692, i16 -30677, i16 -30646, i16 -30355, i16 -30359, i16 -30354, i16 -30357, i16 -30214, i16 -29831, i16 -29832, i16 -29883, i16 -29830, i16 -29829, i16 -29424, i16 -29420, i16 -29265, i16 -29042, i16 -29044, i16 -28834, i16 -28837, i16 -28835, i16 -28346, i16 -28348, i16 -28347, i16 -28231, i16 -27585, i16 -27589, i16 -27594, i16 -27607, i16 -27587, i16 -27588, i16 -27600, i16 -27591, i16 -27606, i16 -27593, i16 -27604, i16 -27584, i16 -27599, i16 -27163, i16 -27164, i16 -27165, i16 -26827, i16 -26822, i16 -26689, i16 -26655, i16 -26524, i16 -26423, i16 -26426, i16 -26432, i16 -26280, i16 -26282, i16 -26055, i16 -26051, i16 -26042, i16 -26044, i16 -26046, i16 -26047, i16 -26054, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26049, i16 -25907, i16 -25835, i16 -25833, i16 -25832, i16 -25834, i16 -25798, i16 -25774, i16 -25557, i16 -25571, i16 -25572, i16 -25556, i16 -25565, i16 -25560, i16 -25559, i16 -25564, i16 -25567, i16 -25161, i16 -25162, i16 -25156, i16 -25151, i16 -25145, i16 -25142, i16 -25137, i16 -25154, i16 -25147, i16 -25149, i16 -25157, i16 -25163, i16 -25138, i16 -25159, i16 -25158, i16 -25172, i16 -25144, i16 -25167, i16 -25171, i16 -25140, i16 -25165, i16 -25139, i16 -25166, i16 -24966, i16 -24932, i16 -24853, i16 -24850, i16 -24851, i16 -24805, i16 -24808, i16 -24806, i16 -24783, i16 -24754, i16 -24731, i16 -24732, i16 -24686, i16 20153, i16 22214, i16 22213, i16 22219, i16 22897, i16 23371, i16 23372, i16 24021, i16 24017, i16 24306, i16 25889, i16 25888, i16 25894, i16 25890, i16 27403, i16 27400, i16 27401, i16 27661, i16 28757, i16 28758, i16 28759, i16 28754, i16 29214, i16 29215, i16 29353, i16 29567, i16 29912, i16 29909, i16 29913, i16 29911, i16 30317, i16 30381, i16 31029, i16 31156, i16 31344, i16 31345, i16 31831, i16 31836, i16 31833, i16 31835, i16 31834, i16 31988, i16 31985, i16 32401, i16 32591, i16 32647, i16 -32290, i16 -32149, i16 -31180, i16 -31179, i16 -31181, i16 -31188, i16 -31182, i16 -31178, i16 -30676, i16 -30680, i16 -30682, i16 -30678, i16 -30683, i16 -30351, i16 -30273, i16 -30274, i16 -30213, i16 -29826, i16 -29820, i16 -29822, i16 -29818, i16 -29819, i16 -29825, i16 -29419, i16 -29035, i16 -29036, i16 -29030, i16 -29038, i16 -29040, i16 -29034, i16 -29033, i16 -28832, i16 -28830, i16 -28345, i16 -27572, i16 -27568, i16 -27574, i16 -27573, i16 -27569, i16 -27577, i16 -27579, i16 -27576, i16 -27575, i16 -27578, i16 -26817, i16 -26653, i16 -26518, i16 -26519, i16 -26421, i16 -26284, i16 -26277, i16 -26034, i16 -26029, i16 -26028, i16 -26036, i16 -26033, i16 -26040, i16 -26038, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -26039, i16 -26030, i16 -26032, i16 -25904, i16 -25831, i16 -25813, i16 -25797, i16 -25770, i16 -25771, i16 -25530, i16 -25528, i16 -25537, i16 -25532, i16 -25543, i16 -25549, i16 -25535, i16 -25540, i16 -25545, i16 -25548, i16 -25550, i16 -25539, i16 -25546, i16 -25125, i16 -25134, i16 -25122, i16 -25126, i16 -25141, i16 -25136, i16 -25124, i16 -25135, i16 -25121, i16 -25111, i16 -25127, i16 -25128, i16 -25130, i16 -25099, i16 -25131, i16 -25123, i16 -24906, i16 -24848, i16 -24779, i16 -24781, i16 -24782, i16 -24766, i16 -24725, i16 -24683, i16 -24670, i16 20797, i16 21145, i16 22760, i16 22759, i16 22898, i16 23373, i16 24024, i16 -30673, i16 24399, i16 25089, i16 25091, i16 25092, i16 25897, i16 25893, i16 26006, i16 26347, i16 27409, i16 27410, i16 27407, i16 27594, i16 28763, i16 28762, i16 29218, i16 29570, i16 29569, i16 29571, i16 30320, i16 30676, i16 31847, i16 31846, i16 32405, i16 -32148, i16 -31174, i16 -31168, i16 -31175, i16 -31172, i16 -31183, i16 -31173, i16 -31170, i16 -30672, i16 -30670, i16 -30674, i16 -30669, i16 -30346, i16 -30348, i16 -30349, i16 -30210, i16 -29812, i16 -29810, i16 -29813, i16 -29816, i16 -29627, i16 -29415, i16 -29032, i16 -28828, i16 -28829, i16 -28228, i16 -27550, i16 -27563, i16 -27555, i16 -27561, i16 -27554, i16 -26684, i16 -26683, i16 -26624, i16 -26026, i16 -26023, i16 -25826, i16 -25825, i16 -25824, i16 -25518, i16 -25512, i16 -25520, i16 -25526, i16 -25523, i16 -25525, i16 -25515, i16 -25511, i16 -25524, i16 -25522, i16 -25093, i16 -25097, i16 -25105, i16 -25117, i16 -25109, i16 -25096, i16 -25116, i16 -25098, i16 -25119, i16 -25106, i16 -25114, i16 -25102, i16 -25104, i16 -25118, i16 -25108, i16 -25100, i16 -25101, i16 -25112, i16 -25107, i16 -24894, i16 -24880, i16 -24846, i16 -24845, i16 -24826, i16 -24804, i16 -24776, i16 -24777, i16 -24778, i16 -24765, i16 -24753, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -24719, i16 -24720, i16 -24722, i16 -24721, i16 22227, i16 22221, i16 23374, i16 23661, i16 25901, i16 26349, i16 26350, i16 27411, i16 28767, i16 28769, i16 28765, i16 28768, i16 29219, i16 29915, i16 29925, i16 30677, i16 31032, i16 31159, i16 31158, i16 31850, i16 32407, i16 32649, i16 -32147, i16 -31165, i16 -30664, i16 -30665, i16 -30667, i16 -30645, i16 -29804, i16 -29803, i16 -29026, i16 -29025, i16 -29024, i16 -29027, i16 -28226, i16 -28227, i16 -28222, i16 -27541, i16 -27544, i16 -27543, i16 -26907, i16 -26810, i16 -26813, i16 -26809, i16 -26681, i16 -26651, i16 -26018, i16 -25899, i16 -25767, i16 -25501, i16 -25497, i16 -25498, i16 -25502, i16 -25506, i16 -25504, i16 -25086, i16 -25090, i16 -25081, i16 -25085, i16 -25082, i16 -25083, i16 -25088, i16 -25087, i16 -25079, i16 -25089, i16 -25091, i16 -25084, i16 -24928, i16 -24802, i16 -24762, i16 -24716, i16 -24715, i16 -24714, i16 22228, i16 25902, i16 26040, i16 27416, i16 27417, i16 27415, i16 27418, i16 28770, i16 29222, i16 29354, i16 30680, i16 30681, i16 31033, i16 31849, i16 31851, i16 31990, i16 32410, i16 32408, i16 32411, i16 32409, i16 -32288, i16 -32287, i16 -31162, i16 -31161, i16 -31160, i16 -30343, i16 -30342, i16 -30340, i16 -30341, i16 -30209, i16 -29800, i16 -29799, i16 -29019, i16 -29020, i16 -29021, i16 -27538, i16 -27539, i16 -27537, i16 -27535, i16 -27533, i16 -26807, i16 -26510, i16 -26273, i16 -25496, i16 -25490, i16 -25491, i16 -25077, i16 -25075, i16 -25072, i16 -25073, i16 -25070, i16 -25071, i16 -24927, i16 -24843, i16 -24823, i16 -24761, i16 -24712, i16 -24709, i16 -24710, i16 -24711, i16 22302, i16 28774, i16 31855, i16 -30660, i16 -29262, i16 -29018, i16 -28221, i16 -27532, i16 -27528, i16 -27530, i16 -27531, i16 -26016, i16 -25484, i16 -25485, i16 -25487, i16 -25483, i16 -25068, i16 -25069, i16 -24842, i16 -24822, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -24668, i16 28776, i16 28773, i16 31991, i16 -31126, i16 -30658, i16 -30659, i16 -30657, i16 -29794, i16 -29540, i16 -29015, i16 -28983, i16 -26805, i16 -26509, i16 -26508, i16 -26420, i16 -26271, i16 -26197, i16 -26012, i16 -26010, i16 -26009, i16 -25820, i16 -25067, i16 -25065, i16 -24760, i16 25095, i16 27422, i16 29223, i16 -31156, i16 -29016, i16 -27518, i16 -27520, i16 -27519, i16 -26007, i16 -26008, i16 -25810, i16 -25063, i16 29225, i16 -31157, i16 -29793, i16 -27517, i16 -25479, i16 -24905, i16 30325, i16 -26005, i16 -25478, i16 -25059, i16 28777, i16 28778, i16 -24924, i16 -24706, i16 -24759, i16 -24680], align 16
@cp950ext_encmap = internal constant [256 x %struct.unim_index] [%struct.unim_index { i16* getelementptr inbounds ([581 x i16], [581 x i16]* @__cp950ext_encmap, i32 0, i32 0), i8 -81, i8 -81 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 2) to i16*), i8 39, i8 -84 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 270) to i16*), i8 21, i8 -103 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 536) to i16*), i8 81, i8 -109 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 670) to i16*), i8 -69, i8 -69 }, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 672) to i16*), i8 -6, i8 -6 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 674) to i16*), i8 82, i8 82 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 676) to i16*), i8 -127, i8 -127 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 678) to i16*), i8 -89, i8 -89 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 680) to i16*), i8 -49, i8 -49 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 682) to i16*), i8 -71, i8 -71 }, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index zeroinitializer, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 684) to i16*), i8 81, i8 104 }, %struct.unim_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([581 x i16]* @__cp950ext_encmap to i8*), i64 732) to i16*), i8 15, i8 -27 }], align 16
@__cp950ext_encmap = internal constant [581 x i16] [i16 -24126, i16 -24251, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23583, i16 -23999, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24078, i16 -1, i16 -1, i16 -1, i16 -24077, i16 -1544, i16 -1562, i16 -1553, i16 -1571, i16 -1560, i16 -1551, i16 -1569, i16 -1556, i16 -1547, i16 -1565, i16 -1554, i16 -1545, i16 -1563, i16 -1, i16 -1550, i16 -1568, i16 -1, i16 -1548, i16 -1566, i16 -1561, i16 -1552, i16 -1570, i16 -1555, i16 -1546, i16 -1564, i16 -1, i16 -1549, i16 -1567, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1538, i16 -1575, i16 -1572, i16 -1574, i16 -1578, i16 -1573, i16 -1576, i16 -1577, i16 -24242, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23998, i16 -24066, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24000, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -24093, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -23994, i16 -23993, i16 -1, i16 -1, i16 -1, i16 -23996], align 16
@cp950ext_decmap = internal constant [256 x %struct.dbcs_index] [%struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* getelementptr inbounds ([224 x i16], [224 x i16]* @__cp950ext_decmap, i32 0, i32 0), i8 69, i8 -13 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([224 x i16]* @__cp950ext_decmap to i8*), i64 350) to i16*), i8 65, i8 71 }, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([224 x i16]* @__cp950ext_decmap to i8*), i64 364) to i16*), i8 -31, i8 -31 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index { i16* bitcast (i8* getelementptr (i8, i8* bitcast ([224 x i16]* @__cp950ext_decmap to i8*), i64 366) to i16*), i8 -42, i8 -2 }, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer, %struct.dbcs_index zeroinitializer], align 16
@__cp950ext_decmap = internal constant [224 x i16] [i16 8231, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -431, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 175, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -162, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 -2, i16 8853, i16 8857, i16 8725, i16 -408, i16 -2, i16 -27, i16 -2, i16 -32, i16 -31, i16 8364, i16 30849, i16 -27975, i16 -30513, i16 22715, i16 24658, i16 31911, i16 23290, i16 9556, i16 9574, i16 9559, i16 9568, i16 9580, i16 9571, i16 9562, i16 9577, i16 9565, i16 9554, i16 9572, i16 9557, i16 9566, i16 9578, i16 9569, i16 9560, i16 9575, i16 9563, i16 9555, i16 9573, i16 9558, i16 9567, i16 9579, i16 9570, i16 9561, i16 9576, i16 9564, i16 9553, i16 9552, i16 9581, i16 9582, i16 9584, i16 9583, i16 9619], align 16
@mapping_list = internal global %struct.dbcs_map* getelementptr inbounds ([3 x %struct.dbcs_map], [3 x %struct.dbcs_map]* @_mapping_list, i32 0, i32 0), align 8
@_mapping_list = internal constant [3 x %struct.dbcs_map] [%struct.dbcs_map { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct.unim_index* getelementptr inbounds ([256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i32 0), %struct.dbcs_index* getelementptr inbounds ([256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i32 0) }, %struct.dbcs_map { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), %struct.unim_index* getelementptr inbounds ([256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i32 0), %struct.dbcs_index* getelementptr inbounds ([256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i32 0) }, %struct.dbcs_map { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), %struct.unim_index* null, %struct.dbcs_index* null }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"cp950ext\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__codecs_tw() #0 {
entry:
  %m = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %m to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !620
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !366, metadata !621), !dbg !622
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @__module, i32 1013), !dbg !623
  store %struct._object* %call, %struct._object** %m, align 8, !dbg !622, !tbaa !624
  %1 = load %struct._object*, %struct._object** %m, align 8, !dbg !628, !tbaa !624
  %cmp = icmp ne %struct._object* %1, null, !dbg !630
  br i1 %cmp, label %if.then, label %if.end, !dbg !631

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !632, !tbaa !624
  %call1 = call i32 @register_maps(%struct._object* %2), !dbg !634
  br label %if.end, !dbg !635

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !636, !tbaa !624
  %4 = bitcast %struct._object** %m to i8*, !dbg !639
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !639
  ret %struct._object* %3, !dbg !640
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
  store %struct._object* %module, %struct._object** %module.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %struct._object** %module.addr, metadata !523, metadata !621), !dbg !641
  %0 = bitcast %struct.dbcs_map** %h to i8*, !dbg !642
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !642
  call void @llvm.dbg.declare(metadata %struct.dbcs_map** %h, metadata !524, metadata !621), !dbg !643
  %1 = load %struct.dbcs_map*, %struct.dbcs_map** @mapping_list, align 8, !dbg !644, !tbaa !624
  store %struct.dbcs_map* %1, %struct.dbcs_map** %h, align 8, !dbg !645, !tbaa !624
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !647, !tbaa !624
  %charset = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %2, i32 0, i32 0, !dbg !650
  %3 = load i8*, i8** %charset, align 8, !dbg !650, !tbaa !651
  %arrayidx = getelementptr i8, i8* %3, i64 0, !dbg !653
  %4 = load i8, i8* %arrayidx, align 1, !dbg !653, !tbaa !654
  %conv = sext i8 %4 to i32, !dbg !653
  %cmp = icmp ne i32 %conv, 0, !dbg !655
  br i1 %cmp, label %for.body, label %for.end, !dbg !656

for.body:                                         ; preds = %for.cond
  %5 = bitcast [256 x i8]* %mhname to i8*, !dbg !657
  call void @llvm.lifetime.start(i64 256, i8* %5) #1, !dbg !657
  call void @llvm.dbg.declare(metadata [256 x i8]* %mhname, metadata !550, metadata !621), !dbg !658
  %6 = bitcast [256 x i8]* %mhname to i8*, !dbg !658
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 256, i32 16, i1 false), !dbg !658
  %7 = bitcast i8* %6 to [256 x i8]*, !dbg !658
  %8 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 0, !dbg !658
  store i8 95, i8* %8, !dbg !658
  %9 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 1, !dbg !658
  store i8 95, i8* %9, !dbg !658
  %10 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 2, !dbg !658
  store i8 109, i8* %10, !dbg !658
  %11 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 3, !dbg !658
  store i8 97, i8* %11, !dbg !658
  %12 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 4, !dbg !658
  store i8 112, i8* %12, !dbg !658
  %13 = getelementptr [256 x i8], [256 x i8]* %7, i32 0, i32 5, !dbg !658
  store i8 95, i8* %13, !dbg !658
  %14 = bitcast i32* %r to i8*, !dbg !659
  call void @llvm.lifetime.start(i64 4, i8* %14) #1, !dbg !659
  call void @llvm.dbg.declare(metadata i32* %r, metadata !557, metadata !621), !dbg !660
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0, !dbg !661
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 7, !dbg !662
  %add.ptr2 = getelementptr i8, i8* %add.ptr, i64 -1, !dbg !663
  %15 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !664, !tbaa !624
  %charset3 = getelementptr inbounds %struct.dbcs_map, %struct.dbcs_map* %15, i32 0, i32 0, !dbg !665
  %16 = load i8*, i8** %charset3, align 8, !dbg !665, !tbaa !651
  %call = call i8* @strcpy(i8* %add.ptr2, i8* %16) #1, !dbg !666
  %17 = load %struct._object*, %struct._object** %module.addr, align 8, !dbg !667, !tbaa !624
  %arraydecay4 = getelementptr inbounds [256 x i8], [256 x i8]* %mhname, i32 0, i32 0, !dbg !668
  %18 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !669, !tbaa !624
  %19 = bitcast %struct.dbcs_map* %18 to i8*, !dbg !670
  %call5 = call %struct._object* @PyCapsule_New(i8* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null), !dbg !671
  %call6 = call i32 @PyModule_AddObject(%struct._object* %17, i8* %arraydecay4, %struct._object* %call5), !dbg !672
  store i32 %call6, i32* %r, align 4, !dbg !673, !tbaa !674
  %20 = load i32, i32* %r, align 4, !dbg !676, !tbaa !674
  %cmp7 = icmp eq i32 %20, -1, !dbg !678
  br i1 %cmp7, label %if.then, label %if.end, !dbg !679

if.then:                                          ; preds = %for.body
  store i32 -1, i32* %retval, !dbg !680
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !680

if.end:                                           ; preds = %for.body
  store i32 0, i32* %cleanup.dest.slot, !dbg !681
  br label %cleanup, !dbg !681

cleanup:                                          ; preds = %if.end, %if.then
  %21 = bitcast i32* %r to i8*, !dbg !682
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !682
  %22 = bitcast [256 x i8]* %mhname to i8*, !dbg !682
  call void @llvm.lifetime.end(i64 256, i8* %22) #1, !dbg !682
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %for.inc, !dbg !683

for.inc:                                          ; preds = %cleanup.cont
  %23 = load %struct.dbcs_map*, %struct.dbcs_map** %h, align 8, !dbg !684, !tbaa !624
  %incdec.ptr = getelementptr %struct.dbcs_map, %struct.dbcs_map* %23, i32 1, !dbg !684
  store %struct.dbcs_map* %incdec.ptr, %struct.dbcs_map** %h, align 8, !dbg !684, !tbaa !624
  br label %for.cond, !dbg !685

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, !dbg !686
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.10, !dbg !686

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.10

cleanup.10:                                       ; preds = %NewDefault, %for.end
  %24 = bitcast %struct.dbcs_map** %h to i8*, !dbg !687
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !687
  %25 = load i32, i32* %retval, !dbg !687
  ret i32 %25, !dbg !687
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
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !370, metadata !621), !dbg !688
  store %struct._object* %encoding, %struct._object** %encoding.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %struct._object** %encoding.addr, metadata !371, metadata !621), !dbg !689
  %0 = bitcast %struct._object** %codecobj to i8*, !dbg !690
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !690
  call void @llvm.dbg.declare(metadata %struct._object** %codecobj, metadata !372, metadata !621), !dbg !691
  %1 = bitcast %struct._object** %r to i8*, !dbg !690
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !690
  call void @llvm.dbg.declare(metadata %struct._object** %r, metadata !373, metadata !621), !dbg !692
  %2 = bitcast %struct._object** %cofunc to i8*, !dbg !690
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !690
  call void @llvm.dbg.declare(metadata %struct._object** %cofunc, metadata !374, metadata !621), !dbg !693
  %3 = bitcast %struct.MultibyteCodec** %codec to i8*, !dbg !694
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !694
  call void @llvm.dbg.declare(metadata %struct.MultibyteCodec** %codec, metadata !375, metadata !621), !dbg !695
  %4 = bitcast i8** %enc to i8*, !dbg !696
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !696
  call void @llvm.dbg.declare(metadata i8** %enc, metadata !456, metadata !621), !dbg !697
  %5 = load %struct._object*, %struct._object** %encoding.addr, align 8, !dbg !698, !tbaa !624
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !700
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !700, !tbaa !701
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19, !dbg !704
  %7 = load i64, i64* %tp_flags, align 8, !dbg !704, !tbaa !705
  %and = and i64 %7, 268435456, !dbg !708
  %cmp = icmp ne i64 %and, 0, !dbg !709
  br i1 %cmp, label %if.end, label %if.then, !dbg !710

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !711, !tbaa !624
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0)), !dbg !713
  store %struct._object* null, %struct._object** %retval, !dbg !714
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !714

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %encoding.addr, align 8, !dbg !715, !tbaa !624
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %9), !dbg !716
  store i8* %call, i8** %enc, align 8, !dbg !717, !tbaa !624
  %10 = load i8*, i8** %enc, align 8, !dbg !718, !tbaa !624
  %cmp1 = icmp eq i8* %10, null, !dbg !720
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !721

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !722
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !722

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @getmultibytecodec(), !dbg !723
  store %struct._object* %call4, %struct._object** %cofunc, align 8, !dbg !724, !tbaa !624
  %11 = load %struct._object*, %struct._object** %cofunc, align 8, !dbg !725, !tbaa !624
  %cmp5 = icmp eq %struct._object* %11, null, !dbg !727
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !728

if.then.6:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !729
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !729

if.end.7:                                         ; preds = %if.end.3
  %12 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** @codec_list, align 8, !dbg !730, !tbaa !624
  store %struct.MultibyteCodec* %12, %struct.MultibyteCodec** %codec, align 8, !dbg !731, !tbaa !624
  br label %for.cond, !dbg !732

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !733, !tbaa !624
  %encoding8 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %13, i32 0, i32 0, !dbg !736
  %14 = load i8*, i8** %encoding8, align 8, !dbg !736, !tbaa !737
  %arrayidx = getelementptr i8, i8* %14, i64 0, !dbg !739
  %15 = load i8, i8* %arrayidx, align 1, !dbg !739, !tbaa !654
  %tobool = icmp ne i8 %15, 0, !dbg !740
  br i1 %tobool, label %for.body, label %for.end, !dbg !740

for.body:                                         ; preds = %for.cond
  %16 = bitcast i64* %__s1_len to i8*, !dbg !741
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !741
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !457, metadata !621), !dbg !742
  %17 = bitcast i64* %__s2_len to i8*, !dbg !741
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !741
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !462, metadata !621), !dbg !743
  %18 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !744, !tbaa !624
  %encoding9 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %18, i32 0, i32 0, !dbg !745
  %19 = load i8*, i8** %encoding9, align 8, !dbg !745, !tbaa !737
  %20 = load i8*, i8** %enc, align 8, !dbg !746, !tbaa !624
  %call10 = call i32 @strcmp(i8* %19, i8* %20) #1, !dbg !747
  store i32 %call10, i32* %tmp, !dbg !741, !tbaa !674
  %21 = bitcast i64* %__s2_len to i8*, !dbg !748
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !748
  %22 = bitcast i64* %__s1_len to i8*, !dbg !748
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !748
  %23 = load i32, i32* %tmp, !dbg !749, !tbaa !674
  %cmp11 = icmp eq i32 %23, 0, !dbg !750
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !751

if.then.12:                                       ; preds = %for.body
  br label %for.end, !dbg !752

if.end.13:                                        ; preds = %for.body
  br label %for.inc, !dbg !753

for.inc:                                          ; preds = %if.end.13
  %24 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !755, !tbaa !624
  %incdec.ptr = getelementptr %struct.MultibyteCodec, %struct.MultibyteCodec* %24, i32 1, !dbg !755
  store %struct.MultibyteCodec* %incdec.ptr, %struct.MultibyteCodec** %codec, align 8, !dbg !755, !tbaa !624
  br label %for.cond, !dbg !756

for.end:                                          ; preds = %if.then.12, %for.cond
  %25 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !757, !tbaa !624
  %encoding14 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %25, i32 0, i32 0, !dbg !759
  %26 = load i8*, i8** %encoding14, align 8, !dbg !759, !tbaa !737
  %arrayidx15 = getelementptr i8, i8* %26, i64 0, !dbg !757
  %27 = load i8, i8* %arrayidx15, align 1, !dbg !757, !tbaa !654
  %conv = sext i8 %27 to i32, !dbg !757
  %cmp16 = icmp eq i32 %conv, 0, !dbg !760
  br i1 %cmp16, label %if.then.18, label %if.end.19, !dbg !761

if.then.18:                                       ; preds = %for.end
  %28 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8, !dbg !762, !tbaa !624
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)), !dbg !764
  store %struct._object* null, %struct._object** %retval, !dbg !765
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !765

if.end.19:                                        ; preds = %for.end
  %29 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8, !dbg !766, !tbaa !624
  %30 = bitcast %struct.MultibyteCodec* %29 to i8*, !dbg !767
  %call20 = call %struct._object* @PyCapsule_New(i8* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0), void (%struct._object*)* null), !dbg !768
  store %struct._object* %call20, %struct._object** %codecobj, align 8, !dbg !769, !tbaa !624
  %31 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !770, !tbaa !624
  %cmp21 = icmp eq %struct._object* %31, null, !dbg !772
  br i1 %cmp21, label %if.then.23, label %if.end.24, !dbg !773

if.then.23:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !774
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !774

if.end.24:                                        ; preds = %if.end.19
  %32 = load %struct._object*, %struct._object** %cofunc, align 8, !dbg !775, !tbaa !624
  %33 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !776, !tbaa !624
  %call25 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %32, %struct._object* %33, i8* null), !dbg !777
  store %struct._object* %call25, %struct._object** %r, align 8, !dbg !778, !tbaa !624
  br label %do.body, !dbg !779

do.body:                                          ; preds = %if.end.24
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !780
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !780
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !463, metadata !621), !dbg !782
  %35 = load %struct._object*, %struct._object** %codecobj, align 8, !dbg !783, !tbaa !624
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8, !dbg !782, !tbaa !624
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !784, !tbaa !624
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !786
  %37 = load i64, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !788
  %dec = add i64 %37, -1, !dbg !787
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !787, !tbaa !788
  %cmp27 = icmp ne i64 %dec, 0, !dbg !789
  br i1 %cmp27, label %if.then.29, label %if.else, !dbg !790

if.then.29:                                       ; preds = %do.body
  br label %if.end.31, !dbg !791

if.else:                                          ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !793, !tbaa !624
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !795
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !795, !tbaa !701
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !796
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !796, !tbaa !797
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !798, !tbaa !624
  call void %40(%struct._object* %41), !dbg !799
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  %42 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !800
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !800
  br label %do.cond, !dbg !802

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !803

do.end:                                           ; preds = %do.cond
  %43 = load %struct._object*, %struct._object** %r, align 8, !dbg !805, !tbaa !624
  store %struct._object* %43, %struct._object** %retval, !dbg !806
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !806

cleanup:                                          ; preds = %do.end, %if.then.23, %if.then.18, %if.then.6, %if.then.2, %if.then
  %44 = bitcast i8** %enc to i8*, !dbg !807
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !807
  %45 = bitcast %struct.MultibyteCodec** %codec to i8*, !dbg !807
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !807
  %46 = bitcast %struct._object** %cofunc to i8*, !dbg !807
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !807
  %47 = bitcast %struct._object** %r to i8*, !dbg !807
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !807
  %48 = bitcast %struct._object** %codecobj to i8*, !dbg !807
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !807
  %49 = load %struct._object*, %struct._object** %retval, !dbg !807
  ret %struct._object* %49, !dbg !807
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
  %0 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !808, !tbaa !624
  %cmp = icmp eq %struct._object* %0, null, !dbg !809
  br i1 %cmp, label %if.then, label %if.end.7, !dbg !810

if.then:                                          ; preds = %entry
  %1 = bitcast %struct._object** %mod to i8*, !dbg !811
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !811
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !467, metadata !621), !dbg !812
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !813
  store %struct._object* %call, %struct._object** %mod, align 8, !dbg !812, !tbaa !624
  %2 = load %struct._object*, %struct._object** %mod, align 8, !dbg !814, !tbaa !624
  %cmp1 = icmp eq %struct._object* %2, null, !dbg !816
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !817

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !818

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %mod, align 8, !dbg !819, !tbaa !624
  %call3 = call %struct._object* @PyObject_GetAttrString(%struct._object* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !820
  store %struct._object* %call3, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !821, !tbaa !624
  br label %do.body, !dbg !822

do.body:                                          ; preds = %if.end
  %4 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !823
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !823
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !470, metadata !621), !dbg !825
  %5 = load %struct._object*, %struct._object** %mod, align 8, !dbg !826, !tbaa !624
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8, !dbg !825, !tbaa !624
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !827, !tbaa !624
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0, !dbg !829
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !830, !tbaa !788
  %dec = add i64 %7, -1, !dbg !830
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !830, !tbaa !788
  %cmp4 = icmp ne i64 %dec, 0, !dbg !831
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !832

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !833

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !835, !tbaa !624
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !837
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !837, !tbaa !701
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4, !dbg !838
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !838, !tbaa !797
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !839, !tbaa !624
  call void %10(%struct._object* %11), !dbg !840
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !841
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !841
  br label %do.cond, !dbg !843

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !844

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !846
  br label %cleanup, !dbg !846

cleanup:                                          ; preds = %do.end, %if.then.2
  %13 = bitcast %struct._object** %mod to i8*, !dbg !847
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !847
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.7, !dbg !849

if.end.7:                                         ; preds = %cleanup.cont, %entry
  %14 = load %struct._object*, %struct._object** @getmultibytecodec.cofunc, align 8, !dbg !850, !tbaa !624
  store %struct._object* %14, %struct._object** %retval, !dbg !851
  br label %return, !dbg !851

return:                                           ; preds = %LeafBlock, %if.end.7
  %15 = load %struct._object*, %struct._object** %retval, !dbg !852
  ret %struct._object* %15, !dbg !852
}

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i64 @big5_encode(%union.MultibyteCodec_State* %state, i8* %config, i32 %kind, i8* %data, i64* %inpos, i64 %inlen, i8** %outbuf, i64 %outleft, i32 %flags) #0 {
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
  %cleanup.dest.slot = alloca i32
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !474, metadata !621), !dbg !853
  store i8* %config, i8** %config.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !475, metadata !621), !dbg !854
  store i32 %kind, i32* %kind.addr, align 4, !tbaa !674
  call void @llvm.dbg.declare(metadata i32* %kind.addr, metadata !476, metadata !621), !dbg !855
  store i8* %data, i8** %data.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !477, metadata !621), !dbg !856
  store i64* %inpos, i64** %inpos.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i64** %inpos.addr, metadata !478, metadata !621), !dbg !857
  store i64 %inlen, i64* %inlen.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !479, metadata !621), !dbg !859
  store i8** %outbuf, i8*** %outbuf.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8*** %outbuf.addr, metadata !480, metadata !621), !dbg !860
  store i64 %outleft, i64* %outleft.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %outleft.addr, metadata !481, metadata !621), !dbg !861
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !674
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !482, metadata !621), !dbg !862
  br label %while.cond, !dbg !863

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont, %entry
  %0 = load i64*, i64** %inpos.addr, align 8, !dbg !864, !tbaa !624
  %1 = load i64, i64* %0, align 8, !dbg !867, !tbaa !858
  %2 = load i64, i64* %inlen.addr, align 8, !dbg !868, !tbaa !858
  %cmp = icmp slt i64 %1, %2, !dbg !869
  br i1 %cmp, label %while.body, label %while.end, !dbg !863

while.body:                                       ; preds = %while.cond
  %3 = bitcast i32* %c to i8*, !dbg !870
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !870
  call void @llvm.dbg.declare(metadata i32* %c, metadata !483, metadata !621), !dbg !871
  %4 = load i32, i32* %kind.addr, align 4, !dbg !872, !tbaa !674
  %cmp1 = icmp eq i32 %4, 1, !dbg !873
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !874

cond.true:                                        ; preds = %while.body
  %5 = load i64*, i64** %inpos.addr, align 8, !dbg !875, !tbaa !624
  %6 = load i64, i64* %5, align 8, !dbg !877, !tbaa !858
  %7 = load i8*, i8** %data.addr, align 8, !dbg !878, !tbaa !624
  %arrayidx = getelementptr i8, i8* %7, i64 %6, !dbg !879
  %8 = load i8, i8* %arrayidx, align 1, !dbg !879, !tbaa !654
  %conv = zext i8 %8 to i32, !dbg !879
  br label %cond.end.9, !dbg !874

cond.false:                                       ; preds = %while.body
  %9 = load i32, i32* %kind.addr, align 4, !dbg !880, !tbaa !674
  %cmp2 = icmp eq i32 %9, 2, !dbg !882
  br i1 %cmp2, label %cond.true.4, label %cond.false.7, !dbg !883

cond.true.4:                                      ; preds = %cond.false
  %10 = load i64*, i64** %inpos.addr, align 8, !dbg !884, !tbaa !624
  %11 = load i64, i64* %10, align 8, !dbg !886, !tbaa !858
  %12 = load i8*, i8** %data.addr, align 8, !dbg !887, !tbaa !624
  %13 = bitcast i8* %12 to i16*, !dbg !888
  %arrayidx5 = getelementptr i16, i16* %13, i64 %11, !dbg !889
  %14 = load i16, i16* %arrayidx5, align 2, !dbg !889, !tbaa !890
  %conv6 = zext i16 %14 to i32, !dbg !889
  br label %cond.end, !dbg !883

cond.false.7:                                     ; preds = %cond.false
  %15 = load i64*, i64** %inpos.addr, align 8, !dbg !892, !tbaa !624
  %16 = load i64, i64* %15, align 8, !dbg !894, !tbaa !858
  %17 = load i8*, i8** %data.addr, align 8, !dbg !895, !tbaa !624
  %18 = bitcast i8* %17 to i32*, !dbg !896
  %arrayidx8 = getelementptr i32, i32* %18, i64 %16, !dbg !897
  %19 = load i32, i32* %arrayidx8, align 4, !dbg !897, !tbaa !674
  br label %cond.end, !dbg !883

cond.end:                                         ; preds = %cond.false.7, %cond.true.4
  %cond = phi i32 [ %conv6, %cond.true.4 ], [ %19, %cond.false.7 ], !dbg !883
  br label %cond.end.9, !dbg !898

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ], !dbg !874
  store i32 %cond10, i32* %c, align 4, !dbg !901, !tbaa !674
  %20 = bitcast i16* %code to i8*, !dbg !904
  call void @llvm.lifetime.start(i64 2, i8* %20) #1, !dbg !904
  call void @llvm.dbg.declare(metadata i16* %code, metadata !485, metadata !621), !dbg !905
  %21 = load i32, i32* %c, align 4, !dbg !906, !tbaa !674
  %cmp11 = icmp ult i32 %21, 128, !dbg !908
  br i1 %cmp11, label %if.then, label %if.end.26, !dbg !909

if.then:                                          ; preds = %cond.end.9
  br label %do.body, !dbg !910

do.body:                                          ; preds = %if.then
  %22 = load i64, i64* %outleft.addr, align 8, !dbg !912, !tbaa !858
  %cmp13 = icmp slt i64 %22, 1, !dbg !916
  br i1 %cmp13, label %if.then.15, label %if.end, !dbg !917

if.then.15:                                       ; preds = %do.body
  store i64 -1, i64* %retval, !dbg !918
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !920

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !921

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !923

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %c, align 4, !dbg !925, !tbaa !674
  %conv16 = trunc i32 %23 to i8, !dbg !926
  %24 = load i8**, i8*** %outbuf.addr, align 8, !dbg !927, !tbaa !624
  %25 = load i8*, i8** %24, align 8, !dbg !928, !tbaa !624
  store i8 %conv16, i8* %25, align 1, !dbg !929, !tbaa !654
  br label %do.body.17, !dbg !930

do.body.17:                                       ; preds = %do.end
  br label %do.body.18, !dbg !931

do.body.18:                                       ; preds = %do.body.17
  %26 = load i64*, i64** %inpos.addr, align 8, !dbg !934, !tbaa !624
  %27 = load i64, i64* %26, align 8, !dbg !937, !tbaa !858
  %add = add i64 %27, 1, !dbg !937
  store i64 %add, i64* %26, align 8, !dbg !937, !tbaa !858
  br label %do.cond.19, !dbg !938

do.cond.19:                                       ; preds = %do.body.18
  br label %do.end.20, !dbg !939

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21, !dbg !941

do.body.21:                                       ; preds = %do.end.20
  %28 = load i8**, i8*** %outbuf.addr, align 8, !dbg !943, !tbaa !624
  %29 = load i8*, i8** %28, align 8, !dbg !946, !tbaa !624
  %add.ptr = getelementptr i8, i8* %29, i64 1, !dbg !946
  store i8* %add.ptr, i8** %28, align 8, !dbg !946, !tbaa !624
  %30 = load i64, i64* %outleft.addr, align 8, !dbg !947, !tbaa !858
  %sub = sub i64 %30, 1, !dbg !947
  store i64 %sub, i64* %outleft.addr, align 8, !dbg !947, !tbaa !858
  br label %do.cond.22, !dbg !948

do.cond.22:                                       ; preds = %do.body.21
  br label %do.end.23, !dbg !949

do.end.23:                                        ; preds = %do.cond.22
  br label %do.cond.24, !dbg !951

do.cond.24:                                       ; preds = %do.end.23
  br label %do.end.25, !dbg !953

do.end.25:                                        ; preds = %do.cond.24
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !955

if.end.26:                                        ; preds = %cond.end.9
  %31 = load i32, i32* %c, align 4, !dbg !956, !tbaa !674
  %cmp27 = icmp ugt i32 %31, 65535, !dbg !958
  br i1 %cmp27, label %if.then.29, label %if.end.30, !dbg !959

if.then.29:                                       ; preds = %if.end.26
  store i64 1, i64* %retval, !dbg !960
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !960

if.end.30:                                        ; preds = %if.end.26
  br label %do.body.31, !dbg !961

do.body.31:                                       ; preds = %if.end.30
  %32 = load i64, i64* %outleft.addr, align 8, !dbg !962, !tbaa !858
  %cmp32 = icmp slt i64 %32, 2, !dbg !966
  br i1 %cmp32, label %if.then.34, label %if.end.35, !dbg !967

if.then.34:                                       ; preds = %do.body.31
  store i64 -1, i64* %retval, !dbg !968
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !970

if.end.35:                                        ; preds = %do.body.31
  br label %do.cond.36, !dbg !971

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !973

do.end.37:                                        ; preds = %do.cond.36
  %33 = load i32, i32* %c, align 4, !dbg !975, !tbaa !674
  %shr = lshr i32 %33, 8, !dbg !977
  %idxprom = zext i32 %shr to i64, !dbg !978
  %arrayidx38 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom, !dbg !978
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx38, i32 0, i32 0, !dbg !979
  %34 = load i16*, i16** %map, align 8, !dbg !979, !tbaa !980
  %cmp39 = icmp ne i16* %34, null, !dbg !982
  br i1 %cmp39, label %land.lhs.true, label %if.else, !dbg !983

land.lhs.true:                                    ; preds = %do.end.37
  %35 = load i32, i32* %c, align 4, !dbg !984, !tbaa !674
  %and = and i32 %35, 255, !dbg !986
  %36 = load i32, i32* %c, align 4, !dbg !987, !tbaa !674
  %shr41 = lshr i32 %36, 8, !dbg !988
  %idxprom42 = zext i32 %shr41 to i64, !dbg !989
  %arrayidx43 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom42, !dbg !989
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx43, i32 0, i32 1, !dbg !990
  %37 = load i8, i8* %bottom, align 1, !dbg !990, !tbaa !991
  %conv44 = zext i8 %37 to i32, !dbg !992
  %cmp45 = icmp uge i32 %and, %conv44, !dbg !993
  br i1 %cmp45, label %land.lhs.true.47, label %if.else, !dbg !994

land.lhs.true.47:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* %c, align 4, !dbg !995, !tbaa !674
  %and48 = and i32 %38, 255, !dbg !997
  %39 = load i32, i32* %c, align 4, !dbg !998, !tbaa !674
  %shr49 = lshr i32 %39, 8, !dbg !999
  %idxprom50 = zext i32 %shr49 to i64, !dbg !1000
  %arrayidx51 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom50, !dbg !1000
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx51, i32 0, i32 2, !dbg !1001
  %40 = load i8, i8* %top, align 1, !dbg !1001, !tbaa !1002
  %conv52 = zext i8 %40 to i32, !dbg !1003
  %cmp53 = icmp ule i32 %and48, %conv52, !dbg !1004
  br i1 %cmp53, label %land.lhs.true.55, label %if.else, !dbg !1005

land.lhs.true.55:                                 ; preds = %land.lhs.true.47
  %41 = load i32, i32* %c, align 4, !dbg !1006, !tbaa !674
  %and56 = and i32 %41, 255, !dbg !1008
  %42 = load i32, i32* %c, align 4, !dbg !1009, !tbaa !674
  %shr57 = lshr i32 %42, 8, !dbg !1010
  %idxprom58 = zext i32 %shr57 to i64, !dbg !1011
  %arrayidx59 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom58, !dbg !1011
  %bottom60 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx59, i32 0, i32 1, !dbg !1012
  %43 = load i8, i8* %bottom60, align 1, !dbg !1012, !tbaa !991
  %conv61 = zext i8 %43 to i32, !dbg !1013
  %sub62 = sub i32 %and56, %conv61, !dbg !1014
  %idxprom63 = zext i32 %sub62 to i64, !dbg !1015
  %44 = load i32, i32* %c, align 4, !dbg !1016, !tbaa !674
  %shr64 = lshr i32 %44, 8, !dbg !1017
  %idxprom65 = zext i32 %shr64 to i64, !dbg !1018
  %arrayidx66 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom65, !dbg !1018
  %map67 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx66, i32 0, i32 0, !dbg !1019
  %45 = load i16*, i16** %map67, align 8, !dbg !1019, !tbaa !980
  %arrayidx68 = getelementptr i16, i16* %45, i64 %idxprom63, !dbg !1015
  %46 = load i16, i16* %arrayidx68, align 2, !dbg !1015, !tbaa !890
  store i16 %46, i16* %code, align 2, !dbg !1020, !tbaa !890
  %conv69 = zext i16 %46 to i32, !dbg !1021
  %cmp70 = icmp ne i32 %conv69, 65535, !dbg !1022
  br i1 %cmp70, label %if.then.72, label %if.else, !dbg !1023

if.then.72:                                       ; preds = %land.lhs.true.55
  br label %if.end.73, !dbg !1024

if.else:                                          ; preds = %land.lhs.true.55, %land.lhs.true.47, %land.lhs.true, %do.end.37
  store i64 1, i64* %retval, !dbg !1025
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1025

if.end.73:                                        ; preds = %if.then.72
  br label %do.body.74, !dbg !1026

do.body.74:                                       ; preds = %if.end.73
  %47 = load i16, i16* %code, align 2, !dbg !1027, !tbaa !890
  %conv75 = zext i16 %47 to i32, !dbg !1027
  %shr76 = ashr i32 %conv75, 8, !dbg !1030
  %conv77 = trunc i32 %shr76 to i8, !dbg !1031
  %48 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1032, !tbaa !624
  %49 = load i8*, i8** %48, align 8, !dbg !1033, !tbaa !624
  %arrayidx78 = getelementptr i8, i8* %49, i64 0, !dbg !1034
  store i8 %conv77, i8* %arrayidx78, align 1, !dbg !1035, !tbaa !654
  br label %do.cond.79, !dbg !1036

do.cond.79:                                       ; preds = %do.body.74
  br label %do.end.80, !dbg !1037

do.end.80:                                        ; preds = %do.cond.79
  br label %do.body.81, !dbg !1039

do.body.81:                                       ; preds = %do.end.80
  %50 = load i16, i16* %code, align 2, !dbg !1040, !tbaa !890
  %conv82 = zext i16 %50 to i32, !dbg !1040
  %and83 = and i32 %conv82, 255, !dbg !1043
  %conv84 = trunc i32 %and83 to i8, !dbg !1044
  %51 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1045, !tbaa !624
  %52 = load i8*, i8** %51, align 8, !dbg !1046, !tbaa !624
  %arrayidx85 = getelementptr i8, i8* %52, i64 1, !dbg !1047
  store i8 %conv84, i8* %arrayidx85, align 1, !dbg !1048, !tbaa !654
  br label %do.cond.86, !dbg !1049

do.cond.86:                                       ; preds = %do.body.81
  br label %do.end.87, !dbg !1050

do.end.87:                                        ; preds = %do.cond.86
  br label %do.body.88, !dbg !1052

do.body.88:                                       ; preds = %do.end.87
  br label %do.body.89, !dbg !1053

do.body.89:                                       ; preds = %do.body.88
  %53 = load i64*, i64** %inpos.addr, align 8, !dbg !1056, !tbaa !624
  %54 = load i64, i64* %53, align 8, !dbg !1059, !tbaa !858
  %add90 = add i64 %54, 1, !dbg !1059
  store i64 %add90, i64* %53, align 8, !dbg !1059, !tbaa !858
  br label %do.cond.91, !dbg !1060

do.cond.91:                                       ; preds = %do.body.89
  br label %do.end.92, !dbg !1061

do.end.92:                                        ; preds = %do.cond.91
  br label %do.body.93, !dbg !1063

do.body.93:                                       ; preds = %do.end.92
  %55 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1065, !tbaa !624
  %56 = load i8*, i8** %55, align 8, !dbg !1068, !tbaa !624
  %add.ptr94 = getelementptr i8, i8* %56, i64 2, !dbg !1068
  store i8* %add.ptr94, i8** %55, align 8, !dbg !1068, !tbaa !624
  %57 = load i64, i64* %outleft.addr, align 8, !dbg !1069, !tbaa !858
  %sub95 = sub i64 %57, 2, !dbg !1069
  store i64 %sub95, i64* %outleft.addr, align 8, !dbg !1069, !tbaa !858
  br label %do.cond.96, !dbg !1070

do.cond.96:                                       ; preds = %do.body.93
  br label %do.end.97, !dbg !1071

do.end.97:                                        ; preds = %do.cond.96
  br label %do.cond.98, !dbg !1073

do.cond.98:                                       ; preds = %do.end.97
  br label %do.end.99, !dbg !1075

do.end.99:                                        ; preds = %do.cond.98
  store i32 0, i32* %cleanup.dest.slot, !dbg !1077
  br label %cleanup, !dbg !1077

cleanup:                                          ; preds = %do.end.99, %if.else, %if.then.34, %if.then.29, %do.end.25, %if.then.15
  %58 = bitcast i16* %code to i8*, !dbg !1078
  call void @llvm.lifetime.end(i64 2, i8* %58) #1, !dbg !1078
  %59 = bitcast i32* %c to i8*, !dbg !1078
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !1078
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %while.cond

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %while.cond, !dbg !863

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !1079
  br label %return, !dbg !1079

return:                                           ; preds = %LeafBlock, %while.end
  %60 = load i64, i64* %retval, !dbg !1080
  ret i64 %60, !dbg !1080
}

; Function Attrs: nounwind uwtable
define internal i64 @big5_decode(%union.MultibyteCodec_State* %state, i8* %config, i8** %inbuf, i64 %inleft, %struct._PyUnicodeWriter* %writer) #0 {
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
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !489, metadata !621), !dbg !1081
  store i8* %config, i8** %config.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !490, metadata !621), !dbg !1082
  store i8** %inbuf, i8*** %inbuf.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8*** %inbuf.addr, metadata !491, metadata !621), !dbg !1083
  store i64 %inleft, i64* %inleft.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %inleft.addr, metadata !492, metadata !621), !dbg !1084
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter** %writer.addr, metadata !493, metadata !621), !dbg !1085
  br label %while.cond, !dbg !1086

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont, %entry
  %0 = load i64, i64* %inleft.addr, align 8, !dbg !1087, !tbaa !858
  %cmp = icmp sgt i64 %0, 0, !dbg !1090
  br i1 %cmp, label %while.body, label %while.end, !dbg !1086

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !1091
  call void @llvm.dbg.declare(metadata i8* %c, metadata !494, metadata !621), !dbg !1092
  %1 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1093, !tbaa !624
  %2 = load i8*, i8** %1, align 8, !dbg !1094, !tbaa !624
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !1095
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1095, !tbaa !654
  store i8 %3, i8* %c, align 1, !dbg !1092, !tbaa !654
  %4 = bitcast i32* %decoded to i8*, !dbg !1096
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1096
  call void @llvm.dbg.declare(metadata i32* %decoded, metadata !496, metadata !621), !dbg !1097
  %5 = load i8, i8* %c, align 1, !dbg !1098, !tbaa !654
  %conv = zext i8 %5 to i32, !dbg !1098
  %cmp1 = icmp slt i32 %conv, 128, !dbg !1100
  br i1 %cmp1, label %if.then, label %if.end.10, !dbg !1101

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !1102

do.body:                                          ; preds = %if.then
  %6 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1104, !tbaa !624
  %7 = load i8, i8* %c, align 1, !dbg !1108, !tbaa !654
  %conv3 = zext i8 %7 to i32, !dbg !1109
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %6, i32 %conv3), !dbg !1110
  %cmp4 = icmp slt i32 %call, 0, !dbg !1111
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !1112

if.then.6:                                        ; preds = %do.body
  store i64 -4, i64* %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1115

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1116

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1118

do.end:                                           ; preds = %do.cond
  br label %do.body.7, !dbg !1120

do.body.7:                                        ; preds = %do.end
  %8 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1121, !tbaa !624
  %9 = load i8*, i8** %8, align 8, !dbg !1124, !tbaa !624
  %add.ptr = getelementptr i8, i8* %9, i64 1, !dbg !1124
  store i8* %add.ptr, i8** %8, align 8, !dbg !1124, !tbaa !624
  %10 = load i64, i64* %inleft.addr, align 8, !dbg !1125, !tbaa !858
  %sub = sub i64 %10, 1, !dbg !1125
  store i64 %sub, i64* %inleft.addr, align 8, !dbg !1125, !tbaa !858
  br label %do.cond.8, !dbg !1126

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9, !dbg !1127

do.end.9:                                         ; preds = %do.cond.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1129

if.end.10:                                        ; preds = %while.body
  br label %do.body.11, !dbg !1130

do.body.11:                                       ; preds = %if.end.10
  %11 = load i64, i64* %inleft.addr, align 8, !dbg !1131, !tbaa !858
  %cmp12 = icmp slt i64 %11, 2, !dbg !1135
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !1136

if.then.14:                                       ; preds = %do.body.11
  store i64 -2, i64* %retval, !dbg !1137
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1139

if.end.15:                                        ; preds = %do.body.11
  br label %do.cond.16, !dbg !1140

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !1142

do.end.17:                                        ; preds = %do.cond.16
  %12 = load i8, i8* %c, align 1, !dbg !1144, !tbaa !654
  %idxprom = zext i8 %12 to i64, !dbg !1146
  %arrayidx18 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom, !dbg !1146
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx18, i32 0, i32 0, !dbg !1147
  %13 = load i16*, i16** %map, align 8, !dbg !1147, !tbaa !1148
  %cmp19 = icmp ne i16* %13, null, !dbg !1150
  br i1 %cmp19, label %land.lhs.true, label %if.else, !dbg !1151

land.lhs.true:                                    ; preds = %do.end.17
  %14 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1152, !tbaa !624
  %15 = load i8*, i8** %14, align 8, !dbg !1154, !tbaa !624
  %arrayidx21 = getelementptr i8, i8* %15, i64 1, !dbg !1155
  %16 = load i8, i8* %arrayidx21, align 1, !dbg !1155, !tbaa !654
  %conv22 = zext i8 %16 to i32, !dbg !1156
  %17 = load i8, i8* %c, align 1, !dbg !1157, !tbaa !654
  %idxprom23 = zext i8 %17 to i64, !dbg !1158
  %arrayidx24 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom23, !dbg !1158
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx24, i32 0, i32 1, !dbg !1159
  %18 = load i8, i8* %bottom, align 1, !dbg !1159, !tbaa !1160
  %conv25 = zext i8 %18 to i32, !dbg !1161
  %cmp26 = icmp sge i32 %conv22, %conv25, !dbg !1162
  br i1 %cmp26, label %land.lhs.true.28, label %if.else, !dbg !1163

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %19 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1164, !tbaa !624
  %20 = load i8*, i8** %19, align 8, !dbg !1166, !tbaa !624
  %arrayidx29 = getelementptr i8, i8* %20, i64 1, !dbg !1167
  %21 = load i8, i8* %arrayidx29, align 1, !dbg !1167, !tbaa !654
  %conv30 = zext i8 %21 to i32, !dbg !1168
  %22 = load i8, i8* %c, align 1, !dbg !1169, !tbaa !654
  %idxprom31 = zext i8 %22 to i64, !dbg !1170
  %arrayidx32 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom31, !dbg !1170
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx32, i32 0, i32 2, !dbg !1171
  %23 = load i8, i8* %top, align 1, !dbg !1171, !tbaa !1172
  %conv33 = zext i8 %23 to i32, !dbg !1173
  %cmp34 = icmp sle i32 %conv30, %conv33, !dbg !1174
  br i1 %cmp34, label %land.lhs.true.36, label %if.else, !dbg !1175

land.lhs.true.36:                                 ; preds = %land.lhs.true.28
  %24 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1176, !tbaa !624
  %25 = load i8*, i8** %24, align 8, !dbg !1178, !tbaa !624
  %arrayidx37 = getelementptr i8, i8* %25, i64 1, !dbg !1179
  %26 = load i8, i8* %arrayidx37, align 1, !dbg !1179, !tbaa !654
  %conv38 = zext i8 %26 to i32, !dbg !1180
  %27 = load i8, i8* %c, align 1, !dbg !1181, !tbaa !654
  %idxprom39 = zext i8 %27 to i64, !dbg !1182
  %arrayidx40 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom39, !dbg !1182
  %bottom41 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx40, i32 0, i32 1, !dbg !1183
  %28 = load i8, i8* %bottom41, align 1, !dbg !1183, !tbaa !1160
  %conv42 = zext i8 %28 to i32, !dbg !1184
  %sub43 = sub i32 %conv38, %conv42, !dbg !1185
  %idxprom44 = sext i32 %sub43 to i64, !dbg !1186
  %29 = load i8, i8* %c, align 1, !dbg !1187, !tbaa !654
  %idxprom45 = zext i8 %29 to i64, !dbg !1188
  %arrayidx46 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom45, !dbg !1188
  %map47 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx46, i32 0, i32 0, !dbg !1189
  %30 = load i16*, i16** %map47, align 8, !dbg !1189, !tbaa !1148
  %arrayidx48 = getelementptr i16, i16* %30, i64 %idxprom44, !dbg !1186
  %31 = load i16, i16* %arrayidx48, align 2, !dbg !1186, !tbaa !890
  %conv49 = zext i16 %31 to i32, !dbg !1186
  store i32 %conv49, i32* %decoded, align 4, !dbg !1190, !tbaa !674
  %cmp50 = icmp ne i32 %conv49, 65534, !dbg !1191
  br i1 %cmp50, label %if.then.52, label %if.else, !dbg !1192

if.then.52:                                       ; preds = %land.lhs.true.36
  br label %do.body.53, !dbg !1193

do.body.53:                                       ; preds = %if.then.52
  %32 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1195, !tbaa !624
  %33 = load i32, i32* %decoded, align 4, !dbg !1199, !tbaa !674
  %call54 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %32, i32 %33), !dbg !1200
  %cmp55 = icmp slt i32 %call54, 0, !dbg !1201
  br i1 %cmp55, label %if.then.57, label %if.end.58, !dbg !1202

if.then.57:                                       ; preds = %do.body.53
  store i64 -4, i64* %retval, !dbg !1203
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1205

if.end.58:                                        ; preds = %do.body.53
  br label %do.cond.59, !dbg !1206

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1208

do.end.60:                                        ; preds = %do.cond.59
  br label %do.body.61, !dbg !1210

do.body.61:                                       ; preds = %do.end.60
  %34 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1211, !tbaa !624
  %35 = load i8*, i8** %34, align 8, !dbg !1214, !tbaa !624
  %add.ptr62 = getelementptr i8, i8* %35, i64 2, !dbg !1214
  store i8* %add.ptr62, i8** %34, align 8, !dbg !1214, !tbaa !624
  %36 = load i64, i64* %inleft.addr, align 8, !dbg !1215, !tbaa !858
  %sub63 = sub i64 %36, 2, !dbg !1215
  store i64 %sub63, i64* %inleft.addr, align 8, !dbg !1215, !tbaa !858
  br label %do.cond.64, !dbg !1216

do.cond.64:                                       ; preds = %do.body.61
  br label %do.end.65, !dbg !1217

do.end.65:                                        ; preds = %do.cond.64
  br label %if.end.66, !dbg !1219

if.else:                                          ; preds = %land.lhs.true.36, %land.lhs.true.28, %land.lhs.true, %do.end.17
  store i64 1, i64* %retval, !dbg !1220
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1220

if.end.66:                                        ; preds = %do.end.65
  store i32 0, i32* %cleanup.dest.slot, !dbg !1221
  br label %cleanup, !dbg !1221

cleanup:                                          ; preds = %if.end.66, %if.else, %if.then.57, %if.then.14, %do.end.9, %if.then.6
  %37 = bitcast i32* %decoded to i8*, !dbg !1222
  call void @llvm.lifetime.end(i64 4, i8* %37) #1, !dbg !1222
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !1222
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %while.cond

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %while.cond, !dbg !1086

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !1223
  br label %return, !dbg !1223

return:                                           ; preds = %LeafBlock, %while.end
  %38 = load i64, i64* %retval, !dbg !1224
  ret i64 %38, !dbg !1224
}

; Function Attrs: nounwind uwtable
define internal i64 @cp950_encode(%union.MultibyteCodec_State* %state, i8* %config, i32 %kind, i8* %data, i64* %inpos, i64 %inlen, i8** %outbuf, i64 %outleft, i32 %flags) #0 {
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
  %cleanup.dest.slot = alloca i32
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !499, metadata !621), !dbg !1225
  store i8* %config, i8** %config.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !500, metadata !621), !dbg !1226
  store i32 %kind, i32* %kind.addr, align 4, !tbaa !674
  call void @llvm.dbg.declare(metadata i32* %kind.addr, metadata !501, metadata !621), !dbg !1227
  store i8* %data, i8** %data.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !502, metadata !621), !dbg !1228
  store i64* %inpos, i64** %inpos.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i64** %inpos.addr, metadata !503, metadata !621), !dbg !1229
  store i64 %inlen, i64* %inlen.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %inlen.addr, metadata !504, metadata !621), !dbg !1230
  store i8** %outbuf, i8*** %outbuf.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8*** %outbuf.addr, metadata !505, metadata !621), !dbg !1231
  store i64 %outleft, i64* %outleft.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %outleft.addr, metadata !506, metadata !621), !dbg !1232
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !674
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !507, metadata !621), !dbg !1233
  br label %while.cond, !dbg !1234

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont, %entry
  %0 = load i64*, i64** %inpos.addr, align 8, !dbg !1235, !tbaa !624
  %1 = load i64, i64* %0, align 8, !dbg !1238, !tbaa !858
  %2 = load i64, i64* %inlen.addr, align 8, !dbg !1239, !tbaa !858
  %cmp = icmp slt i64 %1, %2, !dbg !1240
  br i1 %cmp, label %while.body, label %while.end, !dbg !1234

while.body:                                       ; preds = %while.cond
  %3 = bitcast i32* %c to i8*, !dbg !1241
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1241
  call void @llvm.dbg.declare(metadata i32* %c, metadata !508, metadata !621), !dbg !1242
  %4 = load i32, i32* %kind.addr, align 4, !dbg !1243, !tbaa !674
  %cmp1 = icmp eq i32 %4, 1, !dbg !1244
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1245

cond.true:                                        ; preds = %while.body
  %5 = load i64*, i64** %inpos.addr, align 8, !dbg !1246, !tbaa !624
  %6 = load i64, i64* %5, align 8, !dbg !1248, !tbaa !858
  %7 = load i8*, i8** %data.addr, align 8, !dbg !1249, !tbaa !624
  %arrayidx = getelementptr i8, i8* %7, i64 %6, !dbg !1250
  %8 = load i8, i8* %arrayidx, align 1, !dbg !1250, !tbaa !654
  %conv = zext i8 %8 to i32, !dbg !1250
  br label %cond.end.9, !dbg !1245

cond.false:                                       ; preds = %while.body
  %9 = load i32, i32* %kind.addr, align 4, !dbg !1251, !tbaa !674
  %cmp2 = icmp eq i32 %9, 2, !dbg !1253
  br i1 %cmp2, label %cond.true.4, label %cond.false.7, !dbg !1254

cond.true.4:                                      ; preds = %cond.false
  %10 = load i64*, i64** %inpos.addr, align 8, !dbg !1255, !tbaa !624
  %11 = load i64, i64* %10, align 8, !dbg !1257, !tbaa !858
  %12 = load i8*, i8** %data.addr, align 8, !dbg !1258, !tbaa !624
  %13 = bitcast i8* %12 to i16*, !dbg !1259
  %arrayidx5 = getelementptr i16, i16* %13, i64 %11, !dbg !1260
  %14 = load i16, i16* %arrayidx5, align 2, !dbg !1260, !tbaa !890
  %conv6 = zext i16 %14 to i32, !dbg !1260
  br label %cond.end, !dbg !1254

cond.false.7:                                     ; preds = %cond.false
  %15 = load i64*, i64** %inpos.addr, align 8, !dbg !1261, !tbaa !624
  %16 = load i64, i64* %15, align 8, !dbg !1263, !tbaa !858
  %17 = load i8*, i8** %data.addr, align 8, !dbg !1264, !tbaa !624
  %18 = bitcast i8* %17 to i32*, !dbg !1265
  %arrayidx8 = getelementptr i32, i32* %18, i64 %16, !dbg !1266
  %19 = load i32, i32* %arrayidx8, align 4, !dbg !1266, !tbaa !674
  br label %cond.end, !dbg !1254

cond.end:                                         ; preds = %cond.false.7, %cond.true.4
  %cond = phi i32 [ %conv6, %cond.true.4 ], [ %19, %cond.false.7 ], !dbg !1254
  br label %cond.end.9, !dbg !1267

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %conv, %cond.true ], [ %cond, %cond.end ], !dbg !1245
  store i32 %cond10, i32* %c, align 4, !dbg !1270, !tbaa !674
  %20 = bitcast i16* %code to i8*, !dbg !1273
  call void @llvm.lifetime.start(i64 2, i8* %20) #1, !dbg !1273
  call void @llvm.dbg.declare(metadata i16* %code, metadata !510, metadata !621), !dbg !1274
  %21 = load i32, i32* %c, align 4, !dbg !1275, !tbaa !674
  %cmp11 = icmp ult i32 %21, 128, !dbg !1277
  br i1 %cmp11, label %if.then, label %if.end.30, !dbg !1278

if.then:                                          ; preds = %cond.end.9
  br label %do.body, !dbg !1279

do.body:                                          ; preds = %if.then
  br label %do.body.13, !dbg !1281

do.body.13:                                       ; preds = %do.body
  %22 = load i64, i64* %outleft.addr, align 8, !dbg !1284, !tbaa !858
  %cmp14 = icmp slt i64 %22, 1, !dbg !1288
  br i1 %cmp14, label %if.then.16, label %if.end, !dbg !1289

if.then.16:                                       ; preds = %do.body.13
  store i64 -1, i64* %retval, !dbg !1290
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1292

if.end:                                           ; preds = %do.body.13
  br label %do.cond, !dbg !1293

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1295

do.end:                                           ; preds = %do.cond
  %23 = load i32, i32* %c, align 4, !dbg !1297, !tbaa !674
  %conv17 = trunc i32 %23 to i8, !dbg !1299
  %24 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1300, !tbaa !624
  %25 = load i8*, i8** %24, align 8, !dbg !1301, !tbaa !624
  %arrayidx18 = getelementptr i8, i8* %25, i64 0, !dbg !1302
  store i8 %conv17, i8* %arrayidx18, align 1, !dbg !1303, !tbaa !654
  br label %do.cond.19, !dbg !1304

do.cond.19:                                       ; preds = %do.end
  br label %do.end.20, !dbg !1305

do.end.20:                                        ; preds = %do.cond.19
  br label %do.body.21, !dbg !1307

do.body.21:                                       ; preds = %do.end.20
  br label %do.body.22, !dbg !1308

do.body.22:                                       ; preds = %do.body.21
  %26 = load i64*, i64** %inpos.addr, align 8, !dbg !1311, !tbaa !624
  %27 = load i64, i64* %26, align 8, !dbg !1314, !tbaa !858
  %add = add i64 %27, 1, !dbg !1314
  store i64 %add, i64* %26, align 8, !dbg !1314, !tbaa !858
  br label %do.cond.23, !dbg !1315

do.cond.23:                                       ; preds = %do.body.22
  br label %do.end.24, !dbg !1316

do.end.24:                                        ; preds = %do.cond.23
  br label %do.body.25, !dbg !1318

do.body.25:                                       ; preds = %do.end.24
  %28 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1320, !tbaa !624
  %29 = load i8*, i8** %28, align 8, !dbg !1323, !tbaa !624
  %add.ptr = getelementptr i8, i8* %29, i64 1, !dbg !1323
  store i8* %add.ptr, i8** %28, align 8, !dbg !1323, !tbaa !624
  %30 = load i64, i64* %outleft.addr, align 8, !dbg !1324, !tbaa !858
  %sub = sub i64 %30, 1, !dbg !1324
  store i64 %sub, i64* %outleft.addr, align 8, !dbg !1324, !tbaa !858
  br label %do.cond.26, !dbg !1325

do.cond.26:                                       ; preds = %do.body.25
  br label %do.end.27, !dbg !1326

do.end.27:                                        ; preds = %do.cond.26
  br label %do.cond.28, !dbg !1328

do.cond.28:                                       ; preds = %do.end.27
  br label %do.end.29, !dbg !1330

do.end.29:                                        ; preds = %do.cond.28
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1332

if.end.30:                                        ; preds = %cond.end.9
  %31 = load i32, i32* %c, align 4, !dbg !1333, !tbaa !674
  %cmp31 = icmp ugt i32 %31, 65535, !dbg !1335
  br i1 %cmp31, label %if.then.33, label %if.end.34, !dbg !1336

if.then.33:                                       ; preds = %if.end.30
  store i64 1, i64* %retval, !dbg !1337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1337

if.end.34:                                        ; preds = %if.end.30
  br label %do.body.35, !dbg !1338

do.body.35:                                       ; preds = %if.end.34
  %32 = load i64, i64* %outleft.addr, align 8, !dbg !1339, !tbaa !858
  %cmp36 = icmp slt i64 %32, 2, !dbg !1343
  br i1 %cmp36, label %if.then.38, label %if.end.39, !dbg !1344

if.then.38:                                       ; preds = %do.body.35
  store i64 -1, i64* %retval, !dbg !1345
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1347

if.end.39:                                        ; preds = %do.body.35
  br label %do.cond.40, !dbg !1348

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !1350

do.end.41:                                        ; preds = %do.cond.40
  %33 = load i32, i32* %c, align 4, !dbg !1352, !tbaa !674
  %shr = lshr i32 %33, 8, !dbg !1354
  %idxprom = zext i32 %shr to i64, !dbg !1355
  %arrayidx42 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i64 %idxprom, !dbg !1355
  %map = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx42, i32 0, i32 0, !dbg !1356
  %34 = load i16*, i16** %map, align 8, !dbg !1356, !tbaa !980
  %cmp43 = icmp ne i16* %34, null, !dbg !1357
  br i1 %cmp43, label %land.lhs.true, label %if.else, !dbg !1358

land.lhs.true:                                    ; preds = %do.end.41
  %35 = load i32, i32* %c, align 4, !dbg !1359, !tbaa !674
  %and = and i32 %35, 255, !dbg !1361
  %36 = load i32, i32* %c, align 4, !dbg !1362, !tbaa !674
  %shr45 = lshr i32 %36, 8, !dbg !1363
  %idxprom46 = zext i32 %shr45 to i64, !dbg !1364
  %arrayidx47 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i64 %idxprom46, !dbg !1364
  %bottom = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx47, i32 0, i32 1, !dbg !1365
  %37 = load i8, i8* %bottom, align 1, !dbg !1365, !tbaa !991
  %conv48 = zext i8 %37 to i32, !dbg !1366
  %cmp49 = icmp uge i32 %and, %conv48, !dbg !1367
  br i1 %cmp49, label %land.lhs.true.51, label %if.else, !dbg !1368

land.lhs.true.51:                                 ; preds = %land.lhs.true
  %38 = load i32, i32* %c, align 4, !dbg !1369, !tbaa !674
  %and52 = and i32 %38, 255, !dbg !1371
  %39 = load i32, i32* %c, align 4, !dbg !1372, !tbaa !674
  %shr53 = lshr i32 %39, 8, !dbg !1373
  %idxprom54 = zext i32 %shr53 to i64, !dbg !1374
  %arrayidx55 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i64 %idxprom54, !dbg !1374
  %top = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx55, i32 0, i32 2, !dbg !1375
  %40 = load i8, i8* %top, align 1, !dbg !1375, !tbaa !1002
  %conv56 = zext i8 %40 to i32, !dbg !1376
  %cmp57 = icmp ule i32 %and52, %conv56, !dbg !1377
  br i1 %cmp57, label %land.lhs.true.59, label %if.else, !dbg !1378

land.lhs.true.59:                                 ; preds = %land.lhs.true.51
  %41 = load i32, i32* %c, align 4, !dbg !1379, !tbaa !674
  %and60 = and i32 %41, 255, !dbg !1381
  %42 = load i32, i32* %c, align 4, !dbg !1382, !tbaa !674
  %shr61 = lshr i32 %42, 8, !dbg !1383
  %idxprom62 = zext i32 %shr61 to i64, !dbg !1384
  %arrayidx63 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i64 %idxprom62, !dbg !1384
  %bottom64 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx63, i32 0, i32 1, !dbg !1385
  %43 = load i8, i8* %bottom64, align 1, !dbg !1385, !tbaa !991
  %conv65 = zext i8 %43 to i32, !dbg !1386
  %sub66 = sub i32 %and60, %conv65, !dbg !1387
  %idxprom67 = zext i32 %sub66 to i64, !dbg !1388
  %44 = load i32, i32* %c, align 4, !dbg !1389, !tbaa !674
  %shr68 = lshr i32 %44, 8, !dbg !1390
  %idxprom69 = zext i32 %shr68 to i64, !dbg !1391
  %arrayidx70 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @cp950ext_encmap, i32 0, i64 %idxprom69, !dbg !1391
  %map71 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx70, i32 0, i32 0, !dbg !1392
  %45 = load i16*, i16** %map71, align 8, !dbg !1392, !tbaa !980
  %arrayidx72 = getelementptr i16, i16* %45, i64 %idxprom67, !dbg !1388
  %46 = load i16, i16* %arrayidx72, align 2, !dbg !1388, !tbaa !890
  store i16 %46, i16* %code, align 2, !dbg !1393, !tbaa !890
  %conv73 = zext i16 %46 to i32, !dbg !1394
  %cmp74 = icmp ne i32 %conv73, 65535, !dbg !1395
  br i1 %cmp74, label %if.then.76, label %if.else, !dbg !1396

if.then.76:                                       ; preds = %land.lhs.true.59
  br label %if.end.121, !dbg !1397

if.else:                                          ; preds = %land.lhs.true.59, %land.lhs.true.51, %land.lhs.true, %do.end.41
  %47 = load i32, i32* %c, align 4, !dbg !1398, !tbaa !674
  %shr77 = lshr i32 %47, 8, !dbg !1400
  %idxprom78 = zext i32 %shr77 to i64, !dbg !1401
  %arrayidx79 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom78, !dbg !1401
  %map80 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx79, i32 0, i32 0, !dbg !1402
  %48 = load i16*, i16** %map80, align 8, !dbg !1402, !tbaa !980
  %cmp81 = icmp ne i16* %48, null, !dbg !1403
  br i1 %cmp81, label %land.lhs.true.83, label %if.else.119, !dbg !1404

land.lhs.true.83:                                 ; preds = %if.else
  %49 = load i32, i32* %c, align 4, !dbg !1405, !tbaa !674
  %and84 = and i32 %49, 255, !dbg !1407
  %50 = load i32, i32* %c, align 4, !dbg !1408, !tbaa !674
  %shr85 = lshr i32 %50, 8, !dbg !1409
  %idxprom86 = zext i32 %shr85 to i64, !dbg !1410
  %arrayidx87 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom86, !dbg !1410
  %bottom88 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx87, i32 0, i32 1, !dbg !1411
  %51 = load i8, i8* %bottom88, align 1, !dbg !1411, !tbaa !991
  %conv89 = zext i8 %51 to i32, !dbg !1412
  %cmp90 = icmp uge i32 %and84, %conv89, !dbg !1413
  br i1 %cmp90, label %land.lhs.true.92, label %if.else.119, !dbg !1414

land.lhs.true.92:                                 ; preds = %land.lhs.true.83
  %52 = load i32, i32* %c, align 4, !dbg !1415, !tbaa !674
  %and93 = and i32 %52, 255, !dbg !1417
  %53 = load i32, i32* %c, align 4, !dbg !1418, !tbaa !674
  %shr94 = lshr i32 %53, 8, !dbg !1419
  %idxprom95 = zext i32 %shr94 to i64, !dbg !1420
  %arrayidx96 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom95, !dbg !1420
  %top97 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx96, i32 0, i32 2, !dbg !1421
  %54 = load i8, i8* %top97, align 1, !dbg !1421, !tbaa !1002
  %conv98 = zext i8 %54 to i32, !dbg !1422
  %cmp99 = icmp ule i32 %and93, %conv98, !dbg !1423
  br i1 %cmp99, label %land.lhs.true.101, label %if.else.119, !dbg !1424

land.lhs.true.101:                                ; preds = %land.lhs.true.92
  %55 = load i32, i32* %c, align 4, !dbg !1425, !tbaa !674
  %and102 = and i32 %55, 255, !dbg !1427
  %56 = load i32, i32* %c, align 4, !dbg !1428, !tbaa !674
  %shr103 = lshr i32 %56, 8, !dbg !1429
  %idxprom104 = zext i32 %shr103 to i64, !dbg !1430
  %arrayidx105 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom104, !dbg !1430
  %bottom106 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx105, i32 0, i32 1, !dbg !1431
  %57 = load i8, i8* %bottom106, align 1, !dbg !1431, !tbaa !991
  %conv107 = zext i8 %57 to i32, !dbg !1432
  %sub108 = sub i32 %and102, %conv107, !dbg !1433
  %idxprom109 = zext i32 %sub108 to i64, !dbg !1434
  %58 = load i32, i32* %c, align 4, !dbg !1435, !tbaa !674
  %shr110 = lshr i32 %58, 8, !dbg !1436
  %idxprom111 = zext i32 %shr110 to i64, !dbg !1437
  %arrayidx112 = getelementptr [256 x %struct.unim_index], [256 x %struct.unim_index]* @big5_encmap, i32 0, i64 %idxprom111, !dbg !1437
  %map113 = getelementptr inbounds %struct.unim_index, %struct.unim_index* %arrayidx112, i32 0, i32 0, !dbg !1438
  %59 = load i16*, i16** %map113, align 8, !dbg !1438, !tbaa !980
  %arrayidx114 = getelementptr i16, i16* %59, i64 %idxprom109, !dbg !1434
  %60 = load i16, i16* %arrayidx114, align 2, !dbg !1434, !tbaa !890
  store i16 %60, i16* %code, align 2, !dbg !1439, !tbaa !890
  %conv115 = zext i16 %60 to i32, !dbg !1440
  %cmp116 = icmp ne i32 %conv115, 65535, !dbg !1441
  br i1 %cmp116, label %if.then.118, label %if.else.119, !dbg !1442

if.then.118:                                      ; preds = %land.lhs.true.101
  br label %if.end.120, !dbg !1443

if.else.119:                                      ; preds = %land.lhs.true.101, %land.lhs.true.92, %land.lhs.true.83, %if.else
  store i64 1, i64* %retval, !dbg !1445
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1445

if.end.120:                                       ; preds = %if.then.118
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.76
  br label %do.body.122, !dbg !1446

do.body.122:                                      ; preds = %if.end.121
  %61 = load i16, i16* %code, align 2, !dbg !1447, !tbaa !890
  %conv123 = zext i16 %61 to i32, !dbg !1447
  %shr124 = ashr i32 %conv123, 8, !dbg !1450
  %conv125 = trunc i32 %shr124 to i8, !dbg !1451
  %62 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1452, !tbaa !624
  %63 = load i8*, i8** %62, align 8, !dbg !1453, !tbaa !624
  %arrayidx126 = getelementptr i8, i8* %63, i64 0, !dbg !1454
  store i8 %conv125, i8* %arrayidx126, align 1, !dbg !1455, !tbaa !654
  br label %do.cond.127, !dbg !1456

do.cond.127:                                      ; preds = %do.body.122
  br label %do.end.128, !dbg !1457

do.end.128:                                       ; preds = %do.cond.127
  br label %do.body.129, !dbg !1459

do.body.129:                                      ; preds = %do.end.128
  %64 = load i16, i16* %code, align 2, !dbg !1460, !tbaa !890
  %conv130 = zext i16 %64 to i32, !dbg !1460
  %and131 = and i32 %conv130, 255, !dbg !1463
  %conv132 = trunc i32 %and131 to i8, !dbg !1464
  %65 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1465, !tbaa !624
  %66 = load i8*, i8** %65, align 8, !dbg !1466, !tbaa !624
  %arrayidx133 = getelementptr i8, i8* %66, i64 1, !dbg !1467
  store i8 %conv132, i8* %arrayidx133, align 1, !dbg !1468, !tbaa !654
  br label %do.cond.134, !dbg !1469

do.cond.134:                                      ; preds = %do.body.129
  br label %do.end.135, !dbg !1470

do.end.135:                                       ; preds = %do.cond.134
  br label %do.body.136, !dbg !1472

do.body.136:                                      ; preds = %do.end.135
  br label %do.body.137, !dbg !1473

do.body.137:                                      ; preds = %do.body.136
  %67 = load i64*, i64** %inpos.addr, align 8, !dbg !1476, !tbaa !624
  %68 = load i64, i64* %67, align 8, !dbg !1479, !tbaa !858
  %add138 = add i64 %68, 1, !dbg !1479
  store i64 %add138, i64* %67, align 8, !dbg !1479, !tbaa !858
  br label %do.cond.139, !dbg !1480

do.cond.139:                                      ; preds = %do.body.137
  br label %do.end.140, !dbg !1481

do.end.140:                                       ; preds = %do.cond.139
  br label %do.body.141, !dbg !1483

do.body.141:                                      ; preds = %do.end.140
  %69 = load i8**, i8*** %outbuf.addr, align 8, !dbg !1485, !tbaa !624
  %70 = load i8*, i8** %69, align 8, !dbg !1488, !tbaa !624
  %add.ptr142 = getelementptr i8, i8* %70, i64 2, !dbg !1488
  store i8* %add.ptr142, i8** %69, align 8, !dbg !1488, !tbaa !624
  %71 = load i64, i64* %outleft.addr, align 8, !dbg !1489, !tbaa !858
  %sub143 = sub i64 %71, 2, !dbg !1489
  store i64 %sub143, i64* %outleft.addr, align 8, !dbg !1489, !tbaa !858
  br label %do.cond.144, !dbg !1490

do.cond.144:                                      ; preds = %do.body.141
  br label %do.end.145, !dbg !1491

do.end.145:                                       ; preds = %do.cond.144
  br label %do.cond.146, !dbg !1493

do.cond.146:                                      ; preds = %do.end.145
  br label %do.end.147, !dbg !1495

do.end.147:                                       ; preds = %do.cond.146
  store i32 0, i32* %cleanup.dest.slot, !dbg !1497
  br label %cleanup, !dbg !1497

cleanup:                                          ; preds = %do.end.147, %if.else.119, %if.then.38, %if.then.33, %do.end.29, %if.then.16
  %72 = bitcast i16* %code to i8*, !dbg !1498
  call void @llvm.lifetime.end(i64 2, i8* %72) #1, !dbg !1498
  %73 = bitcast i32* %c to i8*, !dbg !1498
  call void @llvm.lifetime.end(i64 4, i8* %73) #1, !dbg !1498
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %while.cond

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %while.cond, !dbg !1234

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !1499
  br label %return, !dbg !1499

return:                                           ; preds = %LeafBlock, %while.end
  %74 = load i64, i64* %retval, !dbg !1500
  ret i64 %74, !dbg !1500
}

; Function Attrs: nounwind uwtable
define internal i64 @cp950_decode(%union.MultibyteCodec_State* %state, i8* %config, i8** %inbuf, i64 %inleft, %struct._PyUnicodeWriter* %writer) #0 {
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
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %union.MultibyteCodec_State** %state.addr, metadata !513, metadata !621), !dbg !1501
  store i8* %config, i8** %config.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8** %config.addr, metadata !514, metadata !621), !dbg !1502
  store i8** %inbuf, i8*** %inbuf.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata i8*** %inbuf.addr, metadata !515, metadata !621), !dbg !1503
  store i64 %inleft, i64* %inleft.addr, align 8, !tbaa !858
  call void @llvm.dbg.declare(metadata i64* %inleft.addr, metadata !516, metadata !621), !dbg !1504
  store %struct._PyUnicodeWriter* %writer, %struct._PyUnicodeWriter** %writer.addr, align 8, !tbaa !624
  call void @llvm.dbg.declare(metadata %struct._PyUnicodeWriter** %writer.addr, metadata !517, metadata !621), !dbg !1505
  br label %while.cond, !dbg !1506

while.cond:                                       ; preds = %NodeBlock, %cleanup.cont, %entry
  %0 = load i64, i64* %inleft.addr, align 8, !dbg !1507, !tbaa !858
  %cmp = icmp sgt i64 %0, 0, !dbg !1510
  br i1 %cmp, label %while.body, label %while.end, !dbg !1506

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start(i64 1, i8* %c) #1, !dbg !1511
  call void @llvm.dbg.declare(metadata i8* %c, metadata !518, metadata !621), !dbg !1512
  %1 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1513, !tbaa !624
  %2 = load i8*, i8** %1, align 8, !dbg !1514, !tbaa !624
  %arrayidx = getelementptr i8, i8* %2, i64 0, !dbg !1515
  %3 = load i8, i8* %arrayidx, align 1, !dbg !1515, !tbaa !654
  store i8 %3, i8* %c, align 1, !dbg !1512, !tbaa !654
  %4 = bitcast i32* %decoded to i8*, !dbg !1516
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1516
  call void @llvm.dbg.declare(metadata i32* %decoded, metadata !520, metadata !621), !dbg !1517
  %5 = load i8, i8* %c, align 1, !dbg !1518, !tbaa !654
  %conv = zext i8 %5 to i32, !dbg !1518
  %cmp1 = icmp slt i32 %conv, 128, !dbg !1520
  br i1 %cmp1, label %if.then, label %if.end.10, !dbg !1521

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !1522

do.body:                                          ; preds = %if.then
  %6 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1524, !tbaa !624
  %7 = load i8, i8* %c, align 1, !dbg !1528, !tbaa !654
  %conv3 = zext i8 %7 to i32, !dbg !1529
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %6, i32 %conv3), !dbg !1530
  %cmp4 = icmp slt i32 %call, 0, !dbg !1531
  br i1 %cmp4, label %if.then.6, label %if.end, !dbg !1532

if.then.6:                                        ; preds = %do.body
  store i64 -4, i64* %retval, !dbg !1533
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1535

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !1536

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1538

do.end:                                           ; preds = %do.cond
  br label %do.body.7, !dbg !1540

do.body.7:                                        ; preds = %do.end
  %8 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1541, !tbaa !624
  %9 = load i8*, i8** %8, align 8, !dbg !1544, !tbaa !624
  %add.ptr = getelementptr i8, i8* %9, i64 1, !dbg !1544
  store i8* %add.ptr, i8** %8, align 8, !dbg !1544, !tbaa !624
  %10 = load i64, i64* %inleft.addr, align 8, !dbg !1545, !tbaa !858
  %sub = sub i64 %10, 1, !dbg !1545
  store i64 %sub, i64* %inleft.addr, align 8, !dbg !1545, !tbaa !858
  br label %do.cond.8, !dbg !1546

do.cond.8:                                        ; preds = %do.body.7
  br label %do.end.9, !dbg !1547

do.end.9:                                         ; preds = %do.cond.8
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1549

if.end.10:                                        ; preds = %while.body
  br label %do.body.11, !dbg !1550

do.body.11:                                       ; preds = %if.end.10
  %11 = load i64, i64* %inleft.addr, align 8, !dbg !1551, !tbaa !858
  %cmp12 = icmp slt i64 %11, 2, !dbg !1555
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !1556

if.then.14:                                       ; preds = %do.body.11
  store i64 -2, i64* %retval, !dbg !1557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1559

if.end.15:                                        ; preds = %do.body.11
  br label %do.cond.16, !dbg !1560

do.cond.16:                                       ; preds = %if.end.15
  br label %do.end.17, !dbg !1562

do.end.17:                                        ; preds = %do.cond.16
  %12 = load i8, i8* %c, align 1, !dbg !1564, !tbaa !654
  %idxprom = zext i8 %12 to i64, !dbg !1566
  %arrayidx18 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i64 %idxprom, !dbg !1566
  %map = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx18, i32 0, i32 0, !dbg !1567
  %13 = load i16*, i16** %map, align 8, !dbg !1567, !tbaa !1148
  %cmp19 = icmp ne i16* %13, null, !dbg !1568
  br i1 %cmp19, label %land.lhs.true, label %if.else, !dbg !1569

land.lhs.true:                                    ; preds = %do.end.17
  %14 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1570, !tbaa !624
  %15 = load i8*, i8** %14, align 8, !dbg !1572, !tbaa !624
  %arrayidx21 = getelementptr i8, i8* %15, i64 1, !dbg !1573
  %16 = load i8, i8* %arrayidx21, align 1, !dbg !1573, !tbaa !654
  %conv22 = zext i8 %16 to i32, !dbg !1574
  %17 = load i8, i8* %c, align 1, !dbg !1575, !tbaa !654
  %idxprom23 = zext i8 %17 to i64, !dbg !1576
  %arrayidx24 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i64 %idxprom23, !dbg !1576
  %bottom = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx24, i32 0, i32 1, !dbg !1577
  %18 = load i8, i8* %bottom, align 1, !dbg !1577, !tbaa !1160
  %conv25 = zext i8 %18 to i32, !dbg !1578
  %cmp26 = icmp sge i32 %conv22, %conv25, !dbg !1579
  br i1 %cmp26, label %land.lhs.true.28, label %if.else, !dbg !1580

land.lhs.true.28:                                 ; preds = %land.lhs.true
  %19 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1581, !tbaa !624
  %20 = load i8*, i8** %19, align 8, !dbg !1583, !tbaa !624
  %arrayidx29 = getelementptr i8, i8* %20, i64 1, !dbg !1584
  %21 = load i8, i8* %arrayidx29, align 1, !dbg !1584, !tbaa !654
  %conv30 = zext i8 %21 to i32, !dbg !1585
  %22 = load i8, i8* %c, align 1, !dbg !1586, !tbaa !654
  %idxprom31 = zext i8 %22 to i64, !dbg !1587
  %arrayidx32 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i64 %idxprom31, !dbg !1587
  %top = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx32, i32 0, i32 2, !dbg !1588
  %23 = load i8, i8* %top, align 1, !dbg !1588, !tbaa !1172
  %conv33 = zext i8 %23 to i32, !dbg !1589
  %cmp34 = icmp sle i32 %conv30, %conv33, !dbg !1590
  br i1 %cmp34, label %land.lhs.true.36, label %if.else, !dbg !1591

land.lhs.true.36:                                 ; preds = %land.lhs.true.28
  %24 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1592, !tbaa !624
  %25 = load i8*, i8** %24, align 8, !dbg !1594, !tbaa !624
  %arrayidx37 = getelementptr i8, i8* %25, i64 1, !dbg !1595
  %26 = load i8, i8* %arrayidx37, align 1, !dbg !1595, !tbaa !654
  %conv38 = zext i8 %26 to i32, !dbg !1596
  %27 = load i8, i8* %c, align 1, !dbg !1597, !tbaa !654
  %idxprom39 = zext i8 %27 to i64, !dbg !1598
  %arrayidx40 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i64 %idxprom39, !dbg !1598
  %bottom41 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx40, i32 0, i32 1, !dbg !1599
  %28 = load i8, i8* %bottom41, align 1, !dbg !1599, !tbaa !1160
  %conv42 = zext i8 %28 to i32, !dbg !1600
  %sub43 = sub i32 %conv38, %conv42, !dbg !1601
  %idxprom44 = sext i32 %sub43 to i64, !dbg !1602
  %29 = load i8, i8* %c, align 1, !dbg !1603, !tbaa !654
  %idxprom45 = zext i8 %29 to i64, !dbg !1604
  %arrayidx46 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @cp950ext_decmap, i32 0, i64 %idxprom45, !dbg !1604
  %map47 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx46, i32 0, i32 0, !dbg !1605
  %30 = load i16*, i16** %map47, align 8, !dbg !1605, !tbaa !1148
  %arrayidx48 = getelementptr i16, i16* %30, i64 %idxprom44, !dbg !1602
  %31 = load i16, i16* %arrayidx48, align 2, !dbg !1602, !tbaa !890
  %conv49 = zext i16 %31 to i32, !dbg !1602
  store i32 %conv49, i32* %decoded, align 4, !dbg !1606, !tbaa !674
  %cmp50 = icmp ne i32 %conv49, 65534, !dbg !1607
  br i1 %cmp50, label %if.then.52, label %if.else, !dbg !1608

if.then.52:                                       ; preds = %land.lhs.true.36
  br label %do.body.53, !dbg !1609

do.body.53:                                       ; preds = %if.then.52
  %32 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1610, !tbaa !624
  %33 = load i32, i32* %decoded, align 4, !dbg !1614, !tbaa !674
  %call54 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %32, i32 %33), !dbg !1615
  %cmp55 = icmp slt i32 %call54, 0, !dbg !1616
  br i1 %cmp55, label %if.then.57, label %if.end.58, !dbg !1617

if.then.57:                                       ; preds = %do.body.53
  store i64 -4, i64* %retval, !dbg !1618
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1620

if.end.58:                                        ; preds = %do.body.53
  br label %do.cond.59, !dbg !1621

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !1623

do.end.60:                                        ; preds = %do.cond.59
  br label %if.end.111, !dbg !1625

if.else:                                          ; preds = %land.lhs.true.36, %land.lhs.true.28, %land.lhs.true, %do.end.17
  %34 = load i8, i8* %c, align 1, !dbg !1627, !tbaa !654
  %idxprom61 = zext i8 %34 to i64, !dbg !1629
  %arrayidx62 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom61, !dbg !1629
  %map63 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx62, i32 0, i32 0, !dbg !1630
  %35 = load i16*, i16** %map63, align 8, !dbg !1630, !tbaa !1148
  %cmp64 = icmp ne i16* %35, null, !dbg !1631
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.109, !dbg !1632

land.lhs.true.66:                                 ; preds = %if.else
  %36 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1633, !tbaa !624
  %37 = load i8*, i8** %36, align 8, !dbg !1635, !tbaa !624
  %arrayidx67 = getelementptr i8, i8* %37, i64 1, !dbg !1636
  %38 = load i8, i8* %arrayidx67, align 1, !dbg !1636, !tbaa !654
  %conv68 = zext i8 %38 to i32, !dbg !1637
  %39 = load i8, i8* %c, align 1, !dbg !1638, !tbaa !654
  %idxprom69 = zext i8 %39 to i64, !dbg !1639
  %arrayidx70 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom69, !dbg !1639
  %bottom71 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx70, i32 0, i32 1, !dbg !1640
  %40 = load i8, i8* %bottom71, align 1, !dbg !1640, !tbaa !1160
  %conv72 = zext i8 %40 to i32, !dbg !1641
  %cmp73 = icmp sge i32 %conv68, %conv72, !dbg !1642
  br i1 %cmp73, label %land.lhs.true.75, label %if.else.109, !dbg !1643

land.lhs.true.75:                                 ; preds = %land.lhs.true.66
  %41 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1644, !tbaa !624
  %42 = load i8*, i8** %41, align 8, !dbg !1646, !tbaa !624
  %arrayidx76 = getelementptr i8, i8* %42, i64 1, !dbg !1647
  %43 = load i8, i8* %arrayidx76, align 1, !dbg !1647, !tbaa !654
  %conv77 = zext i8 %43 to i32, !dbg !1648
  %44 = load i8, i8* %c, align 1, !dbg !1649, !tbaa !654
  %idxprom78 = zext i8 %44 to i64, !dbg !1650
  %arrayidx79 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom78, !dbg !1650
  %top80 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx79, i32 0, i32 2, !dbg !1651
  %45 = load i8, i8* %top80, align 1, !dbg !1651, !tbaa !1172
  %conv81 = zext i8 %45 to i32, !dbg !1652
  %cmp82 = icmp sle i32 %conv77, %conv81, !dbg !1653
  br i1 %cmp82, label %land.lhs.true.84, label %if.else.109, !dbg !1654

land.lhs.true.84:                                 ; preds = %land.lhs.true.75
  %46 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1655, !tbaa !624
  %47 = load i8*, i8** %46, align 8, !dbg !1657, !tbaa !624
  %arrayidx85 = getelementptr i8, i8* %47, i64 1, !dbg !1658
  %48 = load i8, i8* %arrayidx85, align 1, !dbg !1658, !tbaa !654
  %conv86 = zext i8 %48 to i32, !dbg !1659
  %49 = load i8, i8* %c, align 1, !dbg !1660, !tbaa !654
  %idxprom87 = zext i8 %49 to i64, !dbg !1661
  %arrayidx88 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom87, !dbg !1661
  %bottom89 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx88, i32 0, i32 1, !dbg !1662
  %50 = load i8, i8* %bottom89, align 1, !dbg !1662, !tbaa !1160
  %conv90 = zext i8 %50 to i32, !dbg !1663
  %sub91 = sub i32 %conv86, %conv90, !dbg !1664
  %idxprom92 = sext i32 %sub91 to i64, !dbg !1665
  %51 = load i8, i8* %c, align 1, !dbg !1666, !tbaa !654
  %idxprom93 = zext i8 %51 to i64, !dbg !1667
  %arrayidx94 = getelementptr [256 x %struct.dbcs_index], [256 x %struct.dbcs_index]* @big5_decmap, i32 0, i64 %idxprom93, !dbg !1667
  %map95 = getelementptr inbounds %struct.dbcs_index, %struct.dbcs_index* %arrayidx94, i32 0, i32 0, !dbg !1668
  %52 = load i16*, i16** %map95, align 8, !dbg !1668, !tbaa !1148
  %arrayidx96 = getelementptr i16, i16* %52, i64 %idxprom92, !dbg !1665
  %53 = load i16, i16* %arrayidx96, align 2, !dbg !1665, !tbaa !890
  %conv97 = zext i16 %53 to i32, !dbg !1665
  store i32 %conv97, i32* %decoded, align 4, !dbg !1669, !tbaa !674
  %cmp98 = icmp ne i32 %conv97, 65534, !dbg !1670
  br i1 %cmp98, label %if.then.100, label %if.else.109, !dbg !1671

if.then.100:                                      ; preds = %land.lhs.true.84
  br label %do.body.101, !dbg !1672

do.body.101:                                      ; preds = %if.then.100
  %54 = load %struct._PyUnicodeWriter*, %struct._PyUnicodeWriter** %writer.addr, align 8, !dbg !1673, !tbaa !624
  %55 = load i32, i32* %decoded, align 4, !dbg !1677, !tbaa !674
  %call102 = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %54, i32 %55), !dbg !1678
  %cmp103 = icmp slt i32 %call102, 0, !dbg !1679
  br i1 %cmp103, label %if.then.105, label %if.end.106, !dbg !1680

if.then.105:                                      ; preds = %do.body.101
  store i64 -4, i64* %retval, !dbg !1681
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1683

if.end.106:                                       ; preds = %do.body.101
  br label %do.cond.107, !dbg !1684

do.cond.107:                                      ; preds = %if.end.106
  br label %do.end.108, !dbg !1686

do.end.108:                                       ; preds = %do.cond.107
  br label %if.end.110, !dbg !1688

if.else.109:                                      ; preds = %land.lhs.true.84, %land.lhs.true.75, %land.lhs.true.66, %if.else
  store i64 1, i64* %retval, !dbg !1690
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1690

if.end.110:                                       ; preds = %do.end.108
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %do.end.60
  br label %do.body.112, !dbg !1691

do.body.112:                                      ; preds = %if.end.111
  %56 = load i8**, i8*** %inbuf.addr, align 8, !dbg !1692, !tbaa !624
  %57 = load i8*, i8** %56, align 8, !dbg !1695, !tbaa !624
  %add.ptr113 = getelementptr i8, i8* %57, i64 2, !dbg !1695
  store i8* %add.ptr113, i8** %56, align 8, !dbg !1695, !tbaa !624
  %58 = load i64, i64* %inleft.addr, align 8, !dbg !1696, !tbaa !858
  %sub114 = sub i64 %58, 2, !dbg !1696
  store i64 %sub114, i64* %inleft.addr, align 8, !dbg !1696, !tbaa !858
  br label %do.cond.115, !dbg !1697

do.cond.115:                                      ; preds = %do.body.112
  br label %do.end.116, !dbg !1698

do.end.116:                                       ; preds = %do.cond.115
  store i32 0, i32* %cleanup.dest.slot, !dbg !1700
  br label %cleanup, !dbg !1700

cleanup:                                          ; preds = %do.end.116, %if.else.109, %if.then.105, %if.then.57, %if.then.14, %do.end.9, %if.then.6
  %59 = bitcast i32* %decoded to i8*, !dbg !1701
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !1701
  call void @llvm.lifetime.end(i64 1, i8* %c) #1, !dbg !1701
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 2
  br i1 %Pivot, label %LeafBlock, label %while.cond

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %while.cond, !dbg !1506

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %retval, !dbg !1702
  br label %return, !dbg !1702

return:                                           ; preds = %LeafBlock, %while.end
  %60 = load i64, i64* %retval, !dbg !1703
  ret i64 %60, !dbg !1703
}

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #3

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
!llvm.module.flags = !{!616, !617, !618}
!llvm.ident = !{!619}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !360, globals: !558)
!1 = !DIFile(filename: "_codecs_tw.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !351, !355, !358, !354}
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
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !354)
!354 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!360 = !{!361, !367, !465, !472, !487, !497, !511, !521}
!361 = !DISubprogram(name: "PyInit__codecs_tw", scope: !362, file: !362, line: 143, type: !363, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__codecs_tw, variables: !365)
!362 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/_codecs_tw.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DISubroutineType(types: !364)
!364 = !{!12}
!365 = !{!366}
!366 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !361, file: !362, line: 143, type: !12)
!367 = !DISubprogram(name: "getcodec", scope: !368, file: !368, line: 259, type: !133, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @getcodec, variables: !369)
!368 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/cjkcodecs.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !{!370, !371, !372, !373, !374, !375, !456, !457, !462, !463}
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !367, file: !368, line: 259, type: !12)
!371 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "encoding", arg: 2, scope: !367, file: !368, line: 259, type: !12)
!372 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codecobj", scope: !367, file: !368, line: 261, type: !12)
!373 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !367, file: !368, line: 261, type: !12)
!374 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cofunc", scope: !367, file: !368, line: 261, type: !12)
!375 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "codec", scope: !367, file: !368, line: 262, type: !376)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "MultibyteCodec", file: !379, line: 58, baseType: !380)
!379 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/multibytecodec.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !379, line: 48, size: 576, align: 64, elements: !381)
!381 = !{!382, !383, !386, !391, !417, !422, !427, !449, !451}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !380, file: !379, line: 49, baseType: !36, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !380, file: !379, line: 50, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "codecinit", scope: !380, file: !379, line: 51, baseType: !387, size: 64, align: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbcodec_init", file: !379, line: 27, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!51, !384}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "encode", scope: !380, file: !379, line: 52, baseType: !392, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencode_func", file: !379, line: 28, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!18, !396, !384, !51, !11, !254, !18, !415, !18, !51}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "MultibyteCodec_State", file: !379, line: 25, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_union_type, file: !379, line: 19, size: 64, align: 64, elements: !399)
!399 = !{!400, !401, !402, !406, !411}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !398, file: !379, line: 20, baseType: !11, size: 64, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !398, file: !379, line: 21, baseType: !51, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !398, file: !379, line: 22, baseType: !403, size: 64, align: 8)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 64, align: 8, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "u2", scope: !398, file: !379, line: 23, baseType: !407, size: 64, align: 16)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 64, align: 16, elements: !409)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs2_t", file: !379, line: 16, baseType: !84)
!409 = !{!410}
!410 = !DISubrange(count: 4)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "u4", scope: !398, file: !379, line: 24, baseType: !412, size: 64, align: 32)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 64, align: 32, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 2)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "encinit", scope: !380, file: !379, line: 53, baseType: !418, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencodeinit_func", file: !379, line: 34, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!51, !396, !384}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "encreset", scope: !380, file: !379, line: 54, baseType: !423, size: 64, align: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbencodereset_func", file: !379, line: 36, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!18, !396, !384, !415, !18}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !380, file: !379, line: 55, baseType: !428, size: 64, align: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecode_func", file: !379, line: 39, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!18, !396, !384, !432, !18, !435}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyUnicodeWriter", file: !4, line: 917, baseType: !437)
!437 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 897, size: 448, align: 64, elements: !438)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447, !448}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !437, file: !4, line: 898, baseType: !12, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !437, file: !4, line: 899, baseType: !11, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !437, file: !4, line: 900, baseType: !3, size: 32, align: 32, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "maxchar", scope: !437, file: !4, line: 901, baseType: !350, size: 32, align: 32, offset: 160)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !437, file: !4, line: 902, baseType: !18, size: 64, align: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !437, file: !4, line: 903, baseType: !18, size: 64, align: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "min_length", scope: !437, file: !4, line: 906, baseType: !18, size: 64, align: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "min_char", scope: !437, file: !4, line: 909, baseType: !350, size: 32, align: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "overallocate", scope: !437, file: !4, line: 912, baseType: !354, size: 8, align: 8, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !437, file: !4, line: 916, baseType: !354, size: 8, align: 8, offset: 424)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "decinit", scope: !380, file: !379, line: 56, baseType: !450, size: 64, align: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecodeinit_func", file: !379, line: 43, baseType: !419)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "decreset", scope: !380, file: !379, line: 57, baseType: !452, size: 64, align: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbdecodereset_func", file: !379, line: 45, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!18, !396, !384}
!456 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enc", scope: !367, file: !368, line: 263, type: !36)
!457 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !458, file: !368, line: 279, type: !101)
!458 = distinct !DILexicalBlock(scope: !459, file: !368, line: 279, column: 28)
!459 = distinct !DILexicalBlock(scope: !460, file: !368, line: 279, column: 13)
!460 = distinct !DILexicalBlock(scope: !461, file: !368, line: 278, column: 5)
!461 = distinct !DILexicalBlock(scope: !367, file: !368, line: 278, column: 5)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !458, file: !368, line: 279, type: !101)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !464, file: !368, line: 293, type: !12)
!464 = distinct !DILexicalBlock(scope: !367, file: !368, line: 293, column: 8)
!465 = !DISubprogram(name: "getmultibytecodec", scope: !368, file: !368, line: 244, type: !363, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @getmultibytecodec, variables: !466)
!466 = !{!467, !470}
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !468, file: !368, line: 249, type: !12)
!468 = distinct !DILexicalBlock(scope: !469, file: !368, line: 248, column: 31)
!469 = distinct !DILexicalBlock(scope: !465, file: !368, line: 248, column: 9)
!470 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !471, file: !368, line: 253, type: !12)
!471 = distinct !DILexicalBlock(scope: !468, file: !368, line: 253, column: 12)
!472 = !DISubprogram(name: "big5_encode", scope: !362, file: !362, line: 14, type: !394, isLocal: true, isDefinition: true, scopeLine: 15, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @big5_encode, variables: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !485}
!474 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !472, file: !362, line: 14, type: !396)
!475 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !472, file: !362, line: 14, type: !384)
!476 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kind", arg: 3, scope: !472, file: !362, line: 14, type: !51)
!477 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !472, file: !362, line: 14, type: !11)
!478 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpos", arg: 5, scope: !472, file: !362, line: 14, type: !254)
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inlen", arg: 6, scope: !472, file: !362, line: 14, type: !18)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 7, scope: !472, file: !362, line: 14, type: !415)
!481 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outleft", arg: 8, scope: !472, file: !362, line: 14, type: !18)
!482 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !472, file: !362, line: 14, type: !51)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !484, file: !362, line: 17, type: !350)
!484 = distinct !DILexicalBlock(scope: !472, file: !362, line: 16, column: 28)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !484, file: !362, line: 18, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "DBCHAR", file: !379, line: 16, baseType: !84)
!487 = !DISubprogram(name: "big5_decode", scope: !362, file: !362, line: 45, type: !430, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @big5_decode, variables: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !496}
!489 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !487, file: !362, line: 45, type: !396)
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !487, file: !362, line: 45, type: !384)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !487, file: !362, line: 45, type: !432)
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inleft", arg: 4, scope: !487, file: !362, line: 45, type: !18)
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 5, scope: !487, file: !362, line: 45, type: !435)
!494 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !495, file: !362, line: 48, type: !354)
!495 = distinct !DILexicalBlock(scope: !487, file: !362, line: 47, column: 24)
!496 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !495, file: !362, line: 49, type: !350)
!497 = !DISubprogram(name: "cp950_encode", scope: !362, file: !362, line: 73, type: !394, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)* @cp950_encode, variables: !498)
!498 = !{!499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !510}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !497, file: !362, line: 73, type: !396)
!500 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !497, file: !362, line: 73, type: !384)
!501 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kind", arg: 3, scope: !497, file: !362, line: 73, type: !51)
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 4, scope: !497, file: !362, line: 73, type: !11)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inpos", arg: 5, scope: !497, file: !362, line: 73, type: !254)
!504 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inlen", arg: 6, scope: !497, file: !362, line: 73, type: !18)
!505 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outbuf", arg: 7, scope: !497, file: !362, line: 73, type: !415)
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "outleft", arg: 8, scope: !497, file: !362, line: 73, type: !18)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "flags", arg: 9, scope: !497, file: !362, line: 73, type: !51)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !509, file: !362, line: 76, type: !350)
!509 = distinct !DILexicalBlock(scope: !497, file: !362, line: 75, column: 28)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !509, file: !362, line: 77, type: !486)
!511 = !DISubprogram(name: "cp950_decode", scope: !362, file: !362, line: 104, type: !430, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)* @cp950_decode, variables: !512)
!512 = !{!513, !514, !515, !516, !517, !518, !520}
!513 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "state", arg: 1, scope: !511, file: !362, line: 104, type: !396)
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "config", arg: 2, scope: !511, file: !362, line: 104, type: !384)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inbuf", arg: 3, scope: !511, file: !362, line: 104, type: !432)
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "inleft", arg: 4, scope: !511, file: !362, line: 104, type: !18)
!517 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "writer", arg: 5, scope: !511, file: !362, line: 104, type: !435)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !519, file: !362, line: 107, type: !354)
!519 = distinct !DILexicalBlock(scope: !511, file: !362, line: 106, column: 24)
!520 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decoded", scope: !519, file: !362, line: 108, type: !350)
!521 = !DISubprogram(name: "register_maps", scope: !368, file: !368, line: 304, type: !151, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @register_maps, variables: !522)
!522 = !{!523, !524, !550, !557}
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !521, file: !368, line: 304, type: !12)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "h", scope: !521, file: !368, line: 306, type: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dbcs_map", file: !368, line: 52, size: 192, align: 64, elements: !528)
!528 = !{!529, !530, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !527, file: !368, line: 53, baseType: !36, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "encmap", scope: !527, file: !368, line: 54, baseType: !531, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !533)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "unim_index", file: !368, line: 41, size: 128, align: 64, elements: !534)
!534 = !{!535, !538, !539}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !533, file: !368, line: 42, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !533, file: !368, line: 43, baseType: !354, size: 8, align: 8, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !533, file: !368, line: 43, baseType: !354, size: 8, align: 8, offset: 72)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "decmap", scope: !527, file: !368, line: 55, baseType: !541, size: 64, align: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !543)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "dbcs_index", file: !368, line: 29, size: 128, align: 64, elements: !544)
!544 = !{!545, !548, !549}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !543, file: !368, line: 30, baseType: !546, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !543, file: !368, line: 31, baseType: !354, size: 8, align: 8, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !543, file: !368, line: 31, baseType: !354, size: 8, align: 8, offset: 72)
!550 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mhname", scope: !551, file: !368, line: 309, type: !554)
!551 = distinct !DILexicalBlock(scope: !552, file: !368, line: 308, column: 56)
!552 = distinct !DILexicalBlock(scope: !553, file: !368, line: 308, column: 5)
!553 = distinct !DILexicalBlock(scope: !521, file: !368, line: 308, column: 5)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2048, align: 8, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 256)
!557 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !551, file: !368, line: 310, type: !51)
!558 = !{!559, !582, !584, !585, !586, !590, !593, !597, !599, !603, !604, !608, !609, !613, !614}
!559 = !DIGlobalVariable(name: "__module", scope: !0, file: !362, line: 143, type: !560, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @__module)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !561, line: 47, size: 832, align: 64, elements: !562)
!561 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!562 = !{!563, !572, !573, !574, !575, !578, !579, !580, !581}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !560, file: !561, line: 48, baseType: !564, size: 320, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !561, line: 38, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !561, line: 33, size: 320, align: 64, elements: !566)
!566 = !{!567, !568, !570, !571}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !565, file: !561, line: 34, baseType: !13, size: 128, align: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !565, file: !561, line: 35, baseType: !569, size: 64, align: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !565, file: !561, line: 36, baseType: !18, size: 64, align: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !565, file: !561, line: 37, baseType: !12, size: 64, align: 64, offset: 256)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !560, file: !561, line: 49, baseType: !36, size: 64, align: 64, offset: 320)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !560, file: !561, line: 50, baseType: !36, size: 64, align: 64, offset: 384)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !560, file: !561, line: 51, baseType: !18, size: 64, align: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !560, file: !561, line: 52, baseType: !576, size: 64, align: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !560, file: !561, line: 53, baseType: !149, size: 64, align: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !560, file: !561, line: 54, baseType: !266, size: 64, align: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !560, file: !561, line: 55, baseType: !149, size: 64, align: 64, offset: 704)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !560, file: !561, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!582 = !DIGlobalVariable(name: "__methods", scope: !0, file: !368, line: 298, type: !583, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @__methods)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 512, align: 64, elements: !413)
!584 = !DIGlobalVariable(name: "cofunc", scope: !465, file: !368, line: 246, type: !12, isLocal: true, isDefinition: true, variable: %struct._object** @getmultibytecodec.cofunc)
!585 = !DIGlobalVariable(name: "codec_list", scope: !0, file: !362, line: 141, type: !376, isLocal: true, isDefinition: true, variable: %struct.MultibyteCodec** @codec_list)
!586 = !DIGlobalVariable(name: "_codec_list", scope: !0, file: !362, line: 138, type: !587, isLocal: true, isDefinition: true, variable: [3 x %struct.MultibyteCodec]* @_codec_list)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1728, align: 64, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 3)
!590 = !DIGlobalVariable(name: "big5_encmap", scope: !0, file: !591, line: 2481, type: !592, isLocal: true, isDefinition: true, variable: [256 x %struct.unim_index]* @big5_encmap)
!591 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/cjkcodecs/mappings_tw.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 32768, align: 64, elements: !555)
!593 = !DIGlobalVariable(name: "__big5_encmap", scope: !0, file: !591, line: 1191, type: !594, isLocal: true, isDefinition: true, variable: [21764 x i16]* @__big5_encmap)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 348224, align: 16, elements: !595)
!595 = !{!596}
!596 = !DISubrange(count: 21764)
!597 = !DIGlobalVariable(name: "big5_decmap", scope: !0, file: !591, line: 1137, type: !598, isLocal: true, isDefinition: true, variable: [256 x %struct.dbcs_index]* @big5_decmap)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 32768, align: 64, elements: !555)
!599 = !DIGlobalVariable(name: "__big5_decmap", scope: !0, file: !591, line: 1, type: !600, isLocal: true, isDefinition: true, variable: [16702 x i16]* @__big5_decmap)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 267232, align: 16, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 16702)
!603 = !DIGlobalVariable(name: "cp950ext_encmap", scope: !0, file: !591, line: 2601, type: !592, isLocal: true, isDefinition: true, variable: [256 x %struct.unim_index]* @cp950ext_encmap)
!604 = !DIGlobalVariable(name: "__cp950ext_encmap", scope: !0, file: !591, line: 2580, type: !605, isLocal: true, isDefinition: true, variable: [581 x i16]* @__cp950ext_encmap)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 9296, align: 16, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 581)
!608 = !DIGlobalVariable(name: "cp950ext_decmap", scope: !0, file: !591, line: 2549, type: !598, isLocal: true, isDefinition: true, variable: [256 x %struct.dbcs_index]* @cp950ext_decmap)
!609 = !DIGlobalVariable(name: "__cp950ext_decmap", scope: !0, file: !591, line: 2537, type: !610, isLocal: true, isDefinition: true, variable: [224 x i16]* @__cp950ext_decmap)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 3584, align: 16, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 224)
!613 = !DIGlobalVariable(name: "mapping_list", scope: !0, file: !362, line: 136, type: !525, isLocal: true, isDefinition: true, variable: %struct.dbcs_map** @mapping_list)
!614 = !DIGlobalVariable(name: "_mapping_list", scope: !0, file: !362, line: 133, type: !615, isLocal: true, isDefinition: true, variable: [3 x %struct.dbcs_map]* @_mapping_list)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !526, size: 576, align: 64, elements: !588)
!616 = !{i32 2, !"Dwarf Version", i32 4}
!617 = !{i32 2, !"Debug Info Version", i32 3}
!618 = !{i32 1, !"PIC Level", i32 2}
!619 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!620 = !DILocation(line: 143, column: 219, scope: !361)
!621 = !DIExpression()
!622 = !DILocation(line: 143, column: 229, scope: !361)
!623 = !DILocation(line: 143, column: 233, scope: !361)
!624 = !{!625, !625, i64 0}
!625 = !{!"any pointer", !626, i64 0}
!626 = !{!"omnipotent char", !627, i64 0}
!627 = !{!"Simple C/C++ TBAA"}
!628 = !DILocation(line: 143, column: 272, scope: !629)
!629 = distinct !DILexicalBlock(scope: !361, file: !362, line: 143, column: 272)
!630 = !DILocation(line: 143, column: 274, scope: !629)
!631 = !DILocation(line: 143, column: 272, scope: !361)
!632 = !DILocation(line: 143, column: 309, scope: !633)
!633 = !DILexicalBlockFile(scope: !629, file: !362, discriminator: 1)
!634 = !DILocation(line: 143, column: 295, scope: !629)
!635 = !DILocation(line: 143, column: 289, scope: !629)
!636 = !DILocation(line: 143, column: 320, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !362, discriminator: 3)
!638 = !DILexicalBlockFile(scope: !361, file: !362, discriminator: 2)
!639 = !DILocation(line: 143, column: 323, scope: !361)
!640 = !DILocation(line: 143, column: 313, scope: !361)
!641 = !DILocation(line: 304, column: 25, scope: !521)
!642 = !DILocation(line: 306, column: 5, scope: !521)
!643 = !DILocation(line: 306, column: 28, scope: !521)
!644 = !DILocation(line: 308, column: 14, scope: !553)
!645 = !DILocation(line: 308, column: 12, scope: !553)
!646 = !DILocation(line: 308, column: 10, scope: !553)
!647 = !DILocation(line: 308, column: 28, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !368, discriminator: 2)
!649 = !DILexicalBlockFile(scope: !552, file: !368, discriminator: 1)
!650 = !DILocation(line: 308, column: 31, scope: !552)
!651 = !{!652, !625, i64 0}
!652 = !{!"dbcs_map", !625, i64 0, !625, i64 8, !625, i64 16}
!653 = !DILocation(line: 308, column: 28, scope: !552)
!654 = !{!626, !626, i64 0}
!655 = !DILocation(line: 308, column: 42, scope: !552)
!656 = !DILocation(line: 308, column: 5, scope: !553)
!657 = !DILocation(line: 309, column: 9, scope: !551)
!658 = !DILocation(line: 309, column: 14, scope: !551)
!659 = !DILocation(line: 310, column: 9, scope: !551)
!660 = !DILocation(line: 310, column: 13, scope: !551)
!661 = !DILocation(line: 311, column: 16, scope: !551)
!662 = !DILocation(line: 311, column: 23, scope: !551)
!663 = !DILocation(line: 311, column: 42, scope: !551)
!664 = !DILocation(line: 311, column: 47, scope: !551)
!665 = !DILocation(line: 311, column: 50, scope: !551)
!666 = !DILocation(line: 311, column: 9, scope: !551)
!667 = !DILocation(line: 312, column: 32, scope: !551)
!668 = !DILocation(line: 312, column: 40, scope: !551)
!669 = !DILocation(line: 313, column: 47, scope: !551)
!670 = !DILocation(line: 313, column: 39, scope: !551)
!671 = !DILocation(line: 313, column: 25, scope: !551)
!672 = !DILocation(line: 312, column: 13, scope: !551)
!673 = !DILocation(line: 312, column: 11, scope: !551)
!674 = !{!675, !675, i64 0}
!675 = !{!"int", !626, i64 0}
!676 = !DILocation(line: 314, column: 13, scope: !677)
!677 = distinct !DILexicalBlock(scope: !551, file: !368, line: 314, column: 13)
!678 = !DILocation(line: 314, column: 15, scope: !677)
!679 = !DILocation(line: 314, column: 13, scope: !551)
!680 = !DILocation(line: 315, column: 13, scope: !677)
!681 = !DILocation(line: 316, column: 5, scope: !552)
!682 = !DILocation(line: 316, column: 5, scope: !649)
!683 = !DILocation(line: 316, column: 5, scope: !551)
!684 = !DILocation(line: 308, column: 52, scope: !552)
!685 = !DILocation(line: 308, column: 5, scope: !552)
!686 = !DILocation(line: 317, column: 5, scope: !521)
!687 = !DILocation(line: 318, column: 1, scope: !521)
!688 = !DILocation(line: 259, column: 20, scope: !367)
!689 = !DILocation(line: 259, column: 36, scope: !367)
!690 = !DILocation(line: 261, column: 5, scope: !367)
!691 = !DILocation(line: 261, column: 15, scope: !367)
!692 = !DILocation(line: 261, column: 26, scope: !367)
!693 = !DILocation(line: 261, column: 30, scope: !367)
!694 = !DILocation(line: 262, column: 5, scope: !367)
!695 = !DILocation(line: 262, column: 27, scope: !367)
!696 = !DILocation(line: 263, column: 5, scope: !367)
!697 = !DILocation(line: 263, column: 17, scope: !367)
!698 = !DILocation(line: 265, column: 27, scope: !699)
!699 = distinct !DILexicalBlock(scope: !367, file: !368, line: 265, column: 9)
!700 = !DILocation(line: 265, column: 39, scope: !699)
!701 = !{!702, !625, i64 8}
!702 = !{!"_object", !703, i64 0, !625, i64 8}
!703 = !{!"long", !626, i64 0}
!704 = !DILocation(line: 265, column: 50, scope: !699)
!705 = !{!706, !703, i64 168}
!706 = !{!"_typeobject", !707, i64 0, !625, i64 24, !703, i64 32, !703, i64 40, !625, i64 48, !625, i64 56, !625, i64 64, !625, i64 72, !625, i64 80, !625, i64 88, !625, i64 96, !625, i64 104, !625, i64 112, !625, i64 120, !625, i64 128, !625, i64 136, !625, i64 144, !625, i64 152, !625, i64 160, !703, i64 168, !625, i64 176, !625, i64 184, !625, i64 192, !625, i64 200, !703, i64 208, !625, i64 216, !625, i64 224, !625, i64 232, !625, i64 240, !625, i64 248, !625, i64 256, !625, i64 264, !625, i64 272, !625, i64 280, !703, i64 288, !625, i64 296, !625, i64 304, !625, i64 312, !625, i64 320, !625, i64 328, !625, i64 336, !625, i64 344, !625, i64 352, !625, i64 360, !625, i64 368, !625, i64 376, !675, i64 384, !625, i64 392}
!707 = !{!"", !702, i64 0, !703, i64 16}
!708 = !DILocation(line: 265, column: 59, scope: !699)
!709 = !DILocation(line: 265, column: 76, scope: !699)
!710 = !DILocation(line: 265, column: 9, scope: !367)
!711 = !DILocation(line: 266, column: 25, scope: !712)
!712 = distinct !DILexicalBlock(scope: !699, file: !368, line: 265, column: 83)
!713 = !DILocation(line: 266, column: 9, scope: !712)
!714 = !DILocation(line: 268, column: 9, scope: !712)
!715 = !DILocation(line: 270, column: 28, scope: !367)
!716 = !DILocation(line: 270, column: 11, scope: !367)
!717 = !DILocation(line: 270, column: 9, scope: !367)
!718 = !DILocation(line: 271, column: 9, scope: !719)
!719 = distinct !DILexicalBlock(scope: !367, file: !368, line: 271, column: 9)
!720 = !DILocation(line: 271, column: 13, scope: !719)
!721 = !DILocation(line: 271, column: 9, scope: !367)
!722 = !DILocation(line: 272, column: 9, scope: !719)
!723 = !DILocation(line: 274, column: 14, scope: !367)
!724 = !DILocation(line: 274, column: 12, scope: !367)
!725 = !DILocation(line: 275, column: 9, scope: !726)
!726 = distinct !DILexicalBlock(scope: !367, file: !368, line: 275, column: 9)
!727 = !DILocation(line: 275, column: 16, scope: !726)
!728 = !DILocation(line: 275, column: 9, scope: !367)
!729 = !DILocation(line: 276, column: 9, scope: !726)
!730 = !DILocation(line: 278, column: 18, scope: !461)
!731 = !DILocation(line: 278, column: 16, scope: !461)
!732 = !DILocation(line: 278, column: 10, scope: !461)
!733 = !DILocation(line: 278, column: 30, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !368, discriminator: 2)
!735 = !DILexicalBlockFile(scope: !460, file: !368, discriminator: 1)
!736 = !DILocation(line: 278, column: 37, scope: !460)
!737 = !{!738, !625, i64 0}
!738 = !{!"", !625, i64 0, !625, i64 8, !625, i64 16, !625, i64 24, !625, i64 32, !625, i64 40, !625, i64 48, !625, i64 56, !625, i64 64}
!739 = !DILocation(line: 278, column: 30, scope: !460)
!740 = !DILocation(line: 278, column: 5, scope: !461)
!741 = !DILocation(line: 279, column: 30, scope: !458)
!742 = !DILocation(line: 279, column: 37, scope: !458)
!743 = !DILocation(line: 279, column: 47, scope: !458)
!744 = !DILocation(line: 279, column: 2255, scope: !458)
!745 = !DILocation(line: 279, column: 2262, scope: !458)
!746 = !DILocation(line: 279, column: 2272, scope: !458)
!747 = !DILocation(line: 279, column: 2237, scope: !458)
!748 = !DILocation(line: 279, column: 2281, scope: !459)
!749 = !DILocation(line: 279, column: 2281, scope: !458)
!750 = !DILocation(line: 279, column: 2284, scope: !459)
!751 = !DILocation(line: 279, column: 13, scope: !460)
!752 = !DILocation(line: 280, column: 13, scope: !459)
!753 = !DILocation(line: 279, column: 2287, scope: !754)
!754 = !DILexicalBlockFile(scope: !459, file: !368, discriminator: 1)
!755 = !DILocation(line: 278, column: 55, scope: !460)
!756 = !DILocation(line: 278, column: 5, scope: !460)
!757 = !DILocation(line: 282, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !367, file: !368, line: 282, column: 9)
!759 = !DILocation(line: 282, column: 16, scope: !758)
!760 = !DILocation(line: 282, column: 28, scope: !758)
!761 = !DILocation(line: 282, column: 9, scope: !367)
!762 = !DILocation(line: 283, column: 25, scope: !763)
!763 = distinct !DILexicalBlock(scope: !758, file: !368, line: 282, column: 37)
!764 = !DILocation(line: 283, column: 9, scope: !763)
!765 = !DILocation(line: 285, column: 9, scope: !763)
!766 = !DILocation(line: 288, column: 38, scope: !367)
!767 = !DILocation(line: 288, column: 30, scope: !367)
!768 = !DILocation(line: 288, column: 16, scope: !367)
!769 = !DILocation(line: 288, column: 14, scope: !367)
!770 = !DILocation(line: 289, column: 9, scope: !771)
!771 = distinct !DILexicalBlock(scope: !367, file: !368, line: 289, column: 9)
!772 = !DILocation(line: 289, column: 18, scope: !771)
!773 = !DILocation(line: 289, column: 9, scope: !367)
!774 = !DILocation(line: 290, column: 9, scope: !771)
!775 = !DILocation(line: 292, column: 38, scope: !367)
!776 = !DILocation(line: 292, column: 46, scope: !367)
!777 = !DILocation(line: 292, column: 9, scope: !367)
!778 = !DILocation(line: 292, column: 7, scope: !367)
!779 = !DILocation(line: 293, column: 5, scope: !367)
!780 = !DILocation(line: 293, column: 10, scope: !781)
!781 = !DILexicalBlockFile(scope: !464, file: !368, discriminator: 1)
!782 = !DILocation(line: 293, column: 20, scope: !464)
!783 = !DILocation(line: 293, column: 50, scope: !464)
!784 = !DILocation(line: 293, column: 69, scope: !785)
!785 = distinct !DILexicalBlock(scope: !464, file: !368, line: 293, column: 66)
!786 = !DILocation(line: 293, column: 86, scope: !785)
!787 = !DILocation(line: 293, column: 66, scope: !785)
!788 = !{!702, !703, i64 0}
!789 = !DILocation(line: 293, column: 96, scope: !785)
!790 = !DILocation(line: 293, column: 66, scope: !464)
!791 = !DILocation(line: 293, column: 66, scope: !792)
!792 = !DILexicalBlockFile(scope: !464, file: !368, discriminator: 2)
!793 = !DILocation(line: 293, column: 127, scope: !794)
!794 = !DILexicalBlockFile(scope: !785, file: !368, discriminator: 3)
!795 = !DILocation(line: 293, column: 145, scope: !785)
!796 = !DILocation(line: 293, column: 155, scope: !785)
!797 = !{!706, !625, i64 48}
!798 = !DILocation(line: 293, column: 180, scope: !785)
!799 = !DILocation(line: 293, column: 111, scope: !785)
!800 = !DILocation(line: 293, column: 199, scope: !801)
!801 = !DILexicalBlockFile(scope: !367, file: !368, discriminator: 4)
!802 = !DILocation(line: 293, column: 199, scope: !464)
!803 = !DILocation(line: 293, column: 199, scope: !804)
!804 = !DILexicalBlockFile(scope: !464, file: !368, discriminator: 5)
!805 = !DILocation(line: 295, column: 12, scope: !367)
!806 = !DILocation(line: 295, column: 5, scope: !367)
!807 = !DILocation(line: 296, column: 1, scope: !367)
!808 = !DILocation(line: 248, column: 9, scope: !469)
!809 = !DILocation(line: 248, column: 16, scope: !469)
!810 = !DILocation(line: 248, column: 9, scope: !465)
!811 = !DILocation(line: 249, column: 9, scope: !468)
!812 = !DILocation(line: 249, column: 19, scope: !468)
!813 = !DILocation(line: 249, column: 25, scope: !468)
!814 = !DILocation(line: 250, column: 13, scope: !815)
!815 = distinct !DILexicalBlock(scope: !468, file: !368, line: 250, column: 13)
!816 = !DILocation(line: 250, column: 17, scope: !815)
!817 = !DILocation(line: 250, column: 13, scope: !468)
!818 = !DILocation(line: 251, column: 13, scope: !815)
!819 = !DILocation(line: 252, column: 41, scope: !468)
!820 = !DILocation(line: 252, column: 18, scope: !468)
!821 = !DILocation(line: 252, column: 16, scope: !468)
!822 = !DILocation(line: 253, column: 9, scope: !468)
!823 = !DILocation(line: 253, column: 14, scope: !824)
!824 = !DILexicalBlockFile(scope: !471, file: !368, discriminator: 1)
!825 = !DILocation(line: 253, column: 24, scope: !471)
!826 = !DILocation(line: 253, column: 54, scope: !471)
!827 = !DILocation(line: 253, column: 68, scope: !828)
!828 = distinct !DILexicalBlock(scope: !471, file: !368, line: 253, column: 65)
!829 = !DILocation(line: 253, column: 85, scope: !828)
!830 = !DILocation(line: 253, column: 65, scope: !828)
!831 = !DILocation(line: 253, column: 95, scope: !828)
!832 = !DILocation(line: 253, column: 65, scope: !471)
!833 = !DILocation(line: 253, column: 65, scope: !834)
!834 = !DILexicalBlockFile(scope: !471, file: !368, discriminator: 2)
!835 = !DILocation(line: 253, column: 126, scope: !836)
!836 = !DILexicalBlockFile(scope: !828, file: !368, discriminator: 3)
!837 = !DILocation(line: 253, column: 144, scope: !828)
!838 = !DILocation(line: 253, column: 154, scope: !828)
!839 = !DILocation(line: 253, column: 179, scope: !828)
!840 = !DILocation(line: 253, column: 110, scope: !828)
!841 = !DILocation(line: 253, column: 198, scope: !842)
!842 = !DILexicalBlockFile(scope: !468, file: !368, discriminator: 4)
!843 = !DILocation(line: 253, column: 198, scope: !471)
!844 = !DILocation(line: 253, column: 198, scope: !845)
!845 = !DILexicalBlockFile(scope: !471, file: !368, discriminator: 5)
!846 = !DILocation(line: 254, column: 5, scope: !469)
!847 = !DILocation(line: 254, column: 5, scope: !848)
!848 = !DILexicalBlockFile(scope: !469, file: !368, discriminator: 1)
!849 = !DILocation(line: 254, column: 5, scope: !468)
!850 = !DILocation(line: 255, column: 12, scope: !465)
!851 = !DILocation(line: 255, column: 5, scope: !465)
!852 = !DILocation(line: 256, column: 1, scope: !465)
!853 = !DILocation(line: 14, column: 54, scope: !472)
!854 = !DILocation(line: 14, column: 73, scope: !472)
!855 = !DILocation(line: 14, column: 85, scope: !472)
!856 = !DILocation(line: 14, column: 97, scope: !472)
!857 = !DILocation(line: 14, column: 115, scope: !472)
!858 = !{!703, !703, i64 0}
!859 = !DILocation(line: 14, column: 133, scope: !472)
!860 = !DILocation(line: 14, column: 156, scope: !472)
!861 = !DILocation(line: 14, column: 175, scope: !472)
!862 = !DILocation(line: 14, column: 188, scope: !472)
!863 = !DILocation(line: 16, column: 5, scope: !472)
!864 = !DILocation(line: 16, column: 13, scope: !865)
!865 = !DILexicalBlockFile(scope: !866, file: !362, discriminator: 2)
!866 = !DILexicalBlockFile(scope: !472, file: !362, discriminator: 1)
!867 = !DILocation(line: 16, column: 12, scope: !472)
!868 = !DILocation(line: 16, column: 21, scope: !472)
!869 = !DILocation(line: 16, column: 19, scope: !472)
!870 = !DILocation(line: 17, column: 9, scope: !484)
!871 = !DILocation(line: 17, column: 17, scope: !484)
!872 = !DILocation(line: 17, column: 35, scope: !484)
!873 = !DILocation(line: 17, column: 41, scope: !484)
!874 = !DILocation(line: 17, column: 34, scope: !484)
!875 = !DILocation(line: 17, column: 95, scope: !876)
!876 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 1)
!877 = !DILocation(line: 17, column: 94, scope: !484)
!878 = !DILocation(line: 17, column: 86, scope: !484)
!879 = !DILocation(line: 17, column: 67, scope: !484)
!880 = !DILocation(line: 17, column: 107, scope: !881)
!881 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 2)
!882 = !DILocation(line: 17, column: 113, scope: !484)
!883 = !DILocation(line: 17, column: 106, scope: !484)
!884 = !DILocation(line: 17, column: 167, scope: !885)
!885 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 4)
!886 = !DILocation(line: 17, column: 166, scope: !484)
!887 = !DILocation(line: 17, column: 158, scope: !484)
!888 = !DILocation(line: 17, column: 140, scope: !484)
!889 = !DILocation(line: 17, column: 139, scope: !484)
!890 = !{!891, !891, i64 0}
!891 = !{!"short", !626, i64 0}
!892 = !DILocation(line: 17, column: 205, scope: !893)
!893 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 5)
!894 = !DILocation(line: 17, column: 204, scope: !484)
!895 = !DILocation(line: 17, column: 196, scope: !484)
!896 = !DILocation(line: 17, column: 178, scope: !484)
!897 = !DILocation(line: 17, column: 177, scope: !484)
!898 = !DILocation(line: 17, column: 34, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !362, discriminator: 7)
!900 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 6)
!901 = !DILocation(line: 17, column: 17, scope: !902)
!902 = !DILexicalBlockFile(scope: !903, file: !362, discriminator: 8)
!903 = !DILexicalBlockFile(scope: !484, file: !362, discriminator: 3)
!904 = !DILocation(line: 18, column: 9, scope: !484)
!905 = !DILocation(line: 18, column: 16, scope: !484)
!906 = !DILocation(line: 20, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !484, file: !362, line: 20, column: 13)
!908 = !DILocation(line: 20, column: 15, scope: !907)
!909 = !DILocation(line: 20, column: 13, scope: !484)
!910 = !DILocation(line: 21, column: 13, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !362, line: 20, column: 23)
!912 = !DILocation(line: 21, column: 22, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !362, discriminator: 1)
!914 = distinct !DILexicalBlock(scope: !915, file: !362, line: 21, column: 22)
!915 = distinct !DILexicalBlock(scope: !911, file: !362, line: 21, column: 16)
!916 = !DILocation(line: 21, column: 30, scope: !914)
!917 = !DILocation(line: 21, column: 22, scope: !915)
!918 = !DILocation(line: 21, column: 37, scope: !919)
!919 = !DILexicalBlockFile(scope: !914, file: !362, discriminator: 2)
!920 = !DILocation(line: 21, column: 37, scope: !914)
!921 = !DILocation(line: 21, column: 50, scope: !922)
!922 = !DILexicalBlockFile(scope: !915, file: !362, discriminator: 3)
!923 = !DILocation(line: 21, column: 50, scope: !924)
!924 = !DILexicalBlockFile(scope: !915, file: !362, discriminator: 4)
!925 = !DILocation(line: 22, column: 39, scope: !911)
!926 = !DILocation(line: 22, column: 24, scope: !911)
!927 = !DILocation(line: 22, column: 15, scope: !911)
!928 = !DILocation(line: 22, column: 14, scope: !911)
!929 = !DILocation(line: 22, column: 22, scope: !911)
!930 = !DILocation(line: 23, column: 13, scope: !911)
!931 = !DILocation(line: 23, column: 18, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !362, discriminator: 1)
!933 = distinct !DILexicalBlock(scope: !911, file: !362, line: 23, column: 16)
!934 = !DILocation(line: 23, column: 25, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !362, discriminator: 2)
!936 = distinct !DILexicalBlock(scope: !933, file: !362, line: 23, column: 21)
!937 = !DILocation(line: 23, column: 32, scope: !936)
!938 = !DILocation(line: 23, column: 40, scope: !936)
!939 = !DILocation(line: 23, column: 40, scope: !940)
!940 = !DILexicalBlockFile(scope: !936, file: !362, discriminator: 3)
!941 = !DILocation(line: 23, column: 53, scope: !942)
!942 = !DILexicalBlockFile(scope: !933, file: !362, discriminator: 4)
!943 = !DILocation(line: 23, column: 60, scope: !944)
!944 = !DILexicalBlockFile(scope: !945, file: !362, discriminator: 5)
!945 = distinct !DILexicalBlock(scope: !933, file: !362, line: 23, column: 56)
!946 = !DILocation(line: 23, column: 68, scope: !945)
!947 = !DILocation(line: 23, column: 86, scope: !945)
!948 = !DILocation(line: 23, column: 94, scope: !945)
!949 = !DILocation(line: 23, column: 94, scope: !950)
!950 = !DILexicalBlockFile(scope: !945, file: !362, discriminator: 6)
!951 = !DILocation(line: 23, column: 107, scope: !952)
!952 = !DILexicalBlockFile(scope: !933, file: !362, discriminator: 7)
!953 = !DILocation(line: 23, column: 107, scope: !954)
!954 = !DILexicalBlockFile(scope: !933, file: !362, discriminator: 8)
!955 = !DILocation(line: 24, column: 13, scope: !911)
!956 = !DILocation(line: 27, column: 13, scope: !957)
!957 = distinct !DILexicalBlock(scope: !484, file: !362, line: 27, column: 13)
!958 = !DILocation(line: 27, column: 15, scope: !957)
!959 = !DILocation(line: 27, column: 13, scope: !484)
!960 = !DILocation(line: 28, column: 13, scope: !957)
!961 = !DILocation(line: 30, column: 9, scope: !484)
!962 = !DILocation(line: 30, column: 18, scope: !963)
!963 = !DILexicalBlockFile(scope: !964, file: !362, discriminator: 1)
!964 = distinct !DILexicalBlock(scope: !965, file: !362, line: 30, column: 18)
!965 = distinct !DILexicalBlock(scope: !484, file: !362, line: 30, column: 12)
!966 = !DILocation(line: 30, column: 26, scope: !964)
!967 = !DILocation(line: 30, column: 18, scope: !965)
!968 = !DILocation(line: 30, column: 33, scope: !969)
!969 = !DILexicalBlockFile(scope: !964, file: !362, discriminator: 2)
!970 = !DILocation(line: 30, column: 33, scope: !964)
!971 = !DILocation(line: 30, column: 46, scope: !972)
!972 = !DILexicalBlockFile(scope: !965, file: !362, discriminator: 3)
!973 = !DILocation(line: 30, column: 46, scope: !974)
!974 = !DILexicalBlockFile(scope: !965, file: !362, discriminator: 4)
!975 = !DILocation(line: 32, column: 29, scope: !976)
!976 = distinct !DILexicalBlock(scope: !484, file: !362, line: 32, column: 13)
!977 = !DILocation(line: 32, column: 32, scope: !976)
!978 = !DILocation(line: 32, column: 16, scope: !976)
!979 = !DILocation(line: 32, column: 40, scope: !976)
!980 = !{!981, !625, i64 0}
!981 = !{!"unim_index", !625, i64 0, !626, i64 8, !626, i64 9}
!982 = !DILocation(line: 32, column: 44, scope: !976)
!983 = !DILocation(line: 32, column: 58, scope: !976)
!984 = !DILocation(line: 32, column: 63, scope: !985)
!985 = !DILexicalBlockFile(scope: !976, file: !362, discriminator: 1)
!986 = !DILocation(line: 32, column: 66, scope: !976)
!987 = !DILocation(line: 32, column: 92, scope: !976)
!988 = !DILocation(line: 32, column: 95, scope: !976)
!989 = !DILocation(line: 32, column: 79, scope: !976)
!990 = !DILocation(line: 32, column: 103, scope: !976)
!991 = !{!981, !626, i64 8}
!992 = !DILocation(line: 32, column: 77, scope: !976)
!993 = !DILocation(line: 32, column: 74, scope: !976)
!994 = !DILocation(line: 32, column: 110, scope: !976)
!995 = !DILocation(line: 32, column: 115, scope: !996)
!996 = !DILexicalBlockFile(scope: !976, file: !362, discriminator: 2)
!997 = !DILocation(line: 32, column: 118, scope: !976)
!998 = !DILocation(line: 32, column: 143, scope: !976)
!999 = !DILocation(line: 32, column: 146, scope: !976)
!1000 = !DILocation(line: 32, column: 130, scope: !976)
!1001 = !DILocation(line: 32, column: 154, scope: !976)
!1002 = !{!981, !626, i64 9}
!1003 = !DILocation(line: 32, column: 128, scope: !976)
!1004 = !DILocation(line: 32, column: 125, scope: !976)
!1005 = !DILocation(line: 32, column: 158, scope: !976)
!1006 = !DILocation(line: 32, column: 203, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !976, file: !362, discriminator: 3)
!1008 = !DILocation(line: 32, column: 206, scope: !976)
!1009 = !DILocation(line: 32, column: 231, scope: !976)
!1010 = !DILocation(line: 32, column: 234, scope: !976)
!1011 = !DILocation(line: 32, column: 218, scope: !976)
!1012 = !DILocation(line: 32, column: 242, scope: !976)
!1013 = !DILocation(line: 32, column: 216, scope: !976)
!1014 = !DILocation(line: 32, column: 214, scope: !976)
!1015 = !DILocation(line: 32, column: 171, scope: !976)
!1016 = !DILocation(line: 32, column: 186, scope: !976)
!1017 = !DILocation(line: 32, column: 189, scope: !976)
!1018 = !DILocation(line: 32, column: 173, scope: !976)
!1019 = !DILocation(line: 32, column: 197, scope: !976)
!1020 = !DILocation(line: 32, column: 169, scope: !976)
!1021 = !DILocation(line: 32, column: 161, scope: !976)
!1022 = !DILocation(line: 32, column: 251, scope: !976)
!1023 = !DILocation(line: 32, column: 13, scope: !484)
!1024 = !DILocation(line: 32, column: 13, scope: !885)
!1025 = !DILocation(line: 35, column: 13, scope: !976)
!1026 = !DILocation(line: 37, column: 9, scope: !484)
!1027 = !DILocation(line: 37, column: 32, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !362, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !484, file: !362, line: 37, column: 12)
!1030 = !DILocation(line: 37, column: 37, scope: !1029)
!1031 = !DILocation(line: 37, column: 31, scope: !1029)
!1032 = !DILocation(line: 37, column: 17, scope: !1029)
!1033 = !DILocation(line: 37, column: 16, scope: !1029)
!1034 = !DILocation(line: 37, column: 15, scope: !1029)
!1035 = !DILocation(line: 37, column: 29, scope: !1029)
!1036 = !DILocation(line: 37, column: 44, scope: !1029)
!1037 = !DILocation(line: 37, column: 44, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1029, file: !362, discriminator: 2)
!1039 = !DILocation(line: 38, column: 9, scope: !484)
!1040 = !DILocation(line: 38, column: 32, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !362, discriminator: 1)
!1042 = distinct !DILexicalBlock(scope: !484, file: !362, line: 38, column: 12)
!1043 = !DILocation(line: 38, column: 37, scope: !1042)
!1044 = !DILocation(line: 38, column: 31, scope: !1042)
!1045 = !DILocation(line: 38, column: 17, scope: !1042)
!1046 = !DILocation(line: 38, column: 16, scope: !1042)
!1047 = !DILocation(line: 38, column: 15, scope: !1042)
!1048 = !DILocation(line: 38, column: 29, scope: !1042)
!1049 = !DILocation(line: 38, column: 46, scope: !1042)
!1050 = !DILocation(line: 38, column: 46, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1042, file: !362, discriminator: 2)
!1052 = !DILocation(line: 39, column: 9, scope: !484)
!1053 = !DILocation(line: 39, column: 14, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !362, discriminator: 1)
!1055 = distinct !DILexicalBlock(scope: !484, file: !362, line: 39, column: 12)
!1056 = !DILocation(line: 39, column: 21, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1058, file: !362, discriminator: 2)
!1058 = distinct !DILexicalBlock(scope: !1055, file: !362, line: 39, column: 17)
!1059 = !DILocation(line: 39, column: 28, scope: !1058)
!1060 = !DILocation(line: 39, column: 36, scope: !1058)
!1061 = !DILocation(line: 39, column: 36, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1058, file: !362, discriminator: 3)
!1063 = !DILocation(line: 39, column: 49, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1055, file: !362, discriminator: 4)
!1065 = !DILocation(line: 39, column: 56, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1067, file: !362, discriminator: 5)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !362, line: 39, column: 52)
!1068 = !DILocation(line: 39, column: 64, scope: !1067)
!1069 = !DILocation(line: 39, column: 82, scope: !1067)
!1070 = !DILocation(line: 39, column: 90, scope: !1067)
!1071 = !DILocation(line: 39, column: 90, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1067, file: !362, discriminator: 6)
!1073 = !DILocation(line: 39, column: 103, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1055, file: !362, discriminator: 7)
!1075 = !DILocation(line: 39, column: 103, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1055, file: !362, discriminator: 8)
!1077 = !DILocation(line: 40, column: 5, scope: !472)
!1078 = !DILocation(line: 40, column: 5, scope: !866)
!1079 = !DILocation(line: 42, column: 5, scope: !472)
!1080 = !DILocation(line: 43, column: 1, scope: !472)
!1081 = !DILocation(line: 45, column: 54, scope: !487)
!1082 = !DILocation(line: 45, column: 73, scope: !487)
!1083 = !DILocation(line: 45, column: 103, scope: !487)
!1084 = !DILocation(line: 45, column: 121, scope: !487)
!1085 = !DILocation(line: 45, column: 147, scope: !487)
!1086 = !DILocation(line: 47, column: 5, scope: !487)
!1087 = !DILocation(line: 47, column: 12, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1089, file: !362, discriminator: 2)
!1089 = !DILexicalBlockFile(scope: !487, file: !362, discriminator: 1)
!1090 = !DILocation(line: 47, column: 19, scope: !487)
!1091 = !DILocation(line: 48, column: 9, scope: !495)
!1092 = !DILocation(line: 48, column: 23, scope: !495)
!1093 = !DILocation(line: 48, column: 30, scope: !495)
!1094 = !DILocation(line: 48, column: 29, scope: !495)
!1095 = !DILocation(line: 48, column: 28, scope: !495)
!1096 = !DILocation(line: 49, column: 9, scope: !495)
!1097 = !DILocation(line: 49, column: 17, scope: !495)
!1098 = !DILocation(line: 51, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !495, file: !362, line: 51, column: 13)
!1100 = !DILocation(line: 51, column: 15, scope: !1099)
!1101 = !DILocation(line: 51, column: 13, scope: !495)
!1102 = !DILocation(line: 52, column: 13, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !362, line: 51, column: 23)
!1104 = !DILocation(line: 52, column: 49, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1106, file: !362, discriminator: 1)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !362, line: 52, column: 22)
!1107 = distinct !DILexicalBlock(scope: !1103, file: !362, line: 52, column: 16)
!1108 = !DILocation(line: 52, column: 58, scope: !1106)
!1109 = !DILocation(line: 52, column: 57, scope: !1106)
!1110 = !DILocation(line: 52, column: 22, scope: !1106)
!1111 = !DILocation(line: 52, column: 62, scope: !1106)
!1112 = !DILocation(line: 52, column: 22, scope: !1107)
!1113 = !DILocation(line: 52, column: 67, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1106, file: !362, discriminator: 2)
!1115 = !DILocation(line: 52, column: 67, scope: !1106)
!1116 = !DILocation(line: 52, column: 80, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1107, file: !362, discriminator: 3)
!1118 = !DILocation(line: 52, column: 80, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1107, file: !362, discriminator: 4)
!1120 = !DILocation(line: 53, column: 13, scope: !1103)
!1121 = !DILocation(line: 53, column: 20, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1123, file: !362, discriminator: 1)
!1123 = distinct !DILexicalBlock(scope: !1103, file: !362, line: 53, column: 16)
!1124 = !DILocation(line: 53, column: 27, scope: !1123)
!1125 = !DILocation(line: 53, column: 44, scope: !1123)
!1126 = !DILocation(line: 53, column: 52, scope: !1123)
!1127 = !DILocation(line: 53, column: 52, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1123, file: !362, discriminator: 2)
!1129 = !DILocation(line: 54, column: 13, scope: !1103)
!1130 = !DILocation(line: 57, column: 9, scope: !495)
!1131 = !DILocation(line: 57, column: 18, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !362, discriminator: 1)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !362, line: 57, column: 18)
!1134 = distinct !DILexicalBlock(scope: !495, file: !362, line: 57, column: 12)
!1135 = !DILocation(line: 57, column: 25, scope: !1133)
!1136 = !DILocation(line: 57, column: 18, scope: !1134)
!1137 = !DILocation(line: 57, column: 32, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1133, file: !362, discriminator: 2)
!1139 = !DILocation(line: 57, column: 32, scope: !1133)
!1140 = !DILocation(line: 57, column: 45, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1134, file: !362, discriminator: 3)
!1142 = !DILocation(line: 57, column: 45, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1134, file: !362, discriminator: 4)
!1144 = !DILocation(line: 58, column: 28, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !495, file: !362, line: 58, column: 13)
!1146 = !DILocation(line: 58, column: 16, scope: !1145)
!1147 = !DILocation(line: 58, column: 33, scope: !1145)
!1148 = !{!1149, !625, i64 0}
!1149 = !{!"dbcs_index", !625, i64 0, !626, i64 8, !626, i64 9}
!1150 = !DILocation(line: 58, column: 37, scope: !1145)
!1151 = !DILocation(line: 58, column: 51, scope: !1145)
!1152 = !DILocation(line: 58, column: 58, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1145, file: !362, discriminator: 1)
!1154 = !DILocation(line: 58, column: 57, scope: !1145)
!1155 = !DILocation(line: 58, column: 56, scope: !1145)
!1156 = !DILocation(line: 58, column: 54, scope: !1145)
!1157 = !DILocation(line: 58, column: 87, scope: !1145)
!1158 = !DILocation(line: 58, column: 75, scope: !1145)
!1159 = !DILocation(line: 58, column: 92, scope: !1145)
!1160 = !{!1149, !626, i64 8}
!1161 = !DILocation(line: 58, column: 73, scope: !1145)
!1162 = !DILocation(line: 58, column: 70, scope: !1145)
!1163 = !DILocation(line: 58, column: 99, scope: !1145)
!1164 = !DILocation(line: 58, column: 106, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1145, file: !362, discriminator: 2)
!1166 = !DILocation(line: 58, column: 105, scope: !1145)
!1167 = !DILocation(line: 58, column: 104, scope: !1145)
!1168 = !DILocation(line: 58, column: 102, scope: !1145)
!1169 = !DILocation(line: 58, column: 134, scope: !1145)
!1170 = !DILocation(line: 58, column: 122, scope: !1145)
!1171 = !DILocation(line: 58, column: 139, scope: !1145)
!1172 = !{!1149, !626, i64 9}
!1173 = !DILocation(line: 58, column: 120, scope: !1145)
!1174 = !DILocation(line: 58, column: 117, scope: !1145)
!1175 = !DILocation(line: 58, column: 143, scope: !1145)
!1176 = !DILocation(line: 58, column: 186, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1145, file: !362, discriminator: 3)
!1178 = !DILocation(line: 58, column: 185, scope: !1145)
!1179 = !DILocation(line: 58, column: 184, scope: !1145)
!1180 = !DILocation(line: 58, column: 182, scope: !1145)
!1181 = !DILocation(line: 58, column: 214, scope: !1145)
!1182 = !DILocation(line: 58, column: 202, scope: !1145)
!1183 = !DILocation(line: 58, column: 219, scope: !1145)
!1184 = !DILocation(line: 58, column: 200, scope: !1145)
!1185 = !DILocation(line: 58, column: 198, scope: !1145)
!1186 = !DILocation(line: 58, column: 159, scope: !1145)
!1187 = !DILocation(line: 58, column: 173, scope: !1145)
!1188 = !DILocation(line: 58, column: 161, scope: !1145)
!1189 = !DILocation(line: 58, column: 178, scope: !1145)
!1190 = !DILocation(line: 58, column: 157, scope: !1145)
!1191 = !DILocation(line: 58, column: 228, scope: !1145)
!1192 = !DILocation(line: 58, column: 13, scope: !495)
!1193 = !DILocation(line: 59, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1145, file: !362, line: 58, column: 240)
!1195 = !DILocation(line: 59, column: 49, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1197, file: !362, discriminator: 1)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !362, line: 59, column: 22)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !362, line: 59, column: 16)
!1199 = !DILocation(line: 59, column: 58, scope: !1197)
!1200 = !DILocation(line: 59, column: 22, scope: !1197)
!1201 = !DILocation(line: 59, column: 68, scope: !1197)
!1202 = !DILocation(line: 59, column: 22, scope: !1198)
!1203 = !DILocation(line: 59, column: 73, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1197, file: !362, discriminator: 2)
!1205 = !DILocation(line: 59, column: 73, scope: !1197)
!1206 = !DILocation(line: 59, column: 86, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1198, file: !362, discriminator: 3)
!1208 = !DILocation(line: 59, column: 86, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1198, file: !362, discriminator: 4)
!1210 = !DILocation(line: 60, column: 13, scope: !1194)
!1211 = !DILocation(line: 60, column: 20, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1213, file: !362, discriminator: 1)
!1213 = distinct !DILexicalBlock(scope: !1194, file: !362, line: 60, column: 16)
!1214 = !DILocation(line: 60, column: 27, scope: !1213)
!1215 = !DILocation(line: 60, column: 44, scope: !1213)
!1216 = !DILocation(line: 60, column: 52, scope: !1213)
!1217 = !DILocation(line: 60, column: 52, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1213, file: !362, discriminator: 2)
!1219 = !DILocation(line: 61, column: 9, scope: !1194)
!1220 = !DILocation(line: 62, column: 14, scope: !1145)
!1221 = !DILocation(line: 63, column: 5, scope: !487)
!1222 = !DILocation(line: 63, column: 5, scope: !1089)
!1223 = !DILocation(line: 65, column: 5, scope: !487)
!1224 = !DILocation(line: 66, column: 1, scope: !487)
!1225 = !DILocation(line: 73, column: 55, scope: !497)
!1226 = !DILocation(line: 73, column: 74, scope: !497)
!1227 = !DILocation(line: 73, column: 86, scope: !497)
!1228 = !DILocation(line: 73, column: 98, scope: !497)
!1229 = !DILocation(line: 73, column: 116, scope: !497)
!1230 = !DILocation(line: 73, column: 134, scope: !497)
!1231 = !DILocation(line: 73, column: 157, scope: !497)
!1232 = !DILocation(line: 73, column: 176, scope: !497)
!1233 = !DILocation(line: 73, column: 189, scope: !497)
!1234 = !DILocation(line: 75, column: 5, scope: !497)
!1235 = !DILocation(line: 75, column: 13, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1237, file: !362, discriminator: 2)
!1237 = !DILexicalBlockFile(scope: !497, file: !362, discriminator: 1)
!1238 = !DILocation(line: 75, column: 12, scope: !497)
!1239 = !DILocation(line: 75, column: 21, scope: !497)
!1240 = !DILocation(line: 75, column: 19, scope: !497)
!1241 = !DILocation(line: 76, column: 9, scope: !509)
!1242 = !DILocation(line: 76, column: 17, scope: !509)
!1243 = !DILocation(line: 76, column: 35, scope: !509)
!1244 = !DILocation(line: 76, column: 41, scope: !509)
!1245 = !DILocation(line: 76, column: 34, scope: !509)
!1246 = !DILocation(line: 76, column: 95, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 1)
!1248 = !DILocation(line: 76, column: 94, scope: !509)
!1249 = !DILocation(line: 76, column: 86, scope: !509)
!1250 = !DILocation(line: 76, column: 67, scope: !509)
!1251 = !DILocation(line: 76, column: 107, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 2)
!1253 = !DILocation(line: 76, column: 113, scope: !509)
!1254 = !DILocation(line: 76, column: 106, scope: !509)
!1255 = !DILocation(line: 76, column: 167, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 4)
!1257 = !DILocation(line: 76, column: 166, scope: !509)
!1258 = !DILocation(line: 76, column: 158, scope: !509)
!1259 = !DILocation(line: 76, column: 140, scope: !509)
!1260 = !DILocation(line: 76, column: 139, scope: !509)
!1261 = !DILocation(line: 76, column: 205, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 5)
!1263 = !DILocation(line: 76, column: 204, scope: !509)
!1264 = !DILocation(line: 76, column: 196, scope: !509)
!1265 = !DILocation(line: 76, column: 178, scope: !509)
!1266 = !DILocation(line: 76, column: 177, scope: !509)
!1267 = !DILocation(line: 76, column: 34, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !362, discriminator: 7)
!1269 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 6)
!1270 = !DILocation(line: 76, column: 17, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !362, discriminator: 8)
!1272 = !DILexicalBlockFile(scope: !509, file: !362, discriminator: 3)
!1273 = !DILocation(line: 77, column: 9, scope: !509)
!1274 = !DILocation(line: 77, column: 16, scope: !509)
!1275 = !DILocation(line: 79, column: 13, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !509, file: !362, line: 79, column: 13)
!1277 = !DILocation(line: 79, column: 15, scope: !1276)
!1278 = !DILocation(line: 79, column: 13, scope: !509)
!1279 = !DILocation(line: 80, column: 13, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1276, file: !362, line: 79, column: 23)
!1281 = !DILocation(line: 80, column: 18, scope: !1282)
!1282 = !DILexicalBlockFile(scope: !1283, file: !362, discriminator: 1)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !362, line: 80, column: 16)
!1284 = !DILocation(line: 80, column: 27, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1286, file: !362, discriminator: 2)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !362, line: 80, column: 27)
!1287 = distinct !DILexicalBlock(scope: !1283, file: !362, line: 80, column: 21)
!1288 = !DILocation(line: 80, column: 35, scope: !1286)
!1289 = !DILocation(line: 80, column: 27, scope: !1287)
!1290 = !DILocation(line: 80, column: 42, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1286, file: !362, discriminator: 3)
!1292 = !DILocation(line: 80, column: 42, scope: !1286)
!1293 = !DILocation(line: 80, column: 55, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1287, file: !362, discriminator: 4)
!1295 = !DILocation(line: 80, column: 55, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1287, file: !362, discriminator: 5)
!1297 = !DILocation(line: 80, column: 99, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1283, file: !362, discriminator: 6)
!1299 = !DILocation(line: 80, column: 84, scope: !1283)
!1300 = !DILocation(line: 80, column: 70, scope: !1283)
!1301 = !DILocation(line: 80, column: 69, scope: !1283)
!1302 = !DILocation(line: 80, column: 68, scope: !1283)
!1303 = !DILocation(line: 80, column: 81, scope: !1283)
!1304 = !DILocation(line: 80, column: 103, scope: !1283)
!1305 = !DILocation(line: 80, column: 103, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1283, file: !362, discriminator: 7)
!1307 = !DILocation(line: 81, column: 13, scope: !1280)
!1308 = !DILocation(line: 81, column: 18, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1310, file: !362, discriminator: 1)
!1310 = distinct !DILexicalBlock(scope: !1280, file: !362, line: 81, column: 16)
!1311 = !DILocation(line: 81, column: 25, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !362, discriminator: 2)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !362, line: 81, column: 21)
!1314 = !DILocation(line: 81, column: 32, scope: !1313)
!1315 = !DILocation(line: 81, column: 40, scope: !1313)
!1316 = !DILocation(line: 81, column: 40, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1313, file: !362, discriminator: 3)
!1318 = !DILocation(line: 81, column: 53, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1310, file: !362, discriminator: 4)
!1320 = !DILocation(line: 81, column: 60, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !362, discriminator: 5)
!1322 = distinct !DILexicalBlock(scope: !1310, file: !362, line: 81, column: 56)
!1323 = !DILocation(line: 81, column: 68, scope: !1322)
!1324 = !DILocation(line: 81, column: 86, scope: !1322)
!1325 = !DILocation(line: 81, column: 94, scope: !1322)
!1326 = !DILocation(line: 81, column: 94, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1322, file: !362, discriminator: 6)
!1328 = !DILocation(line: 81, column: 107, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1310, file: !362, discriminator: 7)
!1330 = !DILocation(line: 81, column: 107, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1310, file: !362, discriminator: 8)
!1332 = !DILocation(line: 82, column: 13, scope: !1280)
!1333 = !DILocation(line: 85, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !509, file: !362, line: 85, column: 13)
!1335 = !DILocation(line: 85, column: 15, scope: !1334)
!1336 = !DILocation(line: 85, column: 13, scope: !509)
!1337 = !DILocation(line: 86, column: 13, scope: !1334)
!1338 = !DILocation(line: 88, column: 9, scope: !509)
!1339 = !DILocation(line: 88, column: 18, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1341, file: !362, discriminator: 1)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !362, line: 88, column: 18)
!1342 = distinct !DILexicalBlock(scope: !509, file: !362, line: 88, column: 12)
!1343 = !DILocation(line: 88, column: 26, scope: !1341)
!1344 = !DILocation(line: 88, column: 18, scope: !1342)
!1345 = !DILocation(line: 88, column: 33, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1341, file: !362, discriminator: 2)
!1347 = !DILocation(line: 88, column: 33, scope: !1341)
!1348 = !DILocation(line: 88, column: 46, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1342, file: !362, discriminator: 3)
!1350 = !DILocation(line: 88, column: 46, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1342, file: !362, discriminator: 4)
!1352 = !DILocation(line: 89, column: 33, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !509, file: !362, line: 89, column: 13)
!1354 = !DILocation(line: 89, column: 36, scope: !1353)
!1355 = !DILocation(line: 89, column: 16, scope: !1353)
!1356 = !DILocation(line: 89, column: 44, scope: !1353)
!1357 = !DILocation(line: 89, column: 48, scope: !1353)
!1358 = !DILocation(line: 89, column: 62, scope: !1353)
!1359 = !DILocation(line: 89, column: 67, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1353, file: !362, discriminator: 1)
!1361 = !DILocation(line: 89, column: 70, scope: !1353)
!1362 = !DILocation(line: 89, column: 100, scope: !1353)
!1363 = !DILocation(line: 89, column: 103, scope: !1353)
!1364 = !DILocation(line: 89, column: 83, scope: !1353)
!1365 = !DILocation(line: 89, column: 111, scope: !1353)
!1366 = !DILocation(line: 89, column: 81, scope: !1353)
!1367 = !DILocation(line: 89, column: 78, scope: !1353)
!1368 = !DILocation(line: 89, column: 118, scope: !1353)
!1369 = !DILocation(line: 89, column: 123, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1353, file: !362, discriminator: 2)
!1371 = !DILocation(line: 89, column: 126, scope: !1353)
!1372 = !DILocation(line: 89, column: 155, scope: !1353)
!1373 = !DILocation(line: 89, column: 158, scope: !1353)
!1374 = !DILocation(line: 89, column: 138, scope: !1353)
!1375 = !DILocation(line: 89, column: 166, scope: !1353)
!1376 = !DILocation(line: 89, column: 136, scope: !1353)
!1377 = !DILocation(line: 89, column: 133, scope: !1353)
!1378 = !DILocation(line: 89, column: 170, scope: !1353)
!1379 = !DILocation(line: 89, column: 219, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1353, file: !362, discriminator: 3)
!1381 = !DILocation(line: 89, column: 222, scope: !1353)
!1382 = !DILocation(line: 89, column: 251, scope: !1353)
!1383 = !DILocation(line: 89, column: 254, scope: !1353)
!1384 = !DILocation(line: 89, column: 234, scope: !1353)
!1385 = !DILocation(line: 89, column: 262, scope: !1353)
!1386 = !DILocation(line: 89, column: 232, scope: !1353)
!1387 = !DILocation(line: 89, column: 230, scope: !1353)
!1388 = !DILocation(line: 89, column: 183, scope: !1353)
!1389 = !DILocation(line: 89, column: 202, scope: !1353)
!1390 = !DILocation(line: 89, column: 205, scope: !1353)
!1391 = !DILocation(line: 89, column: 185, scope: !1353)
!1392 = !DILocation(line: 89, column: 213, scope: !1353)
!1393 = !DILocation(line: 89, column: 181, scope: !1353)
!1394 = !DILocation(line: 89, column: 173, scope: !1353)
!1395 = !DILocation(line: 89, column: 271, scope: !1353)
!1396 = !DILocation(line: 89, column: 13, scope: !509)
!1397 = !DILocation(line: 89, column: 13, scope: !1256)
!1398 = !DILocation(line: 91, column: 34, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1353, file: !362, line: 91, column: 18)
!1400 = !DILocation(line: 91, column: 37, scope: !1399)
!1401 = !DILocation(line: 91, column: 21, scope: !1399)
!1402 = !DILocation(line: 91, column: 45, scope: !1399)
!1403 = !DILocation(line: 91, column: 49, scope: !1399)
!1404 = !DILocation(line: 91, column: 63, scope: !1399)
!1405 = !DILocation(line: 91, column: 68, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1399, file: !362, discriminator: 1)
!1407 = !DILocation(line: 91, column: 71, scope: !1399)
!1408 = !DILocation(line: 91, column: 97, scope: !1399)
!1409 = !DILocation(line: 91, column: 100, scope: !1399)
!1410 = !DILocation(line: 91, column: 84, scope: !1399)
!1411 = !DILocation(line: 91, column: 108, scope: !1399)
!1412 = !DILocation(line: 91, column: 82, scope: !1399)
!1413 = !DILocation(line: 91, column: 79, scope: !1399)
!1414 = !DILocation(line: 91, column: 115, scope: !1399)
!1415 = !DILocation(line: 91, column: 120, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1399, file: !362, discriminator: 2)
!1417 = !DILocation(line: 91, column: 123, scope: !1399)
!1418 = !DILocation(line: 91, column: 148, scope: !1399)
!1419 = !DILocation(line: 91, column: 151, scope: !1399)
!1420 = !DILocation(line: 91, column: 135, scope: !1399)
!1421 = !DILocation(line: 91, column: 159, scope: !1399)
!1422 = !DILocation(line: 91, column: 133, scope: !1399)
!1423 = !DILocation(line: 91, column: 130, scope: !1399)
!1424 = !DILocation(line: 91, column: 163, scope: !1399)
!1425 = !DILocation(line: 91, column: 208, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1399, file: !362, discriminator: 3)
!1427 = !DILocation(line: 91, column: 211, scope: !1399)
!1428 = !DILocation(line: 91, column: 236, scope: !1399)
!1429 = !DILocation(line: 91, column: 239, scope: !1399)
!1430 = !DILocation(line: 91, column: 223, scope: !1399)
!1431 = !DILocation(line: 91, column: 247, scope: !1399)
!1432 = !DILocation(line: 91, column: 221, scope: !1399)
!1433 = !DILocation(line: 91, column: 219, scope: !1399)
!1434 = !DILocation(line: 91, column: 176, scope: !1399)
!1435 = !DILocation(line: 91, column: 191, scope: !1399)
!1436 = !DILocation(line: 91, column: 194, scope: !1399)
!1437 = !DILocation(line: 91, column: 178, scope: !1399)
!1438 = !DILocation(line: 91, column: 202, scope: !1399)
!1439 = !DILocation(line: 91, column: 174, scope: !1399)
!1440 = !DILocation(line: 91, column: 166, scope: !1399)
!1441 = !DILocation(line: 91, column: 256, scope: !1399)
!1442 = !DILocation(line: 91, column: 18, scope: !1353)
!1443 = !DILocation(line: 91, column: 18, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1353, file: !362, discriminator: 4)
!1445 = !DILocation(line: 94, column: 13, scope: !1399)
!1446 = !DILocation(line: 96, column: 9, scope: !509)
!1447 = !DILocation(line: 96, column: 32, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1449, file: !362, discriminator: 1)
!1449 = distinct !DILexicalBlock(scope: !509, file: !362, line: 96, column: 12)
!1450 = !DILocation(line: 96, column: 37, scope: !1449)
!1451 = !DILocation(line: 96, column: 31, scope: !1449)
!1452 = !DILocation(line: 96, column: 17, scope: !1449)
!1453 = !DILocation(line: 96, column: 16, scope: !1449)
!1454 = !DILocation(line: 96, column: 15, scope: !1449)
!1455 = !DILocation(line: 96, column: 29, scope: !1449)
!1456 = !DILocation(line: 96, column: 44, scope: !1449)
!1457 = !DILocation(line: 96, column: 44, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1449, file: !362, discriminator: 2)
!1459 = !DILocation(line: 97, column: 9, scope: !509)
!1460 = !DILocation(line: 97, column: 32, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !362, discriminator: 1)
!1462 = distinct !DILexicalBlock(scope: !509, file: !362, line: 97, column: 12)
!1463 = !DILocation(line: 97, column: 37, scope: !1462)
!1464 = !DILocation(line: 97, column: 31, scope: !1462)
!1465 = !DILocation(line: 97, column: 17, scope: !1462)
!1466 = !DILocation(line: 97, column: 16, scope: !1462)
!1467 = !DILocation(line: 97, column: 15, scope: !1462)
!1468 = !DILocation(line: 97, column: 29, scope: !1462)
!1469 = !DILocation(line: 97, column: 46, scope: !1462)
!1470 = !DILocation(line: 97, column: 46, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1462, file: !362, discriminator: 2)
!1472 = !DILocation(line: 98, column: 9, scope: !509)
!1473 = !DILocation(line: 98, column: 14, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !362, discriminator: 1)
!1475 = distinct !DILexicalBlock(scope: !509, file: !362, line: 98, column: 12)
!1476 = !DILocation(line: 98, column: 21, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !362, discriminator: 2)
!1478 = distinct !DILexicalBlock(scope: !1475, file: !362, line: 98, column: 17)
!1479 = !DILocation(line: 98, column: 28, scope: !1478)
!1480 = !DILocation(line: 98, column: 36, scope: !1478)
!1481 = !DILocation(line: 98, column: 36, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1478, file: !362, discriminator: 3)
!1483 = !DILocation(line: 98, column: 49, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1475, file: !362, discriminator: 4)
!1485 = !DILocation(line: 98, column: 56, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1487, file: !362, discriminator: 5)
!1487 = distinct !DILexicalBlock(scope: !1475, file: !362, line: 98, column: 52)
!1488 = !DILocation(line: 98, column: 64, scope: !1487)
!1489 = !DILocation(line: 98, column: 82, scope: !1487)
!1490 = !DILocation(line: 98, column: 90, scope: !1487)
!1491 = !DILocation(line: 98, column: 90, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1487, file: !362, discriminator: 6)
!1493 = !DILocation(line: 98, column: 103, scope: !1494)
!1494 = !DILexicalBlockFile(scope: !1475, file: !362, discriminator: 7)
!1495 = !DILocation(line: 98, column: 103, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1475, file: !362, discriminator: 8)
!1497 = !DILocation(line: 99, column: 5, scope: !497)
!1498 = !DILocation(line: 99, column: 5, scope: !1237)
!1499 = !DILocation(line: 101, column: 5, scope: !497)
!1500 = !DILocation(line: 102, column: 1, scope: !497)
!1501 = !DILocation(line: 104, column: 55, scope: !511)
!1502 = !DILocation(line: 104, column: 74, scope: !511)
!1503 = !DILocation(line: 104, column: 104, scope: !511)
!1504 = !DILocation(line: 104, column: 122, scope: !511)
!1505 = !DILocation(line: 104, column: 148, scope: !511)
!1506 = !DILocation(line: 106, column: 5, scope: !511)
!1507 = !DILocation(line: 106, column: 12, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !362, discriminator: 2)
!1509 = !DILexicalBlockFile(scope: !511, file: !362, discriminator: 1)
!1510 = !DILocation(line: 106, column: 19, scope: !511)
!1511 = !DILocation(line: 107, column: 9, scope: !519)
!1512 = !DILocation(line: 107, column: 23, scope: !519)
!1513 = !DILocation(line: 107, column: 30, scope: !519)
!1514 = !DILocation(line: 107, column: 29, scope: !519)
!1515 = !DILocation(line: 107, column: 28, scope: !519)
!1516 = !DILocation(line: 108, column: 9, scope: !519)
!1517 = !DILocation(line: 108, column: 17, scope: !519)
!1518 = !DILocation(line: 110, column: 13, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !519, file: !362, line: 110, column: 13)
!1520 = !DILocation(line: 110, column: 15, scope: !1519)
!1521 = !DILocation(line: 110, column: 13, scope: !519)
!1522 = !DILocation(line: 111, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !362, line: 110, column: 23)
!1524 = !DILocation(line: 111, column: 49, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !362, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !362, line: 111, column: 22)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !362, line: 111, column: 16)
!1528 = !DILocation(line: 111, column: 58, scope: !1526)
!1529 = !DILocation(line: 111, column: 57, scope: !1526)
!1530 = !DILocation(line: 111, column: 22, scope: !1526)
!1531 = !DILocation(line: 111, column: 62, scope: !1526)
!1532 = !DILocation(line: 111, column: 22, scope: !1527)
!1533 = !DILocation(line: 111, column: 67, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1526, file: !362, discriminator: 2)
!1535 = !DILocation(line: 111, column: 67, scope: !1526)
!1536 = !DILocation(line: 111, column: 80, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1527, file: !362, discriminator: 3)
!1538 = !DILocation(line: 111, column: 80, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1527, file: !362, discriminator: 4)
!1540 = !DILocation(line: 112, column: 13, scope: !1523)
!1541 = !DILocation(line: 112, column: 20, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1543, file: !362, discriminator: 1)
!1543 = distinct !DILexicalBlock(scope: !1523, file: !362, line: 112, column: 16)
!1544 = !DILocation(line: 112, column: 27, scope: !1543)
!1545 = !DILocation(line: 112, column: 44, scope: !1543)
!1546 = !DILocation(line: 112, column: 52, scope: !1543)
!1547 = !DILocation(line: 112, column: 52, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1543, file: !362, discriminator: 2)
!1549 = !DILocation(line: 113, column: 13, scope: !1523)
!1550 = !DILocation(line: 116, column: 9, scope: !519)
!1551 = !DILocation(line: 116, column: 18, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !362, discriminator: 1)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !362, line: 116, column: 18)
!1554 = distinct !DILexicalBlock(scope: !519, file: !362, line: 116, column: 12)
!1555 = !DILocation(line: 116, column: 25, scope: !1553)
!1556 = !DILocation(line: 116, column: 18, scope: !1554)
!1557 = !DILocation(line: 116, column: 32, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1553, file: !362, discriminator: 2)
!1559 = !DILocation(line: 116, column: 32, scope: !1553)
!1560 = !DILocation(line: 116, column: 45, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1554, file: !362, discriminator: 3)
!1562 = !DILocation(line: 116, column: 45, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1554, file: !362, discriminator: 4)
!1564 = !DILocation(line: 118, column: 32, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !519, file: !362, line: 118, column: 13)
!1566 = !DILocation(line: 118, column: 16, scope: !1565)
!1567 = !DILocation(line: 118, column: 37, scope: !1565)
!1568 = !DILocation(line: 118, column: 41, scope: !1565)
!1569 = !DILocation(line: 118, column: 55, scope: !1565)
!1570 = !DILocation(line: 118, column: 62, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1565, file: !362, discriminator: 1)
!1572 = !DILocation(line: 118, column: 61, scope: !1565)
!1573 = !DILocation(line: 118, column: 60, scope: !1565)
!1574 = !DILocation(line: 118, column: 58, scope: !1565)
!1575 = !DILocation(line: 118, column: 95, scope: !1565)
!1576 = !DILocation(line: 118, column: 79, scope: !1565)
!1577 = !DILocation(line: 118, column: 100, scope: !1565)
!1578 = !DILocation(line: 118, column: 77, scope: !1565)
!1579 = !DILocation(line: 118, column: 74, scope: !1565)
!1580 = !DILocation(line: 118, column: 107, scope: !1565)
!1581 = !DILocation(line: 118, column: 114, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1565, file: !362, discriminator: 2)
!1583 = !DILocation(line: 118, column: 113, scope: !1565)
!1584 = !DILocation(line: 118, column: 112, scope: !1565)
!1585 = !DILocation(line: 118, column: 110, scope: !1565)
!1586 = !DILocation(line: 118, column: 146, scope: !1565)
!1587 = !DILocation(line: 118, column: 130, scope: !1565)
!1588 = !DILocation(line: 118, column: 151, scope: !1565)
!1589 = !DILocation(line: 118, column: 128, scope: !1565)
!1590 = !DILocation(line: 118, column: 125, scope: !1565)
!1591 = !DILocation(line: 118, column: 155, scope: !1565)
!1592 = !DILocation(line: 118, column: 202, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1565, file: !362, discriminator: 3)
!1594 = !DILocation(line: 118, column: 201, scope: !1565)
!1595 = !DILocation(line: 118, column: 200, scope: !1565)
!1596 = !DILocation(line: 118, column: 198, scope: !1565)
!1597 = !DILocation(line: 118, column: 234, scope: !1565)
!1598 = !DILocation(line: 118, column: 218, scope: !1565)
!1599 = !DILocation(line: 118, column: 239, scope: !1565)
!1600 = !DILocation(line: 118, column: 216, scope: !1565)
!1601 = !DILocation(line: 118, column: 214, scope: !1565)
!1602 = !DILocation(line: 118, column: 171, scope: !1565)
!1603 = !DILocation(line: 118, column: 189, scope: !1565)
!1604 = !DILocation(line: 118, column: 173, scope: !1565)
!1605 = !DILocation(line: 118, column: 194, scope: !1565)
!1606 = !DILocation(line: 118, column: 169, scope: !1565)
!1607 = !DILocation(line: 118, column: 248, scope: !1565)
!1608 = !DILocation(line: 118, column: 13, scope: !519)
!1609 = !DILocation(line: 119, column: 13, scope: !1565)
!1610 = !DILocation(line: 119, column: 49, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !362, discriminator: 1)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !362, line: 119, column: 22)
!1613 = distinct !DILexicalBlock(scope: !1565, file: !362, line: 119, column: 16)
!1614 = !DILocation(line: 119, column: 58, scope: !1612)
!1615 = !DILocation(line: 119, column: 22, scope: !1612)
!1616 = !DILocation(line: 119, column: 68, scope: !1612)
!1617 = !DILocation(line: 119, column: 22, scope: !1613)
!1618 = !DILocation(line: 119, column: 73, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1612, file: !362, discriminator: 2)
!1620 = !DILocation(line: 119, column: 73, scope: !1612)
!1621 = !DILocation(line: 119, column: 86, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1613, file: !362, discriminator: 3)
!1623 = !DILocation(line: 119, column: 86, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1613, file: !362, discriminator: 4)
!1625 = !DILocation(line: 119, column: 86, scope: !1626)
!1626 = !DILexicalBlockFile(scope: !1613, file: !362, discriminator: 5)
!1627 = !DILocation(line: 120, column: 33, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1565, file: !362, line: 120, column: 18)
!1629 = !DILocation(line: 120, column: 21, scope: !1628)
!1630 = !DILocation(line: 120, column: 38, scope: !1628)
!1631 = !DILocation(line: 120, column: 42, scope: !1628)
!1632 = !DILocation(line: 120, column: 56, scope: !1628)
!1633 = !DILocation(line: 120, column: 63, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1628, file: !362, discriminator: 1)
!1635 = !DILocation(line: 120, column: 62, scope: !1628)
!1636 = !DILocation(line: 120, column: 61, scope: !1628)
!1637 = !DILocation(line: 120, column: 59, scope: !1628)
!1638 = !DILocation(line: 120, column: 92, scope: !1628)
!1639 = !DILocation(line: 120, column: 80, scope: !1628)
!1640 = !DILocation(line: 120, column: 97, scope: !1628)
!1641 = !DILocation(line: 120, column: 78, scope: !1628)
!1642 = !DILocation(line: 120, column: 75, scope: !1628)
!1643 = !DILocation(line: 120, column: 104, scope: !1628)
!1644 = !DILocation(line: 120, column: 111, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1628, file: !362, discriminator: 2)
!1646 = !DILocation(line: 120, column: 110, scope: !1628)
!1647 = !DILocation(line: 120, column: 109, scope: !1628)
!1648 = !DILocation(line: 120, column: 107, scope: !1628)
!1649 = !DILocation(line: 120, column: 139, scope: !1628)
!1650 = !DILocation(line: 120, column: 127, scope: !1628)
!1651 = !DILocation(line: 120, column: 144, scope: !1628)
!1652 = !DILocation(line: 120, column: 125, scope: !1628)
!1653 = !DILocation(line: 120, column: 122, scope: !1628)
!1654 = !DILocation(line: 120, column: 148, scope: !1628)
!1655 = !DILocation(line: 120, column: 191, scope: !1656)
!1656 = !DILexicalBlockFile(scope: !1628, file: !362, discriminator: 3)
!1657 = !DILocation(line: 120, column: 190, scope: !1628)
!1658 = !DILocation(line: 120, column: 189, scope: !1628)
!1659 = !DILocation(line: 120, column: 187, scope: !1628)
!1660 = !DILocation(line: 120, column: 219, scope: !1628)
!1661 = !DILocation(line: 120, column: 207, scope: !1628)
!1662 = !DILocation(line: 120, column: 224, scope: !1628)
!1663 = !DILocation(line: 120, column: 205, scope: !1628)
!1664 = !DILocation(line: 120, column: 203, scope: !1628)
!1665 = !DILocation(line: 120, column: 164, scope: !1628)
!1666 = !DILocation(line: 120, column: 178, scope: !1628)
!1667 = !DILocation(line: 120, column: 166, scope: !1628)
!1668 = !DILocation(line: 120, column: 183, scope: !1628)
!1669 = !DILocation(line: 120, column: 162, scope: !1628)
!1670 = !DILocation(line: 120, column: 233, scope: !1628)
!1671 = !DILocation(line: 120, column: 18, scope: !1565)
!1672 = !DILocation(line: 121, column: 13, scope: !1628)
!1673 = !DILocation(line: 121, column: 49, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !362, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !362, line: 121, column: 22)
!1676 = distinct !DILexicalBlock(scope: !1628, file: !362, line: 121, column: 16)
!1677 = !DILocation(line: 121, column: 58, scope: !1675)
!1678 = !DILocation(line: 121, column: 22, scope: !1675)
!1679 = !DILocation(line: 121, column: 68, scope: !1675)
!1680 = !DILocation(line: 121, column: 22, scope: !1676)
!1681 = !DILocation(line: 121, column: 73, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1675, file: !362, discriminator: 2)
!1683 = !DILocation(line: 121, column: 73, scope: !1675)
!1684 = !DILocation(line: 121, column: 86, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1676, file: !362, discriminator: 3)
!1686 = !DILocation(line: 121, column: 86, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1676, file: !362, discriminator: 4)
!1688 = !DILocation(line: 121, column: 86, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1676, file: !362, discriminator: 5)
!1690 = !DILocation(line: 123, column: 13, scope: !1628)
!1691 = !DILocation(line: 125, column: 9, scope: !519)
!1692 = !DILocation(line: 125, column: 16, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !362, discriminator: 1)
!1694 = distinct !DILexicalBlock(scope: !519, file: !362, line: 125, column: 12)
!1695 = !DILocation(line: 125, column: 23, scope: !1694)
!1696 = !DILocation(line: 125, column: 40, scope: !1694)
!1697 = !DILocation(line: 125, column: 48, scope: !1694)
!1698 = !DILocation(line: 125, column: 48, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1694, file: !362, discriminator: 2)
!1700 = !DILocation(line: 126, column: 5, scope: !511)
!1701 = !DILocation(line: 126, column: 5, scope: !1509)
!1702 = !DILocation(line: 128, column: 5, scope: !511)
!1703 = !DILocation(line: 129, column: 1, scope: !511)
