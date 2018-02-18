; ModuleID = './_bz2module.bc'
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
%struct.BZ2Compressor = type { %struct._object, %struct.bz_stream, i32, i8* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.BZ2Decompressor = type { %struct._object, %struct.bz_stream, i8, %struct._object*, i8* }

@BZ2Compressor_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.BZ2Compressor*)* @BZ2Compressor_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([234 x i8], [234 x i8]* @_bz2_BZ2Compressor___init____doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @BZ2Compressor_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @_bz2_BZ2Compressor___init__, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@BZ2Decompressor_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i64 120, i64 0, void (%struct._object*)* bitcast (void (%struct.BZ2Decompressor*)* @BZ2Decompressor_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([157 x i8], [157 x i8]* @_bz2_BZ2Decompressor___init____doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @BZ2Decompressor_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([3 x %struct.PyMemberDef], [3 x %struct.PyMemberDef]* @BZ2Decompressor_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* @_bz2_BZ2Decompressor___init__, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_bz2module = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* null, i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [14 x i8] c"BZ2Compressor\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BZ2Decompressor\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"_bz2.BZ2Compressor\00", align 1
@_bz2_BZ2Compressor___init____doc__ = internal global [234 x i8] c"BZ2Compressor(compresslevel=9, /)\0A--\0A\0ACreate a compressor object for compressing data incrementally.\0A\0A  compresslevel\0A    Compression level, as a number between 1 and 9.\0A\0AFor one-shot compression, use the compress() function instead.\00", align 16
@BZ2Compressor_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.BZ2Compressor*, %struct._object*)* @_bz2_BZ2Compressor_compress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([252 x i8], [252 x i8]* @_bz2_BZ2Compressor_compress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.BZ2Compressor*, %struct._object*)* @_bz2_BZ2Compressor_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([175 x i8], [175 x i8]* @_bz2_BZ2Compressor_flush__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.BZ2Compressor*, %struct._object*)* @BZ2Compressor_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@_bz2_BZ2Compressor_compress__doc__ = internal global [252 x i8] c"compress($self, data, /)\0A--\0A\0AProvide data to the compressor object.\0A\0AReturns a chunk of compressed data if possible, or b'' otherwise.\0A\0AWhen you have finished providing data to the compressor, call the\0Aflush() method to finish the compression process.\00", align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@_bz2_BZ2Compressor_flush__doc__ = internal global [175 x i8] c"flush($self, /)\0A--\0A\0AFinish the compression process.\0A\0AReturns the compressed data left in internal buffers.\0A\0AThe compressor object may not be used after this method is called.\00", align 16
@.str.5 = private unnamed_addr constant [13 x i8] c"__getstate__\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"y*:compress\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"Compressor has been flushed\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [45 x i8] c"Unable to allocate buffer - output too large\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"libbzip2 was not compiled correctly\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Internal error - invalid parameters passed to libbzip2\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"Invalid data stream\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Unknown I/O error\00", align 1
@PyExc_EOFError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [68 x i8] c"Compressed file ended before the logical end-of-stream was detected\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.14 = private unnamed_addr constant [63 x i8] c"Internal error - Invalid sequence of commands sent to libbzip2\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Unrecognized error from libbzip2: %d\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"Repeated call to flush()\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.17 = private unnamed_addr constant [29 x i8] c"cannot serialize '%s' object\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"|i:BZ2Compressor\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"compresslevel must be between 1 and 9\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"Unable to allocate lock\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"_bz2.BZ2Decompressor\00", align 1
@_bz2_BZ2Decompressor___init____doc__ = internal global [157 x i8] c"BZ2Decompressor()\0A--\0A\0ACreate a decompressor object for decompressing data incrementally.\0A\0AFor one-shot decompression, use the decompress() function instead.\00", align 16
@BZ2Decompressor_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.BZ2Decompressor*, %struct._object*)* @_bz2_BZ2Decompressor_decompress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([322 x i8], [322 x i8]* @_bz2_BZ2Decompressor_decompress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.BZ2Decompressor*, %struct._object*)* @BZ2Decompressor_getstate to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@BZ2Decompressor_members = internal global [3 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 14, i64 96, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BZ2Decompressor_eof__doc__, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 16, i64 104, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BZ2Decompressor_unused_data__doc__, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@_bz2_BZ2Decompressor_decompress__doc__ = internal global [322 x i8] c"decompress($self, data, /)\0A--\0A\0AProvide data to the decompressor object.\0A\0AReturns a chunk of decompressed data if possible, or b'' otherwise.\0A\0AAttempting to decompress data after the end of stream is reached\0Araises an EOFError.  Any data found after the end of the stream\0Ais ignored and saved in the unused_data attribute.\00", align 16
@.str.23 = private unnamed_addr constant [14 x i8] c"y*:decompress\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"End of stream already reached\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@BZ2Decompressor_eof__doc__ = internal global [51 x i8] c"True if the end-of-stream marker has been reached.\00", align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"unused_data\00", align 1
@BZ2Decompressor_unused_data__doc__ = internal global [51 x i8] c"Data found after the end of the compressed stream.\00", align 16
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"_bz2\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__bz2() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @BZ2Compressor_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @BZ2Decompressor_Type)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_bz2module, i32 1013)
  store %struct._object* %call5, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %0, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Compressor_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Compressor_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Compressor_Type, i32 0, i32 0, i32 0))
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Decompressor_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc10 = add i64 %3, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Decompressor_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @BZ2Decompressor_Type, i32 0, i32 0, i32 0))
  %5 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @BZ2Compressor_dealloc(%struct.BZ2Compressor* %self) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  %0 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %0, i32 0, i32 1
  %call = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %bzs)
  %1 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %1, i32 0, i32 3
  %2 = load i8*, i8** %lock, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock1 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %3, i32 0, i32 3
  %4 = load i8*, i8** %lock1, align 8
  call void @PyThread_free_lock(i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %6 = bitcast %struct.BZ2Compressor* %5 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 38
  %8 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %9 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %10 = bitcast %struct.BZ2Compressor* %9 to %struct._object*
  %11 = bitcast %struct._object* %10 to i8*
  call void %8(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_bz2_BZ2Compressor___init__(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca i32, align 4
  %compresslevel = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 -1, i32* %return_value, align 4
  store i32 9, i32* %compresslevel, align 4
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @BZ2Compressor_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %exit

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i32* %compresslevel)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %exit

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.BZ2Compressor*
  %6 = load i32, i32* %compresslevel, align 4
  %call5 = call i32 @_bz2_BZ2Compressor___init___impl(%struct.BZ2Compressor* %5, i32 %6)
  store i32 %call5, i32* %return_value, align 4
  br label %exit

exit:                                             ; preds = %if.end.4, %if.then.3, %if.then
  %7 = load i32, i32* %return_value, align 4
  ret i32 %7
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @BZ2_bzCompressEnd(%struct.bz_stream*) #1

declare void @PyThread_free_lock(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Compressor_compress(%struct.BZ2Compressor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %call1 = call %struct._object* @_bz2_BZ2Compressor_compress_impl(%struct.BZ2Compressor* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Compressor_flush(%struct.BZ2Compressor* %self, %struct._object* %_unused_ignored) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %call = call %struct._object* @_bz2_BZ2Compressor_flush_impl(%struct.BZ2Compressor* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BZ2Compressor_getstate(%struct.BZ2Compressor* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %2 = bitcast %struct.BZ2Compressor* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Compressor_compress_impl(%struct.BZ2Compressor* %self, %struct.bufferinfo* %data) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %result = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %0, i32 0, i32 3
  %1 = load i8*, i8** %lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock2 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %2, i32 0, i32 3
  %3 = load i8*, i8** %lock2, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %flushed = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %5, i32 0, i32 2
  %6 = load i32, i32* %flushed, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.7

if.else:                                          ; preds = %do.end
  %8 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len, align 8
  %call6 = call %struct._object* @compress(%struct.BZ2Compressor* %8, i8* %10, i64 %12, i32 0)
  store %struct._object* %call6, %struct._object** %result, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %13 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock8 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %13, i32 0, i32 3
  %14 = load i8*, i8** %lock8, align 8
  call void @PyThread_release_lock(i8* %14)
  %15 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %15
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @compress(%struct.BZ2Compressor* %c, i8* %data, i64 %len, i32 %action) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.BZ2Compressor*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %action.addr = alloca i32, align 4
  %data_size = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %this_out = alloca i8*, align 8
  %bzerror = alloca i32, align 4
  %buffer_left = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.BZ2Compressor* %c, %struct.BZ2Compressor** %c.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 %action, i32* %action.addr, align 4
  store i64 0, i64* %data_size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 8192)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %2 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %2, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs, i32 0, i32 0
  store i8* %1, i8** %next_in, align 8
  %3 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs1 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %3, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs1, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %4 = load %struct._object*, %struct._object** %result, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %5, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %6 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs2 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %6, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs2, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %7 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs3 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %7, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs3, i32 0, i32 5
  store i32 8192, i32* %avail_out, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.72, %if.end
  %8 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs4 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %8, i32 0, i32 1
  %avail_in5 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs4, i32 0, i32 1
  %9 = load i32, i32* %avail_in5, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.cond
  %10 = load i64, i64* %len.addr, align 8
  %cmp7 = icmp ugt i64 %10, 0
  br i1 %cmp7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %land.lhs.true
  %11 = load i64, i64* %len.addr, align 8
  %cmp9 = icmp ugt i64 %11, 4294967295
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %12 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %12, %cond.false ]
  %conv = trunc i64 %cond to i32
  %13 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs10 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %13, i32 0, i32 1
  %avail_in11 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs10, i32 0, i32 1
  store i32 %conv, i32* %avail_in11, align 4
  %14 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs12 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %14, i32 0, i32 1
  %avail_in13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs12, i32 0, i32 1
  %15 = load i32, i32* %avail_in13, align 4
  %conv14 = zext i32 %15 to i64
  %16 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %16, %conv14
  store i64 %sub, i64* %len.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %cond.end, %land.lhs.true, %for.cond
  %17 = load i32, i32* %action.addr, align 4
  %cmp16 = icmp eq i32 %17, 0
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %if.end.15
  %18 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs19 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %18, i32 0, i32 1
  %avail_in20 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs19, i32 0, i32 1
  %19 = load i32, i32* %avail_in20, align 4
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.18
  br label %for.end

if.end.24:                                        ; preds = %land.lhs.true.18, %if.end.15
  %20 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs25 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %20, i32 0, i32 1
  %avail_out26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs25, i32 0, i32 5
  %21 = load i32, i32* %avail_out26, align 4
  %cmp27 = icmp eq i32 %21, 0
  br i1 %cmp27, label %if.then.29, label %if.end.55

if.then.29:                                       ; preds = %if.end.24
  %22 = load %struct._object*, %struct._object** %result, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size, align 8
  %25 = load i64, i64* %data_size, align 8
  %sub30 = sub i64 %24, %25
  store i64 %sub30, i64* %buffer_left, align 8
  %26 = load i64, i64* %buffer_left, align 8
  %cmp31 = icmp eq i64 %26, 0
  br i1 %cmp31, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %if.then.29
  %call34 = call i32 @grow_buffer(%struct._object** %result)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.33
  br label %error

if.end.38:                                        ; preds = %if.then.33
  %27 = load %struct._object*, %struct._object** %result, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyBytesObject*
  %ob_sval39 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %28, i32 0, i32 2
  %arraydecay40 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval39, i32 0, i32 0
  %29 = load i64, i64* %data_size, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay40, i64 %29
  %30 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs41 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %30, i32 0, i32 1
  %next_out42 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs41, i32 0, i32 4
  store i8* %add.ptr, i8** %next_out42, align 8
  %31 = load %struct._object*, %struct._object** %result, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size43 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size43, align 8
  %34 = load i64, i64* %data_size, align 8
  %sub44 = sub i64 %33, %34
  store i64 %sub44, i64* %buffer_left, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.38, %if.then.29
  %35 = load i64, i64* %buffer_left, align 8
  %cmp46 = icmp ugt i64 %35, 4294967295
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %if.end.45
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.end.45
  %36 = load i64, i64* %buffer_left, align 8
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.48
  %cond51 = phi i64 [ 4294967295, %cond.true.48 ], [ %36, %cond.false.49 ]
  %conv52 = trunc i64 %cond51 to i32
  %37 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs53 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %37, i32 0, i32 1
  %avail_out54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs53, i32 0, i32 5
  store i32 %conv52, i32* %avail_out54, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.50, %if.end.24
  %call56 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call56, %struct._ts** %_save, align 8
  %38 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs57 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %38, i32 0, i32 1
  %next_out58 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs57, i32 0, i32 4
  %39 = load i8*, i8** %next_out58, align 8
  store i8* %39, i8** %this_out, align 8
  %40 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs59 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %40, i32 0, i32 1
  %41 = load i32, i32* %action.addr, align 4
  %call60 = call i32 @BZ2_bzCompress(%struct.bz_stream* %bzs59, i32 %41)
  store i32 %call60, i32* %bzerror, align 4
  %42 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %c.addr, align 8
  %bzs61 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %42, i32 0, i32 1
  %next_out62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs61, i32 0, i32 4
  %43 = load i8*, i8** %next_out62, align 8
  %44 = load i8*, i8** %this_out, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %43 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %44 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %45 = load i64, i64* %data_size, align 8
  %add = add i64 %45, %sub.ptr.sub
  store i64 %add, i64* %data_size, align 8
  %46 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %46)
  %47 = load i32, i32* %bzerror, align 4
  %call63 = call i32 @catch_bz2_error(i32 %47)
  %tobool = icmp ne i32 %call63, 0
  br i1 %tobool, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.55
  br label %error

if.end.65:                                        ; preds = %if.end.55
  %48 = load i32, i32* %action.addr, align 4
  %cmp66 = icmp eq i32 %48, 2
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.72

land.lhs.true.68:                                 ; preds = %if.end.65
  %49 = load i32, i32* %bzerror, align 4
  %cmp69 = icmp eq i32 %49, 4
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %land.lhs.true.68
  br label %for.end

if.end.72:                                        ; preds = %land.lhs.true.68, %if.end.65
  br label %for.cond

for.end:                                          ; preds = %if.then.71, %if.then.23
  %50 = load i64, i64* %data_size, align 8
  %51 = load %struct._object*, %struct._object** %result, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyVarObject*
  %ob_size73 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %52, i32 0, i32 1
  %53 = load i64, i64* %ob_size73, align 8
  %cmp74 = icmp ne i64 %50, %53
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %for.end
  %54 = load i64, i64* %data_size, align 8
  %call77 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %54)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  br label %error

if.end.81:                                        ; preds = %if.then.76
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %for.end
  %55 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %55, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.80, %if.then.64, %if.then.37
  br label %do.body

do.body:                                          ; preds = %error
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp83 = icmp ne %struct._object* %57, null
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %do.body
  br label %do.body.86

do.body.86:                                       ; preds = %if.then.85
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %60, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp87 = icmp ne i64 %dec, 0
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %do.body.86
  br label %if.end.90

if.else:                                          ; preds = %do.body.86
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %63(%struct._object* %64)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.89
  br label %do.end

do.end:                                           ; preds = %if.end.90
  br label %if.end.91

if.end.91:                                        ; preds = %do.end, %do.body
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.92, %if.end.82, %if.then
  %65 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %65
}

declare void @PyThread_release_lock(i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @grow_buffer(%struct._object** %buf) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca %struct._object**, align 8
  %size = alloca i64, align 8
  %new_size = alloca i64, align 8
  store %struct._object** %buf, %struct._object*** %buf.addr, align 8
  %0 = load %struct._object**, %struct._object*** %buf.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %size, align 8
  %4 = load i64, i64* %size, align 8
  %5 = load i64, i64* %size, align 8
  %shr = lshr i64 %5, 3
  %add = add i64 %4, %shr
  %add1 = add i64 %add, 6
  store i64 %add1, i64* %new_size, align 8
  %6 = load i64, i64* %new_size, align 8
  %7 = load i64, i64* %size, align 8
  %cmp = icmp ugt i64 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct._object**, %struct._object*** %buf.addr, align 8
  %9 = load i64, i64* %new_size, align 8
  %call = call i32 @_PyBytes_Resize(%struct._object** %8, i64 %9)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @BZ2_bzCompress(%struct.bz_stream*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @catch_bz2_error(i32 %bzerror) #0 {
entry:
  %retval = alloca i32, align 4
  %bzerror.addr = alloca i32, align 4
  store i32 %bzerror, i32* %bzerror.addr, align 4
  %0 = load i32, i32* %bzerror.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 -9, label %sw.bb.1
    i32 -2, label %sw.bb.2
    i32 -3, label %sw.bb.3
    i32 -4, label %sw.bb.4
    i32 -5, label %sw.bb.4
    i32 -6, label %sw.bb.5
    i32 -7, label %sw.bb.6
    i32 -1, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  store i32 0, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 1, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry
  %3 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.14, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %8 = load i32, i32* %bzerror.addr, align 4
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 %8)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Compressor_flush_impl(%struct.BZ2Compressor* %self) #0 {
entry:
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %result = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %0, i32 0, i32 3
  %1 = load i8*, i8** %lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock2 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %2, i32 0, i32 3
  %3 = load i8*, i8** %lock2, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %flushed = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %5, i32 0, i32 2
  %6 = load i32, i32* %flushed, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.8

if.else:                                          ; preds = %do.end
  %8 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %flushed6 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %8, i32 0, i32 2
  store i32 1, i32* %flushed6, align 4
  %9 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %call7 = call %struct._object* @compress(%struct.BZ2Compressor* %9, i8* null, i64 0, i32 2)
  store %struct._object* %call7, %struct._object** %result, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.5
  %10 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock9 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %10, i32 0, i32 3
  %11 = load i8*, i8** %lock9, align 8
  call void @PyThread_release_lock(i8* %11)
  %12 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %12
}

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_bz2_BZ2Compressor___init___impl(%struct.BZ2Compressor* %self, i32 %compresslevel) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.BZ2Compressor*, align 8
  %compresslevel.addr = alloca i32, align 4
  %bzerror = alloca i32, align 4
  store %struct.BZ2Compressor* %self, %struct.BZ2Compressor** %self.addr, align 8
  store i32 %compresslevel, i32* %compresslevel.addr, align 4
  %0 = load i32, i32* %compresslevel.addr, align 4
  %cmp = icmp sle i32 1, %0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %compresslevel.addr, align 4
  %cmp1 = icmp sle i32 %1, 9
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %call = call i8* @PyThread_allocate_lock()
  %3 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %3, i32 0, i32 3
  store i8* %call, i8** %lock, align 8
  %4 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock2 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %4, i32 0, i32 3
  %5 = load i8*, i8** %lock2, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %7, i32 0, i32 1
  %opaque = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs, i32 0, i32 11
  store i8* null, i8** %opaque, align 8
  %8 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %bzs6 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %8, i32 0, i32 1
  %bzalloc = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs6, i32 0, i32 9
  store i8* (i8*, i32, i32)* @BZ2_Malloc, i8* (i8*, i32, i32)** %bzalloc, align 8
  %9 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %bzs7 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %9, i32 0, i32 1
  %bzfree = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs7, i32 0, i32 10
  store void (i8*, i8*)* @BZ2_Free, void (i8*, i8*)** %bzfree, align 8
  %10 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %bzs8 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %10, i32 0, i32 1
  %11 = load i32, i32* %compresslevel.addr, align 4
  %call9 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %bzs8, i32 %11, i32 0, i32 0)
  store i32 %call9, i32* %bzerror, align 4
  %12 = load i32, i32* %bzerror, align 4
  %call10 = call i32 @catch_bz2_error(i32 %12)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.5
  br label %error

if.end.12:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.11
  %13 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock13 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %13, i32 0, i32 3
  %14 = load i8*, i8** %lock13, align 8
  call void @PyThread_free_lock(i8* %14)
  %15 = load %struct.BZ2Compressor*, %struct.BZ2Compressor** %self.addr, align 8
  %lock14 = getelementptr inbounds %struct.BZ2Compressor, %struct.BZ2Compressor* %15, i32 0, i32 3
  store i8* null, i8** %lock14, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %error, %if.end.12, %if.then.4, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare i8* @PyThread_allocate_lock() #1

; Function Attrs: nounwind uwtable
define internal i8* @BZ2_Malloc(i8* %ctx, i32 %items, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* %items.addr, align 4
  %conv = sext i32 %2 to i64
  %3 = load i32, i32* %size.addr, align 4
  %conv2 = sext i32 %3 to i64
  %div = udiv i64 9223372036854775807, %conv2
  %cmp3 = icmp ugt i64 %conv, %div
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i32, i32* %items.addr, align 4
  %5 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %4, %5
  %conv7 = sext i32 %mul to i64
  %call = call i8* @PyMem_RawMalloc(i64 %conv7)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define internal void @BZ2_Free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @PyMem_RawFree(i8* %0)
  ret void
}

declare i32 @BZ2_bzCompressInit(%struct.bz_stream*, i32, i32, i32) #1

declare i8* @PyMem_RawMalloc(i64) #1

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @BZ2Decompressor_dealloc(%struct.BZ2Decompressor* %self) #0 {
entry:
  %self.addr = alloca %struct.BZ2Decompressor*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.BZ2Decompressor* %self, %struct.BZ2Decompressor** %self.addr, align 8
  %0 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %0, i32 0, i32 1
  %call = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %bzs)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %1, i32 0, i32 3
  %2 = load %struct._object*, %struct._object** %unused_data, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data1 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %4, i32 0, i32 3
  store %struct._object* null, %struct._object** %unused_data1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %12 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %12, i32 0, i32 4
  %13 = load i8*, i8** %lock, align 8
  %cmp7 = icmp ne i8* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %do.end.6
  %14 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock9 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %14, i32 0, i32 4
  %15 = load i8*, i8** %lock9, align 8
  call void @PyThread_free_lock(i8* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %do.end.6
  %16 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %17 = bitcast %struct.BZ2Decompressor* %16 to %struct._object*
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %20 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %21 = bitcast %struct.BZ2Decompressor* %20 to %struct._object*
  %22 = bitcast %struct._object* %21 to i8*
  call void %19(i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_bz2_BZ2Decompressor___init__(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 -1, i32* %return_value, align 4
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @BZ2Decompressor_Type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @_PyArg_NoPositional(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct._object* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %exit

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @BZ2Decompressor_Type
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.7

land.lhs.true.3:                                  ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call4 = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), %struct._object* %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true.3
  br label %exit

if.end.7:                                         ; preds = %land.lhs.true.3, %if.end
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.BZ2Decompressor*
  %call8 = call i32 @_bz2_BZ2Decompressor___init___impl(%struct.BZ2Decompressor* %7)
  store i32 %call8, i32* %return_value, align 4
  br label %exit

exit:                                             ; preds = %if.end.7, %if.then.6, %if.then
  %8 = load i32, i32* %return_value, align 4
  ret i32 %8
}

declare i32 @BZ2_bzDecompressEnd(%struct.bz_stream*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Decompressor_decompress(%struct.BZ2Decompressor* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.BZ2Decompressor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.BZ2Decompressor* %self, %struct.BZ2Decompressor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %call1 = call %struct._object* @_bz2_BZ2Decompressor_decompress_impl(%struct.BZ2Decompressor* %2, %struct.bufferinfo* %data)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %3, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %4 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BZ2Decompressor_getstate(%struct.BZ2Decompressor* %self, %struct._object* %noargs) #0 {
entry:
  %self.addr = alloca %struct.BZ2Decompressor*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  store %struct.BZ2Decompressor* %self, %struct.BZ2Decompressor** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %1 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %2 = bitcast %struct.BZ2Decompressor* %1 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i32 0, i32 0), i8* %4)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_bz2_BZ2Decompressor_decompress_impl(%struct.BZ2Decompressor* %self, %struct.bufferinfo* %data) #0 {
entry:
  %self.addr = alloca %struct.BZ2Decompressor*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %result = alloca %struct._object*, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.BZ2Decompressor* %self, %struct.BZ2Decompressor** %self.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %0, i32 0, i32 4
  %1 = load i8*, i8** %lock, align 8
  %call = call i32 @PyThread_acquire_lock(i8* %1, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %call1 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call1, %struct._ts** %_save, align 8
  %2 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock2 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %2, i32 0, i32 4
  %3 = load i8*, i8** %lock2, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %5 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %eof = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %5, i32 0, i32 2
  %6 = load i8, i8* %eof, align 1
  %tobool4 = icmp ne i8 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.end
  %7 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.7

if.else:                                          ; preds = %do.end
  %8 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 0
  %10 = load i8*, i8** %buf, align 8
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2
  %12 = load i64, i64* %len, align 8
  %call6 = call %struct._object* @decompress(%struct.BZ2Decompressor* %8, i8* %10, i64 %12)
  store %struct._object* %call6, %struct._object** %result, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %13 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock8 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %13, i32 0, i32 4
  %14 = load i8*, i8** %lock8, align 8
  call void @PyThread_release_lock(i8* %14)
  %15 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %15
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @decompress(%struct.BZ2Decompressor* %d, i8* %data, i64 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %d.addr = alloca %struct.BZ2Decompressor*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data_size = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %this_out = alloca i8*, align 8
  %bzerror = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %buffer_left = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  store %struct.BZ2Decompressor* %d, %struct.BZ2Decompressor** %d.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i64 0, i64* %data_size, align 8
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 8192)
  store %struct._object* %call, %struct._object** %result, align 8
  %0 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %3, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs, i32 0, i32 0
  store i8* %2, i8** %next_in, align 8
  %4 = load i64, i64* %len.addr, align 8
  %cmp1 = icmp ugt i64 %4, 4294967295
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %5 = load i64, i64* %len.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4294967295, %cond.true ], [ %5, %cond.false ]
  %conv = trunc i64 %cond to i32
  %6 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs2 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %6, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs2, i32 0, i32 1
  store i32 %conv, i32* %avail_in, align 4
  %7 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs3 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %7, i32 0, i32 1
  %avail_in4 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs3, i32 0, i32 1
  %8 = load i32, i32* %avail_in4, align 4
  %conv5 = zext i32 %8 to i64
  %9 = load i64, i64* %len.addr, align 8
  %sub = sub i64 %9, %conv5
  store i64 %sub, i64* %len.addr, align 8
  %10 = load %struct._object*, %struct._object** %result, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %12 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs6 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %12, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs6, i32 0, i32 4
  store i8* %arraydecay, i8** %next_out, align 8
  %13 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs7 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %13, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs7, i32 0, i32 5
  store i32 8192, i32* %avail_out, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.103, %cond.end
  %call8 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call8, %struct._ts** %_save, align 8
  %14 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs9 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %14, i32 0, i32 1
  %next_out10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs9, i32 0, i32 4
  %15 = load i8*, i8** %next_out10, align 8
  store i8* %15, i8** %this_out, align 8
  %16 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs11 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %16, i32 0, i32 1
  %call12 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %bzs11)
  store i32 %call12, i32* %bzerror, align 4
  %17 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs13 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %17, i32 0, i32 1
  %next_out14 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs13, i32 0, i32 4
  %18 = load i8*, i8** %next_out14, align 8
  %19 = load i8*, i8** %this_out, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = load i64, i64* %data_size, align 8
  %add = add i64 %20, %sub.ptr.sub
  store i64 %add, i64* %data_size, align 8
  %21 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %21)
  %22 = load i32, i32* %bzerror, align 4
  %call15 = call i32 @catch_bz2_error(i32 %22)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.cond
  br label %error

if.end.17:                                        ; preds = %for.cond
  %23 = load i32, i32* %bzerror, align 4
  %cmp18 = icmp eq i32 %23, 4
  br i1 %cmp18, label %if.then.20, label %if.end.49

if.then.20:                                       ; preds = %if.end.17
  %24 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %eof = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %24, i32 0, i32 2
  store i8 1, i8* %eof, align 1
  %25 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs21 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %25, i32 0, i32 1
  %avail_in22 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs21, i32 0, i32 1
  %26 = load i32, i32* %avail_in22, align 4
  %conv23 = zext i32 %26 to i64
  %27 = load i64, i64* %len.addr, align 8
  %add24 = add i64 %27, %conv23
  store i64 %add24, i64* %len.addr, align 8
  %28 = load i64, i64* %len.addr, align 8
  %cmp25 = icmp ugt i64 %28, 0
  br i1 %cmp25, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %if.then.20
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %29 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %unused_data = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %29, i32 0, i32 3
  %30 = load %struct._object*, %struct._object** %unused_data, align 8
  store %struct._object* %30, %struct._object** %_py_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp28 = icmp ne %struct._object* %31, null
  br i1 %cmp28, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %do.body
  %32 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %unused_data31 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %32, i32 0, i32 3
  store %struct._object* null, %struct._object** %unused_data31, align 8
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.30
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %do.body.32
  br label %if.end.36

if.else:                                          ; preds = %do.body.32
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.35
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %do.body
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %40 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs39 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %40, i32 0, i32 1
  %next_in40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs39, i32 0, i32 0
  %41 = load i8*, i8** %next_in40, align 8
  %42 = load i64, i64* %len.addr, align 8
  %call41 = call %struct._object* @PyBytes_FromStringAndSize(i8* %41, i64 %42)
  %43 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %unused_data42 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %43, i32 0, i32 3
  store %struct._object* %call41, %struct._object** %unused_data42, align 8
  %44 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %unused_data43 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %44, i32 0, i32 3
  %45 = load %struct._object*, %struct._object** %unused_data43, align 8
  %cmp44 = icmp eq %struct._object* %45, null
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.38
  br label %error

if.end.47:                                        ; preds = %do.end.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.20
  br label %for.end

if.end.49:                                        ; preds = %if.end.17
  %46 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs50 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %46, i32 0, i32 1
  %avail_in51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs50, i32 0, i32 1
  %47 = load i32, i32* %avail_in51, align 4
  %cmp52 = icmp eq i32 %47, 0
  br i1 %cmp52, label %if.then.54, label %if.end.72

if.then.54:                                       ; preds = %if.end.49
  %48 = load i64, i64* %len.addr, align 8
  %cmp55 = icmp eq i64 %48, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.then.54
  br label %for.end

if.end.58:                                        ; preds = %if.then.54
  %49 = load i64, i64* %len.addr, align 8
  %cmp59 = icmp ugt i64 %49, 4294967295
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %if.end.58
  br label %cond.end.63

cond.false.62:                                    ; preds = %if.end.58
  %50 = load i64, i64* %len.addr, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi i64 [ 4294967295, %cond.true.61 ], [ %50, %cond.false.62 ]
  %conv65 = trunc i64 %cond64 to i32
  %51 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs66 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %51, i32 0, i32 1
  %avail_in67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs66, i32 0, i32 1
  store i32 %conv65, i32* %avail_in67, align 4
  %52 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs68 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %52, i32 0, i32 1
  %avail_in69 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs68, i32 0, i32 1
  %53 = load i32, i32* %avail_in69, align 4
  %conv70 = zext i32 %53 to i64
  %54 = load i64, i64* %len.addr, align 8
  %sub71 = sub i64 %54, %conv70
  store i64 %sub71, i64* %len.addr, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %cond.end.63, %if.end.49
  %55 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs73 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %55, i32 0, i32 1
  %avail_out74 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs73, i32 0, i32 5
  %56 = load i32, i32* %avail_out74, align 4
  %cmp75 = icmp eq i32 %56, 0
  br i1 %cmp75, label %if.then.77, label %if.end.103

if.then.77:                                       ; preds = %if.end.72
  %57 = load %struct._object*, %struct._object** %result, align 8
  %58 = bitcast %struct._object* %57 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %58, i32 0, i32 1
  %59 = load i64, i64* %ob_size, align 8
  %60 = load i64, i64* %data_size, align 8
  %sub78 = sub i64 %59, %60
  store i64 %sub78, i64* %buffer_left, align 8
  %61 = load i64, i64* %buffer_left, align 8
  %cmp79 = icmp eq i64 %61, 0
  br i1 %cmp79, label %if.then.81, label %if.end.93

if.then.81:                                       ; preds = %if.then.77
  %call82 = call i32 @grow_buffer(%struct._object** %result)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.81
  br label %error

if.end.86:                                        ; preds = %if.then.81
  %62 = load %struct._object*, %struct._object** %result, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyBytesObject*
  %ob_sval87 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %63, i32 0, i32 2
  %arraydecay88 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval87, i32 0, i32 0
  %64 = load i64, i64* %data_size, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay88, i64 %64
  %65 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs89 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %65, i32 0, i32 1
  %next_out90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs89, i32 0, i32 4
  store i8* %add.ptr, i8** %next_out90, align 8
  %66 = load %struct._object*, %struct._object** %result, align 8
  %67 = bitcast %struct._object* %66 to %struct.PyVarObject*
  %ob_size91 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %67, i32 0, i32 1
  %68 = load i64, i64* %ob_size91, align 8
  %69 = load i64, i64* %data_size, align 8
  %sub92 = sub i64 %68, %69
  store i64 %sub92, i64* %buffer_left, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.86, %if.then.77
  %70 = load i64, i64* %buffer_left, align 8
  %cmp94 = icmp ugt i64 %70, 4294967295
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %if.end.93
  br label %cond.end.98

cond.false.97:                                    ; preds = %if.end.93
  %71 = load i64, i64* %buffer_left, align 8
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.96
  %cond99 = phi i64 [ 4294967295, %cond.true.96 ], [ %71, %cond.false.97 ]
  %conv100 = trunc i64 %cond99 to i32
  %72 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %d.addr, align 8
  %bzs101 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %72, i32 0, i32 1
  %avail_out102 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %bzs101, i32 0, i32 5
  store i32 %conv100, i32* %avail_out102, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %cond.end.98, %if.end.72
  br label %for.cond

for.end:                                          ; preds = %if.then.57, %if.end.48
  %73 = load i64, i64* %data_size, align 8
  %74 = load %struct._object*, %struct._object** %result, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyVarObject*
  %ob_size104 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %75, i32 0, i32 1
  %76 = load i64, i64* %ob_size104, align 8
  %cmp105 = icmp ne i64 %73, %76
  br i1 %cmp105, label %if.then.107, label %if.end.113

if.then.107:                                      ; preds = %for.end
  %77 = load i64, i64* %data_size, align 8
  %call108 = call i32 @_PyBytes_Resize(%struct._object** %result, i64 %77)
  %cmp109 = icmp slt i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.then.107
  br label %error

if.end.112:                                       ; preds = %if.then.107
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %for.end
  %78 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %78, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.111, %if.then.85, %if.then.46, %if.then.16
  br label %do.body.114

do.body.114:                                      ; preds = %error
  %79 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %79, %struct._object** %_py_xdecref_tmp, align 8
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp115 = icmp ne %struct._object* %80, null
  br i1 %cmp115, label %if.then.117, label %if.end.130

if.then.117:                                      ; preds = %do.body.114
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp119, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %83, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.118
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %86(%struct._object* %87)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129, %do.body.114
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.131, %if.end.113, %if.then
  %88 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %88
}

declare i32 @BZ2_bzDecompress(%struct.bz_stream*) #1

declare i32 @_PyArg_NoPositional(i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_bz2_BZ2Decompressor___init___impl(%struct.BZ2Decompressor* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.BZ2Decompressor*, align 8
  %bzerror = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.BZ2Decompressor* %self, %struct.BZ2Decompressor** %self.addr, align 8
  %call = call i8* @PyThread_allocate_lock()
  %0 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %0, i32 0, i32 4
  store i8* %call, i8** %lock, align 8
  %1 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock1 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %1, i32 0, i32 4
  %2 = load i8*, i8** %lock1, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), i64 0)
  %4 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %4, i32 0, i32 3
  store %struct._object* %call2, %struct._object** %unused_data, align 8
  %5 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data3 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %unused_data3, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %error

if.end.6:                                         ; preds = %if.end
  %7 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %bzs = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %7, i32 0, i32 1
  %call7 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %bzs, i32 0, i32 0)
  store i32 %call7, i32* %bzerror, align 4
  %8 = load i32, i32* %bzerror, align 4
  %call8 = call i32 @catch_bz2_error(i32 %8)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %error

if.end.10:                                        ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.9, %if.then.5
  br label %do.body

do.body:                                          ; preds = %error
  %9 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data11 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %9, i32 0, i32 3
  %10 = load %struct._object*, %struct._object** %unused_data11, align 8
  store %struct._object* %10, %struct._object** %_py_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp12 = icmp ne %struct._object* %11, null
  br i1 %cmp12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %do.body
  %12 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %unused_data14 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %12, i32 0, i32 3
  store %struct._object* null, %struct._object** %unused_data14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %13 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body.15
  br label %if.end.18

if.else:                                          ; preds = %do.body.15
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  br label %if.end.19

if.end.19:                                        ; preds = %do.end, %do.body
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %20 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock21 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %20, i32 0, i32 4
  %21 = load i8*, i8** %lock21, align 8
  call void @PyThread_free_lock(i8* %21)
  %22 = load %struct.BZ2Decompressor*, %struct.BZ2Decompressor** %self.addr, align 8
  %lock22 = getelementptr inbounds %struct.BZ2Decompressor, %struct.BZ2Decompressor* %22, i32 0, i32 4
  store i8* null, i8** %lock22, align 8
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.end.10, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @BZ2_bzDecompressInit(%struct.bz_stream*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
