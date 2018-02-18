; ModuleID = './zlibmodule.bc'
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
  %call = call i32 @PyType_Ready(%struct._typeobject* @Comptype)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @Decomptype)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @zlibmodule, i32 1013)
  store %struct._object* %call5, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp6 = icmp eq %struct._object* %0, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call9, %struct._object** @ZlibError, align 8
  %1 = load %struct._object*, %struct._object** @ZlibError, align 8
  %cmp10 = icmp ne %struct._object* %1, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.8
  %2 = load %struct._object*, %struct._object** @ZlibError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %m, align 8
  %5 = load %struct._object*, %struct._object** @ZlibError, align 8
  %call12 = call i32 @PyModule_AddObject(%struct._object* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %5)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.8
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 15)
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i64 8)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 8)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i64 16384)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i64 1)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i64 9)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i64 -1)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 1)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i64 2)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i64 0)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i64 4)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i64 0)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i64 2)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call27 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i64 3)
  %call28 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  store %struct._object* %call28, %struct._object** %ver, align 8
  %20 = load %struct._object*, %struct._object** %ver, align 8
  %cmp29 = icmp ne %struct._object* %20, null
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** %m, align 8
  %22 = load %struct._object*, %struct._object** %ver, align 8
  %call31 = call i32 @PyModule_AddObject(%struct._object* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* %22)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.13
  %call33 = call i8* @zlibVersion()
  %call34 = call %struct._object* @PyUnicode_FromString(i8* %call33)
  store %struct._object* %call34, %struct._object** %ver, align 8
  %23 = load %struct._object*, %struct._object** %ver, align 8
  %cmp35 = icmp ne %struct._object* %23, null
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.32
  %24 = load %struct._object*, %struct._object** %m, align 8
  %25 = load %struct._object*, %struct._object** %ver, align 8
  %call37 = call i32 @PyModule_AddObject(%struct._object* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._object* %25)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.32
  %26 = load %struct._object*, %struct._object** %m, align 8
  %call39 = call i32 @PyModule_AddStringConstant(%struct._object* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  %27 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.7, %if.then.3, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i8* @zlibVersion() #1

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @Comp_dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 5
  %1 = load i32, i32* %is_initialised, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 1
  %call = call i32 @deflateEnd(%struct.z_stream_s* %zst)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  call void @Dealloc(%struct.compobject* %3)
  ret void
}

declare i32 @deflateEnd(%struct.z_stream_s*) #1

; Function Attrs: nounwind uwtable
define internal void @Dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 7
  %1 = load i8*, i8** %lock, align 8
  call void @PyThread_free_lock(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %unused_data, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %unconsumed_tail, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 6
  %23 = load %struct._object*, %struct._object** %zdict, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %32 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %33 = bitcast %struct.compobject* %32 to i8*
  call void @PyObject_Free(i8* %33)
  ret void
}

declare void @PyThread_free_lock(i8*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_compress(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %struct.bufferinfo* %data)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %call1 = call %struct._object* @zlib_Compress_compress_impl(%struct.compobject* %2, %struct.bufferinfo* %data)
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
define internal %struct._object* @zlib_Compress_flush(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %mode = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store i32 4, i32* %mode, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0), i32* %mode)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %2 = load i32, i32* %mode, align 4
  %call1 = call %struct._object* @zlib_Compress_flush_impl(%struct.compobject* %1, i32 %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_copy(%struct.compobject* %self, %struct._object* %_unused_ignored) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %call = call %struct._object* @zlib_Compress_copy_impl(%struct.compobject* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

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
  %_save = alloca %struct._ts*, align 8
  %_save11 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save48 = alloca %struct._ts*, align 8
  %_py_tmp59 = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp90 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 16384, i32* %length, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %input, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len1, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %inplen, align 4
  %7 = load i32, i32* %length, align 4
  %conv2 = zext i32 %7 to i64
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv2)
  store %struct._object* %call, %struct._object** %RetVal, align 8
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %8 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 7
  %9 = load i8*, i8** %lock, align 8
  %call6 = call i32 @PyThread_acquire_lock(i8* %9, i32 1)
  %10 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  %11 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %12 = load i64, i64* %total_out, align 8
  store i64 %12, i64* %start_total_out, align 8
  %13 = load i32, i32* %inplen, align 4
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 1
  store i32 %13, i32* %avail_in, align 4
  %15 = load i8*, i8** %input, align 8
  %16 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %16, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 0
  store i8* %15, i8** %next_in, align 8
  %17 = load i32, i32* %length, align 4
  %18 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 4
  store i32 %17, i32* %avail_out, align 4
  %19 = load %struct._object*, %struct._object** %RetVal, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %20, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %21 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 3
  store i8* %arraydecay, i8** %next_out, align 8
  %call12 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call12, %struct._ts** %_save11, align 8
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 1
  %call14 = call i32 @deflate(%struct.z_stream_s* %zst13, i32 0)
  store i32 %call14, i32* %err, align 4
  %23 = load %struct._ts*, %struct._ts** %_save11, align 8
  call void @PyEval_RestoreThread(%struct._ts* %23)
  br label %while.cond

while.cond:                                       ; preds = %if.end.41, %if.end.4
  %24 = load i32, i32* %err, align 4
  %cmp15 = icmp eq i32 %24, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %25 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %25, i32 0, i32 1
  %avail_out18 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst17, i32 0, i32 4
  %26 = load i32, i32* %avail_out18, align 4
  %cmp19 = icmp eq i32 %26, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %27 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %27, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %28 = load i32, i32* %length, align 4
  %cmp21 = icmp ule i32 %28, 2147483647
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %while.body
  %29 = load i32, i32* %length, align 4
  %shl = shl i32 %29, 1
  store i32 %shl, i32* %new_length, align 4
  br label %if.end.24

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %30 = load i32, i32* %new_length, align 4
  %conv25 = zext i32 %30 to i64
  %call26 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv25)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.41

if.then.29:                                       ; preds = %if.end.24
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %31 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %31, %struct._object** %_py_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp30 = icmp ne %struct._object* %32, null
  br i1 %cmp30, label %if.then.32, label %if.end.39

if.then.32:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %33 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp34 = icmp ne i64 %dec, 0
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.33
  br label %if.end.38

if.else.37:                                       ; preds = %do.body.33
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.38
  br label %if.end.39

if.end.39:                                        ; preds = %do.end, %do.body
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %done

if.end.41:                                        ; preds = %if.end.24
  %40 = load %struct._object*, %struct._object** %RetVal, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyBytesObject*
  %ob_sval42 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %41, i32 0, i32 2
  %arraydecay43 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval42, i32 0, i32 0
  %42 = load i32, i32* %length, align 4
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay43, i64 %idx.ext
  %43 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst44 = getelementptr inbounds %struct.compobject, %struct.compobject* %43, i32 0, i32 1
  %next_out45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst44, i32 0, i32 3
  store i8* %add.ptr, i8** %next_out45, align 8
  %44 = load i32, i32* %length, align 4
  %45 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst46 = getelementptr inbounds %struct.compobject, %struct.compobject* %45, i32 0, i32 1
  %avail_out47 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst46, i32 0, i32 4
  store i32 %44, i32* %avail_out47, align 4
  %46 = load i32, i32* %new_length, align 4
  store i32 %46, i32* %length, align 4
  %call49 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call49, %struct._ts** %_save48, align 8
  %47 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst50 = getelementptr inbounds %struct.compobject, %struct.compobject* %47, i32 0, i32 1
  %call51 = call i32 @deflate(%struct.z_stream_s* %zst50, i32 0)
  store i32 %call51, i32* %err, align 4
  %48 = load %struct._ts*, %struct._ts** %_save48, align 8
  call void @PyEval_RestoreThread(%struct._ts* %48)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %49 = load i32, i32* %err, align 4
  %cmp52 = icmp ne i32 %49, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end.77

land.lhs.true:                                    ; preds = %while.end
  %50 = load i32, i32* %err, align 4
  %cmp54 = icmp ne i32 %50, -5
  br i1 %cmp54, label %if.then.56, label %if.end.77

if.then.56:                                       ; preds = %land.lhs.true
  %51 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst57 = getelementptr inbounds %struct.compobject, %struct.compobject* %51, i32 0, i32 1
  %52 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst57, i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.56
  %53 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %53, %struct._object** %_py_tmp59, align 8
  %54 = load %struct._object*, %struct._object** %_py_tmp59, align 8
  %cmp60 = icmp ne %struct._object* %54, null
  br i1 %cmp60, label %if.then.62, label %if.end.75

if.then.62:                                       ; preds = %do.body.58
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.63

do.body.63:                                       ; preds = %if.then.62
  %55 = load %struct._object*, %struct._object** %_py_tmp59, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp64, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %57, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.63
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %60(%struct._object* %61)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %do.body.58
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %done

if.end.77:                                        ; preds = %land.lhs.true, %while.end
  %62 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst78 = getelementptr inbounds %struct.compobject, %struct.compobject* %62, i32 0, i32 1
  %total_out79 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst78, i32 0, i32 5
  %63 = load i64, i64* %total_out79, align 8
  %64 = load i64, i64* %start_total_out, align 8
  %sub = sub i64 %63, %64
  %call80 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then.83, label %if.end.103

if.then.83:                                       ; preds = %if.end.77
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %65 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %65, %struct._object** %_py_tmp85, align 8
  %66 = load %struct._object*, %struct._object** %_py_tmp85, align 8
  %cmp86 = icmp ne %struct._object* %66, null
  br i1 %cmp86, label %if.then.88, label %if.end.101

if.then.88:                                       ; preds = %do.body.84
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.89

do.body.89:                                       ; preds = %if.then.88
  %67 = load %struct._object*, %struct._object** %_py_tmp85, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp90, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_refcnt91 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt91, align 8
  %dec92 = add i64 %69, -1
  store i64 %dec92, i64* %ob_refcnt91, align 8
  %cmp93 = icmp ne i64 %dec92, 0
  br i1 %cmp93, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.89
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.89
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp90, align 8
  call void %72(%struct._object* %73)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %do.body.84
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %if.end.77
  br label %done

done:                                             ; preds = %if.end.103, %do.end.76, %do.end.40
  %74 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock104 = getelementptr inbounds %struct.compobject, %struct.compobject* %74, i32 0, i32 7
  %75 = load i8*, i8** %lock104, align 8
  call void @PyThread_release_lock(i8* %75)
  %76 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

return:                                           ; preds = %done, %if.then.3, %if.then
  %77 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %77
}

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare i32 @deflate(%struct.z_stream_s*, i32) #1

declare i32 @_PyBytes_Resize(%struct._object**, i64) #1

; Function Attrs: nounwind uwtable
define internal void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %err, i8* %msg) #0 {
entry:
  %err.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  %zmsg = alloca i8*, align 8
  store i32 %err, i32* %err.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  store i8* null, i8** %zmsg, align 8
  %0 = load i32, i32* %err.addr, align 4
  %cmp = icmp eq i32 %0, -6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0), i8** %zmsg, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** %zmsg, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %msg3 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 6
  %2 = load i8*, i8** %msg3, align 8
  store i8* %2, i8** %zmsg, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %3 = load i8*, i8** %zmsg, align 8
  %cmp5 = icmp eq i8* %3, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.end.4
  %4 = load i32, i32* %err.addr, align 4
  switch i32 %4, label %sw.epilog [
    i32 -5, label %sw.bb
    i32 -2, label %sw.bb.7
    i32 -3, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %if.then.6
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i32 0, i32 0), i8** %zmsg, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then.6
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i32 0, i32 0), i8** %zmsg, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.6
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i8** %zmsg, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.6, %sw.bb.8, %sw.bb.7, %sw.bb
  br label %if.end.9

if.end.9:                                         ; preds = %sw.epilog, %if.end.4
  %5 = load i8*, i8** %zmsg, align 8
  %cmp10 = icmp eq i8* %5, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %6 = load %struct._object*, %struct._object** @ZlibError, align 8
  %7 = load i32, i32* %err.addr, align 4
  %8 = load i8*, i8** %msg.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i32 %7, i8* %8)
  br label %if.end.13

if.else:                                          ; preds = %if.end.9
  %9 = load %struct._object*, %struct._object** @ZlibError, align 8
  %10 = load i32, i32* %err.addr, align 4
  %11 = load i8*, i8** %msg.addr, align 8
  %12 = load i8*, i8** %zmsg, align 8
  %call12 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i32 %10, i8* %11, i8* %12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.11
  ret void
}

declare void @PyThread_release_lock(i8*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

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
  %_save = alloca %struct._ts*, align 8
  %_save9 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save46 = alloca %struct._ts*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 16384, i32* %length, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 0)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %length, align 4
  %conv = zext i32 %1 to i64
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv)
  store %struct._object* %call1, %struct._object** %RetVal, align 8
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 7
  %3 = load i8*, i8** %lock, align 8
  %call5 = call i32 @PyThread_acquire_lock(i8* %3, i32 1)
  %4 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %4)
  %5 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %5, i32 0, i32 1
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %6 = load i64, i64* %total_out, align 8
  store i64 %6, i64* %start_total_out, align 8
  %7 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst6 = getelementptr inbounds %struct.compobject, %struct.compobject* %7, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst6, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %8 = load i32, i32* %length, align 4
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 4
  store i32 %8, i32* %avail_out, align 4
  %10 = load %struct._object*, %struct._object** %RetVal, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %11, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %12 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 3
  store i8* %arraydecay, i8** %next_out, align 8
  %call10 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call10, %struct._ts** %_save9, align 8
  %13 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1
  %14 = load i32, i32* %mode.addr, align 4
  %call12 = call i32 @deflate(%struct.z_stream_s* %zst11, i32 %14)
  store i32 %call12, i32* %err, align 4
  %15 = load %struct._ts*, %struct._ts** %_save9, align 8
  call void @PyEval_RestoreThread(%struct._ts* %15)
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end.3
  %16 = load i32, i32* %err, align 4
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst15 = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 1
  %avail_out16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst15, i32 0, i32 4
  %18 = load i32, i32* %avail_out16, align 4
  %cmp17 = icmp eq i32 %18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i32, i32* %length, align 4
  %cmp19 = icmp ule i32 %20, 2147483647
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %while.body
  %21 = load i32, i32* %length, align 4
  %shl = shl i32 %21, 1
  store i32 %shl, i32* %new_length, align 4
  br label %if.end.22

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %22 = load i32, i32* %new_length, align 4
  %conv23 = zext i32 %22 to i64
  %call24 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv23)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.22
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %23 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp28 = icmp ne %struct._object* %24, null
  br i1 %cmp28, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp32 = icmp ne i64 %dec, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.31
  br label %if.end.36

if.else.35:                                       ; preds = %do.body.31
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %do.body
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %error

if.end.39:                                        ; preds = %if.end.22
  %32 = load %struct._object*, %struct._object** %RetVal, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyBytesObject*
  %ob_sval40 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %33, i32 0, i32 2
  %arraydecay41 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval40, i32 0, i32 0
  %34 = load i32, i32* %length, align 4
  %idx.ext = zext i32 %34 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay41, i64 %idx.ext
  %35 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst42 = getelementptr inbounds %struct.compobject, %struct.compobject* %35, i32 0, i32 1
  %next_out43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst42, i32 0, i32 3
  store i8* %add.ptr, i8** %next_out43, align 8
  %36 = load i32, i32* %length, align 4
  %37 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst44 = getelementptr inbounds %struct.compobject, %struct.compobject* %37, i32 0, i32 1
  %avail_out45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst44, i32 0, i32 4
  store i32 %36, i32* %avail_out45, align 4
  %38 = load i32, i32* %new_length, align 4
  store i32 %38, i32* %length, align 4
  %call47 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call47, %struct._ts** %_save46, align 8
  %39 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst48 = getelementptr inbounds %struct.compobject, %struct.compobject* %39, i32 0, i32 1
  %40 = load i32, i32* %mode.addr, align 4
  %call49 = call i32 @deflate(%struct.z_stream_s* %zst48, i32 %40)
  store i32 %call49, i32* %err, align 4
  %41 = load %struct._ts*, %struct._ts** %_save46, align 8
  call void @PyEval_RestoreThread(%struct._ts* %41)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %42 = load i32, i32* %err, align 4
  %cmp50 = icmp eq i32 %42, 1
  br i1 %cmp50, label %land.lhs.true, label %if.else.75

land.lhs.true:                                    ; preds = %while.end
  %43 = load i32, i32* %mode.addr, align 4
  %cmp52 = icmp eq i32 %43, 4
  br i1 %cmp52, label %if.then.54, label %if.else.75

if.then.54:                                       ; preds = %land.lhs.true
  %44 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst55 = getelementptr inbounds %struct.compobject, %struct.compobject* %44, i32 0, i32 1
  %call56 = call i32 @deflateEnd(%struct.z_stream_s* %zst55)
  store i32 %call56, i32* %err, align 4
  %45 = load i32, i32* %err, align 4
  %cmp57 = icmp ne i32 %45, 0
  br i1 %cmp57, label %if.then.59, label %if.else.73

if.then.59:                                       ; preds = %if.then.54
  %46 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst60 = getelementptr inbounds %struct.compobject, %struct.compobject* %46, i32 0, i32 1
  %47 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst60, i32 %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0))
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.59
  %48 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp62, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %50, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.61
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %53(%struct._object* %54)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %error

if.else.73:                                       ; preds = %if.then.54
  %55 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %55, i32 0, i32 5
  store i32 0, i32* %is_initialised, align 4
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.73
  br label %if.end.96

if.else.75:                                       ; preds = %land.lhs.true, %while.end
  %56 = load i32, i32* %err, align 4
  %cmp76 = icmp ne i32 %56, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.95

land.lhs.true.78:                                 ; preds = %if.else.75
  %57 = load i32, i32* %err, align 4
  %cmp79 = icmp ne i32 %57, -5
  br i1 %cmp79, label %if.then.81, label %if.end.95

if.then.81:                                       ; preds = %land.lhs.true.78
  %58 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst82 = getelementptr inbounds %struct.compobject, %struct.compobject* %58, i32 0, i32 1
  %59 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst82, i32 %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0))
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.81
  %60 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp84, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %62, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.83
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.83
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %65(%struct._object* %66)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %error

if.end.95:                                        ; preds = %land.lhs.true.78, %if.else.75
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.74
  %67 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst97 = getelementptr inbounds %struct.compobject, %struct.compobject* %67, i32 0, i32 1
  %total_out98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst97, i32 0, i32 5
  %68 = load i64, i64* %total_out98, align 8
  %69 = load i64, i64* %start_total_out, align 8
  %sub = sub i64 %68, %69
  %call99 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.122

if.then.102:                                      ; preds = %if.end.96
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %70 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %70, %struct._object** %_py_tmp104, align 8
  %71 = load %struct._object*, %struct._object** %_py_tmp104, align 8
  %cmp105 = icmp ne %struct._object* %71, null
  br i1 %cmp105, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %do.body.103
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %72 = load %struct._object*, %struct._object** %_py_tmp104, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp109, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %74, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %77(%struct._object* %78)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %do.body.103
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %if.end.96
  br label %error

error:                                            ; preds = %if.end.122, %do.end.94, %do.end.72, %do.end.38
  %79 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock123 = getelementptr inbounds %struct.compobject, %struct.compobject* %79, i32 0, i32 7
  %80 = load i8*, i8** %lock123, align 8
  call void @PyThread_release_lock(i8* %80)
  %81 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %81, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.then.2, %if.then
  %82 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %82
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Compress_copy_impl(%struct.compobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %retval1 = alloca %struct.compobject*, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct.compobject* null, %struct.compobject** %retval1, align 8
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Comptype)
  store %struct.compobject* %call, %struct.compobject** %retval1, align 8
  %0 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %tobool = icmp ne %struct.compobject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %1, i32 0, i32 7
  %2 = load i8*, i8** %lock, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %2, i32 1)
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  %4 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 1
  %5 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst4 = getelementptr inbounds %struct.compobject, %struct.compobject* %5, i32 0, i32 1
  %call5 = call i32 @deflateCopy(%struct.z_stream_s* %zst, %struct.z_stream_s* %zst4)
  store i32 %call5, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb.6
    i32 -4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  br label %error

sw.bb.7:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0))
  br label %error

sw.default:                                       ; preds = %if.end
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1
  %10 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst8, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i32 0, i32 0))
  br label %error

sw.epilog:                                        ; preds = %sw.bb
  %11 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %unused_data, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %unconsumed_tail, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt9, align 8
  %inc10 = add i64 %16, 1
  store i64 %inc10, i64* %ob_refcnt9, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 6
  %18 = load %struct._object*, %struct._object** %zdict, align 8
  store %struct._object* %18, %struct._object** %_py_xincref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %19, null
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt12, align 8
  %inc13 = add i64 %21, 1
  store i64 %inc13, i64* %ob_refcnt12, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %22 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unused_data16 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %unused_data16, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp17 = icmp ne %struct._object* %24, null
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt20, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt20, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.19
  br label %if.end.23

if.else:                                          ; preds = %do.body.19
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.15
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %32 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unconsumed_tail29 = getelementptr inbounds %struct.compobject, %struct.compobject* %32, i32 0, i32 3
  %33 = load %struct._object*, %struct._object** %unconsumed_tail29, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp28, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp30 = icmp ne %struct._object* %34, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %do.body.27
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp33, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %37, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %40(%struct._object* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %42 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zdict47 = getelementptr inbounds %struct.compobject, %struct.compobject* %42, i32 0, i32 6
  %43 = load %struct._object*, %struct._object** %zdict47, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp46, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  %cmp48 = icmp ne %struct._object* %44, null
  br i1 %cmp48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %do.body.45
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp51, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %47, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %50(%struct._object* %51)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.body.45
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %52 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data63 = getelementptr inbounds %struct.compobject, %struct.compobject* %52, i32 0, i32 2
  %53 = load %struct._object*, %struct._object** %unused_data63, align 8
  %54 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unused_data64 = getelementptr inbounds %struct.compobject, %struct.compobject* %54, i32 0, i32 2
  store %struct._object* %53, %struct._object** %unused_data64, align 8
  %55 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail65 = getelementptr inbounds %struct.compobject, %struct.compobject* %55, i32 0, i32 3
  %56 = load %struct._object*, %struct._object** %unconsumed_tail65, align 8
  %57 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unconsumed_tail66 = getelementptr inbounds %struct.compobject, %struct.compobject* %57, i32 0, i32 3
  store %struct._object* %56, %struct._object** %unconsumed_tail66, align 8
  %58 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict67 = getelementptr inbounds %struct.compobject, %struct.compobject* %58, i32 0, i32 6
  %59 = load %struct._object*, %struct._object** %zdict67, align 8
  %60 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zdict68 = getelementptr inbounds %struct.compobject, %struct.compobject* %60, i32 0, i32 6
  store %struct._object* %59, %struct._object** %zdict68, align 8
  %61 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %61, i32 0, i32 4
  %62 = load i8, i8* %eof, align 1
  %63 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %eof69 = getelementptr inbounds %struct.compobject, %struct.compobject* %63, i32 0, i32 4
  store i8 %62, i8* %eof69, align 1
  %64 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %64, i32 0, i32 5
  store i32 1, i32* %is_initialised, align 4
  %65 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock70 = getelementptr inbounds %struct.compobject, %struct.compobject* %65, i32 0, i32 7
  %66 = load i8*, i8** %lock70, align 8
  call void @PyThread_release_lock(i8* %66)
  %67 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %68 = bitcast %struct.compobject* %67 to %struct._object*
  store %struct._object* %68, %struct._object** %retval
  br label %return

error:                                            ; preds = %sw.default, %sw.bb.7, %sw.bb.6
  %69 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock71 = getelementptr inbounds %struct.compobject, %struct.compobject* %69, i32 0, i32 7
  %70 = load i8*, i8** %lock71, align 8
  call void @PyThread_release_lock(i8* %70)
  br label %do.body.72

do.body.72:                                       ; preds = %error
  %71 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %72 = bitcast %struct.compobject* %71 to %struct._object*
  store %struct._object* %72, %struct._object** %_py_xdecref_tmp73, align 8
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %73, null
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %do.body.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp77, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %76, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %79(%struct._object* %80)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.72
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.88, %do.end.62, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
}

; Function Attrs: nounwind uwtable
define internal %struct.compobject* @newcompobject(%struct._typeobject* %type) #0 {
entry:
  %retval = alloca %struct.compobject*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %self = alloca %struct.compobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %0)
  %1 = bitcast %struct._object* %call to %struct.compobject*
  store %struct.compobject* %1, %struct.compobject** %self, align 8
  %2 = load %struct.compobject*, %struct.compobject** %self, align 8
  %cmp = icmp eq %struct.compobject* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.compobject* null, %struct.compobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.compobject*, %struct.compobject** %self, align 8
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %3, i32 0, i32 4
  store i8 0, i8* %eof, align 1
  %4 = load %struct.compobject*, %struct.compobject** %self, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 5
  store i32 0, i32* %is_initialised, align 4
  %5 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %5, i32 0, i32 6
  store %struct._object* null, %struct._object** %zdict, align 8
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), i64 0)
  %6 = load %struct.compobject*, %struct.compobject** %self, align 8
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %6, i32 0, i32 2
  store %struct._object* %call1, %struct._object** %unused_data, align 8
  %7 = load %struct.compobject*, %struct.compobject** %self, align 8
  %unused_data2 = getelementptr inbounds %struct.compobject, %struct.compobject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %unused_data2, align 8
  %cmp3 = icmp eq %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %9 = load %struct.compobject*, %struct.compobject** %self, align 8
  %10 = bitcast %struct.compobject* %9 to %struct._object*
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct.compobject* null, %struct.compobject** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.40, i32 0, i32 0), i64 0)
  %17 = load %struct.compobject*, %struct.compobject** %self, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 3
  store %struct._object* %call9, %struct._object** %unconsumed_tail, align 8
  %18 = load %struct.compobject*, %struct.compobject** %self, align 8
  %unconsumed_tail10 = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %unconsumed_tail10, align 8
  %cmp11 = icmp eq %struct._object* %19, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %20 = load %struct.compobject*, %struct.compobject** %self, align 8
  %21 = bitcast %struct.compobject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %_py_decref_tmp14, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %23, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %26(%struct._object* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct.compobject* null, %struct.compobject** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.8
  %call25 = call i8* @PyThread_allocate_lock()
  %28 = load %struct.compobject*, %struct.compobject** %self, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %28, i32 0, i32 7
  store i8* %call25, i8** %lock, align 8
  %29 = load %struct.compobject*, %struct.compobject** %self, align 8
  %lock26 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 7
  %30 = load i8*, i8** %lock26, align 8
  %cmp27 = icmp eq i8* %30, null
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  %31 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i32 0, i32 0))
  store %struct.compobject* null, %struct.compobject** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  %32 = load %struct.compobject*, %struct.compobject** %self, align 8
  store %struct.compobject* %32, %struct.compobject** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %do.end.23, %do.end, %if.then
  %33 = load %struct.compobject*, %struct.compobject** %retval
  ret %struct.compobject* %33
}

declare i32 @deflateCopy(%struct.z_stream_s*, %struct.z_stream_s*) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare i8* @PyThread_allocate_lock() #1

; Function Attrs: nounwind uwtable
define internal void @Decomp_dealloc(%struct.compobject* %self) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %0, i32 0, i32 5
  %1 = load i32, i32* %is_initialised, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %2, i32 0, i32 1
  %call = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  call void @Dealloc(%struct.compobject* %3)
  ret void
}

declare i32 @inflateEnd(%struct.z_stream_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_decompress(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %max_length = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %max_length, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), %struct.bufferinfo* %data, i32 (%struct._object*, i8*)* @uint_converter, i32* %max_length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %3 = load i32, i32* %max_length, align 4
  %call1 = call %struct._object* @zlib_Decompress_decompress_impl(%struct.compobject* %2, %struct.bufferinfo* %data, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_flush(%struct.compobject* %self, %struct._object* %args) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %length = alloca i32, align 4
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store i32 16384, i32* %length, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 (%struct._object*, i8*)* @uint_converter, i32* %length)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %2 = load i32, i32* %length, align 4
  %call1 = call %struct._object* @zlib_Decompress_flush_impl(%struct.compobject* %1, i32 %2)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_copy(%struct.compobject* %self, %struct._object* %_unused_ignored) #0 {
entry:
  %self.addr = alloca %struct.compobject*, align 8
  %_unused_ignored.addr = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct._object* %_unused_ignored, %struct._object** %_unused_ignored.addr, align 8
  %0 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %call = call %struct._object* @zlib_Decompress_copy_impl(%struct.compobject* %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal i32 @uint_converter(%struct._object* %obj, i8* %ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %ptr.addr = alloca i8*, align 8
  %val = alloca i64, align 8
  %uval = alloca i64, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %0)
  store i64 %call, i64* %val, align 8
  %1 = load i64, i64* %val, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call2 = call i64 @PyLong_AsUnsignedLong(%struct._object* %2)
  store i64 %call2, i64* %uval, align 8
  %3 = load i64, i64* %uval, align 8
  %cmp3 = icmp eq i64 %3, -1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %if.then
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool6 = icmp ne %struct._object* %call5, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %if.then
  br label %if.end.11

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i64, i64* %val, align 8
  %cmp8 = icmp slt i64 %4, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.else
  %6 = load i64, i64* %val, align 8
  store i64 %6, i64* %uval, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %7 = load i64, i64* %uval, align 8
  %cmp12 = icmp ugt i64 %7, 4294967295
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %8 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %9 = load i64, i64* %uval, align 8
  %conv = trunc i64 %9 to i32
  %10 = load i8*, i8** %ptr.addr, align 8
  %11 = bitcast i8* %10 to i32*
  store i32 %conv, i32* %11, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.9, %if.then.7
  %12 = load i32, i32* %retval
  ret i32 %12
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
  %_save = alloca %struct._ts*, align 8
  %_save15 = alloca %struct._ts*, align 8
  %zdict_buf = alloca %struct.bufferinfo, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %_save87 = alloca %struct._ts*, align 8
  %_py_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp121 = alloca %struct._object*, align 8
  %_save141 = alloca %struct._ts*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp174 = alloca %struct._object*, align 8
  %_py_tmp195 = alloca %struct._object*, align 8
  %_py_decref_tmp200 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %max_length, i32* %max_length.addr, align 4
  store i32 16384, i32* %length, align 4
  store %struct._object* null, %struct._object** %RetVal, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %max_length.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %length, align 4
  %5 = load i32, i32* %max_length.addr, align 4
  %cmp1 = icmp ugt i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %max_length.addr, align 4
  store i32 %6, i32* %length, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %7 = load i32, i32* %length, align 4
  %conv = zext i32 %7 to i64
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv)
  store %struct._object* %call, %struct._object** %RetVal, align 8
  %tobool4 = icmp ne %struct._object* %call, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %call7 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call7, %struct._ts** %_save, align 8
  %8 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 7
  %9 = load i8*, i8** %lock, align 8
  %call8 = call i32 @PyThread_acquire_lock(i8* %9, i32 1)
  %10 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  %11 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %12 = load i64, i64* %total_out, align 8
  store i64 %12, i64* %start_total_out, align 8
  %13 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len9 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %13, i32 0, i32 2
  %14 = load i64, i64* %len9, align 8
  %conv10 = trunc i64 %14 to i32
  %15 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %15, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst11, i32 0, i32 1
  store i32 %conv10, i32* %avail_in, align 4
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf, align 8
  %18 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst12 = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst12, i32 0, i32 0
  store i8* %17, i8** %next_in, align 8
  %19 = load i32, i32* %length, align 4
  %20 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst13, i32 0, i32 4
  store i32 %19, i32* %avail_out, align 4
  %21 = load %struct._object*, %struct._object** %RetVal, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %23 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst14 = getelementptr inbounds %struct.compobject, %struct.compobject* %23, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst14, i32 0, i32 3
  store i8* %arraydecay, i8** %next_out, align 8
  %call16 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call16, %struct._ts** %_save15, align 8
  %24 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %24, i32 0, i32 1
  %call18 = call i32 @inflate(%struct.z_stream_s* %zst17, i32 2)
  store i32 %call18, i32* %err, align 4
  %25 = load %struct._ts*, %struct._ts** %_save15, align 8
  call void @PyEval_RestoreThread(%struct._ts* %25)
  %26 = load i32, i32* %err, align 4
  %cmp19 = icmp eq i32 %26, 2
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.91

land.lhs.true.21:                                 ; preds = %if.end.6
  %27 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %27, i32 0, i32 6
  %28 = load %struct._object*, %struct._object** %zdict, align 8
  %cmp22 = icmp ne %struct._object* %28, null
  br i1 %cmp22, label %if.then.24, label %if.end.91

if.then.24:                                       ; preds = %land.lhs.true.21
  %29 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict25 = getelementptr inbounds %struct.compobject, %struct.compobject* %29, i32 0, i32 6
  %30 = load %struct._object*, %struct._object** %zdict25, align 8
  %call26 = call i32 @PyObject_GetBuffer(%struct._object* %30, %struct.bufferinfo* %zdict_buf, i32 0)
  %cmp27 = icmp eq i32 %call26, -1
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.then.24
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %31 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body
  br label %if.end.33

if.else:                                          ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.33
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %error

if.end.34:                                        ; preds = %if.then.24
  %len35 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 2
  %38 = load i64, i64* %len35, align 8
  %cmp36 = icmp ugt i64 %38, 4294967295
  br i1 %cmp36, label %if.then.38, label %if.end.57

if.then.38:                                       ; preds = %if.end.34
  %39 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %39, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i32 0, i32 0))
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict_buf)
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %40 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %40, %struct._object** %_py_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp40 = icmp ne %struct._object* %41, null
  br i1 %cmp40, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.body.39
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %42 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp44, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %44, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.43
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %47(%struct._object* %48)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.39
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %error

if.end.57:                                        ; preds = %if.end.34
  %49 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst58 = getelementptr inbounds %struct.compobject, %struct.compobject* %49, i32 0, i32 1
  %buf59 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 0
  %50 = load i8*, i8** %buf59, align 8
  %len60 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict_buf, i32 0, i32 2
  %51 = load i64, i64* %len60, align 8
  %conv61 = trunc i64 %51 to i32
  %call62 = call i32 @inflateSetDictionary(%struct.z_stream_s* %zst58, i8* %50, i32 %conv61)
  store i32 %call62, i32* %err, align 4
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict_buf)
  %52 = load i32, i32* %err, align 4
  %cmp63 = icmp ne i32 %52, 0
  br i1 %cmp63, label %if.then.65, label %if.end.86

if.then.65:                                       ; preds = %if.end.57
  %53 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst66 = getelementptr inbounds %struct.compobject, %struct.compobject* %53, i32 0, i32 1
  %54 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst66, i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0))
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.65
  %55 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %55, %struct._object** %_py_tmp68, align 8
  %56 = load %struct._object*, %struct._object** %_py_tmp68, align 8
  %cmp69 = icmp ne %struct._object* %56, null
  br i1 %cmp69, label %if.then.71, label %if.end.84

if.then.71:                                       ; preds = %do.body.67
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.71
  %57 = load %struct._object*, %struct._object** %_py_tmp68, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp73, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %59, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.72
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.72
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %62(%struct._object* %63)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.67
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %error

if.end.86:                                        ; preds = %if.end.57
  %call88 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call88, %struct._ts** %_save87, align 8
  %64 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst89 = getelementptr inbounds %struct.compobject, %struct.compobject* %64, i32 0, i32 1
  %call90 = call i32 @inflate(%struct.z_stream_s* %zst89, i32 2)
  store i32 %call90, i32* %err, align 4
  %65 = load %struct._ts*, %struct._ts** %_save87, align 8
  call void @PyEval_RestoreThread(%struct._ts* %65)
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.86, %land.lhs.true.21, %if.end.6
  br label %while.cond

while.cond:                                       ; preds = %if.end.134, %if.end.91
  %66 = load i32, i32* %err, align 4
  %cmp92 = icmp eq i32 %66, 0
  br i1 %cmp92, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %67 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst94 = getelementptr inbounds %struct.compobject, %struct.compobject* %67, i32 0, i32 1
  %avail_out95 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst94, i32 0, i32 4
  %68 = load i32, i32* %avail_out95, align 4
  %cmp96 = icmp eq i32 %68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %69 = phi i1 [ false, %while.cond ], [ %cmp96, %land.rhs ]
  br i1 %69, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %70 = load i32, i32* %max_length.addr, align 4
  %tobool98 = icmp ne i32 %70, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.103

land.lhs.true.99:                                 ; preds = %while.body
  %71 = load i32, i32* %length, align 4
  %72 = load i32, i32* %max_length.addr, align 4
  %cmp100 = icmp uge i32 %71, %72
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %land.lhs.true.99
  br label %while.end

if.end.103:                                       ; preds = %land.lhs.true.99, %while.body
  %73 = load i32, i32* %length, align 4
  store i32 %73, i32* %old_length, align 4
  %74 = load i32, i32* %length, align 4
  %shl = shl i32 %74, 1
  store i32 %shl, i32* %length, align 4
  %75 = load i32, i32* %max_length.addr, align 4
  %tobool104 = icmp ne i32 %75, 0
  br i1 %tobool104, label %land.lhs.true.105, label %if.end.109

land.lhs.true.105:                                ; preds = %if.end.103
  %76 = load i32, i32* %length, align 4
  %77 = load i32, i32* %max_length.addr, align 4
  %cmp106 = icmp ugt i32 %76, %77
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %land.lhs.true.105
  %78 = load i32, i32* %max_length.addr, align 4
  store i32 %78, i32* %length, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %land.lhs.true.105, %if.end.103
  %79 = load i32, i32* %length, align 4
  %conv110 = zext i32 %79 to i64
  %call111 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %conv110)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %if.then.114, label %if.end.134

if.then.114:                                      ; preds = %if.end.109
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.114
  %80 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %80, %struct._object** %_py_tmp116, align 8
  %81 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  %cmp117 = icmp ne %struct._object* %81, null
  br i1 %cmp117, label %if.then.119, label %if.end.132

if.then.119:                                      ; preds = %do.body.115
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.120

do.body.120:                                      ; preds = %if.then.119
  %82 = load %struct._object*, %struct._object** %_py_tmp116, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp121, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_refcnt122 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt122, align 8
  %dec123 = add i64 %84, -1
  store i64 %dec123, i64* %ob_refcnt122, align 8
  %cmp124 = icmp ne i64 %dec123, 0
  br i1 %cmp124, label %if.then.126, label %if.else.127

if.then.126:                                      ; preds = %do.body.120
  br label %if.end.130

if.else.127:                                      ; preds = %do.body.120
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  %ob_type128 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type128, align 8
  %tp_dealloc129 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc129, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp121, align 8
  call void %87(%struct._object* %88)
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.127, %if.then.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %do.body.115
  br label %do.end.133

do.end.133:                                       ; preds = %if.end.132
  br label %error

if.end.134:                                       ; preds = %if.end.109
  %89 = load %struct._object*, %struct._object** %RetVal, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyBytesObject*
  %ob_sval135 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %90, i32 0, i32 2
  %arraydecay136 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval135, i32 0, i32 0
  %91 = load i32, i32* %old_length, align 4
  %idx.ext = zext i32 %91 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay136, i64 %idx.ext
  %92 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst137 = getelementptr inbounds %struct.compobject, %struct.compobject* %92, i32 0, i32 1
  %next_out138 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst137, i32 0, i32 3
  store i8* %add.ptr, i8** %next_out138, align 8
  %93 = load i32, i32* %length, align 4
  %94 = load i32, i32* %old_length, align 4
  %sub = sub i32 %93, %94
  %95 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst139 = getelementptr inbounds %struct.compobject, %struct.compobject* %95, i32 0, i32 1
  %avail_out140 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst139, i32 0, i32 4
  store i32 %sub, i32* %avail_out140, align 4
  %call142 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call142, %struct._ts** %_save141, align 8
  %96 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst143 = getelementptr inbounds %struct.compobject, %struct.compobject* %96, i32 0, i32 1
  %call144 = call i32 @inflate(%struct.z_stream_s* %zst143, i32 2)
  store i32 %call144, i32* %err, align 4
  %97 = load %struct._ts*, %struct._ts** %_save141, align 8
  call void @PyEval_RestoreThread(%struct._ts* %97)
  br label %while.cond

while.end:                                        ; preds = %if.then.102, %land.end
  %98 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %99 = load i32, i32* %err, align 4
  %call145 = call i32 @save_unconsumed_input(%struct.compobject* %98, i32 %99)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.then.148, label %if.end.161

if.then.148:                                      ; preds = %while.end
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %100 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp150, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %102, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.155, label %if.else.156

if.then.155:                                      ; preds = %do.body.149
  br label %if.end.159

if.else.156:                                      ; preds = %do.body.149
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type157 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type157, align 8
  %tp_dealloc158 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc158, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %105(%struct._object* %106)
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.156, %if.then.155
  br label %do.end.160

do.end.160:                                       ; preds = %if.end.159
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %error

if.end.161:                                       ; preds = %while.end
  %107 = load i32, i32* %err, align 4
  %cmp162 = icmp eq i32 %107, 1
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.end.161
  %108 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %108, i32 0, i32 4
  store i8 1, i8* %eof, align 1
  br label %if.end.186

if.else.165:                                      ; preds = %if.end.161
  %109 = load i32, i32* %err, align 4
  %cmp166 = icmp ne i32 %109, 0
  br i1 %cmp166, label %land.lhs.true.168, label %if.end.185

land.lhs.true.168:                                ; preds = %if.else.165
  %110 = load i32, i32* %err, align 4
  %cmp169 = icmp ne i32 %110, -5
  br i1 %cmp169, label %if.then.171, label %if.end.185

if.then.171:                                      ; preds = %land.lhs.true.168
  %111 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst172 = getelementptr inbounds %struct.compobject, %struct.compobject* %111, i32 0, i32 1
  %112 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst172, i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0))
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.171
  %113 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %113, %struct._object** %_py_decref_tmp174, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  %ob_refcnt175 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt175, align 8
  %dec176 = add i64 %115, -1
  store i64 %dec176, i64* %ob_refcnt175, align 8
  %cmp177 = icmp ne i64 %dec176, 0
  br i1 %cmp177, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %do.body.173
  br label %if.end.183

if.else.180:                                      ; preds = %do.body.173
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  %ob_type181 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 1
  %117 = load %struct._typeobject*, %struct._typeobject** %ob_type181, align 8
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %117, i32 0, i32 4
  %118 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp174, align 8
  call void %118(%struct._object* %119)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.180, %if.then.179
  br label %do.end.184

do.end.184:                                       ; preds = %if.end.183
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %error

if.end.185:                                       ; preds = %land.lhs.true.168, %if.else.165
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.then.164
  %120 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst187 = getelementptr inbounds %struct.compobject, %struct.compobject* %120, i32 0, i32 1
  %total_out188 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst187, i32 0, i32 5
  %121 = load i64, i64* %total_out188, align 8
  %122 = load i64, i64* %start_total_out, align 8
  %sub189 = sub i64 %121, %122
  %call190 = call i32 @_PyBytes_Resize(%struct._object** %RetVal, i64 %sub189)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %if.then.193, label %if.end.213

if.then.193:                                      ; preds = %if.end.186
  br label %do.body.194

do.body.194:                                      ; preds = %if.then.193
  %123 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %123, %struct._object** %_py_tmp195, align 8
  %124 = load %struct._object*, %struct._object** %_py_tmp195, align 8
  %cmp196 = icmp ne %struct._object* %124, null
  br i1 %cmp196, label %if.then.198, label %if.end.211

if.then.198:                                      ; preds = %do.body.194
  store %struct._object* null, %struct._object** %RetVal, align 8
  br label %do.body.199

do.body.199:                                      ; preds = %if.then.198
  %125 = load %struct._object*, %struct._object** %_py_tmp195, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp200, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_refcnt201 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt201, align 8
  %dec202 = add i64 %127, -1
  store i64 %dec202, i64* %ob_refcnt201, align 8
  %cmp203 = icmp ne i64 %dec202, 0
  br i1 %cmp203, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %do.body.199
  br label %if.end.209

if.else.206:                                      ; preds = %do.body.199
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_type207 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type207, align 8
  %tp_dealloc208 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc208, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  call void %130(%struct._object* %131)
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.206, %if.then.205
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  br label %if.end.211

if.end.211:                                       ; preds = %do.end.210, %do.body.194
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %if.end.213

if.end.213:                                       ; preds = %do.end.212, %if.end.186
  br label %error

error:                                            ; preds = %if.end.213, %do.end.184, %do.end.160, %do.end.133, %do.end.85, %do.end.56, %do.end
  %132 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock214 = getelementptr inbounds %struct.compobject, %struct.compobject* %132, i32 0, i32 7
  %133 = load i8*, i8** %lock214, align 8
  call void @PyThread_release_lock(i8* %133)
  %134 = load %struct._object*, %struct._object** %RetVal, align 8
  store %struct._object* %134, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.then.5, %if.then
  %135 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %135
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare i64 @PyLong_AsUnsignedLong(%struct._object*) #1

declare i32 @inflate(%struct.z_stream_s*, i32) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare i32 @inflateSetDictionary(%struct.z_stream_s*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @save_unconsumed_input(%struct.compobject* %self, i32 %err) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.compobject*, align 8
  %err.addr = alloca i32, align 4
  %old_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %new_data = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %new_data41 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store i32 %err, i32* %err.addr, align 4
  %0 = load i32, i32* %err.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %1, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1
  %2 = load i32, i32* %avail_in, align 4
  %cmp1 = icmp ugt i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.33

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %unused_data, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %old_size, align 8
  %7 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst3 = getelementptr inbounds %struct.compobject, %struct.compobject* %7, i32 0, i32 1
  %avail_in4 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst3, i32 0, i32 1
  %8 = load i32, i32* %avail_in4, align 4
  %conv = zext i32 %8 to i64
  %9 = load i64, i64* %old_size, align 8
  %sub = sub i64 4294967295, %9
  %cmp5 = icmp ugt i64 %conv, %sub
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then.2
  %call = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.2
  %10 = load i64, i64* %old_size, align 8
  %11 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1
  %avail_in9 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 1
  %12 = load i32, i32* %avail_in9, align 4
  %conv10 = zext i32 %12 to i64
  %add = add i64 %10, %conv10
  store i64 %add, i64* %new_size, align 8
  %13 = load i64, i64* %new_size, align 8
  %call11 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %13)
  store %struct._object* %call11, %struct._object** %new_data, align 8
  %14 = load %struct._object*, %struct._object** %new_data, align 8
  %cmp12 = icmp eq %struct._object* %14, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %new_data, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data16 = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %unused_data16, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyBytesObject*
  %ob_sval17 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %19, i32 0, i32 2
  %arraydecay18 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval17, i32 0, i32 0
  %20 = load i64, i64* %old_size, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arraydecay, i8* %arraydecay18, i64 %20, i32 1, i1 false)
  %21 = load %struct._object*, %struct._object** %new_data, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyBytesObject*
  %ob_sval19 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %22, i32 0, i32 2
  %arraydecay20 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval19, i32 0, i32 0
  %23 = load i64, i64* %old_size, align 8
  %add.ptr = getelementptr i8, i8* %arraydecay20, i64 %23
  %24 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst21 = getelementptr inbounds %struct.compobject, %struct.compobject* %24, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst21, i32 0, i32 0
  %25 = load i8*, i8** %next_in, align 8
  %26 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst22 = getelementptr inbounds %struct.compobject, %struct.compobject* %26, i32 0, i32 1
  %avail_in23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst22, i32 0, i32 1
  %27 = load i32, i32* %avail_in23, align 4
  %conv24 = zext i32 %27 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %25, i64 %conv24, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %28 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data25 = getelementptr inbounds %struct.compobject, %struct.compobject* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %unused_data25, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %36 = load %struct._object*, %struct._object** %new_data, align 8
  %37 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data30 = getelementptr inbounds %struct.compobject, %struct.compobject* %37, i32 0, i32 2
  store %struct._object* %36, %struct._object** %unused_data30, align 8
  %38 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst31 = getelementptr inbounds %struct.compobject, %struct.compobject* %38, i32 0, i32 1
  %avail_in32 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst31, i32 0, i32 1
  store i32 0, i32* %avail_in32, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  %39 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst35 = getelementptr inbounds %struct.compobject, %struct.compobject* %39, i32 0, i32 1
  %avail_in36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst35, i32 0, i32 1
  %40 = load i32, i32* %avail_in36, align 4
  %cmp37 = icmp ugt i32 %40, 0
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.34
  %41 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %41, i32 0, i32 3
  %42 = load %struct._object*, %struct._object** %unconsumed_tail, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyVarObject*
  %ob_size39 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %43, i32 0, i32 1
  %44 = load i64, i64* %ob_size39, align 8
  %tobool = icmp ne i64 %44, 0
  br i1 %tobool, label %if.then.40, label %if.end.66

if.then.40:                                       ; preds = %lor.lhs.false, %if.end.34
  %45 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst42 = getelementptr inbounds %struct.compobject, %struct.compobject* %45, i32 0, i32 1
  %next_in43 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst42, i32 0, i32 0
  %46 = load i8*, i8** %next_in43, align 8
  %47 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst44 = getelementptr inbounds %struct.compobject, %struct.compobject* %47, i32 0, i32 1
  %avail_in45 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst44, i32 0, i32 1
  %48 = load i32, i32* %avail_in45, align 4
  %conv46 = zext i32 %48 to i64
  %call47 = call %struct._object* @PyBytes_FromStringAndSize(i8* %46, i64 %conv46)
  store %struct._object* %call47, %struct._object** %new_data41, align 8
  %49 = load %struct._object*, %struct._object** %new_data41, align 8
  %cmp48 = icmp eq %struct._object* %49, null
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.then.40
  store i32 -1, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.40
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %50 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail54 = getelementptr inbounds %struct.compobject, %struct.compobject* %50, i32 0, i32 3
  %51 = load %struct._object*, %struct._object** %unconsumed_tail54, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp53, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %53, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.52
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.52
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %56(%struct._object* %57)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  %58 = load %struct._object*, %struct._object** %new_data41, align 8
  %59 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail65 = getelementptr inbounds %struct.compobject, %struct.compobject* %59, i32 0, i32 3
  store %struct._object* %58, %struct._object** %unconsumed_tail65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.64, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.66, %if.then.50, %if.then.14, %if.then.7
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

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
  %_save = alloca %struct._ts*, align 8
  %_save14 = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_save53 = alloca %struct._ts*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %length.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %3 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %3, i32 0, i32 7
  %4 = load i8*, i8** %lock, align 8
  %call5 = call i32 @PyThread_acquire_lock(i8* %4, i32 1)
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  %6 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %unconsumed_tail, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size, align 8
  store i64 %9, i64* %size, align 8
  %10 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %10, i32 0, i32 1
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %11 = load i64, i64* %total_out, align 8
  store i64 %11, i64* %start_total_out, align 8
  %12 = load i64, i64* %size, align 8
  %conv6 = trunc i64 %12 to i32
  %13 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 1
  store i32 %conv6, i32* %avail_in, align 4
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail8 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %unconsumed_tail8, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %16, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 0
  store i8* %arraydecay, i8** %next_in, align 8
  %18 = load i32, i32* %length.addr, align 4
  %19 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %19, i32 0, i32 1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 4
  store i32 %18, i32* %avail_out, align 4
  %20 = load %struct._object*, %struct._object** %retval1, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyBytesObject*
  %ob_sval11 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %21, i32 0, i32 2
  %arraydecay12 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval11, i32 0, i32 0
  %22 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst13 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 1
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst13, i32 0, i32 3
  store i8* %arraydecay12, i8** %next_out, align 8
  %call15 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call15, %struct._ts** %_save14, align 8
  %23 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst16 = getelementptr inbounds %struct.compobject, %struct.compobject* %23, i32 0, i32 1
  %call17 = call i32 @inflate(%struct.z_stream_s* %zst16, i32 4)
  store i32 %call17, i32* %err, align 4
  %24 = load %struct._ts*, %struct._ts** %_save14, align 8
  call void @PyEval_RestoreThread(%struct._ts* %24)
  br label %while.cond

while.cond:                                       ; preds = %if.end.46, %if.end.3
  %25 = load i32, i32* %err, align 4
  %cmp18 = icmp eq i32 %25, 0
  br i1 %cmp18, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %26 = load i32, i32* %err, align 4
  %cmp20 = icmp eq i32 %26, -5
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %while.cond
  %27 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst22 = getelementptr inbounds %struct.compobject, %struct.compobject* %27, i32 0, i32 1
  %avail_out23 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst22, i32 0, i32 4
  %28 = load i32, i32* %avail_out23, align 4
  %cmp24 = icmp eq i32 %28, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %29 = phi i1 [ false, %lor.lhs.false ], [ %cmp24, %land.rhs ]
  br i1 %29, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %30 = load i32, i32* %length.addr, align 4
  %cmp26 = icmp ule i32 %30, 2147483647
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %while.body
  %31 = load i32, i32* %length.addr, align 4
  %shl = shl i32 %31, 1
  store i32 %shl, i32* %new_length, align 4
  br label %if.end.29

if.else:                                          ; preds = %while.body
  store i32 -1, i32* %new_length, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  %32 = load i32, i32* %new_length, align 4
  %conv30 = zext i32 %32 to i64
  %call31 = call i32 @_PyBytes_Resize(%struct._object** %retval1, i64 %conv30)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.29
  br label %do.body

do.body:                                          ; preds = %if.then.34
  %33 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %33, %struct._object** %_py_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp35 = icmp ne %struct._object* %34, null
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %retval1, align 8
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp39 = icmp ne i64 %dec, 0
  br i1 %cmp39, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.38
  br label %if.end.43

if.else.42:                                       ; preds = %do.body.38
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %do.body
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %error

if.end.46:                                        ; preds = %if.end.29
  %42 = load %struct._object*, %struct._object** %retval1, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyBytesObject*
  %ob_sval47 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %43, i32 0, i32 2
  %arraydecay48 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval47, i32 0, i32 0
  %44 = load i32, i32* %length.addr, align 4
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay48, i64 %idx.ext
  %45 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst49 = getelementptr inbounds %struct.compobject, %struct.compobject* %45, i32 0, i32 1
  %next_out50 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst49, i32 0, i32 3
  store i8* %add.ptr, i8** %next_out50, align 8
  %46 = load i32, i32* %length.addr, align 4
  %47 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst51 = getelementptr inbounds %struct.compobject, %struct.compobject* %47, i32 0, i32 1
  %avail_out52 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst51, i32 0, i32 4
  store i32 %46, i32* %avail_out52, align 4
  %48 = load i32, i32* %new_length, align 4
  store i32 %48, i32* %length.addr, align 4
  %call54 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call54, %struct._ts** %_save53, align 8
  %49 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst55 = getelementptr inbounds %struct.compobject, %struct.compobject* %49, i32 0, i32 1
  %call56 = call i32 @inflate(%struct.z_stream_s* %zst55, i32 4)
  store i32 %call56, i32* %err, align 4
  %50 = load %struct._ts*, %struct._ts** %_save53, align 8
  call void @PyEval_RestoreThread(%struct._ts* %50)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %51 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %52 = load i32, i32* %err, align 4
  %call57 = call i32 @save_unconsumed_input(%struct.compobject* %51, i32 %52)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then.60, label %if.end.73

if.then.60:                                       ; preds = %while.end
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %53 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp62, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %55, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.61
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.61
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %58(%struct._object* %59)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval1, align 8
  br label %error

if.end.73:                                        ; preds = %while.end
  %60 = load i32, i32* %err, align 4
  %cmp74 = icmp eq i32 %60, 1
  br i1 %cmp74, label %if.then.76, label %if.end.96

if.then.76:                                       ; preds = %if.end.73
  %61 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %61, i32 0, i32 4
  store i8 1, i8* %eof, align 1
  %62 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %62, i32 0, i32 5
  store i32 0, i32* %is_initialised, align 4
  %63 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst77 = getelementptr inbounds %struct.compobject, %struct.compobject* %63, i32 0, i32 1
  %call78 = call i32 @inflateEnd(%struct.z_stream_s* %zst77)
  store i32 %call78, i32* %err, align 4
  %64 = load i32, i32* %err, align 4
  %cmp79 = icmp ne i32 %64, 0
  br i1 %cmp79, label %if.then.81, label %if.end.95

if.then.81:                                       ; preds = %if.then.76
  %65 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst82 = getelementptr inbounds %struct.compobject, %struct.compobject* %65, i32 0, i32 1
  %66 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst82, i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  br label %do.body.83

do.body.83:                                       ; preds = %if.then.81
  %67 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp84, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %69, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.83
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.83
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %72(%struct._object* %73)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  store %struct._object* null, %struct._object** %retval1, align 8
  br label %error

if.end.95:                                        ; preds = %if.then.76
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.73
  %74 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst97 = getelementptr inbounds %struct.compobject, %struct.compobject* %74, i32 0, i32 1
  %total_out98 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst97, i32 0, i32 5
  %75 = load i64, i64* %total_out98, align 8
  %76 = load i64, i64* %start_total_out, align 8
  %sub = sub i64 %75, %76
  %call99 = call i32 @_PyBytes_Resize(%struct._object** %retval1, i64 %sub)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.122

if.then.102:                                      ; preds = %if.end.96
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %77 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %77, %struct._object** %_py_tmp104, align 8
  %78 = load %struct._object*, %struct._object** %_py_tmp104, align 8
  %cmp105 = icmp ne %struct._object* %78, null
  br i1 %cmp105, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %do.body.103
  store %struct._object* null, %struct._object** %retval1, align 8
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %79 = load %struct._object*, %struct._object** %_py_tmp104, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp109, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %81, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %84(%struct._object* %85)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  br label %if.end.120

if.end.120:                                       ; preds = %do.end.119, %do.body.103
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  br label %if.end.122

if.end.122:                                       ; preds = %do.end.121, %if.end.96
  br label %error

error:                                            ; preds = %if.end.122, %do.end.94, %do.end.72, %do.end.45
  %86 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock123 = getelementptr inbounds %struct.compobject, %struct.compobject* %86, i32 0, i32 7
  %87 = load i8*, i8** %lock123, align 8
  call void @PyThread_release_lock(i8* %87)
  %88 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %88, %struct._object** %retval
  br label %return

return:                                           ; preds = %error, %if.then.2, %if.then
  %89 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %89
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_Decompress_copy_impl(%struct.compobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.compobject*, align 8
  %retval1 = alloca %struct.compobject*, align 8
  %err = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_xdecref_tmp73 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  store %struct.compobject* %self, %struct.compobject** %self.addr, align 8
  store %struct.compobject* null, %struct.compobject** %retval1, align 8
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Decomptype)
  store %struct.compobject* %call, %struct.compobject** %retval1, align 8
  %0 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %tobool = icmp ne %struct.compobject* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call2, %struct._ts** %_save, align 8
  %1 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock = getelementptr inbounds %struct.compobject, %struct.compobject* %1, i32 0, i32 7
  %2 = load i8*, i8** %lock, align 8
  %call3 = call i32 @PyThread_acquire_lock(i8* %2, i32 1)
  %3 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %3)
  %4 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %4, i32 0, i32 1
  %5 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst4 = getelementptr inbounds %struct.compobject, %struct.compobject* %5, i32 0, i32 1
  %call5 = call i32 @inflateCopy(%struct.z_stream_s* %zst, %struct.z_stream_s* %zst4)
  store i32 %call5, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  switch i32 %6, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb.6
    i32 -4, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i32 0, i32 0))
  br label %error

sw.bb.7:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0))
  br label %error

sw.default:                                       ; preds = %if.end
  %9 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1
  %10 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst8, i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.53, i32 0, i32 0))
  br label %error

sw.epilog:                                        ; preds = %sw.bb
  %11 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %unused_data, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %unconsumed_tail, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt9, align 8
  %inc10 = add i64 %16, 1
  store i64 %inc10, i64* %ob_refcnt9, align 8
  br label %do.body

do.body:                                          ; preds = %sw.epilog
  %17 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict = getelementptr inbounds %struct.compobject, %struct.compobject* %17, i32 0, i32 6
  %18 = load %struct._object*, %struct._object** %zdict, align 8
  store %struct._object* %18, %struct._object** %_py_xincref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %19, null
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt12, align 8
  %inc13 = add i64 %21, 1
  store i64 %inc13, i64* %ob_refcnt12, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %22 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unused_data16 = getelementptr inbounds %struct.compobject, %struct.compobject* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %unused_data16, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp17 = icmp ne %struct._object* %24, null
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt20, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt20, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body.19
  br label %if.end.23

if.else:                                          ; preds = %do.body.19
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %do.body.15
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %32 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unconsumed_tail29 = getelementptr inbounds %struct.compobject, %struct.compobject* %32, i32 0, i32 3
  %33 = load %struct._object*, %struct._object** %unconsumed_tail29, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp28, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  %cmp30 = icmp ne %struct._object* %34, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %do.body.27
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp28, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp33, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %37, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %40(%struct._object* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %42 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zdict47 = getelementptr inbounds %struct.compobject, %struct.compobject* %42, i32 0, i32 6
  %43 = load %struct._object*, %struct._object** %zdict47, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp46, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  %cmp48 = icmp ne %struct._object* %44, null
  br i1 %cmp48, label %if.then.49, label %if.end.61

if.then.49:                                       ; preds = %do.body.45
  br label %do.body.50

do.body.50:                                       ; preds = %if.then.49
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp51, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %47, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.50
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.50
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %50(%struct._object* %51)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.body.45
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %52 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unused_data63 = getelementptr inbounds %struct.compobject, %struct.compobject* %52, i32 0, i32 2
  %53 = load %struct._object*, %struct._object** %unused_data63, align 8
  %54 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unused_data64 = getelementptr inbounds %struct.compobject, %struct.compobject* %54, i32 0, i32 2
  store %struct._object* %53, %struct._object** %unused_data64, align 8
  %55 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %unconsumed_tail65 = getelementptr inbounds %struct.compobject, %struct.compobject* %55, i32 0, i32 3
  %56 = load %struct._object*, %struct._object** %unconsumed_tail65, align 8
  %57 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %unconsumed_tail66 = getelementptr inbounds %struct.compobject, %struct.compobject* %57, i32 0, i32 3
  store %struct._object* %56, %struct._object** %unconsumed_tail66, align 8
  %58 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %zdict67 = getelementptr inbounds %struct.compobject, %struct.compobject* %58, i32 0, i32 6
  %59 = load %struct._object*, %struct._object** %zdict67, align 8
  %60 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %zdict68 = getelementptr inbounds %struct.compobject, %struct.compobject* %60, i32 0, i32 6
  store %struct._object* %59, %struct._object** %zdict68, align 8
  %61 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %eof = getelementptr inbounds %struct.compobject, %struct.compobject* %61, i32 0, i32 4
  %62 = load i8, i8* %eof, align 1
  %63 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %eof69 = getelementptr inbounds %struct.compobject, %struct.compobject* %63, i32 0, i32 4
  store i8 %62, i8* %eof69, align 1
  %64 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %64, i32 0, i32 5
  store i32 1, i32* %is_initialised, align 4
  %65 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock70 = getelementptr inbounds %struct.compobject, %struct.compobject* %65, i32 0, i32 7
  %66 = load i8*, i8** %lock70, align 8
  call void @PyThread_release_lock(i8* %66)
  %67 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %68 = bitcast %struct.compobject* %67 to %struct._object*
  store %struct._object* %68, %struct._object** %retval
  br label %return

error:                                            ; preds = %sw.default, %sw.bb.7, %sw.bb.6
  %69 = load %struct.compobject*, %struct.compobject** %self.addr, align 8
  %lock71 = getelementptr inbounds %struct.compobject, %struct.compobject* %69, i32 0, i32 7
  %70 = load i8*, i8** %lock71, align 8
  call void @PyThread_release_lock(i8* %70)
  br label %do.body.72

do.body.72:                                       ; preds = %error
  %71 = load %struct.compobject*, %struct.compobject** %retval1, align 8
  %72 = bitcast %struct.compobject* %71 to %struct._object*
  store %struct._object* %72, %struct._object** %_py_xdecref_tmp73, align 8
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  %cmp74 = icmp ne %struct._object* %73, null
  br i1 %cmp74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %do.body.72
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %74 = load %struct._object*, %struct._object** %_py_xdecref_tmp73, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp77, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %76, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %79(%struct._object* %80)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %if.end.87

if.end.87:                                        ; preds = %do.end.86, %do.body.72
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.88, %do.end.62, %if.then
  %81 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %81
}

declare i32 @inflateCopy(%struct.z_stream_s*, %struct.z_stream_s*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_adler32(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 1, i32* %value, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), %struct.bufferinfo* %data, i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %value, align 4
  %call1 = call %struct._object* @zlib_adler32_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_compress(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %bytes = alloca %struct.bufferinfo, align 8
  %level = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %bytes to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 -1, i32* %level, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), %struct.bufferinfo* %bytes, i32* %level)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %level, align 4
  %call1 = call %struct._object* @zlib_compress_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %bytes, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %bytes, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %bytes)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store i32 -1, i32* %level, align 4
  store i32 8, i32* %method, align 4
  store i32 15, i32* %wbits, align 4
  store i32 8, i32* %memLevel, align 4
  store i32 0, i32* %strategy, align 4
  %0 = bitcast %struct.bufferinfo* %zdict to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds ([7 x i8*], [7 x i8*]* @zlib_compressobj._keywords, i32 0, i32 0), i32* %level, i32* %method, i32* %wbits, i32* %memLevel, i32* %strategy, %struct.bufferinfo* %zdict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %3 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %4 = load i32, i32* %level, align 4
  %5 = load i32, i32* %method, align 4
  %6 = load i32, i32* %wbits, align 4
  %7 = load i32, i32* %memLevel, align 4
  %8 = load i32, i32* %strategy, align 4
  %call1 = call %struct._object* @zlib_compressobj_impl(%struct.PyModuleDef* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, %struct.bufferinfo* %zdict)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %zdict, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %9, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %zdict)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %10 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_crc32(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %data = alloca %struct.bufferinfo, align 8
  %value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 0, i32* %value, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.78, i32 0, i32 0), %struct.bufferinfo* %data, i32* %value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %value, align 4
  %call1 = call %struct._object* @zlib_crc32_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data, i32 %3)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  %0 = bitcast %struct.bufferinfo* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  store i32 15, i32* %wbits, align 4
  store i32 16384, i32* %bufsize, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.79, i32 0, i32 0), %struct.bufferinfo* %data, i32* %wbits, i32 (%struct._object*, i8*)* @uint_converter, i32* %bufsize)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %wbits, align 4
  %4 = load i32, i32* %bufsize, align 4
  %call1 = call %struct._object* @zlib_decompress_impl(%struct.PyModuleDef* %2, %struct.bufferinfo* %data, i32 %3, i32 %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %obj = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %data, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %obj, align 8
  %tobool2 = icmp ne %struct._object* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %exit
  call void @PyBuffer_Release(%struct.bufferinfo* %data)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %exit
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store i32 15, i32* %wbits, align 4
  store %struct._object* null, %struct._object** %zdict, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @zlib_decompressobj._keywords, i32 0, i32 0), i32* %wbits, %struct._object** %zdict)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %2 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %3 = load i32, i32* %wbits, align 4
  %4 = load %struct._object*, %struct._object** %zdict, align 8
  %call1 = call %struct._object* @zlib_decompressobj_impl(%struct.PyModuleDef* %2, i32 %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %5
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %1, 5120
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 0
  %3 = load i8*, i8** %buf1, align 8
  store i8* %3, i8** %buf, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len3, align 8
  store i64 %5, i64* %len2, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i64, i64* %len2, align 8
  %cmp4 = icmp ugt i64 %6, 4294967295
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %value.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load i8*, i8** %buf, align 8
  %call5 = call i64 @adler32(i64 %conv, i8* %8, i32 -1)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %value.addr, align 4
  %9 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 4294967295
  store i8* %add.ptr, i8** %buf, align 8
  %10 = load i64, i64* %len2, align 8
  %sub = sub i64 %10, 4294967295
  store i64 %sub, i64* %len2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %value.addr, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %len2, align 8
  %conv8 = trunc i64 %13 to i32
  %call9 = call i64 @adler32(i64 %conv7, i8* %12, i32 %conv8)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %value.addr, align 4
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %value.addr, align 4
  %conv11 = zext i32 %15 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf12, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 2
  %19 = load i64, i64* %len13, align 8
  %conv14 = trunc i64 %19 to i32
  %call15 = call i64 @adler32(i64 %conv11, i8* %17, i32 %conv14)
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %value.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %20 = load i32, i32* %value.addr, align 4
  %conv17 = zext i32 %20 to i64
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv17)
  ret %struct._object* %call18
}

declare i64 @adler32(i64, i8*, i32) #1

declare %struct._object* @PyLong_FromUnsignedLong(i64) #1

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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %bytes, %struct.bufferinfo** %bytes.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store %struct._object* null, %struct._object** %ReturnVal, align 8
  store i8* null, i8** %output, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %input, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %bytes.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len1, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %length, align 4
  %7 = load i32, i32* %length, align 4
  %8 = load i32, i32* %length, align 4
  %div = udiv i32 %8, 1000
  %add = add i32 %7, %div
  %add2 = add i32 %add, 12
  %add3 = add i32 %add2, 1
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4
  store i32 %add3, i32* %avail_out, align 4
  %avail_out4 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4
  %9 = load i32, i32* %avail_out4, align 4
  %conv5 = zext i32 %9 to i64
  %call = call i8* @PyMem_Malloc(i64 %conv5)
  store i8* %call, i8** %output, align 8
  %10 = load i8*, i8** %output, align 8
  %cmp6 = icmp eq i8* %10, null
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.64, i32 0, i32 0))
  br label %error

if.end.9:                                         ; preds = %if.end
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 8
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 9
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8
  %12 = load i8*, i8** %output, align 8
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3
  store i8* %12, i8** %next_out, align 8
  %13 = load i8*, i8** %input, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 0
  store i8* %13, i8** %next_in, align 8
  %14 = load i32, i32* %length, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1
  store i32 %14, i32* %avail_in, align 4
  %15 = load i32, i32* %level.addr, align 4
  %call10 = call i32 @deflateInit_(%struct.z_stream_s* %zst, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112)
  store i32 %call10, i32* %err, align 4
  %16 = load i32, i32* %err, align 4
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb
    i32 -4, label %sw.bb.11
    i32 -2, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end.9
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.65, i32 0, i32 0))
  br label %error

sw.bb.12:                                         ; preds = %if.end.9
  %18 = load %struct._object*, %struct._object** @ZlibError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.66, i32 0, i32 0))
  br label %error

sw.default:                                       ; preds = %if.end.9
  %call13 = call i32 @deflateEnd(%struct.z_stream_s* %zst)
  %19 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  br label %error

sw.epilog:                                        ; preds = %sw.bb
  %call14 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call14, %struct._ts** %_save, align 8
  %call15 = call i32 @deflate(%struct.z_stream_s* %zst, i32 4)
  store i32 %call15, i32* %err, align 4
  %20 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %20)
  %21 = load i32, i32* %err, align 4
  %cmp16 = icmp ne i32 %21, 1
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %sw.epilog
  %22 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  %call19 = call i32 @deflateEnd(%struct.z_stream_s* %zst)
  br label %error

if.end.20:                                        ; preds = %sw.epilog
  %call21 = call i32 @deflateEnd(%struct.z_stream_s* %zst)
  store i32 %call21, i32* %err, align 4
  %23 = load i32, i32* %err, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.20
  %24 = load i8*, i8** %output, align 8
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %25 = load i64, i64* %total_out, align 8
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %24, i64 %25)
  store %struct._object* %call25, %struct._object** %ReturnVal, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.20
  %26 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.24
  br label %error

error:                                            ; preds = %if.end.26, %if.then.18, %sw.default, %sw.bb.12, %sw.bb.11, %if.then.8, %if.then
  %27 = load i8*, i8** %output, align 8
  call void @PyMem_Free(i8* %27)
  %28 = load %struct._object*, %struct._object** %ReturnVal, align 8
  ret %struct._object* %28
}

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @PyZlib_Malloc(i8* %ctx, i32 %items, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %ctx.addr = alloca i8*, align 8
  %items.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i8* %ctx, i8** %ctx.addr, align 8
  store i32 %items, i32* %items.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %items.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = load i32, i32* %size.addr, align 4
  %conv1 = zext i32 %1 to i64
  %div = udiv i64 9223372036854775807, %conv1
  %cmp = icmp ugt i64 %conv, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %items.addr, align 4
  %3 = load i32, i32* %size.addr, align 4
  %mul = mul i32 %2, %3
  %conv3 = zext i32 %mul to i64
  %call = call i8* @PyMem_RawMalloc(i64 %conv3)
  store i8* %call, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval
  ret i8* %4
}

; Function Attrs: nounwind uwtable
define internal void @PyZlib_Free(i8* %ctx, i8* %ptr) #0 {
entry:
  %ctx.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  store i8* %ctx, i8** %ctx.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  call void @PyMem_RawFree(i8* %0)
  ret void
}

declare i32 @deflateInit_(%struct.z_stream_s*, i32, i8*, i32) #1

declare void @PyMem_Free(i8*) #1

declare i8* @PyMem_RawMalloc(i64) #1

declare void @PyMem_RawFree(i8*) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  store i32 %method, i32* %method.addr, align 4
  store i32 %wbits, i32* %wbits.addr, align 4
  store i32 %memLevel, i32* %memLevel.addr, align 4
  store i32 %strategy, i32* %strategy.addr, align 4
  store %struct.bufferinfo* %zdict, %struct.bufferinfo** %zdict.addr, align 8
  store %struct.compobject* null, %struct.compobject** %self, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 0
  %1 = load i8*, i8** %buf, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 2
  %3 = load i64, i64* %len, align 8
  %cmp1 = icmp ugt i64 %3, 4294967295
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.47, i32 0, i32 0))
  br label %error

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Comptype)
  store %struct.compobject* %call, %struct.compobject** %self, align 8
  %5 = load %struct.compobject*, %struct.compobject** %self, align 8
  %cmp2 = icmp eq %struct.compobject* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %error

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %6, i32 0, i32 1
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %7 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst5 = getelementptr inbounds %struct.compobject, %struct.compobject* %7, i32 0, i32 1
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst5, i32 0, i32 8
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8
  %8 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst6 = getelementptr inbounds %struct.compobject, %struct.compobject* %8, i32 0, i32 1
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst6, i32 0, i32 9
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8
  %9 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst7 = getelementptr inbounds %struct.compobject, %struct.compobject* %9, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst7, i32 0, i32 0
  store i8* null, i8** %next_in, align 8
  %10 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst8 = getelementptr inbounds %struct.compobject, %struct.compobject* %10, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst8, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %11 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1
  %12 = load i32, i32* %level.addr, align 4
  %13 = load i32, i32* %method.addr, align 4
  %14 = load i32, i32* %wbits.addr, align 4
  %15 = load i32, i32* %memLevel.addr, align 4
  %16 = load i32, i32* %strategy.addr, align 4
  %call10 = call i32 @deflateInit2_(%struct.z_stream_s* %zst9, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112)
  store i32 %call10, i32* %err, align 4
  %17 = load i32, i32* %err, align 4
  switch i32 %17, label %sw.default.22 [
    i32 0, label %sw.bb
    i32 -4, label %sw.bb.20
    i32 -2, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %if.end.4
  %18 = load %struct.compobject*, %struct.compobject** %self, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %18, i32 0, i32 5
  store i32 1, i32* %is_initialised, align 4
  %19 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8
  %buf11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %19, i32 0, i32 0
  %20 = load i8*, i8** %buf11, align 8
  %cmp12 = icmp eq i8* %20, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %sw.bb
  br label %success

if.else:                                          ; preds = %sw.bb
  %21 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst14 = getelementptr inbounds %struct.compobject, %struct.compobject* %21, i32 0, i32 1
  %22 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8
  %buf15 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %22, i32 0, i32 0
  %23 = load i8*, i8** %buf15, align 8
  %24 = load %struct.bufferinfo*, %struct.bufferinfo** %zdict.addr, align 8
  %len16 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %24, i32 0, i32 2
  %25 = load i64, i64* %len16, align 8
  %conv = trunc i64 %25 to i32
  %call17 = call i32 @deflateSetDictionary(%struct.z_stream_s* %zst14, i8* %23, i32 %conv)
  store i32 %call17, i32* %err, align 4
  %26 = load i32, i32* %err, align 4
  switch i32 %26, label %sw.default [
    i32 0, label %sw.bb.18
    i32 -2, label %sw.bb.19
  ]

sw.bb.18:                                         ; preds = %if.else
  br label %success

sw.bb.19:                                         ; preds = %if.else
  %27 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.74, i32 0, i32 0))
  br label %error

sw.default:                                       ; preds = %if.else
  %28 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0))
  br label %error

sw.bb.20:                                         ; preds = %if.end.4
  %29 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i32 0, i32 0))
  br label %error

sw.bb.21:                                         ; preds = %if.end.4
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0))
  br label %error

sw.default.22:                                    ; preds = %if.end.4
  %31 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst23 = getelementptr inbounds %struct.compobject, %struct.compobject* %31, i32 0, i32 1
  %32 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst23, i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i32 0, i32 0))
  br label %error

error:                                            ; preds = %sw.default.22, %sw.bb.21, %sw.bb.20, %sw.default, %sw.bb.19, %if.then.3, %if.then
  br label %do.body

do.body:                                          ; preds = %error
  %33 = load %struct.compobject*, %struct.compobject** %self, align 8
  %34 = bitcast %struct.compobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %_py_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp24 = icmp ne %struct._object* %35, null
  br i1 %cmp24, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %do.body
  store %struct.compobject* null, %struct.compobject** %self, align 8
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.27
  br label %if.end.32

if.else.31:                                       ; preds = %do.body.27
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %success

success:                                          ; preds = %do.end.34, %sw.bb.18, %if.then.13
  %43 = load %struct.compobject*, %struct.compobject** %self, align 8
  %44 = bitcast %struct.compobject* %43 to %struct._object*
  ret %struct._object* %44
}

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32) #1

declare i32 @deflateSetDictionary(%struct.z_stream_s*, i8*, i32) #1

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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %1, 5120
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %2, i32 0, i32 0
  %3 = load i8*, i8** %buf1, align 8
  store i8* %3, i8** %buf, align 8
  %4 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len3 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %4, i32 0, i32 2
  %5 = load i64, i64* %len3, align 8
  store i64 %5, i64* %len2, align 8
  %call = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call, %struct._ts** %_save, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %6 = load i64, i64* %len2, align 8
  %cmp4 = icmp ugt i64 %6, 4294967295
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %value.addr, align 4
  %conv = zext i32 %7 to i64
  %8 = load i8*, i8** %buf, align 8
  %call5 = call i64 @crc32(i64 %conv, i8* %8, i32 -1)
  %conv6 = trunc i64 %call5 to i32
  store i32 %conv6, i32* %value.addr, align 4
  %9 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 4294967295
  store i8* %add.ptr, i8** %buf, align 8
  %10 = load i64, i64* %len2, align 8
  %sub = sub i64 %10, 4294967295
  store i64 %sub, i64* %len2, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %value.addr, align 4
  %conv7 = zext i32 %11 to i64
  %12 = load i8*, i8** %buf, align 8
  %13 = load i64, i64* %len2, align 8
  %conv8 = trunc i64 %13 to i32
  %call9 = call i64 @crc32(i64 %conv7, i8* %12, i32 %conv8)
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %signed_val, align 4
  %14 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %14)
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %value.addr, align 4
  %conv11 = zext i32 %15 to i64
  %16 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf12 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %16, i32 0, i32 0
  %17 = load i8*, i8** %buf12, align 8
  %18 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len13 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %18, i32 0, i32 2
  %19 = load i64, i64* %len13, align 8
  %conv14 = trunc i64 %19 to i32
  %call15 = call i64 @crc32(i64 %conv11, i8* %17, i32 %conv14)
  %conv16 = trunc i64 %call15 to i32
  store i32 %conv16, i32* %signed_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  %20 = load i32, i32* %signed_val, align 4
  %conv17 = zext i32 %20 to i64
  %call18 = call %struct._object* @PyLong_FromUnsignedLong(i64 %conv17)
  ret %struct._object* %call18
}

declare i64 @crc32(i64, i8*, i32) #1

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
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct.bufferinfo* %data, %struct.bufferinfo** %data.addr, align 8
  store i32 %wbits, i32* %wbits.addr, align 4
  store i32 %bufsize, i32* %bufsize.addr, align 4
  store %struct._object* null, %struct._object** %result_str, align 8
  %0 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %0, i32 0, i32 2
  %1 = load i64, i64* %len, align 8
  %cmp = icmp ugt i64 %1, 4294967295
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0))
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %buf, align 8
  store i8* %4, i8** %input, align 8
  %5 = load %struct.bufferinfo*, %struct.bufferinfo** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %5, i32 0, i32 2
  %6 = load i64, i64* %len1, align 8
  %conv = trunc i64 %6 to i32
  store i32 %conv, i32* %length, align 4
  %7 = load i32, i32* %bufsize.addr, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %bufsize.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %8 = load i32, i32* %length, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 1
  store i32 %8, i32* %avail_in, align 4
  %9 = load i32, i32* %bufsize.addr, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4
  store i32 %9, i32* %avail_out, align 4
  %10 = load i32, i32* %bufsize.addr, align 4
  %conv6 = zext i32 %10 to i64
  %call = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %conv6)
  store %struct._object* %call, %struct._object** %result_str, align 8
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.5
  br label %error

if.end.8:                                         ; preds = %if.end.5
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 8
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 9
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8
  %11 = load %struct._object*, %struct._object** %result_str, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %12, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %next_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3
  store i8* %arraydecay, i8** %next_out, align 8
  %13 = load i8*, i8** %input, align 8
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 0
  store i8* %13, i8** %next_in, align 8
  %14 = load i32, i32* %wbits.addr, align 4
  %call9 = call i32 @inflateInit2_(%struct.z_stream_s* %zst, i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112)
  store i32 %call9, i32* %err, align 4
  %15 = load i32, i32* %err, align 4
  switch i32 %15, label %sw.default [
    i32 0, label %sw.bb
    i32 -4, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.end.8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.80, i32 0, i32 0))
  br label %error

sw.default:                                       ; preds = %if.end.8
  %call11 = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  %17 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0))
  br label %error

sw.epilog:                                        ; preds = %sw.bb
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.epilog
  %call12 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call12, %struct._ts** %_save, align 8
  %call13 = call i32 @inflate(%struct.z_stream_s* %zst, i32 4)
  store i32 %call13, i32* %err, align 4
  %18 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %18)
  %19 = load i32, i32* %err, align 4
  switch i32 %19, label %sw.default.38 [
    i32 1, label %sw.bb.14
    i32 -5, label %sw.bb.15
    i32 0, label %sw.bb.22
  ]

sw.bb.14:                                         ; preds = %do.body
  br label %sw.epilog.40

sw.bb.15:                                         ; preds = %do.body
  %avail_out16 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4
  %20 = load i32, i32* %avail_out16, align 4
  %cmp17 = icmp ugt i32 %20, 0
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %sw.bb.15
  %21 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0))
  %call20 = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  br label %error

if.end.21:                                        ; preds = %sw.bb.15
  br label %sw.bb.22

sw.bb.22:                                         ; preds = %do.body, %if.end.21
  %22 = load i32, i32* %bufsize.addr, align 4
  %cmp23 = icmp ule i32 %22, 2147483647
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %sw.bb.22
  %23 = load i32, i32* %bufsize.addr, align 4
  %shl = shl i32 %23, 1
  store i32 %shl, i32* %new_bufsize, align 4
  br label %if.end.26

if.else:                                          ; preds = %sw.bb.22
  store i32 -1, i32* %new_bufsize, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.25
  %24 = load i32, i32* %new_bufsize, align 4
  %conv27 = zext i32 %24 to i64
  %call28 = call i32 @_PyBytes_Resize(%struct._object** %result_str, i64 %conv27)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %if.end.26
  %call32 = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  br label %error

if.end.33:                                        ; preds = %if.end.26
  %25 = load %struct._object*, %struct._object** %result_str, align 8
  %26 = bitcast %struct._object* %25 to %struct.PyBytesObject*
  %ob_sval34 = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %26, i32 0, i32 2
  %arraydecay35 = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval34, i32 0, i32 0
  %27 = load i32, i32* %bufsize.addr, align 4
  %idx.ext = zext i32 %27 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay35, i64 %idx.ext
  %next_out36 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 3
  store i8* %add.ptr, i8** %next_out36, align 8
  %28 = load i32, i32* %bufsize.addr, align 4
  %avail_out37 = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 4
  store i32 %28, i32* %avail_out37, align 4
  %29 = load i32, i32* %new_bufsize, align 4
  store i32 %29, i32* %bufsize.addr, align 4
  br label %sw.epilog.40

sw.default.38:                                    ; preds = %do.body
  %call39 = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  %30 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.48, i32 0, i32 0))
  br label %error

sw.epilog.40:                                     ; preds = %if.end.33, %sw.bb.14
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog.40
  %31 = load i32, i32* %err, align 4
  %cmp41 = icmp ne i32 %31, 1
  br i1 %cmp41, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call43 = call i32 @inflateEnd(%struct.z_stream_s* %zst)
  store i32 %call43, i32* %err, align 4
  %32 = load i32, i32* %err, align 4
  %cmp44 = icmp ne i32 %32, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end
  %33 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0))
  br label %error

if.end.47:                                        ; preds = %do.end
  %total_out = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 5
  %34 = load i64, i64* %total_out, align 8
  %call48 = call i32 @_PyBytes_Resize(%struct._object** %result_str, i64 %34)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  br label %error

if.end.52:                                        ; preds = %if.end.47
  %35 = load %struct._object*, %struct._object** %result_str, align 8
  store %struct._object* %35, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.51, %if.then.46, %sw.default.38, %if.then.31, %if.then.19, %sw.default, %sw.bb.10, %if.then.7, %if.then
  br label %do.body.53

do.body.53:                                       ; preds = %error
  %36 = load %struct._object*, %struct._object** %result_str, align 8
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp54 = icmp ne %struct._object* %37, null
  br i1 %cmp54, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %do.body.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp58 = icmp ne i64 %dec, 0
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.57
  br label %if.end.62

if.else.61:                                       ; preds = %do.body.57
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.62
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.53
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.65
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.67, %if.end.52
  %45 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %45
}

declare i32 @inflateInit2_(%struct.z_stream_s*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @zlib_decompressobj_impl(%struct.PyModuleDef* %module, i32 %wbits, %struct._object* %zdict) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %wbits.addr = alloca i32, align 4
  %zdict.addr = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %self = alloca %struct.compobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store i32 %wbits, i32* %wbits.addr, align 4
  store %struct._object* %zdict, %struct._object** %zdict.addr, align 8
  %0 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 18
  %3 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8
  %cmp1 = icmp ne %struct.PyBufferProcs* %3, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_as_buffer4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 18
  %6 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer4, align 8
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %6, i32 0, i32 0
  %7 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8
  %cmp5 = icmp ne i32 (%struct._object*, %struct.bufferinfo*, i32)* %7, null
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.83, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %entry
  %call = call %struct.compobject* @newcompobject(%struct._typeobject* @Decomptype)
  store %struct.compobject* %call, %struct.compobject** %self, align 8
  %9 = load %struct.compobject*, %struct.compobject** %self, align 8
  %cmp6 = icmp eq %struct.compobject* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst = getelementptr inbounds %struct.compobject, %struct.compobject* %10, i32 0, i32 1
  %opaque = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst, i32 0, i32 10
  store i8* null, i8** %opaque, align 8
  %11 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst9 = getelementptr inbounds %struct.compobject, %struct.compobject* %11, i32 0, i32 1
  %zalloc = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst9, i32 0, i32 8
  store i8* (i8*, i32, i32)* @PyZlib_Malloc, i8* (i8*, i32, i32)** %zalloc, align 8
  %12 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst10 = getelementptr inbounds %struct.compobject, %struct.compobject* %12, i32 0, i32 1
  %zfree = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst10, i32 0, i32 9
  store void (i8*, i8*)* @PyZlib_Free, void (i8*, i8*)** %zfree, align 8
  %13 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst11 = getelementptr inbounds %struct.compobject, %struct.compobject* %13, i32 0, i32 1
  %next_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst11, i32 0, i32 0
  store i8* null, i8** %next_in, align 8
  %14 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst12 = getelementptr inbounds %struct.compobject, %struct.compobject* %14, i32 0, i32 1
  %avail_in = getelementptr inbounds %struct.z_stream_s, %struct.z_stream_s* %zst12, i32 0, i32 1
  store i32 0, i32* %avail_in, align 4
  %15 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %cmp13 = icmp ne %struct._object* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %18 = load %struct._object*, %struct._object** %zdict.addr, align 8
  %19 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zdict15 = getelementptr inbounds %struct.compobject, %struct.compobject* %19, i32 0, i32 6
  store %struct._object* %18, %struct._object** %zdict15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.8
  %20 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst17 = getelementptr inbounds %struct.compobject, %struct.compobject* %20, i32 0, i32 1
  %21 = load i32, i32* %wbits.addr, align 4
  %call18 = call i32 @inflateInit2_(%struct.z_stream_s* %zst17, i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 112)
  store i32 %call18, i32* %err, align 4
  %22 = load i32, i32* %err, align 4
  switch i32 %22, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb.19
    i32 -4, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.end.16
  %23 = load %struct.compobject*, %struct.compobject** %self, align 8
  %is_initialised = getelementptr inbounds %struct.compobject, %struct.compobject* %23, i32 0, i32 5
  store i32 1, i32* %is_initialised, align 4
  %24 = load %struct.compobject*, %struct.compobject** %self, align 8
  %25 = bitcast %struct.compobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

sw.bb.19:                                         ; preds = %if.end.16
  br label %do.body

do.body:                                          ; preds = %sw.bb.19
  %26 = load %struct.compobject*, %struct.compobject** %self, align 8
  %27 = bitcast %struct.compobject* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt20, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt20, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %34 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.76, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.bb.25:                                         ; preds = %if.end.16
  br label %do.body.26

do.body.26:                                       ; preds = %sw.bb.25
  %35 = load %struct.compobject*, %struct.compobject** %self, align 8
  %36 = bitcast %struct.compobject* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %_py_decref_tmp27, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %38, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %41(%struct._object* %42)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %43 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.52, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %if.end.16
  %44 = load %struct.compobject*, %struct.compobject** %self, align 8
  %zst37 = getelementptr inbounds %struct.compobject, %struct.compobject* %44, i32 0, i32 1
  %45 = load i32, i32* %err, align 4
  call void @zlib_error(%struct.z_stream_s* byval align 8 %zst37, i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.84, i32 0, i32 0))
  br label %do.body.38

do.body.38:                                       ; preds = %sw.default
  %46 = load %struct.compobject*, %struct.compobject** %self, align 8
  %47 = bitcast %struct.compobject* %46 to %struct._object*
  store %struct._object* %47, %struct._object** %_py_decref_tmp39, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %49, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.38
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.38
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %52(%struct._object* %53)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %do.end.36, %do.end, %sw.bb, %if.then.7, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
