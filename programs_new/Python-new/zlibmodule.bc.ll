; ModuleID = 'programs_new/Python-new/zlibmodule.bc.ll'
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
%struct.compobject = type { %struct._object, %struct.z_stream_s, %struct._object*, %struct._object*, i8, i32, %struct._object*, i8* }
%struct.z_stream_s = type { i8*, i32, i64, i8*, i32, i64, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i64, i64 }
%struct.internal_state = type { i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@Comptype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i64 168, i64 0, void (%struct._object*)* bitcast (void (%struct.compobject*)* @Comp_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @comp_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@Decomptype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i64 168, i64 0, void (%struct._object*)* bitcast (void (%struct.compobject*)* @Decomp_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @Decomp_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @Decomp_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@zlibmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([650 x i8], [650 x i8]* @zlib_module_documentation, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([7 x %struct.PyMethodDef], [7 x %struct.PyMethodDef]* @zlib_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"zlib.error\00", align 1
@ZlibError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"MAX_WBITS\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DEFLATED\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DEF_MEM_LEVEL\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"DEF_BUF_SIZE\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Z_BEST_SPEED\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Z_BEST_COMPRESSION\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Z_DEFAULT_COMPRESSION\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Z_FILTERED\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Z_HUFFMAN_ONLY\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Z_DEFAULT_STRATEGY\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Z_FINISH\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Z_NO_FLUSH\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Z_SYNC_FLUSH\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Z_FULL_FLUSH\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"1.2.7\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"ZLIB_VERSION\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"ZLIB_RUNTIME_VERSION\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"__version__\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"zlib.Compress\00", align 1
@comp_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_compress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([285 x i8], [285 x i8]* @zlib_Compress_compress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([333 x i8], [333 x i8]* @zlib_Compress_flush__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @zlib_Compress_copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.22 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@zlib_Compress_compress__doc__ = internal global [285 x i8] c"compress($self, data, /)\0A--\0A\0AReturns a bytes object containing compressed data.\0A\0A  data\0A    Binary data to be compressed.\0A\0AAfter calling this function, some of the input data may still\0Abe stored in internal buffers for later processing.\0ACall the flush() method to clear these buffers.\00", align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@zlib_Compress_flush__doc__ = internal global [333 x i8] c"flush($self, mode=zlib.Z_FINISH, /)\0A--\0A\0AReturn a bytes object containing any remaining compressed data.\0A\0A  mode\0A    One of the constants Z_SYNC_FLUSH, Z_FULL_FLUSH, Z_FINISH.\0A    If mode == Z_FINISH, the compressor object can no longer be\0A    used after calling the flush() method.  Otherwise, more data\0A    can still be compressed.\00", align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@zlib_Compress_copy__doc__ = internal global [60 x i8] c"copy($self, /)\0A--\0A\0AReturn a copy of the compression object.\00", align 16
@.str.25 = private unnamed_addr constant [12 x i8] c"y*:compress\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [37 x i8] c"Size does not fit in an unsigned int\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"while compressing data\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"library version mismatch\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"incomplete or truncated stream\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"inconsistent stream state\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"invalid input data\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"Error %d %s\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Error %d %s: %.200s\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"|i:flush\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"while finishing compression\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"while flushing\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.37 = private unnamed_addr constant [26 x i8] c"Inconsistent stream state\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.38 = private unnamed_addr constant [45 x i8] c"Can't allocate memory for compression object\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"while copying compression object\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Unable to allocate lock\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"zlib.Decompress\00", align 1
@Decomp_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_decompress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([473 x i8], [473 x i8]* @zlib_Decompress_decompress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_flush to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @zlib_Decompress_flush__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @zlib_Decompress_copy__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@Decomp_members = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 6, i64 128, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 6, i64 136, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i32 0, i32 0), i32 14, i64 144, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@zlib_Decompress_decompress__doc__ = internal global [473 x i8] c"decompress($self, data, max_length=0, /)\0A--\0A\0AReturn a bytes object containing the decompressed version of the data.\0A\0A  data\0A    The binary data to decompress.\0A  max_length\0A    The maximum allowable length of the decompressed data.\0A    Unconsumed input data will be stored in\0A    the unconsumed_tail attribute.\0A\0AAfter calling this function, some of the input data may still be stored in\0Ainternal buffers for later processing.\0ACall the flush() method to clear these buffers.\00", align 16
@zlib_Decompress_flush__doc__ = internal global [165 x i8] c"flush($self, length=zlib.DEF_BUF_SIZE, /)\0A--\0A\0AReturn a bytes object containing any remaining decompressed data.\0A\0A  length\0A    the initial size of the output buffer.\00", align 16
@zlib_Decompress_copy__doc__ = internal global [62 x i8] c"copy($self, /)\0A--\0A\0AReturn a copy of the decompression object.\00", align 16
@.str.44 = private unnamed_addr constant [17 x i8] c"y*|O&:decompress\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"value must be positive\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"Python int too large for C unsigned int\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"zdict length does not fit in an unsigned int\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"while decompressing data\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"|O&:flush\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"length must be greater than zero\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"while finishing decompression\00", align 1
@.str.52 = private unnamed_addr constant [47 x i8] c"Can't allocate memory for decompression object\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"while copying decompression object\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"unused_data\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"unconsumed_tail\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"eof\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@zlib_module_documentation = internal global [650 x i8] c"The functions in this module allow compression and decompression using the\0Azlib library, which is based on GNU zip.\0A\0Aadler32(string[, start]) -- Compute an Adler-32 checksum.\0Acompress(string[, level]) -- Compress string, with compression level in 0-9.\0Acompressobj([level[, ...]]) -- Return a compressor object.\0Acrc32(string[, start]) -- Compute a CRC-32 checksum.\0Adecompress(string,[wbits],[bufsize]) -- Decompresses a compressed string.\0Adecompressobj([wbits[, zdict]]]) -- Return a decompressor object.\0A\0A'wbits' is window buffer size.\0ACompressor objects support compress() and flush() methods; decompressor\0Aobjects support decompress() and flush().\00", align 16
@zlib_methods = internal global [7 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_adler32 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @zlib_adler32__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_compress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @zlib_compress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @zlib_compressobj to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([987 x i8], [987 x i8]* @zlib_compressobj__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_crc32 to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @zlib_crc32__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_decompress to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([240 x i8], [240 x i8]* @zlib_decompress__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @zlib_decompressobj to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([270 x i8], [270 x i8]* @zlib_decompressobj__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.58 = private unnamed_addr constant [8 x i8] c"adler32\00", align 1
@zlib_adler32__doc__ = internal global [160 x i8] c"adler32($module, data, value=1, /)\0A--\0A\0ACompute an Adler-32 checksum of data.\0A\0A  value\0A    Starting value of the checksum.\0A\0AThe returned checksum is an integer.\00", align 16
@zlib_compress__doc__ = internal global [194 x i8] c"compress($module, bytes, level=Z_DEFAULT_COMPRESSION, /)\0A--\0A\0AReturns a bytes object containing compressed data.\0A\0A  bytes\0A    Binary data to be compressed.\0A  level\0A    Compression level, in 0-9.\00", align 16
@.str.59 = private unnamed_addr constant [12 x i8] c"compressobj\00", align 1
@zlib_compressobj__doc__ = internal global [987 x i8] c"compressobj($module, /, level=Z_DEFAULT_COMPRESSION, method=DEFLATED,\0A            wbits=MAX_WBITS, memLevel=DEF_MEM_LEVEL,\0A            strategy=Z_DEFAULT_STRATEGY, zdict=None)\0A--\0A\0AReturn a compressor object.\0A\0A  level\0A    The compression level (an integer in the range 0-9; default is 6).\0A    Higher compression levels are slower, but produce smaller results.\0A  method\0A    The compression algorithm.  If given, this must be DEFLATED.\0A  wbits\0A    The base two logarithm of the window size (range: 8..15).\0A  memLevel\0A    Controls the amount of memory used for internal compression state.\0A    Valid values range from 1 to 9.  Higher values result in higher memory\0A    usage, faster compression, and smaller output.\0A  strategy\0A    Used to tune the compression algorithm.  Possible values are\0A    Z_DEFAULT_STRATEGY, Z_FILTERED, and Z_HUFFMAN_ONLY.\0A  zdict\0A    The predefined compression dictionary - a sequence of bytes\0A    containing subsequences that are likely to occur in the input data.\00", align 16
@.str.60 = private unnamed_addr constant [6 x i8] c"crc32\00", align 1
@zlib_crc32__doc__ = internal global [155 x i8] c"crc32($module, data, value=0, /)\0A--\0A\0ACompute a CRC-32 checksum of data.\0A\0A  value\0A    Starting value of the checksum.\0A\0AThe returned checksum is an integer.\00", align 16
@zlib_decompress__doc__ = internal global [240 x i8] c"decompress($module, data, wbits=MAX_WBITS, bufsize=DEF_BUF_SIZE, /)\0A--\0A\0AReturns a bytes object containing the uncompressed data.\0A\0A  data\0A    Compressed data.\0A  wbits\0A    The window buffer size.\0A  bufsize\0A    The initial output buffer size.\00", align 16
@.str.61 = private unnamed_addr constant [14 x i8] c"decompressobj\00", align 1
@zlib_decompressobj__doc__ = internal global [270 x i8] c"decompressobj($module, /, wbits=MAX_WBITS, zdict=b'')\0A--\0A\0AReturn a decompressor object.\0A\0A  wbits\0A    The window buffer size.\0A  zdict\0A    The predefined compression dictionary.  This must be the same\0A    dictionary as used by the compressor that produced the input data.\00", align 16
@.str.62 = private unnamed_addr constant [13 x i8] c"y*|I:adler32\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"y*|i:compress\00", align 1
@.str.64 = private unnamed_addr constant [39 x i8] c"Can't allocate memory to compress data\00", align 1
@.str.65 = private unnamed_addr constant [37 x i8] c"Out of memory while compressing data\00", align 1
@.str.66 = private unnamed_addr constant [22 x i8] c"Bad compression level\00", align 1
@zlib_compressobj._keywords = internal global [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"wbits\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"memLevel\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"zdict\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"|iiiiiy*:compressobj\00", align 1
@.str.74 = private unnamed_addr constant [19 x i8] c"Invalid dictionary\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"deflateSetDictionary()\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"Invalid initialization option\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"while creating compression object\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"y*|I:crc32\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"y*|iO&:decompress\00", align 1
@.str.80 = private unnamed_addr constant [39 x i8] c"Out of memory while decompressing data\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"while preparing to decompress data\00", align 1
@zlib_decompressobj._keywords = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i8* null], align 16
@.str.82 = private unnamed_addr constant [18 x i8] c"|iO:decompressobj\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.83 = private unnamed_addr constant [48 x i8] c"zdict argument must support the buffer protocol\00", align 1
@.str.84 = private unnamed_addr constant [36 x i8] c"while creating decompression object\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_zlib() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %ver = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1119
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !420, metadata !1120), !dbg !1121
  %1 = bitcast %struct._object** %ver to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1119
  call void @llvm.dbg.declare(metadata %struct._object** %ver, metadata !421, metadata !1120), !dbg !1122
  %call = call i32 @PyType_Ready(%struct._typeobject* @Comptype), !dbg !1123
  %cmp = icmp slt i32 %call, 0, !dbg !1125
  br i1 %cmp, label %if.then, label %if.end, !dbg !1126

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1127
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1127

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @Decomptype), !dbg !1128
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1130
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1131

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1132
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1132

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @zlibmodule, i32 1013), !dbg !1133
  store %struct._object* %call5, %struct._object** %m, align 8, !dbg !1134, !tbaa !1135
  %2 = load %struct._object*, %struct._object** %m, align 8, !dbg !1139, !tbaa !1135
  %cmp6 = icmp eq %struct._object* %2, null, !dbg !1141
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1142

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1143
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1143

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null), !dbg !1144
  store %struct._object* %call9, %struct._object** @ZlibError, align 8, !dbg !1145, !tbaa !1135
  %3 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !1146, !tbaa !1135
  %cmp10 = icmp ne %struct._object* %3, null, !dbg !1148
  br i1 %cmp10, label %if.then.11, label %if.end.13, !dbg !1149

if.then.11:                                       ; preds = %if.end.8
  %4 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !1150, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !1152
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1153, !tbaa !1154
  %inc = add i64 %5, 1, !dbg !1153
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1153, !tbaa !1154
  %6 = load %struct._object*, %struct._object** %m, align 8, !dbg !1157, !tbaa !1135
  %7 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !1158, !tbaa !1135
  %call12 = call i32 @PyModule_AddObject(%struct._object* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %7), !dbg !1159
  br label %if.end.13, !dbg !1160

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %8 = load %struct._object*, %struct._object** %m, align 8, !dbg !1161, !tbaa !1135
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 15), !dbg !1162
  %9 = load %struct._object*, %struct._object** %m, align 8, !dbg !1163, !tbaa !1135
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 8), !dbg !1164
  %10 = load %struct._object*, %struct._object** %m, align 8, !dbg !1165, !tbaa !1135
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 8), !dbg !1166
  %11 = load %struct._object*, %struct._object** %m, align 8, !dbg !1167, !tbaa !1135
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 16384), !dbg !1168
  %12 = load %struct._object*, %struct._object** %m, align 8, !dbg !1169, !tbaa !1135
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 1), !dbg !1170
  %13 = load %struct._object*, %struct._object** %m, align 8, !dbg !1171, !tbaa !1135
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i64 9), !dbg !1172
  %14 = load %struct._object*, %struct._object** %m, align 8, !dbg !1173, !tbaa !1135
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 -1), !dbg !1174
  %15 = load %struct._object*, %struct._object** %m, align 8, !dbg !1175, !tbaa !1135
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 1), !dbg !1176
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !1177, !tbaa !1135
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 2), !dbg !1178
  %17 = load %struct._object*, %struct._object** %m, align 8, !dbg !1179, !tbaa !1135
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i64 0), !dbg !1180
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !1181, !tbaa !1135
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i64 4), !dbg !1182
  %19 = load %struct._object*, %struct._object** %m, align 8, !dbg !1183, !tbaa !1135
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 0), !dbg !1184
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !1185, !tbaa !1135
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 2), !dbg !1186
  %21 = load %struct._object*, %struct._object** %m, align 8, !dbg !1187, !tbaa !1135
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i64 3), !dbg !1188
  %call28 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)), !dbg !1189
  store %struct._object* %call28, %struct._object** %ver, align 8, !dbg !1190, !tbaa !1135
  %22 = load %struct._object*, %struct._object** %ver, align 8, !dbg !1191, !tbaa !1135
  %cmp29 = icmp ne %struct._object* %22, null, !dbg !1193
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !1194

if.then.30:                                       ; preds = %if.end.13
  %23 = load %struct._object*, %struct._object** %m, align 8, !dbg !1195, !tbaa !1135
  %24 = load %struct._object*, %struct._object** %ver, align 8, !dbg !1196, !tbaa !1135
  %call31 = call i32 @PyModule_AddObject(%struct._object* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* %24), !dbg !1197
  br label %if.end.32, !dbg !1197

if.end.32:                                        ; preds = %if.then.30, %if.end.13
  %call33 = call i8* @zlibVersion(), !dbg !1198
  %call34 = call %struct._object* @PyUnicode_FromString(i8* %call33), !dbg !1199
  store %struct._object* %call34, %struct._object** %ver, align 8, !dbg !1200, !tbaa !1135
  %25 = load %struct._object*, %struct._object** %ver, align 8, !dbg !1201, !tbaa !1135
  %cmp35 = icmp ne %struct._object* %25, null, !dbg !1203
  br i1 %cmp35, label %if.then.36, label %if.end.38, !dbg !1204

if.then.36:                                       ; preds = %if.end.32
  %26 = load %struct._object*, %struct._object** %m, align 8, !dbg !1205, !tbaa !1135
  %27 = load %struct._object*, %struct._object** %ver, align 8, !dbg !1206, !tbaa !1135
  %call37 = call i32 @PyModule_AddObject(%struct._object* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._object* %27), !dbg !1207
  br label %if.end.38, !dbg !1207

if.end.38:                                        ; preds = %if.then.36, %if.end.32
  %28 = load %struct._object*, %struct._object** %m, align 8, !dbg !1208, !tbaa !1135
  %call39 = call i32 @PyModule_AddStringConstant(%struct._object* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !1209
  %29 = load %struct._object*, %struct._object** %m, align 8, !dbg !1210, !tbaa !1135
  store %struct._object* %29, %struct._object** %retval, !dbg !1211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1211

cleanup:                                          ; preds = %if.end.38, %if.then.7, %if.then.3, %if.then
  %30 = bitcast %struct._object** %ver to i8*, !dbg !1212
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1212
  %31 = bitcast %struct._object** %m to i8*, !dbg !1212
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1212
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1212
  ret %struct._object* %32, !dbg !1212
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare i8* @zlibVersion() #3

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @Comp_dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !426, metadata !1120), !dbg !1213
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1214, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 5, !dbg !1216
  %1 = load i32, i32* %is_initialised, align 4, !dbg !1216, !tbaa !1217
  %tobool = icmp ne i32 %1, 0, !dbg !1214
  br i1 %tobool, label %if.then, label %if.end, !dbg !1221

if.then:                                          ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1222, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 1, !dbg !1223
  %call = call i32 @deflateEnd(%struct.z_stream_s* %zst), !dbg !1224
  br label %if.end, !dbg !1224

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1225, !tbaa !1135
  call void @Dealloc(%struct.compobject* %3), !dbg !1226
  ret void, !dbg !1227
}

declare i32 @deflateEnd(%struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define internal void @Dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !429, metadata !1120), !dbg !1228
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1229, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 7, !dbg !1230
  %1 = load i8*, i8** %lock, align 8, !dbg !1230, !tbaa !1231
  call void @PyThread_free_lock(i8* %1), !dbg !1232
  br label %do.body, !dbg !1233

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1234
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1234
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !430, metadata !1120), !dbg !1236
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1237, !tbaa !1135
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %3, i32 0, i32 2, !dbg !1238
  %4 = load %struct._object*, %struct._object** %unused_data, align 8, !dbg !1238, !tbaa !1239
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1236, !tbaa !1135
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1240, !tbaa !1135
  %cmp = icmp ne %struct._object* %5, null, !dbg !1241
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1242

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1243

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1245
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1245
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !432, metadata !1120), !dbg !1247
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1248, !tbaa !1135
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1247, !tbaa !1135
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1249, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1251
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1252, !tbaa !1154
  %dec = add i64 %9, -1, !dbg !1252
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1252, !tbaa !1154
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1253
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1254

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1255

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1257, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1259
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1259, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1261
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1261, !tbaa !1262
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1265, !tbaa !1135
  call void %12(%struct._object* %13), !dbg !1266
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1267
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1267
  br label %do.cond, !dbg !1269

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1270

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1272

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1274
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1274
  br label %do.end.6, !dbg !1277

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !1278

do.body.7:                                        ; preds = %do.end.6
  %16 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1279
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1279
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !435, metadata !1120), !dbg !1281
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1282, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 3, !dbg !1283
  %18 = load %struct._object*, %struct._object** %unconsumed_tail, align 8, !dbg !1283, !tbaa !1284
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1281, !tbaa !1135
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1285, !tbaa !1135
  %cmp9 = icmp ne %struct._object* %19, null, !dbg !1286
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !1287

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !1288

do.body.11:                                       ; preds = %if.then.10
  %20 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1290
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !1290
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !437, metadata !1120), !dbg !1292
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1293, !tbaa !1135
  store %struct._object* %21, %struct._object** %_py_decref_tmp12, align 8, !dbg !1292, !tbaa !1135
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1294, !tbaa !1135
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1296
  %23 = load i64, i64* %ob_refcnt13, align 8, !dbg !1297, !tbaa !1154
  %dec14 = add i64 %23, -1, !dbg !1297
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1297, !tbaa !1154
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !1298
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !1299

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !1300

if.else.17:                                       ; preds = %do.body.11
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1302, !tbaa !1135
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1304
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1304, !tbaa !1260
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1305
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1305, !tbaa !1262
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1306, !tbaa !1135
  call void %26(%struct._object* %27), !dbg !1307
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1308
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1308
  br label %do.cond.21, !dbg !1310

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1311

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !1313

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %29 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1315
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1315
  br label %do.end.25, !dbg !1316

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !1317

do.body.26:                                       ; preds = %do.end.25
  %30 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !1318
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1318
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !440, metadata !1120), !dbg !1320
  %31 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1321, !tbaa !1135
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %31, i32 0, i32 6, !dbg !1322
  %32 = load %struct._object*, %struct._object** %zdict, align 8, !dbg !1322, !tbaa !1323
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1320, !tbaa !1135
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1324, !tbaa !1135
  %cmp28 = icmp ne %struct._object* %33, null, !dbg !1325
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !1326

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !1327

do.body.30:                                       ; preds = %if.then.29
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1329
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !1329
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !442, metadata !1120), !dbg !1331
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1332, !tbaa !1135
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !1331, !tbaa !1135
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1333, !tbaa !1135
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1335
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !1336, !tbaa !1154
  %dec33 = add i64 %37, -1, !dbg !1336
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1336, !tbaa !1154
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !1337
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !1338

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !1339

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1341, !tbaa !1135
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1343
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1343, !tbaa !1260
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !1344
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1344, !tbaa !1262
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1345, !tbaa !1135
  call void %40(%struct._object* %41), !dbg !1346
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1347
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !1347
  br label %do.cond.40, !dbg !1349

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !1350

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !1352

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %43 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !1354
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1354
  br label %do.end.44, !dbg !1355

do.end.44:                                        ; preds = %if.end.42
  %44 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1356, !tbaa !1135
  %45 = bitcast %struct.compobject* %44 to i8*, !dbg !1356
  call void @PyObject_Free(i8* %45), !dbg !1357
  ret void, !dbg !1358
}

declare void @PyThread_free_lock(i8*) #3

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_compress(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !450, metadata !1120), !dbg !1359
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !451, metadata !1120), !dbg !1360
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1361
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1361
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !452, metadata !1120), !dbg !1362
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1362, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1363
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !1363
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !453, metadata !1120), !dbg !1364
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1364
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !1364
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1365, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %struct.bufferinfo* %data), !dbg !1367
  %tobool = icmp ne i32 %call, 0, !dbg !1367
  br i1 %tobool, label %if.end, label %if.then, !dbg !1368

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1369

if.end:                                           ; preds = %entry
  %4 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1370, !tbaa !1135
  %call1 = call %struct._object* @zlib_Compress_compress_impl(%struct.compobject* %4, %struct.bufferinfo* %data), !dbg !1371
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1372, !tbaa !1135
  br label %exit, !dbg !1373

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !1374
  %5 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1374, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %5, null, !dbg !1378
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1379

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !1380
  br label %if.end.4, !dbg !1380

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1381, !tbaa !1135
  %7 = bitcast %struct.bufferinfo* %data to i8*, !dbg !1382
  call void @llvm.lifetime.end(i64 80, i8* %7) #1, !dbg !1382
  %8 = bitcast %struct._object** %return_value to i8*, !dbg !1382
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !1382
  ret %struct._object* %6, !dbg !1383
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_flush(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !566, metadata !1120), !dbg !1384
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !567, metadata !1120), !dbg !1385
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !1386
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1386
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !568, metadata !1120), !dbg !1387
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !1387, !tbaa !1135
  %1 = bitcast i32* %mode to i8*, !dbg !1388
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1388
  call void @llvm.dbg.declare(metadata i32* %mode, metadata !569, metadata !1120), !dbg !1389
  store i32 4, i32* %mode, align 4, !dbg !1389, !tbaa !1390
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1391, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32* %mode), !dbg !1393
  %tobool = icmp ne i32 %call, 0, !dbg !1393
  br i1 %tobool, label %if.end, label %if.then, !dbg !1394

if.then:                                          ; preds = %entry
  br label %exit, !dbg !1395

if.end:                                           ; preds = %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1396, !tbaa !1135
  %4 = load i32, i32* %mode, align 4, !dbg !1397, !tbaa !1390
  %call1 = call %struct._object* @zlib_Compress_flush_impl(%struct.compobject* %3, i32 %4), !dbg !1398
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !1399, !tbaa !1135
  br label %exit, !dbg !1400

exit:                                             ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !1401, !tbaa !1135
  %6 = bitcast i32* %mode to i8*, !dbg !1402
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !1402
  %7 = bitcast %struct._object** %return_value to i8*, !dbg !1402
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !1402
  ret %struct._object* %5, !dbg !1403
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_copy(%struct.compobject* %self, %struct._object* %_unused_ignored) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !616, metadata !1120), !dbg !1404
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %_unused_ignored.addr, metadata !617, metadata !1120), !dbg !1405
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1406, !tbaa !1135
  %call = call %struct._object* @zlib_Compress_copy_impl(%struct.compobject* %0), !dbg !1407
  ret %struct._object* %call, !dbg !1408
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_compress_impl(%struct.compobject* %self, %struct.bufferinfo* %data) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %err = alloca i32, align 4
  %inplen = alloca i32, align 4
  %length = alloca i32, align 4
  %new_length = alloca i32, align 4
  %RetVal = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %start_total_out = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save11 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save49 = alloca %struct._ts*, align 8
  %_py_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !458, metadata !1120), !dbg !1409
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !459, metadata !1120), !dbg !1410
  %0 = bitcast i32* %err to i8*, !dbg !1411
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1411
  call void @llvm.dbg.declare(metadata i32* %err, metadata !460, metadata !1120), !dbg !1412
  %1 = bitcast i32* %inplen to i8*, !dbg !1413
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1413
  call void @llvm.dbg.declare(metadata i32* %inplen, metadata !461, metadata !1120), !dbg !1414
  %2 = bitcast i32* %length to i8*, !dbg !1415
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %length, metadata !462, metadata !1120), !dbg !1416
  store i32 16384, i32* %length, align 4, !dbg !1416, !tbaa !1390
  %3 = bitcast i32* %new_length to i8*, !dbg !1415
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1415
  call void @llvm.dbg.declare(metadata i32* %new_length, metadata !463, metadata !1120), !dbg !1417
  %4 = bitcast %struct._object** %RetVal to i8*, !dbg !1418
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct._object** %RetVal, metadata !464, metadata !1120), !dbg !1419
  %5 = bitcast i8** %input to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1420
  call void @llvm.dbg.declare(metadata i8** %input, metadata !465, metadata !1120), !dbg !1421
  %6 = bitcast i64* %start_total_out to i8*, !dbg !1422
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1422
  call void @llvm.dbg.declare(metadata i64* %start_total_out, metadata !466, metadata !1120), !dbg !1423
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1424, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2, !dbg !1426
  %8 = load i64, i64* %len, align 8, !dbg !1426, !tbaa !1427
  %cmp = icmp ugt i64 %8, 4294967295, !dbg !1428
  br i1 %cmp, label %if.then, label %if.end, !dbg !1429

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1430, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0)), !dbg !1432
  store %struct._object* null, %struct._object** %retval, !dbg !1433
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1433

if.end:                                           ; preds = %entry
  %10 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1434, !tbaa !1135
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %10, i32 0, i32 0, !dbg !1435
  %11 = load i8*, i8** %buf, align 8, !dbg !1435, !tbaa !1436
  store i8* %11, i8** %input, align 8, !dbg !1437, !tbaa !1135
  %12 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !1438, !tbaa !1135
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %12, i32 0, i32 2, !dbg !1439
  %13 = load i64, i64* %len1, align 8, !dbg !1439, !tbaa !1427
  %conv = trunc i64 %13 to i32, !dbg !1440
  store i32 %conv, i32* %inplen, align 4, !dbg !1441, !tbaa !1390
  %14 = load i32, i32* %length, align 4, !dbg !1442, !tbaa !1390
  %conv2 = zext i32 %14 to i64, !dbg !1442
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv2), !dbg !1444
  store %struct._object* %call, %struct._object** %RetVal, align 8, !dbg !1445, !tbaa !1135
  %tobool = icmp ne %struct._object* %call, null, !dbg !1445
  br i1 %tobool, label %if.end.4, label %if.then.3, !dbg !1446

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1447
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1447

if.end.4:                                         ; preds = %if.end
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !1448
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !1448
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !467, metadata !1120), !dbg !1449
  %call5 = call %struct._ts* @PyEval_SaveThread(), !dbg !1450
  store %struct._ts* %call5, %struct._ts** %_save, align 8, !dbg !1451, !tbaa !1135
  %16 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1452, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %16, i32 0, i32 7, !dbg !1453
  %17 = load i8*, i8** %lock, align 8, !dbg !1453, !tbaa !1231
  %call6 = call i32 @PyThread_acquire_lock(i8* %17, i32 1), !dbg !1454
  %18 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1455, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %18), !dbg !1456
  %19 = bitcast %struct._ts** %_save to i8*, !dbg !1457
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1457
  %20 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1458, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 1, !dbg !1459
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !1460
  %21 = load i64, i64* %total_out, align 8, !dbg !1460, !tbaa !1461
  store i64 %21, i64* %start_total_out, align 8, !dbg !1462, !tbaa !1463
  %22 = load i32, i32* %inplen, align 4, !dbg !1464, !tbaa !1390
  %23 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1465, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %23, i32 0, i32 1, !dbg !1466
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 1, !dbg !1467
  store i32 %22, i32* %avail_in, align 4, !dbg !1468, !tbaa !1469
  %24 = load i8*, i8** %input, align 8, !dbg !1470, !tbaa !1135
  %25 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1471, !tbaa !1135
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %25, i32 0, i32 1, !dbg !1472
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 0, !dbg !1473
  store i8* %24, i8** %next_in, align 8, !dbg !1474, !tbaa !1475
  %26 = load i32, i32* %length, align 4, !dbg !1476, !tbaa !1390
  %27 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1477, !tbaa !1135
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %27, i32 0, i32 1, !dbg !1478
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 4, !dbg !1479
  store i32 %26, i32* %avail_out, align 4, !dbg !1480, !tbaa !1481
  %28 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1482, !tbaa !1135
  %29 = bitcast %struct._object* %28 to %struct.PyBytesObject*, !dbg !1483
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %29, i32 0, i32 2, !dbg !1484
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1485
  %30 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1486, !tbaa !1135
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %30, i32 0, i32 1, !dbg !1487
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 3, !dbg !1488
  store i8* %arraydecay, i8** %next_out, align 8, !dbg !1489, !tbaa !1490
  %31 = bitcast %struct._ts** %_save11 to i8*, !dbg !1491
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !1491
  call void @llvm.dbg.declare(metadata %struct._ts** %_save11, metadata !527, metadata !1120), !dbg !1492
  %call12 = call %struct._ts* @PyEval_SaveThread(), !dbg !1493
  store %struct._ts* %call12, %struct._ts** %_save11, align 8, !dbg !1494, !tbaa !1135
  %32 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1495, !tbaa !1135
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %32, i32 0, i32 1, !dbg !1496
  %call14 = call i32 @deflate(%struct.z_stream_s* %zst13, i32 0), !dbg !1497
  store i32 %call14, i32* %err, align 4, !dbg !1498, !tbaa !1390
  %33 = load %struct._ts*, %struct._ts** %_save11, align 8, !dbg !1499, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %33), !dbg !1500
  %34 = bitcast %struct._ts** %_save11 to i8*, !dbg !1501
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1501
  br label %while.cond, !dbg !1502

while.cond:                                       ; preds = %if.end.42, %if.end.4
  %35 = load i32, i32* %err, align 4, !dbg !1503, !tbaa !1390
  %cmp15 = icmp eq i32 %35, 0, !dbg !1506
  br i1 %cmp15, label %land.rhs, label %land.end, !dbg !1507

land.rhs:                                         ; preds = %while.cond
  %36 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1508, !tbaa !1135
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %36, i32 0, i32 1, !dbg !1510
  %avail_out18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst17, i32 0, i32 4, !dbg !1511
  %37 = load i32, i32* %avail_out18, align 4, !dbg !1511, !tbaa !1481
  %cmp19 = icmp eq i32 %37, 0, !dbg !1512
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %38 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %38, label %while.body, label %while.end, !dbg !1513

while.body:                                       ; preds = %land.end
  %39 = load i32, i32* %length, align 4, !dbg !1515, !tbaa !1390
  %cmp21 = icmp ule i32 %39, 2147483647, !dbg !1517
  br i1 %cmp21, label %if.then.23, label %if.else, !dbg !1518

if.then.23:                                       ; preds = %while.body
  %40 = load i32, i32* %length, align 4, !dbg !1519, !tbaa !1390
  %shl = shl i32 %40, 1, !dbg !1520
  store i32 %shl, i32* %new_length, align 4, !dbg !1521, !tbaa !1390
  br label %if.end.24, !dbg !1522

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4, !dbg !1523, !tbaa !1390
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %41 = load i32, i32* %new_length, align 4, !dbg !1524, !tbaa !1390
  %conv25 = zext i32 %41 to i64, !dbg !1524
  %call26 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv25), !dbg !1525
  %cmp27 = icmp slt i32 %call26, 0, !dbg !1526
  br i1 %cmp27, label %if.then.29, label %if.end.42, !dbg !1527

if.then.29:                                       ; preds = %if.end.24
  br label %do.body, !dbg !1528

do.body:                                          ; preds = %if.then.29
  %42 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1529
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !1529
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !529, metadata !1120), !dbg !1531
  %43 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1532, !tbaa !1135
  store %struct._object* %43, %struct._object** %_py_tmp, align 8, !dbg !1531, !tbaa !1135
  %44 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1533, !tbaa !1135
  %cmp30 = icmp ne %struct._object* %44, null, !dbg !1534
  br i1 %cmp30, label %if.then.32, label %if.end.39, !dbg !1535

if.then.32:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !1536, !tbaa !1135
  br label %do.body.33, !dbg !1538

do.body.33:                                       ; preds = %if.then.32
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1539
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !1539
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !534, metadata !1120), !dbg !1541
  %46 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1542, !tbaa !1135
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !1541, !tbaa !1135
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1543, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !1545
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1154
  %dec = add i64 %48, -1, !dbg !1546
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1154
  %cmp34 = icmp ne i64 %dec, 0, !dbg !1547
  br i1 %cmp34, label %if.then.36, label %if.else.37, !dbg !1548

if.then.36:                                       ; preds = %do.body.33
  br label %if.end.38, !dbg !1549

if.else.37:                                       ; preds = %do.body.33
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1551, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !1553
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1553, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !1554
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1554, !tbaa !1262
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1555, !tbaa !1135
  call void %51(%struct._object* %52), !dbg !1556
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1557
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !1557
  br label %do.cond, !dbg !1559

do.cond:                                          ; preds = %if.end.38
  br label %do.end, !dbg !1560

do.end:                                           ; preds = %do.cond
  br label %if.end.39, !dbg !1562

if.end.39:                                        ; preds = %do.end, %do.body
  %54 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1564
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !1564
  br label %do.cond.40, !dbg !1567

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !1568

do.end.41:                                        ; preds = %do.cond.40
  br label %done, !dbg !1570

if.end.42:                                        ; preds = %if.end.24
  %55 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1571, !tbaa !1135
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*, !dbg !1572
  %ob_sval43 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2, !dbg !1573
  %arraydecay44 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval43, i32 0, i32 0, !dbg !1574
  %57 = load i32, i32* %length, align 4, !dbg !1575, !tbaa !1390
  %idx.ext = zext i32 %57 to i64, !dbg !1576
  %add.ptr = getelementptr i8, i8* %arraydecay44, i64 %idx.ext, !dbg !1576
  %58 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1577, !tbaa !1135
  %zst45 = getelementptr inbounds %struct.compobject, %struct.compobject* %58, i32 0, i32 1, !dbg !1578
  %next_out46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst45, i32 0, i32 3, !dbg !1579
  store i8* %add.ptr, i8** %next_out46, align 8, !dbg !1580, !tbaa !1490
  %59 = load i32, i32* %length, align 4, !dbg !1581, !tbaa !1390
  %60 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1582, !tbaa !1135
  %zst47 = getelementptr inbounds %struct.compobject, %struct.compobject* %60, i32 0, i32 1, !dbg !1583
  %avail_out48 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst47, i32 0, i32 4, !dbg !1584
  store i32 %59, i32* %avail_out48, align 4, !dbg !1585, !tbaa !1481
  %61 = load i32, i32* %new_length, align 4, !dbg !1586, !tbaa !1390
  store i32 %61, i32* %length, align 4, !dbg !1587, !tbaa !1390
  %62 = bitcast %struct._ts** %_save49 to i8*, !dbg !1588
  call void @llvm.lifetime.start(i64 8, i8* %62) #1, !dbg !1588
  call void @llvm.dbg.declare(metadata %struct._ts** %_save49, metadata !538, metadata !1120), !dbg !1589
  %call50 = call %struct._ts* @PyEval_SaveThread(), !dbg !1590
  store %struct._ts* %call50, %struct._ts** %_save49, align 8, !dbg !1591, !tbaa !1135
  %63 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1592, !tbaa !1135
  %zst51 = getelementptr inbounds %struct.compobject, %struct.compobject* %63, i32 0, i32 1, !dbg !1593
  %call52 = call i32 @deflate(%struct.z_stream_s* %zst51, i32 0), !dbg !1594
  store i32 %call52, i32* %err, align 4, !dbg !1595, !tbaa !1390
  %64 = load %struct._ts*, %struct._ts** %_save49, align 8, !dbg !1596, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %64), !dbg !1597
  %65 = bitcast %struct._ts** %_save49 to i8*, !dbg !1598
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !1598
  br label %while.cond, !dbg !1502

while.end:                                        ; preds = %land.end
  %66 = load i32, i32* %err, align 4, !dbg !1599, !tbaa !1390
  %cmp53 = icmp ne i32 %66, 0, !dbg !1600
  br i1 %cmp53, label %land.lhs.true, label %if.end.80, !dbg !1601

land.lhs.true:                                    ; preds = %while.end
  %67 = load i32, i32* %err, align 4, !dbg !1602, !tbaa !1390
  %cmp55 = icmp ne i32 %67, -5, !dbg !1604
  br i1 %cmp55, label %if.then.57, label %if.end.80, !dbg !1605

if.then.57:                                       ; preds = %land.lhs.true
  %68 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1606, !tbaa !1135
  %zst58 = getelementptr inbounds %struct.compobject, %struct.compobject* %68, i32 0, i32 1, !dbg !1607
  %69 = load i32, i32* %err, align 4, !dbg !1608, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst58, i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0)), !dbg !1609
  br label %do.body.59, !dbg !1610

do.body.59:                                       ; preds = %if.then.57
  %70 = bitcast %struct._object** %_py_tmp60 to i8*, !dbg !1611
  call void @llvm.lifetime.start(i64 8, i8* %70) #1, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp60, metadata !540, metadata !1120), !dbg !1613
  %71 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1614, !tbaa !1135
  store %struct._object* %71, %struct._object** %_py_tmp60, align 8, !dbg !1613, !tbaa !1135
  %72 = load %struct._object*, %struct._object** %_py_tmp60, align 8, !dbg !1615, !tbaa !1135
  %cmp61 = icmp ne %struct._object* %72, null, !dbg !1616
  br i1 %cmp61, label %if.then.63, label %if.end.77, !dbg !1617

if.then.63:                                       ; preds = %do.body.59
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !1618, !tbaa !1135
  br label %do.body.64, !dbg !1620

do.body.64:                                       ; preds = %if.then.63
  %73 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !1621
  call void @llvm.lifetime.start(i64 8, i8* %73) #1, !dbg !1621
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp65, metadata !544, metadata !1120), !dbg !1623
  %74 = load %struct._object*, %struct._object** %_py_tmp60, align 8, !dbg !1624, !tbaa !1135
  store %struct._object* %74, %struct._object** %_py_decref_tmp65, align 8, !dbg !1623, !tbaa !1135
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1625, !tbaa !1135
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !1627
  %76 = load i64, i64* %ob_refcnt66, align 8, !dbg !1628, !tbaa !1154
  %dec67 = add i64 %76, -1, !dbg !1628
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !1628, !tbaa !1154
  %cmp68 = icmp ne i64 %dec67, 0, !dbg !1629
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !1630

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74, !dbg !1631

if.else.71:                                       ; preds = %do.body.64
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1633, !tbaa !1135
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1, !dbg !1635
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8, !dbg !1635, !tbaa !1260
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4, !dbg !1636
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8, !dbg !1636, !tbaa !1262
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !1637, !tbaa !1135
  call void %79(%struct._object* %80), !dbg !1638
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  %81 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !1639
  call void @llvm.lifetime.end(i64 8, i8* %81) #1, !dbg !1639
  br label %do.cond.75, !dbg !1641

do.cond.75:                                       ; preds = %if.end.74
  br label %do.end.76, !dbg !1642

do.end.76:                                        ; preds = %do.cond.75
  br label %if.end.77, !dbg !1644

if.end.77:                                        ; preds = %do.end.76, %do.body.59
  %82 = bitcast %struct._object** %_py_tmp60 to i8*, !dbg !1646
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !1646
  br label %do.cond.78, !dbg !1649

do.cond.78:                                       ; preds = %if.end.77
  br label %do.end.79, !dbg !1650

do.end.79:                                        ; preds = %do.cond.78
  br label %done, !dbg !1652

if.end.80:                                        ; preds = %land.lhs.true, %while.end
  %83 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1653, !tbaa !1135
  %zst81 = getelementptr inbounds %struct.compobject, %struct.compobject* %83, i32 0, i32 1, !dbg !1654
  %total_out82 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst81, i32 0, i32 5, !dbg !1655
  %84 = load i64, i64* %total_out82, align 8, !dbg !1655, !tbaa !1461
  %85 = load i64, i64* %start_total_out, align 8, !dbg !1656, !tbaa !1463
  %sub = sub i64 %84, %85, !dbg !1657
  %call83 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub), !dbg !1658
  %cmp84 = icmp slt i32 %call83, 0, !dbg !1659
  br i1 %cmp84, label %if.then.86, label %if.end.108, !dbg !1660

if.then.86:                                       ; preds = %if.end.80
  br label %do.body.87, !dbg !1661

do.body.87:                                       ; preds = %if.then.86
  %86 = bitcast %struct._object** %_py_tmp88 to i8*, !dbg !1662
  call void @llvm.lifetime.start(i64 8, i8* %86) #1, !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp88, metadata !548, metadata !1120), !dbg !1664
  %87 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1665, !tbaa !1135
  store %struct._object* %87, %struct._object** %_py_tmp88, align 8, !dbg !1664, !tbaa !1135
  %88 = load %struct._object*, %struct._object** %_py_tmp88, align 8, !dbg !1666, !tbaa !1135
  %cmp89 = icmp ne %struct._object* %88, null, !dbg !1667
  br i1 %cmp89, label %if.then.91, label %if.end.105, !dbg !1668

if.then.91:                                       ; preds = %do.body.87
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !1669, !tbaa !1135
  br label %do.body.92, !dbg !1671

do.body.92:                                       ; preds = %if.then.91
  %89 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1672
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !1672
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp93, metadata !552, metadata !1120), !dbg !1674
  %90 = load %struct._object*, %struct._object** %_py_tmp88, align 8, !dbg !1675, !tbaa !1135
  store %struct._object* %90, %struct._object** %_py_decref_tmp93, align 8, !dbg !1674, !tbaa !1135
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1676, !tbaa !1135
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !1678
  %92 = load i64, i64* %ob_refcnt94, align 8, !dbg !1679, !tbaa !1154
  %dec95 = add i64 %92, -1, !dbg !1679
  store i64 %dec95, i64* %ob_refcnt94, align 8, !dbg !1679, !tbaa !1154
  %cmp96 = icmp ne i64 %dec95, 0, !dbg !1680
  br i1 %cmp96, label %if.then.98, label %if.else.99, !dbg !1681

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102, !dbg !1682

if.else.99:                                       ; preds = %do.body.92
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1684, !tbaa !1135
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !1686
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8, !dbg !1686, !tbaa !1260
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !1687
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8, !dbg !1687, !tbaa !1262
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8, !dbg !1688, !tbaa !1135
  call void %95(%struct._object* %96), !dbg !1689
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  %97 = bitcast %struct._object** %_py_decref_tmp93 to i8*, !dbg !1690
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !1690
  br label %do.cond.103, !dbg !1692

do.cond.103:                                      ; preds = %if.end.102
  br label %do.end.104, !dbg !1693

do.end.104:                                       ; preds = %do.cond.103
  br label %if.end.105, !dbg !1695

if.end.105:                                       ; preds = %do.end.104, %do.body.87
  %98 = bitcast %struct._object** %_py_tmp88 to i8*, !dbg !1697
  call void @llvm.lifetime.end(i64 8, i8* %98) #1, !dbg !1697
  br label %do.cond.106, !dbg !1700

do.cond.106:                                      ; preds = %if.end.105
  br label %do.end.107, !dbg !1701

do.end.107:                                       ; preds = %do.cond.106
  br label %if.end.108, !dbg !1703

if.end.108:                                       ; preds = %do.end.107, %if.end.80
  br label %done, !dbg !1704

done:                                             ; preds = %if.end.108, %do.end.79, %do.end.41
  %99 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1706, !tbaa !1135
  %lock109 = getelementptr inbounds %struct.compobject, %struct.compobject* %99, i32 0, i32 7, !dbg !1707
  %100 = load i8*, i8** %lock109, align 8, !dbg !1707, !tbaa !1231
  call void @PyThread_release_lock(i8* %100), !dbg !1708
  %101 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1709, !tbaa !1135
  store %struct._object* %101, %struct._object** %retval, !dbg !1710
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1710

cleanup:                                          ; preds = %done, %if.then.3, %if.then
  %102 = bitcast i64* %start_total_out to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !1711
  %103 = bitcast i8** %input to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !1711
  %104 = bitcast %struct._object** %RetVal to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !1711
  %105 = bitcast i32* %new_length to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 4, i8* %105) #1, !dbg !1711
  %106 = bitcast i32* %length to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 4, i8* %106) #1, !dbg !1711
  %107 = bitcast i32* %inplen to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 4, i8* %107) #1, !dbg !1711
  %108 = bitcast i32* %err to i8*, !dbg !1711
  call void @llvm.lifetime.end(i64 4, i8* %108) #1, !dbg !1711
  %109 = load %struct._object*, %struct._object** %retval, !dbg !1711
  ret %struct._object* %109, !dbg !1711
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare i32 @deflate(%struct.z_stream_s*, i32) #3

declare i32 @_PyBytes_Resize(%struct._object**, i64) #3

; Function Attrs: nounwind uwtable
define internal void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %err, i8* %msg) #0 {
entry:
  %err.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %zmsg = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %zst, metadata !560, metadata !1120), !dbg !1712
  store i32 %err, i32* %err.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !561, metadata !1120), !dbg !1713
  store i8* %msg, i8** %msg.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata i8** %msg.addr, metadata !562, metadata !1120), !dbg !1714
  %0 = bitcast i8** %zmsg to i8*, !dbg !1715
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1715
  call void @llvm.dbg.declare(metadata i8** %zmsg, metadata !563, metadata !1120), !dbg !1716
  store i8* null, i8** %zmsg, align 8, !dbg !1716, !tbaa !1135
  %1 = load i32, i32* %err.addr, align 4, !dbg !1717, !tbaa !1390
  %cmp = icmp eq i32 %1, -6, !dbg !1719
  br i1 %cmp, label %if.then, label %if.end, !dbg !1720

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8** %zmsg, align 8, !dbg !1721, !tbaa !1135
  br label %if.end, !dbg !1722

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %zmsg, align 8, !dbg !1723, !tbaa !1135
  %cmp1 = icmp eq i8* %2, null, !dbg !1725
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !1726

if.then.2:                                        ; preds = %if.end
  %msg3 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 6, !dbg !1727
  %3 = load i8*, i8** %msg3, align 8, !dbg !1727, !tbaa !1728
  store i8* %3, i8** %zmsg, align 8, !dbg !1729, !tbaa !1135
  br label %if.end.4, !dbg !1730

if.end.4:                                         ; preds = %if.then.2, %if.end
  %4 = load i8*, i8** %zmsg, align 8, !dbg !1731, !tbaa !1135
  %cmp5 = icmp eq i8* %4, null, !dbg !1733
  br i1 %cmp5, label %if.then.6, label %if.end.9, !dbg !1734

if.then.6:                                        ; preds = %if.end.4
  %5 = load i32, i32* %err.addr, align 4, !dbg !1735, !tbaa !1390
  br label %NodeBlock.3

NodeBlock.3:                                      ; preds = %if.then.6
  %Pivot.4 = icmp slt i32 %5, -3
  br i1 %Pivot.4, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.3
  %Pivot = icmp slt i32 %5, -2
  br i1 %Pivot, label %sw.bb.8, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %5, -2
  br i1 %SwitchLeaf2, label %sw.bb.7, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.3
  %SwitchLeaf = icmp eq i32 %5, -5
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8** %zmsg, align 8, !dbg !1737, !tbaa !1135
  br label %sw.epilog, !dbg !1739

sw.bb.7:                                          ; preds = %LeafBlock.1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8** %zmsg, align 8, !dbg !1740, !tbaa !1135
  br label %sw.epilog, !dbg !1741

sw.bb.8:                                          ; preds = %NodeBlock
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8** %zmsg, align 8, !dbg !1742, !tbaa !1135
  br label %sw.epilog, !dbg !1743

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.epilog

sw.epilog:                                        ; preds = %NewDefault, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %if.end.9, !dbg !1744

if.end.9:                                         ; preds = %sw.epilog, %if.end.4
  %6 = load i8*, i8** %zmsg, align 8, !dbg !1745, !tbaa !1135
  %cmp10 = icmp eq i8* %6, null, !dbg !1747
  br i1 %cmp10, label %if.then.11, label %if.else, !dbg !1748

if.then.11:                                       ; preds = %if.end.9
  %7 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !1749, !tbaa !1135
  %8 = load i32, i32* %err.addr, align 4, !dbg !1750, !tbaa !1390
  %9 = load i8*, i8** %msg.addr, align 8, !dbg !1751, !tbaa !1135
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %8, i8* %9), !dbg !1752
  br label %if.end.13, !dbg !1752

if.else:                                          ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !1753, !tbaa !1135
  %11 = load i32, i32* %err.addr, align 4, !dbg !1754, !tbaa !1390
  %12 = load i8*, i8** %msg.addr, align 8, !dbg !1755, !tbaa !1135
  %13 = load i8*, i8** %zmsg, align 8, !dbg !1756, !tbaa !1135
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %11, i8* %12, i8* %13), !dbg !1757
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  %14 = bitcast i8** %zmsg to i8*, !dbg !1758
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1758
  ret void, !dbg !1758
}

declare void @PyThread_release_lock(i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_flush_impl(%struct.compobject* %self, i32 %mode) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %mode.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %length = alloca i32, align 4
  %new_length = alloca i32, align 4
  %RetVal = alloca %struct._object*, align 8
  %start_total_out = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save9 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save47 = alloca %struct._ts*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  %_py_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !574, metadata !1120), !dbg !1759
  store i32 %mode, i32* %mode.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !575, metadata !1120), !dbg !1760
  %0 = bitcast i32* %err to i8*, !dbg !1761
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !1761
  call void @llvm.dbg.declare(metadata i32* %err, metadata !576, metadata !1120), !dbg !1762
  %1 = bitcast i32* %length to i8*, !dbg !1763
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1763
  call void @llvm.dbg.declare(metadata i32* %length, metadata !577, metadata !1120), !dbg !1764
  store i32 16384, i32* %length, align 4, !dbg !1764, !tbaa !1390
  %2 = bitcast i32* %new_length to i8*, !dbg !1763
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1763
  call void @llvm.dbg.declare(metadata i32* %new_length, metadata !578, metadata !1120), !dbg !1765
  %3 = bitcast %struct._object** %RetVal to i8*, !dbg !1766
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1766
  call void @llvm.dbg.declare(metadata %struct._object** %RetVal, metadata !579, metadata !1120), !dbg !1767
  %4 = bitcast i64* %start_total_out to i8*, !dbg !1768
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1768
  call void @llvm.dbg.declare(metadata i64* %start_total_out, metadata !580, metadata !1120), !dbg !1769
  %5 = load i32, i32* %mode.addr, align 4, !dbg !1770, !tbaa !1390
  %cmp = icmp eq i32 %5, 0, !dbg !1772
  br i1 %cmp, label %if.then, label %if.end, !dbg !1773

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0), !dbg !1774
  store %struct._object* %call, %struct._object** %retval, !dbg !1776
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1776

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %length, align 4, !dbg !1777, !tbaa !1390
  %conv = zext i32 %6 to i64, !dbg !1777
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv), !dbg !1779
  store %struct._object* %call1, %struct._object** %RetVal, align 8, !dbg !1780, !tbaa !1135
  %tobool = icmp ne %struct._object* %call1, null, !dbg !1780
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !1781

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1782
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1782

if.end.3:                                         ; preds = %if.end
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !1783
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1783
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !581, metadata !1120), !dbg !1784
  %call4 = call %struct._ts* @PyEval_SaveThread(), !dbg !1785
  store %struct._ts* %call4, %struct._ts** %_save, align 8, !dbg !1786, !tbaa !1135
  %8 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1787, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 7, !dbg !1788
  %9 = load i8*, i8** %lock, align 8, !dbg !1788, !tbaa !1231
  %call5 = call i32 @PyThread_acquire_lock(i8* %9, i32 1), !dbg !1789
  %10 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !1790, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %10), !dbg !1791
  %11 = bitcast %struct._ts** %_save to i8*, !dbg !1792
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !1792
  %12 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1793, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 1, !dbg !1794
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !1795
  %13 = load i64, i64* %total_out, align 8, !dbg !1795, !tbaa !1461
  store i64 %13, i64* %start_total_out, align 8, !dbg !1796, !tbaa !1463
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1797, !tbaa !1135
  %zst6 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 1, !dbg !1798
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst6, i32 0, i32 1, !dbg !1799
  store i32 0, i32* %avail_in, align 4, !dbg !1800, !tbaa !1469
  %15 = load i32, i32* %length, align 4, !dbg !1801, !tbaa !1390
  %16 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1802, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %16, i32 0, i32 1, !dbg !1803
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 4, !dbg !1804
  store i32 %15, i32* %avail_out, align 4, !dbg !1805, !tbaa !1481
  %17 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1806, !tbaa !1135
  %18 = bitcast %struct._object* %17 to %struct.PyBytesObject*, !dbg !1807
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %18, i32 0, i32 2, !dbg !1808
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !1809
  %19 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1810, !tbaa !1135
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %19, i32 0, i32 1, !dbg !1811
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 3, !dbg !1812
  store i8* %arraydecay, i8** %next_out, align 8, !dbg !1813, !tbaa !1490
  %20 = bitcast %struct._ts** %_save9 to i8*, !dbg !1814
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !1814
  call void @llvm.dbg.declare(metadata %struct._ts** %_save9, metadata !583, metadata !1120), !dbg !1815
  %call10 = call %struct._ts* @PyEval_SaveThread(), !dbg !1816
  store %struct._ts* %call10, %struct._ts** %_save9, align 8, !dbg !1817, !tbaa !1135
  %21 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1818, !tbaa !1135
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 1, !dbg !1819
  %22 = load i32, i32* %mode.addr, align 4, !dbg !1820, !tbaa !1390
  %call12 = call i32 @deflate(%struct.z_stream_s* %zst11, i32 %22), !dbg !1821
  store i32 %call12, i32* %err, align 4, !dbg !1822, !tbaa !1390
  %23 = load %struct._ts*, %struct._ts** %_save9, align 8, !dbg !1823, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %23), !dbg !1824
  %24 = bitcast %struct._ts** %_save9 to i8*, !dbg !1825
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !1825
  br label %while.cond, !dbg !1826

while.cond:                                       ; preds = %if.end.40, %if.end.3
  %25 = load i32, i32* %err, align 4, !dbg !1827, !tbaa !1390
  %cmp13 = icmp eq i32 %25, 0, !dbg !1830
  br i1 %cmp13, label %land.rhs, label %land.end, !dbg !1831

land.rhs:                                         ; preds = %while.cond
  %26 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1832, !tbaa !1135
  %zst15 = getelementptr inbounds %struct.compobject, %struct.compobject* %26, i32 0, i32 1, !dbg !1834
  %avail_out16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst15, i32 0, i32 4, !dbg !1835
  %27 = load i32, i32* %avail_out16, align 4, !dbg !1835, !tbaa !1481
  %cmp17 = icmp eq i32 %27, 0, !dbg !1836
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %28, label %while.body, label %while.end, !dbg !1837

while.body:                                       ; preds = %land.end
  %29 = load i32, i32* %length, align 4, !dbg !1839, !tbaa !1390
  %cmp19 = icmp ule i32 %29, 2147483647, !dbg !1841
  br i1 %cmp19, label %if.then.21, label %if.else, !dbg !1842

if.then.21:                                       ; preds = %while.body
  %30 = load i32, i32* %length, align 4, !dbg !1843, !tbaa !1390
  %shl = shl i32 %30, 1, !dbg !1844
  store i32 %shl, i32* %new_length, align 4, !dbg !1845, !tbaa !1390
  br label %if.end.22, !dbg !1846

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4, !dbg !1847, !tbaa !1390
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %31 = load i32, i32* %new_length, align 4, !dbg !1848, !tbaa !1390
  %conv23 = zext i32 %31 to i64, !dbg !1848
  %call24 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv23), !dbg !1849
  %cmp25 = icmp slt i32 %call24, 0, !dbg !1850
  br i1 %cmp25, label %if.then.27, label %if.end.40, !dbg !1851

if.then.27:                                       ; preds = %if.end.22
  br label %do.body, !dbg !1852

do.body:                                          ; preds = %if.then.27
  %32 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1853
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !1853
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !585, metadata !1120), !dbg !1855
  %33 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1856, !tbaa !1135
  store %struct._object* %33, %struct._object** %_py_tmp, align 8, !dbg !1855, !tbaa !1135
  %34 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1857, !tbaa !1135
  %cmp28 = icmp ne %struct._object* %34, null, !dbg !1858
  br i1 %cmp28, label %if.then.30, label %if.end.37, !dbg !1859

if.then.30:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !1860, !tbaa !1135
  br label %do.body.31, !dbg !1862

do.body.31:                                       ; preds = %if.then.30
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !1863
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !590, metadata !1120), !dbg !1865
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1866, !tbaa !1135
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8, !dbg !1865, !tbaa !1135
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1867, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !1869
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !1870, !tbaa !1154
  %dec = add i64 %38, -1, !dbg !1870
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1870, !tbaa !1154
  %cmp32 = icmp ne i64 %dec, 0, !dbg !1871
  br i1 %cmp32, label %if.then.34, label %if.else.35, !dbg !1872

if.then.34:                                       ; preds = %do.body.31
  br label %if.end.36, !dbg !1873

if.else.35:                                       ; preds = %do.body.31
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1875, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !1877
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1877, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !1878
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1878, !tbaa !1262
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1879, !tbaa !1135
  call void %41(%struct._object* %42), !dbg !1880
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1881
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1881
  br label %do.cond, !dbg !1883

do.cond:                                          ; preds = %if.end.36
  br label %do.end, !dbg !1884

do.end:                                           ; preds = %do.cond
  br label %if.end.37, !dbg !1886

if.end.37:                                        ; preds = %do.end, %do.body
  %44 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1888
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1888
  br label %do.cond.38, !dbg !1891

do.cond.38:                                       ; preds = %if.end.37
  br label %do.end.39, !dbg !1892

do.end.39:                                        ; preds = %do.cond.38
  br label %error, !dbg !1894

if.end.40:                                        ; preds = %if.end.22
  %45 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1895, !tbaa !1135
  %46 = bitcast %struct._object* %45 to %struct.PyBytesObject*, !dbg !1896
  %ob_sval41 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %46, i32 0, i32 2, !dbg !1897
  %arraydecay42 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval41, i32 0, i32 0, !dbg !1898
  %47 = load i32, i32* %length, align 4, !dbg !1899, !tbaa !1390
  %idx.ext = zext i32 %47 to i64, !dbg !1900
  %add.ptr = getelementptr i8, i8* %arraydecay42, i64 %idx.ext, !dbg !1900
  %48 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1901, !tbaa !1135
  %zst43 = getelementptr inbounds %struct.compobject, %struct.compobject* %48, i32 0, i32 1, !dbg !1902
  %next_out44 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst43, i32 0, i32 3, !dbg !1903
  store i8* %add.ptr, i8** %next_out44, align 8, !dbg !1904, !tbaa !1490
  %49 = load i32, i32* %length, align 4, !dbg !1905, !tbaa !1390
  %50 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1906, !tbaa !1135
  %zst45 = getelementptr inbounds %struct.compobject, %struct.compobject* %50, i32 0, i32 1, !dbg !1907
  %avail_out46 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst45, i32 0, i32 4, !dbg !1908
  store i32 %49, i32* %avail_out46, align 4, !dbg !1909, !tbaa !1481
  %51 = load i32, i32* %new_length, align 4, !dbg !1910, !tbaa !1390
  store i32 %51, i32* %length, align 4, !dbg !1911, !tbaa !1390
  %52 = bitcast %struct._ts** %_save47 to i8*, !dbg !1912
  call void @llvm.lifetime.start(i64 8, i8* %52) #1, !dbg !1912
  call void @llvm.dbg.declare(metadata %struct._ts** %_save47, metadata !594, metadata !1120), !dbg !1913
  %call48 = call %struct._ts* @PyEval_SaveThread(), !dbg !1914
  store %struct._ts* %call48, %struct._ts** %_save47, align 8, !dbg !1915, !tbaa !1135
  %53 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1916, !tbaa !1135
  %zst49 = getelementptr inbounds %struct.compobject, %struct.compobject* %53, i32 0, i32 1, !dbg !1917
  %54 = load i32, i32* %mode.addr, align 4, !dbg !1918, !tbaa !1390
  %call50 = call i32 @deflate(%struct.z_stream_s* %zst49, i32 %54), !dbg !1919
  store i32 %call50, i32* %err, align 4, !dbg !1920, !tbaa !1390
  %55 = load %struct._ts*, %struct._ts** %_save47, align 8, !dbg !1921, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %55), !dbg !1922
  %56 = bitcast %struct._ts** %_save47 to i8*, !dbg !1923
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !1923
  br label %while.cond, !dbg !1826

while.end:                                        ; preds = %land.end
  %57 = load i32, i32* %err, align 4, !dbg !1924, !tbaa !1390
  %cmp51 = icmp eq i32 %57, 1, !dbg !1925
  br i1 %cmp51, label %land.lhs.true, label %if.else.77, !dbg !1926

land.lhs.true:                                    ; preds = %while.end
  %58 = load i32, i32* %mode.addr, align 4, !dbg !1927, !tbaa !1390
  %cmp53 = icmp eq i32 %58, 4, !dbg !1929
  br i1 %cmp53, label %if.then.55, label %if.else.77, !dbg !1930

if.then.55:                                       ; preds = %land.lhs.true
  %59 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1931, !tbaa !1135
  %zst56 = getelementptr inbounds %struct.compobject, %struct.compobject* %59, i32 0, i32 1, !dbg !1932
  %call57 = call i32 @deflateEnd(%struct.z_stream_s* %zst56), !dbg !1933
  store i32 %call57, i32* %err, align 4, !dbg !1934, !tbaa !1390
  %60 = load i32, i32* %err, align 4, !dbg !1935, !tbaa !1390
  %cmp58 = icmp ne i32 %60, 0, !dbg !1936
  br i1 %cmp58, label %if.then.60, label %if.else.75, !dbg !1937

if.then.60:                                       ; preds = %if.then.55
  %61 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1938, !tbaa !1135
  %zst61 = getelementptr inbounds %struct.compobject, %struct.compobject* %61, i32 0, i32 1, !dbg !1939
  %62 = load i32, i32* %err, align 4, !dbg !1940, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst61, i32 %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0)), !dbg !1941
  br label %do.body.62, !dbg !1942

do.body.62:                                       ; preds = %if.then.60
  %63 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !1943
  call void @llvm.lifetime.start(i64 8, i8* %63) #1, !dbg !1943
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp63, metadata !596, metadata !1120), !dbg !1945
  %64 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1946, !tbaa !1135
  store %struct._object* %64, %struct._object** %_py_decref_tmp63, align 8, !dbg !1945, !tbaa !1135
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1947, !tbaa !1135
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0, !dbg !1949
  %66 = load i64, i64* %ob_refcnt64, align 8, !dbg !1950, !tbaa !1154
  %dec65 = add i64 %66, -1, !dbg !1950
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !1950, !tbaa !1154
  %cmp66 = icmp ne i64 %dec65, 0, !dbg !1951
  br i1 %cmp66, label %if.then.68, label %if.else.69, !dbg !1952

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72, !dbg !1953

if.else.69:                                       ; preds = %do.body.62
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1955, !tbaa !1135
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1, !dbg !1957
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !1957, !tbaa !1260
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4, !dbg !1958
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !1958, !tbaa !1262
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !1959, !tbaa !1135
  call void %69(%struct._object* %70), !dbg !1960
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %71 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !1961
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !1961
  br label %do.cond.73, !dbg !1963

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !1964

do.end.74:                                        ; preds = %do.cond.73
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !1966, !tbaa !1135
  br label %error, !dbg !1967

if.else.75:                                       ; preds = %if.then.55
  %72 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1968, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %72, i32 0, i32 5, !dbg !1969
  store i32 0, i32* %is_initialised, align 4, !dbg !1970, !tbaa !1217
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75
  br label %if.end.99, !dbg !1971

if.else.77:                                       ; preds = %land.lhs.true, %while.end
  %73 = load i32, i32* %err, align 4, !dbg !1972, !tbaa !1390
  %cmp78 = icmp ne i32 %73, 0, !dbg !1973
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.98, !dbg !1974

land.lhs.true.80:                                 ; preds = %if.else.77
  %74 = load i32, i32* %err, align 4, !dbg !1975, !tbaa !1390
  %cmp81 = icmp ne i32 %74, -5, !dbg !1977
  br i1 %cmp81, label %if.then.83, label %if.end.98, !dbg !1978

if.then.83:                                       ; preds = %land.lhs.true.80
  %75 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !1979, !tbaa !1135
  %zst84 = getelementptr inbounds %struct.compobject, %struct.compobject* %75, i32 0, i32 1, !dbg !1980
  %76 = load i32, i32* %err, align 4, !dbg !1981, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst84, i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)), !dbg !1982
  br label %do.body.85, !dbg !1983

do.body.85:                                       ; preds = %if.then.83
  %77 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !1984
  call void @llvm.lifetime.start(i64 8, i8* %77) #1, !dbg !1984
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp86, metadata !602, metadata !1120), !dbg !1986
  %78 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !1987, !tbaa !1135
  store %struct._object* %78, %struct._object** %_py_decref_tmp86, align 8, !dbg !1986, !tbaa !1135
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !1988, !tbaa !1135
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0, !dbg !1990
  %80 = load i64, i64* %ob_refcnt87, align 8, !dbg !1991, !tbaa !1154
  %dec88 = add i64 %80, -1, !dbg !1991
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !1991, !tbaa !1154
  %cmp89 = icmp ne i64 %dec88, 0, !dbg !1992
  br i1 %cmp89, label %if.then.91, label %if.else.92, !dbg !1993

if.then.91:                                       ; preds = %do.body.85
  br label %if.end.95, !dbg !1994

if.else.92:                                       ; preds = %do.body.85
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !1996, !tbaa !1135
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1, !dbg !1998
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !1998, !tbaa !1260
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4, !dbg !1999
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !1999, !tbaa !1262
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !2000, !tbaa !1135
  call void %83(%struct._object* %84), !dbg !2001
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  %85 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !2002
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !2002
  br label %do.cond.96, !dbg !2004

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !2005

do.end.97:                                        ; preds = %do.cond.96
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2007, !tbaa !1135
  br label %error, !dbg !2008

if.end.98:                                        ; preds = %land.lhs.true.80, %if.else.77
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.end.76
  %86 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2009, !tbaa !1135
  %zst100 = getelementptr inbounds %struct.compobject, %struct.compobject* %86, i32 0, i32 1, !dbg !2010
  %total_out101 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst100, i32 0, i32 5, !dbg !2011
  %87 = load i64, i64* %total_out101, align 8, !dbg !2011, !tbaa !1461
  %88 = load i64, i64* %start_total_out, align 8, !dbg !2012, !tbaa !1463
  %sub = sub i64 %87, %88, !dbg !2013
  %call102 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub), !dbg !2014
  %cmp103 = icmp slt i32 %call102, 0, !dbg !2015
  br i1 %cmp103, label %if.then.105, label %if.end.127, !dbg !2016

if.then.105:                                      ; preds = %if.end.99
  br label %do.body.106, !dbg !2017

do.body.106:                                      ; preds = %if.then.105
  %89 = bitcast %struct._object** %_py_tmp107 to i8*, !dbg !2018
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !2018
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp107, metadata !606, metadata !1120), !dbg !2020
  %90 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2021, !tbaa !1135
  store %struct._object* %90, %struct._object** %_py_tmp107, align 8, !dbg !2020, !tbaa !1135
  %91 = load %struct._object*, %struct._object** %_py_tmp107, align 8, !dbg !2022, !tbaa !1135
  %cmp108 = icmp ne %struct._object* %91, null, !dbg !2023
  br i1 %cmp108, label %if.then.110, label %if.end.124, !dbg !2024

if.then.110:                                      ; preds = %do.body.106
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2025, !tbaa !1135
  br label %do.body.111, !dbg !2027

do.body.111:                                      ; preds = %if.then.110
  %92 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %92) #1, !dbg !2028
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp112, metadata !610, metadata !1120), !dbg !2030
  %93 = load %struct._object*, %struct._object** %_py_tmp107, align 8, !dbg !2031, !tbaa !1135
  store %struct._object* %93, %struct._object** %_py_decref_tmp112, align 8, !dbg !2030, !tbaa !1135
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2032, !tbaa !1135
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0, !dbg !2034
  %95 = load i64, i64* %ob_refcnt113, align 8, !dbg !2035, !tbaa !1154
  %dec114 = add i64 %95, -1, !dbg !2035
  store i64 %dec114, i64* %ob_refcnt113, align 8, !dbg !2035, !tbaa !1154
  %cmp115 = icmp ne i64 %dec114, 0, !dbg !2036
  br i1 %cmp115, label %if.then.117, label %if.else.118, !dbg !2037

if.then.117:                                      ; preds = %do.body.111
  br label %if.end.121, !dbg !2038

if.else.118:                                      ; preds = %do.body.111
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2040, !tbaa !1135
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1, !dbg !2042
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8, !dbg !2042, !tbaa !1260
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4, !dbg !2043
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8, !dbg !2043, !tbaa !1262
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !2044, !tbaa !1135
  call void %98(%struct._object* %99), !dbg !2045
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  %100 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !2046
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !2046
  br label %do.cond.122, !dbg !2048

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123, !dbg !2049

do.end.123:                                       ; preds = %do.cond.122
  br label %if.end.124, !dbg !2051

if.end.124:                                       ; preds = %do.end.123, %do.body.106
  %101 = bitcast %struct._object** %_py_tmp107 to i8*, !dbg !2053
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !2053
  br label %do.cond.125, !dbg !2056

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126, !dbg !2057

do.end.126:                                       ; preds = %do.cond.125
  br label %if.end.127, !dbg !2059

if.end.127:                                       ; preds = %do.end.126, %if.end.99
  br label %error, !dbg !2060

error:                                            ; preds = %if.end.127, %do.end.97, %do.end.74, %do.end.39
  %102 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2062, !tbaa !1135
  %lock128 = getelementptr inbounds %struct.compobject, %struct.compobject* %102, i32 0, i32 7, !dbg !2063
  %103 = load i8*, i8** %lock128, align 8, !dbg !2063, !tbaa !1231
  call void @PyThread_release_lock(i8* %103), !dbg !2064
  %104 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2065, !tbaa !1135
  store %struct._object* %104, %struct._object** %retval, !dbg !2066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2066

cleanup:                                          ; preds = %error, %if.then.2, %if.then
  %105 = bitcast i64* %start_total_out to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2067
  %106 = bitcast %struct._object** %RetVal to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !2067
  %107 = bitcast i32* %new_length to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 4, i8* %107) #1, !dbg !2067
  %108 = bitcast i32* %length to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 4, i8* %108) #1, !dbg !2067
  %109 = bitcast i32* %err to i8*, !dbg !2067
  call void @llvm.lifetime.end(i64 4, i8* %109) #1, !dbg !2067
  %110 = load %struct._object*, %struct._object** %retval, !dbg !2067
  ret %struct._object* %110, !dbg !2067
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_copy_impl(%struct.compobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %retval1 = alloca %struct.compobject*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_xdecref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !622, metadata !1120), !dbg !2068
  %0 = bitcast %struct.compobject** %retval1 to i8*, !dbg !2069
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2069
  call void @llvm.dbg.declare(metadata %struct.compobject** %retval1, metadata !623, metadata !1120), !dbg !2070
  store %struct.compobject* null, %struct.compobject** %retval1, align 8, !dbg !2070, !tbaa !1135
  %1 = bitcast i32* %err to i8*, !dbg !2071
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2071
  call void @llvm.dbg.declare(metadata i32* %err, metadata !624, metadata !1120), !dbg !2072
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Comptype), !dbg !2073
  store %struct.compobject* %call, %struct.compobject** %retval1, align 8, !dbg !2074, !tbaa !1135
  %2 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2075, !tbaa !1135
  %tobool = icmp ne %struct.compobject* %2, null, !dbg !2075
  br i1 %tobool, label %if.end, label %if.then, !dbg !2077

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2078
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2080

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !2081
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2081
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !625, metadata !1120), !dbg !2082
  %call2 = call %struct._ts* @PyEval_SaveThread(), !dbg !2083
  store %struct._ts* %call2, %struct._ts** %_save, align 8, !dbg !2084, !tbaa !1135
  %4 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2085, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 7, !dbg !2086
  %5 = load i8*, i8** %lock, align 8, !dbg !2086, !tbaa !1231
  %call3 = call i32 @PyThread_acquire_lock(i8* %5, i32 1), !dbg !2087
  %6 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2088, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %6), !dbg !2089
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !2090
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2090
  %8 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2091, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 1, !dbg !2092
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2093, !tbaa !1135
  %zst4 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1, !dbg !2094
  %call5 = call i32 @deflateCopy(%struct.z_stream_s* %zst, %struct.z_stream_s* %zst4), !dbg !2095
  store i32 %call5, i32* %err, align 4, !dbg !2096, !tbaa !1390
  %10 = load i32, i32* %err, align 4, !dbg !2097, !tbaa !1390
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end
  %Pivot.6 = icmp slt i32 %10, -2
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %10, 0
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %10, 0
  br i1 %SwitchLeaf4, label %sw.epilog, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %10, -2
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %10, -4
  br i1 %SwitchLeaf, label %sw.bb.6, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2098, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0)), !dbg !2100
  br label %error, !dbg !2101

sw.bb.6:                                          ; preds = %LeafBlock
  %12 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !2102, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0)), !dbg !2103
  br label %error, !dbg !2104

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %13 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2105, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1, !dbg !2106
  %14 = load i32, i32* %err, align 4, !dbg !2107, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst7, i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0)), !dbg !2108
  br label %error, !dbg !2109

sw.epilog:                                        ; preds = %LeafBlock.3
  %15 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2110, !tbaa !1135
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %15, i32 0, i32 2, !dbg !2111
  %16 = load %struct._object*, %struct._object** %unused_data, align 8, !dbg !2111, !tbaa !1239
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !2112
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !2113, !tbaa !1154
  %inc = add i64 %17, 1, !dbg !2113
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2113, !tbaa !1154
  %18 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2114, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 3, !dbg !2115
  %19 = load %struct._object*, %struct._object** %unconsumed_tail, align 8, !dbg !2115, !tbaa !1284
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !2116
  %20 = load i64, i64* %ob_refcnt8, align 8, !dbg !2117, !tbaa !1154
  %inc9 = add i64 %20, 1, !dbg !2117
  store i64 %inc9, i64* %ob_refcnt8, align 8, !dbg !2117, !tbaa !1154
  br label %do.body, !dbg !2118

do.body:                                          ; preds = %sw.epilog
  %21 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2119
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2119
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !627, metadata !1120), !dbg !2121
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2122, !tbaa !1135
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 6, !dbg !2123
  %23 = load %struct._object*, %struct._object** %zdict, align 8, !dbg !2123, !tbaa !1323
  store %struct._object* %23, %struct._object** %_py_xincref_tmp, align 8, !dbg !2121, !tbaa !1135
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2124, !tbaa !1135
  %cmp = icmp ne %struct._object* %24, null, !dbg !2126
  br i1 %cmp, label %if.then.10, label %if.end.13, !dbg !2127

if.then.10:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !2128, !tbaa !1135
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !2130
  %26 = load i64, i64* %ob_refcnt11, align 8, !dbg !2131, !tbaa !1154
  %inc12 = add i64 %26, 1, !dbg !2131
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !2131, !tbaa !1154
  br label %if.end.13, !dbg !2132

if.end.13:                                        ; preds = %if.then.10, %do.body
  %27 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !2133
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2133
  br label %do.cond, !dbg !2136

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !2137

do.end:                                           ; preds = %do.cond
  br label %do.body.14, !dbg !2139

do.body.14:                                       ; preds = %do.end
  %28 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2140
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !2140
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !629, metadata !1120), !dbg !2142
  %29 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2143, !tbaa !1135
  %unused_data15 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 2, !dbg !2144
  %30 = load %struct._object*, %struct._object** %unused_data15, align 8, !dbg !2144, !tbaa !1239
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2142, !tbaa !1135
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2145, !tbaa !1135
  %cmp16 = icmp ne %struct._object* %31, null, !dbg !2146
  br i1 %cmp16, label %if.then.17, label %if.end.25, !dbg !2147

if.then.17:                                       ; preds = %do.body.14
  br label %do.body.18, !dbg !2148

do.body.18:                                       ; preds = %if.then.17
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !2150
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !631, metadata !1120), !dbg !2152
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2153, !tbaa !1135
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8, !dbg !2152, !tbaa !1135
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2154, !tbaa !1135
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !2156
  %35 = load i64, i64* %ob_refcnt19, align 8, !dbg !2157, !tbaa !1154
  %dec = add i64 %35, -1, !dbg !2157
  store i64 %dec, i64* %ob_refcnt19, align 8, !dbg !2157, !tbaa !1154
  %cmp20 = icmp ne i64 %dec, 0, !dbg !2158
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !2159

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.22, !dbg !2160

if.else:                                          ; preds = %do.body.18
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2162, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !2164
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2164, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !2165
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2165, !tbaa !1262
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2166, !tbaa !1135
  call void %38(%struct._object* %39), !dbg !2167
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2168
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !2168
  br label %do.cond.23, !dbg !2170

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2171

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !2173

if.end.25:                                        ; preds = %do.end.24, %do.body.14
  %41 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2175
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !2175
  br label %do.cond.26, !dbg !2177

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !2178

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !2180

do.body.28:                                       ; preds = %do.end.27
  %42 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !2181
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp29, metadata !634, metadata !1120), !dbg !2183
  %43 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2184, !tbaa !1135
  %unconsumed_tail30 = getelementptr inbounds %struct.compobject, %struct.compobject* %43, i32 0, i32 3, !dbg !2185
  %44 = load %struct._object*, %struct._object** %unconsumed_tail30, align 8, !dbg !2185, !tbaa !1284
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !2183, !tbaa !1135
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !2186, !tbaa !1135
  %cmp31 = icmp ne %struct._object* %45, null, !dbg !2187
  br i1 %cmp31, label %if.then.32, label %if.end.45, !dbg !2188

if.then.32:                                       ; preds = %do.body.28
  br label %do.body.33, !dbg !2189

do.body.33:                                       ; preds = %if.then.32
  %46 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2191
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !2191
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !636, metadata !1120), !dbg !2193
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !2194, !tbaa !1135
  store %struct._object* %47, %struct._object** %_py_decref_tmp34, align 8, !dbg !2193, !tbaa !1135
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2195, !tbaa !1135
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2197
  %49 = load i64, i64* %ob_refcnt35, align 8, !dbg !2198, !tbaa !1154
  %dec36 = add i64 %49, -1, !dbg !2198
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !2198, !tbaa !1154
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !2199
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !2200

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !2201

if.else.39:                                       ; preds = %do.body.33
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2203, !tbaa !1135
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2205
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !2205, !tbaa !1260
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !2206
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !2206, !tbaa !1262
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !2207, !tbaa !1135
  call void %52(%struct._object* %53), !dbg !2208
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %54 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !2209
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !2209
  br label %do.cond.43, !dbg !2211

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !2212

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !2214

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %55 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !2216
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2216
  br label %do.cond.46, !dbg !2217

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !2218

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !2220

do.body.48:                                       ; preds = %do.end.47
  %56 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !2221
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !2221
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp49, metadata !639, metadata !1120), !dbg !2223
  %57 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2224, !tbaa !1135
  %zdict50 = getelementptr inbounds %struct.compobject, %struct.compobject* %57, i32 0, i32 6, !dbg !2225
  %58 = load %struct._object*, %struct._object** %zdict50, align 8, !dbg !2225, !tbaa !1323
  store %struct._object* %58, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !2223, !tbaa !1135
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !2226, !tbaa !1135
  %cmp51 = icmp ne %struct._object* %59, null, !dbg !2227
  br i1 %cmp51, label %if.then.52, label %if.end.65, !dbg !2228

if.then.52:                                       ; preds = %do.body.48
  br label %do.body.53, !dbg !2229

do.body.53:                                       ; preds = %if.then.52
  %60 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2231
  call void @llvm.lifetime.start(i64 8, i8* %60) #1, !dbg !2231
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !641, metadata !1120), !dbg !2233
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !2234, !tbaa !1135
  store %struct._object* %61, %struct._object** %_py_decref_tmp54, align 8, !dbg !2233, !tbaa !1135
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2235, !tbaa !1135
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !2237
  %63 = load i64, i64* %ob_refcnt55, align 8, !dbg !2238, !tbaa !1154
  %dec56 = add i64 %63, -1, !dbg !2238
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !2238, !tbaa !1154
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !2239
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !2240

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !2241

if.else.59:                                       ; preds = %do.body.53
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2243, !tbaa !1135
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !2245
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !2245, !tbaa !1260
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !2246
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !2246, !tbaa !1262
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !2247, !tbaa !1135
  call void %66(%struct._object* %67), !dbg !2248
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %68 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !2249
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !2249
  br label %do.cond.63, !dbg !2251

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !2252

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !2254

if.end.65:                                        ; preds = %do.end.64, %do.body.48
  %69 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !2256
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !2256
  br label %do.cond.66, !dbg !2257

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !2258

do.end.67:                                        ; preds = %do.cond.66
  %70 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2260, !tbaa !1135
  %unused_data68 = getelementptr inbounds %struct.compobject, %struct.compobject* %70, i32 0, i32 2, !dbg !2261
  %71 = load %struct._object*, %struct._object** %unused_data68, align 8, !dbg !2261, !tbaa !1239
  %72 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2262, !tbaa !1135
  %unused_data69 = getelementptr inbounds %struct.compobject, %struct.compobject* %72, i32 0, i32 2, !dbg !2263
  store %struct._object* %71, %struct._object** %unused_data69, align 8, !dbg !2264, !tbaa !1239
  %73 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2265, !tbaa !1135
  %unconsumed_tail70 = getelementptr inbounds %struct.compobject, %struct.compobject* %73, i32 0, i32 3, !dbg !2266
  %74 = load %struct._object*, %struct._object** %unconsumed_tail70, align 8, !dbg !2266, !tbaa !1284
  %75 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2267, !tbaa !1135
  %unconsumed_tail71 = getelementptr inbounds %struct.compobject, %struct.compobject* %75, i32 0, i32 3, !dbg !2268
  store %struct._object* %74, %struct._object** %unconsumed_tail71, align 8, !dbg !2269, !tbaa !1284
  %76 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2270, !tbaa !1135
  %zdict72 = getelementptr inbounds %struct.compobject, %struct.compobject* %76, i32 0, i32 6, !dbg !2271
  %77 = load %struct._object*, %struct._object** %zdict72, align 8, !dbg !2271, !tbaa !1323
  %78 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2272, !tbaa !1135
  %zdict73 = getelementptr inbounds %struct.compobject, %struct.compobject* %78, i32 0, i32 6, !dbg !2273
  store %struct._object* %77, %struct._object** %zdict73, align 8, !dbg !2274, !tbaa !1323
  %79 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2275, !tbaa !1135
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %79, i32 0, i32 4, !dbg !2276
  %80 = load i8, i8* %eof, align 1, !dbg !2276, !tbaa !2277
  %81 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2278, !tbaa !1135
  %eof74 = getelementptr inbounds %struct.compobject, %struct.compobject* %81, i32 0, i32 4, !dbg !2279
  store i8 %80, i8* %eof74, align 1, !dbg !2280, !tbaa !2277
  %82 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2281, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %82, i32 0, i32 5, !dbg !2282
  store i32 1, i32* %is_initialised, align 4, !dbg !2283, !tbaa !1217
  %83 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2284, !tbaa !1135
  %lock75 = getelementptr inbounds %struct.compobject, %struct.compobject* %83, i32 0, i32 7, !dbg !2285
  %84 = load i8*, i8** %lock75, align 8, !dbg !2285, !tbaa !1231
  call void @PyThread_release_lock(i8* %84), !dbg !2286
  %85 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2287, !tbaa !1135
  %86 = bitcast %struct.compobject* %85 to %struct._object*, !dbg !2288
  store %struct._object* %86, %struct._object** %retval, !dbg !2289
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2289

error:                                            ; preds = %sw.default, %sw.bb.6, %sw.bb
  %87 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2290, !tbaa !1135
  %lock76 = getelementptr inbounds %struct.compobject, %struct.compobject* %87, i32 0, i32 7, !dbg !2291
  %88 = load i8*, i8** %lock76, align 8, !dbg !2291, !tbaa !1231
  call void @PyThread_release_lock(i8* %88), !dbg !2292
  br label %do.body.77, !dbg !2293

do.body.77:                                       ; preds = %error
  %89 = bitcast %struct._object** %_py_xdecref_tmp78 to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !2294
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp78, metadata !644, metadata !1120), !dbg !2296
  %90 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !2297, !tbaa !1135
  %91 = bitcast %struct.compobject* %90 to %struct._object*, !dbg !2298
  store %struct._object* %91, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !2296, !tbaa !1135
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !2299, !tbaa !1135
  %cmp79 = icmp ne %struct._object* %92, null, !dbg !2300
  br i1 %cmp79, label %if.then.80, label %if.end.93, !dbg !2301

if.then.80:                                       ; preds = %do.body.77
  br label %do.body.81, !dbg !2302

do.body.81:                                       ; preds = %if.then.80
  %93 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !2304
  call void @llvm.lifetime.start(i64 8, i8* %93) #1, !dbg !2304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !646, metadata !1120), !dbg !2306
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !2307, !tbaa !1135
  store %struct._object* %94, %struct._object** %_py_decref_tmp82, align 8, !dbg !2306, !tbaa !1135
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2308, !tbaa !1135
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0, !dbg !2310
  %96 = load i64, i64* %ob_refcnt83, align 8, !dbg !2311, !tbaa !1154
  %dec84 = add i64 %96, -1, !dbg !2311
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !2311, !tbaa !1154
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !2312
  br i1 %cmp85, label %if.then.86, label %if.else.87, !dbg !2313

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90, !dbg !2314

if.else.87:                                       ; preds = %do.body.81
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2316, !tbaa !1135
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1, !dbg !2318
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8, !dbg !2318, !tbaa !1260
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4, !dbg !2319
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8, !dbg !2319, !tbaa !1262
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !2320, !tbaa !1135
  call void %99(%struct._object* %100), !dbg !2321
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  %101 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !2322
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !2322
  br label %do.cond.91, !dbg !2324

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !2325

do.end.92:                                        ; preds = %do.cond.91
  br label %if.end.93, !dbg !2327

if.end.93:                                        ; preds = %do.end.92, %do.body.77
  %102 = bitcast %struct._object** %_py_xdecref_tmp78 to i8*, !dbg !2329
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !2329
  br label %do.cond.94, !dbg !2330

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95, !dbg !2331

do.end.95:                                        ; preds = %do.cond.94
  store %struct._object* null, %struct._object** %retval, !dbg !2333
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2333

cleanup:                                          ; preds = %do.end.95, %do.end.67, %if.then
  %103 = bitcast i32* %err to i8*, !dbg !2334
  call void @llvm.lifetime.end(i64 4, i8* %103) #1, !dbg !2334
  %104 = bitcast %struct.compobject** %retval1 to i8*, !dbg !2334
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !2334
  %105 = load %struct._object*, %struct._object** %retval, !dbg !2334
  ret %struct._object* %105, !dbg !2334
}

; Function Attrs: nounwind uwtable
define internal %struct.compobject* @newcompobject(%struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct.compobject*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %self = alloca %struct.compobject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !655, metadata !1120), !dbg !2335
  %0 = bitcast %struct.compobject** %self to i8*, !dbg !2336
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2336
  call void @llvm.dbg.declare(metadata %struct.compobject** %self, metadata !656, metadata !1120), !dbg !2337
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2338, !tbaa !1135
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %1), !dbg !2339
  %2 = bitcast %struct._object* %call to %struct.compobject*, !dbg !2340
  store %struct.compobject* %2, %struct.compobject** %self, align 8, !dbg !2341, !tbaa !1135
  %3 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2342, !tbaa !1135
  %cmp = icmp eq %struct.compobject* %3, null, !dbg !2344
  br i1 %cmp, label %if.then, label %if.end, !dbg !2345

if.then:                                          ; preds = %entry
  store %struct.compobject* null, %struct.compobject** %retval, !dbg !2346
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2346

if.end:                                           ; preds = %entry
  %4 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2347, !tbaa !1135
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 4, !dbg !2348
  store i8 0, i8* %eof, align 1, !dbg !2349, !tbaa !2277
  %5 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2350, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %5, i32 0, i32 5, !dbg !2351
  store i32 0, i32* %is_initialised, align 4, !dbg !2352, !tbaa !1217
  %6 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2353, !tbaa !1135
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %6, i32 0, i32 6, !dbg !2354
  store %struct._object* null, %struct._object** %zdict, align 8, !dbg !2355, !tbaa !1323
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), i64 0), !dbg !2356
  %7 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2357, !tbaa !1135
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %7, i32 0, i32 2, !dbg !2358
  store %struct._object* %call1, %struct._object** %unused_data, align 8, !dbg !2359, !tbaa !1239
  %8 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2360, !tbaa !1135
  %unused_data2 = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 2, !dbg !2361
  %9 = load %struct._object*, %struct._object** %unused_data2, align 8, !dbg !2361, !tbaa !1239
  %cmp3 = icmp eq %struct._object* %9, null, !dbg !2362
  br i1 %cmp3, label %if.then.4, label %if.end.8, !dbg !2363

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !2364

do.body:                                          ; preds = %if.then.4
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2365
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2365
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !657, metadata !1120), !dbg !2367
  %11 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2368, !tbaa !1135
  %12 = bitcast %struct.compobject* %11 to %struct._object*, !dbg !2369
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !2367, !tbaa !1135
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2370, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !2372
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !2373, !tbaa !1154
  %dec = add i64 %14, -1, !dbg !2373
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2373, !tbaa !1154
  %cmp5 = icmp ne i64 %dec, 0, !dbg !2374
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2375

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !2376

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2378, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !2380
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2380, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !2381
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2381, !tbaa !1262
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2382, !tbaa !1135
  call void %17(%struct._object* %18), !dbg !2383
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2384
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !2384
  br label %do.cond, !dbg !2386

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !2387

do.end:                                           ; preds = %do.cond
  store %struct.compobject* null, %struct.compobject** %retval, !dbg !2389
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2389

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), i64 0), !dbg !2390
  %20 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2391, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 3, !dbg !2392
  store %struct._object* %call9, %struct._object** %unconsumed_tail, align 8, !dbg !2393, !tbaa !1284
  %21 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2394, !tbaa !1135
  %unconsumed_tail10 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 3, !dbg !2395
  %22 = load %struct._object*, %struct._object** %unconsumed_tail10, align 8, !dbg !2395, !tbaa !1284
  %cmp11 = icmp eq %struct._object* %22, null, !dbg !2396
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !2397

if.then.12:                                       ; preds = %if.end.8
  br label %do.body.13, !dbg !2398

do.body.13:                                       ; preds = %if.then.12
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2399
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !2399
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !661, metadata !1120), !dbg !2401
  %24 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2402, !tbaa !1135
  %25 = bitcast %struct.compobject* %24 to %struct._object*, !dbg !2403
  store %struct._object* %25, %struct._object** %_py_decref_tmp14, align 8, !dbg !2401, !tbaa !1135
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2404, !tbaa !1135
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !2406
  %27 = load i64, i64* %ob_refcnt15, align 8, !dbg !2407, !tbaa !1154
  %dec16 = add i64 %27, -1, !dbg !2407
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2407, !tbaa !1154
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !2408
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !2409

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !2410

if.else.19:                                       ; preds = %do.body.13
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2412, !tbaa !1135
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !2414
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2414, !tbaa !1260
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !2415
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2415, !tbaa !1262
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !2416, !tbaa !1135
  call void %30(%struct._object* %31), !dbg !2417
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %32 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !2418
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !2418
  br label %do.cond.23, !dbg !2420

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !2421

do.end.24:                                        ; preds = %do.cond.23
  store %struct.compobject* null, %struct.compobject** %retval, !dbg !2423
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2423

if.end.25:                                        ; preds = %if.end.8
  %call26 = call i8* @PyThread_allocate_lock(), !dbg !2424
  %33 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2425, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %33, i32 0, i32 7, !dbg !2426
  store i8* %call26, i8** %lock, align 8, !dbg !2427, !tbaa !1231
  %34 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2428, !tbaa !1135
  %lock27 = getelementptr inbounds %struct.compobject, %struct.compobject* %34, i32 0, i32 7, !dbg !2430
  %35 = load i8*, i8** %lock27, align 8, !dbg !2430, !tbaa !1231
  %cmp28 = icmp eq i8* %35, null, !dbg !2431
  br i1 %cmp28, label %if.then.29, label %if.end.30, !dbg !2432

if.then.29:                                       ; preds = %if.end.25
  %36 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !2433, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0)), !dbg !2435
  store %struct.compobject* null, %struct.compobject** %retval, !dbg !2436
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2436

if.end.30:                                        ; preds = %if.end.25
  %37 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !2437, !tbaa !1135
  store %struct.compobject* %37, %struct.compobject** %retval, !dbg !2438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2438

cleanup:                                          ; preds = %if.end.30, %if.then.29, %do.end.24, %do.end, %if.then
  %38 = bitcast %struct.compobject** %self to i8*, !dbg !2439
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2439
  %39 = load %struct.compobject*, %struct.compobject** %retval, !dbg !2439
  ret %struct.compobject* %39, !dbg !2439
}

declare i32 @deflateCopy(%struct.z_stream_s*, %struct.z_stream_s*) #3

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare i8* @PyThread_allocate_lock() #3

; Function Attrs: nounwind uwtable
define internal void @Decomp_dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !667, metadata !1120), !dbg !2440
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2441, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 5, !dbg !2443
  %1 = load i32, i32* %is_initialised, align 4, !dbg !2443, !tbaa !1217
  %tobool = icmp ne i32 %1, 0, !dbg !2441
  br i1 %tobool, label %if.then, label %if.end, !dbg !2444

if.then:                                          ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2445, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 1, !dbg !2446
  %call = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !2447
  br label %if.end, !dbg !2447

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2448, !tbaa !1135
  call void @Dealloc(%struct.compobject* %3), !dbg !2449
  ret void, !dbg !2450
}

declare i32 @inflateEnd(%struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_decompress(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %max_length = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !670, metadata !1120), !dbg !2451
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !671, metadata !1120), !dbg !2452
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !2453
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2453
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !672, metadata !1120), !dbg !2454
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !2454, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !2455
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !673, metadata !1120), !dbg !2456
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !2456
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !2456
  %3 = bitcast i32* %max_length to i8*, !dbg !2457
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !2457
  call void @llvm.dbg.declare(metadata i32* %max_length, metadata !674, metadata !1120), !dbg !2458
  store i32 0, i32* %max_length, align 4, !dbg !2458, !tbaa !1390
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2459, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), %struct.bufferinfo* %data, i32 (%struct._object*, i8*)* @uint_converter, i32* %max_length), !dbg !2461
  %tobool = icmp ne i32 %call, 0, !dbg !2461
  br i1 %tobool, label %if.end, label %if.then, !dbg !2462

if.then:                                          ; preds = %entry
  br label %exit, !dbg !2463

if.end:                                           ; preds = %entry
  %5 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2464, !tbaa !1135
  %6 = load i32, i32* %max_length, align 4, !dbg !2465, !tbaa !1390
  %call1 = call %struct._object* @zlib_Decompress_decompress_impl(%struct.compobject* %5, %struct.bufferinfo* %data, i32 %6), !dbg !2466
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !2467, !tbaa !1135
  br label %exit, !dbg !2468

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !2469
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2469, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !2471
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !2472

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !2473
  br label %if.end.4, !dbg !2473

if.end.4:                                         ; preds = %if.then.3, %exit
  %8 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !2474, !tbaa !1135
  %9 = bitcast i32* %max_length to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !2475
  %10 = bitcast %struct.bufferinfo* %data to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 80, i8* %10) #1, !dbg !2475
  %11 = bitcast %struct._object** %return_value to i8*, !dbg !2475
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2475
  ret %struct._object* %8, !dbg !2476
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_flush(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %length = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !772, metadata !1120), !dbg !2477
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !773, metadata !1120), !dbg !2478
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !2479
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2479
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !774, metadata !1120), !dbg !2480
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !2480, !tbaa !1135
  %1 = bitcast i32* %length to i8*, !dbg !2481
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2481
  call void @llvm.dbg.declare(metadata i32* %length, metadata !775, metadata !1120), !dbg !2482
  store i32 16384, i32* %length, align 4, !dbg !2482, !tbaa !1390
  %2 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2483, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 (%struct._object*, i8*)* @uint_converter, i32* %length), !dbg !2485
  %tobool = icmp ne i32 %call, 0, !dbg !2485
  br i1 %tobool, label %if.end, label %if.then, !dbg !2486

if.then:                                          ; preds = %entry
  br label %exit, !dbg !2487

if.end:                                           ; preds = %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2488, !tbaa !1135
  %4 = load i32, i32* %length, align 4, !dbg !2489, !tbaa !1390
  %call1 = call %struct._object* @zlib_Decompress_flush_impl(%struct.compobject* %3, i32 %4), !dbg !2490
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !2491, !tbaa !1135
  br label %exit, !dbg !2492

exit:                                             ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !2493, !tbaa !1135
  %6 = bitcast i32* %length to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 4, i8* %6) #1, !dbg !2494
  %7 = bitcast %struct._object** %return_value to i8*, !dbg !2494
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2494
  ret %struct._object* %5, !dbg !2495
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_copy(%struct.compobject* %self, %struct._object* %_unused_ignored) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !822, metadata !1120), !dbg !2496
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %_unused_ignored.addr, metadata !823, metadata !1120), !dbg !2497
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2498, !tbaa !1135
  %call = call %struct._object* @zlib_Decompress_copy_impl(%struct.compobject* %0), !dbg !2499
  ret %struct._object* %call, !dbg !2500
}

; Function Attrs: nounwind uwtable
define internal i32 @uint_converter(%struct._object* %obj, i8* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %uval = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !677, metadata !1120), !dbg !2501
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !678, metadata !1120), !dbg !2502
  %0 = bitcast i64* %val to i8*, !dbg !2503
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2503
  call void @llvm.dbg.declare(metadata i64* %val, metadata !679, metadata !1120), !dbg !2504
  %1 = bitcast i64* %uval to i8*, !dbg !2505
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2505
  call void @llvm.dbg.declare(metadata i64* %uval, metadata !680, metadata !1120), !dbg !2506
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2507, !tbaa !1135
  %call = call i64 @PyLong_AsLong(%struct._object* %2), !dbg !2508
  store i64 %call, i64* %val, align 8, !dbg !2509, !tbaa !1463
  %3 = load i64, i64* %val, align 8, !dbg !2510, !tbaa !1463
  %cmp = icmp eq i64 %3, -1, !dbg !2512
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !2513

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !2514
  %tobool = icmp ne %struct._object* %call1, null, !dbg !2514
  br i1 %tobool, label %if.then, label %if.else, !dbg !2516

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2517, !tbaa !1135
  %call2 = call i64 @PyLong_AsUnsignedLong(%struct._object* %4), !dbg !2519
  store i64 %call2, i64* %uval, align 8, !dbg !2520, !tbaa !1463
  %5 = load i64, i64* %uval, align 8, !dbg !2521, !tbaa !1463
  %cmp3 = icmp eq i64 %5, -1, !dbg !2523
  br i1 %cmp3, label %land.lhs.true.4, label %if.end, !dbg !2524

land.lhs.true.4:                                  ; preds = %if.then
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !2525
  %tobool6 = icmp ne %struct._object* %call5, null, !dbg !2525
  br i1 %tobool6, label %if.then.7, label %if.end, !dbg !2527

if.then.7:                                        ; preds = %land.lhs.true.4
  store i32 0, i32* %retval, !dbg !2528
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2528

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  br label %if.end.11, !dbg !2529

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* %val, align 8, !dbg !2530, !tbaa !1463
  %cmp8 = icmp slt i64 %6, 0, !dbg !2533
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2534

if.then.9:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2535, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0)), !dbg !2537
  store i32 0, i32* %retval, !dbg !2538
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2538

if.end.10:                                        ; preds = %if.else
  %8 = load i64, i64* %val, align 8, !dbg !2539, !tbaa !1463
  store i64 %8, i64* %uval, align 8, !dbg !2540, !tbaa !1463
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %9 = load i64, i64* %uval, align 8, !dbg !2541, !tbaa !1463
  %cmp12 = icmp ugt i64 %9, 4294967295, !dbg !2543
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !2544

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2545, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0)), !dbg !2547
  store i32 0, i32* %retval, !dbg !2548
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2548

if.end.14:                                        ; preds = %if.end.11
  %11 = load i64, i64* %uval, align 8, !dbg !2549, !tbaa !1463
  %conv = trunc i64 %11 to i32, !dbg !2550
  %12 = load i8*, i8** %ptr.addr, align 8, !dbg !2551, !tbaa !1135
  %13 = bitcast i8* %12 to i32*, !dbg !2552
  store i32 %conv, i32* %13, align 4, !dbg !2553, !tbaa !1390
  store i32 1, i32* %retval, !dbg !2554
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2554

cleanup:                                          ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.7
  %14 = bitcast i64* %uval to i8*, !dbg !2555
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !2555
  %15 = bitcast i64* %val to i8*, !dbg !2555
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2555
  %16 = load i32, i32* %retval, !dbg !2555
  ret i32 %16, !dbg !2555
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_decompress_impl(%struct.compobject* %self, %struct.bufferinfo* %data, i32 %max_length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %max_length.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %old_length = alloca i32, align 4
  %length = alloca i32, align 4
  %RetVal = alloca %struct._object*, align 8
  %start_total_out = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save15 = alloca %struct._ts*, align 8
  %zdict_buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_save91 = alloca %struct._ts*, align 8
  %_py_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp125 = alloca %struct._object*, align 8
  %_save147 = alloca %struct._ts*, align 8
  %_py_decref_tmp156 = alloca %struct._object*, align 8
  %_py_decref_tmp181 = alloca %struct._object*, align 8
  %_py_tmp203 = alloca %struct._object*, align 8
  %_py_decref_tmp208 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !685, metadata !1120), !dbg !2556
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !686, metadata !1120), !dbg !2557
  store i32 %max_length, i32* %max_length.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %max_length.addr, metadata !687, metadata !1120), !dbg !2558
  %0 = bitcast i32* %err to i8*, !dbg !2559
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2559
  call void @llvm.dbg.declare(metadata i32* %err, metadata !688, metadata !1120), !dbg !2560
  %1 = bitcast i32* %old_length to i8*, !dbg !2561
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !2561
  call void @llvm.dbg.declare(metadata i32* %old_length, metadata !689, metadata !1120), !dbg !2562
  %2 = bitcast i32* %length to i8*, !dbg !2561
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2561
  call void @llvm.dbg.declare(metadata i32* %length, metadata !690, metadata !1120), !dbg !2563
  store i32 16384, i32* %length, align 4, !dbg !2563, !tbaa !1390
  %3 = bitcast %struct._object** %RetVal to i8*, !dbg !2564
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2564
  call void @llvm.dbg.declare(metadata %struct._object** %RetVal, metadata !691, metadata !1120), !dbg !2565
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2565, !tbaa !1135
  %4 = bitcast i64* %start_total_out to i8*, !dbg !2566
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2566
  call void @llvm.dbg.declare(metadata i64* %start_total_out, metadata !692, metadata !1120), !dbg !2567
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2568, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2, !dbg !2570
  %6 = load i64, i64* %len, align 8, !dbg !2570, !tbaa !1427
  %cmp = icmp ugt i64 %6, 4294967295, !dbg !2571
  br i1 %cmp, label %if.then, label %if.end, !dbg !2572

if.then:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2573, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0)), !dbg !2575
  store %struct._object* null, %struct._object** %retval, !dbg !2576
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225, !dbg !2576

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %max_length.addr, align 4, !dbg !2577, !tbaa !1390
  %tobool = icmp ne i32 %8, 0, !dbg !2577
  br i1 %tobool, label %land.lhs.true, label %if.end.3, !dbg !2579

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %length, align 4, !dbg !2580, !tbaa !1390
  %10 = load i32, i32* %max_length.addr, align 4, !dbg !2582, !tbaa !1390
  %cmp1 = icmp ugt i32 %9, %10, !dbg !2583
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !2584

if.then.2:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %max_length.addr, align 4, !dbg !2585, !tbaa !1390
  store i32 %11, i32* %length, align 4, !dbg !2586, !tbaa !1390
  br label %if.end.3, !dbg !2587

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %12 = load i32, i32* %length, align 4, !dbg !2588, !tbaa !1390
  %conv = zext i32 %12 to i64, !dbg !2588
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv), !dbg !2590
  store %struct._object* %call, %struct._object** %RetVal, align 8, !dbg !2591, !tbaa !1135
  %tobool4 = icmp ne %struct._object* %call, null, !dbg !2591
  br i1 %tobool4, label %if.end.6, label %if.then.5, !dbg !2592

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval, !dbg !2593
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225, !dbg !2593

if.end.6:                                         ; preds = %if.end.3
  %13 = bitcast %struct._ts** %_save to i8*, !dbg !2594
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !2594
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !693, metadata !1120), !dbg !2595
  %call7 = call %struct._ts* @PyEval_SaveThread(), !dbg !2596
  store %struct._ts* %call7, %struct._ts** %_save, align 8, !dbg !2597, !tbaa !1135
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2598, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 7, !dbg !2599
  %15 = load i8*, i8** %lock, align 8, !dbg !2599, !tbaa !1231
  %call8 = call i32 @PyThread_acquire_lock(i8* %15, i32 1), !dbg !2600
  %16 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2601, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %16), !dbg !2602
  %17 = bitcast %struct._ts** %_save to i8*, !dbg !2603
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !2603
  %18 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2604, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 1, !dbg !2605
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !2606
  %19 = load i64, i64* %total_out, align 8, !dbg !2606, !tbaa !1461
  store i64 %19, i64* %start_total_out, align 8, !dbg !2607, !tbaa !1463
  %20 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2608, !tbaa !1135
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %20, i32 0, i32 2, !dbg !2609
  %21 = load i64, i64* %len9, align 8, !dbg !2609, !tbaa !1427
  %conv10 = trunc i64 %21 to i32, !dbg !2610
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2611, !tbaa !1135
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 1, !dbg !2612
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst11, i32 0, i32 1, !dbg !2613
  store i32 %conv10, i32* %avail_in, align 4, !dbg !2614, !tbaa !1469
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !2615, !tbaa !1135
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0, !dbg !2616
  %24 = load i8*, i8** %buf, align 8, !dbg !2616, !tbaa !1436
  %25 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2617, !tbaa !1135
  %zst12 = getelementptr inbounds %struct.compobject, %struct.compobject* %25, i32 0, i32 1, !dbg !2618
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst12, i32 0, i32 0, !dbg !2619
  store i8* %24, i8** %next_in, align 8, !dbg !2620, !tbaa !1475
  %26 = load i32, i32* %length, align 4, !dbg !2621, !tbaa !1390
  %27 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2622, !tbaa !1135
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %27, i32 0, i32 1, !dbg !2623
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst13, i32 0, i32 4, !dbg !2624
  store i32 %26, i32* %avail_out, align 4, !dbg !2625, !tbaa !1481
  %28 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2626, !tbaa !1135
  %29 = bitcast %struct._object* %28 to %struct.PyBytesObject*, !dbg !2627
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %29, i32 0, i32 2, !dbg !2628
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2629
  %30 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2630, !tbaa !1135
  %zst14 = getelementptr inbounds %struct.compobject, %struct.compobject* %30, i32 0, i32 1, !dbg !2631
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst14, i32 0, i32 3, !dbg !2632
  store i8* %arraydecay, i8** %next_out, align 8, !dbg !2633, !tbaa !1490
  %31 = bitcast %struct._ts** %_save15 to i8*, !dbg !2634
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !2634
  call void @llvm.dbg.declare(metadata %struct._ts** %_save15, metadata !695, metadata !1120), !dbg !2635
  %call16 = call %struct._ts* @PyEval_SaveThread(), !dbg !2636
  store %struct._ts* %call16, %struct._ts** %_save15, align 8, !dbg !2637, !tbaa !1135
  %32 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2638, !tbaa !1135
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %32, i32 0, i32 1, !dbg !2639
  %call18 = call i32 @inflate(%struct.z_stream_s* %zst17, i32 2), !dbg !2640
  store i32 %call18, i32* %err, align 4, !dbg !2641, !tbaa !1390
  %33 = load %struct._ts*, %struct._ts** %_save15, align 8, !dbg !2642, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %33), !dbg !2643
  %34 = bitcast %struct._ts** %_save15 to i8*, !dbg !2644
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !2644
  %35 = load i32, i32* %err, align 4, !dbg !2645, !tbaa !1390
  %cmp19 = icmp eq i32 %35, 2, !dbg !2646
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.95, !dbg !2647

land.lhs.true.21:                                 ; preds = %if.end.6
  %36 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2648, !tbaa !1135
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %36, i32 0, i32 6, !dbg !2650
  %37 = load %struct._object*, %struct._object** %zdict, align 8, !dbg !2650, !tbaa !1323
  %cmp22 = icmp ne %struct._object* %37, null, !dbg !2651
  br i1 %cmp22, label %if.then.24, label %if.end.95, !dbg !2652

if.then.24:                                       ; preds = %land.lhs.true.21
  %38 = bitcast %struct.bufferinfo* %zdict_buf to i8*, !dbg !2653
  call void @llvm.lifetime.start(i64 80, i8* %38) #1, !dbg !2653
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %zdict_buf, metadata !697, metadata !1120), !dbg !2654
  %39 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2655, !tbaa !1135
  %zdict25 = getelementptr inbounds %struct.compobject, %struct.compobject* %39, i32 0, i32 6, !dbg !2656
  %40 = load %struct._object*, %struct._object** %zdict25, align 8, !dbg !2656, !tbaa !1323
  %call26 = call i32 @PyObject_GetBuffer(%struct._object* %40, %struct.bufferinfo* %zdict_buf, i32 0), !dbg !2657
  %cmp27 = icmp eq i32 %call26, -1, !dbg !2658
  br i1 %cmp27, label %if.then.29, label %if.end.34, !dbg !2659

if.then.29:                                       ; preds = %if.then.24
  br label %do.body, !dbg !2660

do.body:                                          ; preds = %if.then.29
  %41 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2661
  call void @llvm.lifetime.start(i64 8, i8* %41) #1, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !700, metadata !1120), !dbg !2663
  %42 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2664, !tbaa !1135
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8, !dbg !2663, !tbaa !1135
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2665, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0, !dbg !2667
  %44 = load i64, i64* %ob_refcnt, align 8, !dbg !2668, !tbaa !1154
  %dec = add i64 %44, -1, !dbg !2668
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2668, !tbaa !1154
  %cmp30 = icmp ne i64 %dec, 0, !dbg !2669
  br i1 %cmp30, label %if.then.32, label %if.else, !dbg !2670

if.then.32:                                       ; preds = %do.body
  br label %if.end.33, !dbg !2671

if.else:                                          ; preds = %do.body
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2673, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !2675
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2675, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4, !dbg !2676
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2676, !tbaa !1262
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2677, !tbaa !1135
  call void %47(%struct._object* %48), !dbg !2678
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  %49 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2679
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2679
  br label %do.cond, !dbg !2681

do.cond:                                          ; preds = %if.end.33
  br label %do.end, !dbg !2682

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2684, !tbaa !1135
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2685

if.end.34:                                        ; preds = %if.then.24
  %len35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 2, !dbg !2686
  %50 = load i64, i64* %len35, align 8, !dbg !2686, !tbaa !1427
  %cmp36 = icmp ugt i64 %50, 4294967295, !dbg !2687
  br i1 %cmp36, label %if.then.38, label %if.end.59, !dbg !2688

if.then.38:                                       ; preds = %if.end.34
  %51 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2689, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i32 0, i32 0)), !dbg !2690
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict_buf), !dbg !2691
  br label %do.body.39, !dbg !2692

do.body.39:                                       ; preds = %if.then.38
  %52 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2693
  call void @llvm.lifetime.start(i64 8, i8* %52) #1, !dbg !2693
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !704, metadata !1120), !dbg !2695
  %53 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2696, !tbaa !1135
  store %struct._object* %53, %struct._object** %_py_tmp, align 8, !dbg !2695, !tbaa !1135
  %54 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2697, !tbaa !1135
  %cmp40 = icmp ne %struct._object* %54, null, !dbg !2698
  br i1 %cmp40, label %if.then.42, label %if.end.56, !dbg !2699

if.then.42:                                       ; preds = %do.body.39
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2700, !tbaa !1135
  br label %do.body.43, !dbg !2702

do.body.43:                                       ; preds = %if.then.42
  %55 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !2703
  call void @llvm.lifetime.start(i64 8, i8* %55) #1, !dbg !2703
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp44, metadata !708, metadata !1120), !dbg !2705
  %56 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2706, !tbaa !1135
  store %struct._object* %56, %struct._object** %_py_decref_tmp44, align 8, !dbg !2705, !tbaa !1135
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !2707, !tbaa !1135
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0, !dbg !2709
  %58 = load i64, i64* %ob_refcnt45, align 8, !dbg !2710, !tbaa !1154
  %dec46 = add i64 %58, -1, !dbg !2710
  store i64 %dec46, i64* %ob_refcnt45, align 8, !dbg !2710, !tbaa !1154
  %cmp47 = icmp ne i64 %dec46, 0, !dbg !2711
  br i1 %cmp47, label %if.then.49, label %if.else.50, !dbg !2712

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53, !dbg !2713

if.else.50:                                       ; preds = %do.body.43
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !2715, !tbaa !1135
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1, !dbg !2717
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !2717, !tbaa !1260
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4, !dbg !2718
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !2718, !tbaa !1262
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8, !dbg !2719, !tbaa !1135
  call void %61(%struct._object* %62), !dbg !2720
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  %63 = bitcast %struct._object** %_py_decref_tmp44 to i8*, !dbg !2721
  call void @llvm.lifetime.end(i64 8, i8* %63) #1, !dbg !2721
  br label %do.cond.54, !dbg !2723

do.cond.54:                                       ; preds = %if.end.53
  br label %do.end.55, !dbg !2724

do.end.55:                                        ; preds = %do.cond.54
  br label %if.end.56, !dbg !2726

if.end.56:                                        ; preds = %do.end.55, %do.body.39
  %64 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2728
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !2728
  br label %do.cond.57, !dbg !2731

do.cond.57:                                       ; preds = %if.end.56
  br label %do.end.58, !dbg !2732

do.end.58:                                        ; preds = %do.cond.57
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2734

if.end.59:                                        ; preds = %if.end.34
  %65 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2735, !tbaa !1135
  %zst60 = getelementptr inbounds %struct.compobject, %struct.compobject* %65, i32 0, i32 1, !dbg !2736
  %buf61 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 0, !dbg !2737
  %66 = load i8*, i8** %buf61, align 8, !dbg !2737, !tbaa !1436
  %len62 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 2, !dbg !2738
  %67 = load i64, i64* %len62, align 8, !dbg !2738, !tbaa !1427
  %conv63 = trunc i64 %67 to i32, !dbg !2739
  %call64 = call i32 @inflateSetDictionary(%struct.z_stream_s* %zst60, i8* %66, i32 %conv63), !dbg !2740
  store i32 %call64, i32* %err, align 4, !dbg !2741, !tbaa !1390
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict_buf), !dbg !2742
  %68 = load i32, i32* %err, align 4, !dbg !2743, !tbaa !1390
  %cmp65 = icmp ne i32 %68, 0, !dbg !2744
  br i1 %cmp65, label %if.then.67, label %if.end.90, !dbg !2745

if.then.67:                                       ; preds = %if.end.59
  %69 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2746, !tbaa !1135
  %zst68 = getelementptr inbounds %struct.compobject, %struct.compobject* %69, i32 0, i32 1, !dbg !2747
  %70 = load i32, i32* %err, align 4, !dbg !2748, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst68, i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !2749
  br label %do.body.69, !dbg !2750

do.body.69:                                       ; preds = %if.then.67
  %71 = bitcast %struct._object** %_py_tmp70 to i8*, !dbg !2751
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !2751
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp70, metadata !712, metadata !1120), !dbg !2753
  %72 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2754, !tbaa !1135
  store %struct._object* %72, %struct._object** %_py_tmp70, align 8, !dbg !2753, !tbaa !1135
  %73 = load %struct._object*, %struct._object** %_py_tmp70, align 8, !dbg !2755, !tbaa !1135
  %cmp71 = icmp ne %struct._object* %73, null, !dbg !2756
  br i1 %cmp71, label %if.then.73, label %if.end.87, !dbg !2757

if.then.73:                                       ; preds = %do.body.69
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2758, !tbaa !1135
  br label %do.body.74, !dbg !2760

do.body.74:                                       ; preds = %if.then.73
  %74 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !2761
  call void @llvm.lifetime.start(i64 8, i8* %74) #1, !dbg !2761
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp75, metadata !716, metadata !1120), !dbg !2763
  %75 = load %struct._object*, %struct._object** %_py_tmp70, align 8, !dbg !2764, !tbaa !1135
  store %struct._object* %75, %struct._object** %_py_decref_tmp75, align 8, !dbg !2763, !tbaa !1135
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2765, !tbaa !1135
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0, !dbg !2767
  %77 = load i64, i64* %ob_refcnt76, align 8, !dbg !2768, !tbaa !1154
  %dec77 = add i64 %77, -1, !dbg !2768
  store i64 %dec77, i64* %ob_refcnt76, align 8, !dbg !2768, !tbaa !1154
  %cmp78 = icmp ne i64 %dec77, 0, !dbg !2769
  br i1 %cmp78, label %if.then.80, label %if.else.81, !dbg !2770

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84, !dbg !2771

if.else.81:                                       ; preds = %do.body.74
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2773, !tbaa !1135
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1, !dbg !2775
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !2775, !tbaa !1260
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 4, !dbg !2776
  %80 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !2776, !tbaa !1262
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8, !dbg !2777, !tbaa !1135
  call void %80(%struct._object* %81), !dbg !2778
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  %82 = bitcast %struct._object** %_py_decref_tmp75 to i8*, !dbg !2779
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !2779
  br label %do.cond.85, !dbg !2781

do.cond.85:                                       ; preds = %if.end.84
  br label %do.end.86, !dbg !2782

do.end.86:                                        ; preds = %do.cond.85
  br label %if.end.87, !dbg !2784

if.end.87:                                        ; preds = %do.end.86, %do.body.69
  %83 = bitcast %struct._object** %_py_tmp70 to i8*, !dbg !2786
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !2786
  br label %do.cond.88, !dbg !2789

do.cond.88:                                       ; preds = %if.end.87
  br label %do.end.89, !dbg !2790

do.end.89:                                        ; preds = %do.cond.88
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2792

if.end.90:                                        ; preds = %if.end.59
  %84 = bitcast %struct._ts** %_save91 to i8*, !dbg !2793
  call void @llvm.lifetime.start(i64 8, i8* %84) #1, !dbg !2793
  call void @llvm.dbg.declare(metadata %struct._ts** %_save91, metadata !720, metadata !1120), !dbg !2794
  %call92 = call %struct._ts* @PyEval_SaveThread(), !dbg !2795
  store %struct._ts* %call92, %struct._ts** %_save91, align 8, !dbg !2796, !tbaa !1135
  %85 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2797, !tbaa !1135
  %zst93 = getelementptr inbounds %struct.compobject, %struct.compobject* %85, i32 0, i32 1, !dbg !2798
  %call94 = call i32 @inflate(%struct.z_stream_s* %zst93, i32 2), !dbg !2799
  store i32 %call94, i32* %err, align 4, !dbg !2800, !tbaa !1390
  %86 = load %struct._ts*, %struct._ts** %_save91, align 8, !dbg !2801, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %86), !dbg !2802
  %87 = bitcast %struct._ts** %_save91 to i8*, !dbg !2803
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !2803
  store i32 0, i32* %cleanup.dest.slot, !dbg !2804
  br label %cleanup, !dbg !2804

cleanup:                                          ; preds = %if.end.90, %do.end.89, %do.end.58, %do.end
  %88 = bitcast %struct.bufferinfo* %zdict_buf to i8*, !dbg !2805
  call void @llvm.lifetime.end(i64 80, i8* %88) #1, !dbg !2805
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %NodeBlock

NodeBlock:                                        ; preds = %cleanup
  %Pivot = icmp slt i32 %cleanup.dest, 4
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %cleanup.dest, 4
  br i1 %SwitchLeaf2, label %error, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 0
  br i1 %SwitchLeaf, label %cleanup.cont, label %NewDefault

cleanup.cont:                                     ; preds = %LeafBlock
  br label %if.end.95, !dbg !2806

if.end.95:                                        ; preds = %cleanup.cont, %land.lhs.true.21, %if.end.6
  br label %while.cond, !dbg !2807

while.cond:                                       ; preds = %if.end.140, %if.end.95
  %89 = load i32, i32* %err, align 4, !dbg !2808, !tbaa !1390
  %cmp96 = icmp eq i32 %89, 0, !dbg !2811
  br i1 %cmp96, label %land.rhs, label %land.end, !dbg !2812

land.rhs:                                         ; preds = %while.cond
  %90 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2813, !tbaa !1135
  %zst98 = getelementptr inbounds %struct.compobject, %struct.compobject* %90, i32 0, i32 1, !dbg !2815
  %avail_out99 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst98, i32 0, i32 4, !dbg !2816
  %91 = load i32, i32* %avail_out99, align 4, !dbg !2816, !tbaa !1481
  %cmp100 = icmp eq i32 %91, 0, !dbg !2817
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %92 = phi i1 [ false, %while.cond ], [ %cmp100, %land.rhs ]
  br i1 %92, label %while.body, label %while.end, !dbg !2818

while.body:                                       ; preds = %land.end
  %93 = load i32, i32* %max_length.addr, align 4, !dbg !2820, !tbaa !1390
  %tobool102 = icmp ne i32 %93, 0, !dbg !2820
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.107, !dbg !2822

land.lhs.true.103:                                ; preds = %while.body
  %94 = load i32, i32* %length, align 4, !dbg !2823, !tbaa !1390
  %95 = load i32, i32* %max_length.addr, align 4, !dbg !2825, !tbaa !1390
  %cmp104 = icmp uge i32 %94, %95, !dbg !2826
  br i1 %cmp104, label %if.then.106, label %if.end.107, !dbg !2827

if.then.106:                                      ; preds = %land.lhs.true.103
  br label %while.end, !dbg !2828

if.end.107:                                       ; preds = %land.lhs.true.103, %while.body
  %96 = load i32, i32* %length, align 4, !dbg !2829, !tbaa !1390
  store i32 %96, i32* %old_length, align 4, !dbg !2830, !tbaa !1390
  %97 = load i32, i32* %length, align 4, !dbg !2831, !tbaa !1390
  %shl = shl i32 %97, 1, !dbg !2832
  store i32 %shl, i32* %length, align 4, !dbg !2833, !tbaa !1390
  %98 = load i32, i32* %max_length.addr, align 4, !dbg !2834, !tbaa !1390
  %tobool108 = icmp ne i32 %98, 0, !dbg !2834
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.113, !dbg !2836

land.lhs.true.109:                                ; preds = %if.end.107
  %99 = load i32, i32* %length, align 4, !dbg !2837, !tbaa !1390
  %100 = load i32, i32* %max_length.addr, align 4, !dbg !2839, !tbaa !1390
  %cmp110 = icmp ugt i32 %99, %100, !dbg !2840
  br i1 %cmp110, label %if.then.112, label %if.end.113, !dbg !2841

if.then.112:                                      ; preds = %land.lhs.true.109
  %101 = load i32, i32* %max_length.addr, align 4, !dbg !2842, !tbaa !1390
  store i32 %101, i32* %length, align 4, !dbg !2843, !tbaa !1390
  br label %if.end.113, !dbg !2844

if.end.113:                                       ; preds = %if.then.112, %land.lhs.true.109, %if.end.107
  %102 = load i32, i32* %length, align 4, !dbg !2845, !tbaa !1390
  %conv114 = zext i32 %102 to i64, !dbg !2845
  %call115 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv114), !dbg !2846
  %cmp116 = icmp slt i32 %call115, 0, !dbg !2847
  br i1 %cmp116, label %if.then.118, label %if.end.140, !dbg !2848

if.then.118:                                      ; preds = %if.end.113
  br label %do.body.119, !dbg !2849

do.body.119:                                      ; preds = %if.then.118
  %103 = bitcast %struct._object** %_py_tmp120 to i8*, !dbg !2850
  call void @llvm.lifetime.start(i64 8, i8* %103) #1, !dbg !2850
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp120, metadata !722, metadata !1120), !dbg !2852
  %104 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2853, !tbaa !1135
  store %struct._object* %104, %struct._object** %_py_tmp120, align 8, !dbg !2852, !tbaa !1135
  %105 = load %struct._object*, %struct._object** %_py_tmp120, align 8, !dbg !2854, !tbaa !1135
  %cmp121 = icmp ne %struct._object* %105, null, !dbg !2855
  br i1 %cmp121, label %if.then.123, label %if.end.137, !dbg !2856

if.then.123:                                      ; preds = %do.body.119
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2857, !tbaa !1135
  br label %do.body.124, !dbg !2859

do.body.124:                                      ; preds = %if.then.123
  %106 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !2860
  call void @llvm.lifetime.start(i64 8, i8* %106) #1, !dbg !2860
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp125, metadata !727, metadata !1120), !dbg !2862
  %107 = load %struct._object*, %struct._object** %_py_tmp120, align 8, !dbg !2863, !tbaa !1135
  store %struct._object* %107, %struct._object** %_py_decref_tmp125, align 8, !dbg !2862, !tbaa !1135
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !2864, !tbaa !1135
  %ob_refcnt126 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0, !dbg !2866
  %109 = load i64, i64* %ob_refcnt126, align 8, !dbg !2867, !tbaa !1154
  %dec127 = add i64 %109, -1, !dbg !2867
  store i64 %dec127, i64* %ob_refcnt126, align 8, !dbg !2867, !tbaa !1154
  %cmp128 = icmp ne i64 %dec127, 0, !dbg !2868
  br i1 %cmp128, label %if.then.130, label %if.else.131, !dbg !2869

if.then.130:                                      ; preds = %do.body.124
  br label %if.end.134, !dbg !2870

if.else.131:                                      ; preds = %do.body.124
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !2872, !tbaa !1135
  %ob_type132 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1, !dbg !2874
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type132, align 8, !dbg !2874, !tbaa !1260
  %tp_dealloc133 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4, !dbg !2875
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc133, align 8, !dbg !2875, !tbaa !1262
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp125, align 8, !dbg !2876, !tbaa !1135
  call void %112(%struct._object* %113), !dbg !2877
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  %114 = bitcast %struct._object** %_py_decref_tmp125 to i8*, !dbg !2878
  call void @llvm.lifetime.end(i64 8, i8* %114) #1, !dbg !2878
  br label %do.cond.135, !dbg !2880

do.cond.135:                                      ; preds = %if.end.134
  br label %do.end.136, !dbg !2881

do.end.136:                                       ; preds = %do.cond.135
  br label %if.end.137, !dbg !2883

if.end.137:                                       ; preds = %do.end.136, %do.body.119
  %115 = bitcast %struct._object** %_py_tmp120 to i8*, !dbg !2885
  call void @llvm.lifetime.end(i64 8, i8* %115) #1, !dbg !2885
  br label %do.cond.138, !dbg !2888

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !2889

do.end.139:                                       ; preds = %do.cond.138
  br label %error, !dbg !2891

if.end.140:                                       ; preds = %if.end.113
  %116 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2892, !tbaa !1135
  %117 = bitcast %struct._object* %116 to %struct.PyBytesObject*, !dbg !2893
  %ob_sval141 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %117, i32 0, i32 2, !dbg !2894
  %arraydecay142 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval141, i32 0, i32 0, !dbg !2895
  %118 = load i32, i32* %old_length, align 4, !dbg !2896, !tbaa !1390
  %idx.ext = zext i32 %118 to i64, !dbg !2897
  %add.ptr = getelementptr i8, i8* %arraydecay142, i64 %idx.ext, !dbg !2897
  %119 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2898, !tbaa !1135
  %zst143 = getelementptr inbounds %struct.compobject, %struct.compobject* %119, i32 0, i32 1, !dbg !2899
  %next_out144 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst143, i32 0, i32 3, !dbg !2900
  store i8* %add.ptr, i8** %next_out144, align 8, !dbg !2901, !tbaa !1490
  %120 = load i32, i32* %length, align 4, !dbg !2902, !tbaa !1390
  %121 = load i32, i32* %old_length, align 4, !dbg !2903, !tbaa !1390
  %sub = sub i32 %120, %121, !dbg !2904
  %122 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2905, !tbaa !1135
  %zst145 = getelementptr inbounds %struct.compobject, %struct.compobject* %122, i32 0, i32 1, !dbg !2906
  %avail_out146 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst145, i32 0, i32 4, !dbg !2907
  store i32 %sub, i32* %avail_out146, align 4, !dbg !2908, !tbaa !1481
  %123 = bitcast %struct._ts** %_save147 to i8*, !dbg !2909
  call void @llvm.lifetime.start(i64 8, i8* %123) #1, !dbg !2909
  call void @llvm.dbg.declare(metadata %struct._ts** %_save147, metadata !731, metadata !1120), !dbg !2910
  %call148 = call %struct._ts* @PyEval_SaveThread(), !dbg !2911
  store %struct._ts* %call148, %struct._ts** %_save147, align 8, !dbg !2912, !tbaa !1135
  %124 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2913, !tbaa !1135
  %zst149 = getelementptr inbounds %struct.compobject, %struct.compobject* %124, i32 0, i32 1, !dbg !2914
  %call150 = call i32 @inflate(%struct.z_stream_s* %zst149, i32 2), !dbg !2915
  store i32 %call150, i32* %err, align 4, !dbg !2916, !tbaa !1390
  %125 = load %struct._ts*, %struct._ts** %_save147, align 8, !dbg !2917, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %125), !dbg !2918
  %126 = bitcast %struct._ts** %_save147 to i8*, !dbg !2919
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !2919
  br label %while.cond, !dbg !2807

while.end:                                        ; preds = %if.then.106, %land.end
  %127 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2920, !tbaa !1135
  %128 = load i32, i32* %err, align 4, !dbg !2921, !tbaa !1390
  %call151 = call i32 @save_unconsumed_input(%struct.compobject* %127, i32 %128), !dbg !2922
  %cmp152 = icmp slt i32 %call151, 0, !dbg !2923
  br i1 %cmp152, label %if.then.154, label %if.end.168, !dbg !2924

if.then.154:                                      ; preds = %while.end
  br label %do.body.155, !dbg !2925

do.body.155:                                      ; preds = %if.then.154
  %129 = bitcast %struct._object** %_py_decref_tmp156 to i8*, !dbg !2926
  call void @llvm.lifetime.start(i64 8, i8* %129) #1, !dbg !2926
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp156, metadata !733, metadata !1120), !dbg !2928
  %130 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2929, !tbaa !1135
  store %struct._object* %130, %struct._object** %_py_decref_tmp156, align 8, !dbg !2928, !tbaa !1135
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !2930, !tbaa !1135
  %ob_refcnt157 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0, !dbg !2932
  %132 = load i64, i64* %ob_refcnt157, align 8, !dbg !2933, !tbaa !1154
  %dec158 = add i64 %132, -1, !dbg !2933
  store i64 %dec158, i64* %ob_refcnt157, align 8, !dbg !2933, !tbaa !1154
  %cmp159 = icmp ne i64 %dec158, 0, !dbg !2934
  br i1 %cmp159, label %if.then.161, label %if.else.162, !dbg !2935

if.then.161:                                      ; preds = %do.body.155
  br label %if.end.165, !dbg !2936

if.else.162:                                      ; preds = %do.body.155
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !2938, !tbaa !1135
  %ob_type163 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1, !dbg !2940
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type163, align 8, !dbg !2940, !tbaa !1260
  %tp_dealloc164 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4, !dbg !2941
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc164, align 8, !dbg !2941, !tbaa !1262
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp156, align 8, !dbg !2942, !tbaa !1135
  call void %135(%struct._object* %136), !dbg !2943
  br label %if.end.165

if.end.165:                                       ; preds = %if.else.162, %if.then.161
  %137 = bitcast %struct._object** %_py_decref_tmp156 to i8*, !dbg !2944
  call void @llvm.lifetime.end(i64 8, i8* %137) #1, !dbg !2944
  br label %do.cond.166, !dbg !2946

do.cond.166:                                      ; preds = %if.end.165
  br label %do.end.167, !dbg !2947

do.end.167:                                       ; preds = %do.cond.166
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2949, !tbaa !1135
  br label %error, !dbg !2950

if.end.168:                                       ; preds = %while.end
  %138 = load i32, i32* %err, align 4, !dbg !2951, !tbaa !1390
  %cmp169 = icmp eq i32 %138, 1, !dbg !2952
  br i1 %cmp169, label %if.then.171, label %if.else.172, !dbg !2953

if.then.171:                                      ; preds = %if.end.168
  %139 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2954, !tbaa !1135
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %139, i32 0, i32 4, !dbg !2956
  store i8 1, i8* %eof, align 1, !dbg !2957, !tbaa !2277
  br label %if.end.194, !dbg !2958

if.else.172:                                      ; preds = %if.end.168
  %140 = load i32, i32* %err, align 4, !dbg !2959, !tbaa !1390
  %cmp173 = icmp ne i32 %140, 0, !dbg !2960
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.193, !dbg !2961

land.lhs.true.175:                                ; preds = %if.else.172
  %141 = load i32, i32* %err, align 4, !dbg !2962, !tbaa !1390
  %cmp176 = icmp ne i32 %141, -5, !dbg !2964
  br i1 %cmp176, label %if.then.178, label %if.end.193, !dbg !2965

if.then.178:                                      ; preds = %land.lhs.true.175
  %142 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2966, !tbaa !1135
  %zst179 = getelementptr inbounds %struct.compobject, %struct.compobject* %142, i32 0, i32 1, !dbg !2967
  %143 = load i32, i32* %err, align 4, !dbg !2968, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst179, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !2969
  br label %do.body.180, !dbg !2970

do.body.180:                                      ; preds = %if.then.178
  %144 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !2971
  call void @llvm.lifetime.start(i64 8, i8* %144) #1, !dbg !2971
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp181, metadata !737, metadata !1120), !dbg !2973
  %145 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !2974, !tbaa !1135
  store %struct._object* %145, %struct._object** %_py_decref_tmp181, align 8, !dbg !2973, !tbaa !1135
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !2975, !tbaa !1135
  %ob_refcnt182 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0, !dbg !2977
  %147 = load i64, i64* %ob_refcnt182, align 8, !dbg !2978, !tbaa !1154
  %dec183 = add i64 %147, -1, !dbg !2978
  store i64 %dec183, i64* %ob_refcnt182, align 8, !dbg !2978, !tbaa !1154
  %cmp184 = icmp ne i64 %dec183, 0, !dbg !2979
  br i1 %cmp184, label %if.then.186, label %if.else.187, !dbg !2980

if.then.186:                                      ; preds = %do.body.180
  br label %if.end.190, !dbg !2981

if.else.187:                                      ; preds = %do.body.180
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !2983, !tbaa !1135
  %ob_type188 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1, !dbg !2985
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type188, align 8, !dbg !2985, !tbaa !1260
  %tp_dealloc189 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4, !dbg !2986
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc189, align 8, !dbg !2986, !tbaa !1262
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp181, align 8, !dbg !2987, !tbaa !1135
  call void %150(%struct._object* %151), !dbg !2988
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.187, %if.then.186
  %152 = bitcast %struct._object** %_py_decref_tmp181 to i8*, !dbg !2989
  call void @llvm.lifetime.end(i64 8, i8* %152) #1, !dbg !2989
  br label %do.cond.191, !dbg !2991

do.cond.191:                                      ; preds = %if.end.190
  br label %do.end.192, !dbg !2992

do.end.192:                                       ; preds = %do.cond.191
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !2994, !tbaa !1135
  br label %error, !dbg !2995

if.end.193:                                       ; preds = %land.lhs.true.175, %if.else.172
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.171
  %153 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !2996, !tbaa !1135
  %zst195 = getelementptr inbounds %struct.compobject, %struct.compobject* %153, i32 0, i32 1, !dbg !2997
  %total_out196 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst195, i32 0, i32 5, !dbg !2998
  %154 = load i64, i64* %total_out196, align 8, !dbg !2998, !tbaa !1461
  %155 = load i64, i64* %start_total_out, align 8, !dbg !2999, !tbaa !1463
  %sub197 = sub i64 %154, %155, !dbg !3000
  %call198 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub197), !dbg !3001
  %cmp199 = icmp slt i32 %call198, 0, !dbg !3002
  br i1 %cmp199, label %if.then.201, label %if.end.223, !dbg !3003

if.then.201:                                      ; preds = %if.end.194
  br label %do.body.202, !dbg !3004

do.body.202:                                      ; preds = %if.then.201
  %156 = bitcast %struct._object** %_py_tmp203 to i8*, !dbg !3005
  call void @llvm.lifetime.start(i64 8, i8* %156) #1, !dbg !3005
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp203, metadata !742, metadata !1120), !dbg !3007
  %157 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !3008, !tbaa !1135
  store %struct._object* %157, %struct._object** %_py_tmp203, align 8, !dbg !3007, !tbaa !1135
  %158 = load %struct._object*, %struct._object** %_py_tmp203, align 8, !dbg !3009, !tbaa !1135
  %cmp204 = icmp ne %struct._object* %158, null, !dbg !3010
  br i1 %cmp204, label %if.then.206, label %if.end.220, !dbg !3011

if.then.206:                                      ; preds = %do.body.202
  store %struct._object* null, %struct._object** %RetVal, align 8, !dbg !3012, !tbaa !1135
  br label %do.body.207, !dbg !3014

do.body.207:                                      ; preds = %if.then.206
  %159 = bitcast %struct._object** %_py_decref_tmp208 to i8*, !dbg !3015
  call void @llvm.lifetime.start(i64 8, i8* %159) #1, !dbg !3015
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp208, metadata !746, metadata !1120), !dbg !3017
  %160 = load %struct._object*, %struct._object** %_py_tmp203, align 8, !dbg !3018, !tbaa !1135
  store %struct._object* %160, %struct._object** %_py_decref_tmp208, align 8, !dbg !3017, !tbaa !1135
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8, !dbg !3019, !tbaa !1135
  %ob_refcnt209 = getelementptr inbounds %struct._object, %struct._object* %161, i32 0, i32 0, !dbg !3021
  %162 = load i64, i64* %ob_refcnt209, align 8, !dbg !3022, !tbaa !1154
  %dec210 = add i64 %162, -1, !dbg !3022
  store i64 %dec210, i64* %ob_refcnt209, align 8, !dbg !3022, !tbaa !1154
  %cmp211 = icmp ne i64 %dec210, 0, !dbg !3023
  br i1 %cmp211, label %if.then.213, label %if.else.214, !dbg !3024

if.then.213:                                      ; preds = %do.body.207
  br label %if.end.217, !dbg !3025

if.else.214:                                      ; preds = %do.body.207
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8, !dbg !3027, !tbaa !1135
  %ob_type215 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 1, !dbg !3029
  %164 = load %struct._typeobject*, %struct._typeobject** %ob_type215, align 8, !dbg !3029, !tbaa !1260
  %tp_dealloc216 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %164, i32 0, i32 4, !dbg !3030
  %165 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc216, align 8, !dbg !3030, !tbaa !1262
  %166 = load %struct._object*, %struct._object** %_py_decref_tmp208, align 8, !dbg !3031, !tbaa !1135
  call void %165(%struct._object* %166), !dbg !3032
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.214, %if.then.213
  %167 = bitcast %struct._object** %_py_decref_tmp208 to i8*, !dbg !3033
  call void @llvm.lifetime.end(i64 8, i8* %167) #1, !dbg !3033
  br label %do.cond.218, !dbg !3035

do.cond.218:                                      ; preds = %if.end.217
  br label %do.end.219, !dbg !3036

do.end.219:                                       ; preds = %do.cond.218
  br label %if.end.220, !dbg !3038

if.end.220:                                       ; preds = %do.end.219, %do.body.202
  %168 = bitcast %struct._object** %_py_tmp203 to i8*, !dbg !3040
  call void @llvm.lifetime.end(i64 8, i8* %168) #1, !dbg !3040
  br label %do.cond.221, !dbg !3043

do.cond.221:                                      ; preds = %if.end.220
  br label %do.end.222, !dbg !3044

do.end.222:                                       ; preds = %do.cond.221
  br label %if.end.223, !dbg !3046

if.end.223:                                       ; preds = %do.end.222, %if.end.194
  br label %error, !dbg !3047

error:                                            ; preds = %LeafBlock.1, %if.end.223, %do.end.192, %do.end.167, %do.end.139
  %169 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3049, !tbaa !1135
  %lock224 = getelementptr inbounds %struct.compobject, %struct.compobject* %169, i32 0, i32 7, !dbg !3050
  %170 = load i8*, i8** %lock224, align 8, !dbg !3050, !tbaa !1231
  call void @PyThread_release_lock(i8* %170), !dbg !3051
  %171 = load %struct._object*, %struct._object** %RetVal, align 8, !dbg !3052, !tbaa !1135
  store %struct._object* %171, %struct._object** %retval, !dbg !3053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.225, !dbg !3053

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %cleanup.225

cleanup.225:                                      ; preds = %NewDefault, %error, %if.then.5, %if.then
  %172 = bitcast i64* %start_total_out to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 8, i8* %172) #1, !dbg !3054
  %173 = bitcast %struct._object** %RetVal to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 8, i8* %173) #1, !dbg !3054
  %174 = bitcast i32* %length to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 4, i8* %174) #1, !dbg !3054
  %175 = bitcast i32* %old_length to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 4, i8* %175) #1, !dbg !3054
  %176 = bitcast i32* %err to i8*, !dbg !3054
  call void @llvm.lifetime.end(i64 4, i8* %176) #1, !dbg !3054
  %177 = load %struct._object*, %struct._object** %retval, !dbg !3054
  ret %struct._object* %177, !dbg !3054
}

declare i64 @PyLong_AsLong(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #3

declare i32 @inflate(%struct.z_stream_s*, i32) #3

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #3

declare i32 @inflateSetDictionary(%struct.z_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal i32 @save_unconsumed_input(%struct.compobject* %self, i32 %err) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.compobject*, align 8
  %err.addr = alloca i32, align 4
  %old_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %new_data = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %new_data43 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !754, metadata !1120), !dbg !3055
  store i32 %err, i32* %err.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %err.addr, metadata !755, metadata !1120), !dbg !3056
  %0 = load i32, i32* %err.addr, align 4, !dbg !3057, !tbaa !1390
  %cmp = icmp eq i32 %0, 1, !dbg !3058
  br i1 %cmp, label %if.then, label %if.end.36, !dbg !3059

if.then:                                          ; preds = %entry
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3060, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %1, i32 0, i32 1, !dbg !3061
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1, !dbg !3062
  %2 = load i32, i32* %avail_in, align 4, !dbg !3062, !tbaa !1469
  %cmp1 = icmp ugt i32 %2, 0, !dbg !3063
  br i1 %cmp1, label %if.then.2, label %if.end.35, !dbg !3064

if.then.2:                                        ; preds = %if.then
  %3 = bitcast i64* %old_size to i8*, !dbg !3065
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3065
  call void @llvm.dbg.declare(metadata i64* %old_size, metadata !756, metadata !1120), !dbg !3066
  %4 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3067, !tbaa !1135
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 2, !dbg !3068
  %5 = load %struct._object*, %struct._object** %unused_data, align 8, !dbg !3068, !tbaa !1239
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*, !dbg !3069
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1, !dbg !3070
  %7 = load i64, i64* %ob_size, align 8, !dbg !3070, !tbaa !3071
  store i64 %7, i64* %old_size, align 8, !dbg !3066, !tbaa !1463
  %8 = bitcast i64* %new_size to i8*, !dbg !3072
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3072
  call void @llvm.dbg.declare(metadata i64* %new_size, metadata !761, metadata !1120), !dbg !3073
  %9 = bitcast %struct._object** %new_data to i8*, !dbg !3074
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !3074
  call void @llvm.dbg.declare(metadata %struct._object** %new_data, metadata !762, metadata !1120), !dbg !3075
  %10 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3076, !tbaa !1135
  %zst3 = getelementptr inbounds %struct.compobject, %struct.compobject* %10, i32 0, i32 1, !dbg !3078
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst3, i32 0, i32 1, !dbg !3079
  %11 = load i32, i32* %avail_in4, align 4, !dbg !3079, !tbaa !1469
  %conv = zext i32 %11 to i64, !dbg !3080
  %12 = load i64, i64* %old_size, align 8, !dbg !3081, !tbaa !1463
  %sub = sub i64 4294967295, %12, !dbg !3082
  %cmp5 = icmp ugt i64 %conv, %sub, !dbg !3083
  br i1 %cmp5, label %if.then.7, label %if.end, !dbg !3084

if.then.7:                                        ; preds = %if.then.2
  %call = call %struct._object* @PyErr_NoMemory(), !dbg !3085
  store i32 -1, i32* %retval, !dbg !3087
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3087

if.end:                                           ; preds = %if.then.2
  %13 = load i64, i64* %old_size, align 8, !dbg !3088, !tbaa !1463
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3089, !tbaa !1135
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 1, !dbg !3090
  %avail_in9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 1, !dbg !3091
  %15 = load i32, i32* %avail_in9, align 4, !dbg !3091, !tbaa !1469
  %conv10 = zext i32 %15 to i64, !dbg !3089
  %add = add i64 %13, %conv10, !dbg !3092
  store i64 %add, i64* %new_size, align 8, !dbg !3093, !tbaa !1463
  %16 = load i64, i64* %new_size, align 8, !dbg !3094, !tbaa !1463
  %call11 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %16), !dbg !3095
  store %struct._object* %call11, %struct._object** %new_data, align 8, !dbg !3096, !tbaa !1135
  %17 = load %struct._object*, %struct._object** %new_data, align 8, !dbg !3097, !tbaa !1135
  %cmp12 = icmp eq %struct._object* %17, null, !dbg !3099
  br i1 %cmp12, label %if.then.14, label %if.end.15, !dbg !3100

if.then.14:                                       ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !3101
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3101

if.end.15:                                        ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %new_data, align 8, !dbg !3102, !tbaa !1135
  %19 = bitcast %struct._object* %18 to %struct.PyBytesObject*, !dbg !3103
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2, !dbg !3104
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3105
  %20 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3106, !tbaa !1135
  %unused_data16 = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 2, !dbg !3107
  %21 = load %struct._object*, %struct._object** %unused_data16, align 8, !dbg !3107, !tbaa !1239
  %22 = bitcast %struct._object* %21 to %struct.PyBytesObject*, !dbg !3108
  %ob_sval17 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2, !dbg !3109
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval17, i32 0, i32 0, !dbg !3110
  %23 = load i64, i64* %old_size, align 8, !dbg !3111, !tbaa !1463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %arraydecay18, i64 %23, i32 1, i1 false), !dbg !3112
  %24 = load %struct._object*, %struct._object** %new_data, align 8, !dbg !3113, !tbaa !1135
  %25 = bitcast %struct._object* %24 to %struct.PyBytesObject*, !dbg !3114
  %ob_sval19 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %25, i32 0, i32 2, !dbg !3115
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval19, i32 0, i32 0, !dbg !3116
  %26 = load i64, i64* %old_size, align 8, !dbg !3117, !tbaa !1463
  %add.ptr = getelementptr i8, i8* %arraydecay20, i64 %26, !dbg !3118
  %27 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3119, !tbaa !1135
  %zst21 = getelementptr inbounds %struct.compobject, %struct.compobject* %27, i32 0, i32 1, !dbg !3120
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst21, i32 0, i32 0, !dbg !3121
  %28 = load i8*, i8** %next_in, align 8, !dbg !3121, !tbaa !1475
  %29 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3122, !tbaa !1135
  %zst22 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 1, !dbg !3123
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst22, i32 0, i32 1, !dbg !3124
  %30 = load i32, i32* %avail_in23, align 4, !dbg !3124, !tbaa !1469
  %conv24 = zext i32 %30 to i64, !dbg !3122
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %28, i64 %conv24, i32 1, i1 false), !dbg !3125
  br label %do.body, !dbg !3126

do.body:                                          ; preds = %if.end.15
  %31 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3127
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !3127
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !763, metadata !1120), !dbg !3129
  %32 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3130, !tbaa !1135
  %unused_data25 = getelementptr inbounds %struct.compobject, %struct.compobject* %32, i32 0, i32 2, !dbg !3131
  %33 = load %struct._object*, %struct._object** %unused_data25, align 8, !dbg !3131, !tbaa !1239
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8, !dbg !3129, !tbaa !1135
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3132, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !3134
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !3135, !tbaa !1154
  %dec = add i64 %35, -1, !dbg !3135
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3135, !tbaa !1154
  %cmp26 = icmp ne i64 %dec, 0, !dbg !3136
  br i1 %cmp26, label %if.then.28, label %if.else, !dbg !3137

if.then.28:                                       ; preds = %do.body
  br label %if.end.29, !dbg !3138

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3140, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !3142
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3142, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !3143
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3143, !tbaa !1262
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3144, !tbaa !1135
  call void %38(%struct._object* %39), !dbg !3145
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3146
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3146
  br label %do.cond, !dbg !3148

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !3149

do.end:                                           ; preds = %do.cond
  %41 = load %struct._object*, %struct._object** %new_data, align 8, !dbg !3151, !tbaa !1135
  %42 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3152, !tbaa !1135
  %unused_data30 = getelementptr inbounds %struct.compobject, %struct.compobject* %42, i32 0, i32 2, !dbg !3153
  store %struct._object* %41, %struct._object** %unused_data30, align 8, !dbg !3154, !tbaa !1239
  %43 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3155, !tbaa !1135
  %zst31 = getelementptr inbounds %struct.compobject, %struct.compobject* %43, i32 0, i32 1, !dbg !3156
  %avail_in32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst31, i32 0, i32 1, !dbg !3157
  store i32 0, i32* %avail_in32, align 4, !dbg !3158, !tbaa !1469
  store i32 0, i32* %cleanup.dest.slot, !dbg !3159
  br label %cleanup, !dbg !3159

cleanup:                                          ; preds = %do.end, %if.then.14, %if.then.7
  %44 = bitcast %struct._object** %new_data to i8*, !dbg !3160
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3160
  %45 = bitcast i64* %new_size to i8*, !dbg !3160
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3160
  %46 = bitcast i64* %old_size to i8*, !dbg !3160
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3160
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.35, !dbg !3162

if.end.35:                                        ; preds = %cleanup.cont, %if.then
  br label %if.end.36, !dbg !3163

if.end.36:                                        ; preds = %if.end.35, %entry
  %47 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3164, !tbaa !1135
  %zst37 = getelementptr inbounds %struct.compobject, %struct.compobject* %47, i32 0, i32 1, !dbg !3165
  %avail_in38 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst37, i32 0, i32 1, !dbg !3166
  %48 = load i32, i32* %avail_in38, align 4, !dbg !3166, !tbaa !1469
  %cmp39 = icmp ugt i32 %48, 0, !dbg !3167
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false, !dbg !3168

lor.lhs.false:                                    ; preds = %if.end.36
  %49 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3169, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %49, i32 0, i32 3, !dbg !3171
  %50 = load %struct._object*, %struct._object** %unconsumed_tail, align 8, !dbg !3171, !tbaa !1284
  %51 = bitcast %struct._object* %50 to %struct.PyVarObject*, !dbg !3172
  %ob_size41 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1, !dbg !3173
  %52 = load i64, i64* %ob_size41, align 8, !dbg !3173, !tbaa !3071
  %tobool = icmp ne i64 %52, 0, !dbg !3174
  br i1 %tobool, label %if.then.42, label %if.end.72, !dbg !3175

if.then.42:                                       ; preds = %lor.lhs.false, %if.end.36
  %53 = bitcast %struct._object** %new_data43 to i8*, !dbg !3176
  call void @llvm.lifetime.start(i64 8, i8* %53) #1, !dbg !3176
  call void @llvm.dbg.declare(metadata %struct._object** %new_data43, metadata !765, metadata !1120), !dbg !3177
  %54 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3178, !tbaa !1135
  %zst44 = getelementptr inbounds %struct.compobject, %struct.compobject* %54, i32 0, i32 1, !dbg !3179
  %next_in45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst44, i32 0, i32 0, !dbg !3180
  %55 = load i8*, i8** %next_in45, align 8, !dbg !3180, !tbaa !1475
  %56 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3181, !tbaa !1135
  %zst46 = getelementptr inbounds %struct.compobject, %struct.compobject* %56, i32 0, i32 1, !dbg !3182
  %avail_in47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst46, i32 0, i32 1, !dbg !3183
  %57 = load i32, i32* %avail_in47, align 4, !dbg !3183, !tbaa !1469
  %conv48 = zext i32 %57 to i64, !dbg !3181
  %call49 = call %struct._object* @PyBytes_FromStringAndSize(i8* %55, i64 %conv48), !dbg !3184
  store %struct._object* %call49, %struct._object** %new_data43, align 8, !dbg !3177, !tbaa !1135
  %58 = load %struct._object*, %struct._object** %new_data43, align 8, !dbg !3185, !tbaa !1135
  %cmp50 = icmp eq %struct._object* %58, null, !dbg !3187
  br i1 %cmp50, label %if.then.52, label %if.end.53, !dbg !3188

if.then.52:                                       ; preds = %if.then.42
  store i32 -1, i32* %retval, !dbg !3189
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.69, !dbg !3189

if.end.53:                                        ; preds = %if.then.42
  br label %do.body.54, !dbg !3190

do.body.54:                                       ; preds = %if.end.53
  %59 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !3191
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !3191
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !768, metadata !1120), !dbg !3193
  %60 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3194, !tbaa !1135
  %unconsumed_tail56 = getelementptr inbounds %struct.compobject, %struct.compobject* %60, i32 0, i32 3, !dbg !3195
  %61 = load %struct._object*, %struct._object** %unconsumed_tail56, align 8, !dbg !3195, !tbaa !1284
  store %struct._object* %61, %struct._object** %_py_decref_tmp55, align 8, !dbg !3193, !tbaa !1135
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3196, !tbaa !1135
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !3198
  %63 = load i64, i64* %ob_refcnt57, align 8, !dbg !3199, !tbaa !1154
  %dec58 = add i64 %63, -1, !dbg !3199
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !3199, !tbaa !1154
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !3200
  br i1 %cmp59, label %if.then.61, label %if.else.62, !dbg !3201

if.then.61:                                       ; preds = %do.body.54
  br label %if.end.65, !dbg !3202

if.else.62:                                       ; preds = %do.body.54
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3204, !tbaa !1135
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !3206
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8, !dbg !3206, !tbaa !1260
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !3207
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8, !dbg !3207, !tbaa !1262
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3208, !tbaa !1135
  call void %66(%struct._object* %67), !dbg !3209
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  %68 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !3210
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !3210
  br label %do.cond.66, !dbg !3212

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !3213

do.end.67:                                        ; preds = %do.cond.66
  %69 = load %struct._object*, %struct._object** %new_data43, align 8, !dbg !3215, !tbaa !1135
  %70 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3216, !tbaa !1135
  %unconsumed_tail68 = getelementptr inbounds %struct.compobject, %struct.compobject* %70, i32 0, i32 3, !dbg !3217
  store %struct._object* %69, %struct._object** %unconsumed_tail68, align 8, !dbg !3218, !tbaa !1284
  store i32 0, i32* %cleanup.dest.slot, !dbg !3219
  br label %cleanup.69, !dbg !3219

cleanup.69:                                       ; preds = %do.end.67, %if.then.52
  %71 = bitcast %struct._object** %new_data43 to i8*, !dbg !3220
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !3220
  %cleanup.dest.70 = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock.2

LeafBlock.2:                                      ; preds = %cleanup.69
  %SwitchLeaf3 = icmp eq i32 %cleanup.dest.70, 1
  br i1 %SwitchLeaf3, label %return, label %NewDefault.1

NewDefault.1:                                     ; preds = %LeafBlock.2
  br label %cleanup.cont.71

cleanup.cont.71:                                  ; preds = %NewDefault.1
  br label %if.end.72, !dbg !3221

if.end.72:                                        ; preds = %cleanup.cont.71, %lor.lhs.false
  store i32 0, i32* %retval, !dbg !3222
  br label %return, !dbg !3222

return:                                           ; preds = %LeafBlock.2, %LeafBlock, %if.end.72
  %72 = load i32, i32* %retval, !dbg !3223
  ret i32 %72, !dbg !3223
}

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_flush_impl(%struct.compobject* %self, i32 %length) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %length.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %new_length = alloca i32, align 4
  %retval1 = alloca %struct._object*, align 8
  %start_total_out = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_save14 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save54 = alloca %struct._ts*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp86 = alloca %struct._object*, align 8
  %_py_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp112 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !780, metadata !1120), !dbg !3224
  store i32 %length, i32* %length.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !781, metadata !1120), !dbg !3225
  %0 = bitcast i32* %err to i8*, !dbg !3226
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3226
  call void @llvm.dbg.declare(metadata i32* %err, metadata !782, metadata !1120), !dbg !3227
  %1 = bitcast i32* %new_length to i8*, !dbg !3228
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3228
  call void @llvm.dbg.declare(metadata i32* %new_length, metadata !783, metadata !1120), !dbg !3229
  %2 = bitcast %struct._object** %retval1 to i8*, !dbg !3230
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3230
  call void @llvm.dbg.declare(metadata %struct._object** %retval1, metadata !784, metadata !1120), !dbg !3231
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !3231, !tbaa !1135
  %3 = bitcast i64* %start_total_out to i8*, !dbg !3232
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3232
  call void @llvm.dbg.declare(metadata i64* %start_total_out, metadata !785, metadata !1120), !dbg !3233
  %4 = bitcast i64* %size to i8*, !dbg !3234
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3234
  call void @llvm.dbg.declare(metadata i64* %size, metadata !786, metadata !1120), !dbg !3235
  %5 = load i32, i32* %length.addr, align 4, !dbg !3236, !tbaa !1390
  %cmp = icmp eq i32 %5, 0, !dbg !3238
  br i1 %cmp, label %if.then, label %if.end, !dbg !3239

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3240, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0)), !dbg !3242
  store %struct._object* null, %struct._object** %retval, !dbg !3243
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3243

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %length.addr, align 4, !dbg !3244, !tbaa !1390
  %conv = zext i32 %7 to i64, !dbg !3244
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv), !dbg !3246
  store %struct._object* %call, %struct._object** %retval1, align 8, !dbg !3247, !tbaa !1135
  %tobool = icmp ne %struct._object* %call, null, !dbg !3247
  br i1 %tobool, label %if.end.3, label %if.then.2, !dbg !3248

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3249
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3249

if.end.3:                                         ; preds = %if.end
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !3250
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3250
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !787, metadata !1120), !dbg !3251
  %call4 = call %struct._ts* @PyEval_SaveThread(), !dbg !3252
  store %struct._ts* %call4, %struct._ts** %_save, align 8, !dbg !3253, !tbaa !1135
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3254, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 7, !dbg !3255
  %10 = load i8*, i8** %lock, align 8, !dbg !3255, !tbaa !1231
  %call5 = call i32 @PyThread_acquire_lock(i8* %10, i32 1), !dbg !3256
  %11 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3257, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %11), !dbg !3258
  %12 = bitcast %struct._ts** %_save to i8*, !dbg !3259
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !3259
  %13 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3260, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 3, !dbg !3261
  %14 = load %struct._object*, %struct._object** %unconsumed_tail, align 8, !dbg !3261, !tbaa !1284
  %15 = bitcast %struct._object* %14 to %struct.PyVarObject*, !dbg !3262
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %15, i32 0, i32 1, !dbg !3263
  %16 = load i64, i64* %ob_size, align 8, !dbg !3263, !tbaa !3071
  store i64 %16, i64* %size, align 8, !dbg !3264, !tbaa !1463
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3265, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 1, !dbg !3266
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !3267
  %18 = load i64, i64* %total_out, align 8, !dbg !3267, !tbaa !1461
  store i64 %18, i64* %start_total_out, align 8, !dbg !3268, !tbaa !1463
  %19 = load i64, i64* %size, align 8, !dbg !3269, !tbaa !1463
  %conv6 = trunc i64 %19 to i32, !dbg !3270
  %20 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3271, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 1, !dbg !3272
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 1, !dbg !3273
  store i32 %conv6, i32* %avail_in, align 4, !dbg !3274, !tbaa !1469
  %21 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3275, !tbaa !1135
  %unconsumed_tail8 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 3, !dbg !3276
  %22 = load %struct._object*, %struct._object** %unconsumed_tail8, align 8, !dbg !3276, !tbaa !1284
  %23 = bitcast %struct._object* %22 to %struct.PyBytesObject*, !dbg !3277
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %23, i32 0, i32 2, !dbg !3278
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !3279
  %24 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3280, !tbaa !1135
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %24, i32 0, i32 1, !dbg !3281
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 0, !dbg !3282
  store i8* %arraydecay, i8** %next_in, align 8, !dbg !3283, !tbaa !1475
  %25 = load i32, i32* %length.addr, align 4, !dbg !3284, !tbaa !1390
  %26 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3285, !tbaa !1135
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %26, i32 0, i32 1, !dbg !3286
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 4, !dbg !3287
  store i32 %25, i32* %avail_out, align 4, !dbg !3288, !tbaa !1481
  %27 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3289, !tbaa !1135
  %28 = bitcast %struct._object* %27 to %struct.PyBytesObject*, !dbg !3290
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %28, i32 0, i32 2, !dbg !3291
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0, !dbg !3292
  %29 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3293, !tbaa !1135
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 1, !dbg !3294
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst13, i32 0, i32 3, !dbg !3295
  store i8* %arraydecay12, i8** %next_out, align 8, !dbg !3296, !tbaa !1490
  %30 = bitcast %struct._ts** %_save14 to i8*, !dbg !3297
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !3297
  call void @llvm.dbg.declare(metadata %struct._ts** %_save14, metadata !789, metadata !1120), !dbg !3298
  %call15 = call %struct._ts* @PyEval_SaveThread(), !dbg !3299
  store %struct._ts* %call15, %struct._ts** %_save14, align 8, !dbg !3300, !tbaa !1135
  %31 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3301, !tbaa !1135
  %zst16 = getelementptr inbounds %struct.compobject, %struct.compobject* %31, i32 0, i32 1, !dbg !3302
  %call17 = call i32 @inflate(%struct.z_stream_s* %zst16, i32 4), !dbg !3303
  store i32 %call17, i32* %err, align 4, !dbg !3304, !tbaa !1390
  %32 = load %struct._ts*, %struct._ts** %_save14, align 8, !dbg !3305, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %32), !dbg !3306
  %33 = bitcast %struct._ts** %_save14 to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3307
  br label %while.cond, !dbg !3308

while.cond:                                       ; preds = %if.end.47, %if.end.3
  %34 = load i32, i32* %err, align 4, !dbg !3309, !tbaa !1390
  %cmp18 = icmp eq i32 %34, 0, !dbg !3312
  br i1 %cmp18, label %land.rhs, label %lor.lhs.false, !dbg !3313

lor.lhs.false:                                    ; preds = %while.cond
  %35 = load i32, i32* %err, align 4, !dbg !3314, !tbaa !1390
  %cmp20 = icmp eq i32 %35, -5, !dbg !3316
  br i1 %cmp20, label %land.rhs, label %land.end, !dbg !3317

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %36 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3318, !tbaa !1135
  %zst22 = getelementptr inbounds %struct.compobject, %struct.compobject* %36, i32 0, i32 1, !dbg !3321
  %avail_out23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst22, i32 0, i32 4, !dbg !3322
  %37 = load i32, i32* %avail_out23, align 4, !dbg !3322, !tbaa !1481
  %cmp24 = icmp eq i32 %37, 0, !dbg !3323
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %38 = phi i1 [ false, %lor.lhs.false ], [ %cmp24, %land.rhs ]
  br i1 %38, label %while.body, label %while.end, !dbg !3324

while.body:                                       ; preds = %land.end
  %39 = load i32, i32* %length.addr, align 4, !dbg !3326, !tbaa !1390
  %cmp26 = icmp ule i32 %39, 2147483647, !dbg !3328
  br i1 %cmp26, label %if.then.28, label %if.else, !dbg !3329

if.then.28:                                       ; preds = %while.body
  %40 = load i32, i32* %length.addr, align 4, !dbg !3330, !tbaa !1390
  %shl = shl i32 %40, 1, !dbg !3331
  store i32 %shl, i32* %new_length, align 4, !dbg !3332, !tbaa !1390
  br label %if.end.29, !dbg !3333

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4, !dbg !3334, !tbaa !1390
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %41 = load i32, i32* %new_length, align 4, !dbg !3335, !tbaa !1390
  %conv30 = zext i32 %41 to i64, !dbg !3335
  %call31 = call i32 @_PyBytes_Resize(%struct._object** %retval1, i64 %conv30), !dbg !3336
  %cmp32 = icmp slt i32 %call31, 0, !dbg !3337
  br i1 %cmp32, label %if.then.34, label %if.end.47, !dbg !3338

if.then.34:                                       ; preds = %if.end.29
  br label %do.body, !dbg !3339

do.body:                                          ; preds = %if.then.34
  %42 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3340
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !3340
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !791, metadata !1120), !dbg !3342
  %43 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3343, !tbaa !1135
  store %struct._object* %43, %struct._object** %_py_tmp, align 8, !dbg !3342, !tbaa !1135
  %44 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3344, !tbaa !1135
  %cmp35 = icmp ne %struct._object* %44, null, !dbg !3345
  br i1 %cmp35, label %if.then.37, label %if.end.44, !dbg !3346

if.then.37:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !3347, !tbaa !1135
  br label %do.body.38, !dbg !3349

do.body.38:                                       ; preds = %if.then.37
  %45 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3350
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !3350
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !796, metadata !1120), !dbg !3352
  %46 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3353, !tbaa !1135
  store %struct._object* %46, %struct._object** %_py_decref_tmp, align 8, !dbg !3352, !tbaa !1135
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3354, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0, !dbg !3356
  %48 = load i64, i64* %ob_refcnt, align 8, !dbg !3357, !tbaa !1154
  %dec = add i64 %48, -1, !dbg !3357
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3357, !tbaa !1154
  %cmp39 = icmp ne i64 %dec, 0, !dbg !3358
  br i1 %cmp39, label %if.then.41, label %if.else.42, !dbg !3359

if.then.41:                                       ; preds = %do.body.38
  br label %if.end.43, !dbg !3360

if.else.42:                                       ; preds = %do.body.38
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3362, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1, !dbg !3364
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3364, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4, !dbg !3365
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3365, !tbaa !1262
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3366, !tbaa !1135
  call void %51(%struct._object* %52), !dbg !3367
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  %53 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3368
  call void @llvm.lifetime.end(i64 8, i8* %53) #1, !dbg !3368
  br label %do.cond, !dbg !3370

do.cond:                                          ; preds = %if.end.43
  br label %do.end, !dbg !3371

do.end:                                           ; preds = %do.cond
  br label %if.end.44, !dbg !3373

if.end.44:                                        ; preds = %do.end, %do.body
  %54 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3375
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !3375
  br label %do.cond.45, !dbg !3378

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !3379

do.end.46:                                        ; preds = %do.cond.45
  br label %error, !dbg !3381

if.end.47:                                        ; preds = %if.end.29
  %55 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3382, !tbaa !1135
  %56 = bitcast %struct._object* %55 to %struct.PyBytesObject*, !dbg !3383
  %ob_sval48 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %56, i32 0, i32 2, !dbg !3384
  %arraydecay49 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval48, i32 0, i32 0, !dbg !3385
  %57 = load i32, i32* %length.addr, align 4, !dbg !3386, !tbaa !1390
  %idx.ext = zext i32 %57 to i64, !dbg !3387
  %add.ptr = getelementptr i8, i8* %arraydecay49, i64 %idx.ext, !dbg !3387
  %58 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3388, !tbaa !1135
  %zst50 = getelementptr inbounds %struct.compobject, %struct.compobject* %58, i32 0, i32 1, !dbg !3389
  %next_out51 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst50, i32 0, i32 3, !dbg !3390
  store i8* %add.ptr, i8** %next_out51, align 8, !dbg !3391, !tbaa !1490
  %59 = load i32, i32* %length.addr, align 4, !dbg !3392, !tbaa !1390
  %60 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3393, !tbaa !1135
  %zst52 = getelementptr inbounds %struct.compobject, %struct.compobject* %60, i32 0, i32 1, !dbg !3394
  %avail_out53 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst52, i32 0, i32 4, !dbg !3395
  store i32 %59, i32* %avail_out53, align 4, !dbg !3396, !tbaa !1481
  %61 = load i32, i32* %new_length, align 4, !dbg !3397, !tbaa !1390
  store i32 %61, i32* %length.addr, align 4, !dbg !3398, !tbaa !1390
  %62 = bitcast %struct._ts** %_save54 to i8*, !dbg !3399
  call void @llvm.lifetime.start(i64 8, i8* %62) #1, !dbg !3399
  call void @llvm.dbg.declare(metadata %struct._ts** %_save54, metadata !800, metadata !1120), !dbg !3400
  %call55 = call %struct._ts* @PyEval_SaveThread(), !dbg !3401
  store %struct._ts* %call55, %struct._ts** %_save54, align 8, !dbg !3402, !tbaa !1135
  %63 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3403, !tbaa !1135
  %zst56 = getelementptr inbounds %struct.compobject, %struct.compobject* %63, i32 0, i32 1, !dbg !3404
  %call57 = call i32 @inflate(%struct.z_stream_s* %zst56, i32 4), !dbg !3405
  store i32 %call57, i32* %err, align 4, !dbg !3406, !tbaa !1390
  %64 = load %struct._ts*, %struct._ts** %_save54, align 8, !dbg !3407, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %64), !dbg !3408
  %65 = bitcast %struct._ts** %_save54 to i8*, !dbg !3409
  call void @llvm.lifetime.end(i64 8, i8* %65) #1, !dbg !3409
  br label %while.cond, !dbg !3308

while.end:                                        ; preds = %land.end
  %66 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3410, !tbaa !1135
  %67 = load i32, i32* %err, align 4, !dbg !3411, !tbaa !1390
  %call58 = call i32 @save_unconsumed_input(%struct.compobject* %66, i32 %67), !dbg !3412
  %cmp59 = icmp slt i32 %call58, 0, !dbg !3413
  br i1 %cmp59, label %if.then.61, label %if.end.75, !dbg !3414

if.then.61:                                       ; preds = %while.end
  br label %do.body.62, !dbg !3415

do.body.62:                                       ; preds = %if.then.61
  %68 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !3416
  call void @llvm.lifetime.start(i64 8, i8* %68) #1, !dbg !3416
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp63, metadata !802, metadata !1120), !dbg !3418
  %69 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3419, !tbaa !1135
  store %struct._object* %69, %struct._object** %_py_decref_tmp63, align 8, !dbg !3418, !tbaa !1135
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !3420, !tbaa !1135
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !3422
  %71 = load i64, i64* %ob_refcnt64, align 8, !dbg !3423, !tbaa !1154
  %dec65 = add i64 %71, -1, !dbg !3423
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !3423, !tbaa !1154
  %cmp66 = icmp ne i64 %dec65, 0, !dbg !3424
  br i1 %cmp66, label %if.then.68, label %if.else.69, !dbg !3425

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72, !dbg !3426

if.else.69:                                       ; preds = %do.body.62
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !3428, !tbaa !1135
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !3430
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !3430, !tbaa !1260
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !3431
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !3431, !tbaa !1262
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8, !dbg !3432, !tbaa !1135
  call void %74(%struct._object* %75), !dbg !3433
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  %76 = bitcast %struct._object** %_py_decref_tmp63 to i8*, !dbg !3434
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !3434
  br label %do.cond.73, !dbg !3436

do.cond.73:                                       ; preds = %if.end.72
  br label %do.end.74, !dbg !3437

do.end.74:                                        ; preds = %do.cond.73
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !3439, !tbaa !1135
  br label %error, !dbg !3440

if.end.75:                                        ; preds = %while.end
  %77 = load i32, i32* %err, align 4, !dbg !3441, !tbaa !1390
  %cmp76 = icmp eq i32 %77, 1, !dbg !3442
  br i1 %cmp76, label %if.then.78, label %if.end.99, !dbg !3443

if.then.78:                                       ; preds = %if.end.75
  %78 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3444, !tbaa !1135
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %78, i32 0, i32 4, !dbg !3445
  store i8 1, i8* %eof, align 1, !dbg !3446, !tbaa !2277
  %79 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3447, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %79, i32 0, i32 5, !dbg !3448
  store i32 0, i32* %is_initialised, align 4, !dbg !3449, !tbaa !1217
  %80 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3450, !tbaa !1135
  %zst79 = getelementptr inbounds %struct.compobject, %struct.compobject* %80, i32 0, i32 1, !dbg !3451
  %call80 = call i32 @inflateEnd(%struct.z_stream_s* %zst79), !dbg !3452
  store i32 %call80, i32* %err, align 4, !dbg !3453, !tbaa !1390
  %81 = load i32, i32* %err, align 4, !dbg !3454, !tbaa !1390
  %cmp81 = icmp ne i32 %81, 0, !dbg !3455
  br i1 %cmp81, label %if.then.83, label %if.end.98, !dbg !3456

if.then.83:                                       ; preds = %if.then.78
  %82 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3457, !tbaa !1135
  %zst84 = getelementptr inbounds %struct.compobject, %struct.compobject* %82, i32 0, i32 1, !dbg !3458
  %83 = load i32, i32* %err, align 4, !dbg !3459, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst84, i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0)), !dbg !3460
  br label %do.body.85, !dbg !3461

do.body.85:                                       ; preds = %if.then.83
  %84 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 8, i8* %84) #1, !dbg !3462
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp86, metadata !806, metadata !1120), !dbg !3464
  %85 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3465, !tbaa !1135
  store %struct._object* %85, %struct._object** %_py_decref_tmp86, align 8, !dbg !3464, !tbaa !1135
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3466, !tbaa !1135
  %ob_refcnt87 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0, !dbg !3468
  %87 = load i64, i64* %ob_refcnt87, align 8, !dbg !3469, !tbaa !1154
  %dec88 = add i64 %87, -1, !dbg !3469
  store i64 %dec88, i64* %ob_refcnt87, align 8, !dbg !3469, !tbaa !1154
  %cmp89 = icmp ne i64 %dec88, 0, !dbg !3470
  br i1 %cmp89, label %if.then.91, label %if.else.92, !dbg !3471

if.then.91:                                       ; preds = %do.body.85
  br label %if.end.95, !dbg !3472

if.else.92:                                       ; preds = %do.body.85
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3474, !tbaa !1135
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1, !dbg !3476
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8, !dbg !3476, !tbaa !1260
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4, !dbg !3477
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8, !dbg !3477, !tbaa !1262
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp86, align 8, !dbg !3478, !tbaa !1135
  call void %90(%struct._object* %91), !dbg !3479
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  %92 = bitcast %struct._object** %_py_decref_tmp86 to i8*, !dbg !3480
  call void @llvm.lifetime.end(i64 8, i8* %92) #1, !dbg !3480
  br label %do.cond.96, !dbg !3482

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !3483

do.end.97:                                        ; preds = %do.cond.96
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !3485, !tbaa !1135
  br label %error, !dbg !3486

if.end.98:                                        ; preds = %if.then.78
  br label %if.end.99, !dbg !3487

if.end.99:                                        ; preds = %if.end.98, %if.end.75
  %93 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3488, !tbaa !1135
  %zst100 = getelementptr inbounds %struct.compobject, %struct.compobject* %93, i32 0, i32 1, !dbg !3489
  %total_out101 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst100, i32 0, i32 5, !dbg !3490
  %94 = load i64, i64* %total_out101, align 8, !dbg !3490, !tbaa !1461
  %95 = load i64, i64* %start_total_out, align 8, !dbg !3491, !tbaa !1463
  %sub = sub i64 %94, %95, !dbg !3492
  %call102 = call i32 @_PyBytes_Resize(%struct._object** %retval1, i64 %sub), !dbg !3493
  %cmp103 = icmp slt i32 %call102, 0, !dbg !3494
  br i1 %cmp103, label %if.then.105, label %if.end.127, !dbg !3495

if.then.105:                                      ; preds = %if.end.99
  br label %do.body.106, !dbg !3496

do.body.106:                                      ; preds = %if.then.105
  %96 = bitcast %struct._object** %_py_tmp107 to i8*, !dbg !3497
  call void @llvm.lifetime.start(i64 8, i8* %96) #1, !dbg !3497
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp107, metadata !812, metadata !1120), !dbg !3499
  %97 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3500, !tbaa !1135
  store %struct._object* %97, %struct._object** %_py_tmp107, align 8, !dbg !3499, !tbaa !1135
  %98 = load %struct._object*, %struct._object** %_py_tmp107, align 8, !dbg !3501, !tbaa !1135
  %cmp108 = icmp ne %struct._object* %98, null, !dbg !3502
  br i1 %cmp108, label %if.then.110, label %if.end.124, !dbg !3503

if.then.110:                                      ; preds = %do.body.106
  store %struct._object* null, %struct._object** %retval1, align 8, !dbg !3504, !tbaa !1135
  br label %do.body.111, !dbg !3506

do.body.111:                                      ; preds = %if.then.110
  %99 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !3507
  call void @llvm.lifetime.start(i64 8, i8* %99) #1, !dbg !3507
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp112, metadata !816, metadata !1120), !dbg !3509
  %100 = load %struct._object*, %struct._object** %_py_tmp107, align 8, !dbg !3510, !tbaa !1135
  store %struct._object* %100, %struct._object** %_py_decref_tmp112, align 8, !dbg !3509, !tbaa !1135
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !3511, !tbaa !1135
  %ob_refcnt113 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0, !dbg !3513
  %102 = load i64, i64* %ob_refcnt113, align 8, !dbg !3514, !tbaa !1154
  %dec114 = add i64 %102, -1, !dbg !3514
  store i64 %dec114, i64* %ob_refcnt113, align 8, !dbg !3514, !tbaa !1154
  %cmp115 = icmp ne i64 %dec114, 0, !dbg !3515
  br i1 %cmp115, label %if.then.117, label %if.else.118, !dbg !3516

if.then.117:                                      ; preds = %do.body.111
  br label %if.end.121, !dbg !3517

if.else.118:                                      ; preds = %do.body.111
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !3519, !tbaa !1135
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1, !dbg !3521
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8, !dbg !3521, !tbaa !1260
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4, !dbg !3522
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8, !dbg !3522, !tbaa !1262
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp112, align 8, !dbg !3523, !tbaa !1135
  call void %105(%struct._object* %106), !dbg !3524
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  %107 = bitcast %struct._object** %_py_decref_tmp112 to i8*, !dbg !3525
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !3525
  br label %do.cond.122, !dbg !3527

do.cond.122:                                      ; preds = %if.end.121
  br label %do.end.123, !dbg !3528

do.end.123:                                       ; preds = %do.cond.122
  br label %if.end.124, !dbg !3530

if.end.124:                                       ; preds = %do.end.123, %do.body.106
  %108 = bitcast %struct._object** %_py_tmp107 to i8*, !dbg !3532
  call void @llvm.lifetime.end(i64 8, i8* %108) #1, !dbg !3532
  br label %do.cond.125, !dbg !3535

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126, !dbg !3536

do.end.126:                                       ; preds = %do.cond.125
  br label %if.end.127, !dbg !3538

if.end.127:                                       ; preds = %do.end.126, %if.end.99
  br label %error, !dbg !3539

error:                                            ; preds = %if.end.127, %do.end.97, %do.end.74, %do.end.46
  %109 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3541, !tbaa !1135
  %lock128 = getelementptr inbounds %struct.compobject, %struct.compobject* %109, i32 0, i32 7, !dbg !3542
  %110 = load i8*, i8** %lock128, align 8, !dbg !3542, !tbaa !1231
  call void @PyThread_release_lock(i8* %110), !dbg !3543
  %111 = load %struct._object*, %struct._object** %retval1, align 8, !dbg !3544, !tbaa !1135
  store %struct._object* %111, %struct._object** %retval, !dbg !3545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3545

cleanup:                                          ; preds = %error, %if.then.2, %if.then
  %112 = bitcast i64* %size to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %112) #1, !dbg !3546
  %113 = bitcast i64* %start_total_out to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %113) #1, !dbg !3546
  %114 = bitcast %struct._object** %retval1 to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %114) #1, !dbg !3546
  %115 = bitcast i32* %new_length to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 4, i8* %115) #1, !dbg !3546
  %116 = bitcast i32* %err to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 4, i8* %116) #1, !dbg !3546
  %117 = load %struct._object*, %struct._object** %retval, !dbg !3546
  ret %struct._object* %117, !dbg !3546
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_copy_impl(%struct.compobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %retval1 = alloca %struct.compobject*, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_xdecref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.compobject** %self.addr, metadata !826, metadata !1120), !dbg !3547
  %0 = bitcast %struct.compobject** %retval1 to i8*, !dbg !3548
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3548
  call void @llvm.dbg.declare(metadata %struct.compobject** %retval1, metadata !827, metadata !1120), !dbg !3549
  store %struct.compobject* null, %struct.compobject** %retval1, align 8, !dbg !3549, !tbaa !1135
  %1 = bitcast i32* %err to i8*, !dbg !3550
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3550
  call void @llvm.dbg.declare(metadata i32* %err, metadata !828, metadata !1120), !dbg !3551
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Decomptype), !dbg !3552
  store %struct.compobject* %call, %struct.compobject** %retval1, align 8, !dbg !3553, !tbaa !1135
  %2 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3554, !tbaa !1135
  %tobool = icmp ne %struct.compobject* %2, null, !dbg !3554
  br i1 %tobool, label %if.end, label %if.then, !dbg !3556

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3557
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3559

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._ts** %_save to i8*, !dbg !3560
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3560
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !829, metadata !1120), !dbg !3561
  %call2 = call %struct._ts* @PyEval_SaveThread(), !dbg !3562
  store %struct._ts* %call2, %struct._ts** %_save, align 8, !dbg !3563, !tbaa !1135
  %4 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3564, !tbaa !1135
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 7, !dbg !3565
  %5 = load i8*, i8** %lock, align 8, !dbg !3565, !tbaa !1231
  %call3 = call i32 @PyThread_acquire_lock(i8* %5, i32 1), !dbg !3566
  %6 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !3567, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %6), !dbg !3568
  %7 = bitcast %struct._ts** %_save to i8*, !dbg !3569
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !3569
  %8 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3570, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 1, !dbg !3571
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3572, !tbaa !1135
  %zst4 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1, !dbg !3573
  %call5 = call i32 @inflateCopy(%struct.z_stream_s* %zst, %struct.z_stream_s* %zst4), !dbg !3574
  store i32 %call5, i32* %err, align 4, !dbg !3575, !tbaa !1390
  %10 = load i32, i32* %err, align 4, !dbg !3576, !tbaa !1390
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end
  %Pivot.6 = icmp slt i32 %10, -2
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %10, 0
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %10, 0
  br i1 %SwitchLeaf4, label %sw.epilog, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %10, -2
  br i1 %SwitchLeaf2, label %sw.bb, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %10, -4
  br i1 %SwitchLeaf, label %sw.bb.6, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.1
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3577, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0)), !dbg !3579
  br label %error, !dbg !3580

sw.bb.6:                                          ; preds = %LeafBlock
  %12 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !3581, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0)), !dbg !3582
  br label %error, !dbg !3583

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %13 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3584, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1, !dbg !3585
  %14 = load i32, i32* %err, align 4, !dbg !3586, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst7, i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i32 0, i32 0)), !dbg !3587
  br label %error, !dbg !3588

sw.epilog:                                        ; preds = %LeafBlock.3
  %15 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3589, !tbaa !1135
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %15, i32 0, i32 2, !dbg !3590
  %16 = load %struct._object*, %struct._object** %unused_data, align 8, !dbg !3590, !tbaa !1239
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !3591
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !3592, !tbaa !1154
  %inc = add i64 %17, 1, !dbg !3592
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3592, !tbaa !1154
  %18 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3593, !tbaa !1135
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 3, !dbg !3594
  %19 = load %struct._object*, %struct._object** %unconsumed_tail, align 8, !dbg !3594, !tbaa !1284
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0, !dbg !3595
  %20 = load i64, i64* %ob_refcnt8, align 8, !dbg !3596, !tbaa !1154
  %inc9 = add i64 %20, 1, !dbg !3596
  store i64 %inc9, i64* %ob_refcnt8, align 8, !dbg !3596, !tbaa !1154
  br label %do.body, !dbg !3597

do.body:                                          ; preds = %sw.epilog
  %21 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3598
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !3598
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !831, metadata !1120), !dbg !3600
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3601, !tbaa !1135
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 6, !dbg !3602
  %23 = load %struct._object*, %struct._object** %zdict, align 8, !dbg !3602, !tbaa !1323
  store %struct._object* %23, %struct._object** %_py_xincref_tmp, align 8, !dbg !3600, !tbaa !1135
  %24 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3603, !tbaa !1135
  %cmp = icmp ne %struct._object* %24, null, !dbg !3605
  br i1 %cmp, label %if.then.10, label %if.end.13, !dbg !3606

if.then.10:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3607, !tbaa !1135
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0, !dbg !3609
  %26 = load i64, i64* %ob_refcnt11, align 8, !dbg !3610, !tbaa !1154
  %inc12 = add i64 %26, 1, !dbg !3610
  store i64 %inc12, i64* %ob_refcnt11, align 8, !dbg !3610, !tbaa !1154
  br label %if.end.13, !dbg !3611

if.end.13:                                        ; preds = %if.then.10, %do.body
  %27 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3612
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !3612
  br label %do.cond, !dbg !3615

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !3616

do.end:                                           ; preds = %do.cond
  br label %do.body.14, !dbg !3618

do.body.14:                                       ; preds = %do.end
  %28 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3619
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !3619
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !833, metadata !1120), !dbg !3621
  %29 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3622, !tbaa !1135
  %unused_data15 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 2, !dbg !3623
  %30 = load %struct._object*, %struct._object** %unused_data15, align 8, !dbg !3623, !tbaa !1239
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3621, !tbaa !1135
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3624, !tbaa !1135
  %cmp16 = icmp ne %struct._object* %31, null, !dbg !3625
  br i1 %cmp16, label %if.then.17, label %if.end.25, !dbg !3626

if.then.17:                                       ; preds = %do.body.14
  br label %do.body.18, !dbg !3627

do.body.18:                                       ; preds = %if.then.17
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3629
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !3629
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !835, metadata !1120), !dbg !3631
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3632, !tbaa !1135
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8, !dbg !3631, !tbaa !1135
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3633, !tbaa !1135
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !3635
  %35 = load i64, i64* %ob_refcnt19, align 8, !dbg !3636, !tbaa !1154
  %dec = add i64 %35, -1, !dbg !3636
  store i64 %dec, i64* %ob_refcnt19, align 8, !dbg !3636, !tbaa !1154
  %cmp20 = icmp ne i64 %dec, 0, !dbg !3637
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !3638

if.then.21:                                       ; preds = %do.body.18
  br label %if.end.22, !dbg !3639

if.else:                                          ; preds = %do.body.18
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3641, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !3643
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3643, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !3644
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3644, !tbaa !1262
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3645, !tbaa !1135
  call void %38(%struct._object* %39), !dbg !3646
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3647
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3647
  br label %do.cond.23, !dbg !3649

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3650

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !3652

if.end.25:                                        ; preds = %do.end.24, %do.body.14
  %41 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3654
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !3654
  br label %do.cond.26, !dbg !3656

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !3657

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !3659

do.body.28:                                       ; preds = %do.end.27
  %42 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !3660
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !3660
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp29, metadata !838, metadata !1120), !dbg !3662
  %43 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3663, !tbaa !1135
  %unconsumed_tail30 = getelementptr inbounds %struct.compobject, %struct.compobject* %43, i32 0, i32 3, !dbg !3664
  %44 = load %struct._object*, %struct._object** %unconsumed_tail30, align 8, !dbg !3664, !tbaa !1284
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !3662, !tbaa !1135
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !3665, !tbaa !1135
  %cmp31 = icmp ne %struct._object* %45, null, !dbg !3666
  br i1 %cmp31, label %if.then.32, label %if.end.45, !dbg !3667

if.then.32:                                       ; preds = %do.body.28
  br label %do.body.33, !dbg !3668

do.body.33:                                       ; preds = %if.then.32
  %46 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3670
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !3670
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !840, metadata !1120), !dbg !3672
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8, !dbg !3673, !tbaa !1135
  store %struct._object* %47, %struct._object** %_py_decref_tmp34, align 8, !dbg !3672, !tbaa !1135
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3674, !tbaa !1135
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !3676
  %49 = load i64, i64* %ob_refcnt35, align 8, !dbg !3677, !tbaa !1154
  %dec36 = add i64 %49, -1, !dbg !3677
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !3677, !tbaa !1154
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !3678
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !3679

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !3680

if.else.39:                                       ; preds = %do.body.33
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3682, !tbaa !1135
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !3684
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !3684, !tbaa !1260
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !3685
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !3685, !tbaa !1262
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !3686, !tbaa !1135
  call void %52(%struct._object* %53), !dbg !3687
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %54 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !3688
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !3688
  br label %do.cond.43, !dbg !3690

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !3691

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !3693

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %55 = bitcast %struct._object** %_py_xdecref_tmp29 to i8*, !dbg !3695
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !3695
  br label %do.cond.46, !dbg !3696

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !3697

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !3699

do.body.48:                                       ; preds = %do.end.47
  %56 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !3700
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !3700
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp49, metadata !843, metadata !1120), !dbg !3702
  %57 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3703, !tbaa !1135
  %zdict50 = getelementptr inbounds %struct.compobject, %struct.compobject* %57, i32 0, i32 6, !dbg !3704
  %58 = load %struct._object*, %struct._object** %zdict50, align 8, !dbg !3704, !tbaa !1323
  store %struct._object* %58, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3702, !tbaa !1135
  %59 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3705, !tbaa !1135
  %cmp51 = icmp ne %struct._object* %59, null, !dbg !3706
  br i1 %cmp51, label %if.then.52, label %if.end.65, !dbg !3707

if.then.52:                                       ; preds = %do.body.48
  br label %do.body.53, !dbg !3708

do.body.53:                                       ; preds = %if.then.52
  %60 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !3710
  call void @llvm.lifetime.start(i64 8, i8* %60) #1, !dbg !3710
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !845, metadata !1120), !dbg !3712
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8, !dbg !3713, !tbaa !1135
  store %struct._object* %61, %struct._object** %_py_decref_tmp54, align 8, !dbg !3712, !tbaa !1135
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !3714, !tbaa !1135
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0, !dbg !3716
  %63 = load i64, i64* %ob_refcnt55, align 8, !dbg !3717, !tbaa !1154
  %dec56 = add i64 %63, -1, !dbg !3717
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !3717, !tbaa !1154
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !3718
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !3719

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !3720

if.else.59:                                       ; preds = %do.body.53
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !3722, !tbaa !1135
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1, !dbg !3724
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !3724, !tbaa !1260
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4, !dbg !3725
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !3725, !tbaa !1262
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !3726, !tbaa !1135
  call void %66(%struct._object* %67), !dbg !3727
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %68 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !3728
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !3728
  br label %do.cond.63, !dbg !3730

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !3731

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !3733

if.end.65:                                        ; preds = %do.end.64, %do.body.48
  %69 = bitcast %struct._object** %_py_xdecref_tmp49 to i8*, !dbg !3735
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !3735
  br label %do.cond.66, !dbg !3736

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !3737

do.end.67:                                        ; preds = %do.cond.66
  %70 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3739, !tbaa !1135
  %unused_data68 = getelementptr inbounds %struct.compobject, %struct.compobject* %70, i32 0, i32 2, !dbg !3740
  %71 = load %struct._object*, %struct._object** %unused_data68, align 8, !dbg !3740, !tbaa !1239
  %72 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3741, !tbaa !1135
  %unused_data69 = getelementptr inbounds %struct.compobject, %struct.compobject* %72, i32 0, i32 2, !dbg !3742
  store %struct._object* %71, %struct._object** %unused_data69, align 8, !dbg !3743, !tbaa !1239
  %73 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3744, !tbaa !1135
  %unconsumed_tail70 = getelementptr inbounds %struct.compobject, %struct.compobject* %73, i32 0, i32 3, !dbg !3745
  %74 = load %struct._object*, %struct._object** %unconsumed_tail70, align 8, !dbg !3745, !tbaa !1284
  %75 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3746, !tbaa !1135
  %unconsumed_tail71 = getelementptr inbounds %struct.compobject, %struct.compobject* %75, i32 0, i32 3, !dbg !3747
  store %struct._object* %74, %struct._object** %unconsumed_tail71, align 8, !dbg !3748, !tbaa !1284
  %76 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3749, !tbaa !1135
  %zdict72 = getelementptr inbounds %struct.compobject, %struct.compobject* %76, i32 0, i32 6, !dbg !3750
  %77 = load %struct._object*, %struct._object** %zdict72, align 8, !dbg !3750, !tbaa !1323
  %78 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3751, !tbaa !1135
  %zdict73 = getelementptr inbounds %struct.compobject, %struct.compobject* %78, i32 0, i32 6, !dbg !3752
  store %struct._object* %77, %struct._object** %zdict73, align 8, !dbg !3753, !tbaa !1323
  %79 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3754, !tbaa !1135
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %79, i32 0, i32 4, !dbg !3755
  %80 = load i8, i8* %eof, align 1, !dbg !3755, !tbaa !2277
  %81 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3756, !tbaa !1135
  %eof74 = getelementptr inbounds %struct.compobject, %struct.compobject* %81, i32 0, i32 4, !dbg !3757
  store i8 %80, i8* %eof74, align 1, !dbg !3758, !tbaa !2277
  %82 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3759, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %82, i32 0, i32 5, !dbg !3760
  store i32 1, i32* %is_initialised, align 4, !dbg !3761, !tbaa !1217
  %83 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3762, !tbaa !1135
  %lock75 = getelementptr inbounds %struct.compobject, %struct.compobject* %83, i32 0, i32 7, !dbg !3763
  %84 = load i8*, i8** %lock75, align 8, !dbg !3763, !tbaa !1231
  call void @PyThread_release_lock(i8* %84), !dbg !3764
  %85 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3765, !tbaa !1135
  %86 = bitcast %struct.compobject* %85 to %struct._object*, !dbg !3766
  store %struct._object* %86, %struct._object** %retval, !dbg !3767
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3767

error:                                            ; preds = %sw.default, %sw.bb.6, %sw.bb
  %87 = load %struct.compobject*, %struct.compobject** %self.addr, align 8, !dbg !3768, !tbaa !1135
  %lock76 = getelementptr inbounds %struct.compobject, %struct.compobject* %87, i32 0, i32 7, !dbg !3769
  %88 = load i8*, i8** %lock76, align 8, !dbg !3769, !tbaa !1231
  call void @PyThread_release_lock(i8* %88), !dbg !3770
  br label %do.body.77, !dbg !3771

do.body.77:                                       ; preds = %error
  %89 = bitcast %struct._object** %_py_xdecref_tmp78 to i8*, !dbg !3772
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !3772
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp78, metadata !848, metadata !1120), !dbg !3774
  %90 = load %struct.compobject*, %struct.compobject** %retval1, align 8, !dbg !3775, !tbaa !1135
  %91 = bitcast %struct.compobject* %90 to %struct._object*, !dbg !3776
  store %struct._object* %91, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !3774, !tbaa !1135
  %92 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !3777, !tbaa !1135
  %cmp79 = icmp ne %struct._object* %92, null, !dbg !3778
  br i1 %cmp79, label %if.then.80, label %if.end.93, !dbg !3779

if.then.80:                                       ; preds = %do.body.77
  br label %do.body.81, !dbg !3780

do.body.81:                                       ; preds = %if.then.80
  %93 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !3782
  call void @llvm.lifetime.start(i64 8, i8* %93) #1, !dbg !3782
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp82, metadata !850, metadata !1120), !dbg !3784
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp78, align 8, !dbg !3785, !tbaa !1135
  store %struct._object* %94, %struct._object** %_py_decref_tmp82, align 8, !dbg !3784, !tbaa !1135
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !3786, !tbaa !1135
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0, !dbg !3788
  %96 = load i64, i64* %ob_refcnt83, align 8, !dbg !3789, !tbaa !1154
  %dec84 = add i64 %96, -1, !dbg !3789
  store i64 %dec84, i64* %ob_refcnt83, align 8, !dbg !3789, !tbaa !1154
  %cmp85 = icmp ne i64 %dec84, 0, !dbg !3790
  br i1 %cmp85, label %if.then.86, label %if.else.87, !dbg !3791

if.then.86:                                       ; preds = %do.body.81
  br label %if.end.90, !dbg !3792

if.else.87:                                       ; preds = %do.body.81
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !3794, !tbaa !1135
  %ob_type88 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1, !dbg !3796
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type88, align 8, !dbg !3796, !tbaa !1260
  %tp_dealloc89 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4, !dbg !3797
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc89, align 8, !dbg !3797, !tbaa !1262
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8, !dbg !3798, !tbaa !1135
  call void %99(%struct._object* %100), !dbg !3799
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.87, %if.then.86
  %101 = bitcast %struct._object** %_py_decref_tmp82 to i8*, !dbg !3800
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !3800
  br label %do.cond.91, !dbg !3802

do.cond.91:                                       ; preds = %if.end.90
  br label %do.end.92, !dbg !3803

do.end.92:                                        ; preds = %do.cond.91
  br label %if.end.93, !dbg !3805

if.end.93:                                        ; preds = %do.end.92, %do.body.77
  %102 = bitcast %struct._object** %_py_xdecref_tmp78 to i8*, !dbg !3807
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !3807
  br label %do.cond.94, !dbg !3808

do.cond.94:                                       ; preds = %if.end.93
  br label %do.end.95, !dbg !3809

do.end.95:                                        ; preds = %do.cond.94
  store %struct._object* null, %struct._object** %retval, !dbg !3811
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3811

cleanup:                                          ; preds = %do.end.95, %do.end.67, %if.then
  %103 = bitcast i32* %err to i8*, !dbg !3812
  call void @llvm.lifetime.end(i64 4, i8* %103) #1, !dbg !3812
  %104 = bitcast %struct.compobject** %retval1 to i8*, !dbg !3812
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !3812
  %105 = load %struct._object*, %struct._object** %retval, !dbg !3812
  ret %struct._object* %105, !dbg !3812
}

declare i32 @inflateCopy(%struct.z_stream_s*, %struct.z_stream_s*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_adler32(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !881, metadata !1120), !dbg !3813
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !882, metadata !1120), !dbg !3814
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3815
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3815
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !883, metadata !1120), !dbg !3816
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3816, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3817
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !3817
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !884, metadata !1120), !dbg !3818
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3818
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !3818
  %3 = bitcast i32* %value to i8*, !dbg !3819
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3819
  call void @llvm.dbg.declare(metadata i32* %value, metadata !885, metadata !1120), !dbg !3820
  store i32 1, i32* %value, align 4, !dbg !3820, !tbaa !1390
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3821, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct.bufferinfo* %data, i32* %value), !dbg !3823
  %tobool = icmp ne i32 %call, 0, !dbg !3823
  br i1 %tobool, label %if.end, label %if.then, !dbg !3824

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3825

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3826, !tbaa !1135
  %6 = load i32, i32* %value, align 4, !dbg !3827, !tbaa !1390
  %call1 = call %struct._object* @zlib_adler32_impl(%struct.PyModuleDef* %5, %struct.bufferinfo* %data, i32 %6), !dbg !3828
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3829, !tbaa !1135
  br label %exit, !dbg !3830

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !3831
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3831, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !3833
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3834

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !3835
  br label %if.end.4, !dbg !3835

if.end.4:                                         ; preds = %if.then.3, %exit
  %8 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3836, !tbaa !1135
  %9 = bitcast i32* %value to i8*, !dbg !3837
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !3837
  %10 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3837
  call void @llvm.lifetime.end(i64 80, i8* %10) #1, !dbg !3837
  %11 = bitcast %struct._object** %return_value to i8*, !dbg !3837
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3837
  ret %struct._object* %8, !dbg !3838
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_compress(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %bytes = alloca %struct.bufferinfo, align 8
  %level = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !901, metadata !1120), !dbg !3839
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !902, metadata !1120), !dbg !3840
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3841
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3841
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !903, metadata !1120), !dbg !3842
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3842, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %bytes to i8*, !dbg !3843
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !3843
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %bytes, metadata !904, metadata !1120), !dbg !3844
  %2 = bitcast %struct.bufferinfo* %bytes to i8*, !dbg !3844
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !3844
  %3 = bitcast i32* %level to i8*, !dbg !3845
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3845
  call void @llvm.dbg.declare(metadata i32* %level, metadata !905, metadata !1120), !dbg !3846
  store i32 -1, i32* %level, align 4, !dbg !3846, !tbaa !1390
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3847, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), %struct.bufferinfo* %bytes, i32* %level), !dbg !3849
  %tobool = icmp ne i32 %call, 0, !dbg !3849
  br i1 %tobool, label %if.end, label %if.then, !dbg !3850

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3851

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3852, !tbaa !1135
  %6 = load i32, i32* %level, align 4, !dbg !3853, !tbaa !1390
  %call1 = call %struct._object* @zlib_compress_impl(%struct.PyModuleDef* %5, %struct.bufferinfo* %bytes, i32 %6), !dbg !3854
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3855, !tbaa !1135
  br label %exit, !dbg !3856

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bytes, i32 0, i32 1, !dbg !3857
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3857, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !3859
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3860

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %bytes), !dbg !3861
  br label %if.end.4, !dbg !3861

if.end.4:                                         ; preds = %if.then.3, %exit
  %8 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3862, !tbaa !1135
  %9 = bitcast i32* %level to i8*, !dbg !3863
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !3863
  %10 = bitcast %struct.bufferinfo* %bytes to i8*, !dbg !3863
  call void @llvm.lifetime.end(i64 80, i8* %10) #1, !dbg !3863
  %11 = bitcast %struct._object** %return_value to i8*, !dbg !3863
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3863
  ret %struct._object* %8, !dbg !3864
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_compressobj(%struct.PyModuleDef* %module, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %level = alloca i32, align 4
  %method = alloca i32, align 4
  %wbits = alloca i32, align 4
  %memLevel = alloca i32, align 4
  %strategy = alloca i32, align 4
  %zdict = alloca %struct.bufferinfo, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !938, metadata !1120), !dbg !3865
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !939, metadata !1120), !dbg !3866
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !940, metadata !1120), !dbg !3867
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3868
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3868
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !941, metadata !1120), !dbg !3869
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3869, !tbaa !1135
  %1 = bitcast i32* %level to i8*, !dbg !3870
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3870
  call void @llvm.dbg.declare(metadata i32* %level, metadata !942, metadata !1120), !dbg !3871
  store i32 -1, i32* %level, align 4, !dbg !3871, !tbaa !1390
  %2 = bitcast i32* %method to i8*, !dbg !3872
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3872
  call void @llvm.dbg.declare(metadata i32* %method, metadata !943, metadata !1120), !dbg !3873
  store i32 8, i32* %method, align 4, !dbg !3873, !tbaa !1390
  %3 = bitcast i32* %wbits to i8*, !dbg !3874
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3874
  call void @llvm.dbg.declare(metadata i32* %wbits, metadata !944, metadata !1120), !dbg !3875
  store i32 15, i32* %wbits, align 4, !dbg !3875, !tbaa !1390
  %4 = bitcast i32* %memLevel to i8*, !dbg !3876
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3876
  call void @llvm.dbg.declare(metadata i32* %memLevel, metadata !945, metadata !1120), !dbg !3877
  store i32 8, i32* %memLevel, align 4, !dbg !3877, !tbaa !1390
  %5 = bitcast i32* %strategy to i8*, !dbg !3878
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !3878
  call void @llvm.dbg.declare(metadata i32* %strategy, metadata !946, metadata !1120), !dbg !3879
  store i32 0, i32* %strategy, align 4, !dbg !3879, !tbaa !1390
  %6 = bitcast %struct.bufferinfo* %zdict to i8*, !dbg !3880
  call void @llvm.lifetime.start(i64 80, i8* %6) #1, !dbg !3880
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %zdict, metadata !947, metadata !1120), !dbg !3881
  %7 = bitcast %struct.bufferinfo* %zdict to i8*, !dbg !3881
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 80, i32 8, i1 false), !dbg !3881
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3882, !tbaa !1135
  %9 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !3884, !tbaa !1135
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @zlib_compressobj._keywords, i32 0, i32 0), i32* %level, i32* %method, i32* %wbits, i32* %memLevel, i32* %strategy, %struct.bufferinfo* %zdict), !dbg !3885
  %tobool = icmp ne i32 %call, 0, !dbg !3885
  br i1 %tobool, label %if.end, label %if.then, !dbg !3886

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3887

if.end:                                           ; preds = %entry
  %10 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3888, !tbaa !1135
  %11 = load i32, i32* %level, align 4, !dbg !3889, !tbaa !1390
  %12 = load i32, i32* %method, align 4, !dbg !3890, !tbaa !1390
  %13 = load i32, i32* %wbits, align 4, !dbg !3891, !tbaa !1390
  %14 = load i32, i32* %memLevel, align 4, !dbg !3892, !tbaa !1390
  %15 = load i32, i32* %strategy, align 4, !dbg !3893, !tbaa !1390
  %call1 = call %struct._object* @zlib_compressobj_impl(%struct.PyModuleDef* %10, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, %struct.bufferinfo* %zdict), !dbg !3894
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3895, !tbaa !1135
  br label %exit, !dbg !3896

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict, i32 0, i32 1, !dbg !3897
  %16 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3897, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %16, null, !dbg !3899
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3900

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict), !dbg !3901
  br label %if.end.4, !dbg !3901

if.end.4:                                         ; preds = %if.then.3, %exit
  %17 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3902, !tbaa !1135
  %18 = bitcast %struct.bufferinfo* %zdict to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 80, i8* %18) #1, !dbg !3903
  %19 = bitcast i32* %strategy to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !3903
  %20 = bitcast i32* %memLevel to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 4, i8* %20) #1, !dbg !3903
  %21 = bitcast i32* %wbits to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !3903
  %22 = bitcast i32* %method to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 4, i8* %22) #1, !dbg !3903
  %23 = bitcast i32* %level to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 4, i8* %23) #1, !dbg !3903
  %24 = bitcast %struct._object** %return_value to i8*, !dbg !3903
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3903
  ret %struct._object* %17, !dbg !3904
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_crc32(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !969, metadata !1120), !dbg !3905
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !970, metadata !1120), !dbg !3906
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3907
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3907
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !971, metadata !1120), !dbg !3908
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3908, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3909
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !3909
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !972, metadata !1120), !dbg !3910
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3910
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !3910
  %3 = bitcast i32* %value to i8*, !dbg !3911
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3911
  call void @llvm.dbg.declare(metadata i32* %value, metadata !973, metadata !1120), !dbg !3912
  store i32 0, i32* %value, align 4, !dbg !3912, !tbaa !1390
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3913, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %struct.bufferinfo* %data, i32* %value), !dbg !3915
  %tobool = icmp ne i32 %call, 0, !dbg !3915
  br i1 %tobool, label %if.end, label %if.then, !dbg !3916

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3917

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3918, !tbaa !1135
  %6 = load i32, i32* %value, align 4, !dbg !3919, !tbaa !1390
  %call1 = call %struct._object* @zlib_crc32_impl(%struct.PyModuleDef* %5, %struct.bufferinfo* %data, i32 %6), !dbg !3920
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3921, !tbaa !1135
  br label %exit, !dbg !3922

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !3923
  %7 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3923, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %7, null, !dbg !3925
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3926

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !3927
  br label %if.end.4, !dbg !3927

if.end.4:                                         ; preds = %if.then.3, %exit
  %8 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3928, !tbaa !1135
  %9 = bitcast i32* %value to i8*, !dbg !3929
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !3929
  %10 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3929
  call void @llvm.lifetime.end(i64 80, i8* %10) #1, !dbg !3929
  %11 = bitcast %struct._object** %return_value to i8*, !dbg !3929
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3929
  ret %struct._object* %8, !dbg !3930
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_decompress(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %wbits = alloca i32, align 4
  %bufsize = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !988, metadata !1120), !dbg !3931
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !989, metadata !1120), !dbg !3932
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3933
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3933
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !990, metadata !1120), !dbg !3934
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3934, !tbaa !1135
  %1 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3935
  call void @llvm.lifetime.start(i64 80, i8* %1) #1, !dbg !3935
  call void @llvm.dbg.declare(metadata %struct.bufferinfo* %data, metadata !991, metadata !1120), !dbg !3936
  %2 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3936
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 80, i32 8, i1 false), !dbg !3936
  %3 = bitcast i32* %wbits to i8*, !dbg !3937
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !3937
  call void @llvm.dbg.declare(metadata i32* %wbits, metadata !992, metadata !1120), !dbg !3938
  store i32 15, i32* %wbits, align 4, !dbg !3938, !tbaa !1390
  %4 = bitcast i32* %bufsize to i8*, !dbg !3939
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3939
  call void @llvm.dbg.declare(metadata i32* %bufsize, metadata !993, metadata !1120), !dbg !3940
  store i32 16384, i32* %bufsize, align 4, !dbg !3940, !tbaa !1390
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3941, !tbaa !1135
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), %struct.bufferinfo* %data, i32* %wbits, i32 (%struct._object*, i8*)* @uint_converter, i32* %bufsize), !dbg !3943
  %tobool = icmp ne i32 %call, 0, !dbg !3943
  br i1 %tobool, label %if.end, label %if.then, !dbg !3944

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3945

if.end:                                           ; preds = %entry
  %6 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3946, !tbaa !1135
  %7 = load i32, i32* %wbits, align 4, !dbg !3947, !tbaa !1390
  %8 = load i32, i32* %bufsize, align 4, !dbg !3948, !tbaa !1390
  %call1 = call %struct._object* @zlib_decompress_impl(%struct.PyModuleDef* %6, %struct.bufferinfo* %data, i32 %7, i32 %8), !dbg !3949
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3950, !tbaa !1135
  br label %exit, !dbg !3951

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1, !dbg !3952
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3952, !tbaa !1376
  %tobool2 = icmp ne %struct._object* %9, null, !dbg !3954
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !3955

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data), !dbg !3956
  br label %if.end.4, !dbg !3956

if.end.4:                                         ; preds = %if.then.3, %exit
  %10 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3957, !tbaa !1135
  %11 = bitcast i32* %bufsize to i8*, !dbg !3958
  call void @llvm.lifetime.end(i64 4, i8* %11) #1, !dbg !3958
  %12 = bitcast i32* %wbits to i8*, !dbg !3958
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !3958
  %13 = bitcast %struct.bufferinfo* %data to i8*, !dbg !3958
  call void @llvm.lifetime.end(i64 80, i8* %13) #1, !dbg !3958
  %14 = bitcast %struct._object** %return_value to i8*, !dbg !3958
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3958
  ret %struct._object* %10, !dbg !3959
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_decompressobj(%struct.PyModuleDef* %module, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %wbits = alloca i32, align 4
  %zdict = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !1018, metadata !1120), !dbg !3960
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !1019, metadata !1120), !dbg !3961
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %kwargs.addr, metadata !1020, metadata !1120), !dbg !3962
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !3963
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3963
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !1021, metadata !1120), !dbg !3964
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !3964, !tbaa !1135
  %1 = bitcast i32* %wbits to i8*, !dbg !3965
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3965
  call void @llvm.dbg.declare(metadata i32* %wbits, metadata !1022, metadata !1120), !dbg !3966
  store i32 15, i32* %wbits, align 4, !dbg !3966, !tbaa !1390
  %2 = bitcast %struct._object** %zdict to i8*, !dbg !3967
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3967
  call void @llvm.dbg.declare(metadata %struct._object** %zdict, metadata !1023, metadata !1120), !dbg !3968
  store %struct._object* null, %struct._object** %zdict, align 8, !dbg !3968, !tbaa !1135
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3969, !tbaa !1135
  %4 = load %struct._object*, %struct._object** %kwargs.addr, align 8, !dbg !3971, !tbaa !1135
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @zlib_decompressobj._keywords, i32 0, i32 0), i32* %wbits, %struct._object** %zdict), !dbg !3972
  %tobool = icmp ne i32 %call, 0, !dbg !3972
  br i1 %tobool, label %if.end, label %if.then, !dbg !3973

if.then:                                          ; preds = %entry
  br label %exit, !dbg !3974

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !3975, !tbaa !1135
  %6 = load i32, i32* %wbits, align 4, !dbg !3976, !tbaa !1390
  %7 = load %struct._object*, %struct._object** %zdict, align 8, !dbg !3977, !tbaa !1135
  %call1 = call %struct._object* @zlib_decompressobj_impl(%struct.PyModuleDef* %5, i32 %6, %struct._object* %7), !dbg !3978
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !3979, !tbaa !1135
  br label %exit, !dbg !3980

exit:                                             ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !3981, !tbaa !1135
  %9 = bitcast %struct._object** %zdict to i8*, !dbg !3982
  call void @llvm.lifetime.end(i64 8, i8* %9) #1, !dbg !3982
  %10 = bitcast i32* %wbits to i8*, !dbg !3982
  call void @llvm.lifetime.end(i64 4, i8* %10) #1, !dbg !3982
  %11 = bitcast %struct._object** %return_value to i8*, !dbg !3982
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !3982
  ret %struct._object* %8, !dbg !3983
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_adler32_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %value) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %value.addr = alloca i32, align 4
  %buf = alloca i8*, align 8
  %len2 = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !890, metadata !1120), !dbg !3984
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !891, metadata !1120), !dbg !3985
  store i32 %value, i32* %value.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !892, metadata !1120), !dbg !3986
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3987, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2, !dbg !3988
  %1 = load i64, i64* %len, align 8, !dbg !3988, !tbaa !1427
  %cmp = icmp sgt i64 %1, 5120, !dbg !3989
  br i1 %cmp, label %if.then, label %if.else, !dbg !3990

if.then:                                          ; preds = %entry
  %2 = bitcast i8** %buf to i8*, !dbg !3991
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3991
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !893, metadata !1120), !dbg !3992
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3993, !tbaa !1135
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0, !dbg !3994
  %4 = load i8*, i8** %buf1, align 8, !dbg !3994, !tbaa !1436
  store i8* %4, i8** %buf, align 8, !dbg !3992, !tbaa !1135
  %5 = bitcast i64* %len2 to i8*, !dbg !3995
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3995
  call void @llvm.dbg.declare(metadata i64* %len2, metadata !896, metadata !1120), !dbg !3996
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !3997, !tbaa !1135
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2, !dbg !3998
  %7 = load i64, i64* %len3, align 8, !dbg !3998, !tbaa !1427
  store i64 %7, i64* %len2, align 8, !dbg !3996, !tbaa !1463
  %8 = bitcast %struct._ts** %_save to i8*, !dbg !3999
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3999
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !897, metadata !1120), !dbg !4000
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !4001
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !4002, !tbaa !1135
  br label %while.cond, !dbg !4003

while.cond:                                       ; preds = %while.body, %if.then
  %9 = load i64, i64* %len2, align 8, !dbg !4004, !tbaa !1463
  %cmp4 = icmp ugt i64 %9, 4294967295, !dbg !4007
  br i1 %cmp4, label %while.body, label %while.end, !dbg !4003

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %value.addr, align 4, !dbg !4008, !tbaa !1390
  %conv = zext i32 %10 to i64, !dbg !4008
  %11 = load i8*, i8** %buf, align 8, !dbg !4010, !tbaa !1135
  %call5 = call i64 @adler32(i64 %conv, i8* %11, i32 -1), !dbg !4011
  %conv6 = trunc i64 %call5 to i32, !dbg !4011
  store i32 %conv6, i32* %value.addr, align 4, !dbg !4012, !tbaa !1390
  %12 = load i8*, i8** %buf, align 8, !dbg !4013, !tbaa !1135
  %add.ptr = getelementptr i8, i8* %12, i64 4294967295, !dbg !4013
  store i8* %add.ptr, i8** %buf, align 8, !dbg !4013, !tbaa !1135
  %13 = load i64, i64* %len2, align 8, !dbg !4014, !tbaa !1463
  %sub = sub i64 %13, 4294967295, !dbg !4014
  store i64 %sub, i64* %len2, align 8, !dbg !4014, !tbaa !1463
  br label %while.cond, !dbg !4003

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %value.addr, align 4, !dbg !4015, !tbaa !1390
  %conv7 = zext i32 %14 to i64, !dbg !4015
  %15 = load i8*, i8** %buf, align 8, !dbg !4016, !tbaa !1135
  %16 = load i64, i64* %len2, align 8, !dbg !4017, !tbaa !1463
  %conv8 = trunc i64 %16 to i32, !dbg !4018
  %call9 = call i64 @adler32(i64 %conv7, i8* %15, i32 %conv8), !dbg !4019
  %conv10 = trunc i64 %call9 to i32, !dbg !4019
  store i32 %conv10, i32* %value.addr, align 4, !dbg !4020, !tbaa !1390
  %17 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !4021, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %17), !dbg !4022
  %18 = bitcast %struct._ts** %_save to i8*, !dbg !4023
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4023
  %19 = bitcast i64* %len2 to i8*, !dbg !4024
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4024
  %20 = bitcast i8** %buf to i8*, !dbg !4024
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4024
  br label %if.end, !dbg !4025

if.else:                                          ; preds = %entry
  %21 = load i32, i32* %value.addr, align 4, !dbg !4026, !tbaa !1390
  %conv11 = zext i32 %21 to i64, !dbg !4026
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4028, !tbaa !1135
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0, !dbg !4029
  %23 = load i8*, i8** %buf12, align 8, !dbg !4029, !tbaa !1436
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4030, !tbaa !1135
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 2, !dbg !4031
  %25 = load i64, i64* %len13, align 8, !dbg !4031, !tbaa !1427
  %conv14 = trunc i64 %25 to i32, !dbg !4032
  %call15 = call i64 @adler32(i64 %conv11, i8* %23, i32 %conv14), !dbg !4033
  %conv16 = trunc i64 %call15 to i32, !dbg !4033
  store i32 %conv16, i32* %value.addr, align 4, !dbg !4034, !tbaa !1390
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %26 = load i32, i32* %value.addr, align 4, !dbg !4035, !tbaa !1390
  %conv17 = zext i32 %26 to i64, !dbg !4035
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv17), !dbg !4036
  ret %struct._object* %call18, !dbg !4037
}

declare i64 @adler32(i64, i8*, i32) #3

declare %struct._object* @PyLong_FromUnsignedLong(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_compress_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %bytes, i32 %level) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %bytes.addr = alloca %struct.bufferinfo*, align 8
  %level.addr = alloca i32, align 4
  %ReturnVal = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %output = alloca i8*, align 8
  %length = alloca i32, align 4
  %err = alloca i32, align 4
  %zst = alloca %struct.z_stream_s, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !910, metadata !1120), !dbg !4038
  store %struct.bufferinfo* %bytes, %struct.bufferinfo** %bytes.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %bytes.addr, metadata !911, metadata !1120), !dbg !4039
  store i32 %level, i32* %level.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !912, metadata !1120), !dbg !4040
  %0 = bitcast %struct._object** %ReturnVal to i8*, !dbg !4041
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4041
  call void @llvm.dbg.declare(metadata %struct._object** %ReturnVal, metadata !913, metadata !1120), !dbg !4042
  store %struct._object* null, %struct._object** %ReturnVal, align 8, !dbg !4042, !tbaa !1135
  %1 = bitcast i8** %input to i8*, !dbg !4043
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4043
  call void @llvm.dbg.declare(metadata i8** %input, metadata !914, metadata !1120), !dbg !4044
  %2 = bitcast i8** %output to i8*, !dbg !4043
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4043
  call void @llvm.dbg.declare(metadata i8** %output, metadata !915, metadata !1120), !dbg !4045
  store i8* null, i8** %output, align 8, !dbg !4045, !tbaa !1135
  %3 = bitcast i32* %length to i8*, !dbg !4046
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !4046
  call void @llvm.dbg.declare(metadata i32* %length, metadata !916, metadata !1120), !dbg !4047
  %4 = bitcast i32* %err to i8*, !dbg !4048
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !4048
  call void @llvm.dbg.declare(metadata i32* %err, metadata !917, metadata !1120), !dbg !4049
  %5 = bitcast %struct.z_stream_s* %zst to i8*, !dbg !4050
  call void @llvm.lifetime.start(i64 112, i8* %5) #1, !dbg !4050
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %zst, metadata !918, metadata !1120), !dbg !4051
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8, !dbg !4052, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2, !dbg !4054
  %7 = load i64, i64* %len, align 8, !dbg !4054, !tbaa !1427
  %cmp = icmp ugt i64 %7, 4294967295, !dbg !4055
  br i1 %cmp, label %if.then, label %if.end, !dbg !4056

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4057, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0)), !dbg !4059
  br label %error, !dbg !4060

if.end:                                           ; preds = %entry
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8, !dbg !4061, !tbaa !1135
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 0, !dbg !4062
  %10 = load i8*, i8** %buf, align 8, !dbg !4062, !tbaa !1436
  store i8* %10, i8** %input, align 8, !dbg !4063, !tbaa !1135
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8, !dbg !4064, !tbaa !1135
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2, !dbg !4065
  %12 = load i64, i64* %len1, align 8, !dbg !4065, !tbaa !1427
  %conv = trunc i64 %12 to i32, !dbg !4066
  store i32 %conv, i32* %length, align 4, !dbg !4067, !tbaa !1390
  %13 = load i32, i32* %length, align 4, !dbg !4068, !tbaa !1390
  %14 = load i32, i32* %length, align 4, !dbg !4069, !tbaa !1390
  %div = udiv i32 %14, 1000, !dbg !4070
  %add = add i32 %13, %div, !dbg !4071
  %add2 = add i32 %add, 12, !dbg !4072
  %add3 = add i32 %add2, 1, !dbg !4073
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4, !dbg !4074
  store i32 %add3, i32* %avail_out, align 4, !dbg !4075, !tbaa !4076
  %avail_out4 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4, !dbg !4077
  %15 = load i32, i32* %avail_out4, align 4, !dbg !4077, !tbaa !4076
  %conv5 = zext i32 %15 to i64, !dbg !4078
  %call = call i8* @PyMem_Malloc(i64 %conv5), !dbg !4079
  store i8* %call, i8** %output, align 8, !dbg !4080, !tbaa !1135
  %16 = load i8*, i8** %output, align 8, !dbg !4081, !tbaa !1135
  %cmp6 = icmp eq i8* %16, null, !dbg !4083
  br i1 %cmp6, label %if.then.8, label %if.end.9, !dbg !4084

if.then.8:                                        ; preds = %if.end
  %17 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4085, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0)), !dbg !4087
  br label %error, !dbg !4088

if.end.9:                                         ; preds = %if.end
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10, !dbg !4089
  store i8* null, i8** %opaque, align 8, !dbg !4090, !tbaa !4091
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 8, !dbg !4092
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8, !dbg !4093, !tbaa !4094
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 9, !dbg !4095
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8, !dbg !4096, !tbaa !4097
  %18 = load i8*, i8** %output, align 8, !dbg !4098, !tbaa !1135
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3, !dbg !4099
  store i8* %18, i8** %next_out, align 8, !dbg !4100, !tbaa !4101
  %19 = load i8*, i8** %input, align 8, !dbg !4102, !tbaa !1135
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 0, !dbg !4103
  store i8* %19, i8** %next_in, align 8, !dbg !4104, !tbaa !4105
  %20 = load i32, i32* %length, align 4, !dbg !4106, !tbaa !1390
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1, !dbg !4107
  store i32 %20, i32* %avail_in, align 4, !dbg !4108, !tbaa !4109
  %21 = load i32, i32* %level.addr, align 4, !dbg !4110, !tbaa !1390
  %call10 = call i32 @deflateInit_(%struct.z_stream_s* %zst, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112), !dbg !4111
  store i32 %call10, i32* %err, align 4, !dbg !4112, !tbaa !1390
  %22 = load i32, i32* %err, align 4, !dbg !4113, !tbaa !1390
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end.9
  %Pivot.6 = icmp slt i32 %22, -2
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %22, 0
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %22, 0
  br i1 %SwitchLeaf4, label %sw.epilog, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %22, -2
  br i1 %SwitchLeaf2, label %sw.bb.11, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %22, -4
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %23 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4114, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0)), !dbg !4116
  br label %error, !dbg !4117

sw.bb.11:                                         ; preds = %LeafBlock.1
  %24 = load %struct._object*, %struct._object** @ZlibError, align 8, !dbg !4118, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0)), !dbg !4119
  br label %error, !dbg !4120

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %call12 = call i32 @deflateEnd(%struct.z_stream_s* %zst), !dbg !4121
  %25 = load i32, i32* %err, align 4, !dbg !4122, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0)), !dbg !4123
  br label %error, !dbg !4124

sw.epilog:                                        ; preds = %LeafBlock.3
  %26 = bitcast %struct._ts** %_save to i8*, !dbg !4125
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !4125
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !919, metadata !1120), !dbg !4126
  %call13 = call %struct._ts* @PyEval_SaveThread(), !dbg !4127
  store %struct._ts* %call13, %struct._ts** %_save, align 8, !dbg !4128, !tbaa !1135
  %call14 = call i32 @deflate(%struct.z_stream_s* %zst, i32 4), !dbg !4129
  store i32 %call14, i32* %err, align 4, !dbg !4130, !tbaa !1390
  %27 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !4131, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %27), !dbg !4132
  %28 = bitcast %struct._ts** %_save to i8*, !dbg !4133
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !4133
  %29 = load i32, i32* %err, align 4, !dbg !4134, !tbaa !1390
  %cmp15 = icmp ne i32 %29, 1, !dbg !4136
  br i1 %cmp15, label %if.then.17, label %if.end.19, !dbg !4137

if.then.17:                                       ; preds = %sw.epilog
  %30 = load i32, i32* %err, align 4, !dbg !4138, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0)), !dbg !4140
  %call18 = call i32 @deflateEnd(%struct.z_stream_s* %zst), !dbg !4141
  br label %error, !dbg !4142

if.end.19:                                        ; preds = %sw.epilog
  %call20 = call i32 @deflateEnd(%struct.z_stream_s* %zst), !dbg !4143
  store i32 %call20, i32* %err, align 4, !dbg !4144, !tbaa !1390
  %31 = load i32, i32* %err, align 4, !dbg !4145, !tbaa !1390
  %cmp21 = icmp eq i32 %31, 0, !dbg !4147
  br i1 %cmp21, label %if.then.23, label %if.else, !dbg !4148

if.then.23:                                       ; preds = %if.end.19
  %32 = load i8*, i8** %output, align 8, !dbg !4149, !tbaa !1135
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !4150
  %33 = load i64, i64* %total_out, align 8, !dbg !4150, !tbaa !4151
  %call24 = call %struct._object* @PyBytes_FromStringAndSize(i8* %32, i64 %33), !dbg !4152
  store %struct._object* %call24, %struct._object** %ReturnVal, align 8, !dbg !4153, !tbaa !1135
  br label %if.end.25, !dbg !4154

if.else:                                          ; preds = %if.end.19
  %34 = load i32, i32* %err, align 4, !dbg !4155, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0)), !dbg !4156
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.23
  br label %error, !dbg !4157

error:                                            ; preds = %if.end.25, %if.then.17, %sw.default, %sw.bb.11, %sw.bb, %if.then.8, %if.then
  %35 = load i8*, i8** %output, align 8, !dbg !4158, !tbaa !1135
  call void @PyMem_Free(i8* %35), !dbg !4159
  %36 = load %struct._object*, %struct._object** %ReturnVal, align 8, !dbg !4160, !tbaa !1135
  %37 = bitcast %struct.z_stream_s* %zst to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 112, i8* %37) #1, !dbg !4161
  %38 = bitcast i32* %err to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 4, i8* %38) #1, !dbg !4161
  %39 = bitcast i32* %length to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 4, i8* %39) #1, !dbg !4161
  %40 = bitcast i8** %output to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !4161
  %41 = bitcast i8** %input to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !4161
  %42 = bitcast %struct._object** %ReturnVal to i8*, !dbg !4161
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !4161
  ret %struct._object* %36, !dbg !4162
}

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal i8* @PyZlib_Malloc(i8* %ctx, i32 %items, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !925, metadata !1120), !dbg !4163
  store i32 %items, i32* %items.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %items.addr, metadata !926, metadata !1120), !dbg !4164
  store i32 %size, i32* %size.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !927, metadata !1120), !dbg !4165
  %0 = load i32, i32* %items.addr, align 4, !dbg !4166, !tbaa !1390
  %conv = zext i32 %0 to i64, !dbg !4166
  %1 = load i32, i32* %size.addr, align 4, !dbg !4168, !tbaa !1390
  %conv1 = zext i32 %1 to i64, !dbg !4168
  %div = udiv i64 9223372036854775807, %conv1, !dbg !4169
  %cmp = icmp ugt i64 %conv, %div, !dbg !4170
  br i1 %cmp, label %if.then, label %if.end, !dbg !4171

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, !dbg !4172
  br label %return, !dbg !4172

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %items.addr, align 4, !dbg !4173, !tbaa !1390
  %3 = load i32, i32* %size.addr, align 4, !dbg !4174, !tbaa !1390
  %mul = mul i32 %2, %3, !dbg !4175
  %conv3 = zext i32 %mul to i64, !dbg !4173
  %call = call i8* @PyMem_RawMalloc(i64 %conv3), !dbg !4176
  store i8* %call, i8** %retval, !dbg !4177
  br label %return, !dbg !4177

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, !dbg !4178
  ret i8* %4, !dbg !4178
}

; Function Attrs: nounwind uwtable
define internal void @PyZlib_Free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata i8** %ctx.addr, metadata !932, metadata !1120), !dbg !4179
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !933, metadata !1120), !dbg !4180
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !4181, !tbaa !1135
  call void @PyMem_RawFree(i8* %0), !dbg !4182
  ret void, !dbg !4183
}

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #3

declare void @PyMem_Free(i8*) #3

declare i8* @PyMem_RawMalloc(i64) #3

declare void @PyMem_RawFree(i8*) #3

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_compressobj_impl(%struct.PyModuleDef* %module, i32 %level, i32 %method, i32 %wbits, i32 %memLevel, i32 %strategy, %struct.bufferinfo* %zdict) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %level.addr = alloca i32, align 4
  %method.addr = alloca i32, align 4
  %wbits.addr = alloca i32, align 4
  %memLevel.addr = alloca i32, align 4
  %strategy.addr = alloca i32, align 4
  %zdict.addr = alloca %struct.bufferinfo*, align 8
  %self = alloca %struct.compobject*, align 8
  %err = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !952, metadata !1120), !dbg !4184
  store i32 %level, i32* %level.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !953, metadata !1120), !dbg !4185
  store i32 %method, i32* %method.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %method.addr, metadata !954, metadata !1120), !dbg !4186
  store i32 %wbits, i32* %wbits.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %wbits.addr, metadata !955, metadata !1120), !dbg !4187
  store i32 %memLevel, i32* %memLevel.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %memLevel.addr, metadata !956, metadata !1120), !dbg !4188
  store i32 %strategy, i32* %strategy.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %strategy.addr, metadata !957, metadata !1120), !dbg !4189
  store %struct.bufferinfo* %zdict, %struct.bufferinfo** %zdict.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %zdict.addr, metadata !958, metadata !1120), !dbg !4190
  %0 = bitcast %struct.compobject** %self to i8*, !dbg !4191
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4191
  call void @llvm.dbg.declare(metadata %struct.compobject** %self, metadata !959, metadata !1120), !dbg !4192
  store %struct.compobject* null, %struct.compobject** %self, align 8, !dbg !4192, !tbaa !1135
  %1 = bitcast i32* %err to i8*, !dbg !4193
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !4193
  call void @llvm.dbg.declare(metadata i32* %err, metadata !960, metadata !1120), !dbg !4194
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8, !dbg !4195, !tbaa !1135
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 0, !dbg !4197
  %3 = load i8*, i8** %buf, align 8, !dbg !4197, !tbaa !1436
  %cmp = icmp ne i8* %3, null, !dbg !4198
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4199

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8, !dbg !4200, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2, !dbg !4202
  %5 = load i64, i64* %len, align 8, !dbg !4202, !tbaa !1427
  %cmp1 = icmp ugt i64 %5, 4294967295, !dbg !4203
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4204

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4205, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i32 0, i32 0)), !dbg !4207
  br label %error, !dbg !4208

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Comptype), !dbg !4209
  store %struct.compobject* %call, %struct.compobject** %self, align 8, !dbg !4210, !tbaa !1135
  %7 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4211, !tbaa !1135
  %cmp2 = icmp eq %struct.compobject* %7, null, !dbg !4213
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !4214

if.then.3:                                        ; preds = %if.end
  br label %error, !dbg !4215

if.end.4:                                         ; preds = %if.end
  %8 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4216, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 1, !dbg !4217
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10, !dbg !4218
  store i8* null, i8** %opaque, align 8, !dbg !4219, !tbaa !4220
  %9 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4221, !tbaa !1135
  %zst5 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1, !dbg !4222
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst5, i32 0, i32 8, !dbg !4223
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8, !dbg !4224, !tbaa !4225
  %10 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4226, !tbaa !1135
  %zst6 = getelementptr inbounds %struct.compobject, %struct.compobject* %10, i32 0, i32 1, !dbg !4227
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst6, i32 0, i32 9, !dbg !4228
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8, !dbg !4229, !tbaa !4230
  %11 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4231, !tbaa !1135
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1, !dbg !4232
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 0, !dbg !4233
  store i8* null, i8** %next_in, align 8, !dbg !4234, !tbaa !1475
  %12 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4235, !tbaa !1135
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 1, !dbg !4236
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 1, !dbg !4237
  store i32 0, i32* %avail_in, align 4, !dbg !4238, !tbaa !1469
  %13 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4239, !tbaa !1135
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1, !dbg !4240
  %14 = load i32, i32* %level.addr, align 4, !dbg !4241, !tbaa !1390
  %15 = load i32, i32* %method.addr, align 4, !dbg !4242, !tbaa !1390
  %16 = load i32, i32* %wbits.addr, align 4, !dbg !4243, !tbaa !1390
  %17 = load i32, i32* %memLevel.addr, align 4, !dbg !4244, !tbaa !1390
  %18 = load i32, i32* %strategy.addr, align 4, !dbg !4245, !tbaa !1390
  %call10 = call i32 @deflateInit2_(%struct.z_stream_s* %zst9, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112), !dbg !4246
  store i32 %call10, i32* %err, align 4, !dbg !4247, !tbaa !1390
  %19 = load i32, i32* %err, align 4, !dbg !4248, !tbaa !1390
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end.4
  %Pivot.6 = icmp slt i32 %19, -2
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %19, 0
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %19, 0
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %19, -2
  br i1 %SwitchLeaf2, label %sw.bb.21, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %19, -4
  br i1 %SwitchLeaf, label %sw.bb.20, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.3
  %20 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4249, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 5, !dbg !4251
  store i32 1, i32* %is_initialised, align 4, !dbg !4252, !tbaa !1217
  %21 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8, !dbg !4253, !tbaa !1135
  %buf11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %21, i32 0, i32 0, !dbg !4255
  %22 = load i8*, i8** %buf11, align 8, !dbg !4255, !tbaa !1436
  %cmp12 = icmp eq i8* %22, null, !dbg !4256
  br i1 %cmp12, label %if.then.13, label %if.else, !dbg !4257

if.then.13:                                       ; preds = %sw.bb
  br label %success, !dbg !4258

if.else:                                          ; preds = %sw.bb
  %23 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4260, !tbaa !1135
  %zst14 = getelementptr inbounds %struct.compobject, %struct.compobject* %23, i32 0, i32 1, !dbg !4262
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8, !dbg !4263, !tbaa !1135
  %buf15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 0, !dbg !4264
  %25 = load i8*, i8** %buf15, align 8, !dbg !4264, !tbaa !1436
  %26 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8, !dbg !4265, !tbaa !1135
  %len16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %26, i32 0, i32 2, !dbg !4266
  %27 = load i64, i64* %len16, align 8, !dbg !4266, !tbaa !1427
  %conv = trunc i64 %27 to i32, !dbg !4267
  %call17 = call i32 @deflateSetDictionary(%struct.z_stream_s* %zst14, i8* %25, i32 %conv), !dbg !4268
  store i32 %call17, i32* %err, align 4, !dbg !4269, !tbaa !1390
  %28 = load i32, i32* %err, align 4, !dbg !4270, !tbaa !1390
  br label %NodeBlock.12

NodeBlock.12:                                     ; preds = %if.else
  %Pivot.13 = icmp slt i32 %28, 0
  br i1 %Pivot.13, label %LeafBlock.8, label %LeafBlock.10

LeafBlock.10:                                     ; preds = %NodeBlock.12
  %SwitchLeaf11 = icmp eq i32 %28, 0
  br i1 %SwitchLeaf11, label %sw.bb.18, label %NewDefault.7

LeafBlock.8:                                      ; preds = %NodeBlock.12
  %SwitchLeaf9 = icmp eq i32 %28, -2
  br i1 %SwitchLeaf9, label %sw.bb.19, label %NewDefault.7

sw.bb.18:                                         ; preds = %LeafBlock.10
  br label %success, !dbg !4271

sw.bb.19:                                         ; preds = %LeafBlock.8
  %29 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4273, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0)), !dbg !4274
  br label %error, !dbg !4275

NewDefault.7:                                     ; preds = %LeafBlock.10, %LeafBlock.8
  br label %sw.default

sw.default:                                       ; preds = %NewDefault.7
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4276, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0)), !dbg !4277
  br label %error, !dbg !4278

sw.bb.20:                                         ; preds = %LeafBlock
  %31 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4279, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0)), !dbg !4280
  br label %error, !dbg !4281

sw.bb.21:                                         ; preds = %LeafBlock.1
  %32 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4282, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0)), !dbg !4283
  br label %error, !dbg !4284

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default.22

sw.default.22:                                    ; preds = %NewDefault
  %33 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4285, !tbaa !1135
  %zst23 = getelementptr inbounds %struct.compobject, %struct.compobject* %33, i32 0, i32 1, !dbg !4286
  %34 = load i32, i32* %err, align 4, !dbg !4287, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst23, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i32 0, i32 0)), !dbg !4288
  br label %error, !dbg !4289

error:                                            ; preds = %sw.default.22, %sw.bb.21, %sw.bb.20, %sw.default, %sw.bb.19, %if.then.3, %if.then
  br label %do.body, !dbg !4290

do.body:                                          ; preds = %error
  %35 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4291
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !4291
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !961, metadata !1120), !dbg !4293
  %36 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4294, !tbaa !1135
  %37 = bitcast %struct.compobject* %36 to %struct._object*, !dbg !4295
  store %struct._object* %37, %struct._object** %_py_tmp, align 8, !dbg !4293, !tbaa !1135
  %38 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4296, !tbaa !1135
  %cmp24 = icmp ne %struct._object* %38, null, !dbg !4297
  br i1 %cmp24, label %if.then.26, label %if.end.33, !dbg !4298

if.then.26:                                       ; preds = %do.body
  store %struct.compobject* null, %struct.compobject** %self, align 8, !dbg !4299, !tbaa !1135
  br label %do.body.27, !dbg !4301

do.body.27:                                       ; preds = %if.then.26
  %39 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4302
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !4302
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !963, metadata !1120), !dbg !4304
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !4305, !tbaa !1135
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8, !dbg !4304, !tbaa !1135
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4306, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0, !dbg !4308
  %42 = load i64, i64* %ob_refcnt, align 8, !dbg !4309, !tbaa !1154
  %dec = add i64 %42, -1, !dbg !4309
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4309, !tbaa !1154
  %cmp28 = icmp ne i64 %dec, 0, !dbg !4310
  br i1 %cmp28, label %if.then.30, label %if.else.31, !dbg !4311

if.then.30:                                       ; preds = %do.body.27
  br label %if.end.32, !dbg !4312

if.else.31:                                       ; preds = %do.body.27
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4314, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1, !dbg !4316
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4316, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4, !dbg !4317
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4317, !tbaa !1262
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4318, !tbaa !1135
  call void %45(%struct._object* %46), !dbg !4319
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  %47 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4320
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !4320
  br label %do.cond, !dbg !4322

do.cond:                                          ; preds = %if.end.32
  br label %do.end, !dbg !4323

do.end:                                           ; preds = %do.cond
  br label %if.end.33, !dbg !4325

if.end.33:                                        ; preds = %do.end, %do.body
  %48 = bitcast %struct._object** %_py_tmp to i8*, !dbg !4327
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !4327
  br label %do.cond.34, !dbg !4330

do.cond.34:                                       ; preds = %if.end.33
  br label %do.end.35, !dbg !4331

do.end.35:                                        ; preds = %do.cond.34
  br label %success, !dbg !4333

success:                                          ; preds = %do.end.35, %sw.bb.18, %if.then.13
  %49 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4335, !tbaa !1135
  %50 = bitcast %struct.compobject* %49 to %struct._object*, !dbg !4336
  %51 = bitcast i32* %err to i8*, !dbg !4337
  call void @llvm.lifetime.end(i64 4, i8* %51) #1, !dbg !4337
  %52 = bitcast %struct.compobject** %self to i8*, !dbg !4337
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !4337
  ret %struct._object* %50, !dbg !4338
}

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #3

declare i32 @deflateSetDictionary(%struct.z_stream_s*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_crc32_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %value) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %value.addr = alloca i32, align 4
  %signed_val = alloca i32, align 4
  %buf = alloca i8*, align 8
  %len2 = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !976, metadata !1120), !dbg !4339
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !977, metadata !1120), !dbg !4340
  store i32 %value, i32* %value.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !978, metadata !1120), !dbg !4341
  %0 = bitcast i32* %signed_val to i8*, !dbg !4342
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4342
  call void @llvm.dbg.declare(metadata i32* %signed_val, metadata !979, metadata !1120), !dbg !4343
  %1 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4344, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %1, i32 0, i32 2, !dbg !4345
  %2 = load i64, i64* %len, align 8, !dbg !4345, !tbaa !1427
  %cmp = icmp sgt i64 %2, 5120, !dbg !4346
  br i1 %cmp, label %if.then, label %if.else, !dbg !4347

if.then:                                          ; preds = %entry
  %3 = bitcast i8** %buf to i8*, !dbg !4348
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4348
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !980, metadata !1120), !dbg !4349
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4350, !tbaa !1135
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 0, !dbg !4351
  %5 = load i8*, i8** %buf1, align 8, !dbg !4351, !tbaa !1436
  store i8* %5, i8** %buf, align 8, !dbg !4349, !tbaa !1135
  %6 = bitcast i64* %len2 to i8*, !dbg !4352
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4352
  call void @llvm.dbg.declare(metadata i64* %len2, metadata !983, metadata !1120), !dbg !4353
  %7 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4354, !tbaa !1135
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %7, i32 0, i32 2, !dbg !4355
  %8 = load i64, i64* %len3, align 8, !dbg !4355, !tbaa !1427
  store i64 %8, i64* %len2, align 8, !dbg !4353, !tbaa !1463
  %9 = bitcast %struct._ts** %_save to i8*, !dbg !4356
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4356
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !984, metadata !1120), !dbg !4357
  %call = call %struct._ts* @PyEval_SaveThread(), !dbg !4358
  store %struct._ts* %call, %struct._ts** %_save, align 8, !dbg !4359, !tbaa !1135
  br label %while.cond, !dbg !4360

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i64, i64* %len2, align 8, !dbg !4361, !tbaa !1463
  %cmp4 = icmp ugt i64 %10, 4294967295, !dbg !4364
  br i1 %cmp4, label %while.body, label %while.end, !dbg !4360

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %value.addr, align 4, !dbg !4365, !tbaa !1390
  %conv = zext i32 %11 to i64, !dbg !4365
  %12 = load i8*, i8** %buf, align 8, !dbg !4367, !tbaa !1135
  %call5 = call i64 @crc32(i64 %conv, i8* %12, i32 -1), !dbg !4368
  %conv6 = trunc i64 %call5 to i32, !dbg !4368
  store i32 %conv6, i32* %value.addr, align 4, !dbg !4369, !tbaa !1390
  %13 = load i8*, i8** %buf, align 8, !dbg !4370, !tbaa !1135
  %add.ptr = getelementptr i8, i8* %13, i64 4294967295, !dbg !4370
  store i8* %add.ptr, i8** %buf, align 8, !dbg !4370, !tbaa !1135
  %14 = load i64, i64* %len2, align 8, !dbg !4371, !tbaa !1463
  %sub = sub i64 %14, 4294967295, !dbg !4371
  store i64 %sub, i64* %len2, align 8, !dbg !4371, !tbaa !1463
  br label %while.cond, !dbg !4360

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %value.addr, align 4, !dbg !4372, !tbaa !1390
  %conv7 = zext i32 %15 to i64, !dbg !4372
  %16 = load i8*, i8** %buf, align 8, !dbg !4373, !tbaa !1135
  %17 = load i64, i64* %len2, align 8, !dbg !4374, !tbaa !1463
  %conv8 = trunc i64 %17 to i32, !dbg !4375
  %call9 = call i64 @crc32(i64 %conv7, i8* %16, i32 %conv8), !dbg !4376
  %conv10 = trunc i64 %call9 to i32, !dbg !4376
  store i32 %conv10, i32* %signed_val, align 4, !dbg !4377, !tbaa !1390
  %18 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !4378, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %18), !dbg !4379
  %19 = bitcast %struct._ts** %_save to i8*, !dbg !4380
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !4380
  %20 = bitcast i64* %len2 to i8*, !dbg !4381
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !4381
  %21 = bitcast i8** %buf to i8*, !dbg !4381
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !4381
  br label %if.end, !dbg !4382

if.else:                                          ; preds = %entry
  %22 = load i32, i32* %value.addr, align 4, !dbg !4383, !tbaa !1390
  %conv11 = zext i32 %22 to i64, !dbg !4383
  %23 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4385, !tbaa !1135
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %23, i32 0, i32 0, !dbg !4386
  %24 = load i8*, i8** %buf12, align 8, !dbg !4386, !tbaa !1436
  %25 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4387, !tbaa !1135
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %25, i32 0, i32 2, !dbg !4388
  %26 = load i64, i64* %len13, align 8, !dbg !4388, !tbaa !1427
  %conv14 = trunc i64 %26 to i32, !dbg !4389
  %call15 = call i64 @crc32(i64 %conv11, i8* %24, i32 %conv14), !dbg !4390
  %conv16 = trunc i64 %call15 to i32, !dbg !4390
  store i32 %conv16, i32* %signed_val, align 4, !dbg !4391, !tbaa !1390
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %27 = load i32, i32* %signed_val, align 4, !dbg !4392, !tbaa !1390
  %conv17 = zext i32 %27 to i64, !dbg !4392
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv17), !dbg !4393
  %28 = bitcast i32* %signed_val to i8*, !dbg !4394
  call void @llvm.lifetime.end(i64 4, i8* %28) #1, !dbg !4394
  ret %struct._object* %call18, !dbg !4395
}

declare i64 @crc32(i64, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_decompress_impl(%struct.PyModuleDef* %module, %struct.bufferinfo* %data, i32 %wbits, i32 %bufsize) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %data.addr = alloca %struct.bufferinfo*, align 8
  %wbits.addr = alloca i32, align 4
  %bufsize.addr = alloca i32, align 4
  %result_str = alloca %struct._object*, align 8
  %input = alloca i8*, align 8
  %length = alloca i32, align 4
  %err = alloca i32, align 4
  %new_bufsize = alloca i32, align 4
  %zst = alloca %struct.z_stream_s, align 8
  %_save = alloca %struct._ts*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !998, metadata !1120), !dbg !4396
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.bufferinfo** %data.addr, metadata !999, metadata !1120), !dbg !4397
  store i32 %wbits, i32* %wbits.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %wbits.addr, metadata !1000, metadata !1120), !dbg !4398
  store i32 %bufsize, i32* %bufsize.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %bufsize.addr, metadata !1001, metadata !1120), !dbg !4399
  %0 = bitcast %struct._object** %result_str to i8*, !dbg !4400
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4400
  call void @llvm.dbg.declare(metadata %struct._object** %result_str, metadata !1002, metadata !1120), !dbg !4401
  store %struct._object* null, %struct._object** %result_str, align 8, !dbg !4401, !tbaa !1135
  %1 = bitcast i8** %input to i8*, !dbg !4402
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4402
  call void @llvm.dbg.declare(metadata i8** %input, metadata !1003, metadata !1120), !dbg !4403
  %2 = bitcast i32* %length to i8*, !dbg !4404
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !4404
  call void @llvm.dbg.declare(metadata i32* %length, metadata !1004, metadata !1120), !dbg !4405
  %3 = bitcast i32* %err to i8*, !dbg !4406
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !4406
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1005, metadata !1120), !dbg !4407
  %4 = bitcast i32* %new_bufsize to i8*, !dbg !4408
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !4408
  call void @llvm.dbg.declare(metadata i32* %new_bufsize, metadata !1006, metadata !1120), !dbg !4409
  %5 = bitcast %struct.z_stream_s* %zst to i8*, !dbg !4410
  call void @llvm.lifetime.start(i64 112, i8* %5) #1, !dbg !4410
  call void @llvm.dbg.declare(metadata %struct.z_stream_s* %zst, metadata !1007, metadata !1120), !dbg !4411
  %6 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4412, !tbaa !1135
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %6, i32 0, i32 2, !dbg !4414
  %7 = load i64, i64* %len, align 8, !dbg !4414, !tbaa !1427
  %cmp = icmp ugt i64 %7, 4294967295, !dbg !4415
  br i1 %cmp, label %if.then, label %if.end, !dbg !4416

if.then:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !4417, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0)), !dbg !4419
  br label %error, !dbg !4420

if.end:                                           ; preds = %entry
  %9 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4421, !tbaa !1135
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %9, i32 0, i32 0, !dbg !4422
  %10 = load i8*, i8** %buf, align 8, !dbg !4422, !tbaa !1436
  store i8* %10, i8** %input, align 8, !dbg !4423, !tbaa !1135
  %11 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8, !dbg !4424, !tbaa !1135
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %11, i32 0, i32 2, !dbg !4425
  %12 = load i64, i64* %len1, align 8, !dbg !4425, !tbaa !1427
  %conv = trunc i64 %12 to i32, !dbg !4426
  store i32 %conv, i32* %length, align 4, !dbg !4427, !tbaa !1390
  %13 = load i32, i32* %bufsize.addr, align 4, !dbg !4428, !tbaa !1390
  %cmp2 = icmp eq i32 %13, 0, !dbg !4430
  br i1 %cmp2, label %if.then.4, label %if.end.5, !dbg !4431

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %bufsize.addr, align 4, !dbg !4432, !tbaa !1390
  br label %if.end.5, !dbg !4433

if.end.5:                                         ; preds = %if.then.4, %if.end
  %14 = load i32, i32* %length, align 4, !dbg !4434, !tbaa !1390
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1, !dbg !4435
  store i32 %14, i32* %avail_in, align 4, !dbg !4436, !tbaa !4109
  %15 = load i32, i32* %bufsize.addr, align 4, !dbg !4437, !tbaa !1390
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4, !dbg !4438
  store i32 %15, i32* %avail_out, align 4, !dbg !4439, !tbaa !4076
  %16 = load i32, i32* %bufsize.addr, align 4, !dbg !4440, !tbaa !1390
  %conv6 = zext i32 %16 to i64, !dbg !4440
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv6), !dbg !4442
  store %struct._object* %call, %struct._object** %result_str, align 8, !dbg !4443, !tbaa !1135
  %tobool = icmp ne %struct._object* %call, null, !dbg !4443
  br i1 %tobool, label %if.end.8, label %if.then.7, !dbg !4444

if.then.7:                                        ; preds = %if.end.5
  br label %error, !dbg !4445

if.end.8:                                         ; preds = %if.end.5
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10, !dbg !4446
  store i8* null, i8** %opaque, align 8, !dbg !4447, !tbaa !4091
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 8, !dbg !4448
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8, !dbg !4449, !tbaa !4094
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 9, !dbg !4450
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8, !dbg !4451, !tbaa !4097
  %17 = load %struct._object*, %struct._object** %result_str, align 8, !dbg !4452, !tbaa !1135
  %18 = bitcast %struct._object* %17 to %struct.PyBytesObject*, !dbg !4453
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %18, i32 0, i32 2, !dbg !4454
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !4455
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3, !dbg !4456
  store i8* %arraydecay, i8** %next_out, align 8, !dbg !4457, !tbaa !4101
  %19 = load i8*, i8** %input, align 8, !dbg !4458, !tbaa !1135
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 0, !dbg !4459
  store i8* %19, i8** %next_in, align 8, !dbg !4460, !tbaa !4105
  %20 = load i32, i32* %wbits.addr, align 4, !dbg !4461, !tbaa !1390
  %call9 = call i32 @inflateInit2_(%struct.z_stream_s* %zst, i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112), !dbg !4462
  store i32 %call9, i32* %err, align 4, !dbg !4463, !tbaa !1390
  %21 = load i32, i32* %err, align 4, !dbg !4464, !tbaa !1390
  br label %NodeBlock

NodeBlock:                                        ; preds = %if.end.8
  %Pivot = icmp slt i32 %21, 0
  br i1 %Pivot, label %LeafBlock, label %LeafBlock.1

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %21, 0
  br i1 %SwitchLeaf2, label %sw.epilog, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %21, -4
  br i1 %SwitchLeaf, label %sw.bb, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock
  %22 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4465, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0)), !dbg !4467
  br label %error, !dbg !4468

NewDefault:                                       ; preds = %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %call10 = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !4469
  %23 = load i32, i32* %err, align 4, !dbg !4470, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0)), !dbg !4471
  br label %error, !dbg !4472

sw.epilog:                                        ; preds = %LeafBlock.1
  br label %do.body, !dbg !4473

do.body:                                          ; preds = %do.cond, %sw.epilog
  %24 = bitcast %struct._ts** %_save to i8*, !dbg !4474
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !4474
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !1008, metadata !1120), !dbg !4475
  %call11 = call %struct._ts* @PyEval_SaveThread(), !dbg !4476
  store %struct._ts* %call11, %struct._ts** %_save, align 8, !dbg !4477, !tbaa !1135
  %call12 = call i32 @inflate(%struct.z_stream_s* %zst, i32 4), !dbg !4478
  store i32 %call12, i32* %err, align 4, !dbg !4479, !tbaa !1390
  %25 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !4480, !tbaa !1135
  call void @PyEval_RestoreThread(%struct._ts* %25), !dbg !4481
  %26 = bitcast %struct._ts** %_save to i8*, !dbg !4482
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4482
  %27 = load i32, i32* %err, align 4, !dbg !4483, !tbaa !1390
  br label %NodeBlock.10

NodeBlock.10:                                     ; preds = %do.body
  %Pivot.11 = icmp slt i32 %27, 0
  br i1 %Pivot.11, label %LeafBlock.4, label %NodeBlock.8

NodeBlock.8:                                      ; preds = %NodeBlock.10
  %Pivot.9 = icmp slt i32 %27, 1
  br i1 %Pivot.9, label %sw.bb.20, label %LeafBlock.6

LeafBlock.6:                                      ; preds = %NodeBlock.8
  %SwitchLeaf7 = icmp eq i32 %27, 1
  br i1 %SwitchLeaf7, label %sw.epilog.38, label %NewDefault.3

LeafBlock.4:                                      ; preds = %NodeBlock.10
  %SwitchLeaf5 = icmp eq i32 %27, -5
  br i1 %SwitchLeaf5, label %sw.bb.13, label %NewDefault.3

sw.bb.13:                                         ; preds = %LeafBlock.4
  %avail_out14 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4, !dbg !4484
  %28 = load i32, i32* %avail_out14, align 4, !dbg !4484, !tbaa !4076
  %cmp15 = icmp ugt i32 %28, 0, !dbg !4487
  br i1 %cmp15, label %if.then.17, label %if.end.19, !dbg !4488

if.then.17:                                       ; preds = %sw.bb.13
  %29 = load i32, i32* %err, align 4, !dbg !4489, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !4491
  %call18 = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !4492
  br label %error, !dbg !4493

if.end.19:                                        ; preds = %sw.bb.13
  br label %sw.bb.20, !dbg !4494

sw.bb.20:                                         ; preds = %NodeBlock.8, %if.end.19
  %30 = load i32, i32* %bufsize.addr, align 4, !dbg !4496, !tbaa !1390
  %cmp21 = icmp ule i32 %30, 2147483647, !dbg !4498
  br i1 %cmp21, label %if.then.23, label %if.else, !dbg !4499

if.then.23:                                       ; preds = %sw.bb.20
  %31 = load i32, i32* %bufsize.addr, align 4, !dbg !4500, !tbaa !1390
  %shl = shl i32 %31, 1, !dbg !4501
  store i32 %shl, i32* %new_bufsize, align 4, !dbg !4502, !tbaa !1390
  br label %if.end.24, !dbg !4503

if.else:                                          ; preds = %sw.bb.20
  store i32 -1, i32* %new_bufsize, align 4, !dbg !4504, !tbaa !1390
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %32 = load i32, i32* %new_bufsize, align 4, !dbg !4505, !tbaa !1390
  %conv25 = zext i32 %32 to i64, !dbg !4505
  %call26 = call i32 @_PyBytes_Resize(%struct._object** %result_str, i64 %conv25), !dbg !4507
  %cmp27 = icmp slt i32 %call26, 0, !dbg !4508
  br i1 %cmp27, label %if.then.29, label %if.end.31, !dbg !4509

if.then.29:                                       ; preds = %if.end.24
  %call30 = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !4510
  br label %error, !dbg !4512

if.end.31:                                        ; preds = %if.end.24
  %33 = load %struct._object*, %struct._object** %result_str, align 8, !dbg !4513, !tbaa !1135
  %34 = bitcast %struct._object* %33 to %struct.PyBytesObject*, !dbg !4514
  %ob_sval32 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %34, i32 0, i32 2, !dbg !4515
  %arraydecay33 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval32, i32 0, i32 0, !dbg !4516
  %35 = load i32, i32* %bufsize.addr, align 4, !dbg !4517, !tbaa !1390
  %idx.ext = zext i32 %35 to i64, !dbg !4518
  %add.ptr = getelementptr i8, i8* %arraydecay33, i64 %idx.ext, !dbg !4518
  %next_out34 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3, !dbg !4519
  store i8* %add.ptr, i8** %next_out34, align 8, !dbg !4520, !tbaa !4101
  %36 = load i32, i32* %bufsize.addr, align 4, !dbg !4521, !tbaa !1390
  %avail_out35 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4, !dbg !4522
  store i32 %36, i32* %avail_out35, align 4, !dbg !4523, !tbaa !4076
  %37 = load i32, i32* %new_bufsize, align 4, !dbg !4524, !tbaa !1390
  store i32 %37, i32* %bufsize.addr, align 4, !dbg !4525, !tbaa !1390
  br label %sw.epilog.38, !dbg !4526

NewDefault.3:                                     ; preds = %LeafBlock.6, %LeafBlock.4
  br label %sw.default.36

sw.default.36:                                    ; preds = %NewDefault.3
  %call37 = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !4527
  %38 = load i32, i32* %err, align 4, !dbg !4528, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0)), !dbg !4529
  br label %error, !dbg !4530

sw.epilog.38:                                     ; preds = %LeafBlock.6, %if.end.31
  br label %do.cond, !dbg !4531

do.cond:                                          ; preds = %sw.epilog.38
  %39 = load i32, i32* %err, align 4, !dbg !4532, !tbaa !1390
  %cmp39 = icmp ne i32 %39, 1, !dbg !4534
  br i1 %cmp39, label %do.body, label %do.end, !dbg !4531

do.end:                                           ; preds = %do.cond
  %call41 = call i32 @inflateEnd(%struct.z_stream_s* %zst), !dbg !4535
  store i32 %call41, i32* %err, align 4, !dbg !4536, !tbaa !1390
  %40 = load i32, i32* %err, align 4, !dbg !4537, !tbaa !1390
  %cmp42 = icmp ne i32 %40, 0, !dbg !4539
  br i1 %cmp42, label %if.then.44, label %if.end.45, !dbg !4540

if.then.44:                                       ; preds = %do.end
  %41 = load i32, i32* %err, align 4, !dbg !4541, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0)), !dbg !4543
  br label %error, !dbg !4544

if.end.45:                                        ; preds = %do.end
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5, !dbg !4545
  %42 = load i64, i64* %total_out, align 8, !dbg !4545, !tbaa !4151
  %call46 = call i32 @_PyBytes_Resize(%struct._object** %result_str, i64 %42), !dbg !4547
  %cmp47 = icmp slt i32 %call46, 0, !dbg !4548
  br i1 %cmp47, label %if.then.49, label %if.end.50, !dbg !4549

if.then.49:                                       ; preds = %if.end.45
  br label %error, !dbg !4550

if.end.50:                                        ; preds = %if.end.45
  %43 = load %struct._object*, %struct._object** %result_str, align 8, !dbg !4551, !tbaa !1135
  store %struct._object* %43, %struct._object** %retval, !dbg !4552
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4552

error:                                            ; preds = %if.then.49, %if.then.44, %sw.default.36, %if.then.29, %if.then.17, %sw.default, %sw.bb, %if.then.7, %if.then
  br label %do.body.51, !dbg !4553

do.body.51:                                       ; preds = %error
  %44 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4554
  call void @llvm.lifetime.start(i64 8, i8* %44) #1, !dbg !4554
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1011, metadata !1120), !dbg !4556
  %45 = load %struct._object*, %struct._object** %result_str, align 8, !dbg !4557, !tbaa !1135
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4556, !tbaa !1135
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4558, !tbaa !1135
  %cmp52 = icmp ne %struct._object* %46, null, !dbg !4559
  br i1 %cmp52, label %if.then.54, label %if.end.63, !dbg !4560

if.then.54:                                       ; preds = %do.body.51
  br label %do.body.55, !dbg !4561

do.body.55:                                       ; preds = %if.then.54
  %47 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4563
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !4563
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1013, metadata !1120), !dbg !4565
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !4566, !tbaa !1135
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8, !dbg !4565, !tbaa !1135
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4567, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !4569
  %50 = load i64, i64* %ob_refcnt, align 8, !dbg !4570, !tbaa !1154
  %dec = add i64 %50, -1, !dbg !4570
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4570, !tbaa !1154
  %cmp56 = icmp ne i64 %dec, 0, !dbg !4571
  br i1 %cmp56, label %if.then.58, label %if.else.59, !dbg !4572

if.then.58:                                       ; preds = %do.body.55
  br label %if.end.60, !dbg !4573

if.else.59:                                       ; preds = %do.body.55
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4575, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !4577
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4577, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !4578
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4578, !tbaa !1262
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4579, !tbaa !1135
  call void %53(%struct._object* %54), !dbg !4580
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.59, %if.then.58
  %55 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4581
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !4581
  br label %do.cond.61, !dbg !4583

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !4584

do.end.62:                                        ; preds = %do.cond.61
  br label %if.end.63, !dbg !4586

if.end.63:                                        ; preds = %do.end.62, %do.body.51
  %56 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !4588
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !4588
  br label %do.cond.64, !dbg !4591

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !4592

do.end.65:                                        ; preds = %do.cond.64
  store %struct._object* null, %struct._object** %retval, !dbg !4594
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4594

cleanup:                                          ; preds = %do.end.65, %if.end.50
  %57 = bitcast %struct.z_stream_s* %zst to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 112, i8* %57) #1, !dbg !4595
  %58 = bitcast i32* %new_bufsize to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 4, i8* %58) #1, !dbg !4595
  %59 = bitcast i32* %err to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !4595
  %60 = bitcast i32* %length to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 4, i8* %60) #1, !dbg !4595
  %61 = bitcast i8** %input to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !4595
  %62 = bitcast %struct._object** %result_str to i8*, !dbg !4595
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !4595
  %63 = load %struct._object*, %struct._object** %retval, !dbg !4595
  ret %struct._object* %63, !dbg !4595
}

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_decompressobj_impl(%struct.PyModuleDef* %module, i32 %wbits, %struct._object* %zdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %wbits.addr = alloca i32, align 4
  %zdict.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %self = alloca %struct.compobject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !1028, metadata !1120), !dbg !4596
  store i32 %wbits, i32* %wbits.addr, align 4, !tbaa !1390
  call void @llvm.dbg.declare(metadata i32* %wbits.addr, metadata !1029, metadata !1120), !dbg !4597
  store %struct._object* %zdict, %struct._object** %zdict.addr, align 8, !tbaa !1135
  call void @llvm.dbg.declare(metadata %struct._object** %zdict.addr, metadata !1030, metadata !1120), !dbg !4598
  %0 = bitcast i32* %err to i8*, !dbg !4599
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !4599
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1031, metadata !1120), !dbg !4600
  %1 = bitcast %struct.compobject** %self to i8*, !dbg !4601
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4601
  call void @llvm.dbg.declare(metadata %struct.compobject** %self, metadata !1032, metadata !1120), !dbg !4602
  %2 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4603, !tbaa !1135
  %cmp = icmp ne %struct._object* %2, null, !dbg !4605
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4606

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4607, !tbaa !1135
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1, !dbg !4609
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4609, !tbaa !1260
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 18, !dbg !4610
  %5 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !4610, !tbaa !4611
  %cmp1 = icmp ne %struct.PyBufferProcs* %5, null, !dbg !4612
  br i1 %cmp1, label %land.lhs.true.2, label %if.then, !dbg !4613

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4614, !tbaa !1135
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1, !dbg !4616
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8, !dbg !4616, !tbaa !1260
  %tp_as_buffer4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 18, !dbg !4617
  %8 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer4, align 8, !dbg !4617, !tbaa !4611
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %8, i32 0, i32 0, !dbg !4618
  %9 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !4618, !tbaa !4619
  %cmp5 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %9, null, !dbg !4621
  br i1 %cmp5, label %if.end, label %if.then, !dbg !4622

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true
  %10 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4623, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.83, i32 0, i32 0)), !dbg !4625
  store %struct._object* null, %struct._object** %retval, !dbg !4626
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4626

if.end:                                           ; preds = %land.lhs.true.2, %entry
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Decomptype), !dbg !4627
  store %struct.compobject* %call, %struct.compobject** %self, align 8, !dbg !4628, !tbaa !1135
  %11 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4629, !tbaa !1135
  %cmp6 = icmp eq %struct.compobject* %11, null, !dbg !4631
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !4632

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !4633
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4633

if.end.8:                                         ; preds = %if.end
  %12 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4634, !tbaa !1135
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 1, !dbg !4635
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10, !dbg !4636
  store i8* null, i8** %opaque, align 8, !dbg !4637, !tbaa !4220
  %13 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4638, !tbaa !1135
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1, !dbg !4639
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 8, !dbg !4640
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8, !dbg !4641, !tbaa !4225
  %14 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4642, !tbaa !1135
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 1, !dbg !4643
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 9, !dbg !4644
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8, !dbg !4645, !tbaa !4230
  %15 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4646, !tbaa !1135
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %15, i32 0, i32 1, !dbg !4647
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst11, i32 0, i32 0, !dbg !4648
  store i8* null, i8** %next_in, align 8, !dbg !4649, !tbaa !1475
  %16 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4650, !tbaa !1135
  %zst12 = getelementptr inbounds %struct.compobject, %struct.compobject* %16, i32 0, i32 1, !dbg !4651
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst12, i32 0, i32 1, !dbg !4652
  store i32 0, i32* %avail_in, align 4, !dbg !4653, !tbaa !1469
  %17 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4654, !tbaa !1135
  %cmp13 = icmp ne %struct._object* %17, null, !dbg !4656
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !4657

if.then.14:                                       ; preds = %if.end.8
  %18 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4658, !tbaa !1135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !4660
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !4661, !tbaa !1154
  %inc = add i64 %19, 1, !dbg !4661
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4661, !tbaa !1154
  %20 = load %struct._object*, %struct._object** %zdict.addr, align 8, !dbg !4662, !tbaa !1135
  %21 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4663, !tbaa !1135
  %zdict15 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 6, !dbg !4664
  store %struct._object* %20, %struct._object** %zdict15, align 8, !dbg !4665, !tbaa !1323
  br label %if.end.16, !dbg !4666

if.end.16:                                        ; preds = %if.then.14, %if.end.8
  %22 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4667, !tbaa !1135
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 1, !dbg !4668
  %23 = load i32, i32* %wbits.addr, align 4, !dbg !4669, !tbaa !1390
  %call18 = call i32 @inflateInit2_(%struct.z_stream_s* %zst17, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112), !dbg !4670
  store i32 %call18, i32* %err, align 4, !dbg !4671, !tbaa !1390
  %24 = load i32, i32* %err, align 4, !dbg !4672, !tbaa !1390
  br label %NodeBlock.5

NodeBlock.5:                                      ; preds = %if.end.16
  %Pivot.6 = icmp slt i32 %24, -2
  br i1 %Pivot.6, label %LeafBlock, label %NodeBlock

NodeBlock:                                        ; preds = %NodeBlock.5
  %Pivot = icmp slt i32 %24, 0
  br i1 %Pivot, label %LeafBlock.1, label %LeafBlock.3

LeafBlock.3:                                      ; preds = %NodeBlock
  %SwitchLeaf4 = icmp eq i32 %24, 0
  br i1 %SwitchLeaf4, label %sw.bb, label %NewDefault

LeafBlock.1:                                      ; preds = %NodeBlock
  %SwitchLeaf2 = icmp eq i32 %24, -2
  br i1 %SwitchLeaf2, label %sw.bb.19, label %NewDefault

LeafBlock:                                        ; preds = %NodeBlock.5
  %SwitchLeaf = icmp eq i32 %24, -4
  br i1 %SwitchLeaf, label %sw.bb.25, label %NewDefault

sw.bb:                                            ; preds = %LeafBlock.3
  %25 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4673, !tbaa !1135
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %25, i32 0, i32 5, !dbg !4674
  store i32 1, i32* %is_initialised, align 4, !dbg !4675, !tbaa !1217
  %26 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4676, !tbaa !1135
  %27 = bitcast %struct.compobject* %26 to %struct._object*, !dbg !4677
  store %struct._object* %27, %struct._object** %retval, !dbg !4678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4678

sw.bb.19:                                         ; preds = %LeafBlock.1
  br label %do.body, !dbg !4679

do.body:                                          ; preds = %sw.bb.19
  %28 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4680
  call void @llvm.lifetime.start(i64 8, i8* %28) #1, !dbg !4680
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1033, metadata !1120), !dbg !4682
  %29 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4683, !tbaa !1135
  %30 = bitcast %struct.compobject* %29 to %struct._object*, !dbg !4684
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8, !dbg !4682, !tbaa !1135
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4685, !tbaa !1135
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0, !dbg !4687
  %32 = load i64, i64* %ob_refcnt20, align 8, !dbg !4688, !tbaa !1154
  %dec = add i64 %32, -1, !dbg !4688
  store i64 %dec, i64* %ob_refcnt20, align 8, !dbg !4688, !tbaa !1154
  %cmp21 = icmp ne i64 %dec, 0, !dbg !4689
  br i1 %cmp21, label %if.then.22, label %if.else, !dbg !4690

if.then.22:                                       ; preds = %do.body
  br label %if.end.24, !dbg !4691

if.else:                                          ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4693, !tbaa !1135
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1, !dbg !4695
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8, !dbg !4695, !tbaa !1260
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4, !dbg !4696
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4696, !tbaa !1262
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4697, !tbaa !1135
  call void %35(%struct._object* %36), !dbg !4698
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  %37 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4699
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !4699
  br label %do.cond, !dbg !4701

do.cond:                                          ; preds = %if.end.24
  br label %do.end, !dbg !4702

do.end:                                           ; preds = %do.cond
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !4704, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0)), !dbg !4705
  store %struct._object* null, %struct._object** %retval, !dbg !4706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4706

sw.bb.25:                                         ; preds = %LeafBlock
  br label %do.body.26, !dbg !4707

do.body.26:                                       ; preds = %sw.bb.25
  %39 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !4708
  call void @llvm.lifetime.start(i64 8, i8* %39) #1, !dbg !4708
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp27, metadata !1036, metadata !1120), !dbg !4710
  %40 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4711, !tbaa !1135
  %41 = bitcast %struct.compobject* %40 to %struct._object*, !dbg !4712
  store %struct._object* %41, %struct._object** %_py_decref_tmp27, align 8, !dbg !4710, !tbaa !1135
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4713, !tbaa !1135
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0, !dbg !4715
  %43 = load i64, i64* %ob_refcnt28, align 8, !dbg !4716, !tbaa !1154
  %dec29 = add i64 %43, -1, !dbg !4716
  store i64 %dec29, i64* %ob_refcnt28, align 8, !dbg !4716, !tbaa !1154
  %cmp30 = icmp ne i64 %dec29, 0, !dbg !4717
  br i1 %cmp30, label %if.then.31, label %if.else.32, !dbg !4718

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35, !dbg !4719

if.else.32:                                       ; preds = %do.body.26
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4721, !tbaa !1135
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1, !dbg !4723
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !4723, !tbaa !1260
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4, !dbg !4724
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8, !dbg !4724, !tbaa !1262
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8, !dbg !4725, !tbaa !1135
  call void %46(%struct._object* %47), !dbg !4726
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  %48 = bitcast %struct._object** %_py_decref_tmp27 to i8*, !dbg !4727
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !4727
  br label %do.cond.36, !dbg !4728

do.cond.36:                                       ; preds = %if.end.35
  br label %do.end.37, !dbg !4729

do.end.37:                                        ; preds = %do.cond.36
  %49 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4731, !tbaa !1135
  call void @PyErr_SetString(%struct._object* %49, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0)), !dbg !4732
  store %struct._object* null, %struct._object** %retval, !dbg !4733
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4733

NewDefault:                                       ; preds = %LeafBlock.3, %LeafBlock.1, %LeafBlock
  br label %sw.default

sw.default:                                       ; preds = %NewDefault
  %50 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4734, !tbaa !1135
  %zst38 = getelementptr inbounds %struct.compobject, %struct.compobject* %50, i32 0, i32 1, !dbg !4735
  %51 = load i32, i32* %err, align 4, !dbg !4736, !tbaa !1390
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst38, i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0)), !dbg !4737
  br label %do.body.39, !dbg !4738

do.body.39:                                       ; preds = %sw.default
  %52 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4739
  call void @llvm.lifetime.start(i64 8, i8* %52) #1, !dbg !4739
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp40, metadata !1038, metadata !1120), !dbg !4741
  %53 = load %struct.compobject*, %struct.compobject** %self, align 8, !dbg !4742, !tbaa !1135
  %54 = bitcast %struct.compobject* %53 to %struct._object*, !dbg !4743
  store %struct._object* %54, %struct._object** %_py_decref_tmp40, align 8, !dbg !4741, !tbaa !1135
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4744, !tbaa !1135
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !4746
  %56 = load i64, i64* %ob_refcnt41, align 8, !dbg !4747, !tbaa !1154
  %dec42 = add i64 %56, -1, !dbg !4747
  store i64 %dec42, i64* %ob_refcnt41, align 8, !dbg !4747, !tbaa !1154
  %cmp43 = icmp ne i64 %dec42, 0, !dbg !4748
  br i1 %cmp43, label %if.then.44, label %if.else.45, !dbg !4749

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48, !dbg !4750

if.else.45:                                       ; preds = %do.body.39
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4752, !tbaa !1135
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1, !dbg !4754
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8, !dbg !4754, !tbaa !1260
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4, !dbg !4755
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8, !dbg !4755, !tbaa !1262
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8, !dbg !4756, !tbaa !1135
  call void %59(%struct._object* %60), !dbg !4757
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  %61 = bitcast %struct._object** %_py_decref_tmp40 to i8*, !dbg !4758
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !4758
  br label %do.cond.49, !dbg !4759

do.cond.49:                                       ; preds = %if.end.48
  br label %do.end.50, !dbg !4760

do.end.50:                                        ; preds = %do.cond.49
  store %struct._object* null, %struct._object** %retval, !dbg !4762
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4762

cleanup:                                          ; preds = %do.end.50, %do.end.37, %do.end, %sw.bb, %if.then.7, %if.then
  %62 = bitcast %struct.compobject** %self to i8*, !dbg !4763
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !4763
  %63 = bitcast i32* %err to i8*, !dbg !4763
  call void @llvm.lifetime.end(i64 4, i8* %63) #1, !dbg !4763
  %64 = load %struct._object*, %struct._object** %retval, !dbg !4763
  ret %struct._object* %64, !dbg !4763
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1115, !1116, !1117}
!llvm.ident = !{!1118}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !415, globals: !1040)
!1 = !DIFile(filename: "zlibmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5, !94, !348, !350, !352, !360, !96, !412, !413, !52, !414, !44, !11}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !7, line: 109, baseType: !8)
!7 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !7, line: 105, size: 128, align: 64, elements: !9)
!9 = !{!10, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !8, file: !7, line: 107, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !14, line: 102, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !16, line: 181, baseType: !17)
!16 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !8, file: !7, line: 108, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !7, line: 334, size: 3200, align: 64, elements: !21)
!21 = !{!22, !28, !32, !33, !34, !39, !102, !107, !112, !113, !118, !170, !201, !213, !219, !220, !221, !223, !225, !256, !257, !258, !267, !268, !273, !274, !276, !278, !288, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !20, file: !7, line: 335, baseType: !23, size: 192, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !7, line: 114, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 111, size: 192, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !7, line: 112, baseType: !6, size: 128, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !24, file: !7, line: 113, baseType: !11, size: 64, align: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !20, file: !7, line: 336, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 256)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !20, file: !7, line: 337, baseType: !11, size: 64, align: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !20, file: !7, line: 341, baseType: !35, size: 64, align: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !7, line: 308, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !5}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !20, file: !7, line: 342, baseType: !40, size: 64, align: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !7, line: 314, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !5, !45, !44}
!44 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 48, baseType: !47)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 246, size: 1728, align: 64, elements: !49)
!48 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !71, !72, !73, !74, !76, !78, !80, !84, !87, !89, !90, !91, !92, !93, !97, !98}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 247, baseType: !44, size: 32, align: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 252, baseType: !52, size: 64, align: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 253, baseType: !52, size: 64, align: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 254, baseType: !52, size: 64, align: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 255, baseType: !52, size: 64, align: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 256, baseType: !52, size: 64, align: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 257, baseType: !52, size: 64, align: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 258, baseType: !52, size: 64, align: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 259, baseType: !52, size: 64, align: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 261, baseType: !52, size: 64, align: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 262, baseType: !52, size: 64, align: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 263, baseType: !52, size: 64, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 265, baseType: !64, size: 64, align: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 161, size: 192, align: 64, elements: !66)
!66 = !{!67, !68, !70}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !65, file: !48, line: 162, baseType: !64, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !65, file: !48, line: 163, baseType: !69, size: 64, align: 64, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !65, file: !48, line: 167, baseType: !44, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 267, baseType: !69, size: 64, align: 64, offset: 832)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 269, baseType: !44, size: 32, align: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 273, baseType: !44, size: 32, align: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 275, baseType: !75, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !16, line: 140, baseType: !17)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 279, baseType: !77, size: 16, align: 16, offset: 1024)
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 280, baseType: !79, size: 8, align: 8, offset: 1040)
!79 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 281, baseType: !81, size: 8, align: 8, offset: 1048)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 8, align: 8, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 1)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 285, baseType: !85, size: 64, align: 64, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 155, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 294, baseType: !88, size: 64, align: 64, offset: 1152)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !16, line: 141, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !47, file: !48, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !47, file: !48, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !47, file: !48, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !47, file: !48, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 307, baseType: !94, size: 64, align: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 62, baseType: !96)
!95 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!96 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 309, baseType: !44, size: 32, align: 32, offset: 1536)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 311, baseType: !99, size: 160, align: 8, offset: 1568)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 160, align: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 20)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !20, file: !7, line: 343, baseType: !103, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !7, line: 316, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!5, !5, !52}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !20, file: !7, line: 344, baseType: !108, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !7, line: 318, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!44, !5, !52, !5}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !20, file: !7, line: 345, baseType: !4, size: 64, align: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !20, file: !7, line: 346, baseType: !114, size: 64, align: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !7, line: 320, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!5, !5}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !20, file: !7, line: 350, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !7, line: 278, baseType: !121)
!121 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 236, size: 2176, align: 64, elements: !122)
!122 = !{!123, !128, !129, !130, !131, !132, !137, !139, !140, !141, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !121, file: !7, line: 241, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !7, line: 166, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!5, !5, !5}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !121, file: !7, line: 242, baseType: !124, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !121, file: !7, line: 243, baseType: !124, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !121, file: !7, line: 244, baseType: !124, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !121, file: !7, line: 245, baseType: !124, size: 64, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !121, file: !7, line: 246, baseType: !133, size: 64, align: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !7, line: 167, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!5, !5, !5, !5}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !121, file: !7, line: 247, baseType: !138, size: 64, align: 64, offset: 384)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !7, line: 165, baseType: !115)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !121, file: !7, line: 248, baseType: !138, size: 64, align: 64, offset: 448)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !121, file: !7, line: 249, baseType: !138, size: 64, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !121, file: !7, line: 250, baseType: !142, size: 64, align: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !7, line: 168, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!44, !5}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !121, file: !7, line: 251, baseType: !138, size: 64, align: 64, offset: 640)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !121, file: !7, line: 252, baseType: !124, size: 64, align: 64, offset: 704)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !121, file: !7, line: 253, baseType: !124, size: 64, align: 64, offset: 768)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !121, file: !7, line: 254, baseType: !124, size: 64, align: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !121, file: !7, line: 255, baseType: !124, size: 64, align: 64, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !121, file: !7, line: 256, baseType: !124, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !121, file: !7, line: 257, baseType: !138, size: 64, align: 64, offset: 1024)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !121, file: !7, line: 258, baseType: !4, size: 64, align: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !121, file: !7, line: 259, baseType: !138, size: 64, align: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !121, file: !7, line: 261, baseType: !124, size: 64, align: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !121, file: !7, line: 262, baseType: !124, size: 64, align: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !121, file: !7, line: 263, baseType: !124, size: 64, align: 64, offset: 1344)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !121, file: !7, line: 264, baseType: !124, size: 64, align: 64, offset: 1408)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !121, file: !7, line: 265, baseType: !133, size: 64, align: 64, offset: 1472)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !121, file: !7, line: 266, baseType: !124, size: 64, align: 64, offset: 1536)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !121, file: !7, line: 267, baseType: !124, size: 64, align: 64, offset: 1600)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !121, file: !7, line: 268, baseType: !124, size: 64, align: 64, offset: 1664)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !121, file: !7, line: 269, baseType: !124, size: 64, align: 64, offset: 1728)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !121, file: !7, line: 270, baseType: !124, size: 64, align: 64, offset: 1792)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !121, file: !7, line: 272, baseType: !124, size: 64, align: 64, offset: 1856)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !121, file: !7, line: 273, baseType: !124, size: 64, align: 64, offset: 1920)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !121, file: !7, line: 274, baseType: !124, size: 64, align: 64, offset: 1984)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !121, file: !7, line: 275, baseType: !124, size: 64, align: 64, offset: 2048)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !121, file: !7, line: 277, baseType: !138, size: 64, align: 64, offset: 2112)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !20, file: !7, line: 351, baseType: !171, size: 64, align: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !7, line: 292, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 280, size: 640, align: 64, elements: !174)
!174 = !{!175, !180, !181, !186, !187, !188, !193, !194, !199, !200}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !173, file: !7, line: 281, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !7, line: 169, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!11, !5}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !173, file: !7, line: 282, baseType: !124, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !173, file: !7, line: 283, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !7, line: 170, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !11}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !173, file: !7, line: 284, baseType: !182, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !173, file: !7, line: 285, baseType: !4, size: 64, align: 64, offset: 256)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !173, file: !7, line: 286, baseType: !189, size: 64, align: 64, offset: 320)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !7, line: 172, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!44, !5, !11, !5}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !173, file: !7, line: 287, baseType: !4, size: 64, align: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !173, file: !7, line: 288, baseType: !195, size: 64, align: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !7, line: 231, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!44, !5, !5}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !173, file: !7, line: 290, baseType: !124, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !173, file: !7, line: 291, baseType: !182, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !20, file: !7, line: 352, baseType: !202, size: 64, align: 64, offset: 896)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !7, line: 298, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 294, size: 192, align: 64, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !204, file: !7, line: 295, baseType: !176, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !204, file: !7, line: 296, baseType: !124, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !204, file: !7, line: 297, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !7, line: 174, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!44, !5, !5, !5}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !20, file: !7, line: 356, baseType: !214, size: 64, align: 64, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !7, line: 321, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!218, !5}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !12, line: 186, baseType: !11)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !20, file: !7, line: 357, baseType: !133, size: 64, align: 64, offset: 1024)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !20, file: !7, line: 358, baseType: !114, size: 64, align: 64, offset: 1088)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !20, file: !7, line: 359, baseType: !222, size: 64, align: 64, offset: 1152)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !7, line: 317, baseType: !125)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !20, file: !7, line: 360, baseType: !224, size: 64, align: 64, offset: 1216)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !7, line: 319, baseType: !210)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !20, file: !7, line: 363, baseType: !226, size: 64, align: 64, offset: 1280)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !7, line: 304, baseType: !228)
!228 = !DICompositeType(tag: DW_TAG_structure_type, file: !7, line: 301, size: 128, align: 64, elements: !229)
!229 = !{!230, !251}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !228, file: !7, line: 302, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !7, line: 193, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!44, !5, !235, !44}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !7, line: 191, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !7, line: 178, size: 640, align: 64, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !248, !249, !250}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !7, line: 179, baseType: !4, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !237, file: !7, line: 180, baseType: !5, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !237, file: !7, line: 181, baseType: !11, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !237, file: !7, line: 182, baseType: !11, size: 64, align: 64, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !237, file: !7, line: 184, baseType: !44, size: 32, align: 32, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !237, file: !7, line: 185, baseType: !44, size: 32, align: 32, offset: 288)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !237, file: !7, line: 186, baseType: !52, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !237, file: !7, line: 187, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !237, file: !7, line: 188, baseType: !247, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !237, file: !7, line: 189, baseType: !247, size: 64, align: 64, offset: 512)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !237, file: !7, line: 190, baseType: !4, size: 64, align: 64, offset: 576)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !228, file: !7, line: 303, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !7, line: 194, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !5, !235}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !20, file: !7, line: 366, baseType: !96, size: 64, align: 64, offset: 1344)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !20, file: !7, line: 368, baseType: !29, size: 64, align: 64, offset: 1408)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !20, file: !7, line: 372, baseType: !259, size: 64, align: 64, offset: 1472)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !7, line: 233, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!44, !5, !263, !4}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !7, line: 232, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!44, !5, !4}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !20, file: !7, line: 375, baseType: !142, size: 64, align: 64, offset: 1536)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !20, file: !7, line: 379, baseType: !269, size: 64, align: 64, offset: 1600)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !7, line: 322, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!5, !5, !5, !44}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !20, file: !7, line: 382, baseType: !11, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !20, file: !7, line: 385, baseType: !275, size: 64, align: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !7, line: 323, baseType: !115)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !20, file: !7, line: 386, baseType: !277, size: 64, align: 64, offset: 1792)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !7, line: 324, baseType: !115)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !20, file: !7, line: 389, baseType: !279, size: 64, align: 64, offset: 1856)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !281, line: 40, size: 256, align: 64, elements: !282)
!281 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!282 = !{!283, !284, !286, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !280, file: !281, line: 41, baseType: !29, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !280, file: !281, line: 42, baseType: !285, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !281, line: 18, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !280, file: !281, line: 43, baseType: !44, size: 32, align: 32, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !280, file: !281, line: 45, baseType: !29, size: 64, align: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !20, file: !7, line: 390, baseType: !289, size: 64, align: 64, offset: 1920)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !291, line: 18, size: 320, align: 64, elements: !292)
!291 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!292 = !{!293, !294, !295, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !291, line: 19, baseType: !52, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !290, file: !291, line: 20, baseType: !44, size: 32, align: 32, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !290, file: !291, line: 21, baseType: !11, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !290, file: !291, line: 22, baseType: !44, size: 32, align: 32, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !290, file: !291, line: 23, baseType: !52, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !20, file: !7, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !52, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!5, !5, !4}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!44, !5, !5, !4}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !52, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !4, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !20, file: !7, line: 392, baseType: !19, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !20, file: !7, line: 393, baseType: !5, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !20, file: !7, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !7, line: 325, baseType: !134)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !20, file: !7, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !7, line: 326, baseType: !210)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !20, file: !7, line: 396, baseType: !11, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !20, file: !7, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !7, line: 327, baseType: !210)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !20, file: !7, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !7, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !19, !11}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !20, file: !7, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !7, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!5, !19, !5, !5}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !20, file: !7, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !7, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !4}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !20, file: !7, line: 401, baseType: !142, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !20, file: !7, line: 402, baseType: !5, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !20, file: !7, line: 403, baseType: !5, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !20, file: !7, line: 404, baseType: !5, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !20, file: !7, line: 405, baseType: !5, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !20, file: !7, line: 406, baseType: !5, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !20, file: !7, line: 407, baseType: !35, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !20, file: !7, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !20, file: !7, line: 412, baseType: !35, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !354, line: 41, baseType: !355)
!354 = !DIFile(filename: "./Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!355 = !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 31, size: 320, align: 64, elements: !356)
!356 = !{!357, !358, !359}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !355, file: !354, line: 32, baseType: !23, size: 192, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !355, file: !354, line: 33, baseType: !218, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !355, file: !354, line: 34, baseType: !81, size: 8, align: 8, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "compobject", file: !362, line: 52, baseType: !363)
!362 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/zlibmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!363 = !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 40, size: 1344, align: 64, elements: !364)
!364 = !{!365, !366, !404, !405, !406, !407, !408, !409}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !363, file: !362, line: 42, baseType: !6, size: 128, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "zst", scope: !363, file: !362, line: 43, baseType: !367, size: 896, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "z_stream", file: !368, line: 104, baseType: !369)
!368 = !DIFile(filename: "/usr/include/zlib.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "z_stream_s", file: !368, line: 85, size: 896, align: 64, elements: !370)
!370 = !{!371, !376, !378, !380, !381, !382, !383, !384, !389, !395, !400, !401, !402, !403}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next_in", scope: !369, file: !368, line: 86, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bytef", file: !374, line: 374, baseType: !375)
!374 = !DIFile(filename: "/usr/include/zconf.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "Byte", file: !374, line: 365, baseType: !351)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "avail_in", scope: !369, file: !368, line: 87, baseType: !377, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uInt", file: !374, line: 367, baseType: !348)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "total_in", scope: !369, file: !368, line: 88, baseType: !379, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uLong", file: !374, line: 368, baseType: !96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next_out", scope: !369, file: !368, line: 90, baseType: !372, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "avail_out", scope: !369, file: !368, line: 91, baseType: !377, size: 32, align: 32, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "total_out", scope: !369, file: !368, line: 92, baseType: !379, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !369, file: !368, line: 94, baseType: !52, size: 64, align: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !369, file: !368, line: 95, baseType: !385, size: 64, align: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "internal_state", file: !368, line: 1725, size: 32, align: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !386, file: !368, line: 1725, baseType: !44, size: 32, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "zalloc", scope: !369, file: !368, line: 97, baseType: !390, size: 64, align: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_func", file: !368, line: 80, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!394, !394, !377, !377}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "voidpf", file: !374, line: 383, baseType: !4)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "zfree", scope: !369, file: !368, line: 98, baseType: !396, size: 64, align: 64, offset: 576)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "free_func", file: !368, line: 81, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !394, !394}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !369, file: !368, line: 99, baseType: !394, size: 64, align: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data_type", scope: !369, file: !368, line: 101, baseType: !44, size: 32, align: 32, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "adler", scope: !369, file: !368, line: 102, baseType: !379, size: 64, align: 64, offset: 768)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !369, file: !368, line: 103, baseType: !379, size: 64, align: 64, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "unused_data", scope: !363, file: !362, line: 44, baseType: !5, size: 64, align: 64, offset: 1024)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "unconsumed_tail", scope: !363, file: !362, line: 45, baseType: !5, size: 64, align: 64, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !363, file: !362, line: 46, baseType: !31, size: 8, align: 8, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_initialised", scope: !363, file: !362, line: 47, baseType: !44, size: 32, align: 32, offset: 1184)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "zdict", scope: !363, file: !362, line: 48, baseType: !5, size: 64, align: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !363, file: !362, line: 50, baseType: !410, size: 64, align: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !411, line: 5, baseType: !4)
!411 = !DIFile(filename: "./Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!415 = !{!416, !422, !427, !445, !454, !556, !564, !570, !614, !618, !649, !665, !668, !675, !681, !750, !770, !776, !820, !824, !853, !886, !899, !906, !921, !928, !934, !948, !967, !974, !986, !994, !1016, !1024}
!416 = !DISubprogram(name: "PyInit_zlib", scope: !362, file: !362, line: 1353, type: !417, isLocal: false, isDefinition: true, scopeLine: 1354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_zlib, variables: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!5}
!419 = !{!420, !421}
!420 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !416, file: !362, line: 1355, type: !5)
!421 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ver", scope: !416, file: !362, line: 1355, type: !5)
!422 = !DISubprogram(name: "Comp_dealloc", scope: !362, file: !362, line: 542, type: !423, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.compobject*)* @Comp_dealloc, variables: !425)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !360}
!425 = !{!426}
!426 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !422, file: !362, line: 542, type: !360)
!427 = !DISubprogram(name: "Dealloc", scope: !362, file: !362, line: 530, type: !423, isLocal: true, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.compobject*)* @Dealloc, variables: !428)
!428 = !{!429, !430, !432, !435, !437, !440, !442}
!429 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !427, file: !362, line: 530, type: !360)
!430 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !431, file: !362, line: 535, type: !5)
!431 = distinct !DILexicalBlock(scope: !427, file: !362, line: 535, column: 8)
!432 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !433, file: !362, line: 535, type: !5)
!433 = distinct !DILexicalBlock(scope: !434, file: !362, line: 535, column: 109)
!434 = distinct !DILexicalBlock(scope: !431, file: !362, line: 535, column: 75)
!435 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !436, file: !362, line: 536, type: !5)
!436 = distinct !DILexicalBlock(scope: !427, file: !362, line: 536, column: 8)
!437 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !438, file: !362, line: 536, type: !5)
!438 = distinct !DILexicalBlock(scope: !439, file: !362, line: 536, column: 113)
!439 = distinct !DILexicalBlock(scope: !436, file: !362, line: 536, column: 79)
!440 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !441, file: !362, line: 537, type: !5)
!441 = distinct !DILexicalBlock(scope: !427, file: !362, line: 537, column: 8)
!442 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !443, file: !362, line: 537, type: !5)
!443 = distinct !DILexicalBlock(scope: !444, file: !362, line: 537, column: 103)
!444 = distinct !DILexicalBlock(scope: !441, file: !362, line: 537, column: 69)
!445 = !DISubprogram(name: "zlib_Compress_compress", scope: !446, file: !446, line: 198, type: !447, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_compress, variables: !449)
!446 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/clinic/zlibmodule.c.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!447 = !DISubroutineType(types: !448)
!448 = !{!5, !360, !5}
!449 = !{!450, !451, !452, !453}
!450 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !445, file: !446, line: 198, type: !360)
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !445, file: !446, line: 198, type: !5)
!452 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !445, file: !446, line: 200, type: !5)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !445, file: !446, line: 201, type: !236)
!454 = !DISubprogram(name: "zlib_Compress_compress_impl", scope: !362, file: !362, line: 572, type: !455, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct.bufferinfo*)* @zlib_Compress_compress_impl, variables: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!5, !360, !235}
!457 = !{!458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !527, !529, !534, !538, !540, !544, !548, !552}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !454, file: !362, line: 572, type: !360)
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !454, file: !362, line: 572, type: !235)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !454, file: !362, line: 575, type: !44)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inplen", scope: !454, file: !362, line: 576, type: !348)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !454, file: !362, line: 577, type: !348)
!463 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_length", scope: !454, file: !362, line: 577, type: !348)
!464 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "RetVal", scope: !454, file: !362, line: 578, type: !5)
!465 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !454, file: !362, line: 579, type: !414)
!466 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_total_out", scope: !454, file: !362, line: 580, type: !96)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !468, file: !362, line: 593, type: !469)
!468 = distinct !DILexicalBlock(scope: !454, file: !362, line: 593, column: 5)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !471, line: 139, baseType: !472)
!471 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !471, line: 69, size: 1536, align: 64, elements: !473)
!473 = !{!474, !476, !477, !497, !500, !501, !502, !503, !504, !505, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !472, file: !471, line: 72, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !472, file: !471, line: 73, baseType: !475, size: 64, align: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !472, file: !471, line: 74, baseType: !478, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !471, line: 44, baseType: !480)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !471, line: 19, size: 832, align: 64, elements: !481)
!481 = !{!482, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !471, line: 21, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !480, file: !471, line: 22, baseType: !475, size: 64, align: 64, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !480, file: !471, line: 24, baseType: !5, size: 64, align: 64, offset: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !480, file: !471, line: 25, baseType: !5, size: 64, align: 64, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !480, file: !471, line: 26, baseType: !5, size: 64, align: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !480, file: !471, line: 27, baseType: !5, size: 64, align: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !480, file: !471, line: 28, baseType: !5, size: 64, align: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !480, file: !471, line: 30, baseType: !5, size: 64, align: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !480, file: !471, line: 31, baseType: !5, size: 64, align: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !480, file: !471, line: 32, baseType: !5, size: 64, align: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !480, file: !471, line: 33, baseType: !44, size: 32, align: 32, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !480, file: !471, line: 34, baseType: !44, size: 32, align: 32, offset: 672)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !480, file: !471, line: 37, baseType: !44, size: 32, align: 32, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !480, file: !471, line: 43, baseType: !5, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !472, file: !471, line: 76, baseType: !498, size: 64, align: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !471, line: 50, flags: DIFlagFwdDecl)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !472, file: !471, line: 77, baseType: !44, size: 32, align: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !472, file: !471, line: 78, baseType: !31, size: 8, align: 8, offset: 288)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !472, file: !471, line: 80, baseType: !31, size: 8, align: 8, offset: 296)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !472, file: !471, line: 85, baseType: !44, size: 32, align: 32, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !472, file: !471, line: 86, baseType: !44, size: 32, align: 32, offset: 352)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !472, file: !471, line: 88, baseType: !506, size: 64, align: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !471, line: 54, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!44, !5, !498, !44, !5}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !472, file: !471, line: 89, baseType: !506, size: 64, align: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !472, file: !471, line: 90, baseType: !5, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !472, file: !471, line: 91, baseType: !5, size: 64, align: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !472, file: !471, line: 93, baseType: !5, size: 64, align: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !472, file: !471, line: 94, baseType: !5, size: 64, align: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !472, file: !471, line: 95, baseType: !5, size: 64, align: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !472, file: !471, line: 97, baseType: !5, size: 64, align: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !472, file: !471, line: 98, baseType: !5, size: 64, align: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !472, file: !471, line: 99, baseType: !5, size: 64, align: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !472, file: !471, line: 101, baseType: !5, size: 64, align: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !472, file: !471, line: 103, baseType: !44, size: 32, align: 32, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !472, file: !471, line: 105, baseType: !5, size: 64, align: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !472, file: !471, line: 106, baseType: !17, size: 64, align: 64, offset: 1216)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !472, file: !471, line: 108, baseType: !44, size: 32, align: 32, offset: 1280)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !472, file: !471, line: 109, baseType: !5, size: 64, align: 64, offset: 1344)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !472, file: !471, line: 134, baseType: !337, size: 64, align: 64, offset: 1408)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !472, file: !471, line: 135, baseType: !4, size: 64, align: 64, offset: 1472)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !528, file: !362, line: 601, type: !469)
!528 = distinct !DILexicalBlock(scope: !454, file: !362, line: 601, column: 5)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !530, file: !362, line: 613, type: !5)
!530 = distinct !DILexicalBlock(scope: !531, file: !362, line: 613, column: 16)
!531 = distinct !DILexicalBlock(scope: !532, file: !362, line: 612, column: 55)
!532 = distinct !DILexicalBlock(scope: !533, file: !362, line: 612, column: 13)
!533 = distinct !DILexicalBlock(scope: !454, file: !362, line: 607, column: 50)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !535, file: !362, line: 613, type: !5)
!535 = distinct !DILexicalBlock(scope: !536, file: !362, line: 613, column: 115)
!536 = distinct !DILexicalBlock(scope: !537, file: !362, line: 613, column: 87)
!537 = distinct !DILexicalBlock(scope: !530, file: !362, line: 613, column: 64)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !539, file: !362, line: 621, type: !469)
!539 = distinct !DILexicalBlock(scope: !533, file: !362, line: 621, column: 9)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !541, file: !362, line: 632, type: !5)
!541 = distinct !DILexicalBlock(scope: !542, file: !362, line: 632, column: 12)
!542 = distinct !DILexicalBlock(scope: !543, file: !362, line: 630, column: 34)
!543 = distinct !DILexicalBlock(scope: !454, file: !362, line: 630, column: 9)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !362, line: 632, type: !5)
!545 = distinct !DILexicalBlock(scope: !546, file: !362, line: 632, column: 111)
!546 = distinct !DILexicalBlock(scope: !547, file: !362, line: 632, column: 83)
!547 = distinct !DILexicalBlock(scope: !541, file: !362, line: 632, column: 60)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !549, file: !362, line: 636, type: !5)
!549 = distinct !DILexicalBlock(scope: !550, file: !362, line: 636, column: 12)
!550 = distinct !DILexicalBlock(scope: !551, file: !362, line: 635, column: 78)
!551 = distinct !DILexicalBlock(scope: !454, file: !362, line: 635, column: 9)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !553, file: !362, line: 636, type: !5)
!553 = distinct !DILexicalBlock(scope: !554, file: !362, line: 636, column: 111)
!554 = distinct !DILexicalBlock(scope: !555, file: !362, line: 636, column: 83)
!555 = distinct !DILexicalBlock(scope: !549, file: !362, line: 636, column: 60)
!556 = !DISubprogram(name: "zlib_error", scope: !362, file: !362, line: 55, type: !557, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.z_stream_s*, i32, i8*)* @zlib_error, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !367, !44, !52}
!559 = !{!560, !561, !562, !563}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zst", arg: 1, scope: !556, file: !362, line: 55, type: !367)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !556, file: !362, line: 55, type: !44)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msg", arg: 3, scope: !556, file: !362, line: 55, type: !52)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zmsg", scope: !556, file: !362, line: 57, type: !29)
!564 = !DISubprogram(name: "zlib_Compress_flush", scope: !446, file: !446, line: 280, type: !447, isLocal: true, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_flush, variables: !565)
!565 = !{!566, !567, !568, !569}
!566 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !564, file: !446, line: 280, type: !360)
!567 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !564, file: !446, line: 280, type: !5)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !564, file: !446, line: 282, type: !5)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mode", scope: !564, file: !446, line: 283, type: !44)
!570 = !DISubprogram(name: "zlib_Compress_flush_impl", scope: !362, file: !362, line: 841, type: !571, isLocal: true, isDefinition: true, scopeLine: 843, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, i32)* @zlib_Compress_flush_impl, variables: !573)
!571 = !DISubroutineType(types: !572)
!572 = !{!5, !360, !44}
!573 = !{!574, !575, !576, !577, !578, !579, !580, !581, !583, !585, !590, !594, !596, !602, !606, !610}
!574 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !570, file: !362, line: 841, type: !360)
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !570, file: !362, line: 841, type: !44)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !570, file: !362, line: 844, type: !44)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !570, file: !362, line: 845, type: !348)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_length", scope: !570, file: !362, line: 845, type: !348)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "RetVal", scope: !570, file: !362, line: 846, type: !5)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_total_out", scope: !570, file: !362, line: 847, type: !96)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !582, file: !362, line: 858, type: !469)
!582 = distinct !DILexicalBlock(scope: !570, file: !362, line: 858, column: 5)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !584, file: !362, line: 865, type: !469)
!584 = distinct !DILexicalBlock(scope: !570, file: !362, line: 865, column: 5)
!585 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !586, file: !362, line: 877, type: !5)
!586 = distinct !DILexicalBlock(scope: !587, file: !362, line: 877, column: 16)
!587 = distinct !DILexicalBlock(scope: !588, file: !362, line: 876, column: 55)
!588 = distinct !DILexicalBlock(scope: !589, file: !362, line: 876, column: 13)
!589 = distinct !DILexicalBlock(scope: !570, file: !362, line: 871, column: 50)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !591, file: !362, line: 877, type: !5)
!591 = distinct !DILexicalBlock(scope: !592, file: !362, line: 877, column: 115)
!592 = distinct !DILexicalBlock(scope: !593, file: !362, line: 877, column: 87)
!593 = distinct !DILexicalBlock(scope: !586, file: !362, line: 877, column: 64)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !595, file: !362, line: 885, type: !469)
!595 = distinct !DILexicalBlock(scope: !589, file: !362, line: 885, column: 9)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !597, file: !362, line: 897, type: !5)
!597 = distinct !DILexicalBlock(scope: !598, file: !362, line: 897, column: 16)
!598 = distinct !DILexicalBlock(scope: !599, file: !362, line: 895, column: 23)
!599 = distinct !DILexicalBlock(scope: !600, file: !362, line: 895, column: 13)
!600 = distinct !DILexicalBlock(scope: !601, file: !362, line: 893, column: 32)
!601 = distinct !DILexicalBlock(scope: !570, file: !362, line: 893, column: 9)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !603, file: !362, line: 910, type: !5)
!603 = distinct !DILexicalBlock(scope: !604, file: !362, line: 910, column: 12)
!604 = distinct !DILexicalBlock(scope: !605, file: !362, line: 908, column: 37)
!605 = distinct !DILexicalBlock(scope: !601, file: !362, line: 908, column: 16)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !607, file: !362, line: 916, type: !5)
!607 = distinct !DILexicalBlock(scope: !608, file: !362, line: 916, column: 12)
!608 = distinct !DILexicalBlock(scope: !609, file: !362, line: 915, column: 78)
!609 = distinct !DILexicalBlock(scope: !570, file: !362, line: 915, column: 9)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !362, line: 916, type: !5)
!611 = distinct !DILexicalBlock(scope: !612, file: !362, line: 916, column: 111)
!612 = distinct !DILexicalBlock(scope: !613, file: !362, line: 916, column: 83)
!613 = distinct !DILexicalBlock(scope: !607, file: !362, line: 916, column: 60)
!614 = !DISubprogram(name: "zlib_Compress_copy", scope: !446, file: !446, line: 310, type: !447, isLocal: true, isDefinition: true, scopeLine: 311, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Compress_copy, variables: !615)
!615 = !{!616, !617}
!616 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !614, file: !446, line: 310, type: !360)
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !614, file: !446, line: 310, type: !5)
!618 = !DISubprogram(name: "zlib_Compress_copy_impl", scope: !362, file: !362, line: 934, type: !619, isLocal: true, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*)* @zlib_Compress_copy_impl, variables: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!5, !360}
!621 = !{!622, !623, !624, !625, !627, !629, !631, !634, !636, !639, !641, !644, !646}
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !618, file: !362, line: 934, type: !360)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !618, file: !362, line: 937, type: !360)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !618, file: !362, line: 938, type: !44)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !626, file: !362, line: 946, type: !469)
!626 = distinct !DILexicalBlock(scope: !618, file: !362, line: 946, column: 5)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !628, file: !362, line: 964, type: !5)
!628 = distinct !DILexicalBlock(scope: !618, file: !362, line: 964, column: 8)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !630, file: !362, line: 965, type: !5)
!630 = distinct !DILexicalBlock(scope: !618, file: !362, line: 965, column: 8)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !632, file: !362, line: 965, type: !5)
!632 = distinct !DILexicalBlock(scope: !633, file: !362, line: 965, column: 111)
!633 = distinct !DILexicalBlock(scope: !630, file: !362, line: 965, column: 77)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !635, file: !362, line: 966, type: !5)
!635 = distinct !DILexicalBlock(scope: !618, file: !362, line: 966, column: 8)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !637, file: !362, line: 966, type: !5)
!637 = distinct !DILexicalBlock(scope: !638, file: !362, line: 966, column: 115)
!638 = distinct !DILexicalBlock(scope: !635, file: !362, line: 966, column: 81)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !640, file: !362, line: 967, type: !5)
!640 = distinct !DILexicalBlock(scope: !618, file: !362, line: 967, column: 8)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !642, file: !362, line: 967, type: !5)
!642 = distinct !DILexicalBlock(scope: !643, file: !362, line: 967, column: 105)
!643 = distinct !DILexicalBlock(scope: !640, file: !362, line: 967, column: 71)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !645, file: !362, line: 981, type: !5)
!645 = distinct !DILexicalBlock(scope: !618, file: !362, line: 981, column: 8)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !362, line: 981, type: !5)
!647 = distinct !DILexicalBlock(scope: !648, file: !362, line: 981, column: 98)
!648 = distinct !DILexicalBlock(scope: !645, file: !362, line: 981, column: 64)
!649 = !DISubprogram(name: "newcompobject", scope: !362, file: !362, line: 92, type: !650, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct.compobject* (%struct._typeobject*)* @newcompobject, variables: !654)
!650 = !DISubroutineType(types: !651)
!651 = !{!360, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !7, line: 422, baseType: !20)
!654 = !{!655, !656, !657, !661}
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !649, file: !362, line: 92, type: !652)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !649, file: !362, line: 94, type: !360)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !658, file: !362, line: 103, type: !5)
!658 = distinct !DILexicalBlock(scope: !659, file: !362, line: 103, column: 12)
!659 = distinct !DILexicalBlock(scope: !660, file: !362, line: 102, column: 42)
!660 = distinct !DILexicalBlock(scope: !649, file: !362, line: 102, column: 9)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !662, file: !362, line: 108, type: !5)
!662 = distinct !DILexicalBlock(scope: !663, file: !362, line: 108, column: 12)
!663 = distinct !DILexicalBlock(scope: !664, file: !362, line: 107, column: 46)
!664 = distinct !DILexicalBlock(scope: !649, file: !362, line: 107, column: 9)
!665 = !DISubprogram(name: "Decomp_dealloc", scope: !362, file: !362, line: 550, type: !423, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.compobject*)* @Decomp_dealloc, variables: !666)
!666 = !{!667}
!667 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !665, file: !362, line: 550, type: !360)
!668 = !DISubprogram(name: "zlib_Decompress_decompress", scope: !446, file: !446, line: 241, type: !447, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_decompress, variables: !669)
!669 = !{!670, !671, !672, !673, !674}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !668, file: !446, line: 241, type: !360)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !668, file: !446, line: 241, type: !5)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !668, file: !446, line: 243, type: !5)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !668, file: !446, line: 244, type: !236)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_length", scope: !668, file: !446, line: 245, type: !348)
!675 = !DISubprogram(name: "uint_converter", scope: !362, file: !362, line: 238, type: !265, isLocal: true, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @uint_converter, variables: !676)
!676 = !{!677, !678, !679, !680}
!677 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !675, file: !362, line: 238, type: !5)
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !675, file: !362, line: 238, type: !4)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !675, file: !362, line: 240, type: !17)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "uval", scope: !675, file: !362, line: 241, type: !96)
!681 = !DISubprogram(name: "zlib_Decompress_decompress_impl", scope: !362, file: !362, line: 706, type: !682, isLocal: true, isDefinition: true, scopeLine: 708, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct.bufferinfo*, i32)* @zlib_Decompress_decompress_impl, variables: !684)
!682 = !DISubroutineType(types: !683)
!683 = !{!5, !360, !235, !348}
!684 = !{!685, !686, !687, !688, !689, !690, !691, !692, !693, !695, !697, !700, !704, !708, !712, !716, !720, !722, !727, !731, !733, !737, !742, !746}
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !681, file: !362, line: 706, type: !360)
!686 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !681, file: !362, line: 706, type: !235)
!687 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "max_length", arg: 3, scope: !681, file: !362, line: 706, type: !348)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !681, file: !362, line: 709, type: !44)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_length", scope: !681, file: !362, line: 710, type: !348)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !681, file: !362, line: 710, type: !348)
!691 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "RetVal", scope: !681, file: !362, line: 711, type: !5)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_total_out", scope: !681, file: !362, line: 712, type: !96)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !694, file: !362, line: 726, type: !469)
!694 = distinct !DILexicalBlock(scope: !681, file: !362, line: 726, column: 5)
!695 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !696, file: !362, line: 734, type: !469)
!696 = distinct !DILexicalBlock(scope: !681, file: !362, line: 734, column: 5)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zdict_buf", scope: !698, file: !362, line: 739, type: !236)
!698 = distinct !DILexicalBlock(scope: !699, file: !362, line: 738, column: 48)
!699 = distinct !DILexicalBlock(scope: !681, file: !362, line: 738, column: 9)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !701, file: !362, line: 741, type: !5)
!701 = distinct !DILexicalBlock(scope: !702, file: !362, line: 741, column: 16)
!702 = distinct !DILexicalBlock(scope: !703, file: !362, line: 740, column: 67)
!703 = distinct !DILexicalBlock(scope: !698, file: !362, line: 740, column: 13)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !705, file: !362, line: 750, type: !5)
!705 = distinct !DILexicalBlock(scope: !706, file: !362, line: 750, column: 16)
!706 = distinct !DILexicalBlock(scope: !707, file: !362, line: 746, column: 59)
!707 = distinct !DILexicalBlock(scope: !698, file: !362, line: 746, column: 13)
!708 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !709, file: !362, line: 750, type: !5)
!709 = distinct !DILexicalBlock(scope: !710, file: !362, line: 750, column: 115)
!710 = distinct !DILexicalBlock(scope: !711, file: !362, line: 750, column: 87)
!711 = distinct !DILexicalBlock(scope: !705, file: !362, line: 750, column: 64)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !713, file: !362, line: 759, type: !5)
!713 = distinct !DILexicalBlock(scope: !714, file: !362, line: 759, column: 16)
!714 = distinct !DILexicalBlock(scope: !715, file: !362, line: 757, column: 23)
!715 = distinct !DILexicalBlock(scope: !698, file: !362, line: 757, column: 13)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !717, file: !362, line: 759, type: !5)
!717 = distinct !DILexicalBlock(scope: !718, file: !362, line: 759, column: 115)
!718 = distinct !DILexicalBlock(scope: !719, file: !362, line: 759, column: 87)
!719 = distinct !DILexicalBlock(scope: !713, file: !362, line: 759, column: 64)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !721, file: !362, line: 763, type: !469)
!721 = distinct !DILexicalBlock(scope: !698, file: !362, line: 763, column: 9)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !723, file: !362, line: 785, type: !5)
!723 = distinct !DILexicalBlock(scope: !724, file: !362, line: 785, column: 16)
!724 = distinct !DILexicalBlock(scope: !725, file: !362, line: 784, column: 51)
!725 = distinct !DILexicalBlock(scope: !726, file: !362, line: 784, column: 13)
!726 = distinct !DILexicalBlock(scope: !681, file: !362, line: 771, column: 50)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !362, line: 785, type: !5)
!728 = distinct !DILexicalBlock(scope: !729, file: !362, line: 785, column: 115)
!729 = distinct !DILexicalBlock(scope: !730, file: !362, line: 785, column: 87)
!730 = distinct !DILexicalBlock(scope: !723, file: !362, line: 785, column: 64)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !732, file: !362, line: 792, type: !469)
!732 = distinct !DILexicalBlock(scope: !726, file: !362, line: 792, column: 9)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !734, file: !362, line: 798, type: !5)
!734 = distinct !DILexicalBlock(scope: !735, file: !362, line: 798, column: 12)
!735 = distinct !DILexicalBlock(scope: !736, file: !362, line: 797, column: 47)
!736 = distinct !DILexicalBlock(scope: !681, file: !362, line: 797, column: 9)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !362, line: 813, type: !5)
!738 = distinct !DILexicalBlock(scope: !739, file: !362, line: 813, column: 12)
!739 = distinct !DILexicalBlock(scope: !740, file: !362, line: 807, column: 41)
!740 = distinct !DILexicalBlock(scope: !741, file: !362, line: 807, column: 16)
!741 = distinct !DILexicalBlock(scope: !681, file: !362, line: 803, column: 9)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !743, file: !362, line: 819, type: !5)
!743 = distinct !DILexicalBlock(scope: !744, file: !362, line: 819, column: 12)
!744 = distinct !DILexicalBlock(scope: !745, file: !362, line: 818, column: 78)
!745 = distinct !DILexicalBlock(scope: !681, file: !362, line: 818, column: 9)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !747, file: !362, line: 819, type: !5)
!747 = distinct !DILexicalBlock(scope: !748, file: !362, line: 819, column: 111)
!748 = distinct !DILexicalBlock(scope: !749, file: !362, line: 819, column: 83)
!749 = distinct !DILexicalBlock(scope: !743, file: !362, line: 819, column: 60)
!750 = !DISubprogram(name: "save_unconsumed_input", scope: !362, file: !362, line: 647, type: !751, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.compobject*, i32)* @save_unconsumed_input, variables: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!44, !360, !44}
!753 = !{!754, !755, !756, !761, !762, !763, !765, !768}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !750, file: !362, line: 647, type: !360)
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "err", arg: 2, scope: !750, file: !362, line: 647, type: !44)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_size", scope: !757, file: !362, line: 653, type: !11)
!757 = distinct !DILexicalBlock(scope: !758, file: !362, line: 652, column: 37)
!758 = distinct !DILexicalBlock(scope: !759, file: !362, line: 652, column: 13)
!759 = distinct !DILexicalBlock(scope: !760, file: !362, line: 649, column: 19)
!760 = distinct !DILexicalBlock(scope: !750, file: !362, line: 649, column: 9)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !757, file: !362, line: 654, type: !11)
!762 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_data", scope: !757, file: !362, line: 655, type: !5)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !764, file: !362, line: 668, type: !5)
!764 = distinct !DILexicalBlock(scope: !757, file: !362, line: 668, column: 16)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_data", scope: !766, file: !362, line: 677, type: !5)
!766 = distinct !DILexicalBlock(scope: !767, file: !362, line: 673, column: 102)
!767 = distinct !DILexicalBlock(scope: !750, file: !362, line: 673, column: 9)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !769, file: !362, line: 681, type: !5)
!769 = distinct !DILexicalBlock(scope: !766, file: !362, line: 681, column: 12)
!770 = !DISubprogram(name: "zlib_Decompress_flush", scope: !446, file: !446, line: 363, type: !447, isLocal: true, isDefinition: true, scopeLine: 364, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_flush, variables: !771)
!771 = !{!772, !773, !774, !775}
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !770, file: !446, line: 363, type: !360)
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !770, file: !446, line: 363, type: !5)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !770, file: !446, line: 365, type: !5)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !770, file: !446, line: 366, type: !348)
!776 = !DISubprogram(name: "zlib_Decompress_flush_impl", scope: !362, file: !362, line: 1056, type: !777, isLocal: true, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, i32)* @zlib_Decompress_flush_impl, variables: !779)
!777 = !DISubroutineType(types: !778)
!778 = !{!5, !360, !348}
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !789, !791, !796, !800, !802, !806, !812, !816}
!780 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !776, file: !362, line: 1056, type: !360)
!781 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "length", arg: 2, scope: !776, file: !362, line: 1056, type: !348)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !776, file: !362, line: 1059, type: !44)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_length", scope: !776, file: !362, line: 1060, type: !348)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !776, file: !362, line: 1061, type: !5)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start_total_out", scope: !776, file: !362, line: 1062, type: !96)
!786 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !776, file: !362, line: 1063, type: !11)
!787 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !788, file: !362, line: 1074, type: !469)
!788 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1074, column: 5)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !790, file: !362, line: 1086, type: !469)
!790 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1086, column: 5)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !792, file: !362, line: 1098, type: !5)
!792 = distinct !DILexicalBlock(scope: !793, file: !362, line: 1098, column: 16)
!793 = distinct !DILexicalBlock(scope: !794, file: !362, line: 1097, column: 55)
!794 = distinct !DILexicalBlock(scope: !795, file: !362, line: 1097, column: 13)
!795 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1092, column: 67)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !797, file: !362, line: 1098, type: !5)
!797 = distinct !DILexicalBlock(scope: !798, file: !362, line: 1098, column: 115)
!798 = distinct !DILexicalBlock(scope: !799, file: !362, line: 1098, column: 87)
!799 = distinct !DILexicalBlock(scope: !792, file: !362, line: 1098, column: 64)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !801, file: !362, line: 1105, type: !469)
!801 = distinct !DILexicalBlock(scope: !795, file: !362, line: 1105, column: 9)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !803, file: !362, line: 1111, type: !5)
!803 = distinct !DILexicalBlock(scope: !804, file: !362, line: 1111, column: 12)
!804 = distinct !DILexicalBlock(scope: !805, file: !362, line: 1110, column: 47)
!805 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1110, column: 9)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !807, file: !362, line: 1123, type: !5)
!807 = distinct !DILexicalBlock(scope: !808, file: !362, line: 1123, column: 16)
!808 = distinct !DILexicalBlock(scope: !809, file: !362, line: 1121, column: 23)
!809 = distinct !DILexicalBlock(scope: !810, file: !362, line: 1121, column: 13)
!810 = distinct !DILexicalBlock(scope: !811, file: !362, line: 1117, column: 19)
!811 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1117, column: 9)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !813, file: !362, line: 1130, type: !5)
!813 = distinct !DILexicalBlock(scope: !814, file: !362, line: 1130, column: 12)
!814 = distinct !DILexicalBlock(scope: !815, file: !362, line: 1129, column: 78)
!815 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1129, column: 9)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !817, file: !362, line: 1130, type: !5)
!817 = distinct !DILexicalBlock(scope: !818, file: !362, line: 1130, column: 111)
!818 = distinct !DILexicalBlock(scope: !819, file: !362, line: 1130, column: 83)
!819 = distinct !DILexicalBlock(scope: !813, file: !362, line: 1130, column: 60)
!820 = !DISubprogram(name: "zlib_Decompress_copy", scope: !446, file: !446, line: 336, type: !447, isLocal: true, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*, %struct._object*)* @zlib_Decompress_copy, variables: !821)
!821 = !{!822, !823}
!822 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !820, file: !446, line: 336, type: !360)
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !820, file: !446, line: 336, type: !5)
!824 = !DISubprogram(name: "zlib_Decompress_copy_impl", scope: !362, file: !362, line: 992, type: !619, isLocal: true, isDefinition: true, scopeLine: 994, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.compobject*)* @zlib_Decompress_copy_impl, variables: !825)
!825 = !{!826, !827, !828, !829, !831, !833, !835, !838, !840, !843, !845, !848, !850}
!826 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !824, file: !362, line: 992, type: !360)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !824, file: !362, line: 995, type: !360)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !824, file: !362, line: 996, type: !44)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !830, file: !362, line: 1004, type: !469)
!830 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1004, column: 5)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !832, file: !362, line: 1023, type: !5)
!832 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1023, column: 8)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !834, file: !362, line: 1024, type: !5)
!834 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1024, column: 8)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !362, line: 1024, type: !5)
!836 = distinct !DILexicalBlock(scope: !837, file: !362, line: 1024, column: 111)
!837 = distinct !DILexicalBlock(scope: !834, file: !362, line: 1024, column: 77)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !839, file: !362, line: 1025, type: !5)
!839 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1025, column: 8)
!840 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !841, file: !362, line: 1025, type: !5)
!841 = distinct !DILexicalBlock(scope: !842, file: !362, line: 1025, column: 115)
!842 = distinct !DILexicalBlock(scope: !839, file: !362, line: 1025, column: 81)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !844, file: !362, line: 1026, type: !5)
!844 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1026, column: 8)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !846, file: !362, line: 1026, type: !5)
!846 = distinct !DILexicalBlock(scope: !847, file: !362, line: 1026, column: 105)
!847 = distinct !DILexicalBlock(scope: !844, file: !362, line: 1026, column: 71)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !849, file: !362, line: 1040, type: !5)
!849 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1040, column: 8)
!850 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !851, file: !362, line: 1040, type: !5)
!851 = distinct !DILexicalBlock(scope: !852, file: !362, line: 1040, column: 98)
!852 = distinct !DILexicalBlock(scope: !849, file: !362, line: 1040, column: 64)
!853 = !DISubprogram(name: "zlib_adler32", scope: !446, file: !446, line: 396, type: !854, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_adler32, variables: !880)
!854 = !DISubroutineType(types: !855)
!855 = !{!5, !856, !5}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !858, line: 57, baseType: !859)
!858 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !858, line: 47, size: 832, align: 64, elements: !860)
!860 = !{!861, !870, !871, !872, !873, !876, !877, !878, !879}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !859, file: !858, line: 48, baseType: !862, size: 320, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !858, line: 38, baseType: !863)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !858, line: 33, size: 320, align: 64, elements: !864)
!864 = !{!865, !866, !868, !869}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !863, file: !858, line: 34, baseType: !6, size: 128, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !863, file: !858, line: 35, baseType: !867, size: 64, align: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !863, file: !858, line: 36, baseType: !11, size: 64, align: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !863, file: !858, line: 37, baseType: !5, size: 64, align: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !859, file: !858, line: 49, baseType: !29, size: 64, align: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !859, file: !858, line: 50, baseType: !29, size: 64, align: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !859, file: !858, line: 51, baseType: !11, size: 64, align: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !859, file: !858, line: 52, baseType: !874, size: 64, align: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !281, line: 47, baseType: !280)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !859, file: !858, line: 53, baseType: !142, size: 64, align: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !859, file: !858, line: 54, baseType: !259, size: 64, align: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !859, file: !858, line: 55, baseType: !142, size: 64, align: 64, offset: 704)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !859, file: !858, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!880 = !{!881, !882, !883, !884, !885}
!881 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !853, file: !446, line: 396, type: !856)
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !853, file: !446, line: 396, type: !5)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !853, file: !446, line: 398, type: !5)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !853, file: !446, line: 399, type: !236)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !853, file: !446, line: 400, type: !348)
!886 = !DISubprogram(name: "zlib_adler32_impl", scope: !362, file: !362, line: 1184, type: !887, isLocal: true, isDefinition: true, scopeLine: 1186, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @zlib_adler32_impl, variables: !889)
!887 = !DISubroutineType(types: !888)
!888 = !{!5, !856, !235, !348}
!889 = !{!890, !891, !892, !893, !896, !897}
!890 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !886, file: !362, line: 1184, type: !856)
!891 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !886, file: !362, line: 1184, type: !235)
!892 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !886, file: !362, line: 1184, type: !348)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !894, file: !362, line: 1190, type: !350)
!894 = distinct !DILexicalBlock(scope: !895, file: !362, line: 1189, column: 29)
!895 = distinct !DILexicalBlock(scope: !886, file: !362, line: 1189, column: 9)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !894, file: !362, line: 1191, type: !11)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !898, file: !362, line: 1193, type: !469)
!898 = distinct !DILexicalBlock(scope: !894, file: !362, line: 1193, column: 9)
!899 = !DISubprogram(name: "zlib_compress", scope: !446, file: !446, line: 23, type: !854, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_compress, variables: !900)
!900 = !{!901, !902, !903, !904, !905}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !899, file: !446, line: 23, type: !856)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !899, file: !446, line: 23, type: !5)
!903 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !899, file: !446, line: 25, type: !5)
!904 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !899, file: !446, line: 26, type: !236)
!905 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !899, file: !446, line: 27, type: !44)
!906 = !DISubprogram(name: "zlib_compress_impl", scope: !362, file: !362, line: 150, type: !907, isLocal: true, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @zlib_compress_impl, variables: !909)
!907 = !DISubroutineType(types: !908)
!908 = !{!5, !856, !235, !44}
!909 = !{!910, !911, !912, !913, !914, !915, !916, !917, !918, !919}
!910 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !906, file: !362, line: 150, type: !856)
!911 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bytes", arg: 2, scope: !906, file: !362, line: 150, type: !235)
!912 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 3, scope: !906, file: !362, line: 150, type: !44)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ReturnVal", scope: !906, file: !362, line: 153, type: !5)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !906, file: !362, line: 154, type: !414)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "output", scope: !906, file: !362, line: 154, type: !414)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !906, file: !362, line: 155, type: !348)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !906, file: !362, line: 156, type: !44)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zst", scope: !906, file: !362, line: 157, type: !367)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !920, file: !362, line: 204, type: !469)
!920 = distinct !DILexicalBlock(scope: !906, file: !362, line: 204, column: 5)
!921 = !DISubprogram(name: "PyZlib_Malloc", scope: !362, file: !362, line: 122, type: !922, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i8*, i32, i32)* @PyZlib_Malloc, variables: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{!4, !394, !377, !377}
!924 = !{!925, !926, !927}
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !921, file: !362, line: 122, type: !394)
!926 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "items", arg: 2, scope: !921, file: !362, line: 122, type: !377)
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !921, file: !362, line: 122, type: !377)
!928 = !DISubprogram(name: "PyZlib_Free", scope: !362, file: !362, line: 132, type: !929, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*)* @PyZlib_Free, variables: !931)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !394, !4}
!931 = !{!932, !933}
!932 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ctx", arg: 1, scope: !928, file: !362, line: 132, type: !394)
!933 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 2, scope: !928, file: !362, line: 132, type: !4)
!934 = !DISubprogram(name: "zlib_compressobj", scope: !446, file: !446, line: 117, type: !935, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @zlib_compressobj, variables: !937)
!935 = !DISubroutineType(types: !936)
!936 = !{!5, !856, !5, !5}
!937 = !{!938, !939, !940, !941, !942, !943, !944, !945, !946, !947}
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !934, file: !446, line: 117, type: !856)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !934, file: !446, line: 117, type: !5)
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !934, file: !446, line: 117, type: !5)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !934, file: !446, line: 119, type: !5)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level", scope: !934, file: !446, line: 121, type: !44)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !934, file: !446, line: 122, type: !44)
!944 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbits", scope: !934, file: !446, line: 123, type: !44)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "memLevel", scope: !934, file: !446, line: 124, type: !44)
!946 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "strategy", scope: !934, file: !446, line: 125, type: !44)
!947 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zdict", scope: !934, file: !446, line: 126, type: !236)
!948 = !DISubprogram(name: "zlib_compressobj_impl", scope: !362, file: !362, line: 413, type: !949, isLocal: true, isDefinition: true, scopeLine: 415, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, i32, i32, i32, i32, i32, %struct.bufferinfo*)* @zlib_compressobj_impl, variables: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{!5, !856, !44, !44, !44, !44, !44, !235}
!951 = !{!952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !963}
!952 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !948, file: !362, line: 413, type: !856)
!953 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 2, scope: !948, file: !362, line: 413, type: !44)
!954 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "method", arg: 3, scope: !948, file: !362, line: 413, type: !44)
!955 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wbits", arg: 4, scope: !948, file: !362, line: 413, type: !44)
!956 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "memLevel", arg: 5, scope: !948, file: !362, line: 413, type: !44)
!957 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "strategy", arg: 6, scope: !948, file: !362, line: 413, type: !44)
!958 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zdict", arg: 7, scope: !948, file: !362, line: 413, type: !235)
!959 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !948, file: !362, line: 416, type: !360)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !948, file: !362, line: 417, type: !44)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !962, file: !362, line: 466, type: !5)
!962 = distinct !DILexicalBlock(scope: !948, file: !362, line: 466, column: 8)
!963 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !964, file: !362, line: 466, type: !5)
!964 = distinct !DILexicalBlock(scope: !965, file: !362, line: 466, column: 103)
!965 = distinct !DILexicalBlock(scope: !966, file: !362, line: 466, column: 77)
!966 = distinct !DILexicalBlock(scope: !962, file: !362, line: 466, column: 54)
!967 = !DISubprogram(name: "zlib_crc32", scope: !446, file: !446, line: 434, type: !854, isLocal: true, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_crc32, variables: !968)
!968 = !{!969, !970, !971, !972, !973}
!969 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !967, file: !446, line: 434, type: !856)
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !967, file: !446, line: 434, type: !5)
!971 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !967, file: !446, line: 436, type: !5)
!972 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !967, file: !446, line: 437, type: !236)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !967, file: !446, line: 438, type: !348)
!974 = !DISubprogram(name: "zlib_crc32_impl", scope: !362, file: !362, line: 1223, type: !887, isLocal: true, isDefinition: true, scopeLine: 1225, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32)* @zlib_crc32_impl, variables: !975)
!975 = !{!976, !977, !978, !979, !980, !983, !984}
!976 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !974, file: !362, line: 1223, type: !856)
!977 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !974, file: !362, line: 1223, type: !235)
!978 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "value", arg: 3, scope: !974, file: !362, line: 1223, type: !348)
!979 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "signed_val", scope: !974, file: !362, line: 1226, type: !44)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !981, file: !362, line: 1231, type: !350)
!981 = distinct !DILexicalBlock(scope: !982, file: !362, line: 1230, column: 29)
!982 = distinct !DILexicalBlock(scope: !974, file: !362, line: 1230, column: 9)
!983 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !981, file: !362, line: 1232, type: !11)
!984 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !985, file: !362, line: 1234, type: !469)
!985 = distinct !DILexicalBlock(scope: !981, file: !362, line: 1234, column: 9)
!986 = !DISubprogram(name: "zlib_decompress", scope: !446, file: !446, line: 63, type: !854, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @zlib_decompress, variables: !987)
!987 = !{!988, !989, !990, !991, !992, !993}
!988 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !986, file: !446, line: 63, type: !856)
!989 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !986, file: !446, line: 63, type: !5)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !986, file: !446, line: 65, type: !5)
!991 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !986, file: !446, line: 66, type: !236)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbits", scope: !986, file: !446, line: 67, type: !44)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !986, file: !446, line: 68, type: !348)
!994 = !DISubprogram(name: "zlib_decompress_impl", scope: !362, file: !362, line: 283, type: !995, isLocal: true, isDefinition: true, scopeLine: 285, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct.bufferinfo*, i32, i32)* @zlib_decompress_impl, variables: !997)
!995 = !DISubroutineType(types: !996)
!996 = !{!5, !856, !235, !44, !348}
!997 = !{!998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1011, !1013}
!998 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !994, file: !362, line: 283, type: !856)
!999 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !994, file: !362, line: 283, type: !235)
!1000 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wbits", arg: 3, scope: !994, file: !362, line: 283, type: !44)
!1001 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bufsize", arg: 4, scope: !994, file: !362, line: 283, type: !348)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result_str", scope: !994, file: !362, line: 286, type: !5)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "input", scope: !994, file: !362, line: 287, type: !414)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !994, file: !362, line: 288, type: !348)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !994, file: !362, line: 289, type: !44)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_bufsize", scope: !994, file: !362, line: 290, type: !348)
!1007 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zst", scope: !994, file: !362, line: 291, type: !367)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !1009, file: !362, line: 331, type: !469)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !362, line: 331, column: 9)
!1010 = distinct !DILexicalBlock(scope: !994, file: !362, line: 330, column: 8)
!1011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1012, file: !362, line: 384, type: !5)
!1012 = distinct !DILexicalBlock(scope: !994, file: !362, line: 384, column: 8)
!1013 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1014, file: !362, line: 384, type: !5)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !362, line: 384, column: 102)
!1015 = distinct !DILexicalBlock(scope: !1012, file: !362, line: 384, column: 68)
!1016 = !DISubprogram(name: "zlib_decompressobj", scope: !446, file: !446, line: 161, type: !935, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*, %struct._object*)* @zlib_decompressobj, variables: !1017)
!1017 = !{!1018, !1019, !1020, !1021, !1022, !1023}
!1018 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1016, file: !446, line: 161, type: !856)
!1019 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1016, file: !446, line: 161, type: !5)
!1020 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwargs", arg: 3, scope: !1016, file: !446, line: 161, type: !5)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1016, file: !446, line: 163, type: !5)
!1022 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wbits", scope: !1016, file: !446, line: 165, type: !44)
!1023 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zdict", scope: !1016, file: !446, line: 166, type: !5)
!1024 = !DISubprogram(name: "zlib_decompressobj_impl", scope: !362, file: !362, line: 484, type: !1025, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, i32, %struct._object*)* @zlib_decompressobj_impl, variables: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!5, !856, !44, !5}
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1036, !1038}
!1028 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1024, file: !362, line: 484, type: !856)
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wbits", arg: 2, scope: !1024, file: !362, line: 484, type: !44)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zdict", arg: 3, scope: !1024, file: !362, line: 484, type: !5)
!1031 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1024, file: !362, line: 487, type: !44)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !1024, file: !362, line: 488, type: !360)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1034, file: !362, line: 514, type: !5)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !362, line: 514, column: 12)
!1035 = distinct !DILexicalBlock(scope: !1024, file: !362, line: 509, column: 17)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1037, file: !362, line: 518, type: !5)
!1037 = distinct !DILexicalBlock(scope: !1035, file: !362, line: 518, column: 12)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1039, file: !362, line: 524, type: !5)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !362, line: 524, column: 12)
!1040 = !{!1041, !1042, !1043, !1047, !1051, !1055, !1059, !1060, !1061, !1065, !1069, !1073, !1076, !1077, !1081, !1085, !1089, !1093, !1095, !1099, !1103, !1107, !1111}
!1041 = !DIGlobalVariable(name: "ZlibError", scope: !0, file: !362, line: 38, type: !5, isLocal: true, isDefinition: true, variable: %struct._object** @ZlibError)
!1042 = !DIGlobalVariable(name: "Comptype", scope: !0, file: !362, line: 1262, type: !653, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Comptype)
!1043 = !DIGlobalVariable(name: "comp_methods", scope: !0, file: !362, line: 1142, type: !1044, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @comp_methods)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 1024, align: 64, elements: !1045)
!1045 = !{!1046}
!1046 = !DISubrange(count: 4)
!1047 = !DIGlobalVariable(name: "zlib_Compress_compress__doc__", scope: !0, file: !446, line: 178, type: !1048, isLocal: true, isDefinition: true, variable: [285 x i8]* @zlib_Compress_compress__doc__)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2280, align: 8, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 285)
!1051 = !DIGlobalVariable(name: "zlib_Compress_flush__doc__", scope: !0, file: !446, line: 261, type: !1052, isLocal: true, isDefinition: true, variable: [333 x i8]* @zlib_Compress_flush__doc__)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2664, align: 8, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 333)
!1055 = !DIGlobalVariable(name: "zlib_Compress_copy__doc__", scope: !0, file: !446, line: 297, type: !1056, isLocal: true, isDefinition: true, variable: [60 x i8]* @zlib_Compress_copy__doc__)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 480, align: 8, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 60)
!1059 = !DIGlobalVariable(name: "Decomptype", scope: !0, file: !362, line: 1293, type: !653, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Decomptype)
!1060 = !DIGlobalVariable(name: "Decomp_methods", scope: !0, file: !362, line: 1152, type: !1044, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMethodDef]* @Decomp_methods)
!1061 = !DIGlobalVariable(name: "zlib_Decompress_decompress__doc__", scope: !0, file: !446, line: 217, type: !1062, isLocal: true, isDefinition: true, variable: [473 x i8]* @zlib_Decompress_decompress__doc__)
!1062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 3784, align: 8, elements: !1063)
!1063 = !{!1064}
!1064 = !DISubrange(count: 473)
!1065 = !DIGlobalVariable(name: "zlib_Decompress_flush__doc__", scope: !0, file: !446, line: 347, type: !1066, isLocal: true, isDefinition: true, variable: [165 x i8]* @zlib_Decompress_flush__doc__)
!1066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1320, align: 8, elements: !1067)
!1067 = !{!1068}
!1068 = !DISubrange(count: 165)
!1069 = !DIGlobalVariable(name: "zlib_Decompress_copy__doc__", scope: !0, file: !446, line: 323, type: !1070, isLocal: true, isDefinition: true, variable: [62 x i8]* @zlib_Decompress_copy__doc__)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 496, align: 8, elements: !1071)
!1071 = !{!1072}
!1072 = !DISubrange(count: 62)
!1073 = !DIGlobalVariable(name: "Decomp_members", scope: !0, file: !362, line: 1163, type: !1074, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @Decomp_members)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 1280, align: 64, elements: !1045)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !291, line: 24, baseType: !290)
!1076 = !DIGlobalVariable(name: "zlibmodule", scope: !0, file: !362, line: 1340, type: !859, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @zlibmodule)
!1077 = !DIGlobalVariable(name: "zlib_module_documentation", scope: !0, file: !362, line: 1325, type: !1078, isLocal: true, isDefinition: true, variable: [650 x i8]* @zlib_module_documentation)
!1078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 5200, align: 8, elements: !1079)
!1079 = !{!1080}
!1080 = !DISubrange(count: 650)
!1081 = !DIGlobalVariable(name: "zlib_methods", scope: !0, file: !362, line: 1251, type: !1082, isLocal: true, isDefinition: true, variable: [7 x %struct.PyMethodDef]* @zlib_methods)
!1082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 1792, align: 64, elements: !1083)
!1083 = !{!1084}
!1084 = !DISubrange(count: 7)
!1085 = !DIGlobalVariable(name: "zlib_adler32__doc__", scope: !0, file: !446, line: 378, type: !1086, isLocal: true, isDefinition: true, variable: [160 x i8]* @zlib_adler32__doc__)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1280, align: 8, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 160)
!1089 = !DIGlobalVariable(name: "zlib_compress__doc__", scope: !0, file: !446, line: 5, type: !1090, isLocal: true, isDefinition: true, variable: [194 x i8]* @zlib_compress__doc__)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1552, align: 8, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 194)
!1093 = !DIGlobalVariable(name: "_keywords", scope: !934, file: !446, line: 120, type: !1094, isLocal: true, isDefinition: true, variable: [7 x i8*]* @zlib_compressobj._keywords)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 448, align: 64, elements: !1083)
!1095 = !DIGlobalVariable(name: "zlib_compressobj__doc__", scope: !0, file: !446, line: 84, type: !1096, isLocal: true, isDefinition: true, variable: [987 x i8]* @zlib_compressobj__doc__)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 7896, align: 8, elements: !1097)
!1097 = !{!1098}
!1098 = !DISubrange(count: 987)
!1099 = !DIGlobalVariable(name: "zlib_crc32__doc__", scope: !0, file: !446, line: 416, type: !1100, isLocal: true, isDefinition: true, variable: [155 x i8]* @zlib_crc32__doc__)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1240, align: 8, elements: !1101)
!1101 = !{!1102}
!1102 = !DISubrange(count: 155)
!1103 = !DIGlobalVariable(name: "zlib_decompress__doc__", scope: !0, file: !446, line: 43, type: !1104, isLocal: true, isDefinition: true, variable: [240 x i8]* @zlib_decompress__doc__)
!1104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 1920, align: 8, elements: !1105)
!1105 = !{!1106}
!1106 = !DISubrange(count: 240)
!1107 = !DIGlobalVariable(name: "_keywords", scope: !1016, file: !446, line: 164, type: !1108, isLocal: true, isDefinition: true, variable: [3 x i8*]* @zlib_decompressobj._keywords)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, align: 64, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 3)
!1111 = !DIGlobalVariable(name: "zlib_decompressobj__doc__", scope: !0, file: !446, line: 142, type: !1112, isLocal: true, isDefinition: true, variable: [270 x i8]* @zlib_decompressobj__doc__)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 2160, align: 8, elements: !1113)
!1113 = !{!1114}
!1114 = !DISubrange(count: 270)
!1115 = !{i32 2, !"Dwarf Version", i32 4}
!1116 = !{i32 2, !"Debug Info Version", i32 3}
!1117 = !{i32 1, !"PIC Level", i32 2}
!1118 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1119 = !DILocation(line: 1355, column: 5, scope: !416)
!1120 = !DIExpression()
!1121 = !DILocation(line: 1355, column: 15, scope: !416)
!1122 = !DILocation(line: 1355, column: 19, scope: !416)
!1123 = !DILocation(line: 1356, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1356, column: 9)
!1125 = !DILocation(line: 1356, column: 33, scope: !1124)
!1126 = !DILocation(line: 1356, column: 9, scope: !416)
!1127 = !DILocation(line: 1357, column: 13, scope: !1124)
!1128 = !DILocation(line: 1358, column: 9, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1358, column: 9)
!1130 = !DILocation(line: 1358, column: 35, scope: !1129)
!1131 = !DILocation(line: 1358, column: 9, scope: !416)
!1132 = !DILocation(line: 1359, column: 13, scope: !1129)
!1133 = !DILocation(line: 1360, column: 9, scope: !416)
!1134 = !DILocation(line: 1360, column: 7, scope: !416)
!1135 = !{!1136, !1136, i64 0}
!1136 = !{!"any pointer", !1137, i64 0}
!1137 = !{!"omnipotent char", !1138, i64 0}
!1138 = !{!"Simple C/C++ TBAA"}
!1139 = !DILocation(line: 1361, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1361, column: 9)
!1141 = !DILocation(line: 1361, column: 11, scope: !1140)
!1142 = !DILocation(line: 1361, column: 9, scope: !416)
!1143 = !DILocation(line: 1362, column: 9, scope: !1140)
!1144 = !DILocation(line: 1364, column: 17, scope: !416)
!1145 = !DILocation(line: 1364, column: 15, scope: !416)
!1146 = !DILocation(line: 1365, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1365, column: 9)
!1148 = !DILocation(line: 1365, column: 19, scope: !1147)
!1149 = !DILocation(line: 1365, column: 9, scope: !416)
!1150 = !DILocation(line: 1366, column: 25, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1147, file: !362, line: 1365, column: 34)
!1152 = !DILocation(line: 1366, column: 38, scope: !1151)
!1153 = !DILocation(line: 1366, column: 47, scope: !1151)
!1154 = !{!1155, !1156, i64 0}
!1155 = !{!"_object", !1156, i64 0, !1136, i64 8}
!1156 = !{!"long", !1137, i64 0}
!1157 = !DILocation(line: 1367, column: 28, scope: !1151)
!1158 = !DILocation(line: 1367, column: 40, scope: !1151)
!1159 = !DILocation(line: 1367, column: 9, scope: !1151)
!1160 = !DILocation(line: 1368, column: 5, scope: !1151)
!1161 = !DILocation(line: 1369, column: 29, scope: !416)
!1162 = !DILocation(line: 1369, column: 5, scope: !416)
!1163 = !DILocation(line: 1370, column: 29, scope: !416)
!1164 = !DILocation(line: 1370, column: 5, scope: !416)
!1165 = !DILocation(line: 1371, column: 29, scope: !416)
!1166 = !DILocation(line: 1371, column: 5, scope: !416)
!1167 = !DILocation(line: 1372, column: 29, scope: !416)
!1168 = !DILocation(line: 1372, column: 5, scope: !416)
!1169 = !DILocation(line: 1373, column: 29, scope: !416)
!1170 = !DILocation(line: 1373, column: 5, scope: !416)
!1171 = !DILocation(line: 1374, column: 29, scope: !416)
!1172 = !DILocation(line: 1374, column: 5, scope: !416)
!1173 = !DILocation(line: 1375, column: 29, scope: !416)
!1174 = !DILocation(line: 1375, column: 5, scope: !416)
!1175 = !DILocation(line: 1376, column: 29, scope: !416)
!1176 = !DILocation(line: 1376, column: 5, scope: !416)
!1177 = !DILocation(line: 1377, column: 29, scope: !416)
!1178 = !DILocation(line: 1377, column: 5, scope: !416)
!1179 = !DILocation(line: 1378, column: 29, scope: !416)
!1180 = !DILocation(line: 1378, column: 5, scope: !416)
!1181 = !DILocation(line: 1380, column: 29, scope: !416)
!1182 = !DILocation(line: 1380, column: 5, scope: !416)
!1183 = !DILocation(line: 1381, column: 29, scope: !416)
!1184 = !DILocation(line: 1381, column: 5, scope: !416)
!1185 = !DILocation(line: 1382, column: 29, scope: !416)
!1186 = !DILocation(line: 1382, column: 5, scope: !416)
!1187 = !DILocation(line: 1383, column: 29, scope: !416)
!1188 = !DILocation(line: 1383, column: 5, scope: !416)
!1189 = !DILocation(line: 1385, column: 11, scope: !416)
!1190 = !DILocation(line: 1385, column: 9, scope: !416)
!1191 = !DILocation(line: 1386, column: 9, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1386, column: 9)
!1193 = !DILocation(line: 1386, column: 13, scope: !1192)
!1194 = !DILocation(line: 1386, column: 9, scope: !416)
!1195 = !DILocation(line: 1387, column: 28, scope: !1192)
!1196 = !DILocation(line: 1387, column: 47, scope: !1192)
!1197 = !DILocation(line: 1387, column: 9, scope: !1192)
!1198 = !DILocation(line: 1389, column: 32, scope: !416)
!1199 = !DILocation(line: 1389, column: 11, scope: !416)
!1200 = !DILocation(line: 1389, column: 9, scope: !416)
!1201 = !DILocation(line: 1390, column: 9, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !416, file: !362, line: 1390, column: 9)
!1203 = !DILocation(line: 1390, column: 13, scope: !1202)
!1204 = !DILocation(line: 1390, column: 9, scope: !416)
!1205 = !DILocation(line: 1391, column: 28, scope: !1202)
!1206 = !DILocation(line: 1391, column: 55, scope: !1202)
!1207 = !DILocation(line: 1391, column: 9, scope: !1202)
!1208 = !DILocation(line: 1393, column: 32, scope: !416)
!1209 = !DILocation(line: 1393, column: 5, scope: !416)
!1210 = !DILocation(line: 1395, column: 12, scope: !416)
!1211 = !DILocation(line: 1395, column: 5, scope: !416)
!1212 = !DILocation(line: 1396, column: 1, scope: !416)
!1213 = !DILocation(line: 542, column: 26, scope: !422)
!1214 = !DILocation(line: 544, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !422, file: !362, line: 544, column: 9)
!1216 = !DILocation(line: 544, column: 15, scope: !1215)
!1217 = !{!1218, !1220, i64 148}
!1218 = !{!"", !1155, i64 0, !1219, i64 16, !1136, i64 128, !1136, i64 136, !1137, i64 144, !1220, i64 148, !1136, i64 152, !1136, i64 160}
!1219 = !{!"z_stream_s", !1136, i64 0, !1220, i64 8, !1156, i64 16, !1136, i64 24, !1220, i64 32, !1156, i64 40, !1136, i64 48, !1136, i64 56, !1136, i64 64, !1136, i64 72, !1136, i64 80, !1220, i64 88, !1156, i64 96, !1156, i64 104}
!1220 = !{!"int", !1137, i64 0}
!1221 = !DILocation(line: 544, column: 9, scope: !422)
!1222 = !DILocation(line: 545, column: 21, scope: !1215)
!1223 = !DILocation(line: 545, column: 27, scope: !1215)
!1224 = !DILocation(line: 545, column: 9, scope: !1215)
!1225 = !DILocation(line: 546, column: 13, scope: !422)
!1226 = !DILocation(line: 546, column: 5, scope: !422)
!1227 = !DILocation(line: 547, column: 1, scope: !422)
!1228 = !DILocation(line: 530, column: 21, scope: !427)
!1229 = !DILocation(line: 533, column: 24, scope: !427)
!1230 = !DILocation(line: 533, column: 30, scope: !427)
!1231 = !{!1218, !1136, i64 160}
!1232 = !DILocation(line: 533, column: 5, scope: !427)
!1233 = !DILocation(line: 535, column: 5, scope: !427)
!1234 = !DILocation(line: 535, column: 10, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !431, file: !362, discriminator: 1)
!1236 = !DILocation(line: 535, column: 20, scope: !431)
!1237 = !DILocation(line: 535, column: 51, scope: !431)
!1238 = !DILocation(line: 535, column: 57, scope: !431)
!1239 = !{!1218, !1136, i64 128}
!1240 = !DILocation(line: 535, column: 75, scope: !434)
!1241 = !DILocation(line: 535, column: 91, scope: !434)
!1242 = !DILocation(line: 535, column: 75, scope: !431)
!1243 = !DILocation(line: 535, column: 106, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !434, file: !362, discriminator: 2)
!1245 = !DILocation(line: 535, column: 111, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !433, file: !362, discriminator: 4)
!1247 = !DILocation(line: 535, column: 121, scope: !433)
!1248 = !DILocation(line: 535, column: 151, scope: !433)
!1249 = !DILocation(line: 535, column: 177, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !433, file: !362, line: 535, column: 174)
!1251 = !DILocation(line: 535, column: 194, scope: !1250)
!1252 = !DILocation(line: 535, column: 174, scope: !1250)
!1253 = !DILocation(line: 535, column: 204, scope: !1250)
!1254 = !DILocation(line: 535, column: 174, scope: !433)
!1255 = !DILocation(line: 535, column: 174, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !433, file: !362, discriminator: 5)
!1257 = !DILocation(line: 535, column: 235, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1250, file: !362, discriminator: 6)
!1259 = !DILocation(line: 535, column: 253, scope: !1250)
!1260 = !{!1155, !1136, i64 8}
!1261 = !DILocation(line: 535, column: 263, scope: !1250)
!1262 = !{!1263, !1136, i64 48}
!1263 = !{!"_typeobject", !1264, i64 0, !1136, i64 24, !1156, i64 32, !1156, i64 40, !1136, i64 48, !1136, i64 56, !1136, i64 64, !1136, i64 72, !1136, i64 80, !1136, i64 88, !1136, i64 96, !1136, i64 104, !1136, i64 112, !1136, i64 120, !1136, i64 128, !1136, i64 136, !1136, i64 144, !1136, i64 152, !1136, i64 160, !1156, i64 168, !1136, i64 176, !1136, i64 184, !1136, i64 192, !1136, i64 200, !1156, i64 208, !1136, i64 216, !1136, i64 224, !1136, i64 232, !1136, i64 240, !1136, i64 248, !1136, i64 256, !1136, i64 264, !1136, i64 272, !1136, i64 280, !1156, i64 288, !1136, i64 296, !1136, i64 304, !1136, i64 312, !1136, i64 320, !1136, i64 328, !1136, i64 336, !1136, i64 344, !1136, i64 352, !1136, i64 360, !1136, i64 368, !1136, i64 376, !1220, i64 384, !1136, i64 392}
!1264 = !{!"", !1155, i64 0, !1156, i64 16}
!1265 = !DILocation(line: 535, column: 288, scope: !1250)
!1266 = !DILocation(line: 535, column: 219, scope: !1250)
!1267 = !DILocation(line: 535, column: 307, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !434, file: !362, discriminator: 7)
!1269 = !DILocation(line: 535, column: 307, scope: !433)
!1270 = !DILocation(line: 535, column: 307, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !433, file: !362, discriminator: 8)
!1272 = !DILocation(line: 535, column: 307, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !433, file: !362, discriminator: 9)
!1274 = !DILocation(line: 535, column: 320, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1276, file: !362, discriminator: 10)
!1276 = !DILexicalBlockFile(scope: !427, file: !362, discriminator: 3)
!1277 = !DILocation(line: 535, column: 320, scope: !431)
!1278 = !DILocation(line: 536, column: 5, scope: !427)
!1279 = !DILocation(line: 536, column: 10, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !436, file: !362, discriminator: 1)
!1281 = !DILocation(line: 536, column: 20, scope: !436)
!1282 = !DILocation(line: 536, column: 51, scope: !436)
!1283 = !DILocation(line: 536, column: 57, scope: !436)
!1284 = !{!1218, !1136, i64 136}
!1285 = !DILocation(line: 536, column: 79, scope: !439)
!1286 = !DILocation(line: 536, column: 95, scope: !439)
!1287 = !DILocation(line: 536, column: 79, scope: !436)
!1288 = !DILocation(line: 536, column: 110, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !439, file: !362, discriminator: 2)
!1290 = !DILocation(line: 536, column: 115, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !438, file: !362, discriminator: 4)
!1292 = !DILocation(line: 536, column: 125, scope: !438)
!1293 = !DILocation(line: 536, column: 155, scope: !438)
!1294 = !DILocation(line: 536, column: 181, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !438, file: !362, line: 536, column: 178)
!1296 = !DILocation(line: 536, column: 198, scope: !1295)
!1297 = !DILocation(line: 536, column: 178, scope: !1295)
!1298 = !DILocation(line: 536, column: 208, scope: !1295)
!1299 = !DILocation(line: 536, column: 178, scope: !438)
!1300 = !DILocation(line: 536, column: 178, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !438, file: !362, discriminator: 5)
!1302 = !DILocation(line: 536, column: 239, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1295, file: !362, discriminator: 6)
!1304 = !DILocation(line: 536, column: 257, scope: !1295)
!1305 = !DILocation(line: 536, column: 267, scope: !1295)
!1306 = !DILocation(line: 536, column: 292, scope: !1295)
!1307 = !DILocation(line: 536, column: 223, scope: !1295)
!1308 = !DILocation(line: 536, column: 311, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !439, file: !362, discriminator: 7)
!1310 = !DILocation(line: 536, column: 311, scope: !438)
!1311 = !DILocation(line: 536, column: 311, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !438, file: !362, discriminator: 8)
!1313 = !DILocation(line: 536, column: 311, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !438, file: !362, discriminator: 9)
!1315 = !DILocation(line: 536, column: 324, scope: !1275)
!1316 = !DILocation(line: 536, column: 324, scope: !436)
!1317 = !DILocation(line: 537, column: 5, scope: !427)
!1318 = !DILocation(line: 537, column: 10, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !441, file: !362, discriminator: 1)
!1320 = !DILocation(line: 537, column: 20, scope: !441)
!1321 = !DILocation(line: 537, column: 51, scope: !441)
!1322 = !DILocation(line: 537, column: 57, scope: !441)
!1323 = !{!1218, !1136, i64 152}
!1324 = !DILocation(line: 537, column: 69, scope: !444)
!1325 = !DILocation(line: 537, column: 85, scope: !444)
!1326 = !DILocation(line: 537, column: 69, scope: !441)
!1327 = !DILocation(line: 537, column: 100, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !444, file: !362, discriminator: 2)
!1329 = !DILocation(line: 537, column: 105, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !443, file: !362, discriminator: 4)
!1331 = !DILocation(line: 537, column: 115, scope: !443)
!1332 = !DILocation(line: 537, column: 145, scope: !443)
!1333 = !DILocation(line: 537, column: 171, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !443, file: !362, line: 537, column: 168)
!1335 = !DILocation(line: 537, column: 188, scope: !1334)
!1336 = !DILocation(line: 537, column: 168, scope: !1334)
!1337 = !DILocation(line: 537, column: 198, scope: !1334)
!1338 = !DILocation(line: 537, column: 168, scope: !443)
!1339 = !DILocation(line: 537, column: 168, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !443, file: !362, discriminator: 5)
!1341 = !DILocation(line: 537, column: 229, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1334, file: !362, discriminator: 6)
!1343 = !DILocation(line: 537, column: 247, scope: !1334)
!1344 = !DILocation(line: 537, column: 257, scope: !1334)
!1345 = !DILocation(line: 537, column: 282, scope: !1334)
!1346 = !DILocation(line: 537, column: 213, scope: !1334)
!1347 = !DILocation(line: 537, column: 301, scope: !1348)
!1348 = !DILexicalBlockFile(scope: !444, file: !362, discriminator: 7)
!1349 = !DILocation(line: 537, column: 301, scope: !443)
!1350 = !DILocation(line: 537, column: 301, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !443, file: !362, discriminator: 8)
!1352 = !DILocation(line: 537, column: 301, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !443, file: !362, discriminator: 9)
!1354 = !DILocation(line: 537, column: 314, scope: !1275)
!1355 = !DILocation(line: 537, column: 314, scope: !441)
!1356 = !DILocation(line: 538, column: 19, scope: !427)
!1357 = !DILocation(line: 538, column: 5, scope: !427)
!1358 = !DILocation(line: 539, column: 1, scope: !427)
!1359 = !DILocation(line: 198, column: 36, scope: !445)
!1360 = !DILocation(line: 198, column: 52, scope: !445)
!1361 = !DILocation(line: 200, column: 5, scope: !445)
!1362 = !DILocation(line: 200, column: 15, scope: !445)
!1363 = !DILocation(line: 201, column: 5, scope: !445)
!1364 = !DILocation(line: 201, column: 15, scope: !445)
!1365 = !DILocation(line: 203, column: 27, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !445, file: !446, line: 203, column: 9)
!1367 = !DILocation(line: 203, column: 10, scope: !1366)
!1368 = !DILocation(line: 203, column: 9, scope: !445)
!1369 = !DILocation(line: 206, column: 9, scope: !1366)
!1370 = !DILocation(line: 207, column: 48, scope: !445)
!1371 = !DILocation(line: 207, column: 20, scope: !445)
!1372 = !DILocation(line: 207, column: 18, scope: !445)
!1373 = !DILocation(line: 207, column: 5, scope: !445)
!1374 = !DILocation(line: 211, column: 14, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !445, file: !446, line: 211, column: 9)
!1376 = !{!1377, !1136, i64 8}
!1377 = !{!"bufferinfo", !1136, i64 0, !1136, i64 8, !1156, i64 16, !1156, i64 24, !1220, i64 32, !1220, i64 36, !1136, i64 40, !1136, i64 48, !1136, i64 56, !1136, i64 64, !1136, i64 72}
!1378 = !DILocation(line: 211, column: 9, scope: !1375)
!1379 = !DILocation(line: 211, column: 9, scope: !445)
!1380 = !DILocation(line: 212, column: 8, scope: !1375)
!1381 = !DILocation(line: 214, column: 12, scope: !445)
!1382 = !DILocation(line: 215, column: 1, scope: !445)
!1383 = !DILocation(line: 214, column: 5, scope: !445)
!1384 = !DILocation(line: 280, column: 33, scope: !564)
!1385 = !DILocation(line: 280, column: 49, scope: !564)
!1386 = !DILocation(line: 282, column: 5, scope: !564)
!1387 = !DILocation(line: 282, column: 15, scope: !564)
!1388 = !DILocation(line: 283, column: 5, scope: !564)
!1389 = !DILocation(line: 283, column: 9, scope: !564)
!1390 = !{!1220, !1220, i64 0}
!1391 = !DILocation(line: 285, column: 27, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !564, file: !446, line: 285, column: 9)
!1393 = !DILocation(line: 285, column: 10, scope: !1392)
!1394 = !DILocation(line: 285, column: 9, scope: !564)
!1395 = !DILocation(line: 288, column: 9, scope: !1392)
!1396 = !DILocation(line: 289, column: 45, scope: !564)
!1397 = !DILocation(line: 289, column: 51, scope: !564)
!1398 = !DILocation(line: 289, column: 20, scope: !564)
!1399 = !DILocation(line: 289, column: 18, scope: !564)
!1400 = !DILocation(line: 289, column: 5, scope: !564)
!1401 = !DILocation(line: 292, column: 12, scope: !564)
!1402 = !DILocation(line: 293, column: 1, scope: !564)
!1403 = !DILocation(line: 292, column: 5, scope: !564)
!1404 = !DILocation(line: 310, column: 32, scope: !614)
!1405 = !DILocation(line: 310, column: 48, scope: !614)
!1406 = !DILocation(line: 312, column: 36, scope: !614)
!1407 = !DILocation(line: 312, column: 12, scope: !614)
!1408 = !DILocation(line: 312, column: 5, scope: !614)
!1409 = !DILocation(line: 572, column: 41, scope: !454)
!1410 = !DILocation(line: 572, column: 58, scope: !454)
!1411 = !DILocation(line: 575, column: 5, scope: !454)
!1412 = !DILocation(line: 575, column: 9, scope: !454)
!1413 = !DILocation(line: 576, column: 5, scope: !454)
!1414 = !DILocation(line: 576, column: 18, scope: !454)
!1415 = !DILocation(line: 577, column: 5, scope: !454)
!1416 = !DILocation(line: 577, column: 18, scope: !454)
!1417 = !DILocation(line: 577, column: 38, scope: !454)
!1418 = !DILocation(line: 578, column: 5, scope: !454)
!1419 = !DILocation(line: 578, column: 15, scope: !454)
!1420 = !DILocation(line: 579, column: 5, scope: !454)
!1421 = !DILocation(line: 579, column: 11, scope: !454)
!1422 = !DILocation(line: 580, column: 5, scope: !454)
!1423 = !DILocation(line: 580, column: 19, scope: !454)
!1424 = !DILocation(line: 582, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !454, file: !362, line: 582, column: 9)
!1426 = !DILocation(line: 582, column: 23, scope: !1425)
!1427 = !{!1377, !1156, i64 16}
!1428 = !DILocation(line: 582, column: 27, scope: !1425)
!1429 = !DILocation(line: 582, column: 9, scope: !454)
!1430 = !DILocation(line: 583, column: 25, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1425, file: !362, line: 582, column: 51)
!1432 = !DILocation(line: 583, column: 9, scope: !1431)
!1433 = !DILocation(line: 585, column: 9, scope: !1431)
!1434 = !DILocation(line: 587, column: 13, scope: !454)
!1435 = !DILocation(line: 587, column: 19, scope: !454)
!1436 = !{!1377, !1136, i64 0}
!1437 = !DILocation(line: 587, column: 11, scope: !454)
!1438 = !DILocation(line: 588, column: 28, scope: !454)
!1439 = !DILocation(line: 588, column: 34, scope: !454)
!1440 = !DILocation(line: 588, column: 14, scope: !454)
!1441 = !DILocation(line: 588, column: 12, scope: !454)
!1442 = !DILocation(line: 590, column: 58, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !454, file: !362, line: 590, column: 9)
!1444 = !DILocation(line: 590, column: 20, scope: !1443)
!1445 = !DILocation(line: 590, column: 18, scope: !1443)
!1446 = !DILocation(line: 590, column: 9, scope: !454)
!1447 = !DILocation(line: 591, column: 9, scope: !1443)
!1448 = !DILocation(line: 593, column: 7, scope: !468)
!1449 = !DILocation(line: 593, column: 22, scope: !468)
!1450 = !DILocation(line: 593, column: 37, scope: !468)
!1451 = !DILocation(line: 593, column: 35, scope: !468)
!1452 = !DILocation(line: 593, column: 82, scope: !468)
!1453 = !DILocation(line: 593, column: 89, scope: !468)
!1454 = !DILocation(line: 593, column: 59, scope: !468)
!1455 = !DILocation(line: 593, column: 120, scope: !468)
!1456 = !DILocation(line: 593, column: 99, scope: !468)
!1457 = !DILocation(line: 593, column: 128, scope: !454)
!1458 = !DILocation(line: 595, column: 23, scope: !454)
!1459 = !DILocation(line: 595, column: 29, scope: !454)
!1460 = !DILocation(line: 595, column: 33, scope: !454)
!1461 = !{!1218, !1156, i64 56}
!1462 = !DILocation(line: 595, column: 21, scope: !454)
!1463 = !{!1156, !1156, i64 0}
!1464 = !DILocation(line: 596, column: 26, scope: !454)
!1465 = !DILocation(line: 596, column: 5, scope: !454)
!1466 = !DILocation(line: 596, column: 11, scope: !454)
!1467 = !DILocation(line: 596, column: 15, scope: !454)
!1468 = !DILocation(line: 596, column: 24, scope: !454)
!1469 = !{!1218, !1220, i64 24}
!1470 = !DILocation(line: 597, column: 25, scope: !454)
!1471 = !DILocation(line: 597, column: 5, scope: !454)
!1472 = !DILocation(line: 597, column: 11, scope: !454)
!1473 = !DILocation(line: 597, column: 15, scope: !454)
!1474 = !DILocation(line: 597, column: 23, scope: !454)
!1475 = !{!1218, !1136, i64 16}
!1476 = !DILocation(line: 598, column: 27, scope: !454)
!1477 = !DILocation(line: 598, column: 5, scope: !454)
!1478 = !DILocation(line: 598, column: 11, scope: !454)
!1479 = !DILocation(line: 598, column: 15, scope: !454)
!1480 = !DILocation(line: 598, column: 25, scope: !454)
!1481 = !{!1218, !1220, i64 48}
!1482 = !DILocation(line: 599, column: 78, scope: !454)
!1483 = !DILocation(line: 599, column: 60, scope: !454)
!1484 = !DILocation(line: 599, column: 88, scope: !454)
!1485 = !DILocation(line: 599, column: 58, scope: !454)
!1486 = !DILocation(line: 599, column: 5, scope: !454)
!1487 = !DILocation(line: 599, column: 11, scope: !454)
!1488 = !DILocation(line: 599, column: 15, scope: !454)
!1489 = !DILocation(line: 599, column: 24, scope: !454)
!1490 = !{!1218, !1136, i64 40}
!1491 = !DILocation(line: 601, column: 7, scope: !528)
!1492 = !DILocation(line: 601, column: 22, scope: !528)
!1493 = !DILocation(line: 601, column: 37, scope: !528)
!1494 = !DILocation(line: 601, column: 35, scope: !528)
!1495 = !DILocation(line: 602, column: 21, scope: !528)
!1496 = !DILocation(line: 602, column: 27, scope: !528)
!1497 = !DILocation(line: 602, column: 11, scope: !528)
!1498 = !DILocation(line: 602, column: 9, scope: !528)
!1499 = !DILocation(line: 603, column: 26, scope: !528)
!1500 = !DILocation(line: 603, column: 5, scope: !528)
!1501 = !DILocation(line: 603, column: 34, scope: !454)
!1502 = !DILocation(line: 607, column: 5, scope: !454)
!1503 = !DILocation(line: 607, column: 12, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !362, discriminator: 4)
!1505 = !DILexicalBlockFile(scope: !454, file: !362, discriminator: 1)
!1506 = !DILocation(line: 607, column: 16, scope: !454)
!1507 = !DILocation(line: 607, column: 21, scope: !454)
!1508 = !DILocation(line: 607, column: 24, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !454, file: !362, discriminator: 2)
!1510 = !DILocation(line: 607, column: 30, scope: !454)
!1511 = !DILocation(line: 607, column: 34, scope: !454)
!1512 = !DILocation(line: 607, column: 44, scope: !454)
!1513 = !DILocation(line: 607, column: 5, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !454, file: !362, discriminator: 3)
!1515 = !DILocation(line: 608, column: 13, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !533, file: !362, line: 608, column: 13)
!1517 = !DILocation(line: 608, column: 20, scope: !1516)
!1518 = !DILocation(line: 608, column: 13, scope: !533)
!1519 = !DILocation(line: 609, column: 26, scope: !1516)
!1520 = !DILocation(line: 609, column: 33, scope: !1516)
!1521 = !DILocation(line: 609, column: 24, scope: !1516)
!1522 = !DILocation(line: 609, column: 13, scope: !1516)
!1523 = !DILocation(line: 611, column: 24, scope: !1516)
!1524 = !DILocation(line: 612, column: 38, scope: !532)
!1525 = !DILocation(line: 612, column: 13, scope: !532)
!1526 = !DILocation(line: 612, column: 50, scope: !532)
!1527 = !DILocation(line: 612, column: 13, scope: !533)
!1528 = !DILocation(line: 613, column: 13, scope: !531)
!1529 = !DILocation(line: 613, column: 18, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !530, file: !362, discriminator: 1)
!1531 = !DILocation(line: 613, column: 28, scope: !530)
!1532 = !DILocation(line: 613, column: 51, scope: !530)
!1533 = !DILocation(line: 613, column: 64, scope: !537)
!1534 = !DILocation(line: 613, column: 72, scope: !537)
!1535 = !DILocation(line: 613, column: 64, scope: !530)
!1536 = !DILocation(line: 613, column: 98, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !536, file: !362, discriminator: 2)
!1538 = !DILocation(line: 613, column: 112, scope: !536)
!1539 = !DILocation(line: 613, column: 117, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !535, file: !362, discriminator: 4)
!1541 = !DILocation(line: 613, column: 127, scope: !535)
!1542 = !DILocation(line: 613, column: 157, scope: !535)
!1543 = !DILocation(line: 613, column: 175, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !535, file: !362, line: 613, column: 172)
!1545 = !DILocation(line: 613, column: 192, scope: !1544)
!1546 = !DILocation(line: 613, column: 172, scope: !1544)
!1547 = !DILocation(line: 613, column: 202, scope: !1544)
!1548 = !DILocation(line: 613, column: 172, scope: !535)
!1549 = !DILocation(line: 613, column: 172, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !535, file: !362, discriminator: 5)
!1551 = !DILocation(line: 613, column: 233, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1544, file: !362, discriminator: 6)
!1553 = !DILocation(line: 613, column: 251, scope: !1544)
!1554 = !DILocation(line: 613, column: 261, scope: !1544)
!1555 = !DILocation(line: 613, column: 286, scope: !1544)
!1556 = !DILocation(line: 613, column: 217, scope: !1544)
!1557 = !DILocation(line: 613, column: 305, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !536, file: !362, discriminator: 7)
!1559 = !DILocation(line: 613, column: 305, scope: !535)
!1560 = !DILocation(line: 613, column: 305, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !535, file: !362, discriminator: 8)
!1562 = !DILocation(line: 613, column: 318, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !536, file: !362, discriminator: 9)
!1564 = !DILocation(line: 613, column: 320, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !362, discriminator: 10)
!1566 = !DILexicalBlockFile(scope: !531, file: !362, discriminator: 3)
!1567 = !DILocation(line: 613, column: 320, scope: !530)
!1568 = !DILocation(line: 613, column: 320, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !530, file: !362, discriminator: 11)
!1570 = !DILocation(line: 614, column: 13, scope: !531)
!1571 = !DILocation(line: 617, column: 65, scope: !533)
!1572 = !DILocation(line: 617, column: 47, scope: !533)
!1573 = !DILocation(line: 617, column: 75, scope: !533)
!1574 = !DILocation(line: 617, column: 45, scope: !533)
!1575 = !DILocation(line: 617, column: 87, scope: !533)
!1576 = !DILocation(line: 617, column: 85, scope: !533)
!1577 = !DILocation(line: 616, column: 9, scope: !533)
!1578 = !DILocation(line: 616, column: 15, scope: !533)
!1579 = !DILocation(line: 616, column: 19, scope: !533)
!1580 = !DILocation(line: 616, column: 28, scope: !533)
!1581 = !DILocation(line: 618, column: 31, scope: !533)
!1582 = !DILocation(line: 618, column: 9, scope: !533)
!1583 = !DILocation(line: 618, column: 15, scope: !533)
!1584 = !DILocation(line: 618, column: 19, scope: !533)
!1585 = !DILocation(line: 618, column: 29, scope: !533)
!1586 = !DILocation(line: 619, column: 18, scope: !533)
!1587 = !DILocation(line: 619, column: 16, scope: !533)
!1588 = !DILocation(line: 621, column: 11, scope: !539)
!1589 = !DILocation(line: 621, column: 26, scope: !539)
!1590 = !DILocation(line: 621, column: 41, scope: !539)
!1591 = !DILocation(line: 621, column: 39, scope: !539)
!1592 = !DILocation(line: 622, column: 25, scope: !539)
!1593 = !DILocation(line: 622, column: 31, scope: !539)
!1594 = !DILocation(line: 622, column: 15, scope: !539)
!1595 = !DILocation(line: 622, column: 13, scope: !539)
!1596 = !DILocation(line: 623, column: 30, scope: !539)
!1597 = !DILocation(line: 623, column: 9, scope: !539)
!1598 = !DILocation(line: 623, column: 38, scope: !533)
!1599 = !DILocation(line: 630, column: 9, scope: !543)
!1600 = !DILocation(line: 630, column: 13, scope: !543)
!1601 = !DILocation(line: 630, column: 18, scope: !543)
!1602 = !DILocation(line: 630, column: 21, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !543, file: !362, discriminator: 1)
!1604 = !DILocation(line: 630, column: 25, scope: !543)
!1605 = !DILocation(line: 630, column: 9, scope: !454)
!1606 = !DILocation(line: 631, column: 20, scope: !542)
!1607 = !DILocation(line: 631, column: 26, scope: !542)
!1608 = !DILocation(line: 631, column: 31, scope: !542)
!1609 = !DILocation(line: 631, column: 9, scope: !542)
!1610 = !DILocation(line: 632, column: 9, scope: !542)
!1611 = !DILocation(line: 632, column: 14, scope: !1612)
!1612 = !DILexicalBlockFile(scope: !541, file: !362, discriminator: 1)
!1613 = !DILocation(line: 632, column: 24, scope: !541)
!1614 = !DILocation(line: 632, column: 47, scope: !541)
!1615 = !DILocation(line: 632, column: 60, scope: !547)
!1616 = !DILocation(line: 632, column: 68, scope: !547)
!1617 = !DILocation(line: 632, column: 60, scope: !541)
!1618 = !DILocation(line: 632, column: 94, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !546, file: !362, discriminator: 2)
!1620 = !DILocation(line: 632, column: 108, scope: !546)
!1621 = !DILocation(line: 632, column: 113, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !545, file: !362, discriminator: 4)
!1623 = !DILocation(line: 632, column: 123, scope: !545)
!1624 = !DILocation(line: 632, column: 153, scope: !545)
!1625 = !DILocation(line: 632, column: 171, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !545, file: !362, line: 632, column: 168)
!1627 = !DILocation(line: 632, column: 188, scope: !1626)
!1628 = !DILocation(line: 632, column: 168, scope: !1626)
!1629 = !DILocation(line: 632, column: 198, scope: !1626)
!1630 = !DILocation(line: 632, column: 168, scope: !545)
!1631 = !DILocation(line: 632, column: 168, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !545, file: !362, discriminator: 5)
!1633 = !DILocation(line: 632, column: 229, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1626, file: !362, discriminator: 6)
!1635 = !DILocation(line: 632, column: 247, scope: !1626)
!1636 = !DILocation(line: 632, column: 257, scope: !1626)
!1637 = !DILocation(line: 632, column: 282, scope: !1626)
!1638 = !DILocation(line: 632, column: 213, scope: !1626)
!1639 = !DILocation(line: 632, column: 301, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !546, file: !362, discriminator: 7)
!1641 = !DILocation(line: 632, column: 301, scope: !545)
!1642 = !DILocation(line: 632, column: 301, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !545, file: !362, discriminator: 8)
!1644 = !DILocation(line: 632, column: 314, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !546, file: !362, discriminator: 9)
!1646 = !DILocation(line: 632, column: 316, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !362, discriminator: 10)
!1648 = !DILexicalBlockFile(scope: !542, file: !362, discriminator: 3)
!1649 = !DILocation(line: 632, column: 316, scope: !541)
!1650 = !DILocation(line: 632, column: 316, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !541, file: !362, discriminator: 11)
!1652 = !DILocation(line: 633, column: 9, scope: !542)
!1653 = !DILocation(line: 635, column: 34, scope: !551)
!1654 = !DILocation(line: 635, column: 40, scope: !551)
!1655 = !DILocation(line: 635, column: 44, scope: !551)
!1656 = !DILocation(line: 635, column: 56, scope: !551)
!1657 = !DILocation(line: 635, column: 54, scope: !551)
!1658 = !DILocation(line: 635, column: 9, scope: !551)
!1659 = !DILocation(line: 635, column: 73, scope: !551)
!1660 = !DILocation(line: 635, column: 9, scope: !454)
!1661 = !DILocation(line: 636, column: 9, scope: !550)
!1662 = !DILocation(line: 636, column: 14, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !549, file: !362, discriminator: 1)
!1664 = !DILocation(line: 636, column: 24, scope: !549)
!1665 = !DILocation(line: 636, column: 47, scope: !549)
!1666 = !DILocation(line: 636, column: 60, scope: !555)
!1667 = !DILocation(line: 636, column: 68, scope: !555)
!1668 = !DILocation(line: 636, column: 60, scope: !549)
!1669 = !DILocation(line: 636, column: 94, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !554, file: !362, discriminator: 2)
!1671 = !DILocation(line: 636, column: 108, scope: !554)
!1672 = !DILocation(line: 636, column: 113, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !553, file: !362, discriminator: 4)
!1674 = !DILocation(line: 636, column: 123, scope: !553)
!1675 = !DILocation(line: 636, column: 153, scope: !553)
!1676 = !DILocation(line: 636, column: 171, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !553, file: !362, line: 636, column: 168)
!1678 = !DILocation(line: 636, column: 188, scope: !1677)
!1679 = !DILocation(line: 636, column: 168, scope: !1677)
!1680 = !DILocation(line: 636, column: 198, scope: !1677)
!1681 = !DILocation(line: 636, column: 168, scope: !553)
!1682 = !DILocation(line: 636, column: 168, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !553, file: !362, discriminator: 5)
!1684 = !DILocation(line: 636, column: 229, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1677, file: !362, discriminator: 6)
!1686 = !DILocation(line: 636, column: 247, scope: !1677)
!1687 = !DILocation(line: 636, column: 257, scope: !1677)
!1688 = !DILocation(line: 636, column: 282, scope: !1677)
!1689 = !DILocation(line: 636, column: 213, scope: !1677)
!1690 = !DILocation(line: 636, column: 301, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !554, file: !362, discriminator: 7)
!1692 = !DILocation(line: 636, column: 301, scope: !553)
!1693 = !DILocation(line: 636, column: 301, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !553, file: !362, discriminator: 8)
!1695 = !DILocation(line: 636, column: 314, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !554, file: !362, discriminator: 9)
!1697 = !DILocation(line: 636, column: 316, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !362, discriminator: 10)
!1699 = !DILexicalBlockFile(scope: !550, file: !362, discriminator: 3)
!1700 = !DILocation(line: 636, column: 316, scope: !549)
!1701 = !DILocation(line: 636, column: 316, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !549, file: !362, discriminator: 11)
!1703 = !DILocation(line: 637, column: 5, scope: !550)
!1704 = !DILocation(line: 635, column: 75, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !551, file: !362, discriminator: 1)
!1706 = !DILocation(line: 640, column: 28, scope: !454)
!1707 = !DILocation(line: 640, column: 35, scope: !454)
!1708 = !DILocation(line: 640, column: 5, scope: !454)
!1709 = !DILocation(line: 641, column: 12, scope: !454)
!1710 = !DILocation(line: 641, column: 5, scope: !454)
!1711 = !DILocation(line: 642, column: 1, scope: !454)
!1712 = !DILocation(line: 55, column: 21, scope: !556)
!1713 = !DILocation(line: 55, column: 30, scope: !556)
!1714 = !DILocation(line: 55, column: 41, scope: !556)
!1715 = !DILocation(line: 57, column: 5, scope: !556)
!1716 = !DILocation(line: 57, column: 17, scope: !556)
!1717 = !DILocation(line: 60, column: 9, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !556, file: !362, line: 60, column: 9)
!1719 = !DILocation(line: 60, column: 13, scope: !1718)
!1720 = !DILocation(line: 60, column: 9, scope: !556)
!1721 = !DILocation(line: 61, column: 14, scope: !1718)
!1722 = !DILocation(line: 61, column: 9, scope: !1718)
!1723 = !DILocation(line: 62, column: 9, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !556, file: !362, line: 62, column: 9)
!1725 = !DILocation(line: 62, column: 14, scope: !1724)
!1726 = !DILocation(line: 62, column: 9, scope: !556)
!1727 = !DILocation(line: 63, column: 20, scope: !1724)
!1728 = !{!1219, !1136, i64 48}
!1729 = !DILocation(line: 63, column: 14, scope: !1724)
!1730 = !DILocation(line: 63, column: 9, scope: !1724)
!1731 = !DILocation(line: 64, column: 9, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !556, file: !362, line: 64, column: 9)
!1733 = !DILocation(line: 64, column: 14, scope: !1732)
!1734 = !DILocation(line: 64, column: 9, scope: !556)
!1735 = !DILocation(line: 65, column: 17, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !362, line: 64, column: 20)
!1737 = !DILocation(line: 67, column: 18, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1736, file: !362, line: 65, column: 22)
!1739 = !DILocation(line: 68, column: 13, scope: !1738)
!1740 = !DILocation(line: 70, column: 18, scope: !1738)
!1741 = !DILocation(line: 71, column: 13, scope: !1738)
!1742 = !DILocation(line: 73, column: 18, scope: !1738)
!1743 = !DILocation(line: 74, column: 13, scope: !1738)
!1744 = !DILocation(line: 76, column: 5, scope: !1736)
!1745 = !DILocation(line: 77, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !556, file: !362, line: 77, column: 9)
!1747 = !DILocation(line: 77, column: 14, scope: !1746)
!1748 = !DILocation(line: 77, column: 9, scope: !556)
!1749 = !DILocation(line: 78, column: 22, scope: !1746)
!1750 = !DILocation(line: 78, column: 48, scope: !1746)
!1751 = !DILocation(line: 78, column: 53, scope: !1746)
!1752 = !DILocation(line: 78, column: 9, scope: !1746)
!1753 = !DILocation(line: 80, column: 22, scope: !1746)
!1754 = !DILocation(line: 80, column: 56, scope: !1746)
!1755 = !DILocation(line: 80, column: 61, scope: !1746)
!1756 = !DILocation(line: 80, column: 66, scope: !1746)
!1757 = !DILocation(line: 80, column: 9, scope: !1746)
!1758 = !DILocation(line: 81, column: 1, scope: !556)
!1759 = !DILocation(line: 841, column: 38, scope: !570)
!1760 = !DILocation(line: 841, column: 48, scope: !570)
!1761 = !DILocation(line: 844, column: 5, scope: !570)
!1762 = !DILocation(line: 844, column: 9, scope: !570)
!1763 = !DILocation(line: 845, column: 5, scope: !570)
!1764 = !DILocation(line: 845, column: 18, scope: !570)
!1765 = !DILocation(line: 845, column: 38, scope: !570)
!1766 = !DILocation(line: 846, column: 5, scope: !570)
!1767 = !DILocation(line: 846, column: 15, scope: !570)
!1768 = !DILocation(line: 847, column: 5, scope: !570)
!1769 = !DILocation(line: 847, column: 19, scope: !570)
!1770 = !DILocation(line: 851, column: 9, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !570, file: !362, line: 851, column: 9)
!1772 = !DILocation(line: 851, column: 14, scope: !1771)
!1773 = !DILocation(line: 851, column: 9, scope: !570)
!1774 = !DILocation(line: 852, column: 16, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !362, line: 851, column: 20)
!1776 = !DILocation(line: 852, column: 9, scope: !1775)
!1777 = !DILocation(line: 855, column: 58, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !570, file: !362, line: 855, column: 9)
!1779 = !DILocation(line: 855, column: 20, scope: !1778)
!1780 = !DILocation(line: 855, column: 18, scope: !1778)
!1781 = !DILocation(line: 855, column: 9, scope: !570)
!1782 = !DILocation(line: 856, column: 9, scope: !1778)
!1783 = !DILocation(line: 858, column: 7, scope: !582)
!1784 = !DILocation(line: 858, column: 22, scope: !582)
!1785 = !DILocation(line: 858, column: 37, scope: !582)
!1786 = !DILocation(line: 858, column: 35, scope: !582)
!1787 = !DILocation(line: 858, column: 82, scope: !582)
!1788 = !DILocation(line: 858, column: 89, scope: !582)
!1789 = !DILocation(line: 858, column: 59, scope: !582)
!1790 = !DILocation(line: 858, column: 120, scope: !582)
!1791 = !DILocation(line: 858, column: 99, scope: !582)
!1792 = !DILocation(line: 858, column: 128, scope: !570)
!1793 = !DILocation(line: 860, column: 23, scope: !570)
!1794 = !DILocation(line: 860, column: 29, scope: !570)
!1795 = !DILocation(line: 860, column: 33, scope: !570)
!1796 = !DILocation(line: 860, column: 21, scope: !570)
!1797 = !DILocation(line: 861, column: 5, scope: !570)
!1798 = !DILocation(line: 861, column: 11, scope: !570)
!1799 = !DILocation(line: 861, column: 15, scope: !570)
!1800 = !DILocation(line: 861, column: 24, scope: !570)
!1801 = !DILocation(line: 862, column: 27, scope: !570)
!1802 = !DILocation(line: 862, column: 5, scope: !570)
!1803 = !DILocation(line: 862, column: 11, scope: !570)
!1804 = !DILocation(line: 862, column: 15, scope: !570)
!1805 = !DILocation(line: 862, column: 25, scope: !570)
!1806 = !DILocation(line: 863, column: 78, scope: !570)
!1807 = !DILocation(line: 863, column: 60, scope: !570)
!1808 = !DILocation(line: 863, column: 88, scope: !570)
!1809 = !DILocation(line: 863, column: 58, scope: !570)
!1810 = !DILocation(line: 863, column: 5, scope: !570)
!1811 = !DILocation(line: 863, column: 11, scope: !570)
!1812 = !DILocation(line: 863, column: 15, scope: !570)
!1813 = !DILocation(line: 863, column: 24, scope: !570)
!1814 = !DILocation(line: 865, column: 7, scope: !584)
!1815 = !DILocation(line: 865, column: 22, scope: !584)
!1816 = !DILocation(line: 865, column: 37, scope: !584)
!1817 = !DILocation(line: 865, column: 35, scope: !584)
!1818 = !DILocation(line: 866, column: 21, scope: !584)
!1819 = !DILocation(line: 866, column: 27, scope: !584)
!1820 = !DILocation(line: 866, column: 33, scope: !584)
!1821 = !DILocation(line: 866, column: 11, scope: !584)
!1822 = !DILocation(line: 866, column: 9, scope: !584)
!1823 = !DILocation(line: 867, column: 26, scope: !584)
!1824 = !DILocation(line: 867, column: 5, scope: !584)
!1825 = !DILocation(line: 867, column: 34, scope: !570)
!1826 = !DILocation(line: 871, column: 5, scope: !570)
!1827 = !DILocation(line: 871, column: 12, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !362, discriminator: 4)
!1829 = !DILexicalBlockFile(scope: !570, file: !362, discriminator: 1)
!1830 = !DILocation(line: 871, column: 16, scope: !570)
!1831 = !DILocation(line: 871, column: 21, scope: !570)
!1832 = !DILocation(line: 871, column: 24, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !570, file: !362, discriminator: 2)
!1834 = !DILocation(line: 871, column: 30, scope: !570)
!1835 = !DILocation(line: 871, column: 34, scope: !570)
!1836 = !DILocation(line: 871, column: 44, scope: !570)
!1837 = !DILocation(line: 871, column: 5, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !570, file: !362, discriminator: 3)
!1839 = !DILocation(line: 872, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !589, file: !362, line: 872, column: 13)
!1841 = !DILocation(line: 872, column: 20, scope: !1840)
!1842 = !DILocation(line: 872, column: 13, scope: !589)
!1843 = !DILocation(line: 873, column: 26, scope: !1840)
!1844 = !DILocation(line: 873, column: 33, scope: !1840)
!1845 = !DILocation(line: 873, column: 24, scope: !1840)
!1846 = !DILocation(line: 873, column: 13, scope: !1840)
!1847 = !DILocation(line: 875, column: 24, scope: !1840)
!1848 = !DILocation(line: 876, column: 38, scope: !588)
!1849 = !DILocation(line: 876, column: 13, scope: !588)
!1850 = !DILocation(line: 876, column: 50, scope: !588)
!1851 = !DILocation(line: 876, column: 13, scope: !589)
!1852 = !DILocation(line: 877, column: 13, scope: !587)
!1853 = !DILocation(line: 877, column: 18, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !586, file: !362, discriminator: 1)
!1855 = !DILocation(line: 877, column: 28, scope: !586)
!1856 = !DILocation(line: 877, column: 51, scope: !586)
!1857 = !DILocation(line: 877, column: 64, scope: !593)
!1858 = !DILocation(line: 877, column: 72, scope: !593)
!1859 = !DILocation(line: 877, column: 64, scope: !586)
!1860 = !DILocation(line: 877, column: 98, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !592, file: !362, discriminator: 2)
!1862 = !DILocation(line: 877, column: 112, scope: !592)
!1863 = !DILocation(line: 877, column: 117, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !591, file: !362, discriminator: 4)
!1865 = !DILocation(line: 877, column: 127, scope: !591)
!1866 = !DILocation(line: 877, column: 157, scope: !591)
!1867 = !DILocation(line: 877, column: 175, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !591, file: !362, line: 877, column: 172)
!1869 = !DILocation(line: 877, column: 192, scope: !1868)
!1870 = !DILocation(line: 877, column: 172, scope: !1868)
!1871 = !DILocation(line: 877, column: 202, scope: !1868)
!1872 = !DILocation(line: 877, column: 172, scope: !591)
!1873 = !DILocation(line: 877, column: 172, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !591, file: !362, discriminator: 5)
!1875 = !DILocation(line: 877, column: 233, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1868, file: !362, discriminator: 6)
!1877 = !DILocation(line: 877, column: 251, scope: !1868)
!1878 = !DILocation(line: 877, column: 261, scope: !1868)
!1879 = !DILocation(line: 877, column: 286, scope: !1868)
!1880 = !DILocation(line: 877, column: 217, scope: !1868)
!1881 = !DILocation(line: 877, column: 305, scope: !1882)
!1882 = !DILexicalBlockFile(scope: !592, file: !362, discriminator: 7)
!1883 = !DILocation(line: 877, column: 305, scope: !591)
!1884 = !DILocation(line: 877, column: 305, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !591, file: !362, discriminator: 8)
!1886 = !DILocation(line: 877, column: 318, scope: !1887)
!1887 = !DILexicalBlockFile(scope: !592, file: !362, discriminator: 9)
!1888 = !DILocation(line: 877, column: 320, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1890, file: !362, discriminator: 10)
!1890 = !DILexicalBlockFile(scope: !587, file: !362, discriminator: 3)
!1891 = !DILocation(line: 877, column: 320, scope: !586)
!1892 = !DILocation(line: 877, column: 320, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !586, file: !362, discriminator: 11)
!1894 = !DILocation(line: 878, column: 13, scope: !587)
!1895 = !DILocation(line: 881, column: 65, scope: !589)
!1896 = !DILocation(line: 881, column: 47, scope: !589)
!1897 = !DILocation(line: 881, column: 75, scope: !589)
!1898 = !DILocation(line: 881, column: 45, scope: !589)
!1899 = !DILocation(line: 881, column: 87, scope: !589)
!1900 = !DILocation(line: 881, column: 85, scope: !589)
!1901 = !DILocation(line: 880, column: 9, scope: !589)
!1902 = !DILocation(line: 880, column: 15, scope: !589)
!1903 = !DILocation(line: 880, column: 19, scope: !589)
!1904 = !DILocation(line: 880, column: 28, scope: !589)
!1905 = !DILocation(line: 882, column: 31, scope: !589)
!1906 = !DILocation(line: 882, column: 9, scope: !589)
!1907 = !DILocation(line: 882, column: 15, scope: !589)
!1908 = !DILocation(line: 882, column: 19, scope: !589)
!1909 = !DILocation(line: 882, column: 29, scope: !589)
!1910 = !DILocation(line: 883, column: 18, scope: !589)
!1911 = !DILocation(line: 883, column: 16, scope: !589)
!1912 = !DILocation(line: 885, column: 11, scope: !595)
!1913 = !DILocation(line: 885, column: 26, scope: !595)
!1914 = !DILocation(line: 885, column: 41, scope: !595)
!1915 = !DILocation(line: 885, column: 39, scope: !595)
!1916 = !DILocation(line: 886, column: 25, scope: !595)
!1917 = !DILocation(line: 886, column: 31, scope: !595)
!1918 = !DILocation(line: 886, column: 37, scope: !595)
!1919 = !DILocation(line: 886, column: 15, scope: !595)
!1920 = !DILocation(line: 886, column: 13, scope: !595)
!1921 = !DILocation(line: 887, column: 30, scope: !595)
!1922 = !DILocation(line: 887, column: 9, scope: !595)
!1923 = !DILocation(line: 887, column: 38, scope: !589)
!1924 = !DILocation(line: 893, column: 9, scope: !601)
!1925 = !DILocation(line: 893, column: 13, scope: !601)
!1926 = !DILocation(line: 893, column: 18, scope: !601)
!1927 = !DILocation(line: 893, column: 21, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !601, file: !362, discriminator: 1)
!1929 = !DILocation(line: 893, column: 26, scope: !601)
!1930 = !DILocation(line: 893, column: 9, scope: !570)
!1931 = !DILocation(line: 894, column: 28, scope: !600)
!1932 = !DILocation(line: 894, column: 34, scope: !600)
!1933 = !DILocation(line: 894, column: 15, scope: !600)
!1934 = !DILocation(line: 894, column: 13, scope: !600)
!1935 = !DILocation(line: 895, column: 13, scope: !599)
!1936 = !DILocation(line: 895, column: 17, scope: !599)
!1937 = !DILocation(line: 895, column: 13, scope: !600)
!1938 = !DILocation(line: 896, column: 24, scope: !598)
!1939 = !DILocation(line: 896, column: 30, scope: !598)
!1940 = !DILocation(line: 896, column: 35, scope: !598)
!1941 = !DILocation(line: 896, column: 13, scope: !598)
!1942 = !DILocation(line: 897, column: 13, scope: !598)
!1943 = !DILocation(line: 897, column: 18, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !597, file: !362, discriminator: 1)
!1945 = !DILocation(line: 897, column: 28, scope: !597)
!1946 = !DILocation(line: 897, column: 58, scope: !597)
!1947 = !DILocation(line: 897, column: 75, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !597, file: !362, line: 897, column: 72)
!1949 = !DILocation(line: 897, column: 92, scope: !1948)
!1950 = !DILocation(line: 897, column: 72, scope: !1948)
!1951 = !DILocation(line: 897, column: 102, scope: !1948)
!1952 = !DILocation(line: 897, column: 72, scope: !597)
!1953 = !DILocation(line: 897, column: 72, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !597, file: !362, discriminator: 2)
!1955 = !DILocation(line: 897, column: 133, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1948, file: !362, discriminator: 3)
!1957 = !DILocation(line: 897, column: 151, scope: !1948)
!1958 = !DILocation(line: 897, column: 161, scope: !1948)
!1959 = !DILocation(line: 897, column: 186, scope: !1948)
!1960 = !DILocation(line: 897, column: 117, scope: !1948)
!1961 = !DILocation(line: 897, column: 205, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !598, file: !362, discriminator: 4)
!1963 = !DILocation(line: 897, column: 205, scope: !597)
!1964 = !DILocation(line: 897, column: 205, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !597, file: !362, discriminator: 5)
!1966 = !DILocation(line: 898, column: 20, scope: !598)
!1967 = !DILocation(line: 899, column: 13, scope: !598)
!1968 = !DILocation(line: 902, column: 13, scope: !599)
!1969 = !DILocation(line: 902, column: 19, scope: !599)
!1970 = !DILocation(line: 902, column: 34, scope: !599)
!1971 = !DILocation(line: 908, column: 5, scope: !600)
!1972 = !DILocation(line: 908, column: 16, scope: !605)
!1973 = !DILocation(line: 908, column: 19, scope: !605)
!1974 = !DILocation(line: 908, column: 23, scope: !605)
!1975 = !DILocation(line: 908, column: 26, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !605, file: !362, discriminator: 1)
!1977 = !DILocation(line: 908, column: 29, scope: !605)
!1978 = !DILocation(line: 908, column: 16, scope: !601)
!1979 = !DILocation(line: 909, column: 20, scope: !604)
!1980 = !DILocation(line: 909, column: 26, scope: !604)
!1981 = !DILocation(line: 909, column: 31, scope: !604)
!1982 = !DILocation(line: 909, column: 9, scope: !604)
!1983 = !DILocation(line: 910, column: 9, scope: !604)
!1984 = !DILocation(line: 910, column: 14, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !603, file: !362, discriminator: 1)
!1986 = !DILocation(line: 910, column: 24, scope: !603)
!1987 = !DILocation(line: 910, column: 54, scope: !603)
!1988 = !DILocation(line: 910, column: 71, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !603, file: !362, line: 910, column: 68)
!1990 = !DILocation(line: 910, column: 88, scope: !1989)
!1991 = !DILocation(line: 910, column: 68, scope: !1989)
!1992 = !DILocation(line: 910, column: 98, scope: !1989)
!1993 = !DILocation(line: 910, column: 68, scope: !603)
!1994 = !DILocation(line: 910, column: 68, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !603, file: !362, discriminator: 2)
!1996 = !DILocation(line: 910, column: 129, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1989, file: !362, discriminator: 3)
!1998 = !DILocation(line: 910, column: 147, scope: !1989)
!1999 = !DILocation(line: 910, column: 157, scope: !1989)
!2000 = !DILocation(line: 910, column: 182, scope: !1989)
!2001 = !DILocation(line: 910, column: 113, scope: !1989)
!2002 = !DILocation(line: 910, column: 201, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !604, file: !362, discriminator: 4)
!2004 = !DILocation(line: 910, column: 201, scope: !603)
!2005 = !DILocation(line: 910, column: 201, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !603, file: !362, discriminator: 5)
!2007 = !DILocation(line: 911, column: 16, scope: !604)
!2008 = !DILocation(line: 912, column: 9, scope: !604)
!2009 = !DILocation(line: 915, column: 34, scope: !609)
!2010 = !DILocation(line: 915, column: 40, scope: !609)
!2011 = !DILocation(line: 915, column: 44, scope: !609)
!2012 = !DILocation(line: 915, column: 56, scope: !609)
!2013 = !DILocation(line: 915, column: 54, scope: !609)
!2014 = !DILocation(line: 915, column: 9, scope: !609)
!2015 = !DILocation(line: 915, column: 73, scope: !609)
!2016 = !DILocation(line: 915, column: 9, scope: !570)
!2017 = !DILocation(line: 916, column: 9, scope: !608)
!2018 = !DILocation(line: 916, column: 14, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !607, file: !362, discriminator: 1)
!2020 = !DILocation(line: 916, column: 24, scope: !607)
!2021 = !DILocation(line: 916, column: 47, scope: !607)
!2022 = !DILocation(line: 916, column: 60, scope: !613)
!2023 = !DILocation(line: 916, column: 68, scope: !613)
!2024 = !DILocation(line: 916, column: 60, scope: !607)
!2025 = !DILocation(line: 916, column: 94, scope: !2026)
!2026 = !DILexicalBlockFile(scope: !612, file: !362, discriminator: 2)
!2027 = !DILocation(line: 916, column: 108, scope: !612)
!2028 = !DILocation(line: 916, column: 113, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !611, file: !362, discriminator: 4)
!2030 = !DILocation(line: 916, column: 123, scope: !611)
!2031 = !DILocation(line: 916, column: 153, scope: !611)
!2032 = !DILocation(line: 916, column: 171, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !611, file: !362, line: 916, column: 168)
!2034 = !DILocation(line: 916, column: 188, scope: !2033)
!2035 = !DILocation(line: 916, column: 168, scope: !2033)
!2036 = !DILocation(line: 916, column: 198, scope: !2033)
!2037 = !DILocation(line: 916, column: 168, scope: !611)
!2038 = !DILocation(line: 916, column: 168, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !611, file: !362, discriminator: 5)
!2040 = !DILocation(line: 916, column: 229, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2033, file: !362, discriminator: 6)
!2042 = !DILocation(line: 916, column: 247, scope: !2033)
!2043 = !DILocation(line: 916, column: 257, scope: !2033)
!2044 = !DILocation(line: 916, column: 282, scope: !2033)
!2045 = !DILocation(line: 916, column: 213, scope: !2033)
!2046 = !DILocation(line: 916, column: 301, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !612, file: !362, discriminator: 7)
!2048 = !DILocation(line: 916, column: 301, scope: !611)
!2049 = !DILocation(line: 916, column: 301, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !611, file: !362, discriminator: 8)
!2051 = !DILocation(line: 916, column: 314, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !612, file: !362, discriminator: 9)
!2053 = !DILocation(line: 916, column: 316, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2055, file: !362, discriminator: 10)
!2055 = !DILexicalBlockFile(scope: !608, file: !362, discriminator: 3)
!2056 = !DILocation(line: 916, column: 316, scope: !607)
!2057 = !DILocation(line: 916, column: 316, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !607, file: !362, discriminator: 11)
!2059 = !DILocation(line: 917, column: 5, scope: !608)
!2060 = !DILocation(line: 915, column: 75, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !609, file: !362, discriminator: 1)
!2062 = !DILocation(line: 920, column: 28, scope: !570)
!2063 = !DILocation(line: 920, column: 35, scope: !570)
!2064 = !DILocation(line: 920, column: 5, scope: !570)
!2065 = !DILocation(line: 922, column: 12, scope: !570)
!2066 = !DILocation(line: 922, column: 5, scope: !570)
!2067 = !DILocation(line: 923, column: 1, scope: !570)
!2068 = !DILocation(line: 934, column: 37, scope: !618)
!2069 = !DILocation(line: 937, column: 5, scope: !618)
!2070 = !DILocation(line: 937, column: 17, scope: !618)
!2071 = !DILocation(line: 938, column: 5, scope: !618)
!2072 = !DILocation(line: 938, column: 9, scope: !618)
!2073 = !DILocation(line: 940, column: 14, scope: !618)
!2074 = !DILocation(line: 940, column: 12, scope: !618)
!2075 = !DILocation(line: 941, column: 10, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !618, file: !362, line: 941, column: 9)
!2077 = !DILocation(line: 941, column: 9, scope: !618)
!2078 = !DILocation(line: 941, column: 18, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2076, file: !362, discriminator: 1)
!2080 = !DILocation(line: 941, column: 18, scope: !2076)
!2081 = !DILocation(line: 946, column: 7, scope: !626)
!2082 = !DILocation(line: 946, column: 22, scope: !626)
!2083 = !DILocation(line: 946, column: 37, scope: !626)
!2084 = !DILocation(line: 946, column: 35, scope: !626)
!2085 = !DILocation(line: 946, column: 82, scope: !626)
!2086 = !DILocation(line: 946, column: 89, scope: !626)
!2087 = !DILocation(line: 946, column: 59, scope: !626)
!2088 = !DILocation(line: 946, column: 120, scope: !626)
!2089 = !DILocation(line: 946, column: 99, scope: !626)
!2090 = !DILocation(line: 946, column: 128, scope: !618)
!2091 = !DILocation(line: 947, column: 24, scope: !618)
!2092 = !DILocation(line: 947, column: 32, scope: !618)
!2093 = !DILocation(line: 947, column: 38, scope: !618)
!2094 = !DILocation(line: 947, column: 44, scope: !618)
!2095 = !DILocation(line: 947, column: 11, scope: !618)
!2096 = !DILocation(line: 947, column: 9, scope: !618)
!2097 = !DILocation(line: 948, column: 12, scope: !618)
!2098 = !DILocation(line: 952, column: 25, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !618, file: !362, line: 948, column: 17)
!2100 = !DILocation(line: 952, column: 9, scope: !2099)
!2101 = !DILocation(line: 953, column: 9, scope: !2099)
!2102 = !DILocation(line: 955, column: 25, scope: !2099)
!2103 = !DILocation(line: 955, column: 9, scope: !2099)
!2104 = !DILocation(line: 957, column: 9, scope: !2099)
!2105 = !DILocation(line: 959, column: 20, scope: !2099)
!2106 = !DILocation(line: 959, column: 26, scope: !2099)
!2107 = !DILocation(line: 959, column: 31, scope: !2099)
!2108 = !DILocation(line: 959, column: 9, scope: !2099)
!2109 = !DILocation(line: 960, column: 9, scope: !2099)
!2110 = !DILocation(line: 962, column: 21, scope: !618)
!2111 = !DILocation(line: 962, column: 27, scope: !618)
!2112 = !DILocation(line: 962, column: 42, scope: !618)
!2113 = !DILocation(line: 962, column: 51, scope: !618)
!2114 = !DILocation(line: 963, column: 21, scope: !618)
!2115 = !DILocation(line: 963, column: 27, scope: !618)
!2116 = !DILocation(line: 963, column: 46, scope: !618)
!2117 = !DILocation(line: 963, column: 55, scope: !618)
!2118 = !DILocation(line: 964, column: 5, scope: !618)
!2119 = !DILocation(line: 964, column: 10, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !628, file: !362, discriminator: 1)
!2121 = !DILocation(line: 964, column: 20, scope: !628)
!2122 = !DILocation(line: 964, column: 51, scope: !628)
!2123 = !DILocation(line: 964, column: 57, scope: !628)
!2124 = !DILocation(line: 964, column: 69, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !628, file: !362, line: 964, column: 69)
!2126 = !DILocation(line: 964, column: 85, scope: !2125)
!2127 = !DILocation(line: 964, column: 69, scope: !628)
!2128 = !DILocation(line: 964, column: 116, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !2125, file: !362, discriminator: 2)
!2130 = !DILocation(line: 964, column: 135, scope: !2125)
!2131 = !DILocation(line: 964, column: 144, scope: !2125)
!2132 = !DILocation(line: 964, column: 100, scope: !2125)
!2133 = !DILocation(line: 964, column: 149, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !362, discriminator: 4)
!2135 = !DILexicalBlockFile(scope: !618, file: !362, discriminator: 3)
!2136 = !DILocation(line: 964, column: 149, scope: !628)
!2137 = !DILocation(line: 964, column: 149, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !628, file: !362, discriminator: 5)
!2139 = !DILocation(line: 965, column: 5, scope: !618)
!2140 = !DILocation(line: 965, column: 10, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !630, file: !362, discriminator: 1)
!2142 = !DILocation(line: 965, column: 20, scope: !630)
!2143 = !DILocation(line: 965, column: 51, scope: !630)
!2144 = !DILocation(line: 965, column: 59, scope: !630)
!2145 = !DILocation(line: 965, column: 77, scope: !633)
!2146 = !DILocation(line: 965, column: 93, scope: !633)
!2147 = !DILocation(line: 965, column: 77, scope: !630)
!2148 = !DILocation(line: 965, column: 108, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !633, file: !362, discriminator: 2)
!2150 = !DILocation(line: 965, column: 113, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !632, file: !362, discriminator: 4)
!2152 = !DILocation(line: 965, column: 123, scope: !632)
!2153 = !DILocation(line: 965, column: 153, scope: !632)
!2154 = !DILocation(line: 965, column: 179, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !632, file: !362, line: 965, column: 176)
!2156 = !DILocation(line: 965, column: 196, scope: !2155)
!2157 = !DILocation(line: 965, column: 176, scope: !2155)
!2158 = !DILocation(line: 965, column: 206, scope: !2155)
!2159 = !DILocation(line: 965, column: 176, scope: !632)
!2160 = !DILocation(line: 965, column: 176, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !632, file: !362, discriminator: 5)
!2162 = !DILocation(line: 965, column: 237, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2155, file: !362, discriminator: 6)
!2164 = !DILocation(line: 965, column: 255, scope: !2155)
!2165 = !DILocation(line: 965, column: 265, scope: !2155)
!2166 = !DILocation(line: 965, column: 290, scope: !2155)
!2167 = !DILocation(line: 965, column: 221, scope: !2155)
!2168 = !DILocation(line: 965, column: 309, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !633, file: !362, discriminator: 7)
!2170 = !DILocation(line: 965, column: 309, scope: !632)
!2171 = !DILocation(line: 965, column: 309, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !632, file: !362, discriminator: 8)
!2173 = !DILocation(line: 965, column: 309, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !632, file: !362, discriminator: 9)
!2175 = !DILocation(line: 965, column: 322, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2135, file: !362, discriminator: 10)
!2177 = !DILocation(line: 965, column: 322, scope: !630)
!2178 = !DILocation(line: 965, column: 322, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !630, file: !362, discriminator: 11)
!2180 = !DILocation(line: 966, column: 5, scope: !618)
!2181 = !DILocation(line: 966, column: 10, scope: !2182)
!2182 = !DILexicalBlockFile(scope: !635, file: !362, discriminator: 1)
!2183 = !DILocation(line: 966, column: 20, scope: !635)
!2184 = !DILocation(line: 966, column: 51, scope: !635)
!2185 = !DILocation(line: 966, column: 59, scope: !635)
!2186 = !DILocation(line: 966, column: 81, scope: !638)
!2187 = !DILocation(line: 966, column: 97, scope: !638)
!2188 = !DILocation(line: 966, column: 81, scope: !635)
!2189 = !DILocation(line: 966, column: 112, scope: !2190)
!2190 = !DILexicalBlockFile(scope: !638, file: !362, discriminator: 2)
!2191 = !DILocation(line: 966, column: 117, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !637, file: !362, discriminator: 4)
!2193 = !DILocation(line: 966, column: 127, scope: !637)
!2194 = !DILocation(line: 966, column: 157, scope: !637)
!2195 = !DILocation(line: 966, column: 183, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !637, file: !362, line: 966, column: 180)
!2197 = !DILocation(line: 966, column: 200, scope: !2196)
!2198 = !DILocation(line: 966, column: 180, scope: !2196)
!2199 = !DILocation(line: 966, column: 210, scope: !2196)
!2200 = !DILocation(line: 966, column: 180, scope: !637)
!2201 = !DILocation(line: 966, column: 180, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !637, file: !362, discriminator: 5)
!2203 = !DILocation(line: 966, column: 241, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2196, file: !362, discriminator: 6)
!2205 = !DILocation(line: 966, column: 259, scope: !2196)
!2206 = !DILocation(line: 966, column: 269, scope: !2196)
!2207 = !DILocation(line: 966, column: 294, scope: !2196)
!2208 = !DILocation(line: 966, column: 225, scope: !2196)
!2209 = !DILocation(line: 966, column: 313, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !638, file: !362, discriminator: 7)
!2211 = !DILocation(line: 966, column: 313, scope: !637)
!2212 = !DILocation(line: 966, column: 313, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !637, file: !362, discriminator: 8)
!2214 = !DILocation(line: 966, column: 313, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !637, file: !362, discriminator: 9)
!2216 = !DILocation(line: 966, column: 326, scope: !2176)
!2217 = !DILocation(line: 966, column: 326, scope: !635)
!2218 = !DILocation(line: 966, column: 326, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !635, file: !362, discriminator: 11)
!2220 = !DILocation(line: 967, column: 5, scope: !618)
!2221 = !DILocation(line: 967, column: 10, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !640, file: !362, discriminator: 1)
!2223 = !DILocation(line: 967, column: 20, scope: !640)
!2224 = !DILocation(line: 967, column: 51, scope: !640)
!2225 = !DILocation(line: 967, column: 59, scope: !640)
!2226 = !DILocation(line: 967, column: 71, scope: !643)
!2227 = !DILocation(line: 967, column: 87, scope: !643)
!2228 = !DILocation(line: 967, column: 71, scope: !640)
!2229 = !DILocation(line: 967, column: 102, scope: !2230)
!2230 = !DILexicalBlockFile(scope: !643, file: !362, discriminator: 2)
!2231 = !DILocation(line: 967, column: 107, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !642, file: !362, discriminator: 4)
!2233 = !DILocation(line: 967, column: 117, scope: !642)
!2234 = !DILocation(line: 967, column: 147, scope: !642)
!2235 = !DILocation(line: 967, column: 173, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !642, file: !362, line: 967, column: 170)
!2237 = !DILocation(line: 967, column: 190, scope: !2236)
!2238 = !DILocation(line: 967, column: 170, scope: !2236)
!2239 = !DILocation(line: 967, column: 200, scope: !2236)
!2240 = !DILocation(line: 967, column: 170, scope: !642)
!2241 = !DILocation(line: 967, column: 170, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !642, file: !362, discriminator: 5)
!2243 = !DILocation(line: 967, column: 231, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2236, file: !362, discriminator: 6)
!2245 = !DILocation(line: 967, column: 249, scope: !2236)
!2246 = !DILocation(line: 967, column: 259, scope: !2236)
!2247 = !DILocation(line: 967, column: 284, scope: !2236)
!2248 = !DILocation(line: 967, column: 215, scope: !2236)
!2249 = !DILocation(line: 967, column: 303, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !643, file: !362, discriminator: 7)
!2251 = !DILocation(line: 967, column: 303, scope: !642)
!2252 = !DILocation(line: 967, column: 303, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !642, file: !362, discriminator: 8)
!2254 = !DILocation(line: 967, column: 303, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !642, file: !362, discriminator: 9)
!2256 = !DILocation(line: 967, column: 316, scope: !2176)
!2257 = !DILocation(line: 967, column: 316, scope: !640)
!2258 = !DILocation(line: 967, column: 316, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !640, file: !362, discriminator: 11)
!2260 = !DILocation(line: 968, column: 27, scope: !618)
!2261 = !DILocation(line: 968, column: 33, scope: !618)
!2262 = !DILocation(line: 968, column: 5, scope: !618)
!2263 = !DILocation(line: 968, column: 13, scope: !618)
!2264 = !DILocation(line: 968, column: 25, scope: !618)
!2265 = !DILocation(line: 969, column: 31, scope: !618)
!2266 = !DILocation(line: 969, column: 37, scope: !618)
!2267 = !DILocation(line: 969, column: 5, scope: !618)
!2268 = !DILocation(line: 969, column: 13, scope: !618)
!2269 = !DILocation(line: 969, column: 29, scope: !618)
!2270 = !DILocation(line: 970, column: 21, scope: !618)
!2271 = !DILocation(line: 970, column: 27, scope: !618)
!2272 = !DILocation(line: 970, column: 5, scope: !618)
!2273 = !DILocation(line: 970, column: 13, scope: !618)
!2274 = !DILocation(line: 970, column: 19, scope: !618)
!2275 = !DILocation(line: 971, column: 19, scope: !618)
!2276 = !DILocation(line: 971, column: 25, scope: !618)
!2277 = !{!1218, !1137, i64 144}
!2278 = !DILocation(line: 971, column: 5, scope: !618)
!2279 = !DILocation(line: 971, column: 13, scope: !618)
!2280 = !DILocation(line: 971, column: 17, scope: !618)
!2281 = !DILocation(line: 974, column: 5, scope: !618)
!2282 = !DILocation(line: 974, column: 13, scope: !618)
!2283 = !DILocation(line: 974, column: 28, scope: !618)
!2284 = !DILocation(line: 976, column: 28, scope: !618)
!2285 = !DILocation(line: 976, column: 35, scope: !618)
!2286 = !DILocation(line: 976, column: 5, scope: !618)
!2287 = !DILocation(line: 977, column: 24, scope: !618)
!2288 = !DILocation(line: 977, column: 12, scope: !618)
!2289 = !DILocation(line: 977, column: 5, scope: !618)
!2290 = !DILocation(line: 980, column: 28, scope: !618)
!2291 = !DILocation(line: 980, column: 35, scope: !618)
!2292 = !DILocation(line: 980, column: 5, scope: !618)
!2293 = !DILocation(line: 981, column: 5, scope: !618)
!2294 = !DILocation(line: 981, column: 10, scope: !2295)
!2295 = !DILexicalBlockFile(scope: !645, file: !362, discriminator: 1)
!2296 = !DILocation(line: 981, column: 20, scope: !645)
!2297 = !DILocation(line: 981, column: 51, scope: !645)
!2298 = !DILocation(line: 981, column: 38, scope: !645)
!2299 = !DILocation(line: 981, column: 64, scope: !648)
!2300 = !DILocation(line: 981, column: 80, scope: !648)
!2301 = !DILocation(line: 981, column: 64, scope: !645)
!2302 = !DILocation(line: 981, column: 95, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !648, file: !362, discriminator: 2)
!2304 = !DILocation(line: 981, column: 100, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !647, file: !362, discriminator: 4)
!2306 = !DILocation(line: 981, column: 110, scope: !647)
!2307 = !DILocation(line: 981, column: 140, scope: !647)
!2308 = !DILocation(line: 981, column: 166, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !647, file: !362, line: 981, column: 163)
!2310 = !DILocation(line: 981, column: 183, scope: !2309)
!2311 = !DILocation(line: 981, column: 163, scope: !2309)
!2312 = !DILocation(line: 981, column: 193, scope: !2309)
!2313 = !DILocation(line: 981, column: 163, scope: !647)
!2314 = !DILocation(line: 981, column: 163, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !647, file: !362, discriminator: 5)
!2316 = !DILocation(line: 981, column: 224, scope: !2317)
!2317 = !DILexicalBlockFile(scope: !2309, file: !362, discriminator: 6)
!2318 = !DILocation(line: 981, column: 242, scope: !2309)
!2319 = !DILocation(line: 981, column: 252, scope: !2309)
!2320 = !DILocation(line: 981, column: 277, scope: !2309)
!2321 = !DILocation(line: 981, column: 208, scope: !2309)
!2322 = !DILocation(line: 981, column: 296, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !648, file: !362, discriminator: 7)
!2324 = !DILocation(line: 981, column: 296, scope: !647)
!2325 = !DILocation(line: 981, column: 296, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !647, file: !362, discriminator: 8)
!2327 = !DILocation(line: 981, column: 296, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !647, file: !362, discriminator: 9)
!2329 = !DILocation(line: 981, column: 309, scope: !2176)
!2330 = !DILocation(line: 981, column: 309, scope: !645)
!2331 = !DILocation(line: 981, column: 309, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !645, file: !362, discriminator: 11)
!2333 = !DILocation(line: 982, column: 5, scope: !618)
!2334 = !DILocation(line: 983, column: 1, scope: !618)
!2335 = !DILocation(line: 92, column: 29, scope: !649)
!2336 = !DILocation(line: 94, column: 5, scope: !649)
!2337 = !DILocation(line: 94, column: 17, scope: !649)
!2338 = !DILocation(line: 95, column: 43, scope: !649)
!2339 = !DILocation(line: 95, column: 29, scope: !649)
!2340 = !DILocation(line: 95, column: 14, scope: !649)
!2341 = !DILocation(line: 95, column: 10, scope: !649)
!2342 = !DILocation(line: 96, column: 9, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !649, file: !362, line: 96, column: 9)
!2344 = !DILocation(line: 96, column: 14, scope: !2343)
!2345 = !DILocation(line: 96, column: 9, scope: !649)
!2346 = !DILocation(line: 97, column: 9, scope: !2343)
!2347 = !DILocation(line: 98, column: 5, scope: !649)
!2348 = !DILocation(line: 98, column: 11, scope: !649)
!2349 = !DILocation(line: 98, column: 15, scope: !649)
!2350 = !DILocation(line: 99, column: 5, scope: !649)
!2351 = !DILocation(line: 99, column: 11, scope: !649)
!2352 = !DILocation(line: 99, column: 26, scope: !649)
!2353 = !DILocation(line: 100, column: 5, scope: !649)
!2354 = !DILocation(line: 100, column: 11, scope: !649)
!2355 = !DILocation(line: 100, column: 17, scope: !649)
!2356 = !DILocation(line: 101, column: 25, scope: !649)
!2357 = !DILocation(line: 101, column: 5, scope: !649)
!2358 = !DILocation(line: 101, column: 11, scope: !649)
!2359 = !DILocation(line: 101, column: 23, scope: !649)
!2360 = !DILocation(line: 102, column: 9, scope: !660)
!2361 = !DILocation(line: 102, column: 15, scope: !660)
!2362 = !DILocation(line: 102, column: 27, scope: !660)
!2363 = !DILocation(line: 102, column: 9, scope: !649)
!2364 = !DILocation(line: 103, column: 9, scope: !659)
!2365 = !DILocation(line: 103, column: 14, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 1)
!2367 = !DILocation(line: 103, column: 24, scope: !658)
!2368 = !DILocation(line: 103, column: 54, scope: !658)
!2369 = !DILocation(line: 103, column: 41, scope: !658)
!2370 = !DILocation(line: 103, column: 69, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !658, file: !362, line: 103, column: 66)
!2372 = !DILocation(line: 103, column: 86, scope: !2371)
!2373 = !DILocation(line: 103, column: 66, scope: !2371)
!2374 = !DILocation(line: 103, column: 96, scope: !2371)
!2375 = !DILocation(line: 103, column: 66, scope: !658)
!2376 = !DILocation(line: 103, column: 66, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 2)
!2378 = !DILocation(line: 103, column: 127, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !2371, file: !362, discriminator: 3)
!2380 = !DILocation(line: 103, column: 145, scope: !2371)
!2381 = !DILocation(line: 103, column: 155, scope: !2371)
!2382 = !DILocation(line: 103, column: 180, scope: !2371)
!2383 = !DILocation(line: 103, column: 111, scope: !2371)
!2384 = !DILocation(line: 103, column: 199, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !659, file: !362, discriminator: 4)
!2386 = !DILocation(line: 103, column: 199, scope: !658)
!2387 = !DILocation(line: 103, column: 199, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !658, file: !362, discriminator: 5)
!2389 = !DILocation(line: 104, column: 9, scope: !659)
!2390 = !DILocation(line: 106, column: 29, scope: !649)
!2391 = !DILocation(line: 106, column: 5, scope: !649)
!2392 = !DILocation(line: 106, column: 11, scope: !649)
!2393 = !DILocation(line: 106, column: 27, scope: !649)
!2394 = !DILocation(line: 107, column: 9, scope: !664)
!2395 = !DILocation(line: 107, column: 15, scope: !664)
!2396 = !DILocation(line: 107, column: 31, scope: !664)
!2397 = !DILocation(line: 107, column: 9, scope: !649)
!2398 = !DILocation(line: 108, column: 9, scope: !663)
!2399 = !DILocation(line: 108, column: 14, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !662, file: !362, discriminator: 1)
!2401 = !DILocation(line: 108, column: 24, scope: !662)
!2402 = !DILocation(line: 108, column: 54, scope: !662)
!2403 = !DILocation(line: 108, column: 41, scope: !662)
!2404 = !DILocation(line: 108, column: 69, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !662, file: !362, line: 108, column: 66)
!2406 = !DILocation(line: 108, column: 86, scope: !2405)
!2407 = !DILocation(line: 108, column: 66, scope: !2405)
!2408 = !DILocation(line: 108, column: 96, scope: !2405)
!2409 = !DILocation(line: 108, column: 66, scope: !662)
!2410 = !DILocation(line: 108, column: 66, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !662, file: !362, discriminator: 2)
!2412 = !DILocation(line: 108, column: 127, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2405, file: !362, discriminator: 3)
!2414 = !DILocation(line: 108, column: 145, scope: !2405)
!2415 = !DILocation(line: 108, column: 155, scope: !2405)
!2416 = !DILocation(line: 108, column: 180, scope: !2405)
!2417 = !DILocation(line: 108, column: 111, scope: !2405)
!2418 = !DILocation(line: 108, column: 199, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !663, file: !362, discriminator: 4)
!2420 = !DILocation(line: 108, column: 199, scope: !662)
!2421 = !DILocation(line: 108, column: 199, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !662, file: !362, discriminator: 5)
!2423 = !DILocation(line: 109, column: 9, scope: !663)
!2424 = !DILocation(line: 112, column: 18, scope: !649)
!2425 = !DILocation(line: 112, column: 5, scope: !649)
!2426 = !DILocation(line: 112, column: 11, scope: !649)
!2427 = !DILocation(line: 112, column: 16, scope: !649)
!2428 = !DILocation(line: 113, column: 9, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !649, file: !362, line: 113, column: 9)
!2430 = !DILocation(line: 113, column: 15, scope: !2429)
!2431 = !DILocation(line: 113, column: 20, scope: !2429)
!2432 = !DILocation(line: 113, column: 9, scope: !649)
!2433 = !DILocation(line: 114, column: 25, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2429, file: !362, line: 113, column: 35)
!2435 = !DILocation(line: 114, column: 9, scope: !2434)
!2436 = !DILocation(line: 115, column: 9, scope: !2434)
!2437 = !DILocation(line: 118, column: 12, scope: !649)
!2438 = !DILocation(line: 118, column: 5, scope: !649)
!2439 = !DILocation(line: 119, column: 1, scope: !649)
!2440 = !DILocation(line: 550, column: 28, scope: !665)
!2441 = !DILocation(line: 552, column: 9, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !665, file: !362, line: 552, column: 9)
!2443 = !DILocation(line: 552, column: 15, scope: !2442)
!2444 = !DILocation(line: 552, column: 9, scope: !665)
!2445 = !DILocation(line: 553, column: 21, scope: !2442)
!2446 = !DILocation(line: 553, column: 27, scope: !2442)
!2447 = !DILocation(line: 553, column: 9, scope: !2442)
!2448 = !DILocation(line: 554, column: 13, scope: !665)
!2449 = !DILocation(line: 554, column: 5, scope: !665)
!2450 = !DILocation(line: 555, column: 1, scope: !665)
!2451 = !DILocation(line: 241, column: 40, scope: !668)
!2452 = !DILocation(line: 241, column: 56, scope: !668)
!2453 = !DILocation(line: 243, column: 5, scope: !668)
!2454 = !DILocation(line: 243, column: 15, scope: !668)
!2455 = !DILocation(line: 244, column: 5, scope: !668)
!2456 = !DILocation(line: 244, column: 15, scope: !668)
!2457 = !DILocation(line: 245, column: 5, scope: !668)
!2458 = !DILocation(line: 245, column: 18, scope: !668)
!2459 = !DILocation(line: 247, column: 27, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !668, file: !446, line: 247, column: 9)
!2461 = !DILocation(line: 247, column: 10, scope: !2460)
!2462 = !DILocation(line: 247, column: 9, scope: !668)
!2463 = !DILocation(line: 250, column: 9, scope: !2460)
!2464 = !DILocation(line: 251, column: 52, scope: !668)
!2465 = !DILocation(line: 251, column: 65, scope: !668)
!2466 = !DILocation(line: 251, column: 20, scope: !668)
!2467 = !DILocation(line: 251, column: 18, scope: !668)
!2468 = !DILocation(line: 251, column: 5, scope: !668)
!2469 = !DILocation(line: 255, column: 14, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !668, file: !446, line: 255, column: 9)
!2471 = !DILocation(line: 255, column: 9, scope: !2470)
!2472 = !DILocation(line: 255, column: 9, scope: !668)
!2473 = !DILocation(line: 256, column: 8, scope: !2470)
!2474 = !DILocation(line: 258, column: 12, scope: !668)
!2475 = !DILocation(line: 259, column: 1, scope: !668)
!2476 = !DILocation(line: 258, column: 5, scope: !668)
!2477 = !DILocation(line: 363, column: 35, scope: !770)
!2478 = !DILocation(line: 363, column: 51, scope: !770)
!2479 = !DILocation(line: 365, column: 5, scope: !770)
!2480 = !DILocation(line: 365, column: 15, scope: !770)
!2481 = !DILocation(line: 366, column: 5, scope: !770)
!2482 = !DILocation(line: 366, column: 18, scope: !770)
!2483 = !DILocation(line: 368, column: 27, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !770, file: !446, line: 368, column: 9)
!2485 = !DILocation(line: 368, column: 10, scope: !2484)
!2486 = !DILocation(line: 368, column: 9, scope: !770)
!2487 = !DILocation(line: 371, column: 9, scope: !2484)
!2488 = !DILocation(line: 372, column: 47, scope: !770)
!2489 = !DILocation(line: 372, column: 53, scope: !770)
!2490 = !DILocation(line: 372, column: 20, scope: !770)
!2491 = !DILocation(line: 372, column: 18, scope: !770)
!2492 = !DILocation(line: 372, column: 5, scope: !770)
!2493 = !DILocation(line: 375, column: 12, scope: !770)
!2494 = !DILocation(line: 376, column: 1, scope: !770)
!2495 = !DILocation(line: 375, column: 5, scope: !770)
!2496 = !DILocation(line: 336, column: 34, scope: !820)
!2497 = !DILocation(line: 336, column: 50, scope: !820)
!2498 = !DILocation(line: 338, column: 38, scope: !820)
!2499 = !DILocation(line: 338, column: 12, scope: !820)
!2500 = !DILocation(line: 338, column: 5, scope: !820)
!2501 = !DILocation(line: 238, column: 26, scope: !675)
!2502 = !DILocation(line: 238, column: 37, scope: !675)
!2503 = !DILocation(line: 240, column: 5, scope: !675)
!2504 = !DILocation(line: 240, column: 10, scope: !675)
!2505 = !DILocation(line: 241, column: 5, scope: !675)
!2506 = !DILocation(line: 241, column: 19, scope: !675)
!2507 = !DILocation(line: 243, column: 25, scope: !675)
!2508 = !DILocation(line: 243, column: 11, scope: !675)
!2509 = !DILocation(line: 243, column: 9, scope: !675)
!2510 = !DILocation(line: 244, column: 9, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !675, file: !362, line: 244, column: 9)
!2512 = !DILocation(line: 244, column: 13, scope: !2511)
!2513 = !DILocation(line: 244, column: 19, scope: !2511)
!2514 = !DILocation(line: 244, column: 22, scope: !2515)
!2515 = !DILexicalBlockFile(scope: !2511, file: !362, discriminator: 1)
!2516 = !DILocation(line: 244, column: 9, scope: !675)
!2517 = !DILocation(line: 245, column: 38, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2511, file: !362, line: 244, column: 40)
!2519 = !DILocation(line: 245, column: 16, scope: !2518)
!2520 = !DILocation(line: 245, column: 14, scope: !2518)
!2521 = !DILocation(line: 246, column: 13, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !362, line: 246, column: 13)
!2523 = !DILocation(line: 246, column: 18, scope: !2522)
!2524 = !DILocation(line: 246, column: 39, scope: !2522)
!2525 = !DILocation(line: 246, column: 42, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2522, file: !362, discriminator: 1)
!2527 = !DILocation(line: 246, column: 13, scope: !2518)
!2528 = !DILocation(line: 247, column: 13, scope: !2522)
!2529 = !DILocation(line: 248, column: 5, scope: !2518)
!2530 = !DILocation(line: 250, column: 13, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !362, line: 250, column: 13)
!2532 = distinct !DILexicalBlock(scope: !2511, file: !362, line: 249, column: 10)
!2533 = !DILocation(line: 250, column: 17, scope: !2531)
!2534 = !DILocation(line: 250, column: 13, scope: !2532)
!2535 = !DILocation(line: 251, column: 29, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !362, line: 250, column: 22)
!2537 = !DILocation(line: 251, column: 13, scope: !2536)
!2538 = !DILocation(line: 253, column: 13, scope: !2536)
!2539 = !DILocation(line: 255, column: 31, scope: !2532)
!2540 = !DILocation(line: 255, column: 14, scope: !2532)
!2541 = !DILocation(line: 258, column: 9, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !675, file: !362, line: 258, column: 9)
!2543 = !DILocation(line: 258, column: 14, scope: !2542)
!2544 = !DILocation(line: 258, column: 9, scope: !675)
!2545 = !DILocation(line: 259, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2542, file: !362, line: 258, column: 38)
!2547 = !DILocation(line: 259, column: 9, scope: !2546)
!2548 = !DILocation(line: 261, column: 9, scope: !2546)
!2549 = !DILocation(line: 264, column: 43, scope: !675)
!2550 = !DILocation(line: 264, column: 28, scope: !675)
!2551 = !DILocation(line: 264, column: 22, scope: !675)
!2552 = !DILocation(line: 264, column: 6, scope: !675)
!2553 = !DILocation(line: 264, column: 26, scope: !675)
!2554 = !DILocation(line: 265, column: 5, scope: !675)
!2555 = !DILocation(line: 266, column: 1, scope: !675)
!2556 = !DILocation(line: 706, column: 45, scope: !681)
!2557 = !DILocation(line: 706, column: 62, scope: !681)
!2558 = !DILocation(line: 706, column: 81, scope: !681)
!2559 = !DILocation(line: 709, column: 5, scope: !681)
!2560 = !DILocation(line: 709, column: 9, scope: !681)
!2561 = !DILocation(line: 710, column: 5, scope: !681)
!2562 = !DILocation(line: 710, column: 18, scope: !681)
!2563 = !DILocation(line: 710, column: 30, scope: !681)
!2564 = !DILocation(line: 711, column: 5, scope: !681)
!2565 = !DILocation(line: 711, column: 15, scope: !681)
!2566 = !DILocation(line: 712, column: 5, scope: !681)
!2567 = !DILocation(line: 712, column: 19, scope: !681)
!2568 = !DILocation(line: 714, column: 17, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !681, file: !362, line: 714, column: 9)
!2570 = !DILocation(line: 714, column: 23, scope: !2569)
!2571 = !DILocation(line: 714, column: 27, scope: !2569)
!2572 = !DILocation(line: 714, column: 9, scope: !681)
!2573 = !DILocation(line: 715, column: 25, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2569, file: !362, line: 714, column: 51)
!2575 = !DILocation(line: 715, column: 9, scope: !2574)
!2576 = !DILocation(line: 717, column: 9, scope: !2574)
!2577 = !DILocation(line: 721, column: 9, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !681, file: !362, line: 721, column: 9)
!2579 = !DILocation(line: 721, column: 20, scope: !2578)
!2580 = !DILocation(line: 721, column: 23, scope: !2581)
!2581 = !DILexicalBlockFile(scope: !2578, file: !362, discriminator: 1)
!2582 = !DILocation(line: 721, column: 32, scope: !2578)
!2583 = !DILocation(line: 721, column: 30, scope: !2578)
!2584 = !DILocation(line: 721, column: 9, scope: !681)
!2585 = !DILocation(line: 722, column: 18, scope: !2578)
!2586 = !DILocation(line: 722, column: 16, scope: !2578)
!2587 = !DILocation(line: 722, column: 9, scope: !2578)
!2588 = !DILocation(line: 723, column: 58, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !681, file: !362, line: 723, column: 9)
!2590 = !DILocation(line: 723, column: 20, scope: !2589)
!2591 = !DILocation(line: 723, column: 18, scope: !2589)
!2592 = !DILocation(line: 723, column: 9, scope: !681)
!2593 = !DILocation(line: 724, column: 9, scope: !2589)
!2594 = !DILocation(line: 726, column: 7, scope: !694)
!2595 = !DILocation(line: 726, column: 22, scope: !694)
!2596 = !DILocation(line: 726, column: 37, scope: !694)
!2597 = !DILocation(line: 726, column: 35, scope: !694)
!2598 = !DILocation(line: 726, column: 82, scope: !694)
!2599 = !DILocation(line: 726, column: 89, scope: !694)
!2600 = !DILocation(line: 726, column: 59, scope: !694)
!2601 = !DILocation(line: 726, column: 120, scope: !694)
!2602 = !DILocation(line: 726, column: 99, scope: !694)
!2603 = !DILocation(line: 726, column: 128, scope: !681)
!2604 = !DILocation(line: 728, column: 23, scope: !681)
!2605 = !DILocation(line: 728, column: 29, scope: !681)
!2606 = !DILocation(line: 728, column: 33, scope: !681)
!2607 = !DILocation(line: 728, column: 21, scope: !681)
!2608 = !DILocation(line: 729, column: 40, scope: !681)
!2609 = !DILocation(line: 729, column: 46, scope: !681)
!2610 = !DILocation(line: 729, column: 26, scope: !681)
!2611 = !DILocation(line: 729, column: 5, scope: !681)
!2612 = !DILocation(line: 729, column: 11, scope: !681)
!2613 = !DILocation(line: 729, column: 15, scope: !681)
!2614 = !DILocation(line: 729, column: 24, scope: !681)
!2615 = !DILocation(line: 730, column: 25, scope: !681)
!2616 = !DILocation(line: 730, column: 31, scope: !681)
!2617 = !DILocation(line: 730, column: 5, scope: !681)
!2618 = !DILocation(line: 730, column: 11, scope: !681)
!2619 = !DILocation(line: 730, column: 15, scope: !681)
!2620 = !DILocation(line: 730, column: 23, scope: !681)
!2621 = !DILocation(line: 731, column: 27, scope: !681)
!2622 = !DILocation(line: 731, column: 5, scope: !681)
!2623 = !DILocation(line: 731, column: 11, scope: !681)
!2624 = !DILocation(line: 731, column: 15, scope: !681)
!2625 = !DILocation(line: 731, column: 25, scope: !681)
!2626 = !DILocation(line: 732, column: 78, scope: !681)
!2627 = !DILocation(line: 732, column: 60, scope: !681)
!2628 = !DILocation(line: 732, column: 88, scope: !681)
!2629 = !DILocation(line: 732, column: 58, scope: !681)
!2630 = !DILocation(line: 732, column: 5, scope: !681)
!2631 = !DILocation(line: 732, column: 11, scope: !681)
!2632 = !DILocation(line: 732, column: 15, scope: !681)
!2633 = !DILocation(line: 732, column: 24, scope: !681)
!2634 = !DILocation(line: 734, column: 7, scope: !696)
!2635 = !DILocation(line: 734, column: 22, scope: !696)
!2636 = !DILocation(line: 734, column: 37, scope: !696)
!2637 = !DILocation(line: 734, column: 35, scope: !696)
!2638 = !DILocation(line: 735, column: 21, scope: !696)
!2639 = !DILocation(line: 735, column: 27, scope: !696)
!2640 = !DILocation(line: 735, column: 11, scope: !696)
!2641 = !DILocation(line: 735, column: 9, scope: !696)
!2642 = !DILocation(line: 736, column: 26, scope: !696)
!2643 = !DILocation(line: 736, column: 5, scope: !696)
!2644 = !DILocation(line: 736, column: 34, scope: !681)
!2645 = !DILocation(line: 738, column: 9, scope: !699)
!2646 = !DILocation(line: 738, column: 13, scope: !699)
!2647 = !DILocation(line: 738, column: 18, scope: !699)
!2648 = !DILocation(line: 738, column: 21, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !699, file: !362, discriminator: 1)
!2650 = !DILocation(line: 738, column: 27, scope: !699)
!2651 = !DILocation(line: 738, column: 33, scope: !699)
!2652 = !DILocation(line: 738, column: 9, scope: !681)
!2653 = !DILocation(line: 739, column: 9, scope: !698)
!2654 = !DILocation(line: 739, column: 19, scope: !698)
!2655 = !DILocation(line: 740, column: 32, scope: !703)
!2656 = !DILocation(line: 740, column: 38, scope: !703)
!2657 = !DILocation(line: 740, column: 13, scope: !703)
!2658 = !DILocation(line: 740, column: 60, scope: !703)
!2659 = !DILocation(line: 740, column: 13, scope: !698)
!2660 = !DILocation(line: 741, column: 13, scope: !702)
!2661 = !DILocation(line: 741, column: 18, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 1)
!2663 = !DILocation(line: 741, column: 28, scope: !701)
!2664 = !DILocation(line: 741, column: 58, scope: !701)
!2665 = !DILocation(line: 741, column: 75, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !701, file: !362, line: 741, column: 72)
!2667 = !DILocation(line: 741, column: 92, scope: !2666)
!2668 = !DILocation(line: 741, column: 72, scope: !2666)
!2669 = !DILocation(line: 741, column: 102, scope: !2666)
!2670 = !DILocation(line: 741, column: 72, scope: !701)
!2671 = !DILocation(line: 741, column: 72, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 2)
!2673 = !DILocation(line: 741, column: 133, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2666, file: !362, discriminator: 3)
!2675 = !DILocation(line: 741, column: 151, scope: !2666)
!2676 = !DILocation(line: 741, column: 161, scope: !2666)
!2677 = !DILocation(line: 741, column: 186, scope: !2666)
!2678 = !DILocation(line: 741, column: 117, scope: !2666)
!2679 = !DILocation(line: 741, column: 205, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !702, file: !362, discriminator: 4)
!2681 = !DILocation(line: 741, column: 205, scope: !701)
!2682 = !DILocation(line: 741, column: 205, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !701, file: !362, discriminator: 5)
!2684 = !DILocation(line: 742, column: 20, scope: !702)
!2685 = !DILocation(line: 743, column: 13, scope: !702)
!2686 = !DILocation(line: 746, column: 31, scope: !707)
!2687 = !DILocation(line: 746, column: 35, scope: !707)
!2688 = !DILocation(line: 746, column: 13, scope: !698)
!2689 = !DILocation(line: 747, column: 29, scope: !706)
!2690 = !DILocation(line: 747, column: 13, scope: !706)
!2691 = !DILocation(line: 749, column: 13, scope: !706)
!2692 = !DILocation(line: 750, column: 13, scope: !706)
!2693 = !DILocation(line: 750, column: 18, scope: !2694)
!2694 = !DILexicalBlockFile(scope: !705, file: !362, discriminator: 1)
!2695 = !DILocation(line: 750, column: 28, scope: !705)
!2696 = !DILocation(line: 750, column: 51, scope: !705)
!2697 = !DILocation(line: 750, column: 64, scope: !711)
!2698 = !DILocation(line: 750, column: 72, scope: !711)
!2699 = !DILocation(line: 750, column: 64, scope: !705)
!2700 = !DILocation(line: 750, column: 98, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !710, file: !362, discriminator: 2)
!2702 = !DILocation(line: 750, column: 112, scope: !710)
!2703 = !DILocation(line: 750, column: 117, scope: !2704)
!2704 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 4)
!2705 = !DILocation(line: 750, column: 127, scope: !709)
!2706 = !DILocation(line: 750, column: 157, scope: !709)
!2707 = !DILocation(line: 750, column: 175, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !709, file: !362, line: 750, column: 172)
!2709 = !DILocation(line: 750, column: 192, scope: !2708)
!2710 = !DILocation(line: 750, column: 172, scope: !2708)
!2711 = !DILocation(line: 750, column: 202, scope: !2708)
!2712 = !DILocation(line: 750, column: 172, scope: !709)
!2713 = !DILocation(line: 750, column: 172, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 5)
!2715 = !DILocation(line: 750, column: 233, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2708, file: !362, discriminator: 6)
!2717 = !DILocation(line: 750, column: 251, scope: !2708)
!2718 = !DILocation(line: 750, column: 261, scope: !2708)
!2719 = !DILocation(line: 750, column: 286, scope: !2708)
!2720 = !DILocation(line: 750, column: 217, scope: !2708)
!2721 = !DILocation(line: 750, column: 305, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !710, file: !362, discriminator: 7)
!2723 = !DILocation(line: 750, column: 305, scope: !709)
!2724 = !DILocation(line: 750, column: 305, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !709, file: !362, discriminator: 8)
!2726 = !DILocation(line: 750, column: 318, scope: !2727)
!2727 = !DILexicalBlockFile(scope: !710, file: !362, discriminator: 9)
!2728 = !DILocation(line: 750, column: 320, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2730, file: !362, discriminator: 10)
!2730 = !DILexicalBlockFile(scope: !706, file: !362, discriminator: 3)
!2731 = !DILocation(line: 750, column: 320, scope: !705)
!2732 = !DILocation(line: 750, column: 320, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !705, file: !362, discriminator: 11)
!2734 = !DILocation(line: 751, column: 13, scope: !706)
!2735 = !DILocation(line: 754, column: 38, scope: !698)
!2736 = !DILocation(line: 754, column: 44, scope: !698)
!2737 = !DILocation(line: 755, column: 46, scope: !698)
!2738 = !DILocation(line: 755, column: 75, scope: !698)
!2739 = !DILocation(line: 755, column: 51, scope: !698)
!2740 = !DILocation(line: 754, column: 15, scope: !698)
!2741 = !DILocation(line: 754, column: 13, scope: !698)
!2742 = !DILocation(line: 756, column: 9, scope: !698)
!2743 = !DILocation(line: 757, column: 13, scope: !715)
!2744 = !DILocation(line: 757, column: 17, scope: !715)
!2745 = !DILocation(line: 757, column: 13, scope: !698)
!2746 = !DILocation(line: 758, column: 24, scope: !714)
!2747 = !DILocation(line: 758, column: 30, scope: !714)
!2748 = !DILocation(line: 758, column: 35, scope: !714)
!2749 = !DILocation(line: 758, column: 13, scope: !714)
!2750 = !DILocation(line: 759, column: 13, scope: !714)
!2751 = !DILocation(line: 759, column: 18, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !713, file: !362, discriminator: 1)
!2753 = !DILocation(line: 759, column: 28, scope: !713)
!2754 = !DILocation(line: 759, column: 51, scope: !713)
!2755 = !DILocation(line: 759, column: 64, scope: !719)
!2756 = !DILocation(line: 759, column: 72, scope: !719)
!2757 = !DILocation(line: 759, column: 64, scope: !713)
!2758 = !DILocation(line: 759, column: 98, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !718, file: !362, discriminator: 2)
!2760 = !DILocation(line: 759, column: 112, scope: !718)
!2761 = !DILocation(line: 759, column: 117, scope: !2762)
!2762 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 4)
!2763 = !DILocation(line: 759, column: 127, scope: !717)
!2764 = !DILocation(line: 759, column: 157, scope: !717)
!2765 = !DILocation(line: 759, column: 175, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !717, file: !362, line: 759, column: 172)
!2767 = !DILocation(line: 759, column: 192, scope: !2766)
!2768 = !DILocation(line: 759, column: 172, scope: !2766)
!2769 = !DILocation(line: 759, column: 202, scope: !2766)
!2770 = !DILocation(line: 759, column: 172, scope: !717)
!2771 = !DILocation(line: 759, column: 172, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 5)
!2773 = !DILocation(line: 759, column: 233, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !2766, file: !362, discriminator: 6)
!2775 = !DILocation(line: 759, column: 251, scope: !2766)
!2776 = !DILocation(line: 759, column: 261, scope: !2766)
!2777 = !DILocation(line: 759, column: 286, scope: !2766)
!2778 = !DILocation(line: 759, column: 217, scope: !2766)
!2779 = !DILocation(line: 759, column: 305, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !718, file: !362, discriminator: 7)
!2781 = !DILocation(line: 759, column: 305, scope: !717)
!2782 = !DILocation(line: 759, column: 305, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !717, file: !362, discriminator: 8)
!2784 = !DILocation(line: 759, column: 318, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !718, file: !362, discriminator: 9)
!2786 = !DILocation(line: 759, column: 320, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2788, file: !362, discriminator: 10)
!2788 = !DILexicalBlockFile(scope: !714, file: !362, discriminator: 3)
!2789 = !DILocation(line: 759, column: 320, scope: !713)
!2790 = !DILocation(line: 759, column: 320, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !713, file: !362, discriminator: 11)
!2792 = !DILocation(line: 760, column: 13, scope: !714)
!2793 = !DILocation(line: 763, column: 11, scope: !721)
!2794 = !DILocation(line: 763, column: 26, scope: !721)
!2795 = !DILocation(line: 763, column: 41, scope: !721)
!2796 = !DILocation(line: 763, column: 39, scope: !721)
!2797 = !DILocation(line: 764, column: 25, scope: !721)
!2798 = !DILocation(line: 764, column: 31, scope: !721)
!2799 = !DILocation(line: 764, column: 15, scope: !721)
!2800 = !DILocation(line: 764, column: 13, scope: !721)
!2801 = !DILocation(line: 765, column: 30, scope: !721)
!2802 = !DILocation(line: 765, column: 9, scope: !721)
!2803 = !DILocation(line: 765, column: 38, scope: !698)
!2804 = !DILocation(line: 766, column: 5, scope: !699)
!2805 = !DILocation(line: 766, column: 5, scope: !2649)
!2806 = !DILocation(line: 766, column: 5, scope: !698)
!2807 = !DILocation(line: 771, column: 5, scope: !681)
!2808 = !DILocation(line: 771, column: 12, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2810, file: !362, discriminator: 4)
!2810 = !DILexicalBlockFile(scope: !681, file: !362, discriminator: 1)
!2811 = !DILocation(line: 771, column: 16, scope: !681)
!2812 = !DILocation(line: 771, column: 21, scope: !681)
!2813 = !DILocation(line: 771, column: 24, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !681, file: !362, discriminator: 2)
!2815 = !DILocation(line: 771, column: 30, scope: !681)
!2816 = !DILocation(line: 771, column: 34, scope: !681)
!2817 = !DILocation(line: 771, column: 44, scope: !681)
!2818 = !DILocation(line: 771, column: 5, scope: !2819)
!2819 = !DILexicalBlockFile(scope: !681, file: !362, discriminator: 3)
!2820 = !DILocation(line: 775, column: 13, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !726, file: !362, line: 775, column: 13)
!2822 = !DILocation(line: 775, column: 24, scope: !2821)
!2823 = !DILocation(line: 775, column: 27, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2821, file: !362, discriminator: 1)
!2825 = !DILocation(line: 775, column: 37, scope: !2821)
!2826 = !DILocation(line: 775, column: 34, scope: !2821)
!2827 = !DILocation(line: 775, column: 13, scope: !726)
!2828 = !DILocation(line: 776, column: 13, scope: !2821)
!2829 = !DILocation(line: 779, column: 22, scope: !726)
!2830 = !DILocation(line: 779, column: 20, scope: !726)
!2831 = !DILocation(line: 780, column: 18, scope: !726)
!2832 = !DILocation(line: 780, column: 25, scope: !726)
!2833 = !DILocation(line: 780, column: 16, scope: !726)
!2834 = !DILocation(line: 781, column: 13, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !726, file: !362, line: 781, column: 13)
!2836 = !DILocation(line: 781, column: 24, scope: !2835)
!2837 = !DILocation(line: 781, column: 27, scope: !2838)
!2838 = !DILexicalBlockFile(scope: !2835, file: !362, discriminator: 1)
!2839 = !DILocation(line: 781, column: 36, scope: !2835)
!2840 = !DILocation(line: 781, column: 34, scope: !2835)
!2841 = !DILocation(line: 781, column: 13, scope: !726)
!2842 = !DILocation(line: 782, column: 22, scope: !2835)
!2843 = !DILocation(line: 782, column: 20, scope: !2835)
!2844 = !DILocation(line: 782, column: 13, scope: !2835)
!2845 = !DILocation(line: 784, column: 38, scope: !725)
!2846 = !DILocation(line: 784, column: 13, scope: !725)
!2847 = !DILocation(line: 784, column: 46, scope: !725)
!2848 = !DILocation(line: 784, column: 13, scope: !726)
!2849 = !DILocation(line: 785, column: 13, scope: !724)
!2850 = !DILocation(line: 785, column: 18, scope: !2851)
!2851 = !DILexicalBlockFile(scope: !723, file: !362, discriminator: 1)
!2852 = !DILocation(line: 785, column: 28, scope: !723)
!2853 = !DILocation(line: 785, column: 51, scope: !723)
!2854 = !DILocation(line: 785, column: 64, scope: !730)
!2855 = !DILocation(line: 785, column: 72, scope: !730)
!2856 = !DILocation(line: 785, column: 64, scope: !723)
!2857 = !DILocation(line: 785, column: 98, scope: !2858)
!2858 = !DILexicalBlockFile(scope: !729, file: !362, discriminator: 2)
!2859 = !DILocation(line: 785, column: 112, scope: !729)
!2860 = !DILocation(line: 785, column: 117, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !728, file: !362, discriminator: 4)
!2862 = !DILocation(line: 785, column: 127, scope: !728)
!2863 = !DILocation(line: 785, column: 157, scope: !728)
!2864 = !DILocation(line: 785, column: 175, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !728, file: !362, line: 785, column: 172)
!2866 = !DILocation(line: 785, column: 192, scope: !2865)
!2867 = !DILocation(line: 785, column: 172, scope: !2865)
!2868 = !DILocation(line: 785, column: 202, scope: !2865)
!2869 = !DILocation(line: 785, column: 172, scope: !728)
!2870 = !DILocation(line: 785, column: 172, scope: !2871)
!2871 = !DILexicalBlockFile(scope: !728, file: !362, discriminator: 5)
!2872 = !DILocation(line: 785, column: 233, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2865, file: !362, discriminator: 6)
!2874 = !DILocation(line: 785, column: 251, scope: !2865)
!2875 = !DILocation(line: 785, column: 261, scope: !2865)
!2876 = !DILocation(line: 785, column: 286, scope: !2865)
!2877 = !DILocation(line: 785, column: 217, scope: !2865)
!2878 = !DILocation(line: 785, column: 305, scope: !2879)
!2879 = !DILexicalBlockFile(scope: !729, file: !362, discriminator: 7)
!2880 = !DILocation(line: 785, column: 305, scope: !728)
!2881 = !DILocation(line: 785, column: 305, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !728, file: !362, discriminator: 8)
!2883 = !DILocation(line: 785, column: 318, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !729, file: !362, discriminator: 9)
!2885 = !DILocation(line: 785, column: 320, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !2887, file: !362, discriminator: 10)
!2887 = !DILexicalBlockFile(scope: !724, file: !362, discriminator: 3)
!2888 = !DILocation(line: 785, column: 320, scope: !723)
!2889 = !DILocation(line: 785, column: 320, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !723, file: !362, discriminator: 11)
!2891 = !DILocation(line: 786, column: 13, scope: !724)
!2892 = !DILocation(line: 789, column: 65, scope: !726)
!2893 = !DILocation(line: 789, column: 47, scope: !726)
!2894 = !DILocation(line: 789, column: 75, scope: !726)
!2895 = !DILocation(line: 789, column: 45, scope: !726)
!2896 = !DILocation(line: 789, column: 87, scope: !726)
!2897 = !DILocation(line: 789, column: 85, scope: !726)
!2898 = !DILocation(line: 788, column: 9, scope: !726)
!2899 = !DILocation(line: 788, column: 15, scope: !726)
!2900 = !DILocation(line: 788, column: 19, scope: !726)
!2901 = !DILocation(line: 788, column: 28, scope: !726)
!2902 = !DILocation(line: 790, column: 31, scope: !726)
!2903 = !DILocation(line: 790, column: 40, scope: !726)
!2904 = !DILocation(line: 790, column: 38, scope: !726)
!2905 = !DILocation(line: 790, column: 9, scope: !726)
!2906 = !DILocation(line: 790, column: 15, scope: !726)
!2907 = !DILocation(line: 790, column: 19, scope: !726)
!2908 = !DILocation(line: 790, column: 29, scope: !726)
!2909 = !DILocation(line: 792, column: 11, scope: !732)
!2910 = !DILocation(line: 792, column: 26, scope: !732)
!2911 = !DILocation(line: 792, column: 41, scope: !732)
!2912 = !DILocation(line: 792, column: 39, scope: !732)
!2913 = !DILocation(line: 793, column: 25, scope: !732)
!2914 = !DILocation(line: 793, column: 31, scope: !732)
!2915 = !DILocation(line: 793, column: 15, scope: !732)
!2916 = !DILocation(line: 793, column: 13, scope: !732)
!2917 = !DILocation(line: 794, column: 30, scope: !732)
!2918 = !DILocation(line: 794, column: 9, scope: !732)
!2919 = !DILocation(line: 794, column: 38, scope: !726)
!2920 = !DILocation(line: 797, column: 31, scope: !736)
!2921 = !DILocation(line: 797, column: 37, scope: !736)
!2922 = !DILocation(line: 797, column: 9, scope: !736)
!2923 = !DILocation(line: 797, column: 42, scope: !736)
!2924 = !DILocation(line: 797, column: 9, scope: !681)
!2925 = !DILocation(line: 798, column: 9, scope: !735)
!2926 = !DILocation(line: 798, column: 14, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !734, file: !362, discriminator: 1)
!2928 = !DILocation(line: 798, column: 24, scope: !734)
!2929 = !DILocation(line: 798, column: 54, scope: !734)
!2930 = !DILocation(line: 798, column: 71, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !734, file: !362, line: 798, column: 68)
!2932 = !DILocation(line: 798, column: 88, scope: !2931)
!2933 = !DILocation(line: 798, column: 68, scope: !2931)
!2934 = !DILocation(line: 798, column: 98, scope: !2931)
!2935 = !DILocation(line: 798, column: 68, scope: !734)
!2936 = !DILocation(line: 798, column: 68, scope: !2937)
!2937 = !DILexicalBlockFile(scope: !734, file: !362, discriminator: 2)
!2938 = !DILocation(line: 798, column: 129, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2931, file: !362, discriminator: 3)
!2940 = !DILocation(line: 798, column: 147, scope: !2931)
!2941 = !DILocation(line: 798, column: 157, scope: !2931)
!2942 = !DILocation(line: 798, column: 182, scope: !2931)
!2943 = !DILocation(line: 798, column: 113, scope: !2931)
!2944 = !DILocation(line: 798, column: 201, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !735, file: !362, discriminator: 4)
!2946 = !DILocation(line: 798, column: 201, scope: !734)
!2947 = !DILocation(line: 798, column: 201, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !734, file: !362, discriminator: 5)
!2949 = !DILocation(line: 799, column: 16, scope: !735)
!2950 = !DILocation(line: 800, column: 9, scope: !735)
!2951 = !DILocation(line: 803, column: 9, scope: !741)
!2952 = !DILocation(line: 803, column: 13, scope: !741)
!2953 = !DILocation(line: 803, column: 9, scope: !681)
!2954 = !DILocation(line: 806, column: 9, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !741, file: !362, line: 803, column: 19)
!2956 = !DILocation(line: 806, column: 15, scope: !2955)
!2957 = !DILocation(line: 806, column: 19, scope: !2955)
!2958 = !DILocation(line: 807, column: 5, scope: !2955)
!2959 = !DILocation(line: 807, column: 16, scope: !740)
!2960 = !DILocation(line: 807, column: 20, scope: !740)
!2961 = !DILocation(line: 807, column: 25, scope: !740)
!2962 = !DILocation(line: 807, column: 28, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !740, file: !362, discriminator: 1)
!2964 = !DILocation(line: 807, column: 32, scope: !740)
!2965 = !DILocation(line: 807, column: 16, scope: !741)
!2966 = !DILocation(line: 812, column: 20, scope: !739)
!2967 = !DILocation(line: 812, column: 26, scope: !739)
!2968 = !DILocation(line: 812, column: 31, scope: !739)
!2969 = !DILocation(line: 812, column: 9, scope: !739)
!2970 = !DILocation(line: 813, column: 9, scope: !739)
!2971 = !DILocation(line: 813, column: 14, scope: !2972)
!2972 = !DILexicalBlockFile(scope: !738, file: !362, discriminator: 1)
!2973 = !DILocation(line: 813, column: 24, scope: !738)
!2974 = !DILocation(line: 813, column: 54, scope: !738)
!2975 = !DILocation(line: 813, column: 71, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !738, file: !362, line: 813, column: 68)
!2977 = !DILocation(line: 813, column: 88, scope: !2976)
!2978 = !DILocation(line: 813, column: 68, scope: !2976)
!2979 = !DILocation(line: 813, column: 98, scope: !2976)
!2980 = !DILocation(line: 813, column: 68, scope: !738)
!2981 = !DILocation(line: 813, column: 68, scope: !2982)
!2982 = !DILexicalBlockFile(scope: !738, file: !362, discriminator: 2)
!2983 = !DILocation(line: 813, column: 129, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2976, file: !362, discriminator: 3)
!2985 = !DILocation(line: 813, column: 147, scope: !2976)
!2986 = !DILocation(line: 813, column: 157, scope: !2976)
!2987 = !DILocation(line: 813, column: 182, scope: !2976)
!2988 = !DILocation(line: 813, column: 113, scope: !2976)
!2989 = !DILocation(line: 813, column: 201, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !739, file: !362, discriminator: 4)
!2991 = !DILocation(line: 813, column: 201, scope: !738)
!2992 = !DILocation(line: 813, column: 201, scope: !2993)
!2993 = !DILexicalBlockFile(scope: !738, file: !362, discriminator: 5)
!2994 = !DILocation(line: 814, column: 16, scope: !739)
!2995 = !DILocation(line: 815, column: 9, scope: !739)
!2996 = !DILocation(line: 818, column: 34, scope: !745)
!2997 = !DILocation(line: 818, column: 40, scope: !745)
!2998 = !DILocation(line: 818, column: 44, scope: !745)
!2999 = !DILocation(line: 818, column: 56, scope: !745)
!3000 = !DILocation(line: 818, column: 54, scope: !745)
!3001 = !DILocation(line: 818, column: 9, scope: !745)
!3002 = !DILocation(line: 818, column: 73, scope: !745)
!3003 = !DILocation(line: 818, column: 9, scope: !681)
!3004 = !DILocation(line: 819, column: 9, scope: !744)
!3005 = !DILocation(line: 819, column: 14, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 1)
!3007 = !DILocation(line: 819, column: 24, scope: !743)
!3008 = !DILocation(line: 819, column: 47, scope: !743)
!3009 = !DILocation(line: 819, column: 60, scope: !749)
!3010 = !DILocation(line: 819, column: 68, scope: !749)
!3011 = !DILocation(line: 819, column: 60, scope: !743)
!3012 = !DILocation(line: 819, column: 94, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !748, file: !362, discriminator: 2)
!3014 = !DILocation(line: 819, column: 108, scope: !748)
!3015 = !DILocation(line: 819, column: 113, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 4)
!3017 = !DILocation(line: 819, column: 123, scope: !747)
!3018 = !DILocation(line: 819, column: 153, scope: !747)
!3019 = !DILocation(line: 819, column: 171, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !747, file: !362, line: 819, column: 168)
!3021 = !DILocation(line: 819, column: 188, scope: !3020)
!3022 = !DILocation(line: 819, column: 168, scope: !3020)
!3023 = !DILocation(line: 819, column: 198, scope: !3020)
!3024 = !DILocation(line: 819, column: 168, scope: !747)
!3025 = !DILocation(line: 819, column: 168, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 5)
!3027 = !DILocation(line: 819, column: 229, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !3020, file: !362, discriminator: 6)
!3029 = !DILocation(line: 819, column: 247, scope: !3020)
!3030 = !DILocation(line: 819, column: 257, scope: !3020)
!3031 = !DILocation(line: 819, column: 282, scope: !3020)
!3032 = !DILocation(line: 819, column: 213, scope: !3020)
!3033 = !DILocation(line: 819, column: 301, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !748, file: !362, discriminator: 7)
!3035 = !DILocation(line: 819, column: 301, scope: !747)
!3036 = !DILocation(line: 819, column: 301, scope: !3037)
!3037 = !DILexicalBlockFile(scope: !747, file: !362, discriminator: 8)
!3038 = !DILocation(line: 819, column: 314, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !748, file: !362, discriminator: 9)
!3040 = !DILocation(line: 819, column: 316, scope: !3041)
!3041 = !DILexicalBlockFile(scope: !3042, file: !362, discriminator: 10)
!3042 = !DILexicalBlockFile(scope: !744, file: !362, discriminator: 3)
!3043 = !DILocation(line: 819, column: 316, scope: !743)
!3044 = !DILocation(line: 819, column: 316, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !743, file: !362, discriminator: 11)
!3046 = !DILocation(line: 820, column: 5, scope: !744)
!3047 = !DILocation(line: 818, column: 75, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !745, file: !362, discriminator: 1)
!3049 = !DILocation(line: 823, column: 28, scope: !681)
!3050 = !DILocation(line: 823, column: 35, scope: !681)
!3051 = !DILocation(line: 823, column: 5, scope: !681)
!3052 = !DILocation(line: 824, column: 12, scope: !681)
!3053 = !DILocation(line: 824, column: 5, scope: !681)
!3054 = !DILocation(line: 825, column: 1, scope: !681)
!3055 = !DILocation(line: 647, column: 35, scope: !750)
!3056 = !DILocation(line: 647, column: 45, scope: !750)
!3057 = !DILocation(line: 649, column: 9, scope: !760)
!3058 = !DILocation(line: 649, column: 13, scope: !760)
!3059 = !DILocation(line: 649, column: 9, scope: !750)
!3060 = !DILocation(line: 652, column: 13, scope: !758)
!3061 = !DILocation(line: 652, column: 19, scope: !758)
!3062 = !DILocation(line: 652, column: 23, scope: !758)
!3063 = !DILocation(line: 652, column: 32, scope: !758)
!3064 = !DILocation(line: 652, column: 13, scope: !759)
!3065 = !DILocation(line: 653, column: 13, scope: !757)
!3066 = !DILocation(line: 653, column: 24, scope: !757)
!3067 = !DILocation(line: 653, column: 66, scope: !757)
!3068 = !DILocation(line: 653, column: 72, scope: !757)
!3069 = !DILocation(line: 653, column: 51, scope: !757)
!3070 = !DILocation(line: 653, column: 87, scope: !757)
!3071 = !{!1264, !1156, i64 16}
!3072 = !DILocation(line: 654, column: 13, scope: !757)
!3073 = !DILocation(line: 654, column: 24, scope: !757)
!3074 = !DILocation(line: 655, column: 13, scope: !757)
!3075 = !DILocation(line: 655, column: 23, scope: !757)
!3076 = !DILocation(line: 656, column: 25, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !757, file: !362, line: 656, column: 17)
!3078 = !DILocation(line: 656, column: 31, scope: !3077)
!3079 = !DILocation(line: 656, column: 35, scope: !3077)
!3080 = !DILocation(line: 656, column: 17, scope: !3077)
!3081 = !DILocation(line: 656, column: 85, scope: !3077)
!3082 = !DILocation(line: 656, column: 75, scope: !3077)
!3083 = !DILocation(line: 656, column: 44, scope: !3077)
!3084 = !DILocation(line: 656, column: 17, scope: !757)
!3085 = !DILocation(line: 657, column: 17, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3077, file: !362, line: 656, column: 95)
!3087 = !DILocation(line: 658, column: 17, scope: !3086)
!3088 = !DILocation(line: 660, column: 24, scope: !757)
!3089 = !DILocation(line: 660, column: 35, scope: !757)
!3090 = !DILocation(line: 660, column: 41, scope: !757)
!3091 = !DILocation(line: 660, column: 45, scope: !757)
!3092 = !DILocation(line: 660, column: 33, scope: !757)
!3093 = !DILocation(line: 660, column: 22, scope: !757)
!3094 = !DILocation(line: 661, column: 62, scope: !757)
!3095 = !DILocation(line: 661, column: 24, scope: !757)
!3096 = !DILocation(line: 661, column: 22, scope: !757)
!3097 = !DILocation(line: 662, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !757, file: !362, line: 662, column: 17)
!3099 = !DILocation(line: 662, column: 26, scope: !3098)
!3100 = !DILocation(line: 662, column: 17, scope: !757)
!3101 = !DILocation(line: 663, column: 17, scope: !3098)
!3102 = !DILocation(line: 664, column: 55, scope: !757)
!3103 = !DILocation(line: 664, column: 37, scope: !757)
!3104 = !DILocation(line: 664, column: 67, scope: !757)
!3105 = !DILocation(line: 664, column: 35, scope: !757)
!3106 = !DILocation(line: 665, column: 58, scope: !757)
!3107 = !DILocation(line: 665, column: 64, scope: !757)
!3108 = !DILocation(line: 665, column: 40, scope: !757)
!3109 = !DILocation(line: 665, column: 79, scope: !757)
!3110 = !DILocation(line: 665, column: 38, scope: !757)
!3111 = !DILocation(line: 665, column: 90, scope: !757)
!3112 = !DILocation(line: 664, column: 13, scope: !757)
!3113 = !DILocation(line: 666, column: 55, scope: !757)
!3114 = !DILocation(line: 666, column: 37, scope: !757)
!3115 = !DILocation(line: 666, column: 67, scope: !757)
!3116 = !DILocation(line: 666, column: 35, scope: !757)
!3117 = !DILocation(line: 666, column: 79, scope: !757)
!3118 = !DILocation(line: 666, column: 77, scope: !757)
!3119 = !DILocation(line: 667, column: 23, scope: !757)
!3120 = !DILocation(line: 667, column: 29, scope: !757)
!3121 = !DILocation(line: 667, column: 33, scope: !757)
!3122 = !DILocation(line: 667, column: 42, scope: !757)
!3123 = !DILocation(line: 667, column: 48, scope: !757)
!3124 = !DILocation(line: 667, column: 52, scope: !757)
!3125 = !DILocation(line: 666, column: 13, scope: !757)
!3126 = !DILocation(line: 668, column: 13, scope: !757)
!3127 = !DILocation(line: 668, column: 18, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !764, file: !362, discriminator: 1)
!3129 = !DILocation(line: 668, column: 28, scope: !764)
!3130 = !DILocation(line: 668, column: 58, scope: !764)
!3131 = !DILocation(line: 668, column: 64, scope: !764)
!3132 = !DILocation(line: 668, column: 86, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !764, file: !362, line: 668, column: 83)
!3134 = !DILocation(line: 668, column: 103, scope: !3133)
!3135 = !DILocation(line: 668, column: 83, scope: !3133)
!3136 = !DILocation(line: 668, column: 113, scope: !3133)
!3137 = !DILocation(line: 668, column: 83, scope: !764)
!3138 = !DILocation(line: 668, column: 83, scope: !3139)
!3139 = !DILexicalBlockFile(scope: !764, file: !362, discriminator: 2)
!3140 = !DILocation(line: 668, column: 144, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3133, file: !362, discriminator: 3)
!3142 = !DILocation(line: 668, column: 162, scope: !3133)
!3143 = !DILocation(line: 668, column: 172, scope: !3133)
!3144 = !DILocation(line: 668, column: 197, scope: !3133)
!3145 = !DILocation(line: 668, column: 128, scope: !3133)
!3146 = !DILocation(line: 668, column: 216, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !757, file: !362, discriminator: 4)
!3148 = !DILocation(line: 668, column: 216, scope: !764)
!3149 = !DILocation(line: 668, column: 216, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !764, file: !362, discriminator: 5)
!3151 = !DILocation(line: 669, column: 33, scope: !757)
!3152 = !DILocation(line: 669, column: 13, scope: !757)
!3153 = !DILocation(line: 669, column: 19, scope: !757)
!3154 = !DILocation(line: 669, column: 31, scope: !757)
!3155 = !DILocation(line: 670, column: 13, scope: !757)
!3156 = !DILocation(line: 670, column: 19, scope: !757)
!3157 = !DILocation(line: 670, column: 23, scope: !757)
!3158 = !DILocation(line: 670, column: 32, scope: !757)
!3159 = !DILocation(line: 671, column: 9, scope: !758)
!3160 = !DILocation(line: 671, column: 9, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !758, file: !362, discriminator: 1)
!3162 = !DILocation(line: 671, column: 9, scope: !757)
!3163 = !DILocation(line: 672, column: 5, scope: !759)
!3164 = !DILocation(line: 673, column: 9, scope: !767)
!3165 = !DILocation(line: 673, column: 15, scope: !767)
!3166 = !DILocation(line: 673, column: 19, scope: !767)
!3167 = !DILocation(line: 673, column: 28, scope: !767)
!3168 = !DILocation(line: 673, column: 32, scope: !767)
!3169 = !DILocation(line: 673, column: 66, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !767, file: !362, discriminator: 1)
!3171 = !DILocation(line: 673, column: 72, scope: !767)
!3172 = !DILocation(line: 673, column: 51, scope: !767)
!3173 = !DILocation(line: 673, column: 91, scope: !767)
!3174 = !DILocation(line: 673, column: 48, scope: !767)
!3175 = !DILocation(line: 673, column: 9, scope: !750)
!3176 = !DILocation(line: 677, column: 9, scope: !766)
!3177 = !DILocation(line: 677, column: 19, scope: !766)
!3178 = !DILocation(line: 678, column: 25, scope: !766)
!3179 = !DILocation(line: 678, column: 31, scope: !766)
!3180 = !DILocation(line: 678, column: 35, scope: !766)
!3181 = !DILocation(line: 678, column: 44, scope: !766)
!3182 = !DILocation(line: 678, column: 50, scope: !766)
!3183 = !DILocation(line: 678, column: 54, scope: !766)
!3184 = !DILocation(line: 677, column: 30, scope: !766)
!3185 = !DILocation(line: 679, column: 13, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !766, file: !362, line: 679, column: 13)
!3187 = !DILocation(line: 679, column: 22, scope: !3186)
!3188 = !DILocation(line: 679, column: 13, scope: !766)
!3189 = !DILocation(line: 680, column: 13, scope: !3186)
!3190 = !DILocation(line: 681, column: 9, scope: !766)
!3191 = !DILocation(line: 681, column: 14, scope: !3192)
!3192 = !DILexicalBlockFile(scope: !769, file: !362, discriminator: 1)
!3193 = !DILocation(line: 681, column: 24, scope: !769)
!3194 = !DILocation(line: 681, column: 54, scope: !769)
!3195 = !DILocation(line: 681, column: 60, scope: !769)
!3196 = !DILocation(line: 681, column: 86, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !769, file: !362, line: 681, column: 83)
!3198 = !DILocation(line: 681, column: 103, scope: !3197)
!3199 = !DILocation(line: 681, column: 83, scope: !3197)
!3200 = !DILocation(line: 681, column: 113, scope: !3197)
!3201 = !DILocation(line: 681, column: 83, scope: !769)
!3202 = !DILocation(line: 681, column: 83, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !769, file: !362, discriminator: 2)
!3204 = !DILocation(line: 681, column: 144, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3197, file: !362, discriminator: 3)
!3206 = !DILocation(line: 681, column: 162, scope: !3197)
!3207 = !DILocation(line: 681, column: 172, scope: !3197)
!3208 = !DILocation(line: 681, column: 197, scope: !3197)
!3209 = !DILocation(line: 681, column: 128, scope: !3197)
!3210 = !DILocation(line: 681, column: 216, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !766, file: !362, discriminator: 4)
!3212 = !DILocation(line: 681, column: 216, scope: !769)
!3213 = !DILocation(line: 681, column: 216, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !769, file: !362, discriminator: 5)
!3215 = !DILocation(line: 682, column: 33, scope: !766)
!3216 = !DILocation(line: 682, column: 9, scope: !766)
!3217 = !DILocation(line: 682, column: 15, scope: !766)
!3218 = !DILocation(line: 682, column: 31, scope: !766)
!3219 = !DILocation(line: 683, column: 5, scope: !767)
!3220 = !DILocation(line: 683, column: 5, scope: !3170)
!3221 = !DILocation(line: 683, column: 5, scope: !766)
!3222 = !DILocation(line: 684, column: 5, scope: !750)
!3223 = !DILocation(line: 685, column: 1, scope: !750)
!3224 = !DILocation(line: 1056, column: 40, scope: !776)
!3225 = !DILocation(line: 1056, column: 59, scope: !776)
!3226 = !DILocation(line: 1059, column: 5, scope: !776)
!3227 = !DILocation(line: 1059, column: 9, scope: !776)
!3228 = !DILocation(line: 1060, column: 5, scope: !776)
!3229 = !DILocation(line: 1060, column: 18, scope: !776)
!3230 = !DILocation(line: 1061, column: 5, scope: !776)
!3231 = !DILocation(line: 1061, column: 16, scope: !776)
!3232 = !DILocation(line: 1062, column: 5, scope: !776)
!3233 = !DILocation(line: 1062, column: 19, scope: !776)
!3234 = !DILocation(line: 1063, column: 5, scope: !776)
!3235 = !DILocation(line: 1063, column: 16, scope: !776)
!3236 = !DILocation(line: 1065, column: 9, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1065, column: 9)
!3238 = !DILocation(line: 1065, column: 16, scope: !3237)
!3239 = !DILocation(line: 1065, column: 9, scope: !776)
!3240 = !DILocation(line: 1066, column: 25, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !362, line: 1065, column: 22)
!3242 = !DILocation(line: 1066, column: 9, scope: !3241)
!3243 = !DILocation(line: 1067, column: 9, scope: !3241)
!3244 = !DILocation(line: 1070, column: 58, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !776, file: !362, line: 1070, column: 9)
!3246 = !DILocation(line: 1070, column: 20, scope: !3245)
!3247 = !DILocation(line: 1070, column: 18, scope: !3245)
!3248 = !DILocation(line: 1070, column: 9, scope: !776)
!3249 = !DILocation(line: 1071, column: 9, scope: !3245)
!3250 = !DILocation(line: 1074, column: 7, scope: !788)
!3251 = !DILocation(line: 1074, column: 22, scope: !788)
!3252 = !DILocation(line: 1074, column: 37, scope: !788)
!3253 = !DILocation(line: 1074, column: 35, scope: !788)
!3254 = !DILocation(line: 1074, column: 82, scope: !788)
!3255 = !DILocation(line: 1074, column: 89, scope: !788)
!3256 = !DILocation(line: 1074, column: 59, scope: !788)
!3257 = !DILocation(line: 1074, column: 120, scope: !788)
!3258 = !DILocation(line: 1074, column: 99, scope: !788)
!3259 = !DILocation(line: 1074, column: 128, scope: !776)
!3260 = !DILocation(line: 1076, column: 43, scope: !776)
!3261 = !DILocation(line: 1076, column: 49, scope: !776)
!3262 = !DILocation(line: 1076, column: 28, scope: !776)
!3263 = !DILocation(line: 1076, column: 68, scope: !776)
!3264 = !DILocation(line: 1076, column: 10, scope: !776)
!3265 = !DILocation(line: 1078, column: 23, scope: !776)
!3266 = !DILocation(line: 1078, column: 29, scope: !776)
!3267 = !DILocation(line: 1078, column: 33, scope: !776)
!3268 = !DILocation(line: 1078, column: 21, scope: !776)
!3269 = !DILocation(line: 1081, column: 41, scope: !776)
!3270 = !DILocation(line: 1081, column: 26, scope: !776)
!3271 = !DILocation(line: 1081, column: 5, scope: !776)
!3272 = !DILocation(line: 1081, column: 11, scope: !776)
!3273 = !DILocation(line: 1081, column: 15, scope: !776)
!3274 = !DILocation(line: 1081, column: 24, scope: !776)
!3275 = !DILocation(line: 1082, column: 68, scope: !776)
!3276 = !DILocation(line: 1082, column: 74, scope: !776)
!3277 = !DILocation(line: 1082, column: 50, scope: !776)
!3278 = !DILocation(line: 1082, column: 93, scope: !776)
!3279 = !DILocation(line: 1082, column: 48, scope: !776)
!3280 = !DILocation(line: 1082, column: 5, scope: !776)
!3281 = !DILocation(line: 1082, column: 11, scope: !776)
!3282 = !DILocation(line: 1082, column: 15, scope: !776)
!3283 = !DILocation(line: 1082, column: 23, scope: !776)
!3284 = !DILocation(line: 1083, column: 27, scope: !776)
!3285 = !DILocation(line: 1083, column: 5, scope: !776)
!3286 = !DILocation(line: 1083, column: 11, scope: !776)
!3287 = !DILocation(line: 1083, column: 15, scope: !776)
!3288 = !DILocation(line: 1083, column: 25, scope: !776)
!3289 = !DILocation(line: 1084, column: 69, scope: !776)
!3290 = !DILocation(line: 1084, column: 51, scope: !776)
!3291 = !DILocation(line: 1084, column: 79, scope: !776)
!3292 = !DILocation(line: 1084, column: 49, scope: !776)
!3293 = !DILocation(line: 1084, column: 5, scope: !776)
!3294 = !DILocation(line: 1084, column: 11, scope: !776)
!3295 = !DILocation(line: 1084, column: 15, scope: !776)
!3296 = !DILocation(line: 1084, column: 24, scope: !776)
!3297 = !DILocation(line: 1086, column: 7, scope: !790)
!3298 = !DILocation(line: 1086, column: 22, scope: !790)
!3299 = !DILocation(line: 1086, column: 37, scope: !790)
!3300 = !DILocation(line: 1086, column: 35, scope: !790)
!3301 = !DILocation(line: 1087, column: 21, scope: !790)
!3302 = !DILocation(line: 1087, column: 27, scope: !790)
!3303 = !DILocation(line: 1087, column: 11, scope: !790)
!3304 = !DILocation(line: 1087, column: 9, scope: !790)
!3305 = !DILocation(line: 1088, column: 26, scope: !790)
!3306 = !DILocation(line: 1088, column: 5, scope: !790)
!3307 = !DILocation(line: 1088, column: 34, scope: !776)
!3308 = !DILocation(line: 1092, column: 5, scope: !776)
!3309 = !DILocation(line: 1092, column: 13, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3311, file: !362, discriminator: 6)
!3311 = !DILexicalBlockFile(scope: !776, file: !362, discriminator: 1)
!3312 = !DILocation(line: 1092, column: 17, scope: !776)
!3313 = !DILocation(line: 1092, column: 22, scope: !776)
!3314 = !DILocation(line: 1092, column: 25, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !776, file: !362, discriminator: 3)
!3316 = !DILocation(line: 1092, column: 29, scope: !776)
!3317 = !DILocation(line: 1092, column: 38, scope: !776)
!3318 = !DILocation(line: 1092, column: 41, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3320, file: !362, discriminator: 4)
!3320 = !DILexicalBlockFile(scope: !776, file: !362, discriminator: 2)
!3321 = !DILocation(line: 1092, column: 47, scope: !776)
!3322 = !DILocation(line: 1092, column: 51, scope: !776)
!3323 = !DILocation(line: 1092, column: 61, scope: !776)
!3324 = !DILocation(line: 1092, column: 5, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !776, file: !362, discriminator: 5)
!3326 = !DILocation(line: 1093, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !795, file: !362, line: 1093, column: 13)
!3328 = !DILocation(line: 1093, column: 20, scope: !3327)
!3329 = !DILocation(line: 1093, column: 13, scope: !795)
!3330 = !DILocation(line: 1094, column: 26, scope: !3327)
!3331 = !DILocation(line: 1094, column: 33, scope: !3327)
!3332 = !DILocation(line: 1094, column: 24, scope: !3327)
!3333 = !DILocation(line: 1094, column: 13, scope: !3327)
!3334 = !DILocation(line: 1096, column: 24, scope: !3327)
!3335 = !DILocation(line: 1097, column: 38, scope: !794)
!3336 = !DILocation(line: 1097, column: 13, scope: !794)
!3337 = !DILocation(line: 1097, column: 50, scope: !794)
!3338 = !DILocation(line: 1097, column: 13, scope: !795)
!3339 = !DILocation(line: 1098, column: 13, scope: !793)
!3340 = !DILocation(line: 1098, column: 18, scope: !3341)
!3341 = !DILexicalBlockFile(scope: !792, file: !362, discriminator: 1)
!3342 = !DILocation(line: 1098, column: 28, scope: !792)
!3343 = !DILocation(line: 1098, column: 51, scope: !792)
!3344 = !DILocation(line: 1098, column: 64, scope: !799)
!3345 = !DILocation(line: 1098, column: 72, scope: !799)
!3346 = !DILocation(line: 1098, column: 64, scope: !792)
!3347 = !DILocation(line: 1098, column: 98, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !798, file: !362, discriminator: 2)
!3349 = !DILocation(line: 1098, column: 112, scope: !798)
!3350 = !DILocation(line: 1098, column: 117, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !797, file: !362, discriminator: 4)
!3352 = !DILocation(line: 1098, column: 127, scope: !797)
!3353 = !DILocation(line: 1098, column: 157, scope: !797)
!3354 = !DILocation(line: 1098, column: 175, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !797, file: !362, line: 1098, column: 172)
!3356 = !DILocation(line: 1098, column: 192, scope: !3355)
!3357 = !DILocation(line: 1098, column: 172, scope: !3355)
!3358 = !DILocation(line: 1098, column: 202, scope: !3355)
!3359 = !DILocation(line: 1098, column: 172, scope: !797)
!3360 = !DILocation(line: 1098, column: 172, scope: !3361)
!3361 = !DILexicalBlockFile(scope: !797, file: !362, discriminator: 5)
!3362 = !DILocation(line: 1098, column: 233, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3355, file: !362, discriminator: 6)
!3364 = !DILocation(line: 1098, column: 251, scope: !3355)
!3365 = !DILocation(line: 1098, column: 261, scope: !3355)
!3366 = !DILocation(line: 1098, column: 286, scope: !3355)
!3367 = !DILocation(line: 1098, column: 217, scope: !3355)
!3368 = !DILocation(line: 1098, column: 305, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !798, file: !362, discriminator: 7)
!3370 = !DILocation(line: 1098, column: 305, scope: !797)
!3371 = !DILocation(line: 1098, column: 305, scope: !3372)
!3372 = !DILexicalBlockFile(scope: !797, file: !362, discriminator: 8)
!3373 = !DILocation(line: 1098, column: 318, scope: !3374)
!3374 = !DILexicalBlockFile(scope: !798, file: !362, discriminator: 9)
!3375 = !DILocation(line: 1098, column: 320, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3377, file: !362, discriminator: 10)
!3377 = !DILexicalBlockFile(scope: !793, file: !362, discriminator: 3)
!3378 = !DILocation(line: 1098, column: 320, scope: !792)
!3379 = !DILocation(line: 1098, column: 320, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !792, file: !362, discriminator: 11)
!3381 = !DILocation(line: 1099, column: 13, scope: !793)
!3382 = !DILocation(line: 1101, column: 73, scope: !795)
!3383 = !DILocation(line: 1101, column: 55, scope: !795)
!3384 = !DILocation(line: 1101, column: 83, scope: !795)
!3385 = !DILocation(line: 1101, column: 53, scope: !795)
!3386 = !DILocation(line: 1101, column: 95, scope: !795)
!3387 = !DILocation(line: 1101, column: 93, scope: !795)
!3388 = !DILocation(line: 1101, column: 9, scope: !795)
!3389 = !DILocation(line: 1101, column: 15, scope: !795)
!3390 = !DILocation(line: 1101, column: 19, scope: !795)
!3391 = !DILocation(line: 1101, column: 28, scope: !795)
!3392 = !DILocation(line: 1102, column: 31, scope: !795)
!3393 = !DILocation(line: 1102, column: 9, scope: !795)
!3394 = !DILocation(line: 1102, column: 15, scope: !795)
!3395 = !DILocation(line: 1102, column: 19, scope: !795)
!3396 = !DILocation(line: 1102, column: 29, scope: !795)
!3397 = !DILocation(line: 1103, column: 18, scope: !795)
!3398 = !DILocation(line: 1103, column: 16, scope: !795)
!3399 = !DILocation(line: 1105, column: 11, scope: !801)
!3400 = !DILocation(line: 1105, column: 26, scope: !801)
!3401 = !DILocation(line: 1105, column: 41, scope: !801)
!3402 = !DILocation(line: 1105, column: 39, scope: !801)
!3403 = !DILocation(line: 1106, column: 25, scope: !801)
!3404 = !DILocation(line: 1106, column: 31, scope: !801)
!3405 = !DILocation(line: 1106, column: 15, scope: !801)
!3406 = !DILocation(line: 1106, column: 13, scope: !801)
!3407 = !DILocation(line: 1107, column: 30, scope: !801)
!3408 = !DILocation(line: 1107, column: 9, scope: !801)
!3409 = !DILocation(line: 1107, column: 38, scope: !795)
!3410 = !DILocation(line: 1110, column: 31, scope: !805)
!3411 = !DILocation(line: 1110, column: 37, scope: !805)
!3412 = !DILocation(line: 1110, column: 9, scope: !805)
!3413 = !DILocation(line: 1110, column: 42, scope: !805)
!3414 = !DILocation(line: 1110, column: 9, scope: !776)
!3415 = !DILocation(line: 1111, column: 9, scope: !804)
!3416 = !DILocation(line: 1111, column: 14, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !803, file: !362, discriminator: 1)
!3418 = !DILocation(line: 1111, column: 24, scope: !803)
!3419 = !DILocation(line: 1111, column: 54, scope: !803)
!3420 = !DILocation(line: 1111, column: 71, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !803, file: !362, line: 1111, column: 68)
!3422 = !DILocation(line: 1111, column: 88, scope: !3421)
!3423 = !DILocation(line: 1111, column: 68, scope: !3421)
!3424 = !DILocation(line: 1111, column: 98, scope: !3421)
!3425 = !DILocation(line: 1111, column: 68, scope: !803)
!3426 = !DILocation(line: 1111, column: 68, scope: !3427)
!3427 = !DILexicalBlockFile(scope: !803, file: !362, discriminator: 2)
!3428 = !DILocation(line: 1111, column: 129, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3421, file: !362, discriminator: 3)
!3430 = !DILocation(line: 1111, column: 147, scope: !3421)
!3431 = !DILocation(line: 1111, column: 157, scope: !3421)
!3432 = !DILocation(line: 1111, column: 182, scope: !3421)
!3433 = !DILocation(line: 1111, column: 113, scope: !3421)
!3434 = !DILocation(line: 1111, column: 201, scope: !3435)
!3435 = !DILexicalBlockFile(scope: !804, file: !362, discriminator: 4)
!3436 = !DILocation(line: 1111, column: 201, scope: !803)
!3437 = !DILocation(line: 1111, column: 201, scope: !3438)
!3438 = !DILexicalBlockFile(scope: !803, file: !362, discriminator: 5)
!3439 = !DILocation(line: 1112, column: 16, scope: !804)
!3440 = !DILocation(line: 1113, column: 9, scope: !804)
!3441 = !DILocation(line: 1117, column: 9, scope: !811)
!3442 = !DILocation(line: 1117, column: 13, scope: !811)
!3443 = !DILocation(line: 1117, column: 9, scope: !776)
!3444 = !DILocation(line: 1118, column: 9, scope: !810)
!3445 = !DILocation(line: 1118, column: 15, scope: !810)
!3446 = !DILocation(line: 1118, column: 19, scope: !810)
!3447 = !DILocation(line: 1119, column: 9, scope: !810)
!3448 = !DILocation(line: 1119, column: 15, scope: !810)
!3449 = !DILocation(line: 1119, column: 30, scope: !810)
!3450 = !DILocation(line: 1120, column: 28, scope: !810)
!3451 = !DILocation(line: 1120, column: 34, scope: !810)
!3452 = !DILocation(line: 1120, column: 15, scope: !810)
!3453 = !DILocation(line: 1120, column: 13, scope: !810)
!3454 = !DILocation(line: 1121, column: 13, scope: !809)
!3455 = !DILocation(line: 1121, column: 17, scope: !809)
!3456 = !DILocation(line: 1121, column: 13, scope: !810)
!3457 = !DILocation(line: 1122, column: 24, scope: !808)
!3458 = !DILocation(line: 1122, column: 30, scope: !808)
!3459 = !DILocation(line: 1122, column: 35, scope: !808)
!3460 = !DILocation(line: 1122, column: 13, scope: !808)
!3461 = !DILocation(line: 1123, column: 13, scope: !808)
!3462 = !DILocation(line: 1123, column: 18, scope: !3463)
!3463 = !DILexicalBlockFile(scope: !807, file: !362, discriminator: 1)
!3464 = !DILocation(line: 1123, column: 28, scope: !807)
!3465 = !DILocation(line: 1123, column: 58, scope: !807)
!3466 = !DILocation(line: 1123, column: 75, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !807, file: !362, line: 1123, column: 72)
!3468 = !DILocation(line: 1123, column: 92, scope: !3467)
!3469 = !DILocation(line: 1123, column: 72, scope: !3467)
!3470 = !DILocation(line: 1123, column: 102, scope: !3467)
!3471 = !DILocation(line: 1123, column: 72, scope: !807)
!3472 = !DILocation(line: 1123, column: 72, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !807, file: !362, discriminator: 2)
!3474 = !DILocation(line: 1123, column: 133, scope: !3475)
!3475 = !DILexicalBlockFile(scope: !3467, file: !362, discriminator: 3)
!3476 = !DILocation(line: 1123, column: 151, scope: !3467)
!3477 = !DILocation(line: 1123, column: 161, scope: !3467)
!3478 = !DILocation(line: 1123, column: 186, scope: !3467)
!3479 = !DILocation(line: 1123, column: 117, scope: !3467)
!3480 = !DILocation(line: 1123, column: 205, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !808, file: !362, discriminator: 4)
!3482 = !DILocation(line: 1123, column: 205, scope: !807)
!3483 = !DILocation(line: 1123, column: 205, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !807, file: !362, discriminator: 5)
!3485 = !DILocation(line: 1124, column: 20, scope: !808)
!3486 = !DILocation(line: 1125, column: 13, scope: !808)
!3487 = !DILocation(line: 1127, column: 5, scope: !810)
!3488 = !DILocation(line: 1129, column: 34, scope: !815)
!3489 = !DILocation(line: 1129, column: 40, scope: !815)
!3490 = !DILocation(line: 1129, column: 44, scope: !815)
!3491 = !DILocation(line: 1129, column: 56, scope: !815)
!3492 = !DILocation(line: 1129, column: 54, scope: !815)
!3493 = !DILocation(line: 1129, column: 9, scope: !815)
!3494 = !DILocation(line: 1129, column: 73, scope: !815)
!3495 = !DILocation(line: 1129, column: 9, scope: !776)
!3496 = !DILocation(line: 1130, column: 9, scope: !814)
!3497 = !DILocation(line: 1130, column: 14, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !813, file: !362, discriminator: 1)
!3499 = !DILocation(line: 1130, column: 24, scope: !813)
!3500 = !DILocation(line: 1130, column: 47, scope: !813)
!3501 = !DILocation(line: 1130, column: 60, scope: !819)
!3502 = !DILocation(line: 1130, column: 68, scope: !819)
!3503 = !DILocation(line: 1130, column: 60, scope: !813)
!3504 = !DILocation(line: 1130, column: 94, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !818, file: !362, discriminator: 2)
!3506 = !DILocation(line: 1130, column: 108, scope: !818)
!3507 = !DILocation(line: 1130, column: 113, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !817, file: !362, discriminator: 4)
!3509 = !DILocation(line: 1130, column: 123, scope: !817)
!3510 = !DILocation(line: 1130, column: 153, scope: !817)
!3511 = !DILocation(line: 1130, column: 171, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !817, file: !362, line: 1130, column: 168)
!3513 = !DILocation(line: 1130, column: 188, scope: !3512)
!3514 = !DILocation(line: 1130, column: 168, scope: !3512)
!3515 = !DILocation(line: 1130, column: 198, scope: !3512)
!3516 = !DILocation(line: 1130, column: 168, scope: !817)
!3517 = !DILocation(line: 1130, column: 168, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !817, file: !362, discriminator: 5)
!3519 = !DILocation(line: 1130, column: 229, scope: !3520)
!3520 = !DILexicalBlockFile(scope: !3512, file: !362, discriminator: 6)
!3521 = !DILocation(line: 1130, column: 247, scope: !3512)
!3522 = !DILocation(line: 1130, column: 257, scope: !3512)
!3523 = !DILocation(line: 1130, column: 282, scope: !3512)
!3524 = !DILocation(line: 1130, column: 213, scope: !3512)
!3525 = !DILocation(line: 1130, column: 301, scope: !3526)
!3526 = !DILexicalBlockFile(scope: !818, file: !362, discriminator: 7)
!3527 = !DILocation(line: 1130, column: 301, scope: !817)
!3528 = !DILocation(line: 1130, column: 301, scope: !3529)
!3529 = !DILexicalBlockFile(scope: !817, file: !362, discriminator: 8)
!3530 = !DILocation(line: 1130, column: 314, scope: !3531)
!3531 = !DILexicalBlockFile(scope: !818, file: !362, discriminator: 9)
!3532 = !DILocation(line: 1130, column: 316, scope: !3533)
!3533 = !DILexicalBlockFile(scope: !3534, file: !362, discriminator: 10)
!3534 = !DILexicalBlockFile(scope: !814, file: !362, discriminator: 3)
!3535 = !DILocation(line: 1130, column: 316, scope: !813)
!3536 = !DILocation(line: 1130, column: 316, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !813, file: !362, discriminator: 11)
!3538 = !DILocation(line: 1131, column: 5, scope: !814)
!3539 = !DILocation(line: 1129, column: 75, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !815, file: !362, discriminator: 1)
!3541 = !DILocation(line: 1135, column: 28, scope: !776)
!3542 = !DILocation(line: 1135, column: 35, scope: !776)
!3543 = !DILocation(line: 1135, column: 5, scope: !776)
!3544 = !DILocation(line: 1137, column: 12, scope: !776)
!3545 = !DILocation(line: 1137, column: 5, scope: !776)
!3546 = !DILocation(line: 1138, column: 1, scope: !776)
!3547 = !DILocation(line: 992, column: 39, scope: !824)
!3548 = !DILocation(line: 995, column: 5, scope: !824)
!3549 = !DILocation(line: 995, column: 17, scope: !824)
!3550 = !DILocation(line: 996, column: 5, scope: !824)
!3551 = !DILocation(line: 996, column: 9, scope: !824)
!3552 = !DILocation(line: 998, column: 14, scope: !824)
!3553 = !DILocation(line: 998, column: 12, scope: !824)
!3554 = !DILocation(line: 999, column: 10, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !824, file: !362, line: 999, column: 9)
!3556 = !DILocation(line: 999, column: 9, scope: !824)
!3557 = !DILocation(line: 999, column: 18, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3555, file: !362, discriminator: 1)
!3559 = !DILocation(line: 999, column: 18, scope: !3555)
!3560 = !DILocation(line: 1004, column: 7, scope: !830)
!3561 = !DILocation(line: 1004, column: 22, scope: !830)
!3562 = !DILocation(line: 1004, column: 37, scope: !830)
!3563 = !DILocation(line: 1004, column: 35, scope: !830)
!3564 = !DILocation(line: 1004, column: 82, scope: !830)
!3565 = !DILocation(line: 1004, column: 89, scope: !830)
!3566 = !DILocation(line: 1004, column: 59, scope: !830)
!3567 = !DILocation(line: 1004, column: 120, scope: !830)
!3568 = !DILocation(line: 1004, column: 99, scope: !830)
!3569 = !DILocation(line: 1004, column: 128, scope: !824)
!3570 = !DILocation(line: 1005, column: 24, scope: !824)
!3571 = !DILocation(line: 1005, column: 32, scope: !824)
!3572 = !DILocation(line: 1005, column: 38, scope: !824)
!3573 = !DILocation(line: 1005, column: 44, scope: !824)
!3574 = !DILocation(line: 1005, column: 11, scope: !824)
!3575 = !DILocation(line: 1005, column: 9, scope: !824)
!3576 = !DILocation(line: 1006, column: 12, scope: !824)
!3577 = !DILocation(line: 1010, column: 25, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !824, file: !362, line: 1006, column: 17)
!3579 = !DILocation(line: 1010, column: 9, scope: !3578)
!3580 = !DILocation(line: 1011, column: 9, scope: !3578)
!3581 = !DILocation(line: 1013, column: 25, scope: !3578)
!3582 = !DILocation(line: 1013, column: 9, scope: !3578)
!3583 = !DILocation(line: 1015, column: 9, scope: !3578)
!3584 = !DILocation(line: 1017, column: 20, scope: !3578)
!3585 = !DILocation(line: 1017, column: 26, scope: !3578)
!3586 = !DILocation(line: 1017, column: 31, scope: !3578)
!3587 = !DILocation(line: 1017, column: 9, scope: !3578)
!3588 = !DILocation(line: 1018, column: 9, scope: !3578)
!3589 = !DILocation(line: 1021, column: 21, scope: !824)
!3590 = !DILocation(line: 1021, column: 27, scope: !824)
!3591 = !DILocation(line: 1021, column: 42, scope: !824)
!3592 = !DILocation(line: 1021, column: 51, scope: !824)
!3593 = !DILocation(line: 1022, column: 21, scope: !824)
!3594 = !DILocation(line: 1022, column: 27, scope: !824)
!3595 = !DILocation(line: 1022, column: 46, scope: !824)
!3596 = !DILocation(line: 1022, column: 55, scope: !824)
!3597 = !DILocation(line: 1023, column: 5, scope: !824)
!3598 = !DILocation(line: 1023, column: 10, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !832, file: !362, discriminator: 1)
!3600 = !DILocation(line: 1023, column: 20, scope: !832)
!3601 = !DILocation(line: 1023, column: 51, scope: !832)
!3602 = !DILocation(line: 1023, column: 57, scope: !832)
!3603 = !DILocation(line: 1023, column: 69, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !832, file: !362, line: 1023, column: 69)
!3605 = !DILocation(line: 1023, column: 85, scope: !3604)
!3606 = !DILocation(line: 1023, column: 69, scope: !832)
!3607 = !DILocation(line: 1023, column: 116, scope: !3608)
!3608 = !DILexicalBlockFile(scope: !3604, file: !362, discriminator: 2)
!3609 = !DILocation(line: 1023, column: 135, scope: !3604)
!3610 = !DILocation(line: 1023, column: 144, scope: !3604)
!3611 = !DILocation(line: 1023, column: 100, scope: !3604)
!3612 = !DILocation(line: 1023, column: 149, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3614, file: !362, discriminator: 4)
!3614 = !DILexicalBlockFile(scope: !824, file: !362, discriminator: 3)
!3615 = !DILocation(line: 1023, column: 149, scope: !832)
!3616 = !DILocation(line: 1023, column: 149, scope: !3617)
!3617 = !DILexicalBlockFile(scope: !832, file: !362, discriminator: 5)
!3618 = !DILocation(line: 1024, column: 5, scope: !824)
!3619 = !DILocation(line: 1024, column: 10, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !834, file: !362, discriminator: 1)
!3621 = !DILocation(line: 1024, column: 20, scope: !834)
!3622 = !DILocation(line: 1024, column: 51, scope: !834)
!3623 = !DILocation(line: 1024, column: 59, scope: !834)
!3624 = !DILocation(line: 1024, column: 77, scope: !837)
!3625 = !DILocation(line: 1024, column: 93, scope: !837)
!3626 = !DILocation(line: 1024, column: 77, scope: !834)
!3627 = !DILocation(line: 1024, column: 108, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 2)
!3629 = !DILocation(line: 1024, column: 113, scope: !3630)
!3630 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 4)
!3631 = !DILocation(line: 1024, column: 123, scope: !836)
!3632 = !DILocation(line: 1024, column: 153, scope: !836)
!3633 = !DILocation(line: 1024, column: 179, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !836, file: !362, line: 1024, column: 176)
!3635 = !DILocation(line: 1024, column: 196, scope: !3634)
!3636 = !DILocation(line: 1024, column: 176, scope: !3634)
!3637 = !DILocation(line: 1024, column: 206, scope: !3634)
!3638 = !DILocation(line: 1024, column: 176, scope: !836)
!3639 = !DILocation(line: 1024, column: 176, scope: !3640)
!3640 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 5)
!3641 = !DILocation(line: 1024, column: 237, scope: !3642)
!3642 = !DILexicalBlockFile(scope: !3634, file: !362, discriminator: 6)
!3643 = !DILocation(line: 1024, column: 255, scope: !3634)
!3644 = !DILocation(line: 1024, column: 265, scope: !3634)
!3645 = !DILocation(line: 1024, column: 290, scope: !3634)
!3646 = !DILocation(line: 1024, column: 221, scope: !3634)
!3647 = !DILocation(line: 1024, column: 309, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !837, file: !362, discriminator: 7)
!3649 = !DILocation(line: 1024, column: 309, scope: !836)
!3650 = !DILocation(line: 1024, column: 309, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 8)
!3652 = !DILocation(line: 1024, column: 309, scope: !3653)
!3653 = !DILexicalBlockFile(scope: !836, file: !362, discriminator: 9)
!3654 = !DILocation(line: 1024, column: 322, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3614, file: !362, discriminator: 10)
!3656 = !DILocation(line: 1024, column: 322, scope: !834)
!3657 = !DILocation(line: 1024, column: 322, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !834, file: !362, discriminator: 11)
!3659 = !DILocation(line: 1025, column: 5, scope: !824)
!3660 = !DILocation(line: 1025, column: 10, scope: !3661)
!3661 = !DILexicalBlockFile(scope: !839, file: !362, discriminator: 1)
!3662 = !DILocation(line: 1025, column: 20, scope: !839)
!3663 = !DILocation(line: 1025, column: 51, scope: !839)
!3664 = !DILocation(line: 1025, column: 59, scope: !839)
!3665 = !DILocation(line: 1025, column: 81, scope: !842)
!3666 = !DILocation(line: 1025, column: 97, scope: !842)
!3667 = !DILocation(line: 1025, column: 81, scope: !839)
!3668 = !DILocation(line: 1025, column: 112, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !842, file: !362, discriminator: 2)
!3670 = !DILocation(line: 1025, column: 117, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !841, file: !362, discriminator: 4)
!3672 = !DILocation(line: 1025, column: 127, scope: !841)
!3673 = !DILocation(line: 1025, column: 157, scope: !841)
!3674 = !DILocation(line: 1025, column: 183, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !841, file: !362, line: 1025, column: 180)
!3676 = !DILocation(line: 1025, column: 200, scope: !3675)
!3677 = !DILocation(line: 1025, column: 180, scope: !3675)
!3678 = !DILocation(line: 1025, column: 210, scope: !3675)
!3679 = !DILocation(line: 1025, column: 180, scope: !841)
!3680 = !DILocation(line: 1025, column: 180, scope: !3681)
!3681 = !DILexicalBlockFile(scope: !841, file: !362, discriminator: 5)
!3682 = !DILocation(line: 1025, column: 241, scope: !3683)
!3683 = !DILexicalBlockFile(scope: !3675, file: !362, discriminator: 6)
!3684 = !DILocation(line: 1025, column: 259, scope: !3675)
!3685 = !DILocation(line: 1025, column: 269, scope: !3675)
!3686 = !DILocation(line: 1025, column: 294, scope: !3675)
!3687 = !DILocation(line: 1025, column: 225, scope: !3675)
!3688 = !DILocation(line: 1025, column: 313, scope: !3689)
!3689 = !DILexicalBlockFile(scope: !842, file: !362, discriminator: 7)
!3690 = !DILocation(line: 1025, column: 313, scope: !841)
!3691 = !DILocation(line: 1025, column: 313, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !841, file: !362, discriminator: 8)
!3693 = !DILocation(line: 1025, column: 313, scope: !3694)
!3694 = !DILexicalBlockFile(scope: !841, file: !362, discriminator: 9)
!3695 = !DILocation(line: 1025, column: 326, scope: !3655)
!3696 = !DILocation(line: 1025, column: 326, scope: !839)
!3697 = !DILocation(line: 1025, column: 326, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !839, file: !362, discriminator: 11)
!3699 = !DILocation(line: 1026, column: 5, scope: !824)
!3700 = !DILocation(line: 1026, column: 10, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !844, file: !362, discriminator: 1)
!3702 = !DILocation(line: 1026, column: 20, scope: !844)
!3703 = !DILocation(line: 1026, column: 51, scope: !844)
!3704 = !DILocation(line: 1026, column: 59, scope: !844)
!3705 = !DILocation(line: 1026, column: 71, scope: !847)
!3706 = !DILocation(line: 1026, column: 87, scope: !847)
!3707 = !DILocation(line: 1026, column: 71, scope: !844)
!3708 = !DILocation(line: 1026, column: 102, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !847, file: !362, discriminator: 2)
!3710 = !DILocation(line: 1026, column: 107, scope: !3711)
!3711 = !DILexicalBlockFile(scope: !846, file: !362, discriminator: 4)
!3712 = !DILocation(line: 1026, column: 117, scope: !846)
!3713 = !DILocation(line: 1026, column: 147, scope: !846)
!3714 = !DILocation(line: 1026, column: 173, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !846, file: !362, line: 1026, column: 170)
!3716 = !DILocation(line: 1026, column: 190, scope: !3715)
!3717 = !DILocation(line: 1026, column: 170, scope: !3715)
!3718 = !DILocation(line: 1026, column: 200, scope: !3715)
!3719 = !DILocation(line: 1026, column: 170, scope: !846)
!3720 = !DILocation(line: 1026, column: 170, scope: !3721)
!3721 = !DILexicalBlockFile(scope: !846, file: !362, discriminator: 5)
!3722 = !DILocation(line: 1026, column: 231, scope: !3723)
!3723 = !DILexicalBlockFile(scope: !3715, file: !362, discriminator: 6)
!3724 = !DILocation(line: 1026, column: 249, scope: !3715)
!3725 = !DILocation(line: 1026, column: 259, scope: !3715)
!3726 = !DILocation(line: 1026, column: 284, scope: !3715)
!3727 = !DILocation(line: 1026, column: 215, scope: !3715)
!3728 = !DILocation(line: 1026, column: 303, scope: !3729)
!3729 = !DILexicalBlockFile(scope: !847, file: !362, discriminator: 7)
!3730 = !DILocation(line: 1026, column: 303, scope: !846)
!3731 = !DILocation(line: 1026, column: 303, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !846, file: !362, discriminator: 8)
!3733 = !DILocation(line: 1026, column: 303, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !846, file: !362, discriminator: 9)
!3735 = !DILocation(line: 1026, column: 316, scope: !3655)
!3736 = !DILocation(line: 1026, column: 316, scope: !844)
!3737 = !DILocation(line: 1026, column: 316, scope: !3738)
!3738 = !DILexicalBlockFile(scope: !844, file: !362, discriminator: 11)
!3739 = !DILocation(line: 1027, column: 27, scope: !824)
!3740 = !DILocation(line: 1027, column: 33, scope: !824)
!3741 = !DILocation(line: 1027, column: 5, scope: !824)
!3742 = !DILocation(line: 1027, column: 13, scope: !824)
!3743 = !DILocation(line: 1027, column: 25, scope: !824)
!3744 = !DILocation(line: 1028, column: 31, scope: !824)
!3745 = !DILocation(line: 1028, column: 37, scope: !824)
!3746 = !DILocation(line: 1028, column: 5, scope: !824)
!3747 = !DILocation(line: 1028, column: 13, scope: !824)
!3748 = !DILocation(line: 1028, column: 29, scope: !824)
!3749 = !DILocation(line: 1029, column: 21, scope: !824)
!3750 = !DILocation(line: 1029, column: 27, scope: !824)
!3751 = !DILocation(line: 1029, column: 5, scope: !824)
!3752 = !DILocation(line: 1029, column: 13, scope: !824)
!3753 = !DILocation(line: 1029, column: 19, scope: !824)
!3754 = !DILocation(line: 1030, column: 19, scope: !824)
!3755 = !DILocation(line: 1030, column: 25, scope: !824)
!3756 = !DILocation(line: 1030, column: 5, scope: !824)
!3757 = !DILocation(line: 1030, column: 13, scope: !824)
!3758 = !DILocation(line: 1030, column: 17, scope: !824)
!3759 = !DILocation(line: 1033, column: 5, scope: !824)
!3760 = !DILocation(line: 1033, column: 13, scope: !824)
!3761 = !DILocation(line: 1033, column: 28, scope: !824)
!3762 = !DILocation(line: 1035, column: 28, scope: !824)
!3763 = !DILocation(line: 1035, column: 35, scope: !824)
!3764 = !DILocation(line: 1035, column: 5, scope: !824)
!3765 = !DILocation(line: 1036, column: 24, scope: !824)
!3766 = !DILocation(line: 1036, column: 12, scope: !824)
!3767 = !DILocation(line: 1036, column: 5, scope: !824)
!3768 = !DILocation(line: 1039, column: 28, scope: !824)
!3769 = !DILocation(line: 1039, column: 35, scope: !824)
!3770 = !DILocation(line: 1039, column: 5, scope: !824)
!3771 = !DILocation(line: 1040, column: 5, scope: !824)
!3772 = !DILocation(line: 1040, column: 10, scope: !3773)
!3773 = !DILexicalBlockFile(scope: !849, file: !362, discriminator: 1)
!3774 = !DILocation(line: 1040, column: 20, scope: !849)
!3775 = !DILocation(line: 1040, column: 51, scope: !849)
!3776 = !DILocation(line: 1040, column: 38, scope: !849)
!3777 = !DILocation(line: 1040, column: 64, scope: !852)
!3778 = !DILocation(line: 1040, column: 80, scope: !852)
!3779 = !DILocation(line: 1040, column: 64, scope: !849)
!3780 = !DILocation(line: 1040, column: 95, scope: !3781)
!3781 = !DILexicalBlockFile(scope: !852, file: !362, discriminator: 2)
!3782 = !DILocation(line: 1040, column: 100, scope: !3783)
!3783 = !DILexicalBlockFile(scope: !851, file: !362, discriminator: 4)
!3784 = !DILocation(line: 1040, column: 110, scope: !851)
!3785 = !DILocation(line: 1040, column: 140, scope: !851)
!3786 = !DILocation(line: 1040, column: 166, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !851, file: !362, line: 1040, column: 163)
!3788 = !DILocation(line: 1040, column: 183, scope: !3787)
!3789 = !DILocation(line: 1040, column: 163, scope: !3787)
!3790 = !DILocation(line: 1040, column: 193, scope: !3787)
!3791 = !DILocation(line: 1040, column: 163, scope: !851)
!3792 = !DILocation(line: 1040, column: 163, scope: !3793)
!3793 = !DILexicalBlockFile(scope: !851, file: !362, discriminator: 5)
!3794 = !DILocation(line: 1040, column: 224, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !3787, file: !362, discriminator: 6)
!3796 = !DILocation(line: 1040, column: 242, scope: !3787)
!3797 = !DILocation(line: 1040, column: 252, scope: !3787)
!3798 = !DILocation(line: 1040, column: 277, scope: !3787)
!3799 = !DILocation(line: 1040, column: 208, scope: !3787)
!3800 = !DILocation(line: 1040, column: 296, scope: !3801)
!3801 = !DILexicalBlockFile(scope: !852, file: !362, discriminator: 7)
!3802 = !DILocation(line: 1040, column: 296, scope: !851)
!3803 = !DILocation(line: 1040, column: 296, scope: !3804)
!3804 = !DILexicalBlockFile(scope: !851, file: !362, discriminator: 8)
!3805 = !DILocation(line: 1040, column: 296, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !851, file: !362, discriminator: 9)
!3807 = !DILocation(line: 1040, column: 309, scope: !3655)
!3808 = !DILocation(line: 1040, column: 309, scope: !849)
!3809 = !DILocation(line: 1040, column: 309, scope: !3810)
!3810 = !DILexicalBlockFile(scope: !849, file: !362, discriminator: 11)
!3811 = !DILocation(line: 1041, column: 5, scope: !824)
!3812 = !DILocation(line: 1042, column: 1, scope: !824)
!3813 = !DILocation(line: 396, column: 27, scope: !853)
!3814 = !DILocation(line: 396, column: 45, scope: !853)
!3815 = !DILocation(line: 398, column: 5, scope: !853)
!3816 = !DILocation(line: 398, column: 15, scope: !853)
!3817 = !DILocation(line: 399, column: 5, scope: !853)
!3818 = !DILocation(line: 399, column: 15, scope: !853)
!3819 = !DILocation(line: 400, column: 5, scope: !853)
!3820 = !DILocation(line: 400, column: 18, scope: !853)
!3821 = !DILocation(line: 402, column: 27, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !853, file: !446, line: 402, column: 9)
!3823 = !DILocation(line: 402, column: 10, scope: !3822)
!3824 = !DILocation(line: 402, column: 9, scope: !853)
!3825 = !DILocation(line: 405, column: 9, scope: !3822)
!3826 = !DILocation(line: 406, column: 38, scope: !853)
!3827 = !DILocation(line: 406, column: 53, scope: !853)
!3828 = !DILocation(line: 406, column: 20, scope: !853)
!3829 = !DILocation(line: 406, column: 18, scope: !853)
!3830 = !DILocation(line: 406, column: 5, scope: !853)
!3831 = !DILocation(line: 410, column: 14, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !853, file: !446, line: 410, column: 9)
!3833 = !DILocation(line: 410, column: 9, scope: !3832)
!3834 = !DILocation(line: 410, column: 9, scope: !853)
!3835 = !DILocation(line: 411, column: 8, scope: !3832)
!3836 = !DILocation(line: 413, column: 12, scope: !853)
!3837 = !DILocation(line: 414, column: 1, scope: !853)
!3838 = !DILocation(line: 413, column: 5, scope: !853)
!3839 = !DILocation(line: 23, column: 28, scope: !899)
!3840 = !DILocation(line: 23, column: 46, scope: !899)
!3841 = !DILocation(line: 25, column: 5, scope: !899)
!3842 = !DILocation(line: 25, column: 15, scope: !899)
!3843 = !DILocation(line: 26, column: 5, scope: !899)
!3844 = !DILocation(line: 26, column: 15, scope: !899)
!3845 = !DILocation(line: 27, column: 5, scope: !899)
!3846 = !DILocation(line: 27, column: 9, scope: !899)
!3847 = !DILocation(line: 29, column: 27, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !899, file: !446, line: 29, column: 9)
!3849 = !DILocation(line: 29, column: 10, scope: !3848)
!3850 = !DILocation(line: 29, column: 9, scope: !899)
!3851 = !DILocation(line: 32, column: 9, scope: !3848)
!3852 = !DILocation(line: 33, column: 39, scope: !899)
!3853 = !DILocation(line: 33, column: 55, scope: !899)
!3854 = !DILocation(line: 33, column: 20, scope: !899)
!3855 = !DILocation(line: 33, column: 18, scope: !899)
!3856 = !DILocation(line: 33, column: 5, scope: !899)
!3857 = !DILocation(line: 37, column: 15, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !899, file: !446, line: 37, column: 9)
!3859 = !DILocation(line: 37, column: 9, scope: !3858)
!3860 = !DILocation(line: 37, column: 9, scope: !899)
!3861 = !DILocation(line: 38, column: 8, scope: !3858)
!3862 = !DILocation(line: 40, column: 12, scope: !899)
!3863 = !DILocation(line: 41, column: 1, scope: !899)
!3864 = !DILocation(line: 40, column: 5, scope: !899)
!3865 = !DILocation(line: 117, column: 31, scope: !934)
!3866 = !DILocation(line: 117, column: 49, scope: !934)
!3867 = !DILocation(line: 117, column: 65, scope: !934)
!3868 = !DILocation(line: 119, column: 5, scope: !934)
!3869 = !DILocation(line: 119, column: 15, scope: !934)
!3870 = !DILocation(line: 121, column: 5, scope: !934)
!3871 = !DILocation(line: 121, column: 9, scope: !934)
!3872 = !DILocation(line: 122, column: 5, scope: !934)
!3873 = !DILocation(line: 122, column: 9, scope: !934)
!3874 = !DILocation(line: 123, column: 5, scope: !934)
!3875 = !DILocation(line: 123, column: 9, scope: !934)
!3876 = !DILocation(line: 124, column: 5, scope: !934)
!3877 = !DILocation(line: 124, column: 9, scope: !934)
!3878 = !DILocation(line: 125, column: 5, scope: !934)
!3879 = !DILocation(line: 125, column: 9, scope: !934)
!3880 = !DILocation(line: 126, column: 5, scope: !934)
!3881 = !DILocation(line: 126, column: 15, scope: !934)
!3882 = !DILocation(line: 128, column: 38, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !934, file: !446, line: 128, column: 9)
!3884 = !DILocation(line: 128, column: 44, scope: !3883)
!3885 = !DILocation(line: 128, column: 10, scope: !3883)
!3886 = !DILocation(line: 128, column: 9, scope: !934)
!3887 = !DILocation(line: 131, column: 9, scope: !3883)
!3888 = !DILocation(line: 132, column: 42, scope: !934)
!3889 = !DILocation(line: 132, column: 50, scope: !934)
!3890 = !DILocation(line: 132, column: 57, scope: !934)
!3891 = !DILocation(line: 132, column: 65, scope: !934)
!3892 = !DILocation(line: 132, column: 72, scope: !934)
!3893 = !DILocation(line: 132, column: 82, scope: !934)
!3894 = !DILocation(line: 132, column: 20, scope: !934)
!3895 = !DILocation(line: 132, column: 18, scope: !934)
!3896 = !DILocation(line: 132, column: 5, scope: !934)
!3897 = !DILocation(line: 136, column: 15, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !934, file: !446, line: 136, column: 9)
!3899 = !DILocation(line: 136, column: 9, scope: !3898)
!3900 = !DILocation(line: 136, column: 9, scope: !934)
!3901 = !DILocation(line: 137, column: 8, scope: !3898)
!3902 = !DILocation(line: 139, column: 12, scope: !934)
!3903 = !DILocation(line: 140, column: 1, scope: !934)
!3904 = !DILocation(line: 139, column: 5, scope: !934)
!3905 = !DILocation(line: 434, column: 25, scope: !967)
!3906 = !DILocation(line: 434, column: 43, scope: !967)
!3907 = !DILocation(line: 436, column: 5, scope: !967)
!3908 = !DILocation(line: 436, column: 15, scope: !967)
!3909 = !DILocation(line: 437, column: 5, scope: !967)
!3910 = !DILocation(line: 437, column: 15, scope: !967)
!3911 = !DILocation(line: 438, column: 5, scope: !967)
!3912 = !DILocation(line: 438, column: 18, scope: !967)
!3913 = !DILocation(line: 440, column: 27, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !967, file: !446, line: 440, column: 9)
!3915 = !DILocation(line: 440, column: 10, scope: !3914)
!3916 = !DILocation(line: 440, column: 9, scope: !967)
!3917 = !DILocation(line: 443, column: 9, scope: !3914)
!3918 = !DILocation(line: 444, column: 36, scope: !967)
!3919 = !DILocation(line: 444, column: 51, scope: !967)
!3920 = !DILocation(line: 444, column: 20, scope: !967)
!3921 = !DILocation(line: 444, column: 18, scope: !967)
!3922 = !DILocation(line: 444, column: 5, scope: !967)
!3923 = !DILocation(line: 448, column: 14, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !967, file: !446, line: 448, column: 9)
!3925 = !DILocation(line: 448, column: 9, scope: !3924)
!3926 = !DILocation(line: 448, column: 9, scope: !967)
!3927 = !DILocation(line: 449, column: 8, scope: !3924)
!3928 = !DILocation(line: 451, column: 12, scope: !967)
!3929 = !DILocation(line: 452, column: 1, scope: !967)
!3930 = !DILocation(line: 451, column: 5, scope: !967)
!3931 = !DILocation(line: 63, column: 30, scope: !986)
!3932 = !DILocation(line: 63, column: 48, scope: !986)
!3933 = !DILocation(line: 65, column: 5, scope: !986)
!3934 = !DILocation(line: 65, column: 15, scope: !986)
!3935 = !DILocation(line: 66, column: 5, scope: !986)
!3936 = !DILocation(line: 66, column: 15, scope: !986)
!3937 = !DILocation(line: 67, column: 5, scope: !986)
!3938 = !DILocation(line: 67, column: 9, scope: !986)
!3939 = !DILocation(line: 68, column: 5, scope: !986)
!3940 = !DILocation(line: 68, column: 18, scope: !986)
!3941 = !DILocation(line: 70, column: 27, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !986, file: !446, line: 70, column: 9)
!3943 = !DILocation(line: 70, column: 10, scope: !3942)
!3944 = !DILocation(line: 70, column: 9, scope: !986)
!3945 = !DILocation(line: 73, column: 9, scope: !3942)
!3946 = !DILocation(line: 74, column: 41, scope: !986)
!3947 = !DILocation(line: 74, column: 56, scope: !986)
!3948 = !DILocation(line: 74, column: 63, scope: !986)
!3949 = !DILocation(line: 74, column: 20, scope: !986)
!3950 = !DILocation(line: 74, column: 18, scope: !986)
!3951 = !DILocation(line: 74, column: 5, scope: !986)
!3952 = !DILocation(line: 78, column: 14, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !986, file: !446, line: 78, column: 9)
!3954 = !DILocation(line: 78, column: 9, scope: !3953)
!3955 = !DILocation(line: 78, column: 9, scope: !986)
!3956 = !DILocation(line: 79, column: 8, scope: !3953)
!3957 = !DILocation(line: 81, column: 12, scope: !986)
!3958 = !DILocation(line: 82, column: 1, scope: !986)
!3959 = !DILocation(line: 81, column: 5, scope: !986)
!3960 = !DILocation(line: 161, column: 33, scope: !1016)
!3961 = !DILocation(line: 161, column: 51, scope: !1016)
!3962 = !DILocation(line: 161, column: 67, scope: !1016)
!3963 = !DILocation(line: 163, column: 5, scope: !1016)
!3964 = !DILocation(line: 163, column: 15, scope: !1016)
!3965 = !DILocation(line: 165, column: 5, scope: !1016)
!3966 = !DILocation(line: 165, column: 9, scope: !1016)
!3967 = !DILocation(line: 166, column: 5, scope: !1016)
!3968 = !DILocation(line: 166, column: 15, scope: !1016)
!3969 = !DILocation(line: 168, column: 38, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !1016, file: !446, line: 168, column: 9)
!3971 = !DILocation(line: 168, column: 44, scope: !3970)
!3972 = !DILocation(line: 168, column: 10, scope: !3970)
!3973 = !DILocation(line: 168, column: 9, scope: !1016)
!3974 = !DILocation(line: 171, column: 9, scope: !3970)
!3975 = !DILocation(line: 172, column: 44, scope: !1016)
!3976 = !DILocation(line: 172, column: 52, scope: !1016)
!3977 = !DILocation(line: 172, column: 59, scope: !1016)
!3978 = !DILocation(line: 172, column: 20, scope: !1016)
!3979 = !DILocation(line: 172, column: 18, scope: !1016)
!3980 = !DILocation(line: 172, column: 5, scope: !1016)
!3981 = !DILocation(line: 175, column: 12, scope: !1016)
!3982 = !DILocation(line: 176, column: 1, scope: !1016)
!3983 = !DILocation(line: 175, column: 5, scope: !1016)
!3984 = !DILocation(line: 1184, column: 32, scope: !886)
!3985 = !DILocation(line: 1184, column: 51, scope: !886)
!3986 = !DILocation(line: 1184, column: 70, scope: !886)
!3987 = !DILocation(line: 1189, column: 9, scope: !895)
!3988 = !DILocation(line: 1189, column: 15, scope: !895)
!3989 = !DILocation(line: 1189, column: 19, scope: !895)
!3990 = !DILocation(line: 1189, column: 9, scope: !886)
!3991 = !DILocation(line: 1190, column: 9, scope: !894)
!3992 = !DILocation(line: 1190, column: 24, scope: !894)
!3993 = !DILocation(line: 1190, column: 30, scope: !894)
!3994 = !DILocation(line: 1190, column: 36, scope: !894)
!3995 = !DILocation(line: 1191, column: 9, scope: !894)
!3996 = !DILocation(line: 1191, column: 20, scope: !894)
!3997 = !DILocation(line: 1191, column: 26, scope: !894)
!3998 = !DILocation(line: 1191, column: 32, scope: !894)
!3999 = !DILocation(line: 1193, column: 11, scope: !898)
!4000 = !DILocation(line: 1193, column: 26, scope: !898)
!4001 = !DILocation(line: 1193, column: 41, scope: !898)
!4002 = !DILocation(line: 1193, column: 39, scope: !898)
!4003 = !DILocation(line: 1196, column: 9, scope: !898)
!4004 = !DILocation(line: 1196, column: 24, scope: !4005)
!4005 = !DILexicalBlockFile(scope: !4006, file: !362, discriminator: 2)
!4006 = !DILexicalBlockFile(scope: !898, file: !362, discriminator: 1)
!4007 = !DILocation(line: 1196, column: 28, scope: !898)
!4008 = !DILocation(line: 1197, column: 29, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !898, file: !362, line: 1196, column: 52)
!4010 = !DILocation(line: 1197, column: 36, scope: !4009)
!4011 = !DILocation(line: 1197, column: 21, scope: !4009)
!4012 = !DILocation(line: 1197, column: 19, scope: !4009)
!4013 = !DILocation(line: 1198, column: 17, scope: !4009)
!4014 = !DILocation(line: 1199, column: 17, scope: !4009)
!4015 = !DILocation(line: 1201, column: 25, scope: !898)
!4016 = !DILocation(line: 1201, column: 32, scope: !898)
!4017 = !DILocation(line: 1201, column: 51, scope: !898)
!4018 = !DILocation(line: 1201, column: 37, scope: !898)
!4019 = !DILocation(line: 1201, column: 17, scope: !898)
!4020 = !DILocation(line: 1201, column: 15, scope: !898)
!4021 = !DILocation(line: 1202, column: 30, scope: !898)
!4022 = !DILocation(line: 1202, column: 9, scope: !898)
!4023 = !DILocation(line: 1202, column: 38, scope: !894)
!4024 = !DILocation(line: 1203, column: 5, scope: !895)
!4025 = !DILocation(line: 1203, column: 5, scope: !894)
!4026 = !DILocation(line: 1204, column: 25, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !895, file: !362, line: 1203, column: 12)
!4028 = !DILocation(line: 1204, column: 32, scope: !4027)
!4029 = !DILocation(line: 1204, column: 38, scope: !4027)
!4030 = !DILocation(line: 1204, column: 57, scope: !4027)
!4031 = !DILocation(line: 1204, column: 63, scope: !4027)
!4032 = !DILocation(line: 1204, column: 43, scope: !4027)
!4033 = !DILocation(line: 1204, column: 17, scope: !4027)
!4034 = !DILocation(line: 1204, column: 15, scope: !4027)
!4035 = !DILocation(line: 1206, column: 36, scope: !886)
!4036 = !DILocation(line: 1206, column: 12, scope: !886)
!4037 = !DILocation(line: 1206, column: 5, scope: !886)
!4038 = !DILocation(line: 150, column: 33, scope: !906)
!4039 = !DILocation(line: 150, column: 52, scope: !906)
!4040 = !DILocation(line: 150, column: 63, scope: !906)
!4041 = !DILocation(line: 153, column: 5, scope: !906)
!4042 = !DILocation(line: 153, column: 15, scope: !906)
!4043 = !DILocation(line: 154, column: 5, scope: !906)
!4044 = !DILocation(line: 154, column: 11, scope: !906)
!4045 = !DILocation(line: 154, column: 19, scope: !906)
!4046 = !DILocation(line: 155, column: 5, scope: !906)
!4047 = !DILocation(line: 155, column: 18, scope: !906)
!4048 = !DILocation(line: 156, column: 5, scope: !906)
!4049 = !DILocation(line: 156, column: 9, scope: !906)
!4050 = !DILocation(line: 157, column: 5, scope: !906)
!4051 = !DILocation(line: 157, column: 14, scope: !906)
!4052 = !DILocation(line: 159, column: 17, scope: !4053)
!4053 = distinct !DILexicalBlock(scope: !906, file: !362, line: 159, column: 9)
!4054 = !DILocation(line: 159, column: 24, scope: !4053)
!4055 = !DILocation(line: 159, column: 28, scope: !4053)
!4056 = !DILocation(line: 159, column: 9, scope: !906)
!4057 = !DILocation(line: 160, column: 25, scope: !4058)
!4058 = distinct !DILexicalBlock(scope: !4053, file: !362, line: 159, column: 52)
!4059 = !DILocation(line: 160, column: 9, scope: !4058)
!4060 = !DILocation(line: 162, column: 9, scope: !4058)
!4061 = !DILocation(line: 164, column: 13, scope: !906)
!4062 = !DILocation(line: 164, column: 20, scope: !906)
!4063 = !DILocation(line: 164, column: 11, scope: !906)
!4064 = !DILocation(line: 165, column: 28, scope: !906)
!4065 = !DILocation(line: 165, column: 35, scope: !906)
!4066 = !DILocation(line: 165, column: 14, scope: !906)
!4067 = !DILocation(line: 165, column: 12, scope: !906)
!4068 = !DILocation(line: 167, column: 21, scope: !906)
!4069 = !DILocation(line: 167, column: 30, scope: !906)
!4070 = !DILocation(line: 167, column: 36, scope: !906)
!4071 = !DILocation(line: 167, column: 28, scope: !906)
!4072 = !DILocation(line: 167, column: 42, scope: !906)
!4073 = !DILocation(line: 167, column: 47, scope: !906)
!4074 = !DILocation(line: 167, column: 9, scope: !906)
!4075 = !DILocation(line: 167, column: 19, scope: !906)
!4076 = !{!1219, !1220, i64 32}
!4077 = !DILocation(line: 169, column: 38, scope: !906)
!4078 = !DILocation(line: 169, column: 34, scope: !906)
!4079 = !DILocation(line: 169, column: 21, scope: !906)
!4080 = !DILocation(line: 169, column: 12, scope: !906)
!4081 = !DILocation(line: 170, column: 9, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !906, file: !362, line: 170, column: 9)
!4083 = !DILocation(line: 170, column: 16, scope: !4082)
!4084 = !DILocation(line: 170, column: 9, scope: !906)
!4085 = !DILocation(line: 171, column: 25, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4082, file: !362, line: 170, column: 31)
!4087 = !DILocation(line: 171, column: 9, scope: !4086)
!4088 = !DILocation(line: 173, column: 9, scope: !4086)
!4089 = !DILocation(line: 179, column: 9, scope: !906)
!4090 = !DILocation(line: 179, column: 16, scope: !906)
!4091 = !{!1219, !1136, i64 80}
!4092 = !DILocation(line: 180, column: 9, scope: !906)
!4093 = !DILocation(line: 180, column: 16, scope: !906)
!4094 = !{!1219, !1136, i64 64}
!4095 = !DILocation(line: 181, column: 9, scope: !906)
!4096 = !DILocation(line: 181, column: 15, scope: !906)
!4097 = !{!1219, !1136, i64 72}
!4098 = !DILocation(line: 182, column: 28, scope: !906)
!4099 = !DILocation(line: 182, column: 9, scope: !906)
!4100 = !DILocation(line: 182, column: 18, scope: !906)
!4101 = !{!1219, !1136, i64 24}
!4102 = !DILocation(line: 183, column: 27, scope: !906)
!4103 = !DILocation(line: 183, column: 9, scope: !906)
!4104 = !DILocation(line: 183, column: 17, scope: !906)
!4105 = !{!1219, !1136, i64 0}
!4106 = !DILocation(line: 184, column: 20, scope: !906)
!4107 = !DILocation(line: 184, column: 9, scope: !906)
!4108 = !DILocation(line: 184, column: 18, scope: !906)
!4109 = !{!1219, !1220, i64 8}
!4110 = !DILocation(line: 185, column: 33, scope: !906)
!4111 = !DILocation(line: 185, column: 11, scope: !906)
!4112 = !DILocation(line: 185, column: 9, scope: !906)
!4113 = !DILocation(line: 187, column: 12, scope: !906)
!4114 = !DILocation(line: 191, column: 25, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !906, file: !362, line: 187, column: 17)
!4116 = !DILocation(line: 191, column: 9, scope: !4115)
!4117 = !DILocation(line: 193, column: 9, scope: !4115)
!4118 = !DILocation(line: 195, column: 25, scope: !4115)
!4119 = !DILocation(line: 195, column: 9, scope: !4115)
!4120 = !DILocation(line: 197, column: 9, scope: !4115)
!4121 = !DILocation(line: 199, column: 9, scope: !4115)
!4122 = !DILocation(line: 200, column: 25, scope: !4115)
!4123 = !DILocation(line: 200, column: 9, scope: !4115)
!4124 = !DILocation(line: 201, column: 9, scope: !4115)
!4125 = !DILocation(line: 204, column: 7, scope: !920)
!4126 = !DILocation(line: 204, column: 22, scope: !920)
!4127 = !DILocation(line: 204, column: 37, scope: !920)
!4128 = !DILocation(line: 204, column: 35, scope: !920)
!4129 = !DILocation(line: 205, column: 11, scope: !920)
!4130 = !DILocation(line: 205, column: 9, scope: !920)
!4131 = !DILocation(line: 206, column: 26, scope: !920)
!4132 = !DILocation(line: 206, column: 5, scope: !920)
!4133 = !DILocation(line: 206, column: 34, scope: !906)
!4134 = !DILocation(line: 208, column: 9, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !906, file: !362, line: 208, column: 9)
!4136 = !DILocation(line: 208, column: 13, scope: !4135)
!4137 = !DILocation(line: 208, column: 9, scope: !906)
!4138 = !DILocation(line: 209, column: 25, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4135, file: !362, line: 208, column: 19)
!4140 = !DILocation(line: 209, column: 9, scope: !4139)
!4141 = !DILocation(line: 210, column: 9, scope: !4139)
!4142 = !DILocation(line: 211, column: 9, scope: !4139)
!4143 = !DILocation(line: 214, column: 9, scope: !906)
!4144 = !DILocation(line: 214, column: 8, scope: !906)
!4145 = !DILocation(line: 215, column: 9, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !906, file: !362, line: 215, column: 9)
!4147 = !DILocation(line: 215, column: 13, scope: !4146)
!4148 = !DILocation(line: 215, column: 9, scope: !906)
!4149 = !DILocation(line: 216, column: 55, scope: !4146)
!4150 = !DILocation(line: 217, column: 51, scope: !4146)
!4151 = !{!1219, !1156, i64 40}
!4152 = !DILocation(line: 216, column: 21, scope: !4146)
!4153 = !DILocation(line: 216, column: 19, scope: !4146)
!4154 = !DILocation(line: 216, column: 9, scope: !4146)
!4155 = !DILocation(line: 219, column: 25, scope: !4146)
!4156 = !DILocation(line: 219, column: 9, scope: !4146)
!4157 = !DILocation(line: 215, column: 16, scope: !4146)
!4158 = !DILocation(line: 222, column: 16, scope: !906)
!4159 = !DILocation(line: 222, column: 5, scope: !906)
!4160 = !DILocation(line: 224, column: 12, scope: !906)
!4161 = !DILocation(line: 225, column: 1, scope: !906)
!4162 = !DILocation(line: 224, column: 5, scope: !906)
!4163 = !DILocation(line: 122, column: 22, scope: !921)
!4164 = !DILocation(line: 122, column: 32, scope: !921)
!4165 = !DILocation(line: 122, column: 44, scope: !921)
!4166 = !DILocation(line: 124, column: 9, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !921, file: !362, line: 124, column: 9)
!4168 = !DILocation(line: 124, column: 59, scope: !4167)
!4169 = !DILocation(line: 124, column: 57, scope: !4167)
!4170 = !DILocation(line: 124, column: 15, scope: !4167)
!4171 = !DILocation(line: 124, column: 9, scope: !921)
!4172 = !DILocation(line: 125, column: 9, scope: !4167)
!4173 = !DILocation(line: 128, column: 28, scope: !921)
!4174 = !DILocation(line: 128, column: 36, scope: !921)
!4175 = !DILocation(line: 128, column: 34, scope: !921)
!4176 = !DILocation(line: 128, column: 12, scope: !921)
!4177 = !DILocation(line: 128, column: 5, scope: !921)
!4178 = !DILocation(line: 129, column: 1, scope: !921)
!4179 = !DILocation(line: 132, column: 20, scope: !928)
!4180 = !DILocation(line: 132, column: 31, scope: !928)
!4181 = !DILocation(line: 134, column: 19, scope: !928)
!4182 = !DILocation(line: 134, column: 5, scope: !928)
!4183 = !DILocation(line: 135, column: 1, scope: !928)
!4184 = !DILocation(line: 413, column: 36, scope: !948)
!4185 = !DILocation(line: 413, column: 48, scope: !948)
!4186 = !DILocation(line: 413, column: 59, scope: !948)
!4187 = !DILocation(line: 413, column: 71, scope: !948)
!4188 = !DILocation(line: 413, column: 82, scope: !948)
!4189 = !DILocation(line: 413, column: 96, scope: !948)
!4190 = !DILocation(line: 413, column: 117, scope: !948)
!4191 = !DILocation(line: 416, column: 5, scope: !948)
!4192 = !DILocation(line: 416, column: 17, scope: !948)
!4193 = !DILocation(line: 417, column: 5, scope: !948)
!4194 = !DILocation(line: 417, column: 9, scope: !948)
!4195 = !DILocation(line: 419, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !948, file: !362, line: 419, column: 9)
!4197 = !DILocation(line: 419, column: 16, scope: !4196)
!4198 = !DILocation(line: 419, column: 20, scope: !4196)
!4199 = !DILocation(line: 419, column: 34, scope: !4196)
!4200 = !DILocation(line: 419, column: 45, scope: !4201)
!4201 = !DILexicalBlockFile(scope: !4196, file: !362, discriminator: 1)
!4202 = !DILocation(line: 419, column: 52, scope: !4196)
!4203 = !DILocation(line: 419, column: 56, scope: !4196)
!4204 = !DILocation(line: 419, column: 9, scope: !948)
!4205 = !DILocation(line: 420, column: 25, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4196, file: !362, line: 419, column: 80)
!4207 = !DILocation(line: 420, column: 9, scope: !4206)
!4208 = !DILocation(line: 422, column: 9, scope: !4206)
!4209 = !DILocation(line: 425, column: 12, scope: !948)
!4210 = !DILocation(line: 425, column: 10, scope: !948)
!4211 = !DILocation(line: 426, column: 9, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !948, file: !362, line: 426, column: 9)
!4213 = !DILocation(line: 426, column: 13, scope: !4212)
!4214 = !DILocation(line: 426, column: 9, scope: !948)
!4215 = !DILocation(line: 427, column: 9, scope: !4212)
!4216 = !DILocation(line: 428, column: 5, scope: !948)
!4217 = !DILocation(line: 428, column: 11, scope: !948)
!4218 = !DILocation(line: 428, column: 15, scope: !948)
!4219 = !DILocation(line: 428, column: 22, scope: !948)
!4220 = !{!1218, !1136, i64 96}
!4221 = !DILocation(line: 429, column: 5, scope: !948)
!4222 = !DILocation(line: 429, column: 11, scope: !948)
!4223 = !DILocation(line: 429, column: 15, scope: !948)
!4224 = !DILocation(line: 429, column: 22, scope: !948)
!4225 = !{!1218, !1136, i64 80}
!4226 = !DILocation(line: 430, column: 5, scope: !948)
!4227 = !DILocation(line: 430, column: 11, scope: !948)
!4228 = !DILocation(line: 430, column: 15, scope: !948)
!4229 = !DILocation(line: 430, column: 21, scope: !948)
!4230 = !{!1218, !1136, i64 88}
!4231 = !DILocation(line: 431, column: 5, scope: !948)
!4232 = !DILocation(line: 431, column: 11, scope: !948)
!4233 = !DILocation(line: 431, column: 15, scope: !948)
!4234 = !DILocation(line: 431, column: 23, scope: !948)
!4235 = !DILocation(line: 432, column: 5, scope: !948)
!4236 = !DILocation(line: 432, column: 11, scope: !948)
!4237 = !DILocation(line: 432, column: 15, scope: !948)
!4238 = !DILocation(line: 432, column: 24, scope: !948)
!4239 = !DILocation(line: 433, column: 27, scope: !948)
!4240 = !DILocation(line: 433, column: 33, scope: !948)
!4241 = !DILocation(line: 433, column: 39, scope: !948)
!4242 = !DILocation(line: 433, column: 47, scope: !948)
!4243 = !DILocation(line: 433, column: 56, scope: !948)
!4244 = !DILocation(line: 433, column: 64, scope: !948)
!4245 = !DILocation(line: 433, column: 76, scope: !948)
!4246 = !DILocation(line: 433, column: 11, scope: !948)
!4247 = !DILocation(line: 433, column: 9, scope: !948)
!4248 = !DILocation(line: 434, column: 12, scope: !948)
!4249 = !DILocation(line: 436, column: 9, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !948, file: !362, line: 434, column: 17)
!4251 = !DILocation(line: 436, column: 15, scope: !4250)
!4252 = !DILocation(line: 436, column: 30, scope: !4250)
!4253 = !DILocation(line: 437, column: 13, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4250, file: !362, line: 437, column: 13)
!4255 = !DILocation(line: 437, column: 20, scope: !4254)
!4256 = !DILocation(line: 437, column: 24, scope: !4254)
!4257 = !DILocation(line: 437, column: 13, scope: !4250)
!4258 = !DILocation(line: 438, column: 13, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4254, file: !362, line: 437, column: 39)
!4260 = !DILocation(line: 440, column: 41, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4254, file: !362, line: 439, column: 16)
!4262 = !DILocation(line: 440, column: 47, scope: !4261)
!4263 = !DILocation(line: 441, column: 40, scope: !4261)
!4264 = !DILocation(line: 441, column: 47, scope: !4261)
!4265 = !DILocation(line: 441, column: 66, scope: !4261)
!4266 = !DILocation(line: 441, column: 73, scope: !4261)
!4267 = !DILocation(line: 441, column: 52, scope: !4261)
!4268 = !DILocation(line: 440, column: 19, scope: !4261)
!4269 = !DILocation(line: 440, column: 17, scope: !4261)
!4270 = !DILocation(line: 442, column: 21, scope: !4261)
!4271 = !DILocation(line: 444, column: 17, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4261, file: !362, line: 442, column: 26)
!4273 = !DILocation(line: 446, column: 33, scope: !4272)
!4274 = !DILocation(line: 446, column: 17, scope: !4272)
!4275 = !DILocation(line: 447, column: 17, scope: !4272)
!4276 = !DILocation(line: 449, column: 33, scope: !4272)
!4277 = !DILocation(line: 449, column: 17, scope: !4272)
!4278 = !DILocation(line: 450, column: 17, scope: !4272)
!4279 = !DILocation(line: 454, column: 25, scope: !4250)
!4280 = !DILocation(line: 454, column: 9, scope: !4250)
!4281 = !DILocation(line: 456, column: 9, scope: !4250)
!4282 = !DILocation(line: 458, column: 25, scope: !4250)
!4283 = !DILocation(line: 458, column: 9, scope: !4250)
!4284 = !DILocation(line: 459, column: 9, scope: !4250)
!4285 = !DILocation(line: 461, column: 20, scope: !4250)
!4286 = !DILocation(line: 461, column: 26, scope: !4250)
!4287 = !DILocation(line: 461, column: 31, scope: !4250)
!4288 = !DILocation(line: 461, column: 9, scope: !4250)
!4289 = !DILocation(line: 462, column: 9, scope: !4250)
!4290 = !DILocation(line: 466, column: 5, scope: !948)
!4291 = !DILocation(line: 466, column: 10, scope: !4292)
!4292 = !DILexicalBlockFile(scope: !962, file: !362, discriminator: 1)
!4293 = !DILocation(line: 466, column: 20, scope: !962)
!4294 = !DILocation(line: 466, column: 43, scope: !962)
!4295 = !DILocation(line: 466, column: 30, scope: !962)
!4296 = !DILocation(line: 466, column: 54, scope: !966)
!4297 = !DILocation(line: 466, column: 62, scope: !966)
!4298 = !DILocation(line: 466, column: 54, scope: !962)
!4299 = !DILocation(line: 466, column: 86, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !965, file: !362, discriminator: 2)
!4301 = !DILocation(line: 466, column: 100, scope: !965)
!4302 = !DILocation(line: 466, column: 105, scope: !4303)
!4303 = !DILexicalBlockFile(scope: !964, file: !362, discriminator: 4)
!4304 = !DILocation(line: 466, column: 115, scope: !964)
!4305 = !DILocation(line: 466, column: 145, scope: !964)
!4306 = !DILocation(line: 466, column: 163, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !964, file: !362, line: 466, column: 160)
!4308 = !DILocation(line: 466, column: 180, scope: !4307)
!4309 = !DILocation(line: 466, column: 160, scope: !4307)
!4310 = !DILocation(line: 466, column: 190, scope: !4307)
!4311 = !DILocation(line: 466, column: 160, scope: !964)
!4312 = !DILocation(line: 466, column: 160, scope: !4313)
!4313 = !DILexicalBlockFile(scope: !964, file: !362, discriminator: 5)
!4314 = !DILocation(line: 466, column: 221, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !4307, file: !362, discriminator: 6)
!4316 = !DILocation(line: 466, column: 239, scope: !4307)
!4317 = !DILocation(line: 466, column: 249, scope: !4307)
!4318 = !DILocation(line: 466, column: 274, scope: !4307)
!4319 = !DILocation(line: 466, column: 205, scope: !4307)
!4320 = !DILocation(line: 466, column: 293, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !965, file: !362, discriminator: 7)
!4322 = !DILocation(line: 466, column: 293, scope: !964)
!4323 = !DILocation(line: 466, column: 293, scope: !4324)
!4324 = !DILexicalBlockFile(scope: !964, file: !362, discriminator: 8)
!4325 = !DILocation(line: 466, column: 306, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !965, file: !362, discriminator: 9)
!4327 = !DILocation(line: 466, column: 308, scope: !4328)
!4328 = !DILexicalBlockFile(scope: !4329, file: !362, discriminator: 10)
!4329 = !DILexicalBlockFile(scope: !948, file: !362, discriminator: 3)
!4330 = !DILocation(line: 466, column: 308, scope: !962)
!4331 = !DILocation(line: 466, column: 308, scope: !4332)
!4332 = !DILexicalBlockFile(scope: !962, file: !362, discriminator: 11)
!4333 = !DILocation(line: 466, column: 308, scope: !4334)
!4334 = !DILexicalBlockFile(scope: !962, file: !362, discriminator: 12)
!4335 = !DILocation(line: 468, column: 23, scope: !948)
!4336 = !DILocation(line: 468, column: 12, scope: !948)
!4337 = !DILocation(line: 469, column: 1, scope: !948)
!4338 = !DILocation(line: 468, column: 5, scope: !948)
!4339 = !DILocation(line: 1223, column: 30, scope: !974)
!4340 = !DILocation(line: 1223, column: 49, scope: !974)
!4341 = !DILocation(line: 1223, column: 68, scope: !974)
!4342 = !DILocation(line: 1226, column: 5, scope: !974)
!4343 = !DILocation(line: 1226, column: 9, scope: !974)
!4344 = !DILocation(line: 1230, column: 9, scope: !982)
!4345 = !DILocation(line: 1230, column: 15, scope: !982)
!4346 = !DILocation(line: 1230, column: 19, scope: !982)
!4347 = !DILocation(line: 1230, column: 9, scope: !974)
!4348 = !DILocation(line: 1231, column: 9, scope: !981)
!4349 = !DILocation(line: 1231, column: 24, scope: !981)
!4350 = !DILocation(line: 1231, column: 30, scope: !981)
!4351 = !DILocation(line: 1231, column: 36, scope: !981)
!4352 = !DILocation(line: 1232, column: 9, scope: !981)
!4353 = !DILocation(line: 1232, column: 20, scope: !981)
!4354 = !DILocation(line: 1232, column: 26, scope: !981)
!4355 = !DILocation(line: 1232, column: 32, scope: !981)
!4356 = !DILocation(line: 1234, column: 11, scope: !985)
!4357 = !DILocation(line: 1234, column: 26, scope: !985)
!4358 = !DILocation(line: 1234, column: 41, scope: !985)
!4359 = !DILocation(line: 1234, column: 39, scope: !985)
!4360 = !DILocation(line: 1237, column: 9, scope: !985)
!4361 = !DILocation(line: 1237, column: 24, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4363, file: !362, discriminator: 2)
!4363 = !DILexicalBlockFile(scope: !985, file: !362, discriminator: 1)
!4364 = !DILocation(line: 1237, column: 28, scope: !985)
!4365 = !DILocation(line: 1238, column: 27, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !985, file: !362, line: 1237, column: 52)
!4367 = !DILocation(line: 1238, column: 34, scope: !4366)
!4368 = !DILocation(line: 1238, column: 21, scope: !4366)
!4369 = !DILocation(line: 1238, column: 19, scope: !4366)
!4370 = !DILocation(line: 1239, column: 17, scope: !4366)
!4371 = !DILocation(line: 1240, column: 17, scope: !4366)
!4372 = !DILocation(line: 1242, column: 28, scope: !985)
!4373 = !DILocation(line: 1242, column: 35, scope: !985)
!4374 = !DILocation(line: 1242, column: 54, scope: !985)
!4375 = !DILocation(line: 1242, column: 40, scope: !985)
!4376 = !DILocation(line: 1242, column: 22, scope: !985)
!4377 = !DILocation(line: 1242, column: 20, scope: !985)
!4378 = !DILocation(line: 1243, column: 30, scope: !985)
!4379 = !DILocation(line: 1243, column: 9, scope: !985)
!4380 = !DILocation(line: 1243, column: 38, scope: !981)
!4381 = !DILocation(line: 1244, column: 5, scope: !982)
!4382 = !DILocation(line: 1244, column: 5, scope: !981)
!4383 = !DILocation(line: 1245, column: 28, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !982, file: !362, line: 1244, column: 12)
!4385 = !DILocation(line: 1245, column: 35, scope: !4384)
!4386 = !DILocation(line: 1245, column: 41, scope: !4384)
!4387 = !DILocation(line: 1245, column: 60, scope: !4384)
!4388 = !DILocation(line: 1245, column: 66, scope: !4384)
!4389 = !DILocation(line: 1245, column: 46, scope: !4384)
!4390 = !DILocation(line: 1245, column: 22, scope: !4384)
!4391 = !DILocation(line: 1245, column: 20, scope: !4384)
!4392 = !DILocation(line: 1247, column: 36, scope: !974)
!4393 = !DILocation(line: 1247, column: 12, scope: !974)
!4394 = !DILocation(line: 1248, column: 1, scope: !974)
!4395 = !DILocation(line: 1247, column: 5, scope: !974)
!4396 = !DILocation(line: 283, column: 35, scope: !994)
!4397 = !DILocation(line: 283, column: 54, scope: !994)
!4398 = !DILocation(line: 283, column: 64, scope: !994)
!4399 = !DILocation(line: 283, column: 84, scope: !994)
!4400 = !DILocation(line: 286, column: 5, scope: !994)
!4401 = !DILocation(line: 286, column: 15, scope: !994)
!4402 = !DILocation(line: 287, column: 5, scope: !994)
!4403 = !DILocation(line: 287, column: 11, scope: !994)
!4404 = !DILocation(line: 288, column: 5, scope: !994)
!4405 = !DILocation(line: 288, column: 18, scope: !994)
!4406 = !DILocation(line: 289, column: 5, scope: !994)
!4407 = !DILocation(line: 289, column: 9, scope: !994)
!4408 = !DILocation(line: 290, column: 5, scope: !994)
!4409 = !DILocation(line: 290, column: 18, scope: !994)
!4410 = !DILocation(line: 291, column: 5, scope: !994)
!4411 = !DILocation(line: 291, column: 14, scope: !994)
!4412 = !DILocation(line: 293, column: 17, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !994, file: !362, line: 293, column: 9)
!4414 = !DILocation(line: 293, column: 23, scope: !4413)
!4415 = !DILocation(line: 293, column: 27, scope: !4413)
!4416 = !DILocation(line: 293, column: 9, scope: !994)
!4417 = !DILocation(line: 294, column: 25, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4413, file: !362, line: 293, column: 51)
!4419 = !DILocation(line: 294, column: 9, scope: !4418)
!4420 = !DILocation(line: 296, column: 9, scope: !4418)
!4421 = !DILocation(line: 298, column: 13, scope: !994)
!4422 = !DILocation(line: 298, column: 19, scope: !994)
!4423 = !DILocation(line: 298, column: 11, scope: !994)
!4424 = !DILocation(line: 299, column: 28, scope: !994)
!4425 = !DILocation(line: 299, column: 34, scope: !994)
!4426 = !DILocation(line: 299, column: 14, scope: !994)
!4427 = !DILocation(line: 299, column: 12, scope: !994)
!4428 = !DILocation(line: 301, column: 9, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !994, file: !362, line: 301, column: 9)
!4430 = !DILocation(line: 301, column: 17, scope: !4429)
!4431 = !DILocation(line: 301, column: 9, scope: !994)
!4432 = !DILocation(line: 302, column: 17, scope: !4429)
!4433 = !DILocation(line: 302, column: 9, scope: !4429)
!4434 = !DILocation(line: 304, column: 20, scope: !994)
!4435 = !DILocation(line: 304, column: 9, scope: !994)
!4436 = !DILocation(line: 304, column: 18, scope: !994)
!4437 = !DILocation(line: 305, column: 21, scope: !994)
!4438 = !DILocation(line: 305, column: 9, scope: !994)
!4439 = !DILocation(line: 305, column: 19, scope: !994)
!4440 = !DILocation(line: 307, column: 62, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !994, file: !362, line: 307, column: 9)
!4442 = !DILocation(line: 307, column: 24, scope: !4441)
!4443 = !DILocation(line: 307, column: 22, scope: !4441)
!4444 = !DILocation(line: 307, column: 9, scope: !994)
!4445 = !DILocation(line: 308, column: 9, scope: !4441)
!4446 = !DILocation(line: 310, column: 9, scope: !994)
!4447 = !DILocation(line: 310, column: 16, scope: !994)
!4448 = !DILocation(line: 311, column: 9, scope: !994)
!4449 = !DILocation(line: 311, column: 16, scope: !994)
!4450 = !DILocation(line: 312, column: 9, scope: !994)
!4451 = !DILocation(line: 312, column: 15, scope: !994)
!4452 = !DILocation(line: 313, column: 63, scope: !994)
!4453 = !DILocation(line: 313, column: 45, scope: !994)
!4454 = !DILocation(line: 313, column: 77, scope: !994)
!4455 = !DILocation(line: 313, column: 43, scope: !994)
!4456 = !DILocation(line: 313, column: 9, scope: !994)
!4457 = !DILocation(line: 313, column: 18, scope: !994)
!4458 = !DILocation(line: 314, column: 27, scope: !994)
!4459 = !DILocation(line: 314, column: 9, scope: !994)
!4460 = !DILocation(line: 314, column: 17, scope: !994)
!4461 = !DILocation(line: 315, column: 34, scope: !994)
!4462 = !DILocation(line: 315, column: 11, scope: !994)
!4463 = !DILocation(line: 315, column: 9, scope: !994)
!4464 = !DILocation(line: 317, column: 12, scope: !994)
!4465 = !DILocation(line: 321, column: 25, scope: !4466)
!4466 = distinct !DILexicalBlock(scope: !994, file: !362, line: 317, column: 17)
!4467 = !DILocation(line: 321, column: 9, scope: !4466)
!4468 = !DILocation(line: 323, column: 9, scope: !4466)
!4469 = !DILocation(line: 325, column: 9, scope: !4466)
!4470 = !DILocation(line: 326, column: 25, scope: !4466)
!4471 = !DILocation(line: 326, column: 9, scope: !4466)
!4472 = !DILocation(line: 327, column: 9, scope: !4466)
!4473 = !DILocation(line: 330, column: 5, scope: !994)
!4474 = !DILocation(line: 331, column: 11, scope: !1009)
!4475 = !DILocation(line: 331, column: 26, scope: !1009)
!4476 = !DILocation(line: 331, column: 41, scope: !1009)
!4477 = !DILocation(line: 331, column: 39, scope: !1009)
!4478 = !DILocation(line: 332, column: 13, scope: !1009)
!4479 = !DILocation(line: 332, column: 12, scope: !1009)
!4480 = !DILocation(line: 333, column: 30, scope: !1009)
!4481 = !DILocation(line: 333, column: 9, scope: !1009)
!4482 = !DILocation(line: 333, column: 38, scope: !1010)
!4483 = !DILocation(line: 335, column: 16, scope: !1010)
!4484 = !DILocation(line: 344, column: 21, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4486, file: !362, line: 344, column: 17)
!4486 = distinct !DILexicalBlock(scope: !1010, file: !362, line: 335, column: 21)
!4487 = !DILocation(line: 344, column: 31, scope: !4485)
!4488 = !DILocation(line: 344, column: 17, scope: !4486)
!4489 = !DILocation(line: 345, column: 33, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4485, file: !362, line: 344, column: 36)
!4491 = !DILocation(line: 345, column: 17, scope: !4490)
!4492 = !DILocation(line: 346, column: 17, scope: !4490)
!4493 = !DILocation(line: 347, column: 17, scope: !4490)
!4494 = !DILocation(line: 344, column: 33, scope: !4495)
!4495 = !DILexicalBlockFile(scope: !4485, file: !362, discriminator: 1)
!4496 = !DILocation(line: 352, column: 17, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4486, file: !362, line: 352, column: 17)
!4498 = !DILocation(line: 352, column: 25, scope: !4497)
!4499 = !DILocation(line: 352, column: 17, scope: !4486)
!4500 = !DILocation(line: 353, column: 31, scope: !4497)
!4501 = !DILocation(line: 353, column: 39, scope: !4497)
!4502 = !DILocation(line: 353, column: 29, scope: !4497)
!4503 = !DILocation(line: 353, column: 17, scope: !4497)
!4504 = !DILocation(line: 355, column: 29, scope: !4497)
!4505 = !DILocation(line: 356, column: 46, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4486, file: !362, line: 356, column: 17)
!4507 = !DILocation(line: 356, column: 17, scope: !4506)
!4508 = !DILocation(line: 356, column: 59, scope: !4506)
!4509 = !DILocation(line: 356, column: 17, scope: !4486)
!4510 = !DILocation(line: 357, column: 17, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4506, file: !362, line: 356, column: 64)
!4512 = !DILocation(line: 358, column: 17, scope: !4511)
!4513 = !DILocation(line: 361, column: 69, scope: !4486)
!4514 = !DILocation(line: 361, column: 51, scope: !4486)
!4515 = !DILocation(line: 361, column: 83, scope: !4486)
!4516 = !DILocation(line: 361, column: 49, scope: !4486)
!4517 = !DILocation(line: 361, column: 95, scope: !4486)
!4518 = !DILocation(line: 361, column: 93, scope: !4486)
!4519 = !DILocation(line: 360, column: 17, scope: !4486)
!4520 = !DILocation(line: 360, column: 26, scope: !4486)
!4521 = !DILocation(line: 362, column: 29, scope: !4486)
!4522 = !DILocation(line: 362, column: 17, scope: !4486)
!4523 = !DILocation(line: 362, column: 27, scope: !4486)
!4524 = !DILocation(line: 363, column: 23, scope: !4486)
!4525 = !DILocation(line: 363, column: 21, scope: !4486)
!4526 = !DILocation(line: 364, column: 13, scope: !4486)
!4527 = !DILocation(line: 366, column: 13, scope: !4486)
!4528 = !DILocation(line: 367, column: 29, scope: !4486)
!4529 = !DILocation(line: 367, column: 13, scope: !4486)
!4530 = !DILocation(line: 368, column: 13, scope: !4486)
!4531 = !DILocation(line: 370, column: 5, scope: !1010)
!4532 = !DILocation(line: 370, column: 14, scope: !4533)
!4533 = !DILexicalBlockFile(scope: !994, file: !362, discriminator: 1)
!4534 = !DILocation(line: 370, column: 18, scope: !994)
!4535 = !DILocation(line: 372, column: 11, scope: !994)
!4536 = !DILocation(line: 372, column: 9, scope: !994)
!4537 = !DILocation(line: 373, column: 9, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !994, file: !362, line: 373, column: 9)
!4539 = !DILocation(line: 373, column: 13, scope: !4538)
!4540 = !DILocation(line: 373, column: 9, scope: !994)
!4541 = !DILocation(line: 374, column: 25, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4538, file: !362, line: 373, column: 19)
!4543 = !DILocation(line: 374, column: 9, scope: !4542)
!4544 = !DILocation(line: 375, column: 9, scope: !4542)
!4545 = !DILocation(line: 378, column: 42, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !994, file: !362, line: 378, column: 9)
!4547 = !DILocation(line: 378, column: 9, scope: !4546)
!4548 = !DILocation(line: 378, column: 53, scope: !4546)
!4549 = !DILocation(line: 378, column: 9, scope: !994)
!4550 = !DILocation(line: 379, column: 9, scope: !4546)
!4551 = !DILocation(line: 381, column: 12, scope: !994)
!4552 = !DILocation(line: 381, column: 5, scope: !994)
!4553 = !DILocation(line: 384, column: 5, scope: !994)
!4554 = !DILocation(line: 384, column: 10, scope: !4555)
!4555 = !DILexicalBlockFile(scope: !1012, file: !362, discriminator: 1)
!4556 = !DILocation(line: 384, column: 20, scope: !1012)
!4557 = !DILocation(line: 384, column: 51, scope: !1012)
!4558 = !DILocation(line: 384, column: 68, scope: !1015)
!4559 = !DILocation(line: 384, column: 84, scope: !1015)
!4560 = !DILocation(line: 384, column: 68, scope: !1012)
!4561 = !DILocation(line: 384, column: 99, scope: !4562)
!4562 = !DILexicalBlockFile(scope: !1015, file: !362, discriminator: 2)
!4563 = !DILocation(line: 384, column: 104, scope: !4564)
!4564 = !DILexicalBlockFile(scope: !1014, file: !362, discriminator: 4)
!4565 = !DILocation(line: 384, column: 114, scope: !1014)
!4566 = !DILocation(line: 384, column: 144, scope: !1014)
!4567 = !DILocation(line: 384, column: 170, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !1014, file: !362, line: 384, column: 167)
!4569 = !DILocation(line: 384, column: 187, scope: !4568)
!4570 = !DILocation(line: 384, column: 167, scope: !4568)
!4571 = !DILocation(line: 384, column: 197, scope: !4568)
!4572 = !DILocation(line: 384, column: 167, scope: !1014)
!4573 = !DILocation(line: 384, column: 167, scope: !4574)
!4574 = !DILexicalBlockFile(scope: !1014, file: !362, discriminator: 5)
!4575 = !DILocation(line: 384, column: 228, scope: !4576)
!4576 = !DILexicalBlockFile(scope: !4568, file: !362, discriminator: 6)
!4577 = !DILocation(line: 384, column: 246, scope: !4568)
!4578 = !DILocation(line: 384, column: 256, scope: !4568)
!4579 = !DILocation(line: 384, column: 281, scope: !4568)
!4580 = !DILocation(line: 384, column: 212, scope: !4568)
!4581 = !DILocation(line: 384, column: 300, scope: !4582)
!4582 = !DILexicalBlockFile(scope: !1015, file: !362, discriminator: 7)
!4583 = !DILocation(line: 384, column: 300, scope: !1014)
!4584 = !DILocation(line: 384, column: 300, scope: !4585)
!4585 = !DILexicalBlockFile(scope: !1014, file: !362, discriminator: 8)
!4586 = !DILocation(line: 384, column: 300, scope: !4587)
!4587 = !DILexicalBlockFile(scope: !1014, file: !362, discriminator: 9)
!4588 = !DILocation(line: 384, column: 313, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !4590, file: !362, discriminator: 10)
!4590 = !DILexicalBlockFile(scope: !994, file: !362, discriminator: 3)
!4591 = !DILocation(line: 384, column: 313, scope: !1012)
!4592 = !DILocation(line: 384, column: 313, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !1012, file: !362, discriminator: 11)
!4594 = !DILocation(line: 385, column: 5, scope: !994)
!4595 = !DILocation(line: 386, column: 1, scope: !994)
!4596 = !DILocation(line: 484, column: 38, scope: !1024)
!4597 = !DILocation(line: 484, column: 50, scope: !1024)
!4598 = !DILocation(line: 484, column: 67, scope: !1024)
!4599 = !DILocation(line: 487, column: 5, scope: !1024)
!4600 = !DILocation(line: 487, column: 9, scope: !1024)
!4601 = !DILocation(line: 488, column: 5, scope: !1024)
!4602 = !DILocation(line: 488, column: 17, scope: !1024)
!4603 = !DILocation(line: 490, column: 9, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !1024, file: !362, line: 490, column: 9)
!4605 = !DILocation(line: 490, column: 15, scope: !4604)
!4606 = !DILocation(line: 490, column: 29, scope: !4604)
!4607 = !DILocation(line: 490, column: 36, scope: !4608)
!4608 = !DILexicalBlockFile(scope: !4604, file: !362, discriminator: 1)
!4609 = !DILocation(line: 490, column: 44, scope: !4604)
!4610 = !DILocation(line: 490, column: 53, scope: !4604)
!4611 = !{!1263, !1136, i64 160}
!4612 = !DILocation(line: 490, column: 66, scope: !4604)
!4613 = !DILocation(line: 490, column: 81, scope: !4604)
!4614 = !DILocation(line: 490, column: 86, scope: !4615)
!4615 = !DILexicalBlockFile(scope: !4604, file: !362, discriminator: 2)
!4616 = !DILocation(line: 490, column: 94, scope: !4604)
!4617 = !DILocation(line: 490, column: 103, scope: !4604)
!4618 = !DILocation(line: 490, column: 117, scope: !4604)
!4619 = !{!4620, !1136, i64 0}
!4620 = !{!"", !1136, i64 0, !1136, i64 8}
!4621 = !DILocation(line: 490, column: 130, scope: !4604)
!4622 = !DILocation(line: 490, column: 9, scope: !1024)
!4623 = !DILocation(line: 491, column: 25, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4604, file: !362, line: 490, column: 147)
!4625 = !DILocation(line: 491, column: 9, scope: !4624)
!4626 = !DILocation(line: 493, column: 9, scope: !4624)
!4627 = !DILocation(line: 496, column: 12, scope: !1024)
!4628 = !DILocation(line: 496, column: 10, scope: !1024)
!4629 = !DILocation(line: 497, column: 9, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !1024, file: !362, line: 497, column: 9)
!4631 = !DILocation(line: 497, column: 14, scope: !4630)
!4632 = !DILocation(line: 497, column: 9, scope: !1024)
!4633 = !DILocation(line: 498, column: 9, scope: !4630)
!4634 = !DILocation(line: 499, column: 5, scope: !1024)
!4635 = !DILocation(line: 499, column: 11, scope: !1024)
!4636 = !DILocation(line: 499, column: 15, scope: !1024)
!4637 = !DILocation(line: 499, column: 22, scope: !1024)
!4638 = !DILocation(line: 500, column: 5, scope: !1024)
!4639 = !DILocation(line: 500, column: 11, scope: !1024)
!4640 = !DILocation(line: 500, column: 15, scope: !1024)
!4641 = !DILocation(line: 500, column: 22, scope: !1024)
!4642 = !DILocation(line: 501, column: 5, scope: !1024)
!4643 = !DILocation(line: 501, column: 11, scope: !1024)
!4644 = !DILocation(line: 501, column: 15, scope: !1024)
!4645 = !DILocation(line: 501, column: 21, scope: !1024)
!4646 = !DILocation(line: 502, column: 5, scope: !1024)
!4647 = !DILocation(line: 502, column: 11, scope: !1024)
!4648 = !DILocation(line: 502, column: 15, scope: !1024)
!4649 = !DILocation(line: 502, column: 23, scope: !1024)
!4650 = !DILocation(line: 503, column: 5, scope: !1024)
!4651 = !DILocation(line: 503, column: 11, scope: !1024)
!4652 = !DILocation(line: 503, column: 15, scope: !1024)
!4653 = !DILocation(line: 503, column: 24, scope: !1024)
!4654 = !DILocation(line: 504, column: 9, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !1024, file: !362, line: 504, column: 9)
!4656 = !DILocation(line: 504, column: 15, scope: !4655)
!4657 = !DILocation(line: 504, column: 9, scope: !1024)
!4658 = !DILocation(line: 505, column: 25, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4655, file: !362, line: 504, column: 30)
!4660 = !DILocation(line: 505, column: 34, scope: !4659)
!4661 = !DILocation(line: 505, column: 43, scope: !4659)
!4662 = !DILocation(line: 506, column: 23, scope: !4659)
!4663 = !DILocation(line: 506, column: 9, scope: !4659)
!4664 = !DILocation(line: 506, column: 15, scope: !4659)
!4665 = !DILocation(line: 506, column: 21, scope: !4659)
!4666 = !DILocation(line: 507, column: 5, scope: !4659)
!4667 = !DILocation(line: 508, column: 27, scope: !1024)
!4668 = !DILocation(line: 508, column: 33, scope: !1024)
!4669 = !DILocation(line: 508, column: 40, scope: !1024)
!4670 = !DILocation(line: 508, column: 11, scope: !1024)
!4671 = !DILocation(line: 508, column: 9, scope: !1024)
!4672 = !DILocation(line: 509, column: 12, scope: !1024)
!4673 = !DILocation(line: 511, column: 9, scope: !1035)
!4674 = !DILocation(line: 511, column: 15, scope: !1035)
!4675 = !DILocation(line: 511, column: 30, scope: !1035)
!4676 = !DILocation(line: 512, column: 27, scope: !1035)
!4677 = !DILocation(line: 512, column: 16, scope: !1035)
!4678 = !DILocation(line: 512, column: 9, scope: !1035)
!4679 = !DILocation(line: 514, column: 9, scope: !1035)
!4680 = !DILocation(line: 514, column: 14, scope: !4681)
!4681 = !DILexicalBlockFile(scope: !1034, file: !362, discriminator: 1)
!4682 = !DILocation(line: 514, column: 24, scope: !1034)
!4683 = !DILocation(line: 514, column: 54, scope: !1034)
!4684 = !DILocation(line: 514, column: 41, scope: !1034)
!4685 = !DILocation(line: 514, column: 69, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !1034, file: !362, line: 514, column: 66)
!4687 = !DILocation(line: 514, column: 86, scope: !4686)
!4688 = !DILocation(line: 514, column: 66, scope: !4686)
!4689 = !DILocation(line: 514, column: 96, scope: !4686)
!4690 = !DILocation(line: 514, column: 66, scope: !1034)
!4691 = !DILocation(line: 514, column: 66, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !1034, file: !362, discriminator: 2)
!4693 = !DILocation(line: 514, column: 127, scope: !4694)
!4694 = !DILexicalBlockFile(scope: !4686, file: !362, discriminator: 3)
!4695 = !DILocation(line: 514, column: 145, scope: !4686)
!4696 = !DILocation(line: 514, column: 155, scope: !4686)
!4697 = !DILocation(line: 514, column: 180, scope: !4686)
!4698 = !DILocation(line: 514, column: 111, scope: !4686)
!4699 = !DILocation(line: 514, column: 199, scope: !4700)
!4700 = !DILexicalBlockFile(scope: !1035, file: !362, discriminator: 4)
!4701 = !DILocation(line: 514, column: 199, scope: !1034)
!4702 = !DILocation(line: 514, column: 199, scope: !4703)
!4703 = !DILexicalBlockFile(scope: !1034, file: !362, discriminator: 5)
!4704 = !DILocation(line: 515, column: 25, scope: !1035)
!4705 = !DILocation(line: 515, column: 9, scope: !1035)
!4706 = !DILocation(line: 516, column: 9, scope: !1035)
!4707 = !DILocation(line: 518, column: 9, scope: !1035)
!4708 = !DILocation(line: 518, column: 14, scope: !4709)
!4709 = !DILexicalBlockFile(scope: !1037, file: !362, discriminator: 1)
!4710 = !DILocation(line: 518, column: 24, scope: !1037)
!4711 = !DILocation(line: 518, column: 54, scope: !1037)
!4712 = !DILocation(line: 518, column: 41, scope: !1037)
!4713 = !DILocation(line: 518, column: 69, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !1037, file: !362, line: 518, column: 66)
!4715 = !DILocation(line: 518, column: 86, scope: !4714)
!4716 = !DILocation(line: 518, column: 66, scope: !4714)
!4717 = !DILocation(line: 518, column: 96, scope: !4714)
!4718 = !DILocation(line: 518, column: 66, scope: !1037)
!4719 = !DILocation(line: 518, column: 66, scope: !4720)
!4720 = !DILexicalBlockFile(scope: !1037, file: !362, discriminator: 2)
!4721 = !DILocation(line: 518, column: 127, scope: !4722)
!4722 = !DILexicalBlockFile(scope: !4714, file: !362, discriminator: 3)
!4723 = !DILocation(line: 518, column: 145, scope: !4714)
!4724 = !DILocation(line: 518, column: 155, scope: !4714)
!4725 = !DILocation(line: 518, column: 180, scope: !4714)
!4726 = !DILocation(line: 518, column: 111, scope: !4714)
!4727 = !DILocation(line: 518, column: 199, scope: !4700)
!4728 = !DILocation(line: 518, column: 199, scope: !1037)
!4729 = !DILocation(line: 518, column: 199, scope: !4730)
!4730 = !DILexicalBlockFile(scope: !1037, file: !362, discriminator: 5)
!4731 = !DILocation(line: 519, column: 25, scope: !1035)
!4732 = !DILocation(line: 519, column: 9, scope: !1035)
!4733 = !DILocation(line: 521, column: 9, scope: !1035)
!4734 = !DILocation(line: 523, column: 20, scope: !1035)
!4735 = !DILocation(line: 523, column: 26, scope: !1035)
!4736 = !DILocation(line: 523, column: 31, scope: !1035)
!4737 = !DILocation(line: 523, column: 9, scope: !1035)
!4738 = !DILocation(line: 524, column: 9, scope: !1035)
!4739 = !DILocation(line: 524, column: 14, scope: !4740)
!4740 = !DILexicalBlockFile(scope: !1039, file: !362, discriminator: 1)
!4741 = !DILocation(line: 524, column: 24, scope: !1039)
!4742 = !DILocation(line: 524, column: 54, scope: !1039)
!4743 = !DILocation(line: 524, column: 41, scope: !1039)
!4744 = !DILocation(line: 524, column: 69, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !1039, file: !362, line: 524, column: 66)
!4746 = !DILocation(line: 524, column: 86, scope: !4745)
!4747 = !DILocation(line: 524, column: 66, scope: !4745)
!4748 = !DILocation(line: 524, column: 96, scope: !4745)
!4749 = !DILocation(line: 524, column: 66, scope: !1039)
!4750 = !DILocation(line: 524, column: 66, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !1039, file: !362, discriminator: 2)
!4752 = !DILocation(line: 524, column: 127, scope: !4753)
!4753 = !DILexicalBlockFile(scope: !4745, file: !362, discriminator: 3)
!4754 = !DILocation(line: 524, column: 145, scope: !4745)
!4755 = !DILocation(line: 524, column: 155, scope: !4745)
!4756 = !DILocation(line: 524, column: 180, scope: !4745)
!4757 = !DILocation(line: 524, column: 111, scope: !4745)
!4758 = !DILocation(line: 524, column: 199, scope: !4700)
!4759 = !DILocation(line: 524, column: 199, scope: !1039)
!4760 = !DILocation(line: 524, column: 199, scope: !4761)
!4761 = !DILexicalBlockFile(scope: !1039, file: !362, discriminator: 5)
!4762 = !DILocation(line: 525, column: 9, scope: !1035)
!4763 = !DILocation(line: 527, column: 1, scope: !1024)
