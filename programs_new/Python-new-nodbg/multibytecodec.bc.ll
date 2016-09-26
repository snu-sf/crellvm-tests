; ModuleID = './multibytecodec.bc'
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.MultibyteIncrementalEncoderObject = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, %struct._object* }
%struct.MultibyteCodec = type { i8*, i8*, i32 (i8*)*, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)*, i32 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)*, i32 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)* }
%struct._PyUnicodeWriter = type { %struct._object*, i8*, i32, i32, i64, i64, i64, i32, i8, i8 }
%union.MultibyteCodec_State = type { i8* }
%struct.MultibyteCodecObject = type { %struct._object, %struct.MultibyteCodec* }
%struct.MultibyteStatefulEncoderContext = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, %struct._object* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.MultibyteEncodeBuffer = type { %struct._object*, i64, i64, i8*, i8*, %struct._object*, %struct._object* }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.MultibyteStatefulCodecContext = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object* }
%struct.MultibyteIncrementalDecoderObject = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, [8 x i8], i64 }
%struct.MultibyteDecodeBuffer = type { i8*, i8*, i8*, %struct._object*, %struct._PyUnicodeWriter }
%struct.MultibyteStatefulDecoderContext = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, [8 x i8], i64 }
%struct.MultibyteStreamReaderObject = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, [8 x i8], i64, %struct._object* }
%struct.MultibyteStreamWriterObject = type { %struct._object, %struct.MultibyteCodec*, %union.MultibyteCodec_State, %struct._object*, %struct._object*, %struct._object* }

@MultibyteIncrementalEncoder_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.MultibyteIncrementalEncoderObject*)* @mbiencoder_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.MultibyteIncrementalEncoderObject*, i32 (%struct._object*, i8*)*, i8*)* @mbiencoder_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @mbiencoder_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @codecctx_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @mbiencoder_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mbiencoder_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@MultibyteIncrementalDecoder_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.MultibyteIncrementalDecoderObject*)* @mbidecoder_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.MultibyteIncrementalDecoderObject*, i32 (%struct._object*, i8*)*, i8*)* @mbidecoder_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @mbidecoder_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @codecctx_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @mbidecoder_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mbidecoder_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@MultibyteStreamReader_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.MultibyteStreamReaderObject*)* @mbstreamreader_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.MultibyteStreamReaderObject*, i32 (%struct._object*, i8*)*, i8*)* @mbstreamreader_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([5 x %struct.PyMethodDef], [5 x %struct.PyMethodDef]* @mbstreamreader_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @mbstreamreader_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @codecctx_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @mbstreamreader_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mbstreamreader_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@MultibyteStreamWriter_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.MultibyteStreamWriterObject*)* @mbstreamwriter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.MultibyteStreamWriterObject*, i32 (%struct._object*, i8*)*, i8*)* @mbstreamwriter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @mbstreamwriter_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @mbstreamwriter_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @codecctx_getsets, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @mbstreamwriter_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @mbstreamwriter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyInit__multibytecodec.typelist = private unnamed_addr constant [5 x %struct._typeobject*] [%struct._typeobject* @MultibyteIncrementalEncoder_Type, %struct._typeobject* @MultibyteIncrementalDecoder_Type, %struct._typeobject* @MultibyteStreamReader_Type, %struct._typeobject* @MultibyteStreamWriter_Type, %struct._typeobject* null], align 16
@MultibyteCodec_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0), i64 24, i64 0, void (%struct._object*)* bitcast (void (%struct.MultibyteCodecObject*)* @multibytecodec_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @multibytecodec_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_multibytecodecmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @__methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [44 x i8] c"can't initialize the _multibytecodec module\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"MultibyteIncrementalEncoder\00", align 1
@mbiencoder_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteIncrementalEncoderObject*, %struct._object*, %struct._object*)* @mbiencoder_encode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteIncrementalEncoderObject*)* @mbiencoder_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@codecctx_getsets = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.MultibyteStatefulCodecContext*)* @codecctx_errors_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.MultibyteStatefulCodecContext*, %struct._object*, i8*)* @codecctx_errors_set to i32 (%struct._object*, %struct._object*, i8*)*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"O|i:encode\00", align 1
@incrementalkwarglist = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* null], align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"couldn't convert the object to str.\00", align 1
@PyExc_UnicodeError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"pending buffer overflow\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"illegal multibyte sequence\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"incomplete multibyte sequence\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"internal codec error\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"unknown runtime error\00", align 1
@PyExc_UnicodeEncodeError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [6 x i8] c"sOnns\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"encoding error handler must return (str, int) tuple\00", align 1
@PyExc_IndexError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"position %zd from error handler out of bounds\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"how to treat errors\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"errors must be a string\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"|s:IncrementalEncoder\00", align 1
@incnewkwarglist = internal global [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"codec is unexpected type\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"MultibyteIncrementalDecoder\00", align 1
@mbidecoder_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteIncrementalDecoderObject*, %struct._object*, %struct._object*)* @mbidecoder_decode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteIncrementalDecoderObject*)* @mbidecoder_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.26 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"y*|i:decode\00", align 1
@.str.28 = private unnamed_addr constant [52 x i8] c"decoding error handler must return (str, int) tuple\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"|s:IncrementalDecoder\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"MultibyteStreamReader\00", align 1
@mbstreamreader_methods = internal global [5 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamReaderObject*, %struct._object*)* @mbstreamreader_read to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamReaderObject*, %struct._object*)* @mbstreamreader_readline to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamReaderObject*, %struct._object*)* @mbstreamreader_readlines to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamReaderObject*)* @mbstreamreader_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@mbstreamreader_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 6, i64 56, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"readline\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"readlines\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"arg 1 must be an integer\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"stream function returned a non-bytes object (%.100s)\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"O|s:StreamReader\00", align 1
@streamkwarglist = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.39 = private unnamed_addr constant [22 x i8] c"MultibyteStreamWriter\00", align 1
@mbstreamwriter_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamWriterObject*, %struct._object*)* @mbstreamwriter_write to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamWriterObject*, %struct._object*)* @mbstreamwriter_writelines to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteStreamWriterObject*)* @mbstreamwriter_reset to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@mbstreamwriter_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i32 6, i64 48, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"writelines\00", align 1
@PyId_write = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), %struct._object* null }, align 8
@.str.42 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"arg must be a sequence object\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"O|s:StreamWriter\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"MultibyteCodec\00", align 1
@multibytecodec_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteCodecObject*, %struct._object*, %struct._object*)* @MultibyteCodec_Encode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([415 x i8], [415 x i8]* @MultibyteCodec_Encode__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.MultibyteCodecObject*, %struct._object*, %struct._object*)* @MultibyteCodec_Decode to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([414 x i8], [414 x i8]* @MultibyteCodec_Decode__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@MultibyteCodec_Encode__doc__ = internal global [415 x i8] c"I.encode(unicode[, errors]) -> (string, length consumed)\0A\0AReturn an encoded string version of `unicode'. errors may be given to\0Aset a different error handling scheme. Default is 'strict' meaning that\0Aencoding errors raise a UnicodeEncodeError. Other possible values are\0A'ignore', 'replace' and 'xmlcharrefreplace' as well as any other name\0Aregistered with codecs.register_error that can handle UnicodeEncodeErrors.\00", align 16
@MultibyteCodec_Decode__doc__ = internal global [414 x i8] c"I.decode(string[, errors]) -> (unicodeobject, length consumed)\0A\0ADecodes `string' using I, an MultibyteCodec instance. errors may be given\0Ato set a different error handling scheme. Default is 'strict' meaning\0Athat encoding errors raise a UnicodeDecodeError. Other possible values\0Aare 'ignore' and 'replace' as well as any other name registered with\0Acodecs.register_error that is able to handle UnicodeDecodeErrors.\00", align 16
@.str.46 = private unnamed_addr constant [11 x i8] c"O|z:encode\00", align 1
@codeckwarglist = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i8* null], align 16
@.str.47 = private unnamed_addr constant [40 x i8] c"couldn't convert the object to unicode.\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"y*|z:decode\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"_multibytecodec\00", align 1
@__methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @__create_codec, i32 8, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.50 = private unnamed_addr constant [15 x i8] c"__create_codec\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"multibytecodec.__map_*\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.52 = private unnamed_addr constant [22 x i8] c"argument type invalid\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__multibytecodec() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %typelist = alloca [5 x %struct._typeobject*], align 16
  %0 = bitcast [5 x %struct._typeobject*]* %typelist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([5 x %struct._typeobject*]* @PyInit__multibytecodec.typelist to i8*), i64 40, i32 16, i1 false)
  %call = call i32 @PyType_Ready(%struct._typeobject* @MultibyteCodec_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_multibytecodecmodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [5 x %struct._typeobject*], [5 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom
  %3 = load %struct._typeobject*, %struct._typeobject** %arrayidx, align 8
  %cmp5 = icmp ne %struct._typeobject* %3, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr [5 x %struct._typeobject*], [5 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom6
  %5 = load %struct._typeobject*, %struct._typeobject** %arrayidx7, align 8
  %call8 = call i32 @PyType_Ready(%struct._typeobject* %5)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %6 to i64
  %arrayidx13 = getelementptr [5 x %struct._typeobject*], [5 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom12
  %7 = load %struct._typeobject*, %struct._typeobject** %arrayidx13, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %m, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr [5 x %struct._typeobject*], [5 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom14
  %12 = load %struct._typeobject*, %struct._typeobject** %arrayidx15, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %tp_name, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr [5 x %struct._typeobject*], [5 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom16
  %15 = load %struct._typeobject*, %struct._typeobject** %arrayidx17, align 8
  %16 = bitcast %struct._typeobject* %15 to %struct._object*
  %call18 = call i32 @PyModule_AddObject(%struct._object* %10, i8* %13, %struct._object* %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc19 = add i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call20 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call20, null
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.end
  call void @Py_FatalError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)) #5
  unreachable

if.end.22:                                        ; preds = %for.end
  %18 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.10, %if.then.3, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @mbiencoder_dealloc(%struct.MultibyteIncrementalEncoderObject* %self) #0 {
entry:
  %self.addr = alloca %struct.MultibyteIncrementalEncoderObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteIncrementalEncoderObject* %self, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %0 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteIncrementalEncoderObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* %5, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %errors3, align 8
  %cmp4 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %7
  br i1 %cmp4, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %8 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors6 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %errors6, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.5
  br label %if.end

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %16 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %17 = bitcast %struct.MultibyteIncrementalEncoderObject* %16 to %struct._object*
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %20 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %21 = bitcast %struct.MultibyteIncrementalEncoderObject* %20 to i8*
  call void %19(i8* %21)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @mbiencoder_traverse(%struct.MultibyteIncrementalEncoderObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteIncrementalEncoderObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.MultibyteIncrementalEncoderObject* %self, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ult %struct._object* %1, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %3
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors3, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %do.body
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %7 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %errors5 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %errors5, align 8
  %9 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %6(%struct._object* %8, i8* %9)
  store i32 %call, i32* %vret, align 4
  %10 = load i32, i32* %vret, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %11 = load i32, i32* %vret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @mbiencoder_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbiencoder_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.MultibyteIncrementalEncoderObject*, align 8
  %codec = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %codec, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @incnewkwarglist, i32 0, i32 0), i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.MultibyteIncrementalEncoderObject*
  store %struct.MultibyteIncrementalEncoderObject* %5, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %6 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %cmp = icmp eq %struct.MultibyteIncrementalEncoderObject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %call4 = call %struct._object* @PyObject_GetAttrString(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %codec, align 8
  %9 = load %struct._object*, %struct._object** %codec, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %errorexit

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %codec, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %11, @MultibyteCodec_Type
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %errorexit

if.end.10:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %codec, align 8
  %14 = bitcast %struct._object* %13 to %struct.MultibyteCodecObject*
  %codec11 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %14, i32 0, i32 1
  %15 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec11, align 8
  %16 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %codec12 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %16, i32 0, i32 1
  store %struct.MultibyteCodec* %15, %struct.MultibyteCodec** %codec12, align 8
  %17 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %pending = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %17, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending, align 8
  %18 = load i8*, i8** %errors, align 8
  %call13 = call %struct._object* @internal_error_callback(i8* %18)
  %19 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %errors14 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %19, i32 0, i32 3
  store %struct._object* %call13, %struct._object** %errors14, align 8
  %20 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %errors15 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %errors15, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  br label %errorexit

if.end.18:                                        ; preds = %if.end.10
  %22 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %codec19 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %22, i32 0, i32 1
  %23 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec19, align 8
  %encinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %23, i32 0, i32 4
  %24 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit, align 8
  %cmp20 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %24, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %25 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %codec21 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %25, i32 0, i32 1
  %26 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec21, align 8
  %encinit22 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %26, i32 0, i32 4
  %27 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit22, align 8
  %28 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %state = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %28, i32 0, i32 2
  %29 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %codec23 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %29, i32 0, i32 1
  %30 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec23, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %30, i32 0, i32 1
  %31 = load i8*, i8** %config, align 8
  %call24 = call i32 %27(%union.MultibyteCodec_State* %state, i8* %31)
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.27:                                        ; preds = %land.lhs.true, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %32 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %39 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %40 = bitcast %struct.MultibyteIncrementalEncoderObject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.26, %if.then.17, %if.then.9, %if.then.6
  br label %do.body.32

do.body.32:                                       ; preds = %errorexit
  %41 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self, align 8
  %42 = bitcast %struct.MultibyteIncrementalEncoderObject* %41 to %struct._object*
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %43, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp36, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %46, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %49(%struct._object* %50)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.32
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %51 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp49, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %52, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp53, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %55, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %58(%struct._object* %59)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.64, %do.end, %if.then.2, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

declare void @PyObject_GC_UnTrack(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbiencoder_encode(%struct.MultibyteIncrementalEncoderObject* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteIncrementalEncoderObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %final = alloca i32, align 4
  store %struct.MultibyteIncrementalEncoderObject* %self, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @incrementalkwarglist, i32 0, i32 0), %struct._object** %data, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %3 = bitcast %struct.MultibyteIncrementalEncoderObject* %2 to %struct.MultibyteStatefulEncoderContext*
  %4 = load %struct._object*, %struct._object** %data, align 8
  %5 = load i32, i32* %final, align 4
  %call1 = call %struct._object* @encoder_encode_stateful(%struct.MultibyteStatefulEncoderContext* %3, %struct._object* %4, i32 %5)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbiencoder_reset(%struct.MultibyteIncrementalEncoderObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteIncrementalEncoderObject*, align 8
  %buffer = alloca [4 x i8], align 1
  %outbuf = alloca i8*, align 8
  %r = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteIncrementalEncoderObject* %self, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %0 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %0, i32 0, i32 1
  %1 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %encreset = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %1, i32 0, i32 5
  %2 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)** %encreset, align 8
  %cmp = icmp ne i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* %2, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buffer, i32 0, i32 0
  store i8* %arraydecay, i8** %outbuf, align 8
  %3 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %codec1 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %3, i32 0, i32 1
  %4 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec1, align 8
  %encreset2 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %4, i32 0, i32 5
  %5 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)** %encreset2, align 8
  %6 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %6, i32 0, i32 2
  %7 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %codec3 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %7, i32 0, i32 1
  %8 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec3, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %8, i32 0, i32 1
  %9 = load i8*, i8** %config, align 8
  %call = call i64 %5(%union.MultibyteCodec_State* %state, i8* %9, i8** %outbuf, i64 4)
  store i64 %call, i64* %r, align 8
  %10 = load i64, i64* %r, align 8
  %cmp4 = icmp ne i64 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %11 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %pending, align 8
  store %struct._object* %12, %struct._object** %_py_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp7 = icmp ne %struct._object* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.body
  %14 = load %struct.MultibyteIncrementalEncoderObject*, %struct.MultibyteIncrementalEncoderObject** %self.addr, align 8
  %pending9 = getelementptr inbounds %struct.MultibyteIncrementalEncoderObject, %struct.MultibyteIncrementalEncoderObject* %14, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.8
  %15 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  %22 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.5
  %23 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %23
}

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @encoder_encode_stateful(%struct.MultibyteStatefulEncoderContext* %ctx, %struct._object* %unistr, i32 %final) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ctx.addr = alloca %struct.MultibyteStatefulEncoderContext*, align 8
  %unistr.addr = alloca %struct._object*, align 8
  %final.addr = alloca i32, align 4
  %ucvt = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %inbuf = alloca %struct._object*, align 8
  %inpos = alloca i64, align 8
  %datalen = alloca i64, align 8
  %origpending = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %inbuf_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  %_py_xdecref_tmp121 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_py_xdecref_tmp138 = alloca %struct._object*, align 8
  %_py_decref_tmp142 = alloca %struct._object*, align 8
  %_py_xdecref_tmp155 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %_py_xdecref_tmp172 = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  %_py_xdecref_tmp189 = alloca %struct._object*, align 8
  %_py_decref_tmp193 = alloca %struct._object*, align 8
  store %struct.MultibyteStatefulEncoderContext* %ctx, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  store %struct._object* %unistr, %struct._object** %unistr.addr, align 8
  store i32 %final, i32* %final.addr, align 4
  store %struct._object* null, %struct._object** %r, align 8
  store %struct._object* null, %struct._object** %inbuf, align 8
  store %struct._object* null, %struct._object** %origpending, align 8
  %0 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %ucvt, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %call = call %struct._object* @PyObject_Str(%struct._object* %3)
  store %struct._object* %call, %struct._object** %ucvt, align 8
  store %struct._object* %call, %struct._object** %unistr.addr, align 8
  %4 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags5 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags5, align 8
  %and6 = and i64 %7, 268435456
  %cmp7 = icmp ne i64 %and6, 0
  br i1 %cmp7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %if.else.3
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %9 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %do.body
  br label %if.end

if.else.11:                                       ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.else.3
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then
  %16 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %16, i32 0, i32 4
  %17 = load %struct._object*, %struct._object** %pending, align 8
  %tobool = icmp ne %struct._object* %17, null
  br i1 %tobool, label %if.then.16, label %if.else.45

if.then.16:                                       ; preds = %if.end.15
  %18 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending17 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %18, i32 0, i32 4
  %19 = load %struct._object*, %struct._object** %pending17, align 8
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt18, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt18, align 8
  %21 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending19 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %21, i32 0, i32 4
  %22 = load %struct._object*, %struct._object** %pending19, align 8
  store %struct._object* %22, %struct._object** %origpending, align 8
  %23 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending20 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %23, i32 0, i32 4
  %24 = load %struct._object*, %struct._object** %pending20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %25, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  %26 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending23 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %pending23, align 8
  store %struct._object* %27, %struct._object** %inbuf_tmp, align 8
  %28 = load %struct._object*, %struct._object** %unistr.addr, align 8
  call void @PyUnicode_Append(%struct._object** %inbuf_tmp, %struct._object* %28)
  %29 = load %struct._object*, %struct._object** %inbuf_tmp, align 8
  %cmp24 = icmp eq %struct._object* %29, null
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.16
  br label %errorexit

if.end.26:                                        ; preds = %if.then.16
  br label %do.body.27

do.body.27:                                       ; preds = %if.end.26
  %30 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending28 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %30, i32 0, i32 4
  %31 = load %struct._object*, %struct._object** %pending28, align 8
  store %struct._object* %31, %struct._object** %_py_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp29 = icmp ne %struct._object* %32, null
  br i1 %cmp29, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %do.body.27
  %33 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending31 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %33, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending31, align 8
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.30
  %34 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp33, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %36, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %39(%struct._object* %40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %41 = load %struct._object*, %struct._object** %inbuf_tmp, align 8
  store %struct._object* %41, %struct._object** %inbuf, align 8
  br label %if.end.48

if.else.45:                                       ; preds = %if.end.15
  store %struct._object* null, %struct._object** %origpending, align 8
  %42 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt46, align 8
  %inc47 = add i64 %43, 1
  store i64 %inc47, i64* %ob_refcnt46, align 8
  %44 = load %struct._object*, %struct._object** %unistr.addr, align 8
  store %struct._object* %44, %struct._object** %inbuf, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %do.end.44
  %45 = load %struct._object*, %struct._object** %inbuf, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %46, i32 0, i32 3
  %47 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %47, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool49 = icmp ne i32 %bf.clear, 0
  br i1 %tobool49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.48
  br label %cond.end

cond.false:                                       ; preds = %if.end.48
  %48 = load %struct._object*, %struct._object** %inbuf, align 8
  %call50 = call i32 @_PyUnicode_Ready(%struct._object* %48)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call50, %cond.false ]
  %cmp51 = icmp slt i32 %cond, 0
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %cond.end
  br label %errorexit

if.end.53:                                        ; preds = %cond.end
  store i64 0, i64* %inpos, align 8
  %49 = load %struct._object*, %struct._object** %inbuf, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i32 0, i32 1
  %51 = load i64, i64* %length, align 8
  store i64 %51, i64* %datalen, align 8
  %52 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %52, i32 0, i32 1
  %53 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %54 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %state54 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %54, i32 0, i32 2
  %55 = load %struct._object*, %struct._object** %inbuf, align 8
  %56 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %56, i32 0, i32 3
  %57 = load %struct._object*, %struct._object** %errors, align 8
  %58 = load i32, i32* %final.addr, align 4
  %tobool55 = icmp ne i32 %58, 0
  %cond56 = select i1 %tobool55, i32 3, i32 0
  %call57 = call %struct._object* @multibytecodec_encode(%struct.MultibyteCodec* %53, %union.MultibyteCodec_State* %state54, %struct._object* %55, i64* %inpos, %struct._object* %57, i32 %cond56)
  store %struct._object* %call57, %struct._object** %r, align 8
  %59 = load %struct._object*, %struct._object** %r, align 8
  %cmp58 = icmp eq %struct._object* %59, null
  br i1 %cmp58, label %if.then.59, label %if.end.80

if.then.59:                                       ; preds = %if.end.53
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %60 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending62 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %60, i32 0, i32 4
  %61 = load %struct._object*, %struct._object** %pending62, align 8
  store %struct._object* %61, %struct._object** %_py_tmp61, align 8
  %62 = load %struct._object*, %struct._object** %_py_tmp61, align 8
  %cmp63 = icmp ne %struct._object* %62, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.60
  %63 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending65 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %63, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %64 = load %struct._object*, %struct._object** %_py_tmp61, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp67, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %66, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %69(%struct._object* %70)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.60
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  %71 = load %struct._object*, %struct._object** %origpending, align 8
  %72 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending79 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %72, i32 0, i32 4
  store %struct._object* %71, %struct._object** %pending79, align 8
  store %struct._object* null, %struct._object** %origpending, align 8
  br label %errorexit

if.end.80:                                        ; preds = %if.end.53
  br label %do.body.81

do.body.81:                                       ; preds = %if.end.80
  %73 = load %struct._object*, %struct._object** %origpending, align 8
  store %struct._object* %73, %struct._object** %_py_xdecref_tmp, align 8
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp82 = icmp ne %struct._object* %74, null
  br i1 %cmp82, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %do.body.81
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %75 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %75, %struct._object** %_py_decref_tmp85, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %77, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %80(%struct._object* %81)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.81
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %82 = load i64, i64* %inpos, align 8
  %83 = load i64, i64* %datalen, align 8
  %cmp97 = icmp slt i64 %82, %83
  br i1 %cmp97, label %if.then.98, label %if.end.108

if.then.98:                                       ; preds = %do.end.96
  %84 = load i64, i64* %datalen, align 8
  %85 = load i64, i64* %inpos, align 8
  %sub = sub i64 %84, %85
  %cmp99 = icmp sgt i64 %sub, 2
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.then.98
  %86 = load %struct._object*, %struct._object** @PyExc_UnicodeError, align 8
  call void @PyErr_SetString(%struct._object* %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  br label %errorexit

if.end.101:                                       ; preds = %if.then.98
  %87 = load %struct._object*, %struct._object** %inbuf, align 8
  %88 = load i64, i64* %inpos, align 8
  %89 = load i64, i64* %datalen, align 8
  %call102 = call %struct._object* @PyUnicode_Substring(%struct._object* %87, i64 %88, i64 %89)
  %90 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending103 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %90, i32 0, i32 4
  store %struct._object* %call102, %struct._object** %pending103, align 8
  %91 = load %struct.MultibyteStatefulEncoderContext*, %struct.MultibyteStatefulEncoderContext** %ctx.addr, align 8
  %pending104 = getelementptr inbounds %struct.MultibyteStatefulEncoderContext, %struct.MultibyteStatefulEncoderContext* %91, i32 0, i32 4
  %92 = load %struct._object*, %struct._object** %pending104, align 8
  %cmp105 = icmp eq %struct._object* %92, null
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.end.101
  br label %errorexit

if.end.107:                                       ; preds = %if.end.101
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %do.end.96
  br label %do.body.109

do.body.109:                                      ; preds = %if.end.108
  %93 = load %struct._object*, %struct._object** %inbuf, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp110, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %95, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.109
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.109
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %98(%struct._object* %99)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %do.body.120

do.body.120:                                      ; preds = %do.end.119
  %100 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp121, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp121, align 8
  %cmp122 = icmp ne %struct._object* %101, null
  br i1 %cmp122, label %if.then.123, label %if.end.135

if.then.123:                                      ; preds = %do.body.120
  br label %do.body.124

do.body.124:                                      ; preds = %if.then.123
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp121, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp125, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt126, align 8
  %dec127 = add i64 %104, -1
  store i64 %dec127, i64* %ob_refcnt126, align 8
  %cmp128 = icmp ne i64 %dec127, 0
  br i1 %cmp128, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %do.body.124
  br label %if.end.133

if.else.130:                                      ; preds = %do.body.124
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  %ob_type131 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type131, align 8
  %tp_dealloc132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc132, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8
  call void %107(%struct._object* %108)
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.130, %if.then.129
  br label %do.end.134

do.end.134:                                       ; preds = %if.end.133
  br label %if.end.135

if.end.135:                                       ; preds = %do.end.134, %do.body.120
  br label %do.end.136

do.end.136:                                       ; preds = %if.end.135
  %109 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %109, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.106, %if.then.100, %do.end.78, %if.then.52, %if.then.25
  br label %do.body.137

do.body.137:                                      ; preds = %errorexit
  %110 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %110, %struct._object** %_py_xdecref_tmp138, align 8
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp138, align 8
  %cmp139 = icmp ne %struct._object* %111, null
  br i1 %cmp139, label %if.then.140, label %if.end.152

if.then.140:                                      ; preds = %do.body.137
  br label %do.body.141

do.body.141:                                      ; preds = %if.then.140
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp138, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp142, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt143, align 8
  %dec144 = add i64 %114, -1
  store i64 %dec144, i64* %ob_refcnt143, align 8
  %cmp145 = icmp ne i64 %dec144, 0
  br i1 %cmp145, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %do.body.141
  br label %if.end.150

if.else.147:                                      ; preds = %do.body.141
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp142, align 8
  call void %117(%struct._object* %118)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %do.body.137
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %do.body.154

do.body.154:                                      ; preds = %do.end.153
  %119 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %119, %struct._object** %_py_xdecref_tmp155, align 8
  %120 = load %struct._object*, %struct._object** %_py_xdecref_tmp155, align 8
  %cmp156 = icmp ne %struct._object* %120, null
  br i1 %cmp156, label %if.then.157, label %if.end.169

if.then.157:                                      ; preds = %do.body.154
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %121 = load %struct._object*, %struct._object** %_py_xdecref_tmp155, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp159, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %123, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.158
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.158
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %126(%struct._object* %127)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %do.body.154
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  br label %do.body.171

do.body.171:                                      ; preds = %do.end.170
  %128 = load %struct._object*, %struct._object** %origpending, align 8
  store %struct._object* %128, %struct._object** %_py_xdecref_tmp172, align 8
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp172, align 8
  %cmp173 = icmp ne %struct._object* %129, null
  br i1 %cmp173, label %if.then.174, label %if.end.186

if.then.174:                                      ; preds = %do.body.171
  br label %do.body.175

do.body.175:                                      ; preds = %if.then.174
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp172, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp176, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %132, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %do.body.175
  br label %if.end.184

if.else.181:                                      ; preds = %do.body.175
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type182 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type182, align 8
  %tp_dealloc183 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc183, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %135(%struct._object* %136)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.181, %if.then.180
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.184
  br label %if.end.186

if.end.186:                                       ; preds = %do.end.185, %do.body.171
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  br label %do.body.188

do.body.188:                                      ; preds = %do.end.187
  %137 = load %struct._object*, %struct._object** %inbuf, align 8
  store %struct._object* %137, %struct._object** %_py_xdecref_tmp189, align 8
  %138 = load %struct._object*, %struct._object** %_py_xdecref_tmp189, align 8
  %cmp190 = icmp ne %struct._object* %138, null
  br i1 %cmp190, label %if.then.191, label %if.end.203

if.then.191:                                      ; preds = %do.body.188
  br label %do.body.192

do.body.192:                                      ; preds = %if.then.191
  %139 = load %struct._object*, %struct._object** %_py_xdecref_tmp189, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp193, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  %ob_refcnt194 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt194, align 8
  %dec195 = add i64 %141, -1
  store i64 %dec195, i64* %ob_refcnt194, align 8
  %cmp196 = icmp ne i64 %dec195, 0
  br i1 %cmp196, label %if.then.197, label %if.else.198

if.then.197:                                      ; preds = %do.body.192
  br label %if.end.201

if.else.198:                                      ; preds = %do.body.192
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp193, align 8
  call void %144(%struct._object* %145)
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.198, %if.then.197
  br label %do.end.202

do.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %do.end.202, %do.body.188
  br label %do.end.204

do.end.204:                                       ; preds = %if.end.203
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.204, %do.end.136, %do.end, %if.then.2
  %146 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %146
}

declare %struct._object* @PyObject_Str(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare void @PyUnicode_Append(%struct._object**, %struct._object*) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @multibytecodec_encode(%struct.MultibyteCodec* %codec, %union.MultibyteCodec_State* %state, %struct._object* %text, i64* %inpos_t, %struct._object* %errors, i32 %flags) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %codec.addr = alloca %struct.MultibyteCodec*, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %text.addr = alloca %struct._object*, align 8
  %inpos_t.addr = alloca i64*, align 8
  %errors.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i32, align 4
  %buf = alloca %struct.MultibyteEncodeBuffer, align 8
  %finalsize = alloca i64, align 8
  %r = alloca i64, align 8
  %datalen = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %outleft = alloca i64, align 8
  %outleft80 = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp132 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  %_py_xdecref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  store %struct.MultibyteCodec* %codec, %struct.MultibyteCodec** %codec.addr, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store %struct._object* %text, %struct._object** %text.addr, align 8
  store i64* %inpos_t, i64** %inpos_t.addr, align 8
  store %struct._object* %errors, %struct._object** %errors.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i64 0, i64* %r, align 8
  %0 = load %struct._object*, %struct._object** %text.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state1 to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %text.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp slt i32 %cond, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %text.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  store i64 %6, i64* %datalen, align 8
  %7 = load i64, i64* %datalen, align 8
  %cmp2 = icmp eq i64 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* %flags.addr, align 4
  %and = and i32 %8, 2
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %excobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 5
  store %struct._object* null, %struct._object** %excobj, align 8
  %outobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  store %struct._object* null, %struct._object** %outobj, align 8
  %9 = load %struct._object*, %struct._object** %text.addr, align 8
  %inobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  store %struct._object* %9, %struct._object** %inobj, align 8
  %inpos = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 1
  store i64 0, i64* %inpos, align 8
  %10 = load i64, i64* %datalen, align 8
  %inlen = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 2
  store i64 %10, i64* %inlen, align 8
  %inobj7 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %inobj7, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyASCIIObject*
  %state8 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %12, i32 0, i32 3
  %13 = bitcast %struct.anon* %state8 to i32*
  %bf.load9 = load i32, i32* %13, align 4
  %bf.lshr10 = lshr i32 %bf.load9, 2
  %bf.clear11 = and i32 %bf.lshr10, 7
  store i32 %bf.clear11, i32* %kind, align 4
  %inobj12 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %inobj12, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 3
  %16 = bitcast %struct.anon* %state13 to i32*
  %bf.load14 = load i32, i32* %16, align 4
  %bf.lshr15 = lshr i32 %bf.load14, 5
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %cond.true.18, label %cond.false.32

cond.true.18:                                     ; preds = %if.end.6
  %inobj19 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %17 = load %struct._object*, %struct._object** %inobj19, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %state20 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3
  %19 = bitcast %struct.anon* %state20 to i32*
  %bf.load21 = load i32, i32* %19, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 6
  %bf.clear23 = and i32 %bf.lshr22, 1
  %tobool24 = icmp ne i32 %bf.clear23, 0
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %cond.true.18
  %inobj26 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %20 = load %struct._object*, %struct._object** %inobj26, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i64 1
  %22 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.30

cond.false.27:                                    ; preds = %cond.true.18
  %inobj28 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %23 = load %struct._object*, %struct._object** %inobj28, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyCompactUnicodeObject*
  %add.ptr29 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %24, i64 1
  %25 = bitcast %struct.PyCompactUnicodeObject* %add.ptr29 to i8*
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.27, %cond.true.25
  %cond31 = phi i8* [ %22, %cond.true.25 ], [ %25, %cond.false.27 ]
  br label %cond.end.35

cond.false.32:                                    ; preds = %if.end.6
  %inobj33 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 0
  %26 = load %struct._object*, %struct._object** %inobj33, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyUnicodeObject*
  %data34 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %27, i32 0, i32 1
  %any = bitcast %union.anon* %data34 to i8**
  %28 = load i8*, i8** %any, align 8
  br label %cond.end.35

cond.end.35:                                      ; preds = %cond.false.32, %cond.end.30
  %cond36 = phi i8* [ %cond31, %cond.end.30 ], [ %28, %cond.false.32 ]
  store i8* %cond36, i8** %data, align 8
  %29 = load i64, i64* %datalen, align 8
  %cmp37 = icmp sgt i64 %29, 4611686018427387895
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %cond.end.35
  %call39 = call %struct._object* @PyErr_NoMemory()
  br label %errorexit

if.end.40:                                        ; preds = %cond.end.35
  %30 = load i64, i64* %datalen, align 8
  %mul = mul i64 %30, 2
  %add = add i64 %mul, 16
  %call41 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %add)
  %outobj42 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  store %struct._object* %call41, %struct._object** %outobj42, align 8
  %outobj43 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %31 = load %struct._object*, %struct._object** %outobj43, align 8
  %cmp44 = icmp eq %struct._object* %31, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.40
  br label %errorexit

if.end.46:                                        ; preds = %if.end.40
  %outobj47 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %32 = load %struct._object*, %struct._object** %outobj47, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %33, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %outbuf = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  store i8* %arraydecay, i8** %outbuf, align 8
  %outbuf48 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %34 = load i8*, i8** %outbuf48, align 8
  %outobj49 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %35 = load %struct._object*, %struct._object** %outobj49, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %36, i32 0, i32 1
  %37 = load i64, i64* %ob_size, align 8
  %add.ptr50 = getelementptr i8, i8* %34, i64 %37
  %outbuf_end = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 4
  store i8* %add.ptr50, i8** %outbuf_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.74, %if.end.46
  %inpos51 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 1
  %38 = load i64, i64* %inpos51, align 8
  %inlen52 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 2
  %39 = load i64, i64* %inlen52, align 8
  %cmp53 = icmp slt i64 %38, %39
  br i1 %cmp53, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %outbuf_end54 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 4
  %40 = load i8*, i8** %outbuf_end54, align 8
  %outbuf55 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %41 = load i8*, i8** %outbuf55, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %40 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %outleft, align 8
  %42 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encode = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %42, i32 0, i32 3
  %43 = load i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)*, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)** %encode, align 8
  %44 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %45 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %45, i32 0, i32 1
  %46 = load i8*, i8** %config, align 8
  %47 = load i32, i32* %kind, align 4
  %48 = load i8*, i8** %data, align 8
  %inpos56 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 1
  %inlen57 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 2
  %49 = load i64, i64* %inlen57, align 8
  %outbuf58 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %50 = load i64, i64* %outleft, align 8
  %51 = load i32, i32* %flags.addr, align 4
  %call59 = call i64 %43(%union.MultibyteCodec_State* %44, i8* %46, i32 %47, i8* %48, i64* %inpos56, i64 %49, i8** %outbuf58, i64 %50, i32 %51)
  store i64 %call59, i64* %r, align 8
  %52 = load i64, i64* %r, align 8
  %cmp60 = icmp eq i64 %52, 0
  br i1 %cmp60, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %53 = load i64, i64* %r, align 8
  %cmp61 = icmp eq i64 %53, -2
  br i1 %cmp61, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %lor.lhs.false
  %54 = load i32, i32* %flags.addr, align 4
  %and63 = and i32 %54, 1
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.else, label %if.then.65

if.then.65:                                       ; preds = %land.lhs.true.62, %while.body
  br label %while.end

if.else:                                          ; preds = %land.lhs.true.62, %lor.lhs.false
  %55 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %56 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %57 = load %struct._object*, %struct._object** %errors.addr, align 8
  %58 = load i64, i64* %r, align 8
  %call66 = call i32 @multibytecodec_encerror(%struct.MultibyteCodec* %55, %union.MultibyteCodec_State* %56, %struct.MultibyteEncodeBuffer* %buf, %struct._object* %57, i64 %58)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %if.else
  br label %errorexit

if.else.69:                                       ; preds = %if.else
  %59 = load i64, i64* %r, align 8
  %cmp70 = icmp eq i64 %59, -2
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.else.69
  br label %while.end

if.end.72:                                        ; preds = %if.else.69
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73
  br label %while.cond

while.end:                                        ; preds = %if.then.71, %if.then.65, %while.cond
  %60 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encreset = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %60, i32 0, i32 5
  %61 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)** %encreset, align 8
  %cmp75 = icmp ne i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)* %61, null
  br i1 %cmp75, label %land.lhs.true.76, label %if.end.98

land.lhs.true.76:                                 ; preds = %while.end
  %62 = load i32, i32* %flags.addr, align 4
  %and77 = and i32 %62, 2
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.98

if.then.79:                                       ; preds = %land.lhs.true.76
  br label %for.cond

for.cond:                                         ; preds = %if.end.97, %if.then.79
  %outbuf_end81 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 4
  %63 = load i8*, i8** %outbuf_end81, align 8
  %outbuf82 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %64 = load i8*, i8** %outbuf82, align 8
  %sub.ptr.lhs.cast83 = ptrtoint i8* %63 to i64
  %sub.ptr.rhs.cast84 = ptrtoint i8* %64 to i64
  %sub.ptr.sub85 = sub i64 %sub.ptr.lhs.cast83, %sub.ptr.rhs.cast84
  store i64 %sub.ptr.sub85, i64* %outleft80, align 8
  %65 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encreset86 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %65, i32 0, i32 5
  %66 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64)** %encreset86, align 8
  %67 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %68 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %config87 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %68, i32 0, i32 1
  %69 = load i8*, i8** %config87, align 8
  %outbuf88 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %70 = load i64, i64* %outleft80, align 8
  %call89 = call i64 %66(%union.MultibyteCodec_State* %67, i8* %69, i8** %outbuf88, i64 %70)
  store i64 %call89, i64* %r, align 8
  %71 = load i64, i64* %r, align 8
  %cmp90 = icmp eq i64 %71, 0
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %for.cond
  br label %for.end

if.else.92:                                       ; preds = %for.cond
  %72 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %73 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %74 = load %struct._object*, %struct._object** %errors.addr, align 8
  %75 = load i64, i64* %r, align 8
  %call93 = call i32 @multibytecodec_encerror(%struct.MultibyteCodec* %72, %union.MultibyteCodec_State* %73, %struct.MultibyteEncodeBuffer* %buf, %struct._object* %74, i64 %75)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else.92
  br label %errorexit

if.end.96:                                        ; preds = %if.else.92
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %for.cond

for.end:                                          ; preds = %if.then.91
  br label %if.end.98

if.end.98:                                        ; preds = %for.end, %land.lhs.true.76, %while.end
  %outbuf99 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 3
  %76 = load i8*, i8** %outbuf99, align 8
  %outobj100 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %77 = load %struct._object*, %struct._object** %outobj100, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyBytesObject*
  %ob_sval101 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %78, i32 0, i32 2
  %arraydecay102 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval101, i32 0, i32 0
  %sub.ptr.lhs.cast103 = ptrtoint i8* %76 to i64
  %sub.ptr.rhs.cast104 = ptrtoint i8* %arraydecay102 to i64
  %sub.ptr.sub105 = sub i64 %sub.ptr.lhs.cast103, %sub.ptr.rhs.cast104
  store i64 %sub.ptr.sub105, i64* %finalsize, align 8
  %79 = load i64, i64* %finalsize, align 8
  %outobj106 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %80 = load %struct._object*, %struct._object** %outobj106, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyVarObject*
  %ob_size107 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %81, i32 0, i32 1
  %82 = load i64, i64* %ob_size107, align 8
  %cmp108 = icmp ne i64 %79, %82
  br i1 %cmp108, label %if.then.109, label %if.end.115

if.then.109:                                      ; preds = %if.end.98
  %outobj110 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %83 = load i64, i64* %finalsize, align 8
  %call111 = call i32 @_PyBytes_Resize(%struct._object** %outobj110, i64 %83)
  %cmp112 = icmp eq i32 %call111, -1
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %if.then.109
  br label %errorexit

if.end.114:                                       ; preds = %if.then.109
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.98
  %84 = load i64*, i64** %inpos_t.addr, align 8
  %tobool116 = icmp ne i64* %84, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.end.115
  %inpos118 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 1
  %85 = load i64, i64* %inpos118, align 8
  %86 = load i64*, i64** %inpos_t.addr, align 8
  store i64 %85, i64* %86, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.end.115
  br label %do.body

do.body:                                          ; preds = %if.end.119
  %excobj120 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 5
  %87 = load %struct._object*, %struct._object** %excobj120, align 8
  store %struct._object* %87, %struct._object** %_py_xdecref_tmp, align 8
  %88 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp121 = icmp ne %struct._object* %88, null
  br i1 %cmp121, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %do.body
  br label %do.body.123

do.body.123:                                      ; preds = %if.then.122
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %89, %struct._object** %_py_decref_tmp, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %91, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp124 = icmp ne i64 %dec, 0
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %do.body.123
  br label %if.end.127

if.else.126:                                      ; preds = %do.body.123
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %94(%struct._object* %95)
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.126, %if.then.125
  br label %do.end

do.end:                                           ; preds = %if.end.127
  br label %if.end.128

if.end.128:                                       ; preds = %do.end, %do.body
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  %outobj130 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %96 = load %struct._object*, %struct._object** %outobj130, align 8
  store %struct._object* %96, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.113, %if.then.95, %if.then.68, %if.then.45, %if.then.38
  br label %do.body.131

do.body.131:                                      ; preds = %errorexit
  %excobj133 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 5
  %97 = load %struct._object*, %struct._object** %excobj133, align 8
  store %struct._object* %97, %struct._object** %_py_xdecref_tmp132, align 8
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp132, align 8
  %cmp134 = icmp ne %struct._object* %98, null
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.body.131
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp132, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp137, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %101, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %104(%struct._object* %105)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.131
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  br label %do.body.149

do.body.149:                                      ; preds = %do.end.148
  %outobj151 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %buf, i32 0, i32 6
  %106 = load %struct._object*, %struct._object** %outobj151, align 8
  store %struct._object* %106, %struct._object** %_py_xdecref_tmp150, align 8
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  %cmp152 = icmp ne %struct._object* %107, null
  br i1 %cmp152, label %if.then.153, label %if.end.165

if.then.153:                                      ; preds = %do.body.149
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp155, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %110, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.154
  br label %if.end.163

if.else.160:                                      ; preds = %do.body.154
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %113(%struct._object* %114)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.body.149
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.166, %do.end.129, %if.then.4, %if.then
  %115 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %115
}

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #2

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #2

declare %struct._object* @PyErr_NoMemory() #2

; Function Attrs: nounwind uwtable
define internal i32 @multibytecodec_encerror(%struct.MultibyteCodec* %codec, %union.MultibyteCodec_State* %state, %struct.MultibyteEncodeBuffer* %buf, %struct._object* %errors, i64 %e) #0 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca %struct.MultibyteCodec*, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %buf.addr = alloca %struct.MultibyteEncodeBuffer*, align 8
  %errors.addr = alloca %struct._object*, align 8
  %e.addr = alloca i64, align 8
  %retobj = alloca %struct._object*, align 8
  %retstr = alloca %struct._object*, align 8
  %tobj = alloca %struct._object*, align 8
  %retstrsize = alloca i64, align 8
  %newpos = alloca i64, align 8
  %esize = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %reason = alloca i8*, align 8
  %replchar = alloca %struct._object*, align 8
  %r = alloca i64, align 8
  %inpos8 = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  %outleft = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %inpos124 = alloca i64, align 8
  %_py_decref_tmp167 = alloca %struct._object*, align 8
  %_py_decref_tmp178 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp192 = alloca %struct._object*, align 8
  %_py_xdecref_tmp205 = alloca %struct._object*, align 8
  %_py_decref_tmp209 = alloca %struct._object*, align 8
  store %struct.MultibyteCodec* %codec, %struct.MultibyteCodec** %codec.addr, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store %struct.MultibyteEncodeBuffer* %buf, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  store %struct._object* %errors, %struct._object** %errors.addr, align 8
  store i64 %e, i64* %e.addr, align 8
  store %struct._object* null, %struct._object** %retobj, align 8
  store %struct._object* null, %struct._object** %retstr, align 8
  %0 = load i64, i64* %e.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8** %reason, align 8
  %1 = load i64, i64* %e.addr, align 8
  store i64 %1, i64* %esize, align 8
  br label %if.end.5

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %e.addr, align 8
  switch i64 %2, label %sw.default [
    i64 -1, label %sw.bb
    i64 -2, label %sw.bb.3
    i64 -3, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.else
  %3 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %call = call i32 @expand_encodebuffer(%struct.MultibyteEncodeBuffer* %3, i64 -1)
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %sw.bb
  br label %errorexit

if.end:                                           ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8** %reason, align 8
  %4 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inpos = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %4, i32 0, i32 1
  %5 = load i64, i64* %inpos, align 8
  store i64 %5, i64* %esize, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3
  br label %if.end.5

if.end.5:                                         ; preds = %sw.epilog, %if.then
  %8 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp6 = icmp eq %struct._object* %8, inttoptr (i64 3 to %struct._object*)
  br i1 %cmp6, label %if.then.7, label %if.end.56

if.then.7:                                        ; preds = %if.end.5
  %call9 = call %struct._object* @PyUnicode_FromOrdinal(i32 63)
  store %struct._object* %call9, %struct._object** %replchar, align 8
  %9 = load %struct._object*, %struct._object** %replchar, align 8
  %cmp10 = icmp eq %struct._object* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  br label %errorexit

if.end.12:                                        ; preds = %if.then.7
  %10 = load %struct._object*, %struct._object** %replchar, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %state13 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon* %state13 to i32*
  %bf.load = load i32, i32* %12, align 4
  %bf.lshr = lshr i32 %bf.load, 2
  %bf.clear = and i32 %bf.lshr, 7
  store i32 %bf.clear, i32* %kind, align 4
  %13 = load %struct._object*, %struct._object** %replchar, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %state14 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3
  %15 = bitcast %struct.anon* %state14 to i32*
  %bf.load15 = load i32, i32* %15, align 4
  %bf.lshr16 = lshr i32 %bf.load15, 5
  %bf.clear17 = and i32 %bf.lshr16, 1
  %tobool = icmp ne i32 %bf.clear17, 0
  br i1 %tobool, label %cond.true, label %cond.false.25

cond.true:                                        ; preds = %if.end.12
  %16 = load %struct._object*, %struct._object** %replchar, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*
  %state18 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 3
  %18 = bitcast %struct.anon* %state18 to i32*
  %bf.load19 = load i32, i32* %18, align 4
  %bf.lshr20 = lshr i32 %bf.load19, 6
  %bf.clear21 = and i32 %bf.lshr20, 1
  %tobool22 = icmp ne i32 %bf.clear21, 0
  br i1 %tobool22, label %cond.true.23, label %cond.false

cond.true.23:                                     ; preds = %cond.true
  %19 = load %struct._object*, %struct._object** %replchar, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %20, i64 1
  %21 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %22 = load %struct._object*, %struct._object** %replchar, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyCompactUnicodeObject*
  %add.ptr24 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %23, i64 1
  %24 = bitcast %struct.PyCompactUnicodeObject* %add.ptr24 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.23
  %cond = phi i8* [ %21, %cond.true.23 ], [ %24, %cond.false ]
  br label %cond.end.27

cond.false.25:                                    ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** %replchar, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyUnicodeObject*
  %data26 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %26, i32 0, i32 1
  %any = bitcast %union.anon* %data26 to i8**
  %27 = load i8*, i8** %any, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.25, %cond.end
  %cond28 = phi i8* [ %cond, %cond.end ], [ %27, %cond.false.25 ]
  store i8* %cond28, i8** %data, align 8
  store i64 0, i64* %inpos8, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.36, %cond.end.27
  %28 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf_end = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %28, i32 0, i32 4
  %29 = load i8*, i8** %outbuf_end, align 8
  %30 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %30, i32 0, i32 3
  %31 = load i8*, i8** %outbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %31 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %outleft, align 8
  %32 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encode = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %32, i32 0, i32 3
  %33 = load i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)*, i64 (%union.MultibyteCodec_State*, i8*, i32, i8*, i64*, i64, i8**, i64, i32)** %encode, align 8
  %34 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %35 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %35, i32 0, i32 1
  %36 = load i8*, i8** %config, align 8
  %37 = load i32, i32* %kind, align 4
  %38 = load i8*, i8** %data, align 8
  %39 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf29 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %39, i32 0, i32 3
  %40 = load i64, i64* %outleft, align 8
  %call30 = call i64 %33(%union.MultibyteCodec_State* %34, i8* %36, i32 %37, i8* %38, i64* %inpos8, i64 1, i8** %outbuf29, i64 %40, i32 0)
  store i64 %call30, i64* %r, align 8
  %41 = load i64, i64* %r, align 8
  %cmp31 = icmp eq i64 %41, -1
  br i1 %cmp31, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %for.cond
  %42 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %call33 = call i32 @expand_encodebuffer(%struct.MultibyteEncodeBuffer* %42, i64 -1)
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.32
  br label %errorexit

if.end.36:                                        ; preds = %if.then.32
  br label %for.cond

if.else.37:                                       ; preds = %for.cond
  br label %for.end

for.end:                                          ; preds = %if.else.37
  br label %do.body

do.body:                                          ; preds = %for.end
  %43 = load %struct._object*, %struct._object** %replchar, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body
  br label %if.end.41

if.else.40:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %48(%struct._object* %49)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.41
  %50 = load i64, i64* %r, align 8
  %cmp42 = icmp ne i64 %50, 0
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.end
  %51 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf44 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %51, i32 0, i32 3
  %52 = load i8*, i8** %outbuf44, align 8
  %add.ptr45 = getelementptr i8, i8* %52, i64 1
  %53 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf_end46 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %53, i32 0, i32 4
  %54 = load i8*, i8** %outbuf_end46, align 8
  %cmp47 = icmp ugt i8* %add.ptr45, %54
  br i1 %cmp47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.then.43
  %55 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %call49 = call i32 @expand_encodebuffer(%struct.MultibyteEncodeBuffer* %55, i64 1)
  %cmp50 = icmp eq i32 %call49, -1
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.then.48
  br label %errorexit

if.end.52:                                        ; preds = %if.then.48
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.43
  %56 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf54 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %56, i32 0, i32 3
  %57 = load i8*, i8** %outbuf54, align 8
  %incdec.ptr = getelementptr i8, i8* %57, i32 1
  store i8* %incdec.ptr, i8** %outbuf54, align 8
  store i8 63, i8* %57, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.53, %do.end
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.end.5
  %58 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp57 = icmp eq %struct._object* %58, inttoptr (i64 2 to %struct._object*)
  br i1 %cmp57, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.56
  %59 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp58 = icmp eq %struct._object* %59, inttoptr (i64 3 to %struct._object*)
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %lor.lhs.false, %if.end.56
  %60 = load i64, i64* %esize, align 8
  %61 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inpos60 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %61, i32 0, i32 1
  %62 = load i64, i64* %inpos60, align 8
  %add = add i64 %62, %60
  store i64 %add, i64* %inpos60, align 8
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %lor.lhs.false
  %63 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inpos62 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %63, i32 0, i32 1
  %64 = load i64, i64* %inpos62, align 8
  store i64 %64, i64* %start, align 8
  %65 = load i64, i64* %start, align 8
  %66 = load i64, i64* %esize, align 8
  %add63 = add i64 %65, %66
  store i64 %add63, i64* %end, align 8
  %67 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %67, i32 0, i32 5
  %68 = load %struct._object*, %struct._object** %excobj, align 8
  %cmp64 = icmp eq %struct._object* %68, null
  br i1 %cmp64, label %if.then.65, label %if.else.72

if.then.65:                                       ; preds = %if.end.61
  %69 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %70 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encoding = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %70, i32 0, i32 0
  %71 = load i8*, i8** %encoding, align 8
  %72 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %72, i32 0, i32 0
  %73 = load %struct._object*, %struct._object** %inobj, align 8
  %74 = load i64, i64* %start, align 8
  %75 = load i64, i64* %end, align 8
  %76 = load i8*, i8** %reason, align 8
  %call66 = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %71, %struct._object* %73, i64 %74, i64 %75, i8* %76)
  %77 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj67 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %77, i32 0, i32 5
  store %struct._object* %call66, %struct._object** %excobj67, align 8
  %78 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj68 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %78, i32 0, i32 5
  %79 = load %struct._object*, %struct._object** %excobj68, align 8
  %cmp69 = icmp eq %struct._object* %79, null
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.65
  br label %errorexit

if.end.71:                                        ; preds = %if.then.65
  br label %if.end.86

if.else.72:                                       ; preds = %if.end.61
  %80 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj73 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %80, i32 0, i32 5
  %81 = load %struct._object*, %struct._object** %excobj73, align 8
  %82 = load i64, i64* %start, align 8
  %call74 = call i32 @PyUnicodeEncodeError_SetStart(%struct._object* %81, i64 %82)
  %cmp75 = icmp ne i32 %call74, 0
  br i1 %cmp75, label %if.then.84, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %if.else.72
  %83 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj77 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %83, i32 0, i32 5
  %84 = load %struct._object*, %struct._object** %excobj77, align 8
  %85 = load i64, i64* %end, align 8
  %call78 = call i32 @PyUnicodeEncodeError_SetEnd(%struct._object* %84, i64 %85)
  %cmp79 = icmp ne i32 %call78, 0
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %lor.lhs.false.76
  %86 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj81 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %86, i32 0, i32 5
  %87 = load %struct._object*, %struct._object** %excobj81, align 8
  %88 = load i8*, i8** %reason, align 8
  %call82 = call i32 @PyUnicodeEncodeError_SetReason(%struct._object* %87, i8* %88)
  %cmp83 = icmp ne i32 %call82, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false.80, %lor.lhs.false.76, %if.else.72
  br label %errorexit

if.end.85:                                        ; preds = %lor.lhs.false.80
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.71
  %89 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp87 = icmp eq %struct._object* %89, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.86
  %90 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj89 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %90, i32 0, i32 5
  %91 = load %struct._object*, %struct._object** %excobj89, align 8
  %call90 = call %struct._object* @PyCodec_StrictErrors(%struct._object* %91)
  br label %errorexit

if.end.91:                                        ; preds = %if.end.86
  %92 = load %struct._object*, %struct._object** %errors.addr, align 8
  %93 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %excobj92 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %93, i32 0, i32 5
  %94 = load %struct._object*, %struct._object** %excobj92, align 8
  %call93 = call %struct._object* @call_error_callback(%struct._object* %92, %struct._object* %94)
  store %struct._object* %call93, %struct._object** %retobj, align 8
  %95 = load %struct._object*, %struct._object** %retobj, align 8
  %cmp94 = icmp eq %struct._object* %95, null
  br i1 %cmp94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.91
  br label %errorexit

if.end.96:                                        ; preds = %if.end.91
  %96 = load %struct._object*, %struct._object** %retobj, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 19
  %98 = load i64, i64* %tp_flags, align 8
  %and = and i64 %98, 67108864
  %cmp98 = icmp ne i64 %and, 0
  br i1 %cmp98, label %lor.lhs.false.99, label %if.then.117

lor.lhs.false.99:                                 ; preds = %if.end.96
  %99 = load %struct._object*, %struct._object** %retobj, align 8
  %100 = bitcast %struct._object* %99 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %100, i32 0, i32 1
  %101 = load i64, i64* %ob_size, align 8
  %cmp100 = icmp ne i64 %101, 2
  br i1 %cmp100, label %if.then.117, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.99
  %102 = load %struct._object*, %struct._object** %retobj, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %103, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %104 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %104, %struct._object** %tobj, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_flags103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 19
  %106 = load i64, i64* %tp_flags103, align 8
  %and104 = and i64 %106, 268435456
  %cmp105 = icmp ne i64 %and104, 0
  br i1 %cmp105, label %lor.lhs.false.110, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.101
  %107 = load %struct._object*, %struct._object** %tobj, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_flags107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 19
  %109 = load i64, i64* %tp_flags107, align 8
  %and108 = and i64 %109, 134217728
  %cmp109 = icmp ne i64 %and108, 0
  br i1 %cmp109, label %lor.lhs.false.110, label %if.then.117

lor.lhs.false.110:                                ; preds = %land.lhs.true, %lor.lhs.false.101
  %110 = load %struct._object*, %struct._object** %retobj, align 8
  %111 = bitcast %struct._object* %110 to %struct.PyTupleObject*
  %ob_item111 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %111, i32 0, i32 1
  %arrayidx112 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item111, i32 0, i64 1
  %112 = load %struct._object*, %struct._object** %arrayidx112, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %tp_flags114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 19
  %114 = load i64, i64* %tp_flags114, align 8
  %and115 = and i64 %114, 16777216
  %cmp116 = icmp ne i64 %and115, 0
  br i1 %cmp116, label %if.end.118, label %if.then.117

if.then.117:                                      ; preds = %lor.lhs.false.110, %land.lhs.true, %lor.lhs.false.99, %if.end.96
  %115 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %115, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0))
  br label %errorexit

if.end.118:                                       ; preds = %lor.lhs.false.110
  %116 = load %struct._object*, %struct._object** %tobj, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_flags120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 19
  %118 = load i64, i64* %tp_flags120, align 8
  %and121 = and i64 %118, 268435456
  %cmp122 = icmp ne i64 %and121, 0
  br i1 %cmp122, label %if.then.123, label %if.else.129

if.then.123:                                      ; preds = %if.end.118
  %119 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %120 = load %union.MultibyteCodec_State*, %union.MultibyteCodec_State** %state.addr, align 8
  %121 = load %struct._object*, %struct._object** %tobj, align 8
  %call125 = call %struct._object* @multibytecodec_encode(%struct.MultibyteCodec* %119, %union.MultibyteCodec_State* %120, %struct._object* %121, i64* %inpos124, %struct._object* inttoptr (i64 1 to %struct._object*), i32 1)
  store %struct._object* %call125, %struct._object** %retstr, align 8
  %122 = load %struct._object*, %struct._object** %retstr, align 8
  %cmp126 = icmp eq %struct._object* %122, null
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.then.123
  br label %errorexit

if.end.128:                                       ; preds = %if.then.123
  br label %if.end.131

if.else.129:                                      ; preds = %if.end.118
  %123 = load %struct._object*, %struct._object** %tobj, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %123, i32 0, i32 0
  %124 = load i64, i64* %ob_refcnt130, align 8
  %inc = add i64 %124, 1
  store i64 %inc, i64* %ob_refcnt130, align 8
  %125 = load %struct._object*, %struct._object** %tobj, align 8
  store %struct._object* %125, %struct._object** %retstr, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.end.128
  %126 = load %struct._object*, %struct._object** %retstr, align 8
  %127 = bitcast %struct._object* %126 to %struct.PyVarObject*
  %ob_size132 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %127, i32 0, i32 1
  %128 = load i64, i64* %ob_size132, align 8
  store i64 %128, i64* %retstrsize, align 8
  %129 = load i64, i64* %retstrsize, align 8
  %cmp133 = icmp slt i64 %129, 1
  br i1 %cmp133, label %if.then.139, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %if.end.131
  %130 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf135 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %130, i32 0, i32 3
  %131 = load i8*, i8** %outbuf135, align 8
  %132 = load i64, i64* %retstrsize, align 8
  %add.ptr136 = getelementptr i8, i8* %131, i64 %132
  %133 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf_end137 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %133, i32 0, i32 4
  %134 = load i8*, i8** %outbuf_end137, align 8
  %cmp138 = icmp ugt i8* %add.ptr136, %134
  br i1 %cmp138, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %lor.lhs.false.134, %if.end.131
  %135 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %136 = load i64, i64* %retstrsize, align 8
  %call140 = call i32 @expand_encodebuffer(%struct.MultibyteEncodeBuffer* %135, i64 %136)
  %cmp141 = icmp eq i32 %call140, -1
  br i1 %cmp141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.then.139
  br label %errorexit

if.end.143:                                       ; preds = %if.then.139
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %lor.lhs.false.134
  %137 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf145 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %137, i32 0, i32 3
  %138 = load i8*, i8** %outbuf145, align 8
  %139 = load %struct._object*, %struct._object** %retstr, align 8
  %140 = bitcast %struct._object* %139 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %140, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %141 = load i64, i64* %retstrsize, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %138, i8* %arraydecay, i64 %141, i32 1, i1 false)
  %142 = load i64, i64* %retstrsize, align 8
  %143 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf146 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %143, i32 0, i32 3
  %144 = load i8*, i8** %outbuf146, align 8
  %add.ptr147 = getelementptr i8, i8* %144, i64 %142
  store i8* %add.ptr147, i8** %outbuf146, align 8
  %145 = load %struct._object*, %struct._object** %retobj, align 8
  %146 = bitcast %struct._object* %145 to %struct.PyTupleObject*
  %ob_item148 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %146, i32 0, i32 1
  %arrayidx149 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item148, i32 0, i64 1
  %147 = load %struct._object*, %struct._object** %arrayidx149, align 8
  %call150 = call i64 @PyLong_AsSsize_t(%struct._object* %147)
  store i64 %call150, i64* %newpos, align 8
  %148 = load i64, i64* %newpos, align 8
  %cmp151 = icmp slt i64 %148, 0
  br i1 %cmp151, label %land.lhs.true.152, label %if.end.157

land.lhs.true.152:                                ; preds = %if.end.144
  %call153 = call %struct._object* @PyErr_Occurred()
  %tobool154 = icmp ne %struct._object* %call153, null
  br i1 %tobool154, label %if.end.157, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.152
  %149 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inlen = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %149, i32 0, i32 2
  %150 = load i64, i64* %inlen, align 8
  %151 = load i64, i64* %newpos, align 8
  %add156 = add i64 %151, %150
  store i64 %add156, i64* %newpos, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.155, %land.lhs.true.152, %if.end.144
  %152 = load i64, i64* %newpos, align 8
  %cmp158 = icmp slt i64 %152, 0
  br i1 %cmp158, label %if.then.162, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %if.end.157
  %153 = load i64, i64* %newpos, align 8
  %154 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inlen160 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %154, i32 0, i32 2
  %155 = load i64, i64* %inlen160, align 8
  %cmp161 = icmp sgt i64 %153, %155
  br i1 %cmp161, label %if.then.162, label %if.end.164

if.then.162:                                      ; preds = %lor.lhs.false.159, %if.end.157
  call void @PyErr_Clear()
  %156 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %157 = load i64, i64* %newpos, align 8
  %call163 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %156, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i64 %157)
  br label %errorexit

if.end.164:                                       ; preds = %lor.lhs.false.159
  %158 = load i64, i64* %newpos, align 8
  %159 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %inpos165 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %159, i32 0, i32 1
  store i64 %158, i64* %inpos165, align 8
  br label %do.body.166

do.body.166:                                      ; preds = %if.end.164
  %160 = load %struct._object*, %struct._object** %retobj, align 8
  store %struct._object* %160, %struct._object** %_py_decref_tmp167, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_refcnt168 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0
  %162 = load i64, i64* %ob_refcnt168, align 8
  %dec169 = add i64 %162, -1
  store i64 %dec169, i64* %ob_refcnt168, align 8
  %cmp170 = icmp ne i64 %dec169, 0
  br i1 %cmp170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %do.body.166
  br label %if.end.175

if.else.172:                                      ; preds = %do.body.166
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  %ob_type173 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type173, align 8
  %tp_dealloc174 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc174, align 8
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp167, align 8
  call void %165(%struct._object* %166)
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.172, %if.then.171
  br label %do.end.176

do.end.176:                                       ; preds = %if.end.175
  br label %do.body.177

do.body.177:                                      ; preds = %do.end.176
  %167 = load %struct._object*, %struct._object** %retstr, align 8
  store %struct._object* %167, %struct._object** %_py_decref_tmp178, align 8
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 0
  %169 = load i64, i64* %ob_refcnt179, align 8
  %dec180 = add i64 %169, -1
  store i64 %dec180, i64* %ob_refcnt179, align 8
  %cmp181 = icmp ne i64 %dec180, 0
  br i1 %cmp181, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %do.body.177
  br label %if.end.186

if.else.183:                                      ; preds = %do.body.177
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 1
  %171 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %171, i32 0, i32 4
  %172 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  call void %172(%struct._object* %173)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  store i32 0, i32* %retval
  br label %return

errorexit:                                        ; preds = %if.then.162, %if.then.142, %if.then.127, %if.then.117, %if.then.95, %if.then.88, %if.then.84, %if.then.70, %if.then.51, %if.then.35, %if.then.11, %if.then.2
  br label %do.body.188

do.body.188:                                      ; preds = %errorexit
  %174 = load %struct._object*, %struct._object** %retobj, align 8
  store %struct._object* %174, %struct._object** %_py_xdecref_tmp, align 8
  %175 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp189 = icmp ne %struct._object* %175, null
  br i1 %cmp189, label %if.then.190, label %if.end.202

if.then.190:                                      ; preds = %do.body.188
  br label %do.body.191

do.body.191:                                      ; preds = %if.then.190
  %176 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %176, %struct._object** %_py_decref_tmp192, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_refcnt193 = getelementptr inbounds %struct._object, %struct._object* %177, i32 0, i32 0
  %178 = load i64, i64* %ob_refcnt193, align 8
  %dec194 = add i64 %178, -1
  store i64 %dec194, i64* %ob_refcnt193, align 8
  %cmp195 = icmp ne i64 %dec194, 0
  br i1 %cmp195, label %if.then.196, label %if.else.197

if.then.196:                                      ; preds = %do.body.191
  br label %if.end.200

if.else.197:                                      ; preds = %do.body.191
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  %ob_type198 = getelementptr inbounds %struct._object, %struct._object* %179, i32 0, i32 1
  %180 = load %struct._typeobject*, %struct._typeobject** %ob_type198, align 8
  %tp_dealloc199 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %180, i32 0, i32 4
  %181 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc199, align 8
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp192, align 8
  call void %181(%struct._object* %182)
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.197, %if.then.196
  br label %do.end.201

do.end.201:                                       ; preds = %if.end.200
  br label %if.end.202

if.end.202:                                       ; preds = %do.end.201, %do.body.188
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  br label %do.body.204

do.body.204:                                      ; preds = %do.end.203
  %183 = load %struct._object*, %struct._object** %retstr, align 8
  store %struct._object* %183, %struct._object** %_py_xdecref_tmp205, align 8
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp205, align 8
  %cmp206 = icmp ne %struct._object* %184, null
  br i1 %cmp206, label %if.then.207, label %if.end.219

if.then.207:                                      ; preds = %do.body.204
  br label %do.body.208

do.body.208:                                      ; preds = %if.then.207
  %185 = load %struct._object*, %struct._object** %_py_xdecref_tmp205, align 8
  store %struct._object* %185, %struct._object** %_py_decref_tmp209, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 0
  %187 = load i64, i64* %ob_refcnt210, align 8
  %dec211 = add i64 %187, -1
  store i64 %dec211, i64* %ob_refcnt210, align 8
  %cmp212 = icmp ne i64 %dec211, 0
  br i1 %cmp212, label %if.then.213, label %if.else.214

if.then.213:                                      ; preds = %do.body.208
  br label %if.end.217

if.else.214:                                      ; preds = %do.body.208
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  %ob_type215 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 1
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type215, align 8
  %tp_dealloc216 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i32 0, i32 4
  %190 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc216, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp209, align 8
  call void %190(%struct._object* %191)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.213
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  br label %if.end.219

if.end.219:                                       ; preds = %do.end.218, %do.body.204
  br label %do.end.220

do.end.220:                                       ; preds = %if.end.219
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.220, %do.end.187, %if.then.59, %sw.default, %sw.bb.4, %if.end
  %192 = load i32, i32* %retval
  ret i32 %192
}

declare i32 @_PyBytes_Resize(%struct._object**, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @expand_encodebuffer(%struct.MultibyteEncodeBuffer* %buf, i64 %esize) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct.MultibyteEncodeBuffer*, align 8
  %esize.addr = alloca i64, align 8
  %orgpos = alloca i64, align 8
  %orgsize = alloca i64, align 8
  %incsize = alloca i64, align 8
  store %struct.MultibyteEncodeBuffer* %buf, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  store i64 %esize, i64* %esize.addr, align 8
  %0 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %0, i32 0, i32 3
  %1 = load i8*, i8** %outbuf, align 8
  %2 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %2, i32 0, i32 6
  %3 = load %struct._object*, %struct._object** %outobj, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %4, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %orgpos, align 8
  %5 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj1 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %5, i32 0, i32 6
  %6 = load %struct._object*, %struct._object** %outobj1, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %orgsize, align 8
  %9 = load i64, i64* %esize.addr, align 8
  %10 = load i64, i64* %orgsize, align 8
  %shr = ashr i64 %10, 1
  %cmp = icmp slt i64 %9, %shr
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %orgsize, align 8
  %shr2 = ashr i64 %11, 1
  %or = or i64 %shr2, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* %esize.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %or, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, i64* %incsize, align 8
  %13 = load i64, i64* %orgsize, align 8
  %14 = load i64, i64* %incsize, align 8
  %sub = sub i64 9223372036854775807, %14
  %cmp3 = icmp sgt i64 %13, %sub
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %15 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj4 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %15, i32 0, i32 6
  %16 = load i64, i64* %orgsize, align 8
  %17 = load i64, i64* %incsize, align 8
  %add = add i64 %16, %17
  %call = call i32 @_PyBytes_Resize(%struct._object** %outobj4, i64 %add)
  %cmp5 = icmp eq i32 %call, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %18 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj8 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %18, i32 0, i32 6
  %19 = load %struct._object*, %struct._object** %outobj8, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_sval9 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval9, i32 0, i32 0
  %21 = load i64, i64* %orgpos, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay10, i64 %21
  %22 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf11 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %22, i32 0, i32 3
  store i8* %add.ptr, i8** %outbuf11, align 8
  %23 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj12 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %23, i32 0, i32 6
  %24 = load %struct._object*, %struct._object** %outobj12, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyBytesObject*
  %ob_sval13 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %25, i32 0, i32 2
  %arraydecay14 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval13, i32 0, i32 0
  %26 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outobj15 = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %26, i32 0, i32 6
  %27 = load %struct._object*, %struct._object** %outobj15, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyVarObject*
  %ob_size16 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size16, align 8
  %add.ptr17 = getelementptr i8, i8* %arraydecay14, i64 %29
  %30 = load %struct.MultibyteEncodeBuffer*, %struct.MultibyteEncodeBuffer** %buf.addr, align 8
  %outbuf_end = getelementptr inbounds %struct.MultibyteEncodeBuffer, %struct.MultibyteEncodeBuffer* %30, i32 0, i32 4
  store i8* %add.ptr17, i8** %outbuf_end, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare %struct._object* @PyUnicode_FromOrdinal(i32) #2

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #2

declare i32 @PyUnicodeEncodeError_SetStart(%struct._object*, i64) #2

declare i32 @PyUnicodeEncodeError_SetEnd(%struct._object*, i64) #2

declare i32 @PyUnicodeEncodeError_SetReason(%struct._object*, i8*) #2

declare %struct._object* @PyCodec_StrictErrors(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @call_error_callback(%struct._object* %errors, %struct._object* %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %errors.addr = alloca %struct._object*, align 8
  %exc.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %cb = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store %struct._object* %errors, %struct._object** %errors.addr, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %errors.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %0)
  store i8* %call, i8** %str, align 8
  %1 = load i8*, i8** %str, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str, align 8
  %call1 = call %struct._object* @PyCodec_LookupError(i8* %2)
  store %struct._object* %call1, %struct._object** %cb, align 8
  %3 = load %struct._object*, %struct._object** %cb, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call5, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %5 = load %struct._object*, %struct._object** %cb, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %exc.addr, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %12, %struct._object** %arrayidx, align 8
  %15 = load %struct._object*, %struct._object** %exc.addr, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt12, align 8
  %17 = load %struct._object*, %struct._object** %cb, align 8
  %18 = load %struct._object*, %struct._object** %args, align 8
  %call13 = call %struct._object* @PyObject_CallObject(%struct._object* %17, %struct._object* %18)
  store %struct._object* %call13, %struct._object** %r, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.11
  %19 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %26 = load %struct._object*, %struct._object** %cb, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp26, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %28, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %31(%struct._object* %32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %33 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.35, %do.end, %if.then.3, %if.then
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

declare i64 @PyLong_AsSsize_t(%struct._object*) #2

declare void @PyErr_Clear() #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i8* @PyUnicode_AsUTF8(%struct._object*) #2

declare %struct._object* @PyCodec_LookupError(i8*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @codecctx_errors_get(%struct.MultibyteStatefulCodecContext* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStatefulCodecContext*, align 8
  %errors = alloca i8*, align 8
  store %struct.MultibyteStatefulCodecContext* %self, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %0 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp = icmp eq %struct._object* %1, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0), i8** %errors, align 8
  br label %if.end.13

if.else:                                          ; preds = %entry
  %2 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors2 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors2, align 8
  %cmp3 = icmp eq %struct._object* %3, inttoptr (i64 2 to %struct._object*)
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** %errors, align 8
  br label %if.end.12

if.else.5:                                        ; preds = %if.else
  %4 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors6 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors6, align 8
  %cmp7 = icmp eq %struct._object* %5, inttoptr (i64 3 to %struct._object*)
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.5
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8** %errors, align 8
  br label %if.end

if.else.9:                                        ; preds = %if.else.5
  %6 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors10 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %errors10, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors11 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %errors11, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  %11 = load i8*, i8** %errors, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %11)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else.9
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @codecctx_errors_set(%struct.MultibyteStatefulCodecContext* %self, %struct._object* %value, i8* %closure) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteStatefulCodecContext*, align 8
  %value.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  %cb = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteStatefulCodecContext* %self, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  store %struct._object* %value, %struct._object** %value.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._object*, %struct._object** %value.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %value.addr, align 8
  %call = call i8* @PyUnicode_AsUTF8(%struct._object* %4)
  store i8* %call, i8** %str, align 8
  %5 = load i8*, i8** %str, align 8
  %cmp1 = icmp eq i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i8*, i8** %str, align 8
  %call4 = call %struct._object* @internal_error_callback(i8* %6)
  store %struct._object* %call4, %struct._object** %cb, align 8
  %7 = load %struct._object*, %struct._object** %cb, align 8
  %cmp5 = icmp eq %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %8 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %errors, align 8
  %cmp8 = icmp ne %struct._object* %9, null
  br i1 %cmp8, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %do.body
  %10 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors9 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %errors9, align 8
  %cmp10 = icmp ult %struct._object* %11, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors11 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %errors11, align 8
  %cmp12 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %13
  br i1 %cmp12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %14 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors15 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %errors15, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.14
  br label %if.end.19

if.else:                                          ; preds = %do.body.14
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  %22 = load %struct._object*, %struct._object** %cb, align 8
  %23 = load %struct.MultibyteStatefulCodecContext*, %struct.MultibyteStatefulCodecContext** %self.addr, align 8
  %errors22 = getelementptr inbounds %struct.MultibyteStatefulCodecContext, %struct.MultibyteStatefulCodecContext* %23, i32 0, i32 3
  store %struct._object* %22, %struct._object** %errors22, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.21, %if.then.6, %if.then.2, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._object* @PyUnicode_FromString(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @internal_error_callback(i8* %errors) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %errors.addr = alloca i8*, align 8
  store i8* %errors, i8** %errors.addr, align 8
  %0 = load i8*, i8** %errors.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %errors.addr, align 8
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #6
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct._object* inttoptr (i64 1 to %struct._object*), %struct._object** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i8*, i8** %errors.addr, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #6
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* inttoptr (i64 2 to %struct._object*), %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %3 = load i8*, i8** %errors.addr, align 8
  %call6 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #6
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.5
  store %struct._object* inttoptr (i64 3 to %struct._object*), %struct._object** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.5
  %4 = load i8*, i8** %errors.addr, align 8
  %call10 = call %struct._object* @PyUnicode_FromString(i8* %4)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.9, %if.then.8, %if.then.4, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @mbidecoder_dealloc(%struct.MultibyteIncrementalDecoderObject* %self) #0 {
entry:
  %self.addr = alloca %struct.MultibyteIncrementalDecoderObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteIncrementalDecoderObject* %self, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %0 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteIncrementalDecoderObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* %5, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %errors3, align 8
  %cmp4 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %7
  br i1 %cmp4, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %8 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors6 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %errors6, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.5
  br label %if.end

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %16 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %17 = bitcast %struct.MultibyteIncrementalDecoderObject* %16 to %struct._object*
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %20 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %21 = bitcast %struct.MultibyteIncrementalDecoderObject* %20 to i8*
  call void %19(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mbidecoder_traverse(%struct.MultibyteIncrementalDecoderObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteIncrementalDecoderObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.MultibyteIncrementalDecoderObject* %self, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ult %struct._object* %1, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %3
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors3, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %do.body
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %7 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors5 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %errors5, align 8
  %9 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %6(%struct._object* %8, i8* %9)
  store i32 %call, i32* %vret, align 4
  %10 = load i32, i32* %vret, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %11 = load i32, i32* %vret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.7
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @mbidecoder_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbidecoder_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.MultibyteIncrementalDecoderObject*, align 8
  %codec = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %codec, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i32 0, i32 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @incnewkwarglist, i32 0, i32 0), i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.MultibyteIncrementalDecoderObject*
  store %struct.MultibyteIncrementalDecoderObject* %5, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %6 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %cmp = icmp eq %struct.MultibyteIncrementalDecoderObject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %call4 = call %struct._object* @PyObject_GetAttrString(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %codec, align 8
  %9 = load %struct._object*, %struct._object** %codec, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %errorexit

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %codec, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %11, @MultibyteCodec_Type
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %errorexit

if.end.10:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %codec, align 8
  %14 = bitcast %struct._object* %13 to %struct.MultibyteCodecObject*
  %codec11 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %14, i32 0, i32 1
  %15 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec11, align 8
  %16 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %codec12 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %16, i32 0, i32 1
  store %struct.MultibyteCodec* %15, %struct.MultibyteCodec** %codec12, align 8
  %17 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %17, i32 0, i32 5
  store i64 0, i64* %pendingsize, align 8
  %18 = load i8*, i8** %errors, align 8
  %call13 = call %struct._object* @internal_error_callback(i8* %18)
  %19 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %errors14 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %19, i32 0, i32 3
  store %struct._object* %call13, %struct._object** %errors14, align 8
  %20 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %errors15 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %20, i32 0, i32 3
  %21 = load %struct._object*, %struct._object** %errors15, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.10
  br label %errorexit

if.end.18:                                        ; preds = %if.end.10
  %22 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %codec19 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %22, i32 0, i32 1
  %23 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec19, align 8
  %decinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %23, i32 0, i32 7
  %24 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit, align 8
  %cmp20 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %24, null
  br i1 %cmp20, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.18
  %25 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %codec21 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %25, i32 0, i32 1
  %26 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec21, align 8
  %decinit22 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %26, i32 0, i32 7
  %27 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit22, align 8
  %28 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %state = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %28, i32 0, i32 2
  %29 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %codec23 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %29, i32 0, i32 1
  %30 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec23, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %30, i32 0, i32 1
  %31 = load i8*, i8** %config, align 8
  %call24 = call i32 %27(%union.MultibyteCodec_State* %state, i8* %31)
  %cmp25 = icmp ne i32 %call24, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.27:                                        ; preds = %land.lhs.true, %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %32 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %39 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %40 = bitcast %struct.MultibyteIncrementalDecoderObject* %39 to %struct._object*
  store %struct._object* %40, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.26, %if.then.17, %if.then.9, %if.then.6
  br label %do.body.32

do.body.32:                                       ; preds = %errorexit
  %41 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self, align 8
  %42 = bitcast %struct.MultibyteIncrementalDecoderObject* %41 to %struct._object*
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %43, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.32
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp36, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %46, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %49(%struct._object* %50)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %if.end.46

if.end.46:                                        ; preds = %do.end.45, %do.body.32
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %51 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp49, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %52, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp53, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %55, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %58(%struct._object* %59)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.64, %do.end, %if.then.2, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbidecoder_decode(%struct.MultibyteIncrementalDecoderObject* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteIncrementalDecoderObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %buf = alloca %struct.MultibyteDecodeBuffer, align 8
  %data = alloca i8*, align 8
  %wdata = alloca i8*, align 8
  %pdata = alloca %struct.bufferinfo, align 8
  %wsize = alloca i64, align 8
  %size = alloca i64, align 8
  %origpending = alloca i64, align 8
  %final = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  store %struct.MultibyteIncrementalDecoderObject* %self, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %wdata, align 8
  store i32 0, i32* %final, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @incrementalkwarglist, i32 0, i32 0), %struct.bufferinfo* %pdata, i32* %final)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 0
  %2 = load i8*, i8** %buf1, align 8
  store i8* %2, i8** %data, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %size, align 8
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %excobj = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  store %struct._object* null, %struct._object** %excobj, align 8
  %4 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %4, i32 0, i32 5
  %5 = load i64, i64* %pendingsize, align 8
  store i64 %5, i64* %origpending, align 8
  %6 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize2 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %6, i32 0, i32 5
  %7 = load i64, i64* %pendingsize2, align 8
  %cmp = icmp eq i64 %7, 0
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %8 = load i64, i64* %size, align 8
  store i64 %8, i64* %wsize, align 8
  %9 = load i8*, i8** %data, align 8
  store i8* %9, i8** %wdata, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %10 = load i64, i64* %size, align 8
  %11 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize4 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %11, i32 0, i32 5
  %12 = load i64, i64* %pendingsize4, align 8
  %sub = sub i64 9223372036854775807, %12
  %cmp5 = icmp sgt i64 %10, %sub
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.else
  %call7 = call %struct._object* @PyErr_NoMemory()
  br label %errorexit

if.end.8:                                         ; preds = %if.else
  %13 = load i64, i64* %size, align 8
  %14 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize9 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %14, i32 0, i32 5
  %15 = load i64, i64* %pendingsize9, align 8
  %add = add i64 %13, %15
  store i64 %add, i64* %wsize, align 8
  %16 = load i64, i64* %wsize, align 8
  %call10 = call i8* @PyMem_Malloc(i64 %16)
  store i8* %call10, i8** %wdata, align 8
  %17 = load i8*, i8** %wdata, align 8
  %cmp11 = icmp eq i8* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.8
  %call13 = call %struct._object* @PyErr_NoMemory()
  br label %errorexit

if.end.14:                                        ; preds = %if.end.8
  %18 = load i8*, i8** %wdata, align 8
  %19 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %19, i32 0, i32 4
  %20 = bitcast [8 x i8]* %pending to i8*
  %21 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize15 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %21, i32 0, i32 5
  %22 = load i64, i64* %pendingsize15, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %22, i32 1, i1 false)
  %23 = load i8*, i8** %wdata, align 8
  %24 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize16 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %24, i32 0, i32 5
  %25 = load i64, i64* %pendingsize16, align 8
  %add.ptr = getelementptr i8, i8* %23, i64 %25
  %26 = load i8*, i8** %data, align 8
  %27 = load i64, i64* %size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %26, i64 %27, i32 1, i1 false)
  %28 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize17 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %28, i32 0, i32 5
  store i64 0, i64* %pendingsize17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.14, %if.then.3
  %29 = load i8*, i8** %wdata, align 8
  %30 = load i64, i64* %wsize, align 8
  %call19 = call i32 @decoder_prepare_buffer(%struct.MultibyteDecodeBuffer* %buf, i8* %29, i64 %30)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.18
  br label %errorexit

if.end.22:                                        ; preds = %if.end.18
  %31 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %32 = bitcast %struct.MultibyteIncrementalDecoderObject* %31 to %struct.MultibyteStatefulDecoderContext*
  %call23 = call i32 @decoder_feed_buffer(%struct.MultibyteStatefulDecoderContext* %32, %struct.MultibyteDecodeBuffer* %buf)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  br label %errorexit

if.end.26:                                        ; preds = %if.end.22
  %33 = load i32, i32* %final, align 4
  %tobool27 = icmp ne i32 %33, 0
  br i1 %tobool27, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %if.end.26
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %34 = load i8*, i8** %inbuf, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %35 = load i8*, i8** %inbuf_end, align 8
  %cmp28 = icmp ult i8* %34, %35
  br i1 %cmp28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %land.lhs.true
  %36 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %36, i32 0, i32 1
  %37 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %38 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %38, i32 0, i32 2
  %39 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %39, i32 0, i32 3
  %40 = load %struct._object*, %struct._object** %errors, align 8
  %call30 = call i32 @multibytecodec_decerror(%struct.MultibyteCodec* %37, %union.MultibyteCodec_State* %state, %struct.MultibyteDecodeBuffer* %buf, %struct._object* %40, i64 -2)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.29
  %41 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pending33 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %41, i32 0, i32 4
  %42 = bitcast [8 x i8]* %pending33 to i8*
  %43 = load i8*, i8** %wdata, align 8
  %44 = load i64, i64* %origpending, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 %44, i32 1, i1 false)
  %45 = load i64, i64* %origpending, align 8
  %46 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize34 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %46, i32 0, i32 5
  store i64 %45, i64* %pendingsize34, align 8
  br label %errorexit

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %land.lhs.true, %if.end.26
  %inbuf37 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %47 = load i8*, i8** %inbuf37, align 8
  %inbuf_end38 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %48 = load i8*, i8** %inbuf_end38, align 8
  %cmp39 = icmp ult i8* %47, %48
  br i1 %cmp39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.36
  %49 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %50 = bitcast %struct.MultibyteIncrementalDecoderObject* %49 to %struct.MultibyteStatefulDecoderContext*
  %call41 = call i32 @decoder_append_pending(%struct.MultibyteStatefulDecoderContext* %50, %struct.MultibyteDecodeBuffer* %buf)
  %cmp42 = icmp ne i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  br label %errorexit

if.end.44:                                        ; preds = %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  %writer46 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %call47 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer46)
  store %struct._object* %call47, %struct._object** %res, align 8
  %51 = load %struct._object*, %struct._object** %res, align 8
  %cmp48 = icmp eq %struct._object* %51, null
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  br label %errorexit

if.end.50:                                        ; preds = %if.end.45
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  %52 = load i8*, i8** %wdata, align 8
  %53 = load i8*, i8** %data, align 8
  %cmp51 = icmp ne i8* %52, %53
  br i1 %cmp51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.50
  %54 = load i8*, i8** %wdata, align 8
  call void @PyMem_Free(i8* %54)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.end.50
  br label %do.body

do.body:                                          ; preds = %if.end.53
  %excobj54 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %55 = load %struct._object*, %struct._object** %excobj54, align 8
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp, align 8
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp55 = icmp ne %struct._object* %56, null
  br i1 %cmp55, label %if.then.56, label %if.end.62

if.then.56:                                       ; preds = %do.body
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp58 = icmp ne i64 %dec, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.57
  br label %if.end.61

if.else.60:                                       ; preds = %do.body.57
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %62(%struct._object* %63)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end

do.end:                                           ; preds = %if.end.61
  br label %if.end.62

if.end.62:                                        ; preds = %do.end, %do.body
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  %64 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %64, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.49, %if.then.43, %if.then.32, %if.then.25, %if.then.21, %if.then.12, %if.then.6
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  %65 = load i8*, i8** %wdata, align 8
  %cmp64 = icmp ne i8* %65, null
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.68

land.lhs.true.65:                                 ; preds = %errorexit
  %66 = load i8*, i8** %wdata, align 8
  %67 = load i8*, i8** %data, align 8
  %cmp66 = icmp ne i8* %66, %67
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.65
  %68 = load i8*, i8** %wdata, align 8
  call void @PyMem_Free(i8* %68)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.65, %errorexit
  br label %do.body.69

do.body.69:                                       ; preds = %if.end.68
  %excobj71 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %69 = load %struct._object*, %struct._object** %excobj71, align 8
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp70, align 8
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  %cmp72 = icmp ne %struct._object* %70, null
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %do.body.69
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp75, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %73, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %76(%struct._object* %77)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.69
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  %writer87 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer87)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.86, %do.end.63, %if.then
  %78 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %78
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbidecoder_reset(%struct.MultibyteIncrementalDecoderObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteIncrementalDecoderObject*, align 8
  store %struct.MultibyteIncrementalDecoderObject* %self, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %0 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %0, i32 0, i32 1
  %1 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %decreset = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %1, i32 0, i32 8
  %2 = load i64 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)** %decreset, align 8
  %cmp = icmp ne i64 (%union.MultibyteCodec_State*, i8*)* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %codec1 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %3, i32 0, i32 1
  %4 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec1, align 8
  %decreset2 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %4, i32 0, i32 8
  %5 = load i64 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)** %decreset2, align 8
  %6 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %6, i32 0, i32 2
  %7 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %codec3 = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %7, i32 0, i32 1
  %8 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec3, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %8, i32 0, i32 1
  %9 = load i8*, i8** %config, align 8
  %call = call i64 %5(%union.MultibyteCodec_State* %state, i8* %9)
  %cmp4 = icmp ne i64 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.MultibyteIncrementalDecoderObject*, %struct.MultibyteIncrementalDecoderObject** %self.addr, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteIncrementalDecoderObject, %struct.MultibyteIncrementalDecoderObject* %10, i32 0, i32 5
  store i64 0, i64* %pendingsize, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter*) #2

declare i8* @PyMem_Malloc(i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @decoder_prepare_buffer(%struct.MultibyteDecodeBuffer* %buf, i8* %data, i64 %size) #0 {
entry:
  %buf.addr = alloca %struct.MultibyteDecodeBuffer*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.MultibyteDecodeBuffer* %buf, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %1, i32 0, i32 1
  store i8* %0, i8** %inbuf_top, align 8
  %2 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %2, i32 0, i32 0
  store i8* %0, i8** %inbuf, align 8
  %3 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top1 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %3, i32 0, i32 1
  %4 = load i8*, i8** %inbuf_top1, align 8
  %5 = load i64, i64* %size.addr, align 8
  %add.ptr = getelementptr i8, i8* %4, i64 %5
  %6 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %6, i32 0, i32 2
  store i8* %add.ptr, i8** %inbuf_end, align 8
  %7 = load i64, i64* %size.addr, align 8
  %8 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %8, i32 0, i32 4
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer, i32 0, i32 6
  %9 = load i64, i64* %min_length, align 8
  %add = add i64 %9, %7
  store i64 %add, i64* %min_length, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @decoder_feed_buffer(%struct.MultibyteStatefulDecoderContext* %ctx, %struct.MultibyteDecodeBuffer* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.MultibyteStatefulDecoderContext*, align 8
  %buf.addr = alloca %struct.MultibyteDecodeBuffer*, align 8
  %inleft = alloca i64, align 8
  %r = alloca i64, align 8
  store %struct.MultibyteStatefulDecoderContext* %ctx, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  store %struct.MultibyteDecodeBuffer* %buf, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %0, i32 0, i32 0
  %1 = load i8*, i8** %inbuf, align 8
  %2 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %2, i32 0, i32 2
  %3 = load i8*, i8** %inbuf_end, align 8
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end1 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %4, i32 0, i32 2
  %5 = load i8*, i8** %inbuf_end1, align 8
  %6 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf2 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %6, i32 0, i32 0
  %7 = load i8*, i8** %inbuf2, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %inleft, align 8
  %8 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %8, i32 0, i32 1
  %9 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %decode = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %9, i32 0, i32 6
  %10 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)** %decode, align 8
  %11 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %11, i32 0, i32 2
  %12 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %codec3 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %12, i32 0, i32 1
  %13 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec3, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %13, i32 0, i32 1
  %14 = load i8*, i8** %config, align 8
  %15 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf4 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %15, i32 0, i32 0
  %16 = load i64, i64* %inleft, align 8
  %17 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %17, i32 0, i32 4
  %call = call i64 %10(%union.MultibyteCodec_State* %state, i8* %14, i8** %inbuf4, i64 %16, %struct._PyUnicodeWriter* %writer)
  store i64 %call, i64* %r, align 8
  %18 = load i64, i64* %r, align 8
  %cmp5 = icmp eq i64 %18, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %19 = load i64, i64* %r, align 8
  %cmp6 = icmp eq i64 %19, -2
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %codec7 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %20, i32 0, i32 1
  %21 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec7, align 8
  %22 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %state8 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %22, i32 0, i32 2
  %23 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %24 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %errors, align 8
  %26 = load i64, i64* %r, align 8
  %call9 = call i32 @multibytecodec_decerror(%struct.MultibyteCodec* %21, %union.MultibyteCodec_State* %state8, %struct.MultibyteDecodeBuffer* %23, %struct._object* %25, i64 %26)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @multibytecodec_decerror(%struct.MultibyteCodec* %codec, %union.MultibyteCodec_State* %state, %struct.MultibyteDecodeBuffer* %buf, %struct._object* %errors, i64 %e) #0 {
entry:
  %retval = alloca i32, align 4
  %codec.addr = alloca %struct.MultibyteCodec*, align 8
  %state.addr = alloca %union.MultibyteCodec_State*, align 8
  %buf.addr = alloca %struct.MultibyteDecodeBuffer*, align 8
  %errors.addr = alloca %struct._object*, align 8
  %e.addr = alloca i64, align 8
  %retobj = alloca %struct._object*, align 8
  %retuni = alloca %struct._object*, align 8
  %newpos = alloca i64, align 8
  %reason = alloca i8*, align 8
  %esize = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp114 = alloca %struct._object*, align 8
  store %struct.MultibyteCodec* %codec, %struct.MultibyteCodec** %codec.addr, align 8
  store %union.MultibyteCodec_State* %state, %union.MultibyteCodec_State** %state.addr, align 8
  store %struct.MultibyteDecodeBuffer* %buf, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  store %struct._object* %errors, %struct._object** %errors.addr, align 8
  store i64 %e, i64* %e.addr, align 8
  store %struct._object* null, %struct._object** %retobj, align 8
  store %struct._object* null, %struct._object** %retuni, align 8
  %0 = load i64, i64* %e.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0), i8** %reason, align 8
  %1 = load i64, i64* %e.addr, align 8
  store i64 %1, i64* %esize, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %e.addr, align 8
  switch i64 %2, label %sw.default [
    i64 -1, label %sw.bb
    i64 -2, label %sw.bb.1
    i64 -3, label %sw.bb.2
    i64 -4, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.else
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8** %reason, align 8
  %3 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %3, i32 0, i32 2
  %4 = load i8*, i8** %inbuf_end, align 8
  %5 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %inbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %esize, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.1
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then
  %9 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp4 = icmp eq %struct._object* %9, inttoptr (i64 3 to %struct._object*)
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %10, i32 0, i32 4
  %call = call i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter* %writer, i32 65533)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  br label %errorexit

if.end.8:                                         ; preds = %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.end
  %11 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp10 = icmp eq %struct._object* %11, inttoptr (i64 2 to %struct._object*)
  br i1 %cmp10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %12 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp11 = icmp eq %struct._object* %12, inttoptr (i64 3 to %struct._object*)
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %lor.lhs.false, %if.end.9
  %13 = load i64, i64* %esize, align 8
  %14 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf13 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %inbuf13, align 8
  %add.ptr = getelementptr i8, i8* %15, i64 %13
  store i8* %add.ptr, i8** %inbuf13, align 8
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %16 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf15 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %16, i32 0, i32 0
  %17 = load i8*, i8** %inbuf15, align 8
  %18 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %18, i32 0, i32 1
  %19 = load i8*, i8** %inbuf_top, align 8
  %sub.ptr.lhs.cast16 = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast17 = ptrtoint i8* %19 to i64
  %sub.ptr.sub18 = sub i64 %sub.ptr.lhs.cast16, %sub.ptr.rhs.cast17
  store i64 %sub.ptr.sub18, i64* %start, align 8
  %20 = load i64, i64* %start, align 8
  %21 = load i64, i64* %esize, align 8
  %add = add i64 %20, %21
  store i64 %add, i64* %end, align 8
  %22 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %excobj, align 8
  %cmp19 = icmp eq %struct._object* %23, null
  br i1 %cmp19, label %if.then.20, label %if.else.33

if.then.20:                                       ; preds = %if.end.14
  %24 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec.addr, align 8
  %encoding = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %24, i32 0, i32 0
  %25 = load i8*, i8** %encoding, align 8
  %26 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top21 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %26, i32 0, i32 1
  %27 = load i8*, i8** %inbuf_top21, align 8
  %28 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end22 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %28, i32 0, i32 2
  %29 = load i8*, i8** %inbuf_end22, align 8
  %30 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top23 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %30, i32 0, i32 1
  %31 = load i8*, i8** %inbuf_top23, align 8
  %sub.ptr.lhs.cast24 = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast25 = ptrtoint i8* %31 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast24, %sub.ptr.rhs.cast25
  %32 = load i64, i64* %start, align 8
  %33 = load i64, i64* %end, align 8
  %34 = load i8*, i8** %reason, align 8
  %call27 = call %struct._object* @PyUnicodeDecodeError_Create(i8* %25, i8* %27, i64 %sub.ptr.sub26, i64 %32, i64 %33, i8* %34)
  %35 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj28 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %35, i32 0, i32 3
  store %struct._object* %call27, %struct._object** %excobj28, align 8
  %36 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj29 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %36, i32 0, i32 3
  %37 = load %struct._object*, %struct._object** %excobj29, align 8
  %cmp30 = icmp eq %struct._object* %37, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.20
  br label %errorexit

if.end.32:                                        ; preds = %if.then.20
  br label %if.end.46

if.else.33:                                       ; preds = %if.end.14
  %38 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj34 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %38, i32 0, i32 3
  %39 = load %struct._object*, %struct._object** %excobj34, align 8
  %40 = load i64, i64* %start, align 8
  %call35 = call i32 @PyUnicodeDecodeError_SetStart(%struct._object* %39, i64 %40)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then.44, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.else.33
  %41 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj37 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %41, i32 0, i32 3
  %42 = load %struct._object*, %struct._object** %excobj37, align 8
  %43 = load i64, i64* %end, align 8
  %call38 = call i32 @PyUnicodeDecodeError_SetEnd(%struct._object* %42, i64 %43)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.44, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %44 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj41 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %44, i32 0, i32 3
  %45 = load %struct._object*, %struct._object** %excobj41, align 8
  %46 = load i8*, i8** %reason, align 8
  %call42 = call i32 @PyUnicodeDecodeError_SetReason(%struct._object* %45, i8* %46)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.40, %lor.lhs.false.36, %if.else.33
  br label %errorexit

if.end.45:                                        ; preds = %lor.lhs.false.40
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.32
  %47 = load %struct._object*, %struct._object** %errors.addr, align 8
  %cmp47 = icmp eq %struct._object* %47, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp47, label %if.then.48, label %if.end.51

if.then.48:                                       ; preds = %if.end.46
  %48 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj49 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %48, i32 0, i32 3
  %49 = load %struct._object*, %struct._object** %excobj49, align 8
  %call50 = call %struct._object* @PyCodec_StrictErrors(%struct._object* %49)
  br label %errorexit

if.end.51:                                        ; preds = %if.end.46
  %50 = load %struct._object*, %struct._object** %errors.addr, align 8
  %51 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %excobj52 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %51, i32 0, i32 3
  %52 = load %struct._object*, %struct._object** %excobj52, align 8
  %call53 = call %struct._object* @call_error_callback(%struct._object* %50, %struct._object* %52)
  store %struct._object* %call53, %struct._object** %retobj, align 8
  %53 = load %struct._object*, %struct._object** %retobj, align 8
  %cmp54 = icmp eq %struct._object* %53, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.51
  br label %errorexit

if.end.56:                                        ; preds = %if.end.51
  %54 = load %struct._object*, %struct._object** %retobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 19
  %56 = load i64, i64* %tp_flags, align 8
  %and = and i64 %56, 67108864
  %cmp57 = icmp ne i64 %and, 0
  br i1 %cmp57, label %lor.lhs.false.58, label %if.then.72

lor.lhs.false.58:                                 ; preds = %if.end.56
  %57 = load %struct._object*, %struct._object** %retobj, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %58, i32 0, i32 1
  %59 = load i64, i64* %ob_size, align 8
  %cmp59 = icmp ne i64 %59, 2
  br i1 %cmp59, label %if.then.72, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.58
  %60 = load %struct._object*, %struct._object** %retobj, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %61, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %62 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %62, %struct._object** %retuni, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_flags62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 19
  %64 = load i64, i64* %tp_flags62, align 8
  %and63 = and i64 %64, 268435456
  %cmp64 = icmp ne i64 %and63, 0
  br i1 %cmp64, label %lor.lhs.false.65, label %if.then.72

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %65 = load %struct._object*, %struct._object** %retobj, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyTupleObject*
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %66, i32 0, i32 1
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 1
  %67 = load %struct._object*, %struct._object** %arrayidx67, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_flags69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 19
  %69 = load i64, i64* %tp_flags69, align 8
  %and70 = and i64 %69, 16777216
  %cmp71 = icmp ne i64 %and70, 0
  br i1 %cmp71, label %if.end.73, label %if.then.72

if.then.72:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.60, %lor.lhs.false.58, %if.end.56
  %70 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.28, i32 0, i32 0))
  br label %errorexit

if.end.73:                                        ; preds = %lor.lhs.false.65
  %71 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %writer74 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %71, i32 0, i32 4
  %72 = load %struct._object*, %struct._object** %retuni, align 8
  %call75 = call i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter* %writer74, %struct._object* %72)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  br label %errorexit

if.end.78:                                        ; preds = %if.end.73
  %73 = load %struct._object*, %struct._object** %retobj, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyTupleObject*
  %ob_item79 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %74, i32 0, i32 1
  %arrayidx80 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item79, i32 0, i64 1
  %75 = load %struct._object*, %struct._object** %arrayidx80, align 8
  %call81 = call i64 @PyLong_AsSsize_t(%struct._object* %75)
  store i64 %call81, i64* %newpos, align 8
  %76 = load i64, i64* %newpos, align 8
  %cmp82 = icmp slt i64 %76, 0
  br i1 %cmp82, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.end.78
  %call83 = call %struct._object* @PyErr_Occurred()
  %tobool84 = icmp ne %struct._object* %call83, null
  br i1 %tobool84, label %if.end.92, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true
  %77 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end86 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %77, i32 0, i32 2
  %78 = load i8*, i8** %inbuf_end86, align 8
  %79 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top87 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %79, i32 0, i32 1
  %80 = load i8*, i8** %inbuf_top87, align 8
  %sub.ptr.lhs.cast88 = ptrtoint i8* %78 to i64
  %sub.ptr.rhs.cast89 = ptrtoint i8* %80 to i64
  %sub.ptr.sub90 = sub i64 %sub.ptr.lhs.cast88, %sub.ptr.rhs.cast89
  %81 = load i64, i64* %newpos, align 8
  %add91 = add i64 %81, %sub.ptr.sub90
  store i64 %add91, i64* %newpos, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.85, %land.lhs.true, %if.end.78
  %82 = load i64, i64* %newpos, align 8
  %cmp93 = icmp slt i64 %82, 0
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false.94

lor.lhs.false.94:                                 ; preds = %if.end.92
  %83 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top95 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %83, i32 0, i32 1
  %84 = load i8*, i8** %inbuf_top95, align 8
  %85 = load i64, i64* %newpos, align 8
  %add.ptr96 = getelementptr i8, i8* %84, i64 %85
  %86 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end97 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %86, i32 0, i32 2
  %87 = load i8*, i8** %inbuf_end97, align 8
  %cmp98 = icmp ugt i8* %add.ptr96, %87
  br i1 %cmp98, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %lor.lhs.false.94, %if.end.92
  call void @PyErr_Clear()
  %88 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %89 = load i64, i64* %newpos, align 8
  %call100 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i32 0, i32 0), i64 %89)
  br label %errorexit

if.end.101:                                       ; preds = %lor.lhs.false.94
  %90 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_top102 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %90, i32 0, i32 1
  %91 = load i8*, i8** %inbuf_top102, align 8
  %92 = load i64, i64* %newpos, align 8
  %add.ptr103 = getelementptr i8, i8* %91, i64 %92
  %93 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf104 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %93, i32 0, i32 0
  store i8* %add.ptr103, i8** %inbuf104, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.101
  %94 = load %struct._object*, %struct._object** %retobj, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %96, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp105 = icmp ne i64 %dec, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body
  br label %if.end.109

if.else.107:                                      ; preds = %do.body
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %99(%struct._object* %100)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end

do.end:                                           ; preds = %if.end.109
  store i32 0, i32* %retval
  br label %return

errorexit:                                        ; preds = %if.then.99, %if.then.77, %if.then.72, %if.then.55, %if.then.48, %if.then.44, %if.then.31, %if.then.7
  br label %do.body.110

do.body.110:                                      ; preds = %errorexit
  %101 = load %struct._object*, %struct._object** %retobj, align 8
  store %struct._object* %101, %struct._object** %_py_xdecref_tmp, align 8
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp111 = icmp ne %struct._object* %102, null
  br i1 %cmp111, label %if.then.112, label %if.end.124

if.then.112:                                      ; preds = %do.body.110
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp114, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_refcnt115 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt115, align 8
  %dec116 = add i64 %105, -1
  store i64 %dec116, i64* %ob_refcnt115, align 8
  %cmp117 = icmp ne i64 %dec116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.113
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.113
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp114, align 8
  call void %108(%struct._object* %109)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  br label %if.end.124

if.end.124:                                       ; preds = %do.end.123, %do.body.110
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.125, %do.end, %if.then.12, %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb
  %110 = load i32, i32* %retval
  ret i32 %110
}

; Function Attrs: nounwind uwtable
define internal i32 @decoder_append_pending(%struct.MultibyteStatefulDecoderContext* %ctx, %struct.MultibyteDecodeBuffer* %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.MultibyteStatefulDecoderContext*, align 8
  %buf.addr = alloca %struct.MultibyteDecodeBuffer*, align 8
  %npendings = alloca i64, align 8
  store %struct.MultibyteStatefulDecoderContext* %ctx, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  store %struct.MultibyteDecodeBuffer* %buf, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %0 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %0, i32 0, i32 2
  %1 = load i8*, i8** %inbuf_end, align 8
  %2 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %2, i32 0, i32 0
  %3 = load i8*, i8** %inbuf, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %npendings, align 8
  %4 = load i64, i64* %npendings, align 8
  %5 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %5, i32 0, i32 5
  %6 = load i64, i64* %pendingsize, align 8
  %add = add i64 %4, %6
  %cmp = icmp sgt i64 %add, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i64, i64* %npendings, align 8
  %8 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %pendingsize1 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %8, i32 0, i32 5
  %9 = load i64, i64* %pendingsize1, align 8
  %sub = sub i64 9223372036854775807, %9
  %cmp2 = icmp sgt i64 %7, %sub
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %10 = load %struct._object*, %struct._object** @PyExc_UnicodeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %11 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %pending, i32 0, i32 0
  %12 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %pendingsize3 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %12, i32 0, i32 5
  %13 = load i64, i64* %pendingsize3, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %13
  %14 = load %struct.MultibyteDecodeBuffer*, %struct.MultibyteDecodeBuffer** %buf.addr, align 8
  %inbuf4 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %14, i32 0, i32 0
  %15 = load i8*, i8** %inbuf4, align 8
  %16 = load i64, i64* %npendings, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %15, i64 %16, i32 1, i1 false)
  %17 = load i64, i64* %npendings, align 8
  %18 = load %struct.MultibyteStatefulDecoderContext*, %struct.MultibyteStatefulDecoderContext** %ctx.addr, align 8
  %pendingsize5 = getelementptr inbounds %struct.MultibyteStatefulDecoderContext, %struct.MultibyteStatefulDecoderContext* %18, i32 0, i32 5
  %19 = load i64, i64* %pendingsize5, align 8
  %add6 = add i64 %19, %17
  store i64 %add6, i64* %pendingsize5, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter*) #2

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

declare void @PyMem_Free(i8*) #2

declare void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter*) #2

declare i32 @_PyUnicodeWriter_WriteChar(%struct._PyUnicodeWriter*, i32) #2

declare %struct._object* @PyUnicodeDecodeError_Create(i8*, i8*, i64, i64, i64, i8*) #2

declare i32 @PyUnicodeDecodeError_SetStart(%struct._object*, i64) #2

declare i32 @PyUnicodeDecodeError_SetEnd(%struct._object*, i64) #2

declare i32 @PyUnicodeDecodeError_SetReason(%struct._object*, i8*) #2

declare i32 @_PyUnicodeWriter_WriteStr(%struct._PyUnicodeWriter*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @mbstreamreader_dealloc(%struct.MultibyteStreamReaderObject* %self) #0 {
entry:
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %0 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteStreamReaderObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* %5, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %errors3, align 8
  %cmp4 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %7
  br i1 %cmp4, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %8 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors6 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %errors6, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.5
  br label %if.end

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %16 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %16, i32 0, i32 6
  %17 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.body.11
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.11
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %26 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %27 = bitcast %struct.MultibyteStreamReaderObject* %26 to %struct._object*
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 38
  %29 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %30 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %31 = bitcast %struct.MultibyteStreamReaderObject* %30 to i8*
  call void %29(i8* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mbstreamreader_traverse(%struct.MultibyteStreamReaderObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret13 = alloca i32, align 4
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ult %struct._object* %1, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %3
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors3, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %do.body
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %7 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors5 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %errors5, align 8
  %9 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %6(%struct._object* %8, i8* %9)
  store i32 %call, i32* %vret, align 4
  %10 = load i32, i32* %vret, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %11 = load i32, i32* %vret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.9
  %12 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %12, i32 0, i32 6
  %13 = load %struct._object*, %struct._object** %stream, align 8
  %tobool11 = icmp ne %struct._object* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.body.10
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %15 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %stream14 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %15, i32 0, i32 6
  %16 = load %struct._object*, %struct._object** %stream14, align 8
  %17 = load i8*, i8** %arg.addr, align 8
  %call15 = call i32 %14(%struct._object* %16, i8* %17)
  store i32 %call15, i32* %vret13, align 4
  %18 = load i32, i32* %vret13, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %19 = load i32, i32* %vret13, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.body.10
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then.17, %if.then.7
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @mbstreamreader_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.MultibyteStreamReaderObject*, align 8
  %stream = alloca %struct._object*, align 8
  %codec = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %codec, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @streamkwarglist, i32 0, i32 0), %struct._object** %stream, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.MultibyteStreamReaderObject*
  store %struct.MultibyteStreamReaderObject* %5, %struct.MultibyteStreamReaderObject** %self, align 8
  %6 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %cmp = icmp eq %struct.MultibyteStreamReaderObject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %call4 = call %struct._object* @PyObject_GetAttrString(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %codec, align 8
  %9 = load %struct._object*, %struct._object** %codec, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %errorexit

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %codec, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %11, @MultibyteCodec_Type
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %errorexit

if.end.10:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %codec, align 8
  %14 = bitcast %struct._object* %13 to %struct.MultibyteCodecObject*
  %codec11 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %14, i32 0, i32 1
  %15 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec11, align 8
  %16 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %codec12 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %16, i32 0, i32 1
  store %struct.MultibyteCodec* %15, %struct.MultibyteCodec** %codec12, align 8
  %17 = load %struct._object*, %struct._object** %stream, align 8
  %18 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %stream13 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %18, i32 0, i32 6
  store %struct._object* %17, %struct._object** %stream13, align 8
  %19 = load %struct._object*, %struct._object** %stream, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %21, i32 0, i32 5
  store i64 0, i64* %pendingsize, align 8
  %22 = load i8*, i8** %errors, align 8
  %call14 = call %struct._object* @internal_error_callback(i8* %22)
  %23 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %errors15 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %23, i32 0, i32 3
  store %struct._object* %call14, %struct._object** %errors15, align 8
  %24 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %errors16 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %errors16, align 8
  %cmp17 = icmp eq %struct._object* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.10
  br label %errorexit

if.end.19:                                        ; preds = %if.end.10
  %26 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %codec20 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %26, i32 0, i32 1
  %27 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec20, align 8
  %decinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %27, i32 0, i32 7
  %28 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit, align 8
  %cmp21 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %28, null
  br i1 %cmp21, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.19
  %29 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %codec22 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %29, i32 0, i32 1
  %30 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec22, align 8
  %decinit23 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %30, i32 0, i32 7
  %31 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit23, align 8
  %32 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %state = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %32, i32 0, i32 2
  %33 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %codec24 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %33, i32 0, i32 1
  %34 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec24, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %34, i32 0, i32 1
  %35 = load i8*, i8** %config, align 8
  %call25 = call i32 %31(%union.MultibyteCodec_State* %state, i8* %35)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.28:                                        ; preds = %land.lhs.true, %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %36 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body
  br label %if.end.33

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.33
  %43 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %44 = bitcast %struct.MultibyteStreamReaderObject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.27, %if.then.18, %if.then.9, %if.then.6
  br label %do.body.34

do.body.34:                                       ; preds = %errorexit
  %45 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self, align 8
  %46 = bitcast %struct.MultibyteStreamReaderObject* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %47, null
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %do.body.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp38, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %50, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %53(%struct._object* %54)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.34
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %55 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp51, align 8
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  %cmp52 = icmp ne %struct._object* %56, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp55, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %59, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %62(%struct._object* %63)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.50
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %do.end, %if.then.2, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_read(%struct.MultibyteStreamReaderObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sizeobj = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %sizeobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 0, i64 1, %struct._object** %sizeobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sizeobj, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %sizeobj, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i64 -1, i64* %size, align 8
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %sizeobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %sizeobj, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %6)
  store i64 %call5, i64* %size, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %8 = load i64, i64* %size, align 8
  %cmp9 = icmp eq i64 %8, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.8
  %9 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %10 = load i64, i64* %size, align 8
  %call14 = call %struct._object* @mbstreamreader_iread(%struct.MultibyteStreamReaderObject* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 %10)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.6, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_readline(%struct.MultibyteStreamReaderObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sizeobj = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %sizeobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i64 0, i64 1, %struct._object** %sizeobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sizeobj, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %sizeobj, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i64 -1, i64* %size, align 8
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %sizeobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %sizeobj, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %6)
  store i64 %call5, i64* %size, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %8 = load i64, i64* %size, align 8
  %cmp9 = icmp eq i64 %8, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.8
  %9 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %10 = load i64, i64* %size, align 8
  %call14 = call %struct._object* @mbstreamreader_iread(%struct.MultibyteStreamReaderObject* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i64 %10)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.else.6, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_readlines(%struct.MultibyteStreamReaderObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sizehintobj = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %sr = alloca %struct._object*, align 8
  %sizehint = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %sizehintobj, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i64 0, i64 1, %struct._object** %sizehintobj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %sizehintobj, align 8
  %cmp = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %sizehintobj, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  store i64 -1, i64* %sizehint, align 8
  br label %if.end.8

if.else:                                          ; preds = %lor.lhs.false
  %3 = load %struct._object*, %struct._object** %sizehintobj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 16777216
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._object*, %struct._object** %sizehintobj, align 8
  %call5 = call i64 @PyLong_AsSsize_t(%struct._object* %6)
  store i64 %call5, i64* %sizehint, align 8
  br label %if.end.7

if.else.6:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.2
  %8 = load i64, i64* %sizehint, align 8
  %cmp9 = icmp eq i64 %8, -1
  br i1 %cmp9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.8
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.8
  %9 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %10 = load i64, i64* %sizehint, align 8
  %call14 = call %struct._object* @mbstreamreader_iread(%struct.MultibyteStreamReaderObject* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i64 %10)
  store %struct._object* %call14, %struct._object** %r, align 8
  %11 = load %struct._object*, %struct._object** %r, align 8
  %cmp15 = icmp eq %struct._object* %11, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load %struct._object*, %struct._object** %r, align 8
  %call18 = call %struct._object* @PyUnicode_Splitlines(%struct._object* %12, i32 1)
  store %struct._object* %call18, %struct._object** %sr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %13 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body
  br label %if.end.23

if.else.21:                                       ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.23
  %20 = load %struct._object*, %struct._object** %sr, align 8
  store %struct._object* %20, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.16, %if.then.12, %if.else.6, %if.then
  %21 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %21
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_reset(%struct.MultibyteStreamReaderObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %0 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %0, i32 0, i32 1
  %1 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %decreset = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %1, i32 0, i32 8
  %2 = load i64 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)** %decreset, align 8
  %cmp = icmp ne i64 (%union.MultibyteCodec_State*, i8*)* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %codec1 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %3, i32 0, i32 1
  %4 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec1, align 8
  %decreset2 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %4, i32 0, i32 8
  %5 = load i64 (%union.MultibyteCodec_State*, i8*)*, i64 (%union.MultibyteCodec_State*, i8*)** %decreset2, align 8
  %6 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %6, i32 0, i32 2
  %7 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %codec3 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %7, i32 0, i32 1
  %8 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec3, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %8, i32 0, i32 1
  %9 = load i8*, i8** %config, align 8
  %call = call i64 %5(%union.MultibyteCodec_State* %state, i8* %9)
  %cmp4 = icmp ne i64 %call, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %10 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %10, i32 0, i32 5
  store i64 0, i64* %pendingsize, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamreader_iread(%struct.MultibyteStreamReaderObject* %self, i8* %method, i64 %sizehint) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamReaderObject*, align 8
  %method.addr = alloca i8*, align 8
  %sizehint.addr = alloca i64, align 8
  %buf = alloca %struct.MultibyteDecodeBuffer, align 8
  %cres = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %rsize = alloca i64, align 8
  %endoffile = alloca i32, align 4
  %ctr = alloca %struct._object*, align 8
  %ctrdata = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_xdecref_tmp130 = alloca %struct._object*, align 8
  %_py_decref_tmp136 = alloca %struct._object*, align 8
  %_py_xdecref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %_py_xdecref_tmp169 = alloca %struct._object*, align 8
  %_py_decref_tmp175 = alloca %struct._object*, align 8
  store %struct.MultibyteStreamReaderObject* %self, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  store i8* %method, i8** %method.addr, align 8
  store i64 %sizehint, i64* %sizehint.addr, align 8
  %0 = load i64, i64* %sizehint.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %excobj = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  store %struct._object* null, %struct._object** %excobj, align 8
  store %struct._object* null, %struct._object** %cres, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.104, %if.end
  %1 = load i64, i64* %sizehint.addr, align 8
  %cmp1 = icmp slt i64 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.cond
  %2 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %2, i32 0, i32 6
  %3 = load %struct._object*, %struct._object** %stream, align 8
  %4 = load i8*, i8** %method.addr, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, i8*, ...) @_PyObject_CallMethod_SizeT(%struct._object* %3, i8* %4, i8* null)
  store %struct._object* %call3, %struct._object** %cres, align 8
  br label %if.end.6

if.else:                                          ; preds = %for.cond
  %5 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %stream4 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %5, i32 0, i32 6
  %6 = load %struct._object*, %struct._object** %stream4, align 8
  %7 = load i8*, i8** %method.addr, align 8
  %8 = load i64, i64* %sizehint.addr, align 8
  %call5 = call %struct._object* (%struct._object*, i8*, i8*, ...) @_PyObject_CallMethod_SizeT(%struct._object* %6, i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i64 %8)
  store %struct._object* %call5, %struct._object** %cres, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.2
  %9 = load %struct._object*, %struct._object** %cres, align 8
  %cmp7 = icmp eq %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  br label %errorexit

if.end.9:                                         ; preds = %if.end.6
  %10 = load %struct._object*, %struct._object** %cres, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 134217728
  %cmp10 = icmp ne i64 %and, 0
  br i1 %cmp10, label %if.end.14, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  %13 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %14 = load %struct._object*, %struct._object** %cres, align 8
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %tp_name, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0), i8* %16)
  br label %errorexit

if.end.14:                                        ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** %cres, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size, align 8
  %cmp15 = icmp eq i64 %19, 0
  %conv = zext i1 %cmp15 to i32
  store i32 %conv, i32* %endoffile, align 4
  %20 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %20, i32 0, i32 5
  %21 = load i64, i64* %pendingsize, align 8
  %cmp16 = icmp sgt i64 %21, 0
  br i1 %cmp16, label %if.then.18, label %if.end.45

if.then.18:                                       ; preds = %if.end.14
  %22 = load %struct._object*, %struct._object** %cres, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size19 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size19, align 8
  %25 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize20 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %25, i32 0, i32 5
  %26 = load i64, i64* %pendingsize20, align 8
  %sub = sub i64 9223372036854775807, %26
  %cmp21 = icmp sgt i64 %24, %sub
  br i1 %cmp21, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.18
  %call24 = call %struct._object* @PyErr_NoMemory()
  br label %errorexit

if.end.25:                                        ; preds = %if.then.18
  %27 = load %struct._object*, %struct._object** %cres, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyVarObject*
  %ob_size26 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size26, align 8
  %30 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize27 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %30, i32 0, i32 5
  %31 = load i64, i64* %pendingsize27, align 8
  %add = add i64 %29, %31
  store i64 %add, i64* %rsize, align 8
  %32 = load i64, i64* %rsize, align 8
  %call28 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %32)
  store %struct._object* %call28, %struct._object** %ctr, align 8
  %33 = load %struct._object*, %struct._object** %ctr, align 8
  %cmp29 = icmp eq %struct._object* %33, null
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.25
  br label %errorexit

if.end.32:                                        ; preds = %if.end.25
  %34 = load %struct._object*, %struct._object** %ctr, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %35, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ctrdata, align 8
  %36 = load i8*, i8** %ctrdata, align 8
  %37 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %37, i32 0, i32 4
  %38 = bitcast [8 x i8]* %pending to i8*
  %39 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize33 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %39, i32 0, i32 5
  %40 = load i64, i64* %pendingsize33, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %38, i64 %40, i32 1, i1 false)
  %41 = load i8*, i8** %ctrdata, align 8
  %42 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize34 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %42, i32 0, i32 5
  %43 = load i64, i64* %pendingsize34, align 8
  %add.ptr = getelementptr i8, i8* %41, i64 %43
  %44 = load %struct._object*, %struct._object** %cres, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyBytesObject*
  %ob_sval35 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %45, i32 0, i32 2
  %arraydecay36 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval35, i32 0, i32 0
  %46 = load %struct._object*, %struct._object** %cres, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyVarObject*
  %ob_size37 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %47, i32 0, i32 1
  %48 = load i64, i64* %ob_size37, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %arraydecay36, i64 %48, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end.32
  %49 = load %struct._object*, %struct._object** %cres, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body
  br label %if.end.43

if.else.41:                                       ; preds = %do.body
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %54(%struct._object* %55)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %if.then.40
  br label %do.end

do.end:                                           ; preds = %if.end.43
  %56 = load %struct._object*, %struct._object** %ctr, align 8
  store %struct._object* %56, %struct._object** %cres, align 8
  %57 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %pendingsize44 = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %57, i32 0, i32 5
  store i64 0, i64* %pendingsize44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %do.end, %if.end.14
  %58 = load %struct._object*, %struct._object** %cres, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyVarObject*
  %ob_size46 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %59, i32 0, i32 1
  %60 = load i64, i64* %ob_size46, align 8
  store i64 %60, i64* %rsize, align 8
  %61 = load %struct._object*, %struct._object** %cres, align 8
  %62 = bitcast %struct._object* %61 to %struct.PyBytesObject*
  %ob_sval47 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %62, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval47, i32 0, i32 0
  %63 = load i64, i64* %rsize, align 8
  %call49 = call i32 @decoder_prepare_buffer(%struct.MultibyteDecodeBuffer* %buf, i8* %arraydecay48, i64 %63)
  %cmp50 = icmp ne i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.45
  br label %errorexit

if.end.53:                                        ; preds = %if.end.45
  %64 = load i64, i64* %rsize, align 8
  %cmp54 = icmp sgt i64 %64, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %if.end.53
  %65 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %66 = bitcast %struct.MultibyteStreamReaderObject* %65 to %struct.MultibyteStatefulDecoderContext*
  %call56 = call i32 @decoder_feed_buffer(%struct.MultibyteStatefulDecoderContext* %66, %struct.MultibyteDecodeBuffer* %buf)
  %tobool = icmp ne i32 %call56, 0
  br i1 %tobool, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.58:                                        ; preds = %land.lhs.true, %if.end.53
  %67 = load i32, i32* %endoffile, align 4
  %tobool59 = icmp ne i32 %67, 0
  br i1 %tobool59, label %if.then.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.58
  %68 = load i64, i64* %sizehint.addr, align 8
  %cmp60 = icmp slt i64 %68, 0
  br i1 %cmp60, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %lor.lhs.false, %if.end.58
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %69 = load i8*, i8** %inbuf, align 8
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %70 = load i8*, i8** %inbuf_end, align 8
  %cmp63 = icmp ult i8* %69, %70
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.69

land.lhs.true.65:                                 ; preds = %if.then.62
  %71 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %71, i32 0, i32 1
  %72 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %73 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %73, i32 0, i32 2
  %74 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamReaderObject, %struct.MultibyteStreamReaderObject* %74, i32 0, i32 3
  %75 = load %struct._object*, %struct._object** %errors, align 8
  %call66 = call i32 @multibytecodec_decerror(%struct.MultibyteCodec* %72, %union.MultibyteCodec_State* %state, %struct.MultibyteDecodeBuffer* %buf, %struct._object* %75, i64 -2)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.65
  br label %errorexit

if.end.69:                                        ; preds = %land.lhs.true.65, %if.then.62
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %lor.lhs.false
  %inbuf71 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %76 = load i8*, i8** %inbuf71, align 8
  %inbuf_end72 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %77 = load i8*, i8** %inbuf_end72, align 8
  %cmp73 = icmp ult i8* %76, %77
  br i1 %cmp73, label %if.then.75, label %if.end.81

if.then.75:                                       ; preds = %if.end.70
  %78 = load %struct.MultibyteStreamReaderObject*, %struct.MultibyteStreamReaderObject** %self.addr, align 8
  %79 = bitcast %struct.MultibyteStreamReaderObject* %78 to %struct.MultibyteStatefulDecoderContext*
  %call76 = call i32 @decoder_append_pending(%struct.MultibyteStatefulDecoderContext* %79, %struct.MultibyteDecodeBuffer* %buf)
  %cmp77 = icmp ne i32 %call76, 0
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.75
  br label %errorexit

if.end.80:                                        ; preds = %if.then.75
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.70
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  %80 = load %struct._object*, %struct._object** %cres, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp83, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %82, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.82
  br label %if.end.92

if.else.89:                                       ; preds = %do.body.82
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %85(%struct._object* %86)
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  store %struct._object* null, %struct._object** %cres, align 8
  %87 = load i64, i64* %sizehint.addr, align 8
  %cmp94 = icmp slt i64 %87, 0
  br i1 %cmp94, label %if.then.103, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %do.end.93
  %writer97 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %pos = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer97, i32 0, i32 5
  %88 = load i64, i64* %pos, align 8
  %cmp98 = icmp ne i64 %88, 0
  br i1 %cmp98, label %if.then.103, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.96
  %89 = load i64, i64* %rsize, align 8
  %cmp101 = icmp eq i64 %89, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.100, %lor.lhs.false.96, %do.end.93
  br label %for.end

if.end.104:                                       ; preds = %lor.lhs.false.100
  store i64 1, i64* %sizehint.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.103
  %writer105 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %call106 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer105)
  store %struct._object* %call106, %struct._object** %res, align 8
  %90 = load %struct._object*, %struct._object** %res, align 8
  %cmp107 = icmp eq %struct._object* %90, null
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.end
  br label %errorexit

if.end.110:                                       ; preds = %for.end
  br label %do.body.111

do.body.111:                                      ; preds = %if.end.110
  %91 = load %struct._object*, %struct._object** %cres, align 8
  store %struct._object* %91, %struct._object** %_py_xdecref_tmp, align 8
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp112 = icmp ne %struct._object* %92, null
  br i1 %cmp112, label %if.then.114, label %if.end.127

if.then.114:                                      ; preds = %do.body.111
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp116, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %95, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %do.body.115
  br label %if.end.125

if.else.122:                                      ; preds = %do.body.115
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_dealloc124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc124, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %98(%struct._object* %99)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %if.end.127

if.end.127:                                       ; preds = %do.end.126, %do.body.111
  br label %do.end.128

do.end.128:                                       ; preds = %if.end.127
  br label %do.body.129

do.body.129:                                      ; preds = %do.end.128
  %excobj131 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %100 = load %struct._object*, %struct._object** %excobj131, align 8
  store %struct._object* %100, %struct._object** %_py_xdecref_tmp130, align 8
  %101 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  %cmp132 = icmp ne %struct._object* %101, null
  br i1 %cmp132, label %if.then.134, label %if.end.147

if.then.134:                                      ; preds = %do.body.129
  br label %do.body.135

do.body.135:                                      ; preds = %if.then.134
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp136, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt137, align 8
  %dec138 = add i64 %104, -1
  store i64 %dec138, i64* %ob_refcnt137, align 8
  %cmp139 = icmp ne i64 %dec138, 0
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.135
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.135
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp136, align 8
  call void %107(%struct._object* %108)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.129
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  %109 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %109, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.109, %if.then.79, %if.then.68, %if.then.57, %if.then.52, %if.then.31, %if.then.23, %if.then.11, %if.then.8
  br label %do.body.149

do.body.149:                                      ; preds = %errorexit
  %110 = load %struct._object*, %struct._object** %cres, align 8
  store %struct._object* %110, %struct._object** %_py_xdecref_tmp150, align 8
  %111 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  %cmp151 = icmp ne %struct._object* %111, null
  br i1 %cmp151, label %if.then.153, label %if.end.166

if.then.153:                                      ; preds = %do.body.149
  br label %do.body.154

do.body.154:                                      ; preds = %if.then.153
  %112 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  store %struct._object* %112, %struct._object** %_py_decref_tmp155, align 8
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %114, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %do.body.154
  br label %if.end.164

if.else.161:                                      ; preds = %do.body.154
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type162 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 1
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type162, align 8
  %tp_dealloc163 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i32 0, i32 4
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %117(%struct._object* %118)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.161, %if.then.160
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %do.body.149
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  br label %do.body.168

do.body.168:                                      ; preds = %do.end.167
  %excobj170 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %119 = load %struct._object*, %struct._object** %excobj170, align 8
  store %struct._object* %119, %struct._object** %_py_xdecref_tmp169, align 8
  %120 = load %struct._object*, %struct._object** %_py_xdecref_tmp169, align 8
  %cmp171 = icmp ne %struct._object* %120, null
  br i1 %cmp171, label %if.then.173, label %if.end.186

if.then.173:                                      ; preds = %do.body.168
  br label %do.body.174

do.body.174:                                      ; preds = %if.then.173
  %121 = load %struct._object*, %struct._object** %_py_xdecref_tmp169, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp175, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_refcnt176 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt176, align 8
  %dec177 = add i64 %123, -1
  store i64 %dec177, i64* %ob_refcnt176, align 8
  %cmp178 = icmp ne i64 %dec177, 0
  br i1 %cmp178, label %if.then.180, label %if.else.181

if.then.180:                                      ; preds = %do.body.174
  br label %if.end.184

if.else.181:                                      ; preds = %do.body.174
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_type182 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type182, align 8
  %tp_dealloc183 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc183, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  call void %126(%struct._object* %127)
  br label %if.end.184

if.end.184:                                       ; preds = %if.else.181, %if.then.180
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.184
  br label %if.end.186

if.end.186:                                       ; preds = %do.end.185, %do.body.168
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  %writer188 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer188)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.187, %do.end.148, %if.then
  %128 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %128
}

declare %struct._object* @PyUnicode_New(i64, i32) #2

declare %struct._object* @_PyObject_CallMethod_SizeT(%struct._object*, i8*, i8*, ...) #2

declare %struct._object* @PyUnicode_Splitlines(%struct._object*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @mbstreamwriter_dealloc(%struct.MultibyteStreamWriterObject* %self) #0 {
entry:
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %0 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteStreamWriterObject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* %5, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %errors3, align 8
  %cmp4 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %7
  br i1 %cmp4, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.5

do.body.5:                                        ; preds = %if.then
  %8 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors6 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %errors6, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.5
  br label %if.end

if.else:                                          ; preds = %do.body.5
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.10
  %16 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %16, i32 0, i32 5
  %17 = load %struct._object*, %struct._object** %stream, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %18, null
  br i1 %cmp12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %do.body.11
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp15, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %21, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %24(%struct._object* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.11
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %26 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %27 = bitcast %struct.MultibyteStreamWriterObject* %26 to %struct._object*
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 38
  %29 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %30 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %31 = bitcast %struct.MultibyteStreamWriterObject* %30 to i8*
  call void %29(i8* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mbstreamwriter_traverse(%struct.MultibyteStreamWriterObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret13 = alloca i32, align 4
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %errors, align 8
  %cmp = icmp ult %struct._object* %1, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors1 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %errors1, align 8
  %cmp2 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %3
  br i1 %cmp2, label %if.then, label %if.end.9

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors3 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %errors3, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %do.body
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %7 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors5 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %errors5, align 8
  %9 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %6(%struct._object* %8, i8* %9)
  store i32 %call, i32* %vret, align 4
  %10 = load i32, i32* %vret, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.4
  %11 = load i32, i32* %vret, align 4
  store i32 %11, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %lor.lhs.false
  br label %do.body.10

do.body.10:                                       ; preds = %if.end.9
  %12 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %12, i32 0, i32 5
  %13 = load %struct._object*, %struct._object** %stream, align 8
  %tobool11 = icmp ne %struct._object* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %do.body.10
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %15 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %stream14 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %15, i32 0, i32 5
  %16 = load %struct._object*, %struct._object** %stream14, align 8
  %17 = load i8*, i8** %arg.addr, align 8
  %call15 = call i32 %14(%struct._object* %16, i8* %17)
  store i32 %call15, i32* %vret13, align 4
  %18 = load i32, i32* %vret13, align 4
  %tobool16 = icmp ne i32 %18, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %19 = load i32, i32* %vret13, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %do.body.10
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then.17, %if.then.7
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @mbstreamwriter_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamwriter_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.MultibyteStreamWriterObject*, align 8
  %stream = alloca %struct._object*, align 8
  %codec = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %codec, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @streamkwarglist, i32 0, i32 0), %struct._object** %stream, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.MultibyteStreamWriterObject*
  store %struct.MultibyteStreamWriterObject* %5, %struct.MultibyteStreamWriterObject** %self, align 8
  %6 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %cmp = icmp eq %struct.MultibyteStreamWriterObject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %8 = bitcast %struct._typeobject* %7 to %struct._object*
  %call4 = call %struct._object* @PyObject_GetAttrString(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0))
  store %struct._object* %call4, %struct._object** %codec, align 8
  %9 = load %struct._object*, %struct._object** %codec, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %errorexit

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %codec, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp eq %struct._typeobject* %11, @MultibyteCodec_Type
  br i1 %cmp8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0))
  br label %errorexit

if.end.10:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %codec, align 8
  %14 = bitcast %struct._object* %13 to %struct.MultibyteCodecObject*
  %codec11 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %14, i32 0, i32 1
  %15 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec11, align 8
  %16 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %codec12 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %16, i32 0, i32 1
  store %struct.MultibyteCodec* %15, %struct.MultibyteCodec** %codec12, align 8
  %17 = load %struct._object*, %struct._object** %stream, align 8
  %18 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %stream13 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %18, i32 0, i32 5
  store %struct._object* %17, %struct._object** %stream13, align 8
  %19 = load %struct._object*, %struct._object** %stream, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %21 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %pending = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %21, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending, align 8
  %22 = load i8*, i8** %errors, align 8
  %call14 = call %struct._object* @internal_error_callback(i8* %22)
  %23 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %errors15 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %23, i32 0, i32 3
  store %struct._object* %call14, %struct._object** %errors15, align 8
  %24 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %errors16 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %errors16, align 8
  %cmp17 = icmp eq %struct._object* %25, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.10
  br label %errorexit

if.end.19:                                        ; preds = %if.end.10
  %26 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %codec20 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %26, i32 0, i32 1
  %27 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec20, align 8
  %encinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %27, i32 0, i32 4
  %28 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit, align 8
  %cmp21 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %28, null
  br i1 %cmp21, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.19
  %29 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %codec22 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %29, i32 0, i32 1
  %30 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec22, align 8
  %encinit23 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %30, i32 0, i32 4
  %31 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit23, align 8
  %32 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %state = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %32, i32 0, i32 2
  %33 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %codec24 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %33, i32 0, i32 1
  %34 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec24, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %34, i32 0, i32 1
  %35 = load i8*, i8** %config, align 8
  %call25 = call i32 %31(%union.MultibyteCodec_State* %state, i8* %35)
  %cmp26 = icmp ne i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.28:                                        ; preds = %land.lhs.true, %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %36 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %do.body
  br label %if.end.33

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.33
  %43 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %44 = bitcast %struct.MultibyteStreamWriterObject* %43 to %struct._object*
  store %struct._object* %44, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.27, %if.then.18, %if.then.9, %if.then.6
  br label %do.body.34

do.body.34:                                       ; preds = %errorexit
  %45 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self, align 8
  %46 = bitcast %struct.MultibyteStreamWriterObject* %45 to %struct._object*
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %47, null
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %do.body.34
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp38, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %50, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %53(%struct._object* %54)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.34
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %55 = load %struct._object*, %struct._object** %codec, align 8
  store %struct._object* %55, %struct._object** %_py_xdecref_tmp51, align 8
  %56 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  %cmp52 = icmp ne %struct._object* %56, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp55, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %59, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %62(%struct._object* %63)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.50
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %do.end, %if.then.2, %if.then
  %64 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %64
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamwriter_write(%struct.MultibyteStreamWriterObject* %self, %struct._object* %strobj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %strobj.addr = alloca %struct._object*, align 8
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  store %struct._object* %strobj, %struct._object** %strobj.addr, align 8
  %0 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %strobj.addr, align 8
  %call = call i32 @mbstreamwriter_iwrite(%struct.MultibyteStreamWriterObject* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamwriter_writelines(%struct.MultibyteStreamWriterObject* %self, %struct._object* %lines) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %lines.addr = alloca %struct._object*, align 8
  %strobj = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  store %struct._object* %lines, %struct._object** %lines.addr, align 8
  %0 = load %struct._object*, %struct._object** %lines.addr, align 8
  %call = call i32 @PySequence_Check(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct._object*, %struct._object** %lines.addr, align 8
  %call1 = call i64 @PySequence_Size(%struct._object* %3)
  %cmp = icmp slt i64 %conv, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._object*, %struct._object** %lines.addr, align 8
  %5 = load i32, i32* %i, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call %struct._object* @PySequence_GetItem(%struct._object* %4, i64 %conv3)
  store %struct._object* %call4, %struct._object** %strobj, align 8
  %6 = load %struct._object*, %struct._object** %strobj, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %for.body
  %7 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %8 = load %struct._object*, %struct._object** %strobj, align 8
  %call9 = call i32 @mbstreamwriter_iwrite(%struct.MultibyteStreamWriterObject* %7, %struct._object* %8)
  store i32 %call9, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %strobj, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %16 = load i32, i32* %r, align 4
  %cmp14 = icmp eq i32 %16, -1
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc18 = add i64 %18, 1
  store i64 %inc18, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.then.7, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @mbstreamwriter_reset(%struct.MultibyteStreamWriterObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %pwrt = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %wr = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %0 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %0, i32 0, i32 1
  %1 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %2 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %state = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %2, i32 0, i32 2
  %3 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %pending = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %pending, align 8
  %5 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %errors = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %errors, align 8
  %call = call %struct._object* @multibytecodec_encode(%struct.MultibyteCodec* %1, %union.MultibyteCodec_State* %state, %struct._object* %4, i64* null, %struct._object* %6, i32 3)
  store %struct._object* %call, %struct._object** %pwrt, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %pending1 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %7, i32 0, i32 4
  %8 = load %struct._object*, %struct._object** %pending1, align 8
  store %struct._object* %8, %struct._object** %_py_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %9, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %10 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %pending2 = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %10, i32 0, i32 4
  store %struct._object* null, %struct._object** %pending2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %18 = load %struct._object*, %struct._object** %pwrt, align 8
  %cmp8 = icmp eq %struct._object* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %do.end.7
  %19 = load %struct._object*, %struct._object** %pwrt, align 8
  %call11 = call i64 @PyBytes_Size(%struct._object* %19)
  %cmp12 = icmp sgt i64 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.29

if.then.13:                                       ; preds = %if.end.10
  %20 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %20, i32 0, i32 5
  %21 = load %struct._object*, %struct._object** %stream, align 8
  %22 = load %struct._object*, %struct._object** %pwrt, align 8
  %call14 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %21, %struct._Py_Identifier* @PyId_write, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %22)
  store %struct._object* %call14, %struct._object** %wr, align 8
  %23 = load %struct._object*, %struct._object** %wr, align 8
  %cmp15 = icmp eq %struct._object* %23, null
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.then.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %24 = load %struct._object*, %struct._object** %pwrt, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp18, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt19, align 8
  %dec20 = add i64 %26, -1
  store i64 %dec20, i64* %ob_refcnt19, align 8
  %cmp21 = icmp ne i64 %dec20, 0
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body.17
  br label %if.end.26

if.else.23:                                       ; preds = %do.body.17
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp18, align 8
  call void %29(%struct._object* %30)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.then.13
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.10
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %31 = load %struct._object*, %struct._object** %pwrt, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp31, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %33, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %36(%struct._object* %37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.40, %do.end.27, %if.then.9
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: nounwind uwtable
define internal i32 @mbstreamwriter_iwrite(%struct.MultibyteStreamWriterObject* %self, %struct._object* %unistr) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.MultibyteStreamWriterObject*, align 8
  %unistr.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %wr = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  store %struct.MultibyteStreamWriterObject* %self, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  store %struct._object* %unistr, %struct._object** %unistr.addr, align 8
  %0 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteStreamWriterObject* %0 to %struct.MultibyteStatefulEncoderContext*
  %2 = load %struct._object*, %struct._object** %unistr.addr, align 8
  %call = call %struct._object* @encoder_encode_stateful(%struct.MultibyteStatefulEncoderContext* %1, %struct._object* %2, i32 0)
  store %struct._object* %call, %struct._object** %str, align 8
  %3 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.MultibyteStreamWriterObject*, %struct.MultibyteStreamWriterObject** %self.addr, align 8
  %stream = getelementptr inbounds %struct.MultibyteStreamWriterObject, %struct.MultibyteStreamWriterObject* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %stream, align 8
  %6 = load %struct._object*, %struct._object** %str, align 8
  %call1 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId_SizeT(%struct._object* %5, %struct._Py_Identifier* @PyId_write, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), %struct._object* %6)
  store %struct._object* %call1, %struct._object** %wr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %wr, align 8
  %cmp5 = icmp eq %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp9, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %17, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %20(%struct._object* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.18, %if.then.6, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare %struct._object* @_PyObject_CallMethodId_SizeT(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare i32 @PySequence_Check(%struct._object*) #2

declare i64 @PySequence_Size(%struct._object*) #2

declare %struct._object* @PySequence_GetItem(%struct._object*, i64) #2

declare i64 @PyBytes_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @multibytecodec_dealloc(%struct.MultibyteCodecObject* %self) #0 {
entry:
  %self.addr = alloca %struct.MultibyteCodecObject*, align 8
  store %struct.MultibyteCodecObject* %self, %struct.MultibyteCodecObject** %self.addr, align 8
  %0 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %1 = bitcast %struct.MultibyteCodecObject* %0 to i8*
  call void @PyObject_Free(i8* %1)
  ret void
}

declare void @PyObject_Free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @MultibyteCodec_Encode(%struct.MultibyteCodecObject* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteCodecObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %state = alloca %union.MultibyteCodec_State, align 8
  %errorcb = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %ucvt = alloca %struct._object*, align 8
  %errors = alloca i8*, align 8
  %datalen = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_xdecref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_xdecref_tmp133 = alloca %struct._object*, align 8
  %_py_decref_tmp137 = alloca %struct._object*, align 8
  store %struct.MultibyteCodecObject* %self, %struct.MultibyteCodecObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @codeckwarglist, i32 0, i32 0), %struct._object** %arg, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %ucvt, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %arg, align 8
  %call2 = call %struct._object* @PyObject_Str(%struct._object* %5)
  store %struct._object* %call2, %struct._object** %ucvt, align 8
  store %struct._object* %call2, %struct._object** %arg, align 8
  %6 = load %struct._object*, %struct._object** %arg, align 8
  %cmp3 = icmp eq %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** %arg, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_flags7 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags7, align 8
  %and8 = and i64 %9, 268435456
  %cmp9 = icmp ne i64 %and8, 0
  br i1 %cmp9, label %if.end.16, label %if.then.10

if.then.10:                                       ; preds = %if.else.5
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %11 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body
  br label %if.end.15

if.else.13:                                       ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.1
  %18 = load %struct._object*, %struct._object** %arg, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %state19 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 3
  %20 = bitcast %struct.anon* %state19 to i32*
  %bf.load = load i32, i32* %20, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool20 = icmp ne i32 %bf.clear, 0
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.18
  br label %cond.end

cond.false:                                       ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** %arg, align 8
  %call21 = call i32 @_PyUnicode_Ready(%struct._object* %21)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call21, %cond.false ]
  %cmp22 = icmp slt i32 %cond, 0
  br i1 %cmp22, label %if.then.23, label %if.end.40

if.then.23:                                       ; preds = %cond.end
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %22 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %23, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp28, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %26, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %29(%struct._object* %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.24
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %cond.end
  %31 = load %struct._object*, %struct._object** %arg, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 1
  %33 = load i64, i64* %length, align 8
  store i64 %33, i64* %datalen, align 8
  %34 = load i8*, i8** %errors, align 8
  %call41 = call %struct._object* @internal_error_callback(i8* %34)
  store %struct._object* %call41, %struct._object** %errorcb, align 8
  %35 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp42 = icmp eq %struct._object* %35, null
  br i1 %cmp42, label %if.then.43, label %if.end.61

if.then.43:                                       ; preds = %if.end.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %36 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp45, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %37, null
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %do.body.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp49, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %40, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %43(%struct._object* %44)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.44
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.61:                                        ; preds = %if.end.40
  %45 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %45, i32 0, i32 1
  %46 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %encinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %46, i32 0, i32 4
  %47 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit, align 8
  %cmp62 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %47, null
  br i1 %cmp62, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %if.end.61
  %48 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec63 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %48, i32 0, i32 1
  %49 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec63, align 8
  %encinit64 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %49, i32 0, i32 4
  %50 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %encinit64, align 8
  %51 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec65 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %51, i32 0, i32 1
  %52 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec65, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %52, i32 0, i32 1
  %53 = load i8*, i8** %config, align 8
  %call66 = call i32 %50(%union.MultibyteCodec_State* %state, i8* %53)
  %cmp67 = icmp ne i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true
  br label %errorexit

if.end.69:                                        ; preds = %land.lhs.true, %if.end.61
  %54 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec70 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %54, i32 0, i32 1
  %55 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec70, align 8
  %56 = load %struct._object*, %struct._object** %arg, align 8
  %57 = load %struct._object*, %struct._object** %errorcb, align 8
  %call71 = call %struct._object* @multibytecodec_encode(%struct.MultibyteCodec* %55, %union.MultibyteCodec_State* %state, %struct._object* %56, i64* null, %struct._object* %57, i32 3)
  store %struct._object* %call71, %struct._object** %r, align 8
  %58 = load %struct._object*, %struct._object** %r, align 8
  %cmp72 = icmp eq %struct._object* %58, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.69
  br label %errorexit

if.end.74:                                        ; preds = %if.end.69
  br label %do.body.75

do.body.75:                                       ; preds = %if.end.74
  %59 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp76 = icmp ne %struct._object* %59, null
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.92

land.lhs.true.77:                                 ; preds = %do.body.75
  %60 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp78 = icmp ult %struct._object* %60, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp78, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.77
  %61 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp79 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %61
  br i1 %cmp79, label %if.then.80, label %if.end.92

if.then.80:                                       ; preds = %lor.lhs.false, %land.lhs.true.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %62 = load %struct._object*, %struct._object** %errorcb, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp82, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %64, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90

if.else.87:                                       ; preds = %do.body.81
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %67(%struct._object* %68)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  br label %do.end.91

do.end.91:                                        ; preds = %if.end.90
  br label %if.end.92

if.end.92:                                        ; preds = %do.end.91, %lor.lhs.false, %do.body.75
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  br label %do.body.94

do.body.94:                                       ; preds = %do.end.93
  %69 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp95, align 8
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  %cmp96 = icmp ne %struct._object* %70, null
  br i1 %cmp96, label %if.then.97, label %if.end.109

if.then.97:                                       ; preds = %do.body.94
  br label %do.body.98

do.body.98:                                       ; preds = %if.then.97
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp95, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp99, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %73, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %do.body.98
  br label %if.end.107

if.else.104:                                      ; preds = %do.body.98
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %76(%struct._object* %77)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.104, %if.then.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %do.body.94
  br label %do.end.110

do.end.110:                                       ; preds = %if.end.109
  %78 = load %struct._object*, %struct._object** %r, align 8
  %79 = load i64, i64* %datalen, align 8
  %call111 = call %struct._object* @make_tuple(%struct._object* %78, i64 %79)
  store %struct._object* %call111, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.73, %if.then.68
  br label %do.body.112

do.body.112:                                      ; preds = %errorexit
  %80 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp113 = icmp ne %struct._object* %80, null
  br i1 %cmp113, label %land.lhs.true.114, label %if.end.130

land.lhs.true.114:                                ; preds = %do.body.112
  %81 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp115 = icmp ult %struct._object* %81, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp115, label %if.then.118, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.114
  %82 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp117 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %82
  br i1 %cmp117, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %lor.lhs.false.116, %land.lhs.true.114
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %83 = load %struct._object*, %struct._object** %errorcb, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp120, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %85, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %88(%struct._object* %89)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %lor.lhs.false.116, %do.body.112
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %do.body.132

do.body.132:                                      ; preds = %do.end.131
  %90 = load %struct._object*, %struct._object** %ucvt, align 8
  store %struct._object* %90, %struct._object** %_py_xdecref_tmp133, align 8
  %91 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  %cmp134 = icmp ne %struct._object* %91, null
  br i1 %cmp134, label %if.then.135, label %if.end.147

if.then.135:                                      ; preds = %do.body.132
  br label %do.body.136

do.body.136:                                      ; preds = %if.then.135
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp133, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp137, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_refcnt138 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt138, align 8
  %dec139 = add i64 %94, -1
  store i64 %dec139, i64* %ob_refcnt138, align 8
  %cmp140 = icmp ne i64 %dec139, 0
  br i1 %cmp140, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %do.body.136
  br label %if.end.145

if.else.142:                                      ; preds = %do.body.136
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  %ob_type143 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type143, align 8
  %tp_dealloc144 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc144, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp137, align 8
  call void %97(%struct._object* %98)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.142, %if.then.141
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %if.end.147

if.end.147:                                       ; preds = %do.end.146, %do.body.132
  br label %do.end.148

do.end.148:                                       ; preds = %if.end.147
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.148, %do.end.110, %do.end.60, %do.end.39, %do.end, %if.then.4, %if.then
  %99 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %99
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MultibyteCodec_Decode(%struct.MultibyteCodecObject* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.MultibyteCodecObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %state = alloca %union.MultibyteCodec_State, align 8
  %buf = alloca %struct.MultibyteDecodeBuffer, align 8
  %errorcb = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %pdata = alloca %struct.bufferinfo, align 8
  %data = alloca i8*, align 8
  %errors = alloca i8*, align 8
  %datalen = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %inleft = alloca i64, align 8
  %r = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_decref_tmp102 = alloca %struct._object*, align 8
  %_py_xdecref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  store %struct.MultibyteCodecObject* %self, %struct.MultibyteCodecObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i8* null, i8** %errors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @codeckwarglist, i32 0, i32 0), %struct.bufferinfo* %pdata, i8** %errors)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 0
  %2 = load i8*, i8** %buf1, align 8
  store i8* %2, i8** %data, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %pdata, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  store i64 %3, i64* %datalen, align 8
  %4 = load i8*, i8** %errors, align 8
  %call2 = call %struct._object* @internal_error_callback(i8* %4)
  store %struct._object* %call2, %struct._object** %errorcb, align 8
  %5 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load i64, i64* %datalen, align 8
  %cmp5 = icmp eq i64 %6, 0
  br i1 %cmp5, label %if.then.6, label %if.end.19

if.then.6:                                        ; preds = %if.end.4
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %7 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp7 = icmp ne %struct._object* %7, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp8 = icmp ult %struct._object* %8, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp9 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %9
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %10 = load %struct._object*, %struct._object** %errorcb, align 8
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

if.end.15:                                        ; preds = %do.end, %lor.lhs.false, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %call17 = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  %call18 = call %struct._object* @make_tuple(%struct._object* %call17, i64 0)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.4
  %writer = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Init(%struct._PyUnicodeWriter* %writer)
  %17 = load i64, i64* %datalen, align 8
  %writer20 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %min_length = getelementptr inbounds %struct._PyUnicodeWriter, %struct._PyUnicodeWriter* %writer20, i32 0, i32 6
  store i64 %17, i64* %min_length, align 8
  %excobj = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  store %struct._object* null, %struct._object** %excobj, align 8
  %18 = load i8*, i8** %data, align 8
  %inbuf_top = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 1
  store i8* %18, i8** %inbuf_top, align 8
  %inbuf = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  store i8* %18, i8** %inbuf, align 8
  %inbuf_top21 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 1
  %19 = load i8*, i8** %inbuf_top21, align 8
  %20 = load i64, i64* %datalen, align 8
  %add.ptr = getelementptr i8, i8* %19, i64 %20
  %inbuf_end = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  store i8* %add.ptr, i8** %inbuf_end, align 8
  %21 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %21, i32 0, i32 1
  %22 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %decinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %22, i32 0, i32 7
  %23 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit, align 8
  %cmp22 = icmp ne i32 (%union.MultibyteCodec_State*, i8*)* %23, null
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.30

land.lhs.true.23:                                 ; preds = %if.end.19
  %24 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec24 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %24, i32 0, i32 1
  %25 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec24, align 8
  %decinit25 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %25, i32 0, i32 7
  %26 = load i32 (%union.MultibyteCodec_State*, i8*)*, i32 (%union.MultibyteCodec_State*, i8*)** %decinit25, align 8
  %27 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec26 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %27, i32 0, i32 1
  %28 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec26, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %28, i32 0, i32 1
  %29 = load i8*, i8** %config, align 8
  %call27 = call i32 %26(%union.MultibyteCodec_State* %state, i8* %29)
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.23
  br label %errorexit

if.end.30:                                        ; preds = %land.lhs.true.23, %if.end.19
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end.30
  %inbuf31 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %30 = load i8*, i8** %inbuf31, align 8
  %inbuf_end32 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %31 = load i8*, i8** %inbuf_end32, align 8
  %cmp33 = icmp ult i8* %30, %31
  br i1 %cmp33, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inbuf_end34 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 2
  %32 = load i8*, i8** %inbuf_end34, align 8
  %inbuf35 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %33 = load i8*, i8** %inbuf35, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %inleft, align 8
  %34 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec36 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %34, i32 0, i32 1
  %35 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec36, align 8
  %decode = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %35, i32 0, i32 6
  %36 = load i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)*, i64 (%union.MultibyteCodec_State*, i8*, i8**, i64, %struct._PyUnicodeWriter*)** %decode, align 8
  %37 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec37 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %37, i32 0, i32 1
  %38 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec37, align 8
  %config38 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %38, i32 0, i32 1
  %39 = load i8*, i8** %config38, align 8
  %inbuf39 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 0
  %40 = load i64, i64* %inleft, align 8
  %writer40 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %call41 = call i64 %36(%union.MultibyteCodec_State* %state, i8* %39, i8** %inbuf39, i64 %40, %struct._PyUnicodeWriter* %writer40)
  store i64 %call41, i64* %r, align 8
  %41 = load i64, i64* %r, align 8
  %cmp42 = icmp eq i64 %41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %while.body
  br label %while.end

if.else.44:                                       ; preds = %while.body
  %42 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self.addr, align 8
  %codec45 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %42, i32 0, i32 1
  %43 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec45, align 8
  %44 = load %struct._object*, %struct._object** %errorcb, align 8
  %45 = load i64, i64* %r, align 8
  %call46 = call i32 @multibytecodec_decerror(%struct.MultibyteCodec* %43, %union.MultibyteCodec_State* %state, %struct.MultibyteDecodeBuffer* %buf, %struct._object* %44, i64 %45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.44
  br label %errorexit

if.end.49:                                        ; preds = %if.else.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49
  br label %while.cond

while.end:                                        ; preds = %if.then.43, %while.cond
  %writer51 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  %call52 = call %struct._object* @_PyUnicodeWriter_Finish(%struct._PyUnicodeWriter* %writer51)
  store %struct._object* %call52, %struct._object** %res, align 8
  %46 = load %struct._object*, %struct._object** %res, align 8
  %cmp53 = icmp eq %struct._object* %46, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %while.end
  br label %errorexit

if.end.55:                                        ; preds = %while.end
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  br label %do.body.56

do.body.56:                                       ; preds = %if.end.55
  %excobj57 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %47 = load %struct._object*, %struct._object** %excobj57, align 8
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp58 = icmp ne %struct._object* %48, null
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %do.body.56
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp61, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %51, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %54(%struct._object* %55)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.56
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %56 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp74 = icmp ne %struct._object* %56, null
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.91

land.lhs.true.75:                                 ; preds = %do.body.73
  %57 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp76 = icmp ult %struct._object* %57, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp76, label %if.then.79, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %land.lhs.true.75
  %58 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp78 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %58
  br i1 %cmp78, label %if.then.79, label %if.end.91

if.then.79:                                       ; preds = %lor.lhs.false.77, %land.lhs.true.75
  br label %do.body.80

do.body.80:                                       ; preds = %if.then.79
  %59 = load %struct._object*, %struct._object** %errorcb, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp81, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt82, align 8
  %dec83 = add i64 %61, -1
  store i64 %dec83, i64* %ob_refcnt82, align 8
  %cmp84 = icmp ne i64 %dec83, 0
  br i1 %cmp84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89

if.else.86:                                       ; preds = %do.body.80
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8
  call void %64(%struct._object* %65)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %if.end.91

if.end.91:                                        ; preds = %do.end.90, %lor.lhs.false.77, %do.body.73
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %66 = load %struct._object*, %struct._object** %res, align 8
  %67 = load i64, i64* %datalen, align 8
  %call93 = call %struct._object* @make_tuple(%struct._object* %66, i64 %67)
  store %struct._object* %call93, %struct._object** %retval
  br label %return

errorexit:                                        ; preds = %if.then.54, %if.then.48, %if.then.29
  call void @PyBuffer_Release(%struct.bufferinfo* %pdata)
  br label %do.body.94

do.body.94:                                       ; preds = %errorexit
  %68 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp95 = icmp ne %struct._object* %68, null
  br i1 %cmp95, label %land.lhs.true.96, label %if.end.112

land.lhs.true.96:                                 ; preds = %do.body.94
  %69 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp97 = icmp ult %struct._object* %69, inttoptr (i64 1 to %struct._object*)
  br i1 %cmp97, label %if.then.100, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.96
  %70 = load %struct._object*, %struct._object** %errorcb, align 8
  %cmp99 = icmp ult %struct._object* inttoptr (i64 3 to %struct._object*), %70
  br i1 %cmp99, label %if.then.100, label %if.end.112

if.then.100:                                      ; preds = %lor.lhs.false.98, %land.lhs.true.96
  br label %do.body.101

do.body.101:                                      ; preds = %if.then.100
  %71 = load %struct._object*, %struct._object** %errorcb, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp102, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_refcnt103 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt103, align 8
  %dec104 = add i64 %73, -1
  store i64 %dec104, i64* %ob_refcnt103, align 8
  %cmp105 = icmp ne i64 %dec104, 0
  br i1 %cmp105, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.101
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.101
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp102, align 8
  call void %76(%struct._object* %77)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %lor.lhs.false.98, %do.body.94
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %do.body.114

do.body.114:                                      ; preds = %do.end.113
  %excobj116 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 3
  %78 = load %struct._object*, %struct._object** %excobj116, align 8
  store %struct._object* %78, %struct._object** %_py_xdecref_tmp115, align 8
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp115, align 8
  %cmp117 = icmp ne %struct._object* %79, null
  br i1 %cmp117, label %if.then.118, label %if.end.130

if.then.118:                                      ; preds = %do.body.114
  br label %do.body.119

do.body.119:                                      ; preds = %if.then.118
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp115, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp120, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %82, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %85(%struct._object* %86)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.body.114
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  %writer132 = getelementptr inbounds %struct.MultibyteDecodeBuffer, %struct.MultibyteDecodeBuffer* %buf, i32 0, i32 4
  call void @_PyUnicodeWriter_Dealloc(%struct._PyUnicodeWriter* %writer132)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.131, %do.end.92, %do.end.16, %if.then.3, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_tuple(%struct._object* %object, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %object.addr = alloca %struct._object*, align 8
  %len.addr = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %w = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load %struct._object*, %struct._object** %object.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct._object* @PyTuple_New(i64 2)
  store %struct._object* %call, %struct._object** %v, align 8
  %1 = load %struct._object*, %struct._object** %v, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %2 = load %struct._object*, %struct._object** %object.addr, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %object.addr, align 8
  %10 = load %struct._object*, %struct._object** %v, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %11, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %9, %struct._object** %arrayidx, align 8
  %12 = load i64, i64* %len.addr, align 8
  %call7 = call %struct._object* @PyLong_FromSsize_t(i64 %12)
  store %struct._object* %call7, %struct._object** %w, align 8
  %13 = load %struct._object*, %struct._object** %w, align 8
  %cmp8 = icmp eq %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %if.end.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp11, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %16, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %19(%struct._object* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.6
  %21 = load %struct._object*, %struct._object** %w, align 8
  %22 = load %struct._object*, %struct._object** %v, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 1
  store %struct._object* %21, %struct._object** %arrayidx23, align 8
  %24 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.21, %do.end.20, %do.end, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare %struct._object* @PyLong_FromSsize_t(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @__create_codec(%struct._object* %ignore, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ignore.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %self = alloca %struct.MultibyteCodecObject*, align 8
  %codec = alloca %struct.MultibyteCodec*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call i32 @PyCapsule_IsValid(%struct._object* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call1 = call i8* @PyCapsule_GetPointer(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct.MultibyteCodec*
  store %struct.MultibyteCodec* %3, %struct.MultibyteCodec** %codec, align 8
  %4 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %codecinit = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %4, i32 0, i32 2
  %5 = load i32 (i8*)*, i32 (i8*)** %codecinit, align 8
  %cmp = icmp ne i32 (i8*)* %5, null
  br i1 %cmp, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %codecinit2 = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %6, i32 0, i32 2
  %7 = load i32 (i8*)*, i32 (i8*)** %codecinit2, align 8
  %8 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %config = getelementptr inbounds %struct.MultibyteCodec, %struct.MultibyteCodec* %8, i32 0, i32 1
  %9 = load i8*, i8** %config, align 8
  %call3 = call i32 %7(i8* %9)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %call7 = call %struct._object* @_PyObject_New(%struct._typeobject* @MultibyteCodec_Type)
  %10 = bitcast %struct._object* %call7 to %struct.MultibyteCodecObject*
  store %struct.MultibyteCodecObject* %10, %struct.MultibyteCodecObject** %self, align 8
  %11 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self, align 8
  %cmp8 = icmp eq %struct.MultibyteCodecObject* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %12 = load %struct.MultibyteCodec*, %struct.MultibyteCodec** %codec, align 8
  %13 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self, align 8
  %codec11 = getelementptr inbounds %struct.MultibyteCodecObject, %struct.MultibyteCodecObject* %13, i32 0, i32 1
  store %struct.MultibyteCodec* %12, %struct.MultibyteCodec** %codec11, align 8
  %14 = load %struct.MultibyteCodecObject*, %struct.MultibyteCodecObject** %self, align 8
  %15 = bitcast %struct.MultibyteCodecObject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare i32 @PyCapsule_IsValid(%struct._object*, i8*) #2

declare i8* @PyCapsule_GetPointer(%struct._object*, i8*) #2

declare %struct._object* @_PyObject_New(%struct._typeobject*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
